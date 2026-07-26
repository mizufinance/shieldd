import Ipp.Extracted.ArkworksScalarMulGlvDecompExecPrefix
import Ipp.Extracted.ArkworksScalarMulGlvDecompExecBeta
import Ipp.Extracted.ArkworksScalarMulGlvDecompExecFinish
import Ipp.Extracted.ArkworksScalarMulGlvReduce
import Ipp.Extracted.ArkworksScalarMulGlvMul

/-! Composed execution witness for the extracted GLV scalar decomposition. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompExec

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def Run (input : ScalarArray) (output : Output) : Prop :=
  ∃ reduced numerator betaWide b1 k1Wide positive,
    ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr input = .ok reduced ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 reduced
      ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A = .ok numerator ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr numerator =
      .ok betaWide ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2
      (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide)
      ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE = .ok b1 ∧
    positive = decide (wideToNat b1 < scalarToNat reduced) ∧
    (if positive then
        ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced) b1
      else
        ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced)) =
      .ok k1Wide ∧
    output = Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput positive
      (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide)
      (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide)

theorem model_run (input : ScalarArray) (output : Output)
    (hexec : Ipp.Extracted.ArkworksScalarMul.GlvDecompModel.decomposition input =
      .ok output) : Run input output := by
  rcases Ipp.Extracted.ArkworksScalarMul.GlvDecompExecPrefix.model_prefix
      input output hexec with
    ⟨reduced, numerator, betaWide, hreduce, hnumerator, hrounded, hbeta⟩
  rcases Ipp.Extracted.ArkworksScalarMul.GlvDecompExecBeta.beta_run
      reduced betaWide output hbeta with ⟨b1, hb1, hfinish⟩
  rcases Ipp.Extracted.ArkworksScalarMul.GlvDecompExecFinish.finish_run
      reduced (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide)
      b1 output hfinish with ⟨k1Wide, positive, hpositive, hk1, houtput⟩
  exact ⟨reduced, numerator, betaWide, b1, k1Wide, positive,
    hreduce, hnumerator, hrounded, hb1, hpositive, hk1, houtput⟩

theorem extracted_run (input : ScalarArray) (output : Output)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition
      input = .ok output) : Run input output := by
  apply model_run input output
  rw [← Ipp.Extracted.ArkworksScalarMul.GlvDecompModel.extracted_eq_model]
  exact hexec

#print axioms Run
#print axioms model_run
#print axioms extracted_run

end Ipp.Extracted.ArkworksScalarMul.GlvDecompExec
