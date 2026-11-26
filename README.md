# Karol's skills

Agentic skills, installable with the [skills CLI](https://github.com/vercel-labs/skills).

## Install

```sh
npx skills add lyckantropen/skills
```

## Skills

### Design steers

Layering dozens of "grilling" and "implement" sessions made your codebase into a monster? AI agents close tasks fast and leave the design worse — each diff optimizes for "done," not for the structure holding it. These prompts help you fight back, turning design research and practice into principles an agent can walk and verdicts you can check. Distilled from decades of system and software research.

**You invoke them** — the same speed that grew the mess never schedules its own cleanup.

**Pressure** reviews each change before the agent builds it; **strain** notices small changes bending the same spot again and again; **collapse** deletes what the agent built that nothing uses.

| [`skills/design-collapse/`](./skills/design-collapse/) | Cut a bloated design back down to what its intent requires |
| [`skills/design-pressure/`](./skills/design-pressure/) | Rethink a tricky change before the agent builds it |
| [`skills/design-strain/`](./skills/design-strain/) | Run when small requests keep turning into big changes in the same spot |

#### Examples

##### design-collapse
- Three template engines, one caller — **collapse** produces a staged list of what to delete, what to merge, and what to keep, each with a reason.
- An interface with one implementation, a plugin system nothing extends, config options for paths no traffic reaches — each must prove it's used, or it goes.
- After months of agent-driven work, a module tripled in size while its behavior barely changed — **collapse** reports what was removed and what still works, never a bare lines-deleted count.

##### design-pressure
- You're about to add multi-tenant routing to the request pipeline, and every later feature depends on where the tenant check lives — **pressure** proposes concrete before/after redesigns before the agent builds.
- A partial-refund feature would touch billing, notifications, and audit logging — **pressure** decides where the new case belongs instead of letting a flag spread through five call sites.
- A grilling session just settled what to build — **pressure** shapes how, with redesigns you approve before any code is written.

##### design-strain
- Every new notification type threads a flag through five call sites, and you've told the agent three times "don't touch the dispatcher, add a case where it's called" — **strain** reads the change history and decides whether the dispatcher needs a registration point so new types land in one place.
- Small requests keep becoming big diffs in the same area though nothing is broken — even with design-pressure gating each change, the same spot keeps hurting.
- One part of the code is expensive to touch, and your own instructions keep steering the agent around it — **strain** names where the design should settle and proposes one small reversible step, with a prediction you can check at the next change.
