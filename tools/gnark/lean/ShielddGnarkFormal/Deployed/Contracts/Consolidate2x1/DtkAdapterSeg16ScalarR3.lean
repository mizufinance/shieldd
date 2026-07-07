import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3394 rho ∧ Seg16.relationRow3395 rho ∧ Seg16.relationRow3396 rho ∧ Seg16.relationRow3397 rho ∧ Seg16.relationRow3398 rho ∧ Seg16.relationRow3399 rho ∧ Seg16.relationRow3400 rho ∧ Seg16.relationRow3401 rho ∧ Seg16.relationRow3402 rho ∧ Seg16.relationRow3403 rho ∧ Seg16.relationRow3404 rho ∧ Seg16.relationRow3405 rho ∧ Seg16.relationRow3406 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩

theorem seg16_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15325 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩ := by
  obtain ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩ := seg16_rows33 rho h
  unfold Seg16.relationRow3394 at r3394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3394
  unfold Seg16.relationRow3395 at r3395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395
  unfold Seg16.relationRow3396 at r3396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3396
  unfold Seg16.relationRow3397 at r3397
  unfold Seg16.relationRow3398 at r3398
  unfold Seg16.relationRow3399 at r3399
  unfold Seg16.relationRow3400 at r3400
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3400
  unfold Seg16.relationRow3401 at r3401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3401
  unfold Seg16.relationRow3402 at r3402
  unfold Seg16.relationRow3403 at r3403
  unfold Seg16.relationRow3404 at r3404
  unfold Seg16.relationRow3405 at r3405
  unfold Seg16.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 15325 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩ := by
    have hnextx : seg16AccX34 rho = seg16AccX33 rho + rho 15972 := by
      unfold seg16AccX34 seg16AccX33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 33]
      ring
    have hnexty : seg16AccY34 rho = seg16AccY33 rho + rho 15973 := by
      unfold seg16AccY34 seg16AccY33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 33]
      ring
    have ha0 : (rho 15964 + rho 15965) * (seg16AccX33 rho + seg16AccY33 rho) = rho 15966 := by
      unfold seg16AccX33 seg16AccY33
      linear_combination r3394
    have ha1 : rho 15965 * seg16AccX33 rho = rho 15967 := by
      unfold seg16AccX33
      linear_combination r3395
    have ha2 : rho 15964 * seg16AccY33 rho = rho 15968 := by
      unfold seg16AccY33
      linear_combination r3396
    have ha3 : 3021 * rho 15967 * rho 15968 = rho 15969 := by
      linear_combination r3397
    have ha4 : rho 15970 * (1 + rho 15969) = rho 15967 + rho 15968 := by
      linear_combination r3398
    have ha5 : rho 15971 * (1 - rho 15969) = rho 15966 - rho 15967 - rho 15968 := by
      linear_combination r3399
    have haddx :
        rho 15970 * (1 + 3021 * (rho 15965 * seg16AccX33 rho) * (rho 15964 * seg16AccY33 rho)) =
          rho 15965 * seg16AccX33 rho + rho 15964 * seg16AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15971 * (1 - 3021 * (rho 15965 * seg16AccX33 rho) * (rho 15964 * seg16AccY33 rho)) =
          (-1) * (rho 15965 * seg16AccX33 rho) - rho 15964 * seg16AccY33 rho +
            (seg16AccY33 rho - seg16AccX33 rho * (-1)) * (rho 15964 + rho 15965) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15971 * (1 - rho 15969) = rho 15966 - rho 15967 - rho 15968 := ha5
        _ = (-1) * rho 15967 - rho 15968 + (seg16AccY33 rho - seg16AccX33 rho * (-1)) * (rho 15964 + rho 15965) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX34 rho = seg16AccX33 rho - Bool.toZMod bit * (seg16AccX33 rho - rho 15970) := by
      have hd : rho 15972 = Bool.toZMod bit * (rho 15970 - seg16AccX33 rho) := by
        rw [← hbit]
        unfold seg16AccX33
        linear_combination -r3400
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY34 rho = seg16AccY33 rho - Bool.toZMod bit * (seg16AccY33 rho - rho 15971) := by
      have hd : rho 15973 = Bool.toZMod bit * (rho 15971 - seg16AccY33 rho) := by
        rw [← hbit]
        unfold seg16AccY33
        linear_combination -r3401
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15964 * rho 15965 = rho 15974 := by linear_combination r3402
    have hd1 : rho 15964 * rho 15964 = rho 15975 := by linear_combination r3403
    have hd2 : rho 15965 * rho 15965 = rho 15976 := by linear_combination r3404
    have hd3 : rho 15977 * (rho 15965 * rho 15965 + rho 15964 * rho 15964 * (-1)) = 2 * (rho 15964 * rho 15965) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 15978 * (2 - (rho 15965 * rho 15965 + rho 15964 * rho 15964 * (-1))) = rho 15965 * rho 15965 - rho 15964 * rho 15964 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
      ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
      ⟨(rho 15970 : Seg16.F), (rho 15971 : Seg16.F)⟩
      ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
      ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg16_rows34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3407 rho ∧ Seg16.relationRow3408 rho ∧ Seg16.relationRow3409 rho ∧ Seg16.relationRow3410 rho ∧ Seg16.relationRow3411 rho ∧ Seg16.relationRow3412 rho ∧ Seg16.relationRow3413 rho ∧ Seg16.relationRow3414 rho ∧ Seg16.relationRow3415 rho ∧ Seg16.relationRow3416 rho ∧ Seg16.relationRow3417 rho ∧ Seg16.relationRow3418 rho ∧ Seg16.relationRow3419 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩

theorem seg16_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15326 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩ := by
  obtain ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩ := seg16_rows34 rho h
  unfold Seg16.relationRow3407 at r3407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3407
  unfold Seg16.relationRow3408 at r3408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408
  unfold Seg16.relationRow3409 at r3409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3409
  unfold Seg16.relationRow3410 at r3410
  unfold Seg16.relationRow3411 at r3411
  unfold Seg16.relationRow3412 at r3412
  unfold Seg16.relationRow3413 at r3413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3413
  unfold Seg16.relationRow3414 at r3414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3414
  unfold Seg16.relationRow3415 at r3415
  unfold Seg16.relationRow3416 at r3416
  unfold Seg16.relationRow3417 at r3417
  unfold Seg16.relationRow3418 at r3418
  unfold Seg16.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 15326 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩ := by
    have hnextx : seg16AccX35 rho = seg16AccX34 rho + rho 15985 := by
      unfold seg16AccX35 seg16AccX34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 34]
      ring
    have hnexty : seg16AccY35 rho = seg16AccY34 rho + rho 15986 := by
      unfold seg16AccY35 seg16AccY34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 34]
      ring
    have ha0 : (rho 15977 + rho 15978) * (seg16AccX34 rho + seg16AccY34 rho) = rho 15979 := by
      unfold seg16AccX34 seg16AccY34
      linear_combination r3407
    have ha1 : rho 15978 * seg16AccX34 rho = rho 15980 := by
      unfold seg16AccX34
      linear_combination r3408
    have ha2 : rho 15977 * seg16AccY34 rho = rho 15981 := by
      unfold seg16AccY34
      linear_combination r3409
    have ha3 : 3021 * rho 15980 * rho 15981 = rho 15982 := by
      linear_combination r3410
    have ha4 : rho 15983 * (1 + rho 15982) = rho 15980 + rho 15981 := by
      linear_combination r3411
    have ha5 : rho 15984 * (1 - rho 15982) = rho 15979 - rho 15980 - rho 15981 := by
      linear_combination r3412
    have haddx :
        rho 15983 * (1 + 3021 * (rho 15978 * seg16AccX34 rho) * (rho 15977 * seg16AccY34 rho)) =
          rho 15978 * seg16AccX34 rho + rho 15977 * seg16AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15984 * (1 - 3021 * (rho 15978 * seg16AccX34 rho) * (rho 15977 * seg16AccY34 rho)) =
          (-1) * (rho 15978 * seg16AccX34 rho) - rho 15977 * seg16AccY34 rho +
            (seg16AccY34 rho - seg16AccX34 rho * (-1)) * (rho 15977 + rho 15978) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15984 * (1 - rho 15982) = rho 15979 - rho 15980 - rho 15981 := ha5
        _ = (-1) * rho 15980 - rho 15981 + (seg16AccY34 rho - seg16AccX34 rho * (-1)) * (rho 15977 + rho 15978) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX35 rho = seg16AccX34 rho - Bool.toZMod bit * (seg16AccX34 rho - rho 15983) := by
      have hd : rho 15985 = Bool.toZMod bit * (rho 15983 - seg16AccX34 rho) := by
        rw [← hbit]
        unfold seg16AccX34
        linear_combination -r3413
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY35 rho = seg16AccY34 rho - Bool.toZMod bit * (seg16AccY34 rho - rho 15984) := by
      have hd : rho 15986 = Bool.toZMod bit * (rho 15984 - seg16AccY34 rho) := by
        rw [← hbit]
        unfold seg16AccY34
        linear_combination -r3414
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15977 * rho 15978 = rho 15987 := by linear_combination r3415
    have hd1 : rho 15977 * rho 15977 = rho 15988 := by linear_combination r3416
    have hd2 : rho 15978 * rho 15978 = rho 15989 := by linear_combination r3417
    have hd3 : rho 15990 * (rho 15978 * rho 15978 + rho 15977 * rho 15977 * (-1)) = 2 * (rho 15977 * rho 15978) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 15991 * (2 - (rho 15978 * rho 15978 + rho 15977 * rho 15977 * (-1))) = rho 15978 * rho 15978 - rho 15977 * rho 15977 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
      ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
      ⟨(rho 15983 : Seg16.F), (rho 15984 : Seg16.F)⟩
      ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
      ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg16_rows35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3420 rho ∧ Seg16.relationRow3421 rho ∧ Seg16.relationRow3422 rho ∧ Seg16.relationRow3423 rho ∧ Seg16.relationRow3424 rho ∧ Seg16.relationRow3425 rho ∧ Seg16.relationRow3426 rho ∧ Seg16.relationRow3427 rho ∧ Seg16.relationRow3428 rho ∧ Seg16.relationRow3429 rho ∧ Seg16.relationRow3430 rho ∧ Seg16.relationRow3431 rho ∧ Seg16.relationRow3432 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  exact ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩

theorem seg16_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15327 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩ := by
  obtain ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩ := seg16_rows35 rho h
  unfold Seg16.relationRow3420 at r3420
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3420
  unfold Seg16.relationRow3421 at r3421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421
  unfold Seg16.relationRow3422 at r3422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3422
  unfold Seg16.relationRow3423 at r3423
  unfold Seg16.relationRow3424 at r3424
  unfold Seg16.relationRow3425 at r3425
  unfold Seg16.relationRow3426 at r3426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3426
  unfold Seg16.relationRow3427 at r3427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3427
  unfold Seg16.relationRow3428 at r3428
  unfold Seg16.relationRow3429 at r3429
  unfold Seg16.relationRow3430 at r3430
  unfold Seg16.relationRow3431 at r3431
  unfold Seg16.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 15327 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩ := by
    have hnextx : seg16AccX36 rho = seg16AccX35 rho + rho 15998 := by
      unfold seg16AccX36 seg16AccX35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 35]
      ring
    have hnexty : seg16AccY36 rho = seg16AccY35 rho + rho 15999 := by
      unfold seg16AccY36 seg16AccY35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 35]
      ring
    have ha0 : (rho 15990 + rho 15991) * (seg16AccX35 rho + seg16AccY35 rho) = rho 15992 := by
      unfold seg16AccX35 seg16AccY35
      linear_combination r3420
    have ha1 : rho 15991 * seg16AccX35 rho = rho 15993 := by
      unfold seg16AccX35
      linear_combination r3421
    have ha2 : rho 15990 * seg16AccY35 rho = rho 15994 := by
      unfold seg16AccY35
      linear_combination r3422
    have ha3 : 3021 * rho 15993 * rho 15994 = rho 15995 := by
      linear_combination r3423
    have ha4 : rho 15996 * (1 + rho 15995) = rho 15993 + rho 15994 := by
      linear_combination r3424
    have ha5 : rho 15997 * (1 - rho 15995) = rho 15992 - rho 15993 - rho 15994 := by
      linear_combination r3425
    have haddx :
        rho 15996 * (1 + 3021 * (rho 15991 * seg16AccX35 rho) * (rho 15990 * seg16AccY35 rho)) =
          rho 15991 * seg16AccX35 rho + rho 15990 * seg16AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15997 * (1 - 3021 * (rho 15991 * seg16AccX35 rho) * (rho 15990 * seg16AccY35 rho)) =
          (-1) * (rho 15991 * seg16AccX35 rho) - rho 15990 * seg16AccY35 rho +
            (seg16AccY35 rho - seg16AccX35 rho * (-1)) * (rho 15990 + rho 15991) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15997 * (1 - rho 15995) = rho 15992 - rho 15993 - rho 15994 := ha5
        _ = (-1) * rho 15993 - rho 15994 + (seg16AccY35 rho - seg16AccX35 rho * (-1)) * (rho 15990 + rho 15991) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX36 rho = seg16AccX35 rho - Bool.toZMod bit * (seg16AccX35 rho - rho 15996) := by
      have hd : rho 15998 = Bool.toZMod bit * (rho 15996 - seg16AccX35 rho) := by
        rw [← hbit]
        unfold seg16AccX35
        linear_combination -r3426
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY36 rho = seg16AccY35 rho - Bool.toZMod bit * (seg16AccY35 rho - rho 15997) := by
      have hd : rho 15999 = Bool.toZMod bit * (rho 15997 - seg16AccY35 rho) := by
        rw [← hbit]
        unfold seg16AccY35
        linear_combination -r3427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15990 * rho 15991 = rho 16000 := by linear_combination r3428
    have hd1 : rho 15990 * rho 15990 = rho 16001 := by linear_combination r3429
    have hd2 : rho 15991 * rho 15991 = rho 16002 := by linear_combination r3430
    have hd3 : rho 16003 * (rho 15991 * rho 15991 + rho 15990 * rho 15990 * (-1)) = 2 * (rho 15990 * rho 15991) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 16004 * (2 - (rho 15991 * rho 15991 + rho 15990 * rho 15990 * (-1))) = rho 15991 * rho 15991 - rho 15990 * rho 15990 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
      ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
      ⟨(rho 15996 : Seg16.F), (rho 15997 : Seg16.F)⟩
      ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
      ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg16_rows36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3433 rho ∧ Seg16.relationRow3434 rho ∧ Seg16.relationRow3435 rho ∧ Seg16.relationRow3436 rho ∧ Seg16.relationRow3437 rho ∧ Seg16.relationRow3438 rho ∧ Seg16.relationRow3439 rho ∧ Seg16.relationRow3440 rho ∧ Seg16.relationRow3441 rho ∧ Seg16.relationRow3442 rho ∧ Seg16.relationRow3443 rho ∧ Seg16.relationRow3444 rho ∧ Seg16.relationRow3445 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩

theorem seg16_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15328 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩ := by
  obtain ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩ := seg16_rows36 rho h
  unfold Seg16.relationRow3433 at r3433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3433
  unfold Seg16.relationRow3434 at r3434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434
  unfold Seg16.relationRow3435 at r3435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3435
  unfold Seg16.relationRow3436 at r3436
  unfold Seg16.relationRow3437 at r3437
  unfold Seg16.relationRow3438 at r3438
  unfold Seg16.relationRow3439 at r3439
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3439
  unfold Seg16.relationRow3440 at r3440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3440
  unfold Seg16.relationRow3441 at r3441
  unfold Seg16.relationRow3442 at r3442
  unfold Seg16.relationRow3443 at r3443
  unfold Seg16.relationRow3444 at r3444
  unfold Seg16.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 15328 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩ := by
    have hnextx : seg16AccX37 rho = seg16AccX36 rho + rho 16011 := by
      unfold seg16AccX37 seg16AccX36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 36]
      ring
    have hnexty : seg16AccY37 rho = seg16AccY36 rho + rho 16012 := by
      unfold seg16AccY37 seg16AccY36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 36]
      ring
    have ha0 : (rho 16003 + rho 16004) * (seg16AccX36 rho + seg16AccY36 rho) = rho 16005 := by
      unfold seg16AccX36 seg16AccY36
      linear_combination r3433
    have ha1 : rho 16004 * seg16AccX36 rho = rho 16006 := by
      unfold seg16AccX36
      linear_combination r3434
    have ha2 : rho 16003 * seg16AccY36 rho = rho 16007 := by
      unfold seg16AccY36
      linear_combination r3435
    have ha3 : 3021 * rho 16006 * rho 16007 = rho 16008 := by
      linear_combination r3436
    have ha4 : rho 16009 * (1 + rho 16008) = rho 16006 + rho 16007 := by
      linear_combination r3437
    have ha5 : rho 16010 * (1 - rho 16008) = rho 16005 - rho 16006 - rho 16007 := by
      linear_combination r3438
    have haddx :
        rho 16009 * (1 + 3021 * (rho 16004 * seg16AccX36 rho) * (rho 16003 * seg16AccY36 rho)) =
          rho 16004 * seg16AccX36 rho + rho 16003 * seg16AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16010 * (1 - 3021 * (rho 16004 * seg16AccX36 rho) * (rho 16003 * seg16AccY36 rho)) =
          (-1) * (rho 16004 * seg16AccX36 rho) - rho 16003 * seg16AccY36 rho +
            (seg16AccY36 rho - seg16AccX36 rho * (-1)) * (rho 16003 + rho 16004) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16010 * (1 - rho 16008) = rho 16005 - rho 16006 - rho 16007 := ha5
        _ = (-1) * rho 16006 - rho 16007 + (seg16AccY36 rho - seg16AccX36 rho * (-1)) * (rho 16003 + rho 16004) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX37 rho = seg16AccX36 rho - Bool.toZMod bit * (seg16AccX36 rho - rho 16009) := by
      have hd : rho 16011 = Bool.toZMod bit * (rho 16009 - seg16AccX36 rho) := by
        rw [← hbit]
        unfold seg16AccX36
        linear_combination -r3439
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY37 rho = seg16AccY36 rho - Bool.toZMod bit * (seg16AccY36 rho - rho 16010) := by
      have hd : rho 16012 = Bool.toZMod bit * (rho 16010 - seg16AccY36 rho) := by
        rw [← hbit]
        unfold seg16AccY36
        linear_combination -r3440
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16003 * rho 16004 = rho 16013 := by linear_combination r3441
    have hd1 : rho 16003 * rho 16003 = rho 16014 := by linear_combination r3442
    have hd2 : rho 16004 * rho 16004 = rho 16015 := by linear_combination r3443
    have hd3 : rho 16016 * (rho 16004 * rho 16004 + rho 16003 * rho 16003 * (-1)) = 2 * (rho 16003 * rho 16004) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 16017 * (2 - (rho 16004 * rho 16004 + rho 16003 * rho 16003 * (-1))) = rho 16004 * rho 16004 - rho 16003 * rho 16003 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
      ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
      ⟨(rho 16009 : Seg16.F), (rho 16010 : Seg16.F)⟩
      ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
      ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg16_rows37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3446 rho ∧ Seg16.relationRow3447 rho ∧ Seg16.relationRow3448 rho ∧ Seg16.relationRow3449 rho ∧ Seg16.relationRow3450 rho ∧ Seg16.relationRow3451 rho ∧ Seg16.relationRow3452 rho ∧ Seg16.relationRow3453 rho ∧ Seg16.relationRow3454 rho ∧ Seg16.relationRow3455 rho ∧ Seg16.relationRow3456 rho ∧ Seg16.relationRow3457 rho ∧ Seg16.relationRow3458 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩

theorem seg16_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15329 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩ := by
  obtain ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩ := seg16_rows37 rho h
  unfold Seg16.relationRow3446 at r3446
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3446
  unfold Seg16.relationRow3447 at r3447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447
  unfold Seg16.relationRow3448 at r3448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3448
  unfold Seg16.relationRow3449 at r3449
  unfold Seg16.relationRow3450 at r3450
  unfold Seg16.relationRow3451 at r3451
  unfold Seg16.relationRow3452 at r3452
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3452
  unfold Seg16.relationRow3453 at r3453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3453
  unfold Seg16.relationRow3454 at r3454
  unfold Seg16.relationRow3455 at r3455
  unfold Seg16.relationRow3456 at r3456
  unfold Seg16.relationRow3457 at r3457
  unfold Seg16.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 15329 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩ := by
    have hnextx : seg16AccX38 rho = seg16AccX37 rho + rho 16024 := by
      unfold seg16AccX38 seg16AccX37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 37]
      ring
    have hnexty : seg16AccY38 rho = seg16AccY37 rho + rho 16025 := by
      unfold seg16AccY38 seg16AccY37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 37]
      ring
    have ha0 : (rho 16016 + rho 16017) * (seg16AccX37 rho + seg16AccY37 rho) = rho 16018 := by
      unfold seg16AccX37 seg16AccY37
      linear_combination r3446
    have ha1 : rho 16017 * seg16AccX37 rho = rho 16019 := by
      unfold seg16AccX37
      linear_combination r3447
    have ha2 : rho 16016 * seg16AccY37 rho = rho 16020 := by
      unfold seg16AccY37
      linear_combination r3448
    have ha3 : 3021 * rho 16019 * rho 16020 = rho 16021 := by
      linear_combination r3449
    have ha4 : rho 16022 * (1 + rho 16021) = rho 16019 + rho 16020 := by
      linear_combination r3450
    have ha5 : rho 16023 * (1 - rho 16021) = rho 16018 - rho 16019 - rho 16020 := by
      linear_combination r3451
    have haddx :
        rho 16022 * (1 + 3021 * (rho 16017 * seg16AccX37 rho) * (rho 16016 * seg16AccY37 rho)) =
          rho 16017 * seg16AccX37 rho + rho 16016 * seg16AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16023 * (1 - 3021 * (rho 16017 * seg16AccX37 rho) * (rho 16016 * seg16AccY37 rho)) =
          (-1) * (rho 16017 * seg16AccX37 rho) - rho 16016 * seg16AccY37 rho +
            (seg16AccY37 rho - seg16AccX37 rho * (-1)) * (rho 16016 + rho 16017) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16023 * (1 - rho 16021) = rho 16018 - rho 16019 - rho 16020 := ha5
        _ = (-1) * rho 16019 - rho 16020 + (seg16AccY37 rho - seg16AccX37 rho * (-1)) * (rho 16016 + rho 16017) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX38 rho = seg16AccX37 rho - Bool.toZMod bit * (seg16AccX37 rho - rho 16022) := by
      have hd : rho 16024 = Bool.toZMod bit * (rho 16022 - seg16AccX37 rho) := by
        rw [← hbit]
        unfold seg16AccX37
        linear_combination -r3452
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY38 rho = seg16AccY37 rho - Bool.toZMod bit * (seg16AccY37 rho - rho 16023) := by
      have hd : rho 16025 = Bool.toZMod bit * (rho 16023 - seg16AccY37 rho) := by
        rw [← hbit]
        unfold seg16AccY37
        linear_combination -r3453
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16016 * rho 16017 = rho 16026 := by linear_combination r3454
    have hd1 : rho 16016 * rho 16016 = rho 16027 := by linear_combination r3455
    have hd2 : rho 16017 * rho 16017 = rho 16028 := by linear_combination r3456
    have hd3 : rho 16029 * (rho 16017 * rho 16017 + rho 16016 * rho 16016 * (-1)) = 2 * (rho 16016 * rho 16017) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 16030 * (2 - (rho 16017 * rho 16017 + rho 16016 * rho 16016 * (-1))) = rho 16017 * rho 16017 - rho 16016 * rho 16016 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
      ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
      ⟨(rho 16022 : Seg16.F), (rho 16023 : Seg16.F)⟩
      ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
      ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg16_rows38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3459 rho ∧ Seg16.relationRow3460 rho ∧ Seg16.relationRow3461 rho ∧ Seg16.relationRow3462 rho ∧ Seg16.relationRow3463 rho ∧ Seg16.relationRow3464 rho ∧ Seg16.relationRow3465 rho ∧ Seg16.relationRow3466 rho ∧ Seg16.relationRow3467 rho ∧ Seg16.relationRow3468 rho ∧ Seg16.relationRow3469 rho ∧ Seg16.relationRow3470 rho ∧ Seg16.relationRow3471 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩

theorem seg16_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15330 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩ := by
  obtain ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩ := seg16_rows38 rho h
  unfold Seg16.relationRow3459 at r3459
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3459
  unfold Seg16.relationRow3460 at r3460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460
  unfold Seg16.relationRow3461 at r3461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3461
  unfold Seg16.relationRow3462 at r3462
  unfold Seg16.relationRow3463 at r3463
  unfold Seg16.relationRow3464 at r3464
  unfold Seg16.relationRow3465 at r3465
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3465
  unfold Seg16.relationRow3466 at r3466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3466
  unfold Seg16.relationRow3467 at r3467
  unfold Seg16.relationRow3468 at r3468
  unfold Seg16.relationRow3469 at r3469
  unfold Seg16.relationRow3470 at r3470
  unfold Seg16.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 15330 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩ := by
    have hnextx : seg16AccX39 rho = seg16AccX38 rho + rho 16037 := by
      unfold seg16AccX39 seg16AccX38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 38]
      ring
    have hnexty : seg16AccY39 rho = seg16AccY38 rho + rho 16038 := by
      unfold seg16AccY39 seg16AccY38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 38]
      ring
    have ha0 : (rho 16029 + rho 16030) * (seg16AccX38 rho + seg16AccY38 rho) = rho 16031 := by
      unfold seg16AccX38 seg16AccY38
      linear_combination r3459
    have ha1 : rho 16030 * seg16AccX38 rho = rho 16032 := by
      unfold seg16AccX38
      linear_combination r3460
    have ha2 : rho 16029 * seg16AccY38 rho = rho 16033 := by
      unfold seg16AccY38
      linear_combination r3461
    have ha3 : 3021 * rho 16032 * rho 16033 = rho 16034 := by
      linear_combination r3462
    have ha4 : rho 16035 * (1 + rho 16034) = rho 16032 + rho 16033 := by
      linear_combination r3463
    have ha5 : rho 16036 * (1 - rho 16034) = rho 16031 - rho 16032 - rho 16033 := by
      linear_combination r3464
    have haddx :
        rho 16035 * (1 + 3021 * (rho 16030 * seg16AccX38 rho) * (rho 16029 * seg16AccY38 rho)) =
          rho 16030 * seg16AccX38 rho + rho 16029 * seg16AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16036 * (1 - 3021 * (rho 16030 * seg16AccX38 rho) * (rho 16029 * seg16AccY38 rho)) =
          (-1) * (rho 16030 * seg16AccX38 rho) - rho 16029 * seg16AccY38 rho +
            (seg16AccY38 rho - seg16AccX38 rho * (-1)) * (rho 16029 + rho 16030) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16036 * (1 - rho 16034) = rho 16031 - rho 16032 - rho 16033 := ha5
        _ = (-1) * rho 16032 - rho 16033 + (seg16AccY38 rho - seg16AccX38 rho * (-1)) * (rho 16029 + rho 16030) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX39 rho = seg16AccX38 rho - Bool.toZMod bit * (seg16AccX38 rho - rho 16035) := by
      have hd : rho 16037 = Bool.toZMod bit * (rho 16035 - seg16AccX38 rho) := by
        rw [← hbit]
        unfold seg16AccX38
        linear_combination -r3465
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY39 rho = seg16AccY38 rho - Bool.toZMod bit * (seg16AccY38 rho - rho 16036) := by
      have hd : rho 16038 = Bool.toZMod bit * (rho 16036 - seg16AccY38 rho) := by
        rw [← hbit]
        unfold seg16AccY38
        linear_combination -r3466
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16029 * rho 16030 = rho 16039 := by linear_combination r3467
    have hd1 : rho 16029 * rho 16029 = rho 16040 := by linear_combination r3468
    have hd2 : rho 16030 * rho 16030 = rho 16041 := by linear_combination r3469
    have hd3 : rho 16042 * (rho 16030 * rho 16030 + rho 16029 * rho 16029 * (-1)) = 2 * (rho 16029 * rho 16030) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 16043 * (2 - (rho 16030 * rho 16030 + rho 16029 * rho 16029 * (-1))) = rho 16030 * rho 16030 - rho 16029 * rho 16029 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
      ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
      ⟨(rho 16035 : Seg16.F), (rho 16036 : Seg16.F)⟩
      ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
      ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg16_rows39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3472 rho ∧ Seg16.relationRow3473 rho ∧ Seg16.relationRow3474 rho ∧ Seg16.relationRow3475 rho ∧ Seg16.relationRow3476 rho ∧ Seg16.relationRow3477 rho ∧ Seg16.relationRow3478 rho ∧ Seg16.relationRow3479 rho ∧ Seg16.relationRow3480 rho ∧ Seg16.relationRow3481 rho ∧ Seg16.relationRow3482 rho ∧ Seg16.relationRow3483 rho ∧ Seg16.relationRow3484 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩

theorem seg16_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15331 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩ := by
  obtain ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩ := seg16_rows39 rho h
  unfold Seg16.relationRow3472 at r3472
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3472
  unfold Seg16.relationRow3473 at r3473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473
  unfold Seg16.relationRow3474 at r3474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3474
  unfold Seg16.relationRow3475 at r3475
  unfold Seg16.relationRow3476 at r3476
  unfold Seg16.relationRow3477 at r3477
  unfold Seg16.relationRow3478 at r3478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3478
  unfold Seg16.relationRow3479 at r3479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3479
  unfold Seg16.relationRow3480 at r3480
  unfold Seg16.relationRow3481 at r3481
  unfold Seg16.relationRow3482 at r3482
  unfold Seg16.relationRow3483 at r3483
  unfold Seg16.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 15331 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩ := by
    have hnextx : seg16AccX40 rho = seg16AccX39 rho + rho 16050 := by
      unfold seg16AccX40 seg16AccX39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 39]
      ring
    have hnexty : seg16AccY40 rho = seg16AccY39 rho + rho 16051 := by
      unfold seg16AccY40 seg16AccY39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 39]
      ring
    have ha0 : (rho 16042 + rho 16043) * (seg16AccX39 rho + seg16AccY39 rho) = rho 16044 := by
      unfold seg16AccX39 seg16AccY39
      linear_combination r3472
    have ha1 : rho 16043 * seg16AccX39 rho = rho 16045 := by
      unfold seg16AccX39
      linear_combination r3473
    have ha2 : rho 16042 * seg16AccY39 rho = rho 16046 := by
      unfold seg16AccY39
      linear_combination r3474
    have ha3 : 3021 * rho 16045 * rho 16046 = rho 16047 := by
      linear_combination r3475
    have ha4 : rho 16048 * (1 + rho 16047) = rho 16045 + rho 16046 := by
      linear_combination r3476
    have ha5 : rho 16049 * (1 - rho 16047) = rho 16044 - rho 16045 - rho 16046 := by
      linear_combination r3477
    have haddx :
        rho 16048 * (1 + 3021 * (rho 16043 * seg16AccX39 rho) * (rho 16042 * seg16AccY39 rho)) =
          rho 16043 * seg16AccX39 rho + rho 16042 * seg16AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16049 * (1 - 3021 * (rho 16043 * seg16AccX39 rho) * (rho 16042 * seg16AccY39 rho)) =
          (-1) * (rho 16043 * seg16AccX39 rho) - rho 16042 * seg16AccY39 rho +
            (seg16AccY39 rho - seg16AccX39 rho * (-1)) * (rho 16042 + rho 16043) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16049 * (1 - rho 16047) = rho 16044 - rho 16045 - rho 16046 := ha5
        _ = (-1) * rho 16045 - rho 16046 + (seg16AccY39 rho - seg16AccX39 rho * (-1)) * (rho 16042 + rho 16043) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX40 rho = seg16AccX39 rho - Bool.toZMod bit * (seg16AccX39 rho - rho 16048) := by
      have hd : rho 16050 = Bool.toZMod bit * (rho 16048 - seg16AccX39 rho) := by
        rw [← hbit]
        unfold seg16AccX39
        linear_combination -r3478
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY40 rho = seg16AccY39 rho - Bool.toZMod bit * (seg16AccY39 rho - rho 16049) := by
      have hd : rho 16051 = Bool.toZMod bit * (rho 16049 - seg16AccY39 rho) := by
        rw [← hbit]
        unfold seg16AccY39
        linear_combination -r3479
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16042 * rho 16043 = rho 16052 := by linear_combination r3480
    have hd1 : rho 16042 * rho 16042 = rho 16053 := by linear_combination r3481
    have hd2 : rho 16043 * rho 16043 = rho 16054 := by linear_combination r3482
    have hd3 : rho 16055 * (rho 16043 * rho 16043 + rho 16042 * rho 16042 * (-1)) = 2 * (rho 16042 * rho 16043) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 16056 * (2 - (rho 16043 * rho 16043 + rho 16042 * rho 16042 * (-1))) = rho 16043 * rho 16043 - rho 16042 * rho 16042 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
      ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
      ⟨(rho 16048 : Seg16.F), (rho 16049 : Seg16.F)⟩
      ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
      ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg16_rows40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3485 rho ∧ Seg16.relationRow3486 rho ∧ Seg16.relationRow3487 rho ∧ Seg16.relationRow3488 rho ∧ Seg16.relationRow3489 rho ∧ Seg16.relationRow3490 rho ∧ Seg16.relationRow3491 rho ∧ Seg16.relationRow3492 rho ∧ Seg16.relationRow3493 rho ∧ Seg16.relationRow3494 rho ∧ Seg16.relationRow3495 rho ∧ Seg16.relationRow3496 rho ∧ Seg16.relationRow3497 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩

theorem seg16_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15332 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩ := by
  obtain ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩ := seg16_rows40 rho h
  unfold Seg16.relationRow3485 at r3485
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3485
  unfold Seg16.relationRow3486 at r3486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486
  unfold Seg16.relationRow3487 at r3487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3487
  unfold Seg16.relationRow3488 at r3488
  unfold Seg16.relationRow3489 at r3489
  unfold Seg16.relationRow3490 at r3490
  unfold Seg16.relationRow3491 at r3491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3491
  unfold Seg16.relationRow3492 at r3492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3492
  unfold Seg16.relationRow3493 at r3493
  unfold Seg16.relationRow3494 at r3494
  unfold Seg16.relationRow3495 at r3495
  unfold Seg16.relationRow3496 at r3496
  unfold Seg16.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 15332 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩ := by
    have hnextx : seg16AccX41 rho = seg16AccX40 rho + rho 16063 := by
      unfold seg16AccX41 seg16AccX40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 40]
      ring
    have hnexty : seg16AccY41 rho = seg16AccY40 rho + rho 16064 := by
      unfold seg16AccY41 seg16AccY40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 40]
      ring
    have ha0 : (rho 16055 + rho 16056) * (seg16AccX40 rho + seg16AccY40 rho) = rho 16057 := by
      unfold seg16AccX40 seg16AccY40
      linear_combination r3485
    have ha1 : rho 16056 * seg16AccX40 rho = rho 16058 := by
      unfold seg16AccX40
      linear_combination r3486
    have ha2 : rho 16055 * seg16AccY40 rho = rho 16059 := by
      unfold seg16AccY40
      linear_combination r3487
    have ha3 : 3021 * rho 16058 * rho 16059 = rho 16060 := by
      linear_combination r3488
    have ha4 : rho 16061 * (1 + rho 16060) = rho 16058 + rho 16059 := by
      linear_combination r3489
    have ha5 : rho 16062 * (1 - rho 16060) = rho 16057 - rho 16058 - rho 16059 := by
      linear_combination r3490
    have haddx :
        rho 16061 * (1 + 3021 * (rho 16056 * seg16AccX40 rho) * (rho 16055 * seg16AccY40 rho)) =
          rho 16056 * seg16AccX40 rho + rho 16055 * seg16AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16062 * (1 - 3021 * (rho 16056 * seg16AccX40 rho) * (rho 16055 * seg16AccY40 rho)) =
          (-1) * (rho 16056 * seg16AccX40 rho) - rho 16055 * seg16AccY40 rho +
            (seg16AccY40 rho - seg16AccX40 rho * (-1)) * (rho 16055 + rho 16056) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16062 * (1 - rho 16060) = rho 16057 - rho 16058 - rho 16059 := ha5
        _ = (-1) * rho 16058 - rho 16059 + (seg16AccY40 rho - seg16AccX40 rho * (-1)) * (rho 16055 + rho 16056) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX41 rho = seg16AccX40 rho - Bool.toZMod bit * (seg16AccX40 rho - rho 16061) := by
      have hd : rho 16063 = Bool.toZMod bit * (rho 16061 - seg16AccX40 rho) := by
        rw [← hbit]
        unfold seg16AccX40
        linear_combination -r3491
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY41 rho = seg16AccY40 rho - Bool.toZMod bit * (seg16AccY40 rho - rho 16062) := by
      have hd : rho 16064 = Bool.toZMod bit * (rho 16062 - seg16AccY40 rho) := by
        rw [← hbit]
        unfold seg16AccY40
        linear_combination -r3492
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16055 * rho 16056 = rho 16065 := by linear_combination r3493
    have hd1 : rho 16055 * rho 16055 = rho 16066 := by linear_combination r3494
    have hd2 : rho 16056 * rho 16056 = rho 16067 := by linear_combination r3495
    have hd3 : rho 16068 * (rho 16056 * rho 16056 + rho 16055 * rho 16055 * (-1)) = 2 * (rho 16055 * rho 16056) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 16069 * (2 - (rho 16056 * rho 16056 + rho 16055 * rho 16055 * (-1))) = rho 16056 * rho 16056 - rho 16055 * rho 16055 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
      ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
      ⟨(rho 16061 : Seg16.F), (rho 16062 : Seg16.F)⟩
      ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
      ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg16_rows41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3498 rho ∧ Seg16.relationRow3499 rho ∧ Seg16.relationRow3500 rho ∧ Seg16.relationRow3501 rho ∧ Seg16.relationRow3502 rho ∧ Seg16.relationRow3503 rho ∧ Seg16.relationRow3504 rho ∧ Seg16.relationRow3505 rho ∧ Seg16.relationRow3506 rho ∧ Seg16.relationRow3507 rho ∧ Seg16.relationRow3508 rho ∧ Seg16.relationRow3509 rho ∧ Seg16.relationRow3510 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩

theorem seg16_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15333 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩ := by
  obtain ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩ := seg16_rows41 rho h
  unfold Seg16.relationRow3498 at r3498
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3498
  unfold Seg16.relationRow3499 at r3499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499
  unfold Seg16.relationRow3500 at r3500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3500
  unfold Seg16.relationRow3501 at r3501
  unfold Seg16.relationRow3502 at r3502
  unfold Seg16.relationRow3503 at r3503
  unfold Seg16.relationRow3504 at r3504
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3504
  unfold Seg16.relationRow3505 at r3505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3505
  unfold Seg16.relationRow3506 at r3506
  unfold Seg16.relationRow3507 at r3507
  unfold Seg16.relationRow3508 at r3508
  unfold Seg16.relationRow3509 at r3509
  unfold Seg16.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 15333 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩ := by
    have hnextx : seg16AccX42 rho = seg16AccX41 rho + rho 16076 := by
      unfold seg16AccX42 seg16AccX41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 41]
      ring
    have hnexty : seg16AccY42 rho = seg16AccY41 rho + rho 16077 := by
      unfold seg16AccY42 seg16AccY41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 41]
      ring
    have ha0 : (rho 16068 + rho 16069) * (seg16AccX41 rho + seg16AccY41 rho) = rho 16070 := by
      unfold seg16AccX41 seg16AccY41
      linear_combination r3498
    have ha1 : rho 16069 * seg16AccX41 rho = rho 16071 := by
      unfold seg16AccX41
      linear_combination r3499
    have ha2 : rho 16068 * seg16AccY41 rho = rho 16072 := by
      unfold seg16AccY41
      linear_combination r3500
    have ha3 : 3021 * rho 16071 * rho 16072 = rho 16073 := by
      linear_combination r3501
    have ha4 : rho 16074 * (1 + rho 16073) = rho 16071 + rho 16072 := by
      linear_combination r3502
    have ha5 : rho 16075 * (1 - rho 16073) = rho 16070 - rho 16071 - rho 16072 := by
      linear_combination r3503
    have haddx :
        rho 16074 * (1 + 3021 * (rho 16069 * seg16AccX41 rho) * (rho 16068 * seg16AccY41 rho)) =
          rho 16069 * seg16AccX41 rho + rho 16068 * seg16AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16075 * (1 - 3021 * (rho 16069 * seg16AccX41 rho) * (rho 16068 * seg16AccY41 rho)) =
          (-1) * (rho 16069 * seg16AccX41 rho) - rho 16068 * seg16AccY41 rho +
            (seg16AccY41 rho - seg16AccX41 rho * (-1)) * (rho 16068 + rho 16069) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16075 * (1 - rho 16073) = rho 16070 - rho 16071 - rho 16072 := ha5
        _ = (-1) * rho 16071 - rho 16072 + (seg16AccY41 rho - seg16AccX41 rho * (-1)) * (rho 16068 + rho 16069) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX42 rho = seg16AccX41 rho - Bool.toZMod bit * (seg16AccX41 rho - rho 16074) := by
      have hd : rho 16076 = Bool.toZMod bit * (rho 16074 - seg16AccX41 rho) := by
        rw [← hbit]
        unfold seg16AccX41
        linear_combination -r3504
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY42 rho = seg16AccY41 rho - Bool.toZMod bit * (seg16AccY41 rho - rho 16075) := by
      have hd : rho 16077 = Bool.toZMod bit * (rho 16075 - seg16AccY41 rho) := by
        rw [← hbit]
        unfold seg16AccY41
        linear_combination -r3505
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16068 * rho 16069 = rho 16078 := by linear_combination r3506
    have hd1 : rho 16068 * rho 16068 = rho 16079 := by linear_combination r3507
    have hd2 : rho 16069 * rho 16069 = rho 16080 := by linear_combination r3508
    have hd3 : rho 16081 * (rho 16069 * rho 16069 + rho 16068 * rho 16068 * (-1)) = 2 * (rho 16068 * rho 16069) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 16082 * (2 - (rho 16069 * rho 16069 + rho 16068 * rho 16068 * (-1))) = rho 16069 * rho 16069 - rho 16068 * rho 16068 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
      ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
      ⟨(rho 16074 : Seg16.F), (rho 16075 : Seg16.F)⟩
      ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
      ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg16_rows42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3511 rho ∧ Seg16.relationRow3512 rho ∧ Seg16.relationRow3513 rho ∧ Seg16.relationRow3514 rho ∧ Seg16.relationRow3515 rho ∧ Seg16.relationRow3516 rho ∧ Seg16.relationRow3517 rho ∧ Seg16.relationRow3518 rho ∧ Seg16.relationRow3519 rho ∧ Seg16.relationRow3520 rho ∧ Seg16.relationRow3521 rho ∧ Seg16.relationRow3522 rho ∧ Seg16.relationRow3523 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩

theorem seg16_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15334 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩ := by
  obtain ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩ := seg16_rows42 rho h
  unfold Seg16.relationRow3511 at r3511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3511
  unfold Seg16.relationRow3512 at r3512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512
  unfold Seg16.relationRow3513 at r3513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3513
  unfold Seg16.relationRow3514 at r3514
  unfold Seg16.relationRow3515 at r3515
  unfold Seg16.relationRow3516 at r3516
  unfold Seg16.relationRow3517 at r3517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3517
  unfold Seg16.relationRow3518 at r3518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3518
  unfold Seg16.relationRow3519 at r3519
  unfold Seg16.relationRow3520 at r3520
  unfold Seg16.relationRow3521 at r3521
  unfold Seg16.relationRow3522 at r3522
  unfold Seg16.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 15334 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩ := by
    have hnextx : seg16AccX43 rho = seg16AccX42 rho + rho 16089 := by
      unfold seg16AccX43 seg16AccX42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 42]
      ring
    have hnexty : seg16AccY43 rho = seg16AccY42 rho + rho 16090 := by
      unfold seg16AccY43 seg16AccY42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 42]
      ring
    have ha0 : (rho 16081 + rho 16082) * (seg16AccX42 rho + seg16AccY42 rho) = rho 16083 := by
      unfold seg16AccX42 seg16AccY42
      linear_combination r3511
    have ha1 : rho 16082 * seg16AccX42 rho = rho 16084 := by
      unfold seg16AccX42
      linear_combination r3512
    have ha2 : rho 16081 * seg16AccY42 rho = rho 16085 := by
      unfold seg16AccY42
      linear_combination r3513
    have ha3 : 3021 * rho 16084 * rho 16085 = rho 16086 := by
      linear_combination r3514
    have ha4 : rho 16087 * (1 + rho 16086) = rho 16084 + rho 16085 := by
      linear_combination r3515
    have ha5 : rho 16088 * (1 - rho 16086) = rho 16083 - rho 16084 - rho 16085 := by
      linear_combination r3516
    have haddx :
        rho 16087 * (1 + 3021 * (rho 16082 * seg16AccX42 rho) * (rho 16081 * seg16AccY42 rho)) =
          rho 16082 * seg16AccX42 rho + rho 16081 * seg16AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16088 * (1 - 3021 * (rho 16082 * seg16AccX42 rho) * (rho 16081 * seg16AccY42 rho)) =
          (-1) * (rho 16082 * seg16AccX42 rho) - rho 16081 * seg16AccY42 rho +
            (seg16AccY42 rho - seg16AccX42 rho * (-1)) * (rho 16081 + rho 16082) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16088 * (1 - rho 16086) = rho 16083 - rho 16084 - rho 16085 := ha5
        _ = (-1) * rho 16084 - rho 16085 + (seg16AccY42 rho - seg16AccX42 rho * (-1)) * (rho 16081 + rho 16082) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX43 rho = seg16AccX42 rho - Bool.toZMod bit * (seg16AccX42 rho - rho 16087) := by
      have hd : rho 16089 = Bool.toZMod bit * (rho 16087 - seg16AccX42 rho) := by
        rw [← hbit]
        unfold seg16AccX42
        linear_combination -r3517
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY43 rho = seg16AccY42 rho - Bool.toZMod bit * (seg16AccY42 rho - rho 16088) := by
      have hd : rho 16090 = Bool.toZMod bit * (rho 16088 - seg16AccY42 rho) := by
        rw [← hbit]
        unfold seg16AccY42
        linear_combination -r3518
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16081 * rho 16082 = rho 16091 := by linear_combination r3519
    have hd1 : rho 16081 * rho 16081 = rho 16092 := by linear_combination r3520
    have hd2 : rho 16082 * rho 16082 = rho 16093 := by linear_combination r3521
    have hd3 : rho 16094 * (rho 16082 * rho 16082 + rho 16081 * rho 16081 * (-1)) = 2 * (rho 16081 * rho 16082) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 16095 * (2 - (rho 16082 * rho 16082 + rho 16081 * rho 16081 * (-1))) = rho 16082 * rho 16082 - rho 16081 * rho 16081 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
      ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
      ⟨(rho 16087 : Seg16.F), (rho 16088 : Seg16.F)⟩
      ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
      ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg16_rows43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3524 rho ∧ Seg16.relationRow3525 rho ∧ Seg16.relationRow3526 rho ∧ Seg16.relationRow3527 rho ∧ Seg16.relationRow3528 rho ∧ Seg16.relationRow3529 rho ∧ Seg16.relationRow3530 rho ∧ Seg16.relationRow3531 rho ∧ Seg16.relationRow3532 rho ∧ Seg16.relationRow3533 rho ∧ Seg16.relationRow3534 rho ∧ Seg16.relationRow3535 rho ∧ Seg16.relationRow3536 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩

theorem seg16_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15335 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩ := by
  obtain ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩ := seg16_rows43 rho h
  unfold Seg16.relationRow3524 at r3524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3524
  unfold Seg16.relationRow3525 at r3525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525
  unfold Seg16.relationRow3526 at r3526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3526
  unfold Seg16.relationRow3527 at r3527
  unfold Seg16.relationRow3528 at r3528
  unfold Seg16.relationRow3529 at r3529
  unfold Seg16.relationRow3530 at r3530
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3530
  unfold Seg16.relationRow3531 at r3531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3531
  unfold Seg16.relationRow3532 at r3532
  unfold Seg16.relationRow3533 at r3533
  unfold Seg16.relationRow3534 at r3534
  unfold Seg16.relationRow3535 at r3535
  unfold Seg16.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 15335 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩ := by
    have hnextx : seg16AccX44 rho = seg16AccX43 rho + rho 16102 := by
      unfold seg16AccX44 seg16AccX43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 43]
      ring
    have hnexty : seg16AccY44 rho = seg16AccY43 rho + rho 16103 := by
      unfold seg16AccY44 seg16AccY43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 43]
      ring
    have ha0 : (rho 16094 + rho 16095) * (seg16AccX43 rho + seg16AccY43 rho) = rho 16096 := by
      unfold seg16AccX43 seg16AccY43
      linear_combination r3524
    have ha1 : rho 16095 * seg16AccX43 rho = rho 16097 := by
      unfold seg16AccX43
      linear_combination r3525
    have ha2 : rho 16094 * seg16AccY43 rho = rho 16098 := by
      unfold seg16AccY43
      linear_combination r3526
    have ha3 : 3021 * rho 16097 * rho 16098 = rho 16099 := by
      linear_combination r3527
    have ha4 : rho 16100 * (1 + rho 16099) = rho 16097 + rho 16098 := by
      linear_combination r3528
    have ha5 : rho 16101 * (1 - rho 16099) = rho 16096 - rho 16097 - rho 16098 := by
      linear_combination r3529
    have haddx :
        rho 16100 * (1 + 3021 * (rho 16095 * seg16AccX43 rho) * (rho 16094 * seg16AccY43 rho)) =
          rho 16095 * seg16AccX43 rho + rho 16094 * seg16AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16101 * (1 - 3021 * (rho 16095 * seg16AccX43 rho) * (rho 16094 * seg16AccY43 rho)) =
          (-1) * (rho 16095 * seg16AccX43 rho) - rho 16094 * seg16AccY43 rho +
            (seg16AccY43 rho - seg16AccX43 rho * (-1)) * (rho 16094 + rho 16095) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16101 * (1 - rho 16099) = rho 16096 - rho 16097 - rho 16098 := ha5
        _ = (-1) * rho 16097 - rho 16098 + (seg16AccY43 rho - seg16AccX43 rho * (-1)) * (rho 16094 + rho 16095) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX44 rho = seg16AccX43 rho - Bool.toZMod bit * (seg16AccX43 rho - rho 16100) := by
      have hd : rho 16102 = Bool.toZMod bit * (rho 16100 - seg16AccX43 rho) := by
        rw [← hbit]
        unfold seg16AccX43
        linear_combination -r3530
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY44 rho = seg16AccY43 rho - Bool.toZMod bit * (seg16AccY43 rho - rho 16101) := by
      have hd : rho 16103 = Bool.toZMod bit * (rho 16101 - seg16AccY43 rho) := by
        rw [← hbit]
        unfold seg16AccY43
        linear_combination -r3531
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16094 * rho 16095 = rho 16104 := by linear_combination r3532
    have hd1 : rho 16094 * rho 16094 = rho 16105 := by linear_combination r3533
    have hd2 : rho 16095 * rho 16095 = rho 16106 := by linear_combination r3534
    have hd3 : rho 16107 * (rho 16095 * rho 16095 + rho 16094 * rho 16094 * (-1)) = 2 * (rho 16094 * rho 16095) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 16108 * (2 - (rho 16095 * rho 16095 + rho 16094 * rho 16094 * (-1))) = rho 16095 * rho 16095 - rho 16094 * rho 16094 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
      ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
      ⟨(rho 16100 : Seg16.F), (rho 16101 : Seg16.F)⟩
      ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
      ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg16_hstep_c3 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg16_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg16_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg16_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg16_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg16_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg16_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg16_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg16_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg16_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg16_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
