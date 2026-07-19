import Ipp.Extracted.ArkworksScalarMulGlvRoundedExec
import Ipp.Extracted.ArkworksScalarMulGlvArithmetic

/-! Comparison bit produced from the doubled restoring-division remainder. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedCompare

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev scalarValue (value : ScalarArray) : Nat :=
  Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat value

theorem gt_round (remainder twiceRemainder : ScalarArray)
    (hbound : 2 * scalarValue remainder +
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false < wordBase ^ 4)
    (hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
      remainder false = .ok twiceRemainder) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
      ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS =
      .ok (decide (r < 2 * scalarValue remainder +
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false)) := by
  have htwice := Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit_spec
    remainder twiceRemainder false hbound hshift
  rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
      ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS =
      ark_ip_proofs.s3_07_arkworks_fr_spike.gt twiceRemainder
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS by rfl]
  rw [Ipp.Extracted.ArkworksFr.extracted_gt_spec,
    Ipp.Extracted.ArkworksFr.modulus_limbsToNat]
  change Result.ok (decide (r <
    Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat twiceRemainder)) = _
  rw [htwice]

#print axioms gt_round

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedCompare
