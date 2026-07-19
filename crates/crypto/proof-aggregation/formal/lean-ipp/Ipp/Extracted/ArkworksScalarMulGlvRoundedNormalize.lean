import Ipp.Extracted.ArkworksScalarMulGlvRoundedCompare

/-! Normalization of the extracted rounding branch to its Boolean test. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev scalarValue :=
  Ipp.Extracted.ArkworksScalarMul.GlvRoundedCompare.scalarValue

private theorem continue_after_ok {alpha beta : Type} {action : Result alpha}
    {value : alpha} {next : alpha → Result beta} {result : Result beta}
    (haction : action = .ok value) (hrun : action >>= next = result) :
    next value = result := by
  subst action
  exact hrun

theorem normalize (rawQuotient output : WideArray)
    (remainder twiceRemainder : ScalarArray)
    (hbound : 2 * scalarValue remainder +
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false < wordBase ^ 4)
    (hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
      remainder false = .ok twiceRemainder)
    (htail : (do
      let round ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
        ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS
      if round then ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
      else .ok rawQuotient) = .ok output) :
    (if decide (r < 2 * scalarValue remainder +
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false) then
        ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
      else .ok rawQuotient) = .ok output := by
  have hgt := Ipp.Extracted.ArkworksScalarMul.GlvRoundedCompare.gt_round
    remainder twiceRemainder hbound hshift
  let next : Bool → Result WideArray := fun round =>
    if round then ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
    else .ok rawQuotient
  have htailBind : (ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
      ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS >>= next) = .ok output :=
    htail
  exact continue_after_ok
    (action := ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
      ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS)
    (value := decide (r < 2 * scalarValue remainder +
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false))
    (next := next) (result := .ok output) hgt htailBind

#print axioms normalize

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedNormalize
