# Decaf377 gadget FV — remaining work

Companion to `codex-handoff-decaf-gadget-fv.md` (read its "Proof gotchas"
before writing Lean). P1–P2 are done. P3 (RVK/DTK composition) is implemented
and integrated; items below are what is left, in order.

Build facts you must know:

- `lake build` with no target is a **no-op** in `tools/gnark/lean` (no
  `@[default_target]`). Always build an explicit target, e.g.
  `lake build ShielddGnarkFormal`.
- `lakefile.lean` already sets `--tstack=1000000`; direct checks use
  `lake env lean --tstack=1000000 <file>`.
- Hard rule (now in AGENTS.md): ≤60 gates per Lean definition/lemma. Slice
  extracted constraint chains into segment predicates ending in an opaque
  continuation; never walk hundreds of gates in one tactic block (elaboration
  is quadratic — a monolithic DTK walk ran 2h without finishing; the
  segmented version compiles in minutes). Kill any single-file compile that
  exceeds ~10 minutes and restructure.

## 1. Verify the P3 integration end-to-end

State: `RvkBridge.lean` compiles clean. `DtkBridge.lean` was restructured into
`dtkSeg0..dtkSeg14` + pass lemmas + segmentwise `dtkCircuitK_semantic`;
`Decaf377Assumptions` RVK/DTK predicates now bind the extracted circuits;
`Consolidate2x1.lean` threads on-curve facts (ak from the DTK constraint,
divGen from the compress constraint) into the soundness calls.

Strategy: `lake build ShielddGnarkFormal`; fix residual errors locally (most
likely spots: the `have h0 : dtkSeg0 (… nested segments …) := h` defeq cast,
and instance arguments on the new wrapper theorems). Then restamp both
artifacts and run `bash scripts/check-lean-circuit-fv.sh` to green.
Inventory (`consolidate2x1-decaf-fv-inventory.txt`) is already updated —
verify its claims match what actually compiled before stamping.

## 2. DTK ivk provenance (`decaf.diversified_transmission_key.ivk_provenance`)

The DTK theorem proves `out = [ivkReduced]divGen` but the spec does not pin
`ivkReduced = Poseidon2(domain, nk, compress(ak)) mod r`.

Strategy: strengthen the spec, then upgrade only `dtkSeg0`'s pass lemma from
pass-through to value-tracking: `canonicalFqBitsGadget_canonical` already
yields the bit-decomposition semantics, `Poseidon2Bridge.perm2_uncps` yields
the permutation value, and the IvkModR gates (50–60) give the exact Euclidean
decomposition with quotient ∈ {0..4}. The rung segments stay pass-through.
Update the `dtk` spec function and the `Consolidate2x1` spec field; the
soundness call sites should not change shape.

## 3. P4 — EncodeToCurve semantics

`EncodeToCurveBridge.Relation` is still a tautology bridge and
`encodeToCurveModel` a placeholder.

Strategy: state the decaf377 map-to-curve (Elligator-style) as a Lean spec and
prove the extracted relation implies it. Reuse the non-residue ζ kernel facts
and sqrt-ratio case analysis from `CompressToFieldBridge.lean` — the gadget's
constraints are the same shape (wasSquare/sqrtRatio witnesses). Mind the
≤60-gate rule when walking the extracted relation.

## 4. P5 — Net balance commitment composition

`NetBalanceCommitmentCircuit` is still definitional (`Circuit := Spec`).

Strategy: mirror the RVK bridge exactly: extract a composed gadget mirror
(asset Poseidon4 → EncodeToCurve → ScalarMulLE128 for amounts /
ScalarMulLE251 for blinding → neg/add chain), then per-gadget pass/semantic
lemmas. Value/blinding generator literals need on-curve kernel facts
(`decide +kernel` on the ℕ curve equation in a Fact-free zone — copy
`RvkBridge.gen_onCurve_nat`). Depends on P4 for the encode-to-curve leg.

## 5. P6 — On-curve audit of AssertEquivalent call sites

`AssertEquivalentSpec` is cross-ratio equality, which only means decaf
equality for on-curve operands.

Strategy: enumerate the `decaf377_assertEquivalent_sound` call sites in
`Consolidate2x1.lean` (rk, transmission, divGen-shared, transmission-shared,
balance) and check each operand now has an on-curve fact available
(`rvk_circuit_onCurve`, `dtk_circuit_onCurve`,
`compress_circuit_onCurve`, P5 closure). Where one is missing, either thread
it or document why cross-ratio suffices at that boundary. Strengthen the
`SoundSpec` fields to carry the on-curve conjuncts where it matters.

## 6. P7 — Closure

When 2–5 are done: flip `closure_claim` in the inventory, restamp artifacts,
gate green, and update `docs/soundness/constraint-system-assurance.md` and
`soundness-handoff.md` to state the decaf boundary is fully
constraint-derived (no definitional models left).
