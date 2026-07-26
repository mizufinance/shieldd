import Ipp.Extracted.ArkworksScalarMulGlvDecompTails

/-! The final decomposition tail after the four-to-six-limb widening bind. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompFinishAfter

open Aeneas Aeneas.Std Result

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def finish (reducedWide : WideArray) (beta : ScalarArray) (b1 : WideArray) :
    Result Output := do
  let positive ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 reducedWide b1
  let k1Wide ← if positive then
    ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 reducedWide b1
  else ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1 reducedWide
  .ok (Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput positive
    (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide) beta)

theorem wide_eq_finish (reduced beta : ScalarArray) (b1 : WideArray) :
    Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.finishWide reduced beta b1 =
      finish (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced) beta b1 := by
  unfold Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.finishWide finish
  exact Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.bind_widen4 reduced
    (fun reducedWide => do
      let positive ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 reducedWide b1
      let k1Wide ← if positive then
        ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 reducedWide b1
      else ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1 reducedWide
      .ok (Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput positive
        (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide) beta))

#print axioms wide_eq_finish

end Ipp.Extracted.ArkworksScalarMul.GlvDecompFinishAfter
