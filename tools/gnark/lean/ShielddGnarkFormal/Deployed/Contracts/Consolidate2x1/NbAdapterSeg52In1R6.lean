import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3544 rho ∧ Seg52.relationRow3545 rho ∧ Seg52.relationRow3546 rho ∧ Seg52.relationRow3547 rho ∧ Seg52.relationRow3548 rho ∧ Seg52.relationRow3549 rho ∧ Seg52.relationRow3550 rho ∧ Seg52.relationRow3551 rho ∧ Seg52.relationRow3552 rho ∧ Seg52.relationRow3553 rho ∧ Seg52.relationRow3554 rho ∧ Seg52.relationRow3555 rho ∧ Seg52.relationRow3556 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556⟩

theorem seg52In1_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47020 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47932, rho 47933⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 47932, rho 47933⟩
        ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 47945, rho 47946⟩ := by
  obtain ⟨r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556⟩ := seg52In1_rows66 rho h
  unfold Seg52.relationRow3544 at r3544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3544

  unfold Seg52.relationRow3545 at r3545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3545

  unfold Seg52.relationRow3546 at r3546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3546

  unfold Seg52.relationRow3547 at r3547

  unfold Seg52.relationRow3548 at r3548

  unfold Seg52.relationRow3549 at r3549

  unfold Seg52.relationRow3550 at r3550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3550

  unfold Seg52.relationRow3551 at r3551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551

  unfold Seg52.relationRow3552 at r3552

  unfold Seg52.relationRow3553 at r3553

  unfold Seg52.relationRow3554 at r3554

  unfold Seg52.relationRow3555 at r3555

  unfold Seg52.relationRow3556 at r3556

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX67 rho = seg52In1AccX66 rho + rho 47940 := by
    unfold seg52In1AccX67 seg52In1AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 66]

    ring

  have hnexty : seg52In1AccY67 rho = seg52In1AccY66 rho + rho 47941 := by
    unfold seg52In1AccY67 seg52In1AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 66]

    ring

  have ha0 : (rho 47932 + rho 47933) * (seg52In1AccX66 rho + seg52In1AccY66 rho) = rho 47934 := by
    unfold seg52In1AccX66 seg52In1AccY66
    linear_combination r3544
  have ha1 : rho 47933 * seg52In1AccX66 rho = rho 47935 := by
    unfold seg52In1AccX66
    linear_combination r3545
  have ha2 : rho 47932 * seg52In1AccY66 rho = rho 47936 := by
    unfold seg52In1AccY66
    linear_combination r3546
  have ha3 : 3021 * rho 47935 * rho 47936 = rho 47937 := by
    linear_combination r3547
  have ha4 : rho 47938 * (1 + rho 47937) = rho 47935 + rho 47936 := by
    linear_combination r3548
  have ha5 : rho 47939 * (1 - rho 47937) = rho 47934 - rho 47935 - rho 47936 := by
    linear_combination r3549
  have haddx :
      rho 47938 * (1 + 3021 * (rho 47933 * seg52In1AccX66 rho) * (rho 47932 * seg52In1AccY66 rho)) =
        rho 47933 * seg52In1AccX66 rho + rho 47932 * seg52In1AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47939 * (1 - 3021 * (rho 47933 * seg52In1AccX66 rho) * (rho 47932 * seg52In1AccY66 rho)) =
        (-1) * (rho 47933 * seg52In1AccX66 rho) - rho 47932 * seg52In1AccY66 rho +
          (seg52In1AccY66 rho - seg52In1AccX66 rho * (-1)) * (rho 47932 + rho 47933) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47939 * (1 - rho 47937) = rho 47934 - rho 47935 - rho 47936 := ha5
      _ = (-1) * rho 47935 - rho 47936 + (seg52In1AccY66 rho - seg52In1AccX66 rho * (-1)) *
          (rho 47932 + rho 47933) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX67 rho = seg52In1AccX66 rho - Bool.toZMod bit * (seg52In1AccX66 rho - rho 47938) := by
    have hd : rho 47940 = Bool.toZMod bit * (rho 47938 - seg52In1AccX66 rho) := by
      rw [← hbit]
      unfold seg52In1AccX66
      linear_combination -r3550
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY67 rho = seg52In1AccY66 rho - Bool.toZMod bit * (seg52In1AccY66 rho - rho 47939) := by
    have hd : rho 47941 = Bool.toZMod bit * (rho 47939 - seg52In1AccY66 rho) := by
      rw [← hbit]
      unfold seg52In1AccY66
      linear_combination -r3551
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47932 * rho 47933 = rho 47942 := by linear_combination r3552
  have hd1 : rho 47932 * rho 47932 = rho 47943 := by linear_combination r3553
  have hd2 : rho 47933 * rho 47933 = rho 47944 := by linear_combination r3554
  have hd3 : rho 47945 * (rho 47933 * rho 47933 + rho 47932 * rho 47932 * (-1)) =
      2 * (rho 47932 * rho 47933) := by
    rw [hd0, hd1, hd2]
    linear_combination r3555
  have hd4 : rho 47946 * (2 - (rho 47933 * rho 47933 + rho 47932 * rho 47932 * (-1))) =
      rho 47933 * rho 47933 - rho 47932 * rho 47932 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3556
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 47932, rho 47933⟩
    ⟨rho 47938, rho 47939⟩ ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 47945, rho 47946⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3557 rho ∧ Seg52.relationRow3558 rho ∧ Seg52.relationRow3559 rho ∧ Seg52.relationRow3560 rho ∧ Seg52.relationRow3561 rho ∧ Seg52.relationRow3562 rho ∧ Seg52.relationRow3563 rho ∧ Seg52.relationRow3564 rho ∧ Seg52.relationRow3565 rho ∧ Seg52.relationRow3566 rho ∧ Seg52.relationRow3567 rho ∧ Seg52.relationRow3568 rho ∧ Seg52.relationRow3569 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569⟩

theorem seg52In1_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47021 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47945, rho 47946⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 47945, rho 47946⟩
        ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 47958, rho 47959⟩ := by
  obtain ⟨r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569⟩ := seg52In1_rows67 rho h
  unfold Seg52.relationRow3557 at r3557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3557

  unfold Seg52.relationRow3558 at r3558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3558

  unfold Seg52.relationRow3559 at r3559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3559

  unfold Seg52.relationRow3560 at r3560

  unfold Seg52.relationRow3561 at r3561

  unfold Seg52.relationRow3562 at r3562

  unfold Seg52.relationRow3563 at r3563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3563

  unfold Seg52.relationRow3564 at r3564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564

  unfold Seg52.relationRow3565 at r3565

  unfold Seg52.relationRow3566 at r3566

  unfold Seg52.relationRow3567 at r3567

  unfold Seg52.relationRow3568 at r3568

  unfold Seg52.relationRow3569 at r3569

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX68 rho = seg52In1AccX67 rho + rho 47953 := by
    unfold seg52In1AccX68 seg52In1AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 67]

    ring

  have hnexty : seg52In1AccY68 rho = seg52In1AccY67 rho + rho 47954 := by
    unfold seg52In1AccY68 seg52In1AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 67]

    ring

  have ha0 : (rho 47945 + rho 47946) * (seg52In1AccX67 rho + seg52In1AccY67 rho) = rho 47947 := by
    unfold seg52In1AccX67 seg52In1AccY67
    linear_combination r3557
  have ha1 : rho 47946 * seg52In1AccX67 rho = rho 47948 := by
    unfold seg52In1AccX67
    linear_combination r3558
  have ha2 : rho 47945 * seg52In1AccY67 rho = rho 47949 := by
    unfold seg52In1AccY67
    linear_combination r3559
  have ha3 : 3021 * rho 47948 * rho 47949 = rho 47950 := by
    linear_combination r3560
  have ha4 : rho 47951 * (1 + rho 47950) = rho 47948 + rho 47949 := by
    linear_combination r3561
  have ha5 : rho 47952 * (1 - rho 47950) = rho 47947 - rho 47948 - rho 47949 := by
    linear_combination r3562
  have haddx :
      rho 47951 * (1 + 3021 * (rho 47946 * seg52In1AccX67 rho) * (rho 47945 * seg52In1AccY67 rho)) =
        rho 47946 * seg52In1AccX67 rho + rho 47945 * seg52In1AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47952 * (1 - 3021 * (rho 47946 * seg52In1AccX67 rho) * (rho 47945 * seg52In1AccY67 rho)) =
        (-1) * (rho 47946 * seg52In1AccX67 rho) - rho 47945 * seg52In1AccY67 rho +
          (seg52In1AccY67 rho - seg52In1AccX67 rho * (-1)) * (rho 47945 + rho 47946) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47952 * (1 - rho 47950) = rho 47947 - rho 47948 - rho 47949 := ha5
      _ = (-1) * rho 47948 - rho 47949 + (seg52In1AccY67 rho - seg52In1AccX67 rho * (-1)) *
          (rho 47945 + rho 47946) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX68 rho = seg52In1AccX67 rho - Bool.toZMod bit * (seg52In1AccX67 rho - rho 47951) := by
    have hd : rho 47953 = Bool.toZMod bit * (rho 47951 - seg52In1AccX67 rho) := by
      rw [← hbit]
      unfold seg52In1AccX67
      linear_combination -r3563
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY68 rho = seg52In1AccY67 rho - Bool.toZMod bit * (seg52In1AccY67 rho - rho 47952) := by
    have hd : rho 47954 = Bool.toZMod bit * (rho 47952 - seg52In1AccY67 rho) := by
      rw [← hbit]
      unfold seg52In1AccY67
      linear_combination -r3564
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47945 * rho 47946 = rho 47955 := by linear_combination r3565
  have hd1 : rho 47945 * rho 47945 = rho 47956 := by linear_combination r3566
  have hd2 : rho 47946 * rho 47946 = rho 47957 := by linear_combination r3567
  have hd3 : rho 47958 * (rho 47946 * rho 47946 + rho 47945 * rho 47945 * (-1)) =
      2 * (rho 47945 * rho 47946) := by
    rw [hd0, hd1, hd2]
    linear_combination r3568
  have hd4 : rho 47959 * (2 - (rho 47946 * rho 47946 + rho 47945 * rho 47945 * (-1))) =
      rho 47946 * rho 47946 - rho 47945 * rho 47945 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3569
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 47945, rho 47946⟩
    ⟨rho 47951, rho 47952⟩ ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 47958, rho 47959⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3570 rho ∧ Seg52.relationRow3571 rho ∧ Seg52.relationRow3572 rho ∧ Seg52.relationRow3573 rho ∧ Seg52.relationRow3574 rho ∧ Seg52.relationRow3575 rho ∧ Seg52.relationRow3576 rho ∧ Seg52.relationRow3577 rho ∧ Seg52.relationRow3578 rho ∧ Seg52.relationRow3579 rho ∧ Seg52.relationRow3580 rho ∧ Seg52.relationRow3581 rho ∧ Seg52.relationRow3582 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582⟩

theorem seg52In1_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47958, rho 47959⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 47958, rho 47959⟩
        ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 47971, rho 47972⟩ := by
  obtain ⟨r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582⟩ := seg52In1_rows68 rho h
  unfold Seg52.relationRow3570 at r3570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3570

  unfold Seg52.relationRow3571 at r3571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3571

  unfold Seg52.relationRow3572 at r3572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3572

  unfold Seg52.relationRow3573 at r3573

  unfold Seg52.relationRow3574 at r3574

  unfold Seg52.relationRow3575 at r3575

  unfold Seg52.relationRow3576 at r3576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3576

  unfold Seg52.relationRow3577 at r3577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577

  unfold Seg52.relationRow3578 at r3578

  unfold Seg52.relationRow3579 at r3579

  unfold Seg52.relationRow3580 at r3580

  unfold Seg52.relationRow3581 at r3581

  unfold Seg52.relationRow3582 at r3582

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX69 rho = seg52In1AccX68 rho + rho 47966 := by
    unfold seg52In1AccX69 seg52In1AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 68]

    ring

  have hnexty : seg52In1AccY69 rho = seg52In1AccY68 rho + rho 47967 := by
    unfold seg52In1AccY69 seg52In1AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 68]

    ring

  have ha0 : (rho 47958 + rho 47959) * (seg52In1AccX68 rho + seg52In1AccY68 rho) = rho 47960 := by
    unfold seg52In1AccX68 seg52In1AccY68
    linear_combination r3570
  have ha1 : rho 47959 * seg52In1AccX68 rho = rho 47961 := by
    unfold seg52In1AccX68
    linear_combination r3571
  have ha2 : rho 47958 * seg52In1AccY68 rho = rho 47962 := by
    unfold seg52In1AccY68
    linear_combination r3572
  have ha3 : 3021 * rho 47961 * rho 47962 = rho 47963 := by
    linear_combination r3573
  have ha4 : rho 47964 * (1 + rho 47963) = rho 47961 + rho 47962 := by
    linear_combination r3574
  have ha5 : rho 47965 * (1 - rho 47963) = rho 47960 - rho 47961 - rho 47962 := by
    linear_combination r3575
  have haddx :
      rho 47964 * (1 + 3021 * (rho 47959 * seg52In1AccX68 rho) * (rho 47958 * seg52In1AccY68 rho)) =
        rho 47959 * seg52In1AccX68 rho + rho 47958 * seg52In1AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47965 * (1 - 3021 * (rho 47959 * seg52In1AccX68 rho) * (rho 47958 * seg52In1AccY68 rho)) =
        (-1) * (rho 47959 * seg52In1AccX68 rho) - rho 47958 * seg52In1AccY68 rho +
          (seg52In1AccY68 rho - seg52In1AccX68 rho * (-1)) * (rho 47958 + rho 47959) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47965 * (1 - rho 47963) = rho 47960 - rho 47961 - rho 47962 := ha5
      _ = (-1) * rho 47961 - rho 47962 + (seg52In1AccY68 rho - seg52In1AccX68 rho * (-1)) *
          (rho 47958 + rho 47959) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX69 rho = seg52In1AccX68 rho - Bool.toZMod bit * (seg52In1AccX68 rho - rho 47964) := by
    have hd : rho 47966 = Bool.toZMod bit * (rho 47964 - seg52In1AccX68 rho) := by
      rw [← hbit]
      unfold seg52In1AccX68
      linear_combination -r3576
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY69 rho = seg52In1AccY68 rho - Bool.toZMod bit * (seg52In1AccY68 rho - rho 47965) := by
    have hd : rho 47967 = Bool.toZMod bit * (rho 47965 - seg52In1AccY68 rho) := by
      rw [← hbit]
      unfold seg52In1AccY68
      linear_combination -r3577
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47958 * rho 47959 = rho 47968 := by linear_combination r3578
  have hd1 : rho 47958 * rho 47958 = rho 47969 := by linear_combination r3579
  have hd2 : rho 47959 * rho 47959 = rho 47970 := by linear_combination r3580
  have hd3 : rho 47971 * (rho 47959 * rho 47959 + rho 47958 * rho 47958 * (-1)) =
      2 * (rho 47958 * rho 47959) := by
    rw [hd0, hd1, hd2]
    linear_combination r3581
  have hd4 : rho 47972 * (2 - (rho 47959 * rho 47959 + rho 47958 * rho 47958 * (-1))) =
      rho 47959 * rho 47959 - rho 47958 * rho 47958 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3582
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 47958, rho 47959⟩
    ⟨rho 47964, rho 47965⟩ ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 47971, rho 47972⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3583 rho ∧ Seg52.relationRow3584 rho ∧ Seg52.relationRow3585 rho ∧ Seg52.relationRow3586 rho ∧ Seg52.relationRow3587 rho ∧ Seg52.relationRow3588 rho ∧ Seg52.relationRow3589 rho ∧ Seg52.relationRow3590 rho ∧ Seg52.relationRow3591 rho ∧ Seg52.relationRow3592 rho ∧ Seg52.relationRow3593 rho ∧ Seg52.relationRow3594 rho ∧ Seg52.relationRow3595 rho := by
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

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, _, _, _, _⟩

  exact ⟨r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595⟩

theorem seg52In1_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47971, rho 47972⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 47971, rho 47972⟩
        ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 47984, rho 47985⟩ := by
  obtain ⟨r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595⟩ := seg52In1_rows69 rho h
  unfold Seg52.relationRow3583 at r3583

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3583

  unfold Seg52.relationRow3584 at r3584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3584

  unfold Seg52.relationRow3585 at r3585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3585

  unfold Seg52.relationRow3586 at r3586

  unfold Seg52.relationRow3587 at r3587

  unfold Seg52.relationRow3588 at r3588

  unfold Seg52.relationRow3589 at r3589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3589

  unfold Seg52.relationRow3590 at r3590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590

  unfold Seg52.relationRow3591 at r3591

  unfold Seg52.relationRow3592 at r3592

  unfold Seg52.relationRow3593 at r3593

  unfold Seg52.relationRow3594 at r3594

  unfold Seg52.relationRow3595 at r3595

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX70 rho = seg52In1AccX69 rho + rho 47979 := by
    unfold seg52In1AccX70 seg52In1AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 69]

    ring

  have hnexty : seg52In1AccY70 rho = seg52In1AccY69 rho + rho 47980 := by
    unfold seg52In1AccY70 seg52In1AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 69]

    ring

  have ha0 : (rho 47971 + rho 47972) * (seg52In1AccX69 rho + seg52In1AccY69 rho) = rho 47973 := by
    unfold seg52In1AccX69 seg52In1AccY69
    linear_combination r3583
  have ha1 : rho 47972 * seg52In1AccX69 rho = rho 47974 := by
    unfold seg52In1AccX69
    linear_combination r3584
  have ha2 : rho 47971 * seg52In1AccY69 rho = rho 47975 := by
    unfold seg52In1AccY69
    linear_combination r3585
  have ha3 : 3021 * rho 47974 * rho 47975 = rho 47976 := by
    linear_combination r3586
  have ha4 : rho 47977 * (1 + rho 47976) = rho 47974 + rho 47975 := by
    linear_combination r3587
  have ha5 : rho 47978 * (1 - rho 47976) = rho 47973 - rho 47974 - rho 47975 := by
    linear_combination r3588
  have haddx :
      rho 47977 * (1 + 3021 * (rho 47972 * seg52In1AccX69 rho) * (rho 47971 * seg52In1AccY69 rho)) =
        rho 47972 * seg52In1AccX69 rho + rho 47971 * seg52In1AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47978 * (1 - 3021 * (rho 47972 * seg52In1AccX69 rho) * (rho 47971 * seg52In1AccY69 rho)) =
        (-1) * (rho 47972 * seg52In1AccX69 rho) - rho 47971 * seg52In1AccY69 rho +
          (seg52In1AccY69 rho - seg52In1AccX69 rho * (-1)) * (rho 47971 + rho 47972) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47978 * (1 - rho 47976) = rho 47973 - rho 47974 - rho 47975 := ha5
      _ = (-1) * rho 47974 - rho 47975 + (seg52In1AccY69 rho - seg52In1AccX69 rho * (-1)) *
          (rho 47971 + rho 47972) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX70 rho = seg52In1AccX69 rho - Bool.toZMod bit * (seg52In1AccX69 rho - rho 47977) := by
    have hd : rho 47979 = Bool.toZMod bit * (rho 47977 - seg52In1AccX69 rho) := by
      rw [← hbit]
      unfold seg52In1AccX69
      linear_combination -r3589
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY70 rho = seg52In1AccY69 rho - Bool.toZMod bit * (seg52In1AccY69 rho - rho 47978) := by
    have hd : rho 47980 = Bool.toZMod bit * (rho 47978 - seg52In1AccY69 rho) := by
      rw [← hbit]
      unfold seg52In1AccY69
      linear_combination -r3590
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47971 * rho 47972 = rho 47981 := by linear_combination r3591
  have hd1 : rho 47971 * rho 47971 = rho 47982 := by linear_combination r3592
  have hd2 : rho 47972 * rho 47972 = rho 47983 := by linear_combination r3593
  have hd3 : rho 47984 * (rho 47972 * rho 47972 + rho 47971 * rho 47971 * (-1)) =
      2 * (rho 47971 * rho 47972) := by
    rw [hd0, hd1, hd2]
    linear_combination r3594
  have hd4 : rho 47985 * (2 - (rho 47972 * rho 47972 + rho 47971 * rho 47971 * (-1))) =
      rho 47972 * rho 47972 - rho 47971 * rho 47971 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3595
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 47971, rho 47972⟩
    ⟨rho 47977, rho 47978⟩ ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 47984, rho 47985⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3596 rho ∧ Seg52.relationRow3597 rho ∧ Seg52.relationRow3598 rho ∧ Seg52.relationRow3599 rho ∧ Seg52.relationRow3600 rho ∧ Seg52.relationRow3601 rho ∧ Seg52.relationRow3602 rho ∧ Seg52.relationRow3603 rho ∧ Seg52.relationRow3604 rho ∧ Seg52.relationRow3605 rho ∧ Seg52.relationRow3606 rho ∧ Seg52.relationRow3607 rho ∧ Seg52.relationRow3608 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3596, r3597, r3598, r3599⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3596, r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608⟩

theorem seg52In1_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47984, rho 47985⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 47984, rho 47985⟩
        ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 47997, rho 47998⟩ := by
  obtain ⟨r3596, r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608⟩ := seg52In1_rows70 rho h
  unfold Seg52.relationRow3596 at r3596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3596

  unfold Seg52.relationRow3597 at r3597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3597

  unfold Seg52.relationRow3598 at r3598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3598

  unfold Seg52.relationRow3599 at r3599

  unfold Seg52.relationRow3600 at r3600

  unfold Seg52.relationRow3601 at r3601

  unfold Seg52.relationRow3602 at r3602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3602

  unfold Seg52.relationRow3603 at r3603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603

  unfold Seg52.relationRow3604 at r3604

  unfold Seg52.relationRow3605 at r3605

  unfold Seg52.relationRow3606 at r3606

  unfold Seg52.relationRow3607 at r3607

  unfold Seg52.relationRow3608 at r3608

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX71 rho = seg52In1AccX70 rho + rho 47992 := by
    unfold seg52In1AccX71 seg52In1AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 70]

    ring

  have hnexty : seg52In1AccY71 rho = seg52In1AccY70 rho + rho 47993 := by
    unfold seg52In1AccY71 seg52In1AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 70]

    ring

  have ha0 : (rho 47984 + rho 47985) * (seg52In1AccX70 rho + seg52In1AccY70 rho) = rho 47986 := by
    unfold seg52In1AccX70 seg52In1AccY70
    linear_combination r3596
  have ha1 : rho 47985 * seg52In1AccX70 rho = rho 47987 := by
    unfold seg52In1AccX70
    linear_combination r3597
  have ha2 : rho 47984 * seg52In1AccY70 rho = rho 47988 := by
    unfold seg52In1AccY70
    linear_combination r3598
  have ha3 : 3021 * rho 47987 * rho 47988 = rho 47989 := by
    linear_combination r3599
  have ha4 : rho 47990 * (1 + rho 47989) = rho 47987 + rho 47988 := by
    linear_combination r3600
  have ha5 : rho 47991 * (1 - rho 47989) = rho 47986 - rho 47987 - rho 47988 := by
    linear_combination r3601
  have haddx :
      rho 47990 * (1 + 3021 * (rho 47985 * seg52In1AccX70 rho) * (rho 47984 * seg52In1AccY70 rho)) =
        rho 47985 * seg52In1AccX70 rho + rho 47984 * seg52In1AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47991 * (1 - 3021 * (rho 47985 * seg52In1AccX70 rho) * (rho 47984 * seg52In1AccY70 rho)) =
        (-1) * (rho 47985 * seg52In1AccX70 rho) - rho 47984 * seg52In1AccY70 rho +
          (seg52In1AccY70 rho - seg52In1AccX70 rho * (-1)) * (rho 47984 + rho 47985) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47991 * (1 - rho 47989) = rho 47986 - rho 47987 - rho 47988 := ha5
      _ = (-1) * rho 47987 - rho 47988 + (seg52In1AccY70 rho - seg52In1AccX70 rho * (-1)) *
          (rho 47984 + rho 47985) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX71 rho = seg52In1AccX70 rho - Bool.toZMod bit * (seg52In1AccX70 rho - rho 47990) := by
    have hd : rho 47992 = Bool.toZMod bit * (rho 47990 - seg52In1AccX70 rho) := by
      rw [← hbit]
      unfold seg52In1AccX70
      linear_combination -r3602
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY71 rho = seg52In1AccY70 rho - Bool.toZMod bit * (seg52In1AccY70 rho - rho 47991) := by
    have hd : rho 47993 = Bool.toZMod bit * (rho 47991 - seg52In1AccY70 rho) := by
      rw [← hbit]
      unfold seg52In1AccY70
      linear_combination -r3603
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47984 * rho 47985 = rho 47994 := by linear_combination r3604
  have hd1 : rho 47984 * rho 47984 = rho 47995 := by linear_combination r3605
  have hd2 : rho 47985 * rho 47985 = rho 47996 := by linear_combination r3606
  have hd3 : rho 47997 * (rho 47985 * rho 47985 + rho 47984 * rho 47984 * (-1)) =
      2 * (rho 47984 * rho 47985) := by
    rw [hd0, hd1, hd2]
    linear_combination r3607
  have hd4 : rho 47998 * (2 - (rho 47985 * rho 47985 + rho 47984 * rho 47984 * (-1))) =
      rho 47985 * rho 47985 - rho 47984 * rho 47984 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3608
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 47984, rho 47985⟩
    ⟨rho 47990, rho 47991⟩ ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 47997, rho 47998⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3609 rho ∧ Seg52.relationRow3610 rho ∧ Seg52.relationRow3611 rho ∧ Seg52.relationRow3612 rho ∧ Seg52.relationRow3613 rho ∧ Seg52.relationRow3614 rho ∧ Seg52.relationRow3615 rho ∧ Seg52.relationRow3616 rho ∧ Seg52.relationRow3617 rho ∧ Seg52.relationRow3618 rho ∧ Seg52.relationRow3619 rho ∧ Seg52.relationRow3620 rho ∧ Seg52.relationRow3621 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621⟩

theorem seg52In1_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47997, rho 47998⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 47997, rho 47998⟩
        ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48010, rho 48011⟩ := by
  obtain ⟨r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621⟩ := seg52In1_rows71 rho h
  unfold Seg52.relationRow3609 at r3609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3609

  unfold Seg52.relationRow3610 at r3610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3610

  unfold Seg52.relationRow3611 at r3611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3611

  unfold Seg52.relationRow3612 at r3612

  unfold Seg52.relationRow3613 at r3613

  unfold Seg52.relationRow3614 at r3614

  unfold Seg52.relationRow3615 at r3615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3615

  unfold Seg52.relationRow3616 at r3616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616

  unfold Seg52.relationRow3617 at r3617

  unfold Seg52.relationRow3618 at r3618

  unfold Seg52.relationRow3619 at r3619

  unfold Seg52.relationRow3620 at r3620

  unfold Seg52.relationRow3621 at r3621

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX72 rho = seg52In1AccX71 rho + rho 48005 := by
    unfold seg52In1AccX72 seg52In1AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 71]

    ring

  have hnexty : seg52In1AccY72 rho = seg52In1AccY71 rho + rho 48006 := by
    unfold seg52In1AccY72 seg52In1AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 71]

    ring

  have ha0 : (rho 47997 + rho 47998) * (seg52In1AccX71 rho + seg52In1AccY71 rho) = rho 47999 := by
    unfold seg52In1AccX71 seg52In1AccY71
    linear_combination r3609
  have ha1 : rho 47998 * seg52In1AccX71 rho = rho 48000 := by
    unfold seg52In1AccX71
    linear_combination r3610
  have ha2 : rho 47997 * seg52In1AccY71 rho = rho 48001 := by
    unfold seg52In1AccY71
    linear_combination r3611
  have ha3 : 3021 * rho 48000 * rho 48001 = rho 48002 := by
    linear_combination r3612
  have ha4 : rho 48003 * (1 + rho 48002) = rho 48000 + rho 48001 := by
    linear_combination r3613
  have ha5 : rho 48004 * (1 - rho 48002) = rho 47999 - rho 48000 - rho 48001 := by
    linear_combination r3614
  have haddx :
      rho 48003 * (1 + 3021 * (rho 47998 * seg52In1AccX71 rho) * (rho 47997 * seg52In1AccY71 rho)) =
        rho 47998 * seg52In1AccX71 rho + rho 47997 * seg52In1AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48004 * (1 - 3021 * (rho 47998 * seg52In1AccX71 rho) * (rho 47997 * seg52In1AccY71 rho)) =
        (-1) * (rho 47998 * seg52In1AccX71 rho) - rho 47997 * seg52In1AccY71 rho +
          (seg52In1AccY71 rho - seg52In1AccX71 rho * (-1)) * (rho 47997 + rho 47998) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48004 * (1 - rho 48002) = rho 47999 - rho 48000 - rho 48001 := ha5
      _ = (-1) * rho 48000 - rho 48001 + (seg52In1AccY71 rho - seg52In1AccX71 rho * (-1)) *
          (rho 47997 + rho 47998) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX72 rho = seg52In1AccX71 rho - Bool.toZMod bit * (seg52In1AccX71 rho - rho 48003) := by
    have hd : rho 48005 = Bool.toZMod bit * (rho 48003 - seg52In1AccX71 rho) := by
      rw [← hbit]
      unfold seg52In1AccX71
      linear_combination -r3615
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY72 rho = seg52In1AccY71 rho - Bool.toZMod bit * (seg52In1AccY71 rho - rho 48004) := by
    have hd : rho 48006 = Bool.toZMod bit * (rho 48004 - seg52In1AccY71 rho) := by
      rw [← hbit]
      unfold seg52In1AccY71
      linear_combination -r3616
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47997 * rho 47998 = rho 48007 := by linear_combination r3617
  have hd1 : rho 47997 * rho 47997 = rho 48008 := by linear_combination r3618
  have hd2 : rho 47998 * rho 47998 = rho 48009 := by linear_combination r3619
  have hd3 : rho 48010 * (rho 47998 * rho 47998 + rho 47997 * rho 47997 * (-1)) =
      2 * (rho 47997 * rho 47998) := by
    rw [hd0, hd1, hd2]
    linear_combination r3620
  have hd4 : rho 48011 * (2 - (rho 47998 * rho 47998 + rho 47997 * rho 47997 * (-1))) =
      rho 47998 * rho 47998 - rho 47997 * rho 47997 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3621
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 47997, rho 47998⟩
    ⟨rho 48003, rho 48004⟩ ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48010, rho 48011⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3622 rho ∧ Seg52.relationRow3623 rho ∧ Seg52.relationRow3624 rho ∧ Seg52.relationRow3625 rho ∧ Seg52.relationRow3626 rho ∧ Seg52.relationRow3627 rho ∧ Seg52.relationRow3628 rho ∧ Seg52.relationRow3629 rho ∧ Seg52.relationRow3630 rho ∧ Seg52.relationRow3631 rho ∧ Seg52.relationRow3632 rho ∧ Seg52.relationRow3633 rho ∧ Seg52.relationRow3634 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634⟩

theorem seg52In1_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48010, rho 48011⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48010, rho 48011⟩
        ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48023, rho 48024⟩ := by
  obtain ⟨r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634⟩ := seg52In1_rows72 rho h
  unfold Seg52.relationRow3622 at r3622

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3622

  unfold Seg52.relationRow3623 at r3623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3623

  unfold Seg52.relationRow3624 at r3624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3624

  unfold Seg52.relationRow3625 at r3625

  unfold Seg52.relationRow3626 at r3626

  unfold Seg52.relationRow3627 at r3627

  unfold Seg52.relationRow3628 at r3628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3628

  unfold Seg52.relationRow3629 at r3629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629

  unfold Seg52.relationRow3630 at r3630

  unfold Seg52.relationRow3631 at r3631

  unfold Seg52.relationRow3632 at r3632

  unfold Seg52.relationRow3633 at r3633

  unfold Seg52.relationRow3634 at r3634

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX73 rho = seg52In1AccX72 rho + rho 48018 := by
    unfold seg52In1AccX73 seg52In1AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 72]

    ring

  have hnexty : seg52In1AccY73 rho = seg52In1AccY72 rho + rho 48019 := by
    unfold seg52In1AccY73 seg52In1AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 72]

    ring

  have ha0 : (rho 48010 + rho 48011) * (seg52In1AccX72 rho + seg52In1AccY72 rho) = rho 48012 := by
    unfold seg52In1AccX72 seg52In1AccY72
    linear_combination r3622
  have ha1 : rho 48011 * seg52In1AccX72 rho = rho 48013 := by
    unfold seg52In1AccX72
    linear_combination r3623
  have ha2 : rho 48010 * seg52In1AccY72 rho = rho 48014 := by
    unfold seg52In1AccY72
    linear_combination r3624
  have ha3 : 3021 * rho 48013 * rho 48014 = rho 48015 := by
    linear_combination r3625
  have ha4 : rho 48016 * (1 + rho 48015) = rho 48013 + rho 48014 := by
    linear_combination r3626
  have ha5 : rho 48017 * (1 - rho 48015) = rho 48012 - rho 48013 - rho 48014 := by
    linear_combination r3627
  have haddx :
      rho 48016 * (1 + 3021 * (rho 48011 * seg52In1AccX72 rho) * (rho 48010 * seg52In1AccY72 rho)) =
        rho 48011 * seg52In1AccX72 rho + rho 48010 * seg52In1AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48017 * (1 - 3021 * (rho 48011 * seg52In1AccX72 rho) * (rho 48010 * seg52In1AccY72 rho)) =
        (-1) * (rho 48011 * seg52In1AccX72 rho) - rho 48010 * seg52In1AccY72 rho +
          (seg52In1AccY72 rho - seg52In1AccX72 rho * (-1)) * (rho 48010 + rho 48011) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48017 * (1 - rho 48015) = rho 48012 - rho 48013 - rho 48014 := ha5
      _ = (-1) * rho 48013 - rho 48014 + (seg52In1AccY72 rho - seg52In1AccX72 rho * (-1)) *
          (rho 48010 + rho 48011) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX73 rho = seg52In1AccX72 rho - Bool.toZMod bit * (seg52In1AccX72 rho - rho 48016) := by
    have hd : rho 48018 = Bool.toZMod bit * (rho 48016 - seg52In1AccX72 rho) := by
      rw [← hbit]
      unfold seg52In1AccX72
      linear_combination -r3628
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY73 rho = seg52In1AccY72 rho - Bool.toZMod bit * (seg52In1AccY72 rho - rho 48017) := by
    have hd : rho 48019 = Bool.toZMod bit * (rho 48017 - seg52In1AccY72 rho) := by
      rw [← hbit]
      unfold seg52In1AccY72
      linear_combination -r3629
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48010 * rho 48011 = rho 48020 := by linear_combination r3630
  have hd1 : rho 48010 * rho 48010 = rho 48021 := by linear_combination r3631
  have hd2 : rho 48011 * rho 48011 = rho 48022 := by linear_combination r3632
  have hd3 : rho 48023 * (rho 48011 * rho 48011 + rho 48010 * rho 48010 * (-1)) =
      2 * (rho 48010 * rho 48011) := by
    rw [hd0, hd1, hd2]
    linear_combination r3633
  have hd4 : rho 48024 * (2 - (rho 48011 * rho 48011 + rho 48010 * rho 48010 * (-1))) =
      rho 48011 * rho 48011 - rho 48010 * rho 48010 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3634
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48010, rho 48011⟩
    ⟨rho 48016, rho 48017⟩ ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48023, rho 48024⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3635 rho ∧ Seg52.relationRow3636 rho ∧ Seg52.relationRow3637 rho ∧ Seg52.relationRow3638 rho ∧ Seg52.relationRow3639 rho ∧ Seg52.relationRow3640 rho ∧ Seg52.relationRow3641 rho ∧ Seg52.relationRow3642 rho ∧ Seg52.relationRow3643 rho ∧ Seg52.relationRow3644 rho ∧ Seg52.relationRow3645 rho ∧ Seg52.relationRow3646 rho ∧ Seg52.relationRow3647 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647⟩

theorem seg52In1_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48023, rho 48024⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48023, rho 48024⟩
        ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48036, rho 48037⟩ := by
  obtain ⟨r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647⟩ := seg52In1_rows73 rho h
  unfold Seg52.relationRow3635 at r3635

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3635

  unfold Seg52.relationRow3636 at r3636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3636

  unfold Seg52.relationRow3637 at r3637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3637

  unfold Seg52.relationRow3638 at r3638

  unfold Seg52.relationRow3639 at r3639

  unfold Seg52.relationRow3640 at r3640

  unfold Seg52.relationRow3641 at r3641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3641

  unfold Seg52.relationRow3642 at r3642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642

  unfold Seg52.relationRow3643 at r3643

  unfold Seg52.relationRow3644 at r3644

  unfold Seg52.relationRow3645 at r3645

  unfold Seg52.relationRow3646 at r3646

  unfold Seg52.relationRow3647 at r3647

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX74 rho = seg52In1AccX73 rho + rho 48031 := by
    unfold seg52In1AccX74 seg52In1AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 73]

    ring

  have hnexty : seg52In1AccY74 rho = seg52In1AccY73 rho + rho 48032 := by
    unfold seg52In1AccY74 seg52In1AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 73]

    ring

  have ha0 : (rho 48023 + rho 48024) * (seg52In1AccX73 rho + seg52In1AccY73 rho) = rho 48025 := by
    unfold seg52In1AccX73 seg52In1AccY73
    linear_combination r3635
  have ha1 : rho 48024 * seg52In1AccX73 rho = rho 48026 := by
    unfold seg52In1AccX73
    linear_combination r3636
  have ha2 : rho 48023 * seg52In1AccY73 rho = rho 48027 := by
    unfold seg52In1AccY73
    linear_combination r3637
  have ha3 : 3021 * rho 48026 * rho 48027 = rho 48028 := by
    linear_combination r3638
  have ha4 : rho 48029 * (1 + rho 48028) = rho 48026 + rho 48027 := by
    linear_combination r3639
  have ha5 : rho 48030 * (1 - rho 48028) = rho 48025 - rho 48026 - rho 48027 := by
    linear_combination r3640
  have haddx :
      rho 48029 * (1 + 3021 * (rho 48024 * seg52In1AccX73 rho) * (rho 48023 * seg52In1AccY73 rho)) =
        rho 48024 * seg52In1AccX73 rho + rho 48023 * seg52In1AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48030 * (1 - 3021 * (rho 48024 * seg52In1AccX73 rho) * (rho 48023 * seg52In1AccY73 rho)) =
        (-1) * (rho 48024 * seg52In1AccX73 rho) - rho 48023 * seg52In1AccY73 rho +
          (seg52In1AccY73 rho - seg52In1AccX73 rho * (-1)) * (rho 48023 + rho 48024) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48030 * (1 - rho 48028) = rho 48025 - rho 48026 - rho 48027 := ha5
      _ = (-1) * rho 48026 - rho 48027 + (seg52In1AccY73 rho - seg52In1AccX73 rho * (-1)) *
          (rho 48023 + rho 48024) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX74 rho = seg52In1AccX73 rho - Bool.toZMod bit * (seg52In1AccX73 rho - rho 48029) := by
    have hd : rho 48031 = Bool.toZMod bit * (rho 48029 - seg52In1AccX73 rho) := by
      rw [← hbit]
      unfold seg52In1AccX73
      linear_combination -r3641
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY74 rho = seg52In1AccY73 rho - Bool.toZMod bit * (seg52In1AccY73 rho - rho 48030) := by
    have hd : rho 48032 = Bool.toZMod bit * (rho 48030 - seg52In1AccY73 rho) := by
      rw [← hbit]
      unfold seg52In1AccY73
      linear_combination -r3642
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48023 * rho 48024 = rho 48033 := by linear_combination r3643
  have hd1 : rho 48023 * rho 48023 = rho 48034 := by linear_combination r3644
  have hd2 : rho 48024 * rho 48024 = rho 48035 := by linear_combination r3645
  have hd3 : rho 48036 * (rho 48024 * rho 48024 + rho 48023 * rho 48023 * (-1)) =
      2 * (rho 48023 * rho 48024) := by
    rw [hd0, hd1, hd2]
    linear_combination r3646
  have hd4 : rho 48037 * (2 - (rho 48024 * rho 48024 + rho 48023 * rho 48023 * (-1))) =
      rho 48024 * rho 48024 - rho 48023 * rho 48023 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3647
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48023, rho 48024⟩
    ⟨rho 48029, rho 48030⟩ ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48036, rho 48037⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3648 rho ∧ Seg52.relationRow3649 rho ∧ Seg52.relationRow3650 rho ∧ Seg52.relationRow3651 rho ∧ Seg52.relationRow3652 rho ∧ Seg52.relationRow3653 rho ∧ Seg52.relationRow3654 rho ∧ Seg52.relationRow3655 rho ∧ Seg52.relationRow3656 rho ∧ Seg52.relationRow3657 rho ∧ Seg52.relationRow3658 rho ∧ Seg52.relationRow3659 rho ∧ Seg52.relationRow3660 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660⟩

theorem seg52In1_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48036, rho 48037⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48036, rho 48037⟩
        ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48049, rho 48050⟩ := by
  obtain ⟨r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660⟩ := seg52In1_rows74 rho h
  unfold Seg52.relationRow3648 at r3648

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3648

  unfold Seg52.relationRow3649 at r3649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3649

  unfold Seg52.relationRow3650 at r3650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3650

  unfold Seg52.relationRow3651 at r3651

  unfold Seg52.relationRow3652 at r3652

  unfold Seg52.relationRow3653 at r3653

  unfold Seg52.relationRow3654 at r3654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3654

  unfold Seg52.relationRow3655 at r3655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655

  unfold Seg52.relationRow3656 at r3656

  unfold Seg52.relationRow3657 at r3657

  unfold Seg52.relationRow3658 at r3658

  unfold Seg52.relationRow3659 at r3659

  unfold Seg52.relationRow3660 at r3660

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX75 rho = seg52In1AccX74 rho + rho 48044 := by
    unfold seg52In1AccX75 seg52In1AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 74]

    ring

  have hnexty : seg52In1AccY75 rho = seg52In1AccY74 rho + rho 48045 := by
    unfold seg52In1AccY75 seg52In1AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 74]

    ring

  have ha0 : (rho 48036 + rho 48037) * (seg52In1AccX74 rho + seg52In1AccY74 rho) = rho 48038 := by
    unfold seg52In1AccX74 seg52In1AccY74
    linear_combination r3648
  have ha1 : rho 48037 * seg52In1AccX74 rho = rho 48039 := by
    unfold seg52In1AccX74
    linear_combination r3649
  have ha2 : rho 48036 * seg52In1AccY74 rho = rho 48040 := by
    unfold seg52In1AccY74
    linear_combination r3650
  have ha3 : 3021 * rho 48039 * rho 48040 = rho 48041 := by
    linear_combination r3651
  have ha4 : rho 48042 * (1 + rho 48041) = rho 48039 + rho 48040 := by
    linear_combination r3652
  have ha5 : rho 48043 * (1 - rho 48041) = rho 48038 - rho 48039 - rho 48040 := by
    linear_combination r3653
  have haddx :
      rho 48042 * (1 + 3021 * (rho 48037 * seg52In1AccX74 rho) * (rho 48036 * seg52In1AccY74 rho)) =
        rho 48037 * seg52In1AccX74 rho + rho 48036 * seg52In1AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48043 * (1 - 3021 * (rho 48037 * seg52In1AccX74 rho) * (rho 48036 * seg52In1AccY74 rho)) =
        (-1) * (rho 48037 * seg52In1AccX74 rho) - rho 48036 * seg52In1AccY74 rho +
          (seg52In1AccY74 rho - seg52In1AccX74 rho * (-1)) * (rho 48036 + rho 48037) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48043 * (1 - rho 48041) = rho 48038 - rho 48039 - rho 48040 := ha5
      _ = (-1) * rho 48039 - rho 48040 + (seg52In1AccY74 rho - seg52In1AccX74 rho * (-1)) *
          (rho 48036 + rho 48037) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX75 rho = seg52In1AccX74 rho - Bool.toZMod bit * (seg52In1AccX74 rho - rho 48042) := by
    have hd : rho 48044 = Bool.toZMod bit * (rho 48042 - seg52In1AccX74 rho) := by
      rw [← hbit]
      unfold seg52In1AccX74
      linear_combination -r3654
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY75 rho = seg52In1AccY74 rho - Bool.toZMod bit * (seg52In1AccY74 rho - rho 48043) := by
    have hd : rho 48045 = Bool.toZMod bit * (rho 48043 - seg52In1AccY74 rho) := by
      rw [← hbit]
      unfold seg52In1AccY74
      linear_combination -r3655
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48036 * rho 48037 = rho 48046 := by linear_combination r3656
  have hd1 : rho 48036 * rho 48036 = rho 48047 := by linear_combination r3657
  have hd2 : rho 48037 * rho 48037 = rho 48048 := by linear_combination r3658
  have hd3 : rho 48049 * (rho 48037 * rho 48037 + rho 48036 * rho 48036 * (-1)) =
      2 * (rho 48036 * rho 48037) := by
    rw [hd0, hd1, hd2]
    linear_combination r3659
  have hd4 : rho 48050 * (2 - (rho 48037 * rho 48037 + rho 48036 * rho 48036 * (-1))) =
      rho 48037 * rho 48037 - rho 48036 * rho 48036 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3660
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48036, rho 48037⟩
    ⟨rho 48042, rho 48043⟩ ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48049, rho 48050⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3661 rho ∧ Seg52.relationRow3662 rho ∧ Seg52.relationRow3663 rho ∧ Seg52.relationRow3664 rho ∧ Seg52.relationRow3665 rho ∧ Seg52.relationRow3666 rho ∧ Seg52.relationRow3667 rho ∧ Seg52.relationRow3668 rho ∧ Seg52.relationRow3669 rho ∧ Seg52.relationRow3670 rho ∧ Seg52.relationRow3671 rho ∧ Seg52.relationRow3672 rho ∧ Seg52.relationRow3673 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, _, _, _, _, _, _⟩

  exact ⟨r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673⟩

theorem seg52In1_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48049, rho 48050⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48049, rho 48050⟩
        ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48062, rho 48063⟩ := by
  obtain ⟨r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673⟩ := seg52In1_rows75 rho h
  unfold Seg52.relationRow3661 at r3661

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3661

  unfold Seg52.relationRow3662 at r3662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3662

  unfold Seg52.relationRow3663 at r3663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3663

  unfold Seg52.relationRow3664 at r3664

  unfold Seg52.relationRow3665 at r3665

  unfold Seg52.relationRow3666 at r3666

  unfold Seg52.relationRow3667 at r3667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3667

  unfold Seg52.relationRow3668 at r3668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668

  unfold Seg52.relationRow3669 at r3669

  unfold Seg52.relationRow3670 at r3670

  unfold Seg52.relationRow3671 at r3671

  unfold Seg52.relationRow3672 at r3672

  unfold Seg52.relationRow3673 at r3673

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX76 rho = seg52In1AccX75 rho + rho 48057 := by
    unfold seg52In1AccX76 seg52In1AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 75]

    ring

  have hnexty : seg52In1AccY76 rho = seg52In1AccY75 rho + rho 48058 := by
    unfold seg52In1AccY76 seg52In1AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 75]

    ring

  have ha0 : (rho 48049 + rho 48050) * (seg52In1AccX75 rho + seg52In1AccY75 rho) = rho 48051 := by
    unfold seg52In1AccX75 seg52In1AccY75
    linear_combination r3661
  have ha1 : rho 48050 * seg52In1AccX75 rho = rho 48052 := by
    unfold seg52In1AccX75
    linear_combination r3662
  have ha2 : rho 48049 * seg52In1AccY75 rho = rho 48053 := by
    unfold seg52In1AccY75
    linear_combination r3663
  have ha3 : 3021 * rho 48052 * rho 48053 = rho 48054 := by
    linear_combination r3664
  have ha4 : rho 48055 * (1 + rho 48054) = rho 48052 + rho 48053 := by
    linear_combination r3665
  have ha5 : rho 48056 * (1 - rho 48054) = rho 48051 - rho 48052 - rho 48053 := by
    linear_combination r3666
  have haddx :
      rho 48055 * (1 + 3021 * (rho 48050 * seg52In1AccX75 rho) * (rho 48049 * seg52In1AccY75 rho)) =
        rho 48050 * seg52In1AccX75 rho + rho 48049 * seg52In1AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48056 * (1 - 3021 * (rho 48050 * seg52In1AccX75 rho) * (rho 48049 * seg52In1AccY75 rho)) =
        (-1) * (rho 48050 * seg52In1AccX75 rho) - rho 48049 * seg52In1AccY75 rho +
          (seg52In1AccY75 rho - seg52In1AccX75 rho * (-1)) * (rho 48049 + rho 48050) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48056 * (1 - rho 48054) = rho 48051 - rho 48052 - rho 48053 := ha5
      _ = (-1) * rho 48052 - rho 48053 + (seg52In1AccY75 rho - seg52In1AccX75 rho * (-1)) *
          (rho 48049 + rho 48050) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX76 rho = seg52In1AccX75 rho - Bool.toZMod bit * (seg52In1AccX75 rho - rho 48055) := by
    have hd : rho 48057 = Bool.toZMod bit * (rho 48055 - seg52In1AccX75 rho) := by
      rw [← hbit]
      unfold seg52In1AccX75
      linear_combination -r3667
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY76 rho = seg52In1AccY75 rho - Bool.toZMod bit * (seg52In1AccY75 rho - rho 48056) := by
    have hd : rho 48058 = Bool.toZMod bit * (rho 48056 - seg52In1AccY75 rho) := by
      rw [← hbit]
      unfold seg52In1AccY75
      linear_combination -r3668
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48049 * rho 48050 = rho 48059 := by linear_combination r3669
  have hd1 : rho 48049 * rho 48049 = rho 48060 := by linear_combination r3670
  have hd2 : rho 48050 * rho 48050 = rho 48061 := by linear_combination r3671
  have hd3 : rho 48062 * (rho 48050 * rho 48050 + rho 48049 * rho 48049 * (-1)) =
      2 * (rho 48049 * rho 48050) := by
    rw [hd0, hd1, hd2]
    linear_combination r3672
  have hd4 : rho 48063 * (2 - (rho 48050 * rho 48050 + rho 48049 * rho 48049 * (-1))) =
      rho 48050 * rho 48050 - rho 48049 * rho 48049 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3673
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48049, rho 48050⟩
    ⟨rho 48055, rho 48056⟩ ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48062, rho 48063⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3674 rho ∧ Seg52.relationRow3675 rho ∧ Seg52.relationRow3676 rho ∧ Seg52.relationRow3677 rho ∧ Seg52.relationRow3678 rho ∧ Seg52.relationRow3679 rho ∧ Seg52.relationRow3680 rho ∧ Seg52.relationRow3681 rho ∧ Seg52.relationRow3682 rho ∧ Seg52.relationRow3683 rho ∧ Seg52.relationRow3684 rho ∧ Seg52.relationRow3685 rho ∧ Seg52.relationRow3686 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3674, r3675, r3676, r3677, r3678, r3679⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3674, r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686⟩

theorem seg52In1_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48062, rho 48063⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48062, rho 48063⟩
        ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48075, rho 48076⟩ := by
  obtain ⟨r3674, r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686⟩ := seg52In1_rows76 rho h
  unfold Seg52.relationRow3674 at r3674

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3674

  unfold Seg52.relationRow3675 at r3675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3675

  unfold Seg52.relationRow3676 at r3676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3676

  unfold Seg52.relationRow3677 at r3677

  unfold Seg52.relationRow3678 at r3678

  unfold Seg52.relationRow3679 at r3679

  unfold Seg52.relationRow3680 at r3680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3680

  unfold Seg52.relationRow3681 at r3681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681

  unfold Seg52.relationRow3682 at r3682

  unfold Seg52.relationRow3683 at r3683

  unfold Seg52.relationRow3684 at r3684

  unfold Seg52.relationRow3685 at r3685

  unfold Seg52.relationRow3686 at r3686

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX77 rho = seg52In1AccX76 rho + rho 48070 := by
    unfold seg52In1AccX77 seg52In1AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 76]

    ring

  have hnexty : seg52In1AccY77 rho = seg52In1AccY76 rho + rho 48071 := by
    unfold seg52In1AccY77 seg52In1AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 76]

    ring

  have ha0 : (rho 48062 + rho 48063) * (seg52In1AccX76 rho + seg52In1AccY76 rho) = rho 48064 := by
    unfold seg52In1AccX76 seg52In1AccY76
    linear_combination r3674
  have ha1 : rho 48063 * seg52In1AccX76 rho = rho 48065 := by
    unfold seg52In1AccX76
    linear_combination r3675
  have ha2 : rho 48062 * seg52In1AccY76 rho = rho 48066 := by
    unfold seg52In1AccY76
    linear_combination r3676
  have ha3 : 3021 * rho 48065 * rho 48066 = rho 48067 := by
    linear_combination r3677
  have ha4 : rho 48068 * (1 + rho 48067) = rho 48065 + rho 48066 := by
    linear_combination r3678
  have ha5 : rho 48069 * (1 - rho 48067) = rho 48064 - rho 48065 - rho 48066 := by
    linear_combination r3679
  have haddx :
      rho 48068 * (1 + 3021 * (rho 48063 * seg52In1AccX76 rho) * (rho 48062 * seg52In1AccY76 rho)) =
        rho 48063 * seg52In1AccX76 rho + rho 48062 * seg52In1AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48069 * (1 - 3021 * (rho 48063 * seg52In1AccX76 rho) * (rho 48062 * seg52In1AccY76 rho)) =
        (-1) * (rho 48063 * seg52In1AccX76 rho) - rho 48062 * seg52In1AccY76 rho +
          (seg52In1AccY76 rho - seg52In1AccX76 rho * (-1)) * (rho 48062 + rho 48063) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48069 * (1 - rho 48067) = rho 48064 - rho 48065 - rho 48066 := ha5
      _ = (-1) * rho 48065 - rho 48066 + (seg52In1AccY76 rho - seg52In1AccX76 rho * (-1)) *
          (rho 48062 + rho 48063) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX77 rho = seg52In1AccX76 rho - Bool.toZMod bit * (seg52In1AccX76 rho - rho 48068) := by
    have hd : rho 48070 = Bool.toZMod bit * (rho 48068 - seg52In1AccX76 rho) := by
      rw [← hbit]
      unfold seg52In1AccX76
      linear_combination -r3680
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY77 rho = seg52In1AccY76 rho - Bool.toZMod bit * (seg52In1AccY76 rho - rho 48069) := by
    have hd : rho 48071 = Bool.toZMod bit * (rho 48069 - seg52In1AccY76 rho) := by
      rw [← hbit]
      unfold seg52In1AccY76
      linear_combination -r3681
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48062 * rho 48063 = rho 48072 := by linear_combination r3682
  have hd1 : rho 48062 * rho 48062 = rho 48073 := by linear_combination r3683
  have hd2 : rho 48063 * rho 48063 = rho 48074 := by linear_combination r3684
  have hd3 : rho 48075 * (rho 48063 * rho 48063 + rho 48062 * rho 48062 * (-1)) =
      2 * (rho 48062 * rho 48063) := by
    rw [hd0, hd1, hd2]
    linear_combination r3685
  have hd4 : rho 48076 * (2 - (rho 48063 * rho 48063 + rho 48062 * rho 48062 * (-1))) =
      rho 48063 * rho 48063 - rho 48062 * rho 48062 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3686
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48062, rho 48063⟩
    ⟨rho 48068, rho 48069⟩ ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48075, rho 48076⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg52In1_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg52In1_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg52In1_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg52In1_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg52In1_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg52In1_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg52In1_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg52In1_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg52In1_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg52In1_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
