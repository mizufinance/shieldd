import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3285 rho ∧ Seg6.relationRow3286 rho ∧ Seg6.relationRow3287 rho ∧ Seg6.relationRow3288 rho ∧ Seg6.relationRow3289 rho ∧ Seg6.relationRow3290 rho ∧ Seg6.relationRow3291 rho ∧ Seg6.relationRow3292 rho ∧ Seg6.relationRow3293 rho ∧ Seg6.relationRow3294 rho ∧ Seg6.relationRow3295 rho ∧ Seg6.relationRow3296 rho ∧ Seg6.relationRow3297 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297⟩

theorem seg6_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1934 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3682 : Seg6.F), (rho 3683 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩
        ⟨(rho 3682 : Seg6.F), (rho 3683 : Seg6.F)⟩
        ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩
        ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩ := by
  obtain ⟨r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297⟩ := seg6_rows44 rho h
  unfold Seg6.relationRow3285 at r3285
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3285
  unfold Seg6.relationRow3286 at r3286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3286
  unfold Seg6.relationRow3287 at r3287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3287
  unfold Seg6.relationRow3288 at r3288
  unfold Seg6.relationRow3289 at r3289
  unfold Seg6.relationRow3290 at r3290
  unfold Seg6.relationRow3291 at r3291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291
  unfold Seg6.relationRow3292 at r3292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3292
  unfold Seg6.relationRow3293 at r3293
  unfold Seg6.relationRow3294 at r3294
  unfold Seg6.relationRow3295 at r3295
  unfold Seg6.relationRow3296 at r3296
  unfold Seg6.relationRow3297 at r3297
  have hrung44 (bit : Bool) (hbit : rho 1934 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3682 : Seg6.F), (rho 3683 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩
        ⟨(rho 3682 : Seg6.F), (rho 3683 : Seg6.F)⟩
        ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩
        ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩ := by
    have hnextx : seg6AccX45 rho = seg6AccX44 rho + rho 3690 := by
      unfold seg6AccX45 seg6AccX44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 44]
      ring
    have hnexty : seg6AccY45 rho = seg6AccY44 rho + rho 3691 := by
      unfold seg6AccY45 seg6AccY44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 44]
      ring
    have ha0 : (rho 3682 + rho 3683) * (seg6AccX44 rho + seg6AccY44 rho) = rho 3684 := by
      unfold seg6AccX44 seg6AccY44
      linear_combination r3285
    have ha1 : rho 3683 * seg6AccX44 rho = rho 3685 := by
      unfold seg6AccX44
      linear_combination r3286
    have ha2 : rho 3682 * seg6AccY44 rho = rho 3686 := by
      unfold seg6AccY44
      linear_combination r3287
    have ha3 : 3021 * rho 3685 * rho 3686 = rho 3687 := by
      linear_combination r3288
    have ha4 : rho 3688 * (1 + rho 3687) = rho 3685 + rho 3686 := by
      linear_combination r3289
    have ha5 : rho 3689 * (1 - rho 3687) = rho 3684 - rho 3685 - rho 3686 := by
      linear_combination r3290
    have haddx :
        rho 3688 * (1 + 3021 * (rho 3683 * seg6AccX44 rho) * (rho 3682 * seg6AccY44 rho)) =
          rho 3683 * seg6AccX44 rho + rho 3682 * seg6AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3689 * (1 - 3021 * (rho 3683 * seg6AccX44 rho) * (rho 3682 * seg6AccY44 rho)) =
          (-1) * (rho 3683 * seg6AccX44 rho) - rho 3682 * seg6AccY44 rho +
            (seg6AccY44 rho - seg6AccX44 rho * (-1)) * (rho 3682 + rho 3683) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3689 * (1 - rho 3687) = rho 3684 - rho 3685 - rho 3686 := ha5
        _ = (-1) * rho 3685 - rho 3686 + (seg6AccY44 rho - seg6AccX44 rho * (-1)) * (rho 3682 + rho 3683) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX45 rho = seg6AccX44 rho - Bool.toZMod bit * (seg6AccX44 rho - rho 3688) := by
      have hd : rho 3690 = Bool.toZMod bit * (rho 3688 - seg6AccX44 rho) := by
        rw [← hbit]
        unfold seg6AccX44
        linear_combination -r3291
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY45 rho = seg6AccY44 rho - Bool.toZMod bit * (seg6AccY44 rho - rho 3689) := by
      have hd : rho 3691 = Bool.toZMod bit * (rho 3689 - seg6AccY44 rho) := by
        rw [← hbit]
        unfold seg6AccY44
        linear_combination -r3292
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3682 * rho 3683 = rho 3692 := by linear_combination r3293
    have hd1 : rho 3682 * rho 3682 = rho 3693 := by linear_combination r3294
    have hd2 : rho 3683 * rho 3683 = rho 3694 := by linear_combination r3295
    have hd3 : rho 3695 * (rho 3683 * rho 3683 + rho 3682 * rho 3682 * (-1)) = 2 * (rho 3682 * rho 3683) := by
      rw [hd0, hd1, hd2]
      linear_combination r3296
    have hd4 : rho 3696 * (2 - (rho 3683 * rho 3683 + rho 3682 * rho 3682 * (-1))) = rho 3683 * rho 3683 - rho 3682 * rho 3682 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3297
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩
      ⟨(rho 3682 : Seg6.F), (rho 3683 : Seg6.F)⟩
      ⟨(rho 3688 : Seg6.F), (rho 3689 : Seg6.F)⟩
      ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩
      ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg6_rows45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3298 rho ∧ Seg6.relationRow3299 rho ∧ Seg6.relationRow3300 rho ∧ Seg6.relationRow3301 rho ∧ Seg6.relationRow3302 rho ∧ Seg6.relationRow3303 rho ∧ Seg6.relationRow3304 rho ∧ Seg6.relationRow3305 rho ∧ Seg6.relationRow3306 rho ∧ Seg6.relationRow3307 rho ∧ Seg6.relationRow3308 rho ∧ Seg6.relationRow3309 rho ∧ Seg6.relationRow3310 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310⟩

theorem seg6_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1935 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩
        ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩
        ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩
        ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩ := by
  obtain ⟨r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310⟩ := seg6_rows45 rho h
  unfold Seg6.relationRow3298 at r3298
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3298
  unfold Seg6.relationRow3299 at r3299
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3299
  unfold Seg6.relationRow3300 at r3300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3300
  unfold Seg6.relationRow3301 at r3301
  unfold Seg6.relationRow3302 at r3302
  unfold Seg6.relationRow3303 at r3303
  unfold Seg6.relationRow3304 at r3304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304
  unfold Seg6.relationRow3305 at r3305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3305
  unfold Seg6.relationRow3306 at r3306
  unfold Seg6.relationRow3307 at r3307
  unfold Seg6.relationRow3308 at r3308
  unfold Seg6.relationRow3309 at r3309
  unfold Seg6.relationRow3310 at r3310
  have hrung45 (bit : Bool) (hbit : rho 1935 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩
        ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩
        ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩
        ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩ := by
    have hnextx : seg6AccX46 rho = seg6AccX45 rho + rho 3703 := by
      unfold seg6AccX46 seg6AccX45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 45]
      ring
    have hnexty : seg6AccY46 rho = seg6AccY45 rho + rho 3704 := by
      unfold seg6AccY46 seg6AccY45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 45]
      ring
    have ha0 : (rho 3695 + rho 3696) * (seg6AccX45 rho + seg6AccY45 rho) = rho 3697 := by
      unfold seg6AccX45 seg6AccY45
      linear_combination r3298
    have ha1 : rho 3696 * seg6AccX45 rho = rho 3698 := by
      unfold seg6AccX45
      linear_combination r3299
    have ha2 : rho 3695 * seg6AccY45 rho = rho 3699 := by
      unfold seg6AccY45
      linear_combination r3300
    have ha3 : 3021 * rho 3698 * rho 3699 = rho 3700 := by
      linear_combination r3301
    have ha4 : rho 3701 * (1 + rho 3700) = rho 3698 + rho 3699 := by
      linear_combination r3302
    have ha5 : rho 3702 * (1 - rho 3700) = rho 3697 - rho 3698 - rho 3699 := by
      linear_combination r3303
    have haddx :
        rho 3701 * (1 + 3021 * (rho 3696 * seg6AccX45 rho) * (rho 3695 * seg6AccY45 rho)) =
          rho 3696 * seg6AccX45 rho + rho 3695 * seg6AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3702 * (1 - 3021 * (rho 3696 * seg6AccX45 rho) * (rho 3695 * seg6AccY45 rho)) =
          (-1) * (rho 3696 * seg6AccX45 rho) - rho 3695 * seg6AccY45 rho +
            (seg6AccY45 rho - seg6AccX45 rho * (-1)) * (rho 3695 + rho 3696) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3702 * (1 - rho 3700) = rho 3697 - rho 3698 - rho 3699 := ha5
        _ = (-1) * rho 3698 - rho 3699 + (seg6AccY45 rho - seg6AccX45 rho * (-1)) * (rho 3695 + rho 3696) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX46 rho = seg6AccX45 rho - Bool.toZMod bit * (seg6AccX45 rho - rho 3701) := by
      have hd : rho 3703 = Bool.toZMod bit * (rho 3701 - seg6AccX45 rho) := by
        rw [← hbit]
        unfold seg6AccX45
        linear_combination -r3304
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY46 rho = seg6AccY45 rho - Bool.toZMod bit * (seg6AccY45 rho - rho 3702) := by
      have hd : rho 3704 = Bool.toZMod bit * (rho 3702 - seg6AccY45 rho) := by
        rw [← hbit]
        unfold seg6AccY45
        linear_combination -r3305
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3695 * rho 3696 = rho 3705 := by linear_combination r3306
    have hd1 : rho 3695 * rho 3695 = rho 3706 := by linear_combination r3307
    have hd2 : rho 3696 * rho 3696 = rho 3707 := by linear_combination r3308
    have hd3 : rho 3708 * (rho 3696 * rho 3696 + rho 3695 * rho 3695 * (-1)) = 2 * (rho 3695 * rho 3696) := by
      rw [hd0, hd1, hd2]
      linear_combination r3309
    have hd4 : rho 3709 * (2 - (rho 3696 * rho 3696 + rho 3695 * rho 3695 * (-1))) = rho 3696 * rho 3696 - rho 3695 * rho 3695 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3310
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX45 rho : Seg6.F), (seg6AccY45 rho : Seg6.F)⟩
      ⟨(rho 3695 : Seg6.F), (rho 3696 : Seg6.F)⟩
      ⟨(rho 3701 : Seg6.F), (rho 3702 : Seg6.F)⟩
      ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩
      ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg6_rows46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3311 rho ∧ Seg6.relationRow3312 rho ∧ Seg6.relationRow3313 rho ∧ Seg6.relationRow3314 rho ∧ Seg6.relationRow3315 rho ∧ Seg6.relationRow3316 rho ∧ Seg6.relationRow3317 rho ∧ Seg6.relationRow3318 rho ∧ Seg6.relationRow3319 rho ∧ Seg6.relationRow3320 rho ∧ Seg6.relationRow3321 rho ∧ Seg6.relationRow3322 rho ∧ Seg6.relationRow3323 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323⟩

theorem seg6_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1936 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩
        ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩
        ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩
        ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩ := by
  obtain ⟨r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323⟩ := seg6_rows46 rho h
  unfold Seg6.relationRow3311 at r3311
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3311
  unfold Seg6.relationRow3312 at r3312
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3312
  unfold Seg6.relationRow3313 at r3313
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3313
  unfold Seg6.relationRow3314 at r3314
  unfold Seg6.relationRow3315 at r3315
  unfold Seg6.relationRow3316 at r3316
  unfold Seg6.relationRow3317 at r3317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317
  unfold Seg6.relationRow3318 at r3318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3318
  unfold Seg6.relationRow3319 at r3319
  unfold Seg6.relationRow3320 at r3320
  unfold Seg6.relationRow3321 at r3321
  unfold Seg6.relationRow3322 at r3322
  unfold Seg6.relationRow3323 at r3323
  have hrung46 (bit : Bool) (hbit : rho 1936 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩
        ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩
        ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩
        ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩ := by
    have hnextx : seg6AccX47 rho = seg6AccX46 rho + rho 3716 := by
      unfold seg6AccX47 seg6AccX46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 46]
      ring
    have hnexty : seg6AccY47 rho = seg6AccY46 rho + rho 3717 := by
      unfold seg6AccY47 seg6AccY46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 46]
      ring
    have ha0 : (rho 3708 + rho 3709) * (seg6AccX46 rho + seg6AccY46 rho) = rho 3710 := by
      unfold seg6AccX46 seg6AccY46
      linear_combination r3311
    have ha1 : rho 3709 * seg6AccX46 rho = rho 3711 := by
      unfold seg6AccX46
      linear_combination r3312
    have ha2 : rho 3708 * seg6AccY46 rho = rho 3712 := by
      unfold seg6AccY46
      linear_combination r3313
    have ha3 : 3021 * rho 3711 * rho 3712 = rho 3713 := by
      linear_combination r3314
    have ha4 : rho 3714 * (1 + rho 3713) = rho 3711 + rho 3712 := by
      linear_combination r3315
    have ha5 : rho 3715 * (1 - rho 3713) = rho 3710 - rho 3711 - rho 3712 := by
      linear_combination r3316
    have haddx :
        rho 3714 * (1 + 3021 * (rho 3709 * seg6AccX46 rho) * (rho 3708 * seg6AccY46 rho)) =
          rho 3709 * seg6AccX46 rho + rho 3708 * seg6AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3715 * (1 - 3021 * (rho 3709 * seg6AccX46 rho) * (rho 3708 * seg6AccY46 rho)) =
          (-1) * (rho 3709 * seg6AccX46 rho) - rho 3708 * seg6AccY46 rho +
            (seg6AccY46 rho - seg6AccX46 rho * (-1)) * (rho 3708 + rho 3709) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3715 * (1 - rho 3713) = rho 3710 - rho 3711 - rho 3712 := ha5
        _ = (-1) * rho 3711 - rho 3712 + (seg6AccY46 rho - seg6AccX46 rho * (-1)) * (rho 3708 + rho 3709) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX47 rho = seg6AccX46 rho - Bool.toZMod bit * (seg6AccX46 rho - rho 3714) := by
      have hd : rho 3716 = Bool.toZMod bit * (rho 3714 - seg6AccX46 rho) := by
        rw [← hbit]
        unfold seg6AccX46
        linear_combination -r3317
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY47 rho = seg6AccY46 rho - Bool.toZMod bit * (seg6AccY46 rho - rho 3715) := by
      have hd : rho 3717 = Bool.toZMod bit * (rho 3715 - seg6AccY46 rho) := by
        rw [← hbit]
        unfold seg6AccY46
        linear_combination -r3318
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3708 * rho 3709 = rho 3718 := by linear_combination r3319
    have hd1 : rho 3708 * rho 3708 = rho 3719 := by linear_combination r3320
    have hd2 : rho 3709 * rho 3709 = rho 3720 := by linear_combination r3321
    have hd3 : rho 3721 * (rho 3709 * rho 3709 + rho 3708 * rho 3708 * (-1)) = 2 * (rho 3708 * rho 3709) := by
      rw [hd0, hd1, hd2]
      linear_combination r3322
    have hd4 : rho 3722 * (2 - (rho 3709 * rho 3709 + rho 3708 * rho 3708 * (-1))) = rho 3709 * rho 3709 - rho 3708 * rho 3708 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3323
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX46 rho : Seg6.F), (seg6AccY46 rho : Seg6.F)⟩
      ⟨(rho 3708 : Seg6.F), (rho 3709 : Seg6.F)⟩
      ⟨(rho 3714 : Seg6.F), (rho 3715 : Seg6.F)⟩
      ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩
      ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg6_rows47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3324 rho ∧ Seg6.relationRow3325 rho ∧ Seg6.relationRow3326 rho ∧ Seg6.relationRow3327 rho ∧ Seg6.relationRow3328 rho ∧ Seg6.relationRow3329 rho ∧ Seg6.relationRow3330 rho ∧ Seg6.relationRow3331 rho ∧ Seg6.relationRow3332 rho ∧ Seg6.relationRow3333 rho ∧ Seg6.relationRow3334 rho ∧ Seg6.relationRow3335 rho ∧ Seg6.relationRow3336 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336⟩

theorem seg6_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1937 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩
        ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩
        ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩
        ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩ := by
  obtain ⟨r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336⟩ := seg6_rows47 rho h
  unfold Seg6.relationRow3324 at r3324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3324
  unfold Seg6.relationRow3325 at r3325
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3325
  unfold Seg6.relationRow3326 at r3326
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3326
  unfold Seg6.relationRow3327 at r3327
  unfold Seg6.relationRow3328 at r3328
  unfold Seg6.relationRow3329 at r3329
  unfold Seg6.relationRow3330 at r3330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330
  unfold Seg6.relationRow3331 at r3331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3331
  unfold Seg6.relationRow3332 at r3332
  unfold Seg6.relationRow3333 at r3333
  unfold Seg6.relationRow3334 at r3334
  unfold Seg6.relationRow3335 at r3335
  unfold Seg6.relationRow3336 at r3336
  have hrung47 (bit : Bool) (hbit : rho 1937 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩
        ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩
        ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩
        ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩ := by
    have hnextx : seg6AccX48 rho = seg6AccX47 rho + rho 3729 := by
      unfold seg6AccX48 seg6AccX47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 47]
      ring
    have hnexty : seg6AccY48 rho = seg6AccY47 rho + rho 3730 := by
      unfold seg6AccY48 seg6AccY47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 47]
      ring
    have ha0 : (rho 3721 + rho 3722) * (seg6AccX47 rho + seg6AccY47 rho) = rho 3723 := by
      unfold seg6AccX47 seg6AccY47
      linear_combination r3324
    have ha1 : rho 3722 * seg6AccX47 rho = rho 3724 := by
      unfold seg6AccX47
      linear_combination r3325
    have ha2 : rho 3721 * seg6AccY47 rho = rho 3725 := by
      unfold seg6AccY47
      linear_combination r3326
    have ha3 : 3021 * rho 3724 * rho 3725 = rho 3726 := by
      linear_combination r3327
    have ha4 : rho 3727 * (1 + rho 3726) = rho 3724 + rho 3725 := by
      linear_combination r3328
    have ha5 : rho 3728 * (1 - rho 3726) = rho 3723 - rho 3724 - rho 3725 := by
      linear_combination r3329
    have haddx :
        rho 3727 * (1 + 3021 * (rho 3722 * seg6AccX47 rho) * (rho 3721 * seg6AccY47 rho)) =
          rho 3722 * seg6AccX47 rho + rho 3721 * seg6AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3728 * (1 - 3021 * (rho 3722 * seg6AccX47 rho) * (rho 3721 * seg6AccY47 rho)) =
          (-1) * (rho 3722 * seg6AccX47 rho) - rho 3721 * seg6AccY47 rho +
            (seg6AccY47 rho - seg6AccX47 rho * (-1)) * (rho 3721 + rho 3722) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3728 * (1 - rho 3726) = rho 3723 - rho 3724 - rho 3725 := ha5
        _ = (-1) * rho 3724 - rho 3725 + (seg6AccY47 rho - seg6AccX47 rho * (-1)) * (rho 3721 + rho 3722) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX48 rho = seg6AccX47 rho - Bool.toZMod bit * (seg6AccX47 rho - rho 3727) := by
      have hd : rho 3729 = Bool.toZMod bit * (rho 3727 - seg6AccX47 rho) := by
        rw [← hbit]
        unfold seg6AccX47
        linear_combination -r3330
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY48 rho = seg6AccY47 rho - Bool.toZMod bit * (seg6AccY47 rho - rho 3728) := by
      have hd : rho 3730 = Bool.toZMod bit * (rho 3728 - seg6AccY47 rho) := by
        rw [← hbit]
        unfold seg6AccY47
        linear_combination -r3331
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3721 * rho 3722 = rho 3731 := by linear_combination r3332
    have hd1 : rho 3721 * rho 3721 = rho 3732 := by linear_combination r3333
    have hd2 : rho 3722 * rho 3722 = rho 3733 := by linear_combination r3334
    have hd3 : rho 3734 * (rho 3722 * rho 3722 + rho 3721 * rho 3721 * (-1)) = 2 * (rho 3721 * rho 3722) := by
      rw [hd0, hd1, hd2]
      linear_combination r3335
    have hd4 : rho 3735 * (2 - (rho 3722 * rho 3722 + rho 3721 * rho 3721 * (-1))) = rho 3722 * rho 3722 - rho 3721 * rho 3721 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3336
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX47 rho : Seg6.F), (seg6AccY47 rho : Seg6.F)⟩
      ⟨(rho 3721 : Seg6.F), (rho 3722 : Seg6.F)⟩
      ⟨(rho 3727 : Seg6.F), (rho 3728 : Seg6.F)⟩
      ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩
      ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg6_rows48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3337 rho ∧ Seg6.relationRow3338 rho ∧ Seg6.relationRow3339 rho ∧ Seg6.relationRow3340 rho ∧ Seg6.relationRow3341 rho ∧ Seg6.relationRow3342 rho ∧ Seg6.relationRow3343 rho ∧ Seg6.relationRow3344 rho ∧ Seg6.relationRow3345 rho ∧ Seg6.relationRow3346 rho ∧ Seg6.relationRow3347 rho ∧ Seg6.relationRow3348 rho ∧ Seg6.relationRow3349 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349⟩

theorem seg6_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1938 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩
        ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩
        ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩
        ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩ := by
  obtain ⟨r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349⟩ := seg6_rows48 rho h
  unfold Seg6.relationRow3337 at r3337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3337
  unfold Seg6.relationRow3338 at r3338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3338
  unfold Seg6.relationRow3339 at r3339
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3339
  unfold Seg6.relationRow3340 at r3340
  unfold Seg6.relationRow3341 at r3341
  unfold Seg6.relationRow3342 at r3342
  unfold Seg6.relationRow3343 at r3343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343
  unfold Seg6.relationRow3344 at r3344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3344
  unfold Seg6.relationRow3345 at r3345
  unfold Seg6.relationRow3346 at r3346
  unfold Seg6.relationRow3347 at r3347
  unfold Seg6.relationRow3348 at r3348
  unfold Seg6.relationRow3349 at r3349
  have hrung48 (bit : Bool) (hbit : rho 1938 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩
        ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩
        ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩
        ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩ := by
    have hnextx : seg6AccX49 rho = seg6AccX48 rho + rho 3742 := by
      unfold seg6AccX49 seg6AccX48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 48]
      ring
    have hnexty : seg6AccY49 rho = seg6AccY48 rho + rho 3743 := by
      unfold seg6AccY49 seg6AccY48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 48]
      ring
    have ha0 : (rho 3734 + rho 3735) * (seg6AccX48 rho + seg6AccY48 rho) = rho 3736 := by
      unfold seg6AccX48 seg6AccY48
      linear_combination r3337
    have ha1 : rho 3735 * seg6AccX48 rho = rho 3737 := by
      unfold seg6AccX48
      linear_combination r3338
    have ha2 : rho 3734 * seg6AccY48 rho = rho 3738 := by
      unfold seg6AccY48
      linear_combination r3339
    have ha3 : 3021 * rho 3737 * rho 3738 = rho 3739 := by
      linear_combination r3340
    have ha4 : rho 3740 * (1 + rho 3739) = rho 3737 + rho 3738 := by
      linear_combination r3341
    have ha5 : rho 3741 * (1 - rho 3739) = rho 3736 - rho 3737 - rho 3738 := by
      linear_combination r3342
    have haddx :
        rho 3740 * (1 + 3021 * (rho 3735 * seg6AccX48 rho) * (rho 3734 * seg6AccY48 rho)) =
          rho 3735 * seg6AccX48 rho + rho 3734 * seg6AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3741 * (1 - 3021 * (rho 3735 * seg6AccX48 rho) * (rho 3734 * seg6AccY48 rho)) =
          (-1) * (rho 3735 * seg6AccX48 rho) - rho 3734 * seg6AccY48 rho +
            (seg6AccY48 rho - seg6AccX48 rho * (-1)) * (rho 3734 + rho 3735) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3741 * (1 - rho 3739) = rho 3736 - rho 3737 - rho 3738 := ha5
        _ = (-1) * rho 3737 - rho 3738 + (seg6AccY48 rho - seg6AccX48 rho * (-1)) * (rho 3734 + rho 3735) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX49 rho = seg6AccX48 rho - Bool.toZMod bit * (seg6AccX48 rho - rho 3740) := by
      have hd : rho 3742 = Bool.toZMod bit * (rho 3740 - seg6AccX48 rho) := by
        rw [← hbit]
        unfold seg6AccX48
        linear_combination -r3343
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY49 rho = seg6AccY48 rho - Bool.toZMod bit * (seg6AccY48 rho - rho 3741) := by
      have hd : rho 3743 = Bool.toZMod bit * (rho 3741 - seg6AccY48 rho) := by
        rw [← hbit]
        unfold seg6AccY48
        linear_combination -r3344
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3734 * rho 3735 = rho 3744 := by linear_combination r3345
    have hd1 : rho 3734 * rho 3734 = rho 3745 := by linear_combination r3346
    have hd2 : rho 3735 * rho 3735 = rho 3746 := by linear_combination r3347
    have hd3 : rho 3747 * (rho 3735 * rho 3735 + rho 3734 * rho 3734 * (-1)) = 2 * (rho 3734 * rho 3735) := by
      rw [hd0, hd1, hd2]
      linear_combination r3348
    have hd4 : rho 3748 * (2 - (rho 3735 * rho 3735 + rho 3734 * rho 3734 * (-1))) = rho 3735 * rho 3735 - rho 3734 * rho 3734 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3349
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX48 rho : Seg6.F), (seg6AccY48 rho : Seg6.F)⟩
      ⟨(rho 3734 : Seg6.F), (rho 3735 : Seg6.F)⟩
      ⟨(rho 3740 : Seg6.F), (rho 3741 : Seg6.F)⟩
      ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩
      ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg6_rows49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3350 rho ∧ Seg6.relationRow3351 rho ∧ Seg6.relationRow3352 rho ∧ Seg6.relationRow3353 rho ∧ Seg6.relationRow3354 rho ∧ Seg6.relationRow3355 rho ∧ Seg6.relationRow3356 rho ∧ Seg6.relationRow3357 rho ∧ Seg6.relationRow3358 rho ∧ Seg6.relationRow3359 rho ∧ Seg6.relationRow3360 rho ∧ Seg6.relationRow3361 rho ∧ Seg6.relationRow3362 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362⟩

theorem seg6_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1939 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩
        ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩
        ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩
        ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩ := by
  obtain ⟨r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362⟩ := seg6_rows49 rho h
  unfold Seg6.relationRow3350 at r3350
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3350
  unfold Seg6.relationRow3351 at r3351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3351
  unfold Seg6.relationRow3352 at r3352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3352
  unfold Seg6.relationRow3353 at r3353
  unfold Seg6.relationRow3354 at r3354
  unfold Seg6.relationRow3355 at r3355
  unfold Seg6.relationRow3356 at r3356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356
  unfold Seg6.relationRow3357 at r3357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3357
  unfold Seg6.relationRow3358 at r3358
  unfold Seg6.relationRow3359 at r3359
  unfold Seg6.relationRow3360 at r3360
  unfold Seg6.relationRow3361 at r3361
  unfold Seg6.relationRow3362 at r3362
  have hrung49 (bit : Bool) (hbit : rho 1939 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩
        ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩
        ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩
        ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩ := by
    have hnextx : seg6AccX50 rho = seg6AccX49 rho + rho 3755 := by
      unfold seg6AccX50 seg6AccX49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 49]
      ring
    have hnexty : seg6AccY50 rho = seg6AccY49 rho + rho 3756 := by
      unfold seg6AccY50 seg6AccY49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 49]
      ring
    have ha0 : (rho 3747 + rho 3748) * (seg6AccX49 rho + seg6AccY49 rho) = rho 3749 := by
      unfold seg6AccX49 seg6AccY49
      linear_combination r3350
    have ha1 : rho 3748 * seg6AccX49 rho = rho 3750 := by
      unfold seg6AccX49
      linear_combination r3351
    have ha2 : rho 3747 * seg6AccY49 rho = rho 3751 := by
      unfold seg6AccY49
      linear_combination r3352
    have ha3 : 3021 * rho 3750 * rho 3751 = rho 3752 := by
      linear_combination r3353
    have ha4 : rho 3753 * (1 + rho 3752) = rho 3750 + rho 3751 := by
      linear_combination r3354
    have ha5 : rho 3754 * (1 - rho 3752) = rho 3749 - rho 3750 - rho 3751 := by
      linear_combination r3355
    have haddx :
        rho 3753 * (1 + 3021 * (rho 3748 * seg6AccX49 rho) * (rho 3747 * seg6AccY49 rho)) =
          rho 3748 * seg6AccX49 rho + rho 3747 * seg6AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3754 * (1 - 3021 * (rho 3748 * seg6AccX49 rho) * (rho 3747 * seg6AccY49 rho)) =
          (-1) * (rho 3748 * seg6AccX49 rho) - rho 3747 * seg6AccY49 rho +
            (seg6AccY49 rho - seg6AccX49 rho * (-1)) * (rho 3747 + rho 3748) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3754 * (1 - rho 3752) = rho 3749 - rho 3750 - rho 3751 := ha5
        _ = (-1) * rho 3750 - rho 3751 + (seg6AccY49 rho - seg6AccX49 rho * (-1)) * (rho 3747 + rho 3748) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX50 rho = seg6AccX49 rho - Bool.toZMod bit * (seg6AccX49 rho - rho 3753) := by
      have hd : rho 3755 = Bool.toZMod bit * (rho 3753 - seg6AccX49 rho) := by
        rw [← hbit]
        unfold seg6AccX49
        linear_combination -r3356
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY50 rho = seg6AccY49 rho - Bool.toZMod bit * (seg6AccY49 rho - rho 3754) := by
      have hd : rho 3756 = Bool.toZMod bit * (rho 3754 - seg6AccY49 rho) := by
        rw [← hbit]
        unfold seg6AccY49
        linear_combination -r3357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3747 * rho 3748 = rho 3757 := by linear_combination r3358
    have hd1 : rho 3747 * rho 3747 = rho 3758 := by linear_combination r3359
    have hd2 : rho 3748 * rho 3748 = rho 3759 := by linear_combination r3360
    have hd3 : rho 3760 * (rho 3748 * rho 3748 + rho 3747 * rho 3747 * (-1)) = 2 * (rho 3747 * rho 3748) := by
      rw [hd0, hd1, hd2]
      linear_combination r3361
    have hd4 : rho 3761 * (2 - (rho 3748 * rho 3748 + rho 3747 * rho 3747 * (-1))) = rho 3748 * rho 3748 - rho 3747 * rho 3747 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX49 rho : Seg6.F), (seg6AccY49 rho : Seg6.F)⟩
      ⟨(rho 3747 : Seg6.F), (rho 3748 : Seg6.F)⟩
      ⟨(rho 3753 : Seg6.F), (rho 3754 : Seg6.F)⟩
      ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩
      ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg6_rows50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3363 rho ∧ Seg6.relationRow3364 rho ∧ Seg6.relationRow3365 rho ∧ Seg6.relationRow3366 rho ∧ Seg6.relationRow3367 rho ∧ Seg6.relationRow3368 rho ∧ Seg6.relationRow3369 rho ∧ Seg6.relationRow3370 rho ∧ Seg6.relationRow3371 rho ∧ Seg6.relationRow3372 rho ∧ Seg6.relationRow3373 rho ∧ Seg6.relationRow3374 rho ∧ Seg6.relationRow3375 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨_, _, _, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375⟩

theorem seg6_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1940 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩
        ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩
        ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩
        ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩ := by
  obtain ⟨r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375⟩ := seg6_rows50 rho h
  unfold Seg6.relationRow3363 at r3363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3363
  unfold Seg6.relationRow3364 at r3364
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3364
  unfold Seg6.relationRow3365 at r3365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3365
  unfold Seg6.relationRow3366 at r3366
  unfold Seg6.relationRow3367 at r3367
  unfold Seg6.relationRow3368 at r3368
  unfold Seg6.relationRow3369 at r3369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369
  unfold Seg6.relationRow3370 at r3370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3370
  unfold Seg6.relationRow3371 at r3371
  unfold Seg6.relationRow3372 at r3372
  unfold Seg6.relationRow3373 at r3373
  unfold Seg6.relationRow3374 at r3374
  unfold Seg6.relationRow3375 at r3375
  have hrung50 (bit : Bool) (hbit : rho 1940 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩
        ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩
        ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩
        ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩ := by
    have hnextx : seg6AccX51 rho = seg6AccX50 rho + rho 3768 := by
      unfold seg6AccX51 seg6AccX50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 50]
      ring
    have hnexty : seg6AccY51 rho = seg6AccY50 rho + rho 3769 := by
      unfold seg6AccY51 seg6AccY50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 50]
      ring
    have ha0 : (rho 3760 + rho 3761) * (seg6AccX50 rho + seg6AccY50 rho) = rho 3762 := by
      unfold seg6AccX50 seg6AccY50
      linear_combination r3363
    have ha1 : rho 3761 * seg6AccX50 rho = rho 3763 := by
      unfold seg6AccX50
      linear_combination r3364
    have ha2 : rho 3760 * seg6AccY50 rho = rho 3764 := by
      unfold seg6AccY50
      linear_combination r3365
    have ha3 : 3021 * rho 3763 * rho 3764 = rho 3765 := by
      linear_combination r3366
    have ha4 : rho 3766 * (1 + rho 3765) = rho 3763 + rho 3764 := by
      linear_combination r3367
    have ha5 : rho 3767 * (1 - rho 3765) = rho 3762 - rho 3763 - rho 3764 := by
      linear_combination r3368
    have haddx :
        rho 3766 * (1 + 3021 * (rho 3761 * seg6AccX50 rho) * (rho 3760 * seg6AccY50 rho)) =
          rho 3761 * seg6AccX50 rho + rho 3760 * seg6AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3767 * (1 - 3021 * (rho 3761 * seg6AccX50 rho) * (rho 3760 * seg6AccY50 rho)) =
          (-1) * (rho 3761 * seg6AccX50 rho) - rho 3760 * seg6AccY50 rho +
            (seg6AccY50 rho - seg6AccX50 rho * (-1)) * (rho 3760 + rho 3761) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3767 * (1 - rho 3765) = rho 3762 - rho 3763 - rho 3764 := ha5
        _ = (-1) * rho 3763 - rho 3764 + (seg6AccY50 rho - seg6AccX50 rho * (-1)) * (rho 3760 + rho 3761) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX51 rho = seg6AccX50 rho - Bool.toZMod bit * (seg6AccX50 rho - rho 3766) := by
      have hd : rho 3768 = Bool.toZMod bit * (rho 3766 - seg6AccX50 rho) := by
        rw [← hbit]
        unfold seg6AccX50
        linear_combination -r3369
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY51 rho = seg6AccY50 rho - Bool.toZMod bit * (seg6AccY50 rho - rho 3767) := by
      have hd : rho 3769 = Bool.toZMod bit * (rho 3767 - seg6AccY50 rho) := by
        rw [← hbit]
        unfold seg6AccY50
        linear_combination -r3370
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3760 * rho 3761 = rho 3770 := by linear_combination r3371
    have hd1 : rho 3760 * rho 3760 = rho 3771 := by linear_combination r3372
    have hd2 : rho 3761 * rho 3761 = rho 3772 := by linear_combination r3373
    have hd3 : rho 3773 * (rho 3761 * rho 3761 + rho 3760 * rho 3760 * (-1)) = 2 * (rho 3760 * rho 3761) := by
      rw [hd0, hd1, hd2]
      linear_combination r3374
    have hd4 : rho 3774 * (2 - (rho 3761 * rho 3761 + rho 3760 * rho 3760 * (-1))) = rho 3761 * rho 3761 - rho 3760 * rho 3760 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3375
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX50 rho : Seg6.F), (seg6AccY50 rho : Seg6.F)⟩
      ⟨(rho 3760 : Seg6.F), (rho 3761 : Seg6.F)⟩
      ⟨(rho 3766 : Seg6.F), (rho 3767 : Seg6.F)⟩
      ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩
      ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg6_rows51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3376 rho ∧ Seg6.relationRow3377 rho ∧ Seg6.relationRow3378 rho ∧ Seg6.relationRow3379 rho ∧ Seg6.relationRow3380 rho ∧ Seg6.relationRow3381 rho ∧ Seg6.relationRow3382 rho ∧ Seg6.relationRow3383 rho ∧ Seg6.relationRow3384 rho ∧ Seg6.relationRow3385 rho ∧ Seg6.relationRow3386 rho ∧ Seg6.relationRow3387 rho ∧ Seg6.relationRow3388 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388⟩

theorem seg6_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1941 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩
        ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩
        ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩
        ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩ := by
  obtain ⟨r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388⟩ := seg6_rows51 rho h
  unfold Seg6.relationRow3376 at r3376
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3376
  unfold Seg6.relationRow3377 at r3377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3377
  unfold Seg6.relationRow3378 at r3378
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3378
  unfold Seg6.relationRow3379 at r3379
  unfold Seg6.relationRow3380 at r3380
  unfold Seg6.relationRow3381 at r3381
  unfold Seg6.relationRow3382 at r3382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382
  unfold Seg6.relationRow3383 at r3383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3383
  unfold Seg6.relationRow3384 at r3384
  unfold Seg6.relationRow3385 at r3385
  unfold Seg6.relationRow3386 at r3386
  unfold Seg6.relationRow3387 at r3387
  unfold Seg6.relationRow3388 at r3388
  have hrung51 (bit : Bool) (hbit : rho 1941 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩
        ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩
        ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩
        ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩ := by
    have hnextx : seg6AccX52 rho = seg6AccX51 rho + rho 3781 := by
      unfold seg6AccX52 seg6AccX51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 51]
      ring
    have hnexty : seg6AccY52 rho = seg6AccY51 rho + rho 3782 := by
      unfold seg6AccY52 seg6AccY51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 51]
      ring
    have ha0 : (rho 3773 + rho 3774) * (seg6AccX51 rho + seg6AccY51 rho) = rho 3775 := by
      unfold seg6AccX51 seg6AccY51
      linear_combination r3376
    have ha1 : rho 3774 * seg6AccX51 rho = rho 3776 := by
      unfold seg6AccX51
      linear_combination r3377
    have ha2 : rho 3773 * seg6AccY51 rho = rho 3777 := by
      unfold seg6AccY51
      linear_combination r3378
    have ha3 : 3021 * rho 3776 * rho 3777 = rho 3778 := by
      linear_combination r3379
    have ha4 : rho 3779 * (1 + rho 3778) = rho 3776 + rho 3777 := by
      linear_combination r3380
    have ha5 : rho 3780 * (1 - rho 3778) = rho 3775 - rho 3776 - rho 3777 := by
      linear_combination r3381
    have haddx :
        rho 3779 * (1 + 3021 * (rho 3774 * seg6AccX51 rho) * (rho 3773 * seg6AccY51 rho)) =
          rho 3774 * seg6AccX51 rho + rho 3773 * seg6AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3780 * (1 - 3021 * (rho 3774 * seg6AccX51 rho) * (rho 3773 * seg6AccY51 rho)) =
          (-1) * (rho 3774 * seg6AccX51 rho) - rho 3773 * seg6AccY51 rho +
            (seg6AccY51 rho - seg6AccX51 rho * (-1)) * (rho 3773 + rho 3774) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3780 * (1 - rho 3778) = rho 3775 - rho 3776 - rho 3777 := ha5
        _ = (-1) * rho 3776 - rho 3777 + (seg6AccY51 rho - seg6AccX51 rho * (-1)) * (rho 3773 + rho 3774) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX52 rho = seg6AccX51 rho - Bool.toZMod bit * (seg6AccX51 rho - rho 3779) := by
      have hd : rho 3781 = Bool.toZMod bit * (rho 3779 - seg6AccX51 rho) := by
        rw [← hbit]
        unfold seg6AccX51
        linear_combination -r3382
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY52 rho = seg6AccY51 rho - Bool.toZMod bit * (seg6AccY51 rho - rho 3780) := by
      have hd : rho 3782 = Bool.toZMod bit * (rho 3780 - seg6AccY51 rho) := by
        rw [← hbit]
        unfold seg6AccY51
        linear_combination -r3383
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3773 * rho 3774 = rho 3783 := by linear_combination r3384
    have hd1 : rho 3773 * rho 3773 = rho 3784 := by linear_combination r3385
    have hd2 : rho 3774 * rho 3774 = rho 3785 := by linear_combination r3386
    have hd3 : rho 3786 * (rho 3774 * rho 3774 + rho 3773 * rho 3773 * (-1)) = 2 * (rho 3773 * rho 3774) := by
      rw [hd0, hd1, hd2]
      linear_combination r3387
    have hd4 : rho 3787 * (2 - (rho 3774 * rho 3774 + rho 3773 * rho 3773 * (-1))) = rho 3774 * rho 3774 - rho 3773 * rho 3773 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3388
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX51 rho : Seg6.F), (seg6AccY51 rho : Seg6.F)⟩
      ⟨(rho 3773 : Seg6.F), (rho 3774 : Seg6.F)⟩
      ⟨(rho 3779 : Seg6.F), (rho 3780 : Seg6.F)⟩
      ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩
      ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg6_rows52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3389 rho ∧ Seg6.relationRow3390 rho ∧ Seg6.relationRow3391 rho ∧ Seg6.relationRow3392 rho ∧ Seg6.relationRow3393 rho ∧ Seg6.relationRow3394 rho ∧ Seg6.relationRow3395 rho ∧ Seg6.relationRow3396 rho ∧ Seg6.relationRow3397 rho ∧ Seg6.relationRow3398 rho ∧ Seg6.relationRow3399 rho ∧ Seg6.relationRow3400 rho ∧ Seg6.relationRow3401 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401⟩

theorem seg6_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1942 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩
        ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩
        ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩
        ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩ := by
  obtain ⟨r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401⟩ := seg6_rows52 rho h
  unfold Seg6.relationRow3389 at r3389
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3389
  unfold Seg6.relationRow3390 at r3390
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3390
  unfold Seg6.relationRow3391 at r3391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3391
  unfold Seg6.relationRow3392 at r3392
  unfold Seg6.relationRow3393 at r3393
  unfold Seg6.relationRow3394 at r3394
  unfold Seg6.relationRow3395 at r3395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395
  unfold Seg6.relationRow3396 at r3396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3396
  unfold Seg6.relationRow3397 at r3397
  unfold Seg6.relationRow3398 at r3398
  unfold Seg6.relationRow3399 at r3399
  unfold Seg6.relationRow3400 at r3400
  unfold Seg6.relationRow3401 at r3401
  have hrung52 (bit : Bool) (hbit : rho 1942 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩
        ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩
        ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩
        ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩ := by
    have hnextx : seg6AccX53 rho = seg6AccX52 rho + rho 3794 := by
      unfold seg6AccX53 seg6AccX52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 52]
      ring
    have hnexty : seg6AccY53 rho = seg6AccY52 rho + rho 3795 := by
      unfold seg6AccY53 seg6AccY52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 52]
      ring
    have ha0 : (rho 3786 + rho 3787) * (seg6AccX52 rho + seg6AccY52 rho) = rho 3788 := by
      unfold seg6AccX52 seg6AccY52
      linear_combination r3389
    have ha1 : rho 3787 * seg6AccX52 rho = rho 3789 := by
      unfold seg6AccX52
      linear_combination r3390
    have ha2 : rho 3786 * seg6AccY52 rho = rho 3790 := by
      unfold seg6AccY52
      linear_combination r3391
    have ha3 : 3021 * rho 3789 * rho 3790 = rho 3791 := by
      linear_combination r3392
    have ha4 : rho 3792 * (1 + rho 3791) = rho 3789 + rho 3790 := by
      linear_combination r3393
    have ha5 : rho 3793 * (1 - rho 3791) = rho 3788 - rho 3789 - rho 3790 := by
      linear_combination r3394
    have haddx :
        rho 3792 * (1 + 3021 * (rho 3787 * seg6AccX52 rho) * (rho 3786 * seg6AccY52 rho)) =
          rho 3787 * seg6AccX52 rho + rho 3786 * seg6AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3793 * (1 - 3021 * (rho 3787 * seg6AccX52 rho) * (rho 3786 * seg6AccY52 rho)) =
          (-1) * (rho 3787 * seg6AccX52 rho) - rho 3786 * seg6AccY52 rho +
            (seg6AccY52 rho - seg6AccX52 rho * (-1)) * (rho 3786 + rho 3787) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3793 * (1 - rho 3791) = rho 3788 - rho 3789 - rho 3790 := ha5
        _ = (-1) * rho 3789 - rho 3790 + (seg6AccY52 rho - seg6AccX52 rho * (-1)) * (rho 3786 + rho 3787) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX53 rho = seg6AccX52 rho - Bool.toZMod bit * (seg6AccX52 rho - rho 3792) := by
      have hd : rho 3794 = Bool.toZMod bit * (rho 3792 - seg6AccX52 rho) := by
        rw [← hbit]
        unfold seg6AccX52
        linear_combination -r3395
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY53 rho = seg6AccY52 rho - Bool.toZMod bit * (seg6AccY52 rho - rho 3793) := by
      have hd : rho 3795 = Bool.toZMod bit * (rho 3793 - seg6AccY52 rho) := by
        rw [← hbit]
        unfold seg6AccY52
        linear_combination -r3396
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3786 * rho 3787 = rho 3796 := by linear_combination r3397
    have hd1 : rho 3786 * rho 3786 = rho 3797 := by linear_combination r3398
    have hd2 : rho 3787 * rho 3787 = rho 3798 := by linear_combination r3399
    have hd3 : rho 3799 * (rho 3787 * rho 3787 + rho 3786 * rho 3786 * (-1)) = 2 * (rho 3786 * rho 3787) := by
      rw [hd0, hd1, hd2]
      linear_combination r3400
    have hd4 : rho 3800 * (2 - (rho 3787 * rho 3787 + rho 3786 * rho 3786 * (-1))) = rho 3787 * rho 3787 - rho 3786 * rho 3786 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3401
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX52 rho : Seg6.F), (seg6AccY52 rho : Seg6.F)⟩
      ⟨(rho 3786 : Seg6.F), (rho 3787 : Seg6.F)⟩
      ⟨(rho 3792 : Seg6.F), (rho 3793 : Seg6.F)⟩
      ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩
      ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg6_rows53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3402 rho ∧ Seg6.relationRow3403 rho ∧ Seg6.relationRow3404 rho ∧ Seg6.relationRow3405 rho ∧ Seg6.relationRow3406 rho ∧ Seg6.relationRow3407 rho ∧ Seg6.relationRow3408 rho ∧ Seg6.relationRow3409 rho ∧ Seg6.relationRow3410 rho ∧ Seg6.relationRow3411 rho ∧ Seg6.relationRow3412 rho ∧ Seg6.relationRow3413 rho ∧ Seg6.relationRow3414 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414⟩

theorem seg6_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1943 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩
        ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩
        ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩
        ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩ := by
  obtain ⟨r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414⟩ := seg6_rows53 rho h
  unfold Seg6.relationRow3402 at r3402
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3402
  unfold Seg6.relationRow3403 at r3403
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3403
  unfold Seg6.relationRow3404 at r3404
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3404
  unfold Seg6.relationRow3405 at r3405
  unfold Seg6.relationRow3406 at r3406
  unfold Seg6.relationRow3407 at r3407
  unfold Seg6.relationRow3408 at r3408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408
  unfold Seg6.relationRow3409 at r3409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3409
  unfold Seg6.relationRow3410 at r3410
  unfold Seg6.relationRow3411 at r3411
  unfold Seg6.relationRow3412 at r3412
  unfold Seg6.relationRow3413 at r3413
  unfold Seg6.relationRow3414 at r3414
  have hrung53 (bit : Bool) (hbit : rho 1943 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩
        ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩
        ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩
        ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩ := by
    have hnextx : seg6AccX54 rho = seg6AccX53 rho + rho 3807 := by
      unfold seg6AccX54 seg6AccX53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 53]
      ring
    have hnexty : seg6AccY54 rho = seg6AccY53 rho + rho 3808 := by
      unfold seg6AccY54 seg6AccY53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 53]
      ring
    have ha0 : (rho 3799 + rho 3800) * (seg6AccX53 rho + seg6AccY53 rho) = rho 3801 := by
      unfold seg6AccX53 seg6AccY53
      linear_combination r3402
    have ha1 : rho 3800 * seg6AccX53 rho = rho 3802 := by
      unfold seg6AccX53
      linear_combination r3403
    have ha2 : rho 3799 * seg6AccY53 rho = rho 3803 := by
      unfold seg6AccY53
      linear_combination r3404
    have ha3 : 3021 * rho 3802 * rho 3803 = rho 3804 := by
      linear_combination r3405
    have ha4 : rho 3805 * (1 + rho 3804) = rho 3802 + rho 3803 := by
      linear_combination r3406
    have ha5 : rho 3806 * (1 - rho 3804) = rho 3801 - rho 3802 - rho 3803 := by
      linear_combination r3407
    have haddx :
        rho 3805 * (1 + 3021 * (rho 3800 * seg6AccX53 rho) * (rho 3799 * seg6AccY53 rho)) =
          rho 3800 * seg6AccX53 rho + rho 3799 * seg6AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3806 * (1 - 3021 * (rho 3800 * seg6AccX53 rho) * (rho 3799 * seg6AccY53 rho)) =
          (-1) * (rho 3800 * seg6AccX53 rho) - rho 3799 * seg6AccY53 rho +
            (seg6AccY53 rho - seg6AccX53 rho * (-1)) * (rho 3799 + rho 3800) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3806 * (1 - rho 3804) = rho 3801 - rho 3802 - rho 3803 := ha5
        _ = (-1) * rho 3802 - rho 3803 + (seg6AccY53 rho - seg6AccX53 rho * (-1)) * (rho 3799 + rho 3800) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX54 rho = seg6AccX53 rho - Bool.toZMod bit * (seg6AccX53 rho - rho 3805) := by
      have hd : rho 3807 = Bool.toZMod bit * (rho 3805 - seg6AccX53 rho) := by
        rw [← hbit]
        unfold seg6AccX53
        linear_combination -r3408
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY54 rho = seg6AccY53 rho - Bool.toZMod bit * (seg6AccY53 rho - rho 3806) := by
      have hd : rho 3808 = Bool.toZMod bit * (rho 3806 - seg6AccY53 rho) := by
        rw [← hbit]
        unfold seg6AccY53
        linear_combination -r3409
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3799 * rho 3800 = rho 3809 := by linear_combination r3410
    have hd1 : rho 3799 * rho 3799 = rho 3810 := by linear_combination r3411
    have hd2 : rho 3800 * rho 3800 = rho 3811 := by linear_combination r3412
    have hd3 : rho 3812 * (rho 3800 * rho 3800 + rho 3799 * rho 3799 * (-1)) = 2 * (rho 3799 * rho 3800) := by
      rw [hd0, hd1, hd2]
      linear_combination r3413
    have hd4 : rho 3813 * (2 - (rho 3800 * rho 3800 + rho 3799 * rho 3799 * (-1))) = rho 3800 * rho 3800 - rho 3799 * rho 3799 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3414
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX53 rho : Seg6.F), (seg6AccY53 rho : Seg6.F)⟩
      ⟨(rho 3799 : Seg6.F), (rho 3800 : Seg6.F)⟩
      ⟨(rho 3805 : Seg6.F), (rho 3806 : Seg6.F)⟩
      ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩
      ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg6_rows54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3415 rho ∧ Seg6.relationRow3416 rho ∧ Seg6.relationRow3417 rho ∧ Seg6.relationRow3418 rho ∧ Seg6.relationRow3419 rho ∧ Seg6.relationRow3420 rho ∧ Seg6.relationRow3421 rho ∧ Seg6.relationRow3422 rho ∧ Seg6.relationRow3423 rho ∧ Seg6.relationRow3424 rho ∧ Seg6.relationRow3425 rho ∧ Seg6.relationRow3426 rho ∧ Seg6.relationRow3427 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427⟩

theorem seg6_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1944 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩
        ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩
        ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩
        ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩ := by
  obtain ⟨r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427⟩ := seg6_rows54 rho h
  unfold Seg6.relationRow3415 at r3415
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3415
  unfold Seg6.relationRow3416 at r3416
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3416
  unfold Seg6.relationRow3417 at r3417
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3417
  unfold Seg6.relationRow3418 at r3418
  unfold Seg6.relationRow3419 at r3419
  unfold Seg6.relationRow3420 at r3420
  unfold Seg6.relationRow3421 at r3421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421
  unfold Seg6.relationRow3422 at r3422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3422
  unfold Seg6.relationRow3423 at r3423
  unfold Seg6.relationRow3424 at r3424
  unfold Seg6.relationRow3425 at r3425
  unfold Seg6.relationRow3426 at r3426
  unfold Seg6.relationRow3427 at r3427
  have hrung54 (bit : Bool) (hbit : rho 1944 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩
        ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩
        ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩
        ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩ := by
    have hnextx : seg6AccX55 rho = seg6AccX54 rho + rho 3820 := by
      unfold seg6AccX55 seg6AccX54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 54]
      ring
    have hnexty : seg6AccY55 rho = seg6AccY54 rho + rho 3821 := by
      unfold seg6AccY55 seg6AccY54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 54]
      ring
    have ha0 : (rho 3812 + rho 3813) * (seg6AccX54 rho + seg6AccY54 rho) = rho 3814 := by
      unfold seg6AccX54 seg6AccY54
      linear_combination r3415
    have ha1 : rho 3813 * seg6AccX54 rho = rho 3815 := by
      unfold seg6AccX54
      linear_combination r3416
    have ha2 : rho 3812 * seg6AccY54 rho = rho 3816 := by
      unfold seg6AccY54
      linear_combination r3417
    have ha3 : 3021 * rho 3815 * rho 3816 = rho 3817 := by
      linear_combination r3418
    have ha4 : rho 3818 * (1 + rho 3817) = rho 3815 + rho 3816 := by
      linear_combination r3419
    have ha5 : rho 3819 * (1 - rho 3817) = rho 3814 - rho 3815 - rho 3816 := by
      linear_combination r3420
    have haddx :
        rho 3818 * (1 + 3021 * (rho 3813 * seg6AccX54 rho) * (rho 3812 * seg6AccY54 rho)) =
          rho 3813 * seg6AccX54 rho + rho 3812 * seg6AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3819 * (1 - 3021 * (rho 3813 * seg6AccX54 rho) * (rho 3812 * seg6AccY54 rho)) =
          (-1) * (rho 3813 * seg6AccX54 rho) - rho 3812 * seg6AccY54 rho +
            (seg6AccY54 rho - seg6AccX54 rho * (-1)) * (rho 3812 + rho 3813) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3819 * (1 - rho 3817) = rho 3814 - rho 3815 - rho 3816 := ha5
        _ = (-1) * rho 3815 - rho 3816 + (seg6AccY54 rho - seg6AccX54 rho * (-1)) * (rho 3812 + rho 3813) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX55 rho = seg6AccX54 rho - Bool.toZMod bit * (seg6AccX54 rho - rho 3818) := by
      have hd : rho 3820 = Bool.toZMod bit * (rho 3818 - seg6AccX54 rho) := by
        rw [← hbit]
        unfold seg6AccX54
        linear_combination -r3421
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY55 rho = seg6AccY54 rho - Bool.toZMod bit * (seg6AccY54 rho - rho 3819) := by
      have hd : rho 3821 = Bool.toZMod bit * (rho 3819 - seg6AccY54 rho) := by
        rw [← hbit]
        unfold seg6AccY54
        linear_combination -r3422
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3812 * rho 3813 = rho 3822 := by linear_combination r3423
    have hd1 : rho 3812 * rho 3812 = rho 3823 := by linear_combination r3424
    have hd2 : rho 3813 * rho 3813 = rho 3824 := by linear_combination r3425
    have hd3 : rho 3825 * (rho 3813 * rho 3813 + rho 3812 * rho 3812 * (-1)) = 2 * (rho 3812 * rho 3813) := by
      rw [hd0, hd1, hd2]
      linear_combination r3426
    have hd4 : rho 3826 * (2 - (rho 3813 * rho 3813 + rho 3812 * rho 3812 * (-1))) = rho 3813 * rho 3813 - rho 3812 * rho 3812 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3427
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX54 rho : Seg6.F), (seg6AccY54 rho : Seg6.F)⟩
      ⟨(rho 3812 : Seg6.F), (rho 3813 : Seg6.F)⟩
      ⟨(rho 3818 : Seg6.F), (rho 3819 : Seg6.F)⟩
      ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩
      ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg6_hstep_c4 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg6_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg6_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg6_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg6_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg6_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg6_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg6_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg6_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg6_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg6_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
