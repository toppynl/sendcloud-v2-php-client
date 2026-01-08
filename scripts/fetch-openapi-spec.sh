#!/usr/bin/env bash

#
# Fetches Sendcloud API v2 specification from Stoplight bundled OpenAPI files
# and merges them into a single complete specification.
#
# How it works:
# 1. Fetches the Table of Contents from Stoplight's API to discover all API sections
# 2. For each http_service section, fetches the bundled OpenAPI YAML file
#    URL pattern: /projects/{project}/nodes/api-build-assets/bundles/{section}/openapi.yaml
# 3. Converts YAML to JSON using yq
# 4. Merges all paths, components/schemas, and tags into a single spec using jq
#
# Requirements: curl, jq, yq (https://github.com/mikefarah/yq)
#
# Usage: ./scripts/fetch-sendcloud-openapi.sh
# Output: docs/api/sendcloud-openapi-v2.json
#

set -euo pipefail

# Configuration
PROJECT_ID="cHJqOjE0MjMwNA"
PROJECT_SLUG="sendcloud/sendcloud-public-api"
BRANCH="v2"
BASE_URL="https://stoplight.io/api/v1/projects"
OUTPUT_DIR="docs/api"
TEMP_DIR=$(mktemp -d)

# Cleanup on exit
trap "rm -rf $TEMP_DIR" EXIT

echo "Sendcloud OpenAPI v2 Specification Fetcher"
echo "=========================================="
echo "Using bundled OpenAPI approach for complete specs"
echo ""

# Check dependencies
for cmd in curl jq yq; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "Error: $cmd is required but not installed."
        exit 1
    fi
done

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Step 1: Fetch Table of Contents
echo "Step 1: Fetching Table of Contents..."
TOC_URL="${BASE_URL}/${PROJECT_ID}/table-of-contents?branch=${BRANCH}"
echo "  URL: $TOC_URL"

curl -s "$TOC_URL" > "$TEMP_DIR/toc.json"
cp "$TEMP_DIR/toc.json" "$OUTPUT_DIR/sendcloud-v2-toc.json"
echo "  Saved: $OUTPUT_DIR/sendcloud-v2-toc.json"
echo ""

# Step 2: Extract http_service sections
echo "Step 2: Extracting API sections..."
SECTIONS=$(jq -r '
  [.. | objects | select(.type == "http_service" and .slug != null) | .slug] | unique | .[]
' "$TEMP_DIR/toc.json")

SECTION_COUNT=$(echo "$SECTIONS" | wc -l)
echo "  Found $SECTION_COUNT sections:"
echo "$SECTIONS" | while read -r section; do
    echo "    - $section"
done
echo ""

# Step 3: Fetch OpenAPI bundles
echo "Step 3: Fetching OpenAPI bundles..."
FETCHED=0
BUNDLE_DIR="$TEMP_DIR/bundles"
mkdir -p "$BUNDLE_DIR"

echo "$SECTIONS" | while read -r section; do
    BUNDLE_URL="${BASE_URL}/${PROJECT_SLUG}/nodes/api-build-assets/bundles/${section}/openapi.yaml?branch=${BRANCH}"
    OUTPUT_FILE="$BUNDLE_DIR/${section}.json"

    HTTP_CODE=$(curl -s -w "%{http_code}" -o "$TEMP_DIR/temp.yaml" "$BUNDLE_URL")

    if [ "$HTTP_CODE" = "200" ]; then
        # Convert YAML to JSON
        yq -o=json "$TEMP_DIR/temp.yaml" > "$OUTPUT_FILE"
        PATHS=$(jq -r '.paths | keys | length' "$OUTPUT_FILE")
        SCHEMAS=$(jq -r '.components.schemas // {} | keys | length' "$OUTPUT_FILE")
        echo "  [OK] $section - $PATHS paths, $SCHEMAS schemas"
    else
        echo "  [SKIP] $section - HTTP $HTTP_CODE"
    fi

    # Small delay to be nice to the API
    sleep 0.1
done

echo ""

# Step 4: Merge specifications
echo "Step 4: Merging specifications..."

# Create base merged spec
cat > "$TEMP_DIR/merged.json" << 'EOF'
{
  "openapi": "3.0.3",
  "info": {
    "title": "Sendcloud Public REST API",
    "version": "3.0.0",
    "description": "Complete Sendcloud API v2 specification - merged from official Stoplight documentation bundles",
    "contact": {
      "name": "Sendcloud API Support",
      "url": "https://www.sendcloud.dev",
      "email": "contact@sendcloud.com"
    },
    "license": {
      "name": "Apache 2.0",
      "url": "http://www.apache.org/licenses/LICENSE-2.0.html"
    },
    "x-source": "https://api.sendcloud.dev/docs/sendcloud-public-api/",
    "x-branch": "v2"
  },
  "servers": [],
  "security": [{"HTTPBasicAuth": []}],
  "paths": {},
  "components": {
    "securitySchemes": {
      "HTTPBasicAuth": {
        "type": "http",
        "scheme": "basic",
        "description": "API Key and Secret as username:password"
      },
      "OAuth2": {
        "type": "oauth2",
        "flows": {
          "authorizationCode": {
            "authorizationUrl": "https://account.sendcloud.com/oauth2/auth",
            "tokenUrl": "https://account.sendcloud.com/oauth2/token",
            "scopes": {"api": "Full API access"}
          },
          "clientCredentials": {
            "tokenUrl": "https://account.sendcloud.com/oauth2/token",
            "scopes": {"api": "Full API access"}
          }
        }
      }
    },
    "schemas": {},
    "parameters": {},
    "requestBodies": {},
    "responses": {},
    "examples": {}
  },
  "tags": []
}
EOF

# Add generation timestamp
jq --arg ts "$(date -u +%Y-%m-%dT%H:%M:%SZ)" '.info["x-generated"] = $ts' "$TEMP_DIR/merged.json" > "$TEMP_DIR/merged2.json"
mv "$TEMP_DIR/merged2.json" "$TEMP_DIR/merged.json"

# Merge each bundle into the combined spec
for bundle_file in "$BUNDLE_DIR"/*.json; do
    [ -f "$bundle_file" ] || continue

    section=$(basename "$bundle_file" .json)

    # Merge using jq
    jq -s '
      .[0] as $merged | .[1] as $bundle |

      # Merge servers (dedupe by url)
      ($merged.servers + ($bundle.servers // [])) | unique_by(.url) | . as $servers |

      # Merge tags (dedupe by name)
      ($merged.tags + ($bundle.tags // [])) | unique_by(.name) | . as $tags |

      # Merge paths
      ($merged.paths + ($bundle.paths // {})) | . as $paths |

      # Merge schemas
      ($merged.components.schemas + (($bundle.components // {}).schemas // {})) | . as $schemas |

      # Merge parameters
      ($merged.components.parameters + (($bundle.components // {}).parameters // {})) | . as $parameters |

      # Merge requestBodies
      ($merged.components.requestBodies + (($bundle.components // {}).requestBodies // {})) | . as $requestBodies |

      # Merge responses
      ($merged.components.responses + (($bundle.components // {}).responses // {})) | . as $responses |

      # Merge examples
      ($merged.components.examples + (($bundle.components // {}).examples // {})) | . as $examples |

      # Build merged result
      $merged |
      .servers = $servers |
      .tags = $tags |
      .paths = $paths |
      .components.schemas = $schemas |
      .components.parameters = $parameters |
      .components.requestBodies = $requestBodies |
      .components.responses = $responses |
      .components.examples = $examples
    ' "$TEMP_DIR/merged.json" "$bundle_file" > "$TEMP_DIR/merged2.json"

    mv "$TEMP_DIR/merged2.json" "$TEMP_DIR/merged.json"
done

# Write merged spec to output file
cp "$TEMP_DIR/merged.json" "./openapi.json"

echo ""

# Statistics
TOTAL_PATHS=$(jq '.paths | keys | length' "./openapi.json")
TOTAL_SCHEMAS=$(jq '.components.schemas | keys | length' "./openapi.json")
TOTAL_TAGS=$(jq '.tags | length' "./openapi.json")
TOTAL_SERVERS=$(jq '.servers | length' "./openapi.json")
BUNDLE_COUNT=$(ls -1 "$BUNDLE_DIR"/*.json 2>/dev/null | wc -l)

echo "  Saved: ./openapi.json"
echo ""
echo "Statistics:"
echo "  - API sections: $BUNDLE_COUNT"
echo "  - Total paths: $TOTAL_PATHS"
echo "  - Total schemas: $TOTAL_SCHEMAS"
echo "  - Total tags: $TOTAL_TAGS"
echo "  - Servers: $TOTAL_SERVERS"
echo ""

# List all endpoints
echo "All endpoints:"
jq -r '
  .paths | to_entries[] |
  .key as $path |
  .value | to_entries[] |
  select(.key | test("^(get|post|put|patch|delete|head|options)$")) |
  "\(.key | ascii_upcase | . + "       " | .[:7]) \($path)"
' "./openapi.json" | sort -k2

echo ""
echo "Done!"
