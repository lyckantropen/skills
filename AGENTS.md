# Skills

## README

The README is the repo's front door: title, install command, and a skills table.
The table is hand-maintained: whenever a skill is added, renamed, or its frontmatter
summary changes, edit the table row in the same commit.

## Agent skills

### Issue tracker

Issues live in GitHub Issues (`lyckantropen/skills`), managed via the `gh` CLI. See `docs/agents/issue-tracker.md`.

### Triage labels

The five canonical triage labels: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

Single-context: root `GLOSSARY.md` + `docs/adr/`. See `docs/agents/domain.md`.

## Git workflow

At the end of every turn that changed files, commit — one commit per turn;
split into logical commits only when a turn mixes unrelated changes.
At every [milestone](GLOSSARY.md), push to `origin`. If the push is rejected,
fetch, rebase onto `origin/main`, and retry once; on a conflict, stop and report.
