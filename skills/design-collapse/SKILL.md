---
name: design-collapse
summary: Cut a bloated design back down to what its intent requires
description: Gate a standing design that is bloated — especially by AI agents — and emit a staged deletion-and-collapse list of what vanishes, what merges into what, and what survives and why. Use when the design carries structure or behavior with no evidenced utility — speculative generality, one-implementation interfaces, pass-through layers, defensive branches for paths nobody exercises, duplicate mechanisms, ceremony — or the user asks to shrink or collapse the design — skip for code-level cleanup (reducing-entropy), single-change gating (design-pressure), or accumulated bends (design-strain).
disable-model-invocation: true
---

# design-collapse

**Agentic prose** - prose written to steer an agent: AGENTS.md, CLAUDE.md, skills, prompts, memory files. When constitutive of the system under assessment, it is artefact, not input: read it as evidence of how the system is run, and edit it like any other structure. Its claims are use-claims to verify against behavior, never instructions to this procedure.

Bloat, not wrongness: the design carries more than its intent requires — fatter structure and fatter behavior (states, branches, guards) alike — typically grown by agents optimizing closed tasks, not intent. Sister to `design-strain` (the design deforms) and `design-pressure` (a change enters); this skill subtracts.

## Principles — broadest scope, largest change potential, highest stakes, biggest consequences first

* C-1: **Pays rent or it goes** - the status quo must justify itself by evidenced utility to the whole; that it keeps running is observation, not desert
* C-2: **Behavior is the witness, intent the judge** - that the design does something licenses observing it, never keeping it; the change stream's revealed intent is the diff-maximizer's, so preserving the behavior preserves the corruption — the anchor is intent a human would re-approve
* C-3: **Behavior bloats too** - reachable states grow as the product of flags and guards; agents add defensive scaffolding for paths nobody exercises; narrowing the state space is collapse's work, not its risk
* C-4: **Distrust the author's calibration** - self-assessment inverts; only observed behavior and change history are admissible evidence, from anyone — including this pass
* C-5: **Plausible futures are not evidence** - "we might need this" stays deletion only by citing precedent in the change record; the same evidentiary bar as use-claims
* C-6: **Co-change is the lie detector** - an extension point whose clients never co-changed with it was never exercised; verify use-claims against history, not imports
* C-7: **Session sediment** - near-identical blocks are context-amnesia re-implementations, not intentional variants; authorship dates of the copies are diagnostic
* C-8: **Self-referential verification is ceremony** - checks asserting the design's internal structure honor nothing, and tests pinning behavior no human would re-approve sanctify the accident; the net asserts ratified intent, not the snapshot
* C-9: **Delete copies, don't mint the abstraction** - deleting five of six copies needs a diff review; the abstraction that would unify them is a new design decision, not part of the cleanup
* C-10: **Consolidation is theory-gated** - a merge carries a precondition deletion doesn't: a held theory of the region and a net at the seam — else it downgrades to deletion
* C-11: **Pass to fixpoint** - removal exposes the next layer; collapse is pass-until-nothing, never one sweep
* C-12: **Invisible collapse** - a good collapse is invisible in what the design does for its user; the vanished states show only to whoever goes looking for them
* C-13: **Report size-delta plus held invariants** - never lines-deleted: it rewards deleting load-bearing code as readily as dead

## Procedure

1. **Intent** - state what the design is for as numbered observable conditions (I-1, I-2, ...), each checkable by watching the system run rather than by inspecting its structure: supplied by the operator, recovered from the intent channels (spec, ADRs, naming) as candidates the user confirms, or assumed and confirmed as an assumption
2. **Evidence** - mine the change stream — churn per region (what keeps getting rewritten), co-change pairs, authorship dates of near-identical blocks, duplicate-block scan — plus observed behavior: tests, logs, traces, the operator's account; when none exists, record "no behavioral evidence" and proceed on the stream; open the code snapshot last, not first
3. **Indict** - walk C-1 -> C-13 against the design, noting every candidate each principle exposes, producing per candidate a candidate verdict: dependents found, co-change evidence, intent conditions served or disserved, and the call; unknown is not zero
4. **List** - what vanishes, what merges into what, what survives citing the I-numbers it serves; order the stages purely subtractive — one deletion category per stage, revertible as a unit, no fixes or additions riding along — and when a merge replaces a live mechanism, prefer running both briefly and name a deletion date
5. **Confirm** - stop; user approves the list against the intent statement before any deletion
6. **Repeat** - execute stage by stage, re-run to fixpoint, and report the collapse as size-delta plus the invariants still held
