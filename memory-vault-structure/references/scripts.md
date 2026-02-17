# Script contract

## sync-memory-to-vault.sh

Required behavior:
- Copy selected workspace docs into `vault/docs/`.
- Normalize memory note locations into canonical vault paths.
- Create missing directories as needed.
- Remove deprecated compatibility files/symlinks from older layouts.
- Preserve deterministic permissions (0644 for docs/memory files, 0755 for scripts).

## backup-memory-vault.sh

Required behavior:
- Call `sync-memory-to-vault.sh` first.
- Export system crontab snapshot to `ops/cron/system-crontab.txt`.
- Export OpenClaw cron jobs JSON to `ops/cron/openclaw-cron-jobs.json` (best effort).
- Stage all changes with `git add -A`.
- Exit without commit if nothing changed.
- Commit with timestamp if changed.
- Push using dedicated repository auth (deploy key/token).

## Maintenance policy

When script behavior changes in a way that affects folder structure, tracked file classes, or path mapping:
1. Update this reference.
2. Update `references/layout.md` and/or `references/gitignore-allowlist.md` if applicable.
3. Commit all related updates together.

Daily memory content changes do not require any skill updates.
