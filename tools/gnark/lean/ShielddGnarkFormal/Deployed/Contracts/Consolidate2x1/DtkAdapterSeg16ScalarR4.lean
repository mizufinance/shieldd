import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3537 rho ∧ Seg16.relationRow3538 rho ∧ Seg16.relationRow3539 rho ∧ Seg16.relationRow3540 rho ∧ Seg16.relationRow3541 rho ∧ Seg16.relationRow3542 rho ∧ Seg16.relationRow3543 rho ∧ Seg16.relationRow3544 rho ∧ Seg16.relationRow3545 rho ∧ Seg16.relationRow3546 rho ∧ Seg16.relationRow3547 rho ∧ Seg16.relationRow3548 rho ∧ Seg16.relationRow3549 rho := by
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
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩

theorem seg16_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15336 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩ := by
  obtain ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩ := seg16_rows44 rho h
  unfold Seg16.relationRow3537 at r3537
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3537
  unfold Seg16.relationRow3538 at r3538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538
  unfold Seg16.relationRow3539 at r3539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3539
  unfold Seg16.relationRow3540 at r3540
  unfold Seg16.relationRow3541 at r3541
  unfold Seg16.relationRow3542 at r3542
  unfold Seg16.relationRow3543 at r3543
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3543
  unfold Seg16.relationRow3544 at r3544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3544
  unfold Seg16.relationRow3545 at r3545
  unfold Seg16.relationRow3546 at r3546
  unfold Seg16.relationRow3547 at r3547
  unfold Seg16.relationRow3548 at r3548
  unfold Seg16.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 15336 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩ := by
    have hnextx : seg16AccX45 rho = seg16AccX44 rho + rho 16115 := by
      unfold seg16AccX45 seg16AccX44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 44]
      ring
    have hnexty : seg16AccY45 rho = seg16AccY44 rho + rho 16116 := by
      unfold seg16AccY45 seg16AccY44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 44]
      ring
    have ha0 : (rho 16107 + rho 16108) * (seg16AccX44 rho + seg16AccY44 rho) = rho 16109 := by
      unfold seg16AccX44 seg16AccY44
      linear_combination r3537
    have ha1 : rho 16108 * seg16AccX44 rho = rho 16110 := by
      unfold seg16AccX44
      linear_combination r3538
    have ha2 : rho 16107 * seg16AccY44 rho = rho 16111 := by
      unfold seg16AccY44
      linear_combination r3539
    have ha3 : 3021 * rho 16110 * rho 16111 = rho 16112 := by
      linear_combination r3540
    have ha4 : rho 16113 * (1 + rho 16112) = rho 16110 + rho 16111 := by
      linear_combination r3541
    have ha5 : rho 16114 * (1 - rho 16112) = rho 16109 - rho 16110 - rho 16111 := by
      linear_combination r3542
    have haddx :
        rho 16113 * (1 + 3021 * (rho 16108 * seg16AccX44 rho) * (rho 16107 * seg16AccY44 rho)) =
          rho 16108 * seg16AccX44 rho + rho 16107 * seg16AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16114 * (1 - 3021 * (rho 16108 * seg16AccX44 rho) * (rho 16107 * seg16AccY44 rho)) =
          (-1) * (rho 16108 * seg16AccX44 rho) - rho 16107 * seg16AccY44 rho +
            (seg16AccY44 rho - seg16AccX44 rho * (-1)) * (rho 16107 + rho 16108) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16114 * (1 - rho 16112) = rho 16109 - rho 16110 - rho 16111 := ha5
        _ = (-1) * rho 16110 - rho 16111 + (seg16AccY44 rho - seg16AccX44 rho * (-1)) * (rho 16107 + rho 16108) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX45 rho = seg16AccX44 rho - Bool.toZMod bit * (seg16AccX44 rho - rho 16113) := by
      have hd : rho 16115 = Bool.toZMod bit * (rho 16113 - seg16AccX44 rho) := by
        rw [← hbit]
        unfold seg16AccX44
        linear_combination -r3543
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY45 rho = seg16AccY44 rho - Bool.toZMod bit * (seg16AccY44 rho - rho 16114) := by
      have hd : rho 16116 = Bool.toZMod bit * (rho 16114 - seg16AccY44 rho) := by
        rw [← hbit]
        unfold seg16AccY44
        linear_combination -r3544
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16107 * rho 16108 = rho 16117 := by linear_combination r3545
    have hd1 : rho 16107 * rho 16107 = rho 16118 := by linear_combination r3546
    have hd2 : rho 16108 * rho 16108 = rho 16119 := by linear_combination r3547
    have hd3 : rho 16120 * (rho 16108 * rho 16108 + rho 16107 * rho 16107 * (-1)) = 2 * (rho 16107 * rho 16108) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 16121 * (2 - (rho 16108 * rho 16108 + rho 16107 * rho 16107 * (-1))) = rho 16108 * rho 16108 - rho 16107 * rho 16107 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
      ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
      ⟨(rho 16113 : Seg16.F), (rho 16114 : Seg16.F)⟩
      ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
      ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg16_rows45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3550 rho ∧ Seg16.relationRow3551 rho ∧ Seg16.relationRow3552 rho ∧ Seg16.relationRow3553 rho ∧ Seg16.relationRow3554 rho ∧ Seg16.relationRow3555 rho ∧ Seg16.relationRow3556 rho ∧ Seg16.relationRow3557 rho ∧ Seg16.relationRow3558 rho ∧ Seg16.relationRow3559 rho ∧ Seg16.relationRow3560 rho ∧ Seg16.relationRow3561 rho ∧ Seg16.relationRow3562 rho := by
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
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩

theorem seg16_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15337 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩ := by
  obtain ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩ := seg16_rows45 rho h
  unfold Seg16.relationRow3550 at r3550
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3550
  unfold Seg16.relationRow3551 at r3551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551
  unfold Seg16.relationRow3552 at r3552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3552
  unfold Seg16.relationRow3553 at r3553
  unfold Seg16.relationRow3554 at r3554
  unfold Seg16.relationRow3555 at r3555
  unfold Seg16.relationRow3556 at r3556
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3556
  unfold Seg16.relationRow3557 at r3557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3557
  unfold Seg16.relationRow3558 at r3558
  unfold Seg16.relationRow3559 at r3559
  unfold Seg16.relationRow3560 at r3560
  unfold Seg16.relationRow3561 at r3561
  unfold Seg16.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 15337 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩ := by
    have hnextx : seg16AccX46 rho = seg16AccX45 rho + rho 16128 := by
      unfold seg16AccX46 seg16AccX45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 45]
      ring
    have hnexty : seg16AccY46 rho = seg16AccY45 rho + rho 16129 := by
      unfold seg16AccY46 seg16AccY45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 45]
      ring
    have ha0 : (rho 16120 + rho 16121) * (seg16AccX45 rho + seg16AccY45 rho) = rho 16122 := by
      unfold seg16AccX45 seg16AccY45
      linear_combination r3550
    have ha1 : rho 16121 * seg16AccX45 rho = rho 16123 := by
      unfold seg16AccX45
      linear_combination r3551
    have ha2 : rho 16120 * seg16AccY45 rho = rho 16124 := by
      unfold seg16AccY45
      linear_combination r3552
    have ha3 : 3021 * rho 16123 * rho 16124 = rho 16125 := by
      linear_combination r3553
    have ha4 : rho 16126 * (1 + rho 16125) = rho 16123 + rho 16124 := by
      linear_combination r3554
    have ha5 : rho 16127 * (1 - rho 16125) = rho 16122 - rho 16123 - rho 16124 := by
      linear_combination r3555
    have haddx :
        rho 16126 * (1 + 3021 * (rho 16121 * seg16AccX45 rho) * (rho 16120 * seg16AccY45 rho)) =
          rho 16121 * seg16AccX45 rho + rho 16120 * seg16AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16127 * (1 - 3021 * (rho 16121 * seg16AccX45 rho) * (rho 16120 * seg16AccY45 rho)) =
          (-1) * (rho 16121 * seg16AccX45 rho) - rho 16120 * seg16AccY45 rho +
            (seg16AccY45 rho - seg16AccX45 rho * (-1)) * (rho 16120 + rho 16121) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16127 * (1 - rho 16125) = rho 16122 - rho 16123 - rho 16124 := ha5
        _ = (-1) * rho 16123 - rho 16124 + (seg16AccY45 rho - seg16AccX45 rho * (-1)) * (rho 16120 + rho 16121) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX46 rho = seg16AccX45 rho - Bool.toZMod bit * (seg16AccX45 rho - rho 16126) := by
      have hd : rho 16128 = Bool.toZMod bit * (rho 16126 - seg16AccX45 rho) := by
        rw [← hbit]
        unfold seg16AccX45
        linear_combination -r3556
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY46 rho = seg16AccY45 rho - Bool.toZMod bit * (seg16AccY45 rho - rho 16127) := by
      have hd : rho 16129 = Bool.toZMod bit * (rho 16127 - seg16AccY45 rho) := by
        rw [← hbit]
        unfold seg16AccY45
        linear_combination -r3557
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16120 * rho 16121 = rho 16130 := by linear_combination r3558
    have hd1 : rho 16120 * rho 16120 = rho 16131 := by linear_combination r3559
    have hd2 : rho 16121 * rho 16121 = rho 16132 := by linear_combination r3560
    have hd3 : rho 16133 * (rho 16121 * rho 16121 + rho 16120 * rho 16120 * (-1)) = 2 * (rho 16120 * rho 16121) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 16134 * (2 - (rho 16121 * rho 16121 + rho 16120 * rho 16120 * (-1))) = rho 16121 * rho 16121 - rho 16120 * rho 16120 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
      ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
      ⟨(rho 16126 : Seg16.F), (rho 16127 : Seg16.F)⟩
      ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
      ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg16_rows46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3563 rho ∧ Seg16.relationRow3564 rho ∧ Seg16.relationRow3565 rho ∧ Seg16.relationRow3566 rho ∧ Seg16.relationRow3567 rho ∧ Seg16.relationRow3568 rho ∧ Seg16.relationRow3569 rho ∧ Seg16.relationRow3570 rho ∧ Seg16.relationRow3571 rho ∧ Seg16.relationRow3572 rho ∧ Seg16.relationRow3573 rho ∧ Seg16.relationRow3574 rho ∧ Seg16.relationRow3575 rho := by
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
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩

theorem seg16_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15338 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩ := by
  obtain ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩ := seg16_rows46 rho h
  unfold Seg16.relationRow3563 at r3563
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3563
  unfold Seg16.relationRow3564 at r3564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564
  unfold Seg16.relationRow3565 at r3565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3565
  unfold Seg16.relationRow3566 at r3566
  unfold Seg16.relationRow3567 at r3567
  unfold Seg16.relationRow3568 at r3568
  unfold Seg16.relationRow3569 at r3569
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3569
  unfold Seg16.relationRow3570 at r3570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3570
  unfold Seg16.relationRow3571 at r3571
  unfold Seg16.relationRow3572 at r3572
  unfold Seg16.relationRow3573 at r3573
  unfold Seg16.relationRow3574 at r3574
  unfold Seg16.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 15338 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩ := by
    have hnextx : seg16AccX47 rho = seg16AccX46 rho + rho 16141 := by
      unfold seg16AccX47 seg16AccX46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 46]
      ring
    have hnexty : seg16AccY47 rho = seg16AccY46 rho + rho 16142 := by
      unfold seg16AccY47 seg16AccY46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 46]
      ring
    have ha0 : (rho 16133 + rho 16134) * (seg16AccX46 rho + seg16AccY46 rho) = rho 16135 := by
      unfold seg16AccX46 seg16AccY46
      linear_combination r3563
    have ha1 : rho 16134 * seg16AccX46 rho = rho 16136 := by
      unfold seg16AccX46
      linear_combination r3564
    have ha2 : rho 16133 * seg16AccY46 rho = rho 16137 := by
      unfold seg16AccY46
      linear_combination r3565
    have ha3 : 3021 * rho 16136 * rho 16137 = rho 16138 := by
      linear_combination r3566
    have ha4 : rho 16139 * (1 + rho 16138) = rho 16136 + rho 16137 := by
      linear_combination r3567
    have ha5 : rho 16140 * (1 - rho 16138) = rho 16135 - rho 16136 - rho 16137 := by
      linear_combination r3568
    have haddx :
        rho 16139 * (1 + 3021 * (rho 16134 * seg16AccX46 rho) * (rho 16133 * seg16AccY46 rho)) =
          rho 16134 * seg16AccX46 rho + rho 16133 * seg16AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16140 * (1 - 3021 * (rho 16134 * seg16AccX46 rho) * (rho 16133 * seg16AccY46 rho)) =
          (-1) * (rho 16134 * seg16AccX46 rho) - rho 16133 * seg16AccY46 rho +
            (seg16AccY46 rho - seg16AccX46 rho * (-1)) * (rho 16133 + rho 16134) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16140 * (1 - rho 16138) = rho 16135 - rho 16136 - rho 16137 := ha5
        _ = (-1) * rho 16136 - rho 16137 + (seg16AccY46 rho - seg16AccX46 rho * (-1)) * (rho 16133 + rho 16134) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX47 rho = seg16AccX46 rho - Bool.toZMod bit * (seg16AccX46 rho - rho 16139) := by
      have hd : rho 16141 = Bool.toZMod bit * (rho 16139 - seg16AccX46 rho) := by
        rw [← hbit]
        unfold seg16AccX46
        linear_combination -r3569
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY47 rho = seg16AccY46 rho - Bool.toZMod bit * (seg16AccY46 rho - rho 16140) := by
      have hd : rho 16142 = Bool.toZMod bit * (rho 16140 - seg16AccY46 rho) := by
        rw [← hbit]
        unfold seg16AccY46
        linear_combination -r3570
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16133 * rho 16134 = rho 16143 := by linear_combination r3571
    have hd1 : rho 16133 * rho 16133 = rho 16144 := by linear_combination r3572
    have hd2 : rho 16134 * rho 16134 = rho 16145 := by linear_combination r3573
    have hd3 : rho 16146 * (rho 16134 * rho 16134 + rho 16133 * rho 16133 * (-1)) = 2 * (rho 16133 * rho 16134) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 16147 * (2 - (rho 16134 * rho 16134 + rho 16133 * rho 16133 * (-1))) = rho 16134 * rho 16134 - rho 16133 * rho 16133 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
      ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
      ⟨(rho 16139 : Seg16.F), (rho 16140 : Seg16.F)⟩
      ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
      ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg16_rows47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3576 rho ∧ Seg16.relationRow3577 rho ∧ Seg16.relationRow3578 rho ∧ Seg16.relationRow3579 rho ∧ Seg16.relationRow3580 rho ∧ Seg16.relationRow3581 rho ∧ Seg16.relationRow3582 rho ∧ Seg16.relationRow3583 rho ∧ Seg16.relationRow3584 rho ∧ Seg16.relationRow3585 rho ∧ Seg16.relationRow3586 rho ∧ Seg16.relationRow3587 rho ∧ Seg16.relationRow3588 rho := by
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
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩

theorem seg16_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15339 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩ := by
  obtain ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩ := seg16_rows47 rho h
  unfold Seg16.relationRow3576 at r3576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3576
  unfold Seg16.relationRow3577 at r3577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577
  unfold Seg16.relationRow3578 at r3578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3578
  unfold Seg16.relationRow3579 at r3579
  unfold Seg16.relationRow3580 at r3580
  unfold Seg16.relationRow3581 at r3581
  unfold Seg16.relationRow3582 at r3582
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3582
  unfold Seg16.relationRow3583 at r3583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3583
  unfold Seg16.relationRow3584 at r3584
  unfold Seg16.relationRow3585 at r3585
  unfold Seg16.relationRow3586 at r3586
  unfold Seg16.relationRow3587 at r3587
  unfold Seg16.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 15339 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩ := by
    have hnextx : seg16AccX48 rho = seg16AccX47 rho + rho 16154 := by
      unfold seg16AccX48 seg16AccX47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 47]
      ring
    have hnexty : seg16AccY48 rho = seg16AccY47 rho + rho 16155 := by
      unfold seg16AccY48 seg16AccY47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 47]
      ring
    have ha0 : (rho 16146 + rho 16147) * (seg16AccX47 rho + seg16AccY47 rho) = rho 16148 := by
      unfold seg16AccX47 seg16AccY47
      linear_combination r3576
    have ha1 : rho 16147 * seg16AccX47 rho = rho 16149 := by
      unfold seg16AccX47
      linear_combination r3577
    have ha2 : rho 16146 * seg16AccY47 rho = rho 16150 := by
      unfold seg16AccY47
      linear_combination r3578
    have ha3 : 3021 * rho 16149 * rho 16150 = rho 16151 := by
      linear_combination r3579
    have ha4 : rho 16152 * (1 + rho 16151) = rho 16149 + rho 16150 := by
      linear_combination r3580
    have ha5 : rho 16153 * (1 - rho 16151) = rho 16148 - rho 16149 - rho 16150 := by
      linear_combination r3581
    have haddx :
        rho 16152 * (1 + 3021 * (rho 16147 * seg16AccX47 rho) * (rho 16146 * seg16AccY47 rho)) =
          rho 16147 * seg16AccX47 rho + rho 16146 * seg16AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16153 * (1 - 3021 * (rho 16147 * seg16AccX47 rho) * (rho 16146 * seg16AccY47 rho)) =
          (-1) * (rho 16147 * seg16AccX47 rho) - rho 16146 * seg16AccY47 rho +
            (seg16AccY47 rho - seg16AccX47 rho * (-1)) * (rho 16146 + rho 16147) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16153 * (1 - rho 16151) = rho 16148 - rho 16149 - rho 16150 := ha5
        _ = (-1) * rho 16149 - rho 16150 + (seg16AccY47 rho - seg16AccX47 rho * (-1)) * (rho 16146 + rho 16147) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX48 rho = seg16AccX47 rho - Bool.toZMod bit * (seg16AccX47 rho - rho 16152) := by
      have hd : rho 16154 = Bool.toZMod bit * (rho 16152 - seg16AccX47 rho) := by
        rw [← hbit]
        unfold seg16AccX47
        linear_combination -r3582
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY48 rho = seg16AccY47 rho - Bool.toZMod bit * (seg16AccY47 rho - rho 16153) := by
      have hd : rho 16155 = Bool.toZMod bit * (rho 16153 - seg16AccY47 rho) := by
        rw [← hbit]
        unfold seg16AccY47
        linear_combination -r3583
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16146 * rho 16147 = rho 16156 := by linear_combination r3584
    have hd1 : rho 16146 * rho 16146 = rho 16157 := by linear_combination r3585
    have hd2 : rho 16147 * rho 16147 = rho 16158 := by linear_combination r3586
    have hd3 : rho 16159 * (rho 16147 * rho 16147 + rho 16146 * rho 16146 * (-1)) = 2 * (rho 16146 * rho 16147) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 16160 * (2 - (rho 16147 * rho 16147 + rho 16146 * rho 16146 * (-1))) = rho 16147 * rho 16147 - rho 16146 * rho 16146 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
      ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
      ⟨(rho 16152 : Seg16.F), (rho 16153 : Seg16.F)⟩
      ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
      ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg16_rows48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3589 rho ∧ Seg16.relationRow3590 rho ∧ Seg16.relationRow3591 rho ∧ Seg16.relationRow3592 rho ∧ Seg16.relationRow3593 rho ∧ Seg16.relationRow3594 rho ∧ Seg16.relationRow3595 rho ∧ Seg16.relationRow3596 rho ∧ Seg16.relationRow3597 rho ∧ Seg16.relationRow3598 rho ∧ Seg16.relationRow3599 rho ∧ Seg16.relationRow3600 rho ∧ Seg16.relationRow3601 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩

theorem seg16_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15340 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩ := by
  obtain ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩ := seg16_rows48 rho h
  unfold Seg16.relationRow3589 at r3589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3589
  unfold Seg16.relationRow3590 at r3590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590
  unfold Seg16.relationRow3591 at r3591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3591
  unfold Seg16.relationRow3592 at r3592
  unfold Seg16.relationRow3593 at r3593
  unfold Seg16.relationRow3594 at r3594
  unfold Seg16.relationRow3595 at r3595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3595
  unfold Seg16.relationRow3596 at r3596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3596
  unfold Seg16.relationRow3597 at r3597
  unfold Seg16.relationRow3598 at r3598
  unfold Seg16.relationRow3599 at r3599
  unfold Seg16.relationRow3600 at r3600
  unfold Seg16.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 15340 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩ := by
    have hnextx : seg16AccX49 rho = seg16AccX48 rho + rho 16167 := by
      unfold seg16AccX49 seg16AccX48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 48]
      ring
    have hnexty : seg16AccY49 rho = seg16AccY48 rho + rho 16168 := by
      unfold seg16AccY49 seg16AccY48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 48]
      ring
    have ha0 : (rho 16159 + rho 16160) * (seg16AccX48 rho + seg16AccY48 rho) = rho 16161 := by
      unfold seg16AccX48 seg16AccY48
      linear_combination r3589
    have ha1 : rho 16160 * seg16AccX48 rho = rho 16162 := by
      unfold seg16AccX48
      linear_combination r3590
    have ha2 : rho 16159 * seg16AccY48 rho = rho 16163 := by
      unfold seg16AccY48
      linear_combination r3591
    have ha3 : 3021 * rho 16162 * rho 16163 = rho 16164 := by
      linear_combination r3592
    have ha4 : rho 16165 * (1 + rho 16164) = rho 16162 + rho 16163 := by
      linear_combination r3593
    have ha5 : rho 16166 * (1 - rho 16164) = rho 16161 - rho 16162 - rho 16163 := by
      linear_combination r3594
    have haddx :
        rho 16165 * (1 + 3021 * (rho 16160 * seg16AccX48 rho) * (rho 16159 * seg16AccY48 rho)) =
          rho 16160 * seg16AccX48 rho + rho 16159 * seg16AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16166 * (1 - 3021 * (rho 16160 * seg16AccX48 rho) * (rho 16159 * seg16AccY48 rho)) =
          (-1) * (rho 16160 * seg16AccX48 rho) - rho 16159 * seg16AccY48 rho +
            (seg16AccY48 rho - seg16AccX48 rho * (-1)) * (rho 16159 + rho 16160) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16166 * (1 - rho 16164) = rho 16161 - rho 16162 - rho 16163 := ha5
        _ = (-1) * rho 16162 - rho 16163 + (seg16AccY48 rho - seg16AccX48 rho * (-1)) * (rho 16159 + rho 16160) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX49 rho = seg16AccX48 rho - Bool.toZMod bit * (seg16AccX48 rho - rho 16165) := by
      have hd : rho 16167 = Bool.toZMod bit * (rho 16165 - seg16AccX48 rho) := by
        rw [← hbit]
        unfold seg16AccX48
        linear_combination -r3595
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY49 rho = seg16AccY48 rho - Bool.toZMod bit * (seg16AccY48 rho - rho 16166) := by
      have hd : rho 16168 = Bool.toZMod bit * (rho 16166 - seg16AccY48 rho) := by
        rw [← hbit]
        unfold seg16AccY48
        linear_combination -r3596
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16159 * rho 16160 = rho 16169 := by linear_combination r3597
    have hd1 : rho 16159 * rho 16159 = rho 16170 := by linear_combination r3598
    have hd2 : rho 16160 * rho 16160 = rho 16171 := by linear_combination r3599
    have hd3 : rho 16172 * (rho 16160 * rho 16160 + rho 16159 * rho 16159 * (-1)) = 2 * (rho 16159 * rho 16160) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 16173 * (2 - (rho 16160 * rho 16160 + rho 16159 * rho 16159 * (-1))) = rho 16160 * rho 16160 - rho 16159 * rho 16159 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
      ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
      ⟨(rho 16165 : Seg16.F), (rho 16166 : Seg16.F)⟩
      ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
      ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg16_rows49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3602 rho ∧ Seg16.relationRow3603 rho ∧ Seg16.relationRow3604 rho ∧ Seg16.relationRow3605 rho ∧ Seg16.relationRow3606 rho ∧ Seg16.relationRow3607 rho ∧ Seg16.relationRow3608 rho ∧ Seg16.relationRow3609 rho ∧ Seg16.relationRow3610 rho ∧ Seg16.relationRow3611 rho ∧ Seg16.relationRow3612 rho ∧ Seg16.relationRow3613 rho ∧ Seg16.relationRow3614 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩

theorem seg16_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15341 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩ := by
  obtain ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩ := seg16_rows49 rho h
  unfold Seg16.relationRow3602 at r3602
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3602
  unfold Seg16.relationRow3603 at r3603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603
  unfold Seg16.relationRow3604 at r3604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3604
  unfold Seg16.relationRow3605 at r3605
  unfold Seg16.relationRow3606 at r3606
  unfold Seg16.relationRow3607 at r3607
  unfold Seg16.relationRow3608 at r3608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3608
  unfold Seg16.relationRow3609 at r3609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3609
  unfold Seg16.relationRow3610 at r3610
  unfold Seg16.relationRow3611 at r3611
  unfold Seg16.relationRow3612 at r3612
  unfold Seg16.relationRow3613 at r3613
  unfold Seg16.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 15341 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩ := by
    have hnextx : seg16AccX50 rho = seg16AccX49 rho + rho 16180 := by
      unfold seg16AccX50 seg16AccX49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 49]
      ring
    have hnexty : seg16AccY50 rho = seg16AccY49 rho + rho 16181 := by
      unfold seg16AccY50 seg16AccY49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 49]
      ring
    have ha0 : (rho 16172 + rho 16173) * (seg16AccX49 rho + seg16AccY49 rho) = rho 16174 := by
      unfold seg16AccX49 seg16AccY49
      linear_combination r3602
    have ha1 : rho 16173 * seg16AccX49 rho = rho 16175 := by
      unfold seg16AccX49
      linear_combination r3603
    have ha2 : rho 16172 * seg16AccY49 rho = rho 16176 := by
      unfold seg16AccY49
      linear_combination r3604
    have ha3 : 3021 * rho 16175 * rho 16176 = rho 16177 := by
      linear_combination r3605
    have ha4 : rho 16178 * (1 + rho 16177) = rho 16175 + rho 16176 := by
      linear_combination r3606
    have ha5 : rho 16179 * (1 - rho 16177) = rho 16174 - rho 16175 - rho 16176 := by
      linear_combination r3607
    have haddx :
        rho 16178 * (1 + 3021 * (rho 16173 * seg16AccX49 rho) * (rho 16172 * seg16AccY49 rho)) =
          rho 16173 * seg16AccX49 rho + rho 16172 * seg16AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16179 * (1 - 3021 * (rho 16173 * seg16AccX49 rho) * (rho 16172 * seg16AccY49 rho)) =
          (-1) * (rho 16173 * seg16AccX49 rho) - rho 16172 * seg16AccY49 rho +
            (seg16AccY49 rho - seg16AccX49 rho * (-1)) * (rho 16172 + rho 16173) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16179 * (1 - rho 16177) = rho 16174 - rho 16175 - rho 16176 := ha5
        _ = (-1) * rho 16175 - rho 16176 + (seg16AccY49 rho - seg16AccX49 rho * (-1)) * (rho 16172 + rho 16173) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX50 rho = seg16AccX49 rho - Bool.toZMod bit * (seg16AccX49 rho - rho 16178) := by
      have hd : rho 16180 = Bool.toZMod bit * (rho 16178 - seg16AccX49 rho) := by
        rw [← hbit]
        unfold seg16AccX49
        linear_combination -r3608
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY50 rho = seg16AccY49 rho - Bool.toZMod bit * (seg16AccY49 rho - rho 16179) := by
      have hd : rho 16181 = Bool.toZMod bit * (rho 16179 - seg16AccY49 rho) := by
        rw [← hbit]
        unfold seg16AccY49
        linear_combination -r3609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16172 * rho 16173 = rho 16182 := by linear_combination r3610
    have hd1 : rho 16172 * rho 16172 = rho 16183 := by linear_combination r3611
    have hd2 : rho 16173 * rho 16173 = rho 16184 := by linear_combination r3612
    have hd3 : rho 16185 * (rho 16173 * rho 16173 + rho 16172 * rho 16172 * (-1)) = 2 * (rho 16172 * rho 16173) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 16186 * (2 - (rho 16173 * rho 16173 + rho 16172 * rho 16172 * (-1))) = rho 16173 * rho 16173 - rho 16172 * rho 16172 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
      ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
      ⟨(rho 16178 : Seg16.F), (rho 16179 : Seg16.F)⟩
      ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
      ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg16_rows50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3615 rho ∧ Seg16.relationRow3616 rho ∧ Seg16.relationRow3617 rho ∧ Seg16.relationRow3618 rho ∧ Seg16.relationRow3619 rho ∧ Seg16.relationRow3620 rho ∧ Seg16.relationRow3621 rho ∧ Seg16.relationRow3622 rho ∧ Seg16.relationRow3623 rho ∧ Seg16.relationRow3624 rho ∧ Seg16.relationRow3625 rho ∧ Seg16.relationRow3626 rho ∧ Seg16.relationRow3627 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩

theorem seg16_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15342 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩ := by
  obtain ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩ := seg16_rows50 rho h
  unfold Seg16.relationRow3615 at r3615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3615
  unfold Seg16.relationRow3616 at r3616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616
  unfold Seg16.relationRow3617 at r3617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3617
  unfold Seg16.relationRow3618 at r3618
  unfold Seg16.relationRow3619 at r3619
  unfold Seg16.relationRow3620 at r3620
  unfold Seg16.relationRow3621 at r3621
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3621
  unfold Seg16.relationRow3622 at r3622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3622
  unfold Seg16.relationRow3623 at r3623
  unfold Seg16.relationRow3624 at r3624
  unfold Seg16.relationRow3625 at r3625
  unfold Seg16.relationRow3626 at r3626
  unfold Seg16.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 15342 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩ := by
    have hnextx : seg16AccX51 rho = seg16AccX50 rho + rho 16193 := by
      unfold seg16AccX51 seg16AccX50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 50]
      ring
    have hnexty : seg16AccY51 rho = seg16AccY50 rho + rho 16194 := by
      unfold seg16AccY51 seg16AccY50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 50]
      ring
    have ha0 : (rho 16185 + rho 16186) * (seg16AccX50 rho + seg16AccY50 rho) = rho 16187 := by
      unfold seg16AccX50 seg16AccY50
      linear_combination r3615
    have ha1 : rho 16186 * seg16AccX50 rho = rho 16188 := by
      unfold seg16AccX50
      linear_combination r3616
    have ha2 : rho 16185 * seg16AccY50 rho = rho 16189 := by
      unfold seg16AccY50
      linear_combination r3617
    have ha3 : 3021 * rho 16188 * rho 16189 = rho 16190 := by
      linear_combination r3618
    have ha4 : rho 16191 * (1 + rho 16190) = rho 16188 + rho 16189 := by
      linear_combination r3619
    have ha5 : rho 16192 * (1 - rho 16190) = rho 16187 - rho 16188 - rho 16189 := by
      linear_combination r3620
    have haddx :
        rho 16191 * (1 + 3021 * (rho 16186 * seg16AccX50 rho) * (rho 16185 * seg16AccY50 rho)) =
          rho 16186 * seg16AccX50 rho + rho 16185 * seg16AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16192 * (1 - 3021 * (rho 16186 * seg16AccX50 rho) * (rho 16185 * seg16AccY50 rho)) =
          (-1) * (rho 16186 * seg16AccX50 rho) - rho 16185 * seg16AccY50 rho +
            (seg16AccY50 rho - seg16AccX50 rho * (-1)) * (rho 16185 + rho 16186) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16192 * (1 - rho 16190) = rho 16187 - rho 16188 - rho 16189 := ha5
        _ = (-1) * rho 16188 - rho 16189 + (seg16AccY50 rho - seg16AccX50 rho * (-1)) * (rho 16185 + rho 16186) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX51 rho = seg16AccX50 rho - Bool.toZMod bit * (seg16AccX50 rho - rho 16191) := by
      have hd : rho 16193 = Bool.toZMod bit * (rho 16191 - seg16AccX50 rho) := by
        rw [← hbit]
        unfold seg16AccX50
        linear_combination -r3621
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY51 rho = seg16AccY50 rho - Bool.toZMod bit * (seg16AccY50 rho - rho 16192) := by
      have hd : rho 16194 = Bool.toZMod bit * (rho 16192 - seg16AccY50 rho) := by
        rw [← hbit]
        unfold seg16AccY50
        linear_combination -r3622
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16185 * rho 16186 = rho 16195 := by linear_combination r3623
    have hd1 : rho 16185 * rho 16185 = rho 16196 := by linear_combination r3624
    have hd2 : rho 16186 * rho 16186 = rho 16197 := by linear_combination r3625
    have hd3 : rho 16198 * (rho 16186 * rho 16186 + rho 16185 * rho 16185 * (-1)) = 2 * (rho 16185 * rho 16186) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 16199 * (2 - (rho 16186 * rho 16186 + rho 16185 * rho 16185 * (-1))) = rho 16186 * rho 16186 - rho 16185 * rho 16185 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
      ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
      ⟨(rho 16191 : Seg16.F), (rho 16192 : Seg16.F)⟩
      ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
      ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg16_rows51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3628 rho ∧ Seg16.relationRow3629 rho ∧ Seg16.relationRow3630 rho ∧ Seg16.relationRow3631 rho ∧ Seg16.relationRow3632 rho ∧ Seg16.relationRow3633 rho ∧ Seg16.relationRow3634 rho ∧ Seg16.relationRow3635 rho ∧ Seg16.relationRow3636 rho ∧ Seg16.relationRow3637 rho ∧ Seg16.relationRow3638 rho ∧ Seg16.relationRow3639 rho ∧ Seg16.relationRow3640 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩

theorem seg16_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15343 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩ := by
  obtain ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩ := seg16_rows51 rho h
  unfold Seg16.relationRow3628 at r3628
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3628
  unfold Seg16.relationRow3629 at r3629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629
  unfold Seg16.relationRow3630 at r3630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3630
  unfold Seg16.relationRow3631 at r3631
  unfold Seg16.relationRow3632 at r3632
  unfold Seg16.relationRow3633 at r3633
  unfold Seg16.relationRow3634 at r3634
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3634
  unfold Seg16.relationRow3635 at r3635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3635
  unfold Seg16.relationRow3636 at r3636
  unfold Seg16.relationRow3637 at r3637
  unfold Seg16.relationRow3638 at r3638
  unfold Seg16.relationRow3639 at r3639
  unfold Seg16.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 15343 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩ := by
    have hnextx : seg16AccX52 rho = seg16AccX51 rho + rho 16206 := by
      unfold seg16AccX52 seg16AccX51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 51]
      ring
    have hnexty : seg16AccY52 rho = seg16AccY51 rho + rho 16207 := by
      unfold seg16AccY52 seg16AccY51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 51]
      ring
    have ha0 : (rho 16198 + rho 16199) * (seg16AccX51 rho + seg16AccY51 rho) = rho 16200 := by
      unfold seg16AccX51 seg16AccY51
      linear_combination r3628
    have ha1 : rho 16199 * seg16AccX51 rho = rho 16201 := by
      unfold seg16AccX51
      linear_combination r3629
    have ha2 : rho 16198 * seg16AccY51 rho = rho 16202 := by
      unfold seg16AccY51
      linear_combination r3630
    have ha3 : 3021 * rho 16201 * rho 16202 = rho 16203 := by
      linear_combination r3631
    have ha4 : rho 16204 * (1 + rho 16203) = rho 16201 + rho 16202 := by
      linear_combination r3632
    have ha5 : rho 16205 * (1 - rho 16203) = rho 16200 - rho 16201 - rho 16202 := by
      linear_combination r3633
    have haddx :
        rho 16204 * (1 + 3021 * (rho 16199 * seg16AccX51 rho) * (rho 16198 * seg16AccY51 rho)) =
          rho 16199 * seg16AccX51 rho + rho 16198 * seg16AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16205 * (1 - 3021 * (rho 16199 * seg16AccX51 rho) * (rho 16198 * seg16AccY51 rho)) =
          (-1) * (rho 16199 * seg16AccX51 rho) - rho 16198 * seg16AccY51 rho +
            (seg16AccY51 rho - seg16AccX51 rho * (-1)) * (rho 16198 + rho 16199) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16205 * (1 - rho 16203) = rho 16200 - rho 16201 - rho 16202 := ha5
        _ = (-1) * rho 16201 - rho 16202 + (seg16AccY51 rho - seg16AccX51 rho * (-1)) * (rho 16198 + rho 16199) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX52 rho = seg16AccX51 rho - Bool.toZMod bit * (seg16AccX51 rho - rho 16204) := by
      have hd : rho 16206 = Bool.toZMod bit * (rho 16204 - seg16AccX51 rho) := by
        rw [← hbit]
        unfold seg16AccX51
        linear_combination -r3634
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY52 rho = seg16AccY51 rho - Bool.toZMod bit * (seg16AccY51 rho - rho 16205) := by
      have hd : rho 16207 = Bool.toZMod bit * (rho 16205 - seg16AccY51 rho) := by
        rw [← hbit]
        unfold seg16AccY51
        linear_combination -r3635
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16198 * rho 16199 = rho 16208 := by linear_combination r3636
    have hd1 : rho 16198 * rho 16198 = rho 16209 := by linear_combination r3637
    have hd2 : rho 16199 * rho 16199 = rho 16210 := by linear_combination r3638
    have hd3 : rho 16211 * (rho 16199 * rho 16199 + rho 16198 * rho 16198 * (-1)) = 2 * (rho 16198 * rho 16199) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 16212 * (2 - (rho 16199 * rho 16199 + rho 16198 * rho 16198 * (-1))) = rho 16199 * rho 16199 - rho 16198 * rho 16198 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
      ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
      ⟨(rho 16204 : Seg16.F), (rho 16205 : Seg16.F)⟩
      ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
      ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg16_rows52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3641 rho ∧ Seg16.relationRow3642 rho ∧ Seg16.relationRow3643 rho ∧ Seg16.relationRow3644 rho ∧ Seg16.relationRow3645 rho ∧ Seg16.relationRow3646 rho ∧ Seg16.relationRow3647 rho ∧ Seg16.relationRow3648 rho ∧ Seg16.relationRow3649 rho ∧ Seg16.relationRow3650 rho ∧ Seg16.relationRow3651 rho ∧ Seg16.relationRow3652 rho ∧ Seg16.relationRow3653 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩

theorem seg16_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15344 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩ := by
  obtain ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩ := seg16_rows52 rho h
  unfold Seg16.relationRow3641 at r3641
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3641
  unfold Seg16.relationRow3642 at r3642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642
  unfold Seg16.relationRow3643 at r3643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3643
  unfold Seg16.relationRow3644 at r3644
  unfold Seg16.relationRow3645 at r3645
  unfold Seg16.relationRow3646 at r3646
  unfold Seg16.relationRow3647 at r3647
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3647
  unfold Seg16.relationRow3648 at r3648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3648
  unfold Seg16.relationRow3649 at r3649
  unfold Seg16.relationRow3650 at r3650
  unfold Seg16.relationRow3651 at r3651
  unfold Seg16.relationRow3652 at r3652
  unfold Seg16.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 15344 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩ := by
    have hnextx : seg16AccX53 rho = seg16AccX52 rho + rho 16219 := by
      unfold seg16AccX53 seg16AccX52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 52]
      ring
    have hnexty : seg16AccY53 rho = seg16AccY52 rho + rho 16220 := by
      unfold seg16AccY53 seg16AccY52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 52]
      ring
    have ha0 : (rho 16211 + rho 16212) * (seg16AccX52 rho + seg16AccY52 rho) = rho 16213 := by
      unfold seg16AccX52 seg16AccY52
      linear_combination r3641
    have ha1 : rho 16212 * seg16AccX52 rho = rho 16214 := by
      unfold seg16AccX52
      linear_combination r3642
    have ha2 : rho 16211 * seg16AccY52 rho = rho 16215 := by
      unfold seg16AccY52
      linear_combination r3643
    have ha3 : 3021 * rho 16214 * rho 16215 = rho 16216 := by
      linear_combination r3644
    have ha4 : rho 16217 * (1 + rho 16216) = rho 16214 + rho 16215 := by
      linear_combination r3645
    have ha5 : rho 16218 * (1 - rho 16216) = rho 16213 - rho 16214 - rho 16215 := by
      linear_combination r3646
    have haddx :
        rho 16217 * (1 + 3021 * (rho 16212 * seg16AccX52 rho) * (rho 16211 * seg16AccY52 rho)) =
          rho 16212 * seg16AccX52 rho + rho 16211 * seg16AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16218 * (1 - 3021 * (rho 16212 * seg16AccX52 rho) * (rho 16211 * seg16AccY52 rho)) =
          (-1) * (rho 16212 * seg16AccX52 rho) - rho 16211 * seg16AccY52 rho +
            (seg16AccY52 rho - seg16AccX52 rho * (-1)) * (rho 16211 + rho 16212) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16218 * (1 - rho 16216) = rho 16213 - rho 16214 - rho 16215 := ha5
        _ = (-1) * rho 16214 - rho 16215 + (seg16AccY52 rho - seg16AccX52 rho * (-1)) * (rho 16211 + rho 16212) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX53 rho = seg16AccX52 rho - Bool.toZMod bit * (seg16AccX52 rho - rho 16217) := by
      have hd : rho 16219 = Bool.toZMod bit * (rho 16217 - seg16AccX52 rho) := by
        rw [← hbit]
        unfold seg16AccX52
        linear_combination -r3647
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY53 rho = seg16AccY52 rho - Bool.toZMod bit * (seg16AccY52 rho - rho 16218) := by
      have hd : rho 16220 = Bool.toZMod bit * (rho 16218 - seg16AccY52 rho) := by
        rw [← hbit]
        unfold seg16AccY52
        linear_combination -r3648
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16211 * rho 16212 = rho 16221 := by linear_combination r3649
    have hd1 : rho 16211 * rho 16211 = rho 16222 := by linear_combination r3650
    have hd2 : rho 16212 * rho 16212 = rho 16223 := by linear_combination r3651
    have hd3 : rho 16224 * (rho 16212 * rho 16212 + rho 16211 * rho 16211 * (-1)) = 2 * (rho 16211 * rho 16212) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 16225 * (2 - (rho 16212 * rho 16212 + rho 16211 * rho 16211 * (-1))) = rho 16212 * rho 16212 - rho 16211 * rho 16211 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
      ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
      ⟨(rho 16217 : Seg16.F), (rho 16218 : Seg16.F)⟩
      ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
      ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg16_rows53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3654 rho ∧ Seg16.relationRow3655 rho ∧ Seg16.relationRow3656 rho ∧ Seg16.relationRow3657 rho ∧ Seg16.relationRow3658 rho ∧ Seg16.relationRow3659 rho ∧ Seg16.relationRow3660 rho ∧ Seg16.relationRow3661 rho ∧ Seg16.relationRow3662 rho ∧ Seg16.relationRow3663 rho ∧ Seg16.relationRow3664 rho ∧ Seg16.relationRow3665 rho ∧ Seg16.relationRow3666 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩

theorem seg16_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15345 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩ := by
  obtain ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩ := seg16_rows53 rho h
  unfold Seg16.relationRow3654 at r3654
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3654
  unfold Seg16.relationRow3655 at r3655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655
  unfold Seg16.relationRow3656 at r3656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3656
  unfold Seg16.relationRow3657 at r3657
  unfold Seg16.relationRow3658 at r3658
  unfold Seg16.relationRow3659 at r3659
  unfold Seg16.relationRow3660 at r3660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3660
  unfold Seg16.relationRow3661 at r3661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3661
  unfold Seg16.relationRow3662 at r3662
  unfold Seg16.relationRow3663 at r3663
  unfold Seg16.relationRow3664 at r3664
  unfold Seg16.relationRow3665 at r3665
  unfold Seg16.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 15345 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩ := by
    have hnextx : seg16AccX54 rho = seg16AccX53 rho + rho 16232 := by
      unfold seg16AccX54 seg16AccX53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 53]
      ring
    have hnexty : seg16AccY54 rho = seg16AccY53 rho + rho 16233 := by
      unfold seg16AccY54 seg16AccY53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 53]
      ring
    have ha0 : (rho 16224 + rho 16225) * (seg16AccX53 rho + seg16AccY53 rho) = rho 16226 := by
      unfold seg16AccX53 seg16AccY53
      linear_combination r3654
    have ha1 : rho 16225 * seg16AccX53 rho = rho 16227 := by
      unfold seg16AccX53
      linear_combination r3655
    have ha2 : rho 16224 * seg16AccY53 rho = rho 16228 := by
      unfold seg16AccY53
      linear_combination r3656
    have ha3 : 3021 * rho 16227 * rho 16228 = rho 16229 := by
      linear_combination r3657
    have ha4 : rho 16230 * (1 + rho 16229) = rho 16227 + rho 16228 := by
      linear_combination r3658
    have ha5 : rho 16231 * (1 - rho 16229) = rho 16226 - rho 16227 - rho 16228 := by
      linear_combination r3659
    have haddx :
        rho 16230 * (1 + 3021 * (rho 16225 * seg16AccX53 rho) * (rho 16224 * seg16AccY53 rho)) =
          rho 16225 * seg16AccX53 rho + rho 16224 * seg16AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16231 * (1 - 3021 * (rho 16225 * seg16AccX53 rho) * (rho 16224 * seg16AccY53 rho)) =
          (-1) * (rho 16225 * seg16AccX53 rho) - rho 16224 * seg16AccY53 rho +
            (seg16AccY53 rho - seg16AccX53 rho * (-1)) * (rho 16224 + rho 16225) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16231 * (1 - rho 16229) = rho 16226 - rho 16227 - rho 16228 := ha5
        _ = (-1) * rho 16227 - rho 16228 + (seg16AccY53 rho - seg16AccX53 rho * (-1)) * (rho 16224 + rho 16225) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX54 rho = seg16AccX53 rho - Bool.toZMod bit * (seg16AccX53 rho - rho 16230) := by
      have hd : rho 16232 = Bool.toZMod bit * (rho 16230 - seg16AccX53 rho) := by
        rw [← hbit]
        unfold seg16AccX53
        linear_combination -r3660
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY54 rho = seg16AccY53 rho - Bool.toZMod bit * (seg16AccY53 rho - rho 16231) := by
      have hd : rho 16233 = Bool.toZMod bit * (rho 16231 - seg16AccY53 rho) := by
        rw [← hbit]
        unfold seg16AccY53
        linear_combination -r3661
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16224 * rho 16225 = rho 16234 := by linear_combination r3662
    have hd1 : rho 16224 * rho 16224 = rho 16235 := by linear_combination r3663
    have hd2 : rho 16225 * rho 16225 = rho 16236 := by linear_combination r3664
    have hd3 : rho 16237 * (rho 16225 * rho 16225 + rho 16224 * rho 16224 * (-1)) = 2 * (rho 16224 * rho 16225) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 16238 * (2 - (rho 16225 * rho 16225 + rho 16224 * rho 16224 * (-1))) = rho 16225 * rho 16225 - rho 16224 * rho 16224 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
      ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
      ⟨(rho 16230 : Seg16.F), (rho 16231 : Seg16.F)⟩
      ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
      ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg16_rows54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3667 rho ∧ Seg16.relationRow3668 rho ∧ Seg16.relationRow3669 rho ∧ Seg16.relationRow3670 rho ∧ Seg16.relationRow3671 rho ∧ Seg16.relationRow3672 rho ∧ Seg16.relationRow3673 rho ∧ Seg16.relationRow3674 rho ∧ Seg16.relationRow3675 rho ∧ Seg16.relationRow3676 rho ∧ Seg16.relationRow3677 rho ∧ Seg16.relationRow3678 rho ∧ Seg16.relationRow3679 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  exact ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩

theorem seg16_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15346 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩ := by
  obtain ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩ := seg16_rows54 rho h
  unfold Seg16.relationRow3667 at r3667
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3667
  unfold Seg16.relationRow3668 at r3668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668
  unfold Seg16.relationRow3669 at r3669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3669
  unfold Seg16.relationRow3670 at r3670
  unfold Seg16.relationRow3671 at r3671
  unfold Seg16.relationRow3672 at r3672
  unfold Seg16.relationRow3673 at r3673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3673
  unfold Seg16.relationRow3674 at r3674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3674
  unfold Seg16.relationRow3675 at r3675
  unfold Seg16.relationRow3676 at r3676
  unfold Seg16.relationRow3677 at r3677
  unfold Seg16.relationRow3678 at r3678
  unfold Seg16.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 15346 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩ := by
    have hnextx : seg16AccX55 rho = seg16AccX54 rho + rho 16245 := by
      unfold seg16AccX55 seg16AccX54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 54]
      ring
    have hnexty : seg16AccY55 rho = seg16AccY54 rho + rho 16246 := by
      unfold seg16AccY55 seg16AccY54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 54]
      ring
    have ha0 : (rho 16237 + rho 16238) * (seg16AccX54 rho + seg16AccY54 rho) = rho 16239 := by
      unfold seg16AccX54 seg16AccY54
      linear_combination r3667
    have ha1 : rho 16238 * seg16AccX54 rho = rho 16240 := by
      unfold seg16AccX54
      linear_combination r3668
    have ha2 : rho 16237 * seg16AccY54 rho = rho 16241 := by
      unfold seg16AccY54
      linear_combination r3669
    have ha3 : 3021 * rho 16240 * rho 16241 = rho 16242 := by
      linear_combination r3670
    have ha4 : rho 16243 * (1 + rho 16242) = rho 16240 + rho 16241 := by
      linear_combination r3671
    have ha5 : rho 16244 * (1 - rho 16242) = rho 16239 - rho 16240 - rho 16241 := by
      linear_combination r3672
    have haddx :
        rho 16243 * (1 + 3021 * (rho 16238 * seg16AccX54 rho) * (rho 16237 * seg16AccY54 rho)) =
          rho 16238 * seg16AccX54 rho + rho 16237 * seg16AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16244 * (1 - 3021 * (rho 16238 * seg16AccX54 rho) * (rho 16237 * seg16AccY54 rho)) =
          (-1) * (rho 16238 * seg16AccX54 rho) - rho 16237 * seg16AccY54 rho +
            (seg16AccY54 rho - seg16AccX54 rho * (-1)) * (rho 16237 + rho 16238) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16244 * (1 - rho 16242) = rho 16239 - rho 16240 - rho 16241 := ha5
        _ = (-1) * rho 16240 - rho 16241 + (seg16AccY54 rho - seg16AccX54 rho * (-1)) * (rho 16237 + rho 16238) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX55 rho = seg16AccX54 rho - Bool.toZMod bit * (seg16AccX54 rho - rho 16243) := by
      have hd : rho 16245 = Bool.toZMod bit * (rho 16243 - seg16AccX54 rho) := by
        rw [← hbit]
        unfold seg16AccX54
        linear_combination -r3673
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY55 rho = seg16AccY54 rho - Bool.toZMod bit * (seg16AccY54 rho - rho 16244) := by
      have hd : rho 16246 = Bool.toZMod bit * (rho 16244 - seg16AccY54 rho) := by
        rw [← hbit]
        unfold seg16AccY54
        linear_combination -r3674
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16237 * rho 16238 = rho 16247 := by linear_combination r3675
    have hd1 : rho 16237 * rho 16237 = rho 16248 := by linear_combination r3676
    have hd2 : rho 16238 * rho 16238 = rho 16249 := by linear_combination r3677
    have hd3 : rho 16250 * (rho 16238 * rho 16238 + rho 16237 * rho 16237 * (-1)) = 2 * (rho 16237 * rho 16238) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 16251 * (2 - (rho 16238 * rho 16238 + rho 16237 * rho 16237 * (-1))) = rho 16238 * rho 16238 - rho 16237 * rho 16237 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
      ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
      ⟨(rho 16243 : Seg16.F), (rho 16244 : Seg16.F)⟩
      ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
      ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg16_hstep_c4 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg16_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg16_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg16_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg16_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg16_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg16_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg16_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg16_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg16_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg16_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
