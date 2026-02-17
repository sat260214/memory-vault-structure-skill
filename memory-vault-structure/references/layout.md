# Canonical memory-vault layout

```text
memory-vault/
├─ .gitignore
├─ README.md
├─ docs/
│  ├─ AGENTS.md
│  ├─ SOUL.md
│  ├─ TOOLS.md
│  ├─ USER.md
│  ├─ IDENTITY.md
│  ├─ MEMORY.md
│  └─ TODO.md
├─ memory/
│  ├─ daily/
│  ├─ chats/
│  │  └─ telegram/
│  │     ├─ dm-<id>/YYYY-MM-DD.md
│  │     └─ group-<id>/YYYY-MM-DD.md
│  └─ misc/
├─ ops/
│  └─ cron/
│     ├─ system-crontab.txt
│     └─ openclaw-cron-jobs.json
├─ scripts/
│  ├─ sync-memory-to-vault.sh
│  └─ backup-memory-vault.sh
└─ skills/
   └─ public/
      └─ memory-vault-structure/
         ├─ SKILL.md
         ├─ references/
         └─ scripts/
```

## Workspace -> vault mapping

- `workspace/IDENTITY.md` -> `vault/docs/IDENTITY.md`
- `workspace/USER.md` -> `vault/docs/USER.md`
- `workspace/TOOLS.md` -> `vault/docs/TOOLS.md`
- `workspace/SOUL.md` -> `vault/docs/SOUL.md`
- `workspace/AGENTS.md` -> `vault/docs/AGENTS.md`
- `workspace/MEMORY.md` -> `vault/docs/MEMORY.md`
- `workspace/TODO.md` -> `vault/docs/TODO.md`

Memory mapping:
- `workspace/memory/YYYY-MM-DD.md` -> `vault/memory/daily/YYYY-MM-DD.md`
- `workspace/memory/dm-...` -> `vault/memory/chats/telegram/dm-...`
- `workspace/memory/group-...` -> `vault/memory/chats/telegram/group-...`
- other markdown files under `workspace/memory/` -> `vault/memory/misc/...`
