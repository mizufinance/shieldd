import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3401 rho ∧ Seg52.relationRow3402 rho ∧ Seg52.relationRow3403 rho ∧ Seg52.relationRow3404 rho ∧ Seg52.relationRow3405 rho ∧ Seg52.relationRow3406 rho ∧ Seg52.relationRow3407 rho ∧ Seg52.relationRow3408 rho ∧ Seg52.relationRow3409 rho ∧ Seg52.relationRow3410 rho ∧ Seg52.relationRow3411 rho ∧ Seg52.relationRow3412 rho ∧ Seg52.relationRow3413 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413⟩

theorem seg52In1_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47789, rho 47790⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 47789, rho 47790⟩
        ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 47802, rho 47803⟩ := by
  obtain ⟨r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413⟩ := seg52In1_rows55 rho h
  unfold Seg52.relationRow3401 at r3401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3401

  unfold Seg52.relationRow3402 at r3402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3402

  unfold Seg52.relationRow3403 at r3403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3403

  unfold Seg52.relationRow3404 at r3404

  unfold Seg52.relationRow3405 at r3405

  unfold Seg52.relationRow3406 at r3406

  unfold Seg52.relationRow3407 at r3407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3407

  unfold Seg52.relationRow3408 at r3408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408

  unfold Seg52.relationRow3409 at r3409

  unfold Seg52.relationRow3410 at r3410

  unfold Seg52.relationRow3411 at r3411

  unfold Seg52.relationRow3412 at r3412

  unfold Seg52.relationRow3413 at r3413

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX56 rho = seg52In1AccX55 rho + rho 47797 := by
    unfold seg52In1AccX56 seg52In1AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 55]

    ring

  have hnexty : seg52In1AccY56 rho = seg52In1AccY55 rho + rho 47798 := by
    unfold seg52In1AccY56 seg52In1AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 55]

    ring

  have ha0 : (rho 47789 + rho 47790) * (seg52In1AccX55 rho + seg52In1AccY55 rho) = rho 47791 := by
    unfold seg52In1AccX55 seg52In1AccY55
    linear_combination r3401
  have ha1 : rho 47790 * seg52In1AccX55 rho = rho 47792 := by
    unfold seg52In1AccX55
    linear_combination r3402
  have ha2 : rho 47789 * seg52In1AccY55 rho = rho 47793 := by
    unfold seg52In1AccY55
    linear_combination r3403
  have ha3 : 3021 * rho 47792 * rho 47793 = rho 47794 := by
    linear_combination r3404
  have ha4 : rho 47795 * (1 + rho 47794) = rho 47792 + rho 47793 := by
    linear_combination r3405
  have ha5 : rho 47796 * (1 - rho 47794) = rho 47791 - rho 47792 - rho 47793 := by
    linear_combination r3406
  have haddx :
      rho 47795 * (1 + 3021 * (rho 47790 * seg52In1AccX55 rho) * (rho 47789 * seg52In1AccY55 rho)) =
        rho 47790 * seg52In1AccX55 rho + rho 47789 * seg52In1AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47796 * (1 - 3021 * (rho 47790 * seg52In1AccX55 rho) * (rho 47789 * seg52In1AccY55 rho)) =
        (-1) * (rho 47790 * seg52In1AccX55 rho) - rho 47789 * seg52In1AccY55 rho +
          (seg52In1AccY55 rho - seg52In1AccX55 rho * (-1)) * (rho 47789 + rho 47790) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47796 * (1 - rho 47794) = rho 47791 - rho 47792 - rho 47793 := ha5
      _ = (-1) * rho 47792 - rho 47793 + (seg52In1AccY55 rho - seg52In1AccX55 rho * (-1)) *
          (rho 47789 + rho 47790) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX56 rho = seg52In1AccX55 rho - Bool.toZMod bit * (seg52In1AccX55 rho - rho 47795) := by
    have hd : rho 47797 = Bool.toZMod bit * (rho 47795 - seg52In1AccX55 rho) := by
      rw [← hbit]
      unfold seg52In1AccX55
      linear_combination -r3407
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY56 rho = seg52In1AccY55 rho - Bool.toZMod bit * (seg52In1AccY55 rho - rho 47796) := by
    have hd : rho 47798 = Bool.toZMod bit * (rho 47796 - seg52In1AccY55 rho) := by
      rw [← hbit]
      unfold seg52In1AccY55
      linear_combination -r3408
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47789 * rho 47790 = rho 47799 := by linear_combination r3409
  have hd1 : rho 47789 * rho 47789 = rho 47800 := by linear_combination r3410
  have hd2 : rho 47790 * rho 47790 = rho 47801 := by linear_combination r3411
  have hd3 : rho 47802 * (rho 47790 * rho 47790 + rho 47789 * rho 47789 * (-1)) =
      2 * (rho 47789 * rho 47790) := by
    rw [hd0, hd1, hd2]
    linear_combination r3412
  have hd4 : rho 47803 * (2 - (rho 47790 * rho 47790 + rho 47789 * rho 47789 * (-1))) =
      rho 47790 * rho 47790 - rho 47789 * rho 47789 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3413
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 47789, rho 47790⟩
    ⟨rho 47795, rho 47796⟩ ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 47802, rho 47803⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3414 rho ∧ Seg52.relationRow3415 rho ∧ Seg52.relationRow3416 rho ∧ Seg52.relationRow3417 rho ∧ Seg52.relationRow3418 rho ∧ Seg52.relationRow3419 rho ∧ Seg52.relationRow3420 rho ∧ Seg52.relationRow3421 rho ∧ Seg52.relationRow3422 rho ∧ Seg52.relationRow3423 rho ∧ Seg52.relationRow3424 rho ∧ Seg52.relationRow3425 rho ∧ Seg52.relationRow3426 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426⟩

theorem seg52In1_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47802, rho 47803⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 47802, rho 47803⟩
        ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 47815, rho 47816⟩ := by
  obtain ⟨r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426⟩ := seg52In1_rows56 rho h
  unfold Seg52.relationRow3414 at r3414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3414

  unfold Seg52.relationRow3415 at r3415

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3415

  unfold Seg52.relationRow3416 at r3416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3416

  unfold Seg52.relationRow3417 at r3417

  unfold Seg52.relationRow3418 at r3418

  unfold Seg52.relationRow3419 at r3419

  unfold Seg52.relationRow3420 at r3420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3420

  unfold Seg52.relationRow3421 at r3421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421

  unfold Seg52.relationRow3422 at r3422

  unfold Seg52.relationRow3423 at r3423

  unfold Seg52.relationRow3424 at r3424

  unfold Seg52.relationRow3425 at r3425

  unfold Seg52.relationRow3426 at r3426

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX57 rho = seg52In1AccX56 rho + rho 47810 := by
    unfold seg52In1AccX57 seg52In1AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 56]

    ring

  have hnexty : seg52In1AccY57 rho = seg52In1AccY56 rho + rho 47811 := by
    unfold seg52In1AccY57 seg52In1AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 56]

    ring

  have ha0 : (rho 47802 + rho 47803) * (seg52In1AccX56 rho + seg52In1AccY56 rho) = rho 47804 := by
    unfold seg52In1AccX56 seg52In1AccY56
    linear_combination r3414
  have ha1 : rho 47803 * seg52In1AccX56 rho = rho 47805 := by
    unfold seg52In1AccX56
    linear_combination r3415
  have ha2 : rho 47802 * seg52In1AccY56 rho = rho 47806 := by
    unfold seg52In1AccY56
    linear_combination r3416
  have ha3 : 3021 * rho 47805 * rho 47806 = rho 47807 := by
    linear_combination r3417
  have ha4 : rho 47808 * (1 + rho 47807) = rho 47805 + rho 47806 := by
    linear_combination r3418
  have ha5 : rho 47809 * (1 - rho 47807) = rho 47804 - rho 47805 - rho 47806 := by
    linear_combination r3419
  have haddx :
      rho 47808 * (1 + 3021 * (rho 47803 * seg52In1AccX56 rho) * (rho 47802 * seg52In1AccY56 rho)) =
        rho 47803 * seg52In1AccX56 rho + rho 47802 * seg52In1AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47809 * (1 - 3021 * (rho 47803 * seg52In1AccX56 rho) * (rho 47802 * seg52In1AccY56 rho)) =
        (-1) * (rho 47803 * seg52In1AccX56 rho) - rho 47802 * seg52In1AccY56 rho +
          (seg52In1AccY56 rho - seg52In1AccX56 rho * (-1)) * (rho 47802 + rho 47803) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47809 * (1 - rho 47807) = rho 47804 - rho 47805 - rho 47806 := ha5
      _ = (-1) * rho 47805 - rho 47806 + (seg52In1AccY56 rho - seg52In1AccX56 rho * (-1)) *
          (rho 47802 + rho 47803) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX57 rho = seg52In1AccX56 rho - Bool.toZMod bit * (seg52In1AccX56 rho - rho 47808) := by
    have hd : rho 47810 = Bool.toZMod bit * (rho 47808 - seg52In1AccX56 rho) := by
      rw [← hbit]
      unfold seg52In1AccX56
      linear_combination -r3420
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY57 rho = seg52In1AccY56 rho - Bool.toZMod bit * (seg52In1AccY56 rho - rho 47809) := by
    have hd : rho 47811 = Bool.toZMod bit * (rho 47809 - seg52In1AccY56 rho) := by
      rw [← hbit]
      unfold seg52In1AccY56
      linear_combination -r3421
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47802 * rho 47803 = rho 47812 := by linear_combination r3422
  have hd1 : rho 47802 * rho 47802 = rho 47813 := by linear_combination r3423
  have hd2 : rho 47803 * rho 47803 = rho 47814 := by linear_combination r3424
  have hd3 : rho 47815 * (rho 47803 * rho 47803 + rho 47802 * rho 47802 * (-1)) =
      2 * (rho 47802 * rho 47803) := by
    rw [hd0, hd1, hd2]
    linear_combination r3425
  have hd4 : rho 47816 * (2 - (rho 47803 * rho 47803 + rho 47802 * rho 47802 * (-1))) =
      rho 47803 * rho 47803 - rho 47802 * rho 47802 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3426
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 47802, rho 47803⟩
    ⟨rho 47808, rho 47809⟩ ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 47815, rho 47816⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3427 rho ∧ Seg52.relationRow3428 rho ∧ Seg52.relationRow3429 rho ∧ Seg52.relationRow3430 rho ∧ Seg52.relationRow3431 rho ∧ Seg52.relationRow3432 rho ∧ Seg52.relationRow3433 rho ∧ Seg52.relationRow3434 rho ∧ Seg52.relationRow3435 rho ∧ Seg52.relationRow3436 rho ∧ Seg52.relationRow3437 rho ∧ Seg52.relationRow3438 rho ∧ Seg52.relationRow3439 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩

  exact ⟨r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩

theorem seg52In1_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47815, rho 47816⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 47815, rho 47816⟩
        ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 47828, rho 47829⟩ := by
  obtain ⟨r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩ := seg52In1_rows57 rho h
  unfold Seg52.relationRow3427 at r3427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3427

  unfold Seg52.relationRow3428 at r3428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3428

  unfold Seg52.relationRow3429 at r3429

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3429

  unfold Seg52.relationRow3430 at r3430

  unfold Seg52.relationRow3431 at r3431

  unfold Seg52.relationRow3432 at r3432

  unfold Seg52.relationRow3433 at r3433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3433

  unfold Seg52.relationRow3434 at r3434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434

  unfold Seg52.relationRow3435 at r3435

  unfold Seg52.relationRow3436 at r3436

  unfold Seg52.relationRow3437 at r3437

  unfold Seg52.relationRow3438 at r3438

  unfold Seg52.relationRow3439 at r3439

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX58 rho = seg52In1AccX57 rho + rho 47823 := by
    unfold seg52In1AccX58 seg52In1AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 57]

    ring

  have hnexty : seg52In1AccY58 rho = seg52In1AccY57 rho + rho 47824 := by
    unfold seg52In1AccY58 seg52In1AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 57]

    ring

  have ha0 : (rho 47815 + rho 47816) * (seg52In1AccX57 rho + seg52In1AccY57 rho) = rho 47817 := by
    unfold seg52In1AccX57 seg52In1AccY57
    linear_combination r3427
  have ha1 : rho 47816 * seg52In1AccX57 rho = rho 47818 := by
    unfold seg52In1AccX57
    linear_combination r3428
  have ha2 : rho 47815 * seg52In1AccY57 rho = rho 47819 := by
    unfold seg52In1AccY57
    linear_combination r3429
  have ha3 : 3021 * rho 47818 * rho 47819 = rho 47820 := by
    linear_combination r3430
  have ha4 : rho 47821 * (1 + rho 47820) = rho 47818 + rho 47819 := by
    linear_combination r3431
  have ha5 : rho 47822 * (1 - rho 47820) = rho 47817 - rho 47818 - rho 47819 := by
    linear_combination r3432
  have haddx :
      rho 47821 * (1 + 3021 * (rho 47816 * seg52In1AccX57 rho) * (rho 47815 * seg52In1AccY57 rho)) =
        rho 47816 * seg52In1AccX57 rho + rho 47815 * seg52In1AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47822 * (1 - 3021 * (rho 47816 * seg52In1AccX57 rho) * (rho 47815 * seg52In1AccY57 rho)) =
        (-1) * (rho 47816 * seg52In1AccX57 rho) - rho 47815 * seg52In1AccY57 rho +
          (seg52In1AccY57 rho - seg52In1AccX57 rho * (-1)) * (rho 47815 + rho 47816) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47822 * (1 - rho 47820) = rho 47817 - rho 47818 - rho 47819 := ha5
      _ = (-1) * rho 47818 - rho 47819 + (seg52In1AccY57 rho - seg52In1AccX57 rho * (-1)) *
          (rho 47815 + rho 47816) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX58 rho = seg52In1AccX57 rho - Bool.toZMod bit * (seg52In1AccX57 rho - rho 47821) := by
    have hd : rho 47823 = Bool.toZMod bit * (rho 47821 - seg52In1AccX57 rho) := by
      rw [← hbit]
      unfold seg52In1AccX57
      linear_combination -r3433
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY58 rho = seg52In1AccY57 rho - Bool.toZMod bit * (seg52In1AccY57 rho - rho 47822) := by
    have hd : rho 47824 = Bool.toZMod bit * (rho 47822 - seg52In1AccY57 rho) := by
      rw [← hbit]
      unfold seg52In1AccY57
      linear_combination -r3434
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47815 * rho 47816 = rho 47825 := by linear_combination r3435
  have hd1 : rho 47815 * rho 47815 = rho 47826 := by linear_combination r3436
  have hd2 : rho 47816 * rho 47816 = rho 47827 := by linear_combination r3437
  have hd3 : rho 47828 * (rho 47816 * rho 47816 + rho 47815 * rho 47815 * (-1)) =
      2 * (rho 47815 * rho 47816) := by
    rw [hd0, hd1, hd2]
    linear_combination r3438
  have hd4 : rho 47829 * (2 - (rho 47816 * rho 47816 + rho 47815 * rho 47815 * (-1))) =
      rho 47816 * rho 47816 - rho 47815 * rho 47815 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3439
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 47815, rho 47816⟩
    ⟨rho 47821, rho 47822⟩ ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 47828, rho 47829⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3440 rho ∧ Seg52.relationRow3441 rho ∧ Seg52.relationRow3442 rho ∧ Seg52.relationRow3443 rho ∧ Seg52.relationRow3444 rho ∧ Seg52.relationRow3445 rho ∧ Seg52.relationRow3446 rho ∧ Seg52.relationRow3447 rho ∧ Seg52.relationRow3448 rho ∧ Seg52.relationRow3449 rho ∧ Seg52.relationRow3450 rho ∧ Seg52.relationRow3451 rho ∧ Seg52.relationRow3452 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452⟩

theorem seg52In1_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47828, rho 47829⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 47828, rho 47829⟩
        ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 47841, rho 47842⟩ := by
  obtain ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452⟩ := seg52In1_rows58 rho h
  unfold Seg52.relationRow3440 at r3440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3440

  unfold Seg52.relationRow3441 at r3441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3441

  unfold Seg52.relationRow3442 at r3442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3442

  unfold Seg52.relationRow3443 at r3443

  unfold Seg52.relationRow3444 at r3444

  unfold Seg52.relationRow3445 at r3445

  unfold Seg52.relationRow3446 at r3446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3446

  unfold Seg52.relationRow3447 at r3447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447

  unfold Seg52.relationRow3448 at r3448

  unfold Seg52.relationRow3449 at r3449

  unfold Seg52.relationRow3450 at r3450

  unfold Seg52.relationRow3451 at r3451

  unfold Seg52.relationRow3452 at r3452

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX59 rho = seg52In1AccX58 rho + rho 47836 := by
    unfold seg52In1AccX59 seg52In1AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 58]

    ring

  have hnexty : seg52In1AccY59 rho = seg52In1AccY58 rho + rho 47837 := by
    unfold seg52In1AccY59 seg52In1AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 58]

    ring

  have ha0 : (rho 47828 + rho 47829) * (seg52In1AccX58 rho + seg52In1AccY58 rho) = rho 47830 := by
    unfold seg52In1AccX58 seg52In1AccY58
    linear_combination r3440
  have ha1 : rho 47829 * seg52In1AccX58 rho = rho 47831 := by
    unfold seg52In1AccX58
    linear_combination r3441
  have ha2 : rho 47828 * seg52In1AccY58 rho = rho 47832 := by
    unfold seg52In1AccY58
    linear_combination r3442
  have ha3 : 3021 * rho 47831 * rho 47832 = rho 47833 := by
    linear_combination r3443
  have ha4 : rho 47834 * (1 + rho 47833) = rho 47831 + rho 47832 := by
    linear_combination r3444
  have ha5 : rho 47835 * (1 - rho 47833) = rho 47830 - rho 47831 - rho 47832 := by
    linear_combination r3445
  have haddx :
      rho 47834 * (1 + 3021 * (rho 47829 * seg52In1AccX58 rho) * (rho 47828 * seg52In1AccY58 rho)) =
        rho 47829 * seg52In1AccX58 rho + rho 47828 * seg52In1AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47835 * (1 - 3021 * (rho 47829 * seg52In1AccX58 rho) * (rho 47828 * seg52In1AccY58 rho)) =
        (-1) * (rho 47829 * seg52In1AccX58 rho) - rho 47828 * seg52In1AccY58 rho +
          (seg52In1AccY58 rho - seg52In1AccX58 rho * (-1)) * (rho 47828 + rho 47829) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47835 * (1 - rho 47833) = rho 47830 - rho 47831 - rho 47832 := ha5
      _ = (-1) * rho 47831 - rho 47832 + (seg52In1AccY58 rho - seg52In1AccX58 rho * (-1)) *
          (rho 47828 + rho 47829) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX59 rho = seg52In1AccX58 rho - Bool.toZMod bit * (seg52In1AccX58 rho - rho 47834) := by
    have hd : rho 47836 = Bool.toZMod bit * (rho 47834 - seg52In1AccX58 rho) := by
      rw [← hbit]
      unfold seg52In1AccX58
      linear_combination -r3446
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY59 rho = seg52In1AccY58 rho - Bool.toZMod bit * (seg52In1AccY58 rho - rho 47835) := by
    have hd : rho 47837 = Bool.toZMod bit * (rho 47835 - seg52In1AccY58 rho) := by
      rw [← hbit]
      unfold seg52In1AccY58
      linear_combination -r3447
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47828 * rho 47829 = rho 47838 := by linear_combination r3448
  have hd1 : rho 47828 * rho 47828 = rho 47839 := by linear_combination r3449
  have hd2 : rho 47829 * rho 47829 = rho 47840 := by linear_combination r3450
  have hd3 : rho 47841 * (rho 47829 * rho 47829 + rho 47828 * rho 47828 * (-1)) =
      2 * (rho 47828 * rho 47829) := by
    rw [hd0, hd1, hd2]
    linear_combination r3451
  have hd4 : rho 47842 * (2 - (rho 47829 * rho 47829 + rho 47828 * rho 47828 * (-1))) =
      rho 47829 * rho 47829 - rho 47828 * rho 47828 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3452
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 47828, rho 47829⟩
    ⟨rho 47834, rho 47835⟩ ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 47841, rho 47842⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3453 rho ∧ Seg52.relationRow3454 rho ∧ Seg52.relationRow3455 rho ∧ Seg52.relationRow3456 rho ∧ Seg52.relationRow3457 rho ∧ Seg52.relationRow3458 rho ∧ Seg52.relationRow3459 rho ∧ Seg52.relationRow3460 rho ∧ Seg52.relationRow3461 rho ∧ Seg52.relationRow3462 rho ∧ Seg52.relationRow3463 rho ∧ Seg52.relationRow3464 rho ∧ Seg52.relationRow3465 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465⟩

theorem seg52In1_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47841, rho 47842⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 47841, rho 47842⟩
        ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 47854, rho 47855⟩ := by
  obtain ⟨r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465⟩ := seg52In1_rows59 rho h
  unfold Seg52.relationRow3453 at r3453

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3453

  unfold Seg52.relationRow3454 at r3454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3454

  unfold Seg52.relationRow3455 at r3455

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3455

  unfold Seg52.relationRow3456 at r3456

  unfold Seg52.relationRow3457 at r3457

  unfold Seg52.relationRow3458 at r3458

  unfold Seg52.relationRow3459 at r3459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3459

  unfold Seg52.relationRow3460 at r3460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460

  unfold Seg52.relationRow3461 at r3461

  unfold Seg52.relationRow3462 at r3462

  unfold Seg52.relationRow3463 at r3463

  unfold Seg52.relationRow3464 at r3464

  unfold Seg52.relationRow3465 at r3465

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX60 rho = seg52In1AccX59 rho + rho 47849 := by
    unfold seg52In1AccX60 seg52In1AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 59]

    ring

  have hnexty : seg52In1AccY60 rho = seg52In1AccY59 rho + rho 47850 := by
    unfold seg52In1AccY60 seg52In1AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 59]

    ring

  have ha0 : (rho 47841 + rho 47842) * (seg52In1AccX59 rho + seg52In1AccY59 rho) = rho 47843 := by
    unfold seg52In1AccX59 seg52In1AccY59
    linear_combination r3453
  have ha1 : rho 47842 * seg52In1AccX59 rho = rho 47844 := by
    unfold seg52In1AccX59
    linear_combination r3454
  have ha2 : rho 47841 * seg52In1AccY59 rho = rho 47845 := by
    unfold seg52In1AccY59
    linear_combination r3455
  have ha3 : 3021 * rho 47844 * rho 47845 = rho 47846 := by
    linear_combination r3456
  have ha4 : rho 47847 * (1 + rho 47846) = rho 47844 + rho 47845 := by
    linear_combination r3457
  have ha5 : rho 47848 * (1 - rho 47846) = rho 47843 - rho 47844 - rho 47845 := by
    linear_combination r3458
  have haddx :
      rho 47847 * (1 + 3021 * (rho 47842 * seg52In1AccX59 rho) * (rho 47841 * seg52In1AccY59 rho)) =
        rho 47842 * seg52In1AccX59 rho + rho 47841 * seg52In1AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47848 * (1 - 3021 * (rho 47842 * seg52In1AccX59 rho) * (rho 47841 * seg52In1AccY59 rho)) =
        (-1) * (rho 47842 * seg52In1AccX59 rho) - rho 47841 * seg52In1AccY59 rho +
          (seg52In1AccY59 rho - seg52In1AccX59 rho * (-1)) * (rho 47841 + rho 47842) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47848 * (1 - rho 47846) = rho 47843 - rho 47844 - rho 47845 := ha5
      _ = (-1) * rho 47844 - rho 47845 + (seg52In1AccY59 rho - seg52In1AccX59 rho * (-1)) *
          (rho 47841 + rho 47842) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX60 rho = seg52In1AccX59 rho - Bool.toZMod bit * (seg52In1AccX59 rho - rho 47847) := by
    have hd : rho 47849 = Bool.toZMod bit * (rho 47847 - seg52In1AccX59 rho) := by
      rw [← hbit]
      unfold seg52In1AccX59
      linear_combination -r3459
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY60 rho = seg52In1AccY59 rho - Bool.toZMod bit * (seg52In1AccY59 rho - rho 47848) := by
    have hd : rho 47850 = Bool.toZMod bit * (rho 47848 - seg52In1AccY59 rho) := by
      rw [← hbit]
      unfold seg52In1AccY59
      linear_combination -r3460
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47841 * rho 47842 = rho 47851 := by linear_combination r3461
  have hd1 : rho 47841 * rho 47841 = rho 47852 := by linear_combination r3462
  have hd2 : rho 47842 * rho 47842 = rho 47853 := by linear_combination r3463
  have hd3 : rho 47854 * (rho 47842 * rho 47842 + rho 47841 * rho 47841 * (-1)) =
      2 * (rho 47841 * rho 47842) := by
    rw [hd0, hd1, hd2]
    linear_combination r3464
  have hd4 : rho 47855 * (2 - (rho 47842 * rho 47842 + rho 47841 * rho 47841 * (-1))) =
      rho 47842 * rho 47842 - rho 47841 * rho 47841 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3465
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 47841, rho 47842⟩
    ⟨rho 47847, rho 47848⟩ ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 47854, rho 47855⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3466 rho ∧ Seg52.relationRow3467 rho ∧ Seg52.relationRow3468 rho ∧ Seg52.relationRow3469 rho ∧ Seg52.relationRow3470 rho ∧ Seg52.relationRow3471 rho ∧ Seg52.relationRow3472 rho ∧ Seg52.relationRow3473 rho ∧ Seg52.relationRow3474 rho ∧ Seg52.relationRow3475 rho ∧ Seg52.relationRow3476 rho ∧ Seg52.relationRow3477 rho ∧ Seg52.relationRow3478 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478⟩

theorem seg52In1_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47854, rho 47855⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 47854, rho 47855⟩
        ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 47867, rho 47868⟩ := by
  obtain ⟨r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478⟩ := seg52In1_rows60 rho h
  unfold Seg52.relationRow3466 at r3466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3466

  unfold Seg52.relationRow3467 at r3467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3467

  unfold Seg52.relationRow3468 at r3468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3468

  unfold Seg52.relationRow3469 at r3469

  unfold Seg52.relationRow3470 at r3470

  unfold Seg52.relationRow3471 at r3471

  unfold Seg52.relationRow3472 at r3472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3472

  unfold Seg52.relationRow3473 at r3473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473

  unfold Seg52.relationRow3474 at r3474

  unfold Seg52.relationRow3475 at r3475

  unfold Seg52.relationRow3476 at r3476

  unfold Seg52.relationRow3477 at r3477

  unfold Seg52.relationRow3478 at r3478

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX61 rho = seg52In1AccX60 rho + rho 47862 := by
    unfold seg52In1AccX61 seg52In1AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 60]

    ring

  have hnexty : seg52In1AccY61 rho = seg52In1AccY60 rho + rho 47863 := by
    unfold seg52In1AccY61 seg52In1AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 60]

    ring

  have ha0 : (rho 47854 + rho 47855) * (seg52In1AccX60 rho + seg52In1AccY60 rho) = rho 47856 := by
    unfold seg52In1AccX60 seg52In1AccY60
    linear_combination r3466
  have ha1 : rho 47855 * seg52In1AccX60 rho = rho 47857 := by
    unfold seg52In1AccX60
    linear_combination r3467
  have ha2 : rho 47854 * seg52In1AccY60 rho = rho 47858 := by
    unfold seg52In1AccY60
    linear_combination r3468
  have ha3 : 3021 * rho 47857 * rho 47858 = rho 47859 := by
    linear_combination r3469
  have ha4 : rho 47860 * (1 + rho 47859) = rho 47857 + rho 47858 := by
    linear_combination r3470
  have ha5 : rho 47861 * (1 - rho 47859) = rho 47856 - rho 47857 - rho 47858 := by
    linear_combination r3471
  have haddx :
      rho 47860 * (1 + 3021 * (rho 47855 * seg52In1AccX60 rho) * (rho 47854 * seg52In1AccY60 rho)) =
        rho 47855 * seg52In1AccX60 rho + rho 47854 * seg52In1AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47861 * (1 - 3021 * (rho 47855 * seg52In1AccX60 rho) * (rho 47854 * seg52In1AccY60 rho)) =
        (-1) * (rho 47855 * seg52In1AccX60 rho) - rho 47854 * seg52In1AccY60 rho +
          (seg52In1AccY60 rho - seg52In1AccX60 rho * (-1)) * (rho 47854 + rho 47855) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47861 * (1 - rho 47859) = rho 47856 - rho 47857 - rho 47858 := ha5
      _ = (-1) * rho 47857 - rho 47858 + (seg52In1AccY60 rho - seg52In1AccX60 rho * (-1)) *
          (rho 47854 + rho 47855) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX61 rho = seg52In1AccX60 rho - Bool.toZMod bit * (seg52In1AccX60 rho - rho 47860) := by
    have hd : rho 47862 = Bool.toZMod bit * (rho 47860 - seg52In1AccX60 rho) := by
      rw [← hbit]
      unfold seg52In1AccX60
      linear_combination -r3472
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY61 rho = seg52In1AccY60 rho - Bool.toZMod bit * (seg52In1AccY60 rho - rho 47861) := by
    have hd : rho 47863 = Bool.toZMod bit * (rho 47861 - seg52In1AccY60 rho) := by
      rw [← hbit]
      unfold seg52In1AccY60
      linear_combination -r3473
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47854 * rho 47855 = rho 47864 := by linear_combination r3474
  have hd1 : rho 47854 * rho 47854 = rho 47865 := by linear_combination r3475
  have hd2 : rho 47855 * rho 47855 = rho 47866 := by linear_combination r3476
  have hd3 : rho 47867 * (rho 47855 * rho 47855 + rho 47854 * rho 47854 * (-1)) =
      2 * (rho 47854 * rho 47855) := by
    rw [hd0, hd1, hd2]
    linear_combination r3477
  have hd4 : rho 47868 * (2 - (rho 47855 * rho 47855 + rho 47854 * rho 47854 * (-1))) =
      rho 47855 * rho 47855 - rho 47854 * rho 47854 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3478
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 47854, rho 47855⟩
    ⟨rho 47860, rho 47861⟩ ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 47867, rho 47868⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3479 rho ∧ Seg52.relationRow3480 rho ∧ Seg52.relationRow3481 rho ∧ Seg52.relationRow3482 rho ∧ Seg52.relationRow3483 rho ∧ Seg52.relationRow3484 rho ∧ Seg52.relationRow3485 rho ∧ Seg52.relationRow3486 rho ∧ Seg52.relationRow3487 rho ∧ Seg52.relationRow3488 rho ∧ Seg52.relationRow3489 rho ∧ Seg52.relationRow3490 rho ∧ Seg52.relationRow3491 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491⟩

theorem seg52In1_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47867, rho 47868⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 47867, rho 47868⟩
        ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 47880, rho 47881⟩ := by
  obtain ⟨r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491⟩ := seg52In1_rows61 rho h
  unfold Seg52.relationRow3479 at r3479

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3479

  unfold Seg52.relationRow3480 at r3480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3480

  unfold Seg52.relationRow3481 at r3481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3481

  unfold Seg52.relationRow3482 at r3482

  unfold Seg52.relationRow3483 at r3483

  unfold Seg52.relationRow3484 at r3484

  unfold Seg52.relationRow3485 at r3485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3485

  unfold Seg52.relationRow3486 at r3486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486

  unfold Seg52.relationRow3487 at r3487

  unfold Seg52.relationRow3488 at r3488

  unfold Seg52.relationRow3489 at r3489

  unfold Seg52.relationRow3490 at r3490

  unfold Seg52.relationRow3491 at r3491

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX62 rho = seg52In1AccX61 rho + rho 47875 := by
    unfold seg52In1AccX62 seg52In1AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 61]

    ring

  have hnexty : seg52In1AccY62 rho = seg52In1AccY61 rho + rho 47876 := by
    unfold seg52In1AccY62 seg52In1AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 61]

    ring

  have ha0 : (rho 47867 + rho 47868) * (seg52In1AccX61 rho + seg52In1AccY61 rho) = rho 47869 := by
    unfold seg52In1AccX61 seg52In1AccY61
    linear_combination r3479
  have ha1 : rho 47868 * seg52In1AccX61 rho = rho 47870 := by
    unfold seg52In1AccX61
    linear_combination r3480
  have ha2 : rho 47867 * seg52In1AccY61 rho = rho 47871 := by
    unfold seg52In1AccY61
    linear_combination r3481
  have ha3 : 3021 * rho 47870 * rho 47871 = rho 47872 := by
    linear_combination r3482
  have ha4 : rho 47873 * (1 + rho 47872) = rho 47870 + rho 47871 := by
    linear_combination r3483
  have ha5 : rho 47874 * (1 - rho 47872) = rho 47869 - rho 47870 - rho 47871 := by
    linear_combination r3484
  have haddx :
      rho 47873 * (1 + 3021 * (rho 47868 * seg52In1AccX61 rho) * (rho 47867 * seg52In1AccY61 rho)) =
        rho 47868 * seg52In1AccX61 rho + rho 47867 * seg52In1AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47874 * (1 - 3021 * (rho 47868 * seg52In1AccX61 rho) * (rho 47867 * seg52In1AccY61 rho)) =
        (-1) * (rho 47868 * seg52In1AccX61 rho) - rho 47867 * seg52In1AccY61 rho +
          (seg52In1AccY61 rho - seg52In1AccX61 rho * (-1)) * (rho 47867 + rho 47868) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47874 * (1 - rho 47872) = rho 47869 - rho 47870 - rho 47871 := ha5
      _ = (-1) * rho 47870 - rho 47871 + (seg52In1AccY61 rho - seg52In1AccX61 rho * (-1)) *
          (rho 47867 + rho 47868) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX62 rho = seg52In1AccX61 rho - Bool.toZMod bit * (seg52In1AccX61 rho - rho 47873) := by
    have hd : rho 47875 = Bool.toZMod bit * (rho 47873 - seg52In1AccX61 rho) := by
      rw [← hbit]
      unfold seg52In1AccX61
      linear_combination -r3485
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY62 rho = seg52In1AccY61 rho - Bool.toZMod bit * (seg52In1AccY61 rho - rho 47874) := by
    have hd : rho 47876 = Bool.toZMod bit * (rho 47874 - seg52In1AccY61 rho) := by
      rw [← hbit]
      unfold seg52In1AccY61
      linear_combination -r3486
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47867 * rho 47868 = rho 47877 := by linear_combination r3487
  have hd1 : rho 47867 * rho 47867 = rho 47878 := by linear_combination r3488
  have hd2 : rho 47868 * rho 47868 = rho 47879 := by linear_combination r3489
  have hd3 : rho 47880 * (rho 47868 * rho 47868 + rho 47867 * rho 47867 * (-1)) =
      2 * (rho 47867 * rho 47868) := by
    rw [hd0, hd1, hd2]
    linear_combination r3490
  have hd4 : rho 47881 * (2 - (rho 47868 * rho 47868 + rho 47867 * rho 47867 * (-1))) =
      rho 47868 * rho 47868 - rho 47867 * rho 47867 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3491
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 47867, rho 47868⟩
    ⟨rho 47873, rho 47874⟩ ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 47880, rho 47881⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3492 rho ∧ Seg52.relationRow3493 rho ∧ Seg52.relationRow3494 rho ∧ Seg52.relationRow3495 rho ∧ Seg52.relationRow3496 rho ∧ Seg52.relationRow3497 rho ∧ Seg52.relationRow3498 rho ∧ Seg52.relationRow3499 rho ∧ Seg52.relationRow3500 rho ∧ Seg52.relationRow3501 rho ∧ Seg52.relationRow3502 rho ∧ Seg52.relationRow3503 rho ∧ Seg52.relationRow3504 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504⟩

theorem seg52In1_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47016 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47880, rho 47881⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 47880, rho 47881⟩
        ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 47893, rho 47894⟩ := by
  obtain ⟨r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504⟩ := seg52In1_rows62 rho h
  unfold Seg52.relationRow3492 at r3492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3492

  unfold Seg52.relationRow3493 at r3493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3493

  unfold Seg52.relationRow3494 at r3494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3494

  unfold Seg52.relationRow3495 at r3495

  unfold Seg52.relationRow3496 at r3496

  unfold Seg52.relationRow3497 at r3497

  unfold Seg52.relationRow3498 at r3498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3498

  unfold Seg52.relationRow3499 at r3499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499

  unfold Seg52.relationRow3500 at r3500

  unfold Seg52.relationRow3501 at r3501

  unfold Seg52.relationRow3502 at r3502

  unfold Seg52.relationRow3503 at r3503

  unfold Seg52.relationRow3504 at r3504

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX63 rho = seg52In1AccX62 rho + rho 47888 := by
    unfold seg52In1AccX63 seg52In1AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 62]

    ring

  have hnexty : seg52In1AccY63 rho = seg52In1AccY62 rho + rho 47889 := by
    unfold seg52In1AccY63 seg52In1AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 62]

    ring

  have ha0 : (rho 47880 + rho 47881) * (seg52In1AccX62 rho + seg52In1AccY62 rho) = rho 47882 := by
    unfold seg52In1AccX62 seg52In1AccY62
    linear_combination r3492
  have ha1 : rho 47881 * seg52In1AccX62 rho = rho 47883 := by
    unfold seg52In1AccX62
    linear_combination r3493
  have ha2 : rho 47880 * seg52In1AccY62 rho = rho 47884 := by
    unfold seg52In1AccY62
    linear_combination r3494
  have ha3 : 3021 * rho 47883 * rho 47884 = rho 47885 := by
    linear_combination r3495
  have ha4 : rho 47886 * (1 + rho 47885) = rho 47883 + rho 47884 := by
    linear_combination r3496
  have ha5 : rho 47887 * (1 - rho 47885) = rho 47882 - rho 47883 - rho 47884 := by
    linear_combination r3497
  have haddx :
      rho 47886 * (1 + 3021 * (rho 47881 * seg52In1AccX62 rho) * (rho 47880 * seg52In1AccY62 rho)) =
        rho 47881 * seg52In1AccX62 rho + rho 47880 * seg52In1AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47887 * (1 - 3021 * (rho 47881 * seg52In1AccX62 rho) * (rho 47880 * seg52In1AccY62 rho)) =
        (-1) * (rho 47881 * seg52In1AccX62 rho) - rho 47880 * seg52In1AccY62 rho +
          (seg52In1AccY62 rho - seg52In1AccX62 rho * (-1)) * (rho 47880 + rho 47881) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47887 * (1 - rho 47885) = rho 47882 - rho 47883 - rho 47884 := ha5
      _ = (-1) * rho 47883 - rho 47884 + (seg52In1AccY62 rho - seg52In1AccX62 rho * (-1)) *
          (rho 47880 + rho 47881) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX63 rho = seg52In1AccX62 rho - Bool.toZMod bit * (seg52In1AccX62 rho - rho 47886) := by
    have hd : rho 47888 = Bool.toZMod bit * (rho 47886 - seg52In1AccX62 rho) := by
      rw [← hbit]
      unfold seg52In1AccX62
      linear_combination -r3498
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY63 rho = seg52In1AccY62 rho - Bool.toZMod bit * (seg52In1AccY62 rho - rho 47887) := by
    have hd : rho 47889 = Bool.toZMod bit * (rho 47887 - seg52In1AccY62 rho) := by
      rw [← hbit]
      unfold seg52In1AccY62
      linear_combination -r3499
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47880 * rho 47881 = rho 47890 := by linear_combination r3500
  have hd1 : rho 47880 * rho 47880 = rho 47891 := by linear_combination r3501
  have hd2 : rho 47881 * rho 47881 = rho 47892 := by linear_combination r3502
  have hd3 : rho 47893 * (rho 47881 * rho 47881 + rho 47880 * rho 47880 * (-1)) =
      2 * (rho 47880 * rho 47881) := by
    rw [hd0, hd1, hd2]
    linear_combination r3503
  have hd4 : rho 47894 * (2 - (rho 47881 * rho 47881 + rho 47880 * rho 47880 * (-1))) =
      rho 47881 * rho 47881 - rho 47880 * rho 47880 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3504
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 47880, rho 47881⟩
    ⟨rho 47886, rho 47887⟩ ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 47893, rho 47894⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3505 rho ∧ Seg52.relationRow3506 rho ∧ Seg52.relationRow3507 rho ∧ Seg52.relationRow3508 rho ∧ Seg52.relationRow3509 rho ∧ Seg52.relationRow3510 rho ∧ Seg52.relationRow3511 rho ∧ Seg52.relationRow3512 rho ∧ Seg52.relationRow3513 rho ∧ Seg52.relationRow3514 rho ∧ Seg52.relationRow3515 rho ∧ Seg52.relationRow3516 rho ∧ Seg52.relationRow3517 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, _, _⟩

  exact ⟨r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517⟩

theorem seg52In1_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47017 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47893, rho 47894⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 47893, rho 47894⟩
        ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 47906, rho 47907⟩ := by
  obtain ⟨r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517⟩ := seg52In1_rows63 rho h
  unfold Seg52.relationRow3505 at r3505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3505

  unfold Seg52.relationRow3506 at r3506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3506

  unfold Seg52.relationRow3507 at r3507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3507

  unfold Seg52.relationRow3508 at r3508

  unfold Seg52.relationRow3509 at r3509

  unfold Seg52.relationRow3510 at r3510

  unfold Seg52.relationRow3511 at r3511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3511

  unfold Seg52.relationRow3512 at r3512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512

  unfold Seg52.relationRow3513 at r3513

  unfold Seg52.relationRow3514 at r3514

  unfold Seg52.relationRow3515 at r3515

  unfold Seg52.relationRow3516 at r3516

  unfold Seg52.relationRow3517 at r3517

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX64 rho = seg52In1AccX63 rho + rho 47901 := by
    unfold seg52In1AccX64 seg52In1AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 63]

    ring

  have hnexty : seg52In1AccY64 rho = seg52In1AccY63 rho + rho 47902 := by
    unfold seg52In1AccY64 seg52In1AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 63]

    ring

  have ha0 : (rho 47893 + rho 47894) * (seg52In1AccX63 rho + seg52In1AccY63 rho) = rho 47895 := by
    unfold seg52In1AccX63 seg52In1AccY63
    linear_combination r3505
  have ha1 : rho 47894 * seg52In1AccX63 rho = rho 47896 := by
    unfold seg52In1AccX63
    linear_combination r3506
  have ha2 : rho 47893 * seg52In1AccY63 rho = rho 47897 := by
    unfold seg52In1AccY63
    linear_combination r3507
  have ha3 : 3021 * rho 47896 * rho 47897 = rho 47898 := by
    linear_combination r3508
  have ha4 : rho 47899 * (1 + rho 47898) = rho 47896 + rho 47897 := by
    linear_combination r3509
  have ha5 : rho 47900 * (1 - rho 47898) = rho 47895 - rho 47896 - rho 47897 := by
    linear_combination r3510
  have haddx :
      rho 47899 * (1 + 3021 * (rho 47894 * seg52In1AccX63 rho) * (rho 47893 * seg52In1AccY63 rho)) =
        rho 47894 * seg52In1AccX63 rho + rho 47893 * seg52In1AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47900 * (1 - 3021 * (rho 47894 * seg52In1AccX63 rho) * (rho 47893 * seg52In1AccY63 rho)) =
        (-1) * (rho 47894 * seg52In1AccX63 rho) - rho 47893 * seg52In1AccY63 rho +
          (seg52In1AccY63 rho - seg52In1AccX63 rho * (-1)) * (rho 47893 + rho 47894) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47900 * (1 - rho 47898) = rho 47895 - rho 47896 - rho 47897 := ha5
      _ = (-1) * rho 47896 - rho 47897 + (seg52In1AccY63 rho - seg52In1AccX63 rho * (-1)) *
          (rho 47893 + rho 47894) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX64 rho = seg52In1AccX63 rho - Bool.toZMod bit * (seg52In1AccX63 rho - rho 47899) := by
    have hd : rho 47901 = Bool.toZMod bit * (rho 47899 - seg52In1AccX63 rho) := by
      rw [← hbit]
      unfold seg52In1AccX63
      linear_combination -r3511
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY64 rho = seg52In1AccY63 rho - Bool.toZMod bit * (seg52In1AccY63 rho - rho 47900) := by
    have hd : rho 47902 = Bool.toZMod bit * (rho 47900 - seg52In1AccY63 rho) := by
      rw [← hbit]
      unfold seg52In1AccY63
      linear_combination -r3512
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47893 * rho 47894 = rho 47903 := by linear_combination r3513
  have hd1 : rho 47893 * rho 47893 = rho 47904 := by linear_combination r3514
  have hd2 : rho 47894 * rho 47894 = rho 47905 := by linear_combination r3515
  have hd3 : rho 47906 * (rho 47894 * rho 47894 + rho 47893 * rho 47893 * (-1)) =
      2 * (rho 47893 * rho 47894) := by
    rw [hd0, hd1, hd2]
    linear_combination r3516
  have hd4 : rho 47907 * (2 - (rho 47894 * rho 47894 + rho 47893 * rho 47893 * (-1))) =
      rho 47894 * rho 47894 - rho 47893 * rho 47893 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3517
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 47893, rho 47894⟩
    ⟨rho 47899, rho 47900⟩ ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 47906, rho 47907⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3518 rho ∧ Seg52.relationRow3519 rho ∧ Seg52.relationRow3520 rho ∧ Seg52.relationRow3521 rho ∧ Seg52.relationRow3522 rho ∧ Seg52.relationRow3523 rho ∧ Seg52.relationRow3524 rho ∧ Seg52.relationRow3525 rho ∧ Seg52.relationRow3526 rho ∧ Seg52.relationRow3527 rho ∧ Seg52.relationRow3528 rho ∧ Seg52.relationRow3529 rho ∧ Seg52.relationRow3530 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3518, r3519⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3518, r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530⟩

theorem seg52In1_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47018 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47906, rho 47907⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 47906, rho 47907⟩
        ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 47919, rho 47920⟩ := by
  obtain ⟨r3518, r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530⟩ := seg52In1_rows64 rho h
  unfold Seg52.relationRow3518 at r3518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3518

  unfold Seg52.relationRow3519 at r3519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3519

  unfold Seg52.relationRow3520 at r3520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3520

  unfold Seg52.relationRow3521 at r3521

  unfold Seg52.relationRow3522 at r3522

  unfold Seg52.relationRow3523 at r3523

  unfold Seg52.relationRow3524 at r3524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3524

  unfold Seg52.relationRow3525 at r3525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525

  unfold Seg52.relationRow3526 at r3526

  unfold Seg52.relationRow3527 at r3527

  unfold Seg52.relationRow3528 at r3528

  unfold Seg52.relationRow3529 at r3529

  unfold Seg52.relationRow3530 at r3530

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX65 rho = seg52In1AccX64 rho + rho 47914 := by
    unfold seg52In1AccX65 seg52In1AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 64]

    ring

  have hnexty : seg52In1AccY65 rho = seg52In1AccY64 rho + rho 47915 := by
    unfold seg52In1AccY65 seg52In1AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 64]

    ring

  have ha0 : (rho 47906 + rho 47907) * (seg52In1AccX64 rho + seg52In1AccY64 rho) = rho 47908 := by
    unfold seg52In1AccX64 seg52In1AccY64
    linear_combination r3518
  have ha1 : rho 47907 * seg52In1AccX64 rho = rho 47909 := by
    unfold seg52In1AccX64
    linear_combination r3519
  have ha2 : rho 47906 * seg52In1AccY64 rho = rho 47910 := by
    unfold seg52In1AccY64
    linear_combination r3520
  have ha3 : 3021 * rho 47909 * rho 47910 = rho 47911 := by
    linear_combination r3521
  have ha4 : rho 47912 * (1 + rho 47911) = rho 47909 + rho 47910 := by
    linear_combination r3522
  have ha5 : rho 47913 * (1 - rho 47911) = rho 47908 - rho 47909 - rho 47910 := by
    linear_combination r3523
  have haddx :
      rho 47912 * (1 + 3021 * (rho 47907 * seg52In1AccX64 rho) * (rho 47906 * seg52In1AccY64 rho)) =
        rho 47907 * seg52In1AccX64 rho + rho 47906 * seg52In1AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47913 * (1 - 3021 * (rho 47907 * seg52In1AccX64 rho) * (rho 47906 * seg52In1AccY64 rho)) =
        (-1) * (rho 47907 * seg52In1AccX64 rho) - rho 47906 * seg52In1AccY64 rho +
          (seg52In1AccY64 rho - seg52In1AccX64 rho * (-1)) * (rho 47906 + rho 47907) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47913 * (1 - rho 47911) = rho 47908 - rho 47909 - rho 47910 := ha5
      _ = (-1) * rho 47909 - rho 47910 + (seg52In1AccY64 rho - seg52In1AccX64 rho * (-1)) *
          (rho 47906 + rho 47907) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX65 rho = seg52In1AccX64 rho - Bool.toZMod bit * (seg52In1AccX64 rho - rho 47912) := by
    have hd : rho 47914 = Bool.toZMod bit * (rho 47912 - seg52In1AccX64 rho) := by
      rw [← hbit]
      unfold seg52In1AccX64
      linear_combination -r3524
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY65 rho = seg52In1AccY64 rho - Bool.toZMod bit * (seg52In1AccY64 rho - rho 47913) := by
    have hd : rho 47915 = Bool.toZMod bit * (rho 47913 - seg52In1AccY64 rho) := by
      rw [← hbit]
      unfold seg52In1AccY64
      linear_combination -r3525
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47906 * rho 47907 = rho 47916 := by linear_combination r3526
  have hd1 : rho 47906 * rho 47906 = rho 47917 := by linear_combination r3527
  have hd2 : rho 47907 * rho 47907 = rho 47918 := by linear_combination r3528
  have hd3 : rho 47919 * (rho 47907 * rho 47907 + rho 47906 * rho 47906 * (-1)) =
      2 * (rho 47906 * rho 47907) := by
    rw [hd0, hd1, hd2]
    linear_combination r3529
  have hd4 : rho 47920 * (2 - (rho 47907 * rho 47907 + rho 47906 * rho 47906 * (-1))) =
      rho 47907 * rho 47907 - rho 47906 * rho 47906 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3530
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 47906, rho 47907⟩
    ⟨rho 47912, rho 47913⟩ ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 47919, rho 47920⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3531 rho ∧ Seg52.relationRow3532 rho ∧ Seg52.relationRow3533 rho ∧ Seg52.relationRow3534 rho ∧ Seg52.relationRow3535 rho ∧ Seg52.relationRow3536 rho ∧ Seg52.relationRow3537 rho ∧ Seg52.relationRow3538 rho ∧ Seg52.relationRow3539 rho ∧ Seg52.relationRow3540 rho ∧ Seg52.relationRow3541 rho ∧ Seg52.relationRow3542 rho ∧ Seg52.relationRow3543 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543⟩

theorem seg52In1_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47019 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47919, rho 47920⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 47919, rho 47920⟩
        ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 47932, rho 47933⟩ := by
  obtain ⟨r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543⟩ := seg52In1_rows65 rho h
  unfold Seg52.relationRow3531 at r3531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3531

  unfold Seg52.relationRow3532 at r3532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3532

  unfold Seg52.relationRow3533 at r3533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3533

  unfold Seg52.relationRow3534 at r3534

  unfold Seg52.relationRow3535 at r3535

  unfold Seg52.relationRow3536 at r3536

  unfold Seg52.relationRow3537 at r3537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3537

  unfold Seg52.relationRow3538 at r3538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538

  unfold Seg52.relationRow3539 at r3539

  unfold Seg52.relationRow3540 at r3540

  unfold Seg52.relationRow3541 at r3541

  unfold Seg52.relationRow3542 at r3542

  unfold Seg52.relationRow3543 at r3543

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX66 rho = seg52In1AccX65 rho + rho 47927 := by
    unfold seg52In1AccX66 seg52In1AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 65]

    ring

  have hnexty : seg52In1AccY66 rho = seg52In1AccY65 rho + rho 47928 := by
    unfold seg52In1AccY66 seg52In1AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 65]

    ring

  have ha0 : (rho 47919 + rho 47920) * (seg52In1AccX65 rho + seg52In1AccY65 rho) = rho 47921 := by
    unfold seg52In1AccX65 seg52In1AccY65
    linear_combination r3531
  have ha1 : rho 47920 * seg52In1AccX65 rho = rho 47922 := by
    unfold seg52In1AccX65
    linear_combination r3532
  have ha2 : rho 47919 * seg52In1AccY65 rho = rho 47923 := by
    unfold seg52In1AccY65
    linear_combination r3533
  have ha3 : 3021 * rho 47922 * rho 47923 = rho 47924 := by
    linear_combination r3534
  have ha4 : rho 47925 * (1 + rho 47924) = rho 47922 + rho 47923 := by
    linear_combination r3535
  have ha5 : rho 47926 * (1 - rho 47924) = rho 47921 - rho 47922 - rho 47923 := by
    linear_combination r3536
  have haddx :
      rho 47925 * (1 + 3021 * (rho 47920 * seg52In1AccX65 rho) * (rho 47919 * seg52In1AccY65 rho)) =
        rho 47920 * seg52In1AccX65 rho + rho 47919 * seg52In1AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47926 * (1 - 3021 * (rho 47920 * seg52In1AccX65 rho) * (rho 47919 * seg52In1AccY65 rho)) =
        (-1) * (rho 47920 * seg52In1AccX65 rho) - rho 47919 * seg52In1AccY65 rho +
          (seg52In1AccY65 rho - seg52In1AccX65 rho * (-1)) * (rho 47919 + rho 47920) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47926 * (1 - rho 47924) = rho 47921 - rho 47922 - rho 47923 := ha5
      _ = (-1) * rho 47922 - rho 47923 + (seg52In1AccY65 rho - seg52In1AccX65 rho * (-1)) *
          (rho 47919 + rho 47920) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX66 rho = seg52In1AccX65 rho - Bool.toZMod bit * (seg52In1AccX65 rho - rho 47925) := by
    have hd : rho 47927 = Bool.toZMod bit * (rho 47925 - seg52In1AccX65 rho) := by
      rw [← hbit]
      unfold seg52In1AccX65
      linear_combination -r3537
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY66 rho = seg52In1AccY65 rho - Bool.toZMod bit * (seg52In1AccY65 rho - rho 47926) := by
    have hd : rho 47928 = Bool.toZMod bit * (rho 47926 - seg52In1AccY65 rho) := by
      rw [← hbit]
      unfold seg52In1AccY65
      linear_combination -r3538
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47919 * rho 47920 = rho 47929 := by linear_combination r3539
  have hd1 : rho 47919 * rho 47919 = rho 47930 := by linear_combination r3540
  have hd2 : rho 47920 * rho 47920 = rho 47931 := by linear_combination r3541
  have hd3 : rho 47932 * (rho 47920 * rho 47920 + rho 47919 * rho 47919 * (-1)) =
      2 * (rho 47919 * rho 47920) := by
    rw [hd0, hd1, hd2]
    linear_combination r3542
  have hd4 : rho 47933 * (2 - (rho 47920 * rho 47920 + rho 47919 * rho 47919 * (-1))) =
      rho 47920 * rho 47920 - rho 47919 * rho 47919 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3543
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 47919, rho 47920⟩
    ⟨rho 47925, rho 47926⟩ ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 47932, rho 47933⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg52In1_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg52In1_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg52In1_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg52In1_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg52In1_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg52In1_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg52In1_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg52In1_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg52In1_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg52In1_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
