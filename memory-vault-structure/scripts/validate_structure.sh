#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-$(pwd)}"

required=(
  ".gitignore"
  "README.md"
  "docs"
  "memory"
  "ops/cron"
  "scripts"
)

missing=0
for p in "${required[@]}"; do
  if [[ ! -e "$ROOT/$p" ]]; then
    echo "MISSING: $p"
    missing=1
  fi
done

if [[ $missing -ne 0 ]]; then
  echo "Structure check failed."
  exit 1
fi

echo "Structure check OK"
