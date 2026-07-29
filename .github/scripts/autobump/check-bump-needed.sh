#!/usr/bin/env bash
# Usage: check-bump-needed.sh <formula> <current_version> <upstream_version>
# Prints "true" or "false" to stdout.
set -euo pipefail

formula="$1"
current="$2"
upstream="$3"

if [ "$upstream" = "$current" ]; then
  echo "$formula: already at $current, skipping." >&2
  echo "false"
else
  echo "$formula: bumping $current → $upstream" >&2
  echo "true"
fi
