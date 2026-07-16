# NB-1 conservation net-balance slice spec (frontier, Wave 2 Phase 3)

Governs the `gen_nb_slice.py` redesign for segment
`decaf.conservation_net_balance_commitment` (note_reshape2x1 seg 46 post-batch,
2,193 rows, manifest bridge `Shieldd.GnarkFormal.
ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_sound`).
Go ground truth: `computeConservationNetBalanceCommitment`
(tools/gnark/internal/circuits/transfer_circuit.go). Emission order there is
the mining order here.

## Relation shape (replaces the 3 value ladders + Edwards sum)

Mined blocks, in emission order:

1. **Amount range blocks ×3** (in0, in1, out0): each is gnark `ToBinary(amount,
   128)` = 128 booleanity rows `b·(1−b)=0` + 1 recomposition row
   `amount = Σ b_i·2^i`. Mine fail-closed: exactly 3 runs of 128 booleanity +
   recomposition, amount wires identified from `wire_roles`. These rows ARE
   ZK-ASSUME-AMOUNT-RANGE now (the ladders that used to enforce it are gone) —
   the emitted spec must expose `amount_i < 2^128` as named conjuncts, not
   fold them away.
2. **Conservation row ×1**: single linear row asserting
   `in0 + in1 − out0 = 0`. Expose as a named conjunct.
3. **Blinding ladder**: unchanged rvk-shape fixed-base 251-bit ladder over
   `G_blinding` — reuse the existing blinding-ladder mining
   (`gen_nb_slice.py` "Blinding fixed-base ladder (rvk shape)" section:
   bits[0]-seed folding, accumulator stride pairs) verbatim; only its row
   offset moves.
4. **Output**: commitment out-wires are the ladder result directly (no final
   Edwards add of a value sum — that add is deleted). The old
   `curve.Add(sum, blindingPoint)` glue rows do not exist; do not mine for
   them.

## Emitted Lean spec (deployedSpec46 content)

`∃ bits…` form, conjuncts in this order (StructuredLC discipline: per-rung
linear_combination for the ladder, never wide accumulators):
booleanity(3×128) ∧ recompose(3) ∧ conservation ∧ ladderTrace(blinding) ∧
out = ladderResult. Range facts surface as
`amountᵢ = Σ bits ∧ bits boolean` — the bridge derives `amountᵢ < 2^128`.

## Bridge (new file, hand-authored, Layer-3 Fact-free)

`ConservationNetBalanceCommitmentBridge.lean` proves: relation ⟹
`commitment = blinding·G_b ∧ in0 + in1 = out0 ∧ ∀i amountᵢ < 2^128`.
Statement-side value is unchanged from the old gadget on satisfying
witnesses: natively `Σ(in−out)·G_v + blinding·G_b = blinding·G_b` exactly when
conservation holds, so downstream consumers (seg 47 assert-equivalent against
claimed.balance_commitment, seg 48 compress, statement append) keep their
existing specs modulo renumbering. Soundness note for the record: the new
relation is STRONGER than the old one (explicit in-circuit conservation vs.
homomorphic cancellation).

## Traps

- The 3 booleanity runs and the ladder's own `ToBinary(blinding, 251)`
  booleanity run look alike — disambiguate by run length (128 vs 251) and by
  the recomposition row's target wire role, not by position alone.
- note_reshape8x1 has 9 amount blocks (8 in + 1 out) — parameterize block
  count from the manifest INSTANCES/args, don't hard-code 3. (8x1 has no Lean
  stack today; the generator just must not crash on it if pointed there.)
- The old `decaf.net_balance_commitment@72fe…` class is GONE from the
  manifest; delete its generator path and Specs references outright, no
  aliases (prototype contract policy).
