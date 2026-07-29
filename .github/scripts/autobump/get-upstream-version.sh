#!/usr/bin/env bash
# Usage: get-upstream-version.sh <upstream_repo> <tag_prefix>
set -euo pipefail

repo="$1"
tag_prefix="$2"

tag=$(gh release list \
  --repo "$repo" \
  --limit 100 \
  --json tagName \
  --jq --arg prefix "$tag_prefix" \
  '[.[] | select(.tagName | startswith($prefix) and (contains("/") | not))] | first | .tagName | ltrimstr($prefix)')

if [ -z "$tag" ] || [ "$tag" = "null" ]; then
  echo "::error::Could not resolve upstream version for tag_prefix: $tag_prefix" >&2
  exit 1
fi

echo "$tag"
