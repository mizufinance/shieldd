import Ipp.Extracted.ArkworksScalarMulGlvRoundedQuotient
import Ipp.Extracted.ArkworksScalarMulGlvRoundedNormalizeBound
import Ipp.Extracted.ArkworksScalarMulGlvRoundedValue
import Ipp.Extracted.ArkworksScalarMulGlvRoundedRewrite

/-! Rounded numeric result from the extracted loop and tail witnesses. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedWitness

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem witness_value (numerator rawQuotient quotient : WideArray)
    (remainder twiceRemainder : ScalarArray)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (hloop : ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop
      numerator (MacCampaign.Array.replicate 6#usize 0#u64)
      (MacCampaign.Array.replicate 4#usize 0#u64) 384#usize =
        .ok (rawQuotient, remainder))
    (hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
      remainder false = .ok twiceRemainder)
    (htail : (do
      let round ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
        ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS
      if round then ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
      else .ok rawQuotient) = .ok quotient) :
    ∃ q remainderValue,
      wideToNat numerator = q * r + remainderValue ∧
      remainderValue < r ∧
      wideToNat quotient = if r < 2 * remainderValue then q + 1 else q := by
  rcases Ipp.Extracted.ArkworksScalarMul.GlvRoundedQuotient.loop_numbers
      numerator rawQuotient remainder hnumerator hloop with
    ⟨q, remainderValue, hq, heq, hremainderValue, hremainder⟩
  have hnormalized :=
    Ipp.Extracted.ArkworksScalarMul.GlvRoundedNormalizeBound.normalize_of_remainder
      rawQuotient quotient remainder twiceRemainder remainderValue
      hremainderValue hremainder hshift htail
  have hvalue :=
    Ipp.Extracted.ArkworksScalarMul.GlvRoundedValue.normalized_value
      numerator rawQuotient quotient remainderValue
      (2 * Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder +
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false)
      q hnumerator hq heq hnormalized
  refine ⟨q, remainderValue, heq, hremainder, ?_⟩
  exact Ipp.Extracted.ArkworksScalarMul.GlvRoundedRewrite.value quotient
    remainder q remainderValue hremainderValue hvalue

#print axioms witness_value

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedWitness
