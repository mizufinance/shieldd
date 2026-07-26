import Ipp.Extracted.ArkworksScalarMulGlvDecompModel

/-! Execution witnesses for the reduction, product, and rounded-division prefix. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompExecPrefix

open Aeneas Aeneas.Std Result

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def PrefixRun (input : ScalarArray) (output : Output) : Prop :=
  ∃ reduced numerator betaWide,
    ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr input = .ok reduced ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 reduced
      ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A = .ok numerator ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr numerator =
      .ok betaWide ∧
    Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.beta reduced betaWide =
      .ok output

private theorem bind_eq_ok {alpha beta : Type} (action : Result alpha)
    (next : alpha → Result beta) (output : beta)
    (h : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

theorem model_prefix (input : ScalarArray) (output : Output)
    (hexec : Ipp.Extracted.ArkworksScalarMul.GlvDecompModel.decomposition input =
      .ok output) : PrefixRun input output := by
  unfold Ipp.Extracted.ArkworksScalarMul.GlvDecompModel.decomposition at hexec
  rcases bind_eq_ok _ _ _ hexec with ⟨reduced, hreduce, hexec⟩
  rcases bind_eq_ok _ _ _ hexec with ⟨numerator, hnumerator, hexec⟩
  rcases bind_eq_ok _ _ _ hexec with ⟨betaWide, hrounded, htail⟩
  exact ⟨reduced, numerator, betaWide, hreduce, hnumerator, hrounded, htail⟩

#print axioms PrefixRun
#print axioms model_prefix

end Ipp.Extracted.ArkworksScalarMul.GlvDecompExecPrefix
