# lyckantropen's skills

Agentic skills, installable with the [skills CLI](https://github.com/vercel-labs/skills).

## Install

```sh
npx skills add lyckantropen/skills --skill <name>
npx skills update   # refresh installed skills later
```

## Skills

**Done is not designed.** AI agents close tasks fast and leave the design worse — each diff optimizes for "done," not for the structure holding it. This family of gates fights back, distilling decades of research — software design theory (Parnas, Naur), refactoring and legacy-code practice (Fowler, Feathers), empirical study of how code actually evolves (GitClear, DORA, METR), and systems thinking (POSIWID, requisite variety) — into principles an agent can walk and verdicts a human can check. You invoke them — the cost function that grew the bloat never schedules its own subtraction. Pressure gates each change on entry; strain catches the design deforming as changes bend around it; collapse pays down the mass an agent has already grown.

<!-- skills-table:start -->
| [`skills/design-collapse/`](./skills/design-collapse/) | Cut a bloated codebase back down to what's actually used |
| [`skills/design-pressure/`](./skills/design-pressure/) | Rethink a tricky change before the agent builds it |
| [`skills/design-strain/`](./skills/design-strain/) | Run when small requests keep turning into big changes in the same spot |
<!-- skills-table:end -->

## Examples

### design-collapse
- The codebase grew three template engines while every caller uses one — collapse emits a staged list of what vanishes, what merges into what, and what survives citing the intent it serves.
- An interface has had one implementation since it landed, a plugin system nothing extends, config knobs for paths no traffic reaches — each is indicted as speculative generality and must justify itself by evidenced utility, not plausibility.
- After a months-long agent-assisted build-out, the module tripled in size while its behavior barely moved — collapse walks its principles against it and reports the size delta plus held invariants, never lines deleted.

### design-pressure
- "Add multi-tenant routing to the request pipeline" seeds dependent designs — every later feature depends on where the tenant decision lives, so pressure proposes concrete before/afters before the agent builds.
- "Support partial refunds" would touch billing, notifications, and audit logging — pressure decides where the case originates so leaves stay branch-free, instead of threading a flag through five call sites.
- A grilling session just settled what to build; pressure shapes how — one pass over the settled change, each verdict confirmed against an intent statement before any writing.

### design-strain
- Every new notification type lands as a channel flag threaded through five call sites, and you've told the agent three times "don't touch the dispatcher, add a case where it's called" — strain mines the history, classifies the bends, and decides whether the dispatcher needs a registration seam.
- Small asks keep becoming big diffs in the same area though nothing is broken; the same tension keeps firing across design-pressure passes, so the standing design becomes the subject.
- One part of the design has grown expensive to touch and your own instructions keep dodging it — strain reads the accumulated bends and emits a target operating pattern plus one reversible first move with a prediction.
