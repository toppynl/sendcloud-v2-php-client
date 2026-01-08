#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check for required tools
MISSING_TOOLS=()

for cmd in curl jq yq; do
    if ! command -v "$cmd" &> /dev/null; then
        MISSING_TOOLS+=("$cmd")
    fi
done

if ! command -v java &> /dev/null; then
    MISSING_TOOLS+=("java")
fi

if ! command -v pnpm &> /dev/null && ! command -v npx &> /dev/null; then
    MISSING_TOOLS+=("pnpm or npm")
fi

if [ ${#MISSING_TOOLS[@]} -ne 0 ]; then
    echo "Error: Missing required tools: ${MISSING_TOOLS[*]}"
    echo ""
    echo "You can install them using asdf (https://asdf-vm.com/):"
    echo ""
    echo "  1. Install asdf: https://asdf-vm.com/guide/getting-started.html"
    echo ""
    echo "  2. Add the required plugins:"
    echo "     asdf plugin add nodejs"
    echo "     asdf plugin add java"
    echo "     asdf plugin add jq"
    echo "     asdf plugin add yq"
    echo ""
    echo "  3. Install tools from .tool-versions:"
    echo "     asdf install"
    echo ""
    echo "  4. Install pnpm (if not available):"
    echo "     npm install -g pnpm"
    echo ""
    echo "  Note: curl is typically available on most systems."
    echo "        On Debian/Ubuntu: sudo apt install curl"
    echo "        On macOS: brew install curl"
    exit 1
fi

# Step 1: Fetch OpenAPI spec
echo "Fetching OpenAPI specification..."
"$SCRIPT_DIR/scripts/fetch-openapi-spec.sh"

# Step 2: Fix OpenAPI spec compatibility issues
echo ""
"$SCRIPT_DIR/scripts/fix-openapi-spec.sh"

# Step 3: Clean up previous generated code
echo ""
echo "Cleaning up previous generated code..."
rm -rf docs src test

# Step 4: Generate client using openapi-generator-cli
echo ""
echo "Generating client code..."

if command -v pnpm &> /dev/null; then
    pnpm dlx @openapitools/openapi-generator-cli generate
else
    npx @openapitools/openapi-generator-cli generate
fi

# Step 5: Upgrade PHP syntax with Rector
echo ""
echo "Upgrading PHP syntax with Rector..."
./vendor/bin/rector process --no-progress-bar

echo ""
echo "Build complete!"
