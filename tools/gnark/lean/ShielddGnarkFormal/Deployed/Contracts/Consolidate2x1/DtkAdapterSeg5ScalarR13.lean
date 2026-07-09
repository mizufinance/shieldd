import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4824 rho ∧ Seg5.relationRow4825 rho ∧ Seg5.relationRow4826 rho ∧ Seg5.relationRow4827 rho ∧ Seg5.relationRow4828 rho ∧ Seg5.relationRow4829 rho ∧ Seg5.relationRow4830 rho ∧ Seg5.relationRow4831 rho ∧ Seg5.relationRow4832 rho ∧ Seg5.relationRow4833 rho ∧ Seg5.relationRow4834 rho ∧ Seg5.relationRow4835 rho ∧ Seg5.relationRow4836 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩

theorem seg5_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2558 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩
        ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩
        ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩
        ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩ := by
  obtain ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩ := seg5_rows143 rho h
  unfold Seg5.relationRow4824 at r4824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824
  unfold Seg5.relationRow4825 at r4825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4825
  unfold Seg5.relationRow4826 at r4826
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4826
  unfold Seg5.relationRow4827 at r4827
  unfold Seg5.relationRow4828 at r4828
  unfold Seg5.relationRow4829 at r4829
  unfold Seg5.relationRow4830 at r4830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4830
  unfold Seg5.relationRow4831 at r4831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831
  unfold Seg5.relationRow4832 at r4832
  unfold Seg5.relationRow4833 at r4833
  unfold Seg5.relationRow4834 at r4834
  unfold Seg5.relationRow4835 at r4835
  unfold Seg5.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 2558 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩
        ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩
        ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩
        ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩ := by
    have hnextx : seg5AccX144 rho = seg5AccX143 rho + rho 4525 := by
      unfold seg5AccX144 seg5AccX143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 143]
      ring
    have hnexty : seg5AccY144 rho = seg5AccY143 rho + rho 4526 := by
      unfold seg5AccY144 seg5AccY143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 143]
      ring
    have ha0 : (rho 4517 + rho 4518) * (seg5AccX143 rho + seg5AccY143 rho) = rho 4519 := by
      unfold seg5AccX143 seg5AccY143
      linear_combination r4824
    have ha1 : rho 4518 * seg5AccX143 rho = rho 4520 := by
      unfold seg5AccX143
      linear_combination r4825
    have ha2 : rho 4517 * seg5AccY143 rho = rho 4521 := by
      unfold seg5AccY143
      linear_combination r4826
    have ha3 : 3021 * rho 4520 * rho 4521 = rho 4522 := by
      linear_combination r4827
    have ha4 : rho 4523 * (1 + rho 4522) = rho 4520 + rho 4521 := by
      linear_combination r4828
    have ha5 : rho 4524 * (1 - rho 4522) = rho 4519 - rho 4520 - rho 4521 := by
      linear_combination r4829
    have haddx :
        rho 4523 * (1 + 3021 * (rho 4518 * seg5AccX143 rho) * (rho 4517 * seg5AccY143 rho)) =
          rho 4518 * seg5AccX143 rho + rho 4517 * seg5AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4524 * (1 - 3021 * (rho 4518 * seg5AccX143 rho) * (rho 4517 * seg5AccY143 rho)) =
          (-1) * (rho 4518 * seg5AccX143 rho) - rho 4517 * seg5AccY143 rho +
            (seg5AccY143 rho - seg5AccX143 rho * (-1)) * (rho 4517 + rho 4518) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4524 * (1 - rho 4522) = rho 4519 - rho 4520 - rho 4521 := ha5
        _ = (-1) * rho 4520 - rho 4521 + (seg5AccY143 rho - seg5AccX143 rho * (-1)) * (rho 4517 + rho 4518) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX144 rho = seg5AccX143 rho - Bool.toZMod bit * (seg5AccX143 rho - rho 4523) := by
      have hd : rho 4525 = Bool.toZMod bit * (rho 4523 - seg5AccX143 rho) := by
        rw [← hbit]
        unfold seg5AccX143
        linear_combination -r4830
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY144 rho = seg5AccY143 rho - Bool.toZMod bit * (seg5AccY143 rho - rho 4524) := by
      have hd : rho 4526 = Bool.toZMod bit * (rho 4524 - seg5AccY143 rho) := by
        rw [← hbit]
        unfold seg5AccY143
        linear_combination -r4831
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4517 * rho 4518 = rho 4527 := by linear_combination r4832
    have hd1 : rho 4517 * rho 4517 = rho 4528 := by linear_combination r4833
    have hd2 : rho 4518 * rho 4518 = rho 4529 := by linear_combination r4834
    have hd3 : rho 4530 * (rho 4518 * rho 4518 + rho 4517 * rho 4517 * (-1)) = 2 * (rho 4517 * rho 4518) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 4531 * (2 - (rho 4518 * rho 4518 + rho 4517 * rho 4517 * (-1))) = rho 4518 * rho 4518 - rho 4517 * rho 4517 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩
      ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩
      ⟨(rho 4523 : Seg5.F), (rho 4524 : Seg5.F)⟩
      ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩
      ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg5_rows144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4837 rho ∧ Seg5.relationRow4838 rho ∧ Seg5.relationRow4839 rho ∧ Seg5.relationRow4840 rho ∧ Seg5.relationRow4841 rho ∧ Seg5.relationRow4842 rho ∧ Seg5.relationRow4843 rho ∧ Seg5.relationRow4844 rho ∧ Seg5.relationRow4845 rho ∧ Seg5.relationRow4846 rho ∧ Seg5.relationRow4847 rho ∧ Seg5.relationRow4848 rho ∧ Seg5.relationRow4849 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩

theorem seg5_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2559 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩
        ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩
        ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩
        ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩ := by
  obtain ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩ := seg5_rows144 rho h
  unfold Seg5.relationRow4837 at r4837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4837
  unfold Seg5.relationRow4838 at r4838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4838
  unfold Seg5.relationRow4839 at r4839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4839
  unfold Seg5.relationRow4840 at r4840
  unfold Seg5.relationRow4841 at r4841
  unfold Seg5.relationRow4842 at r4842
  unfold Seg5.relationRow4843 at r4843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4843
  unfold Seg5.relationRow4844 at r4844
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4844
  unfold Seg5.relationRow4845 at r4845
  unfold Seg5.relationRow4846 at r4846
  unfold Seg5.relationRow4847 at r4847
  unfold Seg5.relationRow4848 at r4848
  unfold Seg5.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 2559 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩
        ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩
        ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩
        ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩ := by
    have hnextx : seg5AccX145 rho = seg5AccX144 rho + rho 4538 := by
      unfold seg5AccX145 seg5AccX144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 144]
      ring
    have hnexty : seg5AccY145 rho = seg5AccY144 rho + rho 4539 := by
      unfold seg5AccY145 seg5AccY144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 144]
      ring
    have ha0 : (rho 4530 + rho 4531) * (seg5AccX144 rho + seg5AccY144 rho) = rho 4532 := by
      unfold seg5AccX144 seg5AccY144
      linear_combination r4837
    have ha1 : rho 4531 * seg5AccX144 rho = rho 4533 := by
      unfold seg5AccX144
      linear_combination r4838
    have ha2 : rho 4530 * seg5AccY144 rho = rho 4534 := by
      unfold seg5AccY144
      linear_combination r4839
    have ha3 : 3021 * rho 4533 * rho 4534 = rho 4535 := by
      linear_combination r4840
    have ha4 : rho 4536 * (1 + rho 4535) = rho 4533 + rho 4534 := by
      linear_combination r4841
    have ha5 : rho 4537 * (1 - rho 4535) = rho 4532 - rho 4533 - rho 4534 := by
      linear_combination r4842
    have haddx :
        rho 4536 * (1 + 3021 * (rho 4531 * seg5AccX144 rho) * (rho 4530 * seg5AccY144 rho)) =
          rho 4531 * seg5AccX144 rho + rho 4530 * seg5AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4537 * (1 - 3021 * (rho 4531 * seg5AccX144 rho) * (rho 4530 * seg5AccY144 rho)) =
          (-1) * (rho 4531 * seg5AccX144 rho) - rho 4530 * seg5AccY144 rho +
            (seg5AccY144 rho - seg5AccX144 rho * (-1)) * (rho 4530 + rho 4531) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4537 * (1 - rho 4535) = rho 4532 - rho 4533 - rho 4534 := ha5
        _ = (-1) * rho 4533 - rho 4534 + (seg5AccY144 rho - seg5AccX144 rho * (-1)) * (rho 4530 + rho 4531) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX145 rho = seg5AccX144 rho - Bool.toZMod bit * (seg5AccX144 rho - rho 4536) := by
      have hd : rho 4538 = Bool.toZMod bit * (rho 4536 - seg5AccX144 rho) := by
        rw [← hbit]
        unfold seg5AccX144
        linear_combination -r4843
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY145 rho = seg5AccY144 rho - Bool.toZMod bit * (seg5AccY144 rho - rho 4537) := by
      have hd : rho 4539 = Bool.toZMod bit * (rho 4537 - seg5AccY144 rho) := by
        rw [← hbit]
        unfold seg5AccY144
        linear_combination -r4844
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4530 * rho 4531 = rho 4540 := by linear_combination r4845
    have hd1 : rho 4530 * rho 4530 = rho 4541 := by linear_combination r4846
    have hd2 : rho 4531 * rho 4531 = rho 4542 := by linear_combination r4847
    have hd3 : rho 4543 * (rho 4531 * rho 4531 + rho 4530 * rho 4530 * (-1)) = 2 * (rho 4530 * rho 4531) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 4544 * (2 - (rho 4531 * rho 4531 + rho 4530 * rho 4530 * (-1))) = rho 4531 * rho 4531 - rho 4530 * rho 4530 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX144 rho : Seg5.F), (seg5AccY144 rho : Seg5.F)⟩
      ⟨(rho 4530 : Seg5.F), (rho 4531 : Seg5.F)⟩
      ⟨(rho 4536 : Seg5.F), (rho 4537 : Seg5.F)⟩
      ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩
      ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg5_rows145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4850 rho ∧ Seg5.relationRow4851 rho ∧ Seg5.relationRow4852 rho ∧ Seg5.relationRow4853 rho ∧ Seg5.relationRow4854 rho ∧ Seg5.relationRow4855 rho ∧ Seg5.relationRow4856 rho ∧ Seg5.relationRow4857 rho ∧ Seg5.relationRow4858 rho ∧ Seg5.relationRow4859 rho ∧ Seg5.relationRow4860 rho ∧ Seg5.relationRow4861 rho ∧ Seg5.relationRow4862 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩

theorem seg5_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2560 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩
        ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩
        ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩
        ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩ := by
  obtain ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩ := seg5_rows145 rho h
  unfold Seg5.relationRow4850 at r4850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4850
  unfold Seg5.relationRow4851 at r4851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4851
  unfold Seg5.relationRow4852 at r4852
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4852
  unfold Seg5.relationRow4853 at r4853
  unfold Seg5.relationRow4854 at r4854
  unfold Seg5.relationRow4855 at r4855
  unfold Seg5.relationRow4856 at r4856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4856
  unfold Seg5.relationRow4857 at r4857
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4857
  unfold Seg5.relationRow4858 at r4858
  unfold Seg5.relationRow4859 at r4859
  unfold Seg5.relationRow4860 at r4860
  unfold Seg5.relationRow4861 at r4861
  unfold Seg5.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 2560 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩
        ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩
        ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩
        ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩ := by
    have hnextx : seg5AccX146 rho = seg5AccX145 rho + rho 4551 := by
      unfold seg5AccX146 seg5AccX145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 145]
      ring
    have hnexty : seg5AccY146 rho = seg5AccY145 rho + rho 4552 := by
      unfold seg5AccY146 seg5AccY145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 145]
      ring
    have ha0 : (rho 4543 + rho 4544) * (seg5AccX145 rho + seg5AccY145 rho) = rho 4545 := by
      unfold seg5AccX145 seg5AccY145
      linear_combination r4850
    have ha1 : rho 4544 * seg5AccX145 rho = rho 4546 := by
      unfold seg5AccX145
      linear_combination r4851
    have ha2 : rho 4543 * seg5AccY145 rho = rho 4547 := by
      unfold seg5AccY145
      linear_combination r4852
    have ha3 : 3021 * rho 4546 * rho 4547 = rho 4548 := by
      linear_combination r4853
    have ha4 : rho 4549 * (1 + rho 4548) = rho 4546 + rho 4547 := by
      linear_combination r4854
    have ha5 : rho 4550 * (1 - rho 4548) = rho 4545 - rho 4546 - rho 4547 := by
      linear_combination r4855
    have haddx :
        rho 4549 * (1 + 3021 * (rho 4544 * seg5AccX145 rho) * (rho 4543 * seg5AccY145 rho)) =
          rho 4544 * seg5AccX145 rho + rho 4543 * seg5AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4550 * (1 - 3021 * (rho 4544 * seg5AccX145 rho) * (rho 4543 * seg5AccY145 rho)) =
          (-1) * (rho 4544 * seg5AccX145 rho) - rho 4543 * seg5AccY145 rho +
            (seg5AccY145 rho - seg5AccX145 rho * (-1)) * (rho 4543 + rho 4544) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4550 * (1 - rho 4548) = rho 4545 - rho 4546 - rho 4547 := ha5
        _ = (-1) * rho 4546 - rho 4547 + (seg5AccY145 rho - seg5AccX145 rho * (-1)) * (rho 4543 + rho 4544) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX146 rho = seg5AccX145 rho - Bool.toZMod bit * (seg5AccX145 rho - rho 4549) := by
      have hd : rho 4551 = Bool.toZMod bit * (rho 4549 - seg5AccX145 rho) := by
        rw [← hbit]
        unfold seg5AccX145
        linear_combination -r4856
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY146 rho = seg5AccY145 rho - Bool.toZMod bit * (seg5AccY145 rho - rho 4550) := by
      have hd : rho 4552 = Bool.toZMod bit * (rho 4550 - seg5AccY145 rho) := by
        rw [← hbit]
        unfold seg5AccY145
        linear_combination -r4857
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4543 * rho 4544 = rho 4553 := by linear_combination r4858
    have hd1 : rho 4543 * rho 4543 = rho 4554 := by linear_combination r4859
    have hd2 : rho 4544 * rho 4544 = rho 4555 := by linear_combination r4860
    have hd3 : rho 4556 * (rho 4544 * rho 4544 + rho 4543 * rho 4543 * (-1)) = 2 * (rho 4543 * rho 4544) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 4557 * (2 - (rho 4544 * rho 4544 + rho 4543 * rho 4543 * (-1))) = rho 4544 * rho 4544 - rho 4543 * rho 4543 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX145 rho : Seg5.F), (seg5AccY145 rho : Seg5.F)⟩
      ⟨(rho 4543 : Seg5.F), (rho 4544 : Seg5.F)⟩
      ⟨(rho 4549 : Seg5.F), (rho 4550 : Seg5.F)⟩
      ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩
      ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg5_rows146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4863 rho ∧ Seg5.relationRow4864 rho ∧ Seg5.relationRow4865 rho ∧ Seg5.relationRow4866 rho ∧ Seg5.relationRow4867 rho ∧ Seg5.relationRow4868 rho ∧ Seg5.relationRow4869 rho ∧ Seg5.relationRow4870 rho ∧ Seg5.relationRow4871 rho ∧ Seg5.relationRow4872 rho ∧ Seg5.relationRow4873 rho ∧ Seg5.relationRow4874 rho ∧ Seg5.relationRow4875 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  exact ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩

theorem seg5_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2561 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩
        ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩
        ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩
        ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩ := by
  obtain ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩ := seg5_rows146 rho h
  unfold Seg5.relationRow4863 at r4863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4863
  unfold Seg5.relationRow4864 at r4864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4864
  unfold Seg5.relationRow4865 at r4865
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4865
  unfold Seg5.relationRow4866 at r4866
  unfold Seg5.relationRow4867 at r4867
  unfold Seg5.relationRow4868 at r4868
  unfold Seg5.relationRow4869 at r4869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4869
  unfold Seg5.relationRow4870 at r4870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4870
  unfold Seg5.relationRow4871 at r4871
  unfold Seg5.relationRow4872 at r4872
  unfold Seg5.relationRow4873 at r4873
  unfold Seg5.relationRow4874 at r4874
  unfold Seg5.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 2561 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩
        ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩
        ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩
        ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩ := by
    have hnextx : seg5AccX147 rho = seg5AccX146 rho + rho 4564 := by
      unfold seg5AccX147 seg5AccX146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 146]
      ring
    have hnexty : seg5AccY147 rho = seg5AccY146 rho + rho 4565 := by
      unfold seg5AccY147 seg5AccY146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 146]
      ring
    have ha0 : (rho 4556 + rho 4557) * (seg5AccX146 rho + seg5AccY146 rho) = rho 4558 := by
      unfold seg5AccX146 seg5AccY146
      linear_combination r4863
    have ha1 : rho 4557 * seg5AccX146 rho = rho 4559 := by
      unfold seg5AccX146
      linear_combination r4864
    have ha2 : rho 4556 * seg5AccY146 rho = rho 4560 := by
      unfold seg5AccY146
      linear_combination r4865
    have ha3 : 3021 * rho 4559 * rho 4560 = rho 4561 := by
      linear_combination r4866
    have ha4 : rho 4562 * (1 + rho 4561) = rho 4559 + rho 4560 := by
      linear_combination r4867
    have ha5 : rho 4563 * (1 - rho 4561) = rho 4558 - rho 4559 - rho 4560 := by
      linear_combination r4868
    have haddx :
        rho 4562 * (1 + 3021 * (rho 4557 * seg5AccX146 rho) * (rho 4556 * seg5AccY146 rho)) =
          rho 4557 * seg5AccX146 rho + rho 4556 * seg5AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4563 * (1 - 3021 * (rho 4557 * seg5AccX146 rho) * (rho 4556 * seg5AccY146 rho)) =
          (-1) * (rho 4557 * seg5AccX146 rho) - rho 4556 * seg5AccY146 rho +
            (seg5AccY146 rho - seg5AccX146 rho * (-1)) * (rho 4556 + rho 4557) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4563 * (1 - rho 4561) = rho 4558 - rho 4559 - rho 4560 := ha5
        _ = (-1) * rho 4559 - rho 4560 + (seg5AccY146 rho - seg5AccX146 rho * (-1)) * (rho 4556 + rho 4557) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX147 rho = seg5AccX146 rho - Bool.toZMod bit * (seg5AccX146 rho - rho 4562) := by
      have hd : rho 4564 = Bool.toZMod bit * (rho 4562 - seg5AccX146 rho) := by
        rw [← hbit]
        unfold seg5AccX146
        linear_combination -r4869
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY147 rho = seg5AccY146 rho - Bool.toZMod bit * (seg5AccY146 rho - rho 4563) := by
      have hd : rho 4565 = Bool.toZMod bit * (rho 4563 - seg5AccY146 rho) := by
        rw [← hbit]
        unfold seg5AccY146
        linear_combination -r4870
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4556 * rho 4557 = rho 4566 := by linear_combination r4871
    have hd1 : rho 4556 * rho 4556 = rho 4567 := by linear_combination r4872
    have hd2 : rho 4557 * rho 4557 = rho 4568 := by linear_combination r4873
    have hd3 : rho 4569 * (rho 4557 * rho 4557 + rho 4556 * rho 4556 * (-1)) = 2 * (rho 4556 * rho 4557) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 4570 * (2 - (rho 4557 * rho 4557 + rho 4556 * rho 4556 * (-1))) = rho 4557 * rho 4557 - rho 4556 * rho 4556 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX146 rho : Seg5.F), (seg5AccY146 rho : Seg5.F)⟩
      ⟨(rho 4556 : Seg5.F), (rho 4557 : Seg5.F)⟩
      ⟨(rho 4562 : Seg5.F), (rho 4563 : Seg5.F)⟩
      ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩
      ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg5_rows147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4876 rho ∧ Seg5.relationRow4877 rho ∧ Seg5.relationRow4878 rho ∧ Seg5.relationRow4879 rho ∧ Seg5.relationRow4880 rho ∧ Seg5.relationRow4881 rho ∧ Seg5.relationRow4882 rho ∧ Seg5.relationRow4883 rho ∧ Seg5.relationRow4884 rho ∧ Seg5.relationRow4885 rho ∧ Seg5.relationRow4886 rho ∧ Seg5.relationRow4887 rho ∧ Seg5.relationRow4888 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩

theorem seg5_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2562 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩
        ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩
        ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩
        ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩ := by
  obtain ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩ := seg5_rows147 rho h
  unfold Seg5.relationRow4876 at r4876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876
  unfold Seg5.relationRow4877 at r4877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4877
  unfold Seg5.relationRow4878 at r4878
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4878
  unfold Seg5.relationRow4879 at r4879
  unfold Seg5.relationRow4880 at r4880
  unfold Seg5.relationRow4881 at r4881
  unfold Seg5.relationRow4882 at r4882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4882
  unfold Seg5.relationRow4883 at r4883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4883
  unfold Seg5.relationRow4884 at r4884
  unfold Seg5.relationRow4885 at r4885
  unfold Seg5.relationRow4886 at r4886
  unfold Seg5.relationRow4887 at r4887
  unfold Seg5.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 2562 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩
        ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩
        ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩
        ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩ := by
    have hnextx : seg5AccX148 rho = seg5AccX147 rho + rho 4577 := by
      unfold seg5AccX148 seg5AccX147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 147]
      ring
    have hnexty : seg5AccY148 rho = seg5AccY147 rho + rho 4578 := by
      unfold seg5AccY148 seg5AccY147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 147]
      ring
    have ha0 : (rho 4569 + rho 4570) * (seg5AccX147 rho + seg5AccY147 rho) = rho 4571 := by
      unfold seg5AccX147 seg5AccY147
      linear_combination r4876
    have ha1 : rho 4570 * seg5AccX147 rho = rho 4572 := by
      unfold seg5AccX147
      linear_combination r4877
    have ha2 : rho 4569 * seg5AccY147 rho = rho 4573 := by
      unfold seg5AccY147
      linear_combination r4878
    have ha3 : 3021 * rho 4572 * rho 4573 = rho 4574 := by
      linear_combination r4879
    have ha4 : rho 4575 * (1 + rho 4574) = rho 4572 + rho 4573 := by
      linear_combination r4880
    have ha5 : rho 4576 * (1 - rho 4574) = rho 4571 - rho 4572 - rho 4573 := by
      linear_combination r4881
    have haddx :
        rho 4575 * (1 + 3021 * (rho 4570 * seg5AccX147 rho) * (rho 4569 * seg5AccY147 rho)) =
          rho 4570 * seg5AccX147 rho + rho 4569 * seg5AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4576 * (1 - 3021 * (rho 4570 * seg5AccX147 rho) * (rho 4569 * seg5AccY147 rho)) =
          (-1) * (rho 4570 * seg5AccX147 rho) - rho 4569 * seg5AccY147 rho +
            (seg5AccY147 rho - seg5AccX147 rho * (-1)) * (rho 4569 + rho 4570) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4576 * (1 - rho 4574) = rho 4571 - rho 4572 - rho 4573 := ha5
        _ = (-1) * rho 4572 - rho 4573 + (seg5AccY147 rho - seg5AccX147 rho * (-1)) * (rho 4569 + rho 4570) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX148 rho = seg5AccX147 rho - Bool.toZMod bit * (seg5AccX147 rho - rho 4575) := by
      have hd : rho 4577 = Bool.toZMod bit * (rho 4575 - seg5AccX147 rho) := by
        rw [← hbit]
        unfold seg5AccX147
        linear_combination -r4882
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY148 rho = seg5AccY147 rho - Bool.toZMod bit * (seg5AccY147 rho - rho 4576) := by
      have hd : rho 4578 = Bool.toZMod bit * (rho 4576 - seg5AccY147 rho) := by
        rw [← hbit]
        unfold seg5AccY147
        linear_combination -r4883
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4569 * rho 4570 = rho 4579 := by linear_combination r4884
    have hd1 : rho 4569 * rho 4569 = rho 4580 := by linear_combination r4885
    have hd2 : rho 4570 * rho 4570 = rho 4581 := by linear_combination r4886
    have hd3 : rho 4582 * (rho 4570 * rho 4570 + rho 4569 * rho 4569 * (-1)) = 2 * (rho 4569 * rho 4570) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 4583 * (2 - (rho 4570 * rho 4570 + rho 4569 * rho 4569 * (-1))) = rho 4570 * rho 4570 - rho 4569 * rho 4569 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX147 rho : Seg5.F), (seg5AccY147 rho : Seg5.F)⟩
      ⟨(rho 4569 : Seg5.F), (rho 4570 : Seg5.F)⟩
      ⟨(rho 4575 : Seg5.F), (rho 4576 : Seg5.F)⟩
      ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩
      ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg5_rows148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4889 rho ∧ Seg5.relationRow4890 rho ∧ Seg5.relationRow4891 rho ∧ Seg5.relationRow4892 rho ∧ Seg5.relationRow4893 rho ∧ Seg5.relationRow4894 rho ∧ Seg5.relationRow4895 rho ∧ Seg5.relationRow4896 rho ∧ Seg5.relationRow4897 rho ∧ Seg5.relationRow4898 rho ∧ Seg5.relationRow4899 rho ∧ Seg5.relationRow4900 rho ∧ Seg5.relationRow4901 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩

theorem seg5_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2563 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩
        ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩
        ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩
        ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩ := by
  obtain ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩ := seg5_rows148 rho h
  unfold Seg5.relationRow4889 at r4889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889
  unfold Seg5.relationRow4890 at r4890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4890
  unfold Seg5.relationRow4891 at r4891
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4891
  unfold Seg5.relationRow4892 at r4892
  unfold Seg5.relationRow4893 at r4893
  unfold Seg5.relationRow4894 at r4894
  unfold Seg5.relationRow4895 at r4895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895
  unfold Seg5.relationRow4896 at r4896
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4896
  unfold Seg5.relationRow4897 at r4897
  unfold Seg5.relationRow4898 at r4898
  unfold Seg5.relationRow4899 at r4899
  unfold Seg5.relationRow4900 at r4900
  unfold Seg5.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 2563 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩
        ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩
        ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩
        ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩ := by
    have hnextx : seg5AccX149 rho = seg5AccX148 rho + rho 4590 := by
      unfold seg5AccX149 seg5AccX148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 148]
      ring
    have hnexty : seg5AccY149 rho = seg5AccY148 rho + rho 4591 := by
      unfold seg5AccY149 seg5AccY148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 148]
      ring
    have ha0 : (rho 4582 + rho 4583) * (seg5AccX148 rho + seg5AccY148 rho) = rho 4584 := by
      unfold seg5AccX148 seg5AccY148
      linear_combination r4889
    have ha1 : rho 4583 * seg5AccX148 rho = rho 4585 := by
      unfold seg5AccX148
      linear_combination r4890
    have ha2 : rho 4582 * seg5AccY148 rho = rho 4586 := by
      unfold seg5AccY148
      linear_combination r4891
    have ha3 : 3021 * rho 4585 * rho 4586 = rho 4587 := by
      linear_combination r4892
    have ha4 : rho 4588 * (1 + rho 4587) = rho 4585 + rho 4586 := by
      linear_combination r4893
    have ha5 : rho 4589 * (1 - rho 4587) = rho 4584 - rho 4585 - rho 4586 := by
      linear_combination r4894
    have haddx :
        rho 4588 * (1 + 3021 * (rho 4583 * seg5AccX148 rho) * (rho 4582 * seg5AccY148 rho)) =
          rho 4583 * seg5AccX148 rho + rho 4582 * seg5AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4589 * (1 - 3021 * (rho 4583 * seg5AccX148 rho) * (rho 4582 * seg5AccY148 rho)) =
          (-1) * (rho 4583 * seg5AccX148 rho) - rho 4582 * seg5AccY148 rho +
            (seg5AccY148 rho - seg5AccX148 rho * (-1)) * (rho 4582 + rho 4583) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4589 * (1 - rho 4587) = rho 4584 - rho 4585 - rho 4586 := ha5
        _ = (-1) * rho 4585 - rho 4586 + (seg5AccY148 rho - seg5AccX148 rho * (-1)) * (rho 4582 + rho 4583) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX149 rho = seg5AccX148 rho - Bool.toZMod bit * (seg5AccX148 rho - rho 4588) := by
      have hd : rho 4590 = Bool.toZMod bit * (rho 4588 - seg5AccX148 rho) := by
        rw [← hbit]
        unfold seg5AccX148
        linear_combination -r4895
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY149 rho = seg5AccY148 rho - Bool.toZMod bit * (seg5AccY148 rho - rho 4589) := by
      have hd : rho 4591 = Bool.toZMod bit * (rho 4589 - seg5AccY148 rho) := by
        rw [← hbit]
        unfold seg5AccY148
        linear_combination -r4896
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4582 * rho 4583 = rho 4592 := by linear_combination r4897
    have hd1 : rho 4582 * rho 4582 = rho 4593 := by linear_combination r4898
    have hd2 : rho 4583 * rho 4583 = rho 4594 := by linear_combination r4899
    have hd3 : rho 4595 * (rho 4583 * rho 4583 + rho 4582 * rho 4582 * (-1)) = 2 * (rho 4582 * rho 4583) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 4596 * (2 - (rho 4583 * rho 4583 + rho 4582 * rho 4582 * (-1))) = rho 4583 * rho 4583 - rho 4582 * rho 4582 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX148 rho : Seg5.F), (seg5AccY148 rho : Seg5.F)⟩
      ⟨(rho 4582 : Seg5.F), (rho 4583 : Seg5.F)⟩
      ⟨(rho 4588 : Seg5.F), (rho 4589 : Seg5.F)⟩
      ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩
      ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg5_rows149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4902 rho ∧ Seg5.relationRow4903 rho ∧ Seg5.relationRow4904 rho ∧ Seg5.relationRow4905 rho ∧ Seg5.relationRow4906 rho ∧ Seg5.relationRow4907 rho ∧ Seg5.relationRow4908 rho ∧ Seg5.relationRow4909 rho ∧ Seg5.relationRow4910 rho ∧ Seg5.relationRow4911 rho ∧ Seg5.relationRow4912 rho ∧ Seg5.relationRow4913 rho ∧ Seg5.relationRow4914 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩

theorem seg5_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2564 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩
        ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩
        ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩
        ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩ := by
  obtain ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩ := seg5_rows149 rho h
  unfold Seg5.relationRow4902 at r4902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4902
  unfold Seg5.relationRow4903 at r4903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4903
  unfold Seg5.relationRow4904 at r4904
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4904
  unfold Seg5.relationRow4905 at r4905
  unfold Seg5.relationRow4906 at r4906
  unfold Seg5.relationRow4907 at r4907
  unfold Seg5.relationRow4908 at r4908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908
  unfold Seg5.relationRow4909 at r4909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909
  unfold Seg5.relationRow4910 at r4910
  unfold Seg5.relationRow4911 at r4911
  unfold Seg5.relationRow4912 at r4912
  unfold Seg5.relationRow4913 at r4913
  unfold Seg5.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 2564 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩
        ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩
        ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩
        ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩ := by
    have hnextx : seg5AccX150 rho = seg5AccX149 rho + rho 4603 := by
      unfold seg5AccX150 seg5AccX149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 149]
      ring
    have hnexty : seg5AccY150 rho = seg5AccY149 rho + rho 4604 := by
      unfold seg5AccY150 seg5AccY149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 149]
      ring
    have ha0 : (rho 4595 + rho 4596) * (seg5AccX149 rho + seg5AccY149 rho) = rho 4597 := by
      unfold seg5AccX149 seg5AccY149
      linear_combination r4902
    have ha1 : rho 4596 * seg5AccX149 rho = rho 4598 := by
      unfold seg5AccX149
      linear_combination r4903
    have ha2 : rho 4595 * seg5AccY149 rho = rho 4599 := by
      unfold seg5AccY149
      linear_combination r4904
    have ha3 : 3021 * rho 4598 * rho 4599 = rho 4600 := by
      linear_combination r4905
    have ha4 : rho 4601 * (1 + rho 4600) = rho 4598 + rho 4599 := by
      linear_combination r4906
    have ha5 : rho 4602 * (1 - rho 4600) = rho 4597 - rho 4598 - rho 4599 := by
      linear_combination r4907
    have haddx :
        rho 4601 * (1 + 3021 * (rho 4596 * seg5AccX149 rho) * (rho 4595 * seg5AccY149 rho)) =
          rho 4596 * seg5AccX149 rho + rho 4595 * seg5AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4602 * (1 - 3021 * (rho 4596 * seg5AccX149 rho) * (rho 4595 * seg5AccY149 rho)) =
          (-1) * (rho 4596 * seg5AccX149 rho) - rho 4595 * seg5AccY149 rho +
            (seg5AccY149 rho - seg5AccX149 rho * (-1)) * (rho 4595 + rho 4596) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4602 * (1 - rho 4600) = rho 4597 - rho 4598 - rho 4599 := ha5
        _ = (-1) * rho 4598 - rho 4599 + (seg5AccY149 rho - seg5AccX149 rho * (-1)) * (rho 4595 + rho 4596) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX150 rho = seg5AccX149 rho - Bool.toZMod bit * (seg5AccX149 rho - rho 4601) := by
      have hd : rho 4603 = Bool.toZMod bit * (rho 4601 - seg5AccX149 rho) := by
        rw [← hbit]
        unfold seg5AccX149
        linear_combination -r4908
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY150 rho = seg5AccY149 rho - Bool.toZMod bit * (seg5AccY149 rho - rho 4602) := by
      have hd : rho 4604 = Bool.toZMod bit * (rho 4602 - seg5AccY149 rho) := by
        rw [← hbit]
        unfold seg5AccY149
        linear_combination -r4909
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4595 * rho 4596 = rho 4605 := by linear_combination r4910
    have hd1 : rho 4595 * rho 4595 = rho 4606 := by linear_combination r4911
    have hd2 : rho 4596 * rho 4596 = rho 4607 := by linear_combination r4912
    have hd3 : rho 4608 * (rho 4596 * rho 4596 + rho 4595 * rho 4595 * (-1)) = 2 * (rho 4595 * rho 4596) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 4609 * (2 - (rho 4596 * rho 4596 + rho 4595 * rho 4595 * (-1))) = rho 4596 * rho 4596 - rho 4595 * rho 4595 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX149 rho : Seg5.F), (seg5AccY149 rho : Seg5.F)⟩
      ⟨(rho 4595 : Seg5.F), (rho 4596 : Seg5.F)⟩
      ⟨(rho 4601 : Seg5.F), (rho 4602 : Seg5.F)⟩
      ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩
      ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg5_rows150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4915 rho ∧ Seg5.relationRow4916 rho ∧ Seg5.relationRow4917 rho ∧ Seg5.relationRow4918 rho ∧ Seg5.relationRow4919 rho ∧ Seg5.relationRow4920 rho ∧ Seg5.relationRow4921 rho ∧ Seg5.relationRow4922 rho ∧ Seg5.relationRow4923 rho ∧ Seg5.relationRow4924 rho ∧ Seg5.relationRow4925 rho ∧ Seg5.relationRow4926 rho ∧ Seg5.relationRow4927 rho ∧ Seg5.relationRow4928 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩

theorem seg5_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2565 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩
        ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩
        ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩
        ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩ := by
  obtain ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩ := seg5_rows150 rho h
  unfold Seg5.relationRow4915 at r4915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915
  unfold Seg5.relationRow4916 at r4916
  unfold Seg5.relationRow4917 at r4917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4917
  unfold Seg5.relationRow4918 at r4918
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918
  unfold Seg5.relationRow4919 at r4919
  unfold Seg5.relationRow4920 at r4920
  unfold Seg5.relationRow4921 at r4921
  unfold Seg5.relationRow4922 at r4922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922
  unfold Seg5.relationRow4923 at r4923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923
  unfold Seg5.relationRow4924 at r4924
  unfold Seg5.relationRow4925 at r4925
  unfold Seg5.relationRow4926 at r4926
  unfold Seg5.relationRow4927 at r4927
  unfold Seg5.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 2565 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩
        ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩
        ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩
        ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩ := by
    have hnextx : seg5AccX151 rho = seg5AccX150 rho + rho 4617 := by
      unfold seg5AccX151 seg5AccX150
      ring
    have hnexty : seg5AccY151 rho = seg5AccY150 rho + rho 4618 := by
      unfold seg5AccY151 seg5AccY150
      ring
    have hsum : seg5AccX150 rho + seg5AccY150 rho = rho 4610 := by
      unfold seg5AccX150 seg5AccY150
      linear_combination r4915
    have ha0 : (rho 4608 + rho 4609) * (seg5AccX150 rho + seg5AccY150 rho) = rho 4611 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 4609 * seg5AccX150 rho = rho 4612 := by
      unfold seg5AccX150
      linear_combination r4917
    have ha2 : rho 4608 * seg5AccY150 rho = rho 4613 := by
      unfold seg5AccY150
      linear_combination r4918
    have ha3 : 3021 * rho 4612 * rho 4613 = rho 4614 := by
      linear_combination r4919
    have ha4 : rho 4615 * (1 + rho 4614) = rho 4612 + rho 4613 := by
      linear_combination r4920
    have ha5 : rho 4616 * (1 - rho 4614) = rho 4611 - rho 4612 - rho 4613 := by
      linear_combination r4921
    have haddx :
        rho 4615 * (1 + 3021 * (rho 4609 * seg5AccX150 rho) * (rho 4608 * seg5AccY150 rho)) =
          rho 4609 * seg5AccX150 rho + rho 4608 * seg5AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4616 * (1 - 3021 * (rho 4609 * seg5AccX150 rho) * (rho 4608 * seg5AccY150 rho)) =
          (-1) * (rho 4609 * seg5AccX150 rho) - rho 4608 * seg5AccY150 rho +
            (seg5AccY150 rho - seg5AccX150 rho * (-1)) * (rho 4608 + rho 4609) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4616 * (1 - rho 4614) = rho 4611 - rho 4612 - rho 4613 := ha5
        _ = (-1) * rho 4612 - rho 4613 + (seg5AccY150 rho - seg5AccX150 rho * (-1)) * (rho 4608 + rho 4609) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX151 rho = seg5AccX150 rho - Bool.toZMod bit * (seg5AccX150 rho - rho 4615) := by
      have hd : rho 4617 = Bool.toZMod bit * (rho 4615 - seg5AccX150 rho) := by
        rw [← hbit]
        unfold seg5AccX150
        linear_combination -r4922
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY151 rho = seg5AccY150 rho - Bool.toZMod bit * (seg5AccY150 rho - rho 4616) := by
      have hd : rho 4618 = Bool.toZMod bit * (rho 4616 - seg5AccY150 rho) := by
        rw [← hbit]
        unfold seg5AccY150
        linear_combination -r4923
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4608 * rho 4609 = rho 4619 := by linear_combination r4924
    have hd1 : rho 4608 * rho 4608 = rho 4620 := by linear_combination r4925
    have hd2 : rho 4609 * rho 4609 = rho 4621 := by linear_combination r4926
    have hd3 : rho 4622 * (rho 4609 * rho 4609 + rho 4608 * rho 4608 * (-1)) = 2 * (rho 4608 * rho 4609) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 4623 * (2 - (rho 4609 * rho 4609 + rho 4608 * rho 4608 * (-1))) = rho 4609 * rho 4609 - rho 4608 * rho 4608 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX150 rho : Seg5.F), (seg5AccY150 rho : Seg5.F)⟩
      ⟨(rho 4608 : Seg5.F), (rho 4609 : Seg5.F)⟩
      ⟨(rho 4615 : Seg5.F), (rho 4616 : Seg5.F)⟩
      ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩
      ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg5_rows151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4929 rho ∧ Seg5.relationRow4930 rho ∧ Seg5.relationRow4931 rho ∧ Seg5.relationRow4932 rho ∧ Seg5.relationRow4933 rho ∧ Seg5.relationRow4934 rho ∧ Seg5.relationRow4935 rho ∧ Seg5.relationRow4936 rho ∧ Seg5.relationRow4937 rho ∧ Seg5.relationRow4938 rho ∧ Seg5.relationRow4939 rho ∧ Seg5.relationRow4940 rho ∧ Seg5.relationRow4941 rho ∧ Seg5.relationRow4942 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩

theorem seg5_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2566 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩
        ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩
        ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩
        ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩ := by
  obtain ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩ := seg5_rows151 rho h
  unfold Seg5.relationRow4929 at r4929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4929
  unfold Seg5.relationRow4930 at r4930
  unfold Seg5.relationRow4931 at r4931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931
  unfold Seg5.relationRow4932 at r4932
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932
  unfold Seg5.relationRow4933 at r4933
  unfold Seg5.relationRow4934 at r4934
  unfold Seg5.relationRow4935 at r4935
  unfold Seg5.relationRow4936 at r4936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936
  unfold Seg5.relationRow4937 at r4937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4937
  unfold Seg5.relationRow4938 at r4938
  unfold Seg5.relationRow4939 at r4939
  unfold Seg5.relationRow4940 at r4940
  unfold Seg5.relationRow4941 at r4941
  unfold Seg5.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 2566 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩
        ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩
        ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩
        ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩ := by
    have hnextx : seg5AccX152 rho = seg5AccX151 rho + rho 4631 := by
      unfold seg5AccX152 seg5AccX151
      ring
    have hnexty : seg5AccY152 rho = seg5AccY151 rho + rho 4632 := by
      unfold seg5AccY152 seg5AccY151
      ring
    have hsum : seg5AccX151 rho + seg5AccY151 rho = rho 4624 := by
      unfold seg5AccX151 seg5AccY151
      linear_combination r4929
    have ha0 : (rho 4622 + rho 4623) * (seg5AccX151 rho + seg5AccY151 rho) = rho 4625 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 4623 * seg5AccX151 rho = rho 4626 := by
      unfold seg5AccX151
      linear_combination r4931
    have ha2 : rho 4622 * seg5AccY151 rho = rho 4627 := by
      unfold seg5AccY151
      linear_combination r4932
    have ha3 : 3021 * rho 4626 * rho 4627 = rho 4628 := by
      linear_combination r4933
    have ha4 : rho 4629 * (1 + rho 4628) = rho 4626 + rho 4627 := by
      linear_combination r4934
    have ha5 : rho 4630 * (1 - rho 4628) = rho 4625 - rho 4626 - rho 4627 := by
      linear_combination r4935
    have haddx :
        rho 4629 * (1 + 3021 * (rho 4623 * seg5AccX151 rho) * (rho 4622 * seg5AccY151 rho)) =
          rho 4623 * seg5AccX151 rho + rho 4622 * seg5AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4630 * (1 - 3021 * (rho 4623 * seg5AccX151 rho) * (rho 4622 * seg5AccY151 rho)) =
          (-1) * (rho 4623 * seg5AccX151 rho) - rho 4622 * seg5AccY151 rho +
            (seg5AccY151 rho - seg5AccX151 rho * (-1)) * (rho 4622 + rho 4623) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4630 * (1 - rho 4628) = rho 4625 - rho 4626 - rho 4627 := ha5
        _ = (-1) * rho 4626 - rho 4627 + (seg5AccY151 rho - seg5AccX151 rho * (-1)) * (rho 4622 + rho 4623) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX152 rho = seg5AccX151 rho - Bool.toZMod bit * (seg5AccX151 rho - rho 4629) := by
      have hd : rho 4631 = Bool.toZMod bit * (rho 4629 - seg5AccX151 rho) := by
        rw [← hbit]
        unfold seg5AccX151
        linear_combination -r4936
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY152 rho = seg5AccY151 rho - Bool.toZMod bit * (seg5AccY151 rho - rho 4630) := by
      have hd : rho 4632 = Bool.toZMod bit * (rho 4630 - seg5AccY151 rho) := by
        rw [← hbit]
        unfold seg5AccY151
        linear_combination -r4937
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4622 * rho 4623 = rho 4633 := by linear_combination r4938
    have hd1 : rho 4622 * rho 4622 = rho 4634 := by linear_combination r4939
    have hd2 : rho 4623 * rho 4623 = rho 4635 := by linear_combination r4940
    have hd3 : rho 4636 * (rho 4623 * rho 4623 + rho 4622 * rho 4622 * (-1)) = 2 * (rho 4622 * rho 4623) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 4637 * (2 - (rho 4623 * rho 4623 + rho 4622 * rho 4622 * (-1))) = rho 4623 * rho 4623 - rho 4622 * rho 4622 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX151 rho : Seg5.F), (seg5AccY151 rho : Seg5.F)⟩
      ⟨(rho 4622 : Seg5.F), (rho 4623 : Seg5.F)⟩
      ⟨(rho 4629 : Seg5.F), (rho 4630 : Seg5.F)⟩
      ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩
      ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg5_rows152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4943 rho ∧ Seg5.relationRow4944 rho ∧ Seg5.relationRow4945 rho ∧ Seg5.relationRow4946 rho ∧ Seg5.relationRow4947 rho ∧ Seg5.relationRow4948 rho ∧ Seg5.relationRow4949 rho ∧ Seg5.relationRow4950 rho ∧ Seg5.relationRow4951 rho ∧ Seg5.relationRow4952 rho ∧ Seg5.relationRow4953 rho ∧ Seg5.relationRow4954 rho ∧ Seg5.relationRow4955 rho ∧ Seg5.relationRow4956 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  exact ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩

theorem seg5_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2567 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩
        ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩
        ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩
        ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩ := by
  obtain ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩ := seg5_rows152 rho h
  unfold Seg5.relationRow4943 at r4943
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4943
  unfold Seg5.relationRow4944 at r4944
  unfold Seg5.relationRow4945 at r4945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945
  unfold Seg5.relationRow4946 at r4946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4946
  unfold Seg5.relationRow4947 at r4947
  unfold Seg5.relationRow4948 at r4948
  unfold Seg5.relationRow4949 at r4949
  unfold Seg5.relationRow4950 at r4950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4950
  unfold Seg5.relationRow4951 at r4951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951
  unfold Seg5.relationRow4952 at r4952
  unfold Seg5.relationRow4953 at r4953
  unfold Seg5.relationRow4954 at r4954
  unfold Seg5.relationRow4955 at r4955
  unfold Seg5.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 2567 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩
        ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩
        ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩
        ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩ := by
    have hnextx : seg5AccX153 rho = seg5AccX152 rho + rho 4645 := by
      unfold seg5AccX153 seg5AccX152
      ring
    have hnexty : seg5AccY153 rho = seg5AccY152 rho + rho 4646 := by
      unfold seg5AccY153 seg5AccY152
      ring
    have hsum : seg5AccX152 rho + seg5AccY152 rho = rho 4638 := by
      unfold seg5AccX152 seg5AccY152
      linear_combination r4943
    have ha0 : (rho 4636 + rho 4637) * (seg5AccX152 rho + seg5AccY152 rho) = rho 4639 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 4637 * seg5AccX152 rho = rho 4640 := by
      unfold seg5AccX152
      linear_combination r4945
    have ha2 : rho 4636 * seg5AccY152 rho = rho 4641 := by
      unfold seg5AccY152
      linear_combination r4946
    have ha3 : 3021 * rho 4640 * rho 4641 = rho 4642 := by
      linear_combination r4947
    have ha4 : rho 4643 * (1 + rho 4642) = rho 4640 + rho 4641 := by
      linear_combination r4948
    have ha5 : rho 4644 * (1 - rho 4642) = rho 4639 - rho 4640 - rho 4641 := by
      linear_combination r4949
    have haddx :
        rho 4643 * (1 + 3021 * (rho 4637 * seg5AccX152 rho) * (rho 4636 * seg5AccY152 rho)) =
          rho 4637 * seg5AccX152 rho + rho 4636 * seg5AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4644 * (1 - 3021 * (rho 4637 * seg5AccX152 rho) * (rho 4636 * seg5AccY152 rho)) =
          (-1) * (rho 4637 * seg5AccX152 rho) - rho 4636 * seg5AccY152 rho +
            (seg5AccY152 rho - seg5AccX152 rho * (-1)) * (rho 4636 + rho 4637) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4644 * (1 - rho 4642) = rho 4639 - rho 4640 - rho 4641 := ha5
        _ = (-1) * rho 4640 - rho 4641 + (seg5AccY152 rho - seg5AccX152 rho * (-1)) * (rho 4636 + rho 4637) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX153 rho = seg5AccX152 rho - Bool.toZMod bit * (seg5AccX152 rho - rho 4643) := by
      have hd : rho 4645 = Bool.toZMod bit * (rho 4643 - seg5AccX152 rho) := by
        rw [← hbit]
        unfold seg5AccX152
        linear_combination -r4950
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY153 rho = seg5AccY152 rho - Bool.toZMod bit * (seg5AccY152 rho - rho 4644) := by
      have hd : rho 4646 = Bool.toZMod bit * (rho 4644 - seg5AccY152 rho) := by
        rw [← hbit]
        unfold seg5AccY152
        linear_combination -r4951
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4636 * rho 4637 = rho 4647 := by linear_combination r4952
    have hd1 : rho 4636 * rho 4636 = rho 4648 := by linear_combination r4953
    have hd2 : rho 4637 * rho 4637 = rho 4649 := by linear_combination r4954
    have hd3 : rho 4650 * (rho 4637 * rho 4637 + rho 4636 * rho 4636 * (-1)) = 2 * (rho 4636 * rho 4637) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 4651 * (2 - (rho 4637 * rho 4637 + rho 4636 * rho 4636 * (-1))) = rho 4637 * rho 4637 - rho 4636 * rho 4636 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX152 rho : Seg5.F), (seg5AccY152 rho : Seg5.F)⟩
      ⟨(rho 4636 : Seg5.F), (rho 4637 : Seg5.F)⟩
      ⟨(rho 4643 : Seg5.F), (rho 4644 : Seg5.F)⟩
      ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩
      ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg5_rows153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4957 rho ∧ Seg5.relationRow4958 rho ∧ Seg5.relationRow4959 rho ∧ Seg5.relationRow4960 rho ∧ Seg5.relationRow4961 rho ∧ Seg5.relationRow4962 rho ∧ Seg5.relationRow4963 rho ∧ Seg5.relationRow4964 rho ∧ Seg5.relationRow4965 rho ∧ Seg5.relationRow4966 rho ∧ Seg5.relationRow4967 rho ∧ Seg5.relationRow4968 rho ∧ Seg5.relationRow4969 rho ∧ Seg5.relationRow4970 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg5.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩

theorem seg5_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2568 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩
        ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩
        ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩
        ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩ := by
  obtain ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩ := seg5_rows153 rho h
  unfold Seg5.relationRow4957 at r4957
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957
  unfold Seg5.relationRow4958 at r4958
  unfold Seg5.relationRow4959 at r4959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4959
  unfold Seg5.relationRow4960 at r4960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960
  unfold Seg5.relationRow4961 at r4961
  unfold Seg5.relationRow4962 at r4962
  unfold Seg5.relationRow4963 at r4963
  unfold Seg5.relationRow4964 at r4964
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964
  unfold Seg5.relationRow4965 at r4965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965
  unfold Seg5.relationRow4966 at r4966
  unfold Seg5.relationRow4967 at r4967
  unfold Seg5.relationRow4968 at r4968
  unfold Seg5.relationRow4969 at r4969
  unfold Seg5.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 2568 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩
        ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩
        ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩
        ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩ := by
    have hnextx : seg5AccX154 rho = seg5AccX153 rho + rho 4659 := by
      unfold seg5AccX154 seg5AccX153
      ring
    have hnexty : seg5AccY154 rho = seg5AccY153 rho + rho 4660 := by
      unfold seg5AccY154 seg5AccY153
      ring
    have hsum : seg5AccX153 rho + seg5AccY153 rho = rho 4652 := by
      unfold seg5AccX153 seg5AccY153
      linear_combination r4957
    have ha0 : (rho 4650 + rho 4651) * (seg5AccX153 rho + seg5AccY153 rho) = rho 4653 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 4651 * seg5AccX153 rho = rho 4654 := by
      unfold seg5AccX153
      linear_combination r4959
    have ha2 : rho 4650 * seg5AccY153 rho = rho 4655 := by
      unfold seg5AccY153
      linear_combination r4960
    have ha3 : 3021 * rho 4654 * rho 4655 = rho 4656 := by
      linear_combination r4961
    have ha4 : rho 4657 * (1 + rho 4656) = rho 4654 + rho 4655 := by
      linear_combination r4962
    have ha5 : rho 4658 * (1 - rho 4656) = rho 4653 - rho 4654 - rho 4655 := by
      linear_combination r4963
    have haddx :
        rho 4657 * (1 + 3021 * (rho 4651 * seg5AccX153 rho) * (rho 4650 * seg5AccY153 rho)) =
          rho 4651 * seg5AccX153 rho + rho 4650 * seg5AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4658 * (1 - 3021 * (rho 4651 * seg5AccX153 rho) * (rho 4650 * seg5AccY153 rho)) =
          (-1) * (rho 4651 * seg5AccX153 rho) - rho 4650 * seg5AccY153 rho +
            (seg5AccY153 rho - seg5AccX153 rho * (-1)) * (rho 4650 + rho 4651) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4658 * (1 - rho 4656) = rho 4653 - rho 4654 - rho 4655 := ha5
        _ = (-1) * rho 4654 - rho 4655 + (seg5AccY153 rho - seg5AccX153 rho * (-1)) * (rho 4650 + rho 4651) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX154 rho = seg5AccX153 rho - Bool.toZMod bit * (seg5AccX153 rho - rho 4657) := by
      have hd : rho 4659 = Bool.toZMod bit * (rho 4657 - seg5AccX153 rho) := by
        rw [← hbit]
        unfold seg5AccX153
        linear_combination -r4964
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY154 rho = seg5AccY153 rho - Bool.toZMod bit * (seg5AccY153 rho - rho 4658) := by
      have hd : rho 4660 = Bool.toZMod bit * (rho 4658 - seg5AccY153 rho) := by
        rw [← hbit]
        unfold seg5AccY153
        linear_combination -r4965
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4650 * rho 4651 = rho 4661 := by linear_combination r4966
    have hd1 : rho 4650 * rho 4650 = rho 4662 := by linear_combination r4967
    have hd2 : rho 4651 * rho 4651 = rho 4663 := by linear_combination r4968
    have hd3 : rho 4664 * (rho 4651 * rho 4651 + rho 4650 * rho 4650 * (-1)) = 2 * (rho 4650 * rho 4651) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 4665 * (2 - (rho 4651 * rho 4651 + rho 4650 * rho 4650 * (-1))) = rho 4651 * rho 4651 - rho 4650 * rho 4650 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX153 rho : Seg5.F), (seg5AccY153 rho : Seg5.F)⟩
      ⟨(rho 4650 : Seg5.F), (rho 4651 : Seg5.F)⟩
      ⟨(rho 4657 : Seg5.F), (rho 4658 : Seg5.F)⟩
      ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩
      ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg5_hstep_c13 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 143 ≤ i → i < 154 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg5_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg5_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg5_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg5_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg5_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg5_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg5_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg5_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg5_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg5_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
