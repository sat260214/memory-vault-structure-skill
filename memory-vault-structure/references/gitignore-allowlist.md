# Deny-by-default allowlist policy

Use a deny-by-default `.gitignore` so only explicitly approved files/folders are tracked.

Baseline pattern:

```gitignore
*

!README.md
!.gitignore

!docs/
!docs/**
!data/
!data/**
!memory/
!memory/**
!ops/
!ops/cron/
!ops/cron/system-crontab.txt
!ops/cron/openclaw-cron-jobs.json
!scripts/
!scripts/**
!skills/
!skills/**
```

## Rules

- Add new top-level files only via explicit allowlist entries.
- If a new structure file is introduced and should be versioned, update the allowlist in the same commit.
- Do not relax to broad permissive rules unless intentionally redesigning security posture.
