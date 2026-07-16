import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4719 rho ∧ Seg6.relationRow4720 rho ∧ Seg6.relationRow4721 rho ∧ Seg6.relationRow4722 rho ∧ Seg6.relationRow4723 rho ∧ Seg6.relationRow4724 rho ∧ Seg6.relationRow4725 rho ∧ Seg6.relationRow4726 rho ∧ Seg6.relationRow4727 rho ∧ Seg6.relationRow4728 rho ∧ Seg6.relationRow4729 rho ∧ Seg6.relationRow4730 rho ∧ Seg6.relationRow4731 rho ∧ Seg6.relationRow4732 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4719⟩
  unfold Seg6.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4719, r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩

theorem seg6_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩
        ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩
        ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩
        ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩ := by
  obtain ⟨r4719, r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩ := seg6_rows154 rho h
  unfold Seg6.relationRow4719 at r4719
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4719
  unfold Seg6.relationRow4720 at r4720
  unfold Seg6.relationRow4721 at r4721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4721
  unfold Seg6.relationRow4722 at r4722
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4722
  unfold Seg6.relationRow4723 at r4723
  unfold Seg6.relationRow4724 at r4724
  unfold Seg6.relationRow4725 at r4725
  unfold Seg6.relationRow4726 at r4726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726
  unfold Seg6.relationRow4727 at r4727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727
  unfold Seg6.relationRow4728 at r4728
  unfold Seg6.relationRow4729 at r4729
  unfold Seg6.relationRow4730 at r4730
  unfold Seg6.relationRow4731 at r4731
  unfold Seg6.relationRow4732 at r4732
  have hrung154 (bit : Bool) (hbit : rho 2044 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩
        ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩
        ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩
        ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩ := by
    have hnextx : seg6AccX155 rho = seg6AccX154 rho + rho 5125 := by
      unfold seg6AccX155 seg6AccX154
      ring
    have hnexty : seg6AccY155 rho = seg6AccY154 rho + rho 5126 := by
      unfold seg6AccY155 seg6AccY154
      ring
    have hsum : seg6AccX154 rho + seg6AccY154 rho = rho 5118 := by
      unfold seg6AccX154 seg6AccY154
      linear_combination r4719
    have ha0 : (rho 5116 + rho 5117) * (seg6AccX154 rho + seg6AccY154 rho) = rho 5119 := by
      rw [hsum]
      linear_combination r4720
    have ha1 : rho 5117 * seg6AccX154 rho = rho 5120 := by
      unfold seg6AccX154
      linear_combination r4721
    have ha2 : rho 5116 * seg6AccY154 rho = rho 5121 := by
      unfold seg6AccY154
      linear_combination r4722
    have ha3 : 3021 * rho 5120 * rho 5121 = rho 5122 := by
      linear_combination r4723
    have ha4 : rho 5123 * (1 + rho 5122) = rho 5120 + rho 5121 := by
      linear_combination r4724
    have ha5 : rho 5124 * (1 - rho 5122) = rho 5119 - rho 5120 - rho 5121 := by
      linear_combination r4725
    have haddx :
        rho 5123 * (1 + 3021 * (rho 5117 * seg6AccX154 rho) * (rho 5116 * seg6AccY154 rho)) =
          rho 5117 * seg6AccX154 rho + rho 5116 * seg6AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5124 * (1 - 3021 * (rho 5117 * seg6AccX154 rho) * (rho 5116 * seg6AccY154 rho)) =
          (-1) * (rho 5117 * seg6AccX154 rho) - rho 5116 * seg6AccY154 rho +
            (seg6AccY154 rho - seg6AccX154 rho * (-1)) * (rho 5116 + rho 5117) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5124 * (1 - rho 5122) = rho 5119 - rho 5120 - rho 5121 := ha5
        _ = (-1) * rho 5120 - rho 5121 + (seg6AccY154 rho - seg6AccX154 rho * (-1)) * (rho 5116 + rho 5117) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX155 rho = seg6AccX154 rho - Bool.toZMod bit * (seg6AccX154 rho - rho 5123) := by
      have hd : rho 5125 = Bool.toZMod bit * (rho 5123 - seg6AccX154 rho) := by
        rw [← hbit]
        unfold seg6AccX154
        linear_combination -r4726
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY155 rho = seg6AccY154 rho - Bool.toZMod bit * (seg6AccY154 rho - rho 5124) := by
      have hd : rho 5126 = Bool.toZMod bit * (rho 5124 - seg6AccY154 rho) := by
        rw [← hbit]
        unfold seg6AccY154
        linear_combination -r4727
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5116 * rho 5117 = rho 5127 := by linear_combination r4728
    have hd1 : rho 5116 * rho 5116 = rho 5128 := by linear_combination r4729
    have hd2 : rho 5117 * rho 5117 = rho 5129 := by linear_combination r4730
    have hd3 : rho 5130 * (rho 5117 * rho 5117 + rho 5116 * rho 5116 * (-1)) = 2 * (rho 5116 * rho 5117) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 5131 * (2 - (rho 5117 * rho 5117 + rho 5116 * rho 5116 * (-1))) = rho 5117 * rho 5117 - rho 5116 * rho 5116 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩
      ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩
      ⟨(rho 5123 : Seg6.F), (rho 5124 : Seg6.F)⟩
      ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩
      ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg6_rows155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4733 rho ∧ Seg6.relationRow4734 rho ∧ Seg6.relationRow4735 rho ∧ Seg6.relationRow4736 rho ∧ Seg6.relationRow4737 rho ∧ Seg6.relationRow4738 rho ∧ Seg6.relationRow4739 rho ∧ Seg6.relationRow4740 rho ∧ Seg6.relationRow4741 rho ∧ Seg6.relationRow4742 rho ∧ Seg6.relationRow4743 rho ∧ Seg6.relationRow4744 rho ∧ Seg6.relationRow4745 rho ∧ Seg6.relationRow4746 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746⟩

theorem seg6_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩
        ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩
        ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩
        ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩ := by
  obtain ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746⟩ := seg6_rows155 rho h
  unfold Seg6.relationRow4733 at r4733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733
  unfold Seg6.relationRow4734 at r4734
  unfold Seg6.relationRow4735 at r4735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4735
  unfold Seg6.relationRow4736 at r4736
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4736
  unfold Seg6.relationRow4737 at r4737
  unfold Seg6.relationRow4738 at r4738
  unfold Seg6.relationRow4739 at r4739
  unfold Seg6.relationRow4740 at r4740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740
  unfold Seg6.relationRow4741 at r4741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4741
  unfold Seg6.relationRow4742 at r4742
  unfold Seg6.relationRow4743 at r4743
  unfold Seg6.relationRow4744 at r4744
  unfold Seg6.relationRow4745 at r4745
  unfold Seg6.relationRow4746 at r4746
  have hrung155 (bit : Bool) (hbit : rho 2045 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩
        ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩
        ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩
        ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩ := by
    have hnextx : seg6AccX156 rho = seg6AccX155 rho + rho 5139 := by
      unfold seg6AccX156 seg6AccX155
      ring
    have hnexty : seg6AccY156 rho = seg6AccY155 rho + rho 5140 := by
      unfold seg6AccY156 seg6AccY155
      ring
    have hsum : seg6AccX155 rho + seg6AccY155 rho = rho 5132 := by
      unfold seg6AccX155 seg6AccY155
      linear_combination r4733
    have ha0 : (rho 5130 + rho 5131) * (seg6AccX155 rho + seg6AccY155 rho) = rho 5133 := by
      rw [hsum]
      linear_combination r4734
    have ha1 : rho 5131 * seg6AccX155 rho = rho 5134 := by
      unfold seg6AccX155
      linear_combination r4735
    have ha2 : rho 5130 * seg6AccY155 rho = rho 5135 := by
      unfold seg6AccY155
      linear_combination r4736
    have ha3 : 3021 * rho 5134 * rho 5135 = rho 5136 := by
      linear_combination r4737
    have ha4 : rho 5137 * (1 + rho 5136) = rho 5134 + rho 5135 := by
      linear_combination r4738
    have ha5 : rho 5138 * (1 - rho 5136) = rho 5133 - rho 5134 - rho 5135 := by
      linear_combination r4739
    have haddx :
        rho 5137 * (1 + 3021 * (rho 5131 * seg6AccX155 rho) * (rho 5130 * seg6AccY155 rho)) =
          rho 5131 * seg6AccX155 rho + rho 5130 * seg6AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5138 * (1 - 3021 * (rho 5131 * seg6AccX155 rho) * (rho 5130 * seg6AccY155 rho)) =
          (-1) * (rho 5131 * seg6AccX155 rho) - rho 5130 * seg6AccY155 rho +
            (seg6AccY155 rho - seg6AccX155 rho * (-1)) * (rho 5130 + rho 5131) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5138 * (1 - rho 5136) = rho 5133 - rho 5134 - rho 5135 := ha5
        _ = (-1) * rho 5134 - rho 5135 + (seg6AccY155 rho - seg6AccX155 rho * (-1)) * (rho 5130 + rho 5131) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX156 rho = seg6AccX155 rho - Bool.toZMod bit * (seg6AccX155 rho - rho 5137) := by
      have hd : rho 5139 = Bool.toZMod bit * (rho 5137 - seg6AccX155 rho) := by
        rw [← hbit]
        unfold seg6AccX155
        linear_combination -r4740
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY156 rho = seg6AccY155 rho - Bool.toZMod bit * (seg6AccY155 rho - rho 5138) := by
      have hd : rho 5140 = Bool.toZMod bit * (rho 5138 - seg6AccY155 rho) := by
        rw [← hbit]
        unfold seg6AccY155
        linear_combination -r4741
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5130 * rho 5131 = rho 5141 := by linear_combination r4742
    have hd1 : rho 5130 * rho 5130 = rho 5142 := by linear_combination r4743
    have hd2 : rho 5131 * rho 5131 = rho 5143 := by linear_combination r4744
    have hd3 : rho 5144 * (rho 5131 * rho 5131 + rho 5130 * rho 5130 * (-1)) = 2 * (rho 5130 * rho 5131) := by
      rw [hd0, hd1, hd2]
      linear_combination r4745
    have hd4 : rho 5145 * (2 - (rho 5131 * rho 5131 + rho 5130 * rho 5130 * (-1))) = rho 5131 * rho 5131 - rho 5130 * rho 5130 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4746
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX155 rho : Seg6.F), (seg6AccY155 rho : Seg6.F)⟩
      ⟨(rho 5130 : Seg6.F), (rho 5131 : Seg6.F)⟩
      ⟨(rho 5137 : Seg6.F), (rho 5138 : Seg6.F)⟩
      ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩
      ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg6_rows156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4747 rho ∧ Seg6.relationRow4748 rho ∧ Seg6.relationRow4749 rho ∧ Seg6.relationRow4750 rho ∧ Seg6.relationRow4751 rho ∧ Seg6.relationRow4752 rho ∧ Seg6.relationRow4753 rho ∧ Seg6.relationRow4754 rho ∧ Seg6.relationRow4755 rho ∧ Seg6.relationRow4756 rho ∧ Seg6.relationRow4757 rho ∧ Seg6.relationRow4758 rho ∧ Seg6.relationRow4759 rho ∧ Seg6.relationRow4760 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760⟩

theorem seg6_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩
        ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩
        ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩
        ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩ := by
  obtain ⟨r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760⟩ := seg6_rows156 rho h
  unfold Seg6.relationRow4747 at r4747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4747
  unfold Seg6.relationRow4748 at r4748
  unfold Seg6.relationRow4749 at r4749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4749
  unfold Seg6.relationRow4750 at r4750
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4750
  unfold Seg6.relationRow4751 at r4751
  unfold Seg6.relationRow4752 at r4752
  unfold Seg6.relationRow4753 at r4753
  unfold Seg6.relationRow4754 at r4754
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4754
  unfold Seg6.relationRow4755 at r4755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4755
  unfold Seg6.relationRow4756 at r4756
  unfold Seg6.relationRow4757 at r4757
  unfold Seg6.relationRow4758 at r4758
  unfold Seg6.relationRow4759 at r4759
  unfold Seg6.relationRow4760 at r4760
  have hrung156 (bit : Bool) (hbit : rho 2046 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩
        ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩
        ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩
        ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩ := by
    have hnextx : seg6AccX157 rho = seg6AccX156 rho + rho 5153 := by
      unfold seg6AccX157 seg6AccX156
      ring
    have hnexty : seg6AccY157 rho = seg6AccY156 rho + rho 5154 := by
      unfold seg6AccY157 seg6AccY156
      ring
    have hsum : seg6AccX156 rho + seg6AccY156 rho = rho 5146 := by
      unfold seg6AccX156 seg6AccY156
      linear_combination r4747
    have ha0 : (rho 5144 + rho 5145) * (seg6AccX156 rho + seg6AccY156 rho) = rho 5147 := by
      rw [hsum]
      linear_combination r4748
    have ha1 : rho 5145 * seg6AccX156 rho = rho 5148 := by
      unfold seg6AccX156
      linear_combination r4749
    have ha2 : rho 5144 * seg6AccY156 rho = rho 5149 := by
      unfold seg6AccY156
      linear_combination r4750
    have ha3 : 3021 * rho 5148 * rho 5149 = rho 5150 := by
      linear_combination r4751
    have ha4 : rho 5151 * (1 + rho 5150) = rho 5148 + rho 5149 := by
      linear_combination r4752
    have ha5 : rho 5152 * (1 - rho 5150) = rho 5147 - rho 5148 - rho 5149 := by
      linear_combination r4753
    have haddx :
        rho 5151 * (1 + 3021 * (rho 5145 * seg6AccX156 rho) * (rho 5144 * seg6AccY156 rho)) =
          rho 5145 * seg6AccX156 rho + rho 5144 * seg6AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5152 * (1 - 3021 * (rho 5145 * seg6AccX156 rho) * (rho 5144 * seg6AccY156 rho)) =
          (-1) * (rho 5145 * seg6AccX156 rho) - rho 5144 * seg6AccY156 rho +
            (seg6AccY156 rho - seg6AccX156 rho * (-1)) * (rho 5144 + rho 5145) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5152 * (1 - rho 5150) = rho 5147 - rho 5148 - rho 5149 := ha5
        _ = (-1) * rho 5148 - rho 5149 + (seg6AccY156 rho - seg6AccX156 rho * (-1)) * (rho 5144 + rho 5145) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX157 rho = seg6AccX156 rho - Bool.toZMod bit * (seg6AccX156 rho - rho 5151) := by
      have hd : rho 5153 = Bool.toZMod bit * (rho 5151 - seg6AccX156 rho) := by
        rw [← hbit]
        unfold seg6AccX156
        linear_combination -r4754
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY157 rho = seg6AccY156 rho - Bool.toZMod bit * (seg6AccY156 rho - rho 5152) := by
      have hd : rho 5154 = Bool.toZMod bit * (rho 5152 - seg6AccY156 rho) := by
        rw [← hbit]
        unfold seg6AccY156
        linear_combination -r4755
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5144 * rho 5145 = rho 5155 := by linear_combination r4756
    have hd1 : rho 5144 * rho 5144 = rho 5156 := by linear_combination r4757
    have hd2 : rho 5145 * rho 5145 = rho 5157 := by linear_combination r4758
    have hd3 : rho 5158 * (rho 5145 * rho 5145 + rho 5144 * rho 5144 * (-1)) = 2 * (rho 5144 * rho 5145) := by
      rw [hd0, hd1, hd2]
      linear_combination r4759
    have hd4 : rho 5159 * (2 - (rho 5145 * rho 5145 + rho 5144 * rho 5144 * (-1))) = rho 5145 * rho 5145 - rho 5144 * rho 5144 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4760
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX156 rho : Seg6.F), (seg6AccY156 rho : Seg6.F)⟩
      ⟨(rho 5144 : Seg6.F), (rho 5145 : Seg6.F)⟩
      ⟨(rho 5151 : Seg6.F), (rho 5152 : Seg6.F)⟩
      ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩
      ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg6_rows157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4761 rho ∧ Seg6.relationRow4762 rho ∧ Seg6.relationRow4763 rho ∧ Seg6.relationRow4764 rho ∧ Seg6.relationRow4765 rho ∧ Seg6.relationRow4766 rho ∧ Seg6.relationRow4767 rho ∧ Seg6.relationRow4768 rho ∧ Seg6.relationRow4769 rho ∧ Seg6.relationRow4770 rho ∧ Seg6.relationRow4771 rho ∧ Seg6.relationRow4772 rho ∧ Seg6.relationRow4773 rho ∧ Seg6.relationRow4774 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774⟩

theorem seg6_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩
        ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩
        ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩
        ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩ := by
  obtain ⟨r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774⟩ := seg6_rows157 rho h
  unfold Seg6.relationRow4761 at r4761
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4761
  unfold Seg6.relationRow4762 at r4762
  unfold Seg6.relationRow4763 at r4763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4763
  unfold Seg6.relationRow4764 at r4764
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4764
  unfold Seg6.relationRow4765 at r4765
  unfold Seg6.relationRow4766 at r4766
  unfold Seg6.relationRow4767 at r4767
  unfold Seg6.relationRow4768 at r4768
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4768
  unfold Seg6.relationRow4769 at r4769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4769
  unfold Seg6.relationRow4770 at r4770
  unfold Seg6.relationRow4771 at r4771
  unfold Seg6.relationRow4772 at r4772
  unfold Seg6.relationRow4773 at r4773
  unfold Seg6.relationRow4774 at r4774
  have hrung157 (bit : Bool) (hbit : rho 2047 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩
        ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩
        ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩
        ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩ := by
    have hnextx : seg6AccX158 rho = seg6AccX157 rho + rho 5167 := by
      unfold seg6AccX158 seg6AccX157
      ring
    have hnexty : seg6AccY158 rho = seg6AccY157 rho + rho 5168 := by
      unfold seg6AccY158 seg6AccY157
      ring
    have hsum : seg6AccX157 rho + seg6AccY157 rho = rho 5160 := by
      unfold seg6AccX157 seg6AccY157
      linear_combination r4761
    have ha0 : (rho 5158 + rho 5159) * (seg6AccX157 rho + seg6AccY157 rho) = rho 5161 := by
      rw [hsum]
      linear_combination r4762
    have ha1 : rho 5159 * seg6AccX157 rho = rho 5162 := by
      unfold seg6AccX157
      linear_combination r4763
    have ha2 : rho 5158 * seg6AccY157 rho = rho 5163 := by
      unfold seg6AccY157
      linear_combination r4764
    have ha3 : 3021 * rho 5162 * rho 5163 = rho 5164 := by
      linear_combination r4765
    have ha4 : rho 5165 * (1 + rho 5164) = rho 5162 + rho 5163 := by
      linear_combination r4766
    have ha5 : rho 5166 * (1 - rho 5164) = rho 5161 - rho 5162 - rho 5163 := by
      linear_combination r4767
    have haddx :
        rho 5165 * (1 + 3021 * (rho 5159 * seg6AccX157 rho) * (rho 5158 * seg6AccY157 rho)) =
          rho 5159 * seg6AccX157 rho + rho 5158 * seg6AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5166 * (1 - 3021 * (rho 5159 * seg6AccX157 rho) * (rho 5158 * seg6AccY157 rho)) =
          (-1) * (rho 5159 * seg6AccX157 rho) - rho 5158 * seg6AccY157 rho +
            (seg6AccY157 rho - seg6AccX157 rho * (-1)) * (rho 5158 + rho 5159) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5166 * (1 - rho 5164) = rho 5161 - rho 5162 - rho 5163 := ha5
        _ = (-1) * rho 5162 - rho 5163 + (seg6AccY157 rho - seg6AccX157 rho * (-1)) * (rho 5158 + rho 5159) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX158 rho = seg6AccX157 rho - Bool.toZMod bit * (seg6AccX157 rho - rho 5165) := by
      have hd : rho 5167 = Bool.toZMod bit * (rho 5165 - seg6AccX157 rho) := by
        rw [← hbit]
        unfold seg6AccX157
        linear_combination -r4768
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY158 rho = seg6AccY157 rho - Bool.toZMod bit * (seg6AccY157 rho - rho 5166) := by
      have hd : rho 5168 = Bool.toZMod bit * (rho 5166 - seg6AccY157 rho) := by
        rw [← hbit]
        unfold seg6AccY157
        linear_combination -r4769
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5158 * rho 5159 = rho 5169 := by linear_combination r4770
    have hd1 : rho 5158 * rho 5158 = rho 5170 := by linear_combination r4771
    have hd2 : rho 5159 * rho 5159 = rho 5171 := by linear_combination r4772
    have hd3 : rho 5172 * (rho 5159 * rho 5159 + rho 5158 * rho 5158 * (-1)) = 2 * (rho 5158 * rho 5159) := by
      rw [hd0, hd1, hd2]
      linear_combination r4773
    have hd4 : rho 5173 * (2 - (rho 5159 * rho 5159 + rho 5158 * rho 5158 * (-1))) = rho 5159 * rho 5159 - rho 5158 * rho 5158 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4774
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX157 rho : Seg6.F), (seg6AccY157 rho : Seg6.F)⟩
      ⟨(rho 5158 : Seg6.F), (rho 5159 : Seg6.F)⟩
      ⟨(rho 5165 : Seg6.F), (rho 5166 : Seg6.F)⟩
      ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩
      ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg6_rows158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4775 rho ∧ Seg6.relationRow4776 rho ∧ Seg6.relationRow4777 rho ∧ Seg6.relationRow4778 rho ∧ Seg6.relationRow4779 rho ∧ Seg6.relationRow4780 rho ∧ Seg6.relationRow4781 rho ∧ Seg6.relationRow4782 rho ∧ Seg6.relationRow4783 rho ∧ Seg6.relationRow4784 rho ∧ Seg6.relationRow4785 rho ∧ Seg6.relationRow4786 rho ∧ Seg6.relationRow4787 rho ∧ Seg6.relationRow4788 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788⟩

theorem seg6_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩
        ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩
        ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩
        ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩ := by
  obtain ⟨r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788⟩ := seg6_rows158 rho h
  unfold Seg6.relationRow4775 at r4775
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4775
  unfold Seg6.relationRow4776 at r4776
  unfold Seg6.relationRow4777 at r4777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4777
  unfold Seg6.relationRow4778 at r4778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778
  unfold Seg6.relationRow4779 at r4779
  unfold Seg6.relationRow4780 at r4780
  unfold Seg6.relationRow4781 at r4781
  unfold Seg6.relationRow4782 at r4782
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4782
  unfold Seg6.relationRow4783 at r4783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4783
  unfold Seg6.relationRow4784 at r4784
  unfold Seg6.relationRow4785 at r4785
  unfold Seg6.relationRow4786 at r4786
  unfold Seg6.relationRow4787 at r4787
  unfold Seg6.relationRow4788 at r4788
  have hrung158 (bit : Bool) (hbit : rho 2048 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩
        ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩
        ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩
        ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩ := by
    have hnextx : seg6AccX159 rho = seg6AccX158 rho + rho 5181 := by
      unfold seg6AccX159 seg6AccX158
      ring
    have hnexty : seg6AccY159 rho = seg6AccY158 rho + rho 5182 := by
      unfold seg6AccY159 seg6AccY158
      ring
    have hsum : seg6AccX158 rho + seg6AccY158 rho = rho 5174 := by
      unfold seg6AccX158 seg6AccY158
      linear_combination r4775
    have ha0 : (rho 5172 + rho 5173) * (seg6AccX158 rho + seg6AccY158 rho) = rho 5175 := by
      rw [hsum]
      linear_combination r4776
    have ha1 : rho 5173 * seg6AccX158 rho = rho 5176 := by
      unfold seg6AccX158
      linear_combination r4777
    have ha2 : rho 5172 * seg6AccY158 rho = rho 5177 := by
      unfold seg6AccY158
      linear_combination r4778
    have ha3 : 3021 * rho 5176 * rho 5177 = rho 5178 := by
      linear_combination r4779
    have ha4 : rho 5179 * (1 + rho 5178) = rho 5176 + rho 5177 := by
      linear_combination r4780
    have ha5 : rho 5180 * (1 - rho 5178) = rho 5175 - rho 5176 - rho 5177 := by
      linear_combination r4781
    have haddx :
        rho 5179 * (1 + 3021 * (rho 5173 * seg6AccX158 rho) * (rho 5172 * seg6AccY158 rho)) =
          rho 5173 * seg6AccX158 rho + rho 5172 * seg6AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5180 * (1 - 3021 * (rho 5173 * seg6AccX158 rho) * (rho 5172 * seg6AccY158 rho)) =
          (-1) * (rho 5173 * seg6AccX158 rho) - rho 5172 * seg6AccY158 rho +
            (seg6AccY158 rho - seg6AccX158 rho * (-1)) * (rho 5172 + rho 5173) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5180 * (1 - rho 5178) = rho 5175 - rho 5176 - rho 5177 := ha5
        _ = (-1) * rho 5176 - rho 5177 + (seg6AccY158 rho - seg6AccX158 rho * (-1)) * (rho 5172 + rho 5173) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX159 rho = seg6AccX158 rho - Bool.toZMod bit * (seg6AccX158 rho - rho 5179) := by
      have hd : rho 5181 = Bool.toZMod bit * (rho 5179 - seg6AccX158 rho) := by
        rw [← hbit]
        unfold seg6AccX158
        linear_combination -r4782
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY159 rho = seg6AccY158 rho - Bool.toZMod bit * (seg6AccY158 rho - rho 5180) := by
      have hd : rho 5182 = Bool.toZMod bit * (rho 5180 - seg6AccY158 rho) := by
        rw [← hbit]
        unfold seg6AccY158
        linear_combination -r4783
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5172 * rho 5173 = rho 5183 := by linear_combination r4784
    have hd1 : rho 5172 * rho 5172 = rho 5184 := by linear_combination r4785
    have hd2 : rho 5173 * rho 5173 = rho 5185 := by linear_combination r4786
    have hd3 : rho 5186 * (rho 5173 * rho 5173 + rho 5172 * rho 5172 * (-1)) = 2 * (rho 5172 * rho 5173) := by
      rw [hd0, hd1, hd2]
      linear_combination r4787
    have hd4 : rho 5187 * (2 - (rho 5173 * rho 5173 + rho 5172 * rho 5172 * (-1))) = rho 5173 * rho 5173 - rho 5172 * rho 5172 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4788
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX158 rho : Seg6.F), (seg6AccY158 rho : Seg6.F)⟩
      ⟨(rho 5172 : Seg6.F), (rho 5173 : Seg6.F)⟩
      ⟨(rho 5179 : Seg6.F), (rho 5180 : Seg6.F)⟩
      ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩
      ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg6_rows159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4789 rho ∧ Seg6.relationRow4790 rho ∧ Seg6.relationRow4791 rho ∧ Seg6.relationRow4792 rho ∧ Seg6.relationRow4793 rho ∧ Seg6.relationRow4794 rho ∧ Seg6.relationRow4795 rho ∧ Seg6.relationRow4796 rho ∧ Seg6.relationRow4797 rho ∧ Seg6.relationRow4798 rho ∧ Seg6.relationRow4799 rho ∧ Seg6.relationRow4800 rho ∧ Seg6.relationRow4801 rho ∧ Seg6.relationRow4802 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802⟩

theorem seg6_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩
        ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩
        ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩
        ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩ := by
  obtain ⟨r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802⟩ := seg6_rows159 rho h
  unfold Seg6.relationRow4789 at r4789
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4789
  unfold Seg6.relationRow4790 at r4790
  unfold Seg6.relationRow4791 at r4791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791
  unfold Seg6.relationRow4792 at r4792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792
  unfold Seg6.relationRow4793 at r4793
  unfold Seg6.relationRow4794 at r4794
  unfold Seg6.relationRow4795 at r4795
  unfold Seg6.relationRow4796 at r4796
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4796
  unfold Seg6.relationRow4797 at r4797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4797
  unfold Seg6.relationRow4798 at r4798
  unfold Seg6.relationRow4799 at r4799
  unfold Seg6.relationRow4800 at r4800
  unfold Seg6.relationRow4801 at r4801
  unfold Seg6.relationRow4802 at r4802
  have hrung159 (bit : Bool) (hbit : rho 2049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩
        ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩
        ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩
        ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩ := by
    have hnextx : seg6AccX160 rho = seg6AccX159 rho + rho 5195 := by
      unfold seg6AccX160 seg6AccX159
      ring
    have hnexty : seg6AccY160 rho = seg6AccY159 rho + rho 5196 := by
      unfold seg6AccY160 seg6AccY159
      ring
    have hsum : seg6AccX159 rho + seg6AccY159 rho = rho 5188 := by
      unfold seg6AccX159 seg6AccY159
      linear_combination r4789
    have ha0 : (rho 5186 + rho 5187) * (seg6AccX159 rho + seg6AccY159 rho) = rho 5189 := by
      rw [hsum]
      linear_combination r4790
    have ha1 : rho 5187 * seg6AccX159 rho = rho 5190 := by
      unfold seg6AccX159
      linear_combination r4791
    have ha2 : rho 5186 * seg6AccY159 rho = rho 5191 := by
      unfold seg6AccY159
      linear_combination r4792
    have ha3 : 3021 * rho 5190 * rho 5191 = rho 5192 := by
      linear_combination r4793
    have ha4 : rho 5193 * (1 + rho 5192) = rho 5190 + rho 5191 := by
      linear_combination r4794
    have ha5 : rho 5194 * (1 - rho 5192) = rho 5189 - rho 5190 - rho 5191 := by
      linear_combination r4795
    have haddx :
        rho 5193 * (1 + 3021 * (rho 5187 * seg6AccX159 rho) * (rho 5186 * seg6AccY159 rho)) =
          rho 5187 * seg6AccX159 rho + rho 5186 * seg6AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5194 * (1 - 3021 * (rho 5187 * seg6AccX159 rho) * (rho 5186 * seg6AccY159 rho)) =
          (-1) * (rho 5187 * seg6AccX159 rho) - rho 5186 * seg6AccY159 rho +
            (seg6AccY159 rho - seg6AccX159 rho * (-1)) * (rho 5186 + rho 5187) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5194 * (1 - rho 5192) = rho 5189 - rho 5190 - rho 5191 := ha5
        _ = (-1) * rho 5190 - rho 5191 + (seg6AccY159 rho - seg6AccX159 rho * (-1)) * (rho 5186 + rho 5187) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX160 rho = seg6AccX159 rho - Bool.toZMod bit * (seg6AccX159 rho - rho 5193) := by
      have hd : rho 5195 = Bool.toZMod bit * (rho 5193 - seg6AccX159 rho) := by
        rw [← hbit]
        unfold seg6AccX159
        linear_combination -r4796
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY160 rho = seg6AccY159 rho - Bool.toZMod bit * (seg6AccY159 rho - rho 5194) := by
      have hd : rho 5196 = Bool.toZMod bit * (rho 5194 - seg6AccY159 rho) := by
        rw [← hbit]
        unfold seg6AccY159
        linear_combination -r4797
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5186 * rho 5187 = rho 5197 := by linear_combination r4798
    have hd1 : rho 5186 * rho 5186 = rho 5198 := by linear_combination r4799
    have hd2 : rho 5187 * rho 5187 = rho 5199 := by linear_combination r4800
    have hd3 : rho 5200 * (rho 5187 * rho 5187 + rho 5186 * rho 5186 * (-1)) = 2 * (rho 5186 * rho 5187) := by
      rw [hd0, hd1, hd2]
      linear_combination r4801
    have hd4 : rho 5201 * (2 - (rho 5187 * rho 5187 + rho 5186 * rho 5186 * (-1))) = rho 5187 * rho 5187 - rho 5186 * rho 5186 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4802
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX159 rho : Seg6.F), (seg6AccY159 rho : Seg6.F)⟩
      ⟨(rho 5186 : Seg6.F), (rho 5187 : Seg6.F)⟩
      ⟨(rho 5193 : Seg6.F), (rho 5194 : Seg6.F)⟩
      ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩
      ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg6_rows160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4803 rho ∧ Seg6.relationRow4804 rho ∧ Seg6.relationRow4805 rho ∧ Seg6.relationRow4806 rho ∧ Seg6.relationRow4807 rho ∧ Seg6.relationRow4808 rho ∧ Seg6.relationRow4809 rho ∧ Seg6.relationRow4810 rho ∧ Seg6.relationRow4811 rho ∧ Seg6.relationRow4812 rho ∧ Seg6.relationRow4813 rho ∧ Seg6.relationRow4814 rho ∧ Seg6.relationRow4815 rho ∧ Seg6.relationRow4816 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨_, _, _, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩

theorem seg6_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩
        ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩
        ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩
        ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩ := by
  obtain ⟨r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩ := seg6_rows160 rho h
  unfold Seg6.relationRow4803 at r4803
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4803
  unfold Seg6.relationRow4804 at r4804
  unfold Seg6.relationRow4805 at r4805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805
  unfold Seg6.relationRow4806 at r4806
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4806
  unfold Seg6.relationRow4807 at r4807
  unfold Seg6.relationRow4808 at r4808
  unfold Seg6.relationRow4809 at r4809
  unfold Seg6.relationRow4810 at r4810
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4810
  unfold Seg6.relationRow4811 at r4811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811
  unfold Seg6.relationRow4812 at r4812
  unfold Seg6.relationRow4813 at r4813
  unfold Seg6.relationRow4814 at r4814
  unfold Seg6.relationRow4815 at r4815
  unfold Seg6.relationRow4816 at r4816
  have hrung160 (bit : Bool) (hbit : rho 2050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩
        ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩
        ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩
        ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩ := by
    have hnextx : seg6AccX161 rho = seg6AccX160 rho + rho 5209 := by
      unfold seg6AccX161 seg6AccX160
      ring
    have hnexty : seg6AccY161 rho = seg6AccY160 rho + rho 5210 := by
      unfold seg6AccY161 seg6AccY160
      ring
    have hsum : seg6AccX160 rho + seg6AccY160 rho = rho 5202 := by
      unfold seg6AccX160 seg6AccY160
      linear_combination r4803
    have ha0 : (rho 5200 + rho 5201) * (seg6AccX160 rho + seg6AccY160 rho) = rho 5203 := by
      rw [hsum]
      linear_combination r4804
    have ha1 : rho 5201 * seg6AccX160 rho = rho 5204 := by
      unfold seg6AccX160
      linear_combination r4805
    have ha2 : rho 5200 * seg6AccY160 rho = rho 5205 := by
      unfold seg6AccY160
      linear_combination r4806
    have ha3 : 3021 * rho 5204 * rho 5205 = rho 5206 := by
      linear_combination r4807
    have ha4 : rho 5207 * (1 + rho 5206) = rho 5204 + rho 5205 := by
      linear_combination r4808
    have ha5 : rho 5208 * (1 - rho 5206) = rho 5203 - rho 5204 - rho 5205 := by
      linear_combination r4809
    have haddx :
        rho 5207 * (1 + 3021 * (rho 5201 * seg6AccX160 rho) * (rho 5200 * seg6AccY160 rho)) =
          rho 5201 * seg6AccX160 rho + rho 5200 * seg6AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5208 * (1 - 3021 * (rho 5201 * seg6AccX160 rho) * (rho 5200 * seg6AccY160 rho)) =
          (-1) * (rho 5201 * seg6AccX160 rho) - rho 5200 * seg6AccY160 rho +
            (seg6AccY160 rho - seg6AccX160 rho * (-1)) * (rho 5200 + rho 5201) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5208 * (1 - rho 5206) = rho 5203 - rho 5204 - rho 5205 := ha5
        _ = (-1) * rho 5204 - rho 5205 + (seg6AccY160 rho - seg6AccX160 rho * (-1)) * (rho 5200 + rho 5201) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX161 rho = seg6AccX160 rho - Bool.toZMod bit * (seg6AccX160 rho - rho 5207) := by
      have hd : rho 5209 = Bool.toZMod bit * (rho 5207 - seg6AccX160 rho) := by
        rw [← hbit]
        unfold seg6AccX160
        linear_combination -r4810
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY161 rho = seg6AccY160 rho - Bool.toZMod bit * (seg6AccY160 rho - rho 5208) := by
      have hd : rho 5210 = Bool.toZMod bit * (rho 5208 - seg6AccY160 rho) := by
        rw [← hbit]
        unfold seg6AccY160
        linear_combination -r4811
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5200 * rho 5201 = rho 5211 := by linear_combination r4812
    have hd1 : rho 5200 * rho 5200 = rho 5212 := by linear_combination r4813
    have hd2 : rho 5201 * rho 5201 = rho 5213 := by linear_combination r4814
    have hd3 : rho 5214 * (rho 5201 * rho 5201 + rho 5200 * rho 5200 * (-1)) = 2 * (rho 5200 * rho 5201) := by
      rw [hd0, hd1, hd2]
      linear_combination r4815
    have hd4 : rho 5215 * (2 - (rho 5201 * rho 5201 + rho 5200 * rho 5200 * (-1))) = rho 5201 * rho 5201 - rho 5200 * rho 5200 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4816
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX160 rho : Seg6.F), (seg6AccY160 rho : Seg6.F)⟩
      ⟨(rho 5200 : Seg6.F), (rho 5201 : Seg6.F)⟩
      ⟨(rho 5207 : Seg6.F), (rho 5208 : Seg6.F)⟩
      ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩
      ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg6_rows161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4817 rho ∧ Seg6.relationRow4818 rho ∧ Seg6.relationRow4819 rho ∧ Seg6.relationRow4820 rho ∧ Seg6.relationRow4821 rho ∧ Seg6.relationRow4822 rho ∧ Seg6.relationRow4823 rho ∧ Seg6.relationRow4824 rho ∧ Seg6.relationRow4825 rho ∧ Seg6.relationRow4826 rho ∧ Seg6.relationRow4827 rho ∧ Seg6.relationRow4828 rho ∧ Seg6.relationRow4829 rho ∧ Seg6.relationRow4830 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830⟩

theorem seg6_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩
        ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩
        ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩
        ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩ := by
  obtain ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830⟩ := seg6_rows161 rho h
  unfold Seg6.relationRow4817 at r4817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817
  unfold Seg6.relationRow4818 at r4818
  unfold Seg6.relationRow4819 at r4819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4819
  unfold Seg6.relationRow4820 at r4820
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4820
  unfold Seg6.relationRow4821 at r4821
  unfold Seg6.relationRow4822 at r4822
  unfold Seg6.relationRow4823 at r4823
  unfold Seg6.relationRow4824 at r4824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824
  unfold Seg6.relationRow4825 at r4825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4825
  unfold Seg6.relationRow4826 at r4826
  unfold Seg6.relationRow4827 at r4827
  unfold Seg6.relationRow4828 at r4828
  unfold Seg6.relationRow4829 at r4829
  unfold Seg6.relationRow4830 at r4830
  have hrung161 (bit : Bool) (hbit : rho 2051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩
        ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩
        ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩
        ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩ := by
    have hnextx : seg6AccX162 rho = seg6AccX161 rho + rho 5223 := by
      unfold seg6AccX162 seg6AccX161
      ring
    have hnexty : seg6AccY162 rho = seg6AccY161 rho + rho 5224 := by
      unfold seg6AccY162 seg6AccY161
      ring
    have hsum : seg6AccX161 rho + seg6AccY161 rho = rho 5216 := by
      unfold seg6AccX161 seg6AccY161
      linear_combination r4817
    have ha0 : (rho 5214 + rho 5215) * (seg6AccX161 rho + seg6AccY161 rho) = rho 5217 := by
      rw [hsum]
      linear_combination r4818
    have ha1 : rho 5215 * seg6AccX161 rho = rho 5218 := by
      unfold seg6AccX161
      linear_combination r4819
    have ha2 : rho 5214 * seg6AccY161 rho = rho 5219 := by
      unfold seg6AccY161
      linear_combination r4820
    have ha3 : 3021 * rho 5218 * rho 5219 = rho 5220 := by
      linear_combination r4821
    have ha4 : rho 5221 * (1 + rho 5220) = rho 5218 + rho 5219 := by
      linear_combination r4822
    have ha5 : rho 5222 * (1 - rho 5220) = rho 5217 - rho 5218 - rho 5219 := by
      linear_combination r4823
    have haddx :
        rho 5221 * (1 + 3021 * (rho 5215 * seg6AccX161 rho) * (rho 5214 * seg6AccY161 rho)) =
          rho 5215 * seg6AccX161 rho + rho 5214 * seg6AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5222 * (1 - 3021 * (rho 5215 * seg6AccX161 rho) * (rho 5214 * seg6AccY161 rho)) =
          (-1) * (rho 5215 * seg6AccX161 rho) - rho 5214 * seg6AccY161 rho +
            (seg6AccY161 rho - seg6AccX161 rho * (-1)) * (rho 5214 + rho 5215) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5222 * (1 - rho 5220) = rho 5217 - rho 5218 - rho 5219 := ha5
        _ = (-1) * rho 5218 - rho 5219 + (seg6AccY161 rho - seg6AccX161 rho * (-1)) * (rho 5214 + rho 5215) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX162 rho = seg6AccX161 rho - Bool.toZMod bit * (seg6AccX161 rho - rho 5221) := by
      have hd : rho 5223 = Bool.toZMod bit * (rho 5221 - seg6AccX161 rho) := by
        rw [← hbit]
        unfold seg6AccX161
        linear_combination -r4824
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY162 rho = seg6AccY161 rho - Bool.toZMod bit * (seg6AccY161 rho - rho 5222) := by
      have hd : rho 5224 = Bool.toZMod bit * (rho 5222 - seg6AccY161 rho) := by
        rw [← hbit]
        unfold seg6AccY161
        linear_combination -r4825
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5214 * rho 5215 = rho 5225 := by linear_combination r4826
    have hd1 : rho 5214 * rho 5214 = rho 5226 := by linear_combination r4827
    have hd2 : rho 5215 * rho 5215 = rho 5227 := by linear_combination r4828
    have hd3 : rho 5228 * (rho 5215 * rho 5215 + rho 5214 * rho 5214 * (-1)) = 2 * (rho 5214 * rho 5215) := by
      rw [hd0, hd1, hd2]
      linear_combination r4829
    have hd4 : rho 5229 * (2 - (rho 5215 * rho 5215 + rho 5214 * rho 5214 * (-1))) = rho 5215 * rho 5215 - rho 5214 * rho 5214 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4830
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX161 rho : Seg6.F), (seg6AccY161 rho : Seg6.F)⟩
      ⟨(rho 5214 : Seg6.F), (rho 5215 : Seg6.F)⟩
      ⟨(rho 5221 : Seg6.F), (rho 5222 : Seg6.F)⟩
      ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩
      ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg6_rows162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4831 rho ∧ Seg6.relationRow4832 rho ∧ Seg6.relationRow4833 rho ∧ Seg6.relationRow4834 rho ∧ Seg6.relationRow4835 rho ∧ Seg6.relationRow4836 rho ∧ Seg6.relationRow4837 rho ∧ Seg6.relationRow4838 rho ∧ Seg6.relationRow4839 rho ∧ Seg6.relationRow4840 rho ∧ Seg6.relationRow4841 rho ∧ Seg6.relationRow4842 rho ∧ Seg6.relationRow4843 rho ∧ Seg6.relationRow4844 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844⟩

theorem seg6_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩
        ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩
        ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩
        ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩ := by
  obtain ⟨r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844⟩ := seg6_rows162 rho h
  unfold Seg6.relationRow4831 at r4831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831
  unfold Seg6.relationRow4832 at r4832
  unfold Seg6.relationRow4833 at r4833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4833
  unfold Seg6.relationRow4834 at r4834
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4834
  unfold Seg6.relationRow4835 at r4835
  unfold Seg6.relationRow4836 at r4836
  unfold Seg6.relationRow4837 at r4837
  unfold Seg6.relationRow4838 at r4838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4838
  unfold Seg6.relationRow4839 at r4839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4839
  unfold Seg6.relationRow4840 at r4840
  unfold Seg6.relationRow4841 at r4841
  unfold Seg6.relationRow4842 at r4842
  unfold Seg6.relationRow4843 at r4843
  unfold Seg6.relationRow4844 at r4844
  have hrung162 (bit : Bool) (hbit : rho 2052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩
        ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩
        ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩
        ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩ := by
    have hnextx : seg6AccX163 rho = seg6AccX162 rho + rho 5237 := by
      unfold seg6AccX163 seg6AccX162
      ring
    have hnexty : seg6AccY163 rho = seg6AccY162 rho + rho 5238 := by
      unfold seg6AccY163 seg6AccY162
      ring
    have hsum : seg6AccX162 rho + seg6AccY162 rho = rho 5230 := by
      unfold seg6AccX162 seg6AccY162
      linear_combination r4831
    have ha0 : (rho 5228 + rho 5229) * (seg6AccX162 rho + seg6AccY162 rho) = rho 5231 := by
      rw [hsum]
      linear_combination r4832
    have ha1 : rho 5229 * seg6AccX162 rho = rho 5232 := by
      unfold seg6AccX162
      linear_combination r4833
    have ha2 : rho 5228 * seg6AccY162 rho = rho 5233 := by
      unfold seg6AccY162
      linear_combination r4834
    have ha3 : 3021 * rho 5232 * rho 5233 = rho 5234 := by
      linear_combination r4835
    have ha4 : rho 5235 * (1 + rho 5234) = rho 5232 + rho 5233 := by
      linear_combination r4836
    have ha5 : rho 5236 * (1 - rho 5234) = rho 5231 - rho 5232 - rho 5233 := by
      linear_combination r4837
    have haddx :
        rho 5235 * (1 + 3021 * (rho 5229 * seg6AccX162 rho) * (rho 5228 * seg6AccY162 rho)) =
          rho 5229 * seg6AccX162 rho + rho 5228 * seg6AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5236 * (1 - 3021 * (rho 5229 * seg6AccX162 rho) * (rho 5228 * seg6AccY162 rho)) =
          (-1) * (rho 5229 * seg6AccX162 rho) - rho 5228 * seg6AccY162 rho +
            (seg6AccY162 rho - seg6AccX162 rho * (-1)) * (rho 5228 + rho 5229) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5236 * (1 - rho 5234) = rho 5231 - rho 5232 - rho 5233 := ha5
        _ = (-1) * rho 5232 - rho 5233 + (seg6AccY162 rho - seg6AccX162 rho * (-1)) * (rho 5228 + rho 5229) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX163 rho = seg6AccX162 rho - Bool.toZMod bit * (seg6AccX162 rho - rho 5235) := by
      have hd : rho 5237 = Bool.toZMod bit * (rho 5235 - seg6AccX162 rho) := by
        rw [← hbit]
        unfold seg6AccX162
        linear_combination -r4838
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY163 rho = seg6AccY162 rho - Bool.toZMod bit * (seg6AccY162 rho - rho 5236) := by
      have hd : rho 5238 = Bool.toZMod bit * (rho 5236 - seg6AccY162 rho) := by
        rw [← hbit]
        unfold seg6AccY162
        linear_combination -r4839
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5228 * rho 5229 = rho 5239 := by linear_combination r4840
    have hd1 : rho 5228 * rho 5228 = rho 5240 := by linear_combination r4841
    have hd2 : rho 5229 * rho 5229 = rho 5241 := by linear_combination r4842
    have hd3 : rho 5242 * (rho 5229 * rho 5229 + rho 5228 * rho 5228 * (-1)) = 2 * (rho 5228 * rho 5229) := by
      rw [hd0, hd1, hd2]
      linear_combination r4843
    have hd4 : rho 5243 * (2 - (rho 5229 * rho 5229 + rho 5228 * rho 5228 * (-1))) = rho 5229 * rho 5229 - rho 5228 * rho 5228 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4844
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX162 rho : Seg6.F), (seg6AccY162 rho : Seg6.F)⟩
      ⟨(rho 5228 : Seg6.F), (rho 5229 : Seg6.F)⟩
      ⟨(rho 5235 : Seg6.F), (rho 5236 : Seg6.F)⟩
      ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩
      ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg6_rows163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4845 rho ∧ Seg6.relationRow4846 rho ∧ Seg6.relationRow4847 rho ∧ Seg6.relationRow4848 rho ∧ Seg6.relationRow4849 rho ∧ Seg6.relationRow4850 rho ∧ Seg6.relationRow4851 rho ∧ Seg6.relationRow4852 rho ∧ Seg6.relationRow4853 rho ∧ Seg6.relationRow4854 rho ∧ Seg6.relationRow4855 rho ∧ Seg6.relationRow4856 rho ∧ Seg6.relationRow4857 rho ∧ Seg6.relationRow4858 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858⟩

theorem seg6_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩
        ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩
        ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩
        ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩ := by
  obtain ⟨r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858⟩ := seg6_rows163 rho h
  unfold Seg6.relationRow4845 at r4845
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4845
  unfold Seg6.relationRow4846 at r4846
  unfold Seg6.relationRow4847 at r4847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4847
  unfold Seg6.relationRow4848 at r4848
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4848
  unfold Seg6.relationRow4849 at r4849
  unfold Seg6.relationRow4850 at r4850
  unfold Seg6.relationRow4851 at r4851
  unfold Seg6.relationRow4852 at r4852
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4852
  unfold Seg6.relationRow4853 at r4853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4853
  unfold Seg6.relationRow4854 at r4854
  unfold Seg6.relationRow4855 at r4855
  unfold Seg6.relationRow4856 at r4856
  unfold Seg6.relationRow4857 at r4857
  unfold Seg6.relationRow4858 at r4858
  have hrung163 (bit : Bool) (hbit : rho 2053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩
        ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩
        ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩
        ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩ := by
    have hnextx : seg6AccX164 rho = seg6AccX163 rho + rho 5251 := by
      unfold seg6AccX164 seg6AccX163
      ring
    have hnexty : seg6AccY164 rho = seg6AccY163 rho + rho 5252 := by
      unfold seg6AccY164 seg6AccY163
      ring
    have hsum : seg6AccX163 rho + seg6AccY163 rho = rho 5244 := by
      unfold seg6AccX163 seg6AccY163
      linear_combination r4845
    have ha0 : (rho 5242 + rho 5243) * (seg6AccX163 rho + seg6AccY163 rho) = rho 5245 := by
      rw [hsum]
      linear_combination r4846
    have ha1 : rho 5243 * seg6AccX163 rho = rho 5246 := by
      unfold seg6AccX163
      linear_combination r4847
    have ha2 : rho 5242 * seg6AccY163 rho = rho 5247 := by
      unfold seg6AccY163
      linear_combination r4848
    have ha3 : 3021 * rho 5246 * rho 5247 = rho 5248 := by
      linear_combination r4849
    have ha4 : rho 5249 * (1 + rho 5248) = rho 5246 + rho 5247 := by
      linear_combination r4850
    have ha5 : rho 5250 * (1 - rho 5248) = rho 5245 - rho 5246 - rho 5247 := by
      linear_combination r4851
    have haddx :
        rho 5249 * (1 + 3021 * (rho 5243 * seg6AccX163 rho) * (rho 5242 * seg6AccY163 rho)) =
          rho 5243 * seg6AccX163 rho + rho 5242 * seg6AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5250 * (1 - 3021 * (rho 5243 * seg6AccX163 rho) * (rho 5242 * seg6AccY163 rho)) =
          (-1) * (rho 5243 * seg6AccX163 rho) - rho 5242 * seg6AccY163 rho +
            (seg6AccY163 rho - seg6AccX163 rho * (-1)) * (rho 5242 + rho 5243) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5250 * (1 - rho 5248) = rho 5245 - rho 5246 - rho 5247 := ha5
        _ = (-1) * rho 5246 - rho 5247 + (seg6AccY163 rho - seg6AccX163 rho * (-1)) * (rho 5242 + rho 5243) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX164 rho = seg6AccX163 rho - Bool.toZMod bit * (seg6AccX163 rho - rho 5249) := by
      have hd : rho 5251 = Bool.toZMod bit * (rho 5249 - seg6AccX163 rho) := by
        rw [← hbit]
        unfold seg6AccX163
        linear_combination -r4852
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY164 rho = seg6AccY163 rho - Bool.toZMod bit * (seg6AccY163 rho - rho 5250) := by
      have hd : rho 5252 = Bool.toZMod bit * (rho 5250 - seg6AccY163 rho) := by
        rw [← hbit]
        unfold seg6AccY163
        linear_combination -r4853
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5242 * rho 5243 = rho 5253 := by linear_combination r4854
    have hd1 : rho 5242 * rho 5242 = rho 5254 := by linear_combination r4855
    have hd2 : rho 5243 * rho 5243 = rho 5255 := by linear_combination r4856
    have hd3 : rho 5256 * (rho 5243 * rho 5243 + rho 5242 * rho 5242 * (-1)) = 2 * (rho 5242 * rho 5243) := by
      rw [hd0, hd1, hd2]
      linear_combination r4857
    have hd4 : rho 5257 * (2 - (rho 5243 * rho 5243 + rho 5242 * rho 5242 * (-1))) = rho 5243 * rho 5243 - rho 5242 * rho 5242 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4858
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX163 rho : Seg6.F), (seg6AccY163 rho : Seg6.F)⟩
      ⟨(rho 5242 : Seg6.F), (rho 5243 : Seg6.F)⟩
      ⟨(rho 5249 : Seg6.F), (rho 5250 : Seg6.F)⟩
      ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩
      ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg6_rows164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4859 rho ∧ Seg6.relationRow4860 rho ∧ Seg6.relationRow4861 rho ∧ Seg6.relationRow4862 rho ∧ Seg6.relationRow4863 rho ∧ Seg6.relationRow4864 rho ∧ Seg6.relationRow4865 rho ∧ Seg6.relationRow4866 rho ∧ Seg6.relationRow4867 rho ∧ Seg6.relationRow4868 rho ∧ Seg6.relationRow4869 rho ∧ Seg6.relationRow4870 rho ∧ Seg6.relationRow4871 rho ∧ Seg6.relationRow4872 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, _, _, _, _, _, _, _⟩
  exact ⟨r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872⟩

theorem seg6_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩
        ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩
        ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩
        ⟨(rho 5270 : Seg6.F), (rho 5271 : Seg6.F)⟩ := by
  obtain ⟨r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872⟩ := seg6_rows164 rho h
  unfold Seg6.relationRow4859 at r4859
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4859
  unfold Seg6.relationRow4860 at r4860
  unfold Seg6.relationRow4861 at r4861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4861
  unfold Seg6.relationRow4862 at r4862
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4862
  unfold Seg6.relationRow4863 at r4863
  unfold Seg6.relationRow4864 at r4864
  unfold Seg6.relationRow4865 at r4865
  unfold Seg6.relationRow4866 at r4866
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4866
  unfold Seg6.relationRow4867 at r4867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4867
  unfold Seg6.relationRow4868 at r4868
  unfold Seg6.relationRow4869 at r4869
  unfold Seg6.relationRow4870 at r4870
  unfold Seg6.relationRow4871 at r4871
  unfold Seg6.relationRow4872 at r4872
  have hrung164 (bit : Bool) (hbit : rho 2054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩
        ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩
        ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩
        ⟨(rho 5270 : Seg6.F), (rho 5271 : Seg6.F)⟩ := by
    have hnextx : seg6AccX165 rho = seg6AccX164 rho + rho 5265 := by
      unfold seg6AccX165 seg6AccX164
      ring
    have hnexty : seg6AccY165 rho = seg6AccY164 rho + rho 5266 := by
      unfold seg6AccY165 seg6AccY164
      ring
    have hsum : seg6AccX164 rho + seg6AccY164 rho = rho 5258 := by
      unfold seg6AccX164 seg6AccY164
      linear_combination r4859
    have ha0 : (rho 5256 + rho 5257) * (seg6AccX164 rho + seg6AccY164 rho) = rho 5259 := by
      rw [hsum]
      linear_combination r4860
    have ha1 : rho 5257 * seg6AccX164 rho = rho 5260 := by
      unfold seg6AccX164
      linear_combination r4861
    have ha2 : rho 5256 * seg6AccY164 rho = rho 5261 := by
      unfold seg6AccY164
      linear_combination r4862
    have ha3 : 3021 * rho 5260 * rho 5261 = rho 5262 := by
      linear_combination r4863
    have ha4 : rho 5263 * (1 + rho 5262) = rho 5260 + rho 5261 := by
      linear_combination r4864
    have ha5 : rho 5264 * (1 - rho 5262) = rho 5259 - rho 5260 - rho 5261 := by
      linear_combination r4865
    have haddx :
        rho 5263 * (1 + 3021 * (rho 5257 * seg6AccX164 rho) * (rho 5256 * seg6AccY164 rho)) =
          rho 5257 * seg6AccX164 rho + rho 5256 * seg6AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5264 * (1 - 3021 * (rho 5257 * seg6AccX164 rho) * (rho 5256 * seg6AccY164 rho)) =
          (-1) * (rho 5257 * seg6AccX164 rho) - rho 5256 * seg6AccY164 rho +
            (seg6AccY164 rho - seg6AccX164 rho * (-1)) * (rho 5256 + rho 5257) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5264 * (1 - rho 5262) = rho 5259 - rho 5260 - rho 5261 := ha5
        _ = (-1) * rho 5260 - rho 5261 + (seg6AccY164 rho - seg6AccX164 rho * (-1)) * (rho 5256 + rho 5257) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX165 rho = seg6AccX164 rho - Bool.toZMod bit * (seg6AccX164 rho - rho 5263) := by
      have hd : rho 5265 = Bool.toZMod bit * (rho 5263 - seg6AccX164 rho) := by
        rw [← hbit]
        unfold seg6AccX164
        linear_combination -r4866
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY165 rho = seg6AccY164 rho - Bool.toZMod bit * (seg6AccY164 rho - rho 5264) := by
      have hd : rho 5266 = Bool.toZMod bit * (rho 5264 - seg6AccY164 rho) := by
        rw [← hbit]
        unfold seg6AccY164
        linear_combination -r4867
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5256 * rho 5257 = rho 5267 := by linear_combination r4868
    have hd1 : rho 5256 * rho 5256 = rho 5268 := by linear_combination r4869
    have hd2 : rho 5257 * rho 5257 = rho 5269 := by linear_combination r4870
    have hd3 : rho 5270 * (rho 5257 * rho 5257 + rho 5256 * rho 5256 * (-1)) = 2 * (rho 5256 * rho 5257) := by
      rw [hd0, hd1, hd2]
      linear_combination r4871
    have hd4 : rho 5271 * (2 - (rho 5257 * rho 5257 + rho 5256 * rho 5256 * (-1))) = rho 5257 * rho 5257 - rho 5256 * rho 5256 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4872
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX164 rho : Seg6.F), (seg6AccY164 rho : Seg6.F)⟩
      ⟨(rho 5256 : Seg6.F), (rho 5257 : Seg6.F)⟩
      ⟨(rho 5263 : Seg6.F), (rho 5264 : Seg6.F)⟩
      ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩
      ⟨(rho 5270 : Seg6.F), (rho 5271 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg6_hstep_c14 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 154 ≤ i → i < 165 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg6_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg6_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg6_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg6_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg6_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
  · exact seg6_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg6_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg6_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg6_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg6_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
