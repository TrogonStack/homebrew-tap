#!/usr/bin/env bash
# Usage: get-current-version.sh <formula_file> <formula>
set -euo pipefail

formula_file="$1"
formula="$2"

url=$(grep -m1 'url "' "$formula_file" | sed 's/.*url "\(.*\)"/\1/')
tag=$(echo "$url" | sed -E 's#.*/releases/download/([^/]+)/.*#\1#')
version=$(echo "$tag" | grep -oE '[0-9]+(\.[0-9]+)+$')

if [ -z "$version" ]; then
  echo "::error::Could not resolve current version for $formula from $formula_file" >&2
  exit 1
fi

echo "$version"
