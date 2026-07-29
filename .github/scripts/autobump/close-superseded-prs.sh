#!/usr/bin/env bash
# Usage: close-superseded-prs.sh <repo> <formula> <new_branch> <new_pr>
# Requires GH_TOKEN in the environment.
set -euo pipefail

repo="$1"
formula="$2"
new_branch="$3"
new_pr="$4"

gh pr list --repo "$repo" --state open \
  --json number,headRefName \
  --jq --arg formula "$formula" --arg branch "$new_branch" \
  '.[] | select(.headRefName | startswith("bump-" + $formula + "-")) | select(.headRefName != $branch) | .number' \
  | while read -r pr; do
      [ -z "$pr" ] && continue
      echo "Closing superseded PR #${pr}"
      gh pr close "$pr" --repo "$repo" \
        --comment "Superseded by #${new_pr}." \
        --delete-branch
    done
