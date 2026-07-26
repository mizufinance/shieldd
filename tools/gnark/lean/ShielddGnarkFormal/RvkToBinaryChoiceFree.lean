import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.RvkToBinary

/-!
Choice-free deployed `to_binary` bridge for normalized semantic providers.
The legacy bridge remains stable so existing provider artifacts retain their
dependency hashes.
-/

namespace Shieldd.GnarkFormal.RvkToBinaryChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.RvkBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafRvk.Order) := ‹_›

theorem isBit_of_booleanity {b : F} (h : b * (1 - b) = 0) :
    is_bit b := by
  rcases ChoiceFreeZMod.eq_zero_or_eq_zero_of_mul_eq_zero Order h with h0 | h1
  · exact Or.inl h0
  · exact Or.inr (by linear_combination -h1)

theorem isVectorBinary_of_booleanity {d : ℕ} (bits : List.Vector F d)
    (hbit : ∀ (i : ℕ) (h : i < d), bits[i] * (1 - bits[i]) = 0) :
    is_vector_binary bits := by
  intro a ha
  rcases List.mem_iff_getElem.mp (by simpa using ha) with ⟨i, hi, rfl⟩
  have hlt : i < d := by simpa using hi
  exact isBit_of_booleanity (by
    have := hbit i hlt
    simpa using this)

theorem to_binary_of_deployed {d : ℕ} (a : F) (bits : List.Vector F d)
    (hbit : ∀ (i : ℕ) (h : i < d), bits[i] * (1 - bits[i]) = 0)
    (hrec : recover_binary_zmod' bits = a) :
    GatesDef.to_binary a d bits := by
  refine ⟨hrec, ?_⟩
  exact isVectorBinary_of_booleanity bits hbit

end Shieldd.GnarkFormal.RvkToBinaryChoiceFree
