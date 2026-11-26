---
name: design-pressure
description: (draft) Pressure a spec or in-flight design change against nine design principles and propose concrete before/after redesigns; for new design territory or branchy work, skip for mechanical or trivial work.
---

# design-pressure skill (TBD)

**Activate when any**: high complexity or branchy path; new design territory; user request; seeding a dependent design. Skip for mechanical, trivial or pure-reproduction work.

**Spec** - a document, artefact, accessed and edited by whatever means, which describes changes to the design; if it exists, it is the subject of pressure, input and output of the procedure. If absent, the pressure subject are the design changes being discussed or planned.

## Principles

* P-1: **Every touch is an opportunity** - structurally better, not just functionally correct
* P-2: **Complexity is a net loss** - adding complexity to satisfy a requirement is a design failure
* P-3: **Promote implicit to structural** - constraints via structure, contracts, or API shape rather than documentation, convention, or circumstance
* P-4: **Special cases are design debt** - a general mechanism handles them
* P-5: **Propose, don't criticize** - concrete redesign, not a smell test
* P-6: **Elegance test** - would a reviewer say this snaps into place?
* P-7: **Sensitive code** - crossroads modules accumulate coupling; list them in the spec
* P-8: **Locality** - future changes in one place; mirrored call sites signal the wrong design
* P-9: **Narrowing over widening** - narrowa valid states over defensive checks

## Procedure

1. **Context** - read the spec, relevant tickets or issues, and the relevant code area
2. **Pressure pass** - walk P-1 -> P-9 against the current or proposed design; note every tension
3. **Propose** - for each tension, a concrete before/after redesign; no smell lists
4. **Confirm** - stop; user approves the direction before writing
5. **Record** - track each agreed decision, update the spec, reshape ticket/issue graph if necessary
