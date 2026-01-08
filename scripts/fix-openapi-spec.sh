#!/usr/bin/env bash

#
# Fixes OpenAPI 3.1 compatibility issues for openapi-generator
#
# Applies the following fixes to ./openapi.json:
# - Downgrades OpenAPI version from 3.1.x to 3.0.3
# - Converts $ref + properties combinations to allOf structures
# - Removes unresolved relative file references (./something.yaml)
# - Converts empty type objects {} to string
# - Converts type arrays (3.1 feature) to single types
# - Removes empty requestBody content
# - Removes empty component sections
# - Removes OpenAPI 3.1 specific schema attributes
#
# Usage: ./scripts/fix-openapi-spec.sh
#

set -euo pipefail

OPENAPI_FILE="./openapi.json"

if [ ! -f "$OPENAPI_FILE" ]; then
    echo "Error: $OPENAPI_FILE not found"
    exit 1
fi

if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed."
    exit 1
fi

echo "Fixing OpenAPI spec compatibility issues..."

TEMP_FILE=$(mktemp)
trap "rm -f $TEMP_FILE" EXIT

jq '
  # Downgrade to 3.0.3 for better generator compatibility
  .openapi = "3.0.3" |

  # Remove empty component sections (but not the components object itself)
  (if (.components.parameters? // {} | keys | length) == 0 then del(.components.parameters) else . end) |
  (if (.components.requestBodies? // {} | keys | length) == 0 then del(.components.requestBodies) else . end) |
  (if (.components.responses? // {} | keys | length) == 0 then del(.components.responses) else . end) |
  (if (.components.examples? // {} | keys | length) == 0 then del(.components.examples) else . end) |

  # Sort tags alphabetically
  .tags |= sort_by(.name) |

  # Remove invalid schemas with numeric names (like "0", "1")
  .components.schemas |= with_entries(select(.key | test("^[0-9]+$") | not)) |

  # Fix schemas in components.schemas (recursively within each schema)
  .components.schemas |= (
    if . then
      map_values(
        walk(
          if type == "object" then
            # Remove OpenAPI 3.1 specific attributes
            del(.examples) |
            del(.const) |
            del(.descriptions) |
            del(.Title) |
            del(.Description) |
            del(.Iso2CountryCode) |

            # Fix casing issues
            (if .minitems? then .minItems = .minitems | del(.minitems) else . end) |
            (if .maxitems? then .maxItems = .maxitems | del(.maxitems) else . end) |

            # Remove nested components (invalid in schemas)
            (if has("components") and (has("properties") or has("allOf") or has("oneOf") or has("anyOf") or has("type")) then del(.components) else . end)
          else .
          end
        )
      )
    else .
    end
  ) |

  # Walk through the spec to fix structural issues
  walk(
    if type == "object" then
      # Fix: $ref combined with properties -> convert to allOf
      if (.["$ref"]? | type == "string") and (.["$ref"] | startswith("#")) and .properties? then
        {
          allOf: [
            { "$ref": .["$ref"] },
            ({ type: "object", properties: .properties } + (if .required? then { required: .required } else {} end))
          ]
        } + (. | del(.["$ref"]) | del(.properties) | del(.required))
      # Fix: Remove unresolved relative file references (./something.yaml)
      elif (.["$ref"]? | type == "string") and (.["$ref"] | startswith("./")) then
        . | del(.["$ref"]) | . + { type: "object" }
      # Fix: Empty type object {} -> string
      elif (.type? | type == "object") and (.type | keys | length) == 0 then
        .type = "string"
      # Fix: type as array (OpenAPI 3.1) -> use first non-null type (OpenAPI 3.0)
      elif (.type? | type == "array") then
        .type = (.type | map(select(. != "null")) | first // "string")
      else
        .
      end
    else
      .
    end
  ) |

  # Fix malformed requestBody with empty content
  walk(
    if type == "object" and .requestBody? and (.requestBody.content? | type == "object") and (.requestBody.content | keys | length) == 0
    then del(.requestBody)
    else .
    end
  )
' "$OPENAPI_FILE" > "$TEMP_FILE"

mv "$TEMP_FILE" "$OPENAPI_FILE"

echo "Done! Fixed $OPENAPI_FILE"
