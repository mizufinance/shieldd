# Picus Determinism Composition Note (consolidate2x1)

**Status: frontier-reviewed 2026-07-06 — accepted as supporting evidence, NOT
promotable to a ledger/property row.** Verdict: option (b) of the final section
— Picus contribution is scoped to "per-leaf determinism, composed by argument";
the Lean deployed bridges remain the primary authority.

**Update 2026-07-06 (executor): gaps 2 and 3 mechanized.** Gap 3 — each per-leaf
`.picus.txt` artifact now carries a `picus-input-fingerprint` footer with the
sha256 of the exact `.sr1cs` Picus consumed (emitted by
`scripts/circuit-constraint-check.sh`), so the artifact hash pins *which*
constraint system was checked, not just the verdict text. Gap 2 — a
machine-checked gadget-wiring certificate (nodes = deployed instances, edges =
producer→consumer over algebraically-defined wires, plus a verified topological
order) is now generated and hash-pinned per circuit at
`crates/core/component/shielded-pool/formal/<circuit>-wiring-cert.json`
(`--wiring-cert-out` in `shieldd-constraint-coverage`, fail-closed on a
double-producer or a cycle). See the mechanized-gap sections below. Whole-circuit
Picus (gap 1) remains a killed run, so this note stays supporting evidence, not a
primary `proved-symbolic` row.

This note inventories the per-leaf
Picus verdicts and lays out the argument that leaf-level determinism composes to
whole-circuit determinism. It is *not* itself a verified artifact: the
composition step is a human argument, not a Picus result (see **Gaps found**).
No assumption-ledger row is claimed by this document.

## What Picus checks

Picus decides whether an R1CS gadget is **properly constrained** (a.k.a. `safe`,
"uniquely determined"): for every assignment to the gadget's declared inputs
there is at most one assignment to the remaining wires satisfying the
constraints. This is a *determinism* property — no under-constrained (free)
internal wire — **not** a semantic-correctness property. Correctness of the
computed value (that the unique output equals the intended function) is supplied
separately by the Lean deployed bridges, which are the row-level authority for
consolidate2x1 (49/49 segments). Picus is the complementary check that the
gadgets the bridges reason about have no witness slack.

## Per-leaf inventory

All 24 leaf gadgets extracted from the shielded-pool circuit family verify as
`properly constrained`. Exit code `8` and `0` are both Picus "safe" outcomes
(the ground-truth verdict is the "properly constrained" line; the two codes are
run-mode artifacts). Paths are relative to
`crates/core/component/shielded-pool/formal/`.

| Gadget | Verdict | Picus exit | Artifact | Verdict-text sha256 |
| --- | --- | --- | --- | --- |
| `ack-two-step` | properly constrained (safe) | 0 | `.generated/constraints/gadget-ack-two-step.picus.txt` | `4f2469afe0759cfb…` |
| `bool-select` | properly constrained (safe) | 8 | `.generated/constraints/gadget-bool-select.picus.txt` | `b26dcc47adde522a…` |
| `canonical-fq-bits` | properly constrained (safe) | 8 | `.generated/constraints/gadget-canonical-fq-bits.picus.txt` | `b26dcc47adde522a…` |
| `decaf-assert-equivalent` | properly constrained (safe) | 8 | `.generated/constraints/gadget-decaf-assert-equivalent.picus.txt` | `b26dcc47adde522a…` |
| `decaf-compress-to-field-core` | properly constrained (safe) | 8 | `.generated/constraints/gadget-decaf-compress-to-field-core.picus.txt` | `b26dcc47adde522a…` |
| `decaf-edwards-add` | properly constrained (safe) | 0 | `.generated/constraints/gadget-decaf-edwards-add.picus.txt` | `e12f1cf97b155273…` |
| `decaf-edwards-double` | properly constrained (safe) | 0 | `.generated/constraints/gadget-decaf-edwards-double.picus.txt` | `1c2dfa8220905133…` |
| `decaf-edwards-neg` | properly constrained (safe) | 8 | `.generated/constraints/gadget-decaf-edwards-neg.picus.txt` | `b26dcc47adde522a…` |
| `decaf-encode-to-curve-core` | properly constrained (safe) | 0 | `.generated/constraints/gadget-decaf-encode-to-curve-core.picus.txt` | `1b007480bbefa05f…` |
| `dleq` | properly constrained (safe) | 0 | `.generated/constraints/gadget-dleq.picus.txt` | `8f95183a9f512be7…` |
| `imt-gap` | properly constrained (safe) | 8 | `.generated/constraints/gadget-imt-gap.picus.txt` | `b26dcc47adde522a…` |
| `iszero` | properly constrained (safe) | 0 | `.generated/constraints/gadget-iszero.picus.txt` | `ed2dc2cf32328e28…` |
| `ivk-mod-r` | properly constrained (safe) | 8 | `.generated/constraints/gadget-ivk-mod-r.picus.txt` | `b26dcc47adde522a…` |
| `nullifier` | properly constrained (safe) | 8 | `.generated/constraints/gadget-nullifier.picus.txt` | `b26dcc47adde522a…` |
| `poseidon-hash1` | properly constrained (safe) | 8 | `.generated/constraints/gadget-poseidon-hash1.picus.txt` | `b26dcc47adde522a…` |
| `poseidon-hash4` | properly constrained (safe) | 8 | `.generated/constraints/gadget-poseidon-hash4.picus.txt` | `b26dcc47adde522a…` |
| `poseidon-hash5` | properly constrained (safe) | 8 | `.generated/constraints/gadget-poseidon-hash5.picus.txt` | `b26dcc47adde522a…` |
| `poseidon-hash6` | properly constrained (safe) | 8 | `.generated/constraints/gadget-poseidon-hash6.picus.txt` | `b26dcc47adde522a…` |
| `poseidon-hash7` | properly constrained (safe) | 8 | `.generated/constraints/gadget-poseidon-hash7.picus.txt` | `b26dcc47adde522a…` |
| `poseidon2` | properly constrained (safe) | 8 | `.generated/constraints/gadget-poseidon2.picus.txt` | `b26dcc47adde522a…` |
| `quad-path-round` | properly constrained (safe) | 8 | `.generated/constraints/gadget-quad-path-round.picus.txt` | `b26dcc47adde522a…` |
| `quad-path-two-round` | properly constrained (safe) | 8 | `.generated/constraints/gadget-quad-path-two-round.picus.txt` | `b26dcc47adde522a…` |
| `scalar-mul-step` | properly constrained (safe) | 0 | `.generated/constraints/gadget-scalar-mul-step.picus.txt` | `2a7f43c365212325…` |
| `scalar-mul-two-step` | properly constrained (safe) | 0 | `.generated/constraints/gadget-scalar-mul-two-step.picus.txt` | `4ada4a610903bb35…` |

Source of verdicts: `crates/core/component/shielded-pool/formal/.generated/constraints/*.picus.txt`
(one file per leaf gadget; the "properly constrained" line is the verdict).

## Composition argument (informal)

Determinism composes over an acyclic gadget call graph. If every leaf gadget
`g` is properly constrained — its non-input wires are a function of its input
wires — and the whole circuit is the composition of these gadgets wired so that
each gadget instance's inputs are either circuit public/private inputs or
outputs of upstream gadget instances (no cycles), then the whole circuit's
non-input wires are a function of the circuit inputs: substitute each gadget's
unique-extension function along a topological order. Hence the whole circuit is
properly constrained.

The ladder/chain gadgets (`scalar-mul-step`, `scalar-mul-two-step`,
`quad-path-round`, `quad-path-two-round`, `decaf-edwards-*`) are the reusable
rungs; their single-step determinism plus acyclic chaining is what lets the wide
deployed ladders inherit determinism without a monolithic whole-circuit Picus
run (which does not scale — see below). This mirrors the Lean discipline of
proving one step lemma and composing, rather than unrolling.

## Gaps found (honest)

1. **The whole-circuit Picus run does not verify.** The monolithic run is
   recorded in `.generated/whole-picus/run-summary.txt` as
   `consolidate2x1 143` — exit 143 = SIGTERM (128+15), i.e. it was killed
   (timeout/resource), and `.generated/whole-picus/consolidate2x1.picus.txt`
   contains a Racket encoder stack trace, not a verdict. So the composition
   above is an **argument, not a Picus-checked fact**. This is the core reason a
   composition note is needed at all; it is also the core caveat.

2. **The interface/wiring assumption is not itself Picus-checked here.**
   ~~That wiring fact is currently supplied by the Lean deployed bridges and the
   coverage partition, not by an independent graph artifact.~~ **MECHANIZED
   2026-07-06.** `shieldd-constraint-coverage --wiring-cert-out` now derives the
   instance-wiring graph from the deployed coverage partition and CHECKS it,
   fail-closed:

   - **Nodes** = the constraint-bearing deployed instances (49 for
     consolidate2x1). Their row ranges partition the circuit (the existing
     coverage gate), so each row maps to exactly one instance.
   - **Producer** of a wire = the instance whose row range contains that wire's
     algebraic def row (its first `O`-position in an `L*R=O` constraint), the
     same def-site rule the slice IR uses. Declared circuit inputs are roots,
     never producers.
   - **Edge** producer→consumer for every wire so defined and used across a seam.
   - **Check (1): single producer** — errors if any wire is `O`-defined inside
     two instances.
   - **Check (2): acyclicity** — a Kahn topological sort of the producer→consumer
     graph; a back-edge (a later instance defining a wire an earlier one already
     consumed) is a cycle and errors. The emitted `topological_order` is the
     acyclicity witness.

   For consolidate2x1: **49 nodes, 20 edges, acyclic**; roots split into 193
   declared circuit inputs, 13 635 *internal-witness* wires (touched by exactly
   one instance — uniqueness is that instance's per-leaf Picus verdict), and
   just **6 *shared-witness* wires**. The 6 are not a gap: they are the decaf
   point-coordinate seams — the `(x,y)` of a group element computed by an
   rvk/net-balance ladder and consumed by the immediately following
   `decaf.assert_equivalent`/`compress_to_field` (segments 13→14, 31→32,
   52→53→54). They carry no single `O`-def because the coordinates are jointly
   determined by the ladder accumulation and the equivalence constraint; that
   exact seam is what the rvk/dtk/net-balance Lean deployed bridges reason over.
   The certificate enumerates all 6 (`shared_witness_wires`) so the Picus/Lean
   boundary is auditable, not silent.

   What this mechanizes: the composition's structural premise — acyclic wiring,
   one producer per algebraically-defined wire — is now a re-checkable artifact
   with a pinned sha256. What it does not do: re-prove per-wire uniqueness
   (Picus's job for internal witnesses) or the cross-seam semantics (the Lean
   bridges' job for the 6 shared witnesses). The three checks are complementary.

3. **Artifacts fingerprint the verdict text, not the constraint system.**
   ~~Many leaves share the identical verdict-text sha256 because the artifact
   stores only the two-line message.~~ **MECHANIZED 2026-07-06.**
   `scripts/circuit-constraint-check.sh` now appends a `picus-input-fingerprint`
   footer to every `gadget-*.picus.txt` recording `sr1cs_sha256`,
   `precondition_sha256`, `verdict`, and `picus_exit`. The artifact hash now
   moves iff the input `.sr1cs`, the precondition, or the verdict moves, so each
   leaf artifact independently pins *which* R1CS Picus checked. (The footer is
   kept free of the token "underconstrained" so the script's post-loop safety
   re-scan is unaffected.)

4. **Leaf→segment mapping is not mechanized in this note.** Which of the 24
   leaves appears in which consolidate2x1 deployed segment is asserted by the
   Lean bridges (49/49), not derived here. This note treats the gadget set as
   the leaf frontier; a per-segment gadget-usage table is future work.

5. **Determinism ≠ semantic correctness.** Picus `properly constrained` says the
   output is unique, not that it equals the intended function. Semantic
   correctness for consolidate2x1 comes from the Lean deployed bridges; Picus
   only rules out witness slack. The two are complementary, not redundant.

## Relationship to the Lean stack

The row-level soundness authority for consolidate2x1 is the Lean deployed-bridge
capstone (49/49 segments composed). Picus determinism is a cross-check at the
gadget frontier: it catches under-constraint that a semantic bridge, reasoning
over an assumed-functional gadget, could otherwise miss. Promoting this note past
`draft` should (a) replace the killed whole-circuit run with the machine-checked
composition of gaps 1–3, or (b) explicitly scope the Picus contribution to
"per-leaf determinism, composed by argument" and cite it as supporting, not
primary, evidence.
