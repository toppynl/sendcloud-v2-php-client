#!/usr/bin/env bash

#
# Fetches Sendcloud API v2 specification from sendcloud.dev OpenAPI files
# and merges them into a single complete specification.
#
# How it works:
# 1. Fetches OpenAPI YAML files for each v2 resource from sendcloud.dev
#    URL pattern: https://sendcloud.dev/.openapi/v2/{resource}/openapi.yaml
# 2. Converts YAML to JSON using yq
# 3. Merges all paths, components/schemas, and tags into a single spec using jq
#
# Requirements: curl, jq, yq (https://github.com/mikefarah/yq)
#
# Usage: ./scripts/fetch-openapi-spec.sh
# Output: openapi.json
#

set -euo pipefail

# Configuration
BASE_URL="https://sendcloud.dev/.openapi/v2"
TEMP_DIR=$(mktemp -d)

# V2 Resources to fetch (from sendcloud.dev documentation)
V2_RESOURCES=(
  "brands"            # Brand management
  "integrations"      # Shop integrations
  "invoices"          # Invoice retrieval
  "labels"            # Label generation
  "parcel-statuses"   # Parcel status codes
  "parcels"           # Parcel management
  "returns"           # Returns management
  "sender-addresses"  # Sender address management
  "service-points"    # Service point lookup
  "shipping-methods"  # Shipping method queries
  "tracking"          # Parcel tracking
)

# Cleanup on exit
trap "rm -rf $TEMP_DIR" EXIT

echo "Sendcloud OpenAPI v2 Specification Fetcher"
echo "=========================================="
echo "Fetching from: $BASE_URL"
echo ""

# Check dependencies
for cmd in curl jq yq; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "Error: $cmd is required but not installed."
        exit 1
    fi
done

# Normalize schema name to PHP class name equivalent
normalize_schema_name() {
    echo "$1" | sed -E 's/(^|-)([a-z])/\U\2/g'
}

# Create structural hash of schema (ignoring metadata)
schema_structural_hash() {
    local spec_file="$1"
    local schema_name="$2"
    jq --arg name "$schema_name" '
        .components.schemas[$name] // {} |
        walk(if type == "object" then
            del(.title, .description, .example, .examples, .default) |
            with_entries(select(.key | startswith("x-") | not))
        else . end)
    ' "$spec_file" | sha256sum | cut -d' ' -f1
}

# Step 1: Fetch OpenAPI specs for each resource
echo "Step 1: Fetching OpenAPI specs..."
BUNDLE_DIR="$TEMP_DIR/bundles"
mkdir -p "$BUNDLE_DIR"

for resource in "${V2_RESOURCES[@]}"; do
    SPEC_URL="${BASE_URL}/${resource}/openapi.yaml"
    OUTPUT_FILE="$BUNDLE_DIR/${resource}.json"

    HTTP_CODE=$(curl -s -w "%{http_code}" -o "$TEMP_DIR/temp.yaml" "$SPEC_URL")

    if [ "$HTTP_CODE" = "200" ]; then
        # Convert YAML to JSON
        yq -o=json "$TEMP_DIR/temp.yaml" > "$OUTPUT_FILE"
        PATHS=$(jq -r '.paths | keys | length' "$OUTPUT_FILE")
        SCHEMAS=$(jq -r '.components.schemas // {} | keys | length' "$OUTPUT_FILE")
        echo "  [OK] $resource - $PATHS paths, $SCHEMAS schemas"
    else
        echo "  [SKIP] $resource - HTTP $HTTP_CODE"
    fi

    # Small delay to be nice to the API
    sleep 0.1
done

echo ""

# Step 1.5: Detecting schema collisions
echo "Step 1.5: Detecting schema collisions..."

declare -A SCHEMA_ORIGINS      # schema -> "resource1,resource2"
declare -A SCHEMA_HASHES       # resource:schema -> hash
declare -A NORMALIZED_GROUPS   # normalized_name -> "schema1,schema2"

# Collect schema info from each bundle
for bundle_file in "$BUNDLE_DIR"/*.json; do
    [ -f "$bundle_file" ] || continue
    resource=$(basename "$bundle_file" .json)

    for schema in $(jq -r '.components.schemas // {} | keys[]' "$bundle_file"); do
        SCHEMA_ORIGINS[$schema]="${SCHEMA_ORIGINS[$schema]:+${SCHEMA_ORIGINS[$schema]},}$resource"
        SCHEMA_HASHES["$resource:$schema"]=$(schema_structural_hash "$bundle_file" "$schema")

        normalized=$(normalize_schema_name "$schema")
        existing="${NORMALIZED_GROUPS[$normalized]:-}"
        if [[ -z "$existing" ]] || [[ ! "$existing" =~ (^|,)$schema(,|$) ]]; then
            NORMALIZED_GROUPS[$normalized]="${existing:+${existing},}$schema"
        fi
    done
done

# Resolve collisions
declare -A SCHEMA_RENAMES  # "resource:schema" -> "new-name"
declare -A SHARED_SCHEMAS  # normalized -> chosen_schema

for normalized in "${!NORMALIZED_GROUPS[@]}"; do
    IFS=',' read -ra schemas <<< "${NORMALIZED_GROUPS[$normalized]}"
    [ ${#schemas[@]} -le 1 ] && continue

    # Check if all schemas are structurally identical
    first_hash=""
    all_identical=true

    for schema in "${schemas[@]}"; do
        IFS=',' read -ra resources <<< "${SCHEMA_ORIGINS[$schema]}"
        hash="${SCHEMA_HASHES[${resources[0]}:$schema]}"

        if [ -z "$first_hash" ]; then
            first_hash="$hash"
        elif [ "$hash" != "$first_hash" ]; then
            all_identical=false
            break
        fi
    done

    if $all_identical; then
        # Whitelist: keep first schema, others will redirect
        SHARED_SCHEMAS[$normalized]="${schemas[0]}"
        echo "  [SHARED] $normalized: keeping ${schemas[0]}"
    else
        # Conflict: prefix all with resource name
        echo "  [CONFLICT] $normalized: ${schemas[*]}"
        for schema in "${schemas[@]}"; do
            IFS=',' read -ra resources <<< "${SCHEMA_ORIGINS[$schema]}"
            for resource in "${resources[@]}"; do
                SCHEMA_RENAMES["$resource:$schema"]="${resource}-${schema}"
                echo "    -> $resource:$schema => ${resource}-${schema}"
            done
        done
    fi
done

echo ""

# Step 1.6: Applying schema renames
echo "Step 1.6: Applying schema renames..."

for bundle_file in "$BUNDLE_DIR"/*.json; do
    [ -f "$bundle_file" ] || continue
    resource=$(basename "$bundle_file" .json)

    # Collect renames for this resource
    declare -a renames_old=()
    declare -a renames_new=()

    for key in "${!SCHEMA_RENAMES[@]}"; do
        [[ "$key" != "$resource:"* ]] && continue
        old_name="${key#$resource:}"
        new_name="${SCHEMA_RENAMES[$key]}"
        renames_old+=("$old_name")
        renames_new+=("$new_name")
    done

    # Collect shared schema redirects for this resource
    declare -a redirects_from=()
    declare -a redirects_to=()

    for normalized in "${!SHARED_SCHEMAS[@]}"; do
        chosen="${SHARED_SCHEMAS[$normalized]}"
        IFS=',' read -ra schemas <<< "${NORMALIZED_GROUPS[$normalized]}"
        for schema in "${schemas[@]}"; do
            [ "$schema" = "$chosen" ] && continue
            [[ "${SCHEMA_ORIGINS[$schema]}" != *"$resource"* ]] && continue
            redirects_from+=("$schema")
            redirects_to+=("$chosen")
        done
    done

    if [ ${#renames_old[@]} -gt 0 ] || [ ${#redirects_from[@]} -gt 0 ]; then
        echo "  Applying renames to $resource..."

        # Build JSON arrays for jq
        renames_old_json=$(printf '%s\n' "${renames_old[@]}" | jq -R . | jq -s .)
        renames_new_json=$(printf '%s\n' "${renames_new[@]}" | jq -R . | jq -s .)
        redirects_from_json=$(printf '%s\n' "${redirects_from[@]}" | jq -R . | jq -s . 2>/dev/null || echo '[]')
        redirects_to_json=$(printf '%s\n' "${redirects_to[@]}" | jq -R . | jq -s . 2>/dev/null || echo '[]')

        jq --argjson renames_old "$renames_old_json" \
           --argjson renames_new "$renames_new_json" \
           --argjson redirects_from "$redirects_from_json" \
           --argjson redirects_to "$redirects_to_json" '
            # Build rename mapping
            ([$renames_old, $renames_new] | transpose | map({(.[0]): .[1]}) | add // {}) as $rename_map |
            # Build redirect mapping
            ([$redirects_from, $redirects_to] | transpose | map({(.[0]): .[1]}) | add // {}) as $redirect_map |

            # Apply renames to schema definitions
            .components.schemas = (
                .components.schemas | to_entries | map(
                    if $rename_map[.key] then
                        .key = $rename_map[.key]
                    else . end
                ) | from_entries
            ) |

            # Remove redirected schemas
            .components.schemas = (.components.schemas | with_entries(select($redirect_map[.key] | not))) |

            # Update all $ref references (only schema refs, not parameter refs)
            walk(if type == "object" and .["$ref"]? then
                .["$ref"] as $ref |
                (($ref | capture("#/components/schemas/(?<name>.+)")) // {}).name as $schema_name |
                if $schema_name then
                    if $rename_map[$schema_name] then
                        .["$ref"] = "#/components/schemas/" + $rename_map[$schema_name]
                    elif $redirect_map[$schema_name] then
                        .["$ref"] = "#/components/schemas/" + $redirect_map[$schema_name]
                    else . end
                else . end
            else . end)
        ' "$bundle_file" > "$bundle_file.tmp" && mv "$bundle_file.tmp" "$bundle_file"
    fi

    unset renames_old renames_new redirects_from redirects_to
done

echo ""

# Step 2: Merge specifications
echo "Step 2: Merging specifications..."

# Create base merged spec
cat > "$TEMP_DIR/merged.json" << 'EOF'
{
  "openapi": "3.0.3",
  "info": {
    "title": "Sendcloud Public REST API",
    "version": "2.0.0",
    "description": "Complete Sendcloud API v2 specification - merged from official sendcloud.dev documentation",
    "contact": {
      "name": "Sendcloud API Support",
      "url": "https://sendcloud.dev",
      "email": "contact@sendcloud.com"
    },
    "license": {
      "name": "Apache 2.0",
      "url": "http://www.apache.org/licenses/LICENSE-2.0.html"
    },
    "x-source": "https://sendcloud.dev/.openapi/v2/",
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
echo "  - API resources: $BUNDLE_COUNT"
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
