# Skills

## README

The README is the repo's front door: title, install command, and a skills table.
Whenever a skill is added, renamed, or its frontmatter description changes,
regenerate the table with `scripts/gen-index.sh` and commit it together with the
change. Never hand-edit between the `skills-table` markers.

## Agent skills

### Issue tracker

Issues live in GitHub Issues (`lyckantropen/skills`), managed via the `gh` CLI. See `docs/agents/issue-tracker.md`.

### Triage labels

The five canonical triage labels: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

Single-context: root `GLOSSARY.md` + `docs/adr/`. See `docs/agents/domain.md`.
