import Ipp.Extracted.ArkworksScalarMulGlvRoundedNormalize

/-! Discharge the doubling bound before normalizing the rounding branch. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedNormalizeBound

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

private theorem modulus_double_bound : 2 * r < wordBase ^ 4 := by
  norm_num [r, Ipp.Bls12377.scalarModulus, wordBase]

theorem normalize_of_remainder (rawQuotient output : WideArray)
    (remainder twiceRemainder : ScalarArray) (remainderValue : Nat)
    (hremainderValue : remainderValue =
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder)
    (hremainder : remainderValue < r)
    (hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
      remainder false = .ok twiceRemainder)
    (htail : (do
      let round ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
        ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS
      if round then ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
      else .ok rawQuotient) = .ok output) :
    (if decide (r < 2 *
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder +
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false) then
        ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
      else .ok rawQuotient) = .ok output := by
  have hrbound : 2 *
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder +
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false <
      wordBase ^ 4 := by
    have hmod := modulus_double_bound
    change 2 * Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat
      remainder + 0 < wordBase ^ 4
    rw [← hremainderValue]
    omega
  exact Ipp.Extracted.ArkworksScalarMul.GlvRoundedNormalize.normalize
    rawQuotient output remainder twiceRemainder hrbound hshift htail

#print axioms normalize_of_remainder

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedNormalizeBound
