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

**Bend**:
A workaround a change left behind — a diff that landed by adding a case, guard, flag, or parameter at a call site instead of at the origin.
_Avoid_: workaround, hack

**Bend record**:
The mined bends a design-strain run clusters by an identity rule stated before reading them; kept or discarded at hand-off.
_Avoid_: evidence file

**Change stream**:
The sequence of commits touching a design; the input churn, co-change, and authorship evidence is mined from.
_Avoid_: history, log

**Intent statement**:
A numbered list of observable conditions stating what a design is for; the criterion design-strain and design-collapse verdicts cite.
_Avoid_: spec — the spec is a candidate source for one, not the statement itself

**Candidate verdict**:
The per-candidate output of design-collapse's indict step: dependents found, co-change evidence, intent conditions served or disserved, and the call.
_Avoid_: finding, smell
