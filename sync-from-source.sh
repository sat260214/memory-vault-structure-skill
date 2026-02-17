#!/usr/bin/env bash
set -euo pipefail

SRC_BASE="${1:-/root/.openclaw/memory-vault/skills}"
ROOT="$(cd "$(dirname "$0")" && pwd)"

cp -f "$SRC_BASE/public/memory-vault-structure/SKILL.md" "$ROOT/memory-vault-structure/SKILL.md"
cp -f "$SRC_BASE/public/memory-vault-structure/references/"* "$ROOT/memory-vault-structure/references/"
cp -f "$SRC_BASE/public/memory-vault-structure/scripts/validate_structure.sh" "$ROOT/memory-vault-structure/scripts/"
cp -f "$SRC_BASE/dist/memory-vault-structure.skill" "$ROOT/dist/"

echo "Synced skill from: $SRC_BASE"
