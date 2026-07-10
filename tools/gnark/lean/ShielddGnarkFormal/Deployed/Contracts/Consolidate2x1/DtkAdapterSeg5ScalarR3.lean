import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3394 rho ∧ Seg5.relationRow3395 rho ∧ Seg5.relationRow3396 rho ∧ Seg5.relationRow3397 rho ∧ Seg5.relationRow3398 rho ∧ Seg5.relationRow3399 rho ∧ Seg5.relationRow3400 rho ∧ Seg5.relationRow3401 rho ∧ Seg5.relationRow3402 rho ∧ Seg5.relationRow3403 rho ∧ Seg5.relationRow3404 rho ∧ Seg5.relationRow3405 rho ∧ Seg5.relationRow3406 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩

theorem seg5_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2448 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩
        ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩
        ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩
        ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩ := by
  obtain ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩ := seg5_rows33 rho h
  unfold Seg5.relationRow3394 at r3394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3394
  unfold Seg5.relationRow3395 at r3395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395
  unfold Seg5.relationRow3396 at r3396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3396
  unfold Seg5.relationRow3397 at r3397
  unfold Seg5.relationRow3398 at r3398
  unfold Seg5.relationRow3399 at r3399
  unfold Seg5.relationRow3400 at r3400
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3400
  unfold Seg5.relationRow3401 at r3401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3401
  unfold Seg5.relationRow3402 at r3402
  unfold Seg5.relationRow3403 at r3403
  unfold Seg5.relationRow3404 at r3404
  unfold Seg5.relationRow3405 at r3405
  unfold Seg5.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 2448 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩
        ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩
        ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩
        ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩ := by
    have hnextx : seg5AccX34 rho = seg5AccX33 rho + rho 3095 := by
      unfold seg5AccX34 seg5AccX33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 33]
      ring
    have hnexty : seg5AccY34 rho = seg5AccY33 rho + rho 3096 := by
      unfold seg5AccY34 seg5AccY33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 33]
      ring
    have ha0 : (rho 3087 + rho 3088) * (seg5AccX33 rho + seg5AccY33 rho) = rho 3089 := by
      unfold seg5AccX33 seg5AccY33
      linear_combination r3394
    have ha1 : rho 3088 * seg5AccX33 rho = rho 3090 := by
      unfold seg5AccX33
      linear_combination r3395
    have ha2 : rho 3087 * seg5AccY33 rho = rho 3091 := by
      unfold seg5AccY33
      linear_combination r3396
    have ha3 : 3021 * rho 3090 * rho 3091 = rho 3092 := by
      linear_combination r3397
    have ha4 : rho 3093 * (1 + rho 3092) = rho 3090 + rho 3091 := by
      linear_combination r3398
    have ha5 : rho 3094 * (1 - rho 3092) = rho 3089 - rho 3090 - rho 3091 := by
      linear_combination r3399
    have haddx :
        rho 3093 * (1 + 3021 * (rho 3088 * seg5AccX33 rho) * (rho 3087 * seg5AccY33 rho)) =
          rho 3088 * seg5AccX33 rho + rho 3087 * seg5AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3094 * (1 - 3021 * (rho 3088 * seg5AccX33 rho) * (rho 3087 * seg5AccY33 rho)) =
          (-1) * (rho 3088 * seg5AccX33 rho) - rho 3087 * seg5AccY33 rho +
            (seg5AccY33 rho - seg5AccX33 rho * (-1)) * (rho 3087 + rho 3088) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3094 * (1 - rho 3092) = rho 3089 - rho 3090 - rho 3091 := ha5
        _ = (-1) * rho 3090 - rho 3091 + (seg5AccY33 rho - seg5AccX33 rho * (-1)) * (rho 3087 + rho 3088) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX34 rho = seg5AccX33 rho - Bool.toZMod bit * (seg5AccX33 rho - rho 3093) := by
      have hd : rho 3095 = Bool.toZMod bit * (rho 3093 - seg5AccX33 rho) := by
        rw [← hbit]
        unfold seg5AccX33
        linear_combination -r3400
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY34 rho = seg5AccY33 rho - Bool.toZMod bit * (seg5AccY33 rho - rho 3094) := by
      have hd : rho 3096 = Bool.toZMod bit * (rho 3094 - seg5AccY33 rho) := by
        rw [← hbit]
        unfold seg5AccY33
        linear_combination -r3401
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3087 * rho 3088 = rho 3097 := by linear_combination r3402
    have hd1 : rho 3087 * rho 3087 = rho 3098 := by linear_combination r3403
    have hd2 : rho 3088 * rho 3088 = rho 3099 := by linear_combination r3404
    have hd3 : rho 3100 * (rho 3088 * rho 3088 + rho 3087 * rho 3087 * (-1)) = 2 * (rho 3087 * rho 3088) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 3101 * (2 - (rho 3088 * rho 3088 + rho 3087 * rho 3087 * (-1))) = rho 3088 * rho 3088 - rho 3087 * rho 3087 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩
      ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩
      ⟨(rho 3093 : Seg5.F), (rho 3094 : Seg5.F)⟩
      ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩
      ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg5_rows34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3407 rho ∧ Seg5.relationRow3408 rho ∧ Seg5.relationRow3409 rho ∧ Seg5.relationRow3410 rho ∧ Seg5.relationRow3411 rho ∧ Seg5.relationRow3412 rho ∧ Seg5.relationRow3413 rho ∧ Seg5.relationRow3414 rho ∧ Seg5.relationRow3415 rho ∧ Seg5.relationRow3416 rho ∧ Seg5.relationRow3417 rho ∧ Seg5.relationRow3418 rho ∧ Seg5.relationRow3419 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩

theorem seg5_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2449 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩
        ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩
        ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩
        ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩ := by
  obtain ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩ := seg5_rows34 rho h
  unfold Seg5.relationRow3407 at r3407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3407
  unfold Seg5.relationRow3408 at r3408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408
  unfold Seg5.relationRow3409 at r3409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3409
  unfold Seg5.relationRow3410 at r3410
  unfold Seg5.relationRow3411 at r3411
  unfold Seg5.relationRow3412 at r3412
  unfold Seg5.relationRow3413 at r3413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3413
  unfold Seg5.relationRow3414 at r3414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3414
  unfold Seg5.relationRow3415 at r3415
  unfold Seg5.relationRow3416 at r3416
  unfold Seg5.relationRow3417 at r3417
  unfold Seg5.relationRow3418 at r3418
  unfold Seg5.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 2449 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩
        ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩
        ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩
        ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩ := by
    have hnextx : seg5AccX35 rho = seg5AccX34 rho + rho 3108 := by
      unfold seg5AccX35 seg5AccX34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 34]
      ring
    have hnexty : seg5AccY35 rho = seg5AccY34 rho + rho 3109 := by
      unfold seg5AccY35 seg5AccY34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 34]
      ring
    have ha0 : (rho 3100 + rho 3101) * (seg5AccX34 rho + seg5AccY34 rho) = rho 3102 := by
      unfold seg5AccX34 seg5AccY34
      linear_combination r3407
    have ha1 : rho 3101 * seg5AccX34 rho = rho 3103 := by
      unfold seg5AccX34
      linear_combination r3408
    have ha2 : rho 3100 * seg5AccY34 rho = rho 3104 := by
      unfold seg5AccY34
      linear_combination r3409
    have ha3 : 3021 * rho 3103 * rho 3104 = rho 3105 := by
      linear_combination r3410
    have ha4 : rho 3106 * (1 + rho 3105) = rho 3103 + rho 3104 := by
      linear_combination r3411
    have ha5 : rho 3107 * (1 - rho 3105) = rho 3102 - rho 3103 - rho 3104 := by
      linear_combination r3412
    have haddx :
        rho 3106 * (1 + 3021 * (rho 3101 * seg5AccX34 rho) * (rho 3100 * seg5AccY34 rho)) =
          rho 3101 * seg5AccX34 rho + rho 3100 * seg5AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3107 * (1 - 3021 * (rho 3101 * seg5AccX34 rho) * (rho 3100 * seg5AccY34 rho)) =
          (-1) * (rho 3101 * seg5AccX34 rho) - rho 3100 * seg5AccY34 rho +
            (seg5AccY34 rho - seg5AccX34 rho * (-1)) * (rho 3100 + rho 3101) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3107 * (1 - rho 3105) = rho 3102 - rho 3103 - rho 3104 := ha5
        _ = (-1) * rho 3103 - rho 3104 + (seg5AccY34 rho - seg5AccX34 rho * (-1)) * (rho 3100 + rho 3101) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX35 rho = seg5AccX34 rho - Bool.toZMod bit * (seg5AccX34 rho - rho 3106) := by
      have hd : rho 3108 = Bool.toZMod bit * (rho 3106 - seg5AccX34 rho) := by
        rw [← hbit]
        unfold seg5AccX34
        linear_combination -r3413
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY35 rho = seg5AccY34 rho - Bool.toZMod bit * (seg5AccY34 rho - rho 3107) := by
      have hd : rho 3109 = Bool.toZMod bit * (rho 3107 - seg5AccY34 rho) := by
        rw [← hbit]
        unfold seg5AccY34
        linear_combination -r3414
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3100 * rho 3101 = rho 3110 := by linear_combination r3415
    have hd1 : rho 3100 * rho 3100 = rho 3111 := by linear_combination r3416
    have hd2 : rho 3101 * rho 3101 = rho 3112 := by linear_combination r3417
    have hd3 : rho 3113 * (rho 3101 * rho 3101 + rho 3100 * rho 3100 * (-1)) = 2 * (rho 3100 * rho 3101) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 3114 * (2 - (rho 3101 * rho 3101 + rho 3100 * rho 3100 * (-1))) = rho 3101 * rho 3101 - rho 3100 * rho 3100 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX34 rho : Seg5.F), (seg5AccY34 rho : Seg5.F)⟩
      ⟨(rho 3100 : Seg5.F), (rho 3101 : Seg5.F)⟩
      ⟨(rho 3106 : Seg5.F), (rho 3107 : Seg5.F)⟩
      ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩
      ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg5_rows35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3420 rho ∧ Seg5.relationRow3421 rho ∧ Seg5.relationRow3422 rho ∧ Seg5.relationRow3423 rho ∧ Seg5.relationRow3424 rho ∧ Seg5.relationRow3425 rho ∧ Seg5.relationRow3426 rho ∧ Seg5.relationRow3427 rho ∧ Seg5.relationRow3428 rho ∧ Seg5.relationRow3429 rho ∧ Seg5.relationRow3430 rho ∧ Seg5.relationRow3431 rho ∧ Seg5.relationRow3432 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  exact ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩

theorem seg5_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2450 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩
        ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩
        ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩
        ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩ := by
  obtain ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩ := seg5_rows35 rho h
  unfold Seg5.relationRow3420 at r3420
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3420
  unfold Seg5.relationRow3421 at r3421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421
  unfold Seg5.relationRow3422 at r3422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3422
  unfold Seg5.relationRow3423 at r3423
  unfold Seg5.relationRow3424 at r3424
  unfold Seg5.relationRow3425 at r3425
  unfold Seg5.relationRow3426 at r3426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3426
  unfold Seg5.relationRow3427 at r3427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3427
  unfold Seg5.relationRow3428 at r3428
  unfold Seg5.relationRow3429 at r3429
  unfold Seg5.relationRow3430 at r3430
  unfold Seg5.relationRow3431 at r3431
  unfold Seg5.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 2450 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩
        ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩
        ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩
        ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩ := by
    have hnextx : seg5AccX36 rho = seg5AccX35 rho + rho 3121 := by
      unfold seg5AccX36 seg5AccX35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 35]
      ring
    have hnexty : seg5AccY36 rho = seg5AccY35 rho + rho 3122 := by
      unfold seg5AccY36 seg5AccY35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 35]
      ring
    have ha0 : (rho 3113 + rho 3114) * (seg5AccX35 rho + seg5AccY35 rho) = rho 3115 := by
      unfold seg5AccX35 seg5AccY35
      linear_combination r3420
    have ha1 : rho 3114 * seg5AccX35 rho = rho 3116 := by
      unfold seg5AccX35
      linear_combination r3421
    have ha2 : rho 3113 * seg5AccY35 rho = rho 3117 := by
      unfold seg5AccY35
      linear_combination r3422
    have ha3 : 3021 * rho 3116 * rho 3117 = rho 3118 := by
      linear_combination r3423
    have ha4 : rho 3119 * (1 + rho 3118) = rho 3116 + rho 3117 := by
      linear_combination r3424
    have ha5 : rho 3120 * (1 - rho 3118) = rho 3115 - rho 3116 - rho 3117 := by
      linear_combination r3425
    have haddx :
        rho 3119 * (1 + 3021 * (rho 3114 * seg5AccX35 rho) * (rho 3113 * seg5AccY35 rho)) =
          rho 3114 * seg5AccX35 rho + rho 3113 * seg5AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3120 * (1 - 3021 * (rho 3114 * seg5AccX35 rho) * (rho 3113 * seg5AccY35 rho)) =
          (-1) * (rho 3114 * seg5AccX35 rho) - rho 3113 * seg5AccY35 rho +
            (seg5AccY35 rho - seg5AccX35 rho * (-1)) * (rho 3113 + rho 3114) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3120 * (1 - rho 3118) = rho 3115 - rho 3116 - rho 3117 := ha5
        _ = (-1) * rho 3116 - rho 3117 + (seg5AccY35 rho - seg5AccX35 rho * (-1)) * (rho 3113 + rho 3114) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX36 rho = seg5AccX35 rho - Bool.toZMod bit * (seg5AccX35 rho - rho 3119) := by
      have hd : rho 3121 = Bool.toZMod bit * (rho 3119 - seg5AccX35 rho) := by
        rw [← hbit]
        unfold seg5AccX35
        linear_combination -r3426
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY36 rho = seg5AccY35 rho - Bool.toZMod bit * (seg5AccY35 rho - rho 3120) := by
      have hd : rho 3122 = Bool.toZMod bit * (rho 3120 - seg5AccY35 rho) := by
        rw [← hbit]
        unfold seg5AccY35
        linear_combination -r3427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3113 * rho 3114 = rho 3123 := by linear_combination r3428
    have hd1 : rho 3113 * rho 3113 = rho 3124 := by linear_combination r3429
    have hd2 : rho 3114 * rho 3114 = rho 3125 := by linear_combination r3430
    have hd3 : rho 3126 * (rho 3114 * rho 3114 + rho 3113 * rho 3113 * (-1)) = 2 * (rho 3113 * rho 3114) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 3127 * (2 - (rho 3114 * rho 3114 + rho 3113 * rho 3113 * (-1))) = rho 3114 * rho 3114 - rho 3113 * rho 3113 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX35 rho : Seg5.F), (seg5AccY35 rho : Seg5.F)⟩
      ⟨(rho 3113 : Seg5.F), (rho 3114 : Seg5.F)⟩
      ⟨(rho 3119 : Seg5.F), (rho 3120 : Seg5.F)⟩
      ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩
      ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg5_rows36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3433 rho ∧ Seg5.relationRow3434 rho ∧ Seg5.relationRow3435 rho ∧ Seg5.relationRow3436 rho ∧ Seg5.relationRow3437 rho ∧ Seg5.relationRow3438 rho ∧ Seg5.relationRow3439 rho ∧ Seg5.relationRow3440 rho ∧ Seg5.relationRow3441 rho ∧ Seg5.relationRow3442 rho ∧ Seg5.relationRow3443 rho ∧ Seg5.relationRow3444 rho ∧ Seg5.relationRow3445 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩

theorem seg5_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2451 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩
        ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩
        ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩
        ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩ := by
  obtain ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩ := seg5_rows36 rho h
  unfold Seg5.relationRow3433 at r3433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3433
  unfold Seg5.relationRow3434 at r3434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434
  unfold Seg5.relationRow3435 at r3435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3435
  unfold Seg5.relationRow3436 at r3436
  unfold Seg5.relationRow3437 at r3437
  unfold Seg5.relationRow3438 at r3438
  unfold Seg5.relationRow3439 at r3439
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3439
  unfold Seg5.relationRow3440 at r3440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3440
  unfold Seg5.relationRow3441 at r3441
  unfold Seg5.relationRow3442 at r3442
  unfold Seg5.relationRow3443 at r3443
  unfold Seg5.relationRow3444 at r3444
  unfold Seg5.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 2451 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩
        ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩
        ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩
        ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩ := by
    have hnextx : seg5AccX37 rho = seg5AccX36 rho + rho 3134 := by
      unfold seg5AccX37 seg5AccX36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 36]
      ring
    have hnexty : seg5AccY37 rho = seg5AccY36 rho + rho 3135 := by
      unfold seg5AccY37 seg5AccY36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 36]
      ring
    have ha0 : (rho 3126 + rho 3127) * (seg5AccX36 rho + seg5AccY36 rho) = rho 3128 := by
      unfold seg5AccX36 seg5AccY36
      linear_combination r3433
    have ha1 : rho 3127 * seg5AccX36 rho = rho 3129 := by
      unfold seg5AccX36
      linear_combination r3434
    have ha2 : rho 3126 * seg5AccY36 rho = rho 3130 := by
      unfold seg5AccY36
      linear_combination r3435
    have ha3 : 3021 * rho 3129 * rho 3130 = rho 3131 := by
      linear_combination r3436
    have ha4 : rho 3132 * (1 + rho 3131) = rho 3129 + rho 3130 := by
      linear_combination r3437
    have ha5 : rho 3133 * (1 - rho 3131) = rho 3128 - rho 3129 - rho 3130 := by
      linear_combination r3438
    have haddx :
        rho 3132 * (1 + 3021 * (rho 3127 * seg5AccX36 rho) * (rho 3126 * seg5AccY36 rho)) =
          rho 3127 * seg5AccX36 rho + rho 3126 * seg5AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3133 * (1 - 3021 * (rho 3127 * seg5AccX36 rho) * (rho 3126 * seg5AccY36 rho)) =
          (-1) * (rho 3127 * seg5AccX36 rho) - rho 3126 * seg5AccY36 rho +
            (seg5AccY36 rho - seg5AccX36 rho * (-1)) * (rho 3126 + rho 3127) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3133 * (1 - rho 3131) = rho 3128 - rho 3129 - rho 3130 := ha5
        _ = (-1) * rho 3129 - rho 3130 + (seg5AccY36 rho - seg5AccX36 rho * (-1)) * (rho 3126 + rho 3127) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX37 rho = seg5AccX36 rho - Bool.toZMod bit * (seg5AccX36 rho - rho 3132) := by
      have hd : rho 3134 = Bool.toZMod bit * (rho 3132 - seg5AccX36 rho) := by
        rw [← hbit]
        unfold seg5AccX36
        linear_combination -r3439
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY37 rho = seg5AccY36 rho - Bool.toZMod bit * (seg5AccY36 rho - rho 3133) := by
      have hd : rho 3135 = Bool.toZMod bit * (rho 3133 - seg5AccY36 rho) := by
        rw [← hbit]
        unfold seg5AccY36
        linear_combination -r3440
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3126 * rho 3127 = rho 3136 := by linear_combination r3441
    have hd1 : rho 3126 * rho 3126 = rho 3137 := by linear_combination r3442
    have hd2 : rho 3127 * rho 3127 = rho 3138 := by linear_combination r3443
    have hd3 : rho 3139 * (rho 3127 * rho 3127 + rho 3126 * rho 3126 * (-1)) = 2 * (rho 3126 * rho 3127) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 3140 * (2 - (rho 3127 * rho 3127 + rho 3126 * rho 3126 * (-1))) = rho 3127 * rho 3127 - rho 3126 * rho 3126 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX36 rho : Seg5.F), (seg5AccY36 rho : Seg5.F)⟩
      ⟨(rho 3126 : Seg5.F), (rho 3127 : Seg5.F)⟩
      ⟨(rho 3132 : Seg5.F), (rho 3133 : Seg5.F)⟩
      ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩
      ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg5_rows37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3446 rho ∧ Seg5.relationRow3447 rho ∧ Seg5.relationRow3448 rho ∧ Seg5.relationRow3449 rho ∧ Seg5.relationRow3450 rho ∧ Seg5.relationRow3451 rho ∧ Seg5.relationRow3452 rho ∧ Seg5.relationRow3453 rho ∧ Seg5.relationRow3454 rho ∧ Seg5.relationRow3455 rho ∧ Seg5.relationRow3456 rho ∧ Seg5.relationRow3457 rho ∧ Seg5.relationRow3458 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩

theorem seg5_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2452 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩
        ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩
        ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩
        ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩ := by
  obtain ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩ := seg5_rows37 rho h
  unfold Seg5.relationRow3446 at r3446
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3446
  unfold Seg5.relationRow3447 at r3447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447
  unfold Seg5.relationRow3448 at r3448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3448
  unfold Seg5.relationRow3449 at r3449
  unfold Seg5.relationRow3450 at r3450
  unfold Seg5.relationRow3451 at r3451
  unfold Seg5.relationRow3452 at r3452
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3452
  unfold Seg5.relationRow3453 at r3453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3453
  unfold Seg5.relationRow3454 at r3454
  unfold Seg5.relationRow3455 at r3455
  unfold Seg5.relationRow3456 at r3456
  unfold Seg5.relationRow3457 at r3457
  unfold Seg5.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 2452 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩
        ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩
        ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩
        ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩ := by
    have hnextx : seg5AccX38 rho = seg5AccX37 rho + rho 3147 := by
      unfold seg5AccX38 seg5AccX37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 37]
      ring
    have hnexty : seg5AccY38 rho = seg5AccY37 rho + rho 3148 := by
      unfold seg5AccY38 seg5AccY37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 37]
      ring
    have ha0 : (rho 3139 + rho 3140) * (seg5AccX37 rho + seg5AccY37 rho) = rho 3141 := by
      unfold seg5AccX37 seg5AccY37
      linear_combination r3446
    have ha1 : rho 3140 * seg5AccX37 rho = rho 3142 := by
      unfold seg5AccX37
      linear_combination r3447
    have ha2 : rho 3139 * seg5AccY37 rho = rho 3143 := by
      unfold seg5AccY37
      linear_combination r3448
    have ha3 : 3021 * rho 3142 * rho 3143 = rho 3144 := by
      linear_combination r3449
    have ha4 : rho 3145 * (1 + rho 3144) = rho 3142 + rho 3143 := by
      linear_combination r3450
    have ha5 : rho 3146 * (1 - rho 3144) = rho 3141 - rho 3142 - rho 3143 := by
      linear_combination r3451
    have haddx :
        rho 3145 * (1 + 3021 * (rho 3140 * seg5AccX37 rho) * (rho 3139 * seg5AccY37 rho)) =
          rho 3140 * seg5AccX37 rho + rho 3139 * seg5AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3146 * (1 - 3021 * (rho 3140 * seg5AccX37 rho) * (rho 3139 * seg5AccY37 rho)) =
          (-1) * (rho 3140 * seg5AccX37 rho) - rho 3139 * seg5AccY37 rho +
            (seg5AccY37 rho - seg5AccX37 rho * (-1)) * (rho 3139 + rho 3140) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3146 * (1 - rho 3144) = rho 3141 - rho 3142 - rho 3143 := ha5
        _ = (-1) * rho 3142 - rho 3143 + (seg5AccY37 rho - seg5AccX37 rho * (-1)) * (rho 3139 + rho 3140) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX38 rho = seg5AccX37 rho - Bool.toZMod bit * (seg5AccX37 rho - rho 3145) := by
      have hd : rho 3147 = Bool.toZMod bit * (rho 3145 - seg5AccX37 rho) := by
        rw [← hbit]
        unfold seg5AccX37
        linear_combination -r3452
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY38 rho = seg5AccY37 rho - Bool.toZMod bit * (seg5AccY37 rho - rho 3146) := by
      have hd : rho 3148 = Bool.toZMod bit * (rho 3146 - seg5AccY37 rho) := by
        rw [← hbit]
        unfold seg5AccY37
        linear_combination -r3453
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3139 * rho 3140 = rho 3149 := by linear_combination r3454
    have hd1 : rho 3139 * rho 3139 = rho 3150 := by linear_combination r3455
    have hd2 : rho 3140 * rho 3140 = rho 3151 := by linear_combination r3456
    have hd3 : rho 3152 * (rho 3140 * rho 3140 + rho 3139 * rho 3139 * (-1)) = 2 * (rho 3139 * rho 3140) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 3153 * (2 - (rho 3140 * rho 3140 + rho 3139 * rho 3139 * (-1))) = rho 3140 * rho 3140 - rho 3139 * rho 3139 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX37 rho : Seg5.F), (seg5AccY37 rho : Seg5.F)⟩
      ⟨(rho 3139 : Seg5.F), (rho 3140 : Seg5.F)⟩
      ⟨(rho 3145 : Seg5.F), (rho 3146 : Seg5.F)⟩
      ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩
      ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg5_rows38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3459 rho ∧ Seg5.relationRow3460 rho ∧ Seg5.relationRow3461 rho ∧ Seg5.relationRow3462 rho ∧ Seg5.relationRow3463 rho ∧ Seg5.relationRow3464 rho ∧ Seg5.relationRow3465 rho ∧ Seg5.relationRow3466 rho ∧ Seg5.relationRow3467 rho ∧ Seg5.relationRow3468 rho ∧ Seg5.relationRow3469 rho ∧ Seg5.relationRow3470 rho ∧ Seg5.relationRow3471 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩

theorem seg5_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2453 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩
        ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩
        ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩
        ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩ := by
  obtain ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩ := seg5_rows38 rho h
  unfold Seg5.relationRow3459 at r3459
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3459
  unfold Seg5.relationRow3460 at r3460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460
  unfold Seg5.relationRow3461 at r3461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3461
  unfold Seg5.relationRow3462 at r3462
  unfold Seg5.relationRow3463 at r3463
  unfold Seg5.relationRow3464 at r3464
  unfold Seg5.relationRow3465 at r3465
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3465
  unfold Seg5.relationRow3466 at r3466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3466
  unfold Seg5.relationRow3467 at r3467
  unfold Seg5.relationRow3468 at r3468
  unfold Seg5.relationRow3469 at r3469
  unfold Seg5.relationRow3470 at r3470
  unfold Seg5.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 2453 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩
        ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩
        ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩
        ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩ := by
    have hnextx : seg5AccX39 rho = seg5AccX38 rho + rho 3160 := by
      unfold seg5AccX39 seg5AccX38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 38]
      ring
    have hnexty : seg5AccY39 rho = seg5AccY38 rho + rho 3161 := by
      unfold seg5AccY39 seg5AccY38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 38]
      ring
    have ha0 : (rho 3152 + rho 3153) * (seg5AccX38 rho + seg5AccY38 rho) = rho 3154 := by
      unfold seg5AccX38 seg5AccY38
      linear_combination r3459
    have ha1 : rho 3153 * seg5AccX38 rho = rho 3155 := by
      unfold seg5AccX38
      linear_combination r3460
    have ha2 : rho 3152 * seg5AccY38 rho = rho 3156 := by
      unfold seg5AccY38
      linear_combination r3461
    have ha3 : 3021 * rho 3155 * rho 3156 = rho 3157 := by
      linear_combination r3462
    have ha4 : rho 3158 * (1 + rho 3157) = rho 3155 + rho 3156 := by
      linear_combination r3463
    have ha5 : rho 3159 * (1 - rho 3157) = rho 3154 - rho 3155 - rho 3156 := by
      linear_combination r3464
    have haddx :
        rho 3158 * (1 + 3021 * (rho 3153 * seg5AccX38 rho) * (rho 3152 * seg5AccY38 rho)) =
          rho 3153 * seg5AccX38 rho + rho 3152 * seg5AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3159 * (1 - 3021 * (rho 3153 * seg5AccX38 rho) * (rho 3152 * seg5AccY38 rho)) =
          (-1) * (rho 3153 * seg5AccX38 rho) - rho 3152 * seg5AccY38 rho +
            (seg5AccY38 rho - seg5AccX38 rho * (-1)) * (rho 3152 + rho 3153) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3159 * (1 - rho 3157) = rho 3154 - rho 3155 - rho 3156 := ha5
        _ = (-1) * rho 3155 - rho 3156 + (seg5AccY38 rho - seg5AccX38 rho * (-1)) * (rho 3152 + rho 3153) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX39 rho = seg5AccX38 rho - Bool.toZMod bit * (seg5AccX38 rho - rho 3158) := by
      have hd : rho 3160 = Bool.toZMod bit * (rho 3158 - seg5AccX38 rho) := by
        rw [← hbit]
        unfold seg5AccX38
        linear_combination -r3465
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY39 rho = seg5AccY38 rho - Bool.toZMod bit * (seg5AccY38 rho - rho 3159) := by
      have hd : rho 3161 = Bool.toZMod bit * (rho 3159 - seg5AccY38 rho) := by
        rw [← hbit]
        unfold seg5AccY38
        linear_combination -r3466
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3152 * rho 3153 = rho 3162 := by linear_combination r3467
    have hd1 : rho 3152 * rho 3152 = rho 3163 := by linear_combination r3468
    have hd2 : rho 3153 * rho 3153 = rho 3164 := by linear_combination r3469
    have hd3 : rho 3165 * (rho 3153 * rho 3153 + rho 3152 * rho 3152 * (-1)) = 2 * (rho 3152 * rho 3153) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 3166 * (2 - (rho 3153 * rho 3153 + rho 3152 * rho 3152 * (-1))) = rho 3153 * rho 3153 - rho 3152 * rho 3152 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX38 rho : Seg5.F), (seg5AccY38 rho : Seg5.F)⟩
      ⟨(rho 3152 : Seg5.F), (rho 3153 : Seg5.F)⟩
      ⟨(rho 3158 : Seg5.F), (rho 3159 : Seg5.F)⟩
      ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩
      ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg5_rows39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3472 rho ∧ Seg5.relationRow3473 rho ∧ Seg5.relationRow3474 rho ∧ Seg5.relationRow3475 rho ∧ Seg5.relationRow3476 rho ∧ Seg5.relationRow3477 rho ∧ Seg5.relationRow3478 rho ∧ Seg5.relationRow3479 rho ∧ Seg5.relationRow3480 rho ∧ Seg5.relationRow3481 rho ∧ Seg5.relationRow3482 rho ∧ Seg5.relationRow3483 rho ∧ Seg5.relationRow3484 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩

theorem seg5_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2454 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩
        ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩
        ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩
        ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩ := by
  obtain ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩ := seg5_rows39 rho h
  unfold Seg5.relationRow3472 at r3472
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3472
  unfold Seg5.relationRow3473 at r3473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473
  unfold Seg5.relationRow3474 at r3474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3474
  unfold Seg5.relationRow3475 at r3475
  unfold Seg5.relationRow3476 at r3476
  unfold Seg5.relationRow3477 at r3477
  unfold Seg5.relationRow3478 at r3478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3478
  unfold Seg5.relationRow3479 at r3479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3479
  unfold Seg5.relationRow3480 at r3480
  unfold Seg5.relationRow3481 at r3481
  unfold Seg5.relationRow3482 at r3482
  unfold Seg5.relationRow3483 at r3483
  unfold Seg5.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 2454 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩
        ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩
        ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩
        ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩ := by
    have hnextx : seg5AccX40 rho = seg5AccX39 rho + rho 3173 := by
      unfold seg5AccX40 seg5AccX39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 39]
      ring
    have hnexty : seg5AccY40 rho = seg5AccY39 rho + rho 3174 := by
      unfold seg5AccY40 seg5AccY39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 39]
      ring
    have ha0 : (rho 3165 + rho 3166) * (seg5AccX39 rho + seg5AccY39 rho) = rho 3167 := by
      unfold seg5AccX39 seg5AccY39
      linear_combination r3472
    have ha1 : rho 3166 * seg5AccX39 rho = rho 3168 := by
      unfold seg5AccX39
      linear_combination r3473
    have ha2 : rho 3165 * seg5AccY39 rho = rho 3169 := by
      unfold seg5AccY39
      linear_combination r3474
    have ha3 : 3021 * rho 3168 * rho 3169 = rho 3170 := by
      linear_combination r3475
    have ha4 : rho 3171 * (1 + rho 3170) = rho 3168 + rho 3169 := by
      linear_combination r3476
    have ha5 : rho 3172 * (1 - rho 3170) = rho 3167 - rho 3168 - rho 3169 := by
      linear_combination r3477
    have haddx :
        rho 3171 * (1 + 3021 * (rho 3166 * seg5AccX39 rho) * (rho 3165 * seg5AccY39 rho)) =
          rho 3166 * seg5AccX39 rho + rho 3165 * seg5AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3172 * (1 - 3021 * (rho 3166 * seg5AccX39 rho) * (rho 3165 * seg5AccY39 rho)) =
          (-1) * (rho 3166 * seg5AccX39 rho) - rho 3165 * seg5AccY39 rho +
            (seg5AccY39 rho - seg5AccX39 rho * (-1)) * (rho 3165 + rho 3166) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3172 * (1 - rho 3170) = rho 3167 - rho 3168 - rho 3169 := ha5
        _ = (-1) * rho 3168 - rho 3169 + (seg5AccY39 rho - seg5AccX39 rho * (-1)) * (rho 3165 + rho 3166) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX40 rho = seg5AccX39 rho - Bool.toZMod bit * (seg5AccX39 rho - rho 3171) := by
      have hd : rho 3173 = Bool.toZMod bit * (rho 3171 - seg5AccX39 rho) := by
        rw [← hbit]
        unfold seg5AccX39
        linear_combination -r3478
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY40 rho = seg5AccY39 rho - Bool.toZMod bit * (seg5AccY39 rho - rho 3172) := by
      have hd : rho 3174 = Bool.toZMod bit * (rho 3172 - seg5AccY39 rho) := by
        rw [← hbit]
        unfold seg5AccY39
        linear_combination -r3479
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3165 * rho 3166 = rho 3175 := by linear_combination r3480
    have hd1 : rho 3165 * rho 3165 = rho 3176 := by linear_combination r3481
    have hd2 : rho 3166 * rho 3166 = rho 3177 := by linear_combination r3482
    have hd3 : rho 3178 * (rho 3166 * rho 3166 + rho 3165 * rho 3165 * (-1)) = 2 * (rho 3165 * rho 3166) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 3179 * (2 - (rho 3166 * rho 3166 + rho 3165 * rho 3165 * (-1))) = rho 3166 * rho 3166 - rho 3165 * rho 3165 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX39 rho : Seg5.F), (seg5AccY39 rho : Seg5.F)⟩
      ⟨(rho 3165 : Seg5.F), (rho 3166 : Seg5.F)⟩
      ⟨(rho 3171 : Seg5.F), (rho 3172 : Seg5.F)⟩
      ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩
      ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg5_rows40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3485 rho ∧ Seg5.relationRow3486 rho ∧ Seg5.relationRow3487 rho ∧ Seg5.relationRow3488 rho ∧ Seg5.relationRow3489 rho ∧ Seg5.relationRow3490 rho ∧ Seg5.relationRow3491 rho ∧ Seg5.relationRow3492 rho ∧ Seg5.relationRow3493 rho ∧ Seg5.relationRow3494 rho ∧ Seg5.relationRow3495 rho ∧ Seg5.relationRow3496 rho ∧ Seg5.relationRow3497 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩

theorem seg5_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2455 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩
        ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩
        ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩
        ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩ := by
  obtain ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩ := seg5_rows40 rho h
  unfold Seg5.relationRow3485 at r3485
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3485
  unfold Seg5.relationRow3486 at r3486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486
  unfold Seg5.relationRow3487 at r3487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3487
  unfold Seg5.relationRow3488 at r3488
  unfold Seg5.relationRow3489 at r3489
  unfold Seg5.relationRow3490 at r3490
  unfold Seg5.relationRow3491 at r3491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3491
  unfold Seg5.relationRow3492 at r3492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3492
  unfold Seg5.relationRow3493 at r3493
  unfold Seg5.relationRow3494 at r3494
  unfold Seg5.relationRow3495 at r3495
  unfold Seg5.relationRow3496 at r3496
  unfold Seg5.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 2455 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩
        ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩
        ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩
        ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩ := by
    have hnextx : seg5AccX41 rho = seg5AccX40 rho + rho 3186 := by
      unfold seg5AccX41 seg5AccX40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 40]
      ring
    have hnexty : seg5AccY41 rho = seg5AccY40 rho + rho 3187 := by
      unfold seg5AccY41 seg5AccY40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 40]
      ring
    have ha0 : (rho 3178 + rho 3179) * (seg5AccX40 rho + seg5AccY40 rho) = rho 3180 := by
      unfold seg5AccX40 seg5AccY40
      linear_combination r3485
    have ha1 : rho 3179 * seg5AccX40 rho = rho 3181 := by
      unfold seg5AccX40
      linear_combination r3486
    have ha2 : rho 3178 * seg5AccY40 rho = rho 3182 := by
      unfold seg5AccY40
      linear_combination r3487
    have ha3 : 3021 * rho 3181 * rho 3182 = rho 3183 := by
      linear_combination r3488
    have ha4 : rho 3184 * (1 + rho 3183) = rho 3181 + rho 3182 := by
      linear_combination r3489
    have ha5 : rho 3185 * (1 - rho 3183) = rho 3180 - rho 3181 - rho 3182 := by
      linear_combination r3490
    have haddx :
        rho 3184 * (1 + 3021 * (rho 3179 * seg5AccX40 rho) * (rho 3178 * seg5AccY40 rho)) =
          rho 3179 * seg5AccX40 rho + rho 3178 * seg5AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3185 * (1 - 3021 * (rho 3179 * seg5AccX40 rho) * (rho 3178 * seg5AccY40 rho)) =
          (-1) * (rho 3179 * seg5AccX40 rho) - rho 3178 * seg5AccY40 rho +
            (seg5AccY40 rho - seg5AccX40 rho * (-1)) * (rho 3178 + rho 3179) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3185 * (1 - rho 3183) = rho 3180 - rho 3181 - rho 3182 := ha5
        _ = (-1) * rho 3181 - rho 3182 + (seg5AccY40 rho - seg5AccX40 rho * (-1)) * (rho 3178 + rho 3179) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX41 rho = seg5AccX40 rho - Bool.toZMod bit * (seg5AccX40 rho - rho 3184) := by
      have hd : rho 3186 = Bool.toZMod bit * (rho 3184 - seg5AccX40 rho) := by
        rw [← hbit]
        unfold seg5AccX40
        linear_combination -r3491
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY41 rho = seg5AccY40 rho - Bool.toZMod bit * (seg5AccY40 rho - rho 3185) := by
      have hd : rho 3187 = Bool.toZMod bit * (rho 3185 - seg5AccY40 rho) := by
        rw [← hbit]
        unfold seg5AccY40
        linear_combination -r3492
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3178 * rho 3179 = rho 3188 := by linear_combination r3493
    have hd1 : rho 3178 * rho 3178 = rho 3189 := by linear_combination r3494
    have hd2 : rho 3179 * rho 3179 = rho 3190 := by linear_combination r3495
    have hd3 : rho 3191 * (rho 3179 * rho 3179 + rho 3178 * rho 3178 * (-1)) = 2 * (rho 3178 * rho 3179) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 3192 * (2 - (rho 3179 * rho 3179 + rho 3178 * rho 3178 * (-1))) = rho 3179 * rho 3179 - rho 3178 * rho 3178 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX40 rho : Seg5.F), (seg5AccY40 rho : Seg5.F)⟩
      ⟨(rho 3178 : Seg5.F), (rho 3179 : Seg5.F)⟩
      ⟨(rho 3184 : Seg5.F), (rho 3185 : Seg5.F)⟩
      ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩
      ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg5_rows41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3498 rho ∧ Seg5.relationRow3499 rho ∧ Seg5.relationRow3500 rho ∧ Seg5.relationRow3501 rho ∧ Seg5.relationRow3502 rho ∧ Seg5.relationRow3503 rho ∧ Seg5.relationRow3504 rho ∧ Seg5.relationRow3505 rho ∧ Seg5.relationRow3506 rho ∧ Seg5.relationRow3507 rho ∧ Seg5.relationRow3508 rho ∧ Seg5.relationRow3509 rho ∧ Seg5.relationRow3510 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩

theorem seg5_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2456 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩
        ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩
        ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩
        ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩ := by
  obtain ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩ := seg5_rows41 rho h
  unfold Seg5.relationRow3498 at r3498
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3498
  unfold Seg5.relationRow3499 at r3499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499
  unfold Seg5.relationRow3500 at r3500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3500
  unfold Seg5.relationRow3501 at r3501
  unfold Seg5.relationRow3502 at r3502
  unfold Seg5.relationRow3503 at r3503
  unfold Seg5.relationRow3504 at r3504
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3504
  unfold Seg5.relationRow3505 at r3505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3505
  unfold Seg5.relationRow3506 at r3506
  unfold Seg5.relationRow3507 at r3507
  unfold Seg5.relationRow3508 at r3508
  unfold Seg5.relationRow3509 at r3509
  unfold Seg5.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 2456 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩
        ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩
        ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩
        ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩ := by
    have hnextx : seg5AccX42 rho = seg5AccX41 rho + rho 3199 := by
      unfold seg5AccX42 seg5AccX41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 41]
      ring
    have hnexty : seg5AccY42 rho = seg5AccY41 rho + rho 3200 := by
      unfold seg5AccY42 seg5AccY41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 41]
      ring
    have ha0 : (rho 3191 + rho 3192) * (seg5AccX41 rho + seg5AccY41 rho) = rho 3193 := by
      unfold seg5AccX41 seg5AccY41
      linear_combination r3498
    have ha1 : rho 3192 * seg5AccX41 rho = rho 3194 := by
      unfold seg5AccX41
      linear_combination r3499
    have ha2 : rho 3191 * seg5AccY41 rho = rho 3195 := by
      unfold seg5AccY41
      linear_combination r3500
    have ha3 : 3021 * rho 3194 * rho 3195 = rho 3196 := by
      linear_combination r3501
    have ha4 : rho 3197 * (1 + rho 3196) = rho 3194 + rho 3195 := by
      linear_combination r3502
    have ha5 : rho 3198 * (1 - rho 3196) = rho 3193 - rho 3194 - rho 3195 := by
      linear_combination r3503
    have haddx :
        rho 3197 * (1 + 3021 * (rho 3192 * seg5AccX41 rho) * (rho 3191 * seg5AccY41 rho)) =
          rho 3192 * seg5AccX41 rho + rho 3191 * seg5AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3198 * (1 - 3021 * (rho 3192 * seg5AccX41 rho) * (rho 3191 * seg5AccY41 rho)) =
          (-1) * (rho 3192 * seg5AccX41 rho) - rho 3191 * seg5AccY41 rho +
            (seg5AccY41 rho - seg5AccX41 rho * (-1)) * (rho 3191 + rho 3192) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3198 * (1 - rho 3196) = rho 3193 - rho 3194 - rho 3195 := ha5
        _ = (-1) * rho 3194 - rho 3195 + (seg5AccY41 rho - seg5AccX41 rho * (-1)) * (rho 3191 + rho 3192) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX42 rho = seg5AccX41 rho - Bool.toZMod bit * (seg5AccX41 rho - rho 3197) := by
      have hd : rho 3199 = Bool.toZMod bit * (rho 3197 - seg5AccX41 rho) := by
        rw [← hbit]
        unfold seg5AccX41
        linear_combination -r3504
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY42 rho = seg5AccY41 rho - Bool.toZMod bit * (seg5AccY41 rho - rho 3198) := by
      have hd : rho 3200 = Bool.toZMod bit * (rho 3198 - seg5AccY41 rho) := by
        rw [← hbit]
        unfold seg5AccY41
        linear_combination -r3505
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3191 * rho 3192 = rho 3201 := by linear_combination r3506
    have hd1 : rho 3191 * rho 3191 = rho 3202 := by linear_combination r3507
    have hd2 : rho 3192 * rho 3192 = rho 3203 := by linear_combination r3508
    have hd3 : rho 3204 * (rho 3192 * rho 3192 + rho 3191 * rho 3191 * (-1)) = 2 * (rho 3191 * rho 3192) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 3205 * (2 - (rho 3192 * rho 3192 + rho 3191 * rho 3191 * (-1))) = rho 3192 * rho 3192 - rho 3191 * rho 3191 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX41 rho : Seg5.F), (seg5AccY41 rho : Seg5.F)⟩
      ⟨(rho 3191 : Seg5.F), (rho 3192 : Seg5.F)⟩
      ⟨(rho 3197 : Seg5.F), (rho 3198 : Seg5.F)⟩
      ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩
      ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg5_rows42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3511 rho ∧ Seg5.relationRow3512 rho ∧ Seg5.relationRow3513 rho ∧ Seg5.relationRow3514 rho ∧ Seg5.relationRow3515 rho ∧ Seg5.relationRow3516 rho ∧ Seg5.relationRow3517 rho ∧ Seg5.relationRow3518 rho ∧ Seg5.relationRow3519 rho ∧ Seg5.relationRow3520 rho ∧ Seg5.relationRow3521 rho ∧ Seg5.relationRow3522 rho ∧ Seg5.relationRow3523 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg5.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩

theorem seg5_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2457 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩
        ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩
        ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩
        ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩ := by
  obtain ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩ := seg5_rows42 rho h
  unfold Seg5.relationRow3511 at r3511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3511
  unfold Seg5.relationRow3512 at r3512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512
  unfold Seg5.relationRow3513 at r3513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3513
  unfold Seg5.relationRow3514 at r3514
  unfold Seg5.relationRow3515 at r3515
  unfold Seg5.relationRow3516 at r3516
  unfold Seg5.relationRow3517 at r3517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3517
  unfold Seg5.relationRow3518 at r3518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3518
  unfold Seg5.relationRow3519 at r3519
  unfold Seg5.relationRow3520 at r3520
  unfold Seg5.relationRow3521 at r3521
  unfold Seg5.relationRow3522 at r3522
  unfold Seg5.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 2457 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩
        ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩
        ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩
        ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩ := by
    have hnextx : seg5AccX43 rho = seg5AccX42 rho + rho 3212 := by
      unfold seg5AccX43 seg5AccX42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 42]
      ring
    have hnexty : seg5AccY43 rho = seg5AccY42 rho + rho 3213 := by
      unfold seg5AccY43 seg5AccY42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 42]
      ring
    have ha0 : (rho 3204 + rho 3205) * (seg5AccX42 rho + seg5AccY42 rho) = rho 3206 := by
      unfold seg5AccX42 seg5AccY42
      linear_combination r3511
    have ha1 : rho 3205 * seg5AccX42 rho = rho 3207 := by
      unfold seg5AccX42
      linear_combination r3512
    have ha2 : rho 3204 * seg5AccY42 rho = rho 3208 := by
      unfold seg5AccY42
      linear_combination r3513
    have ha3 : 3021 * rho 3207 * rho 3208 = rho 3209 := by
      linear_combination r3514
    have ha4 : rho 3210 * (1 + rho 3209) = rho 3207 + rho 3208 := by
      linear_combination r3515
    have ha5 : rho 3211 * (1 - rho 3209) = rho 3206 - rho 3207 - rho 3208 := by
      linear_combination r3516
    have haddx :
        rho 3210 * (1 + 3021 * (rho 3205 * seg5AccX42 rho) * (rho 3204 * seg5AccY42 rho)) =
          rho 3205 * seg5AccX42 rho + rho 3204 * seg5AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3211 * (1 - 3021 * (rho 3205 * seg5AccX42 rho) * (rho 3204 * seg5AccY42 rho)) =
          (-1) * (rho 3205 * seg5AccX42 rho) - rho 3204 * seg5AccY42 rho +
            (seg5AccY42 rho - seg5AccX42 rho * (-1)) * (rho 3204 + rho 3205) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3211 * (1 - rho 3209) = rho 3206 - rho 3207 - rho 3208 := ha5
        _ = (-1) * rho 3207 - rho 3208 + (seg5AccY42 rho - seg5AccX42 rho * (-1)) * (rho 3204 + rho 3205) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX43 rho = seg5AccX42 rho - Bool.toZMod bit * (seg5AccX42 rho - rho 3210) := by
      have hd : rho 3212 = Bool.toZMod bit * (rho 3210 - seg5AccX42 rho) := by
        rw [← hbit]
        unfold seg5AccX42
        linear_combination -r3517
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY43 rho = seg5AccY42 rho - Bool.toZMod bit * (seg5AccY42 rho - rho 3211) := by
      have hd : rho 3213 = Bool.toZMod bit * (rho 3211 - seg5AccY42 rho) := by
        rw [← hbit]
        unfold seg5AccY42
        linear_combination -r3518
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3204 * rho 3205 = rho 3214 := by linear_combination r3519
    have hd1 : rho 3204 * rho 3204 = rho 3215 := by linear_combination r3520
    have hd2 : rho 3205 * rho 3205 = rho 3216 := by linear_combination r3521
    have hd3 : rho 3217 * (rho 3205 * rho 3205 + rho 3204 * rho 3204 * (-1)) = 2 * (rho 3204 * rho 3205) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 3218 * (2 - (rho 3205 * rho 3205 + rho 3204 * rho 3204 * (-1))) = rho 3205 * rho 3205 - rho 3204 * rho 3204 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX42 rho : Seg5.F), (seg5AccY42 rho : Seg5.F)⟩
      ⟨(rho 3204 : Seg5.F), (rho 3205 : Seg5.F)⟩
      ⟨(rho 3210 : Seg5.F), (rho 3211 : Seg5.F)⟩
      ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩
      ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg5_rows43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3524 rho ∧ Seg5.relationRow3525 rho ∧ Seg5.relationRow3526 rho ∧ Seg5.relationRow3527 rho ∧ Seg5.relationRow3528 rho ∧ Seg5.relationRow3529 rho ∧ Seg5.relationRow3530 rho ∧ Seg5.relationRow3531 rho ∧ Seg5.relationRow3532 rho ∧ Seg5.relationRow3533 rho ∧ Seg5.relationRow3534 rho ∧ Seg5.relationRow3535 rho ∧ Seg5.relationRow3536 rho := by
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
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩

theorem seg5_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2458 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩
        ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩
        ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩
        ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩ := by
  obtain ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩ := seg5_rows43 rho h
  unfold Seg5.relationRow3524 at r3524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3524
  unfold Seg5.relationRow3525 at r3525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525
  unfold Seg5.relationRow3526 at r3526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3526
  unfold Seg5.relationRow3527 at r3527
  unfold Seg5.relationRow3528 at r3528
  unfold Seg5.relationRow3529 at r3529
  unfold Seg5.relationRow3530 at r3530
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3530
  unfold Seg5.relationRow3531 at r3531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3531
  unfold Seg5.relationRow3532 at r3532
  unfold Seg5.relationRow3533 at r3533
  unfold Seg5.relationRow3534 at r3534
  unfold Seg5.relationRow3535 at r3535
  unfold Seg5.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 2458 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩
        ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩
        ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩
        ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩ := by
    have hnextx : seg5AccX44 rho = seg5AccX43 rho + rho 3225 := by
      unfold seg5AccX44 seg5AccX43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 43]
      ring
    have hnexty : seg5AccY44 rho = seg5AccY43 rho + rho 3226 := by
      unfold seg5AccY44 seg5AccY43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 43]
      ring
    have ha0 : (rho 3217 + rho 3218) * (seg5AccX43 rho + seg5AccY43 rho) = rho 3219 := by
      unfold seg5AccX43 seg5AccY43
      linear_combination r3524
    have ha1 : rho 3218 * seg5AccX43 rho = rho 3220 := by
      unfold seg5AccX43
      linear_combination r3525
    have ha2 : rho 3217 * seg5AccY43 rho = rho 3221 := by
      unfold seg5AccY43
      linear_combination r3526
    have ha3 : 3021 * rho 3220 * rho 3221 = rho 3222 := by
      linear_combination r3527
    have ha4 : rho 3223 * (1 + rho 3222) = rho 3220 + rho 3221 := by
      linear_combination r3528
    have ha5 : rho 3224 * (1 - rho 3222) = rho 3219 - rho 3220 - rho 3221 := by
      linear_combination r3529
    have haddx :
        rho 3223 * (1 + 3021 * (rho 3218 * seg5AccX43 rho) * (rho 3217 * seg5AccY43 rho)) =
          rho 3218 * seg5AccX43 rho + rho 3217 * seg5AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3224 * (1 - 3021 * (rho 3218 * seg5AccX43 rho) * (rho 3217 * seg5AccY43 rho)) =
          (-1) * (rho 3218 * seg5AccX43 rho) - rho 3217 * seg5AccY43 rho +
            (seg5AccY43 rho - seg5AccX43 rho * (-1)) * (rho 3217 + rho 3218) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3224 * (1 - rho 3222) = rho 3219 - rho 3220 - rho 3221 := ha5
        _ = (-1) * rho 3220 - rho 3221 + (seg5AccY43 rho - seg5AccX43 rho * (-1)) * (rho 3217 + rho 3218) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX44 rho = seg5AccX43 rho - Bool.toZMod bit * (seg5AccX43 rho - rho 3223) := by
      have hd : rho 3225 = Bool.toZMod bit * (rho 3223 - seg5AccX43 rho) := by
        rw [← hbit]
        unfold seg5AccX43
        linear_combination -r3530
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY44 rho = seg5AccY43 rho - Bool.toZMod bit * (seg5AccY43 rho - rho 3224) := by
      have hd : rho 3226 = Bool.toZMod bit * (rho 3224 - seg5AccY43 rho) := by
        rw [← hbit]
        unfold seg5AccY43
        linear_combination -r3531
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3217 * rho 3218 = rho 3227 := by linear_combination r3532
    have hd1 : rho 3217 * rho 3217 = rho 3228 := by linear_combination r3533
    have hd2 : rho 3218 * rho 3218 = rho 3229 := by linear_combination r3534
    have hd3 : rho 3230 * (rho 3218 * rho 3218 + rho 3217 * rho 3217 * (-1)) = 2 * (rho 3217 * rho 3218) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 3231 * (2 - (rho 3218 * rho 3218 + rho 3217 * rho 3217 * (-1))) = rho 3218 * rho 3218 - rho 3217 * rho 3217 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX43 rho : Seg5.F), (seg5AccY43 rho : Seg5.F)⟩
      ⟨(rho 3217 : Seg5.F), (rho 3218 : Seg5.F)⟩
      ⟨(rho 3223 : Seg5.F), (rho 3224 : Seg5.F)⟩
      ⟨(seg5AccX44 rho : Seg5.F), (seg5AccY44 rho : Seg5.F)⟩
      ⟨(rho 3230 : Seg5.F), (rho 3231 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg5_hstep_c3 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg5_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg5_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg5_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg5_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg5_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg5_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg5_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg5_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg5_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg5_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
