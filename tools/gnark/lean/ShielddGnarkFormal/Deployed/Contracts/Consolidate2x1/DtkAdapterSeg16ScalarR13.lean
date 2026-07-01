import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4824 rho ∧ Seg16.relationRow4825 rho ∧ Seg16.relationRow4826 rho ∧ Seg16.relationRow4827 rho ∧ Seg16.relationRow4828 rho ∧ Seg16.relationRow4829 rho ∧ Seg16.relationRow4830 rho ∧ Seg16.relationRow4831 rho ∧ Seg16.relationRow4832 rho ∧ Seg16.relationRow4833 rho ∧ Seg16.relationRow4834 rho ∧ Seg16.relationRow4835 rho ∧ Seg16.relationRow4836 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩

theorem seg16_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15435 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩ := by
  obtain ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩ := seg16_rows143 rho h
  unfold Seg16.relationRow4824 at r4824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824
  unfold Seg16.relationRow4825 at r4825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4825
  unfold Seg16.relationRow4826 at r4826
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4826
  unfold Seg16.relationRow4827 at r4827
  unfold Seg16.relationRow4828 at r4828
  unfold Seg16.relationRow4829 at r4829
  unfold Seg16.relationRow4830 at r4830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4830
  unfold Seg16.relationRow4831 at r4831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831
  unfold Seg16.relationRow4832 at r4832
  unfold Seg16.relationRow4833 at r4833
  unfold Seg16.relationRow4834 at r4834
  unfold Seg16.relationRow4835 at r4835
  unfold Seg16.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 15435 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩ := by
    have hnextx : seg16AccX144 rho = seg16AccX143 rho + rho 17402 := by
      unfold seg16AccX144 seg16AccX143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 143]
      ring
    have hnexty : seg16AccY144 rho = seg16AccY143 rho + rho 17403 := by
      unfold seg16AccY144 seg16AccY143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 143]
      ring
    have ha0 : (rho 17394 + rho 17395) * (seg16AccX143 rho + seg16AccY143 rho) = rho 17396 := by
      unfold seg16AccX143 seg16AccY143
      linear_combination r4824
    have ha1 : rho 17395 * seg16AccX143 rho = rho 17397 := by
      unfold seg16AccX143
      linear_combination r4825
    have ha2 : rho 17394 * seg16AccY143 rho = rho 17398 := by
      unfold seg16AccY143
      linear_combination r4826
    have ha3 : 3021 * rho 17397 * rho 17398 = rho 17399 := by
      linear_combination r4827
    have ha4 : rho 17400 * (1 + rho 17399) = rho 17397 + rho 17398 := by
      linear_combination r4828
    have ha5 : rho 17401 * (1 - rho 17399) = rho 17396 - rho 17397 - rho 17398 := by
      linear_combination r4829
    have haddx :
        rho 17400 * (1 + 3021 * (rho 17395 * seg16AccX143 rho) * (rho 17394 * seg16AccY143 rho)) =
          rho 17395 * seg16AccX143 rho + rho 17394 * seg16AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17401 * (1 - 3021 * (rho 17395 * seg16AccX143 rho) * (rho 17394 * seg16AccY143 rho)) =
          (-1) * (rho 17395 * seg16AccX143 rho) - rho 17394 * seg16AccY143 rho +
            (seg16AccY143 rho - seg16AccX143 rho * (-1)) * (rho 17394 + rho 17395) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17401 * (1 - rho 17399) = rho 17396 - rho 17397 - rho 17398 := ha5
        _ = (-1) * rho 17397 - rho 17398 + (seg16AccY143 rho - seg16AccX143 rho * (-1)) * (rho 17394 + rho 17395) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX144 rho = seg16AccX143 rho - Bool.toZMod bit * (seg16AccX143 rho - rho 17400) := by
      have hd : rho 17402 = Bool.toZMod bit * (rho 17400 - seg16AccX143 rho) := by
        rw [← hbit]
        unfold seg16AccX143
        linear_combination -r4830
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY144 rho = seg16AccY143 rho - Bool.toZMod bit * (seg16AccY143 rho - rho 17401) := by
      have hd : rho 17403 = Bool.toZMod bit * (rho 17401 - seg16AccY143 rho) := by
        rw [← hbit]
        unfold seg16AccY143
        linear_combination -r4831
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17394 * rho 17395 = rho 17404 := by linear_combination r4832
    have hd1 : rho 17394 * rho 17394 = rho 17405 := by linear_combination r4833
    have hd2 : rho 17395 * rho 17395 = rho 17406 := by linear_combination r4834
    have hd3 : rho 17407 * (rho 17395 * rho 17395 + rho 17394 * rho 17394 * (-1)) = 2 * (rho 17394 * rho 17395) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 17408 * (2 - (rho 17395 * rho 17395 + rho 17394 * rho 17394 * (-1))) = rho 17395 * rho 17395 - rho 17394 * rho 17394 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
      ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
      ⟨(rho 17400 : Seg16.F), (rho 17401 : Seg16.F)⟩
      ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
      ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg16_rows144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4837 rho ∧ Seg16.relationRow4838 rho ∧ Seg16.relationRow4839 rho ∧ Seg16.relationRow4840 rho ∧ Seg16.relationRow4841 rho ∧ Seg16.relationRow4842 rho ∧ Seg16.relationRow4843 rho ∧ Seg16.relationRow4844 rho ∧ Seg16.relationRow4845 rho ∧ Seg16.relationRow4846 rho ∧ Seg16.relationRow4847 rho ∧ Seg16.relationRow4848 rho ∧ Seg16.relationRow4849 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩

theorem seg16_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15436 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩ := by
  obtain ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩ := seg16_rows144 rho h
  unfold Seg16.relationRow4837 at r4837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4837
  unfold Seg16.relationRow4838 at r4838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4838
  unfold Seg16.relationRow4839 at r4839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4839
  unfold Seg16.relationRow4840 at r4840
  unfold Seg16.relationRow4841 at r4841
  unfold Seg16.relationRow4842 at r4842
  unfold Seg16.relationRow4843 at r4843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4843
  unfold Seg16.relationRow4844 at r4844
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4844
  unfold Seg16.relationRow4845 at r4845
  unfold Seg16.relationRow4846 at r4846
  unfold Seg16.relationRow4847 at r4847
  unfold Seg16.relationRow4848 at r4848
  unfold Seg16.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 15436 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩ := by
    have hnextx : seg16AccX145 rho = seg16AccX144 rho + rho 17415 := by
      unfold seg16AccX145 seg16AccX144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 144]
      ring
    have hnexty : seg16AccY145 rho = seg16AccY144 rho + rho 17416 := by
      unfold seg16AccY145 seg16AccY144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 144]
      ring
    have ha0 : (rho 17407 + rho 17408) * (seg16AccX144 rho + seg16AccY144 rho) = rho 17409 := by
      unfold seg16AccX144 seg16AccY144
      linear_combination r4837
    have ha1 : rho 17408 * seg16AccX144 rho = rho 17410 := by
      unfold seg16AccX144
      linear_combination r4838
    have ha2 : rho 17407 * seg16AccY144 rho = rho 17411 := by
      unfold seg16AccY144
      linear_combination r4839
    have ha3 : 3021 * rho 17410 * rho 17411 = rho 17412 := by
      linear_combination r4840
    have ha4 : rho 17413 * (1 + rho 17412) = rho 17410 + rho 17411 := by
      linear_combination r4841
    have ha5 : rho 17414 * (1 - rho 17412) = rho 17409 - rho 17410 - rho 17411 := by
      linear_combination r4842
    have haddx :
        rho 17413 * (1 + 3021 * (rho 17408 * seg16AccX144 rho) * (rho 17407 * seg16AccY144 rho)) =
          rho 17408 * seg16AccX144 rho + rho 17407 * seg16AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17414 * (1 - 3021 * (rho 17408 * seg16AccX144 rho) * (rho 17407 * seg16AccY144 rho)) =
          (-1) * (rho 17408 * seg16AccX144 rho) - rho 17407 * seg16AccY144 rho +
            (seg16AccY144 rho - seg16AccX144 rho * (-1)) * (rho 17407 + rho 17408) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17414 * (1 - rho 17412) = rho 17409 - rho 17410 - rho 17411 := ha5
        _ = (-1) * rho 17410 - rho 17411 + (seg16AccY144 rho - seg16AccX144 rho * (-1)) * (rho 17407 + rho 17408) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX145 rho = seg16AccX144 rho - Bool.toZMod bit * (seg16AccX144 rho - rho 17413) := by
      have hd : rho 17415 = Bool.toZMod bit * (rho 17413 - seg16AccX144 rho) := by
        rw [← hbit]
        unfold seg16AccX144
        linear_combination -r4843
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY145 rho = seg16AccY144 rho - Bool.toZMod bit * (seg16AccY144 rho - rho 17414) := by
      have hd : rho 17416 = Bool.toZMod bit * (rho 17414 - seg16AccY144 rho) := by
        rw [← hbit]
        unfold seg16AccY144
        linear_combination -r4844
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17407 * rho 17408 = rho 17417 := by linear_combination r4845
    have hd1 : rho 17407 * rho 17407 = rho 17418 := by linear_combination r4846
    have hd2 : rho 17408 * rho 17408 = rho 17419 := by linear_combination r4847
    have hd3 : rho 17420 * (rho 17408 * rho 17408 + rho 17407 * rho 17407 * (-1)) = 2 * (rho 17407 * rho 17408) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 17421 * (2 - (rho 17408 * rho 17408 + rho 17407 * rho 17407 * (-1))) = rho 17408 * rho 17408 - rho 17407 * rho 17407 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
      ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
      ⟨(rho 17413 : Seg16.F), (rho 17414 : Seg16.F)⟩
      ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
      ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg16_rows145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4850 rho ∧ Seg16.relationRow4851 rho ∧ Seg16.relationRow4852 rho ∧ Seg16.relationRow4853 rho ∧ Seg16.relationRow4854 rho ∧ Seg16.relationRow4855 rho ∧ Seg16.relationRow4856 rho ∧ Seg16.relationRow4857 rho ∧ Seg16.relationRow4858 rho ∧ Seg16.relationRow4859 rho ∧ Seg16.relationRow4860 rho ∧ Seg16.relationRow4861 rho ∧ Seg16.relationRow4862 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩

theorem seg16_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15437 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩ := by
  obtain ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩ := seg16_rows145 rho h
  unfold Seg16.relationRow4850 at r4850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4850
  unfold Seg16.relationRow4851 at r4851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4851
  unfold Seg16.relationRow4852 at r4852
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4852
  unfold Seg16.relationRow4853 at r4853
  unfold Seg16.relationRow4854 at r4854
  unfold Seg16.relationRow4855 at r4855
  unfold Seg16.relationRow4856 at r4856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4856
  unfold Seg16.relationRow4857 at r4857
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4857
  unfold Seg16.relationRow4858 at r4858
  unfold Seg16.relationRow4859 at r4859
  unfold Seg16.relationRow4860 at r4860
  unfold Seg16.relationRow4861 at r4861
  unfold Seg16.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 15437 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩ := by
    have hnextx : seg16AccX146 rho = seg16AccX145 rho + rho 17428 := by
      unfold seg16AccX146 seg16AccX145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 145]
      ring
    have hnexty : seg16AccY146 rho = seg16AccY145 rho + rho 17429 := by
      unfold seg16AccY146 seg16AccY145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 145]
      ring
    have ha0 : (rho 17420 + rho 17421) * (seg16AccX145 rho + seg16AccY145 rho) = rho 17422 := by
      unfold seg16AccX145 seg16AccY145
      linear_combination r4850
    have ha1 : rho 17421 * seg16AccX145 rho = rho 17423 := by
      unfold seg16AccX145
      linear_combination r4851
    have ha2 : rho 17420 * seg16AccY145 rho = rho 17424 := by
      unfold seg16AccY145
      linear_combination r4852
    have ha3 : 3021 * rho 17423 * rho 17424 = rho 17425 := by
      linear_combination r4853
    have ha4 : rho 17426 * (1 + rho 17425) = rho 17423 + rho 17424 := by
      linear_combination r4854
    have ha5 : rho 17427 * (1 - rho 17425) = rho 17422 - rho 17423 - rho 17424 := by
      linear_combination r4855
    have haddx :
        rho 17426 * (1 + 3021 * (rho 17421 * seg16AccX145 rho) * (rho 17420 * seg16AccY145 rho)) =
          rho 17421 * seg16AccX145 rho + rho 17420 * seg16AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17427 * (1 - 3021 * (rho 17421 * seg16AccX145 rho) * (rho 17420 * seg16AccY145 rho)) =
          (-1) * (rho 17421 * seg16AccX145 rho) - rho 17420 * seg16AccY145 rho +
            (seg16AccY145 rho - seg16AccX145 rho * (-1)) * (rho 17420 + rho 17421) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17427 * (1 - rho 17425) = rho 17422 - rho 17423 - rho 17424 := ha5
        _ = (-1) * rho 17423 - rho 17424 + (seg16AccY145 rho - seg16AccX145 rho * (-1)) * (rho 17420 + rho 17421) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX146 rho = seg16AccX145 rho - Bool.toZMod bit * (seg16AccX145 rho - rho 17426) := by
      have hd : rho 17428 = Bool.toZMod bit * (rho 17426 - seg16AccX145 rho) := by
        rw [← hbit]
        unfold seg16AccX145
        linear_combination -r4856
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY146 rho = seg16AccY145 rho - Bool.toZMod bit * (seg16AccY145 rho - rho 17427) := by
      have hd : rho 17429 = Bool.toZMod bit * (rho 17427 - seg16AccY145 rho) := by
        rw [← hbit]
        unfold seg16AccY145
        linear_combination -r4857
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17420 * rho 17421 = rho 17430 := by linear_combination r4858
    have hd1 : rho 17420 * rho 17420 = rho 17431 := by linear_combination r4859
    have hd2 : rho 17421 * rho 17421 = rho 17432 := by linear_combination r4860
    have hd3 : rho 17433 * (rho 17421 * rho 17421 + rho 17420 * rho 17420 * (-1)) = 2 * (rho 17420 * rho 17421) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 17434 * (2 - (rho 17421 * rho 17421 + rho 17420 * rho 17420 * (-1))) = rho 17421 * rho 17421 - rho 17420 * rho 17420 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
      ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
      ⟨(rho 17426 : Seg16.F), (rho 17427 : Seg16.F)⟩
      ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
      ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg16_rows146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4863 rho ∧ Seg16.relationRow4864 rho ∧ Seg16.relationRow4865 rho ∧ Seg16.relationRow4866 rho ∧ Seg16.relationRow4867 rho ∧ Seg16.relationRow4868 rho ∧ Seg16.relationRow4869 rho ∧ Seg16.relationRow4870 rho ∧ Seg16.relationRow4871 rho ∧ Seg16.relationRow4872 rho ∧ Seg16.relationRow4873 rho ∧ Seg16.relationRow4874 rho ∧ Seg16.relationRow4875 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  exact ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩

theorem seg16_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15438 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩ := by
  obtain ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩ := seg16_rows146 rho h
  unfold Seg16.relationRow4863 at r4863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4863
  unfold Seg16.relationRow4864 at r4864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4864
  unfold Seg16.relationRow4865 at r4865
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4865
  unfold Seg16.relationRow4866 at r4866
  unfold Seg16.relationRow4867 at r4867
  unfold Seg16.relationRow4868 at r4868
  unfold Seg16.relationRow4869 at r4869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4869
  unfold Seg16.relationRow4870 at r4870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4870
  unfold Seg16.relationRow4871 at r4871
  unfold Seg16.relationRow4872 at r4872
  unfold Seg16.relationRow4873 at r4873
  unfold Seg16.relationRow4874 at r4874
  unfold Seg16.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 15438 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩ := by
    have hnextx : seg16AccX147 rho = seg16AccX146 rho + rho 17441 := by
      unfold seg16AccX147 seg16AccX146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 146]
      ring
    have hnexty : seg16AccY147 rho = seg16AccY146 rho + rho 17442 := by
      unfold seg16AccY147 seg16AccY146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 146]
      ring
    have ha0 : (rho 17433 + rho 17434) * (seg16AccX146 rho + seg16AccY146 rho) = rho 17435 := by
      unfold seg16AccX146 seg16AccY146
      linear_combination r4863
    have ha1 : rho 17434 * seg16AccX146 rho = rho 17436 := by
      unfold seg16AccX146
      linear_combination r4864
    have ha2 : rho 17433 * seg16AccY146 rho = rho 17437 := by
      unfold seg16AccY146
      linear_combination r4865
    have ha3 : 3021 * rho 17436 * rho 17437 = rho 17438 := by
      linear_combination r4866
    have ha4 : rho 17439 * (1 + rho 17438) = rho 17436 + rho 17437 := by
      linear_combination r4867
    have ha5 : rho 17440 * (1 - rho 17438) = rho 17435 - rho 17436 - rho 17437 := by
      linear_combination r4868
    have haddx :
        rho 17439 * (1 + 3021 * (rho 17434 * seg16AccX146 rho) * (rho 17433 * seg16AccY146 rho)) =
          rho 17434 * seg16AccX146 rho + rho 17433 * seg16AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17440 * (1 - 3021 * (rho 17434 * seg16AccX146 rho) * (rho 17433 * seg16AccY146 rho)) =
          (-1) * (rho 17434 * seg16AccX146 rho) - rho 17433 * seg16AccY146 rho +
            (seg16AccY146 rho - seg16AccX146 rho * (-1)) * (rho 17433 + rho 17434) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17440 * (1 - rho 17438) = rho 17435 - rho 17436 - rho 17437 := ha5
        _ = (-1) * rho 17436 - rho 17437 + (seg16AccY146 rho - seg16AccX146 rho * (-1)) * (rho 17433 + rho 17434) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX147 rho = seg16AccX146 rho - Bool.toZMod bit * (seg16AccX146 rho - rho 17439) := by
      have hd : rho 17441 = Bool.toZMod bit * (rho 17439 - seg16AccX146 rho) := by
        rw [← hbit]
        unfold seg16AccX146
        linear_combination -r4869
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY147 rho = seg16AccY146 rho - Bool.toZMod bit * (seg16AccY146 rho - rho 17440) := by
      have hd : rho 17442 = Bool.toZMod bit * (rho 17440 - seg16AccY146 rho) := by
        rw [← hbit]
        unfold seg16AccY146
        linear_combination -r4870
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17433 * rho 17434 = rho 17443 := by linear_combination r4871
    have hd1 : rho 17433 * rho 17433 = rho 17444 := by linear_combination r4872
    have hd2 : rho 17434 * rho 17434 = rho 17445 := by linear_combination r4873
    have hd3 : rho 17446 * (rho 17434 * rho 17434 + rho 17433 * rho 17433 * (-1)) = 2 * (rho 17433 * rho 17434) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 17447 * (2 - (rho 17434 * rho 17434 + rho 17433 * rho 17433 * (-1))) = rho 17434 * rho 17434 - rho 17433 * rho 17433 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
      ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
      ⟨(rho 17439 : Seg16.F), (rho 17440 : Seg16.F)⟩
      ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
      ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg16_rows147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4876 rho ∧ Seg16.relationRow4877 rho ∧ Seg16.relationRow4878 rho ∧ Seg16.relationRow4879 rho ∧ Seg16.relationRow4880 rho ∧ Seg16.relationRow4881 rho ∧ Seg16.relationRow4882 rho ∧ Seg16.relationRow4883 rho ∧ Seg16.relationRow4884 rho ∧ Seg16.relationRow4885 rho ∧ Seg16.relationRow4886 rho ∧ Seg16.relationRow4887 rho ∧ Seg16.relationRow4888 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩

theorem seg16_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15439 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩ := by
  obtain ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩ := seg16_rows147 rho h
  unfold Seg16.relationRow4876 at r4876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876
  unfold Seg16.relationRow4877 at r4877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4877
  unfold Seg16.relationRow4878 at r4878
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4878
  unfold Seg16.relationRow4879 at r4879
  unfold Seg16.relationRow4880 at r4880
  unfold Seg16.relationRow4881 at r4881
  unfold Seg16.relationRow4882 at r4882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4882
  unfold Seg16.relationRow4883 at r4883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4883
  unfold Seg16.relationRow4884 at r4884
  unfold Seg16.relationRow4885 at r4885
  unfold Seg16.relationRow4886 at r4886
  unfold Seg16.relationRow4887 at r4887
  unfold Seg16.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 15439 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩ := by
    have hnextx : seg16AccX148 rho = seg16AccX147 rho + rho 17454 := by
      unfold seg16AccX148 seg16AccX147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 147]
      ring
    have hnexty : seg16AccY148 rho = seg16AccY147 rho + rho 17455 := by
      unfold seg16AccY148 seg16AccY147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 147]
      ring
    have ha0 : (rho 17446 + rho 17447) * (seg16AccX147 rho + seg16AccY147 rho) = rho 17448 := by
      unfold seg16AccX147 seg16AccY147
      linear_combination r4876
    have ha1 : rho 17447 * seg16AccX147 rho = rho 17449 := by
      unfold seg16AccX147
      linear_combination r4877
    have ha2 : rho 17446 * seg16AccY147 rho = rho 17450 := by
      unfold seg16AccY147
      linear_combination r4878
    have ha3 : 3021 * rho 17449 * rho 17450 = rho 17451 := by
      linear_combination r4879
    have ha4 : rho 17452 * (1 + rho 17451) = rho 17449 + rho 17450 := by
      linear_combination r4880
    have ha5 : rho 17453 * (1 - rho 17451) = rho 17448 - rho 17449 - rho 17450 := by
      linear_combination r4881
    have haddx :
        rho 17452 * (1 + 3021 * (rho 17447 * seg16AccX147 rho) * (rho 17446 * seg16AccY147 rho)) =
          rho 17447 * seg16AccX147 rho + rho 17446 * seg16AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17453 * (1 - 3021 * (rho 17447 * seg16AccX147 rho) * (rho 17446 * seg16AccY147 rho)) =
          (-1) * (rho 17447 * seg16AccX147 rho) - rho 17446 * seg16AccY147 rho +
            (seg16AccY147 rho - seg16AccX147 rho * (-1)) * (rho 17446 + rho 17447) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17453 * (1 - rho 17451) = rho 17448 - rho 17449 - rho 17450 := ha5
        _ = (-1) * rho 17449 - rho 17450 + (seg16AccY147 rho - seg16AccX147 rho * (-1)) * (rho 17446 + rho 17447) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX148 rho = seg16AccX147 rho - Bool.toZMod bit * (seg16AccX147 rho - rho 17452) := by
      have hd : rho 17454 = Bool.toZMod bit * (rho 17452 - seg16AccX147 rho) := by
        rw [← hbit]
        unfold seg16AccX147
        linear_combination -r4882
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY148 rho = seg16AccY147 rho - Bool.toZMod bit * (seg16AccY147 rho - rho 17453) := by
      have hd : rho 17455 = Bool.toZMod bit * (rho 17453 - seg16AccY147 rho) := by
        rw [← hbit]
        unfold seg16AccY147
        linear_combination -r4883
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17446 * rho 17447 = rho 17456 := by linear_combination r4884
    have hd1 : rho 17446 * rho 17446 = rho 17457 := by linear_combination r4885
    have hd2 : rho 17447 * rho 17447 = rho 17458 := by linear_combination r4886
    have hd3 : rho 17459 * (rho 17447 * rho 17447 + rho 17446 * rho 17446 * (-1)) = 2 * (rho 17446 * rho 17447) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 17460 * (2 - (rho 17447 * rho 17447 + rho 17446 * rho 17446 * (-1))) = rho 17447 * rho 17447 - rho 17446 * rho 17446 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
      ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
      ⟨(rho 17452 : Seg16.F), (rho 17453 : Seg16.F)⟩
      ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
      ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg16_rows148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4889 rho ∧ Seg16.relationRow4890 rho ∧ Seg16.relationRow4891 rho ∧ Seg16.relationRow4892 rho ∧ Seg16.relationRow4893 rho ∧ Seg16.relationRow4894 rho ∧ Seg16.relationRow4895 rho ∧ Seg16.relationRow4896 rho ∧ Seg16.relationRow4897 rho ∧ Seg16.relationRow4898 rho ∧ Seg16.relationRow4899 rho ∧ Seg16.relationRow4900 rho ∧ Seg16.relationRow4901 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩

theorem seg16_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15440 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩ := by
  obtain ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩ := seg16_rows148 rho h
  unfold Seg16.relationRow4889 at r4889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889
  unfold Seg16.relationRow4890 at r4890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4890
  unfold Seg16.relationRow4891 at r4891
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4891
  unfold Seg16.relationRow4892 at r4892
  unfold Seg16.relationRow4893 at r4893
  unfold Seg16.relationRow4894 at r4894
  unfold Seg16.relationRow4895 at r4895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895
  unfold Seg16.relationRow4896 at r4896
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4896
  unfold Seg16.relationRow4897 at r4897
  unfold Seg16.relationRow4898 at r4898
  unfold Seg16.relationRow4899 at r4899
  unfold Seg16.relationRow4900 at r4900
  unfold Seg16.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 15440 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩ := by
    have hnextx : seg16AccX149 rho = seg16AccX148 rho + rho 17467 := by
      unfold seg16AccX149 seg16AccX148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 148]
      ring
    have hnexty : seg16AccY149 rho = seg16AccY148 rho + rho 17468 := by
      unfold seg16AccY149 seg16AccY148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 148]
      ring
    have ha0 : (rho 17459 + rho 17460) * (seg16AccX148 rho + seg16AccY148 rho) = rho 17461 := by
      unfold seg16AccX148 seg16AccY148
      linear_combination r4889
    have ha1 : rho 17460 * seg16AccX148 rho = rho 17462 := by
      unfold seg16AccX148
      linear_combination r4890
    have ha2 : rho 17459 * seg16AccY148 rho = rho 17463 := by
      unfold seg16AccY148
      linear_combination r4891
    have ha3 : 3021 * rho 17462 * rho 17463 = rho 17464 := by
      linear_combination r4892
    have ha4 : rho 17465 * (1 + rho 17464) = rho 17462 + rho 17463 := by
      linear_combination r4893
    have ha5 : rho 17466 * (1 - rho 17464) = rho 17461 - rho 17462 - rho 17463 := by
      linear_combination r4894
    have haddx :
        rho 17465 * (1 + 3021 * (rho 17460 * seg16AccX148 rho) * (rho 17459 * seg16AccY148 rho)) =
          rho 17460 * seg16AccX148 rho + rho 17459 * seg16AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17466 * (1 - 3021 * (rho 17460 * seg16AccX148 rho) * (rho 17459 * seg16AccY148 rho)) =
          (-1) * (rho 17460 * seg16AccX148 rho) - rho 17459 * seg16AccY148 rho +
            (seg16AccY148 rho - seg16AccX148 rho * (-1)) * (rho 17459 + rho 17460) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17466 * (1 - rho 17464) = rho 17461 - rho 17462 - rho 17463 := ha5
        _ = (-1) * rho 17462 - rho 17463 + (seg16AccY148 rho - seg16AccX148 rho * (-1)) * (rho 17459 + rho 17460) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX149 rho = seg16AccX148 rho - Bool.toZMod bit * (seg16AccX148 rho - rho 17465) := by
      have hd : rho 17467 = Bool.toZMod bit * (rho 17465 - seg16AccX148 rho) := by
        rw [← hbit]
        unfold seg16AccX148
        linear_combination -r4895
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY149 rho = seg16AccY148 rho - Bool.toZMod bit * (seg16AccY148 rho - rho 17466) := by
      have hd : rho 17468 = Bool.toZMod bit * (rho 17466 - seg16AccY148 rho) := by
        rw [← hbit]
        unfold seg16AccY148
        linear_combination -r4896
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17459 * rho 17460 = rho 17469 := by linear_combination r4897
    have hd1 : rho 17459 * rho 17459 = rho 17470 := by linear_combination r4898
    have hd2 : rho 17460 * rho 17460 = rho 17471 := by linear_combination r4899
    have hd3 : rho 17472 * (rho 17460 * rho 17460 + rho 17459 * rho 17459 * (-1)) = 2 * (rho 17459 * rho 17460) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 17473 * (2 - (rho 17460 * rho 17460 + rho 17459 * rho 17459 * (-1))) = rho 17460 * rho 17460 - rho 17459 * rho 17459 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
      ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
      ⟨(rho 17465 : Seg16.F), (rho 17466 : Seg16.F)⟩
      ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
      ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg16_rows149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4902 rho ∧ Seg16.relationRow4903 rho ∧ Seg16.relationRow4904 rho ∧ Seg16.relationRow4905 rho ∧ Seg16.relationRow4906 rho ∧ Seg16.relationRow4907 rho ∧ Seg16.relationRow4908 rho ∧ Seg16.relationRow4909 rho ∧ Seg16.relationRow4910 rho ∧ Seg16.relationRow4911 rho ∧ Seg16.relationRow4912 rho ∧ Seg16.relationRow4913 rho ∧ Seg16.relationRow4914 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩

theorem seg16_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15441 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩ := by
  obtain ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩ := seg16_rows149 rho h
  unfold Seg16.relationRow4902 at r4902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4902
  unfold Seg16.relationRow4903 at r4903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4903
  unfold Seg16.relationRow4904 at r4904
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4904
  unfold Seg16.relationRow4905 at r4905
  unfold Seg16.relationRow4906 at r4906
  unfold Seg16.relationRow4907 at r4907
  unfold Seg16.relationRow4908 at r4908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908
  unfold Seg16.relationRow4909 at r4909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909
  unfold Seg16.relationRow4910 at r4910
  unfold Seg16.relationRow4911 at r4911
  unfold Seg16.relationRow4912 at r4912
  unfold Seg16.relationRow4913 at r4913
  unfold Seg16.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 15441 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩ := by
    have hnextx : seg16AccX150 rho = seg16AccX149 rho + rho 17480 := by
      unfold seg16AccX150 seg16AccX149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 149]
      ring
    have hnexty : seg16AccY150 rho = seg16AccY149 rho + rho 17481 := by
      unfold seg16AccY150 seg16AccY149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 149]
      ring
    have ha0 : (rho 17472 + rho 17473) * (seg16AccX149 rho + seg16AccY149 rho) = rho 17474 := by
      unfold seg16AccX149 seg16AccY149
      linear_combination r4902
    have ha1 : rho 17473 * seg16AccX149 rho = rho 17475 := by
      unfold seg16AccX149
      linear_combination r4903
    have ha2 : rho 17472 * seg16AccY149 rho = rho 17476 := by
      unfold seg16AccY149
      linear_combination r4904
    have ha3 : 3021 * rho 17475 * rho 17476 = rho 17477 := by
      linear_combination r4905
    have ha4 : rho 17478 * (1 + rho 17477) = rho 17475 + rho 17476 := by
      linear_combination r4906
    have ha5 : rho 17479 * (1 - rho 17477) = rho 17474 - rho 17475 - rho 17476 := by
      linear_combination r4907
    have haddx :
        rho 17478 * (1 + 3021 * (rho 17473 * seg16AccX149 rho) * (rho 17472 * seg16AccY149 rho)) =
          rho 17473 * seg16AccX149 rho + rho 17472 * seg16AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17479 * (1 - 3021 * (rho 17473 * seg16AccX149 rho) * (rho 17472 * seg16AccY149 rho)) =
          (-1) * (rho 17473 * seg16AccX149 rho) - rho 17472 * seg16AccY149 rho +
            (seg16AccY149 rho - seg16AccX149 rho * (-1)) * (rho 17472 + rho 17473) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17479 * (1 - rho 17477) = rho 17474 - rho 17475 - rho 17476 := ha5
        _ = (-1) * rho 17475 - rho 17476 + (seg16AccY149 rho - seg16AccX149 rho * (-1)) * (rho 17472 + rho 17473) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX150 rho = seg16AccX149 rho - Bool.toZMod bit * (seg16AccX149 rho - rho 17478) := by
      have hd : rho 17480 = Bool.toZMod bit * (rho 17478 - seg16AccX149 rho) := by
        rw [← hbit]
        unfold seg16AccX149
        linear_combination -r4908
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY150 rho = seg16AccY149 rho - Bool.toZMod bit * (seg16AccY149 rho - rho 17479) := by
      have hd : rho 17481 = Bool.toZMod bit * (rho 17479 - seg16AccY149 rho) := by
        rw [← hbit]
        unfold seg16AccY149
        linear_combination -r4909
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17472 * rho 17473 = rho 17482 := by linear_combination r4910
    have hd1 : rho 17472 * rho 17472 = rho 17483 := by linear_combination r4911
    have hd2 : rho 17473 * rho 17473 = rho 17484 := by linear_combination r4912
    have hd3 : rho 17485 * (rho 17473 * rho 17473 + rho 17472 * rho 17472 * (-1)) = 2 * (rho 17472 * rho 17473) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 17486 * (2 - (rho 17473 * rho 17473 + rho 17472 * rho 17472 * (-1))) = rho 17473 * rho 17473 - rho 17472 * rho 17472 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
      ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
      ⟨(rho 17478 : Seg16.F), (rho 17479 : Seg16.F)⟩
      ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
      ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg16_rows150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4915 rho ∧ Seg16.relationRow4916 rho ∧ Seg16.relationRow4917 rho ∧ Seg16.relationRow4918 rho ∧ Seg16.relationRow4919 rho ∧ Seg16.relationRow4920 rho ∧ Seg16.relationRow4921 rho ∧ Seg16.relationRow4922 rho ∧ Seg16.relationRow4923 rho ∧ Seg16.relationRow4924 rho ∧ Seg16.relationRow4925 rho ∧ Seg16.relationRow4926 rho ∧ Seg16.relationRow4927 rho ∧ Seg16.relationRow4928 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩

theorem seg16_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15442 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩ := by
  obtain ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩ := seg16_rows150 rho h
  unfold Seg16.relationRow4915 at r4915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915
  unfold Seg16.relationRow4916 at r4916
  unfold Seg16.relationRow4917 at r4917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4917
  unfold Seg16.relationRow4918 at r4918
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918
  unfold Seg16.relationRow4919 at r4919
  unfold Seg16.relationRow4920 at r4920
  unfold Seg16.relationRow4921 at r4921
  unfold Seg16.relationRow4922 at r4922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922
  unfold Seg16.relationRow4923 at r4923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923
  unfold Seg16.relationRow4924 at r4924
  unfold Seg16.relationRow4925 at r4925
  unfold Seg16.relationRow4926 at r4926
  unfold Seg16.relationRow4927 at r4927
  unfold Seg16.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 15442 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩ := by
    have hnextx : seg16AccX151 rho = seg16AccX150 rho + rho 17494 := by
      unfold seg16AccX151 seg16AccX150
      ring
    have hnexty : seg16AccY151 rho = seg16AccY150 rho + rho 17495 := by
      unfold seg16AccY151 seg16AccY150
      ring
    have hsum : seg16AccX150 rho + seg16AccY150 rho = rho 17487 := by
      unfold seg16AccX150 seg16AccY150
      linear_combination r4915
    have ha0 : (rho 17485 + rho 17486) * (seg16AccX150 rho + seg16AccY150 rho) = rho 17488 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 17486 * seg16AccX150 rho = rho 17489 := by
      unfold seg16AccX150
      linear_combination r4917
    have ha2 : rho 17485 * seg16AccY150 rho = rho 17490 := by
      unfold seg16AccY150
      linear_combination r4918
    have ha3 : 3021 * rho 17489 * rho 17490 = rho 17491 := by
      linear_combination r4919
    have ha4 : rho 17492 * (1 + rho 17491) = rho 17489 + rho 17490 := by
      linear_combination r4920
    have ha5 : rho 17493 * (1 - rho 17491) = rho 17488 - rho 17489 - rho 17490 := by
      linear_combination r4921
    have haddx :
        rho 17492 * (1 + 3021 * (rho 17486 * seg16AccX150 rho) * (rho 17485 * seg16AccY150 rho)) =
          rho 17486 * seg16AccX150 rho + rho 17485 * seg16AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17493 * (1 - 3021 * (rho 17486 * seg16AccX150 rho) * (rho 17485 * seg16AccY150 rho)) =
          (-1) * (rho 17486 * seg16AccX150 rho) - rho 17485 * seg16AccY150 rho +
            (seg16AccY150 rho - seg16AccX150 rho * (-1)) * (rho 17485 + rho 17486) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17493 * (1 - rho 17491) = rho 17488 - rho 17489 - rho 17490 := ha5
        _ = (-1) * rho 17489 - rho 17490 + (seg16AccY150 rho - seg16AccX150 rho * (-1)) * (rho 17485 + rho 17486) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX151 rho = seg16AccX150 rho - Bool.toZMod bit * (seg16AccX150 rho - rho 17492) := by
      have hd : rho 17494 = Bool.toZMod bit * (rho 17492 - seg16AccX150 rho) := by
        rw [← hbit]
        unfold seg16AccX150
        linear_combination -r4922
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY151 rho = seg16AccY150 rho - Bool.toZMod bit * (seg16AccY150 rho - rho 17493) := by
      have hd : rho 17495 = Bool.toZMod bit * (rho 17493 - seg16AccY150 rho) := by
        rw [← hbit]
        unfold seg16AccY150
        linear_combination -r4923
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17485 * rho 17486 = rho 17496 := by linear_combination r4924
    have hd1 : rho 17485 * rho 17485 = rho 17497 := by linear_combination r4925
    have hd2 : rho 17486 * rho 17486 = rho 17498 := by linear_combination r4926
    have hd3 : rho 17499 * (rho 17486 * rho 17486 + rho 17485 * rho 17485 * (-1)) = 2 * (rho 17485 * rho 17486) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 17500 * (2 - (rho 17486 * rho 17486 + rho 17485 * rho 17485 * (-1))) = rho 17486 * rho 17486 - rho 17485 * rho 17485 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
      ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
      ⟨(rho 17492 : Seg16.F), (rho 17493 : Seg16.F)⟩
      ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
      ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg16_rows151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4929 rho ∧ Seg16.relationRow4930 rho ∧ Seg16.relationRow4931 rho ∧ Seg16.relationRow4932 rho ∧ Seg16.relationRow4933 rho ∧ Seg16.relationRow4934 rho ∧ Seg16.relationRow4935 rho ∧ Seg16.relationRow4936 rho ∧ Seg16.relationRow4937 rho ∧ Seg16.relationRow4938 rho ∧ Seg16.relationRow4939 rho ∧ Seg16.relationRow4940 rho ∧ Seg16.relationRow4941 rho ∧ Seg16.relationRow4942 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩

theorem seg16_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15443 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩ := by
  obtain ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩ := seg16_rows151 rho h
  unfold Seg16.relationRow4929 at r4929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4929
  unfold Seg16.relationRow4930 at r4930
  unfold Seg16.relationRow4931 at r4931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931
  unfold Seg16.relationRow4932 at r4932
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932
  unfold Seg16.relationRow4933 at r4933
  unfold Seg16.relationRow4934 at r4934
  unfold Seg16.relationRow4935 at r4935
  unfold Seg16.relationRow4936 at r4936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936
  unfold Seg16.relationRow4937 at r4937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4937
  unfold Seg16.relationRow4938 at r4938
  unfold Seg16.relationRow4939 at r4939
  unfold Seg16.relationRow4940 at r4940
  unfold Seg16.relationRow4941 at r4941
  unfold Seg16.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 15443 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩ := by
    have hnextx : seg16AccX152 rho = seg16AccX151 rho + rho 17508 := by
      unfold seg16AccX152 seg16AccX151
      ring
    have hnexty : seg16AccY152 rho = seg16AccY151 rho + rho 17509 := by
      unfold seg16AccY152 seg16AccY151
      ring
    have hsum : seg16AccX151 rho + seg16AccY151 rho = rho 17501 := by
      unfold seg16AccX151 seg16AccY151
      linear_combination r4929
    have ha0 : (rho 17499 + rho 17500) * (seg16AccX151 rho + seg16AccY151 rho) = rho 17502 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 17500 * seg16AccX151 rho = rho 17503 := by
      unfold seg16AccX151
      linear_combination r4931
    have ha2 : rho 17499 * seg16AccY151 rho = rho 17504 := by
      unfold seg16AccY151
      linear_combination r4932
    have ha3 : 3021 * rho 17503 * rho 17504 = rho 17505 := by
      linear_combination r4933
    have ha4 : rho 17506 * (1 + rho 17505) = rho 17503 + rho 17504 := by
      linear_combination r4934
    have ha5 : rho 17507 * (1 - rho 17505) = rho 17502 - rho 17503 - rho 17504 := by
      linear_combination r4935
    have haddx :
        rho 17506 * (1 + 3021 * (rho 17500 * seg16AccX151 rho) * (rho 17499 * seg16AccY151 rho)) =
          rho 17500 * seg16AccX151 rho + rho 17499 * seg16AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17507 * (1 - 3021 * (rho 17500 * seg16AccX151 rho) * (rho 17499 * seg16AccY151 rho)) =
          (-1) * (rho 17500 * seg16AccX151 rho) - rho 17499 * seg16AccY151 rho +
            (seg16AccY151 rho - seg16AccX151 rho * (-1)) * (rho 17499 + rho 17500) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17507 * (1 - rho 17505) = rho 17502 - rho 17503 - rho 17504 := ha5
        _ = (-1) * rho 17503 - rho 17504 + (seg16AccY151 rho - seg16AccX151 rho * (-1)) * (rho 17499 + rho 17500) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX152 rho = seg16AccX151 rho - Bool.toZMod bit * (seg16AccX151 rho - rho 17506) := by
      have hd : rho 17508 = Bool.toZMod bit * (rho 17506 - seg16AccX151 rho) := by
        rw [← hbit]
        unfold seg16AccX151
        linear_combination -r4936
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY152 rho = seg16AccY151 rho - Bool.toZMod bit * (seg16AccY151 rho - rho 17507) := by
      have hd : rho 17509 = Bool.toZMod bit * (rho 17507 - seg16AccY151 rho) := by
        rw [← hbit]
        unfold seg16AccY151
        linear_combination -r4937
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17499 * rho 17500 = rho 17510 := by linear_combination r4938
    have hd1 : rho 17499 * rho 17499 = rho 17511 := by linear_combination r4939
    have hd2 : rho 17500 * rho 17500 = rho 17512 := by linear_combination r4940
    have hd3 : rho 17513 * (rho 17500 * rho 17500 + rho 17499 * rho 17499 * (-1)) = 2 * (rho 17499 * rho 17500) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 17514 * (2 - (rho 17500 * rho 17500 + rho 17499 * rho 17499 * (-1))) = rho 17500 * rho 17500 - rho 17499 * rho 17499 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
      ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
      ⟨(rho 17506 : Seg16.F), (rho 17507 : Seg16.F)⟩
      ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
      ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg16_rows152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4943 rho ∧ Seg16.relationRow4944 rho ∧ Seg16.relationRow4945 rho ∧ Seg16.relationRow4946 rho ∧ Seg16.relationRow4947 rho ∧ Seg16.relationRow4948 rho ∧ Seg16.relationRow4949 rho ∧ Seg16.relationRow4950 rho ∧ Seg16.relationRow4951 rho ∧ Seg16.relationRow4952 rho ∧ Seg16.relationRow4953 rho ∧ Seg16.relationRow4954 rho ∧ Seg16.relationRow4955 rho ∧ Seg16.relationRow4956 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  exact ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩

theorem seg16_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15444 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩ := by
  obtain ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩ := seg16_rows152 rho h
  unfold Seg16.relationRow4943 at r4943
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4943
  unfold Seg16.relationRow4944 at r4944
  unfold Seg16.relationRow4945 at r4945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945
  unfold Seg16.relationRow4946 at r4946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4946
  unfold Seg16.relationRow4947 at r4947
  unfold Seg16.relationRow4948 at r4948
  unfold Seg16.relationRow4949 at r4949
  unfold Seg16.relationRow4950 at r4950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4950
  unfold Seg16.relationRow4951 at r4951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951
  unfold Seg16.relationRow4952 at r4952
  unfold Seg16.relationRow4953 at r4953
  unfold Seg16.relationRow4954 at r4954
  unfold Seg16.relationRow4955 at r4955
  unfold Seg16.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 15444 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩ := by
    have hnextx : seg16AccX153 rho = seg16AccX152 rho + rho 17522 := by
      unfold seg16AccX153 seg16AccX152
      ring
    have hnexty : seg16AccY153 rho = seg16AccY152 rho + rho 17523 := by
      unfold seg16AccY153 seg16AccY152
      ring
    have hsum : seg16AccX152 rho + seg16AccY152 rho = rho 17515 := by
      unfold seg16AccX152 seg16AccY152
      linear_combination r4943
    have ha0 : (rho 17513 + rho 17514) * (seg16AccX152 rho + seg16AccY152 rho) = rho 17516 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 17514 * seg16AccX152 rho = rho 17517 := by
      unfold seg16AccX152
      linear_combination r4945
    have ha2 : rho 17513 * seg16AccY152 rho = rho 17518 := by
      unfold seg16AccY152
      linear_combination r4946
    have ha3 : 3021 * rho 17517 * rho 17518 = rho 17519 := by
      linear_combination r4947
    have ha4 : rho 17520 * (1 + rho 17519) = rho 17517 + rho 17518 := by
      linear_combination r4948
    have ha5 : rho 17521 * (1 - rho 17519) = rho 17516 - rho 17517 - rho 17518 := by
      linear_combination r4949
    have haddx :
        rho 17520 * (1 + 3021 * (rho 17514 * seg16AccX152 rho) * (rho 17513 * seg16AccY152 rho)) =
          rho 17514 * seg16AccX152 rho + rho 17513 * seg16AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17521 * (1 - 3021 * (rho 17514 * seg16AccX152 rho) * (rho 17513 * seg16AccY152 rho)) =
          (-1) * (rho 17514 * seg16AccX152 rho) - rho 17513 * seg16AccY152 rho +
            (seg16AccY152 rho - seg16AccX152 rho * (-1)) * (rho 17513 + rho 17514) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17521 * (1 - rho 17519) = rho 17516 - rho 17517 - rho 17518 := ha5
        _ = (-1) * rho 17517 - rho 17518 + (seg16AccY152 rho - seg16AccX152 rho * (-1)) * (rho 17513 + rho 17514) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX153 rho = seg16AccX152 rho - Bool.toZMod bit * (seg16AccX152 rho - rho 17520) := by
      have hd : rho 17522 = Bool.toZMod bit * (rho 17520 - seg16AccX152 rho) := by
        rw [← hbit]
        unfold seg16AccX152
        linear_combination -r4950
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY153 rho = seg16AccY152 rho - Bool.toZMod bit * (seg16AccY152 rho - rho 17521) := by
      have hd : rho 17523 = Bool.toZMod bit * (rho 17521 - seg16AccY152 rho) := by
        rw [← hbit]
        unfold seg16AccY152
        linear_combination -r4951
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17513 * rho 17514 = rho 17524 := by linear_combination r4952
    have hd1 : rho 17513 * rho 17513 = rho 17525 := by linear_combination r4953
    have hd2 : rho 17514 * rho 17514 = rho 17526 := by linear_combination r4954
    have hd3 : rho 17527 * (rho 17514 * rho 17514 + rho 17513 * rho 17513 * (-1)) = 2 * (rho 17513 * rho 17514) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 17528 * (2 - (rho 17514 * rho 17514 + rho 17513 * rho 17513 * (-1))) = rho 17514 * rho 17514 - rho 17513 * rho 17513 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
      ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
      ⟨(rho 17520 : Seg16.F), (rho 17521 : Seg16.F)⟩
      ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
      ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg16_rows153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4957 rho ∧ Seg16.relationRow4958 rho ∧ Seg16.relationRow4959 rho ∧ Seg16.relationRow4960 rho ∧ Seg16.relationRow4961 rho ∧ Seg16.relationRow4962 rho ∧ Seg16.relationRow4963 rho ∧ Seg16.relationRow4964 rho ∧ Seg16.relationRow4965 rho ∧ Seg16.relationRow4966 rho ∧ Seg16.relationRow4967 rho ∧ Seg16.relationRow4968 rho ∧ Seg16.relationRow4969 rho ∧ Seg16.relationRow4970 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩

theorem seg16_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15445 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩ := by
  obtain ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩ := seg16_rows153 rho h
  unfold Seg16.relationRow4957 at r4957
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957
  unfold Seg16.relationRow4958 at r4958
  unfold Seg16.relationRow4959 at r4959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4959
  unfold Seg16.relationRow4960 at r4960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960
  unfold Seg16.relationRow4961 at r4961
  unfold Seg16.relationRow4962 at r4962
  unfold Seg16.relationRow4963 at r4963
  unfold Seg16.relationRow4964 at r4964
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964
  unfold Seg16.relationRow4965 at r4965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965
  unfold Seg16.relationRow4966 at r4966
  unfold Seg16.relationRow4967 at r4967
  unfold Seg16.relationRow4968 at r4968
  unfold Seg16.relationRow4969 at r4969
  unfold Seg16.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 15445 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩ := by
    have hnextx : seg16AccX154 rho = seg16AccX153 rho + rho 17536 := by
      unfold seg16AccX154 seg16AccX153
      ring
    have hnexty : seg16AccY154 rho = seg16AccY153 rho + rho 17537 := by
      unfold seg16AccY154 seg16AccY153
      ring
    have hsum : seg16AccX153 rho + seg16AccY153 rho = rho 17529 := by
      unfold seg16AccX153 seg16AccY153
      linear_combination r4957
    have ha0 : (rho 17527 + rho 17528) * (seg16AccX153 rho + seg16AccY153 rho) = rho 17530 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 17528 * seg16AccX153 rho = rho 17531 := by
      unfold seg16AccX153
      linear_combination r4959
    have ha2 : rho 17527 * seg16AccY153 rho = rho 17532 := by
      unfold seg16AccY153
      linear_combination r4960
    have ha3 : 3021 * rho 17531 * rho 17532 = rho 17533 := by
      linear_combination r4961
    have ha4 : rho 17534 * (1 + rho 17533) = rho 17531 + rho 17532 := by
      linear_combination r4962
    have ha5 : rho 17535 * (1 - rho 17533) = rho 17530 - rho 17531 - rho 17532 := by
      linear_combination r4963
    have haddx :
        rho 17534 * (1 + 3021 * (rho 17528 * seg16AccX153 rho) * (rho 17527 * seg16AccY153 rho)) =
          rho 17528 * seg16AccX153 rho + rho 17527 * seg16AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17535 * (1 - 3021 * (rho 17528 * seg16AccX153 rho) * (rho 17527 * seg16AccY153 rho)) =
          (-1) * (rho 17528 * seg16AccX153 rho) - rho 17527 * seg16AccY153 rho +
            (seg16AccY153 rho - seg16AccX153 rho * (-1)) * (rho 17527 + rho 17528) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17535 * (1 - rho 17533) = rho 17530 - rho 17531 - rho 17532 := ha5
        _ = (-1) * rho 17531 - rho 17532 + (seg16AccY153 rho - seg16AccX153 rho * (-1)) * (rho 17527 + rho 17528) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX154 rho = seg16AccX153 rho - Bool.toZMod bit * (seg16AccX153 rho - rho 17534) := by
      have hd : rho 17536 = Bool.toZMod bit * (rho 17534 - seg16AccX153 rho) := by
        rw [← hbit]
        unfold seg16AccX153
        linear_combination -r4964
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY154 rho = seg16AccY153 rho - Bool.toZMod bit * (seg16AccY153 rho - rho 17535) := by
      have hd : rho 17537 = Bool.toZMod bit * (rho 17535 - seg16AccY153 rho) := by
        rw [← hbit]
        unfold seg16AccY153
        linear_combination -r4965
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17527 * rho 17528 = rho 17538 := by linear_combination r4966
    have hd1 : rho 17527 * rho 17527 = rho 17539 := by linear_combination r4967
    have hd2 : rho 17528 * rho 17528 = rho 17540 := by linear_combination r4968
    have hd3 : rho 17541 * (rho 17528 * rho 17528 + rho 17527 * rho 17527 * (-1)) = 2 * (rho 17527 * rho 17528) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 17542 * (2 - (rho 17528 * rho 17528 + rho 17527 * rho 17527 * (-1))) = rho 17528 * rho 17528 - rho 17527 * rho 17527 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
      ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
      ⟨(rho 17534 : Seg16.F), (rho 17535 : Seg16.F)⟩
      ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
      ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg16_hstep_c13 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 143 ≤ i → i < 154 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg16_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg16_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg16_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg16_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg16_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg16_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg16_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg16_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg16_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg16_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
