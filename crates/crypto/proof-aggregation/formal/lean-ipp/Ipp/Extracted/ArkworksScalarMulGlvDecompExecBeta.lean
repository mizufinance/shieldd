import Ipp.Extracted.ArkworksScalarMulGlvDecompTails

/-! Execution witness for the basis-product bind in the decomposition tail. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompExecBeta

open Aeneas Aeneas.Std Result

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def BetaRun (reduced : ScalarArray) (betaWide : WideArray) (output : Output) : Prop :=
  ∃ b1,
    ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2
      (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide)
      ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE = .ok b1 ∧
    Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.finish reduced
      (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide) b1 = .ok output

private theorem bind_eq_ok {alpha beta : Type} (action : Result alpha)
    (next : alpha → Result beta) (output : beta)
    (h : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

theorem beta_run (reduced : ScalarArray) (betaWide : WideArray) (output : Output)
    (hexec : Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.beta reduced betaWide =
      .ok output) : BetaRun reduced betaWide output := by
  unfold Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.beta at hexec
  rcases bind_eq_ok _ _ _ hexec with ⟨b1, hb1, hfinish⟩
  exact ⟨b1, hb1, hfinish⟩

#print axioms BetaRun
#print axioms beta_run

end Ipp.Extracted.ArkworksScalarMul.GlvDecompExecBeta
