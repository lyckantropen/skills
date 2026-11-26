---
name: design-pressure
summary: Pressure specs and in-flight designs
description: Pressure a spec or in-flight design change and propose concrete before/after redesigns. Use when a change is complex or branchy, enters new design territory, seeds dependent designs, or the user asks for design review, redesign, or refactor feedback — skip for mechanical, trivial, or pure-reproduction work.
---

# design-pressure

**Spec** - a doc, ticket, issue, or PR description; any persistent artifact describing the intended design change: the input and the output of this procedure. If absent — including when the change lives only in conversation — the subject of pressure is the design change being discussed or planned.

## Principles

* P-1: **Every touch is an opportunity** - structurally better, not just functionally correct; a touch the design needs anyway is the chance to leave it better shaped than found
* P-2: **Complexity is a net loss** - adding complexity to satisfy a requirement is a design failure; a requirement only complexity can satisfy is suspect
* P-3: **Promote implicit to structural** - constraints via structure, contracts, or API shape rather than documentation, convention, or circumstance
* P-4: **Special cases are design debt** - a general mechanism handles them
* P-5: **Propose, don't criticize** - concrete redesign, not a smell test
* P-6: **Elegance test** - would a reviewer say this snaps into place, or ask "why is it like this?"
* P-7: **Sensitive code** - crossroads modules accumulate coupling; list them in the spec
* P-8: **Locality** - future changes in one place; mirrored call sites signal the wrong design
* P-9: **Narrowing over widening** - narrow valid states over defensive checks

## Procedure

1. **Context** - read the spec, relevant tickets or issues, and the relevant code area
2. **Pressure pass** - walk P-1 -> P-9 against the current or proposed design; note every tension
3. **Propose** - for each tension: the principle it violates, a concrete before, after, and why the after snaps in. If the pass finds no tensions, say so and stop
4. **Confirm** - stop; user approves the direction before writing
5. **Record** - track each agreed decision, update the spec (creating it if none exists), reshape ticket/issue graph if necessary
