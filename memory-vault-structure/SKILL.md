---
name: memory-vault-structure
description: Build, clone, and maintain a Git-based memory vault for OpenClaw/agent workflows with a deny-by-default allowlist, canonical folder layout, sync/backup scripts, and cron snapshots. Use when creating a reusable memory-vault repository, migrating an existing vault layout, auditing vault structure, or updating structure-related automation (not daily memory content updates).
---

# Memory Vault Structure

## Overview

Create and maintain a reusable memory-vault repository that stores agent memory and operational snapshots safely, with strict git tracking rules and deterministic sync/backup automation.

## Workflow

1. Create or open a git repository dedicated to memory backups.
2. Apply the canonical structure from `references/layout.md`.
3. Apply deny-by-default `.gitignore` rules from `references/gitignore-allowlist.md`.
4. Add sync/backup scripts from `references/scripts.md`.
5. Validate by running one sync + one backup pass.
6. Commit and push.
7. For future structure changes, update the same references and scripts in this skill.

## Scope rule: structure changes vs content changes

Treat these as **structure changes** (must update this skill):
- Add/remove/rename top-level folders (`docs/`, `memory/`, `ops/`, `scripts/`, `skills/`, etc.)
- Change path mapping rules in sync logic
- Change `.gitignore` allowlist model or tracked file classes
- Add/remove backup artifacts (for example cron exports)
- Change script behavior that affects vault architecture

Treat these as **content-only changes** (do not require skill update):
- New daily memory notes
- New chat log entries
- Normal edits to existing memory content files without path/schema changes

## Execution checklist

- Keep `.gitignore` deny-by-default (`*`) and allowlist explicit paths only.
- Keep one source-of-truth mapping table for workspace -> vault paths.
- Ensure backup is idempotent (no commit when nothing changed).
- Ensure push uses least-privilege auth (deploy key/token dedicated to the repo).
- Keep structure docs in references synchronized with the actual scripts.

## Resources

- `references/layout.md` — canonical repository tree and path mapping.
- `references/gitignore-allowlist.md` — deny-by-default allowlist pattern.
- `references/scripts.md` — sync/backup script contract and expected behavior.
- `scripts/validate_structure.sh` — quick structural checks for required directories/files.
