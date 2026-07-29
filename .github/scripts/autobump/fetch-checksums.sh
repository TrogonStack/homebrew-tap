#!/usr/bin/env bash
# Usage: fetch-checksums.sh <formula> <version> <tag_prefix> <url_style> <upstream_repo> <out_file> <arch>...
# Writes "<arch>=<sha256>" lines to <out_file>.
set -euo pipefail

formula="$1"; shift
version="$1"; shift
tag_prefix="$1"; shift
style="$1"; shift
repo="$1"; shift
out_file="$1"; shift
archs=("$@")

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

: > "$out_file"

for arch in "${archs[@]}"; do
  case "$style" in
    rust)
      file="${formula}-${version}-${arch}.tar.gz"
      ;;
    goreleaser)
      file="${formula}@v${version}_${arch}.tar.gz"
      ;;
    otelcol)
      file="otelcol-contrib_${version}_${arch}.tar.gz"
      ;;
    *)
      echo "::error::Unknown url_style: $style" >&2
      exit 1
      ;;
  esac

  gh release download "${tag_prefix}${version}" \
    --repo "$repo" \
    --pattern "$file" \
    --dir "$tmpdir"

  sha=$(sha256sum "$tmpdir/$file" | awk '{print $1}')
  if ! [[ "$sha" =~ ^[a-f0-9]{64}$ ]]; then
    echo "::error::Invalid SHA256 for $file (got: '$sha')" >&2
    exit 1
  fi

  echo "${arch}=${sha}" >> "$out_file"
  rm "$tmpdir/$file"
done
