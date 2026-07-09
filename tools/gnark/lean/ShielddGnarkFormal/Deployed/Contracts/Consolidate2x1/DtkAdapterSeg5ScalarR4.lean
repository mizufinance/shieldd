import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3537 rho ∧ Seg5.relationRow3538 rho ∧ Seg5.relationRow3539 rho ∧ Seg5.relationRow3540 rho ∧ Seg5.relationRow3541 rho ∧ Seg5.relationRow3542 rho ∧ Seg5.relationRow3543 rho ∧ Seg5.relationRow3544 rho ∧ Seg5.relationRow3545 rho ∧ Seg5.relationRow3546 rho ∧ Seg5.relationRow3547 rho ∧ Seg5.relationRow3548 rho ∧ Seg5.relationRow3549 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩

theorem seg5_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2459 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩
        ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩
        ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩
        ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩ := by
  obtain ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩ := seg5_rows44 rho h
  unfold Seg5.relationRow3537 at r3537
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3537
  unfold Seg5.relationRow3538 at r3538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538
  unfold Seg5.relationRow3539 at r3539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3539
  unfold Seg5.relationRow3540 at r3540
  unfold Seg5.relationRow3541 at r3541
  unfold Seg5.relationRow3542 at r3542
  unfold Seg5.relationRow3543 at r3543
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3543
  unfold Seg5.relationRow3544 at r3544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3544
  unfold Seg5.relationRow3545 at r3545
  unfold Seg5.relationRow3546 at r3546
  unfold Seg5.relationRow3547 at r3547
  unfold Seg5.relationRow3548 at r3548
  unfold Seg5.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 2459 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩
        ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩
        ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩
        ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩ := by
    have hnextx : seg5AccX45 rho = seg5AccX44 rho + rho 3238 := by
      unfold seg5AccX45 seg5AccX44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 44]
      ring
    have hnexty : seg5AccY45 rho = seg5AccY44 rho + rho 3239 := by
      unfold seg5AccY45 seg5AccY44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 44]
      ring
    have ha0 : (rho 3230 + rho 3231) * (seg5AccX44 rho + seg5AccY44 rho) = rho 3232 := by
      unfold seg5AccX44 seg5AccY44
      linear_combination r3537
    have ha1 : rho 3231 * seg5AccX44 rho = rho 3233 := by
      unfold seg5AccX44
      linear_combination r3538
    have ha2 : rho 3230 * seg5AccY44 rho = rho 3234 := by
      unfold seg5AccY44
      linear_combination r3539
    have ha3 : 3021 * rho 3233 * rho 3234 = rho 3235 := by
      linear_combination r3540
    have ha4 : rho 3236 * (1 + rho 3235) = rho 3233 + rho 3234 := by
      linear_combination r3541
    have ha5 : rho 3237 * (1 - rho 3235) = rho 3232 - rho 3233 - rho 3234 := by
      linear_combination r3542
    have haddx :
        rho 3236 * (1 + 3021 * (rho 3231 * seg5AccX44 rho) * (rho 3230 * seg5AccY44 rho)) =
          rho 3231 * seg5AccX44 rho + rho 3230 * seg5AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3237 * (1 - 3021 * (rho 3231 * seg5AccX44 rho) * (rho 3230 * seg5AccY44 rho)) =
          (-1) * (rho 3231 * seg5AccX44 rho) - rho 3230 * seg5AccY44 rho +
            (seg5AccY44 rho - seg5AccX44 rho * (-1)) * (rho 3230 + rho 3231) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3237 * (1 - rho 3235) = rho 3232 - rho 3233 - rho 3234 := ha5
        _ = (-1) * rho 3233 - rho 3234 + (seg5AccY44 rho - seg5AccX44 rho * (-1)) * (rho 3230 + rho 3231) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX45 rho = seg5AccX44 rho - Bool.toZMod bit * (seg5AccX44 rho - rho 3236) := by
      have hd : rho 3238 = Bool.toZMod bit * (rho 3236 - seg5AccX44 rho) := by
        rw [← hbit]
        unfold seg5AccX44
        linear_combination -r3543
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY45 rho = seg5AccY44 rho - Bool.toZMod bit * (seg5AccY44 rho - rho 3237) := by
      have hd : rho 3239 = Bool.toZMod bit * (rho 3237 - seg5AccY44 rho) := by
        rw [← hbit]
        unfold seg5AccY44
        linear_combination -r3544
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3230 * rho 3231 = rho 3240 := by linear_combination r3545
    have hd1 : rho 3230 * rho 3230 = rho 3241 := by linear_combination r3546
    have hd2 : rho 3231 * rho 3231 = rho 3242 := by linear_combination r3547
    have hd3 : rho 3243 * (rho 3231 * rho 3231 + rho 3230 * rho 3230 * (-1)) = 2 * (rho 3230 * rho 3231) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 3244 * (2 - (rho 3231 * rho 3231 + rho 3230 * rho 3230 * (-1))) = rho 3231 * rho 3231 - rho 3230 * rho 3230 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩
      ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩
      ⟨(rho 3236 : Seg5.F), (rho 3237 : Seg5.F)⟩
      ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩
      ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg5_rows45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3550 rho ∧ Seg5.relationRow3551 rho ∧ Seg5.relationRow3552 rho ∧ Seg5.relationRow3553 rho ∧ Seg5.relationRow3554 rho ∧ Seg5.relationRow3555 rho ∧ Seg5.relationRow3556 rho ∧ Seg5.relationRow3557 rho ∧ Seg5.relationRow3558 rho ∧ Seg5.relationRow3559 rho ∧ Seg5.relationRow3560 rho ∧ Seg5.relationRow3561 rho ∧ Seg5.relationRow3562 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩

theorem seg5_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2460 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩
        ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩
        ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩
        ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩ := by
  obtain ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩ := seg5_rows45 rho h
  unfold Seg5.relationRow3550 at r3550
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3550
  unfold Seg5.relationRow3551 at r3551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551
  unfold Seg5.relationRow3552 at r3552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3552
  unfold Seg5.relationRow3553 at r3553
  unfold Seg5.relationRow3554 at r3554
  unfold Seg5.relationRow3555 at r3555
  unfold Seg5.relationRow3556 at r3556
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3556
  unfold Seg5.relationRow3557 at r3557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3557
  unfold Seg5.relationRow3558 at r3558
  unfold Seg5.relationRow3559 at r3559
  unfold Seg5.relationRow3560 at r3560
  unfold Seg5.relationRow3561 at r3561
  unfold Seg5.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 2460 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩
        ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩
        ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩
        ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩ := by
    have hnextx : seg5AccX46 rho = seg5AccX45 rho + rho 3251 := by
      unfold seg5AccX46 seg5AccX45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 45]
      ring
    have hnexty : seg5AccY46 rho = seg5AccY45 rho + rho 3252 := by
      unfold seg5AccY46 seg5AccY45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 45]
      ring
    have ha0 : (rho 3243 + rho 3244) * (seg5AccX45 rho + seg5AccY45 rho) = rho 3245 := by
      unfold seg5AccX45 seg5AccY45
      linear_combination r3550
    have ha1 : rho 3244 * seg5AccX45 rho = rho 3246 := by
      unfold seg5AccX45
      linear_combination r3551
    have ha2 : rho 3243 * seg5AccY45 rho = rho 3247 := by
      unfold seg5AccY45
      linear_combination r3552
    have ha3 : 3021 * rho 3246 * rho 3247 = rho 3248 := by
      linear_combination r3553
    have ha4 : rho 3249 * (1 + rho 3248) = rho 3246 + rho 3247 := by
      linear_combination r3554
    have ha5 : rho 3250 * (1 - rho 3248) = rho 3245 - rho 3246 - rho 3247 := by
      linear_combination r3555
    have haddx :
        rho 3249 * (1 + 3021 * (rho 3244 * seg5AccX45 rho) * (rho 3243 * seg5AccY45 rho)) =
          rho 3244 * seg5AccX45 rho + rho 3243 * seg5AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3250 * (1 - 3021 * (rho 3244 * seg5AccX45 rho) * (rho 3243 * seg5AccY45 rho)) =
          (-1) * (rho 3244 * seg5AccX45 rho) - rho 3243 * seg5AccY45 rho +
            (seg5AccY45 rho - seg5AccX45 rho * (-1)) * (rho 3243 + rho 3244) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3250 * (1 - rho 3248) = rho 3245 - rho 3246 - rho 3247 := ha5
        _ = (-1) * rho 3246 - rho 3247 + (seg5AccY45 rho - seg5AccX45 rho * (-1)) * (rho 3243 + rho 3244) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX46 rho = seg5AccX45 rho - Bool.toZMod bit * (seg5AccX45 rho - rho 3249) := by
      have hd : rho 3251 = Bool.toZMod bit * (rho 3249 - seg5AccX45 rho) := by
        rw [← hbit]
        unfold seg5AccX45
        linear_combination -r3556
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY46 rho = seg5AccY45 rho - Bool.toZMod bit * (seg5AccY45 rho - rho 3250) := by
      have hd : rho 3252 = Bool.toZMod bit * (rho 3250 - seg5AccY45 rho) := by
        rw [← hbit]
        unfold seg5AccY45
        linear_combination -r3557
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3243 * rho 3244 = rho 3253 := by linear_combination r3558
    have hd1 : rho 3243 * rho 3243 = rho 3254 := by linear_combination r3559
    have hd2 : rho 3244 * rho 3244 = rho 3255 := by linear_combination r3560
    have hd3 : rho 3256 * (rho 3244 * rho 3244 + rho 3243 * rho 3243 * (-1)) = 2 * (rho 3243 * rho 3244) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 3257 * (2 - (rho 3244 * rho 3244 + rho 3243 * rho 3243 * (-1))) = rho 3244 * rho 3244 - rho 3243 * rho 3243 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX45 rho : Seg5.F), (seg5AccY45 rho : Seg5.F)⟩
      ⟨(rho 3243 : Seg5.F), (rho 3244 : Seg5.F)⟩
      ⟨(rho 3249 : Seg5.F), (rho 3250 : Seg5.F)⟩
      ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩
      ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg5_rows46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3563 rho ∧ Seg5.relationRow3564 rho ∧ Seg5.relationRow3565 rho ∧ Seg5.relationRow3566 rho ∧ Seg5.relationRow3567 rho ∧ Seg5.relationRow3568 rho ∧ Seg5.relationRow3569 rho ∧ Seg5.relationRow3570 rho ∧ Seg5.relationRow3571 rho ∧ Seg5.relationRow3572 rho ∧ Seg5.relationRow3573 rho ∧ Seg5.relationRow3574 rho ∧ Seg5.relationRow3575 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩

theorem seg5_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2461 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩
        ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩
        ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩
        ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩ := by
  obtain ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩ := seg5_rows46 rho h
  unfold Seg5.relationRow3563 at r3563
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3563
  unfold Seg5.relationRow3564 at r3564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564
  unfold Seg5.relationRow3565 at r3565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3565
  unfold Seg5.relationRow3566 at r3566
  unfold Seg5.relationRow3567 at r3567
  unfold Seg5.relationRow3568 at r3568
  unfold Seg5.relationRow3569 at r3569
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3569
  unfold Seg5.relationRow3570 at r3570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3570
  unfold Seg5.relationRow3571 at r3571
  unfold Seg5.relationRow3572 at r3572
  unfold Seg5.relationRow3573 at r3573
  unfold Seg5.relationRow3574 at r3574
  unfold Seg5.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 2461 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩
        ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩
        ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩
        ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩ := by
    have hnextx : seg5AccX47 rho = seg5AccX46 rho + rho 3264 := by
      unfold seg5AccX47 seg5AccX46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 46]
      ring
    have hnexty : seg5AccY47 rho = seg5AccY46 rho + rho 3265 := by
      unfold seg5AccY47 seg5AccY46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 46]
      ring
    have ha0 : (rho 3256 + rho 3257) * (seg5AccX46 rho + seg5AccY46 rho) = rho 3258 := by
      unfold seg5AccX46 seg5AccY46
      linear_combination r3563
    have ha1 : rho 3257 * seg5AccX46 rho = rho 3259 := by
      unfold seg5AccX46
      linear_combination r3564
    have ha2 : rho 3256 * seg5AccY46 rho = rho 3260 := by
      unfold seg5AccY46
      linear_combination r3565
    have ha3 : 3021 * rho 3259 * rho 3260 = rho 3261 := by
      linear_combination r3566
    have ha4 : rho 3262 * (1 + rho 3261) = rho 3259 + rho 3260 := by
      linear_combination r3567
    have ha5 : rho 3263 * (1 - rho 3261) = rho 3258 - rho 3259 - rho 3260 := by
      linear_combination r3568
    have haddx :
        rho 3262 * (1 + 3021 * (rho 3257 * seg5AccX46 rho) * (rho 3256 * seg5AccY46 rho)) =
          rho 3257 * seg5AccX46 rho + rho 3256 * seg5AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3263 * (1 - 3021 * (rho 3257 * seg5AccX46 rho) * (rho 3256 * seg5AccY46 rho)) =
          (-1) * (rho 3257 * seg5AccX46 rho) - rho 3256 * seg5AccY46 rho +
            (seg5AccY46 rho - seg5AccX46 rho * (-1)) * (rho 3256 + rho 3257) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3263 * (1 - rho 3261) = rho 3258 - rho 3259 - rho 3260 := ha5
        _ = (-1) * rho 3259 - rho 3260 + (seg5AccY46 rho - seg5AccX46 rho * (-1)) * (rho 3256 + rho 3257) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX47 rho = seg5AccX46 rho - Bool.toZMod bit * (seg5AccX46 rho - rho 3262) := by
      have hd : rho 3264 = Bool.toZMod bit * (rho 3262 - seg5AccX46 rho) := by
        rw [← hbit]
        unfold seg5AccX46
        linear_combination -r3569
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY47 rho = seg5AccY46 rho - Bool.toZMod bit * (seg5AccY46 rho - rho 3263) := by
      have hd : rho 3265 = Bool.toZMod bit * (rho 3263 - seg5AccY46 rho) := by
        rw [← hbit]
        unfold seg5AccY46
        linear_combination -r3570
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3256 * rho 3257 = rho 3266 := by linear_combination r3571
    have hd1 : rho 3256 * rho 3256 = rho 3267 := by linear_combination r3572
    have hd2 : rho 3257 * rho 3257 = rho 3268 := by linear_combination r3573
    have hd3 : rho 3269 * (rho 3257 * rho 3257 + rho 3256 * rho 3256 * (-1)) = 2 * (rho 3256 * rho 3257) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 3270 * (2 - (rho 3257 * rho 3257 + rho 3256 * rho 3256 * (-1))) = rho 3257 * rho 3257 - rho 3256 * rho 3256 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX46 rho : Seg5.F), (seg5AccY46 rho : Seg5.F)⟩
      ⟨(rho 3256 : Seg5.F), (rho 3257 : Seg5.F)⟩
      ⟨(rho 3262 : Seg5.F), (rho 3263 : Seg5.F)⟩
      ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩
      ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg5_rows47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3576 rho ∧ Seg5.relationRow3577 rho ∧ Seg5.relationRow3578 rho ∧ Seg5.relationRow3579 rho ∧ Seg5.relationRow3580 rho ∧ Seg5.relationRow3581 rho ∧ Seg5.relationRow3582 rho ∧ Seg5.relationRow3583 rho ∧ Seg5.relationRow3584 rho ∧ Seg5.relationRow3585 rho ∧ Seg5.relationRow3586 rho ∧ Seg5.relationRow3587 rho ∧ Seg5.relationRow3588 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩

theorem seg5_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2462 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩
        ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩
        ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩
        ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩ := by
  obtain ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩ := seg5_rows47 rho h
  unfold Seg5.relationRow3576 at r3576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3576
  unfold Seg5.relationRow3577 at r3577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577
  unfold Seg5.relationRow3578 at r3578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3578
  unfold Seg5.relationRow3579 at r3579
  unfold Seg5.relationRow3580 at r3580
  unfold Seg5.relationRow3581 at r3581
  unfold Seg5.relationRow3582 at r3582
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3582
  unfold Seg5.relationRow3583 at r3583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3583
  unfold Seg5.relationRow3584 at r3584
  unfold Seg5.relationRow3585 at r3585
  unfold Seg5.relationRow3586 at r3586
  unfold Seg5.relationRow3587 at r3587
  unfold Seg5.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 2462 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩
        ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩
        ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩
        ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩ := by
    have hnextx : seg5AccX48 rho = seg5AccX47 rho + rho 3277 := by
      unfold seg5AccX48 seg5AccX47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 47]
      ring
    have hnexty : seg5AccY48 rho = seg5AccY47 rho + rho 3278 := by
      unfold seg5AccY48 seg5AccY47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 47]
      ring
    have ha0 : (rho 3269 + rho 3270) * (seg5AccX47 rho + seg5AccY47 rho) = rho 3271 := by
      unfold seg5AccX47 seg5AccY47
      linear_combination r3576
    have ha1 : rho 3270 * seg5AccX47 rho = rho 3272 := by
      unfold seg5AccX47
      linear_combination r3577
    have ha2 : rho 3269 * seg5AccY47 rho = rho 3273 := by
      unfold seg5AccY47
      linear_combination r3578
    have ha3 : 3021 * rho 3272 * rho 3273 = rho 3274 := by
      linear_combination r3579
    have ha4 : rho 3275 * (1 + rho 3274) = rho 3272 + rho 3273 := by
      linear_combination r3580
    have ha5 : rho 3276 * (1 - rho 3274) = rho 3271 - rho 3272 - rho 3273 := by
      linear_combination r3581
    have haddx :
        rho 3275 * (1 + 3021 * (rho 3270 * seg5AccX47 rho) * (rho 3269 * seg5AccY47 rho)) =
          rho 3270 * seg5AccX47 rho + rho 3269 * seg5AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3276 * (1 - 3021 * (rho 3270 * seg5AccX47 rho) * (rho 3269 * seg5AccY47 rho)) =
          (-1) * (rho 3270 * seg5AccX47 rho) - rho 3269 * seg5AccY47 rho +
            (seg5AccY47 rho - seg5AccX47 rho * (-1)) * (rho 3269 + rho 3270) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3276 * (1 - rho 3274) = rho 3271 - rho 3272 - rho 3273 := ha5
        _ = (-1) * rho 3272 - rho 3273 + (seg5AccY47 rho - seg5AccX47 rho * (-1)) * (rho 3269 + rho 3270) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX48 rho = seg5AccX47 rho - Bool.toZMod bit * (seg5AccX47 rho - rho 3275) := by
      have hd : rho 3277 = Bool.toZMod bit * (rho 3275 - seg5AccX47 rho) := by
        rw [← hbit]
        unfold seg5AccX47
        linear_combination -r3582
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY48 rho = seg5AccY47 rho - Bool.toZMod bit * (seg5AccY47 rho - rho 3276) := by
      have hd : rho 3278 = Bool.toZMod bit * (rho 3276 - seg5AccY47 rho) := by
        rw [← hbit]
        unfold seg5AccY47
        linear_combination -r3583
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3269 * rho 3270 = rho 3279 := by linear_combination r3584
    have hd1 : rho 3269 * rho 3269 = rho 3280 := by linear_combination r3585
    have hd2 : rho 3270 * rho 3270 = rho 3281 := by linear_combination r3586
    have hd3 : rho 3282 * (rho 3270 * rho 3270 + rho 3269 * rho 3269 * (-1)) = 2 * (rho 3269 * rho 3270) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 3283 * (2 - (rho 3270 * rho 3270 + rho 3269 * rho 3269 * (-1))) = rho 3270 * rho 3270 - rho 3269 * rho 3269 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX47 rho : Seg5.F), (seg5AccY47 rho : Seg5.F)⟩
      ⟨(rho 3269 : Seg5.F), (rho 3270 : Seg5.F)⟩
      ⟨(rho 3275 : Seg5.F), (rho 3276 : Seg5.F)⟩
      ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩
      ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg5_rows48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3589 rho ∧ Seg5.relationRow3590 rho ∧ Seg5.relationRow3591 rho ∧ Seg5.relationRow3592 rho ∧ Seg5.relationRow3593 rho ∧ Seg5.relationRow3594 rho ∧ Seg5.relationRow3595 rho ∧ Seg5.relationRow3596 rho ∧ Seg5.relationRow3597 rho ∧ Seg5.relationRow3598 rho ∧ Seg5.relationRow3599 rho ∧ Seg5.relationRow3600 rho ∧ Seg5.relationRow3601 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩

theorem seg5_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2463 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩
        ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩
        ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩
        ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩ := by
  obtain ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩ := seg5_rows48 rho h
  unfold Seg5.relationRow3589 at r3589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3589
  unfold Seg5.relationRow3590 at r3590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590
  unfold Seg5.relationRow3591 at r3591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3591
  unfold Seg5.relationRow3592 at r3592
  unfold Seg5.relationRow3593 at r3593
  unfold Seg5.relationRow3594 at r3594
  unfold Seg5.relationRow3595 at r3595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3595
  unfold Seg5.relationRow3596 at r3596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3596
  unfold Seg5.relationRow3597 at r3597
  unfold Seg5.relationRow3598 at r3598
  unfold Seg5.relationRow3599 at r3599
  unfold Seg5.relationRow3600 at r3600
  unfold Seg5.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 2463 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩
        ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩
        ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩
        ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩ := by
    have hnextx : seg5AccX49 rho = seg5AccX48 rho + rho 3290 := by
      unfold seg5AccX49 seg5AccX48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 48]
      ring
    have hnexty : seg5AccY49 rho = seg5AccY48 rho + rho 3291 := by
      unfold seg5AccY49 seg5AccY48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 48]
      ring
    have ha0 : (rho 3282 + rho 3283) * (seg5AccX48 rho + seg5AccY48 rho) = rho 3284 := by
      unfold seg5AccX48 seg5AccY48
      linear_combination r3589
    have ha1 : rho 3283 * seg5AccX48 rho = rho 3285 := by
      unfold seg5AccX48
      linear_combination r3590
    have ha2 : rho 3282 * seg5AccY48 rho = rho 3286 := by
      unfold seg5AccY48
      linear_combination r3591
    have ha3 : 3021 * rho 3285 * rho 3286 = rho 3287 := by
      linear_combination r3592
    have ha4 : rho 3288 * (1 + rho 3287) = rho 3285 + rho 3286 := by
      linear_combination r3593
    have ha5 : rho 3289 * (1 - rho 3287) = rho 3284 - rho 3285 - rho 3286 := by
      linear_combination r3594
    have haddx :
        rho 3288 * (1 + 3021 * (rho 3283 * seg5AccX48 rho) * (rho 3282 * seg5AccY48 rho)) =
          rho 3283 * seg5AccX48 rho + rho 3282 * seg5AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3289 * (1 - 3021 * (rho 3283 * seg5AccX48 rho) * (rho 3282 * seg5AccY48 rho)) =
          (-1) * (rho 3283 * seg5AccX48 rho) - rho 3282 * seg5AccY48 rho +
            (seg5AccY48 rho - seg5AccX48 rho * (-1)) * (rho 3282 + rho 3283) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3289 * (1 - rho 3287) = rho 3284 - rho 3285 - rho 3286 := ha5
        _ = (-1) * rho 3285 - rho 3286 + (seg5AccY48 rho - seg5AccX48 rho * (-1)) * (rho 3282 + rho 3283) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX49 rho = seg5AccX48 rho - Bool.toZMod bit * (seg5AccX48 rho - rho 3288) := by
      have hd : rho 3290 = Bool.toZMod bit * (rho 3288 - seg5AccX48 rho) := by
        rw [← hbit]
        unfold seg5AccX48
        linear_combination -r3595
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY49 rho = seg5AccY48 rho - Bool.toZMod bit * (seg5AccY48 rho - rho 3289) := by
      have hd : rho 3291 = Bool.toZMod bit * (rho 3289 - seg5AccY48 rho) := by
        rw [← hbit]
        unfold seg5AccY48
        linear_combination -r3596
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3282 * rho 3283 = rho 3292 := by linear_combination r3597
    have hd1 : rho 3282 * rho 3282 = rho 3293 := by linear_combination r3598
    have hd2 : rho 3283 * rho 3283 = rho 3294 := by linear_combination r3599
    have hd3 : rho 3295 * (rho 3283 * rho 3283 + rho 3282 * rho 3282 * (-1)) = 2 * (rho 3282 * rho 3283) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 3296 * (2 - (rho 3283 * rho 3283 + rho 3282 * rho 3282 * (-1))) = rho 3283 * rho 3283 - rho 3282 * rho 3282 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX48 rho : Seg5.F), (seg5AccY48 rho : Seg5.F)⟩
      ⟨(rho 3282 : Seg5.F), (rho 3283 : Seg5.F)⟩
      ⟨(rho 3288 : Seg5.F), (rho 3289 : Seg5.F)⟩
      ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩
      ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg5_rows49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3602 rho ∧ Seg5.relationRow3603 rho ∧ Seg5.relationRow3604 rho ∧ Seg5.relationRow3605 rho ∧ Seg5.relationRow3606 rho ∧ Seg5.relationRow3607 rho ∧ Seg5.relationRow3608 rho ∧ Seg5.relationRow3609 rho ∧ Seg5.relationRow3610 rho ∧ Seg5.relationRow3611 rho ∧ Seg5.relationRow3612 rho ∧ Seg5.relationRow3613 rho ∧ Seg5.relationRow3614 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩

theorem seg5_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2464 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩
        ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩
        ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩
        ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩ := by
  obtain ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩ := seg5_rows49 rho h
  unfold Seg5.relationRow3602 at r3602
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3602
  unfold Seg5.relationRow3603 at r3603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603
  unfold Seg5.relationRow3604 at r3604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3604
  unfold Seg5.relationRow3605 at r3605
  unfold Seg5.relationRow3606 at r3606
  unfold Seg5.relationRow3607 at r3607
  unfold Seg5.relationRow3608 at r3608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3608
  unfold Seg5.relationRow3609 at r3609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3609
  unfold Seg5.relationRow3610 at r3610
  unfold Seg5.relationRow3611 at r3611
  unfold Seg5.relationRow3612 at r3612
  unfold Seg5.relationRow3613 at r3613
  unfold Seg5.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 2464 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩
        ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩
        ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩
        ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩ := by
    have hnextx : seg5AccX50 rho = seg5AccX49 rho + rho 3303 := by
      unfold seg5AccX50 seg5AccX49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 49]
      ring
    have hnexty : seg5AccY50 rho = seg5AccY49 rho + rho 3304 := by
      unfold seg5AccY50 seg5AccY49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 49]
      ring
    have ha0 : (rho 3295 + rho 3296) * (seg5AccX49 rho + seg5AccY49 rho) = rho 3297 := by
      unfold seg5AccX49 seg5AccY49
      linear_combination r3602
    have ha1 : rho 3296 * seg5AccX49 rho = rho 3298 := by
      unfold seg5AccX49
      linear_combination r3603
    have ha2 : rho 3295 * seg5AccY49 rho = rho 3299 := by
      unfold seg5AccY49
      linear_combination r3604
    have ha3 : 3021 * rho 3298 * rho 3299 = rho 3300 := by
      linear_combination r3605
    have ha4 : rho 3301 * (1 + rho 3300) = rho 3298 + rho 3299 := by
      linear_combination r3606
    have ha5 : rho 3302 * (1 - rho 3300) = rho 3297 - rho 3298 - rho 3299 := by
      linear_combination r3607
    have haddx :
        rho 3301 * (1 + 3021 * (rho 3296 * seg5AccX49 rho) * (rho 3295 * seg5AccY49 rho)) =
          rho 3296 * seg5AccX49 rho + rho 3295 * seg5AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3302 * (1 - 3021 * (rho 3296 * seg5AccX49 rho) * (rho 3295 * seg5AccY49 rho)) =
          (-1) * (rho 3296 * seg5AccX49 rho) - rho 3295 * seg5AccY49 rho +
            (seg5AccY49 rho - seg5AccX49 rho * (-1)) * (rho 3295 + rho 3296) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3302 * (1 - rho 3300) = rho 3297 - rho 3298 - rho 3299 := ha5
        _ = (-1) * rho 3298 - rho 3299 + (seg5AccY49 rho - seg5AccX49 rho * (-1)) * (rho 3295 + rho 3296) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX50 rho = seg5AccX49 rho - Bool.toZMod bit * (seg5AccX49 rho - rho 3301) := by
      have hd : rho 3303 = Bool.toZMod bit * (rho 3301 - seg5AccX49 rho) := by
        rw [← hbit]
        unfold seg5AccX49
        linear_combination -r3608
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY50 rho = seg5AccY49 rho - Bool.toZMod bit * (seg5AccY49 rho - rho 3302) := by
      have hd : rho 3304 = Bool.toZMod bit * (rho 3302 - seg5AccY49 rho) := by
        rw [← hbit]
        unfold seg5AccY49
        linear_combination -r3609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3295 * rho 3296 = rho 3305 := by linear_combination r3610
    have hd1 : rho 3295 * rho 3295 = rho 3306 := by linear_combination r3611
    have hd2 : rho 3296 * rho 3296 = rho 3307 := by linear_combination r3612
    have hd3 : rho 3308 * (rho 3296 * rho 3296 + rho 3295 * rho 3295 * (-1)) = 2 * (rho 3295 * rho 3296) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 3309 * (2 - (rho 3296 * rho 3296 + rho 3295 * rho 3295 * (-1))) = rho 3296 * rho 3296 - rho 3295 * rho 3295 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX49 rho : Seg5.F), (seg5AccY49 rho : Seg5.F)⟩
      ⟨(rho 3295 : Seg5.F), (rho 3296 : Seg5.F)⟩
      ⟨(rho 3301 : Seg5.F), (rho 3302 : Seg5.F)⟩
      ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩
      ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg5_rows50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3615 rho ∧ Seg5.relationRow3616 rho ∧ Seg5.relationRow3617 rho ∧ Seg5.relationRow3618 rho ∧ Seg5.relationRow3619 rho ∧ Seg5.relationRow3620 rho ∧ Seg5.relationRow3621 rho ∧ Seg5.relationRow3622 rho ∧ Seg5.relationRow3623 rho ∧ Seg5.relationRow3624 rho ∧ Seg5.relationRow3625 rho ∧ Seg5.relationRow3626 rho ∧ Seg5.relationRow3627 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩

theorem seg5_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2465 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩
        ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩
        ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩
        ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩ := by
  obtain ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩ := seg5_rows50 rho h
  unfold Seg5.relationRow3615 at r3615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3615
  unfold Seg5.relationRow3616 at r3616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616
  unfold Seg5.relationRow3617 at r3617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3617
  unfold Seg5.relationRow3618 at r3618
  unfold Seg5.relationRow3619 at r3619
  unfold Seg5.relationRow3620 at r3620
  unfold Seg5.relationRow3621 at r3621
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3621
  unfold Seg5.relationRow3622 at r3622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3622
  unfold Seg5.relationRow3623 at r3623
  unfold Seg5.relationRow3624 at r3624
  unfold Seg5.relationRow3625 at r3625
  unfold Seg5.relationRow3626 at r3626
  unfold Seg5.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 2465 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩
        ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩
        ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩
        ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩ := by
    have hnextx : seg5AccX51 rho = seg5AccX50 rho + rho 3316 := by
      unfold seg5AccX51 seg5AccX50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 50]
      ring
    have hnexty : seg5AccY51 rho = seg5AccY50 rho + rho 3317 := by
      unfold seg5AccY51 seg5AccY50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 50]
      ring
    have ha0 : (rho 3308 + rho 3309) * (seg5AccX50 rho + seg5AccY50 rho) = rho 3310 := by
      unfold seg5AccX50 seg5AccY50
      linear_combination r3615
    have ha1 : rho 3309 * seg5AccX50 rho = rho 3311 := by
      unfold seg5AccX50
      linear_combination r3616
    have ha2 : rho 3308 * seg5AccY50 rho = rho 3312 := by
      unfold seg5AccY50
      linear_combination r3617
    have ha3 : 3021 * rho 3311 * rho 3312 = rho 3313 := by
      linear_combination r3618
    have ha4 : rho 3314 * (1 + rho 3313) = rho 3311 + rho 3312 := by
      linear_combination r3619
    have ha5 : rho 3315 * (1 - rho 3313) = rho 3310 - rho 3311 - rho 3312 := by
      linear_combination r3620
    have haddx :
        rho 3314 * (1 + 3021 * (rho 3309 * seg5AccX50 rho) * (rho 3308 * seg5AccY50 rho)) =
          rho 3309 * seg5AccX50 rho + rho 3308 * seg5AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3315 * (1 - 3021 * (rho 3309 * seg5AccX50 rho) * (rho 3308 * seg5AccY50 rho)) =
          (-1) * (rho 3309 * seg5AccX50 rho) - rho 3308 * seg5AccY50 rho +
            (seg5AccY50 rho - seg5AccX50 rho * (-1)) * (rho 3308 + rho 3309) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3315 * (1 - rho 3313) = rho 3310 - rho 3311 - rho 3312 := ha5
        _ = (-1) * rho 3311 - rho 3312 + (seg5AccY50 rho - seg5AccX50 rho * (-1)) * (rho 3308 + rho 3309) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX51 rho = seg5AccX50 rho - Bool.toZMod bit * (seg5AccX50 rho - rho 3314) := by
      have hd : rho 3316 = Bool.toZMod bit * (rho 3314 - seg5AccX50 rho) := by
        rw [← hbit]
        unfold seg5AccX50
        linear_combination -r3621
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY51 rho = seg5AccY50 rho - Bool.toZMod bit * (seg5AccY50 rho - rho 3315) := by
      have hd : rho 3317 = Bool.toZMod bit * (rho 3315 - seg5AccY50 rho) := by
        rw [← hbit]
        unfold seg5AccY50
        linear_combination -r3622
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3308 * rho 3309 = rho 3318 := by linear_combination r3623
    have hd1 : rho 3308 * rho 3308 = rho 3319 := by linear_combination r3624
    have hd2 : rho 3309 * rho 3309 = rho 3320 := by linear_combination r3625
    have hd3 : rho 3321 * (rho 3309 * rho 3309 + rho 3308 * rho 3308 * (-1)) = 2 * (rho 3308 * rho 3309) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 3322 * (2 - (rho 3309 * rho 3309 + rho 3308 * rho 3308 * (-1))) = rho 3309 * rho 3309 - rho 3308 * rho 3308 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX50 rho : Seg5.F), (seg5AccY50 rho : Seg5.F)⟩
      ⟨(rho 3308 : Seg5.F), (rho 3309 : Seg5.F)⟩
      ⟨(rho 3314 : Seg5.F), (rho 3315 : Seg5.F)⟩
      ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩
      ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg5_rows51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3628 rho ∧ Seg5.relationRow3629 rho ∧ Seg5.relationRow3630 rho ∧ Seg5.relationRow3631 rho ∧ Seg5.relationRow3632 rho ∧ Seg5.relationRow3633 rho ∧ Seg5.relationRow3634 rho ∧ Seg5.relationRow3635 rho ∧ Seg5.relationRow3636 rho ∧ Seg5.relationRow3637 rho ∧ Seg5.relationRow3638 rho ∧ Seg5.relationRow3639 rho ∧ Seg5.relationRow3640 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩

theorem seg5_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2466 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩
        ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩
        ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩
        ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩ := by
  obtain ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩ := seg5_rows51 rho h
  unfold Seg5.relationRow3628 at r3628
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3628
  unfold Seg5.relationRow3629 at r3629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629
  unfold Seg5.relationRow3630 at r3630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3630
  unfold Seg5.relationRow3631 at r3631
  unfold Seg5.relationRow3632 at r3632
  unfold Seg5.relationRow3633 at r3633
  unfold Seg5.relationRow3634 at r3634
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3634
  unfold Seg5.relationRow3635 at r3635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3635
  unfold Seg5.relationRow3636 at r3636
  unfold Seg5.relationRow3637 at r3637
  unfold Seg5.relationRow3638 at r3638
  unfold Seg5.relationRow3639 at r3639
  unfold Seg5.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 2466 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩
        ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩
        ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩
        ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩ := by
    have hnextx : seg5AccX52 rho = seg5AccX51 rho + rho 3329 := by
      unfold seg5AccX52 seg5AccX51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 51]
      ring
    have hnexty : seg5AccY52 rho = seg5AccY51 rho + rho 3330 := by
      unfold seg5AccY52 seg5AccY51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 51]
      ring
    have ha0 : (rho 3321 + rho 3322) * (seg5AccX51 rho + seg5AccY51 rho) = rho 3323 := by
      unfold seg5AccX51 seg5AccY51
      linear_combination r3628
    have ha1 : rho 3322 * seg5AccX51 rho = rho 3324 := by
      unfold seg5AccX51
      linear_combination r3629
    have ha2 : rho 3321 * seg5AccY51 rho = rho 3325 := by
      unfold seg5AccY51
      linear_combination r3630
    have ha3 : 3021 * rho 3324 * rho 3325 = rho 3326 := by
      linear_combination r3631
    have ha4 : rho 3327 * (1 + rho 3326) = rho 3324 + rho 3325 := by
      linear_combination r3632
    have ha5 : rho 3328 * (1 - rho 3326) = rho 3323 - rho 3324 - rho 3325 := by
      linear_combination r3633
    have haddx :
        rho 3327 * (1 + 3021 * (rho 3322 * seg5AccX51 rho) * (rho 3321 * seg5AccY51 rho)) =
          rho 3322 * seg5AccX51 rho + rho 3321 * seg5AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3328 * (1 - 3021 * (rho 3322 * seg5AccX51 rho) * (rho 3321 * seg5AccY51 rho)) =
          (-1) * (rho 3322 * seg5AccX51 rho) - rho 3321 * seg5AccY51 rho +
            (seg5AccY51 rho - seg5AccX51 rho * (-1)) * (rho 3321 + rho 3322) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3328 * (1 - rho 3326) = rho 3323 - rho 3324 - rho 3325 := ha5
        _ = (-1) * rho 3324 - rho 3325 + (seg5AccY51 rho - seg5AccX51 rho * (-1)) * (rho 3321 + rho 3322) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX52 rho = seg5AccX51 rho - Bool.toZMod bit * (seg5AccX51 rho - rho 3327) := by
      have hd : rho 3329 = Bool.toZMod bit * (rho 3327 - seg5AccX51 rho) := by
        rw [← hbit]
        unfold seg5AccX51
        linear_combination -r3634
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY52 rho = seg5AccY51 rho - Bool.toZMod bit * (seg5AccY51 rho - rho 3328) := by
      have hd : rho 3330 = Bool.toZMod bit * (rho 3328 - seg5AccY51 rho) := by
        rw [← hbit]
        unfold seg5AccY51
        linear_combination -r3635
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3321 * rho 3322 = rho 3331 := by linear_combination r3636
    have hd1 : rho 3321 * rho 3321 = rho 3332 := by linear_combination r3637
    have hd2 : rho 3322 * rho 3322 = rho 3333 := by linear_combination r3638
    have hd3 : rho 3334 * (rho 3322 * rho 3322 + rho 3321 * rho 3321 * (-1)) = 2 * (rho 3321 * rho 3322) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 3335 * (2 - (rho 3322 * rho 3322 + rho 3321 * rho 3321 * (-1))) = rho 3322 * rho 3322 - rho 3321 * rho 3321 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX51 rho : Seg5.F), (seg5AccY51 rho : Seg5.F)⟩
      ⟨(rho 3321 : Seg5.F), (rho 3322 : Seg5.F)⟩
      ⟨(rho 3327 : Seg5.F), (rho 3328 : Seg5.F)⟩
      ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩
      ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg5_rows52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3641 rho ∧ Seg5.relationRow3642 rho ∧ Seg5.relationRow3643 rho ∧ Seg5.relationRow3644 rho ∧ Seg5.relationRow3645 rho ∧ Seg5.relationRow3646 rho ∧ Seg5.relationRow3647 rho ∧ Seg5.relationRow3648 rho ∧ Seg5.relationRow3649 rho ∧ Seg5.relationRow3650 rho ∧ Seg5.relationRow3651 rho ∧ Seg5.relationRow3652 rho ∧ Seg5.relationRow3653 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩

theorem seg5_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2467 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩
        ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩
        ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩
        ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩ := by
  obtain ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩ := seg5_rows52 rho h
  unfold Seg5.relationRow3641 at r3641
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3641
  unfold Seg5.relationRow3642 at r3642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642
  unfold Seg5.relationRow3643 at r3643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3643
  unfold Seg5.relationRow3644 at r3644
  unfold Seg5.relationRow3645 at r3645
  unfold Seg5.relationRow3646 at r3646
  unfold Seg5.relationRow3647 at r3647
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3647
  unfold Seg5.relationRow3648 at r3648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3648
  unfold Seg5.relationRow3649 at r3649
  unfold Seg5.relationRow3650 at r3650
  unfold Seg5.relationRow3651 at r3651
  unfold Seg5.relationRow3652 at r3652
  unfold Seg5.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 2467 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩
        ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩
        ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩
        ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩ := by
    have hnextx : seg5AccX53 rho = seg5AccX52 rho + rho 3342 := by
      unfold seg5AccX53 seg5AccX52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 52]
      ring
    have hnexty : seg5AccY53 rho = seg5AccY52 rho + rho 3343 := by
      unfold seg5AccY53 seg5AccY52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 52]
      ring
    have ha0 : (rho 3334 + rho 3335) * (seg5AccX52 rho + seg5AccY52 rho) = rho 3336 := by
      unfold seg5AccX52 seg5AccY52
      linear_combination r3641
    have ha1 : rho 3335 * seg5AccX52 rho = rho 3337 := by
      unfold seg5AccX52
      linear_combination r3642
    have ha2 : rho 3334 * seg5AccY52 rho = rho 3338 := by
      unfold seg5AccY52
      linear_combination r3643
    have ha3 : 3021 * rho 3337 * rho 3338 = rho 3339 := by
      linear_combination r3644
    have ha4 : rho 3340 * (1 + rho 3339) = rho 3337 + rho 3338 := by
      linear_combination r3645
    have ha5 : rho 3341 * (1 - rho 3339) = rho 3336 - rho 3337 - rho 3338 := by
      linear_combination r3646
    have haddx :
        rho 3340 * (1 + 3021 * (rho 3335 * seg5AccX52 rho) * (rho 3334 * seg5AccY52 rho)) =
          rho 3335 * seg5AccX52 rho + rho 3334 * seg5AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3341 * (1 - 3021 * (rho 3335 * seg5AccX52 rho) * (rho 3334 * seg5AccY52 rho)) =
          (-1) * (rho 3335 * seg5AccX52 rho) - rho 3334 * seg5AccY52 rho +
            (seg5AccY52 rho - seg5AccX52 rho * (-1)) * (rho 3334 + rho 3335) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3341 * (1 - rho 3339) = rho 3336 - rho 3337 - rho 3338 := ha5
        _ = (-1) * rho 3337 - rho 3338 + (seg5AccY52 rho - seg5AccX52 rho * (-1)) * (rho 3334 + rho 3335) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX53 rho = seg5AccX52 rho - Bool.toZMod bit * (seg5AccX52 rho - rho 3340) := by
      have hd : rho 3342 = Bool.toZMod bit * (rho 3340 - seg5AccX52 rho) := by
        rw [← hbit]
        unfold seg5AccX52
        linear_combination -r3647
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY53 rho = seg5AccY52 rho - Bool.toZMod bit * (seg5AccY52 rho - rho 3341) := by
      have hd : rho 3343 = Bool.toZMod bit * (rho 3341 - seg5AccY52 rho) := by
        rw [← hbit]
        unfold seg5AccY52
        linear_combination -r3648
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3334 * rho 3335 = rho 3344 := by linear_combination r3649
    have hd1 : rho 3334 * rho 3334 = rho 3345 := by linear_combination r3650
    have hd2 : rho 3335 * rho 3335 = rho 3346 := by linear_combination r3651
    have hd3 : rho 3347 * (rho 3335 * rho 3335 + rho 3334 * rho 3334 * (-1)) = 2 * (rho 3334 * rho 3335) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 3348 * (2 - (rho 3335 * rho 3335 + rho 3334 * rho 3334 * (-1))) = rho 3335 * rho 3335 - rho 3334 * rho 3334 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX52 rho : Seg5.F), (seg5AccY52 rho : Seg5.F)⟩
      ⟨(rho 3334 : Seg5.F), (rho 3335 : Seg5.F)⟩
      ⟨(rho 3340 : Seg5.F), (rho 3341 : Seg5.F)⟩
      ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩
      ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg5_rows53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3654 rho ∧ Seg5.relationRow3655 rho ∧ Seg5.relationRow3656 rho ∧ Seg5.relationRow3657 rho ∧ Seg5.relationRow3658 rho ∧ Seg5.relationRow3659 rho ∧ Seg5.relationRow3660 rho ∧ Seg5.relationRow3661 rho ∧ Seg5.relationRow3662 rho ∧ Seg5.relationRow3663 rho ∧ Seg5.relationRow3664 rho ∧ Seg5.relationRow3665 rho ∧ Seg5.relationRow3666 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩

theorem seg5_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2468 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩
        ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩
        ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩
        ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩ := by
  obtain ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩ := seg5_rows53 rho h
  unfold Seg5.relationRow3654 at r3654
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3654
  unfold Seg5.relationRow3655 at r3655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655
  unfold Seg5.relationRow3656 at r3656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3656
  unfold Seg5.relationRow3657 at r3657
  unfold Seg5.relationRow3658 at r3658
  unfold Seg5.relationRow3659 at r3659
  unfold Seg5.relationRow3660 at r3660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3660
  unfold Seg5.relationRow3661 at r3661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3661
  unfold Seg5.relationRow3662 at r3662
  unfold Seg5.relationRow3663 at r3663
  unfold Seg5.relationRow3664 at r3664
  unfold Seg5.relationRow3665 at r3665
  unfold Seg5.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 2468 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩
        ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩
        ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩
        ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩ := by
    have hnextx : seg5AccX54 rho = seg5AccX53 rho + rho 3355 := by
      unfold seg5AccX54 seg5AccX53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 53]
      ring
    have hnexty : seg5AccY54 rho = seg5AccY53 rho + rho 3356 := by
      unfold seg5AccY54 seg5AccY53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 53]
      ring
    have ha0 : (rho 3347 + rho 3348) * (seg5AccX53 rho + seg5AccY53 rho) = rho 3349 := by
      unfold seg5AccX53 seg5AccY53
      linear_combination r3654
    have ha1 : rho 3348 * seg5AccX53 rho = rho 3350 := by
      unfold seg5AccX53
      linear_combination r3655
    have ha2 : rho 3347 * seg5AccY53 rho = rho 3351 := by
      unfold seg5AccY53
      linear_combination r3656
    have ha3 : 3021 * rho 3350 * rho 3351 = rho 3352 := by
      linear_combination r3657
    have ha4 : rho 3353 * (1 + rho 3352) = rho 3350 + rho 3351 := by
      linear_combination r3658
    have ha5 : rho 3354 * (1 - rho 3352) = rho 3349 - rho 3350 - rho 3351 := by
      linear_combination r3659
    have haddx :
        rho 3353 * (1 + 3021 * (rho 3348 * seg5AccX53 rho) * (rho 3347 * seg5AccY53 rho)) =
          rho 3348 * seg5AccX53 rho + rho 3347 * seg5AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3354 * (1 - 3021 * (rho 3348 * seg5AccX53 rho) * (rho 3347 * seg5AccY53 rho)) =
          (-1) * (rho 3348 * seg5AccX53 rho) - rho 3347 * seg5AccY53 rho +
            (seg5AccY53 rho - seg5AccX53 rho * (-1)) * (rho 3347 + rho 3348) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3354 * (1 - rho 3352) = rho 3349 - rho 3350 - rho 3351 := ha5
        _ = (-1) * rho 3350 - rho 3351 + (seg5AccY53 rho - seg5AccX53 rho * (-1)) * (rho 3347 + rho 3348) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX54 rho = seg5AccX53 rho - Bool.toZMod bit * (seg5AccX53 rho - rho 3353) := by
      have hd : rho 3355 = Bool.toZMod bit * (rho 3353 - seg5AccX53 rho) := by
        rw [← hbit]
        unfold seg5AccX53
        linear_combination -r3660
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY54 rho = seg5AccY53 rho - Bool.toZMod bit * (seg5AccY53 rho - rho 3354) := by
      have hd : rho 3356 = Bool.toZMod bit * (rho 3354 - seg5AccY53 rho) := by
        rw [← hbit]
        unfold seg5AccY53
        linear_combination -r3661
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3347 * rho 3348 = rho 3357 := by linear_combination r3662
    have hd1 : rho 3347 * rho 3347 = rho 3358 := by linear_combination r3663
    have hd2 : rho 3348 * rho 3348 = rho 3359 := by linear_combination r3664
    have hd3 : rho 3360 * (rho 3348 * rho 3348 + rho 3347 * rho 3347 * (-1)) = 2 * (rho 3347 * rho 3348) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 3361 * (2 - (rho 3348 * rho 3348 + rho 3347 * rho 3347 * (-1))) = rho 3348 * rho 3348 - rho 3347 * rho 3347 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX53 rho : Seg5.F), (seg5AccY53 rho : Seg5.F)⟩
      ⟨(rho 3347 : Seg5.F), (rho 3348 : Seg5.F)⟩
      ⟨(rho 3353 : Seg5.F), (rho 3354 : Seg5.F)⟩
      ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩
      ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg5_rows54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3667 rho ∧ Seg5.relationRow3668 rho ∧ Seg5.relationRow3669 rho ∧ Seg5.relationRow3670 rho ∧ Seg5.relationRow3671 rho ∧ Seg5.relationRow3672 rho ∧ Seg5.relationRow3673 rho ∧ Seg5.relationRow3674 rho ∧ Seg5.relationRow3675 rho ∧ Seg5.relationRow3676 rho ∧ Seg5.relationRow3677 rho ∧ Seg5.relationRow3678 rho ∧ Seg5.relationRow3679 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  exact ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩

theorem seg5_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2469 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩
        ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩
        ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩
        ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩ := by
  obtain ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩ := seg5_rows54 rho h
  unfold Seg5.relationRow3667 at r3667
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3667
  unfold Seg5.relationRow3668 at r3668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668
  unfold Seg5.relationRow3669 at r3669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3669
  unfold Seg5.relationRow3670 at r3670
  unfold Seg5.relationRow3671 at r3671
  unfold Seg5.relationRow3672 at r3672
  unfold Seg5.relationRow3673 at r3673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3673
  unfold Seg5.relationRow3674 at r3674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3674
  unfold Seg5.relationRow3675 at r3675
  unfold Seg5.relationRow3676 at r3676
  unfold Seg5.relationRow3677 at r3677
  unfold Seg5.relationRow3678 at r3678
  unfold Seg5.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 2469 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩
        ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩
        ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩
        ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩ := by
    have hnextx : seg5AccX55 rho = seg5AccX54 rho + rho 3368 := by
      unfold seg5AccX55 seg5AccX54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 54]
      ring
    have hnexty : seg5AccY55 rho = seg5AccY54 rho + rho 3369 := by
      unfold seg5AccY55 seg5AccY54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 54]
      ring
    have ha0 : (rho 3360 + rho 3361) * (seg5AccX54 rho + seg5AccY54 rho) = rho 3362 := by
      unfold seg5AccX54 seg5AccY54
      linear_combination r3667
    have ha1 : rho 3361 * seg5AccX54 rho = rho 3363 := by
      unfold seg5AccX54
      linear_combination r3668
    have ha2 : rho 3360 * seg5AccY54 rho = rho 3364 := by
      unfold seg5AccY54
      linear_combination r3669
    have ha3 : 3021 * rho 3363 * rho 3364 = rho 3365 := by
      linear_combination r3670
    have ha4 : rho 3366 * (1 + rho 3365) = rho 3363 + rho 3364 := by
      linear_combination r3671
    have ha5 : rho 3367 * (1 - rho 3365) = rho 3362 - rho 3363 - rho 3364 := by
      linear_combination r3672
    have haddx :
        rho 3366 * (1 + 3021 * (rho 3361 * seg5AccX54 rho) * (rho 3360 * seg5AccY54 rho)) =
          rho 3361 * seg5AccX54 rho + rho 3360 * seg5AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3367 * (1 - 3021 * (rho 3361 * seg5AccX54 rho) * (rho 3360 * seg5AccY54 rho)) =
          (-1) * (rho 3361 * seg5AccX54 rho) - rho 3360 * seg5AccY54 rho +
            (seg5AccY54 rho - seg5AccX54 rho * (-1)) * (rho 3360 + rho 3361) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3367 * (1 - rho 3365) = rho 3362 - rho 3363 - rho 3364 := ha5
        _ = (-1) * rho 3363 - rho 3364 + (seg5AccY54 rho - seg5AccX54 rho * (-1)) * (rho 3360 + rho 3361) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX55 rho = seg5AccX54 rho - Bool.toZMod bit * (seg5AccX54 rho - rho 3366) := by
      have hd : rho 3368 = Bool.toZMod bit * (rho 3366 - seg5AccX54 rho) := by
        rw [← hbit]
        unfold seg5AccX54
        linear_combination -r3673
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY55 rho = seg5AccY54 rho - Bool.toZMod bit * (seg5AccY54 rho - rho 3367) := by
      have hd : rho 3369 = Bool.toZMod bit * (rho 3367 - seg5AccY54 rho) := by
        rw [← hbit]
        unfold seg5AccY54
        linear_combination -r3674
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3360 * rho 3361 = rho 3370 := by linear_combination r3675
    have hd1 : rho 3360 * rho 3360 = rho 3371 := by linear_combination r3676
    have hd2 : rho 3361 * rho 3361 = rho 3372 := by linear_combination r3677
    have hd3 : rho 3373 * (rho 3361 * rho 3361 + rho 3360 * rho 3360 * (-1)) = 2 * (rho 3360 * rho 3361) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 3374 * (2 - (rho 3361 * rho 3361 + rho 3360 * rho 3360 * (-1))) = rho 3361 * rho 3361 - rho 3360 * rho 3360 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX54 rho : Seg5.F), (seg5AccY54 rho : Seg5.F)⟩
      ⟨(rho 3360 : Seg5.F), (rho 3361 : Seg5.F)⟩
      ⟨(rho 3366 : Seg5.F), (rho 3367 : Seg5.F)⟩
      ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩
      ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg5_hstep_c4 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg5_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg5_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg5_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg5_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg5_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg5_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg5_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg5_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg5_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg5_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
