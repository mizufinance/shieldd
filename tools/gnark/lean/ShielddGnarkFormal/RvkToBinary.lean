import ShielddGnarkFormal.RvkBridge

/-! # Deployed `to_binary` bridge for rvk

`gnark`'s native `ToBinary(randomizer, 251)` hint is, in the extracted circuit, the
opaque predicate `Gates.to_binary randomizer 251 bits`. In the **deployed** R1CS it
is expanded into actual rows, which the constraint-coverage row map classifies as
the `to_binary` bucket:

* 251 booleanity rows `bᵢ·(1-bᵢ) = 0` (one per bit wire 10571..10821);
* 1 geometric recomposition row `Σ 2ⁱ·bᵢ = randomizer` (into wire 97).

This module discharges those rows to the primitive `Gates.to_binary`, which unfolds
to `recover_binary_zmod' bits = a ∧ is_vector_binary bits`. The recomposition row is
exactly the first conjunct (`recover_binary_zmod'` is the little-endian `Σ 2ⁱ·bᵢ`),
and the per-bit booleanity rows give the second. The generated booleanity /
recomposition certificates (each one `linear_combination` over its exact deployed
row) feed the two hypotheses here.

The bridge is generic in the bit width `d`: it consumes a per-index booleanity fact
and the recomposition equality and never unrolls the 251 bits. -/

namespace Shieldd.GnarkFormal.RvkToBinary

open Shieldd.GnarkFormal.RvkBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafRvk.Order) := ‹_›

/-- A field element satisfying its deployed booleanity row `b·(1-b)=0` is a bit.
Uses that `F` is a field (prime modulus ⇒ no zero divisors). -/
theorem isBit_of_booleanity {b : F} (h : b * (1 - b) = 0) :
    is_bit b := by
  rcases mul_eq_zero.mp h with h0 | h1
  · exact Or.inl h0
  · exact Or.inr (by linear_combination -h1)

/-- The whole bit vector is binary once every index satisfies its booleanity row.
Recurses on the vector, never unrolling a fixed width. -/
theorem isVectorBinary_of_booleanity {d : ℕ} (bits : List.Vector F d)
    (hbit : ∀ (i : ℕ) (h : i < d), bits[i] * (1 - bits[i]) = 0) :
    is_vector_binary bits := by
  intro a ha
  rcases List.mem_iff_getElem.mp (by simpa using ha) with ⟨i, hi, rfl⟩
  have hlt : i < d := by simpa using hi
  exact isBit_of_booleanity (by
    have := hbit i hlt
    simpa using this)

/-- The deployed `to_binary` bridge: the booleanity rows (per-index) and the
recomposition equality together discharge the extracted `Gates.to_binary`
primitive. This is the seam the generated bitness + recomposition certificates
plug into. -/
theorem to_binary_of_deployed {d : ℕ} (a : F) (bits : List.Vector F d)
    (hbit : ∀ (i : ℕ) (h : i < d), bits[i] * (1 - bits[i]) = 0)
    (hrec : recover_binary_zmod' bits = a) :
    GatesDef.to_binary a d bits := by
  refine ⟨hrec, ?_⟩
  exact isVectorBinary_of_booleanity bits hbit

end Shieldd.GnarkFormal.RvkToBinary
