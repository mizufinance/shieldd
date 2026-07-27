import Ipp.Extracted.ArkworksScalarMulGlvDecompFinishAfter

/-! Execution witness for comparison and sign-directed subtraction. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompExecFinish

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def FinishRun (reduced beta : ScalarArray) (b1 : WideArray) (output : Output) : Prop :=
  ∃ k1Wide positive,
    positive = decide (wideToNat b1 < scalarToNat reduced) ∧
    (if positive then
        ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced) b1
      else
        ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced)) =
      .ok k1Wide ∧
    output = Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput positive
      (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide) beta

private theorem bind_eq_ok {alpha beta : Type} (action : Result alpha)
    (next : alpha → Result beta) (output : beta)
    (h : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

theorem finish_run (reduced beta : ScalarArray) (b1 : WideArray) (output : Output)
    (hexec : Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.finish reduced beta b1 =
      .ok output) : FinishRun reduced beta b1 output := by
  rw [← Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.wide_eq_finish,
    Ipp.Extracted.ArkworksScalarMul.GlvDecompFinishAfter.wide_eq_finish] at hexec
  unfold Ipp.Extracted.ArkworksScalarMul.GlvDecompFinishAfter.finish at hexec
  rcases bind_eq_ok _ _ _ hexec with ⟨positive, hpositiveExec, hexec⟩
  have hpositive : positive = decide (wideToNat b1 < scalarToNat reduced) := by
    rw [Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.extracted_gt6_spec,
      Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4_value] at hpositiveExec
    exact (Result.ok.inj hpositiveExec).symm
  cases positive with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte] at hexec
      rcases bind_eq_ok _ _ _ hexec with ⟨k1Wide, hk1, houtput⟩
      simp only [Result.ok.injEq] at houtput
      exact ⟨k1Wide, false, hpositive, hk1, houtput.symm⟩
  | true =>
      simp only [↓reduceIte] at hexec
      rcases bind_eq_ok _ _ _ hexec with ⟨k1Wide, hk1, houtput⟩
      simp only [Result.ok.injEq] at houtput
      exact ⟨k1Wide, true, hpositive, hk1, houtput.symm⟩

#print axioms FinishRun
#print axioms finish_run

end Ipp.Extracted.ArkworksScalarMul.GlvDecompExecFinish
