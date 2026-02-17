# memory-vault-structure-skill

Reusable OpenClaw skill for building and maintaining a Git-based memory vault structure.

## Contents

- `memory-vault-structure/` — source skill folder
- `dist/memory-vault-structure.skill` — packaged artifact

## Update policy

**Maintainer-only:** only designated maintainers may update this repository.
Consumer agents should use this skill as read-only and must not push changes.

Maintainers should update this repository whenever **memory vault structure** changes, including:
- folder layout changes
- workspace→vault path mapping changes
- `.gitignore` allowlist policy changes
- sync/backup script behavior changes affecting structure

Do **not** update solely for normal memory content changes.
