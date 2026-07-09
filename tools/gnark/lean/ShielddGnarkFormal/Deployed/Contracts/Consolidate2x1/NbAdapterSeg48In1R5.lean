import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3401 rho ∧ Seg48.relationRow3402 rho ∧ Seg48.relationRow3403 rho ∧ Seg48.relationRow3404 rho ∧ Seg48.relationRow3405 rho ∧ Seg48.relationRow3406 rho ∧ Seg48.relationRow3407 rho ∧ Seg48.relationRow3408 rho ∧ Seg48.relationRow3409 rho ∧ Seg48.relationRow3410 rho ∧ Seg48.relationRow3411 rho ∧ Seg48.relationRow3412 rho ∧ Seg48.relationRow3413 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413⟩

theorem seg48In1_rung55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35377 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX55 rho, seg48In1AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36157, rho 36158⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX55 rho, seg48In1AccY55 rho⟩ ⟨rho 36157, rho 36158⟩
        ⟨seg48In1AccX56 rho, seg48In1AccY56 rho⟩ ⟨rho 36170, rho 36171⟩ := by
  obtain ⟨r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413⟩ := seg48In1_rows55 rho h
  unfold Seg48.relationRow3401 at r3401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3401

  unfold Seg48.relationRow3402 at r3402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3402

  unfold Seg48.relationRow3403 at r3403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3403

  unfold Seg48.relationRow3404 at r3404

  unfold Seg48.relationRow3405 at r3405

  unfold Seg48.relationRow3406 at r3406

  unfold Seg48.relationRow3407 at r3407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3407

  unfold Seg48.relationRow3408 at r3408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408

  unfold Seg48.relationRow3409 at r3409

  unfold Seg48.relationRow3410 at r3410

  unfold Seg48.relationRow3411 at r3411

  unfold Seg48.relationRow3412 at r3412

  unfold Seg48.relationRow3413 at r3413

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX56 rho = seg48In1AccX55 rho + rho 36165 := by
    unfold seg48In1AccX56 seg48In1AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 55]

    ring

  have hnexty : seg48In1AccY56 rho = seg48In1AccY55 rho + rho 36166 := by
    unfold seg48In1AccY56 seg48In1AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 55]

    ring

  have ha0 : (rho 36157 + rho 36158) * (seg48In1AccX55 rho + seg48In1AccY55 rho) = rho 36159 := by
    unfold seg48In1AccX55 seg48In1AccY55
    linear_combination r3401
  have ha1 : rho 36158 * seg48In1AccX55 rho = rho 36160 := by
    unfold seg48In1AccX55
    linear_combination r3402
  have ha2 : rho 36157 * seg48In1AccY55 rho = rho 36161 := by
    unfold seg48In1AccY55
    linear_combination r3403
  have ha3 : 3021 * rho 36160 * rho 36161 = rho 36162 := by
    linear_combination r3404
  have ha4 : rho 36163 * (1 + rho 36162) = rho 36160 + rho 36161 := by
    linear_combination r3405
  have ha5 : rho 36164 * (1 - rho 36162) = rho 36159 - rho 36160 - rho 36161 := by
    linear_combination r3406
  have haddx :
      rho 36163 * (1 + 3021 * (rho 36158 * seg48In1AccX55 rho) * (rho 36157 * seg48In1AccY55 rho)) =
        rho 36158 * seg48In1AccX55 rho + rho 36157 * seg48In1AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36164 * (1 - 3021 * (rho 36158 * seg48In1AccX55 rho) * (rho 36157 * seg48In1AccY55 rho)) =
        (-1) * (rho 36158 * seg48In1AccX55 rho) - rho 36157 * seg48In1AccY55 rho +
          (seg48In1AccY55 rho - seg48In1AccX55 rho * (-1)) * (rho 36157 + rho 36158) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36164 * (1 - rho 36162) = rho 36159 - rho 36160 - rho 36161 := ha5
      _ = (-1) * rho 36160 - rho 36161 + (seg48In1AccY55 rho - seg48In1AccX55 rho * (-1)) *
          (rho 36157 + rho 36158) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX56 rho = seg48In1AccX55 rho - Bool.toZMod bit * (seg48In1AccX55 rho - rho 36163) := by
    have hd : rho 36165 = Bool.toZMod bit * (rho 36163 - seg48In1AccX55 rho) := by
      rw [← hbit]
      unfold seg48In1AccX55
      linear_combination -r3407
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY56 rho = seg48In1AccY55 rho - Bool.toZMod bit * (seg48In1AccY55 rho - rho 36164) := by
    have hd : rho 36166 = Bool.toZMod bit * (rho 36164 - seg48In1AccY55 rho) := by
      rw [← hbit]
      unfold seg48In1AccY55
      linear_combination -r3408
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36157 * rho 36158 = rho 36167 := by linear_combination r3409
  have hd1 : rho 36157 * rho 36157 = rho 36168 := by linear_combination r3410
  have hd2 : rho 36158 * rho 36158 = rho 36169 := by linear_combination r3411
  have hd3 : rho 36170 * (rho 36158 * rho 36158 + rho 36157 * rho 36157 * (-1)) =
      2 * (rho 36157 * rho 36158) := by
    rw [hd0, hd1, hd2]
    linear_combination r3412
  have hd4 : rho 36171 * (2 - (rho 36158 * rho 36158 + rho 36157 * rho 36157 * (-1))) =
      rho 36158 * rho 36158 - rho 36157 * rho 36157 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3413
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX55 rho, seg48In1AccY55 rho⟩ ⟨rho 36157, rho 36158⟩
    ⟨rho 36163, rho 36164⟩ ⟨seg48In1AccX56 rho, seg48In1AccY56 rho⟩ ⟨rho 36170, rho 36171⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3414 rho ∧ Seg48.relationRow3415 rho ∧ Seg48.relationRow3416 rho ∧ Seg48.relationRow3417 rho ∧ Seg48.relationRow3418 rho ∧ Seg48.relationRow3419 rho ∧ Seg48.relationRow3420 rho ∧ Seg48.relationRow3421 rho ∧ Seg48.relationRow3422 rho ∧ Seg48.relationRow3423 rho ∧ Seg48.relationRow3424 rho ∧ Seg48.relationRow3425 rho ∧ Seg48.relationRow3426 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426⟩

theorem seg48In1_rung56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35378 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX56 rho, seg48In1AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36170, rho 36171⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX56 rho, seg48In1AccY56 rho⟩ ⟨rho 36170, rho 36171⟩
        ⟨seg48In1AccX57 rho, seg48In1AccY57 rho⟩ ⟨rho 36183, rho 36184⟩ := by
  obtain ⟨r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426⟩ := seg48In1_rows56 rho h
  unfold Seg48.relationRow3414 at r3414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3414

  unfold Seg48.relationRow3415 at r3415

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3415

  unfold Seg48.relationRow3416 at r3416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3416

  unfold Seg48.relationRow3417 at r3417

  unfold Seg48.relationRow3418 at r3418

  unfold Seg48.relationRow3419 at r3419

  unfold Seg48.relationRow3420 at r3420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3420

  unfold Seg48.relationRow3421 at r3421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421

  unfold Seg48.relationRow3422 at r3422

  unfold Seg48.relationRow3423 at r3423

  unfold Seg48.relationRow3424 at r3424

  unfold Seg48.relationRow3425 at r3425

  unfold Seg48.relationRow3426 at r3426

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX57 rho = seg48In1AccX56 rho + rho 36178 := by
    unfold seg48In1AccX57 seg48In1AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 56]

    ring

  have hnexty : seg48In1AccY57 rho = seg48In1AccY56 rho + rho 36179 := by
    unfold seg48In1AccY57 seg48In1AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 56]

    ring

  have ha0 : (rho 36170 + rho 36171) * (seg48In1AccX56 rho + seg48In1AccY56 rho) = rho 36172 := by
    unfold seg48In1AccX56 seg48In1AccY56
    linear_combination r3414
  have ha1 : rho 36171 * seg48In1AccX56 rho = rho 36173 := by
    unfold seg48In1AccX56
    linear_combination r3415
  have ha2 : rho 36170 * seg48In1AccY56 rho = rho 36174 := by
    unfold seg48In1AccY56
    linear_combination r3416
  have ha3 : 3021 * rho 36173 * rho 36174 = rho 36175 := by
    linear_combination r3417
  have ha4 : rho 36176 * (1 + rho 36175) = rho 36173 + rho 36174 := by
    linear_combination r3418
  have ha5 : rho 36177 * (1 - rho 36175) = rho 36172 - rho 36173 - rho 36174 := by
    linear_combination r3419
  have haddx :
      rho 36176 * (1 + 3021 * (rho 36171 * seg48In1AccX56 rho) * (rho 36170 * seg48In1AccY56 rho)) =
        rho 36171 * seg48In1AccX56 rho + rho 36170 * seg48In1AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36177 * (1 - 3021 * (rho 36171 * seg48In1AccX56 rho) * (rho 36170 * seg48In1AccY56 rho)) =
        (-1) * (rho 36171 * seg48In1AccX56 rho) - rho 36170 * seg48In1AccY56 rho +
          (seg48In1AccY56 rho - seg48In1AccX56 rho * (-1)) * (rho 36170 + rho 36171) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36177 * (1 - rho 36175) = rho 36172 - rho 36173 - rho 36174 := ha5
      _ = (-1) * rho 36173 - rho 36174 + (seg48In1AccY56 rho - seg48In1AccX56 rho * (-1)) *
          (rho 36170 + rho 36171) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX57 rho = seg48In1AccX56 rho - Bool.toZMod bit * (seg48In1AccX56 rho - rho 36176) := by
    have hd : rho 36178 = Bool.toZMod bit * (rho 36176 - seg48In1AccX56 rho) := by
      rw [← hbit]
      unfold seg48In1AccX56
      linear_combination -r3420
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY57 rho = seg48In1AccY56 rho - Bool.toZMod bit * (seg48In1AccY56 rho - rho 36177) := by
    have hd : rho 36179 = Bool.toZMod bit * (rho 36177 - seg48In1AccY56 rho) := by
      rw [← hbit]
      unfold seg48In1AccY56
      linear_combination -r3421
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36170 * rho 36171 = rho 36180 := by linear_combination r3422
  have hd1 : rho 36170 * rho 36170 = rho 36181 := by linear_combination r3423
  have hd2 : rho 36171 * rho 36171 = rho 36182 := by linear_combination r3424
  have hd3 : rho 36183 * (rho 36171 * rho 36171 + rho 36170 * rho 36170 * (-1)) =
      2 * (rho 36170 * rho 36171) := by
    rw [hd0, hd1, hd2]
    linear_combination r3425
  have hd4 : rho 36184 * (2 - (rho 36171 * rho 36171 + rho 36170 * rho 36170 * (-1))) =
      rho 36171 * rho 36171 - rho 36170 * rho 36170 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3426
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX56 rho, seg48In1AccY56 rho⟩ ⟨rho 36170, rho 36171⟩
    ⟨rho 36176, rho 36177⟩ ⟨seg48In1AccX57 rho, seg48In1AccY57 rho⟩ ⟨rho 36183, rho 36184⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3427 rho ∧ Seg48.relationRow3428 rho ∧ Seg48.relationRow3429 rho ∧ Seg48.relationRow3430 rho ∧ Seg48.relationRow3431 rho ∧ Seg48.relationRow3432 rho ∧ Seg48.relationRow3433 rho ∧ Seg48.relationRow3434 rho ∧ Seg48.relationRow3435 rho ∧ Seg48.relationRow3436 rho ∧ Seg48.relationRow3437 rho ∧ Seg48.relationRow3438 rho ∧ Seg48.relationRow3439 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩

  exact ⟨r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩

theorem seg48In1_rung57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35379 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX57 rho, seg48In1AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36183, rho 36184⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX57 rho, seg48In1AccY57 rho⟩ ⟨rho 36183, rho 36184⟩
        ⟨seg48In1AccX58 rho, seg48In1AccY58 rho⟩ ⟨rho 36196, rho 36197⟩ := by
  obtain ⟨r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩ := seg48In1_rows57 rho h
  unfold Seg48.relationRow3427 at r3427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3427

  unfold Seg48.relationRow3428 at r3428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3428

  unfold Seg48.relationRow3429 at r3429

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3429

  unfold Seg48.relationRow3430 at r3430

  unfold Seg48.relationRow3431 at r3431

  unfold Seg48.relationRow3432 at r3432

  unfold Seg48.relationRow3433 at r3433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3433

  unfold Seg48.relationRow3434 at r3434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434

  unfold Seg48.relationRow3435 at r3435

  unfold Seg48.relationRow3436 at r3436

  unfold Seg48.relationRow3437 at r3437

  unfold Seg48.relationRow3438 at r3438

  unfold Seg48.relationRow3439 at r3439

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX58 rho = seg48In1AccX57 rho + rho 36191 := by
    unfold seg48In1AccX58 seg48In1AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 57]

    ring

  have hnexty : seg48In1AccY58 rho = seg48In1AccY57 rho + rho 36192 := by
    unfold seg48In1AccY58 seg48In1AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 57]

    ring

  have ha0 : (rho 36183 + rho 36184) * (seg48In1AccX57 rho + seg48In1AccY57 rho) = rho 36185 := by
    unfold seg48In1AccX57 seg48In1AccY57
    linear_combination r3427
  have ha1 : rho 36184 * seg48In1AccX57 rho = rho 36186 := by
    unfold seg48In1AccX57
    linear_combination r3428
  have ha2 : rho 36183 * seg48In1AccY57 rho = rho 36187 := by
    unfold seg48In1AccY57
    linear_combination r3429
  have ha3 : 3021 * rho 36186 * rho 36187 = rho 36188 := by
    linear_combination r3430
  have ha4 : rho 36189 * (1 + rho 36188) = rho 36186 + rho 36187 := by
    linear_combination r3431
  have ha5 : rho 36190 * (1 - rho 36188) = rho 36185 - rho 36186 - rho 36187 := by
    linear_combination r3432
  have haddx :
      rho 36189 * (1 + 3021 * (rho 36184 * seg48In1AccX57 rho) * (rho 36183 * seg48In1AccY57 rho)) =
        rho 36184 * seg48In1AccX57 rho + rho 36183 * seg48In1AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36190 * (1 - 3021 * (rho 36184 * seg48In1AccX57 rho) * (rho 36183 * seg48In1AccY57 rho)) =
        (-1) * (rho 36184 * seg48In1AccX57 rho) - rho 36183 * seg48In1AccY57 rho +
          (seg48In1AccY57 rho - seg48In1AccX57 rho * (-1)) * (rho 36183 + rho 36184) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36190 * (1 - rho 36188) = rho 36185 - rho 36186 - rho 36187 := ha5
      _ = (-1) * rho 36186 - rho 36187 + (seg48In1AccY57 rho - seg48In1AccX57 rho * (-1)) *
          (rho 36183 + rho 36184) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX58 rho = seg48In1AccX57 rho - Bool.toZMod bit * (seg48In1AccX57 rho - rho 36189) := by
    have hd : rho 36191 = Bool.toZMod bit * (rho 36189 - seg48In1AccX57 rho) := by
      rw [← hbit]
      unfold seg48In1AccX57
      linear_combination -r3433
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY58 rho = seg48In1AccY57 rho - Bool.toZMod bit * (seg48In1AccY57 rho - rho 36190) := by
    have hd : rho 36192 = Bool.toZMod bit * (rho 36190 - seg48In1AccY57 rho) := by
      rw [← hbit]
      unfold seg48In1AccY57
      linear_combination -r3434
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36183 * rho 36184 = rho 36193 := by linear_combination r3435
  have hd1 : rho 36183 * rho 36183 = rho 36194 := by linear_combination r3436
  have hd2 : rho 36184 * rho 36184 = rho 36195 := by linear_combination r3437
  have hd3 : rho 36196 * (rho 36184 * rho 36184 + rho 36183 * rho 36183 * (-1)) =
      2 * (rho 36183 * rho 36184) := by
    rw [hd0, hd1, hd2]
    linear_combination r3438
  have hd4 : rho 36197 * (2 - (rho 36184 * rho 36184 + rho 36183 * rho 36183 * (-1))) =
      rho 36184 * rho 36184 - rho 36183 * rho 36183 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3439
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX57 rho, seg48In1AccY57 rho⟩ ⟨rho 36183, rho 36184⟩
    ⟨rho 36189, rho 36190⟩ ⟨seg48In1AccX58 rho, seg48In1AccY58 rho⟩ ⟨rho 36196, rho 36197⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3440 rho ∧ Seg48.relationRow3441 rho ∧ Seg48.relationRow3442 rho ∧ Seg48.relationRow3443 rho ∧ Seg48.relationRow3444 rho ∧ Seg48.relationRow3445 rho ∧ Seg48.relationRow3446 rho ∧ Seg48.relationRow3447 rho ∧ Seg48.relationRow3448 rho ∧ Seg48.relationRow3449 rho ∧ Seg48.relationRow3450 rho ∧ Seg48.relationRow3451 rho ∧ Seg48.relationRow3452 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452⟩

theorem seg48In1_rung58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35380 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX58 rho, seg48In1AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36196, rho 36197⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX58 rho, seg48In1AccY58 rho⟩ ⟨rho 36196, rho 36197⟩
        ⟨seg48In1AccX59 rho, seg48In1AccY59 rho⟩ ⟨rho 36209, rho 36210⟩ := by
  obtain ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452⟩ := seg48In1_rows58 rho h
  unfold Seg48.relationRow3440 at r3440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3440

  unfold Seg48.relationRow3441 at r3441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3441

  unfold Seg48.relationRow3442 at r3442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3442

  unfold Seg48.relationRow3443 at r3443

  unfold Seg48.relationRow3444 at r3444

  unfold Seg48.relationRow3445 at r3445

  unfold Seg48.relationRow3446 at r3446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3446

  unfold Seg48.relationRow3447 at r3447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447

  unfold Seg48.relationRow3448 at r3448

  unfold Seg48.relationRow3449 at r3449

  unfold Seg48.relationRow3450 at r3450

  unfold Seg48.relationRow3451 at r3451

  unfold Seg48.relationRow3452 at r3452

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX59 rho = seg48In1AccX58 rho + rho 36204 := by
    unfold seg48In1AccX59 seg48In1AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 58]

    ring

  have hnexty : seg48In1AccY59 rho = seg48In1AccY58 rho + rho 36205 := by
    unfold seg48In1AccY59 seg48In1AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 58]

    ring

  have ha0 : (rho 36196 + rho 36197) * (seg48In1AccX58 rho + seg48In1AccY58 rho) = rho 36198 := by
    unfold seg48In1AccX58 seg48In1AccY58
    linear_combination r3440
  have ha1 : rho 36197 * seg48In1AccX58 rho = rho 36199 := by
    unfold seg48In1AccX58
    linear_combination r3441
  have ha2 : rho 36196 * seg48In1AccY58 rho = rho 36200 := by
    unfold seg48In1AccY58
    linear_combination r3442
  have ha3 : 3021 * rho 36199 * rho 36200 = rho 36201 := by
    linear_combination r3443
  have ha4 : rho 36202 * (1 + rho 36201) = rho 36199 + rho 36200 := by
    linear_combination r3444
  have ha5 : rho 36203 * (1 - rho 36201) = rho 36198 - rho 36199 - rho 36200 := by
    linear_combination r3445
  have haddx :
      rho 36202 * (1 + 3021 * (rho 36197 * seg48In1AccX58 rho) * (rho 36196 * seg48In1AccY58 rho)) =
        rho 36197 * seg48In1AccX58 rho + rho 36196 * seg48In1AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36203 * (1 - 3021 * (rho 36197 * seg48In1AccX58 rho) * (rho 36196 * seg48In1AccY58 rho)) =
        (-1) * (rho 36197 * seg48In1AccX58 rho) - rho 36196 * seg48In1AccY58 rho +
          (seg48In1AccY58 rho - seg48In1AccX58 rho * (-1)) * (rho 36196 + rho 36197) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36203 * (1 - rho 36201) = rho 36198 - rho 36199 - rho 36200 := ha5
      _ = (-1) * rho 36199 - rho 36200 + (seg48In1AccY58 rho - seg48In1AccX58 rho * (-1)) *
          (rho 36196 + rho 36197) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX59 rho = seg48In1AccX58 rho - Bool.toZMod bit * (seg48In1AccX58 rho - rho 36202) := by
    have hd : rho 36204 = Bool.toZMod bit * (rho 36202 - seg48In1AccX58 rho) := by
      rw [← hbit]
      unfold seg48In1AccX58
      linear_combination -r3446
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY59 rho = seg48In1AccY58 rho - Bool.toZMod bit * (seg48In1AccY58 rho - rho 36203) := by
    have hd : rho 36205 = Bool.toZMod bit * (rho 36203 - seg48In1AccY58 rho) := by
      rw [← hbit]
      unfold seg48In1AccY58
      linear_combination -r3447
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36196 * rho 36197 = rho 36206 := by linear_combination r3448
  have hd1 : rho 36196 * rho 36196 = rho 36207 := by linear_combination r3449
  have hd2 : rho 36197 * rho 36197 = rho 36208 := by linear_combination r3450
  have hd3 : rho 36209 * (rho 36197 * rho 36197 + rho 36196 * rho 36196 * (-1)) =
      2 * (rho 36196 * rho 36197) := by
    rw [hd0, hd1, hd2]
    linear_combination r3451
  have hd4 : rho 36210 * (2 - (rho 36197 * rho 36197 + rho 36196 * rho 36196 * (-1))) =
      rho 36197 * rho 36197 - rho 36196 * rho 36196 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3452
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX58 rho, seg48In1AccY58 rho⟩ ⟨rho 36196, rho 36197⟩
    ⟨rho 36202, rho 36203⟩ ⟨seg48In1AccX59 rho, seg48In1AccY59 rho⟩ ⟨rho 36209, rho 36210⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3453 rho ∧ Seg48.relationRow3454 rho ∧ Seg48.relationRow3455 rho ∧ Seg48.relationRow3456 rho ∧ Seg48.relationRow3457 rho ∧ Seg48.relationRow3458 rho ∧ Seg48.relationRow3459 rho ∧ Seg48.relationRow3460 rho ∧ Seg48.relationRow3461 rho ∧ Seg48.relationRow3462 rho ∧ Seg48.relationRow3463 rho ∧ Seg48.relationRow3464 rho ∧ Seg48.relationRow3465 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465⟩

theorem seg48In1_rung59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35381 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX59 rho, seg48In1AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36209, rho 36210⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX59 rho, seg48In1AccY59 rho⟩ ⟨rho 36209, rho 36210⟩
        ⟨seg48In1AccX60 rho, seg48In1AccY60 rho⟩ ⟨rho 36222, rho 36223⟩ := by
  obtain ⟨r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465⟩ := seg48In1_rows59 rho h
  unfold Seg48.relationRow3453 at r3453

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3453

  unfold Seg48.relationRow3454 at r3454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3454

  unfold Seg48.relationRow3455 at r3455

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3455

  unfold Seg48.relationRow3456 at r3456

  unfold Seg48.relationRow3457 at r3457

  unfold Seg48.relationRow3458 at r3458

  unfold Seg48.relationRow3459 at r3459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3459

  unfold Seg48.relationRow3460 at r3460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460

  unfold Seg48.relationRow3461 at r3461

  unfold Seg48.relationRow3462 at r3462

  unfold Seg48.relationRow3463 at r3463

  unfold Seg48.relationRow3464 at r3464

  unfold Seg48.relationRow3465 at r3465

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX60 rho = seg48In1AccX59 rho + rho 36217 := by
    unfold seg48In1AccX60 seg48In1AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 59]

    ring

  have hnexty : seg48In1AccY60 rho = seg48In1AccY59 rho + rho 36218 := by
    unfold seg48In1AccY60 seg48In1AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 59]

    ring

  have ha0 : (rho 36209 + rho 36210) * (seg48In1AccX59 rho + seg48In1AccY59 rho) = rho 36211 := by
    unfold seg48In1AccX59 seg48In1AccY59
    linear_combination r3453
  have ha1 : rho 36210 * seg48In1AccX59 rho = rho 36212 := by
    unfold seg48In1AccX59
    linear_combination r3454
  have ha2 : rho 36209 * seg48In1AccY59 rho = rho 36213 := by
    unfold seg48In1AccY59
    linear_combination r3455
  have ha3 : 3021 * rho 36212 * rho 36213 = rho 36214 := by
    linear_combination r3456
  have ha4 : rho 36215 * (1 + rho 36214) = rho 36212 + rho 36213 := by
    linear_combination r3457
  have ha5 : rho 36216 * (1 - rho 36214) = rho 36211 - rho 36212 - rho 36213 := by
    linear_combination r3458
  have haddx :
      rho 36215 * (1 + 3021 * (rho 36210 * seg48In1AccX59 rho) * (rho 36209 * seg48In1AccY59 rho)) =
        rho 36210 * seg48In1AccX59 rho + rho 36209 * seg48In1AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36216 * (1 - 3021 * (rho 36210 * seg48In1AccX59 rho) * (rho 36209 * seg48In1AccY59 rho)) =
        (-1) * (rho 36210 * seg48In1AccX59 rho) - rho 36209 * seg48In1AccY59 rho +
          (seg48In1AccY59 rho - seg48In1AccX59 rho * (-1)) * (rho 36209 + rho 36210) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36216 * (1 - rho 36214) = rho 36211 - rho 36212 - rho 36213 := ha5
      _ = (-1) * rho 36212 - rho 36213 + (seg48In1AccY59 rho - seg48In1AccX59 rho * (-1)) *
          (rho 36209 + rho 36210) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX60 rho = seg48In1AccX59 rho - Bool.toZMod bit * (seg48In1AccX59 rho - rho 36215) := by
    have hd : rho 36217 = Bool.toZMod bit * (rho 36215 - seg48In1AccX59 rho) := by
      rw [← hbit]
      unfold seg48In1AccX59
      linear_combination -r3459
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY60 rho = seg48In1AccY59 rho - Bool.toZMod bit * (seg48In1AccY59 rho - rho 36216) := by
    have hd : rho 36218 = Bool.toZMod bit * (rho 36216 - seg48In1AccY59 rho) := by
      rw [← hbit]
      unfold seg48In1AccY59
      linear_combination -r3460
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36209 * rho 36210 = rho 36219 := by linear_combination r3461
  have hd1 : rho 36209 * rho 36209 = rho 36220 := by linear_combination r3462
  have hd2 : rho 36210 * rho 36210 = rho 36221 := by linear_combination r3463
  have hd3 : rho 36222 * (rho 36210 * rho 36210 + rho 36209 * rho 36209 * (-1)) =
      2 * (rho 36209 * rho 36210) := by
    rw [hd0, hd1, hd2]
    linear_combination r3464
  have hd4 : rho 36223 * (2 - (rho 36210 * rho 36210 + rho 36209 * rho 36209 * (-1))) =
      rho 36210 * rho 36210 - rho 36209 * rho 36209 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3465
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX59 rho, seg48In1AccY59 rho⟩ ⟨rho 36209, rho 36210⟩
    ⟨rho 36215, rho 36216⟩ ⟨seg48In1AccX60 rho, seg48In1AccY60 rho⟩ ⟨rho 36222, rho 36223⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3466 rho ∧ Seg48.relationRow3467 rho ∧ Seg48.relationRow3468 rho ∧ Seg48.relationRow3469 rho ∧ Seg48.relationRow3470 rho ∧ Seg48.relationRow3471 rho ∧ Seg48.relationRow3472 rho ∧ Seg48.relationRow3473 rho ∧ Seg48.relationRow3474 rho ∧ Seg48.relationRow3475 rho ∧ Seg48.relationRow3476 rho ∧ Seg48.relationRow3477 rho ∧ Seg48.relationRow3478 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478⟩

theorem seg48In1_rung60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35382 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX60 rho, seg48In1AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36222, rho 36223⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX60 rho, seg48In1AccY60 rho⟩ ⟨rho 36222, rho 36223⟩
        ⟨seg48In1AccX61 rho, seg48In1AccY61 rho⟩ ⟨rho 36235, rho 36236⟩ := by
  obtain ⟨r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478⟩ := seg48In1_rows60 rho h
  unfold Seg48.relationRow3466 at r3466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3466

  unfold Seg48.relationRow3467 at r3467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3467

  unfold Seg48.relationRow3468 at r3468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3468

  unfold Seg48.relationRow3469 at r3469

  unfold Seg48.relationRow3470 at r3470

  unfold Seg48.relationRow3471 at r3471

  unfold Seg48.relationRow3472 at r3472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3472

  unfold Seg48.relationRow3473 at r3473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473

  unfold Seg48.relationRow3474 at r3474

  unfold Seg48.relationRow3475 at r3475

  unfold Seg48.relationRow3476 at r3476

  unfold Seg48.relationRow3477 at r3477

  unfold Seg48.relationRow3478 at r3478

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX61 rho = seg48In1AccX60 rho + rho 36230 := by
    unfold seg48In1AccX61 seg48In1AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 60]

    ring

  have hnexty : seg48In1AccY61 rho = seg48In1AccY60 rho + rho 36231 := by
    unfold seg48In1AccY61 seg48In1AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 60]

    ring

  have ha0 : (rho 36222 + rho 36223) * (seg48In1AccX60 rho + seg48In1AccY60 rho) = rho 36224 := by
    unfold seg48In1AccX60 seg48In1AccY60
    linear_combination r3466
  have ha1 : rho 36223 * seg48In1AccX60 rho = rho 36225 := by
    unfold seg48In1AccX60
    linear_combination r3467
  have ha2 : rho 36222 * seg48In1AccY60 rho = rho 36226 := by
    unfold seg48In1AccY60
    linear_combination r3468
  have ha3 : 3021 * rho 36225 * rho 36226 = rho 36227 := by
    linear_combination r3469
  have ha4 : rho 36228 * (1 + rho 36227) = rho 36225 + rho 36226 := by
    linear_combination r3470
  have ha5 : rho 36229 * (1 - rho 36227) = rho 36224 - rho 36225 - rho 36226 := by
    linear_combination r3471
  have haddx :
      rho 36228 * (1 + 3021 * (rho 36223 * seg48In1AccX60 rho) * (rho 36222 * seg48In1AccY60 rho)) =
        rho 36223 * seg48In1AccX60 rho + rho 36222 * seg48In1AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36229 * (1 - 3021 * (rho 36223 * seg48In1AccX60 rho) * (rho 36222 * seg48In1AccY60 rho)) =
        (-1) * (rho 36223 * seg48In1AccX60 rho) - rho 36222 * seg48In1AccY60 rho +
          (seg48In1AccY60 rho - seg48In1AccX60 rho * (-1)) * (rho 36222 + rho 36223) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36229 * (1 - rho 36227) = rho 36224 - rho 36225 - rho 36226 := ha5
      _ = (-1) * rho 36225 - rho 36226 + (seg48In1AccY60 rho - seg48In1AccX60 rho * (-1)) *
          (rho 36222 + rho 36223) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX61 rho = seg48In1AccX60 rho - Bool.toZMod bit * (seg48In1AccX60 rho - rho 36228) := by
    have hd : rho 36230 = Bool.toZMod bit * (rho 36228 - seg48In1AccX60 rho) := by
      rw [← hbit]
      unfold seg48In1AccX60
      linear_combination -r3472
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY61 rho = seg48In1AccY60 rho - Bool.toZMod bit * (seg48In1AccY60 rho - rho 36229) := by
    have hd : rho 36231 = Bool.toZMod bit * (rho 36229 - seg48In1AccY60 rho) := by
      rw [← hbit]
      unfold seg48In1AccY60
      linear_combination -r3473
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36222 * rho 36223 = rho 36232 := by linear_combination r3474
  have hd1 : rho 36222 * rho 36222 = rho 36233 := by linear_combination r3475
  have hd2 : rho 36223 * rho 36223 = rho 36234 := by linear_combination r3476
  have hd3 : rho 36235 * (rho 36223 * rho 36223 + rho 36222 * rho 36222 * (-1)) =
      2 * (rho 36222 * rho 36223) := by
    rw [hd0, hd1, hd2]
    linear_combination r3477
  have hd4 : rho 36236 * (2 - (rho 36223 * rho 36223 + rho 36222 * rho 36222 * (-1))) =
      rho 36223 * rho 36223 - rho 36222 * rho 36222 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3478
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX60 rho, seg48In1AccY60 rho⟩ ⟨rho 36222, rho 36223⟩
    ⟨rho 36228, rho 36229⟩ ⟨seg48In1AccX61 rho, seg48In1AccY61 rho⟩ ⟨rho 36235, rho 36236⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3479 rho ∧ Seg48.relationRow3480 rho ∧ Seg48.relationRow3481 rho ∧ Seg48.relationRow3482 rho ∧ Seg48.relationRow3483 rho ∧ Seg48.relationRow3484 rho ∧ Seg48.relationRow3485 rho ∧ Seg48.relationRow3486 rho ∧ Seg48.relationRow3487 rho ∧ Seg48.relationRow3488 rho ∧ Seg48.relationRow3489 rho ∧ Seg48.relationRow3490 rho ∧ Seg48.relationRow3491 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491⟩

theorem seg48In1_rung61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35383 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX61 rho, seg48In1AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36235, rho 36236⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX61 rho, seg48In1AccY61 rho⟩ ⟨rho 36235, rho 36236⟩
        ⟨seg48In1AccX62 rho, seg48In1AccY62 rho⟩ ⟨rho 36248, rho 36249⟩ := by
  obtain ⟨r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491⟩ := seg48In1_rows61 rho h
  unfold Seg48.relationRow3479 at r3479

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3479

  unfold Seg48.relationRow3480 at r3480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3480

  unfold Seg48.relationRow3481 at r3481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3481

  unfold Seg48.relationRow3482 at r3482

  unfold Seg48.relationRow3483 at r3483

  unfold Seg48.relationRow3484 at r3484

  unfold Seg48.relationRow3485 at r3485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3485

  unfold Seg48.relationRow3486 at r3486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486

  unfold Seg48.relationRow3487 at r3487

  unfold Seg48.relationRow3488 at r3488

  unfold Seg48.relationRow3489 at r3489

  unfold Seg48.relationRow3490 at r3490

  unfold Seg48.relationRow3491 at r3491

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX62 rho = seg48In1AccX61 rho + rho 36243 := by
    unfold seg48In1AccX62 seg48In1AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 61]

    ring

  have hnexty : seg48In1AccY62 rho = seg48In1AccY61 rho + rho 36244 := by
    unfold seg48In1AccY62 seg48In1AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 61]

    ring

  have ha0 : (rho 36235 + rho 36236) * (seg48In1AccX61 rho + seg48In1AccY61 rho) = rho 36237 := by
    unfold seg48In1AccX61 seg48In1AccY61
    linear_combination r3479
  have ha1 : rho 36236 * seg48In1AccX61 rho = rho 36238 := by
    unfold seg48In1AccX61
    linear_combination r3480
  have ha2 : rho 36235 * seg48In1AccY61 rho = rho 36239 := by
    unfold seg48In1AccY61
    linear_combination r3481
  have ha3 : 3021 * rho 36238 * rho 36239 = rho 36240 := by
    linear_combination r3482
  have ha4 : rho 36241 * (1 + rho 36240) = rho 36238 + rho 36239 := by
    linear_combination r3483
  have ha5 : rho 36242 * (1 - rho 36240) = rho 36237 - rho 36238 - rho 36239 := by
    linear_combination r3484
  have haddx :
      rho 36241 * (1 + 3021 * (rho 36236 * seg48In1AccX61 rho) * (rho 36235 * seg48In1AccY61 rho)) =
        rho 36236 * seg48In1AccX61 rho + rho 36235 * seg48In1AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36242 * (1 - 3021 * (rho 36236 * seg48In1AccX61 rho) * (rho 36235 * seg48In1AccY61 rho)) =
        (-1) * (rho 36236 * seg48In1AccX61 rho) - rho 36235 * seg48In1AccY61 rho +
          (seg48In1AccY61 rho - seg48In1AccX61 rho * (-1)) * (rho 36235 + rho 36236) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36242 * (1 - rho 36240) = rho 36237 - rho 36238 - rho 36239 := ha5
      _ = (-1) * rho 36238 - rho 36239 + (seg48In1AccY61 rho - seg48In1AccX61 rho * (-1)) *
          (rho 36235 + rho 36236) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX62 rho = seg48In1AccX61 rho - Bool.toZMod bit * (seg48In1AccX61 rho - rho 36241) := by
    have hd : rho 36243 = Bool.toZMod bit * (rho 36241 - seg48In1AccX61 rho) := by
      rw [← hbit]
      unfold seg48In1AccX61
      linear_combination -r3485
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY62 rho = seg48In1AccY61 rho - Bool.toZMod bit * (seg48In1AccY61 rho - rho 36242) := by
    have hd : rho 36244 = Bool.toZMod bit * (rho 36242 - seg48In1AccY61 rho) := by
      rw [← hbit]
      unfold seg48In1AccY61
      linear_combination -r3486
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36235 * rho 36236 = rho 36245 := by linear_combination r3487
  have hd1 : rho 36235 * rho 36235 = rho 36246 := by linear_combination r3488
  have hd2 : rho 36236 * rho 36236 = rho 36247 := by linear_combination r3489
  have hd3 : rho 36248 * (rho 36236 * rho 36236 + rho 36235 * rho 36235 * (-1)) =
      2 * (rho 36235 * rho 36236) := by
    rw [hd0, hd1, hd2]
    linear_combination r3490
  have hd4 : rho 36249 * (2 - (rho 36236 * rho 36236 + rho 36235 * rho 36235 * (-1))) =
      rho 36236 * rho 36236 - rho 36235 * rho 36235 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3491
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX61 rho, seg48In1AccY61 rho⟩ ⟨rho 36235, rho 36236⟩
    ⟨rho 36241, rho 36242⟩ ⟨seg48In1AccX62 rho, seg48In1AccY62 rho⟩ ⟨rho 36248, rho 36249⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3492 rho ∧ Seg48.relationRow3493 rho ∧ Seg48.relationRow3494 rho ∧ Seg48.relationRow3495 rho ∧ Seg48.relationRow3496 rho ∧ Seg48.relationRow3497 rho ∧ Seg48.relationRow3498 rho ∧ Seg48.relationRow3499 rho ∧ Seg48.relationRow3500 rho ∧ Seg48.relationRow3501 rho ∧ Seg48.relationRow3502 rho ∧ Seg48.relationRow3503 rho ∧ Seg48.relationRow3504 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504⟩

theorem seg48In1_rung62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35384 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX62 rho, seg48In1AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36248, rho 36249⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX62 rho, seg48In1AccY62 rho⟩ ⟨rho 36248, rho 36249⟩
        ⟨seg48In1AccX63 rho, seg48In1AccY63 rho⟩ ⟨rho 36261, rho 36262⟩ := by
  obtain ⟨r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504⟩ := seg48In1_rows62 rho h
  unfold Seg48.relationRow3492 at r3492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3492

  unfold Seg48.relationRow3493 at r3493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3493

  unfold Seg48.relationRow3494 at r3494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3494

  unfold Seg48.relationRow3495 at r3495

  unfold Seg48.relationRow3496 at r3496

  unfold Seg48.relationRow3497 at r3497

  unfold Seg48.relationRow3498 at r3498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3498

  unfold Seg48.relationRow3499 at r3499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499

  unfold Seg48.relationRow3500 at r3500

  unfold Seg48.relationRow3501 at r3501

  unfold Seg48.relationRow3502 at r3502

  unfold Seg48.relationRow3503 at r3503

  unfold Seg48.relationRow3504 at r3504

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX63 rho = seg48In1AccX62 rho + rho 36256 := by
    unfold seg48In1AccX63 seg48In1AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 62]

    ring

  have hnexty : seg48In1AccY63 rho = seg48In1AccY62 rho + rho 36257 := by
    unfold seg48In1AccY63 seg48In1AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 62]

    ring

  have ha0 : (rho 36248 + rho 36249) * (seg48In1AccX62 rho + seg48In1AccY62 rho) = rho 36250 := by
    unfold seg48In1AccX62 seg48In1AccY62
    linear_combination r3492
  have ha1 : rho 36249 * seg48In1AccX62 rho = rho 36251 := by
    unfold seg48In1AccX62
    linear_combination r3493
  have ha2 : rho 36248 * seg48In1AccY62 rho = rho 36252 := by
    unfold seg48In1AccY62
    linear_combination r3494
  have ha3 : 3021 * rho 36251 * rho 36252 = rho 36253 := by
    linear_combination r3495
  have ha4 : rho 36254 * (1 + rho 36253) = rho 36251 + rho 36252 := by
    linear_combination r3496
  have ha5 : rho 36255 * (1 - rho 36253) = rho 36250 - rho 36251 - rho 36252 := by
    linear_combination r3497
  have haddx :
      rho 36254 * (1 + 3021 * (rho 36249 * seg48In1AccX62 rho) * (rho 36248 * seg48In1AccY62 rho)) =
        rho 36249 * seg48In1AccX62 rho + rho 36248 * seg48In1AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36255 * (1 - 3021 * (rho 36249 * seg48In1AccX62 rho) * (rho 36248 * seg48In1AccY62 rho)) =
        (-1) * (rho 36249 * seg48In1AccX62 rho) - rho 36248 * seg48In1AccY62 rho +
          (seg48In1AccY62 rho - seg48In1AccX62 rho * (-1)) * (rho 36248 + rho 36249) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36255 * (1 - rho 36253) = rho 36250 - rho 36251 - rho 36252 := ha5
      _ = (-1) * rho 36251 - rho 36252 + (seg48In1AccY62 rho - seg48In1AccX62 rho * (-1)) *
          (rho 36248 + rho 36249) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX63 rho = seg48In1AccX62 rho - Bool.toZMod bit * (seg48In1AccX62 rho - rho 36254) := by
    have hd : rho 36256 = Bool.toZMod bit * (rho 36254 - seg48In1AccX62 rho) := by
      rw [← hbit]
      unfold seg48In1AccX62
      linear_combination -r3498
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY63 rho = seg48In1AccY62 rho - Bool.toZMod bit * (seg48In1AccY62 rho - rho 36255) := by
    have hd : rho 36257 = Bool.toZMod bit * (rho 36255 - seg48In1AccY62 rho) := by
      rw [← hbit]
      unfold seg48In1AccY62
      linear_combination -r3499
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36248 * rho 36249 = rho 36258 := by linear_combination r3500
  have hd1 : rho 36248 * rho 36248 = rho 36259 := by linear_combination r3501
  have hd2 : rho 36249 * rho 36249 = rho 36260 := by linear_combination r3502
  have hd3 : rho 36261 * (rho 36249 * rho 36249 + rho 36248 * rho 36248 * (-1)) =
      2 * (rho 36248 * rho 36249) := by
    rw [hd0, hd1, hd2]
    linear_combination r3503
  have hd4 : rho 36262 * (2 - (rho 36249 * rho 36249 + rho 36248 * rho 36248 * (-1))) =
      rho 36249 * rho 36249 - rho 36248 * rho 36248 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3504
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX62 rho, seg48In1AccY62 rho⟩ ⟨rho 36248, rho 36249⟩
    ⟨rho 36254, rho 36255⟩ ⟨seg48In1AccX63 rho, seg48In1AccY63 rho⟩ ⟨rho 36261, rho 36262⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3505 rho ∧ Seg48.relationRow3506 rho ∧ Seg48.relationRow3507 rho ∧ Seg48.relationRow3508 rho ∧ Seg48.relationRow3509 rho ∧ Seg48.relationRow3510 rho ∧ Seg48.relationRow3511 rho ∧ Seg48.relationRow3512 rho ∧ Seg48.relationRow3513 rho ∧ Seg48.relationRow3514 rho ∧ Seg48.relationRow3515 rho ∧ Seg48.relationRow3516 rho ∧ Seg48.relationRow3517 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, _, _⟩

  exact ⟨r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517⟩

theorem seg48In1_rung63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35385 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX63 rho, seg48In1AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36261, rho 36262⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX63 rho, seg48In1AccY63 rho⟩ ⟨rho 36261, rho 36262⟩
        ⟨seg48In1AccX64 rho, seg48In1AccY64 rho⟩ ⟨rho 36274, rho 36275⟩ := by
  obtain ⟨r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517⟩ := seg48In1_rows63 rho h
  unfold Seg48.relationRow3505 at r3505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3505

  unfold Seg48.relationRow3506 at r3506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3506

  unfold Seg48.relationRow3507 at r3507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3507

  unfold Seg48.relationRow3508 at r3508

  unfold Seg48.relationRow3509 at r3509

  unfold Seg48.relationRow3510 at r3510

  unfold Seg48.relationRow3511 at r3511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3511

  unfold Seg48.relationRow3512 at r3512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512

  unfold Seg48.relationRow3513 at r3513

  unfold Seg48.relationRow3514 at r3514

  unfold Seg48.relationRow3515 at r3515

  unfold Seg48.relationRow3516 at r3516

  unfold Seg48.relationRow3517 at r3517

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX64 rho = seg48In1AccX63 rho + rho 36269 := by
    unfold seg48In1AccX64 seg48In1AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 63]

    ring

  have hnexty : seg48In1AccY64 rho = seg48In1AccY63 rho + rho 36270 := by
    unfold seg48In1AccY64 seg48In1AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 63]

    ring

  have ha0 : (rho 36261 + rho 36262) * (seg48In1AccX63 rho + seg48In1AccY63 rho) = rho 36263 := by
    unfold seg48In1AccX63 seg48In1AccY63
    linear_combination r3505
  have ha1 : rho 36262 * seg48In1AccX63 rho = rho 36264 := by
    unfold seg48In1AccX63
    linear_combination r3506
  have ha2 : rho 36261 * seg48In1AccY63 rho = rho 36265 := by
    unfold seg48In1AccY63
    linear_combination r3507
  have ha3 : 3021 * rho 36264 * rho 36265 = rho 36266 := by
    linear_combination r3508
  have ha4 : rho 36267 * (1 + rho 36266) = rho 36264 + rho 36265 := by
    linear_combination r3509
  have ha5 : rho 36268 * (1 - rho 36266) = rho 36263 - rho 36264 - rho 36265 := by
    linear_combination r3510
  have haddx :
      rho 36267 * (1 + 3021 * (rho 36262 * seg48In1AccX63 rho) * (rho 36261 * seg48In1AccY63 rho)) =
        rho 36262 * seg48In1AccX63 rho + rho 36261 * seg48In1AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36268 * (1 - 3021 * (rho 36262 * seg48In1AccX63 rho) * (rho 36261 * seg48In1AccY63 rho)) =
        (-1) * (rho 36262 * seg48In1AccX63 rho) - rho 36261 * seg48In1AccY63 rho +
          (seg48In1AccY63 rho - seg48In1AccX63 rho * (-1)) * (rho 36261 + rho 36262) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36268 * (1 - rho 36266) = rho 36263 - rho 36264 - rho 36265 := ha5
      _ = (-1) * rho 36264 - rho 36265 + (seg48In1AccY63 rho - seg48In1AccX63 rho * (-1)) *
          (rho 36261 + rho 36262) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX64 rho = seg48In1AccX63 rho - Bool.toZMod bit * (seg48In1AccX63 rho - rho 36267) := by
    have hd : rho 36269 = Bool.toZMod bit * (rho 36267 - seg48In1AccX63 rho) := by
      rw [← hbit]
      unfold seg48In1AccX63
      linear_combination -r3511
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY64 rho = seg48In1AccY63 rho - Bool.toZMod bit * (seg48In1AccY63 rho - rho 36268) := by
    have hd : rho 36270 = Bool.toZMod bit * (rho 36268 - seg48In1AccY63 rho) := by
      rw [← hbit]
      unfold seg48In1AccY63
      linear_combination -r3512
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36261 * rho 36262 = rho 36271 := by linear_combination r3513
  have hd1 : rho 36261 * rho 36261 = rho 36272 := by linear_combination r3514
  have hd2 : rho 36262 * rho 36262 = rho 36273 := by linear_combination r3515
  have hd3 : rho 36274 * (rho 36262 * rho 36262 + rho 36261 * rho 36261 * (-1)) =
      2 * (rho 36261 * rho 36262) := by
    rw [hd0, hd1, hd2]
    linear_combination r3516
  have hd4 : rho 36275 * (2 - (rho 36262 * rho 36262 + rho 36261 * rho 36261 * (-1))) =
      rho 36262 * rho 36262 - rho 36261 * rho 36261 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3517
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX63 rho, seg48In1AccY63 rho⟩ ⟨rho 36261, rho 36262⟩
    ⟨rho 36267, rho 36268⟩ ⟨seg48In1AccX64 rho, seg48In1AccY64 rho⟩ ⟨rho 36274, rho 36275⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3518 rho ∧ Seg48.relationRow3519 rho ∧ Seg48.relationRow3520 rho ∧ Seg48.relationRow3521 rho ∧ Seg48.relationRow3522 rho ∧ Seg48.relationRow3523 rho ∧ Seg48.relationRow3524 rho ∧ Seg48.relationRow3525 rho ∧ Seg48.relationRow3526 rho ∧ Seg48.relationRow3527 rho ∧ Seg48.relationRow3528 rho ∧ Seg48.relationRow3529 rho ∧ Seg48.relationRow3530 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3518, r3519⟩

  unfold Seg48.relationPart44 at p44

  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3518, r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530⟩

theorem seg48In1_rung64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35386 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX64 rho, seg48In1AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36274, rho 36275⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX64 rho, seg48In1AccY64 rho⟩ ⟨rho 36274, rho 36275⟩
        ⟨seg48In1AccX65 rho, seg48In1AccY65 rho⟩ ⟨rho 36287, rho 36288⟩ := by
  obtain ⟨r3518, r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530⟩ := seg48In1_rows64 rho h
  unfold Seg48.relationRow3518 at r3518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3518

  unfold Seg48.relationRow3519 at r3519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3519

  unfold Seg48.relationRow3520 at r3520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3520

  unfold Seg48.relationRow3521 at r3521

  unfold Seg48.relationRow3522 at r3522

  unfold Seg48.relationRow3523 at r3523

  unfold Seg48.relationRow3524 at r3524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3524

  unfold Seg48.relationRow3525 at r3525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525

  unfold Seg48.relationRow3526 at r3526

  unfold Seg48.relationRow3527 at r3527

  unfold Seg48.relationRow3528 at r3528

  unfold Seg48.relationRow3529 at r3529

  unfold Seg48.relationRow3530 at r3530

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX65 rho = seg48In1AccX64 rho + rho 36282 := by
    unfold seg48In1AccX65 seg48In1AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 64]

    ring

  have hnexty : seg48In1AccY65 rho = seg48In1AccY64 rho + rho 36283 := by
    unfold seg48In1AccY65 seg48In1AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 64]

    ring

  have ha0 : (rho 36274 + rho 36275) * (seg48In1AccX64 rho + seg48In1AccY64 rho) = rho 36276 := by
    unfold seg48In1AccX64 seg48In1AccY64
    linear_combination r3518
  have ha1 : rho 36275 * seg48In1AccX64 rho = rho 36277 := by
    unfold seg48In1AccX64
    linear_combination r3519
  have ha2 : rho 36274 * seg48In1AccY64 rho = rho 36278 := by
    unfold seg48In1AccY64
    linear_combination r3520
  have ha3 : 3021 * rho 36277 * rho 36278 = rho 36279 := by
    linear_combination r3521
  have ha4 : rho 36280 * (1 + rho 36279) = rho 36277 + rho 36278 := by
    linear_combination r3522
  have ha5 : rho 36281 * (1 - rho 36279) = rho 36276 - rho 36277 - rho 36278 := by
    linear_combination r3523
  have haddx :
      rho 36280 * (1 + 3021 * (rho 36275 * seg48In1AccX64 rho) * (rho 36274 * seg48In1AccY64 rho)) =
        rho 36275 * seg48In1AccX64 rho + rho 36274 * seg48In1AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36281 * (1 - 3021 * (rho 36275 * seg48In1AccX64 rho) * (rho 36274 * seg48In1AccY64 rho)) =
        (-1) * (rho 36275 * seg48In1AccX64 rho) - rho 36274 * seg48In1AccY64 rho +
          (seg48In1AccY64 rho - seg48In1AccX64 rho * (-1)) * (rho 36274 + rho 36275) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36281 * (1 - rho 36279) = rho 36276 - rho 36277 - rho 36278 := ha5
      _ = (-1) * rho 36277 - rho 36278 + (seg48In1AccY64 rho - seg48In1AccX64 rho * (-1)) *
          (rho 36274 + rho 36275) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX65 rho = seg48In1AccX64 rho - Bool.toZMod bit * (seg48In1AccX64 rho - rho 36280) := by
    have hd : rho 36282 = Bool.toZMod bit * (rho 36280 - seg48In1AccX64 rho) := by
      rw [← hbit]
      unfold seg48In1AccX64
      linear_combination -r3524
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY65 rho = seg48In1AccY64 rho - Bool.toZMod bit * (seg48In1AccY64 rho - rho 36281) := by
    have hd : rho 36283 = Bool.toZMod bit * (rho 36281 - seg48In1AccY64 rho) := by
      rw [← hbit]
      unfold seg48In1AccY64
      linear_combination -r3525
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36274 * rho 36275 = rho 36284 := by linear_combination r3526
  have hd1 : rho 36274 * rho 36274 = rho 36285 := by linear_combination r3527
  have hd2 : rho 36275 * rho 36275 = rho 36286 := by linear_combination r3528
  have hd3 : rho 36287 * (rho 36275 * rho 36275 + rho 36274 * rho 36274 * (-1)) =
      2 * (rho 36274 * rho 36275) := by
    rw [hd0, hd1, hd2]
    linear_combination r3529
  have hd4 : rho 36288 * (2 - (rho 36275 * rho 36275 + rho 36274 * rho 36274 * (-1))) =
      rho 36275 * rho 36275 - rho 36274 * rho 36274 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3530
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX64 rho, seg48In1AccY64 rho⟩ ⟨rho 36274, rho 36275⟩
    ⟨rho 36280, rho 36281⟩ ⟨seg48In1AccX65 rho, seg48In1AccY65 rho⟩ ⟨rho 36287, rho 36288⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3531 rho ∧ Seg48.relationRow3532 rho ∧ Seg48.relationRow3533 rho ∧ Seg48.relationRow3534 rho ∧ Seg48.relationRow3535 rho ∧ Seg48.relationRow3536 rho ∧ Seg48.relationRow3537 rho ∧ Seg48.relationRow3538 rho ∧ Seg48.relationRow3539 rho ∧ Seg48.relationRow3540 rho ∧ Seg48.relationRow3541 rho ∧ Seg48.relationRow3542 rho ∧ Seg48.relationRow3543 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543⟩

theorem seg48In1_rung65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35387 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX65 rho, seg48In1AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36287, rho 36288⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX65 rho, seg48In1AccY65 rho⟩ ⟨rho 36287, rho 36288⟩
        ⟨seg48In1AccX66 rho, seg48In1AccY66 rho⟩ ⟨rho 36300, rho 36301⟩ := by
  obtain ⟨r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543⟩ := seg48In1_rows65 rho h
  unfold Seg48.relationRow3531 at r3531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3531

  unfold Seg48.relationRow3532 at r3532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3532

  unfold Seg48.relationRow3533 at r3533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3533

  unfold Seg48.relationRow3534 at r3534

  unfold Seg48.relationRow3535 at r3535

  unfold Seg48.relationRow3536 at r3536

  unfold Seg48.relationRow3537 at r3537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3537

  unfold Seg48.relationRow3538 at r3538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538

  unfold Seg48.relationRow3539 at r3539

  unfold Seg48.relationRow3540 at r3540

  unfold Seg48.relationRow3541 at r3541

  unfold Seg48.relationRow3542 at r3542

  unfold Seg48.relationRow3543 at r3543

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX66 rho = seg48In1AccX65 rho + rho 36295 := by
    unfold seg48In1AccX66 seg48In1AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 65]

    ring

  have hnexty : seg48In1AccY66 rho = seg48In1AccY65 rho + rho 36296 := by
    unfold seg48In1AccY66 seg48In1AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 65]

    ring

  have ha0 : (rho 36287 + rho 36288) * (seg48In1AccX65 rho + seg48In1AccY65 rho) = rho 36289 := by
    unfold seg48In1AccX65 seg48In1AccY65
    linear_combination r3531
  have ha1 : rho 36288 * seg48In1AccX65 rho = rho 36290 := by
    unfold seg48In1AccX65
    linear_combination r3532
  have ha2 : rho 36287 * seg48In1AccY65 rho = rho 36291 := by
    unfold seg48In1AccY65
    linear_combination r3533
  have ha3 : 3021 * rho 36290 * rho 36291 = rho 36292 := by
    linear_combination r3534
  have ha4 : rho 36293 * (1 + rho 36292) = rho 36290 + rho 36291 := by
    linear_combination r3535
  have ha5 : rho 36294 * (1 - rho 36292) = rho 36289 - rho 36290 - rho 36291 := by
    linear_combination r3536
  have haddx :
      rho 36293 * (1 + 3021 * (rho 36288 * seg48In1AccX65 rho) * (rho 36287 * seg48In1AccY65 rho)) =
        rho 36288 * seg48In1AccX65 rho + rho 36287 * seg48In1AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36294 * (1 - 3021 * (rho 36288 * seg48In1AccX65 rho) * (rho 36287 * seg48In1AccY65 rho)) =
        (-1) * (rho 36288 * seg48In1AccX65 rho) - rho 36287 * seg48In1AccY65 rho +
          (seg48In1AccY65 rho - seg48In1AccX65 rho * (-1)) * (rho 36287 + rho 36288) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36294 * (1 - rho 36292) = rho 36289 - rho 36290 - rho 36291 := ha5
      _ = (-1) * rho 36290 - rho 36291 + (seg48In1AccY65 rho - seg48In1AccX65 rho * (-1)) *
          (rho 36287 + rho 36288) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX66 rho = seg48In1AccX65 rho - Bool.toZMod bit * (seg48In1AccX65 rho - rho 36293) := by
    have hd : rho 36295 = Bool.toZMod bit * (rho 36293 - seg48In1AccX65 rho) := by
      rw [← hbit]
      unfold seg48In1AccX65
      linear_combination -r3537
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY66 rho = seg48In1AccY65 rho - Bool.toZMod bit * (seg48In1AccY65 rho - rho 36294) := by
    have hd : rho 36296 = Bool.toZMod bit * (rho 36294 - seg48In1AccY65 rho) := by
      rw [← hbit]
      unfold seg48In1AccY65
      linear_combination -r3538
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36287 * rho 36288 = rho 36297 := by linear_combination r3539
  have hd1 : rho 36287 * rho 36287 = rho 36298 := by linear_combination r3540
  have hd2 : rho 36288 * rho 36288 = rho 36299 := by linear_combination r3541
  have hd3 : rho 36300 * (rho 36288 * rho 36288 + rho 36287 * rho 36287 * (-1)) =
      2 * (rho 36287 * rho 36288) := by
    rw [hd0, hd1, hd2]
    linear_combination r3542
  have hd4 : rho 36301 * (2 - (rho 36288 * rho 36288 + rho 36287 * rho 36287 * (-1))) =
      rho 36288 * rho 36288 - rho 36287 * rho 36287 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3543
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX65 rho, seg48In1AccY65 rho⟩ ⟨rho 36287, rho 36288⟩
    ⟨rho 36293, rho 36294⟩ ⟨seg48In1AccX66 rho, seg48In1AccY66 rho⟩ ⟨rho 36300, rho 36301⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c5 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg48In1_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg48In1_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg48In1_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg48In1_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg48In1_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg48In1_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg48In1_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg48In1_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg48In1_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg48In1_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
