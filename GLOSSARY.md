# skills

Agentic skills, installable with the [skills CLI](https://github.com/vercel-labs/skills).

## Language

**Description**:
The frontmatter trigger text the skills CLI consumes to decide when a skill activates. Lives only in `SKILL.md`; never shown in the README table.
_Avoid_: using the description as table prose

**Summary**:
The short human-facing label shown in the README skills table. Lives in frontmatter (`summary:`); falls back to the description when absent.
_Avoid_: label, blurb

**Milestone**:
A coherent unit of work that is complete and verified — a skill finished end-to-end, README table regenerated, all changes committed — so the repo makes sense to a reader if pushed at that point.
_Avoid_: pushing half-finished or unverified work
