import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4824 rho ∧ Seg34.relationRow4825 rho ∧ Seg34.relationRow4826 rho ∧ Seg34.relationRow4827 rho ∧ Seg34.relationRow4828 rho ∧ Seg34.relationRow4829 rho ∧ Seg34.relationRow4830 rho ∧ Seg34.relationRow4831 rho ∧ Seg34.relationRow4832 rho ∧ Seg34.relationRow4833 rho ∧ Seg34.relationRow4834 rho ∧ Seg34.relationRow4835 rho ∧ Seg34.relationRow4836 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩

theorem seg34_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
        ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩ := by
  obtain ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩ := seg34_rows143 rho h
  unfold Seg34.relationRow4824 at r4824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824
  unfold Seg34.relationRow4825 at r4825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4825
  unfold Seg34.relationRow4826 at r4826
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4826
  unfold Seg34.relationRow4827 at r4827
  unfold Seg34.relationRow4828 at r4828
  unfold Seg34.relationRow4829 at r4829
  unfold Seg34.relationRow4830 at r4830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4830
  unfold Seg34.relationRow4831 at r4831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831
  unfold Seg34.relationRow4832 at r4832
  unfold Seg34.relationRow4833 at r4833
  unfold Seg34.relationRow4834 at r4834
  unfold Seg34.relationRow4835 at r4835
  unfold Seg34.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 34135 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
        ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩ := by
    have hnextx : seg34AccX144 rho = seg34AccX143 rho + rho 36102 := by
      unfold seg34AccX144 seg34AccX143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 143]
      ring
    have hnexty : seg34AccY144 rho = seg34AccY143 rho + rho 36103 := by
      unfold seg34AccY144 seg34AccY143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 143]
      ring
    have ha0 : (rho 36094 + rho 36095) * (seg34AccX143 rho + seg34AccY143 rho) = rho 36096 := by
      unfold seg34AccX143 seg34AccY143
      linear_combination r4824
    have ha1 : rho 36095 * seg34AccX143 rho = rho 36097 := by
      unfold seg34AccX143
      linear_combination r4825
    have ha2 : rho 36094 * seg34AccY143 rho = rho 36098 := by
      unfold seg34AccY143
      linear_combination r4826
    have ha3 : 3021 * rho 36097 * rho 36098 = rho 36099 := by
      linear_combination r4827
    have ha4 : rho 36100 * (1 + rho 36099) = rho 36097 + rho 36098 := by
      linear_combination r4828
    have ha5 : rho 36101 * (1 - rho 36099) = rho 36096 - rho 36097 - rho 36098 := by
      linear_combination r4829
    have haddx :
        rho 36100 * (1 + 3021 * (rho 36095 * seg34AccX143 rho) * (rho 36094 * seg34AccY143 rho)) =
          rho 36095 * seg34AccX143 rho + rho 36094 * seg34AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36101 * (1 - 3021 * (rho 36095 * seg34AccX143 rho) * (rho 36094 * seg34AccY143 rho)) =
          (-1) * (rho 36095 * seg34AccX143 rho) - rho 36094 * seg34AccY143 rho +
            (seg34AccY143 rho - seg34AccX143 rho * (-1)) * (rho 36094 + rho 36095) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36101 * (1 - rho 36099) = rho 36096 - rho 36097 - rho 36098 := ha5
        _ = (-1) * rho 36097 - rho 36098 + (seg34AccY143 rho - seg34AccX143 rho * (-1)) * (rho 36094 + rho 36095) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX144 rho = seg34AccX143 rho - Bool.toZMod bit * (seg34AccX143 rho - rho 36100) := by
      have hd : rho 36102 = Bool.toZMod bit * (rho 36100 - seg34AccX143 rho) := by
        rw [← hbit]
        unfold seg34AccX143
        linear_combination -r4830
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY144 rho = seg34AccY143 rho - Bool.toZMod bit * (seg34AccY143 rho - rho 36101) := by
      have hd : rho 36103 = Bool.toZMod bit * (rho 36101 - seg34AccY143 rho) := by
        rw [← hbit]
        unfold seg34AccY143
        linear_combination -r4831
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36094 * rho 36095 = rho 36104 := by linear_combination r4832
    have hd1 : rho 36094 * rho 36094 = rho 36105 := by linear_combination r4833
    have hd2 : rho 36095 * rho 36095 = rho 36106 := by linear_combination r4834
    have hd3 : rho 36107 * (rho 36095 * rho 36095 + rho 36094 * rho 36094 * (-1)) = 2 * (rho 36094 * rho 36095) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 36108 * (2 - (rho 36095 * rho 36095 + rho 36094 * rho 36094 * (-1))) = rho 36095 * rho 36095 - rho 36094 * rho 36094 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
      ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
      ⟨(rho 36100 : Seg34.F), (rho 36101 : Seg34.F)⟩
      ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
      ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg34_rows144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4837 rho ∧ Seg34.relationRow4838 rho ∧ Seg34.relationRow4839 rho ∧ Seg34.relationRow4840 rho ∧ Seg34.relationRow4841 rho ∧ Seg34.relationRow4842 rho ∧ Seg34.relationRow4843 rho ∧ Seg34.relationRow4844 rho ∧ Seg34.relationRow4845 rho ∧ Seg34.relationRow4846 rho ∧ Seg34.relationRow4847 rho ∧ Seg34.relationRow4848 rho ∧ Seg34.relationRow4849 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩

theorem seg34_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩ := by
  obtain ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩ := seg34_rows144 rho h
  unfold Seg34.relationRow4837 at r4837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4837
  unfold Seg34.relationRow4838 at r4838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4838
  unfold Seg34.relationRow4839 at r4839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4839
  unfold Seg34.relationRow4840 at r4840
  unfold Seg34.relationRow4841 at r4841
  unfold Seg34.relationRow4842 at r4842
  unfold Seg34.relationRow4843 at r4843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4843
  unfold Seg34.relationRow4844 at r4844
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4844
  unfold Seg34.relationRow4845 at r4845
  unfold Seg34.relationRow4846 at r4846
  unfold Seg34.relationRow4847 at r4847
  unfold Seg34.relationRow4848 at r4848
  unfold Seg34.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 34136 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩ := by
    have hnextx : seg34AccX145 rho = seg34AccX144 rho + rho 36115 := by
      unfold seg34AccX145 seg34AccX144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 144]
      ring
    have hnexty : seg34AccY145 rho = seg34AccY144 rho + rho 36116 := by
      unfold seg34AccY145 seg34AccY144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 144]
      ring
    have ha0 : (rho 36107 + rho 36108) * (seg34AccX144 rho + seg34AccY144 rho) = rho 36109 := by
      unfold seg34AccX144 seg34AccY144
      linear_combination r4837
    have ha1 : rho 36108 * seg34AccX144 rho = rho 36110 := by
      unfold seg34AccX144
      linear_combination r4838
    have ha2 : rho 36107 * seg34AccY144 rho = rho 36111 := by
      unfold seg34AccY144
      linear_combination r4839
    have ha3 : 3021 * rho 36110 * rho 36111 = rho 36112 := by
      linear_combination r4840
    have ha4 : rho 36113 * (1 + rho 36112) = rho 36110 + rho 36111 := by
      linear_combination r4841
    have ha5 : rho 36114 * (1 - rho 36112) = rho 36109 - rho 36110 - rho 36111 := by
      linear_combination r4842
    have haddx :
        rho 36113 * (1 + 3021 * (rho 36108 * seg34AccX144 rho) * (rho 36107 * seg34AccY144 rho)) =
          rho 36108 * seg34AccX144 rho + rho 36107 * seg34AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36114 * (1 - 3021 * (rho 36108 * seg34AccX144 rho) * (rho 36107 * seg34AccY144 rho)) =
          (-1) * (rho 36108 * seg34AccX144 rho) - rho 36107 * seg34AccY144 rho +
            (seg34AccY144 rho - seg34AccX144 rho * (-1)) * (rho 36107 + rho 36108) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36114 * (1 - rho 36112) = rho 36109 - rho 36110 - rho 36111 := ha5
        _ = (-1) * rho 36110 - rho 36111 + (seg34AccY144 rho - seg34AccX144 rho * (-1)) * (rho 36107 + rho 36108) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX145 rho = seg34AccX144 rho - Bool.toZMod bit * (seg34AccX144 rho - rho 36113) := by
      have hd : rho 36115 = Bool.toZMod bit * (rho 36113 - seg34AccX144 rho) := by
        rw [← hbit]
        unfold seg34AccX144
        linear_combination -r4843
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY145 rho = seg34AccY144 rho - Bool.toZMod bit * (seg34AccY144 rho - rho 36114) := by
      have hd : rho 36116 = Bool.toZMod bit * (rho 36114 - seg34AccY144 rho) := by
        rw [← hbit]
        unfold seg34AccY144
        linear_combination -r4844
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36107 * rho 36108 = rho 36117 := by linear_combination r4845
    have hd1 : rho 36107 * rho 36107 = rho 36118 := by linear_combination r4846
    have hd2 : rho 36108 * rho 36108 = rho 36119 := by linear_combination r4847
    have hd3 : rho 36120 * (rho 36108 * rho 36108 + rho 36107 * rho 36107 * (-1)) = 2 * (rho 36107 * rho 36108) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 36121 * (2 - (rho 36108 * rho 36108 + rho 36107 * rho 36107 * (-1))) = rho 36108 * rho 36108 - rho 36107 * rho 36107 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
      ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
      ⟨(rho 36113 : Seg34.F), (rho 36114 : Seg34.F)⟩
      ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
      ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg34_rows145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4850 rho ∧ Seg34.relationRow4851 rho ∧ Seg34.relationRow4852 rho ∧ Seg34.relationRow4853 rho ∧ Seg34.relationRow4854 rho ∧ Seg34.relationRow4855 rho ∧ Seg34.relationRow4856 rho ∧ Seg34.relationRow4857 rho ∧ Seg34.relationRow4858 rho ∧ Seg34.relationRow4859 rho ∧ Seg34.relationRow4860 rho ∧ Seg34.relationRow4861 rho ∧ Seg34.relationRow4862 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩

theorem seg34_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩ := by
  obtain ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩ := seg34_rows145 rho h
  unfold Seg34.relationRow4850 at r4850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4850
  unfold Seg34.relationRow4851 at r4851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4851
  unfold Seg34.relationRow4852 at r4852
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4852
  unfold Seg34.relationRow4853 at r4853
  unfold Seg34.relationRow4854 at r4854
  unfold Seg34.relationRow4855 at r4855
  unfold Seg34.relationRow4856 at r4856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4856
  unfold Seg34.relationRow4857 at r4857
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4857
  unfold Seg34.relationRow4858 at r4858
  unfold Seg34.relationRow4859 at r4859
  unfold Seg34.relationRow4860 at r4860
  unfold Seg34.relationRow4861 at r4861
  unfold Seg34.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 34137 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩ := by
    have hnextx : seg34AccX146 rho = seg34AccX145 rho + rho 36128 := by
      unfold seg34AccX146 seg34AccX145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 145]
      ring
    have hnexty : seg34AccY146 rho = seg34AccY145 rho + rho 36129 := by
      unfold seg34AccY146 seg34AccY145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 145]
      ring
    have ha0 : (rho 36120 + rho 36121) * (seg34AccX145 rho + seg34AccY145 rho) = rho 36122 := by
      unfold seg34AccX145 seg34AccY145
      linear_combination r4850
    have ha1 : rho 36121 * seg34AccX145 rho = rho 36123 := by
      unfold seg34AccX145
      linear_combination r4851
    have ha2 : rho 36120 * seg34AccY145 rho = rho 36124 := by
      unfold seg34AccY145
      linear_combination r4852
    have ha3 : 3021 * rho 36123 * rho 36124 = rho 36125 := by
      linear_combination r4853
    have ha4 : rho 36126 * (1 + rho 36125) = rho 36123 + rho 36124 := by
      linear_combination r4854
    have ha5 : rho 36127 * (1 - rho 36125) = rho 36122 - rho 36123 - rho 36124 := by
      linear_combination r4855
    have haddx :
        rho 36126 * (1 + 3021 * (rho 36121 * seg34AccX145 rho) * (rho 36120 * seg34AccY145 rho)) =
          rho 36121 * seg34AccX145 rho + rho 36120 * seg34AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36127 * (1 - 3021 * (rho 36121 * seg34AccX145 rho) * (rho 36120 * seg34AccY145 rho)) =
          (-1) * (rho 36121 * seg34AccX145 rho) - rho 36120 * seg34AccY145 rho +
            (seg34AccY145 rho - seg34AccX145 rho * (-1)) * (rho 36120 + rho 36121) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36127 * (1 - rho 36125) = rho 36122 - rho 36123 - rho 36124 := ha5
        _ = (-1) * rho 36123 - rho 36124 + (seg34AccY145 rho - seg34AccX145 rho * (-1)) * (rho 36120 + rho 36121) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX146 rho = seg34AccX145 rho - Bool.toZMod bit * (seg34AccX145 rho - rho 36126) := by
      have hd : rho 36128 = Bool.toZMod bit * (rho 36126 - seg34AccX145 rho) := by
        rw [← hbit]
        unfold seg34AccX145
        linear_combination -r4856
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY146 rho = seg34AccY145 rho - Bool.toZMod bit * (seg34AccY145 rho - rho 36127) := by
      have hd : rho 36129 = Bool.toZMod bit * (rho 36127 - seg34AccY145 rho) := by
        rw [← hbit]
        unfold seg34AccY145
        linear_combination -r4857
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36120 * rho 36121 = rho 36130 := by linear_combination r4858
    have hd1 : rho 36120 * rho 36120 = rho 36131 := by linear_combination r4859
    have hd2 : rho 36121 * rho 36121 = rho 36132 := by linear_combination r4860
    have hd3 : rho 36133 * (rho 36121 * rho 36121 + rho 36120 * rho 36120 * (-1)) = 2 * (rho 36120 * rho 36121) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 36134 * (2 - (rho 36121 * rho 36121 + rho 36120 * rho 36120 * (-1))) = rho 36121 * rho 36121 - rho 36120 * rho 36120 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
      ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
      ⟨(rho 36126 : Seg34.F), (rho 36127 : Seg34.F)⟩
      ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
      ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg34_rows146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4863 rho ∧ Seg34.relationRow4864 rho ∧ Seg34.relationRow4865 rho ∧ Seg34.relationRow4866 rho ∧ Seg34.relationRow4867 rho ∧ Seg34.relationRow4868 rho ∧ Seg34.relationRow4869 rho ∧ Seg34.relationRow4870 rho ∧ Seg34.relationRow4871 rho ∧ Seg34.relationRow4872 rho ∧ Seg34.relationRow4873 rho ∧ Seg34.relationRow4874 rho ∧ Seg34.relationRow4875 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  exact ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩

theorem seg34_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩ := by
  obtain ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩ := seg34_rows146 rho h
  unfold Seg34.relationRow4863 at r4863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4863
  unfold Seg34.relationRow4864 at r4864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4864
  unfold Seg34.relationRow4865 at r4865
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4865
  unfold Seg34.relationRow4866 at r4866
  unfold Seg34.relationRow4867 at r4867
  unfold Seg34.relationRow4868 at r4868
  unfold Seg34.relationRow4869 at r4869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4869
  unfold Seg34.relationRow4870 at r4870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4870
  unfold Seg34.relationRow4871 at r4871
  unfold Seg34.relationRow4872 at r4872
  unfold Seg34.relationRow4873 at r4873
  unfold Seg34.relationRow4874 at r4874
  unfold Seg34.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 34138 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩ := by
    have hnextx : seg34AccX147 rho = seg34AccX146 rho + rho 36141 := by
      unfold seg34AccX147 seg34AccX146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 146]
      ring
    have hnexty : seg34AccY147 rho = seg34AccY146 rho + rho 36142 := by
      unfold seg34AccY147 seg34AccY146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 146]
      ring
    have ha0 : (rho 36133 + rho 36134) * (seg34AccX146 rho + seg34AccY146 rho) = rho 36135 := by
      unfold seg34AccX146 seg34AccY146
      linear_combination r4863
    have ha1 : rho 36134 * seg34AccX146 rho = rho 36136 := by
      unfold seg34AccX146
      linear_combination r4864
    have ha2 : rho 36133 * seg34AccY146 rho = rho 36137 := by
      unfold seg34AccY146
      linear_combination r4865
    have ha3 : 3021 * rho 36136 * rho 36137 = rho 36138 := by
      linear_combination r4866
    have ha4 : rho 36139 * (1 + rho 36138) = rho 36136 + rho 36137 := by
      linear_combination r4867
    have ha5 : rho 36140 * (1 - rho 36138) = rho 36135 - rho 36136 - rho 36137 := by
      linear_combination r4868
    have haddx :
        rho 36139 * (1 + 3021 * (rho 36134 * seg34AccX146 rho) * (rho 36133 * seg34AccY146 rho)) =
          rho 36134 * seg34AccX146 rho + rho 36133 * seg34AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36140 * (1 - 3021 * (rho 36134 * seg34AccX146 rho) * (rho 36133 * seg34AccY146 rho)) =
          (-1) * (rho 36134 * seg34AccX146 rho) - rho 36133 * seg34AccY146 rho +
            (seg34AccY146 rho - seg34AccX146 rho * (-1)) * (rho 36133 + rho 36134) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36140 * (1 - rho 36138) = rho 36135 - rho 36136 - rho 36137 := ha5
        _ = (-1) * rho 36136 - rho 36137 + (seg34AccY146 rho - seg34AccX146 rho * (-1)) * (rho 36133 + rho 36134) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX147 rho = seg34AccX146 rho - Bool.toZMod bit * (seg34AccX146 rho - rho 36139) := by
      have hd : rho 36141 = Bool.toZMod bit * (rho 36139 - seg34AccX146 rho) := by
        rw [← hbit]
        unfold seg34AccX146
        linear_combination -r4869
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY147 rho = seg34AccY146 rho - Bool.toZMod bit * (seg34AccY146 rho - rho 36140) := by
      have hd : rho 36142 = Bool.toZMod bit * (rho 36140 - seg34AccY146 rho) := by
        rw [← hbit]
        unfold seg34AccY146
        linear_combination -r4870
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36133 * rho 36134 = rho 36143 := by linear_combination r4871
    have hd1 : rho 36133 * rho 36133 = rho 36144 := by linear_combination r4872
    have hd2 : rho 36134 * rho 36134 = rho 36145 := by linear_combination r4873
    have hd3 : rho 36146 * (rho 36134 * rho 36134 + rho 36133 * rho 36133 * (-1)) = 2 * (rho 36133 * rho 36134) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 36147 * (2 - (rho 36134 * rho 36134 + rho 36133 * rho 36133 * (-1))) = rho 36134 * rho 36134 - rho 36133 * rho 36133 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
      ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
      ⟨(rho 36139 : Seg34.F), (rho 36140 : Seg34.F)⟩
      ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
      ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg34_rows147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4876 rho ∧ Seg34.relationRow4877 rho ∧ Seg34.relationRow4878 rho ∧ Seg34.relationRow4879 rho ∧ Seg34.relationRow4880 rho ∧ Seg34.relationRow4881 rho ∧ Seg34.relationRow4882 rho ∧ Seg34.relationRow4883 rho ∧ Seg34.relationRow4884 rho ∧ Seg34.relationRow4885 rho ∧ Seg34.relationRow4886 rho ∧ Seg34.relationRow4887 rho ∧ Seg34.relationRow4888 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩

theorem seg34_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩ := by
  obtain ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩ := seg34_rows147 rho h
  unfold Seg34.relationRow4876 at r4876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876
  unfold Seg34.relationRow4877 at r4877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4877
  unfold Seg34.relationRow4878 at r4878
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4878
  unfold Seg34.relationRow4879 at r4879
  unfold Seg34.relationRow4880 at r4880
  unfold Seg34.relationRow4881 at r4881
  unfold Seg34.relationRow4882 at r4882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4882
  unfold Seg34.relationRow4883 at r4883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4883
  unfold Seg34.relationRow4884 at r4884
  unfold Seg34.relationRow4885 at r4885
  unfold Seg34.relationRow4886 at r4886
  unfold Seg34.relationRow4887 at r4887
  unfold Seg34.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 34139 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩ := by
    have hnextx : seg34AccX148 rho = seg34AccX147 rho + rho 36154 := by
      unfold seg34AccX148 seg34AccX147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 147]
      ring
    have hnexty : seg34AccY148 rho = seg34AccY147 rho + rho 36155 := by
      unfold seg34AccY148 seg34AccY147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 147]
      ring
    have ha0 : (rho 36146 + rho 36147) * (seg34AccX147 rho + seg34AccY147 rho) = rho 36148 := by
      unfold seg34AccX147 seg34AccY147
      linear_combination r4876
    have ha1 : rho 36147 * seg34AccX147 rho = rho 36149 := by
      unfold seg34AccX147
      linear_combination r4877
    have ha2 : rho 36146 * seg34AccY147 rho = rho 36150 := by
      unfold seg34AccY147
      linear_combination r4878
    have ha3 : 3021 * rho 36149 * rho 36150 = rho 36151 := by
      linear_combination r4879
    have ha4 : rho 36152 * (1 + rho 36151) = rho 36149 + rho 36150 := by
      linear_combination r4880
    have ha5 : rho 36153 * (1 - rho 36151) = rho 36148 - rho 36149 - rho 36150 := by
      linear_combination r4881
    have haddx :
        rho 36152 * (1 + 3021 * (rho 36147 * seg34AccX147 rho) * (rho 36146 * seg34AccY147 rho)) =
          rho 36147 * seg34AccX147 rho + rho 36146 * seg34AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36153 * (1 - 3021 * (rho 36147 * seg34AccX147 rho) * (rho 36146 * seg34AccY147 rho)) =
          (-1) * (rho 36147 * seg34AccX147 rho) - rho 36146 * seg34AccY147 rho +
            (seg34AccY147 rho - seg34AccX147 rho * (-1)) * (rho 36146 + rho 36147) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36153 * (1 - rho 36151) = rho 36148 - rho 36149 - rho 36150 := ha5
        _ = (-1) * rho 36149 - rho 36150 + (seg34AccY147 rho - seg34AccX147 rho * (-1)) * (rho 36146 + rho 36147) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX148 rho = seg34AccX147 rho - Bool.toZMod bit * (seg34AccX147 rho - rho 36152) := by
      have hd : rho 36154 = Bool.toZMod bit * (rho 36152 - seg34AccX147 rho) := by
        rw [← hbit]
        unfold seg34AccX147
        linear_combination -r4882
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY148 rho = seg34AccY147 rho - Bool.toZMod bit * (seg34AccY147 rho - rho 36153) := by
      have hd : rho 36155 = Bool.toZMod bit * (rho 36153 - seg34AccY147 rho) := by
        rw [← hbit]
        unfold seg34AccY147
        linear_combination -r4883
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36146 * rho 36147 = rho 36156 := by linear_combination r4884
    have hd1 : rho 36146 * rho 36146 = rho 36157 := by linear_combination r4885
    have hd2 : rho 36147 * rho 36147 = rho 36158 := by linear_combination r4886
    have hd3 : rho 36159 * (rho 36147 * rho 36147 + rho 36146 * rho 36146 * (-1)) = 2 * (rho 36146 * rho 36147) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 36160 * (2 - (rho 36147 * rho 36147 + rho 36146 * rho 36146 * (-1))) = rho 36147 * rho 36147 - rho 36146 * rho 36146 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
      ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
      ⟨(rho 36152 : Seg34.F), (rho 36153 : Seg34.F)⟩
      ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
      ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg34_rows148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4889 rho ∧ Seg34.relationRow4890 rho ∧ Seg34.relationRow4891 rho ∧ Seg34.relationRow4892 rho ∧ Seg34.relationRow4893 rho ∧ Seg34.relationRow4894 rho ∧ Seg34.relationRow4895 rho ∧ Seg34.relationRow4896 rho ∧ Seg34.relationRow4897 rho ∧ Seg34.relationRow4898 rho ∧ Seg34.relationRow4899 rho ∧ Seg34.relationRow4900 rho ∧ Seg34.relationRow4901 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩

theorem seg34_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩ := by
  obtain ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩ := seg34_rows148 rho h
  unfold Seg34.relationRow4889 at r4889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889
  unfold Seg34.relationRow4890 at r4890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4890
  unfold Seg34.relationRow4891 at r4891
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4891
  unfold Seg34.relationRow4892 at r4892
  unfold Seg34.relationRow4893 at r4893
  unfold Seg34.relationRow4894 at r4894
  unfold Seg34.relationRow4895 at r4895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895
  unfold Seg34.relationRow4896 at r4896
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4896
  unfold Seg34.relationRow4897 at r4897
  unfold Seg34.relationRow4898 at r4898
  unfold Seg34.relationRow4899 at r4899
  unfold Seg34.relationRow4900 at r4900
  unfold Seg34.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 34140 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩ := by
    have hnextx : seg34AccX149 rho = seg34AccX148 rho + rho 36167 := by
      unfold seg34AccX149 seg34AccX148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 148]
      ring
    have hnexty : seg34AccY149 rho = seg34AccY148 rho + rho 36168 := by
      unfold seg34AccY149 seg34AccY148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 148]
      ring
    have ha0 : (rho 36159 + rho 36160) * (seg34AccX148 rho + seg34AccY148 rho) = rho 36161 := by
      unfold seg34AccX148 seg34AccY148
      linear_combination r4889
    have ha1 : rho 36160 * seg34AccX148 rho = rho 36162 := by
      unfold seg34AccX148
      linear_combination r4890
    have ha2 : rho 36159 * seg34AccY148 rho = rho 36163 := by
      unfold seg34AccY148
      linear_combination r4891
    have ha3 : 3021 * rho 36162 * rho 36163 = rho 36164 := by
      linear_combination r4892
    have ha4 : rho 36165 * (1 + rho 36164) = rho 36162 + rho 36163 := by
      linear_combination r4893
    have ha5 : rho 36166 * (1 - rho 36164) = rho 36161 - rho 36162 - rho 36163 := by
      linear_combination r4894
    have haddx :
        rho 36165 * (1 + 3021 * (rho 36160 * seg34AccX148 rho) * (rho 36159 * seg34AccY148 rho)) =
          rho 36160 * seg34AccX148 rho + rho 36159 * seg34AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36166 * (1 - 3021 * (rho 36160 * seg34AccX148 rho) * (rho 36159 * seg34AccY148 rho)) =
          (-1) * (rho 36160 * seg34AccX148 rho) - rho 36159 * seg34AccY148 rho +
            (seg34AccY148 rho - seg34AccX148 rho * (-1)) * (rho 36159 + rho 36160) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36166 * (1 - rho 36164) = rho 36161 - rho 36162 - rho 36163 := ha5
        _ = (-1) * rho 36162 - rho 36163 + (seg34AccY148 rho - seg34AccX148 rho * (-1)) * (rho 36159 + rho 36160) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX149 rho = seg34AccX148 rho - Bool.toZMod bit * (seg34AccX148 rho - rho 36165) := by
      have hd : rho 36167 = Bool.toZMod bit * (rho 36165 - seg34AccX148 rho) := by
        rw [← hbit]
        unfold seg34AccX148
        linear_combination -r4895
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY149 rho = seg34AccY148 rho - Bool.toZMod bit * (seg34AccY148 rho - rho 36166) := by
      have hd : rho 36168 = Bool.toZMod bit * (rho 36166 - seg34AccY148 rho) := by
        rw [← hbit]
        unfold seg34AccY148
        linear_combination -r4896
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36159 * rho 36160 = rho 36169 := by linear_combination r4897
    have hd1 : rho 36159 * rho 36159 = rho 36170 := by linear_combination r4898
    have hd2 : rho 36160 * rho 36160 = rho 36171 := by linear_combination r4899
    have hd3 : rho 36172 * (rho 36160 * rho 36160 + rho 36159 * rho 36159 * (-1)) = 2 * (rho 36159 * rho 36160) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 36173 * (2 - (rho 36160 * rho 36160 + rho 36159 * rho 36159 * (-1))) = rho 36160 * rho 36160 - rho 36159 * rho 36159 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
      ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
      ⟨(rho 36165 : Seg34.F), (rho 36166 : Seg34.F)⟩
      ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
      ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg34_rows149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4902 rho ∧ Seg34.relationRow4903 rho ∧ Seg34.relationRow4904 rho ∧ Seg34.relationRow4905 rho ∧ Seg34.relationRow4906 rho ∧ Seg34.relationRow4907 rho ∧ Seg34.relationRow4908 rho ∧ Seg34.relationRow4909 rho ∧ Seg34.relationRow4910 rho ∧ Seg34.relationRow4911 rho ∧ Seg34.relationRow4912 rho ∧ Seg34.relationRow4913 rho ∧ Seg34.relationRow4914 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩

theorem seg34_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34141 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩ := by
  obtain ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩ := seg34_rows149 rho h
  unfold Seg34.relationRow4902 at r4902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4902
  unfold Seg34.relationRow4903 at r4903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4903
  unfold Seg34.relationRow4904 at r4904
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4904
  unfold Seg34.relationRow4905 at r4905
  unfold Seg34.relationRow4906 at r4906
  unfold Seg34.relationRow4907 at r4907
  unfold Seg34.relationRow4908 at r4908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908
  unfold Seg34.relationRow4909 at r4909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909
  unfold Seg34.relationRow4910 at r4910
  unfold Seg34.relationRow4911 at r4911
  unfold Seg34.relationRow4912 at r4912
  unfold Seg34.relationRow4913 at r4913
  unfold Seg34.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 34141 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩ := by
    have hnextx : seg34AccX150 rho = seg34AccX149 rho + rho 36180 := by
      unfold seg34AccX150 seg34AccX149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 149]
      ring
    have hnexty : seg34AccY150 rho = seg34AccY149 rho + rho 36181 := by
      unfold seg34AccY150 seg34AccY149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 149]
      ring
    have ha0 : (rho 36172 + rho 36173) * (seg34AccX149 rho + seg34AccY149 rho) = rho 36174 := by
      unfold seg34AccX149 seg34AccY149
      linear_combination r4902
    have ha1 : rho 36173 * seg34AccX149 rho = rho 36175 := by
      unfold seg34AccX149
      linear_combination r4903
    have ha2 : rho 36172 * seg34AccY149 rho = rho 36176 := by
      unfold seg34AccY149
      linear_combination r4904
    have ha3 : 3021 * rho 36175 * rho 36176 = rho 36177 := by
      linear_combination r4905
    have ha4 : rho 36178 * (1 + rho 36177) = rho 36175 + rho 36176 := by
      linear_combination r4906
    have ha5 : rho 36179 * (1 - rho 36177) = rho 36174 - rho 36175 - rho 36176 := by
      linear_combination r4907
    have haddx :
        rho 36178 * (1 + 3021 * (rho 36173 * seg34AccX149 rho) * (rho 36172 * seg34AccY149 rho)) =
          rho 36173 * seg34AccX149 rho + rho 36172 * seg34AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36179 * (1 - 3021 * (rho 36173 * seg34AccX149 rho) * (rho 36172 * seg34AccY149 rho)) =
          (-1) * (rho 36173 * seg34AccX149 rho) - rho 36172 * seg34AccY149 rho +
            (seg34AccY149 rho - seg34AccX149 rho * (-1)) * (rho 36172 + rho 36173) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36179 * (1 - rho 36177) = rho 36174 - rho 36175 - rho 36176 := ha5
        _ = (-1) * rho 36175 - rho 36176 + (seg34AccY149 rho - seg34AccX149 rho * (-1)) * (rho 36172 + rho 36173) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX150 rho = seg34AccX149 rho - Bool.toZMod bit * (seg34AccX149 rho - rho 36178) := by
      have hd : rho 36180 = Bool.toZMod bit * (rho 36178 - seg34AccX149 rho) := by
        rw [← hbit]
        unfold seg34AccX149
        linear_combination -r4908
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY150 rho = seg34AccY149 rho - Bool.toZMod bit * (seg34AccY149 rho - rho 36179) := by
      have hd : rho 36181 = Bool.toZMod bit * (rho 36179 - seg34AccY149 rho) := by
        rw [← hbit]
        unfold seg34AccY149
        linear_combination -r4909
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36172 * rho 36173 = rho 36182 := by linear_combination r4910
    have hd1 : rho 36172 * rho 36172 = rho 36183 := by linear_combination r4911
    have hd2 : rho 36173 * rho 36173 = rho 36184 := by linear_combination r4912
    have hd3 : rho 36185 * (rho 36173 * rho 36173 + rho 36172 * rho 36172 * (-1)) = 2 * (rho 36172 * rho 36173) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 36186 * (2 - (rho 36173 * rho 36173 + rho 36172 * rho 36172 * (-1))) = rho 36173 * rho 36173 - rho 36172 * rho 36172 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
      ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
      ⟨(rho 36178 : Seg34.F), (rho 36179 : Seg34.F)⟩
      ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
      ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg34_rows150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4915 rho ∧ Seg34.relationRow4916 rho ∧ Seg34.relationRow4917 rho ∧ Seg34.relationRow4918 rho ∧ Seg34.relationRow4919 rho ∧ Seg34.relationRow4920 rho ∧ Seg34.relationRow4921 rho ∧ Seg34.relationRow4922 rho ∧ Seg34.relationRow4923 rho ∧ Seg34.relationRow4924 rho ∧ Seg34.relationRow4925 rho ∧ Seg34.relationRow4926 rho ∧ Seg34.relationRow4927 rho ∧ Seg34.relationRow4928 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩

theorem seg34_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34142 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩ := by
  obtain ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩ := seg34_rows150 rho h
  unfold Seg34.relationRow4915 at r4915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915
  unfold Seg34.relationRow4916 at r4916
  unfold Seg34.relationRow4917 at r4917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4917
  unfold Seg34.relationRow4918 at r4918
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918
  unfold Seg34.relationRow4919 at r4919
  unfold Seg34.relationRow4920 at r4920
  unfold Seg34.relationRow4921 at r4921
  unfold Seg34.relationRow4922 at r4922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922
  unfold Seg34.relationRow4923 at r4923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923
  unfold Seg34.relationRow4924 at r4924
  unfold Seg34.relationRow4925 at r4925
  unfold Seg34.relationRow4926 at r4926
  unfold Seg34.relationRow4927 at r4927
  unfold Seg34.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 34142 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩ := by
    have hnextx : seg34AccX151 rho = seg34AccX150 rho + rho 36194 := by
      unfold seg34AccX151 seg34AccX150
      ring
    have hnexty : seg34AccY151 rho = seg34AccY150 rho + rho 36195 := by
      unfold seg34AccY151 seg34AccY150
      ring
    have hsum : seg34AccX150 rho + seg34AccY150 rho = rho 36187 := by
      unfold seg34AccX150 seg34AccY150
      linear_combination r4915
    have ha0 : (rho 36185 + rho 36186) * (seg34AccX150 rho + seg34AccY150 rho) = rho 36188 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 36186 * seg34AccX150 rho = rho 36189 := by
      unfold seg34AccX150
      linear_combination r4917
    have ha2 : rho 36185 * seg34AccY150 rho = rho 36190 := by
      unfold seg34AccY150
      linear_combination r4918
    have ha3 : 3021 * rho 36189 * rho 36190 = rho 36191 := by
      linear_combination r4919
    have ha4 : rho 36192 * (1 + rho 36191) = rho 36189 + rho 36190 := by
      linear_combination r4920
    have ha5 : rho 36193 * (1 - rho 36191) = rho 36188 - rho 36189 - rho 36190 := by
      linear_combination r4921
    have haddx :
        rho 36192 * (1 + 3021 * (rho 36186 * seg34AccX150 rho) * (rho 36185 * seg34AccY150 rho)) =
          rho 36186 * seg34AccX150 rho + rho 36185 * seg34AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36193 * (1 - 3021 * (rho 36186 * seg34AccX150 rho) * (rho 36185 * seg34AccY150 rho)) =
          (-1) * (rho 36186 * seg34AccX150 rho) - rho 36185 * seg34AccY150 rho +
            (seg34AccY150 rho - seg34AccX150 rho * (-1)) * (rho 36185 + rho 36186) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36193 * (1 - rho 36191) = rho 36188 - rho 36189 - rho 36190 := ha5
        _ = (-1) * rho 36189 - rho 36190 + (seg34AccY150 rho - seg34AccX150 rho * (-1)) * (rho 36185 + rho 36186) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX151 rho = seg34AccX150 rho - Bool.toZMod bit * (seg34AccX150 rho - rho 36192) := by
      have hd : rho 36194 = Bool.toZMod bit * (rho 36192 - seg34AccX150 rho) := by
        rw [← hbit]
        unfold seg34AccX150
        linear_combination -r4922
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY151 rho = seg34AccY150 rho - Bool.toZMod bit * (seg34AccY150 rho - rho 36193) := by
      have hd : rho 36195 = Bool.toZMod bit * (rho 36193 - seg34AccY150 rho) := by
        rw [← hbit]
        unfold seg34AccY150
        linear_combination -r4923
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36185 * rho 36186 = rho 36196 := by linear_combination r4924
    have hd1 : rho 36185 * rho 36185 = rho 36197 := by linear_combination r4925
    have hd2 : rho 36186 * rho 36186 = rho 36198 := by linear_combination r4926
    have hd3 : rho 36199 * (rho 36186 * rho 36186 + rho 36185 * rho 36185 * (-1)) = 2 * (rho 36185 * rho 36186) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 36200 * (2 - (rho 36186 * rho 36186 + rho 36185 * rho 36185 * (-1))) = rho 36186 * rho 36186 - rho 36185 * rho 36185 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
      ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
      ⟨(rho 36192 : Seg34.F), (rho 36193 : Seg34.F)⟩
      ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
      ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg34_rows151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4929 rho ∧ Seg34.relationRow4930 rho ∧ Seg34.relationRow4931 rho ∧ Seg34.relationRow4932 rho ∧ Seg34.relationRow4933 rho ∧ Seg34.relationRow4934 rho ∧ Seg34.relationRow4935 rho ∧ Seg34.relationRow4936 rho ∧ Seg34.relationRow4937 rho ∧ Seg34.relationRow4938 rho ∧ Seg34.relationRow4939 rho ∧ Seg34.relationRow4940 rho ∧ Seg34.relationRow4941 rho ∧ Seg34.relationRow4942 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩

theorem seg34_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34143 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩ := by
  obtain ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩ := seg34_rows151 rho h
  unfold Seg34.relationRow4929 at r4929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4929
  unfold Seg34.relationRow4930 at r4930
  unfold Seg34.relationRow4931 at r4931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931
  unfold Seg34.relationRow4932 at r4932
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932
  unfold Seg34.relationRow4933 at r4933
  unfold Seg34.relationRow4934 at r4934
  unfold Seg34.relationRow4935 at r4935
  unfold Seg34.relationRow4936 at r4936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936
  unfold Seg34.relationRow4937 at r4937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4937
  unfold Seg34.relationRow4938 at r4938
  unfold Seg34.relationRow4939 at r4939
  unfold Seg34.relationRow4940 at r4940
  unfold Seg34.relationRow4941 at r4941
  unfold Seg34.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 34143 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩ := by
    have hnextx : seg34AccX152 rho = seg34AccX151 rho + rho 36208 := by
      unfold seg34AccX152 seg34AccX151
      ring
    have hnexty : seg34AccY152 rho = seg34AccY151 rho + rho 36209 := by
      unfold seg34AccY152 seg34AccY151
      ring
    have hsum : seg34AccX151 rho + seg34AccY151 rho = rho 36201 := by
      unfold seg34AccX151 seg34AccY151
      linear_combination r4929
    have ha0 : (rho 36199 + rho 36200) * (seg34AccX151 rho + seg34AccY151 rho) = rho 36202 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 36200 * seg34AccX151 rho = rho 36203 := by
      unfold seg34AccX151
      linear_combination r4931
    have ha2 : rho 36199 * seg34AccY151 rho = rho 36204 := by
      unfold seg34AccY151
      linear_combination r4932
    have ha3 : 3021 * rho 36203 * rho 36204 = rho 36205 := by
      linear_combination r4933
    have ha4 : rho 36206 * (1 + rho 36205) = rho 36203 + rho 36204 := by
      linear_combination r4934
    have ha5 : rho 36207 * (1 - rho 36205) = rho 36202 - rho 36203 - rho 36204 := by
      linear_combination r4935
    have haddx :
        rho 36206 * (1 + 3021 * (rho 36200 * seg34AccX151 rho) * (rho 36199 * seg34AccY151 rho)) =
          rho 36200 * seg34AccX151 rho + rho 36199 * seg34AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36207 * (1 - 3021 * (rho 36200 * seg34AccX151 rho) * (rho 36199 * seg34AccY151 rho)) =
          (-1) * (rho 36200 * seg34AccX151 rho) - rho 36199 * seg34AccY151 rho +
            (seg34AccY151 rho - seg34AccX151 rho * (-1)) * (rho 36199 + rho 36200) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36207 * (1 - rho 36205) = rho 36202 - rho 36203 - rho 36204 := ha5
        _ = (-1) * rho 36203 - rho 36204 + (seg34AccY151 rho - seg34AccX151 rho * (-1)) * (rho 36199 + rho 36200) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX152 rho = seg34AccX151 rho - Bool.toZMod bit * (seg34AccX151 rho - rho 36206) := by
      have hd : rho 36208 = Bool.toZMod bit * (rho 36206 - seg34AccX151 rho) := by
        rw [← hbit]
        unfold seg34AccX151
        linear_combination -r4936
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY152 rho = seg34AccY151 rho - Bool.toZMod bit * (seg34AccY151 rho - rho 36207) := by
      have hd : rho 36209 = Bool.toZMod bit * (rho 36207 - seg34AccY151 rho) := by
        rw [← hbit]
        unfold seg34AccY151
        linear_combination -r4937
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36199 * rho 36200 = rho 36210 := by linear_combination r4938
    have hd1 : rho 36199 * rho 36199 = rho 36211 := by linear_combination r4939
    have hd2 : rho 36200 * rho 36200 = rho 36212 := by linear_combination r4940
    have hd3 : rho 36213 * (rho 36200 * rho 36200 + rho 36199 * rho 36199 * (-1)) = 2 * (rho 36199 * rho 36200) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 36214 * (2 - (rho 36200 * rho 36200 + rho 36199 * rho 36199 * (-1))) = rho 36200 * rho 36200 - rho 36199 * rho 36199 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
      ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
      ⟨(rho 36206 : Seg34.F), (rho 36207 : Seg34.F)⟩
      ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
      ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg34_rows152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4943 rho ∧ Seg34.relationRow4944 rho ∧ Seg34.relationRow4945 rho ∧ Seg34.relationRow4946 rho ∧ Seg34.relationRow4947 rho ∧ Seg34.relationRow4948 rho ∧ Seg34.relationRow4949 rho ∧ Seg34.relationRow4950 rho ∧ Seg34.relationRow4951 rho ∧ Seg34.relationRow4952 rho ∧ Seg34.relationRow4953 rho ∧ Seg34.relationRow4954 rho ∧ Seg34.relationRow4955 rho ∧ Seg34.relationRow4956 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  exact ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩

theorem seg34_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34144 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩ := by
  obtain ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩ := seg34_rows152 rho h
  unfold Seg34.relationRow4943 at r4943
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4943
  unfold Seg34.relationRow4944 at r4944
  unfold Seg34.relationRow4945 at r4945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945
  unfold Seg34.relationRow4946 at r4946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4946
  unfold Seg34.relationRow4947 at r4947
  unfold Seg34.relationRow4948 at r4948
  unfold Seg34.relationRow4949 at r4949
  unfold Seg34.relationRow4950 at r4950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4950
  unfold Seg34.relationRow4951 at r4951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951
  unfold Seg34.relationRow4952 at r4952
  unfold Seg34.relationRow4953 at r4953
  unfold Seg34.relationRow4954 at r4954
  unfold Seg34.relationRow4955 at r4955
  unfold Seg34.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 34144 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩ := by
    have hnextx : seg34AccX153 rho = seg34AccX152 rho + rho 36222 := by
      unfold seg34AccX153 seg34AccX152
      ring
    have hnexty : seg34AccY153 rho = seg34AccY152 rho + rho 36223 := by
      unfold seg34AccY153 seg34AccY152
      ring
    have hsum : seg34AccX152 rho + seg34AccY152 rho = rho 36215 := by
      unfold seg34AccX152 seg34AccY152
      linear_combination r4943
    have ha0 : (rho 36213 + rho 36214) * (seg34AccX152 rho + seg34AccY152 rho) = rho 36216 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 36214 * seg34AccX152 rho = rho 36217 := by
      unfold seg34AccX152
      linear_combination r4945
    have ha2 : rho 36213 * seg34AccY152 rho = rho 36218 := by
      unfold seg34AccY152
      linear_combination r4946
    have ha3 : 3021 * rho 36217 * rho 36218 = rho 36219 := by
      linear_combination r4947
    have ha4 : rho 36220 * (1 + rho 36219) = rho 36217 + rho 36218 := by
      linear_combination r4948
    have ha5 : rho 36221 * (1 - rho 36219) = rho 36216 - rho 36217 - rho 36218 := by
      linear_combination r4949
    have haddx :
        rho 36220 * (1 + 3021 * (rho 36214 * seg34AccX152 rho) * (rho 36213 * seg34AccY152 rho)) =
          rho 36214 * seg34AccX152 rho + rho 36213 * seg34AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36221 * (1 - 3021 * (rho 36214 * seg34AccX152 rho) * (rho 36213 * seg34AccY152 rho)) =
          (-1) * (rho 36214 * seg34AccX152 rho) - rho 36213 * seg34AccY152 rho +
            (seg34AccY152 rho - seg34AccX152 rho * (-1)) * (rho 36213 + rho 36214) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36221 * (1 - rho 36219) = rho 36216 - rho 36217 - rho 36218 := ha5
        _ = (-1) * rho 36217 - rho 36218 + (seg34AccY152 rho - seg34AccX152 rho * (-1)) * (rho 36213 + rho 36214) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX153 rho = seg34AccX152 rho - Bool.toZMod bit * (seg34AccX152 rho - rho 36220) := by
      have hd : rho 36222 = Bool.toZMod bit * (rho 36220 - seg34AccX152 rho) := by
        rw [← hbit]
        unfold seg34AccX152
        linear_combination -r4950
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY153 rho = seg34AccY152 rho - Bool.toZMod bit * (seg34AccY152 rho - rho 36221) := by
      have hd : rho 36223 = Bool.toZMod bit * (rho 36221 - seg34AccY152 rho) := by
        rw [← hbit]
        unfold seg34AccY152
        linear_combination -r4951
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36213 * rho 36214 = rho 36224 := by linear_combination r4952
    have hd1 : rho 36213 * rho 36213 = rho 36225 := by linear_combination r4953
    have hd2 : rho 36214 * rho 36214 = rho 36226 := by linear_combination r4954
    have hd3 : rho 36227 * (rho 36214 * rho 36214 + rho 36213 * rho 36213 * (-1)) = 2 * (rho 36213 * rho 36214) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 36228 * (2 - (rho 36214 * rho 36214 + rho 36213 * rho 36213 * (-1))) = rho 36214 * rho 36214 - rho 36213 * rho 36213 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
      ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
      ⟨(rho 36220 : Seg34.F), (rho 36221 : Seg34.F)⟩
      ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
      ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg34_rows153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4957 rho ∧ Seg34.relationRow4958 rho ∧ Seg34.relationRow4959 rho ∧ Seg34.relationRow4960 rho ∧ Seg34.relationRow4961 rho ∧ Seg34.relationRow4962 rho ∧ Seg34.relationRow4963 rho ∧ Seg34.relationRow4964 rho ∧ Seg34.relationRow4965 rho ∧ Seg34.relationRow4966 rho ∧ Seg34.relationRow4967 rho ∧ Seg34.relationRow4968 rho ∧ Seg34.relationRow4969 rho ∧ Seg34.relationRow4970 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩

theorem seg34_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34145 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩ := by
  obtain ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩ := seg34_rows153 rho h
  unfold Seg34.relationRow4957 at r4957
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957
  unfold Seg34.relationRow4958 at r4958
  unfold Seg34.relationRow4959 at r4959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4959
  unfold Seg34.relationRow4960 at r4960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960
  unfold Seg34.relationRow4961 at r4961
  unfold Seg34.relationRow4962 at r4962
  unfold Seg34.relationRow4963 at r4963
  unfold Seg34.relationRow4964 at r4964
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964
  unfold Seg34.relationRow4965 at r4965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965
  unfold Seg34.relationRow4966 at r4966
  unfold Seg34.relationRow4967 at r4967
  unfold Seg34.relationRow4968 at r4968
  unfold Seg34.relationRow4969 at r4969
  unfold Seg34.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 34145 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩ := by
    have hnextx : seg34AccX154 rho = seg34AccX153 rho + rho 36236 := by
      unfold seg34AccX154 seg34AccX153
      ring
    have hnexty : seg34AccY154 rho = seg34AccY153 rho + rho 36237 := by
      unfold seg34AccY154 seg34AccY153
      ring
    have hsum : seg34AccX153 rho + seg34AccY153 rho = rho 36229 := by
      unfold seg34AccX153 seg34AccY153
      linear_combination r4957
    have ha0 : (rho 36227 + rho 36228) * (seg34AccX153 rho + seg34AccY153 rho) = rho 36230 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 36228 * seg34AccX153 rho = rho 36231 := by
      unfold seg34AccX153
      linear_combination r4959
    have ha2 : rho 36227 * seg34AccY153 rho = rho 36232 := by
      unfold seg34AccY153
      linear_combination r4960
    have ha3 : 3021 * rho 36231 * rho 36232 = rho 36233 := by
      linear_combination r4961
    have ha4 : rho 36234 * (1 + rho 36233) = rho 36231 + rho 36232 := by
      linear_combination r4962
    have ha5 : rho 36235 * (1 - rho 36233) = rho 36230 - rho 36231 - rho 36232 := by
      linear_combination r4963
    have haddx :
        rho 36234 * (1 + 3021 * (rho 36228 * seg34AccX153 rho) * (rho 36227 * seg34AccY153 rho)) =
          rho 36228 * seg34AccX153 rho + rho 36227 * seg34AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36235 * (1 - 3021 * (rho 36228 * seg34AccX153 rho) * (rho 36227 * seg34AccY153 rho)) =
          (-1) * (rho 36228 * seg34AccX153 rho) - rho 36227 * seg34AccY153 rho +
            (seg34AccY153 rho - seg34AccX153 rho * (-1)) * (rho 36227 + rho 36228) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36235 * (1 - rho 36233) = rho 36230 - rho 36231 - rho 36232 := ha5
        _ = (-1) * rho 36231 - rho 36232 + (seg34AccY153 rho - seg34AccX153 rho * (-1)) * (rho 36227 + rho 36228) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX154 rho = seg34AccX153 rho - Bool.toZMod bit * (seg34AccX153 rho - rho 36234) := by
      have hd : rho 36236 = Bool.toZMod bit * (rho 36234 - seg34AccX153 rho) := by
        rw [← hbit]
        unfold seg34AccX153
        linear_combination -r4964
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY154 rho = seg34AccY153 rho - Bool.toZMod bit * (seg34AccY153 rho - rho 36235) := by
      have hd : rho 36237 = Bool.toZMod bit * (rho 36235 - seg34AccY153 rho) := by
        rw [← hbit]
        unfold seg34AccY153
        linear_combination -r4965
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36227 * rho 36228 = rho 36238 := by linear_combination r4966
    have hd1 : rho 36227 * rho 36227 = rho 36239 := by linear_combination r4967
    have hd2 : rho 36228 * rho 36228 = rho 36240 := by linear_combination r4968
    have hd3 : rho 36241 * (rho 36228 * rho 36228 + rho 36227 * rho 36227 * (-1)) = 2 * (rho 36227 * rho 36228) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 36242 * (2 - (rho 36228 * rho 36228 + rho 36227 * rho 36227 * (-1))) = rho 36228 * rho 36228 - rho 36227 * rho 36227 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
      ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
      ⟨(rho 36234 : Seg34.F), (rho 36235 : Seg34.F)⟩
      ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
      ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg34_hstep_c13 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 143 ≤ i → i < 154 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg34_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg34_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg34_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg34_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg34_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg34_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg34_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg34_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg34_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg34_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
