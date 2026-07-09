import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5895 rho ∧ Seg5.relationRow5896 rho ∧ Seg5.relationRow5897 rho ∧ Seg5.relationRow5898 rho ∧ Seg5.relationRow5899 rho ∧ Seg5.relationRow5900 rho ∧ Seg5.relationRow5901 rho ∧ Seg5.relationRow5902 rho ∧ Seg5.relationRow5903 rho ∧ Seg5.relationRow5904 rho ∧ Seg5.relationRow5905 rho ∧ Seg5.relationRow5906 rho ∧ Seg5.relationRow5907 rho ∧ Seg5.relationRow5908 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg5_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2635 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩
        ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩
        ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩
        ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩ := by
  obtain ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg5_rows220 rho h
  unfold Seg5.relationRow5895 at r5895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5895
  unfold Seg5.relationRow5896 at r5896
  unfold Seg5.relationRow5897 at r5897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897
  unfold Seg5.relationRow5898 at r5898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898
  unfold Seg5.relationRow5899 at r5899
  unfold Seg5.relationRow5900 at r5900
  unfold Seg5.relationRow5901 at r5901
  unfold Seg5.relationRow5902 at r5902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902
  unfold Seg5.relationRow5903 at r5903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903
  unfold Seg5.relationRow5904 at r5904
  unfold Seg5.relationRow5905 at r5905
  unfold Seg5.relationRow5906 at r5906
  unfold Seg5.relationRow5907 at r5907
  unfold Seg5.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 2635 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩
        ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩
        ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩
        ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩ := by
    have hnextx : seg5AccX221 rho = seg5AccX220 rho + rho 5597 := by
      unfold seg5AccX221 seg5AccX220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 70]
      ring
    have hnexty : seg5AccY221 rho = seg5AccY220 rho + rho 5598 := by
      unfold seg5AccY221 seg5AccY220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 70]
      ring
    have hsum : seg5AccX220 rho + seg5AccY220 rho = rho 5590 := by
      unfold seg5AccX220 seg5AccY220
      linear_combination r5895
    have ha0 : (rho 5588 + rho 5589) * (seg5AccX220 rho + seg5AccY220 rho) = rho 5591 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 5589 * seg5AccX220 rho = rho 5592 := by
      unfold seg5AccX220
      linear_combination r5897
    have ha2 : rho 5588 * seg5AccY220 rho = rho 5593 := by
      unfold seg5AccY220
      linear_combination r5898
    have ha3 : 3021 * rho 5592 * rho 5593 = rho 5594 := by
      linear_combination r5899
    have ha4 : rho 5595 * (1 + rho 5594) = rho 5592 + rho 5593 := by
      linear_combination r5900
    have ha5 : rho 5596 * (1 - rho 5594) = rho 5591 - rho 5592 - rho 5593 := by
      linear_combination r5901
    have haddx :
        rho 5595 * (1 + 3021 * (rho 5589 * seg5AccX220 rho) * (rho 5588 * seg5AccY220 rho)) =
          rho 5589 * seg5AccX220 rho + rho 5588 * seg5AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5596 * (1 - 3021 * (rho 5589 * seg5AccX220 rho) * (rho 5588 * seg5AccY220 rho)) =
          (-1) * (rho 5589 * seg5AccX220 rho) - rho 5588 * seg5AccY220 rho +
            (seg5AccY220 rho - seg5AccX220 rho * (-1)) * (rho 5588 + rho 5589) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5596 * (1 - rho 5594) = rho 5591 - rho 5592 - rho 5593 := ha5
        _ = (-1) * rho 5592 - rho 5593 + (seg5AccY220 rho - seg5AccX220 rho * (-1)) * (rho 5588 + rho 5589) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX221 rho = seg5AccX220 rho - Bool.toZMod bit * (seg5AccX220 rho - rho 5595) := by
      have hd : rho 5597 = Bool.toZMod bit * (rho 5595 - seg5AccX220 rho) := by
        rw [← hbit]
        unfold seg5AccX220
        linear_combination -r5902
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY221 rho = seg5AccY220 rho - Bool.toZMod bit * (seg5AccY220 rho - rho 5596) := by
      have hd : rho 5598 = Bool.toZMod bit * (rho 5596 - seg5AccY220 rho) := by
        rw [← hbit]
        unfold seg5AccY220
        linear_combination -r5903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5588 * rho 5589 = rho 5599 := by linear_combination r5904
    have hd1 : rho 5588 * rho 5588 = rho 5600 := by linear_combination r5905
    have hd2 : rho 5589 * rho 5589 = rho 5601 := by linear_combination r5906
    have hd3 : rho 5602 * (rho 5589 * rho 5589 + rho 5588 * rho 5588 * (-1)) = 2 * (rho 5588 * rho 5589) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 5603 * (2 - (rho 5589 * rho 5589 + rho 5588 * rho 5588 * (-1))) = rho 5589 * rho 5589 - rho 5588 * rho 5588 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩
      ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩
      ⟨(rho 5595 : Seg5.F), (rho 5596 : Seg5.F)⟩
      ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩
      ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg5_rows221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5909 rho ∧ Seg5.relationRow5910 rho ∧ Seg5.relationRow5911 rho ∧ Seg5.relationRow5912 rho ∧ Seg5.relationRow5913 rho ∧ Seg5.relationRow5914 rho ∧ Seg5.relationRow5915 rho ∧ Seg5.relationRow5916 rho ∧ Seg5.relationRow5917 rho ∧ Seg5.relationRow5918 rho ∧ Seg5.relationRow5919 rho ∧ Seg5.relationRow5920 rho ∧ Seg5.relationRow5921 rho ∧ Seg5.relationRow5922 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, p74, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩

theorem seg5_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2636 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩
        ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩
        ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩
        ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩ := seg5_rows221 rho h
  unfold Seg5.relationRow5909 at r5909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909
  unfold Seg5.relationRow5910 at r5910
  unfold Seg5.relationRow5911 at r5911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911
  unfold Seg5.relationRow5912 at r5912
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5912
  unfold Seg5.relationRow5913 at r5913
  unfold Seg5.relationRow5914 at r5914
  unfold Seg5.relationRow5915 at r5915
  unfold Seg5.relationRow5916 at r5916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916
  unfold Seg5.relationRow5917 at r5917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5917
  unfold Seg5.relationRow5918 at r5918
  unfold Seg5.relationRow5919 at r5919
  unfold Seg5.relationRow5920 at r5920
  unfold Seg5.relationRow5921 at r5921
  unfold Seg5.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 2636 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩
        ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩
        ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩
        ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩ := by
    have hnextx : seg5AccX222 rho = seg5AccX221 rho + rho 5611 := by
      unfold seg5AccX222 seg5AccX221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 71]
      ring
    have hnexty : seg5AccY222 rho = seg5AccY221 rho + rho 5612 := by
      unfold seg5AccY222 seg5AccY221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 71]
      ring
    have hsum : seg5AccX221 rho + seg5AccY221 rho = rho 5604 := by
      unfold seg5AccX221 seg5AccY221
      linear_combination r5909
    have ha0 : (rho 5602 + rho 5603) * (seg5AccX221 rho + seg5AccY221 rho) = rho 5605 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 5603 * seg5AccX221 rho = rho 5606 := by
      unfold seg5AccX221
      linear_combination r5911
    have ha2 : rho 5602 * seg5AccY221 rho = rho 5607 := by
      unfold seg5AccY221
      linear_combination r5912
    have ha3 : 3021 * rho 5606 * rho 5607 = rho 5608 := by
      linear_combination r5913
    have ha4 : rho 5609 * (1 + rho 5608) = rho 5606 + rho 5607 := by
      linear_combination r5914
    have ha5 : rho 5610 * (1 - rho 5608) = rho 5605 - rho 5606 - rho 5607 := by
      linear_combination r5915
    have haddx :
        rho 5609 * (1 + 3021 * (rho 5603 * seg5AccX221 rho) * (rho 5602 * seg5AccY221 rho)) =
          rho 5603 * seg5AccX221 rho + rho 5602 * seg5AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5610 * (1 - 3021 * (rho 5603 * seg5AccX221 rho) * (rho 5602 * seg5AccY221 rho)) =
          (-1) * (rho 5603 * seg5AccX221 rho) - rho 5602 * seg5AccY221 rho +
            (seg5AccY221 rho - seg5AccX221 rho * (-1)) * (rho 5602 + rho 5603) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5610 * (1 - rho 5608) = rho 5605 - rho 5606 - rho 5607 := ha5
        _ = (-1) * rho 5606 - rho 5607 + (seg5AccY221 rho - seg5AccX221 rho * (-1)) * (rho 5602 + rho 5603) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX222 rho = seg5AccX221 rho - Bool.toZMod bit * (seg5AccX221 rho - rho 5609) := by
      have hd : rho 5611 = Bool.toZMod bit * (rho 5609 - seg5AccX221 rho) := by
        rw [← hbit]
        unfold seg5AccX221
        linear_combination -r5916
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY222 rho = seg5AccY221 rho - Bool.toZMod bit * (seg5AccY221 rho - rho 5610) := by
      have hd : rho 5612 = Bool.toZMod bit * (rho 5610 - seg5AccY221 rho) := by
        rw [← hbit]
        unfold seg5AccY221
        linear_combination -r5917
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5602 * rho 5603 = rho 5613 := by linear_combination r5918
    have hd1 : rho 5602 * rho 5602 = rho 5614 := by linear_combination r5919
    have hd2 : rho 5603 * rho 5603 = rho 5615 := by linear_combination r5920
    have hd3 : rho 5616 * (rho 5603 * rho 5603 + rho 5602 * rho 5602 * (-1)) = 2 * (rho 5602 * rho 5603) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 5617 * (2 - (rho 5603 * rho 5603 + rho 5602 * rho 5602 * (-1))) = rho 5603 * rho 5603 - rho 5602 * rho 5602 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX221 rho : Seg5.F), (seg5AccY221 rho : Seg5.F)⟩
      ⟨(rho 5602 : Seg5.F), (rho 5603 : Seg5.F)⟩
      ⟨(rho 5609 : Seg5.F), (rho 5610 : Seg5.F)⟩
      ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩
      ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg5_rows222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5923 rho ∧ Seg5.relationRow5924 rho ∧ Seg5.relationRow5925 rho ∧ Seg5.relationRow5926 rho ∧ Seg5.relationRow5927 rho ∧ Seg5.relationRow5928 rho ∧ Seg5.relationRow5929 rho ∧ Seg5.relationRow5930 rho ∧ Seg5.relationRow5931 rho ∧ Seg5.relationRow5932 rho ∧ Seg5.relationRow5933 rho ∧ Seg5.relationRow5934 rho ∧ Seg5.relationRow5935 rho ∧ Seg5.relationRow5936 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩

theorem seg5_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2637 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩
        ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩
        ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩
        ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩ := by
  obtain ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩ := seg5_rows222 rho h
  unfold Seg5.relationRow5923 at r5923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923
  unfold Seg5.relationRow5924 at r5924
  unfold Seg5.relationRow5925 at r5925
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925
  unfold Seg5.relationRow5926 at r5926
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926
  unfold Seg5.relationRow5927 at r5927
  unfold Seg5.relationRow5928 at r5928
  unfold Seg5.relationRow5929 at r5929
  unfold Seg5.relationRow5930 at r5930
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5930
  unfold Seg5.relationRow5931 at r5931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931
  unfold Seg5.relationRow5932 at r5932
  unfold Seg5.relationRow5933 at r5933
  unfold Seg5.relationRow5934 at r5934
  unfold Seg5.relationRow5935 at r5935
  unfold Seg5.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 2637 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩
        ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩
        ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩
        ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩ := by
    have hnextx : seg5AccX223 rho = seg5AccX222 rho + rho 5625 := by
      unfold seg5AccX223 seg5AccX222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 72]
      ring
    have hnexty : seg5AccY223 rho = seg5AccY222 rho + rho 5626 := by
      unfold seg5AccY223 seg5AccY222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 72]
      ring
    have hsum : seg5AccX222 rho + seg5AccY222 rho = rho 5618 := by
      unfold seg5AccX222 seg5AccY222
      linear_combination r5923
    have ha0 : (rho 5616 + rho 5617) * (seg5AccX222 rho + seg5AccY222 rho) = rho 5619 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 5617 * seg5AccX222 rho = rho 5620 := by
      unfold seg5AccX222
      linear_combination r5925
    have ha2 : rho 5616 * seg5AccY222 rho = rho 5621 := by
      unfold seg5AccY222
      linear_combination r5926
    have ha3 : 3021 * rho 5620 * rho 5621 = rho 5622 := by
      linear_combination r5927
    have ha4 : rho 5623 * (1 + rho 5622) = rho 5620 + rho 5621 := by
      linear_combination r5928
    have ha5 : rho 5624 * (1 - rho 5622) = rho 5619 - rho 5620 - rho 5621 := by
      linear_combination r5929
    have haddx :
        rho 5623 * (1 + 3021 * (rho 5617 * seg5AccX222 rho) * (rho 5616 * seg5AccY222 rho)) =
          rho 5617 * seg5AccX222 rho + rho 5616 * seg5AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5624 * (1 - 3021 * (rho 5617 * seg5AccX222 rho) * (rho 5616 * seg5AccY222 rho)) =
          (-1) * (rho 5617 * seg5AccX222 rho) - rho 5616 * seg5AccY222 rho +
            (seg5AccY222 rho - seg5AccX222 rho * (-1)) * (rho 5616 + rho 5617) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5624 * (1 - rho 5622) = rho 5619 - rho 5620 - rho 5621 := ha5
        _ = (-1) * rho 5620 - rho 5621 + (seg5AccY222 rho - seg5AccX222 rho * (-1)) * (rho 5616 + rho 5617) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX223 rho = seg5AccX222 rho - Bool.toZMod bit * (seg5AccX222 rho - rho 5623) := by
      have hd : rho 5625 = Bool.toZMod bit * (rho 5623 - seg5AccX222 rho) := by
        rw [← hbit]
        unfold seg5AccX222
        linear_combination -r5930
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY223 rho = seg5AccY222 rho - Bool.toZMod bit * (seg5AccY222 rho - rho 5624) := by
      have hd : rho 5626 = Bool.toZMod bit * (rho 5624 - seg5AccY222 rho) := by
        rw [← hbit]
        unfold seg5AccY222
        linear_combination -r5931
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5616 * rho 5617 = rho 5627 := by linear_combination r5932
    have hd1 : rho 5616 * rho 5616 = rho 5628 := by linear_combination r5933
    have hd2 : rho 5617 * rho 5617 = rho 5629 := by linear_combination r5934
    have hd3 : rho 5630 * (rho 5617 * rho 5617 + rho 5616 * rho 5616 * (-1)) = 2 * (rho 5616 * rho 5617) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 5631 * (2 - (rho 5617 * rho 5617 + rho 5616 * rho 5616 * (-1))) = rho 5617 * rho 5617 - rho 5616 * rho 5616 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX222 rho : Seg5.F), (seg5AccY222 rho : Seg5.F)⟩
      ⟨(rho 5616 : Seg5.F), (rho 5617 : Seg5.F)⟩
      ⟨(rho 5623 : Seg5.F), (rho 5624 : Seg5.F)⟩
      ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩
      ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg5_rows223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5937 rho ∧ Seg5.relationRow5938 rho ∧ Seg5.relationRow5939 rho ∧ Seg5.relationRow5940 rho ∧ Seg5.relationRow5941 rho ∧ Seg5.relationRow5942 rho ∧ Seg5.relationRow5943 rho ∧ Seg5.relationRow5944 rho ∧ Seg5.relationRow5945 rho ∧ Seg5.relationRow5946 rho ∧ Seg5.relationRow5947 rho ∧ Seg5.relationRow5948 rho ∧ Seg5.relationRow5949 rho ∧ Seg5.relationRow5950 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem seg5_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2638 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩
        ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩
        ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩
        ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩ := by
  obtain ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := seg5_rows223 rho h
  unfold Seg5.relationRow5937 at r5937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937
  unfold Seg5.relationRow5938 at r5938
  unfold Seg5.relationRow5939 at r5939
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939
  unfold Seg5.relationRow5940 at r5940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940
  unfold Seg5.relationRow5941 at r5941
  unfold Seg5.relationRow5942 at r5942
  unfold Seg5.relationRow5943 at r5943
  unfold Seg5.relationRow5944 at r5944
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944
  unfold Seg5.relationRow5945 at r5945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945
  unfold Seg5.relationRow5946 at r5946
  unfold Seg5.relationRow5947 at r5947
  unfold Seg5.relationRow5948 at r5948
  unfold Seg5.relationRow5949 at r5949
  unfold Seg5.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 2638 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩
        ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩
        ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩
        ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩ := by
    have hnextx : seg5AccX224 rho = seg5AccX223 rho + rho 5639 := by
      unfold seg5AccX224 seg5AccX223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 73]
      ring
    have hnexty : seg5AccY224 rho = seg5AccY223 rho + rho 5640 := by
      unfold seg5AccY224 seg5AccY223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 73]
      ring
    have hsum : seg5AccX223 rho + seg5AccY223 rho = rho 5632 := by
      unfold seg5AccX223 seg5AccY223
      linear_combination r5937
    have ha0 : (rho 5630 + rho 5631) * (seg5AccX223 rho + seg5AccY223 rho) = rho 5633 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 5631 * seg5AccX223 rho = rho 5634 := by
      unfold seg5AccX223
      linear_combination r5939
    have ha2 : rho 5630 * seg5AccY223 rho = rho 5635 := by
      unfold seg5AccY223
      linear_combination r5940
    have ha3 : 3021 * rho 5634 * rho 5635 = rho 5636 := by
      linear_combination r5941
    have ha4 : rho 5637 * (1 + rho 5636) = rho 5634 + rho 5635 := by
      linear_combination r5942
    have ha5 : rho 5638 * (1 - rho 5636) = rho 5633 - rho 5634 - rho 5635 := by
      linear_combination r5943
    have haddx :
        rho 5637 * (1 + 3021 * (rho 5631 * seg5AccX223 rho) * (rho 5630 * seg5AccY223 rho)) =
          rho 5631 * seg5AccX223 rho + rho 5630 * seg5AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5638 * (1 - 3021 * (rho 5631 * seg5AccX223 rho) * (rho 5630 * seg5AccY223 rho)) =
          (-1) * (rho 5631 * seg5AccX223 rho) - rho 5630 * seg5AccY223 rho +
            (seg5AccY223 rho - seg5AccX223 rho * (-1)) * (rho 5630 + rho 5631) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5638 * (1 - rho 5636) = rho 5633 - rho 5634 - rho 5635 := ha5
        _ = (-1) * rho 5634 - rho 5635 + (seg5AccY223 rho - seg5AccX223 rho * (-1)) * (rho 5630 + rho 5631) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX224 rho = seg5AccX223 rho - Bool.toZMod bit * (seg5AccX223 rho - rho 5637) := by
      have hd : rho 5639 = Bool.toZMod bit * (rho 5637 - seg5AccX223 rho) := by
        rw [← hbit]
        unfold seg5AccX223
        linear_combination -r5944
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY224 rho = seg5AccY223 rho - Bool.toZMod bit * (seg5AccY223 rho - rho 5638) := by
      have hd : rho 5640 = Bool.toZMod bit * (rho 5638 - seg5AccY223 rho) := by
        rw [← hbit]
        unfold seg5AccY223
        linear_combination -r5945
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5630 * rho 5631 = rho 5641 := by linear_combination r5946
    have hd1 : rho 5630 * rho 5630 = rho 5642 := by linear_combination r5947
    have hd2 : rho 5631 * rho 5631 = rho 5643 := by linear_combination r5948
    have hd3 : rho 5644 * (rho 5631 * rho 5631 + rho 5630 * rho 5630 * (-1)) = 2 * (rho 5630 * rho 5631) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 5645 * (2 - (rho 5631 * rho 5631 + rho 5630 * rho 5630 * (-1))) = rho 5631 * rho 5631 - rho 5630 * rho 5630 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX223 rho : Seg5.F), (seg5AccY223 rho : Seg5.F)⟩
      ⟨(rho 5630 : Seg5.F), (rho 5631 : Seg5.F)⟩
      ⟨(rho 5637 : Seg5.F), (rho 5638 : Seg5.F)⟩
      ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩
      ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg5_rows224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5951 rho ∧ Seg5.relationRow5952 rho ∧ Seg5.relationRow5953 rho ∧ Seg5.relationRow5954 rho ∧ Seg5.relationRow5955 rho ∧ Seg5.relationRow5956 rho ∧ Seg5.relationRow5957 rho ∧ Seg5.relationRow5958 rho ∧ Seg5.relationRow5959 rho ∧ Seg5.relationRow5960 rho ∧ Seg5.relationRow5961 rho ∧ Seg5.relationRow5962 rho ∧ Seg5.relationRow5963 rho ∧ Seg5.relationRow5964 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩

theorem seg5_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2639 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩
        ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩
        ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩
        ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩ := seg5_rows224 rho h
  unfold Seg5.relationRow5951 at r5951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951
  unfold Seg5.relationRow5952 at r5952
  unfold Seg5.relationRow5953 at r5953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953
  unfold Seg5.relationRow5954 at r5954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954
  unfold Seg5.relationRow5955 at r5955
  unfold Seg5.relationRow5956 at r5956
  unfold Seg5.relationRow5957 at r5957
  unfold Seg5.relationRow5958 at r5958
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958
  unfold Seg5.relationRow5959 at r5959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5959
  unfold Seg5.relationRow5960 at r5960
  unfold Seg5.relationRow5961 at r5961
  unfold Seg5.relationRow5962 at r5962
  unfold Seg5.relationRow5963 at r5963
  unfold Seg5.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 2639 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩
        ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩
        ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩
        ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩ := by
    have hnextx : seg5AccX225 rho = seg5AccX224 rho + rho 5653 := by
      unfold seg5AccX225 seg5AccX224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 74]
      ring
    have hnexty : seg5AccY225 rho = seg5AccY224 rho + rho 5654 := by
      unfold seg5AccY225 seg5AccY224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 74]
      ring
    have hsum : seg5AccX224 rho + seg5AccY224 rho = rho 5646 := by
      unfold seg5AccX224 seg5AccY224
      linear_combination r5951
    have ha0 : (rho 5644 + rho 5645) * (seg5AccX224 rho + seg5AccY224 rho) = rho 5647 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 5645 * seg5AccX224 rho = rho 5648 := by
      unfold seg5AccX224
      linear_combination r5953
    have ha2 : rho 5644 * seg5AccY224 rho = rho 5649 := by
      unfold seg5AccY224
      linear_combination r5954
    have ha3 : 3021 * rho 5648 * rho 5649 = rho 5650 := by
      linear_combination r5955
    have ha4 : rho 5651 * (1 + rho 5650) = rho 5648 + rho 5649 := by
      linear_combination r5956
    have ha5 : rho 5652 * (1 - rho 5650) = rho 5647 - rho 5648 - rho 5649 := by
      linear_combination r5957
    have haddx :
        rho 5651 * (1 + 3021 * (rho 5645 * seg5AccX224 rho) * (rho 5644 * seg5AccY224 rho)) =
          rho 5645 * seg5AccX224 rho + rho 5644 * seg5AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5652 * (1 - 3021 * (rho 5645 * seg5AccX224 rho) * (rho 5644 * seg5AccY224 rho)) =
          (-1) * (rho 5645 * seg5AccX224 rho) - rho 5644 * seg5AccY224 rho +
            (seg5AccY224 rho - seg5AccX224 rho * (-1)) * (rho 5644 + rho 5645) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5652 * (1 - rho 5650) = rho 5647 - rho 5648 - rho 5649 := ha5
        _ = (-1) * rho 5648 - rho 5649 + (seg5AccY224 rho - seg5AccX224 rho * (-1)) * (rho 5644 + rho 5645) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX225 rho = seg5AccX224 rho - Bool.toZMod bit * (seg5AccX224 rho - rho 5651) := by
      have hd : rho 5653 = Bool.toZMod bit * (rho 5651 - seg5AccX224 rho) := by
        rw [← hbit]
        unfold seg5AccX224
        linear_combination -r5958
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY225 rho = seg5AccY224 rho - Bool.toZMod bit * (seg5AccY224 rho - rho 5652) := by
      have hd : rho 5654 = Bool.toZMod bit * (rho 5652 - seg5AccY224 rho) := by
        rw [← hbit]
        unfold seg5AccY224
        linear_combination -r5959
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5644 * rho 5645 = rho 5655 := by linear_combination r5960
    have hd1 : rho 5644 * rho 5644 = rho 5656 := by linear_combination r5961
    have hd2 : rho 5645 * rho 5645 = rho 5657 := by linear_combination r5962
    have hd3 : rho 5658 * (rho 5645 * rho 5645 + rho 5644 * rho 5644 * (-1)) = 2 * (rho 5644 * rho 5645) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 5659 * (2 - (rho 5645 * rho 5645 + rho 5644 * rho 5644 * (-1))) = rho 5645 * rho 5645 - rho 5644 * rho 5644 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX224 rho : Seg5.F), (seg5AccY224 rho : Seg5.F)⟩
      ⟨(rho 5644 : Seg5.F), (rho 5645 : Seg5.F)⟩
      ⟨(rho 5651 : Seg5.F), (rho 5652 : Seg5.F)⟩
      ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩
      ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg5_rows225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5965 rho ∧ Seg5.relationRow5966 rho ∧ Seg5.relationRow5967 rho ∧ Seg5.relationRow5968 rho ∧ Seg5.relationRow5969 rho ∧ Seg5.relationRow5970 rho ∧ Seg5.relationRow5971 rho ∧ Seg5.relationRow5972 rho ∧ Seg5.relationRow5973 rho ∧ Seg5.relationRow5974 rho ∧ Seg5.relationRow5975 rho ∧ Seg5.relationRow5976 rho ∧ Seg5.relationRow5977 rho ∧ Seg5.relationRow5978 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩

theorem seg5_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2640 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩
        ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩
        ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩
        ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩ := by
  obtain ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩ := seg5_rows225 rho h
  unfold Seg5.relationRow5965 at r5965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965
  unfold Seg5.relationRow5966 at r5966
  unfold Seg5.relationRow5967 at r5967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967
  unfold Seg5.relationRow5968 at r5968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968
  unfold Seg5.relationRow5969 at r5969
  unfold Seg5.relationRow5970 at r5970
  unfold Seg5.relationRow5971 at r5971
  unfold Seg5.relationRow5972 at r5972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5972
  unfold Seg5.relationRow5973 at r5973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5973
  unfold Seg5.relationRow5974 at r5974
  unfold Seg5.relationRow5975 at r5975
  unfold Seg5.relationRow5976 at r5976
  unfold Seg5.relationRow5977 at r5977
  unfold Seg5.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 2640 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩
        ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩
        ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩
        ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩ := by
    have hnextx : seg5AccX226 rho = seg5AccX225 rho + rho 5667 := by
      unfold seg5AccX226 seg5AccX225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 75]
      ring
    have hnexty : seg5AccY226 rho = seg5AccY225 rho + rho 5668 := by
      unfold seg5AccY226 seg5AccY225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 75]
      ring
    have hsum : seg5AccX225 rho + seg5AccY225 rho = rho 5660 := by
      unfold seg5AccX225 seg5AccY225
      linear_combination r5965
    have ha0 : (rho 5658 + rho 5659) * (seg5AccX225 rho + seg5AccY225 rho) = rho 5661 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 5659 * seg5AccX225 rho = rho 5662 := by
      unfold seg5AccX225
      linear_combination r5967
    have ha2 : rho 5658 * seg5AccY225 rho = rho 5663 := by
      unfold seg5AccY225
      linear_combination r5968
    have ha3 : 3021 * rho 5662 * rho 5663 = rho 5664 := by
      linear_combination r5969
    have ha4 : rho 5665 * (1 + rho 5664) = rho 5662 + rho 5663 := by
      linear_combination r5970
    have ha5 : rho 5666 * (1 - rho 5664) = rho 5661 - rho 5662 - rho 5663 := by
      linear_combination r5971
    have haddx :
        rho 5665 * (1 + 3021 * (rho 5659 * seg5AccX225 rho) * (rho 5658 * seg5AccY225 rho)) =
          rho 5659 * seg5AccX225 rho + rho 5658 * seg5AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5666 * (1 - 3021 * (rho 5659 * seg5AccX225 rho) * (rho 5658 * seg5AccY225 rho)) =
          (-1) * (rho 5659 * seg5AccX225 rho) - rho 5658 * seg5AccY225 rho +
            (seg5AccY225 rho - seg5AccX225 rho * (-1)) * (rho 5658 + rho 5659) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5666 * (1 - rho 5664) = rho 5661 - rho 5662 - rho 5663 := ha5
        _ = (-1) * rho 5662 - rho 5663 + (seg5AccY225 rho - seg5AccX225 rho * (-1)) * (rho 5658 + rho 5659) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX226 rho = seg5AccX225 rho - Bool.toZMod bit * (seg5AccX225 rho - rho 5665) := by
      have hd : rho 5667 = Bool.toZMod bit * (rho 5665 - seg5AccX225 rho) := by
        rw [← hbit]
        unfold seg5AccX225
        linear_combination -r5972
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY226 rho = seg5AccY225 rho - Bool.toZMod bit * (seg5AccY225 rho - rho 5666) := by
      have hd : rho 5668 = Bool.toZMod bit * (rho 5666 - seg5AccY225 rho) := by
        rw [← hbit]
        unfold seg5AccY225
        linear_combination -r5973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5658 * rho 5659 = rho 5669 := by linear_combination r5974
    have hd1 : rho 5658 * rho 5658 = rho 5670 := by linear_combination r5975
    have hd2 : rho 5659 * rho 5659 = rho 5671 := by linear_combination r5976
    have hd3 : rho 5672 * (rho 5659 * rho 5659 + rho 5658 * rho 5658 * (-1)) = 2 * (rho 5658 * rho 5659) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 5673 * (2 - (rho 5659 * rho 5659 + rho 5658 * rho 5658 * (-1))) = rho 5659 * rho 5659 - rho 5658 * rho 5658 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX225 rho : Seg5.F), (seg5AccY225 rho : Seg5.F)⟩
      ⟨(rho 5658 : Seg5.F), (rho 5659 : Seg5.F)⟩
      ⟨(rho 5665 : Seg5.F), (rho 5666 : Seg5.F)⟩
      ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩
      ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg5_rows226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5979 rho ∧ Seg5.relationRow5980 rho ∧ Seg5.relationRow5981 rho ∧ Seg5.relationRow5982 rho ∧ Seg5.relationRow5983 rho ∧ Seg5.relationRow5984 rho ∧ Seg5.relationRow5985 rho ∧ Seg5.relationRow5986 rho ∧ Seg5.relationRow5987 rho ∧ Seg5.relationRow5988 rho ∧ Seg5.relationRow5989 rho ∧ Seg5.relationRow5990 rho ∧ Seg5.relationRow5991 rho ∧ Seg5.relationRow5992 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  exact ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩

theorem seg5_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2641 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩
        ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩
        ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩
        ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩ := by
  obtain ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩ := seg5_rows226 rho h
  unfold Seg5.relationRow5979 at r5979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979
  unfold Seg5.relationRow5980 at r5980
  unfold Seg5.relationRow5981 at r5981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981
  unfold Seg5.relationRow5982 at r5982
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5982
  unfold Seg5.relationRow5983 at r5983
  unfold Seg5.relationRow5984 at r5984
  unfold Seg5.relationRow5985 at r5985
  unfold Seg5.relationRow5986 at r5986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5986
  unfold Seg5.relationRow5987 at r5987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987
  unfold Seg5.relationRow5988 at r5988
  unfold Seg5.relationRow5989 at r5989
  unfold Seg5.relationRow5990 at r5990
  unfold Seg5.relationRow5991 at r5991
  unfold Seg5.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 2641 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩
        ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩
        ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩
        ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩ := by
    have hnextx : seg5AccX227 rho = seg5AccX226 rho + rho 5681 := by
      unfold seg5AccX227 seg5AccX226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 76]
      ring
    have hnexty : seg5AccY227 rho = seg5AccY226 rho + rho 5682 := by
      unfold seg5AccY227 seg5AccY226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 76]
      ring
    have hsum : seg5AccX226 rho + seg5AccY226 rho = rho 5674 := by
      unfold seg5AccX226 seg5AccY226
      linear_combination r5979
    have ha0 : (rho 5672 + rho 5673) * (seg5AccX226 rho + seg5AccY226 rho) = rho 5675 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 5673 * seg5AccX226 rho = rho 5676 := by
      unfold seg5AccX226
      linear_combination r5981
    have ha2 : rho 5672 * seg5AccY226 rho = rho 5677 := by
      unfold seg5AccY226
      linear_combination r5982
    have ha3 : 3021 * rho 5676 * rho 5677 = rho 5678 := by
      linear_combination r5983
    have ha4 : rho 5679 * (1 + rho 5678) = rho 5676 + rho 5677 := by
      linear_combination r5984
    have ha5 : rho 5680 * (1 - rho 5678) = rho 5675 - rho 5676 - rho 5677 := by
      linear_combination r5985
    have haddx :
        rho 5679 * (1 + 3021 * (rho 5673 * seg5AccX226 rho) * (rho 5672 * seg5AccY226 rho)) =
          rho 5673 * seg5AccX226 rho + rho 5672 * seg5AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5680 * (1 - 3021 * (rho 5673 * seg5AccX226 rho) * (rho 5672 * seg5AccY226 rho)) =
          (-1) * (rho 5673 * seg5AccX226 rho) - rho 5672 * seg5AccY226 rho +
            (seg5AccY226 rho - seg5AccX226 rho * (-1)) * (rho 5672 + rho 5673) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5680 * (1 - rho 5678) = rho 5675 - rho 5676 - rho 5677 := ha5
        _ = (-1) * rho 5676 - rho 5677 + (seg5AccY226 rho - seg5AccX226 rho * (-1)) * (rho 5672 + rho 5673) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX227 rho = seg5AccX226 rho - Bool.toZMod bit * (seg5AccX226 rho - rho 5679) := by
      have hd : rho 5681 = Bool.toZMod bit * (rho 5679 - seg5AccX226 rho) := by
        rw [← hbit]
        unfold seg5AccX226
        linear_combination -r5986
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY227 rho = seg5AccY226 rho - Bool.toZMod bit * (seg5AccY226 rho - rho 5680) := by
      have hd : rho 5682 = Bool.toZMod bit * (rho 5680 - seg5AccY226 rho) := by
        rw [← hbit]
        unfold seg5AccY226
        linear_combination -r5987
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5672 * rho 5673 = rho 5683 := by linear_combination r5988
    have hd1 : rho 5672 * rho 5672 = rho 5684 := by linear_combination r5989
    have hd2 : rho 5673 * rho 5673 = rho 5685 := by linear_combination r5990
    have hd3 : rho 5686 * (rho 5673 * rho 5673 + rho 5672 * rho 5672 * (-1)) = 2 * (rho 5672 * rho 5673) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 5687 * (2 - (rho 5673 * rho 5673 + rho 5672 * rho 5672 * (-1))) = rho 5673 * rho 5673 - rho 5672 * rho 5672 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX226 rho : Seg5.F), (seg5AccY226 rho : Seg5.F)⟩
      ⟨(rho 5672 : Seg5.F), (rho 5673 : Seg5.F)⟩
      ⟨(rho 5679 : Seg5.F), (rho 5680 : Seg5.F)⟩
      ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩
      ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg5_rows227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5993 rho ∧ Seg5.relationRow5994 rho ∧ Seg5.relationRow5995 rho ∧ Seg5.relationRow5996 rho ∧ Seg5.relationRow5997 rho ∧ Seg5.relationRow5998 rho ∧ Seg5.relationRow5999 rho ∧ Seg5.relationRow6000 rho ∧ Seg5.relationRow6001 rho ∧ Seg5.relationRow6002 rho ∧ Seg5.relationRow6003 rho ∧ Seg5.relationRow6004 rho ∧ Seg5.relationRow6005 rho ∧ Seg5.relationRow6006 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, p75, _, _, _, _
  ⟩
  unfold Seg5.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩

theorem seg5_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2642 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩
        ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩
        ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩
        ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩ := by
  obtain ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩ := seg5_rows227 rho h
  unfold Seg5.relationRow5993 at r5993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993
  unfold Seg5.relationRow5994 at r5994
  unfold Seg5.relationRow5995 at r5995
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5995
  unfold Seg5.relationRow5996 at r5996
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996
  unfold Seg5.relationRow5997 at r5997
  unfold Seg5.relationRow5998 at r5998
  unfold Seg5.relationRow5999 at r5999
  unfold Seg5.relationRow6000 at r6000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000
  unfold Seg5.relationRow6001 at r6001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001
  unfold Seg5.relationRow6002 at r6002
  unfold Seg5.relationRow6003 at r6003
  unfold Seg5.relationRow6004 at r6004
  unfold Seg5.relationRow6005 at r6005
  unfold Seg5.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 2642 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩
        ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩
        ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩
        ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩ := by
    have hnextx : seg5AccX228 rho = seg5AccX227 rho + rho 5695 := by
      unfold seg5AccX228 seg5AccX227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 77]
      ring
    have hnexty : seg5AccY228 rho = seg5AccY227 rho + rho 5696 := by
      unfold seg5AccY228 seg5AccY227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 77]
      ring
    have hsum : seg5AccX227 rho + seg5AccY227 rho = rho 5688 := by
      unfold seg5AccX227 seg5AccY227
      linear_combination r5993
    have ha0 : (rho 5686 + rho 5687) * (seg5AccX227 rho + seg5AccY227 rho) = rho 5689 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 5687 * seg5AccX227 rho = rho 5690 := by
      unfold seg5AccX227
      linear_combination r5995
    have ha2 : rho 5686 * seg5AccY227 rho = rho 5691 := by
      unfold seg5AccY227
      linear_combination r5996
    have ha3 : 3021 * rho 5690 * rho 5691 = rho 5692 := by
      linear_combination r5997
    have ha4 : rho 5693 * (1 + rho 5692) = rho 5690 + rho 5691 := by
      linear_combination r5998
    have ha5 : rho 5694 * (1 - rho 5692) = rho 5689 - rho 5690 - rho 5691 := by
      linear_combination r5999
    have haddx :
        rho 5693 * (1 + 3021 * (rho 5687 * seg5AccX227 rho) * (rho 5686 * seg5AccY227 rho)) =
          rho 5687 * seg5AccX227 rho + rho 5686 * seg5AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5694 * (1 - 3021 * (rho 5687 * seg5AccX227 rho) * (rho 5686 * seg5AccY227 rho)) =
          (-1) * (rho 5687 * seg5AccX227 rho) - rho 5686 * seg5AccY227 rho +
            (seg5AccY227 rho - seg5AccX227 rho * (-1)) * (rho 5686 + rho 5687) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5694 * (1 - rho 5692) = rho 5689 - rho 5690 - rho 5691 := ha5
        _ = (-1) * rho 5690 - rho 5691 + (seg5AccY227 rho - seg5AccX227 rho * (-1)) * (rho 5686 + rho 5687) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX228 rho = seg5AccX227 rho - Bool.toZMod bit * (seg5AccX227 rho - rho 5693) := by
      have hd : rho 5695 = Bool.toZMod bit * (rho 5693 - seg5AccX227 rho) := by
        rw [← hbit]
        unfold seg5AccX227
        linear_combination -r6000
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY228 rho = seg5AccY227 rho - Bool.toZMod bit * (seg5AccY227 rho - rho 5694) := by
      have hd : rho 5696 = Bool.toZMod bit * (rho 5694 - seg5AccY227 rho) := by
        rw [← hbit]
        unfold seg5AccY227
        linear_combination -r6001
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5686 * rho 5687 = rho 5697 := by linear_combination r6002
    have hd1 : rho 5686 * rho 5686 = rho 5698 := by linear_combination r6003
    have hd2 : rho 5687 * rho 5687 = rho 5699 := by linear_combination r6004
    have hd3 : rho 5700 * (rho 5687 * rho 5687 + rho 5686 * rho 5686 * (-1)) = 2 * (rho 5686 * rho 5687) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 5701 * (2 - (rho 5687 * rho 5687 + rho 5686 * rho 5686 * (-1))) = rho 5687 * rho 5687 - rho 5686 * rho 5686 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX227 rho : Seg5.F), (seg5AccY227 rho : Seg5.F)⟩
      ⟨(rho 5686 : Seg5.F), (rho 5687 : Seg5.F)⟩
      ⟨(rho 5693 : Seg5.F), (rho 5694 : Seg5.F)⟩
      ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩
      ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg5_rows228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6007 rho ∧ Seg5.relationRow6008 rho ∧ Seg5.relationRow6009 rho ∧ Seg5.relationRow6010 rho ∧ Seg5.relationRow6011 rho ∧ Seg5.relationRow6012 rho ∧ Seg5.relationRow6013 rho ∧ Seg5.relationRow6014 rho ∧ Seg5.relationRow6015 rho ∧ Seg5.relationRow6016 rho ∧ Seg5.relationRow6017 rho ∧ Seg5.relationRow6018 rho ∧ Seg5.relationRow6019 rho ∧ Seg5.relationRow6020 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩

theorem seg5_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2643 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩
        ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩
        ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩
        ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩ := by
  obtain ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩ := seg5_rows228 rho h
  unfold Seg5.relationRow6007 at r6007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007
  unfold Seg5.relationRow6008 at r6008
  unfold Seg5.relationRow6009 at r6009
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009
  unfold Seg5.relationRow6010 at r6010
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010
  unfold Seg5.relationRow6011 at r6011
  unfold Seg5.relationRow6012 at r6012
  unfold Seg5.relationRow6013 at r6013
  unfold Seg5.relationRow6014 at r6014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014
  unfold Seg5.relationRow6015 at r6015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015
  unfold Seg5.relationRow6016 at r6016
  unfold Seg5.relationRow6017 at r6017
  unfold Seg5.relationRow6018 at r6018
  unfold Seg5.relationRow6019 at r6019
  unfold Seg5.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 2643 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩
        ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩
        ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩
        ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩ := by
    have hnextx : seg5AccX229 rho = seg5AccX228 rho + rho 5709 := by
      unfold seg5AccX229 seg5AccX228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 78]
      ring
    have hnexty : seg5AccY229 rho = seg5AccY228 rho + rho 5710 := by
      unfold seg5AccY229 seg5AccY228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 78]
      ring
    have hsum : seg5AccX228 rho + seg5AccY228 rho = rho 5702 := by
      unfold seg5AccX228 seg5AccY228
      linear_combination r6007
    have ha0 : (rho 5700 + rho 5701) * (seg5AccX228 rho + seg5AccY228 rho) = rho 5703 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 5701 * seg5AccX228 rho = rho 5704 := by
      unfold seg5AccX228
      linear_combination r6009
    have ha2 : rho 5700 * seg5AccY228 rho = rho 5705 := by
      unfold seg5AccY228
      linear_combination r6010
    have ha3 : 3021 * rho 5704 * rho 5705 = rho 5706 := by
      linear_combination r6011
    have ha4 : rho 5707 * (1 + rho 5706) = rho 5704 + rho 5705 := by
      linear_combination r6012
    have ha5 : rho 5708 * (1 - rho 5706) = rho 5703 - rho 5704 - rho 5705 := by
      linear_combination r6013
    have haddx :
        rho 5707 * (1 + 3021 * (rho 5701 * seg5AccX228 rho) * (rho 5700 * seg5AccY228 rho)) =
          rho 5701 * seg5AccX228 rho + rho 5700 * seg5AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5708 * (1 - 3021 * (rho 5701 * seg5AccX228 rho) * (rho 5700 * seg5AccY228 rho)) =
          (-1) * (rho 5701 * seg5AccX228 rho) - rho 5700 * seg5AccY228 rho +
            (seg5AccY228 rho - seg5AccX228 rho * (-1)) * (rho 5700 + rho 5701) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5708 * (1 - rho 5706) = rho 5703 - rho 5704 - rho 5705 := ha5
        _ = (-1) * rho 5704 - rho 5705 + (seg5AccY228 rho - seg5AccX228 rho * (-1)) * (rho 5700 + rho 5701) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX229 rho = seg5AccX228 rho - Bool.toZMod bit * (seg5AccX228 rho - rho 5707) := by
      have hd : rho 5709 = Bool.toZMod bit * (rho 5707 - seg5AccX228 rho) := by
        rw [← hbit]
        unfold seg5AccX228
        linear_combination -r6014
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY229 rho = seg5AccY228 rho - Bool.toZMod bit * (seg5AccY228 rho - rho 5708) := by
      have hd : rho 5710 = Bool.toZMod bit * (rho 5708 - seg5AccY228 rho) := by
        rw [← hbit]
        unfold seg5AccY228
        linear_combination -r6015
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5700 * rho 5701 = rho 5711 := by linear_combination r6016
    have hd1 : rho 5700 * rho 5700 = rho 5712 := by linear_combination r6017
    have hd2 : rho 5701 * rho 5701 = rho 5713 := by linear_combination r6018
    have hd3 : rho 5714 * (rho 5701 * rho 5701 + rho 5700 * rho 5700 * (-1)) = 2 * (rho 5700 * rho 5701) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 5715 * (2 - (rho 5701 * rho 5701 + rho 5700 * rho 5700 * (-1))) = rho 5701 * rho 5701 - rho 5700 * rho 5700 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX228 rho : Seg5.F), (seg5AccY228 rho : Seg5.F)⟩
      ⟨(rho 5700 : Seg5.F), (rho 5701 : Seg5.F)⟩
      ⟨(rho 5707 : Seg5.F), (rho 5708 : Seg5.F)⟩
      ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩
      ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg5_rows229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6021 rho ∧ Seg5.relationRow6022 rho ∧ Seg5.relationRow6023 rho ∧ Seg5.relationRow6024 rho ∧ Seg5.relationRow6025 rho ∧ Seg5.relationRow6026 rho ∧ Seg5.relationRow6027 rho ∧ Seg5.relationRow6028 rho ∧ Seg5.relationRow6029 rho ∧ Seg5.relationRow6030 rho ∧ Seg5.relationRow6031 rho ∧ Seg5.relationRow6032 rho ∧ Seg5.relationRow6033 rho ∧ Seg5.relationRow6034 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩

theorem seg5_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2644 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩
        ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩
        ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩
        ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩ := by
  obtain ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩ := seg5_rows229 rho h
  unfold Seg5.relationRow6021 at r6021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6021
  unfold Seg5.relationRow6022 at r6022
  unfold Seg5.relationRow6023 at r6023
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023
  unfold Seg5.relationRow6024 at r6024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6024
  unfold Seg5.relationRow6025 at r6025
  unfold Seg5.relationRow6026 at r6026
  unfold Seg5.relationRow6027 at r6027
  unfold Seg5.relationRow6028 at r6028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028
  unfold Seg5.relationRow6029 at r6029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029
  unfold Seg5.relationRow6030 at r6030
  unfold Seg5.relationRow6031 at r6031
  unfold Seg5.relationRow6032 at r6032
  unfold Seg5.relationRow6033 at r6033
  unfold Seg5.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 2644 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩
        ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩
        ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩
        ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩ := by
    have hnextx : seg5AccX230 rho = seg5AccX229 rho + rho 5723 := by
      unfold seg5AccX230 seg5AccX229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 79]
      ring
    have hnexty : seg5AccY230 rho = seg5AccY229 rho + rho 5724 := by
      unfold seg5AccY230 seg5AccY229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 79]
      ring
    have hsum : seg5AccX229 rho + seg5AccY229 rho = rho 5716 := by
      unfold seg5AccX229 seg5AccY229
      linear_combination r6021
    have ha0 : (rho 5714 + rho 5715) * (seg5AccX229 rho + seg5AccY229 rho) = rho 5717 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 5715 * seg5AccX229 rho = rho 5718 := by
      unfold seg5AccX229
      linear_combination r6023
    have ha2 : rho 5714 * seg5AccY229 rho = rho 5719 := by
      unfold seg5AccY229
      linear_combination r6024
    have ha3 : 3021 * rho 5718 * rho 5719 = rho 5720 := by
      linear_combination r6025
    have ha4 : rho 5721 * (1 + rho 5720) = rho 5718 + rho 5719 := by
      linear_combination r6026
    have ha5 : rho 5722 * (1 - rho 5720) = rho 5717 - rho 5718 - rho 5719 := by
      linear_combination r6027
    have haddx :
        rho 5721 * (1 + 3021 * (rho 5715 * seg5AccX229 rho) * (rho 5714 * seg5AccY229 rho)) =
          rho 5715 * seg5AccX229 rho + rho 5714 * seg5AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5722 * (1 - 3021 * (rho 5715 * seg5AccX229 rho) * (rho 5714 * seg5AccY229 rho)) =
          (-1) * (rho 5715 * seg5AccX229 rho) - rho 5714 * seg5AccY229 rho +
            (seg5AccY229 rho - seg5AccX229 rho * (-1)) * (rho 5714 + rho 5715) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5722 * (1 - rho 5720) = rho 5717 - rho 5718 - rho 5719 := ha5
        _ = (-1) * rho 5718 - rho 5719 + (seg5AccY229 rho - seg5AccX229 rho * (-1)) * (rho 5714 + rho 5715) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX230 rho = seg5AccX229 rho - Bool.toZMod bit * (seg5AccX229 rho - rho 5721) := by
      have hd : rho 5723 = Bool.toZMod bit * (rho 5721 - seg5AccX229 rho) := by
        rw [← hbit]
        unfold seg5AccX229
        linear_combination -r6028
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY230 rho = seg5AccY229 rho - Bool.toZMod bit * (seg5AccY229 rho - rho 5722) := by
      have hd : rho 5724 = Bool.toZMod bit * (rho 5722 - seg5AccY229 rho) := by
        rw [← hbit]
        unfold seg5AccY229
        linear_combination -r6029
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5714 * rho 5715 = rho 5725 := by linear_combination r6030
    have hd1 : rho 5714 * rho 5714 = rho 5726 := by linear_combination r6031
    have hd2 : rho 5715 * rho 5715 = rho 5727 := by linear_combination r6032
    have hd3 : rho 5728 * (rho 5715 * rho 5715 + rho 5714 * rho 5714 * (-1)) = 2 * (rho 5714 * rho 5715) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 5729 * (2 - (rho 5715 * rho 5715 + rho 5714 * rho 5714 * (-1))) = rho 5715 * rho 5715 - rho 5714 * rho 5714 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX229 rho : Seg5.F), (seg5AccY229 rho : Seg5.F)⟩
      ⟨(rho 5714 : Seg5.F), (rho 5715 : Seg5.F)⟩
      ⟨(rho 5721 : Seg5.F), (rho 5722 : Seg5.F)⟩
      ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩
      ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg5_rows230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6035 rho ∧ Seg5.relationRow6036 rho ∧ Seg5.relationRow6037 rho ∧ Seg5.relationRow6038 rho ∧ Seg5.relationRow6039 rho ∧ Seg5.relationRow6040 rho ∧ Seg5.relationRow6041 rho ∧ Seg5.relationRow6042 rho ∧ Seg5.relationRow6043 rho ∧ Seg5.relationRow6044 rho ∧ Seg5.relationRow6045 rho ∧ Seg5.relationRow6046 rho ∧ Seg5.relationRow6047 rho ∧ Seg5.relationRow6048 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩

theorem seg5_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2645 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩
        ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩
        ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩
        ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩ := by
  obtain ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩ := seg5_rows230 rho h
  unfold Seg5.relationRow6035 at r6035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035
  unfold Seg5.relationRow6036 at r6036
  unfold Seg5.relationRow6037 at r6037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6037
  unfold Seg5.relationRow6038 at r6038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6038
  unfold Seg5.relationRow6039 at r6039
  unfold Seg5.relationRow6040 at r6040
  unfold Seg5.relationRow6041 at r6041
  unfold Seg5.relationRow6042 at r6042
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042
  unfold Seg5.relationRow6043 at r6043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043
  unfold Seg5.relationRow6044 at r6044
  unfold Seg5.relationRow6045 at r6045
  unfold Seg5.relationRow6046 at r6046
  unfold Seg5.relationRow6047 at r6047
  unfold Seg5.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 2645 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩
        ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩
        ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩
        ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩ := by
    have hnextx : seg5AccX231 rho = seg5AccX230 rho + rho 5737 := by
      unfold seg5AccX231 seg5AccX230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 80]
      ring
    have hnexty : seg5AccY231 rho = seg5AccY230 rho + rho 5738 := by
      unfold seg5AccY231 seg5AccY230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 80]
      ring
    have hsum : seg5AccX230 rho + seg5AccY230 rho = rho 5730 := by
      unfold seg5AccX230 seg5AccY230
      linear_combination r6035
    have ha0 : (rho 5728 + rho 5729) * (seg5AccX230 rho + seg5AccY230 rho) = rho 5731 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 5729 * seg5AccX230 rho = rho 5732 := by
      unfold seg5AccX230
      linear_combination r6037
    have ha2 : rho 5728 * seg5AccY230 rho = rho 5733 := by
      unfold seg5AccY230
      linear_combination r6038
    have ha3 : 3021 * rho 5732 * rho 5733 = rho 5734 := by
      linear_combination r6039
    have ha4 : rho 5735 * (1 + rho 5734) = rho 5732 + rho 5733 := by
      linear_combination r6040
    have ha5 : rho 5736 * (1 - rho 5734) = rho 5731 - rho 5732 - rho 5733 := by
      linear_combination r6041
    have haddx :
        rho 5735 * (1 + 3021 * (rho 5729 * seg5AccX230 rho) * (rho 5728 * seg5AccY230 rho)) =
          rho 5729 * seg5AccX230 rho + rho 5728 * seg5AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5736 * (1 - 3021 * (rho 5729 * seg5AccX230 rho) * (rho 5728 * seg5AccY230 rho)) =
          (-1) * (rho 5729 * seg5AccX230 rho) - rho 5728 * seg5AccY230 rho +
            (seg5AccY230 rho - seg5AccX230 rho * (-1)) * (rho 5728 + rho 5729) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5736 * (1 - rho 5734) = rho 5731 - rho 5732 - rho 5733 := ha5
        _ = (-1) * rho 5732 - rho 5733 + (seg5AccY230 rho - seg5AccX230 rho * (-1)) * (rho 5728 + rho 5729) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX231 rho = seg5AccX230 rho - Bool.toZMod bit * (seg5AccX230 rho - rho 5735) := by
      have hd : rho 5737 = Bool.toZMod bit * (rho 5735 - seg5AccX230 rho) := by
        rw [← hbit]
        unfold seg5AccX230
        linear_combination -r6042
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY231 rho = seg5AccY230 rho - Bool.toZMod bit * (seg5AccY230 rho - rho 5736) := by
      have hd : rho 5738 = Bool.toZMod bit * (rho 5736 - seg5AccY230 rho) := by
        rw [← hbit]
        unfold seg5AccY230
        linear_combination -r6043
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5728 * rho 5729 = rho 5739 := by linear_combination r6044
    have hd1 : rho 5728 * rho 5728 = rho 5740 := by linear_combination r6045
    have hd2 : rho 5729 * rho 5729 = rho 5741 := by linear_combination r6046
    have hd3 : rho 5742 * (rho 5729 * rho 5729 + rho 5728 * rho 5728 * (-1)) = 2 * (rho 5728 * rho 5729) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 5743 * (2 - (rho 5729 * rho 5729 + rho 5728 * rho 5728 * (-1))) = rho 5729 * rho 5729 - rho 5728 * rho 5728 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX230 rho : Seg5.F), (seg5AccY230 rho : Seg5.F)⟩
      ⟨(rho 5728 : Seg5.F), (rho 5729 : Seg5.F)⟩
      ⟨(rho 5735 : Seg5.F), (rho 5736 : Seg5.F)⟩
      ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩
      ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg5_hstep_c20 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 220 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg5_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg5_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg5_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
  · exact seg5_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg5_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg5_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg5_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg5_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg5_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg5_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
