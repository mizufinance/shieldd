import Ipp.Extracted.ArkworksScalarMulGlvIncrementCore

/-! Numeric value selected by the normalized half-up branch. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedValue

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

private theorem quotient_increment_bound (numerator : WideArray) (q remainder : Nat)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (heq : wideToNat numerator = q * r + remainder) :
    q + 1 < wordBase ^ 6 := by
  have hr2 : 2 ≤ r := by norm_num [r, Ipp.Bls12377.scalarModulus]
  have hqprod : q ≤ q * r := Nat.le_mul_of_pos_right q (by omega)
  have hq : q < 2 ^ 384 := by omega
  rw [show wordBase ^ 6 = 2 ^ 384 by
    rw [show wordBase = 2 ^ 64 by rfl, ← pow_mul]]
  by_cases hzero : q = 0
  · omega
  have hqpos : 1 ≤ q := by omega
  have hsucc : q + 1 ≤ q * r := by nlinarith
  omega

theorem normalized_value (numerator rawQuotient output : WideArray)
    (remainder roundValue q : Nat)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (hq : wideToNat rawQuotient = q)
    (heq : wideToNat numerator = q * r + remainder)
    (hexec : (if decide (r < roundValue) then
        ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
      else .ok rawQuotient) = .ok output) :
    wideToNat output = if r < roundValue then q + 1 else q := by
  by_cases hround : r < roundValue
  · simp only [decide_eq_true hround, if_true, if_pos hround] at hexec ⊢
    have hinc :=
      Ipp.Extracted.ArkworksScalarMul.GlvIncrementCore.extracted_increment_spec
        rawQuotient output
        (by
          change wideToNat rawQuotient + 1 < wordBase ^ 6
          rw [hq]
          exact quotient_increment_bound numerator q remainder hnumerator heq)
        hexec
    have hincNat : wideToNat output = wideToNat rawQuotient + 1 := by
      exact hinc
    rw [hincNat, hq]
  · simp only [decide_eq_false hround, if_neg hround] at hexec ⊢
    cases hexec
    exact hq

#print axioms normalized_value

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedValue
