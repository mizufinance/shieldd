/-
250-bit challenge truncation embedding (obligation DLEQ-CHALLENGE-TRUNCATION).

`crypto.rs` derives the Fiat-Shamir challenge as `trunc₂₅₀ ∘ Poseidon`, i.e. a
uniform draw from the `2^keepBits`-element space `Fin (2 ^ keepBits)`, then uses
it as a scalar in `ZMod q`. The cast `Fin (2^250) → ZMod q` is injective because
`2^250 < q` (`pow_keepBits_lt_q`): distinct truncated challenges stay distinct in
the field, so their difference is nonzero and the special-soundness extractor's
`(e c₁ − e c₂)⁻¹` is well defined.

Modeling the challenge space as `Fin (2^keepBits)` (not the full field `ZMod q`)
is what makes VCVio's forking bound `1 / Fintype.card Chal` equal `1 / 2^250`,
matching the protocol's actual soundness error rather than the looser `1 / q`.
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
