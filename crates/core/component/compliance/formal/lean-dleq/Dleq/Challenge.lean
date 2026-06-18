/-
250-bit challenge truncation embedding (obligation DLEQ-CHALLENGE-TRUNCATION).

`crypto.rs`/`orbis-rs` derive the Fiat-Shamir challenge as `trunc₂₅₀ ∘ Poseidon`:
the Poseidon output is a (random-oracle) uniform element of `Fq`, and
`fq_to_challenge_scalar` keeps its low `keepBits = 250` bits, yielding a value in
`Fin (2 ^ keepBits)` used as a scalar in `ZMod q`. The cast `Fin (2^250) → ZMod q`
is injective because `2^250 < q` (`pow_keepBits_lt_q`): distinct truncated
challenges stay distinct in the field, so their difference is nonzero and the
special-soundness extractor's `(e c₁ − e c₂)⁻¹` is well defined.

Modeling the challenge space as `Fin (2^keepBits)` (not the full field `ZMod q`)
makes VCVio's forking bound `1 / Fintype.card Chal` equal `1 / 2^250`.

NOT a uniform draw — the idealization gap is ledgered, not hidden.
`trunc₂₅₀` of a uniform `Fq` element is *not* exactly uniform on `Fin (2^250)`:
with `p_Fq ≈ 4.667 · 2^250`, each of the `2^250` values is hit by either 4 or 5
of the `Fq` residues, so its probability lies in `[4/p_Fq, 5/p_Fq]` rather than
exactly `1/2^250`. VCVio's forking lemma assumes a uniform challenge, so the
`1/2^250` bound here is an idealization; the true per-challenge mass is at most
`⌈p_Fq/2^250⌉/p_Fq ≈ 1.07/2^250`, i.e. the soundness error is at most ~1.07×
larger (≈ 2^-249.9, a ≤0.1-bit loss — negligible). This residual is recorded as
`CC-ASSUME-CHALLENGE-TRUNCATION-NEGL`. The implementation must NOT be "fixed" to a
wide reduction: upstream Orbis (`orbis-rs/.../decaf377/pre.rs`) uses this exact
truncation and shieldd must stay challenge-compatible with it.
-/
import Dleq.Group

namespace Dleq

/-- The 250-bit truncated Fiat-Shamir challenge space. `Fintype.card Chal =
2 ^ keepBits = 2^250`, the divisor in the forking bound. -/
abbrev Chal := Fin (2 ^ keepBits)

/-- Embed a truncated challenge into the decaf377 scalar field. -/
def emb : Chal → ZMod q := fun c => (c.val : ZMod q)

/-- Each challenge value is below the field modulus (`< 2^250 < q`). -/
theorem val_lt_q (c : Chal) : (c.val : ℕ) < q :=
  lt_trans c.isLt pow_keepBits_lt_q

/-- The truncation embedding is injective: distinct 250-bit challenges remain
distinct scalars, since both lie in `[0, q)` where the `ℕ → ZMod q` cast is a
section. This is the keystone the extractor consumes via `sub_ne_zero`. -/
theorem emb_injective : Function.Injective emb := by
  intro c₁ c₂ h
  apply Fin.ext
  have h₁ := ZMod.val_natCast_of_lt (val_lt_q c₁)
  have h₂ := ZMod.val_natCast_of_lt (val_lt_q c₂)
  calc (c₁.val : ℕ) = (emb c₁).val := h₁.symm
    _ = (emb c₂).val := by rw [h]
    _ = c₂.val := h₂

end Dleq
