import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3544 rho ∧ Seg48.relationRow3545 rho ∧ Seg48.relationRow3546 rho ∧ Seg48.relationRow3547 rho ∧ Seg48.relationRow3548 rho ∧ Seg48.relationRow3549 rho ∧ Seg48.relationRow3550 rho ∧ Seg48.relationRow3551 rho ∧ Seg48.relationRow3552 rho ∧ Seg48.relationRow3553 rho ∧ Seg48.relationRow3554 rho ∧ Seg48.relationRow3555 rho ∧ Seg48.relationRow3556 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556⟩

theorem seg48In1_rung66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35388 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX66 rho, seg48In1AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36300, rho 36301⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX66 rho, seg48In1AccY66 rho⟩ ⟨rho 36300, rho 36301⟩
        ⟨seg48In1AccX67 rho, seg48In1AccY67 rho⟩ ⟨rho 36313, rho 36314⟩ := by
  obtain ⟨r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556⟩ := seg48In1_rows66 rho h
  unfold Seg48.relationRow3544 at r3544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3544

  unfold Seg48.relationRow3545 at r3545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3545

  unfold Seg48.relationRow3546 at r3546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3546

  unfold Seg48.relationRow3547 at r3547

  unfold Seg48.relationRow3548 at r3548

  unfold Seg48.relationRow3549 at r3549

  unfold Seg48.relationRow3550 at r3550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3550

  unfold Seg48.relationRow3551 at r3551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551

  unfold Seg48.relationRow3552 at r3552

  unfold Seg48.relationRow3553 at r3553

  unfold Seg48.relationRow3554 at r3554

  unfold Seg48.relationRow3555 at r3555

  unfold Seg48.relationRow3556 at r3556

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX67 rho = seg48In1AccX66 rho + rho 36308 := by
    unfold seg48In1AccX67 seg48In1AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 66]

    ring

  have hnexty : seg48In1AccY67 rho = seg48In1AccY66 rho + rho 36309 := by
    unfold seg48In1AccY67 seg48In1AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 66]

    ring

  have ha0 : (rho 36300 + rho 36301) * (seg48In1AccX66 rho + seg48In1AccY66 rho) = rho 36302 := by
    unfold seg48In1AccX66 seg48In1AccY66
    linear_combination r3544
  have ha1 : rho 36301 * seg48In1AccX66 rho = rho 36303 := by
    unfold seg48In1AccX66
    linear_combination r3545
  have ha2 : rho 36300 * seg48In1AccY66 rho = rho 36304 := by
    unfold seg48In1AccY66
    linear_combination r3546
  have ha3 : 3021 * rho 36303 * rho 36304 = rho 36305 := by
    linear_combination r3547
  have ha4 : rho 36306 * (1 + rho 36305) = rho 36303 + rho 36304 := by
    linear_combination r3548
  have ha5 : rho 36307 * (1 - rho 36305) = rho 36302 - rho 36303 - rho 36304 := by
    linear_combination r3549
  have haddx :
      rho 36306 * (1 + 3021 * (rho 36301 * seg48In1AccX66 rho) * (rho 36300 * seg48In1AccY66 rho)) =
        rho 36301 * seg48In1AccX66 rho + rho 36300 * seg48In1AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36307 * (1 - 3021 * (rho 36301 * seg48In1AccX66 rho) * (rho 36300 * seg48In1AccY66 rho)) =
        (-1) * (rho 36301 * seg48In1AccX66 rho) - rho 36300 * seg48In1AccY66 rho +
          (seg48In1AccY66 rho - seg48In1AccX66 rho * (-1)) * (rho 36300 + rho 36301) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36307 * (1 - rho 36305) = rho 36302 - rho 36303 - rho 36304 := ha5
      _ = (-1) * rho 36303 - rho 36304 + (seg48In1AccY66 rho - seg48In1AccX66 rho * (-1)) *
          (rho 36300 + rho 36301) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX67 rho = seg48In1AccX66 rho - Bool.toZMod bit * (seg48In1AccX66 rho - rho 36306) := by
    have hd : rho 36308 = Bool.toZMod bit * (rho 36306 - seg48In1AccX66 rho) := by
      rw [← hbit]
      unfold seg48In1AccX66
      linear_combination -r3550
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY67 rho = seg48In1AccY66 rho - Bool.toZMod bit * (seg48In1AccY66 rho - rho 36307) := by
    have hd : rho 36309 = Bool.toZMod bit * (rho 36307 - seg48In1AccY66 rho) := by
      rw [← hbit]
      unfold seg48In1AccY66
      linear_combination -r3551
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36300 * rho 36301 = rho 36310 := by linear_combination r3552
  have hd1 : rho 36300 * rho 36300 = rho 36311 := by linear_combination r3553
  have hd2 : rho 36301 * rho 36301 = rho 36312 := by linear_combination r3554
  have hd3 : rho 36313 * (rho 36301 * rho 36301 + rho 36300 * rho 36300 * (-1)) =
      2 * (rho 36300 * rho 36301) := by
    rw [hd0, hd1, hd2]
    linear_combination r3555
  have hd4 : rho 36314 * (2 - (rho 36301 * rho 36301 + rho 36300 * rho 36300 * (-1))) =
      rho 36301 * rho 36301 - rho 36300 * rho 36300 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3556
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX66 rho, seg48In1AccY66 rho⟩ ⟨rho 36300, rho 36301⟩
    ⟨rho 36306, rho 36307⟩ ⟨seg48In1AccX67 rho, seg48In1AccY67 rho⟩ ⟨rho 36313, rho 36314⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3557 rho ∧ Seg48.relationRow3558 rho ∧ Seg48.relationRow3559 rho ∧ Seg48.relationRow3560 rho ∧ Seg48.relationRow3561 rho ∧ Seg48.relationRow3562 rho ∧ Seg48.relationRow3563 rho ∧ Seg48.relationRow3564 rho ∧ Seg48.relationRow3565 rho ∧ Seg48.relationRow3566 rho ∧ Seg48.relationRow3567 rho ∧ Seg48.relationRow3568 rho ∧ Seg48.relationRow3569 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569⟩

theorem seg48In1_rung67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35389 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX67 rho, seg48In1AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36313, rho 36314⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX67 rho, seg48In1AccY67 rho⟩ ⟨rho 36313, rho 36314⟩
        ⟨seg48In1AccX68 rho, seg48In1AccY68 rho⟩ ⟨rho 36326, rho 36327⟩ := by
  obtain ⟨r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569⟩ := seg48In1_rows67 rho h
  unfold Seg48.relationRow3557 at r3557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3557

  unfold Seg48.relationRow3558 at r3558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3558

  unfold Seg48.relationRow3559 at r3559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3559

  unfold Seg48.relationRow3560 at r3560

  unfold Seg48.relationRow3561 at r3561

  unfold Seg48.relationRow3562 at r3562

  unfold Seg48.relationRow3563 at r3563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3563

  unfold Seg48.relationRow3564 at r3564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564

  unfold Seg48.relationRow3565 at r3565

  unfold Seg48.relationRow3566 at r3566

  unfold Seg48.relationRow3567 at r3567

  unfold Seg48.relationRow3568 at r3568

  unfold Seg48.relationRow3569 at r3569

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX68 rho = seg48In1AccX67 rho + rho 36321 := by
    unfold seg48In1AccX68 seg48In1AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 67]

    ring

  have hnexty : seg48In1AccY68 rho = seg48In1AccY67 rho + rho 36322 := by
    unfold seg48In1AccY68 seg48In1AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 67]

    ring

  have ha0 : (rho 36313 + rho 36314) * (seg48In1AccX67 rho + seg48In1AccY67 rho) = rho 36315 := by
    unfold seg48In1AccX67 seg48In1AccY67
    linear_combination r3557
  have ha1 : rho 36314 * seg48In1AccX67 rho = rho 36316 := by
    unfold seg48In1AccX67
    linear_combination r3558
  have ha2 : rho 36313 * seg48In1AccY67 rho = rho 36317 := by
    unfold seg48In1AccY67
    linear_combination r3559
  have ha3 : 3021 * rho 36316 * rho 36317 = rho 36318 := by
    linear_combination r3560
  have ha4 : rho 36319 * (1 + rho 36318) = rho 36316 + rho 36317 := by
    linear_combination r3561
  have ha5 : rho 36320 * (1 - rho 36318) = rho 36315 - rho 36316 - rho 36317 := by
    linear_combination r3562
  have haddx :
      rho 36319 * (1 + 3021 * (rho 36314 * seg48In1AccX67 rho) * (rho 36313 * seg48In1AccY67 rho)) =
        rho 36314 * seg48In1AccX67 rho + rho 36313 * seg48In1AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36320 * (1 - 3021 * (rho 36314 * seg48In1AccX67 rho) * (rho 36313 * seg48In1AccY67 rho)) =
        (-1) * (rho 36314 * seg48In1AccX67 rho) - rho 36313 * seg48In1AccY67 rho +
          (seg48In1AccY67 rho - seg48In1AccX67 rho * (-1)) * (rho 36313 + rho 36314) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36320 * (1 - rho 36318) = rho 36315 - rho 36316 - rho 36317 := ha5
      _ = (-1) * rho 36316 - rho 36317 + (seg48In1AccY67 rho - seg48In1AccX67 rho * (-1)) *
          (rho 36313 + rho 36314) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX68 rho = seg48In1AccX67 rho - Bool.toZMod bit * (seg48In1AccX67 rho - rho 36319) := by
    have hd : rho 36321 = Bool.toZMod bit * (rho 36319 - seg48In1AccX67 rho) := by
      rw [← hbit]
      unfold seg48In1AccX67
      linear_combination -r3563
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY68 rho = seg48In1AccY67 rho - Bool.toZMod bit * (seg48In1AccY67 rho - rho 36320) := by
    have hd : rho 36322 = Bool.toZMod bit * (rho 36320 - seg48In1AccY67 rho) := by
      rw [← hbit]
      unfold seg48In1AccY67
      linear_combination -r3564
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36313 * rho 36314 = rho 36323 := by linear_combination r3565
  have hd1 : rho 36313 * rho 36313 = rho 36324 := by linear_combination r3566
  have hd2 : rho 36314 * rho 36314 = rho 36325 := by linear_combination r3567
  have hd3 : rho 36326 * (rho 36314 * rho 36314 + rho 36313 * rho 36313 * (-1)) =
      2 * (rho 36313 * rho 36314) := by
    rw [hd0, hd1, hd2]
    linear_combination r3568
  have hd4 : rho 36327 * (2 - (rho 36314 * rho 36314 + rho 36313 * rho 36313 * (-1))) =
      rho 36314 * rho 36314 - rho 36313 * rho 36313 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3569
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX67 rho, seg48In1AccY67 rho⟩ ⟨rho 36313, rho 36314⟩
    ⟨rho 36319, rho 36320⟩ ⟨seg48In1AccX68 rho, seg48In1AccY68 rho⟩ ⟨rho 36326, rho 36327⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3570 rho ∧ Seg48.relationRow3571 rho ∧ Seg48.relationRow3572 rho ∧ Seg48.relationRow3573 rho ∧ Seg48.relationRow3574 rho ∧ Seg48.relationRow3575 rho ∧ Seg48.relationRow3576 rho ∧ Seg48.relationRow3577 rho ∧ Seg48.relationRow3578 rho ∧ Seg48.relationRow3579 rho ∧ Seg48.relationRow3580 rho ∧ Seg48.relationRow3581 rho ∧ Seg48.relationRow3582 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582⟩

theorem seg48In1_rung68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35390 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX68 rho, seg48In1AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36326, rho 36327⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX68 rho, seg48In1AccY68 rho⟩ ⟨rho 36326, rho 36327⟩
        ⟨seg48In1AccX69 rho, seg48In1AccY69 rho⟩ ⟨rho 36339, rho 36340⟩ := by
  obtain ⟨r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582⟩ := seg48In1_rows68 rho h
  unfold Seg48.relationRow3570 at r3570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3570

  unfold Seg48.relationRow3571 at r3571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3571

  unfold Seg48.relationRow3572 at r3572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3572

  unfold Seg48.relationRow3573 at r3573

  unfold Seg48.relationRow3574 at r3574

  unfold Seg48.relationRow3575 at r3575

  unfold Seg48.relationRow3576 at r3576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3576

  unfold Seg48.relationRow3577 at r3577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577

  unfold Seg48.relationRow3578 at r3578

  unfold Seg48.relationRow3579 at r3579

  unfold Seg48.relationRow3580 at r3580

  unfold Seg48.relationRow3581 at r3581

  unfold Seg48.relationRow3582 at r3582

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX69 rho = seg48In1AccX68 rho + rho 36334 := by
    unfold seg48In1AccX69 seg48In1AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 68]

    ring

  have hnexty : seg48In1AccY69 rho = seg48In1AccY68 rho + rho 36335 := by
    unfold seg48In1AccY69 seg48In1AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 68]

    ring

  have ha0 : (rho 36326 + rho 36327) * (seg48In1AccX68 rho + seg48In1AccY68 rho) = rho 36328 := by
    unfold seg48In1AccX68 seg48In1AccY68
    linear_combination r3570
  have ha1 : rho 36327 * seg48In1AccX68 rho = rho 36329 := by
    unfold seg48In1AccX68
    linear_combination r3571
  have ha2 : rho 36326 * seg48In1AccY68 rho = rho 36330 := by
    unfold seg48In1AccY68
    linear_combination r3572
  have ha3 : 3021 * rho 36329 * rho 36330 = rho 36331 := by
    linear_combination r3573
  have ha4 : rho 36332 * (1 + rho 36331) = rho 36329 + rho 36330 := by
    linear_combination r3574
  have ha5 : rho 36333 * (1 - rho 36331) = rho 36328 - rho 36329 - rho 36330 := by
    linear_combination r3575
  have haddx :
      rho 36332 * (1 + 3021 * (rho 36327 * seg48In1AccX68 rho) * (rho 36326 * seg48In1AccY68 rho)) =
        rho 36327 * seg48In1AccX68 rho + rho 36326 * seg48In1AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36333 * (1 - 3021 * (rho 36327 * seg48In1AccX68 rho) * (rho 36326 * seg48In1AccY68 rho)) =
        (-1) * (rho 36327 * seg48In1AccX68 rho) - rho 36326 * seg48In1AccY68 rho +
          (seg48In1AccY68 rho - seg48In1AccX68 rho * (-1)) * (rho 36326 + rho 36327) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36333 * (1 - rho 36331) = rho 36328 - rho 36329 - rho 36330 := ha5
      _ = (-1) * rho 36329 - rho 36330 + (seg48In1AccY68 rho - seg48In1AccX68 rho * (-1)) *
          (rho 36326 + rho 36327) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX69 rho = seg48In1AccX68 rho - Bool.toZMod bit * (seg48In1AccX68 rho - rho 36332) := by
    have hd : rho 36334 = Bool.toZMod bit * (rho 36332 - seg48In1AccX68 rho) := by
      rw [← hbit]
      unfold seg48In1AccX68
      linear_combination -r3576
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY69 rho = seg48In1AccY68 rho - Bool.toZMod bit * (seg48In1AccY68 rho - rho 36333) := by
    have hd : rho 36335 = Bool.toZMod bit * (rho 36333 - seg48In1AccY68 rho) := by
      rw [← hbit]
      unfold seg48In1AccY68
      linear_combination -r3577
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36326 * rho 36327 = rho 36336 := by linear_combination r3578
  have hd1 : rho 36326 * rho 36326 = rho 36337 := by linear_combination r3579
  have hd2 : rho 36327 * rho 36327 = rho 36338 := by linear_combination r3580
  have hd3 : rho 36339 * (rho 36327 * rho 36327 + rho 36326 * rho 36326 * (-1)) =
      2 * (rho 36326 * rho 36327) := by
    rw [hd0, hd1, hd2]
    linear_combination r3581
  have hd4 : rho 36340 * (2 - (rho 36327 * rho 36327 + rho 36326 * rho 36326 * (-1))) =
      rho 36327 * rho 36327 - rho 36326 * rho 36326 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3582
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX68 rho, seg48In1AccY68 rho⟩ ⟨rho 36326, rho 36327⟩
    ⟨rho 36332, rho 36333⟩ ⟨seg48In1AccX69 rho, seg48In1AccY69 rho⟩ ⟨rho 36339, rho 36340⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3583 rho ∧ Seg48.relationRow3584 rho ∧ Seg48.relationRow3585 rho ∧ Seg48.relationRow3586 rho ∧ Seg48.relationRow3587 rho ∧ Seg48.relationRow3588 rho ∧ Seg48.relationRow3589 rho ∧ Seg48.relationRow3590 rho ∧ Seg48.relationRow3591 rho ∧ Seg48.relationRow3592 rho ∧ Seg48.relationRow3593 rho ∧ Seg48.relationRow3594 rho ∧ Seg48.relationRow3595 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, _, _, _, _⟩

  exact ⟨r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595⟩

theorem seg48In1_rung69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35391 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX69 rho, seg48In1AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36339, rho 36340⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX69 rho, seg48In1AccY69 rho⟩ ⟨rho 36339, rho 36340⟩
        ⟨seg48In1AccX70 rho, seg48In1AccY70 rho⟩ ⟨rho 36352, rho 36353⟩ := by
  obtain ⟨r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595⟩ := seg48In1_rows69 rho h
  unfold Seg48.relationRow3583 at r3583

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3583

  unfold Seg48.relationRow3584 at r3584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3584

  unfold Seg48.relationRow3585 at r3585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3585

  unfold Seg48.relationRow3586 at r3586

  unfold Seg48.relationRow3587 at r3587

  unfold Seg48.relationRow3588 at r3588

  unfold Seg48.relationRow3589 at r3589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3589

  unfold Seg48.relationRow3590 at r3590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590

  unfold Seg48.relationRow3591 at r3591

  unfold Seg48.relationRow3592 at r3592

  unfold Seg48.relationRow3593 at r3593

  unfold Seg48.relationRow3594 at r3594

  unfold Seg48.relationRow3595 at r3595

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX70 rho = seg48In1AccX69 rho + rho 36347 := by
    unfold seg48In1AccX70 seg48In1AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 69]

    ring

  have hnexty : seg48In1AccY70 rho = seg48In1AccY69 rho + rho 36348 := by
    unfold seg48In1AccY70 seg48In1AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 69]

    ring

  have ha0 : (rho 36339 + rho 36340) * (seg48In1AccX69 rho + seg48In1AccY69 rho) = rho 36341 := by
    unfold seg48In1AccX69 seg48In1AccY69
    linear_combination r3583
  have ha1 : rho 36340 * seg48In1AccX69 rho = rho 36342 := by
    unfold seg48In1AccX69
    linear_combination r3584
  have ha2 : rho 36339 * seg48In1AccY69 rho = rho 36343 := by
    unfold seg48In1AccY69
    linear_combination r3585
  have ha3 : 3021 * rho 36342 * rho 36343 = rho 36344 := by
    linear_combination r3586
  have ha4 : rho 36345 * (1 + rho 36344) = rho 36342 + rho 36343 := by
    linear_combination r3587
  have ha5 : rho 36346 * (1 - rho 36344) = rho 36341 - rho 36342 - rho 36343 := by
    linear_combination r3588
  have haddx :
      rho 36345 * (1 + 3021 * (rho 36340 * seg48In1AccX69 rho) * (rho 36339 * seg48In1AccY69 rho)) =
        rho 36340 * seg48In1AccX69 rho + rho 36339 * seg48In1AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36346 * (1 - 3021 * (rho 36340 * seg48In1AccX69 rho) * (rho 36339 * seg48In1AccY69 rho)) =
        (-1) * (rho 36340 * seg48In1AccX69 rho) - rho 36339 * seg48In1AccY69 rho +
          (seg48In1AccY69 rho - seg48In1AccX69 rho * (-1)) * (rho 36339 + rho 36340) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36346 * (1 - rho 36344) = rho 36341 - rho 36342 - rho 36343 := ha5
      _ = (-1) * rho 36342 - rho 36343 + (seg48In1AccY69 rho - seg48In1AccX69 rho * (-1)) *
          (rho 36339 + rho 36340) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX70 rho = seg48In1AccX69 rho - Bool.toZMod bit * (seg48In1AccX69 rho - rho 36345) := by
    have hd : rho 36347 = Bool.toZMod bit * (rho 36345 - seg48In1AccX69 rho) := by
      rw [← hbit]
      unfold seg48In1AccX69
      linear_combination -r3589
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY70 rho = seg48In1AccY69 rho - Bool.toZMod bit * (seg48In1AccY69 rho - rho 36346) := by
    have hd : rho 36348 = Bool.toZMod bit * (rho 36346 - seg48In1AccY69 rho) := by
      rw [← hbit]
      unfold seg48In1AccY69
      linear_combination -r3590
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36339 * rho 36340 = rho 36349 := by linear_combination r3591
  have hd1 : rho 36339 * rho 36339 = rho 36350 := by linear_combination r3592
  have hd2 : rho 36340 * rho 36340 = rho 36351 := by linear_combination r3593
  have hd3 : rho 36352 * (rho 36340 * rho 36340 + rho 36339 * rho 36339 * (-1)) =
      2 * (rho 36339 * rho 36340) := by
    rw [hd0, hd1, hd2]
    linear_combination r3594
  have hd4 : rho 36353 * (2 - (rho 36340 * rho 36340 + rho 36339 * rho 36339 * (-1))) =
      rho 36340 * rho 36340 - rho 36339 * rho 36339 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3595
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX69 rho, seg48In1AccY69 rho⟩ ⟨rho 36339, rho 36340⟩
    ⟨rho 36345, rho 36346⟩ ⟨seg48In1AccX70 rho, seg48In1AccY70 rho⟩ ⟨rho 36352, rho 36353⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3596 rho ∧ Seg48.relationRow3597 rho ∧ Seg48.relationRow3598 rho ∧ Seg48.relationRow3599 rho ∧ Seg48.relationRow3600 rho ∧ Seg48.relationRow3601 rho ∧ Seg48.relationRow3602 rho ∧ Seg48.relationRow3603 rho ∧ Seg48.relationRow3604 rho ∧ Seg48.relationRow3605 rho ∧ Seg48.relationRow3606 rho ∧ Seg48.relationRow3607 rho ∧ Seg48.relationRow3608 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3596, r3597, r3598, r3599⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3596, r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608⟩

theorem seg48In1_rung70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35392 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX70 rho, seg48In1AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36352, rho 36353⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX70 rho, seg48In1AccY70 rho⟩ ⟨rho 36352, rho 36353⟩
        ⟨seg48In1AccX71 rho, seg48In1AccY71 rho⟩ ⟨rho 36365, rho 36366⟩ := by
  obtain ⟨r3596, r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608⟩ := seg48In1_rows70 rho h
  unfold Seg48.relationRow3596 at r3596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3596

  unfold Seg48.relationRow3597 at r3597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3597

  unfold Seg48.relationRow3598 at r3598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3598

  unfold Seg48.relationRow3599 at r3599

  unfold Seg48.relationRow3600 at r3600

  unfold Seg48.relationRow3601 at r3601

  unfold Seg48.relationRow3602 at r3602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3602

  unfold Seg48.relationRow3603 at r3603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603

  unfold Seg48.relationRow3604 at r3604

  unfold Seg48.relationRow3605 at r3605

  unfold Seg48.relationRow3606 at r3606

  unfold Seg48.relationRow3607 at r3607

  unfold Seg48.relationRow3608 at r3608

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX71 rho = seg48In1AccX70 rho + rho 36360 := by
    unfold seg48In1AccX71 seg48In1AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 70]

    ring

  have hnexty : seg48In1AccY71 rho = seg48In1AccY70 rho + rho 36361 := by
    unfold seg48In1AccY71 seg48In1AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 70]

    ring

  have ha0 : (rho 36352 + rho 36353) * (seg48In1AccX70 rho + seg48In1AccY70 rho) = rho 36354 := by
    unfold seg48In1AccX70 seg48In1AccY70
    linear_combination r3596
  have ha1 : rho 36353 * seg48In1AccX70 rho = rho 36355 := by
    unfold seg48In1AccX70
    linear_combination r3597
  have ha2 : rho 36352 * seg48In1AccY70 rho = rho 36356 := by
    unfold seg48In1AccY70
    linear_combination r3598
  have ha3 : 3021 * rho 36355 * rho 36356 = rho 36357 := by
    linear_combination r3599
  have ha4 : rho 36358 * (1 + rho 36357) = rho 36355 + rho 36356 := by
    linear_combination r3600
  have ha5 : rho 36359 * (1 - rho 36357) = rho 36354 - rho 36355 - rho 36356 := by
    linear_combination r3601
  have haddx :
      rho 36358 * (1 + 3021 * (rho 36353 * seg48In1AccX70 rho) * (rho 36352 * seg48In1AccY70 rho)) =
        rho 36353 * seg48In1AccX70 rho + rho 36352 * seg48In1AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36359 * (1 - 3021 * (rho 36353 * seg48In1AccX70 rho) * (rho 36352 * seg48In1AccY70 rho)) =
        (-1) * (rho 36353 * seg48In1AccX70 rho) - rho 36352 * seg48In1AccY70 rho +
          (seg48In1AccY70 rho - seg48In1AccX70 rho * (-1)) * (rho 36352 + rho 36353) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36359 * (1 - rho 36357) = rho 36354 - rho 36355 - rho 36356 := ha5
      _ = (-1) * rho 36355 - rho 36356 + (seg48In1AccY70 rho - seg48In1AccX70 rho * (-1)) *
          (rho 36352 + rho 36353) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX71 rho = seg48In1AccX70 rho - Bool.toZMod bit * (seg48In1AccX70 rho - rho 36358) := by
    have hd : rho 36360 = Bool.toZMod bit * (rho 36358 - seg48In1AccX70 rho) := by
      rw [← hbit]
      unfold seg48In1AccX70
      linear_combination -r3602
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY71 rho = seg48In1AccY70 rho - Bool.toZMod bit * (seg48In1AccY70 rho - rho 36359) := by
    have hd : rho 36361 = Bool.toZMod bit * (rho 36359 - seg48In1AccY70 rho) := by
      rw [← hbit]
      unfold seg48In1AccY70
      linear_combination -r3603
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36352 * rho 36353 = rho 36362 := by linear_combination r3604
  have hd1 : rho 36352 * rho 36352 = rho 36363 := by linear_combination r3605
  have hd2 : rho 36353 * rho 36353 = rho 36364 := by linear_combination r3606
  have hd3 : rho 36365 * (rho 36353 * rho 36353 + rho 36352 * rho 36352 * (-1)) =
      2 * (rho 36352 * rho 36353) := by
    rw [hd0, hd1, hd2]
    linear_combination r3607
  have hd4 : rho 36366 * (2 - (rho 36353 * rho 36353 + rho 36352 * rho 36352 * (-1))) =
      rho 36353 * rho 36353 - rho 36352 * rho 36352 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3608
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX70 rho, seg48In1AccY70 rho⟩ ⟨rho 36352, rho 36353⟩
    ⟨rho 36358, rho 36359⟩ ⟨seg48In1AccX71 rho, seg48In1AccY71 rho⟩ ⟨rho 36365, rho 36366⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3609 rho ∧ Seg48.relationRow3610 rho ∧ Seg48.relationRow3611 rho ∧ Seg48.relationRow3612 rho ∧ Seg48.relationRow3613 rho ∧ Seg48.relationRow3614 rho ∧ Seg48.relationRow3615 rho ∧ Seg48.relationRow3616 rho ∧ Seg48.relationRow3617 rho ∧ Seg48.relationRow3618 rho ∧ Seg48.relationRow3619 rho ∧ Seg48.relationRow3620 rho ∧ Seg48.relationRow3621 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621⟩

theorem seg48In1_rung71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35393 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX71 rho, seg48In1AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36365, rho 36366⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX71 rho, seg48In1AccY71 rho⟩ ⟨rho 36365, rho 36366⟩
        ⟨seg48In1AccX72 rho, seg48In1AccY72 rho⟩ ⟨rho 36378, rho 36379⟩ := by
  obtain ⟨r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621⟩ := seg48In1_rows71 rho h
  unfold Seg48.relationRow3609 at r3609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3609

  unfold Seg48.relationRow3610 at r3610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3610

  unfold Seg48.relationRow3611 at r3611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3611

  unfold Seg48.relationRow3612 at r3612

  unfold Seg48.relationRow3613 at r3613

  unfold Seg48.relationRow3614 at r3614

  unfold Seg48.relationRow3615 at r3615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3615

  unfold Seg48.relationRow3616 at r3616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616

  unfold Seg48.relationRow3617 at r3617

  unfold Seg48.relationRow3618 at r3618

  unfold Seg48.relationRow3619 at r3619

  unfold Seg48.relationRow3620 at r3620

  unfold Seg48.relationRow3621 at r3621

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX72 rho = seg48In1AccX71 rho + rho 36373 := by
    unfold seg48In1AccX72 seg48In1AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 71]

    ring

  have hnexty : seg48In1AccY72 rho = seg48In1AccY71 rho + rho 36374 := by
    unfold seg48In1AccY72 seg48In1AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 71]

    ring

  have ha0 : (rho 36365 + rho 36366) * (seg48In1AccX71 rho + seg48In1AccY71 rho) = rho 36367 := by
    unfold seg48In1AccX71 seg48In1AccY71
    linear_combination r3609
  have ha1 : rho 36366 * seg48In1AccX71 rho = rho 36368 := by
    unfold seg48In1AccX71
    linear_combination r3610
  have ha2 : rho 36365 * seg48In1AccY71 rho = rho 36369 := by
    unfold seg48In1AccY71
    linear_combination r3611
  have ha3 : 3021 * rho 36368 * rho 36369 = rho 36370 := by
    linear_combination r3612
  have ha4 : rho 36371 * (1 + rho 36370) = rho 36368 + rho 36369 := by
    linear_combination r3613
  have ha5 : rho 36372 * (1 - rho 36370) = rho 36367 - rho 36368 - rho 36369 := by
    linear_combination r3614
  have haddx :
      rho 36371 * (1 + 3021 * (rho 36366 * seg48In1AccX71 rho) * (rho 36365 * seg48In1AccY71 rho)) =
        rho 36366 * seg48In1AccX71 rho + rho 36365 * seg48In1AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36372 * (1 - 3021 * (rho 36366 * seg48In1AccX71 rho) * (rho 36365 * seg48In1AccY71 rho)) =
        (-1) * (rho 36366 * seg48In1AccX71 rho) - rho 36365 * seg48In1AccY71 rho +
          (seg48In1AccY71 rho - seg48In1AccX71 rho * (-1)) * (rho 36365 + rho 36366) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36372 * (1 - rho 36370) = rho 36367 - rho 36368 - rho 36369 := ha5
      _ = (-1) * rho 36368 - rho 36369 + (seg48In1AccY71 rho - seg48In1AccX71 rho * (-1)) *
          (rho 36365 + rho 36366) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX72 rho = seg48In1AccX71 rho - Bool.toZMod bit * (seg48In1AccX71 rho - rho 36371) := by
    have hd : rho 36373 = Bool.toZMod bit * (rho 36371 - seg48In1AccX71 rho) := by
      rw [← hbit]
      unfold seg48In1AccX71
      linear_combination -r3615
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY72 rho = seg48In1AccY71 rho - Bool.toZMod bit * (seg48In1AccY71 rho - rho 36372) := by
    have hd : rho 36374 = Bool.toZMod bit * (rho 36372 - seg48In1AccY71 rho) := by
      rw [← hbit]
      unfold seg48In1AccY71
      linear_combination -r3616
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36365 * rho 36366 = rho 36375 := by linear_combination r3617
  have hd1 : rho 36365 * rho 36365 = rho 36376 := by linear_combination r3618
  have hd2 : rho 36366 * rho 36366 = rho 36377 := by linear_combination r3619
  have hd3 : rho 36378 * (rho 36366 * rho 36366 + rho 36365 * rho 36365 * (-1)) =
      2 * (rho 36365 * rho 36366) := by
    rw [hd0, hd1, hd2]
    linear_combination r3620
  have hd4 : rho 36379 * (2 - (rho 36366 * rho 36366 + rho 36365 * rho 36365 * (-1))) =
      rho 36366 * rho 36366 - rho 36365 * rho 36365 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3621
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX71 rho, seg48In1AccY71 rho⟩ ⟨rho 36365, rho 36366⟩
    ⟨rho 36371, rho 36372⟩ ⟨seg48In1AccX72 rho, seg48In1AccY72 rho⟩ ⟨rho 36378, rho 36379⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3622 rho ∧ Seg48.relationRow3623 rho ∧ Seg48.relationRow3624 rho ∧ Seg48.relationRow3625 rho ∧ Seg48.relationRow3626 rho ∧ Seg48.relationRow3627 rho ∧ Seg48.relationRow3628 rho ∧ Seg48.relationRow3629 rho ∧ Seg48.relationRow3630 rho ∧ Seg48.relationRow3631 rho ∧ Seg48.relationRow3632 rho ∧ Seg48.relationRow3633 rho ∧ Seg48.relationRow3634 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634⟩

theorem seg48In1_rung72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35394 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX72 rho, seg48In1AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36378, rho 36379⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX72 rho, seg48In1AccY72 rho⟩ ⟨rho 36378, rho 36379⟩
        ⟨seg48In1AccX73 rho, seg48In1AccY73 rho⟩ ⟨rho 36391, rho 36392⟩ := by
  obtain ⟨r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634⟩ := seg48In1_rows72 rho h
  unfold Seg48.relationRow3622 at r3622

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3622

  unfold Seg48.relationRow3623 at r3623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3623

  unfold Seg48.relationRow3624 at r3624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3624

  unfold Seg48.relationRow3625 at r3625

  unfold Seg48.relationRow3626 at r3626

  unfold Seg48.relationRow3627 at r3627

  unfold Seg48.relationRow3628 at r3628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3628

  unfold Seg48.relationRow3629 at r3629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629

  unfold Seg48.relationRow3630 at r3630

  unfold Seg48.relationRow3631 at r3631

  unfold Seg48.relationRow3632 at r3632

  unfold Seg48.relationRow3633 at r3633

  unfold Seg48.relationRow3634 at r3634

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX73 rho = seg48In1AccX72 rho + rho 36386 := by
    unfold seg48In1AccX73 seg48In1AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 72]

    ring

  have hnexty : seg48In1AccY73 rho = seg48In1AccY72 rho + rho 36387 := by
    unfold seg48In1AccY73 seg48In1AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 72]

    ring

  have ha0 : (rho 36378 + rho 36379) * (seg48In1AccX72 rho + seg48In1AccY72 rho) = rho 36380 := by
    unfold seg48In1AccX72 seg48In1AccY72
    linear_combination r3622
  have ha1 : rho 36379 * seg48In1AccX72 rho = rho 36381 := by
    unfold seg48In1AccX72
    linear_combination r3623
  have ha2 : rho 36378 * seg48In1AccY72 rho = rho 36382 := by
    unfold seg48In1AccY72
    linear_combination r3624
  have ha3 : 3021 * rho 36381 * rho 36382 = rho 36383 := by
    linear_combination r3625
  have ha4 : rho 36384 * (1 + rho 36383) = rho 36381 + rho 36382 := by
    linear_combination r3626
  have ha5 : rho 36385 * (1 - rho 36383) = rho 36380 - rho 36381 - rho 36382 := by
    linear_combination r3627
  have haddx :
      rho 36384 * (1 + 3021 * (rho 36379 * seg48In1AccX72 rho) * (rho 36378 * seg48In1AccY72 rho)) =
        rho 36379 * seg48In1AccX72 rho + rho 36378 * seg48In1AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36385 * (1 - 3021 * (rho 36379 * seg48In1AccX72 rho) * (rho 36378 * seg48In1AccY72 rho)) =
        (-1) * (rho 36379 * seg48In1AccX72 rho) - rho 36378 * seg48In1AccY72 rho +
          (seg48In1AccY72 rho - seg48In1AccX72 rho * (-1)) * (rho 36378 + rho 36379) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36385 * (1 - rho 36383) = rho 36380 - rho 36381 - rho 36382 := ha5
      _ = (-1) * rho 36381 - rho 36382 + (seg48In1AccY72 rho - seg48In1AccX72 rho * (-1)) *
          (rho 36378 + rho 36379) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX73 rho = seg48In1AccX72 rho - Bool.toZMod bit * (seg48In1AccX72 rho - rho 36384) := by
    have hd : rho 36386 = Bool.toZMod bit * (rho 36384 - seg48In1AccX72 rho) := by
      rw [← hbit]
      unfold seg48In1AccX72
      linear_combination -r3628
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY73 rho = seg48In1AccY72 rho - Bool.toZMod bit * (seg48In1AccY72 rho - rho 36385) := by
    have hd : rho 36387 = Bool.toZMod bit * (rho 36385 - seg48In1AccY72 rho) := by
      rw [← hbit]
      unfold seg48In1AccY72
      linear_combination -r3629
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36378 * rho 36379 = rho 36388 := by linear_combination r3630
  have hd1 : rho 36378 * rho 36378 = rho 36389 := by linear_combination r3631
  have hd2 : rho 36379 * rho 36379 = rho 36390 := by linear_combination r3632
  have hd3 : rho 36391 * (rho 36379 * rho 36379 + rho 36378 * rho 36378 * (-1)) =
      2 * (rho 36378 * rho 36379) := by
    rw [hd0, hd1, hd2]
    linear_combination r3633
  have hd4 : rho 36392 * (2 - (rho 36379 * rho 36379 + rho 36378 * rho 36378 * (-1))) =
      rho 36379 * rho 36379 - rho 36378 * rho 36378 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3634
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX72 rho, seg48In1AccY72 rho⟩ ⟨rho 36378, rho 36379⟩
    ⟨rho 36384, rho 36385⟩ ⟨seg48In1AccX73 rho, seg48In1AccY73 rho⟩ ⟨rho 36391, rho 36392⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3635 rho ∧ Seg48.relationRow3636 rho ∧ Seg48.relationRow3637 rho ∧ Seg48.relationRow3638 rho ∧ Seg48.relationRow3639 rho ∧ Seg48.relationRow3640 rho ∧ Seg48.relationRow3641 rho ∧ Seg48.relationRow3642 rho ∧ Seg48.relationRow3643 rho ∧ Seg48.relationRow3644 rho ∧ Seg48.relationRow3645 rho ∧ Seg48.relationRow3646 rho ∧ Seg48.relationRow3647 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647⟩

theorem seg48In1_rung73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35395 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX73 rho, seg48In1AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36391, rho 36392⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX73 rho, seg48In1AccY73 rho⟩ ⟨rho 36391, rho 36392⟩
        ⟨seg48In1AccX74 rho, seg48In1AccY74 rho⟩ ⟨rho 36404, rho 36405⟩ := by
  obtain ⟨r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647⟩ := seg48In1_rows73 rho h
  unfold Seg48.relationRow3635 at r3635

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3635

  unfold Seg48.relationRow3636 at r3636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3636

  unfold Seg48.relationRow3637 at r3637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3637

  unfold Seg48.relationRow3638 at r3638

  unfold Seg48.relationRow3639 at r3639

  unfold Seg48.relationRow3640 at r3640

  unfold Seg48.relationRow3641 at r3641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3641

  unfold Seg48.relationRow3642 at r3642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642

  unfold Seg48.relationRow3643 at r3643

  unfold Seg48.relationRow3644 at r3644

  unfold Seg48.relationRow3645 at r3645

  unfold Seg48.relationRow3646 at r3646

  unfold Seg48.relationRow3647 at r3647

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX74 rho = seg48In1AccX73 rho + rho 36399 := by
    unfold seg48In1AccX74 seg48In1AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 73]

    ring

  have hnexty : seg48In1AccY74 rho = seg48In1AccY73 rho + rho 36400 := by
    unfold seg48In1AccY74 seg48In1AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 73]

    ring

  have ha0 : (rho 36391 + rho 36392) * (seg48In1AccX73 rho + seg48In1AccY73 rho) = rho 36393 := by
    unfold seg48In1AccX73 seg48In1AccY73
    linear_combination r3635
  have ha1 : rho 36392 * seg48In1AccX73 rho = rho 36394 := by
    unfold seg48In1AccX73
    linear_combination r3636
  have ha2 : rho 36391 * seg48In1AccY73 rho = rho 36395 := by
    unfold seg48In1AccY73
    linear_combination r3637
  have ha3 : 3021 * rho 36394 * rho 36395 = rho 36396 := by
    linear_combination r3638
  have ha4 : rho 36397 * (1 + rho 36396) = rho 36394 + rho 36395 := by
    linear_combination r3639
  have ha5 : rho 36398 * (1 - rho 36396) = rho 36393 - rho 36394 - rho 36395 := by
    linear_combination r3640
  have haddx :
      rho 36397 * (1 + 3021 * (rho 36392 * seg48In1AccX73 rho) * (rho 36391 * seg48In1AccY73 rho)) =
        rho 36392 * seg48In1AccX73 rho + rho 36391 * seg48In1AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36398 * (1 - 3021 * (rho 36392 * seg48In1AccX73 rho) * (rho 36391 * seg48In1AccY73 rho)) =
        (-1) * (rho 36392 * seg48In1AccX73 rho) - rho 36391 * seg48In1AccY73 rho +
          (seg48In1AccY73 rho - seg48In1AccX73 rho * (-1)) * (rho 36391 + rho 36392) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36398 * (1 - rho 36396) = rho 36393 - rho 36394 - rho 36395 := ha5
      _ = (-1) * rho 36394 - rho 36395 + (seg48In1AccY73 rho - seg48In1AccX73 rho * (-1)) *
          (rho 36391 + rho 36392) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX74 rho = seg48In1AccX73 rho - Bool.toZMod bit * (seg48In1AccX73 rho - rho 36397) := by
    have hd : rho 36399 = Bool.toZMod bit * (rho 36397 - seg48In1AccX73 rho) := by
      rw [← hbit]
      unfold seg48In1AccX73
      linear_combination -r3641
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY74 rho = seg48In1AccY73 rho - Bool.toZMod bit * (seg48In1AccY73 rho - rho 36398) := by
    have hd : rho 36400 = Bool.toZMod bit * (rho 36398 - seg48In1AccY73 rho) := by
      rw [← hbit]
      unfold seg48In1AccY73
      linear_combination -r3642
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36391 * rho 36392 = rho 36401 := by linear_combination r3643
  have hd1 : rho 36391 * rho 36391 = rho 36402 := by linear_combination r3644
  have hd2 : rho 36392 * rho 36392 = rho 36403 := by linear_combination r3645
  have hd3 : rho 36404 * (rho 36392 * rho 36392 + rho 36391 * rho 36391 * (-1)) =
      2 * (rho 36391 * rho 36392) := by
    rw [hd0, hd1, hd2]
    linear_combination r3646
  have hd4 : rho 36405 * (2 - (rho 36392 * rho 36392 + rho 36391 * rho 36391 * (-1))) =
      rho 36392 * rho 36392 - rho 36391 * rho 36391 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3647
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX73 rho, seg48In1AccY73 rho⟩ ⟨rho 36391, rho 36392⟩
    ⟨rho 36397, rho 36398⟩ ⟨seg48In1AccX74 rho, seg48In1AccY74 rho⟩ ⟨rho 36404, rho 36405⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3648 rho ∧ Seg48.relationRow3649 rho ∧ Seg48.relationRow3650 rho ∧ Seg48.relationRow3651 rho ∧ Seg48.relationRow3652 rho ∧ Seg48.relationRow3653 rho ∧ Seg48.relationRow3654 rho ∧ Seg48.relationRow3655 rho ∧ Seg48.relationRow3656 rho ∧ Seg48.relationRow3657 rho ∧ Seg48.relationRow3658 rho ∧ Seg48.relationRow3659 rho ∧ Seg48.relationRow3660 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660⟩

theorem seg48In1_rung74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35396 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX74 rho, seg48In1AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36404, rho 36405⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX74 rho, seg48In1AccY74 rho⟩ ⟨rho 36404, rho 36405⟩
        ⟨seg48In1AccX75 rho, seg48In1AccY75 rho⟩ ⟨rho 36417, rho 36418⟩ := by
  obtain ⟨r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660⟩ := seg48In1_rows74 rho h
  unfold Seg48.relationRow3648 at r3648

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3648

  unfold Seg48.relationRow3649 at r3649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3649

  unfold Seg48.relationRow3650 at r3650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3650

  unfold Seg48.relationRow3651 at r3651

  unfold Seg48.relationRow3652 at r3652

  unfold Seg48.relationRow3653 at r3653

  unfold Seg48.relationRow3654 at r3654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3654

  unfold Seg48.relationRow3655 at r3655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655

  unfold Seg48.relationRow3656 at r3656

  unfold Seg48.relationRow3657 at r3657

  unfold Seg48.relationRow3658 at r3658

  unfold Seg48.relationRow3659 at r3659

  unfold Seg48.relationRow3660 at r3660

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX75 rho = seg48In1AccX74 rho + rho 36412 := by
    unfold seg48In1AccX75 seg48In1AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 74]

    ring

  have hnexty : seg48In1AccY75 rho = seg48In1AccY74 rho + rho 36413 := by
    unfold seg48In1AccY75 seg48In1AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 74]

    ring

  have ha0 : (rho 36404 + rho 36405) * (seg48In1AccX74 rho + seg48In1AccY74 rho) = rho 36406 := by
    unfold seg48In1AccX74 seg48In1AccY74
    linear_combination r3648
  have ha1 : rho 36405 * seg48In1AccX74 rho = rho 36407 := by
    unfold seg48In1AccX74
    linear_combination r3649
  have ha2 : rho 36404 * seg48In1AccY74 rho = rho 36408 := by
    unfold seg48In1AccY74
    linear_combination r3650
  have ha3 : 3021 * rho 36407 * rho 36408 = rho 36409 := by
    linear_combination r3651
  have ha4 : rho 36410 * (1 + rho 36409) = rho 36407 + rho 36408 := by
    linear_combination r3652
  have ha5 : rho 36411 * (1 - rho 36409) = rho 36406 - rho 36407 - rho 36408 := by
    linear_combination r3653
  have haddx :
      rho 36410 * (1 + 3021 * (rho 36405 * seg48In1AccX74 rho) * (rho 36404 * seg48In1AccY74 rho)) =
        rho 36405 * seg48In1AccX74 rho + rho 36404 * seg48In1AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36411 * (1 - 3021 * (rho 36405 * seg48In1AccX74 rho) * (rho 36404 * seg48In1AccY74 rho)) =
        (-1) * (rho 36405 * seg48In1AccX74 rho) - rho 36404 * seg48In1AccY74 rho +
          (seg48In1AccY74 rho - seg48In1AccX74 rho * (-1)) * (rho 36404 + rho 36405) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36411 * (1 - rho 36409) = rho 36406 - rho 36407 - rho 36408 := ha5
      _ = (-1) * rho 36407 - rho 36408 + (seg48In1AccY74 rho - seg48In1AccX74 rho * (-1)) *
          (rho 36404 + rho 36405) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX75 rho = seg48In1AccX74 rho - Bool.toZMod bit * (seg48In1AccX74 rho - rho 36410) := by
    have hd : rho 36412 = Bool.toZMod bit * (rho 36410 - seg48In1AccX74 rho) := by
      rw [← hbit]
      unfold seg48In1AccX74
      linear_combination -r3654
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY75 rho = seg48In1AccY74 rho - Bool.toZMod bit * (seg48In1AccY74 rho - rho 36411) := by
    have hd : rho 36413 = Bool.toZMod bit * (rho 36411 - seg48In1AccY74 rho) := by
      rw [← hbit]
      unfold seg48In1AccY74
      linear_combination -r3655
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36404 * rho 36405 = rho 36414 := by linear_combination r3656
  have hd1 : rho 36404 * rho 36404 = rho 36415 := by linear_combination r3657
  have hd2 : rho 36405 * rho 36405 = rho 36416 := by linear_combination r3658
  have hd3 : rho 36417 * (rho 36405 * rho 36405 + rho 36404 * rho 36404 * (-1)) =
      2 * (rho 36404 * rho 36405) := by
    rw [hd0, hd1, hd2]
    linear_combination r3659
  have hd4 : rho 36418 * (2 - (rho 36405 * rho 36405 + rho 36404 * rho 36404 * (-1))) =
      rho 36405 * rho 36405 - rho 36404 * rho 36404 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3660
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX74 rho, seg48In1AccY74 rho⟩ ⟨rho 36404, rho 36405⟩
    ⟨rho 36410, rho 36411⟩ ⟨seg48In1AccX75 rho, seg48In1AccY75 rho⟩ ⟨rho 36417, rho 36418⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3661 rho ∧ Seg48.relationRow3662 rho ∧ Seg48.relationRow3663 rho ∧ Seg48.relationRow3664 rho ∧ Seg48.relationRow3665 rho ∧ Seg48.relationRow3666 rho ∧ Seg48.relationRow3667 rho ∧ Seg48.relationRow3668 rho ∧ Seg48.relationRow3669 rho ∧ Seg48.relationRow3670 rho ∧ Seg48.relationRow3671 rho ∧ Seg48.relationRow3672 rho ∧ Seg48.relationRow3673 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, _, _, _, _, _, _⟩

  exact ⟨r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673⟩

theorem seg48In1_rung75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35397 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX75 rho, seg48In1AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36417, rho 36418⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX75 rho, seg48In1AccY75 rho⟩ ⟨rho 36417, rho 36418⟩
        ⟨seg48In1AccX76 rho, seg48In1AccY76 rho⟩ ⟨rho 36430, rho 36431⟩ := by
  obtain ⟨r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673⟩ := seg48In1_rows75 rho h
  unfold Seg48.relationRow3661 at r3661

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3661

  unfold Seg48.relationRow3662 at r3662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3662

  unfold Seg48.relationRow3663 at r3663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3663

  unfold Seg48.relationRow3664 at r3664

  unfold Seg48.relationRow3665 at r3665

  unfold Seg48.relationRow3666 at r3666

  unfold Seg48.relationRow3667 at r3667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3667

  unfold Seg48.relationRow3668 at r3668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668

  unfold Seg48.relationRow3669 at r3669

  unfold Seg48.relationRow3670 at r3670

  unfold Seg48.relationRow3671 at r3671

  unfold Seg48.relationRow3672 at r3672

  unfold Seg48.relationRow3673 at r3673

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX76 rho = seg48In1AccX75 rho + rho 36425 := by
    unfold seg48In1AccX76 seg48In1AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 75]

    ring

  have hnexty : seg48In1AccY76 rho = seg48In1AccY75 rho + rho 36426 := by
    unfold seg48In1AccY76 seg48In1AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 75]

    ring

  have ha0 : (rho 36417 + rho 36418) * (seg48In1AccX75 rho + seg48In1AccY75 rho) = rho 36419 := by
    unfold seg48In1AccX75 seg48In1AccY75
    linear_combination r3661
  have ha1 : rho 36418 * seg48In1AccX75 rho = rho 36420 := by
    unfold seg48In1AccX75
    linear_combination r3662
  have ha2 : rho 36417 * seg48In1AccY75 rho = rho 36421 := by
    unfold seg48In1AccY75
    linear_combination r3663
  have ha3 : 3021 * rho 36420 * rho 36421 = rho 36422 := by
    linear_combination r3664
  have ha4 : rho 36423 * (1 + rho 36422) = rho 36420 + rho 36421 := by
    linear_combination r3665
  have ha5 : rho 36424 * (1 - rho 36422) = rho 36419 - rho 36420 - rho 36421 := by
    linear_combination r3666
  have haddx :
      rho 36423 * (1 + 3021 * (rho 36418 * seg48In1AccX75 rho) * (rho 36417 * seg48In1AccY75 rho)) =
        rho 36418 * seg48In1AccX75 rho + rho 36417 * seg48In1AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36424 * (1 - 3021 * (rho 36418 * seg48In1AccX75 rho) * (rho 36417 * seg48In1AccY75 rho)) =
        (-1) * (rho 36418 * seg48In1AccX75 rho) - rho 36417 * seg48In1AccY75 rho +
          (seg48In1AccY75 rho - seg48In1AccX75 rho * (-1)) * (rho 36417 + rho 36418) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36424 * (1 - rho 36422) = rho 36419 - rho 36420 - rho 36421 := ha5
      _ = (-1) * rho 36420 - rho 36421 + (seg48In1AccY75 rho - seg48In1AccX75 rho * (-1)) *
          (rho 36417 + rho 36418) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX76 rho = seg48In1AccX75 rho - Bool.toZMod bit * (seg48In1AccX75 rho - rho 36423) := by
    have hd : rho 36425 = Bool.toZMod bit * (rho 36423 - seg48In1AccX75 rho) := by
      rw [← hbit]
      unfold seg48In1AccX75
      linear_combination -r3667
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY76 rho = seg48In1AccY75 rho - Bool.toZMod bit * (seg48In1AccY75 rho - rho 36424) := by
    have hd : rho 36426 = Bool.toZMod bit * (rho 36424 - seg48In1AccY75 rho) := by
      rw [← hbit]
      unfold seg48In1AccY75
      linear_combination -r3668
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36417 * rho 36418 = rho 36427 := by linear_combination r3669
  have hd1 : rho 36417 * rho 36417 = rho 36428 := by linear_combination r3670
  have hd2 : rho 36418 * rho 36418 = rho 36429 := by linear_combination r3671
  have hd3 : rho 36430 * (rho 36418 * rho 36418 + rho 36417 * rho 36417 * (-1)) =
      2 * (rho 36417 * rho 36418) := by
    rw [hd0, hd1, hd2]
    linear_combination r3672
  have hd4 : rho 36431 * (2 - (rho 36418 * rho 36418 + rho 36417 * rho 36417 * (-1))) =
      rho 36418 * rho 36418 - rho 36417 * rho 36417 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3673
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX75 rho, seg48In1AccY75 rho⟩ ⟨rho 36417, rho 36418⟩
    ⟨rho 36423, rho 36424⟩ ⟨seg48In1AccX76 rho, seg48In1AccY76 rho⟩ ⟨rho 36430, rho 36431⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3674 rho ∧ Seg48.relationRow3675 rho ∧ Seg48.relationRow3676 rho ∧ Seg48.relationRow3677 rho ∧ Seg48.relationRow3678 rho ∧ Seg48.relationRow3679 rho ∧ Seg48.relationRow3680 rho ∧ Seg48.relationRow3681 rho ∧ Seg48.relationRow3682 rho ∧ Seg48.relationRow3683 rho ∧ Seg48.relationRow3684 rho ∧ Seg48.relationRow3685 rho ∧ Seg48.relationRow3686 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3674, r3675, r3676, r3677, r3678, r3679⟩

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3674, r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686⟩

theorem seg48In1_rung76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35398 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX76 rho, seg48In1AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36430, rho 36431⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX76 rho, seg48In1AccY76 rho⟩ ⟨rho 36430, rho 36431⟩
        ⟨seg48In1AccX77 rho, seg48In1AccY77 rho⟩ ⟨rho 36443, rho 36444⟩ := by
  obtain ⟨r3674, r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686⟩ := seg48In1_rows76 rho h
  unfold Seg48.relationRow3674 at r3674

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3674

  unfold Seg48.relationRow3675 at r3675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3675

  unfold Seg48.relationRow3676 at r3676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3676

  unfold Seg48.relationRow3677 at r3677

  unfold Seg48.relationRow3678 at r3678

  unfold Seg48.relationRow3679 at r3679

  unfold Seg48.relationRow3680 at r3680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3680

  unfold Seg48.relationRow3681 at r3681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681

  unfold Seg48.relationRow3682 at r3682

  unfold Seg48.relationRow3683 at r3683

  unfold Seg48.relationRow3684 at r3684

  unfold Seg48.relationRow3685 at r3685

  unfold Seg48.relationRow3686 at r3686

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX77 rho = seg48In1AccX76 rho + rho 36438 := by
    unfold seg48In1AccX77 seg48In1AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 76]

    ring

  have hnexty : seg48In1AccY77 rho = seg48In1AccY76 rho + rho 36439 := by
    unfold seg48In1AccY77 seg48In1AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 76]

    ring

  have ha0 : (rho 36430 + rho 36431) * (seg48In1AccX76 rho + seg48In1AccY76 rho) = rho 36432 := by
    unfold seg48In1AccX76 seg48In1AccY76
    linear_combination r3674
  have ha1 : rho 36431 * seg48In1AccX76 rho = rho 36433 := by
    unfold seg48In1AccX76
    linear_combination r3675
  have ha2 : rho 36430 * seg48In1AccY76 rho = rho 36434 := by
    unfold seg48In1AccY76
    linear_combination r3676
  have ha3 : 3021 * rho 36433 * rho 36434 = rho 36435 := by
    linear_combination r3677
  have ha4 : rho 36436 * (1 + rho 36435) = rho 36433 + rho 36434 := by
    linear_combination r3678
  have ha5 : rho 36437 * (1 - rho 36435) = rho 36432 - rho 36433 - rho 36434 := by
    linear_combination r3679
  have haddx :
      rho 36436 * (1 + 3021 * (rho 36431 * seg48In1AccX76 rho) * (rho 36430 * seg48In1AccY76 rho)) =
        rho 36431 * seg48In1AccX76 rho + rho 36430 * seg48In1AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36437 * (1 - 3021 * (rho 36431 * seg48In1AccX76 rho) * (rho 36430 * seg48In1AccY76 rho)) =
        (-1) * (rho 36431 * seg48In1AccX76 rho) - rho 36430 * seg48In1AccY76 rho +
          (seg48In1AccY76 rho - seg48In1AccX76 rho * (-1)) * (rho 36430 + rho 36431) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36437 * (1 - rho 36435) = rho 36432 - rho 36433 - rho 36434 := ha5
      _ = (-1) * rho 36433 - rho 36434 + (seg48In1AccY76 rho - seg48In1AccX76 rho * (-1)) *
          (rho 36430 + rho 36431) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX77 rho = seg48In1AccX76 rho - Bool.toZMod bit * (seg48In1AccX76 rho - rho 36436) := by
    have hd : rho 36438 = Bool.toZMod bit * (rho 36436 - seg48In1AccX76 rho) := by
      rw [← hbit]
      unfold seg48In1AccX76
      linear_combination -r3680
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY77 rho = seg48In1AccY76 rho - Bool.toZMod bit * (seg48In1AccY76 rho - rho 36437) := by
    have hd : rho 36439 = Bool.toZMod bit * (rho 36437 - seg48In1AccY76 rho) := by
      rw [← hbit]
      unfold seg48In1AccY76
      linear_combination -r3681
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36430 * rho 36431 = rho 36440 := by linear_combination r3682
  have hd1 : rho 36430 * rho 36430 = rho 36441 := by linear_combination r3683
  have hd2 : rho 36431 * rho 36431 = rho 36442 := by linear_combination r3684
  have hd3 : rho 36443 * (rho 36431 * rho 36431 + rho 36430 * rho 36430 * (-1)) =
      2 * (rho 36430 * rho 36431) := by
    rw [hd0, hd1, hd2]
    linear_combination r3685
  have hd4 : rho 36444 * (2 - (rho 36431 * rho 36431 + rho 36430 * rho 36430 * (-1))) =
      rho 36431 * rho 36431 - rho 36430 * rho 36430 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3686
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX76 rho, seg48In1AccY76 rho⟩ ⟨rho 36430, rho 36431⟩
    ⟨rho 36436, rho 36437⟩ ⟨seg48In1AccX77 rho, seg48In1AccY77 rho⟩ ⟨rho 36443, rho 36444⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c6 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg48In1_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg48In1_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg48In1_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg48In1_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg48In1_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg48In1_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg48In1_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg48In1_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg48In1_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg48In1_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
