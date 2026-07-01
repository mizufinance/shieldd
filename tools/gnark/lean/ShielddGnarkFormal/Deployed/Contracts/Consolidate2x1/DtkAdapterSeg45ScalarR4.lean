import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3537 rho ∧ Seg45.relationRow3538 rho ∧ Seg45.relationRow3539 rho ∧ Seg45.relationRow3540 rho ∧ Seg45.relationRow3541 rho ∧ Seg45.relationRow3542 rho ∧ Seg45.relationRow3543 rho ∧ Seg45.relationRow3544 rho ∧ Seg45.relationRow3545 rho ∧ Seg45.relationRow3546 rho ∧ Seg45.relationRow3547 rho ∧ Seg45.relationRow3548 rho ∧ Seg45.relationRow3549 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩

theorem seg45_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40992 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩ := by
  obtain ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩ := seg45_rows44 rho h
  unfold Seg45.relationRow3537 at r3537
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3537
  unfold Seg45.relationRow3538 at r3538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538
  unfold Seg45.relationRow3539 at r3539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3539
  unfold Seg45.relationRow3540 at r3540
  unfold Seg45.relationRow3541 at r3541
  unfold Seg45.relationRow3542 at r3542
  unfold Seg45.relationRow3543 at r3543
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3543
  unfold Seg45.relationRow3544 at r3544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3544
  unfold Seg45.relationRow3545 at r3545
  unfold Seg45.relationRow3546 at r3546
  unfold Seg45.relationRow3547 at r3547
  unfold Seg45.relationRow3548 at r3548
  unfold Seg45.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 40992 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩ := by
    have hnextx : seg45AccX45 rho = seg45AccX44 rho + rho 41771 := by
      unfold seg45AccX45 seg45AccX44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 44]
      ring
    have hnexty : seg45AccY45 rho = seg45AccY44 rho + rho 41772 := by
      unfold seg45AccY45 seg45AccY44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 44]
      ring
    have ha0 : (rho 41763 + rho 41764) * (seg45AccX44 rho + seg45AccY44 rho) = rho 41765 := by
      unfold seg45AccX44 seg45AccY44
      linear_combination r3537
    have ha1 : rho 41764 * seg45AccX44 rho = rho 41766 := by
      unfold seg45AccX44
      linear_combination r3538
    have ha2 : rho 41763 * seg45AccY44 rho = rho 41767 := by
      unfold seg45AccY44
      linear_combination r3539
    have ha3 : 3021 * rho 41766 * rho 41767 = rho 41768 := by
      linear_combination r3540
    have ha4 : rho 41769 * (1 + rho 41768) = rho 41766 + rho 41767 := by
      linear_combination r3541
    have ha5 : rho 41770 * (1 - rho 41768) = rho 41765 - rho 41766 - rho 41767 := by
      linear_combination r3542
    have haddx :
        rho 41769 * (1 + 3021 * (rho 41764 * seg45AccX44 rho) * (rho 41763 * seg45AccY44 rho)) =
          rho 41764 * seg45AccX44 rho + rho 41763 * seg45AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41770 * (1 - 3021 * (rho 41764 * seg45AccX44 rho) * (rho 41763 * seg45AccY44 rho)) =
          (-1) * (rho 41764 * seg45AccX44 rho) - rho 41763 * seg45AccY44 rho +
            (seg45AccY44 rho - seg45AccX44 rho * (-1)) * (rho 41763 + rho 41764) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41770 * (1 - rho 41768) = rho 41765 - rho 41766 - rho 41767 := ha5
        _ = (-1) * rho 41766 - rho 41767 + (seg45AccY44 rho - seg45AccX44 rho * (-1)) * (rho 41763 + rho 41764) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX45 rho = seg45AccX44 rho - Bool.toZMod bit * (seg45AccX44 rho - rho 41769) := by
      have hd : rho 41771 = Bool.toZMod bit * (rho 41769 - seg45AccX44 rho) := by
        rw [← hbit]
        unfold seg45AccX44
        linear_combination -r3543
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY45 rho = seg45AccY44 rho - Bool.toZMod bit * (seg45AccY44 rho - rho 41770) := by
      have hd : rho 41772 = Bool.toZMod bit * (rho 41770 - seg45AccY44 rho) := by
        rw [← hbit]
        unfold seg45AccY44
        linear_combination -r3544
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41763 * rho 41764 = rho 41773 := by linear_combination r3545
    have hd1 : rho 41763 * rho 41763 = rho 41774 := by linear_combination r3546
    have hd2 : rho 41764 * rho 41764 = rho 41775 := by linear_combination r3547
    have hd3 : rho 41776 * (rho 41764 * rho 41764 + rho 41763 * rho 41763 * (-1)) = 2 * (rho 41763 * rho 41764) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 41777 * (2 - (rho 41764 * rho 41764 + rho 41763 * rho 41763 * (-1))) = rho 41764 * rho 41764 - rho 41763 * rho 41763 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
      ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
      ⟨(rho 41769 : Seg45.F), (rho 41770 : Seg45.F)⟩
      ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
      ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg45_rows45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3550 rho ∧ Seg45.relationRow3551 rho ∧ Seg45.relationRow3552 rho ∧ Seg45.relationRow3553 rho ∧ Seg45.relationRow3554 rho ∧ Seg45.relationRow3555 rho ∧ Seg45.relationRow3556 rho ∧ Seg45.relationRow3557 rho ∧ Seg45.relationRow3558 rho ∧ Seg45.relationRow3559 rho ∧ Seg45.relationRow3560 rho ∧ Seg45.relationRow3561 rho ∧ Seg45.relationRow3562 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩

theorem seg45_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40993 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩ := by
  obtain ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩ := seg45_rows45 rho h
  unfold Seg45.relationRow3550 at r3550
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3550
  unfold Seg45.relationRow3551 at r3551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551
  unfold Seg45.relationRow3552 at r3552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3552
  unfold Seg45.relationRow3553 at r3553
  unfold Seg45.relationRow3554 at r3554
  unfold Seg45.relationRow3555 at r3555
  unfold Seg45.relationRow3556 at r3556
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3556
  unfold Seg45.relationRow3557 at r3557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3557
  unfold Seg45.relationRow3558 at r3558
  unfold Seg45.relationRow3559 at r3559
  unfold Seg45.relationRow3560 at r3560
  unfold Seg45.relationRow3561 at r3561
  unfold Seg45.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 40993 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩ := by
    have hnextx : seg45AccX46 rho = seg45AccX45 rho + rho 41784 := by
      unfold seg45AccX46 seg45AccX45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 45]
      ring
    have hnexty : seg45AccY46 rho = seg45AccY45 rho + rho 41785 := by
      unfold seg45AccY46 seg45AccY45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 45]
      ring
    have ha0 : (rho 41776 + rho 41777) * (seg45AccX45 rho + seg45AccY45 rho) = rho 41778 := by
      unfold seg45AccX45 seg45AccY45
      linear_combination r3550
    have ha1 : rho 41777 * seg45AccX45 rho = rho 41779 := by
      unfold seg45AccX45
      linear_combination r3551
    have ha2 : rho 41776 * seg45AccY45 rho = rho 41780 := by
      unfold seg45AccY45
      linear_combination r3552
    have ha3 : 3021 * rho 41779 * rho 41780 = rho 41781 := by
      linear_combination r3553
    have ha4 : rho 41782 * (1 + rho 41781) = rho 41779 + rho 41780 := by
      linear_combination r3554
    have ha5 : rho 41783 * (1 - rho 41781) = rho 41778 - rho 41779 - rho 41780 := by
      linear_combination r3555
    have haddx :
        rho 41782 * (1 + 3021 * (rho 41777 * seg45AccX45 rho) * (rho 41776 * seg45AccY45 rho)) =
          rho 41777 * seg45AccX45 rho + rho 41776 * seg45AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41783 * (1 - 3021 * (rho 41777 * seg45AccX45 rho) * (rho 41776 * seg45AccY45 rho)) =
          (-1) * (rho 41777 * seg45AccX45 rho) - rho 41776 * seg45AccY45 rho +
            (seg45AccY45 rho - seg45AccX45 rho * (-1)) * (rho 41776 + rho 41777) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41783 * (1 - rho 41781) = rho 41778 - rho 41779 - rho 41780 := ha5
        _ = (-1) * rho 41779 - rho 41780 + (seg45AccY45 rho - seg45AccX45 rho * (-1)) * (rho 41776 + rho 41777) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX46 rho = seg45AccX45 rho - Bool.toZMod bit * (seg45AccX45 rho - rho 41782) := by
      have hd : rho 41784 = Bool.toZMod bit * (rho 41782 - seg45AccX45 rho) := by
        rw [← hbit]
        unfold seg45AccX45
        linear_combination -r3556
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY46 rho = seg45AccY45 rho - Bool.toZMod bit * (seg45AccY45 rho - rho 41783) := by
      have hd : rho 41785 = Bool.toZMod bit * (rho 41783 - seg45AccY45 rho) := by
        rw [← hbit]
        unfold seg45AccY45
        linear_combination -r3557
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41776 * rho 41777 = rho 41786 := by linear_combination r3558
    have hd1 : rho 41776 * rho 41776 = rho 41787 := by linear_combination r3559
    have hd2 : rho 41777 * rho 41777 = rho 41788 := by linear_combination r3560
    have hd3 : rho 41789 * (rho 41777 * rho 41777 + rho 41776 * rho 41776 * (-1)) = 2 * (rho 41776 * rho 41777) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 41790 * (2 - (rho 41777 * rho 41777 + rho 41776 * rho 41776 * (-1))) = rho 41777 * rho 41777 - rho 41776 * rho 41776 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
      ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
      ⟨(rho 41782 : Seg45.F), (rho 41783 : Seg45.F)⟩
      ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
      ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg45_rows46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3563 rho ∧ Seg45.relationRow3564 rho ∧ Seg45.relationRow3565 rho ∧ Seg45.relationRow3566 rho ∧ Seg45.relationRow3567 rho ∧ Seg45.relationRow3568 rho ∧ Seg45.relationRow3569 rho ∧ Seg45.relationRow3570 rho ∧ Seg45.relationRow3571 rho ∧ Seg45.relationRow3572 rho ∧ Seg45.relationRow3573 rho ∧ Seg45.relationRow3574 rho ∧ Seg45.relationRow3575 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩

theorem seg45_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40994 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩ := by
  obtain ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩ := seg45_rows46 rho h
  unfold Seg45.relationRow3563 at r3563
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3563
  unfold Seg45.relationRow3564 at r3564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564
  unfold Seg45.relationRow3565 at r3565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3565
  unfold Seg45.relationRow3566 at r3566
  unfold Seg45.relationRow3567 at r3567
  unfold Seg45.relationRow3568 at r3568
  unfold Seg45.relationRow3569 at r3569
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3569
  unfold Seg45.relationRow3570 at r3570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3570
  unfold Seg45.relationRow3571 at r3571
  unfold Seg45.relationRow3572 at r3572
  unfold Seg45.relationRow3573 at r3573
  unfold Seg45.relationRow3574 at r3574
  unfold Seg45.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 40994 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩ := by
    have hnextx : seg45AccX47 rho = seg45AccX46 rho + rho 41797 := by
      unfold seg45AccX47 seg45AccX46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 46]
      ring
    have hnexty : seg45AccY47 rho = seg45AccY46 rho + rho 41798 := by
      unfold seg45AccY47 seg45AccY46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 46]
      ring
    have ha0 : (rho 41789 + rho 41790) * (seg45AccX46 rho + seg45AccY46 rho) = rho 41791 := by
      unfold seg45AccX46 seg45AccY46
      linear_combination r3563
    have ha1 : rho 41790 * seg45AccX46 rho = rho 41792 := by
      unfold seg45AccX46
      linear_combination r3564
    have ha2 : rho 41789 * seg45AccY46 rho = rho 41793 := by
      unfold seg45AccY46
      linear_combination r3565
    have ha3 : 3021 * rho 41792 * rho 41793 = rho 41794 := by
      linear_combination r3566
    have ha4 : rho 41795 * (1 + rho 41794) = rho 41792 + rho 41793 := by
      linear_combination r3567
    have ha5 : rho 41796 * (1 - rho 41794) = rho 41791 - rho 41792 - rho 41793 := by
      linear_combination r3568
    have haddx :
        rho 41795 * (1 + 3021 * (rho 41790 * seg45AccX46 rho) * (rho 41789 * seg45AccY46 rho)) =
          rho 41790 * seg45AccX46 rho + rho 41789 * seg45AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41796 * (1 - 3021 * (rho 41790 * seg45AccX46 rho) * (rho 41789 * seg45AccY46 rho)) =
          (-1) * (rho 41790 * seg45AccX46 rho) - rho 41789 * seg45AccY46 rho +
            (seg45AccY46 rho - seg45AccX46 rho * (-1)) * (rho 41789 + rho 41790) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41796 * (1 - rho 41794) = rho 41791 - rho 41792 - rho 41793 := ha5
        _ = (-1) * rho 41792 - rho 41793 + (seg45AccY46 rho - seg45AccX46 rho * (-1)) * (rho 41789 + rho 41790) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX47 rho = seg45AccX46 rho - Bool.toZMod bit * (seg45AccX46 rho - rho 41795) := by
      have hd : rho 41797 = Bool.toZMod bit * (rho 41795 - seg45AccX46 rho) := by
        rw [← hbit]
        unfold seg45AccX46
        linear_combination -r3569
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY47 rho = seg45AccY46 rho - Bool.toZMod bit * (seg45AccY46 rho - rho 41796) := by
      have hd : rho 41798 = Bool.toZMod bit * (rho 41796 - seg45AccY46 rho) := by
        rw [← hbit]
        unfold seg45AccY46
        linear_combination -r3570
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41789 * rho 41790 = rho 41799 := by linear_combination r3571
    have hd1 : rho 41789 * rho 41789 = rho 41800 := by linear_combination r3572
    have hd2 : rho 41790 * rho 41790 = rho 41801 := by linear_combination r3573
    have hd3 : rho 41802 * (rho 41790 * rho 41790 + rho 41789 * rho 41789 * (-1)) = 2 * (rho 41789 * rho 41790) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 41803 * (2 - (rho 41790 * rho 41790 + rho 41789 * rho 41789 * (-1))) = rho 41790 * rho 41790 - rho 41789 * rho 41789 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
      ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
      ⟨(rho 41795 : Seg45.F), (rho 41796 : Seg45.F)⟩
      ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
      ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg45_rows47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3576 rho ∧ Seg45.relationRow3577 rho ∧ Seg45.relationRow3578 rho ∧ Seg45.relationRow3579 rho ∧ Seg45.relationRow3580 rho ∧ Seg45.relationRow3581 rho ∧ Seg45.relationRow3582 rho ∧ Seg45.relationRow3583 rho ∧ Seg45.relationRow3584 rho ∧ Seg45.relationRow3585 rho ∧ Seg45.relationRow3586 rho ∧ Seg45.relationRow3587 rho ∧ Seg45.relationRow3588 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩

theorem seg45_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40995 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩ := by
  obtain ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩ := seg45_rows47 rho h
  unfold Seg45.relationRow3576 at r3576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3576
  unfold Seg45.relationRow3577 at r3577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577
  unfold Seg45.relationRow3578 at r3578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3578
  unfold Seg45.relationRow3579 at r3579
  unfold Seg45.relationRow3580 at r3580
  unfold Seg45.relationRow3581 at r3581
  unfold Seg45.relationRow3582 at r3582
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3582
  unfold Seg45.relationRow3583 at r3583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3583
  unfold Seg45.relationRow3584 at r3584
  unfold Seg45.relationRow3585 at r3585
  unfold Seg45.relationRow3586 at r3586
  unfold Seg45.relationRow3587 at r3587
  unfold Seg45.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 40995 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩ := by
    have hnextx : seg45AccX48 rho = seg45AccX47 rho + rho 41810 := by
      unfold seg45AccX48 seg45AccX47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 47]
      ring
    have hnexty : seg45AccY48 rho = seg45AccY47 rho + rho 41811 := by
      unfold seg45AccY48 seg45AccY47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 47]
      ring
    have ha0 : (rho 41802 + rho 41803) * (seg45AccX47 rho + seg45AccY47 rho) = rho 41804 := by
      unfold seg45AccX47 seg45AccY47
      linear_combination r3576
    have ha1 : rho 41803 * seg45AccX47 rho = rho 41805 := by
      unfold seg45AccX47
      linear_combination r3577
    have ha2 : rho 41802 * seg45AccY47 rho = rho 41806 := by
      unfold seg45AccY47
      linear_combination r3578
    have ha3 : 3021 * rho 41805 * rho 41806 = rho 41807 := by
      linear_combination r3579
    have ha4 : rho 41808 * (1 + rho 41807) = rho 41805 + rho 41806 := by
      linear_combination r3580
    have ha5 : rho 41809 * (1 - rho 41807) = rho 41804 - rho 41805 - rho 41806 := by
      linear_combination r3581
    have haddx :
        rho 41808 * (1 + 3021 * (rho 41803 * seg45AccX47 rho) * (rho 41802 * seg45AccY47 rho)) =
          rho 41803 * seg45AccX47 rho + rho 41802 * seg45AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41809 * (1 - 3021 * (rho 41803 * seg45AccX47 rho) * (rho 41802 * seg45AccY47 rho)) =
          (-1) * (rho 41803 * seg45AccX47 rho) - rho 41802 * seg45AccY47 rho +
            (seg45AccY47 rho - seg45AccX47 rho * (-1)) * (rho 41802 + rho 41803) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41809 * (1 - rho 41807) = rho 41804 - rho 41805 - rho 41806 := ha5
        _ = (-1) * rho 41805 - rho 41806 + (seg45AccY47 rho - seg45AccX47 rho * (-1)) * (rho 41802 + rho 41803) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX48 rho = seg45AccX47 rho - Bool.toZMod bit * (seg45AccX47 rho - rho 41808) := by
      have hd : rho 41810 = Bool.toZMod bit * (rho 41808 - seg45AccX47 rho) := by
        rw [← hbit]
        unfold seg45AccX47
        linear_combination -r3582
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY48 rho = seg45AccY47 rho - Bool.toZMod bit * (seg45AccY47 rho - rho 41809) := by
      have hd : rho 41811 = Bool.toZMod bit * (rho 41809 - seg45AccY47 rho) := by
        rw [← hbit]
        unfold seg45AccY47
        linear_combination -r3583
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41802 * rho 41803 = rho 41812 := by linear_combination r3584
    have hd1 : rho 41802 * rho 41802 = rho 41813 := by linear_combination r3585
    have hd2 : rho 41803 * rho 41803 = rho 41814 := by linear_combination r3586
    have hd3 : rho 41815 * (rho 41803 * rho 41803 + rho 41802 * rho 41802 * (-1)) = 2 * (rho 41802 * rho 41803) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 41816 * (2 - (rho 41803 * rho 41803 + rho 41802 * rho 41802 * (-1))) = rho 41803 * rho 41803 - rho 41802 * rho 41802 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
      ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
      ⟨(rho 41808 : Seg45.F), (rho 41809 : Seg45.F)⟩
      ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
      ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg45_rows48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3589 rho ∧ Seg45.relationRow3590 rho ∧ Seg45.relationRow3591 rho ∧ Seg45.relationRow3592 rho ∧ Seg45.relationRow3593 rho ∧ Seg45.relationRow3594 rho ∧ Seg45.relationRow3595 rho ∧ Seg45.relationRow3596 rho ∧ Seg45.relationRow3597 rho ∧ Seg45.relationRow3598 rho ∧ Seg45.relationRow3599 rho ∧ Seg45.relationRow3600 rho ∧ Seg45.relationRow3601 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩

theorem seg45_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40996 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩ := by
  obtain ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩ := seg45_rows48 rho h
  unfold Seg45.relationRow3589 at r3589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3589
  unfold Seg45.relationRow3590 at r3590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590
  unfold Seg45.relationRow3591 at r3591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3591
  unfold Seg45.relationRow3592 at r3592
  unfold Seg45.relationRow3593 at r3593
  unfold Seg45.relationRow3594 at r3594
  unfold Seg45.relationRow3595 at r3595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3595
  unfold Seg45.relationRow3596 at r3596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3596
  unfold Seg45.relationRow3597 at r3597
  unfold Seg45.relationRow3598 at r3598
  unfold Seg45.relationRow3599 at r3599
  unfold Seg45.relationRow3600 at r3600
  unfold Seg45.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 40996 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩ := by
    have hnextx : seg45AccX49 rho = seg45AccX48 rho + rho 41823 := by
      unfold seg45AccX49 seg45AccX48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 48]
      ring
    have hnexty : seg45AccY49 rho = seg45AccY48 rho + rho 41824 := by
      unfold seg45AccY49 seg45AccY48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 48]
      ring
    have ha0 : (rho 41815 + rho 41816) * (seg45AccX48 rho + seg45AccY48 rho) = rho 41817 := by
      unfold seg45AccX48 seg45AccY48
      linear_combination r3589
    have ha1 : rho 41816 * seg45AccX48 rho = rho 41818 := by
      unfold seg45AccX48
      linear_combination r3590
    have ha2 : rho 41815 * seg45AccY48 rho = rho 41819 := by
      unfold seg45AccY48
      linear_combination r3591
    have ha3 : 3021 * rho 41818 * rho 41819 = rho 41820 := by
      linear_combination r3592
    have ha4 : rho 41821 * (1 + rho 41820) = rho 41818 + rho 41819 := by
      linear_combination r3593
    have ha5 : rho 41822 * (1 - rho 41820) = rho 41817 - rho 41818 - rho 41819 := by
      linear_combination r3594
    have haddx :
        rho 41821 * (1 + 3021 * (rho 41816 * seg45AccX48 rho) * (rho 41815 * seg45AccY48 rho)) =
          rho 41816 * seg45AccX48 rho + rho 41815 * seg45AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41822 * (1 - 3021 * (rho 41816 * seg45AccX48 rho) * (rho 41815 * seg45AccY48 rho)) =
          (-1) * (rho 41816 * seg45AccX48 rho) - rho 41815 * seg45AccY48 rho +
            (seg45AccY48 rho - seg45AccX48 rho * (-1)) * (rho 41815 + rho 41816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41822 * (1 - rho 41820) = rho 41817 - rho 41818 - rho 41819 := ha5
        _ = (-1) * rho 41818 - rho 41819 + (seg45AccY48 rho - seg45AccX48 rho * (-1)) * (rho 41815 + rho 41816) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX49 rho = seg45AccX48 rho - Bool.toZMod bit * (seg45AccX48 rho - rho 41821) := by
      have hd : rho 41823 = Bool.toZMod bit * (rho 41821 - seg45AccX48 rho) := by
        rw [← hbit]
        unfold seg45AccX48
        linear_combination -r3595
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY49 rho = seg45AccY48 rho - Bool.toZMod bit * (seg45AccY48 rho - rho 41822) := by
      have hd : rho 41824 = Bool.toZMod bit * (rho 41822 - seg45AccY48 rho) := by
        rw [← hbit]
        unfold seg45AccY48
        linear_combination -r3596
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41815 * rho 41816 = rho 41825 := by linear_combination r3597
    have hd1 : rho 41815 * rho 41815 = rho 41826 := by linear_combination r3598
    have hd2 : rho 41816 * rho 41816 = rho 41827 := by linear_combination r3599
    have hd3 : rho 41828 * (rho 41816 * rho 41816 + rho 41815 * rho 41815 * (-1)) = 2 * (rho 41815 * rho 41816) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 41829 * (2 - (rho 41816 * rho 41816 + rho 41815 * rho 41815 * (-1))) = rho 41816 * rho 41816 - rho 41815 * rho 41815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
      ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
      ⟨(rho 41821 : Seg45.F), (rho 41822 : Seg45.F)⟩
      ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
      ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg45_rows49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3602 rho ∧ Seg45.relationRow3603 rho ∧ Seg45.relationRow3604 rho ∧ Seg45.relationRow3605 rho ∧ Seg45.relationRow3606 rho ∧ Seg45.relationRow3607 rho ∧ Seg45.relationRow3608 rho ∧ Seg45.relationRow3609 rho ∧ Seg45.relationRow3610 rho ∧ Seg45.relationRow3611 rho ∧ Seg45.relationRow3612 rho ∧ Seg45.relationRow3613 rho ∧ Seg45.relationRow3614 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩

theorem seg45_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40997 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩ := by
  obtain ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩ := seg45_rows49 rho h
  unfold Seg45.relationRow3602 at r3602
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3602
  unfold Seg45.relationRow3603 at r3603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603
  unfold Seg45.relationRow3604 at r3604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3604
  unfold Seg45.relationRow3605 at r3605
  unfold Seg45.relationRow3606 at r3606
  unfold Seg45.relationRow3607 at r3607
  unfold Seg45.relationRow3608 at r3608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3608
  unfold Seg45.relationRow3609 at r3609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3609
  unfold Seg45.relationRow3610 at r3610
  unfold Seg45.relationRow3611 at r3611
  unfold Seg45.relationRow3612 at r3612
  unfold Seg45.relationRow3613 at r3613
  unfold Seg45.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 40997 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩ := by
    have hnextx : seg45AccX50 rho = seg45AccX49 rho + rho 41836 := by
      unfold seg45AccX50 seg45AccX49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 49]
      ring
    have hnexty : seg45AccY50 rho = seg45AccY49 rho + rho 41837 := by
      unfold seg45AccY50 seg45AccY49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 49]
      ring
    have ha0 : (rho 41828 + rho 41829) * (seg45AccX49 rho + seg45AccY49 rho) = rho 41830 := by
      unfold seg45AccX49 seg45AccY49
      linear_combination r3602
    have ha1 : rho 41829 * seg45AccX49 rho = rho 41831 := by
      unfold seg45AccX49
      linear_combination r3603
    have ha2 : rho 41828 * seg45AccY49 rho = rho 41832 := by
      unfold seg45AccY49
      linear_combination r3604
    have ha3 : 3021 * rho 41831 * rho 41832 = rho 41833 := by
      linear_combination r3605
    have ha4 : rho 41834 * (1 + rho 41833) = rho 41831 + rho 41832 := by
      linear_combination r3606
    have ha5 : rho 41835 * (1 - rho 41833) = rho 41830 - rho 41831 - rho 41832 := by
      linear_combination r3607
    have haddx :
        rho 41834 * (1 + 3021 * (rho 41829 * seg45AccX49 rho) * (rho 41828 * seg45AccY49 rho)) =
          rho 41829 * seg45AccX49 rho + rho 41828 * seg45AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41835 * (1 - 3021 * (rho 41829 * seg45AccX49 rho) * (rho 41828 * seg45AccY49 rho)) =
          (-1) * (rho 41829 * seg45AccX49 rho) - rho 41828 * seg45AccY49 rho +
            (seg45AccY49 rho - seg45AccX49 rho * (-1)) * (rho 41828 + rho 41829) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41835 * (1 - rho 41833) = rho 41830 - rho 41831 - rho 41832 := ha5
        _ = (-1) * rho 41831 - rho 41832 + (seg45AccY49 rho - seg45AccX49 rho * (-1)) * (rho 41828 + rho 41829) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX50 rho = seg45AccX49 rho - Bool.toZMod bit * (seg45AccX49 rho - rho 41834) := by
      have hd : rho 41836 = Bool.toZMod bit * (rho 41834 - seg45AccX49 rho) := by
        rw [← hbit]
        unfold seg45AccX49
        linear_combination -r3608
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY50 rho = seg45AccY49 rho - Bool.toZMod bit * (seg45AccY49 rho - rho 41835) := by
      have hd : rho 41837 = Bool.toZMod bit * (rho 41835 - seg45AccY49 rho) := by
        rw [← hbit]
        unfold seg45AccY49
        linear_combination -r3609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41828 * rho 41829 = rho 41838 := by linear_combination r3610
    have hd1 : rho 41828 * rho 41828 = rho 41839 := by linear_combination r3611
    have hd2 : rho 41829 * rho 41829 = rho 41840 := by linear_combination r3612
    have hd3 : rho 41841 * (rho 41829 * rho 41829 + rho 41828 * rho 41828 * (-1)) = 2 * (rho 41828 * rho 41829) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 41842 * (2 - (rho 41829 * rho 41829 + rho 41828 * rho 41828 * (-1))) = rho 41829 * rho 41829 - rho 41828 * rho 41828 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
      ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
      ⟨(rho 41834 : Seg45.F), (rho 41835 : Seg45.F)⟩
      ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
      ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg45_rows50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3615 rho ∧ Seg45.relationRow3616 rho ∧ Seg45.relationRow3617 rho ∧ Seg45.relationRow3618 rho ∧ Seg45.relationRow3619 rho ∧ Seg45.relationRow3620 rho ∧ Seg45.relationRow3621 rho ∧ Seg45.relationRow3622 rho ∧ Seg45.relationRow3623 rho ∧ Seg45.relationRow3624 rho ∧ Seg45.relationRow3625 rho ∧ Seg45.relationRow3626 rho ∧ Seg45.relationRow3627 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩

theorem seg45_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40998 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩ := by
  obtain ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩ := seg45_rows50 rho h
  unfold Seg45.relationRow3615 at r3615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3615
  unfold Seg45.relationRow3616 at r3616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616
  unfold Seg45.relationRow3617 at r3617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3617
  unfold Seg45.relationRow3618 at r3618
  unfold Seg45.relationRow3619 at r3619
  unfold Seg45.relationRow3620 at r3620
  unfold Seg45.relationRow3621 at r3621
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3621
  unfold Seg45.relationRow3622 at r3622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3622
  unfold Seg45.relationRow3623 at r3623
  unfold Seg45.relationRow3624 at r3624
  unfold Seg45.relationRow3625 at r3625
  unfold Seg45.relationRow3626 at r3626
  unfold Seg45.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 40998 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩ := by
    have hnextx : seg45AccX51 rho = seg45AccX50 rho + rho 41849 := by
      unfold seg45AccX51 seg45AccX50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 50]
      ring
    have hnexty : seg45AccY51 rho = seg45AccY50 rho + rho 41850 := by
      unfold seg45AccY51 seg45AccY50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 50]
      ring
    have ha0 : (rho 41841 + rho 41842) * (seg45AccX50 rho + seg45AccY50 rho) = rho 41843 := by
      unfold seg45AccX50 seg45AccY50
      linear_combination r3615
    have ha1 : rho 41842 * seg45AccX50 rho = rho 41844 := by
      unfold seg45AccX50
      linear_combination r3616
    have ha2 : rho 41841 * seg45AccY50 rho = rho 41845 := by
      unfold seg45AccY50
      linear_combination r3617
    have ha3 : 3021 * rho 41844 * rho 41845 = rho 41846 := by
      linear_combination r3618
    have ha4 : rho 41847 * (1 + rho 41846) = rho 41844 + rho 41845 := by
      linear_combination r3619
    have ha5 : rho 41848 * (1 - rho 41846) = rho 41843 - rho 41844 - rho 41845 := by
      linear_combination r3620
    have haddx :
        rho 41847 * (1 + 3021 * (rho 41842 * seg45AccX50 rho) * (rho 41841 * seg45AccY50 rho)) =
          rho 41842 * seg45AccX50 rho + rho 41841 * seg45AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41848 * (1 - 3021 * (rho 41842 * seg45AccX50 rho) * (rho 41841 * seg45AccY50 rho)) =
          (-1) * (rho 41842 * seg45AccX50 rho) - rho 41841 * seg45AccY50 rho +
            (seg45AccY50 rho - seg45AccX50 rho * (-1)) * (rho 41841 + rho 41842) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41848 * (1 - rho 41846) = rho 41843 - rho 41844 - rho 41845 := ha5
        _ = (-1) * rho 41844 - rho 41845 + (seg45AccY50 rho - seg45AccX50 rho * (-1)) * (rho 41841 + rho 41842) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX51 rho = seg45AccX50 rho - Bool.toZMod bit * (seg45AccX50 rho - rho 41847) := by
      have hd : rho 41849 = Bool.toZMod bit * (rho 41847 - seg45AccX50 rho) := by
        rw [← hbit]
        unfold seg45AccX50
        linear_combination -r3621
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY51 rho = seg45AccY50 rho - Bool.toZMod bit * (seg45AccY50 rho - rho 41848) := by
      have hd : rho 41850 = Bool.toZMod bit * (rho 41848 - seg45AccY50 rho) := by
        rw [← hbit]
        unfold seg45AccY50
        linear_combination -r3622
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41841 * rho 41842 = rho 41851 := by linear_combination r3623
    have hd1 : rho 41841 * rho 41841 = rho 41852 := by linear_combination r3624
    have hd2 : rho 41842 * rho 41842 = rho 41853 := by linear_combination r3625
    have hd3 : rho 41854 * (rho 41842 * rho 41842 + rho 41841 * rho 41841 * (-1)) = 2 * (rho 41841 * rho 41842) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 41855 * (2 - (rho 41842 * rho 41842 + rho 41841 * rho 41841 * (-1))) = rho 41842 * rho 41842 - rho 41841 * rho 41841 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
      ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
      ⟨(rho 41847 : Seg45.F), (rho 41848 : Seg45.F)⟩
      ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
      ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg45_rows51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3628 rho ∧ Seg45.relationRow3629 rho ∧ Seg45.relationRow3630 rho ∧ Seg45.relationRow3631 rho ∧ Seg45.relationRow3632 rho ∧ Seg45.relationRow3633 rho ∧ Seg45.relationRow3634 rho ∧ Seg45.relationRow3635 rho ∧ Seg45.relationRow3636 rho ∧ Seg45.relationRow3637 rho ∧ Seg45.relationRow3638 rho ∧ Seg45.relationRow3639 rho ∧ Seg45.relationRow3640 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩

theorem seg45_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40999 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩ := by
  obtain ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩ := seg45_rows51 rho h
  unfold Seg45.relationRow3628 at r3628
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3628
  unfold Seg45.relationRow3629 at r3629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629
  unfold Seg45.relationRow3630 at r3630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3630
  unfold Seg45.relationRow3631 at r3631
  unfold Seg45.relationRow3632 at r3632
  unfold Seg45.relationRow3633 at r3633
  unfold Seg45.relationRow3634 at r3634
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3634
  unfold Seg45.relationRow3635 at r3635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3635
  unfold Seg45.relationRow3636 at r3636
  unfold Seg45.relationRow3637 at r3637
  unfold Seg45.relationRow3638 at r3638
  unfold Seg45.relationRow3639 at r3639
  unfold Seg45.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 40999 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩ := by
    have hnextx : seg45AccX52 rho = seg45AccX51 rho + rho 41862 := by
      unfold seg45AccX52 seg45AccX51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 51]
      ring
    have hnexty : seg45AccY52 rho = seg45AccY51 rho + rho 41863 := by
      unfold seg45AccY52 seg45AccY51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 51]
      ring
    have ha0 : (rho 41854 + rho 41855) * (seg45AccX51 rho + seg45AccY51 rho) = rho 41856 := by
      unfold seg45AccX51 seg45AccY51
      linear_combination r3628
    have ha1 : rho 41855 * seg45AccX51 rho = rho 41857 := by
      unfold seg45AccX51
      linear_combination r3629
    have ha2 : rho 41854 * seg45AccY51 rho = rho 41858 := by
      unfold seg45AccY51
      linear_combination r3630
    have ha3 : 3021 * rho 41857 * rho 41858 = rho 41859 := by
      linear_combination r3631
    have ha4 : rho 41860 * (1 + rho 41859) = rho 41857 + rho 41858 := by
      linear_combination r3632
    have ha5 : rho 41861 * (1 - rho 41859) = rho 41856 - rho 41857 - rho 41858 := by
      linear_combination r3633
    have haddx :
        rho 41860 * (1 + 3021 * (rho 41855 * seg45AccX51 rho) * (rho 41854 * seg45AccY51 rho)) =
          rho 41855 * seg45AccX51 rho + rho 41854 * seg45AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41861 * (1 - 3021 * (rho 41855 * seg45AccX51 rho) * (rho 41854 * seg45AccY51 rho)) =
          (-1) * (rho 41855 * seg45AccX51 rho) - rho 41854 * seg45AccY51 rho +
            (seg45AccY51 rho - seg45AccX51 rho * (-1)) * (rho 41854 + rho 41855) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41861 * (1 - rho 41859) = rho 41856 - rho 41857 - rho 41858 := ha5
        _ = (-1) * rho 41857 - rho 41858 + (seg45AccY51 rho - seg45AccX51 rho * (-1)) * (rho 41854 + rho 41855) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX52 rho = seg45AccX51 rho - Bool.toZMod bit * (seg45AccX51 rho - rho 41860) := by
      have hd : rho 41862 = Bool.toZMod bit * (rho 41860 - seg45AccX51 rho) := by
        rw [← hbit]
        unfold seg45AccX51
        linear_combination -r3634
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY52 rho = seg45AccY51 rho - Bool.toZMod bit * (seg45AccY51 rho - rho 41861) := by
      have hd : rho 41863 = Bool.toZMod bit * (rho 41861 - seg45AccY51 rho) := by
        rw [← hbit]
        unfold seg45AccY51
        linear_combination -r3635
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41854 * rho 41855 = rho 41864 := by linear_combination r3636
    have hd1 : rho 41854 * rho 41854 = rho 41865 := by linear_combination r3637
    have hd2 : rho 41855 * rho 41855 = rho 41866 := by linear_combination r3638
    have hd3 : rho 41867 * (rho 41855 * rho 41855 + rho 41854 * rho 41854 * (-1)) = 2 * (rho 41854 * rho 41855) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 41868 * (2 - (rho 41855 * rho 41855 + rho 41854 * rho 41854 * (-1))) = rho 41855 * rho 41855 - rho 41854 * rho 41854 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
      ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
      ⟨(rho 41860 : Seg45.F), (rho 41861 : Seg45.F)⟩
      ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
      ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg45_rows52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3641 rho ∧ Seg45.relationRow3642 rho ∧ Seg45.relationRow3643 rho ∧ Seg45.relationRow3644 rho ∧ Seg45.relationRow3645 rho ∧ Seg45.relationRow3646 rho ∧ Seg45.relationRow3647 rho ∧ Seg45.relationRow3648 rho ∧ Seg45.relationRow3649 rho ∧ Seg45.relationRow3650 rho ∧ Seg45.relationRow3651 rho ∧ Seg45.relationRow3652 rho ∧ Seg45.relationRow3653 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩

theorem seg45_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41000 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩ := by
  obtain ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩ := seg45_rows52 rho h
  unfold Seg45.relationRow3641 at r3641
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3641
  unfold Seg45.relationRow3642 at r3642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642
  unfold Seg45.relationRow3643 at r3643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3643
  unfold Seg45.relationRow3644 at r3644
  unfold Seg45.relationRow3645 at r3645
  unfold Seg45.relationRow3646 at r3646
  unfold Seg45.relationRow3647 at r3647
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3647
  unfold Seg45.relationRow3648 at r3648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3648
  unfold Seg45.relationRow3649 at r3649
  unfold Seg45.relationRow3650 at r3650
  unfold Seg45.relationRow3651 at r3651
  unfold Seg45.relationRow3652 at r3652
  unfold Seg45.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 41000 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩ := by
    have hnextx : seg45AccX53 rho = seg45AccX52 rho + rho 41875 := by
      unfold seg45AccX53 seg45AccX52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 52]
      ring
    have hnexty : seg45AccY53 rho = seg45AccY52 rho + rho 41876 := by
      unfold seg45AccY53 seg45AccY52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 52]
      ring
    have ha0 : (rho 41867 + rho 41868) * (seg45AccX52 rho + seg45AccY52 rho) = rho 41869 := by
      unfold seg45AccX52 seg45AccY52
      linear_combination r3641
    have ha1 : rho 41868 * seg45AccX52 rho = rho 41870 := by
      unfold seg45AccX52
      linear_combination r3642
    have ha2 : rho 41867 * seg45AccY52 rho = rho 41871 := by
      unfold seg45AccY52
      linear_combination r3643
    have ha3 : 3021 * rho 41870 * rho 41871 = rho 41872 := by
      linear_combination r3644
    have ha4 : rho 41873 * (1 + rho 41872) = rho 41870 + rho 41871 := by
      linear_combination r3645
    have ha5 : rho 41874 * (1 - rho 41872) = rho 41869 - rho 41870 - rho 41871 := by
      linear_combination r3646
    have haddx :
        rho 41873 * (1 + 3021 * (rho 41868 * seg45AccX52 rho) * (rho 41867 * seg45AccY52 rho)) =
          rho 41868 * seg45AccX52 rho + rho 41867 * seg45AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41874 * (1 - 3021 * (rho 41868 * seg45AccX52 rho) * (rho 41867 * seg45AccY52 rho)) =
          (-1) * (rho 41868 * seg45AccX52 rho) - rho 41867 * seg45AccY52 rho +
            (seg45AccY52 rho - seg45AccX52 rho * (-1)) * (rho 41867 + rho 41868) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41874 * (1 - rho 41872) = rho 41869 - rho 41870 - rho 41871 := ha5
        _ = (-1) * rho 41870 - rho 41871 + (seg45AccY52 rho - seg45AccX52 rho * (-1)) * (rho 41867 + rho 41868) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX53 rho = seg45AccX52 rho - Bool.toZMod bit * (seg45AccX52 rho - rho 41873) := by
      have hd : rho 41875 = Bool.toZMod bit * (rho 41873 - seg45AccX52 rho) := by
        rw [← hbit]
        unfold seg45AccX52
        linear_combination -r3647
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY53 rho = seg45AccY52 rho - Bool.toZMod bit * (seg45AccY52 rho - rho 41874) := by
      have hd : rho 41876 = Bool.toZMod bit * (rho 41874 - seg45AccY52 rho) := by
        rw [← hbit]
        unfold seg45AccY52
        linear_combination -r3648
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41867 * rho 41868 = rho 41877 := by linear_combination r3649
    have hd1 : rho 41867 * rho 41867 = rho 41878 := by linear_combination r3650
    have hd2 : rho 41868 * rho 41868 = rho 41879 := by linear_combination r3651
    have hd3 : rho 41880 * (rho 41868 * rho 41868 + rho 41867 * rho 41867 * (-1)) = 2 * (rho 41867 * rho 41868) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 41881 * (2 - (rho 41868 * rho 41868 + rho 41867 * rho 41867 * (-1))) = rho 41868 * rho 41868 - rho 41867 * rho 41867 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
      ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
      ⟨(rho 41873 : Seg45.F), (rho 41874 : Seg45.F)⟩
      ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
      ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg45_rows53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3654 rho ∧ Seg45.relationRow3655 rho ∧ Seg45.relationRow3656 rho ∧ Seg45.relationRow3657 rho ∧ Seg45.relationRow3658 rho ∧ Seg45.relationRow3659 rho ∧ Seg45.relationRow3660 rho ∧ Seg45.relationRow3661 rho ∧ Seg45.relationRow3662 rho ∧ Seg45.relationRow3663 rho ∧ Seg45.relationRow3664 rho ∧ Seg45.relationRow3665 rho ∧ Seg45.relationRow3666 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩

theorem seg45_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41001 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩ := by
  obtain ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩ := seg45_rows53 rho h
  unfold Seg45.relationRow3654 at r3654
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3654
  unfold Seg45.relationRow3655 at r3655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655
  unfold Seg45.relationRow3656 at r3656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3656
  unfold Seg45.relationRow3657 at r3657
  unfold Seg45.relationRow3658 at r3658
  unfold Seg45.relationRow3659 at r3659
  unfold Seg45.relationRow3660 at r3660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3660
  unfold Seg45.relationRow3661 at r3661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3661
  unfold Seg45.relationRow3662 at r3662
  unfold Seg45.relationRow3663 at r3663
  unfold Seg45.relationRow3664 at r3664
  unfold Seg45.relationRow3665 at r3665
  unfold Seg45.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 41001 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩ := by
    have hnextx : seg45AccX54 rho = seg45AccX53 rho + rho 41888 := by
      unfold seg45AccX54 seg45AccX53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 53]
      ring
    have hnexty : seg45AccY54 rho = seg45AccY53 rho + rho 41889 := by
      unfold seg45AccY54 seg45AccY53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 53]
      ring
    have ha0 : (rho 41880 + rho 41881) * (seg45AccX53 rho + seg45AccY53 rho) = rho 41882 := by
      unfold seg45AccX53 seg45AccY53
      linear_combination r3654
    have ha1 : rho 41881 * seg45AccX53 rho = rho 41883 := by
      unfold seg45AccX53
      linear_combination r3655
    have ha2 : rho 41880 * seg45AccY53 rho = rho 41884 := by
      unfold seg45AccY53
      linear_combination r3656
    have ha3 : 3021 * rho 41883 * rho 41884 = rho 41885 := by
      linear_combination r3657
    have ha4 : rho 41886 * (1 + rho 41885) = rho 41883 + rho 41884 := by
      linear_combination r3658
    have ha5 : rho 41887 * (1 - rho 41885) = rho 41882 - rho 41883 - rho 41884 := by
      linear_combination r3659
    have haddx :
        rho 41886 * (1 + 3021 * (rho 41881 * seg45AccX53 rho) * (rho 41880 * seg45AccY53 rho)) =
          rho 41881 * seg45AccX53 rho + rho 41880 * seg45AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41887 * (1 - 3021 * (rho 41881 * seg45AccX53 rho) * (rho 41880 * seg45AccY53 rho)) =
          (-1) * (rho 41881 * seg45AccX53 rho) - rho 41880 * seg45AccY53 rho +
            (seg45AccY53 rho - seg45AccX53 rho * (-1)) * (rho 41880 + rho 41881) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41887 * (1 - rho 41885) = rho 41882 - rho 41883 - rho 41884 := ha5
        _ = (-1) * rho 41883 - rho 41884 + (seg45AccY53 rho - seg45AccX53 rho * (-1)) * (rho 41880 + rho 41881) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX54 rho = seg45AccX53 rho - Bool.toZMod bit * (seg45AccX53 rho - rho 41886) := by
      have hd : rho 41888 = Bool.toZMod bit * (rho 41886 - seg45AccX53 rho) := by
        rw [← hbit]
        unfold seg45AccX53
        linear_combination -r3660
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY54 rho = seg45AccY53 rho - Bool.toZMod bit * (seg45AccY53 rho - rho 41887) := by
      have hd : rho 41889 = Bool.toZMod bit * (rho 41887 - seg45AccY53 rho) := by
        rw [← hbit]
        unfold seg45AccY53
        linear_combination -r3661
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41880 * rho 41881 = rho 41890 := by linear_combination r3662
    have hd1 : rho 41880 * rho 41880 = rho 41891 := by linear_combination r3663
    have hd2 : rho 41881 * rho 41881 = rho 41892 := by linear_combination r3664
    have hd3 : rho 41893 * (rho 41881 * rho 41881 + rho 41880 * rho 41880 * (-1)) = 2 * (rho 41880 * rho 41881) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 41894 * (2 - (rho 41881 * rho 41881 + rho 41880 * rho 41880 * (-1))) = rho 41881 * rho 41881 - rho 41880 * rho 41880 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
      ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
      ⟨(rho 41886 : Seg45.F), (rho 41887 : Seg45.F)⟩
      ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
      ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg45_rows54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3667 rho ∧ Seg45.relationRow3668 rho ∧ Seg45.relationRow3669 rho ∧ Seg45.relationRow3670 rho ∧ Seg45.relationRow3671 rho ∧ Seg45.relationRow3672 rho ∧ Seg45.relationRow3673 rho ∧ Seg45.relationRow3674 rho ∧ Seg45.relationRow3675 rho ∧ Seg45.relationRow3676 rho ∧ Seg45.relationRow3677 rho ∧ Seg45.relationRow3678 rho ∧ Seg45.relationRow3679 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  exact ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩

theorem seg45_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41002 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩ := by
  obtain ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩ := seg45_rows54 rho h
  unfold Seg45.relationRow3667 at r3667
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3667
  unfold Seg45.relationRow3668 at r3668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668
  unfold Seg45.relationRow3669 at r3669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3669
  unfold Seg45.relationRow3670 at r3670
  unfold Seg45.relationRow3671 at r3671
  unfold Seg45.relationRow3672 at r3672
  unfold Seg45.relationRow3673 at r3673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3673
  unfold Seg45.relationRow3674 at r3674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3674
  unfold Seg45.relationRow3675 at r3675
  unfold Seg45.relationRow3676 at r3676
  unfold Seg45.relationRow3677 at r3677
  unfold Seg45.relationRow3678 at r3678
  unfold Seg45.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 41002 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩ := by
    have hnextx : seg45AccX55 rho = seg45AccX54 rho + rho 41901 := by
      unfold seg45AccX55 seg45AccX54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 54]
      ring
    have hnexty : seg45AccY55 rho = seg45AccY54 rho + rho 41902 := by
      unfold seg45AccY55 seg45AccY54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 54]
      ring
    have ha0 : (rho 41893 + rho 41894) * (seg45AccX54 rho + seg45AccY54 rho) = rho 41895 := by
      unfold seg45AccX54 seg45AccY54
      linear_combination r3667
    have ha1 : rho 41894 * seg45AccX54 rho = rho 41896 := by
      unfold seg45AccX54
      linear_combination r3668
    have ha2 : rho 41893 * seg45AccY54 rho = rho 41897 := by
      unfold seg45AccY54
      linear_combination r3669
    have ha3 : 3021 * rho 41896 * rho 41897 = rho 41898 := by
      linear_combination r3670
    have ha4 : rho 41899 * (1 + rho 41898) = rho 41896 + rho 41897 := by
      linear_combination r3671
    have ha5 : rho 41900 * (1 - rho 41898) = rho 41895 - rho 41896 - rho 41897 := by
      linear_combination r3672
    have haddx :
        rho 41899 * (1 + 3021 * (rho 41894 * seg45AccX54 rho) * (rho 41893 * seg45AccY54 rho)) =
          rho 41894 * seg45AccX54 rho + rho 41893 * seg45AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41900 * (1 - 3021 * (rho 41894 * seg45AccX54 rho) * (rho 41893 * seg45AccY54 rho)) =
          (-1) * (rho 41894 * seg45AccX54 rho) - rho 41893 * seg45AccY54 rho +
            (seg45AccY54 rho - seg45AccX54 rho * (-1)) * (rho 41893 + rho 41894) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41900 * (1 - rho 41898) = rho 41895 - rho 41896 - rho 41897 := ha5
        _ = (-1) * rho 41896 - rho 41897 + (seg45AccY54 rho - seg45AccX54 rho * (-1)) * (rho 41893 + rho 41894) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX55 rho = seg45AccX54 rho - Bool.toZMod bit * (seg45AccX54 rho - rho 41899) := by
      have hd : rho 41901 = Bool.toZMod bit * (rho 41899 - seg45AccX54 rho) := by
        rw [← hbit]
        unfold seg45AccX54
        linear_combination -r3673
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY55 rho = seg45AccY54 rho - Bool.toZMod bit * (seg45AccY54 rho - rho 41900) := by
      have hd : rho 41902 = Bool.toZMod bit * (rho 41900 - seg45AccY54 rho) := by
        rw [← hbit]
        unfold seg45AccY54
        linear_combination -r3674
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41893 * rho 41894 = rho 41903 := by linear_combination r3675
    have hd1 : rho 41893 * rho 41893 = rho 41904 := by linear_combination r3676
    have hd2 : rho 41894 * rho 41894 = rho 41905 := by linear_combination r3677
    have hd3 : rho 41906 * (rho 41894 * rho 41894 + rho 41893 * rho 41893 * (-1)) = 2 * (rho 41893 * rho 41894) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 41907 * (2 - (rho 41894 * rho 41894 + rho 41893 * rho 41893 * (-1))) = rho 41894 * rho 41894 - rho 41893 * rho 41893 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
      ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
      ⟨(rho 41899 : Seg45.F), (rho 41900 : Seg45.F)⟩
      ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
      ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg45_hstep_c4 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg45_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg45_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg45_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg45_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg45_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg45_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg45_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg45_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg45_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg45_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
