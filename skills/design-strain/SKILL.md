---
name: design-strain
summary: Run when small requests keep turning into big changes in the same spot
description: Read the accumulated bends in a standing design and decide whether the design itself must move, emitting a target shape plus a first reversible move. Use when your own instructions to the agent keep dodging the same spot, when small asks keep landing as big diffs, when one area has grown expensive to touch though nothing is broken, or when you ask whether the design itself must move — skip for judging a single change (design-pressure) or trimming bloat (design-collapse).
---

# design-strain

Strain, not wrongness: a design fails by accumulating bends — every individually-fine change bends the same way around the same structure. The bends are behavioral evidence, left by changes optimizing the diff; the judge of any reshape is the intent the design is for. Sister to `design-pressure`, which gates single changes; where the same tension keeps firing across those passes, the standing design becomes the subject.

**Bend record** - the run's written evidence: recurring workarounds and the tensions they answered, mirrored call sites, paths every change touches. Witness, not judge — read it against the intent statement (procedure 1); the decision record — why the design is like this — supplies intent candidates, fossils included.

## Principles — broadest scope, largest change potential, highest stakes, biggest consequences first

* S-1: **Smooth absorption is the trap** - every workaround landing without breakage is the trap's signature, not evidence of health; smooth operation is what keeps the superior design from ever being tried
* S-2: **The bends are the license** - the recurring tensions themselves justify the reshape; no further proof of wrongness is required
* S-3: **Bends are the witness, intent the judge** - the bend record locates the strain and licenses the move, but the changes that left it were optimizing the diff, so the target is judged against the intent statement, not against the bends' own shape
* S-4: **Co-change proves cost, not wrongness** - a mirrored-site cluster has three rival explanations; one concept honestly living in five files must not be split — discriminate before licensing the reshape
* S-5: **Workarounds reveal the operative design** - reshape the structure actually running, not the one documented
* S-6: **Check the Conway hypothesis** - deformation that mirrors a team or ownership boundary survives any code reshape; flag it, do not fight it
* S-7: **Reshape the dependence, not the pressured part** - the repair is usually in the whole's dependence graph; hardening the hot module gold-plates the keystone
* S-8: **The target is an operating pattern** - "a new feature touches one module", derived from what the bends point at and judged by the intent conditions it serves — not the current design with each bend site patched
* S-9: **Name the loop that moves** - if the same loops would hold the same variables afterward, nothing was reshaped
* S-10: **The first move predicts** - a falsifiable expectation of what changes in the bend pattern, observable by when; without it the move is motion
* S-11: **Name the sacrifice** - what the target gives up and how that degradation will be watched; a pure-gain target is churn

## Procedure

1. **Intent** - state what the design is for as numbered observable conditions (I-1, I-2, ...), each checkable by watching the system run rather than by inspecting its structure: supplied by the operator, recovered from the decision record as candidates the user confirms, or assumed and confirmed as an assumption
2. **Evidence** - mine the bends — hot paths (files touched by many commits), workaround-shaped changes (diffs landing as a case, guard, flag, or parameter at a call site instead of at the origin), mirrored call sites (near-identical blocks across files) — keeping them as the bend record if the run proceeds past classification; before clustering, state the identity rule, what counts as the same tension recurring — the least-evidenced choice in the record, so explicit rather than assumed
3. **Confirm strain** - walk S-1 -> S-11 over the clusters, noting what each principle rules out or flags; then classify each cluster — the design's, one change's, an honest concept's, or the org chart's — with evidence; if none is the design's, say so and stop
4. **Target** - the operating pattern the bends point at, each element citing the I-numbers it serves; name the loop that moves and the sacrifice
5. **First move** - the smallest reversible move toward the target with its prediction — what changes in the bend record, observable by when; the user confirms against the intent statement before any writing
6. **Hand off** - the move lands as its own design-pressure pass; the record, with its unaddressed clusters, is kept or discarded by the operator
