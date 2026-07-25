import Ipp.Bls12377Pairing
import Ipp.Extracted.ArkworksMultiPairing

/-!
S3-41 bridge from S3-40's generated per-pair value to the concrete GT adapter.
-/

namespace Ipp.Extracted.ArkworksMultiPairingGt

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic
open Ipp.Extracted.ArkworksFinalExpHard
open Ipp.Extracted.ArkworksMultiPairing

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

/-- The exponent named by S3-40 is the canonical adapter's factor-three exponent. -/
theorem arkworksPairingExponent_eq_executedPairingExponent :
    E = executedPairingExponent := by
  apply Nat.mul_right_cancel arithmeticFacts.scalarPrime.pos
  rw [executedPairingExponent_mul_scalarModulus]
  have hq1 : 1 ≤ baseModulus := arithmeticFacts.basePrime.one_le
  have hqpos : 0 < baseModulus := arithmeticFacts.basePrime.pos
  have h6 : 1 ≤ baseModulus ^ 6 := pow_pos hqpos 6
  have h42 : baseModulus ^ 2 ≤ baseModulus ^ 4 :=
    pow_le_pow_right' hq1 (by omega)
  have h12 : 1 ≤ baseModulus ^ 12 := pow_pos hqpos 12
  have hfactor :
      (baseModulus ^ 6 - 1) * (baseModulus ^ 2 + 1) *
          (baseModulus ^ 4 - baseModulus ^ 2 + 1) =
        baseModulus ^ 12 - 1 := by
    apply Nat.cast_injective (R := ℤ)
    push_cast [Nat.cast_sub h6, Nat.cast_sub h42, Nat.cast_sub h12]
    ring
  calc
    E * scalarModulus =
        ((baseModulus ^ 6 - 1) * (baseModulus ^ 2 + 1)) *
          (E_chain * scalarModulus) := by
            simp only [E, Ipp.Extracted.ArkworksFinalExpEasy.q]
            ac_rfl
    _ = ((baseModulus ^ 6 - 1) * (baseModulus ^ 2 + 1)) *
          (3 * (baseModulus ^ 4 - baseModulus ^ 2 + 1)) := by
            rw [E_chain_mul_scalarModulus]
    _ = 3 * (baseModulus ^ 12 - 1) := by
            rw [← hfactor]
            ac_rfl

/-- One successful S3-40 pair is the value packaged by the concrete GT adapter. -/
theorem pairingModel_eq_gtValue (pair : MillerPair)
    (hnz : Ipp.Extracted.ArkworksMultiPairing.pairFold pair ≠ 0) :
    pairingModel pair =
      gtValue (successfulFinalExponentGt
        (Ipp.Extracted.ArkworksMultiPairing.pairFold pair) hnz) := by
  rw [gtValue_successfulFinalExponentGt]
  unfold pairingModel
  rw [arkworksPairingExponent_eq_executedPairingExponent]

#print axioms arkworksPairingExponent_eq_executedPairingExponent
#print axioms pairingModel_eq_gtValue

end Ipp.Extracted.ArkworksMultiPairingGt
