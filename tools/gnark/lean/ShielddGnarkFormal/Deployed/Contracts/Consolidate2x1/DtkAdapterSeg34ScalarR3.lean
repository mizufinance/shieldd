import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3394 rho ∧ Seg34.relationRow3395 rho ∧ Seg34.relationRow3396 rho ∧ Seg34.relationRow3397 rho ∧ Seg34.relationRow3398 rho ∧ Seg34.relationRow3399 rho ∧ Seg34.relationRow3400 rho ∧ Seg34.relationRow3401 rho ∧ Seg34.relationRow3402 rho ∧ Seg34.relationRow3403 rho ∧ Seg34.relationRow3404 rho ∧ Seg34.relationRow3405 rho ∧ Seg34.relationRow3406 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩

theorem seg34_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩ := by
  obtain ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩ := seg34_rows33 rho h
  unfold Seg34.relationRow3394 at r3394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3394
  unfold Seg34.relationRow3395 at r3395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395
  unfold Seg34.relationRow3396 at r3396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3396
  unfold Seg34.relationRow3397 at r3397
  unfold Seg34.relationRow3398 at r3398
  unfold Seg34.relationRow3399 at r3399
  unfold Seg34.relationRow3400 at r3400
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3400
  unfold Seg34.relationRow3401 at r3401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3401
  unfold Seg34.relationRow3402 at r3402
  unfold Seg34.relationRow3403 at r3403
  unfold Seg34.relationRow3404 at r3404
  unfold Seg34.relationRow3405 at r3405
  unfold Seg34.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 34025 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩ := by
    have hnextx : seg34AccX34 rho = seg34AccX33 rho + rho 34672 := by
      unfold seg34AccX34 seg34AccX33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 33]
      ring
    have hnexty : seg34AccY34 rho = seg34AccY33 rho + rho 34673 := by
      unfold seg34AccY34 seg34AccY33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 33]
      ring
    have ha0 : (rho 34664 + rho 34665) * (seg34AccX33 rho + seg34AccY33 rho) = rho 34666 := by
      unfold seg34AccX33 seg34AccY33
      linear_combination r3394
    have ha1 : rho 34665 * seg34AccX33 rho = rho 34667 := by
      unfold seg34AccX33
      linear_combination r3395
    have ha2 : rho 34664 * seg34AccY33 rho = rho 34668 := by
      unfold seg34AccY33
      linear_combination r3396
    have ha3 : 3021 * rho 34667 * rho 34668 = rho 34669 := by
      linear_combination r3397
    have ha4 : rho 34670 * (1 + rho 34669) = rho 34667 + rho 34668 := by
      linear_combination r3398
    have ha5 : rho 34671 * (1 - rho 34669) = rho 34666 - rho 34667 - rho 34668 := by
      linear_combination r3399
    have haddx :
        rho 34670 * (1 + 3021 * (rho 34665 * seg34AccX33 rho) * (rho 34664 * seg34AccY33 rho)) =
          rho 34665 * seg34AccX33 rho + rho 34664 * seg34AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34671 * (1 - 3021 * (rho 34665 * seg34AccX33 rho) * (rho 34664 * seg34AccY33 rho)) =
          (-1) * (rho 34665 * seg34AccX33 rho) - rho 34664 * seg34AccY33 rho +
            (seg34AccY33 rho - seg34AccX33 rho * (-1)) * (rho 34664 + rho 34665) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34671 * (1 - rho 34669) = rho 34666 - rho 34667 - rho 34668 := ha5
        _ = (-1) * rho 34667 - rho 34668 + (seg34AccY33 rho - seg34AccX33 rho * (-1)) * (rho 34664 + rho 34665) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX34 rho = seg34AccX33 rho - Bool.toZMod bit * (seg34AccX33 rho - rho 34670) := by
      have hd : rho 34672 = Bool.toZMod bit * (rho 34670 - seg34AccX33 rho) := by
        rw [← hbit]
        unfold seg34AccX33
        linear_combination -r3400
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY34 rho = seg34AccY33 rho - Bool.toZMod bit * (seg34AccY33 rho - rho 34671) := by
      have hd : rho 34673 = Bool.toZMod bit * (rho 34671 - seg34AccY33 rho) := by
        rw [← hbit]
        unfold seg34AccY33
        linear_combination -r3401
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34664 * rho 34665 = rho 34674 := by linear_combination r3402
    have hd1 : rho 34664 * rho 34664 = rho 34675 := by linear_combination r3403
    have hd2 : rho 34665 * rho 34665 = rho 34676 := by linear_combination r3404
    have hd3 : rho 34677 * (rho 34665 * rho 34665 + rho 34664 * rho 34664 * (-1)) = 2 * (rho 34664 * rho 34665) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 34678 * (2 - (rho 34665 * rho 34665 + rho 34664 * rho 34664 * (-1))) = rho 34665 * rho 34665 - rho 34664 * rho 34664 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
      ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
      ⟨(rho 34670 : Seg34.F), (rho 34671 : Seg34.F)⟩
      ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
      ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg34_rows34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3407 rho ∧ Seg34.relationRow3408 rho ∧ Seg34.relationRow3409 rho ∧ Seg34.relationRow3410 rho ∧ Seg34.relationRow3411 rho ∧ Seg34.relationRow3412 rho ∧ Seg34.relationRow3413 rho ∧ Seg34.relationRow3414 rho ∧ Seg34.relationRow3415 rho ∧ Seg34.relationRow3416 rho ∧ Seg34.relationRow3417 rho ∧ Seg34.relationRow3418 rho ∧ Seg34.relationRow3419 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩

theorem seg34_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩ := by
  obtain ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩ := seg34_rows34 rho h
  unfold Seg34.relationRow3407 at r3407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3407
  unfold Seg34.relationRow3408 at r3408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408
  unfold Seg34.relationRow3409 at r3409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3409
  unfold Seg34.relationRow3410 at r3410
  unfold Seg34.relationRow3411 at r3411
  unfold Seg34.relationRow3412 at r3412
  unfold Seg34.relationRow3413 at r3413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3413
  unfold Seg34.relationRow3414 at r3414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3414
  unfold Seg34.relationRow3415 at r3415
  unfold Seg34.relationRow3416 at r3416
  unfold Seg34.relationRow3417 at r3417
  unfold Seg34.relationRow3418 at r3418
  unfold Seg34.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 34026 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩ := by
    have hnextx : seg34AccX35 rho = seg34AccX34 rho + rho 34685 := by
      unfold seg34AccX35 seg34AccX34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 34]
      ring
    have hnexty : seg34AccY35 rho = seg34AccY34 rho + rho 34686 := by
      unfold seg34AccY35 seg34AccY34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 34]
      ring
    have ha0 : (rho 34677 + rho 34678) * (seg34AccX34 rho + seg34AccY34 rho) = rho 34679 := by
      unfold seg34AccX34 seg34AccY34
      linear_combination r3407
    have ha1 : rho 34678 * seg34AccX34 rho = rho 34680 := by
      unfold seg34AccX34
      linear_combination r3408
    have ha2 : rho 34677 * seg34AccY34 rho = rho 34681 := by
      unfold seg34AccY34
      linear_combination r3409
    have ha3 : 3021 * rho 34680 * rho 34681 = rho 34682 := by
      linear_combination r3410
    have ha4 : rho 34683 * (1 + rho 34682) = rho 34680 + rho 34681 := by
      linear_combination r3411
    have ha5 : rho 34684 * (1 - rho 34682) = rho 34679 - rho 34680 - rho 34681 := by
      linear_combination r3412
    have haddx :
        rho 34683 * (1 + 3021 * (rho 34678 * seg34AccX34 rho) * (rho 34677 * seg34AccY34 rho)) =
          rho 34678 * seg34AccX34 rho + rho 34677 * seg34AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34684 * (1 - 3021 * (rho 34678 * seg34AccX34 rho) * (rho 34677 * seg34AccY34 rho)) =
          (-1) * (rho 34678 * seg34AccX34 rho) - rho 34677 * seg34AccY34 rho +
            (seg34AccY34 rho - seg34AccX34 rho * (-1)) * (rho 34677 + rho 34678) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34684 * (1 - rho 34682) = rho 34679 - rho 34680 - rho 34681 := ha5
        _ = (-1) * rho 34680 - rho 34681 + (seg34AccY34 rho - seg34AccX34 rho * (-1)) * (rho 34677 + rho 34678) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX35 rho = seg34AccX34 rho - Bool.toZMod bit * (seg34AccX34 rho - rho 34683) := by
      have hd : rho 34685 = Bool.toZMod bit * (rho 34683 - seg34AccX34 rho) := by
        rw [← hbit]
        unfold seg34AccX34
        linear_combination -r3413
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY35 rho = seg34AccY34 rho - Bool.toZMod bit * (seg34AccY34 rho - rho 34684) := by
      have hd : rho 34686 = Bool.toZMod bit * (rho 34684 - seg34AccY34 rho) := by
        rw [← hbit]
        unfold seg34AccY34
        linear_combination -r3414
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34677 * rho 34678 = rho 34687 := by linear_combination r3415
    have hd1 : rho 34677 * rho 34677 = rho 34688 := by linear_combination r3416
    have hd2 : rho 34678 * rho 34678 = rho 34689 := by linear_combination r3417
    have hd3 : rho 34690 * (rho 34678 * rho 34678 + rho 34677 * rho 34677 * (-1)) = 2 * (rho 34677 * rho 34678) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 34691 * (2 - (rho 34678 * rho 34678 + rho 34677 * rho 34677 * (-1))) = rho 34678 * rho 34678 - rho 34677 * rho 34677 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
      ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
      ⟨(rho 34683 : Seg34.F), (rho 34684 : Seg34.F)⟩
      ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
      ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg34_rows35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3420 rho ∧ Seg34.relationRow3421 rho ∧ Seg34.relationRow3422 rho ∧ Seg34.relationRow3423 rho ∧ Seg34.relationRow3424 rho ∧ Seg34.relationRow3425 rho ∧ Seg34.relationRow3426 rho ∧ Seg34.relationRow3427 rho ∧ Seg34.relationRow3428 rho ∧ Seg34.relationRow3429 rho ∧ Seg34.relationRow3430 rho ∧ Seg34.relationRow3431 rho ∧ Seg34.relationRow3432 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  exact ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩

theorem seg34_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩ := by
  obtain ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩ := seg34_rows35 rho h
  unfold Seg34.relationRow3420 at r3420
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3420
  unfold Seg34.relationRow3421 at r3421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421
  unfold Seg34.relationRow3422 at r3422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3422
  unfold Seg34.relationRow3423 at r3423
  unfold Seg34.relationRow3424 at r3424
  unfold Seg34.relationRow3425 at r3425
  unfold Seg34.relationRow3426 at r3426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3426
  unfold Seg34.relationRow3427 at r3427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3427
  unfold Seg34.relationRow3428 at r3428
  unfold Seg34.relationRow3429 at r3429
  unfold Seg34.relationRow3430 at r3430
  unfold Seg34.relationRow3431 at r3431
  unfold Seg34.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 34027 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩ := by
    have hnextx : seg34AccX36 rho = seg34AccX35 rho + rho 34698 := by
      unfold seg34AccX36 seg34AccX35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 35]
      ring
    have hnexty : seg34AccY36 rho = seg34AccY35 rho + rho 34699 := by
      unfold seg34AccY36 seg34AccY35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 35]
      ring
    have ha0 : (rho 34690 + rho 34691) * (seg34AccX35 rho + seg34AccY35 rho) = rho 34692 := by
      unfold seg34AccX35 seg34AccY35
      linear_combination r3420
    have ha1 : rho 34691 * seg34AccX35 rho = rho 34693 := by
      unfold seg34AccX35
      linear_combination r3421
    have ha2 : rho 34690 * seg34AccY35 rho = rho 34694 := by
      unfold seg34AccY35
      linear_combination r3422
    have ha3 : 3021 * rho 34693 * rho 34694 = rho 34695 := by
      linear_combination r3423
    have ha4 : rho 34696 * (1 + rho 34695) = rho 34693 + rho 34694 := by
      linear_combination r3424
    have ha5 : rho 34697 * (1 - rho 34695) = rho 34692 - rho 34693 - rho 34694 := by
      linear_combination r3425
    have haddx :
        rho 34696 * (1 + 3021 * (rho 34691 * seg34AccX35 rho) * (rho 34690 * seg34AccY35 rho)) =
          rho 34691 * seg34AccX35 rho + rho 34690 * seg34AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34697 * (1 - 3021 * (rho 34691 * seg34AccX35 rho) * (rho 34690 * seg34AccY35 rho)) =
          (-1) * (rho 34691 * seg34AccX35 rho) - rho 34690 * seg34AccY35 rho +
            (seg34AccY35 rho - seg34AccX35 rho * (-1)) * (rho 34690 + rho 34691) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34697 * (1 - rho 34695) = rho 34692 - rho 34693 - rho 34694 := ha5
        _ = (-1) * rho 34693 - rho 34694 + (seg34AccY35 rho - seg34AccX35 rho * (-1)) * (rho 34690 + rho 34691) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX36 rho = seg34AccX35 rho - Bool.toZMod bit * (seg34AccX35 rho - rho 34696) := by
      have hd : rho 34698 = Bool.toZMod bit * (rho 34696 - seg34AccX35 rho) := by
        rw [← hbit]
        unfold seg34AccX35
        linear_combination -r3426
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY36 rho = seg34AccY35 rho - Bool.toZMod bit * (seg34AccY35 rho - rho 34697) := by
      have hd : rho 34699 = Bool.toZMod bit * (rho 34697 - seg34AccY35 rho) := by
        rw [← hbit]
        unfold seg34AccY35
        linear_combination -r3427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34690 * rho 34691 = rho 34700 := by linear_combination r3428
    have hd1 : rho 34690 * rho 34690 = rho 34701 := by linear_combination r3429
    have hd2 : rho 34691 * rho 34691 = rho 34702 := by linear_combination r3430
    have hd3 : rho 34703 * (rho 34691 * rho 34691 + rho 34690 * rho 34690 * (-1)) = 2 * (rho 34690 * rho 34691) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 34704 * (2 - (rho 34691 * rho 34691 + rho 34690 * rho 34690 * (-1))) = rho 34691 * rho 34691 - rho 34690 * rho 34690 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
      ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
      ⟨(rho 34696 : Seg34.F), (rho 34697 : Seg34.F)⟩
      ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
      ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg34_rows36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3433 rho ∧ Seg34.relationRow3434 rho ∧ Seg34.relationRow3435 rho ∧ Seg34.relationRow3436 rho ∧ Seg34.relationRow3437 rho ∧ Seg34.relationRow3438 rho ∧ Seg34.relationRow3439 rho ∧ Seg34.relationRow3440 rho ∧ Seg34.relationRow3441 rho ∧ Seg34.relationRow3442 rho ∧ Seg34.relationRow3443 rho ∧ Seg34.relationRow3444 rho ∧ Seg34.relationRow3445 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩

theorem seg34_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩ := by
  obtain ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩ := seg34_rows36 rho h
  unfold Seg34.relationRow3433 at r3433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3433
  unfold Seg34.relationRow3434 at r3434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434
  unfold Seg34.relationRow3435 at r3435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3435
  unfold Seg34.relationRow3436 at r3436
  unfold Seg34.relationRow3437 at r3437
  unfold Seg34.relationRow3438 at r3438
  unfold Seg34.relationRow3439 at r3439
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3439
  unfold Seg34.relationRow3440 at r3440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3440
  unfold Seg34.relationRow3441 at r3441
  unfold Seg34.relationRow3442 at r3442
  unfold Seg34.relationRow3443 at r3443
  unfold Seg34.relationRow3444 at r3444
  unfold Seg34.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 34028 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩ := by
    have hnextx : seg34AccX37 rho = seg34AccX36 rho + rho 34711 := by
      unfold seg34AccX37 seg34AccX36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 36]
      ring
    have hnexty : seg34AccY37 rho = seg34AccY36 rho + rho 34712 := by
      unfold seg34AccY37 seg34AccY36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 36]
      ring
    have ha0 : (rho 34703 + rho 34704) * (seg34AccX36 rho + seg34AccY36 rho) = rho 34705 := by
      unfold seg34AccX36 seg34AccY36
      linear_combination r3433
    have ha1 : rho 34704 * seg34AccX36 rho = rho 34706 := by
      unfold seg34AccX36
      linear_combination r3434
    have ha2 : rho 34703 * seg34AccY36 rho = rho 34707 := by
      unfold seg34AccY36
      linear_combination r3435
    have ha3 : 3021 * rho 34706 * rho 34707 = rho 34708 := by
      linear_combination r3436
    have ha4 : rho 34709 * (1 + rho 34708) = rho 34706 + rho 34707 := by
      linear_combination r3437
    have ha5 : rho 34710 * (1 - rho 34708) = rho 34705 - rho 34706 - rho 34707 := by
      linear_combination r3438
    have haddx :
        rho 34709 * (1 + 3021 * (rho 34704 * seg34AccX36 rho) * (rho 34703 * seg34AccY36 rho)) =
          rho 34704 * seg34AccX36 rho + rho 34703 * seg34AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34710 * (1 - 3021 * (rho 34704 * seg34AccX36 rho) * (rho 34703 * seg34AccY36 rho)) =
          (-1) * (rho 34704 * seg34AccX36 rho) - rho 34703 * seg34AccY36 rho +
            (seg34AccY36 rho - seg34AccX36 rho * (-1)) * (rho 34703 + rho 34704) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34710 * (1 - rho 34708) = rho 34705 - rho 34706 - rho 34707 := ha5
        _ = (-1) * rho 34706 - rho 34707 + (seg34AccY36 rho - seg34AccX36 rho * (-1)) * (rho 34703 + rho 34704) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX37 rho = seg34AccX36 rho - Bool.toZMod bit * (seg34AccX36 rho - rho 34709) := by
      have hd : rho 34711 = Bool.toZMod bit * (rho 34709 - seg34AccX36 rho) := by
        rw [← hbit]
        unfold seg34AccX36
        linear_combination -r3439
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY37 rho = seg34AccY36 rho - Bool.toZMod bit * (seg34AccY36 rho - rho 34710) := by
      have hd : rho 34712 = Bool.toZMod bit * (rho 34710 - seg34AccY36 rho) := by
        rw [← hbit]
        unfold seg34AccY36
        linear_combination -r3440
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34703 * rho 34704 = rho 34713 := by linear_combination r3441
    have hd1 : rho 34703 * rho 34703 = rho 34714 := by linear_combination r3442
    have hd2 : rho 34704 * rho 34704 = rho 34715 := by linear_combination r3443
    have hd3 : rho 34716 * (rho 34704 * rho 34704 + rho 34703 * rho 34703 * (-1)) = 2 * (rho 34703 * rho 34704) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 34717 * (2 - (rho 34704 * rho 34704 + rho 34703 * rho 34703 * (-1))) = rho 34704 * rho 34704 - rho 34703 * rho 34703 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
      ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
      ⟨(rho 34709 : Seg34.F), (rho 34710 : Seg34.F)⟩
      ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
      ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg34_rows37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3446 rho ∧ Seg34.relationRow3447 rho ∧ Seg34.relationRow3448 rho ∧ Seg34.relationRow3449 rho ∧ Seg34.relationRow3450 rho ∧ Seg34.relationRow3451 rho ∧ Seg34.relationRow3452 rho ∧ Seg34.relationRow3453 rho ∧ Seg34.relationRow3454 rho ∧ Seg34.relationRow3455 rho ∧ Seg34.relationRow3456 rho ∧ Seg34.relationRow3457 rho ∧ Seg34.relationRow3458 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩

theorem seg34_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩ := by
  obtain ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩ := seg34_rows37 rho h
  unfold Seg34.relationRow3446 at r3446
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3446
  unfold Seg34.relationRow3447 at r3447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447
  unfold Seg34.relationRow3448 at r3448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3448
  unfold Seg34.relationRow3449 at r3449
  unfold Seg34.relationRow3450 at r3450
  unfold Seg34.relationRow3451 at r3451
  unfold Seg34.relationRow3452 at r3452
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3452
  unfold Seg34.relationRow3453 at r3453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3453
  unfold Seg34.relationRow3454 at r3454
  unfold Seg34.relationRow3455 at r3455
  unfold Seg34.relationRow3456 at r3456
  unfold Seg34.relationRow3457 at r3457
  unfold Seg34.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 34029 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩ := by
    have hnextx : seg34AccX38 rho = seg34AccX37 rho + rho 34724 := by
      unfold seg34AccX38 seg34AccX37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 37]
      ring
    have hnexty : seg34AccY38 rho = seg34AccY37 rho + rho 34725 := by
      unfold seg34AccY38 seg34AccY37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 37]
      ring
    have ha0 : (rho 34716 + rho 34717) * (seg34AccX37 rho + seg34AccY37 rho) = rho 34718 := by
      unfold seg34AccX37 seg34AccY37
      linear_combination r3446
    have ha1 : rho 34717 * seg34AccX37 rho = rho 34719 := by
      unfold seg34AccX37
      linear_combination r3447
    have ha2 : rho 34716 * seg34AccY37 rho = rho 34720 := by
      unfold seg34AccY37
      linear_combination r3448
    have ha3 : 3021 * rho 34719 * rho 34720 = rho 34721 := by
      linear_combination r3449
    have ha4 : rho 34722 * (1 + rho 34721) = rho 34719 + rho 34720 := by
      linear_combination r3450
    have ha5 : rho 34723 * (1 - rho 34721) = rho 34718 - rho 34719 - rho 34720 := by
      linear_combination r3451
    have haddx :
        rho 34722 * (1 + 3021 * (rho 34717 * seg34AccX37 rho) * (rho 34716 * seg34AccY37 rho)) =
          rho 34717 * seg34AccX37 rho + rho 34716 * seg34AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34723 * (1 - 3021 * (rho 34717 * seg34AccX37 rho) * (rho 34716 * seg34AccY37 rho)) =
          (-1) * (rho 34717 * seg34AccX37 rho) - rho 34716 * seg34AccY37 rho +
            (seg34AccY37 rho - seg34AccX37 rho * (-1)) * (rho 34716 + rho 34717) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34723 * (1 - rho 34721) = rho 34718 - rho 34719 - rho 34720 := ha5
        _ = (-1) * rho 34719 - rho 34720 + (seg34AccY37 rho - seg34AccX37 rho * (-1)) * (rho 34716 + rho 34717) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX38 rho = seg34AccX37 rho - Bool.toZMod bit * (seg34AccX37 rho - rho 34722) := by
      have hd : rho 34724 = Bool.toZMod bit * (rho 34722 - seg34AccX37 rho) := by
        rw [← hbit]
        unfold seg34AccX37
        linear_combination -r3452
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY38 rho = seg34AccY37 rho - Bool.toZMod bit * (seg34AccY37 rho - rho 34723) := by
      have hd : rho 34725 = Bool.toZMod bit * (rho 34723 - seg34AccY37 rho) := by
        rw [← hbit]
        unfold seg34AccY37
        linear_combination -r3453
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34716 * rho 34717 = rho 34726 := by linear_combination r3454
    have hd1 : rho 34716 * rho 34716 = rho 34727 := by linear_combination r3455
    have hd2 : rho 34717 * rho 34717 = rho 34728 := by linear_combination r3456
    have hd3 : rho 34729 * (rho 34717 * rho 34717 + rho 34716 * rho 34716 * (-1)) = 2 * (rho 34716 * rho 34717) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 34730 * (2 - (rho 34717 * rho 34717 + rho 34716 * rho 34716 * (-1))) = rho 34717 * rho 34717 - rho 34716 * rho 34716 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
      ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
      ⟨(rho 34722 : Seg34.F), (rho 34723 : Seg34.F)⟩
      ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
      ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg34_rows38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3459 rho ∧ Seg34.relationRow3460 rho ∧ Seg34.relationRow3461 rho ∧ Seg34.relationRow3462 rho ∧ Seg34.relationRow3463 rho ∧ Seg34.relationRow3464 rho ∧ Seg34.relationRow3465 rho ∧ Seg34.relationRow3466 rho ∧ Seg34.relationRow3467 rho ∧ Seg34.relationRow3468 rho ∧ Seg34.relationRow3469 rho ∧ Seg34.relationRow3470 rho ∧ Seg34.relationRow3471 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩

theorem seg34_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩ := by
  obtain ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩ := seg34_rows38 rho h
  unfold Seg34.relationRow3459 at r3459
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3459
  unfold Seg34.relationRow3460 at r3460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460
  unfold Seg34.relationRow3461 at r3461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3461
  unfold Seg34.relationRow3462 at r3462
  unfold Seg34.relationRow3463 at r3463
  unfold Seg34.relationRow3464 at r3464
  unfold Seg34.relationRow3465 at r3465
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3465
  unfold Seg34.relationRow3466 at r3466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3466
  unfold Seg34.relationRow3467 at r3467
  unfold Seg34.relationRow3468 at r3468
  unfold Seg34.relationRow3469 at r3469
  unfold Seg34.relationRow3470 at r3470
  unfold Seg34.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 34030 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩ := by
    have hnextx : seg34AccX39 rho = seg34AccX38 rho + rho 34737 := by
      unfold seg34AccX39 seg34AccX38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 38]
      ring
    have hnexty : seg34AccY39 rho = seg34AccY38 rho + rho 34738 := by
      unfold seg34AccY39 seg34AccY38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 38]
      ring
    have ha0 : (rho 34729 + rho 34730) * (seg34AccX38 rho + seg34AccY38 rho) = rho 34731 := by
      unfold seg34AccX38 seg34AccY38
      linear_combination r3459
    have ha1 : rho 34730 * seg34AccX38 rho = rho 34732 := by
      unfold seg34AccX38
      linear_combination r3460
    have ha2 : rho 34729 * seg34AccY38 rho = rho 34733 := by
      unfold seg34AccY38
      linear_combination r3461
    have ha3 : 3021 * rho 34732 * rho 34733 = rho 34734 := by
      linear_combination r3462
    have ha4 : rho 34735 * (1 + rho 34734) = rho 34732 + rho 34733 := by
      linear_combination r3463
    have ha5 : rho 34736 * (1 - rho 34734) = rho 34731 - rho 34732 - rho 34733 := by
      linear_combination r3464
    have haddx :
        rho 34735 * (1 + 3021 * (rho 34730 * seg34AccX38 rho) * (rho 34729 * seg34AccY38 rho)) =
          rho 34730 * seg34AccX38 rho + rho 34729 * seg34AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34736 * (1 - 3021 * (rho 34730 * seg34AccX38 rho) * (rho 34729 * seg34AccY38 rho)) =
          (-1) * (rho 34730 * seg34AccX38 rho) - rho 34729 * seg34AccY38 rho +
            (seg34AccY38 rho - seg34AccX38 rho * (-1)) * (rho 34729 + rho 34730) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34736 * (1 - rho 34734) = rho 34731 - rho 34732 - rho 34733 := ha5
        _ = (-1) * rho 34732 - rho 34733 + (seg34AccY38 rho - seg34AccX38 rho * (-1)) * (rho 34729 + rho 34730) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX39 rho = seg34AccX38 rho - Bool.toZMod bit * (seg34AccX38 rho - rho 34735) := by
      have hd : rho 34737 = Bool.toZMod bit * (rho 34735 - seg34AccX38 rho) := by
        rw [← hbit]
        unfold seg34AccX38
        linear_combination -r3465
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY39 rho = seg34AccY38 rho - Bool.toZMod bit * (seg34AccY38 rho - rho 34736) := by
      have hd : rho 34738 = Bool.toZMod bit * (rho 34736 - seg34AccY38 rho) := by
        rw [← hbit]
        unfold seg34AccY38
        linear_combination -r3466
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34729 * rho 34730 = rho 34739 := by linear_combination r3467
    have hd1 : rho 34729 * rho 34729 = rho 34740 := by linear_combination r3468
    have hd2 : rho 34730 * rho 34730 = rho 34741 := by linear_combination r3469
    have hd3 : rho 34742 * (rho 34730 * rho 34730 + rho 34729 * rho 34729 * (-1)) = 2 * (rho 34729 * rho 34730) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 34743 * (2 - (rho 34730 * rho 34730 + rho 34729 * rho 34729 * (-1))) = rho 34730 * rho 34730 - rho 34729 * rho 34729 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
      ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
      ⟨(rho 34735 : Seg34.F), (rho 34736 : Seg34.F)⟩
      ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
      ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg34_rows39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3472 rho ∧ Seg34.relationRow3473 rho ∧ Seg34.relationRow3474 rho ∧ Seg34.relationRow3475 rho ∧ Seg34.relationRow3476 rho ∧ Seg34.relationRow3477 rho ∧ Seg34.relationRow3478 rho ∧ Seg34.relationRow3479 rho ∧ Seg34.relationRow3480 rho ∧ Seg34.relationRow3481 rho ∧ Seg34.relationRow3482 rho ∧ Seg34.relationRow3483 rho ∧ Seg34.relationRow3484 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩

theorem seg34_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩ := by
  obtain ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩ := seg34_rows39 rho h
  unfold Seg34.relationRow3472 at r3472
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3472
  unfold Seg34.relationRow3473 at r3473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473
  unfold Seg34.relationRow3474 at r3474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3474
  unfold Seg34.relationRow3475 at r3475
  unfold Seg34.relationRow3476 at r3476
  unfold Seg34.relationRow3477 at r3477
  unfold Seg34.relationRow3478 at r3478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3478
  unfold Seg34.relationRow3479 at r3479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3479
  unfold Seg34.relationRow3480 at r3480
  unfold Seg34.relationRow3481 at r3481
  unfold Seg34.relationRow3482 at r3482
  unfold Seg34.relationRow3483 at r3483
  unfold Seg34.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 34031 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩ := by
    have hnextx : seg34AccX40 rho = seg34AccX39 rho + rho 34750 := by
      unfold seg34AccX40 seg34AccX39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 39]
      ring
    have hnexty : seg34AccY40 rho = seg34AccY39 rho + rho 34751 := by
      unfold seg34AccY40 seg34AccY39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 39]
      ring
    have ha0 : (rho 34742 + rho 34743) * (seg34AccX39 rho + seg34AccY39 rho) = rho 34744 := by
      unfold seg34AccX39 seg34AccY39
      linear_combination r3472
    have ha1 : rho 34743 * seg34AccX39 rho = rho 34745 := by
      unfold seg34AccX39
      linear_combination r3473
    have ha2 : rho 34742 * seg34AccY39 rho = rho 34746 := by
      unfold seg34AccY39
      linear_combination r3474
    have ha3 : 3021 * rho 34745 * rho 34746 = rho 34747 := by
      linear_combination r3475
    have ha4 : rho 34748 * (1 + rho 34747) = rho 34745 + rho 34746 := by
      linear_combination r3476
    have ha5 : rho 34749 * (1 - rho 34747) = rho 34744 - rho 34745 - rho 34746 := by
      linear_combination r3477
    have haddx :
        rho 34748 * (1 + 3021 * (rho 34743 * seg34AccX39 rho) * (rho 34742 * seg34AccY39 rho)) =
          rho 34743 * seg34AccX39 rho + rho 34742 * seg34AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34749 * (1 - 3021 * (rho 34743 * seg34AccX39 rho) * (rho 34742 * seg34AccY39 rho)) =
          (-1) * (rho 34743 * seg34AccX39 rho) - rho 34742 * seg34AccY39 rho +
            (seg34AccY39 rho - seg34AccX39 rho * (-1)) * (rho 34742 + rho 34743) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34749 * (1 - rho 34747) = rho 34744 - rho 34745 - rho 34746 := ha5
        _ = (-1) * rho 34745 - rho 34746 + (seg34AccY39 rho - seg34AccX39 rho * (-1)) * (rho 34742 + rho 34743) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX40 rho = seg34AccX39 rho - Bool.toZMod bit * (seg34AccX39 rho - rho 34748) := by
      have hd : rho 34750 = Bool.toZMod bit * (rho 34748 - seg34AccX39 rho) := by
        rw [← hbit]
        unfold seg34AccX39
        linear_combination -r3478
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY40 rho = seg34AccY39 rho - Bool.toZMod bit * (seg34AccY39 rho - rho 34749) := by
      have hd : rho 34751 = Bool.toZMod bit * (rho 34749 - seg34AccY39 rho) := by
        rw [← hbit]
        unfold seg34AccY39
        linear_combination -r3479
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34742 * rho 34743 = rho 34752 := by linear_combination r3480
    have hd1 : rho 34742 * rho 34742 = rho 34753 := by linear_combination r3481
    have hd2 : rho 34743 * rho 34743 = rho 34754 := by linear_combination r3482
    have hd3 : rho 34755 * (rho 34743 * rho 34743 + rho 34742 * rho 34742 * (-1)) = 2 * (rho 34742 * rho 34743) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 34756 * (2 - (rho 34743 * rho 34743 + rho 34742 * rho 34742 * (-1))) = rho 34743 * rho 34743 - rho 34742 * rho 34742 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
      ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
      ⟨(rho 34748 : Seg34.F), (rho 34749 : Seg34.F)⟩
      ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
      ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg34_rows40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3485 rho ∧ Seg34.relationRow3486 rho ∧ Seg34.relationRow3487 rho ∧ Seg34.relationRow3488 rho ∧ Seg34.relationRow3489 rho ∧ Seg34.relationRow3490 rho ∧ Seg34.relationRow3491 rho ∧ Seg34.relationRow3492 rho ∧ Seg34.relationRow3493 rho ∧ Seg34.relationRow3494 rho ∧ Seg34.relationRow3495 rho ∧ Seg34.relationRow3496 rho ∧ Seg34.relationRow3497 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩

theorem seg34_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩ := by
  obtain ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩ := seg34_rows40 rho h
  unfold Seg34.relationRow3485 at r3485
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3485
  unfold Seg34.relationRow3486 at r3486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486
  unfold Seg34.relationRow3487 at r3487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3487
  unfold Seg34.relationRow3488 at r3488
  unfold Seg34.relationRow3489 at r3489
  unfold Seg34.relationRow3490 at r3490
  unfold Seg34.relationRow3491 at r3491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3491
  unfold Seg34.relationRow3492 at r3492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3492
  unfold Seg34.relationRow3493 at r3493
  unfold Seg34.relationRow3494 at r3494
  unfold Seg34.relationRow3495 at r3495
  unfold Seg34.relationRow3496 at r3496
  unfold Seg34.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 34032 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩ := by
    have hnextx : seg34AccX41 rho = seg34AccX40 rho + rho 34763 := by
      unfold seg34AccX41 seg34AccX40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 40]
      ring
    have hnexty : seg34AccY41 rho = seg34AccY40 rho + rho 34764 := by
      unfold seg34AccY41 seg34AccY40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 40]
      ring
    have ha0 : (rho 34755 + rho 34756) * (seg34AccX40 rho + seg34AccY40 rho) = rho 34757 := by
      unfold seg34AccX40 seg34AccY40
      linear_combination r3485
    have ha1 : rho 34756 * seg34AccX40 rho = rho 34758 := by
      unfold seg34AccX40
      linear_combination r3486
    have ha2 : rho 34755 * seg34AccY40 rho = rho 34759 := by
      unfold seg34AccY40
      linear_combination r3487
    have ha3 : 3021 * rho 34758 * rho 34759 = rho 34760 := by
      linear_combination r3488
    have ha4 : rho 34761 * (1 + rho 34760) = rho 34758 + rho 34759 := by
      linear_combination r3489
    have ha5 : rho 34762 * (1 - rho 34760) = rho 34757 - rho 34758 - rho 34759 := by
      linear_combination r3490
    have haddx :
        rho 34761 * (1 + 3021 * (rho 34756 * seg34AccX40 rho) * (rho 34755 * seg34AccY40 rho)) =
          rho 34756 * seg34AccX40 rho + rho 34755 * seg34AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34762 * (1 - 3021 * (rho 34756 * seg34AccX40 rho) * (rho 34755 * seg34AccY40 rho)) =
          (-1) * (rho 34756 * seg34AccX40 rho) - rho 34755 * seg34AccY40 rho +
            (seg34AccY40 rho - seg34AccX40 rho * (-1)) * (rho 34755 + rho 34756) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34762 * (1 - rho 34760) = rho 34757 - rho 34758 - rho 34759 := ha5
        _ = (-1) * rho 34758 - rho 34759 + (seg34AccY40 rho - seg34AccX40 rho * (-1)) * (rho 34755 + rho 34756) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX41 rho = seg34AccX40 rho - Bool.toZMod bit * (seg34AccX40 rho - rho 34761) := by
      have hd : rho 34763 = Bool.toZMod bit * (rho 34761 - seg34AccX40 rho) := by
        rw [← hbit]
        unfold seg34AccX40
        linear_combination -r3491
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY41 rho = seg34AccY40 rho - Bool.toZMod bit * (seg34AccY40 rho - rho 34762) := by
      have hd : rho 34764 = Bool.toZMod bit * (rho 34762 - seg34AccY40 rho) := by
        rw [← hbit]
        unfold seg34AccY40
        linear_combination -r3492
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34755 * rho 34756 = rho 34765 := by linear_combination r3493
    have hd1 : rho 34755 * rho 34755 = rho 34766 := by linear_combination r3494
    have hd2 : rho 34756 * rho 34756 = rho 34767 := by linear_combination r3495
    have hd3 : rho 34768 * (rho 34756 * rho 34756 + rho 34755 * rho 34755 * (-1)) = 2 * (rho 34755 * rho 34756) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 34769 * (2 - (rho 34756 * rho 34756 + rho 34755 * rho 34755 * (-1))) = rho 34756 * rho 34756 - rho 34755 * rho 34755 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
      ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
      ⟨(rho 34761 : Seg34.F), (rho 34762 : Seg34.F)⟩
      ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
      ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg34_rows41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3498 rho ∧ Seg34.relationRow3499 rho ∧ Seg34.relationRow3500 rho ∧ Seg34.relationRow3501 rho ∧ Seg34.relationRow3502 rho ∧ Seg34.relationRow3503 rho ∧ Seg34.relationRow3504 rho ∧ Seg34.relationRow3505 rho ∧ Seg34.relationRow3506 rho ∧ Seg34.relationRow3507 rho ∧ Seg34.relationRow3508 rho ∧ Seg34.relationRow3509 rho ∧ Seg34.relationRow3510 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩

theorem seg34_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩ := by
  obtain ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩ := seg34_rows41 rho h
  unfold Seg34.relationRow3498 at r3498
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3498
  unfold Seg34.relationRow3499 at r3499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499
  unfold Seg34.relationRow3500 at r3500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3500
  unfold Seg34.relationRow3501 at r3501
  unfold Seg34.relationRow3502 at r3502
  unfold Seg34.relationRow3503 at r3503
  unfold Seg34.relationRow3504 at r3504
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3504
  unfold Seg34.relationRow3505 at r3505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3505
  unfold Seg34.relationRow3506 at r3506
  unfold Seg34.relationRow3507 at r3507
  unfold Seg34.relationRow3508 at r3508
  unfold Seg34.relationRow3509 at r3509
  unfold Seg34.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 34033 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩ := by
    have hnextx : seg34AccX42 rho = seg34AccX41 rho + rho 34776 := by
      unfold seg34AccX42 seg34AccX41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 41]
      ring
    have hnexty : seg34AccY42 rho = seg34AccY41 rho + rho 34777 := by
      unfold seg34AccY42 seg34AccY41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 41]
      ring
    have ha0 : (rho 34768 + rho 34769) * (seg34AccX41 rho + seg34AccY41 rho) = rho 34770 := by
      unfold seg34AccX41 seg34AccY41
      linear_combination r3498
    have ha1 : rho 34769 * seg34AccX41 rho = rho 34771 := by
      unfold seg34AccX41
      linear_combination r3499
    have ha2 : rho 34768 * seg34AccY41 rho = rho 34772 := by
      unfold seg34AccY41
      linear_combination r3500
    have ha3 : 3021 * rho 34771 * rho 34772 = rho 34773 := by
      linear_combination r3501
    have ha4 : rho 34774 * (1 + rho 34773) = rho 34771 + rho 34772 := by
      linear_combination r3502
    have ha5 : rho 34775 * (1 - rho 34773) = rho 34770 - rho 34771 - rho 34772 := by
      linear_combination r3503
    have haddx :
        rho 34774 * (1 + 3021 * (rho 34769 * seg34AccX41 rho) * (rho 34768 * seg34AccY41 rho)) =
          rho 34769 * seg34AccX41 rho + rho 34768 * seg34AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34775 * (1 - 3021 * (rho 34769 * seg34AccX41 rho) * (rho 34768 * seg34AccY41 rho)) =
          (-1) * (rho 34769 * seg34AccX41 rho) - rho 34768 * seg34AccY41 rho +
            (seg34AccY41 rho - seg34AccX41 rho * (-1)) * (rho 34768 + rho 34769) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34775 * (1 - rho 34773) = rho 34770 - rho 34771 - rho 34772 := ha5
        _ = (-1) * rho 34771 - rho 34772 + (seg34AccY41 rho - seg34AccX41 rho * (-1)) * (rho 34768 + rho 34769) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX42 rho = seg34AccX41 rho - Bool.toZMod bit * (seg34AccX41 rho - rho 34774) := by
      have hd : rho 34776 = Bool.toZMod bit * (rho 34774 - seg34AccX41 rho) := by
        rw [← hbit]
        unfold seg34AccX41
        linear_combination -r3504
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY42 rho = seg34AccY41 rho - Bool.toZMod bit * (seg34AccY41 rho - rho 34775) := by
      have hd : rho 34777 = Bool.toZMod bit * (rho 34775 - seg34AccY41 rho) := by
        rw [← hbit]
        unfold seg34AccY41
        linear_combination -r3505
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34768 * rho 34769 = rho 34778 := by linear_combination r3506
    have hd1 : rho 34768 * rho 34768 = rho 34779 := by linear_combination r3507
    have hd2 : rho 34769 * rho 34769 = rho 34780 := by linear_combination r3508
    have hd3 : rho 34781 * (rho 34769 * rho 34769 + rho 34768 * rho 34768 * (-1)) = 2 * (rho 34768 * rho 34769) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 34782 * (2 - (rho 34769 * rho 34769 + rho 34768 * rho 34768 * (-1))) = rho 34769 * rho 34769 - rho 34768 * rho 34768 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
      ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
      ⟨(rho 34774 : Seg34.F), (rho 34775 : Seg34.F)⟩
      ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
      ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg34_rows42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3511 rho ∧ Seg34.relationRow3512 rho ∧ Seg34.relationRow3513 rho ∧ Seg34.relationRow3514 rho ∧ Seg34.relationRow3515 rho ∧ Seg34.relationRow3516 rho ∧ Seg34.relationRow3517 rho ∧ Seg34.relationRow3518 rho ∧ Seg34.relationRow3519 rho ∧ Seg34.relationRow3520 rho ∧ Seg34.relationRow3521 rho ∧ Seg34.relationRow3522 rho ∧ Seg34.relationRow3523 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩

theorem seg34_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩ := by
  obtain ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩ := seg34_rows42 rho h
  unfold Seg34.relationRow3511 at r3511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3511
  unfold Seg34.relationRow3512 at r3512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512
  unfold Seg34.relationRow3513 at r3513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3513
  unfold Seg34.relationRow3514 at r3514
  unfold Seg34.relationRow3515 at r3515
  unfold Seg34.relationRow3516 at r3516
  unfold Seg34.relationRow3517 at r3517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3517
  unfold Seg34.relationRow3518 at r3518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3518
  unfold Seg34.relationRow3519 at r3519
  unfold Seg34.relationRow3520 at r3520
  unfold Seg34.relationRow3521 at r3521
  unfold Seg34.relationRow3522 at r3522
  unfold Seg34.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 34034 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩ := by
    have hnextx : seg34AccX43 rho = seg34AccX42 rho + rho 34789 := by
      unfold seg34AccX43 seg34AccX42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 42]
      ring
    have hnexty : seg34AccY43 rho = seg34AccY42 rho + rho 34790 := by
      unfold seg34AccY43 seg34AccY42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 42]
      ring
    have ha0 : (rho 34781 + rho 34782) * (seg34AccX42 rho + seg34AccY42 rho) = rho 34783 := by
      unfold seg34AccX42 seg34AccY42
      linear_combination r3511
    have ha1 : rho 34782 * seg34AccX42 rho = rho 34784 := by
      unfold seg34AccX42
      linear_combination r3512
    have ha2 : rho 34781 * seg34AccY42 rho = rho 34785 := by
      unfold seg34AccY42
      linear_combination r3513
    have ha3 : 3021 * rho 34784 * rho 34785 = rho 34786 := by
      linear_combination r3514
    have ha4 : rho 34787 * (1 + rho 34786) = rho 34784 + rho 34785 := by
      linear_combination r3515
    have ha5 : rho 34788 * (1 - rho 34786) = rho 34783 - rho 34784 - rho 34785 := by
      linear_combination r3516
    have haddx :
        rho 34787 * (1 + 3021 * (rho 34782 * seg34AccX42 rho) * (rho 34781 * seg34AccY42 rho)) =
          rho 34782 * seg34AccX42 rho + rho 34781 * seg34AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34788 * (1 - 3021 * (rho 34782 * seg34AccX42 rho) * (rho 34781 * seg34AccY42 rho)) =
          (-1) * (rho 34782 * seg34AccX42 rho) - rho 34781 * seg34AccY42 rho +
            (seg34AccY42 rho - seg34AccX42 rho * (-1)) * (rho 34781 + rho 34782) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34788 * (1 - rho 34786) = rho 34783 - rho 34784 - rho 34785 := ha5
        _ = (-1) * rho 34784 - rho 34785 + (seg34AccY42 rho - seg34AccX42 rho * (-1)) * (rho 34781 + rho 34782) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX43 rho = seg34AccX42 rho - Bool.toZMod bit * (seg34AccX42 rho - rho 34787) := by
      have hd : rho 34789 = Bool.toZMod bit * (rho 34787 - seg34AccX42 rho) := by
        rw [← hbit]
        unfold seg34AccX42
        linear_combination -r3517
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY43 rho = seg34AccY42 rho - Bool.toZMod bit * (seg34AccY42 rho - rho 34788) := by
      have hd : rho 34790 = Bool.toZMod bit * (rho 34788 - seg34AccY42 rho) := by
        rw [← hbit]
        unfold seg34AccY42
        linear_combination -r3518
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34781 * rho 34782 = rho 34791 := by linear_combination r3519
    have hd1 : rho 34781 * rho 34781 = rho 34792 := by linear_combination r3520
    have hd2 : rho 34782 * rho 34782 = rho 34793 := by linear_combination r3521
    have hd3 : rho 34794 * (rho 34782 * rho 34782 + rho 34781 * rho 34781 * (-1)) = 2 * (rho 34781 * rho 34782) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 34795 * (2 - (rho 34782 * rho 34782 + rho 34781 * rho 34781 * (-1))) = rho 34782 * rho 34782 - rho 34781 * rho 34781 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
      ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
      ⟨(rho 34787 : Seg34.F), (rho 34788 : Seg34.F)⟩
      ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
      ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg34_rows43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3524 rho ∧ Seg34.relationRow3525 rho ∧ Seg34.relationRow3526 rho ∧ Seg34.relationRow3527 rho ∧ Seg34.relationRow3528 rho ∧ Seg34.relationRow3529 rho ∧ Seg34.relationRow3530 rho ∧ Seg34.relationRow3531 rho ∧ Seg34.relationRow3532 rho ∧ Seg34.relationRow3533 rho ∧ Seg34.relationRow3534 rho ∧ Seg34.relationRow3535 rho ∧ Seg34.relationRow3536 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩

theorem seg34_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩ := by
  obtain ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩ := seg34_rows43 rho h
  unfold Seg34.relationRow3524 at r3524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3524
  unfold Seg34.relationRow3525 at r3525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525
  unfold Seg34.relationRow3526 at r3526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3526
  unfold Seg34.relationRow3527 at r3527
  unfold Seg34.relationRow3528 at r3528
  unfold Seg34.relationRow3529 at r3529
  unfold Seg34.relationRow3530 at r3530
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3530
  unfold Seg34.relationRow3531 at r3531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3531
  unfold Seg34.relationRow3532 at r3532
  unfold Seg34.relationRow3533 at r3533
  unfold Seg34.relationRow3534 at r3534
  unfold Seg34.relationRow3535 at r3535
  unfold Seg34.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 34035 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩ := by
    have hnextx : seg34AccX44 rho = seg34AccX43 rho + rho 34802 := by
      unfold seg34AccX44 seg34AccX43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 43]
      ring
    have hnexty : seg34AccY44 rho = seg34AccY43 rho + rho 34803 := by
      unfold seg34AccY44 seg34AccY43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 43]
      ring
    have ha0 : (rho 34794 + rho 34795) * (seg34AccX43 rho + seg34AccY43 rho) = rho 34796 := by
      unfold seg34AccX43 seg34AccY43
      linear_combination r3524
    have ha1 : rho 34795 * seg34AccX43 rho = rho 34797 := by
      unfold seg34AccX43
      linear_combination r3525
    have ha2 : rho 34794 * seg34AccY43 rho = rho 34798 := by
      unfold seg34AccY43
      linear_combination r3526
    have ha3 : 3021 * rho 34797 * rho 34798 = rho 34799 := by
      linear_combination r3527
    have ha4 : rho 34800 * (1 + rho 34799) = rho 34797 + rho 34798 := by
      linear_combination r3528
    have ha5 : rho 34801 * (1 - rho 34799) = rho 34796 - rho 34797 - rho 34798 := by
      linear_combination r3529
    have haddx :
        rho 34800 * (1 + 3021 * (rho 34795 * seg34AccX43 rho) * (rho 34794 * seg34AccY43 rho)) =
          rho 34795 * seg34AccX43 rho + rho 34794 * seg34AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34801 * (1 - 3021 * (rho 34795 * seg34AccX43 rho) * (rho 34794 * seg34AccY43 rho)) =
          (-1) * (rho 34795 * seg34AccX43 rho) - rho 34794 * seg34AccY43 rho +
            (seg34AccY43 rho - seg34AccX43 rho * (-1)) * (rho 34794 + rho 34795) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34801 * (1 - rho 34799) = rho 34796 - rho 34797 - rho 34798 := ha5
        _ = (-1) * rho 34797 - rho 34798 + (seg34AccY43 rho - seg34AccX43 rho * (-1)) * (rho 34794 + rho 34795) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX44 rho = seg34AccX43 rho - Bool.toZMod bit * (seg34AccX43 rho - rho 34800) := by
      have hd : rho 34802 = Bool.toZMod bit * (rho 34800 - seg34AccX43 rho) := by
        rw [← hbit]
        unfold seg34AccX43
        linear_combination -r3530
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY44 rho = seg34AccY43 rho - Bool.toZMod bit * (seg34AccY43 rho - rho 34801) := by
      have hd : rho 34803 = Bool.toZMod bit * (rho 34801 - seg34AccY43 rho) := by
        rw [← hbit]
        unfold seg34AccY43
        linear_combination -r3531
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34794 * rho 34795 = rho 34804 := by linear_combination r3532
    have hd1 : rho 34794 * rho 34794 = rho 34805 := by linear_combination r3533
    have hd2 : rho 34795 * rho 34795 = rho 34806 := by linear_combination r3534
    have hd3 : rho 34807 * (rho 34795 * rho 34795 + rho 34794 * rho 34794 * (-1)) = 2 * (rho 34794 * rho 34795) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 34808 * (2 - (rho 34795 * rho 34795 + rho 34794 * rho 34794 * (-1))) = rho 34795 * rho 34795 - rho 34794 * rho 34794 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
      ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
      ⟨(rho 34800 : Seg34.F), (rho 34801 : Seg34.F)⟩
      ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
      ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg34_hstep_c3 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg34_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg34_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg34_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg34_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg34_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg34_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg34_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg34_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg34_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg34_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
