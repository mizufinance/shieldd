import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5895 rho ∧ Seg16.relationRow5896 rho ∧ Seg16.relationRow5897 rho ∧ Seg16.relationRow5898 rho ∧ Seg16.relationRow5899 rho ∧ Seg16.relationRow5900 rho ∧ Seg16.relationRow5901 rho ∧ Seg16.relationRow5902 rho ∧ Seg16.relationRow5903 rho ∧ Seg16.relationRow5904 rho ∧ Seg16.relationRow5905 rho ∧ Seg16.relationRow5906 rho ∧ Seg16.relationRow5907 rho ∧ Seg16.relationRow5908 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg16_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15512 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩ := by
  obtain ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg16_rows220 rho h
  unfold Seg16.relationRow5895 at r5895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5895
  unfold Seg16.relationRow5896 at r5896
  unfold Seg16.relationRow5897 at r5897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897
  unfold Seg16.relationRow5898 at r5898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898
  unfold Seg16.relationRow5899 at r5899
  unfold Seg16.relationRow5900 at r5900
  unfold Seg16.relationRow5901 at r5901
  unfold Seg16.relationRow5902 at r5902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902
  unfold Seg16.relationRow5903 at r5903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903
  unfold Seg16.relationRow5904 at r5904
  unfold Seg16.relationRow5905 at r5905
  unfold Seg16.relationRow5906 at r5906
  unfold Seg16.relationRow5907 at r5907
  unfold Seg16.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 15512 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩ := by
    have hnextx : seg16AccX221 rho = seg16AccX220 rho + rho 18474 := by
      unfold seg16AccX221 seg16AccX220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 70]
      ring
    have hnexty : seg16AccY221 rho = seg16AccY220 rho + rho 18475 := by
      unfold seg16AccY221 seg16AccY220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 70]
      ring
    have hsum : seg16AccX220 rho + seg16AccY220 rho = rho 18467 := by
      unfold seg16AccX220 seg16AccY220
      linear_combination r5895
    have ha0 : (rho 18465 + rho 18466) * (seg16AccX220 rho + seg16AccY220 rho) = rho 18468 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 18466 * seg16AccX220 rho = rho 18469 := by
      unfold seg16AccX220
      linear_combination r5897
    have ha2 : rho 18465 * seg16AccY220 rho = rho 18470 := by
      unfold seg16AccY220
      linear_combination r5898
    have ha3 : 3021 * rho 18469 * rho 18470 = rho 18471 := by
      linear_combination r5899
    have ha4 : rho 18472 * (1 + rho 18471) = rho 18469 + rho 18470 := by
      linear_combination r5900
    have ha5 : rho 18473 * (1 - rho 18471) = rho 18468 - rho 18469 - rho 18470 := by
      linear_combination r5901
    have haddx :
        rho 18472 * (1 + 3021 * (rho 18466 * seg16AccX220 rho) * (rho 18465 * seg16AccY220 rho)) =
          rho 18466 * seg16AccX220 rho + rho 18465 * seg16AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18473 * (1 - 3021 * (rho 18466 * seg16AccX220 rho) * (rho 18465 * seg16AccY220 rho)) =
          (-1) * (rho 18466 * seg16AccX220 rho) - rho 18465 * seg16AccY220 rho +
            (seg16AccY220 rho - seg16AccX220 rho * (-1)) * (rho 18465 + rho 18466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18473 * (1 - rho 18471) = rho 18468 - rho 18469 - rho 18470 := ha5
        _ = (-1) * rho 18469 - rho 18470 + (seg16AccY220 rho - seg16AccX220 rho * (-1)) * (rho 18465 + rho 18466) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX221 rho = seg16AccX220 rho - Bool.toZMod bit * (seg16AccX220 rho - rho 18472) := by
      have hd : rho 18474 = Bool.toZMod bit * (rho 18472 - seg16AccX220 rho) := by
        rw [← hbit]
        unfold seg16AccX220
        linear_combination -r5902
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY221 rho = seg16AccY220 rho - Bool.toZMod bit * (seg16AccY220 rho - rho 18473) := by
      have hd : rho 18475 = Bool.toZMod bit * (rho 18473 - seg16AccY220 rho) := by
        rw [← hbit]
        unfold seg16AccY220
        linear_combination -r5903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18465 * rho 18466 = rho 18476 := by linear_combination r5904
    have hd1 : rho 18465 * rho 18465 = rho 18477 := by linear_combination r5905
    have hd2 : rho 18466 * rho 18466 = rho 18478 := by linear_combination r5906
    have hd3 : rho 18479 * (rho 18466 * rho 18466 + rho 18465 * rho 18465 * (-1)) = 2 * (rho 18465 * rho 18466) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 18480 * (2 - (rho 18466 * rho 18466 + rho 18465 * rho 18465 * (-1))) = rho 18466 * rho 18466 - rho 18465 * rho 18465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
      ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
      ⟨(rho 18472 : Seg16.F), (rho 18473 : Seg16.F)⟩
      ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
      ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg16_rows221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5909 rho ∧ Seg16.relationRow5910 rho ∧ Seg16.relationRow5911 rho ∧ Seg16.relationRow5912 rho ∧ Seg16.relationRow5913 rho ∧ Seg16.relationRow5914 rho ∧ Seg16.relationRow5915 rho ∧ Seg16.relationRow5916 rho ∧ Seg16.relationRow5917 rho ∧ Seg16.relationRow5918 rho ∧ Seg16.relationRow5919 rho ∧ Seg16.relationRow5920 rho ∧ Seg16.relationRow5921 rho ∧ Seg16.relationRow5922 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩

theorem seg16_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15513 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩ := seg16_rows221 rho h
  unfold Seg16.relationRow5909 at r5909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909
  unfold Seg16.relationRow5910 at r5910
  unfold Seg16.relationRow5911 at r5911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911
  unfold Seg16.relationRow5912 at r5912
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5912
  unfold Seg16.relationRow5913 at r5913
  unfold Seg16.relationRow5914 at r5914
  unfold Seg16.relationRow5915 at r5915
  unfold Seg16.relationRow5916 at r5916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916
  unfold Seg16.relationRow5917 at r5917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5917
  unfold Seg16.relationRow5918 at r5918
  unfold Seg16.relationRow5919 at r5919
  unfold Seg16.relationRow5920 at r5920
  unfold Seg16.relationRow5921 at r5921
  unfold Seg16.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 15513 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩ := by
    have hnextx : seg16AccX222 rho = seg16AccX221 rho + rho 18488 := by
      unfold seg16AccX222 seg16AccX221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 71]
      ring
    have hnexty : seg16AccY222 rho = seg16AccY221 rho + rho 18489 := by
      unfold seg16AccY222 seg16AccY221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 71]
      ring
    have hsum : seg16AccX221 rho + seg16AccY221 rho = rho 18481 := by
      unfold seg16AccX221 seg16AccY221
      linear_combination r5909
    have ha0 : (rho 18479 + rho 18480) * (seg16AccX221 rho + seg16AccY221 rho) = rho 18482 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 18480 * seg16AccX221 rho = rho 18483 := by
      unfold seg16AccX221
      linear_combination r5911
    have ha2 : rho 18479 * seg16AccY221 rho = rho 18484 := by
      unfold seg16AccY221
      linear_combination r5912
    have ha3 : 3021 * rho 18483 * rho 18484 = rho 18485 := by
      linear_combination r5913
    have ha4 : rho 18486 * (1 + rho 18485) = rho 18483 + rho 18484 := by
      linear_combination r5914
    have ha5 : rho 18487 * (1 - rho 18485) = rho 18482 - rho 18483 - rho 18484 := by
      linear_combination r5915
    have haddx :
        rho 18486 * (1 + 3021 * (rho 18480 * seg16AccX221 rho) * (rho 18479 * seg16AccY221 rho)) =
          rho 18480 * seg16AccX221 rho + rho 18479 * seg16AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18487 * (1 - 3021 * (rho 18480 * seg16AccX221 rho) * (rho 18479 * seg16AccY221 rho)) =
          (-1) * (rho 18480 * seg16AccX221 rho) - rho 18479 * seg16AccY221 rho +
            (seg16AccY221 rho - seg16AccX221 rho * (-1)) * (rho 18479 + rho 18480) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18487 * (1 - rho 18485) = rho 18482 - rho 18483 - rho 18484 := ha5
        _ = (-1) * rho 18483 - rho 18484 + (seg16AccY221 rho - seg16AccX221 rho * (-1)) * (rho 18479 + rho 18480) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX222 rho = seg16AccX221 rho - Bool.toZMod bit * (seg16AccX221 rho - rho 18486) := by
      have hd : rho 18488 = Bool.toZMod bit * (rho 18486 - seg16AccX221 rho) := by
        rw [← hbit]
        unfold seg16AccX221
        linear_combination -r5916
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY222 rho = seg16AccY221 rho - Bool.toZMod bit * (seg16AccY221 rho - rho 18487) := by
      have hd : rho 18489 = Bool.toZMod bit * (rho 18487 - seg16AccY221 rho) := by
        rw [← hbit]
        unfold seg16AccY221
        linear_combination -r5917
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18479 * rho 18480 = rho 18490 := by linear_combination r5918
    have hd1 : rho 18479 * rho 18479 = rho 18491 := by linear_combination r5919
    have hd2 : rho 18480 * rho 18480 = rho 18492 := by linear_combination r5920
    have hd3 : rho 18493 * (rho 18480 * rho 18480 + rho 18479 * rho 18479 * (-1)) = 2 * (rho 18479 * rho 18480) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 18494 * (2 - (rho 18480 * rho 18480 + rho 18479 * rho 18479 * (-1))) = rho 18480 * rho 18480 - rho 18479 * rho 18479 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
      ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
      ⟨(rho 18486 : Seg16.F), (rho 18487 : Seg16.F)⟩
      ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
      ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg16_rows222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5923 rho ∧ Seg16.relationRow5924 rho ∧ Seg16.relationRow5925 rho ∧ Seg16.relationRow5926 rho ∧ Seg16.relationRow5927 rho ∧ Seg16.relationRow5928 rho ∧ Seg16.relationRow5929 rho ∧ Seg16.relationRow5930 rho ∧ Seg16.relationRow5931 rho ∧ Seg16.relationRow5932 rho ∧ Seg16.relationRow5933 rho ∧ Seg16.relationRow5934 rho ∧ Seg16.relationRow5935 rho ∧ Seg16.relationRow5936 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩

theorem seg16_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15514 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩ := by
  obtain ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩ := seg16_rows222 rho h
  unfold Seg16.relationRow5923 at r5923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923
  unfold Seg16.relationRow5924 at r5924
  unfold Seg16.relationRow5925 at r5925
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925
  unfold Seg16.relationRow5926 at r5926
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926
  unfold Seg16.relationRow5927 at r5927
  unfold Seg16.relationRow5928 at r5928
  unfold Seg16.relationRow5929 at r5929
  unfold Seg16.relationRow5930 at r5930
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5930
  unfold Seg16.relationRow5931 at r5931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931
  unfold Seg16.relationRow5932 at r5932
  unfold Seg16.relationRow5933 at r5933
  unfold Seg16.relationRow5934 at r5934
  unfold Seg16.relationRow5935 at r5935
  unfold Seg16.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 15514 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩ := by
    have hnextx : seg16AccX223 rho = seg16AccX222 rho + rho 18502 := by
      unfold seg16AccX223 seg16AccX222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 72]
      ring
    have hnexty : seg16AccY223 rho = seg16AccY222 rho + rho 18503 := by
      unfold seg16AccY223 seg16AccY222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 72]
      ring
    have hsum : seg16AccX222 rho + seg16AccY222 rho = rho 18495 := by
      unfold seg16AccX222 seg16AccY222
      linear_combination r5923
    have ha0 : (rho 18493 + rho 18494) * (seg16AccX222 rho + seg16AccY222 rho) = rho 18496 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 18494 * seg16AccX222 rho = rho 18497 := by
      unfold seg16AccX222
      linear_combination r5925
    have ha2 : rho 18493 * seg16AccY222 rho = rho 18498 := by
      unfold seg16AccY222
      linear_combination r5926
    have ha3 : 3021 * rho 18497 * rho 18498 = rho 18499 := by
      linear_combination r5927
    have ha4 : rho 18500 * (1 + rho 18499) = rho 18497 + rho 18498 := by
      linear_combination r5928
    have ha5 : rho 18501 * (1 - rho 18499) = rho 18496 - rho 18497 - rho 18498 := by
      linear_combination r5929
    have haddx :
        rho 18500 * (1 + 3021 * (rho 18494 * seg16AccX222 rho) * (rho 18493 * seg16AccY222 rho)) =
          rho 18494 * seg16AccX222 rho + rho 18493 * seg16AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18501 * (1 - 3021 * (rho 18494 * seg16AccX222 rho) * (rho 18493 * seg16AccY222 rho)) =
          (-1) * (rho 18494 * seg16AccX222 rho) - rho 18493 * seg16AccY222 rho +
            (seg16AccY222 rho - seg16AccX222 rho * (-1)) * (rho 18493 + rho 18494) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18501 * (1 - rho 18499) = rho 18496 - rho 18497 - rho 18498 := ha5
        _ = (-1) * rho 18497 - rho 18498 + (seg16AccY222 rho - seg16AccX222 rho * (-1)) * (rho 18493 + rho 18494) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX223 rho = seg16AccX222 rho - Bool.toZMod bit * (seg16AccX222 rho - rho 18500) := by
      have hd : rho 18502 = Bool.toZMod bit * (rho 18500 - seg16AccX222 rho) := by
        rw [← hbit]
        unfold seg16AccX222
        linear_combination -r5930
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY223 rho = seg16AccY222 rho - Bool.toZMod bit * (seg16AccY222 rho - rho 18501) := by
      have hd : rho 18503 = Bool.toZMod bit * (rho 18501 - seg16AccY222 rho) := by
        rw [← hbit]
        unfold seg16AccY222
        linear_combination -r5931
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18493 * rho 18494 = rho 18504 := by linear_combination r5932
    have hd1 : rho 18493 * rho 18493 = rho 18505 := by linear_combination r5933
    have hd2 : rho 18494 * rho 18494 = rho 18506 := by linear_combination r5934
    have hd3 : rho 18507 * (rho 18494 * rho 18494 + rho 18493 * rho 18493 * (-1)) = 2 * (rho 18493 * rho 18494) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 18508 * (2 - (rho 18494 * rho 18494 + rho 18493 * rho 18493 * (-1))) = rho 18494 * rho 18494 - rho 18493 * rho 18493 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
      ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
      ⟨(rho 18500 : Seg16.F), (rho 18501 : Seg16.F)⟩
      ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
      ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg16_rows223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5937 rho ∧ Seg16.relationRow5938 rho ∧ Seg16.relationRow5939 rho ∧ Seg16.relationRow5940 rho ∧ Seg16.relationRow5941 rho ∧ Seg16.relationRow5942 rho ∧ Seg16.relationRow5943 rho ∧ Seg16.relationRow5944 rho ∧ Seg16.relationRow5945 rho ∧ Seg16.relationRow5946 rho ∧ Seg16.relationRow5947 rho ∧ Seg16.relationRow5948 rho ∧ Seg16.relationRow5949 rho ∧ Seg16.relationRow5950 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem seg16_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15515 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩ := by
  obtain ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := seg16_rows223 rho h
  unfold Seg16.relationRow5937 at r5937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937
  unfold Seg16.relationRow5938 at r5938
  unfold Seg16.relationRow5939 at r5939
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939
  unfold Seg16.relationRow5940 at r5940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940
  unfold Seg16.relationRow5941 at r5941
  unfold Seg16.relationRow5942 at r5942
  unfold Seg16.relationRow5943 at r5943
  unfold Seg16.relationRow5944 at r5944
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944
  unfold Seg16.relationRow5945 at r5945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945
  unfold Seg16.relationRow5946 at r5946
  unfold Seg16.relationRow5947 at r5947
  unfold Seg16.relationRow5948 at r5948
  unfold Seg16.relationRow5949 at r5949
  unfold Seg16.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 15515 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩ := by
    have hnextx : seg16AccX224 rho = seg16AccX223 rho + rho 18516 := by
      unfold seg16AccX224 seg16AccX223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 73]
      ring
    have hnexty : seg16AccY224 rho = seg16AccY223 rho + rho 18517 := by
      unfold seg16AccY224 seg16AccY223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 73]
      ring
    have hsum : seg16AccX223 rho + seg16AccY223 rho = rho 18509 := by
      unfold seg16AccX223 seg16AccY223
      linear_combination r5937
    have ha0 : (rho 18507 + rho 18508) * (seg16AccX223 rho + seg16AccY223 rho) = rho 18510 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 18508 * seg16AccX223 rho = rho 18511 := by
      unfold seg16AccX223
      linear_combination r5939
    have ha2 : rho 18507 * seg16AccY223 rho = rho 18512 := by
      unfold seg16AccY223
      linear_combination r5940
    have ha3 : 3021 * rho 18511 * rho 18512 = rho 18513 := by
      linear_combination r5941
    have ha4 : rho 18514 * (1 + rho 18513) = rho 18511 + rho 18512 := by
      linear_combination r5942
    have ha5 : rho 18515 * (1 - rho 18513) = rho 18510 - rho 18511 - rho 18512 := by
      linear_combination r5943
    have haddx :
        rho 18514 * (1 + 3021 * (rho 18508 * seg16AccX223 rho) * (rho 18507 * seg16AccY223 rho)) =
          rho 18508 * seg16AccX223 rho + rho 18507 * seg16AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18515 * (1 - 3021 * (rho 18508 * seg16AccX223 rho) * (rho 18507 * seg16AccY223 rho)) =
          (-1) * (rho 18508 * seg16AccX223 rho) - rho 18507 * seg16AccY223 rho +
            (seg16AccY223 rho - seg16AccX223 rho * (-1)) * (rho 18507 + rho 18508) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18515 * (1 - rho 18513) = rho 18510 - rho 18511 - rho 18512 := ha5
        _ = (-1) * rho 18511 - rho 18512 + (seg16AccY223 rho - seg16AccX223 rho * (-1)) * (rho 18507 + rho 18508) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX224 rho = seg16AccX223 rho - Bool.toZMod bit * (seg16AccX223 rho - rho 18514) := by
      have hd : rho 18516 = Bool.toZMod bit * (rho 18514 - seg16AccX223 rho) := by
        rw [← hbit]
        unfold seg16AccX223
        linear_combination -r5944
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY224 rho = seg16AccY223 rho - Bool.toZMod bit * (seg16AccY223 rho - rho 18515) := by
      have hd : rho 18517 = Bool.toZMod bit * (rho 18515 - seg16AccY223 rho) := by
        rw [← hbit]
        unfold seg16AccY223
        linear_combination -r5945
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18507 * rho 18508 = rho 18518 := by linear_combination r5946
    have hd1 : rho 18507 * rho 18507 = rho 18519 := by linear_combination r5947
    have hd2 : rho 18508 * rho 18508 = rho 18520 := by linear_combination r5948
    have hd3 : rho 18521 * (rho 18508 * rho 18508 + rho 18507 * rho 18507 * (-1)) = 2 * (rho 18507 * rho 18508) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 18522 * (2 - (rho 18508 * rho 18508 + rho 18507 * rho 18507 * (-1))) = rho 18508 * rho 18508 - rho 18507 * rho 18507 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
      ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
      ⟨(rho 18514 : Seg16.F), (rho 18515 : Seg16.F)⟩
      ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
      ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg16_rows224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5951 rho ∧ Seg16.relationRow5952 rho ∧ Seg16.relationRow5953 rho ∧ Seg16.relationRow5954 rho ∧ Seg16.relationRow5955 rho ∧ Seg16.relationRow5956 rho ∧ Seg16.relationRow5957 rho ∧ Seg16.relationRow5958 rho ∧ Seg16.relationRow5959 rho ∧ Seg16.relationRow5960 rho ∧ Seg16.relationRow5961 rho ∧ Seg16.relationRow5962 rho ∧ Seg16.relationRow5963 rho ∧ Seg16.relationRow5964 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩

theorem seg16_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15516 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩ := seg16_rows224 rho h
  unfold Seg16.relationRow5951 at r5951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951
  unfold Seg16.relationRow5952 at r5952
  unfold Seg16.relationRow5953 at r5953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953
  unfold Seg16.relationRow5954 at r5954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954
  unfold Seg16.relationRow5955 at r5955
  unfold Seg16.relationRow5956 at r5956
  unfold Seg16.relationRow5957 at r5957
  unfold Seg16.relationRow5958 at r5958
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958
  unfold Seg16.relationRow5959 at r5959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5959
  unfold Seg16.relationRow5960 at r5960
  unfold Seg16.relationRow5961 at r5961
  unfold Seg16.relationRow5962 at r5962
  unfold Seg16.relationRow5963 at r5963
  unfold Seg16.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 15516 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩ := by
    have hnextx : seg16AccX225 rho = seg16AccX224 rho + rho 18530 := by
      unfold seg16AccX225 seg16AccX224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 74]
      ring
    have hnexty : seg16AccY225 rho = seg16AccY224 rho + rho 18531 := by
      unfold seg16AccY225 seg16AccY224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 74]
      ring
    have hsum : seg16AccX224 rho + seg16AccY224 rho = rho 18523 := by
      unfold seg16AccX224 seg16AccY224
      linear_combination r5951
    have ha0 : (rho 18521 + rho 18522) * (seg16AccX224 rho + seg16AccY224 rho) = rho 18524 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 18522 * seg16AccX224 rho = rho 18525 := by
      unfold seg16AccX224
      linear_combination r5953
    have ha2 : rho 18521 * seg16AccY224 rho = rho 18526 := by
      unfold seg16AccY224
      linear_combination r5954
    have ha3 : 3021 * rho 18525 * rho 18526 = rho 18527 := by
      linear_combination r5955
    have ha4 : rho 18528 * (1 + rho 18527) = rho 18525 + rho 18526 := by
      linear_combination r5956
    have ha5 : rho 18529 * (1 - rho 18527) = rho 18524 - rho 18525 - rho 18526 := by
      linear_combination r5957
    have haddx :
        rho 18528 * (1 + 3021 * (rho 18522 * seg16AccX224 rho) * (rho 18521 * seg16AccY224 rho)) =
          rho 18522 * seg16AccX224 rho + rho 18521 * seg16AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18529 * (1 - 3021 * (rho 18522 * seg16AccX224 rho) * (rho 18521 * seg16AccY224 rho)) =
          (-1) * (rho 18522 * seg16AccX224 rho) - rho 18521 * seg16AccY224 rho +
            (seg16AccY224 rho - seg16AccX224 rho * (-1)) * (rho 18521 + rho 18522) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18529 * (1 - rho 18527) = rho 18524 - rho 18525 - rho 18526 := ha5
        _ = (-1) * rho 18525 - rho 18526 + (seg16AccY224 rho - seg16AccX224 rho * (-1)) * (rho 18521 + rho 18522) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX225 rho = seg16AccX224 rho - Bool.toZMod bit * (seg16AccX224 rho - rho 18528) := by
      have hd : rho 18530 = Bool.toZMod bit * (rho 18528 - seg16AccX224 rho) := by
        rw [← hbit]
        unfold seg16AccX224
        linear_combination -r5958
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY225 rho = seg16AccY224 rho - Bool.toZMod bit * (seg16AccY224 rho - rho 18529) := by
      have hd : rho 18531 = Bool.toZMod bit * (rho 18529 - seg16AccY224 rho) := by
        rw [← hbit]
        unfold seg16AccY224
        linear_combination -r5959
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18521 * rho 18522 = rho 18532 := by linear_combination r5960
    have hd1 : rho 18521 * rho 18521 = rho 18533 := by linear_combination r5961
    have hd2 : rho 18522 * rho 18522 = rho 18534 := by linear_combination r5962
    have hd3 : rho 18535 * (rho 18522 * rho 18522 + rho 18521 * rho 18521 * (-1)) = 2 * (rho 18521 * rho 18522) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 18536 * (2 - (rho 18522 * rho 18522 + rho 18521 * rho 18521 * (-1))) = rho 18522 * rho 18522 - rho 18521 * rho 18521 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
      ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
      ⟨(rho 18528 : Seg16.F), (rho 18529 : Seg16.F)⟩
      ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
      ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg16_rows225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5965 rho ∧ Seg16.relationRow5966 rho ∧ Seg16.relationRow5967 rho ∧ Seg16.relationRow5968 rho ∧ Seg16.relationRow5969 rho ∧ Seg16.relationRow5970 rho ∧ Seg16.relationRow5971 rho ∧ Seg16.relationRow5972 rho ∧ Seg16.relationRow5973 rho ∧ Seg16.relationRow5974 rho ∧ Seg16.relationRow5975 rho ∧ Seg16.relationRow5976 rho ∧ Seg16.relationRow5977 rho ∧ Seg16.relationRow5978 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩

theorem seg16_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15517 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩ := by
  obtain ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩ := seg16_rows225 rho h
  unfold Seg16.relationRow5965 at r5965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965
  unfold Seg16.relationRow5966 at r5966
  unfold Seg16.relationRow5967 at r5967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967
  unfold Seg16.relationRow5968 at r5968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968
  unfold Seg16.relationRow5969 at r5969
  unfold Seg16.relationRow5970 at r5970
  unfold Seg16.relationRow5971 at r5971
  unfold Seg16.relationRow5972 at r5972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5972
  unfold Seg16.relationRow5973 at r5973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5973
  unfold Seg16.relationRow5974 at r5974
  unfold Seg16.relationRow5975 at r5975
  unfold Seg16.relationRow5976 at r5976
  unfold Seg16.relationRow5977 at r5977
  unfold Seg16.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 15517 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩ := by
    have hnextx : seg16AccX226 rho = seg16AccX225 rho + rho 18544 := by
      unfold seg16AccX226 seg16AccX225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 75]
      ring
    have hnexty : seg16AccY226 rho = seg16AccY225 rho + rho 18545 := by
      unfold seg16AccY226 seg16AccY225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 75]
      ring
    have hsum : seg16AccX225 rho + seg16AccY225 rho = rho 18537 := by
      unfold seg16AccX225 seg16AccY225
      linear_combination r5965
    have ha0 : (rho 18535 + rho 18536) * (seg16AccX225 rho + seg16AccY225 rho) = rho 18538 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 18536 * seg16AccX225 rho = rho 18539 := by
      unfold seg16AccX225
      linear_combination r5967
    have ha2 : rho 18535 * seg16AccY225 rho = rho 18540 := by
      unfold seg16AccY225
      linear_combination r5968
    have ha3 : 3021 * rho 18539 * rho 18540 = rho 18541 := by
      linear_combination r5969
    have ha4 : rho 18542 * (1 + rho 18541) = rho 18539 + rho 18540 := by
      linear_combination r5970
    have ha5 : rho 18543 * (1 - rho 18541) = rho 18538 - rho 18539 - rho 18540 := by
      linear_combination r5971
    have haddx :
        rho 18542 * (1 + 3021 * (rho 18536 * seg16AccX225 rho) * (rho 18535 * seg16AccY225 rho)) =
          rho 18536 * seg16AccX225 rho + rho 18535 * seg16AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18543 * (1 - 3021 * (rho 18536 * seg16AccX225 rho) * (rho 18535 * seg16AccY225 rho)) =
          (-1) * (rho 18536 * seg16AccX225 rho) - rho 18535 * seg16AccY225 rho +
            (seg16AccY225 rho - seg16AccX225 rho * (-1)) * (rho 18535 + rho 18536) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18543 * (1 - rho 18541) = rho 18538 - rho 18539 - rho 18540 := ha5
        _ = (-1) * rho 18539 - rho 18540 + (seg16AccY225 rho - seg16AccX225 rho * (-1)) * (rho 18535 + rho 18536) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX226 rho = seg16AccX225 rho - Bool.toZMod bit * (seg16AccX225 rho - rho 18542) := by
      have hd : rho 18544 = Bool.toZMod bit * (rho 18542 - seg16AccX225 rho) := by
        rw [← hbit]
        unfold seg16AccX225
        linear_combination -r5972
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY226 rho = seg16AccY225 rho - Bool.toZMod bit * (seg16AccY225 rho - rho 18543) := by
      have hd : rho 18545 = Bool.toZMod bit * (rho 18543 - seg16AccY225 rho) := by
        rw [← hbit]
        unfold seg16AccY225
        linear_combination -r5973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18535 * rho 18536 = rho 18546 := by linear_combination r5974
    have hd1 : rho 18535 * rho 18535 = rho 18547 := by linear_combination r5975
    have hd2 : rho 18536 * rho 18536 = rho 18548 := by linear_combination r5976
    have hd3 : rho 18549 * (rho 18536 * rho 18536 + rho 18535 * rho 18535 * (-1)) = 2 * (rho 18535 * rho 18536) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 18550 * (2 - (rho 18536 * rho 18536 + rho 18535 * rho 18535 * (-1))) = rho 18536 * rho 18536 - rho 18535 * rho 18535 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
      ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
      ⟨(rho 18542 : Seg16.F), (rho 18543 : Seg16.F)⟩
      ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
      ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg16_rows226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5979 rho ∧ Seg16.relationRow5980 rho ∧ Seg16.relationRow5981 rho ∧ Seg16.relationRow5982 rho ∧ Seg16.relationRow5983 rho ∧ Seg16.relationRow5984 rho ∧ Seg16.relationRow5985 rho ∧ Seg16.relationRow5986 rho ∧ Seg16.relationRow5987 rho ∧ Seg16.relationRow5988 rho ∧ Seg16.relationRow5989 rho ∧ Seg16.relationRow5990 rho ∧ Seg16.relationRow5991 rho ∧ Seg16.relationRow5992 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  exact ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩

theorem seg16_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15518 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩ := by
  obtain ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩ := seg16_rows226 rho h
  unfold Seg16.relationRow5979 at r5979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979
  unfold Seg16.relationRow5980 at r5980
  unfold Seg16.relationRow5981 at r5981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981
  unfold Seg16.relationRow5982 at r5982
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5982
  unfold Seg16.relationRow5983 at r5983
  unfold Seg16.relationRow5984 at r5984
  unfold Seg16.relationRow5985 at r5985
  unfold Seg16.relationRow5986 at r5986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5986
  unfold Seg16.relationRow5987 at r5987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987
  unfold Seg16.relationRow5988 at r5988
  unfold Seg16.relationRow5989 at r5989
  unfold Seg16.relationRow5990 at r5990
  unfold Seg16.relationRow5991 at r5991
  unfold Seg16.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 15518 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩ := by
    have hnextx : seg16AccX227 rho = seg16AccX226 rho + rho 18558 := by
      unfold seg16AccX227 seg16AccX226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 76]
      ring
    have hnexty : seg16AccY227 rho = seg16AccY226 rho + rho 18559 := by
      unfold seg16AccY227 seg16AccY226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 76]
      ring
    have hsum : seg16AccX226 rho + seg16AccY226 rho = rho 18551 := by
      unfold seg16AccX226 seg16AccY226
      linear_combination r5979
    have ha0 : (rho 18549 + rho 18550) * (seg16AccX226 rho + seg16AccY226 rho) = rho 18552 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 18550 * seg16AccX226 rho = rho 18553 := by
      unfold seg16AccX226
      linear_combination r5981
    have ha2 : rho 18549 * seg16AccY226 rho = rho 18554 := by
      unfold seg16AccY226
      linear_combination r5982
    have ha3 : 3021 * rho 18553 * rho 18554 = rho 18555 := by
      linear_combination r5983
    have ha4 : rho 18556 * (1 + rho 18555) = rho 18553 + rho 18554 := by
      linear_combination r5984
    have ha5 : rho 18557 * (1 - rho 18555) = rho 18552 - rho 18553 - rho 18554 := by
      linear_combination r5985
    have haddx :
        rho 18556 * (1 + 3021 * (rho 18550 * seg16AccX226 rho) * (rho 18549 * seg16AccY226 rho)) =
          rho 18550 * seg16AccX226 rho + rho 18549 * seg16AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18557 * (1 - 3021 * (rho 18550 * seg16AccX226 rho) * (rho 18549 * seg16AccY226 rho)) =
          (-1) * (rho 18550 * seg16AccX226 rho) - rho 18549 * seg16AccY226 rho +
            (seg16AccY226 rho - seg16AccX226 rho * (-1)) * (rho 18549 + rho 18550) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18557 * (1 - rho 18555) = rho 18552 - rho 18553 - rho 18554 := ha5
        _ = (-1) * rho 18553 - rho 18554 + (seg16AccY226 rho - seg16AccX226 rho * (-1)) * (rho 18549 + rho 18550) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX227 rho = seg16AccX226 rho - Bool.toZMod bit * (seg16AccX226 rho - rho 18556) := by
      have hd : rho 18558 = Bool.toZMod bit * (rho 18556 - seg16AccX226 rho) := by
        rw [← hbit]
        unfold seg16AccX226
        linear_combination -r5986
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY227 rho = seg16AccY226 rho - Bool.toZMod bit * (seg16AccY226 rho - rho 18557) := by
      have hd : rho 18559 = Bool.toZMod bit * (rho 18557 - seg16AccY226 rho) := by
        rw [← hbit]
        unfold seg16AccY226
        linear_combination -r5987
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18549 * rho 18550 = rho 18560 := by linear_combination r5988
    have hd1 : rho 18549 * rho 18549 = rho 18561 := by linear_combination r5989
    have hd2 : rho 18550 * rho 18550 = rho 18562 := by linear_combination r5990
    have hd3 : rho 18563 * (rho 18550 * rho 18550 + rho 18549 * rho 18549 * (-1)) = 2 * (rho 18549 * rho 18550) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 18564 * (2 - (rho 18550 * rho 18550 + rho 18549 * rho 18549 * (-1))) = rho 18550 * rho 18550 - rho 18549 * rho 18549 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
      ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
      ⟨(rho 18556 : Seg16.F), (rho 18557 : Seg16.F)⟩
      ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
      ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg16_rows227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5993 rho ∧ Seg16.relationRow5994 rho ∧ Seg16.relationRow5995 rho ∧ Seg16.relationRow5996 rho ∧ Seg16.relationRow5997 rho ∧ Seg16.relationRow5998 rho ∧ Seg16.relationRow5999 rho ∧ Seg16.relationRow6000 rho ∧ Seg16.relationRow6001 rho ∧ Seg16.relationRow6002 rho ∧ Seg16.relationRow6003 rho ∧ Seg16.relationRow6004 rho ∧ Seg16.relationRow6005 rho ∧ Seg16.relationRow6006 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩

theorem seg16_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15519 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩ := by
  obtain ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩ := seg16_rows227 rho h
  unfold Seg16.relationRow5993 at r5993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993
  unfold Seg16.relationRow5994 at r5994
  unfold Seg16.relationRow5995 at r5995
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5995
  unfold Seg16.relationRow5996 at r5996
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996
  unfold Seg16.relationRow5997 at r5997
  unfold Seg16.relationRow5998 at r5998
  unfold Seg16.relationRow5999 at r5999
  unfold Seg16.relationRow6000 at r6000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000
  unfold Seg16.relationRow6001 at r6001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001
  unfold Seg16.relationRow6002 at r6002
  unfold Seg16.relationRow6003 at r6003
  unfold Seg16.relationRow6004 at r6004
  unfold Seg16.relationRow6005 at r6005
  unfold Seg16.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 15519 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩ := by
    have hnextx : seg16AccX228 rho = seg16AccX227 rho + rho 18572 := by
      unfold seg16AccX228 seg16AccX227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 77]
      ring
    have hnexty : seg16AccY228 rho = seg16AccY227 rho + rho 18573 := by
      unfold seg16AccY228 seg16AccY227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 77]
      ring
    have hsum : seg16AccX227 rho + seg16AccY227 rho = rho 18565 := by
      unfold seg16AccX227 seg16AccY227
      linear_combination r5993
    have ha0 : (rho 18563 + rho 18564) * (seg16AccX227 rho + seg16AccY227 rho) = rho 18566 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 18564 * seg16AccX227 rho = rho 18567 := by
      unfold seg16AccX227
      linear_combination r5995
    have ha2 : rho 18563 * seg16AccY227 rho = rho 18568 := by
      unfold seg16AccY227
      linear_combination r5996
    have ha3 : 3021 * rho 18567 * rho 18568 = rho 18569 := by
      linear_combination r5997
    have ha4 : rho 18570 * (1 + rho 18569) = rho 18567 + rho 18568 := by
      linear_combination r5998
    have ha5 : rho 18571 * (1 - rho 18569) = rho 18566 - rho 18567 - rho 18568 := by
      linear_combination r5999
    have haddx :
        rho 18570 * (1 + 3021 * (rho 18564 * seg16AccX227 rho) * (rho 18563 * seg16AccY227 rho)) =
          rho 18564 * seg16AccX227 rho + rho 18563 * seg16AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18571 * (1 - 3021 * (rho 18564 * seg16AccX227 rho) * (rho 18563 * seg16AccY227 rho)) =
          (-1) * (rho 18564 * seg16AccX227 rho) - rho 18563 * seg16AccY227 rho +
            (seg16AccY227 rho - seg16AccX227 rho * (-1)) * (rho 18563 + rho 18564) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18571 * (1 - rho 18569) = rho 18566 - rho 18567 - rho 18568 := ha5
        _ = (-1) * rho 18567 - rho 18568 + (seg16AccY227 rho - seg16AccX227 rho * (-1)) * (rho 18563 + rho 18564) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX228 rho = seg16AccX227 rho - Bool.toZMod bit * (seg16AccX227 rho - rho 18570) := by
      have hd : rho 18572 = Bool.toZMod bit * (rho 18570 - seg16AccX227 rho) := by
        rw [← hbit]
        unfold seg16AccX227
        linear_combination -r6000
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY228 rho = seg16AccY227 rho - Bool.toZMod bit * (seg16AccY227 rho - rho 18571) := by
      have hd : rho 18573 = Bool.toZMod bit * (rho 18571 - seg16AccY227 rho) := by
        rw [← hbit]
        unfold seg16AccY227
        linear_combination -r6001
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18563 * rho 18564 = rho 18574 := by linear_combination r6002
    have hd1 : rho 18563 * rho 18563 = rho 18575 := by linear_combination r6003
    have hd2 : rho 18564 * rho 18564 = rho 18576 := by linear_combination r6004
    have hd3 : rho 18577 * (rho 18564 * rho 18564 + rho 18563 * rho 18563 * (-1)) = 2 * (rho 18563 * rho 18564) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 18578 * (2 - (rho 18564 * rho 18564 + rho 18563 * rho 18563 * (-1))) = rho 18564 * rho 18564 - rho 18563 * rho 18563 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
      ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
      ⟨(rho 18570 : Seg16.F), (rho 18571 : Seg16.F)⟩
      ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
      ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg16_rows228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6007 rho ∧ Seg16.relationRow6008 rho ∧ Seg16.relationRow6009 rho ∧ Seg16.relationRow6010 rho ∧ Seg16.relationRow6011 rho ∧ Seg16.relationRow6012 rho ∧ Seg16.relationRow6013 rho ∧ Seg16.relationRow6014 rho ∧ Seg16.relationRow6015 rho ∧ Seg16.relationRow6016 rho ∧ Seg16.relationRow6017 rho ∧ Seg16.relationRow6018 rho ∧ Seg16.relationRow6019 rho ∧ Seg16.relationRow6020 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩

theorem seg16_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15520 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩ := by
  obtain ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩ := seg16_rows228 rho h
  unfold Seg16.relationRow6007 at r6007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007
  unfold Seg16.relationRow6008 at r6008
  unfold Seg16.relationRow6009 at r6009
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009
  unfold Seg16.relationRow6010 at r6010
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010
  unfold Seg16.relationRow6011 at r6011
  unfold Seg16.relationRow6012 at r6012
  unfold Seg16.relationRow6013 at r6013
  unfold Seg16.relationRow6014 at r6014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014
  unfold Seg16.relationRow6015 at r6015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015
  unfold Seg16.relationRow6016 at r6016
  unfold Seg16.relationRow6017 at r6017
  unfold Seg16.relationRow6018 at r6018
  unfold Seg16.relationRow6019 at r6019
  unfold Seg16.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 15520 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩ := by
    have hnextx : seg16AccX229 rho = seg16AccX228 rho + rho 18586 := by
      unfold seg16AccX229 seg16AccX228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 78]
      ring
    have hnexty : seg16AccY229 rho = seg16AccY228 rho + rho 18587 := by
      unfold seg16AccY229 seg16AccY228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 78]
      ring
    have hsum : seg16AccX228 rho + seg16AccY228 rho = rho 18579 := by
      unfold seg16AccX228 seg16AccY228
      linear_combination r6007
    have ha0 : (rho 18577 + rho 18578) * (seg16AccX228 rho + seg16AccY228 rho) = rho 18580 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 18578 * seg16AccX228 rho = rho 18581 := by
      unfold seg16AccX228
      linear_combination r6009
    have ha2 : rho 18577 * seg16AccY228 rho = rho 18582 := by
      unfold seg16AccY228
      linear_combination r6010
    have ha3 : 3021 * rho 18581 * rho 18582 = rho 18583 := by
      linear_combination r6011
    have ha4 : rho 18584 * (1 + rho 18583) = rho 18581 + rho 18582 := by
      linear_combination r6012
    have ha5 : rho 18585 * (1 - rho 18583) = rho 18580 - rho 18581 - rho 18582 := by
      linear_combination r6013
    have haddx :
        rho 18584 * (1 + 3021 * (rho 18578 * seg16AccX228 rho) * (rho 18577 * seg16AccY228 rho)) =
          rho 18578 * seg16AccX228 rho + rho 18577 * seg16AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18585 * (1 - 3021 * (rho 18578 * seg16AccX228 rho) * (rho 18577 * seg16AccY228 rho)) =
          (-1) * (rho 18578 * seg16AccX228 rho) - rho 18577 * seg16AccY228 rho +
            (seg16AccY228 rho - seg16AccX228 rho * (-1)) * (rho 18577 + rho 18578) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18585 * (1 - rho 18583) = rho 18580 - rho 18581 - rho 18582 := ha5
        _ = (-1) * rho 18581 - rho 18582 + (seg16AccY228 rho - seg16AccX228 rho * (-1)) * (rho 18577 + rho 18578) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX229 rho = seg16AccX228 rho - Bool.toZMod bit * (seg16AccX228 rho - rho 18584) := by
      have hd : rho 18586 = Bool.toZMod bit * (rho 18584 - seg16AccX228 rho) := by
        rw [← hbit]
        unfold seg16AccX228
        linear_combination -r6014
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY229 rho = seg16AccY228 rho - Bool.toZMod bit * (seg16AccY228 rho - rho 18585) := by
      have hd : rho 18587 = Bool.toZMod bit * (rho 18585 - seg16AccY228 rho) := by
        rw [← hbit]
        unfold seg16AccY228
        linear_combination -r6015
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18577 * rho 18578 = rho 18588 := by linear_combination r6016
    have hd1 : rho 18577 * rho 18577 = rho 18589 := by linear_combination r6017
    have hd2 : rho 18578 * rho 18578 = rho 18590 := by linear_combination r6018
    have hd3 : rho 18591 * (rho 18578 * rho 18578 + rho 18577 * rho 18577 * (-1)) = 2 * (rho 18577 * rho 18578) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 18592 * (2 - (rho 18578 * rho 18578 + rho 18577 * rho 18577 * (-1))) = rho 18578 * rho 18578 - rho 18577 * rho 18577 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
      ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
      ⟨(rho 18584 : Seg16.F), (rho 18585 : Seg16.F)⟩
      ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
      ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg16_rows229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6021 rho ∧ Seg16.relationRow6022 rho ∧ Seg16.relationRow6023 rho ∧ Seg16.relationRow6024 rho ∧ Seg16.relationRow6025 rho ∧ Seg16.relationRow6026 rho ∧ Seg16.relationRow6027 rho ∧ Seg16.relationRow6028 rho ∧ Seg16.relationRow6029 rho ∧ Seg16.relationRow6030 rho ∧ Seg16.relationRow6031 rho ∧ Seg16.relationRow6032 rho ∧ Seg16.relationRow6033 rho ∧ Seg16.relationRow6034 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩

theorem seg16_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15521 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩ := by
  obtain ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩ := seg16_rows229 rho h
  unfold Seg16.relationRow6021 at r6021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6021
  unfold Seg16.relationRow6022 at r6022
  unfold Seg16.relationRow6023 at r6023
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023
  unfold Seg16.relationRow6024 at r6024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6024
  unfold Seg16.relationRow6025 at r6025
  unfold Seg16.relationRow6026 at r6026
  unfold Seg16.relationRow6027 at r6027
  unfold Seg16.relationRow6028 at r6028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028
  unfold Seg16.relationRow6029 at r6029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029
  unfold Seg16.relationRow6030 at r6030
  unfold Seg16.relationRow6031 at r6031
  unfold Seg16.relationRow6032 at r6032
  unfold Seg16.relationRow6033 at r6033
  unfold Seg16.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 15521 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩ := by
    have hnextx : seg16AccX230 rho = seg16AccX229 rho + rho 18600 := by
      unfold seg16AccX230 seg16AccX229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 79]
      ring
    have hnexty : seg16AccY230 rho = seg16AccY229 rho + rho 18601 := by
      unfold seg16AccY230 seg16AccY229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 79]
      ring
    have hsum : seg16AccX229 rho + seg16AccY229 rho = rho 18593 := by
      unfold seg16AccX229 seg16AccY229
      linear_combination r6021
    have ha0 : (rho 18591 + rho 18592) * (seg16AccX229 rho + seg16AccY229 rho) = rho 18594 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 18592 * seg16AccX229 rho = rho 18595 := by
      unfold seg16AccX229
      linear_combination r6023
    have ha2 : rho 18591 * seg16AccY229 rho = rho 18596 := by
      unfold seg16AccY229
      linear_combination r6024
    have ha3 : 3021 * rho 18595 * rho 18596 = rho 18597 := by
      linear_combination r6025
    have ha4 : rho 18598 * (1 + rho 18597) = rho 18595 + rho 18596 := by
      linear_combination r6026
    have ha5 : rho 18599 * (1 - rho 18597) = rho 18594 - rho 18595 - rho 18596 := by
      linear_combination r6027
    have haddx :
        rho 18598 * (1 + 3021 * (rho 18592 * seg16AccX229 rho) * (rho 18591 * seg16AccY229 rho)) =
          rho 18592 * seg16AccX229 rho + rho 18591 * seg16AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18599 * (1 - 3021 * (rho 18592 * seg16AccX229 rho) * (rho 18591 * seg16AccY229 rho)) =
          (-1) * (rho 18592 * seg16AccX229 rho) - rho 18591 * seg16AccY229 rho +
            (seg16AccY229 rho - seg16AccX229 rho * (-1)) * (rho 18591 + rho 18592) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18599 * (1 - rho 18597) = rho 18594 - rho 18595 - rho 18596 := ha5
        _ = (-1) * rho 18595 - rho 18596 + (seg16AccY229 rho - seg16AccX229 rho * (-1)) * (rho 18591 + rho 18592) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX230 rho = seg16AccX229 rho - Bool.toZMod bit * (seg16AccX229 rho - rho 18598) := by
      have hd : rho 18600 = Bool.toZMod bit * (rho 18598 - seg16AccX229 rho) := by
        rw [← hbit]
        unfold seg16AccX229
        linear_combination -r6028
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY230 rho = seg16AccY229 rho - Bool.toZMod bit * (seg16AccY229 rho - rho 18599) := by
      have hd : rho 18601 = Bool.toZMod bit * (rho 18599 - seg16AccY229 rho) := by
        rw [← hbit]
        unfold seg16AccY229
        linear_combination -r6029
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18591 * rho 18592 = rho 18602 := by linear_combination r6030
    have hd1 : rho 18591 * rho 18591 = rho 18603 := by linear_combination r6031
    have hd2 : rho 18592 * rho 18592 = rho 18604 := by linear_combination r6032
    have hd3 : rho 18605 * (rho 18592 * rho 18592 + rho 18591 * rho 18591 * (-1)) = 2 * (rho 18591 * rho 18592) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 18606 * (2 - (rho 18592 * rho 18592 + rho 18591 * rho 18591 * (-1))) = rho 18592 * rho 18592 - rho 18591 * rho 18591 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
      ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
      ⟨(rho 18598 : Seg16.F), (rho 18599 : Seg16.F)⟩
      ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
      ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg16_rows230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6035 rho ∧ Seg16.relationRow6036 rho ∧ Seg16.relationRow6037 rho ∧ Seg16.relationRow6038 rho ∧ Seg16.relationRow6039 rho ∧ Seg16.relationRow6040 rho ∧ Seg16.relationRow6041 rho ∧ Seg16.relationRow6042 rho ∧ Seg16.relationRow6043 rho ∧ Seg16.relationRow6044 rho ∧ Seg16.relationRow6045 rho ∧ Seg16.relationRow6046 rho ∧ Seg16.relationRow6047 rho ∧ Seg16.relationRow6048 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩

theorem seg16_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15522 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩ := by
  obtain ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩ := seg16_rows230 rho h
  unfold Seg16.relationRow6035 at r6035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035
  unfold Seg16.relationRow6036 at r6036
  unfold Seg16.relationRow6037 at r6037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6037
  unfold Seg16.relationRow6038 at r6038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6038
  unfold Seg16.relationRow6039 at r6039
  unfold Seg16.relationRow6040 at r6040
  unfold Seg16.relationRow6041 at r6041
  unfold Seg16.relationRow6042 at r6042
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042
  unfold Seg16.relationRow6043 at r6043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043
  unfold Seg16.relationRow6044 at r6044
  unfold Seg16.relationRow6045 at r6045
  unfold Seg16.relationRow6046 at r6046
  unfold Seg16.relationRow6047 at r6047
  unfold Seg16.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 15522 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩ := by
    have hnextx : seg16AccX231 rho = seg16AccX230 rho + rho 18614 := by
      unfold seg16AccX231 seg16AccX230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 80]
      ring
    have hnexty : seg16AccY231 rho = seg16AccY230 rho + rho 18615 := by
      unfold seg16AccY231 seg16AccY230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 80]
      ring
    have hsum : seg16AccX230 rho + seg16AccY230 rho = rho 18607 := by
      unfold seg16AccX230 seg16AccY230
      linear_combination r6035
    have ha0 : (rho 18605 + rho 18606) * (seg16AccX230 rho + seg16AccY230 rho) = rho 18608 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 18606 * seg16AccX230 rho = rho 18609 := by
      unfold seg16AccX230
      linear_combination r6037
    have ha2 : rho 18605 * seg16AccY230 rho = rho 18610 := by
      unfold seg16AccY230
      linear_combination r6038
    have ha3 : 3021 * rho 18609 * rho 18610 = rho 18611 := by
      linear_combination r6039
    have ha4 : rho 18612 * (1 + rho 18611) = rho 18609 + rho 18610 := by
      linear_combination r6040
    have ha5 : rho 18613 * (1 - rho 18611) = rho 18608 - rho 18609 - rho 18610 := by
      linear_combination r6041
    have haddx :
        rho 18612 * (1 + 3021 * (rho 18606 * seg16AccX230 rho) * (rho 18605 * seg16AccY230 rho)) =
          rho 18606 * seg16AccX230 rho + rho 18605 * seg16AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18613 * (1 - 3021 * (rho 18606 * seg16AccX230 rho) * (rho 18605 * seg16AccY230 rho)) =
          (-1) * (rho 18606 * seg16AccX230 rho) - rho 18605 * seg16AccY230 rho +
            (seg16AccY230 rho - seg16AccX230 rho * (-1)) * (rho 18605 + rho 18606) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18613 * (1 - rho 18611) = rho 18608 - rho 18609 - rho 18610 := ha5
        _ = (-1) * rho 18609 - rho 18610 + (seg16AccY230 rho - seg16AccX230 rho * (-1)) * (rho 18605 + rho 18606) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX231 rho = seg16AccX230 rho - Bool.toZMod bit * (seg16AccX230 rho - rho 18612) := by
      have hd : rho 18614 = Bool.toZMod bit * (rho 18612 - seg16AccX230 rho) := by
        rw [← hbit]
        unfold seg16AccX230
        linear_combination -r6042
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY231 rho = seg16AccY230 rho - Bool.toZMod bit * (seg16AccY230 rho - rho 18613) := by
      have hd : rho 18615 = Bool.toZMod bit * (rho 18613 - seg16AccY230 rho) := by
        rw [← hbit]
        unfold seg16AccY230
        linear_combination -r6043
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18605 * rho 18606 = rho 18616 := by linear_combination r6044
    have hd1 : rho 18605 * rho 18605 = rho 18617 := by linear_combination r6045
    have hd2 : rho 18606 * rho 18606 = rho 18618 := by linear_combination r6046
    have hd3 : rho 18619 * (rho 18606 * rho 18606 + rho 18605 * rho 18605 * (-1)) = 2 * (rho 18605 * rho 18606) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 18620 * (2 - (rho 18606 * rho 18606 + rho 18605 * rho 18605 * (-1))) = rho 18606 * rho 18606 - rho 18605 * rho 18605 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
      ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
      ⟨(rho 18612 : Seg16.F), (rho 18613 : Seg16.F)⟩
      ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
      ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg16_hstep_c20 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 220 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg16_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg16_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg16_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
  · exact seg16_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg16_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg16_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg16_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg16_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg16_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg16_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
