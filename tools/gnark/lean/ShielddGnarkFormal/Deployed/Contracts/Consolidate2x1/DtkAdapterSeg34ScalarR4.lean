import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3537 rho ∧ Seg34.relationRow3538 rho ∧ Seg34.relationRow3539 rho ∧ Seg34.relationRow3540 rho ∧ Seg34.relationRow3541 rho ∧ Seg34.relationRow3542 rho ∧ Seg34.relationRow3543 rho ∧ Seg34.relationRow3544 rho ∧ Seg34.relationRow3545 rho ∧ Seg34.relationRow3546 rho ∧ Seg34.relationRow3547 rho ∧ Seg34.relationRow3548 rho ∧ Seg34.relationRow3549 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩

theorem seg34_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩ := by
  obtain ⟨r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549⟩ := seg34_rows44 rho h
  unfold Seg34.relationRow3537 at r3537
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3537
  unfold Seg34.relationRow3538 at r3538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538
  unfold Seg34.relationRow3539 at r3539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3539
  unfold Seg34.relationRow3540 at r3540
  unfold Seg34.relationRow3541 at r3541
  unfold Seg34.relationRow3542 at r3542
  unfold Seg34.relationRow3543 at r3543
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3543
  unfold Seg34.relationRow3544 at r3544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3544
  unfold Seg34.relationRow3545 at r3545
  unfold Seg34.relationRow3546 at r3546
  unfold Seg34.relationRow3547 at r3547
  unfold Seg34.relationRow3548 at r3548
  unfold Seg34.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 34036 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩ := by
    have hnextx : seg34AccX45 rho = seg34AccX44 rho + rho 34815 := by
      unfold seg34AccX45 seg34AccX44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 44]
      ring
    have hnexty : seg34AccY45 rho = seg34AccY44 rho + rho 34816 := by
      unfold seg34AccY45 seg34AccY44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 44]
      ring
    have ha0 : (rho 34807 + rho 34808) * (seg34AccX44 rho + seg34AccY44 rho) = rho 34809 := by
      unfold seg34AccX44 seg34AccY44
      linear_combination r3537
    have ha1 : rho 34808 * seg34AccX44 rho = rho 34810 := by
      unfold seg34AccX44
      linear_combination r3538
    have ha2 : rho 34807 * seg34AccY44 rho = rho 34811 := by
      unfold seg34AccY44
      linear_combination r3539
    have ha3 : 3021 * rho 34810 * rho 34811 = rho 34812 := by
      linear_combination r3540
    have ha4 : rho 34813 * (1 + rho 34812) = rho 34810 + rho 34811 := by
      linear_combination r3541
    have ha5 : rho 34814 * (1 - rho 34812) = rho 34809 - rho 34810 - rho 34811 := by
      linear_combination r3542
    have haddx :
        rho 34813 * (1 + 3021 * (rho 34808 * seg34AccX44 rho) * (rho 34807 * seg34AccY44 rho)) =
          rho 34808 * seg34AccX44 rho + rho 34807 * seg34AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34814 * (1 - 3021 * (rho 34808 * seg34AccX44 rho) * (rho 34807 * seg34AccY44 rho)) =
          (-1) * (rho 34808 * seg34AccX44 rho) - rho 34807 * seg34AccY44 rho +
            (seg34AccY44 rho - seg34AccX44 rho * (-1)) * (rho 34807 + rho 34808) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34814 * (1 - rho 34812) = rho 34809 - rho 34810 - rho 34811 := ha5
        _ = (-1) * rho 34810 - rho 34811 + (seg34AccY44 rho - seg34AccX44 rho * (-1)) * (rho 34807 + rho 34808) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX45 rho = seg34AccX44 rho - Bool.toZMod bit * (seg34AccX44 rho - rho 34813) := by
      have hd : rho 34815 = Bool.toZMod bit * (rho 34813 - seg34AccX44 rho) := by
        rw [← hbit]
        unfold seg34AccX44
        linear_combination -r3543
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY45 rho = seg34AccY44 rho - Bool.toZMod bit * (seg34AccY44 rho - rho 34814) := by
      have hd : rho 34816 = Bool.toZMod bit * (rho 34814 - seg34AccY44 rho) := by
        rw [← hbit]
        unfold seg34AccY44
        linear_combination -r3544
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34807 * rho 34808 = rho 34817 := by linear_combination r3545
    have hd1 : rho 34807 * rho 34807 = rho 34818 := by linear_combination r3546
    have hd2 : rho 34808 * rho 34808 = rho 34819 := by linear_combination r3547
    have hd3 : rho 34820 * (rho 34808 * rho 34808 + rho 34807 * rho 34807 * (-1)) = 2 * (rho 34807 * rho 34808) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 34821 * (2 - (rho 34808 * rho 34808 + rho 34807 * rho 34807 * (-1))) = rho 34808 * rho 34808 - rho 34807 * rho 34807 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
      ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
      ⟨(rho 34813 : Seg34.F), (rho 34814 : Seg34.F)⟩
      ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
      ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg34_rows45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3550 rho ∧ Seg34.relationRow3551 rho ∧ Seg34.relationRow3552 rho ∧ Seg34.relationRow3553 rho ∧ Seg34.relationRow3554 rho ∧ Seg34.relationRow3555 rho ∧ Seg34.relationRow3556 rho ∧ Seg34.relationRow3557 rho ∧ Seg34.relationRow3558 rho ∧ Seg34.relationRow3559 rho ∧ Seg34.relationRow3560 rho ∧ Seg34.relationRow3561 rho ∧ Seg34.relationRow3562 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩

theorem seg34_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩ := by
  obtain ⟨r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562⟩ := seg34_rows45 rho h
  unfold Seg34.relationRow3550 at r3550
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3550
  unfold Seg34.relationRow3551 at r3551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551
  unfold Seg34.relationRow3552 at r3552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3552
  unfold Seg34.relationRow3553 at r3553
  unfold Seg34.relationRow3554 at r3554
  unfold Seg34.relationRow3555 at r3555
  unfold Seg34.relationRow3556 at r3556
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3556
  unfold Seg34.relationRow3557 at r3557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3557
  unfold Seg34.relationRow3558 at r3558
  unfold Seg34.relationRow3559 at r3559
  unfold Seg34.relationRow3560 at r3560
  unfold Seg34.relationRow3561 at r3561
  unfold Seg34.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 34037 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩ := by
    have hnextx : seg34AccX46 rho = seg34AccX45 rho + rho 34828 := by
      unfold seg34AccX46 seg34AccX45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 45]
      ring
    have hnexty : seg34AccY46 rho = seg34AccY45 rho + rho 34829 := by
      unfold seg34AccY46 seg34AccY45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 45]
      ring
    have ha0 : (rho 34820 + rho 34821) * (seg34AccX45 rho + seg34AccY45 rho) = rho 34822 := by
      unfold seg34AccX45 seg34AccY45
      linear_combination r3550
    have ha1 : rho 34821 * seg34AccX45 rho = rho 34823 := by
      unfold seg34AccX45
      linear_combination r3551
    have ha2 : rho 34820 * seg34AccY45 rho = rho 34824 := by
      unfold seg34AccY45
      linear_combination r3552
    have ha3 : 3021 * rho 34823 * rho 34824 = rho 34825 := by
      linear_combination r3553
    have ha4 : rho 34826 * (1 + rho 34825) = rho 34823 + rho 34824 := by
      linear_combination r3554
    have ha5 : rho 34827 * (1 - rho 34825) = rho 34822 - rho 34823 - rho 34824 := by
      linear_combination r3555
    have haddx :
        rho 34826 * (1 + 3021 * (rho 34821 * seg34AccX45 rho) * (rho 34820 * seg34AccY45 rho)) =
          rho 34821 * seg34AccX45 rho + rho 34820 * seg34AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34827 * (1 - 3021 * (rho 34821 * seg34AccX45 rho) * (rho 34820 * seg34AccY45 rho)) =
          (-1) * (rho 34821 * seg34AccX45 rho) - rho 34820 * seg34AccY45 rho +
            (seg34AccY45 rho - seg34AccX45 rho * (-1)) * (rho 34820 + rho 34821) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34827 * (1 - rho 34825) = rho 34822 - rho 34823 - rho 34824 := ha5
        _ = (-1) * rho 34823 - rho 34824 + (seg34AccY45 rho - seg34AccX45 rho * (-1)) * (rho 34820 + rho 34821) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX46 rho = seg34AccX45 rho - Bool.toZMod bit * (seg34AccX45 rho - rho 34826) := by
      have hd : rho 34828 = Bool.toZMod bit * (rho 34826 - seg34AccX45 rho) := by
        rw [← hbit]
        unfold seg34AccX45
        linear_combination -r3556
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY46 rho = seg34AccY45 rho - Bool.toZMod bit * (seg34AccY45 rho - rho 34827) := by
      have hd : rho 34829 = Bool.toZMod bit * (rho 34827 - seg34AccY45 rho) := by
        rw [← hbit]
        unfold seg34AccY45
        linear_combination -r3557
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34820 * rho 34821 = rho 34830 := by linear_combination r3558
    have hd1 : rho 34820 * rho 34820 = rho 34831 := by linear_combination r3559
    have hd2 : rho 34821 * rho 34821 = rho 34832 := by linear_combination r3560
    have hd3 : rho 34833 * (rho 34821 * rho 34821 + rho 34820 * rho 34820 * (-1)) = 2 * (rho 34820 * rho 34821) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 34834 * (2 - (rho 34821 * rho 34821 + rho 34820 * rho 34820 * (-1))) = rho 34821 * rho 34821 - rho 34820 * rho 34820 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
      ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
      ⟨(rho 34826 : Seg34.F), (rho 34827 : Seg34.F)⟩
      ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
      ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg34_rows46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3563 rho ∧ Seg34.relationRow3564 rho ∧ Seg34.relationRow3565 rho ∧ Seg34.relationRow3566 rho ∧ Seg34.relationRow3567 rho ∧ Seg34.relationRow3568 rho ∧ Seg34.relationRow3569 rho ∧ Seg34.relationRow3570 rho ∧ Seg34.relationRow3571 rho ∧ Seg34.relationRow3572 rho ∧ Seg34.relationRow3573 rho ∧ Seg34.relationRow3574 rho ∧ Seg34.relationRow3575 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩

theorem seg34_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩ := by
  obtain ⟨r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575⟩ := seg34_rows46 rho h
  unfold Seg34.relationRow3563 at r3563
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3563
  unfold Seg34.relationRow3564 at r3564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564
  unfold Seg34.relationRow3565 at r3565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3565
  unfold Seg34.relationRow3566 at r3566
  unfold Seg34.relationRow3567 at r3567
  unfold Seg34.relationRow3568 at r3568
  unfold Seg34.relationRow3569 at r3569
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3569
  unfold Seg34.relationRow3570 at r3570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3570
  unfold Seg34.relationRow3571 at r3571
  unfold Seg34.relationRow3572 at r3572
  unfold Seg34.relationRow3573 at r3573
  unfold Seg34.relationRow3574 at r3574
  unfold Seg34.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 34038 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩ := by
    have hnextx : seg34AccX47 rho = seg34AccX46 rho + rho 34841 := by
      unfold seg34AccX47 seg34AccX46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 46]
      ring
    have hnexty : seg34AccY47 rho = seg34AccY46 rho + rho 34842 := by
      unfold seg34AccY47 seg34AccY46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 46]
      ring
    have ha0 : (rho 34833 + rho 34834) * (seg34AccX46 rho + seg34AccY46 rho) = rho 34835 := by
      unfold seg34AccX46 seg34AccY46
      linear_combination r3563
    have ha1 : rho 34834 * seg34AccX46 rho = rho 34836 := by
      unfold seg34AccX46
      linear_combination r3564
    have ha2 : rho 34833 * seg34AccY46 rho = rho 34837 := by
      unfold seg34AccY46
      linear_combination r3565
    have ha3 : 3021 * rho 34836 * rho 34837 = rho 34838 := by
      linear_combination r3566
    have ha4 : rho 34839 * (1 + rho 34838) = rho 34836 + rho 34837 := by
      linear_combination r3567
    have ha5 : rho 34840 * (1 - rho 34838) = rho 34835 - rho 34836 - rho 34837 := by
      linear_combination r3568
    have haddx :
        rho 34839 * (1 + 3021 * (rho 34834 * seg34AccX46 rho) * (rho 34833 * seg34AccY46 rho)) =
          rho 34834 * seg34AccX46 rho + rho 34833 * seg34AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34840 * (1 - 3021 * (rho 34834 * seg34AccX46 rho) * (rho 34833 * seg34AccY46 rho)) =
          (-1) * (rho 34834 * seg34AccX46 rho) - rho 34833 * seg34AccY46 rho +
            (seg34AccY46 rho - seg34AccX46 rho * (-1)) * (rho 34833 + rho 34834) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34840 * (1 - rho 34838) = rho 34835 - rho 34836 - rho 34837 := ha5
        _ = (-1) * rho 34836 - rho 34837 + (seg34AccY46 rho - seg34AccX46 rho * (-1)) * (rho 34833 + rho 34834) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX47 rho = seg34AccX46 rho - Bool.toZMod bit * (seg34AccX46 rho - rho 34839) := by
      have hd : rho 34841 = Bool.toZMod bit * (rho 34839 - seg34AccX46 rho) := by
        rw [← hbit]
        unfold seg34AccX46
        linear_combination -r3569
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY47 rho = seg34AccY46 rho - Bool.toZMod bit * (seg34AccY46 rho - rho 34840) := by
      have hd : rho 34842 = Bool.toZMod bit * (rho 34840 - seg34AccY46 rho) := by
        rw [← hbit]
        unfold seg34AccY46
        linear_combination -r3570
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34833 * rho 34834 = rho 34843 := by linear_combination r3571
    have hd1 : rho 34833 * rho 34833 = rho 34844 := by linear_combination r3572
    have hd2 : rho 34834 * rho 34834 = rho 34845 := by linear_combination r3573
    have hd3 : rho 34846 * (rho 34834 * rho 34834 + rho 34833 * rho 34833 * (-1)) = 2 * (rho 34833 * rho 34834) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 34847 * (2 - (rho 34834 * rho 34834 + rho 34833 * rho 34833 * (-1))) = rho 34834 * rho 34834 - rho 34833 * rho 34833 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
      ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
      ⟨(rho 34839 : Seg34.F), (rho 34840 : Seg34.F)⟩
      ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
      ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg34_rows47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3576 rho ∧ Seg34.relationRow3577 rho ∧ Seg34.relationRow3578 rho ∧ Seg34.relationRow3579 rho ∧ Seg34.relationRow3580 rho ∧ Seg34.relationRow3581 rho ∧ Seg34.relationRow3582 rho ∧ Seg34.relationRow3583 rho ∧ Seg34.relationRow3584 rho ∧ Seg34.relationRow3585 rho ∧ Seg34.relationRow3586 rho ∧ Seg34.relationRow3587 rho ∧ Seg34.relationRow3588 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩

theorem seg34_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩ := by
  obtain ⟨r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588⟩ := seg34_rows47 rho h
  unfold Seg34.relationRow3576 at r3576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3576
  unfold Seg34.relationRow3577 at r3577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577
  unfold Seg34.relationRow3578 at r3578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3578
  unfold Seg34.relationRow3579 at r3579
  unfold Seg34.relationRow3580 at r3580
  unfold Seg34.relationRow3581 at r3581
  unfold Seg34.relationRow3582 at r3582
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3582
  unfold Seg34.relationRow3583 at r3583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3583
  unfold Seg34.relationRow3584 at r3584
  unfold Seg34.relationRow3585 at r3585
  unfold Seg34.relationRow3586 at r3586
  unfold Seg34.relationRow3587 at r3587
  unfold Seg34.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 34039 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩ := by
    have hnextx : seg34AccX48 rho = seg34AccX47 rho + rho 34854 := by
      unfold seg34AccX48 seg34AccX47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 47]
      ring
    have hnexty : seg34AccY48 rho = seg34AccY47 rho + rho 34855 := by
      unfold seg34AccY48 seg34AccY47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 47]
      ring
    have ha0 : (rho 34846 + rho 34847) * (seg34AccX47 rho + seg34AccY47 rho) = rho 34848 := by
      unfold seg34AccX47 seg34AccY47
      linear_combination r3576
    have ha1 : rho 34847 * seg34AccX47 rho = rho 34849 := by
      unfold seg34AccX47
      linear_combination r3577
    have ha2 : rho 34846 * seg34AccY47 rho = rho 34850 := by
      unfold seg34AccY47
      linear_combination r3578
    have ha3 : 3021 * rho 34849 * rho 34850 = rho 34851 := by
      linear_combination r3579
    have ha4 : rho 34852 * (1 + rho 34851) = rho 34849 + rho 34850 := by
      linear_combination r3580
    have ha5 : rho 34853 * (1 - rho 34851) = rho 34848 - rho 34849 - rho 34850 := by
      linear_combination r3581
    have haddx :
        rho 34852 * (1 + 3021 * (rho 34847 * seg34AccX47 rho) * (rho 34846 * seg34AccY47 rho)) =
          rho 34847 * seg34AccX47 rho + rho 34846 * seg34AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34853 * (1 - 3021 * (rho 34847 * seg34AccX47 rho) * (rho 34846 * seg34AccY47 rho)) =
          (-1) * (rho 34847 * seg34AccX47 rho) - rho 34846 * seg34AccY47 rho +
            (seg34AccY47 rho - seg34AccX47 rho * (-1)) * (rho 34846 + rho 34847) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34853 * (1 - rho 34851) = rho 34848 - rho 34849 - rho 34850 := ha5
        _ = (-1) * rho 34849 - rho 34850 + (seg34AccY47 rho - seg34AccX47 rho * (-1)) * (rho 34846 + rho 34847) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX48 rho = seg34AccX47 rho - Bool.toZMod bit * (seg34AccX47 rho - rho 34852) := by
      have hd : rho 34854 = Bool.toZMod bit * (rho 34852 - seg34AccX47 rho) := by
        rw [← hbit]
        unfold seg34AccX47
        linear_combination -r3582
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY48 rho = seg34AccY47 rho - Bool.toZMod bit * (seg34AccY47 rho - rho 34853) := by
      have hd : rho 34855 = Bool.toZMod bit * (rho 34853 - seg34AccY47 rho) := by
        rw [← hbit]
        unfold seg34AccY47
        linear_combination -r3583
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34846 * rho 34847 = rho 34856 := by linear_combination r3584
    have hd1 : rho 34846 * rho 34846 = rho 34857 := by linear_combination r3585
    have hd2 : rho 34847 * rho 34847 = rho 34858 := by linear_combination r3586
    have hd3 : rho 34859 * (rho 34847 * rho 34847 + rho 34846 * rho 34846 * (-1)) = 2 * (rho 34846 * rho 34847) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 34860 * (2 - (rho 34847 * rho 34847 + rho 34846 * rho 34846 * (-1))) = rho 34847 * rho 34847 - rho 34846 * rho 34846 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
      ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
      ⟨(rho 34852 : Seg34.F), (rho 34853 : Seg34.F)⟩
      ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
      ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg34_rows48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3589 rho ∧ Seg34.relationRow3590 rho ∧ Seg34.relationRow3591 rho ∧ Seg34.relationRow3592 rho ∧ Seg34.relationRow3593 rho ∧ Seg34.relationRow3594 rho ∧ Seg34.relationRow3595 rho ∧ Seg34.relationRow3596 rho ∧ Seg34.relationRow3597 rho ∧ Seg34.relationRow3598 rho ∧ Seg34.relationRow3599 rho ∧ Seg34.relationRow3600 rho ∧ Seg34.relationRow3601 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩

theorem seg34_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩ := by
  obtain ⟨r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599, r3600, r3601⟩ := seg34_rows48 rho h
  unfold Seg34.relationRow3589 at r3589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3589
  unfold Seg34.relationRow3590 at r3590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590
  unfold Seg34.relationRow3591 at r3591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3591
  unfold Seg34.relationRow3592 at r3592
  unfold Seg34.relationRow3593 at r3593
  unfold Seg34.relationRow3594 at r3594
  unfold Seg34.relationRow3595 at r3595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3595
  unfold Seg34.relationRow3596 at r3596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3596
  unfold Seg34.relationRow3597 at r3597
  unfold Seg34.relationRow3598 at r3598
  unfold Seg34.relationRow3599 at r3599
  unfold Seg34.relationRow3600 at r3600
  unfold Seg34.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 34040 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩ := by
    have hnextx : seg34AccX49 rho = seg34AccX48 rho + rho 34867 := by
      unfold seg34AccX49 seg34AccX48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 48]
      ring
    have hnexty : seg34AccY49 rho = seg34AccY48 rho + rho 34868 := by
      unfold seg34AccY49 seg34AccY48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 48]
      ring
    have ha0 : (rho 34859 + rho 34860) * (seg34AccX48 rho + seg34AccY48 rho) = rho 34861 := by
      unfold seg34AccX48 seg34AccY48
      linear_combination r3589
    have ha1 : rho 34860 * seg34AccX48 rho = rho 34862 := by
      unfold seg34AccX48
      linear_combination r3590
    have ha2 : rho 34859 * seg34AccY48 rho = rho 34863 := by
      unfold seg34AccY48
      linear_combination r3591
    have ha3 : 3021 * rho 34862 * rho 34863 = rho 34864 := by
      linear_combination r3592
    have ha4 : rho 34865 * (1 + rho 34864) = rho 34862 + rho 34863 := by
      linear_combination r3593
    have ha5 : rho 34866 * (1 - rho 34864) = rho 34861 - rho 34862 - rho 34863 := by
      linear_combination r3594
    have haddx :
        rho 34865 * (1 + 3021 * (rho 34860 * seg34AccX48 rho) * (rho 34859 * seg34AccY48 rho)) =
          rho 34860 * seg34AccX48 rho + rho 34859 * seg34AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34866 * (1 - 3021 * (rho 34860 * seg34AccX48 rho) * (rho 34859 * seg34AccY48 rho)) =
          (-1) * (rho 34860 * seg34AccX48 rho) - rho 34859 * seg34AccY48 rho +
            (seg34AccY48 rho - seg34AccX48 rho * (-1)) * (rho 34859 + rho 34860) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34866 * (1 - rho 34864) = rho 34861 - rho 34862 - rho 34863 := ha5
        _ = (-1) * rho 34862 - rho 34863 + (seg34AccY48 rho - seg34AccX48 rho * (-1)) * (rho 34859 + rho 34860) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX49 rho = seg34AccX48 rho - Bool.toZMod bit * (seg34AccX48 rho - rho 34865) := by
      have hd : rho 34867 = Bool.toZMod bit * (rho 34865 - seg34AccX48 rho) := by
        rw [← hbit]
        unfold seg34AccX48
        linear_combination -r3595
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY49 rho = seg34AccY48 rho - Bool.toZMod bit * (seg34AccY48 rho - rho 34866) := by
      have hd : rho 34868 = Bool.toZMod bit * (rho 34866 - seg34AccY48 rho) := by
        rw [← hbit]
        unfold seg34AccY48
        linear_combination -r3596
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34859 * rho 34860 = rho 34869 := by linear_combination r3597
    have hd1 : rho 34859 * rho 34859 = rho 34870 := by linear_combination r3598
    have hd2 : rho 34860 * rho 34860 = rho 34871 := by linear_combination r3599
    have hd3 : rho 34872 * (rho 34860 * rho 34860 + rho 34859 * rho 34859 * (-1)) = 2 * (rho 34859 * rho 34860) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 34873 * (2 - (rho 34860 * rho 34860 + rho 34859 * rho 34859 * (-1))) = rho 34860 * rho 34860 - rho 34859 * rho 34859 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
      ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
      ⟨(rho 34865 : Seg34.F), (rho 34866 : Seg34.F)⟩
      ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
      ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg34_rows49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3602 rho ∧ Seg34.relationRow3603 rho ∧ Seg34.relationRow3604 rho ∧ Seg34.relationRow3605 rho ∧ Seg34.relationRow3606 rho ∧ Seg34.relationRow3607 rho ∧ Seg34.relationRow3608 rho ∧ Seg34.relationRow3609 rho ∧ Seg34.relationRow3610 rho ∧ Seg34.relationRow3611 rho ∧ Seg34.relationRow3612 rho ∧ Seg34.relationRow3613 rho ∧ Seg34.relationRow3614 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩

theorem seg34_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩ := by
  obtain ⟨r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614⟩ := seg34_rows49 rho h
  unfold Seg34.relationRow3602 at r3602
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3602
  unfold Seg34.relationRow3603 at r3603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603
  unfold Seg34.relationRow3604 at r3604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3604
  unfold Seg34.relationRow3605 at r3605
  unfold Seg34.relationRow3606 at r3606
  unfold Seg34.relationRow3607 at r3607
  unfold Seg34.relationRow3608 at r3608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3608
  unfold Seg34.relationRow3609 at r3609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3609
  unfold Seg34.relationRow3610 at r3610
  unfold Seg34.relationRow3611 at r3611
  unfold Seg34.relationRow3612 at r3612
  unfold Seg34.relationRow3613 at r3613
  unfold Seg34.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 34041 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩ := by
    have hnextx : seg34AccX50 rho = seg34AccX49 rho + rho 34880 := by
      unfold seg34AccX50 seg34AccX49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 49]
      ring
    have hnexty : seg34AccY50 rho = seg34AccY49 rho + rho 34881 := by
      unfold seg34AccY50 seg34AccY49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 49]
      ring
    have ha0 : (rho 34872 + rho 34873) * (seg34AccX49 rho + seg34AccY49 rho) = rho 34874 := by
      unfold seg34AccX49 seg34AccY49
      linear_combination r3602
    have ha1 : rho 34873 * seg34AccX49 rho = rho 34875 := by
      unfold seg34AccX49
      linear_combination r3603
    have ha2 : rho 34872 * seg34AccY49 rho = rho 34876 := by
      unfold seg34AccY49
      linear_combination r3604
    have ha3 : 3021 * rho 34875 * rho 34876 = rho 34877 := by
      linear_combination r3605
    have ha4 : rho 34878 * (1 + rho 34877) = rho 34875 + rho 34876 := by
      linear_combination r3606
    have ha5 : rho 34879 * (1 - rho 34877) = rho 34874 - rho 34875 - rho 34876 := by
      linear_combination r3607
    have haddx :
        rho 34878 * (1 + 3021 * (rho 34873 * seg34AccX49 rho) * (rho 34872 * seg34AccY49 rho)) =
          rho 34873 * seg34AccX49 rho + rho 34872 * seg34AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34879 * (1 - 3021 * (rho 34873 * seg34AccX49 rho) * (rho 34872 * seg34AccY49 rho)) =
          (-1) * (rho 34873 * seg34AccX49 rho) - rho 34872 * seg34AccY49 rho +
            (seg34AccY49 rho - seg34AccX49 rho * (-1)) * (rho 34872 + rho 34873) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34879 * (1 - rho 34877) = rho 34874 - rho 34875 - rho 34876 := ha5
        _ = (-1) * rho 34875 - rho 34876 + (seg34AccY49 rho - seg34AccX49 rho * (-1)) * (rho 34872 + rho 34873) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX50 rho = seg34AccX49 rho - Bool.toZMod bit * (seg34AccX49 rho - rho 34878) := by
      have hd : rho 34880 = Bool.toZMod bit * (rho 34878 - seg34AccX49 rho) := by
        rw [← hbit]
        unfold seg34AccX49
        linear_combination -r3608
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY50 rho = seg34AccY49 rho - Bool.toZMod bit * (seg34AccY49 rho - rho 34879) := by
      have hd : rho 34881 = Bool.toZMod bit * (rho 34879 - seg34AccY49 rho) := by
        rw [← hbit]
        unfold seg34AccY49
        linear_combination -r3609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34872 * rho 34873 = rho 34882 := by linear_combination r3610
    have hd1 : rho 34872 * rho 34872 = rho 34883 := by linear_combination r3611
    have hd2 : rho 34873 * rho 34873 = rho 34884 := by linear_combination r3612
    have hd3 : rho 34885 * (rho 34873 * rho 34873 + rho 34872 * rho 34872 * (-1)) = 2 * (rho 34872 * rho 34873) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 34886 * (2 - (rho 34873 * rho 34873 + rho 34872 * rho 34872 * (-1))) = rho 34873 * rho 34873 - rho 34872 * rho 34872 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
      ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
      ⟨(rho 34878 : Seg34.F), (rho 34879 : Seg34.F)⟩
      ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
      ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg34_rows50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3615 rho ∧ Seg34.relationRow3616 rho ∧ Seg34.relationRow3617 rho ∧ Seg34.relationRow3618 rho ∧ Seg34.relationRow3619 rho ∧ Seg34.relationRow3620 rho ∧ Seg34.relationRow3621 rho ∧ Seg34.relationRow3622 rho ∧ Seg34.relationRow3623 rho ∧ Seg34.relationRow3624 rho ∧ Seg34.relationRow3625 rho ∧ Seg34.relationRow3626 rho ∧ Seg34.relationRow3627 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩

theorem seg34_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩ := by
  obtain ⟨r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627⟩ := seg34_rows50 rho h
  unfold Seg34.relationRow3615 at r3615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3615
  unfold Seg34.relationRow3616 at r3616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616
  unfold Seg34.relationRow3617 at r3617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3617
  unfold Seg34.relationRow3618 at r3618
  unfold Seg34.relationRow3619 at r3619
  unfold Seg34.relationRow3620 at r3620
  unfold Seg34.relationRow3621 at r3621
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3621
  unfold Seg34.relationRow3622 at r3622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3622
  unfold Seg34.relationRow3623 at r3623
  unfold Seg34.relationRow3624 at r3624
  unfold Seg34.relationRow3625 at r3625
  unfold Seg34.relationRow3626 at r3626
  unfold Seg34.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 34042 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩ := by
    have hnextx : seg34AccX51 rho = seg34AccX50 rho + rho 34893 := by
      unfold seg34AccX51 seg34AccX50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 50]
      ring
    have hnexty : seg34AccY51 rho = seg34AccY50 rho + rho 34894 := by
      unfold seg34AccY51 seg34AccY50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 50]
      ring
    have ha0 : (rho 34885 + rho 34886) * (seg34AccX50 rho + seg34AccY50 rho) = rho 34887 := by
      unfold seg34AccX50 seg34AccY50
      linear_combination r3615
    have ha1 : rho 34886 * seg34AccX50 rho = rho 34888 := by
      unfold seg34AccX50
      linear_combination r3616
    have ha2 : rho 34885 * seg34AccY50 rho = rho 34889 := by
      unfold seg34AccY50
      linear_combination r3617
    have ha3 : 3021 * rho 34888 * rho 34889 = rho 34890 := by
      linear_combination r3618
    have ha4 : rho 34891 * (1 + rho 34890) = rho 34888 + rho 34889 := by
      linear_combination r3619
    have ha5 : rho 34892 * (1 - rho 34890) = rho 34887 - rho 34888 - rho 34889 := by
      linear_combination r3620
    have haddx :
        rho 34891 * (1 + 3021 * (rho 34886 * seg34AccX50 rho) * (rho 34885 * seg34AccY50 rho)) =
          rho 34886 * seg34AccX50 rho + rho 34885 * seg34AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34892 * (1 - 3021 * (rho 34886 * seg34AccX50 rho) * (rho 34885 * seg34AccY50 rho)) =
          (-1) * (rho 34886 * seg34AccX50 rho) - rho 34885 * seg34AccY50 rho +
            (seg34AccY50 rho - seg34AccX50 rho * (-1)) * (rho 34885 + rho 34886) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34892 * (1 - rho 34890) = rho 34887 - rho 34888 - rho 34889 := ha5
        _ = (-1) * rho 34888 - rho 34889 + (seg34AccY50 rho - seg34AccX50 rho * (-1)) * (rho 34885 + rho 34886) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX51 rho = seg34AccX50 rho - Bool.toZMod bit * (seg34AccX50 rho - rho 34891) := by
      have hd : rho 34893 = Bool.toZMod bit * (rho 34891 - seg34AccX50 rho) := by
        rw [← hbit]
        unfold seg34AccX50
        linear_combination -r3621
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY51 rho = seg34AccY50 rho - Bool.toZMod bit * (seg34AccY50 rho - rho 34892) := by
      have hd : rho 34894 = Bool.toZMod bit * (rho 34892 - seg34AccY50 rho) := by
        rw [← hbit]
        unfold seg34AccY50
        linear_combination -r3622
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34885 * rho 34886 = rho 34895 := by linear_combination r3623
    have hd1 : rho 34885 * rho 34885 = rho 34896 := by linear_combination r3624
    have hd2 : rho 34886 * rho 34886 = rho 34897 := by linear_combination r3625
    have hd3 : rho 34898 * (rho 34886 * rho 34886 + rho 34885 * rho 34885 * (-1)) = 2 * (rho 34885 * rho 34886) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 34899 * (2 - (rho 34886 * rho 34886 + rho 34885 * rho 34885 * (-1))) = rho 34886 * rho 34886 - rho 34885 * rho 34885 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
      ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
      ⟨(rho 34891 : Seg34.F), (rho 34892 : Seg34.F)⟩
      ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
      ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg34_rows51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3628 rho ∧ Seg34.relationRow3629 rho ∧ Seg34.relationRow3630 rho ∧ Seg34.relationRow3631 rho ∧ Seg34.relationRow3632 rho ∧ Seg34.relationRow3633 rho ∧ Seg34.relationRow3634 rho ∧ Seg34.relationRow3635 rho ∧ Seg34.relationRow3636 rho ∧ Seg34.relationRow3637 rho ∧ Seg34.relationRow3638 rho ∧ Seg34.relationRow3639 rho ∧ Seg34.relationRow3640 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩

theorem seg34_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩ := by
  obtain ⟨r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640⟩ := seg34_rows51 rho h
  unfold Seg34.relationRow3628 at r3628
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3628
  unfold Seg34.relationRow3629 at r3629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629
  unfold Seg34.relationRow3630 at r3630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3630
  unfold Seg34.relationRow3631 at r3631
  unfold Seg34.relationRow3632 at r3632
  unfold Seg34.relationRow3633 at r3633
  unfold Seg34.relationRow3634 at r3634
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3634
  unfold Seg34.relationRow3635 at r3635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3635
  unfold Seg34.relationRow3636 at r3636
  unfold Seg34.relationRow3637 at r3637
  unfold Seg34.relationRow3638 at r3638
  unfold Seg34.relationRow3639 at r3639
  unfold Seg34.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 34043 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩ := by
    have hnextx : seg34AccX52 rho = seg34AccX51 rho + rho 34906 := by
      unfold seg34AccX52 seg34AccX51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 51]
      ring
    have hnexty : seg34AccY52 rho = seg34AccY51 rho + rho 34907 := by
      unfold seg34AccY52 seg34AccY51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 51]
      ring
    have ha0 : (rho 34898 + rho 34899) * (seg34AccX51 rho + seg34AccY51 rho) = rho 34900 := by
      unfold seg34AccX51 seg34AccY51
      linear_combination r3628
    have ha1 : rho 34899 * seg34AccX51 rho = rho 34901 := by
      unfold seg34AccX51
      linear_combination r3629
    have ha2 : rho 34898 * seg34AccY51 rho = rho 34902 := by
      unfold seg34AccY51
      linear_combination r3630
    have ha3 : 3021 * rho 34901 * rho 34902 = rho 34903 := by
      linear_combination r3631
    have ha4 : rho 34904 * (1 + rho 34903) = rho 34901 + rho 34902 := by
      linear_combination r3632
    have ha5 : rho 34905 * (1 - rho 34903) = rho 34900 - rho 34901 - rho 34902 := by
      linear_combination r3633
    have haddx :
        rho 34904 * (1 + 3021 * (rho 34899 * seg34AccX51 rho) * (rho 34898 * seg34AccY51 rho)) =
          rho 34899 * seg34AccX51 rho + rho 34898 * seg34AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34905 * (1 - 3021 * (rho 34899 * seg34AccX51 rho) * (rho 34898 * seg34AccY51 rho)) =
          (-1) * (rho 34899 * seg34AccX51 rho) - rho 34898 * seg34AccY51 rho +
            (seg34AccY51 rho - seg34AccX51 rho * (-1)) * (rho 34898 + rho 34899) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34905 * (1 - rho 34903) = rho 34900 - rho 34901 - rho 34902 := ha5
        _ = (-1) * rho 34901 - rho 34902 + (seg34AccY51 rho - seg34AccX51 rho * (-1)) * (rho 34898 + rho 34899) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX52 rho = seg34AccX51 rho - Bool.toZMod bit * (seg34AccX51 rho - rho 34904) := by
      have hd : rho 34906 = Bool.toZMod bit * (rho 34904 - seg34AccX51 rho) := by
        rw [← hbit]
        unfold seg34AccX51
        linear_combination -r3634
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY52 rho = seg34AccY51 rho - Bool.toZMod bit * (seg34AccY51 rho - rho 34905) := by
      have hd : rho 34907 = Bool.toZMod bit * (rho 34905 - seg34AccY51 rho) := by
        rw [← hbit]
        unfold seg34AccY51
        linear_combination -r3635
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34898 * rho 34899 = rho 34908 := by linear_combination r3636
    have hd1 : rho 34898 * rho 34898 = rho 34909 := by linear_combination r3637
    have hd2 : rho 34899 * rho 34899 = rho 34910 := by linear_combination r3638
    have hd3 : rho 34911 * (rho 34899 * rho 34899 + rho 34898 * rho 34898 * (-1)) = 2 * (rho 34898 * rho 34899) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 34912 * (2 - (rho 34899 * rho 34899 + rho 34898 * rho 34898 * (-1))) = rho 34899 * rho 34899 - rho 34898 * rho 34898 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
      ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
      ⟨(rho 34904 : Seg34.F), (rho 34905 : Seg34.F)⟩
      ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
      ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg34_rows52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3641 rho ∧ Seg34.relationRow3642 rho ∧ Seg34.relationRow3643 rho ∧ Seg34.relationRow3644 rho ∧ Seg34.relationRow3645 rho ∧ Seg34.relationRow3646 rho ∧ Seg34.relationRow3647 rho ∧ Seg34.relationRow3648 rho ∧ Seg34.relationRow3649 rho ∧ Seg34.relationRow3650 rho ∧ Seg34.relationRow3651 rho ∧ Seg34.relationRow3652 rho ∧ Seg34.relationRow3653 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩

theorem seg34_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩ := by
  obtain ⟨r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653⟩ := seg34_rows52 rho h
  unfold Seg34.relationRow3641 at r3641
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3641
  unfold Seg34.relationRow3642 at r3642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642
  unfold Seg34.relationRow3643 at r3643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3643
  unfold Seg34.relationRow3644 at r3644
  unfold Seg34.relationRow3645 at r3645
  unfold Seg34.relationRow3646 at r3646
  unfold Seg34.relationRow3647 at r3647
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3647
  unfold Seg34.relationRow3648 at r3648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3648
  unfold Seg34.relationRow3649 at r3649
  unfold Seg34.relationRow3650 at r3650
  unfold Seg34.relationRow3651 at r3651
  unfold Seg34.relationRow3652 at r3652
  unfold Seg34.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 34044 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩ := by
    have hnextx : seg34AccX53 rho = seg34AccX52 rho + rho 34919 := by
      unfold seg34AccX53 seg34AccX52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 52]
      ring
    have hnexty : seg34AccY53 rho = seg34AccY52 rho + rho 34920 := by
      unfold seg34AccY53 seg34AccY52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 52]
      ring
    have ha0 : (rho 34911 + rho 34912) * (seg34AccX52 rho + seg34AccY52 rho) = rho 34913 := by
      unfold seg34AccX52 seg34AccY52
      linear_combination r3641
    have ha1 : rho 34912 * seg34AccX52 rho = rho 34914 := by
      unfold seg34AccX52
      linear_combination r3642
    have ha2 : rho 34911 * seg34AccY52 rho = rho 34915 := by
      unfold seg34AccY52
      linear_combination r3643
    have ha3 : 3021 * rho 34914 * rho 34915 = rho 34916 := by
      linear_combination r3644
    have ha4 : rho 34917 * (1 + rho 34916) = rho 34914 + rho 34915 := by
      linear_combination r3645
    have ha5 : rho 34918 * (1 - rho 34916) = rho 34913 - rho 34914 - rho 34915 := by
      linear_combination r3646
    have haddx :
        rho 34917 * (1 + 3021 * (rho 34912 * seg34AccX52 rho) * (rho 34911 * seg34AccY52 rho)) =
          rho 34912 * seg34AccX52 rho + rho 34911 * seg34AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34918 * (1 - 3021 * (rho 34912 * seg34AccX52 rho) * (rho 34911 * seg34AccY52 rho)) =
          (-1) * (rho 34912 * seg34AccX52 rho) - rho 34911 * seg34AccY52 rho +
            (seg34AccY52 rho - seg34AccX52 rho * (-1)) * (rho 34911 + rho 34912) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34918 * (1 - rho 34916) = rho 34913 - rho 34914 - rho 34915 := ha5
        _ = (-1) * rho 34914 - rho 34915 + (seg34AccY52 rho - seg34AccX52 rho * (-1)) * (rho 34911 + rho 34912) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX53 rho = seg34AccX52 rho - Bool.toZMod bit * (seg34AccX52 rho - rho 34917) := by
      have hd : rho 34919 = Bool.toZMod bit * (rho 34917 - seg34AccX52 rho) := by
        rw [← hbit]
        unfold seg34AccX52
        linear_combination -r3647
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY53 rho = seg34AccY52 rho - Bool.toZMod bit * (seg34AccY52 rho - rho 34918) := by
      have hd : rho 34920 = Bool.toZMod bit * (rho 34918 - seg34AccY52 rho) := by
        rw [← hbit]
        unfold seg34AccY52
        linear_combination -r3648
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34911 * rho 34912 = rho 34921 := by linear_combination r3649
    have hd1 : rho 34911 * rho 34911 = rho 34922 := by linear_combination r3650
    have hd2 : rho 34912 * rho 34912 = rho 34923 := by linear_combination r3651
    have hd3 : rho 34924 * (rho 34912 * rho 34912 + rho 34911 * rho 34911 * (-1)) = 2 * (rho 34911 * rho 34912) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 34925 * (2 - (rho 34912 * rho 34912 + rho 34911 * rho 34911 * (-1))) = rho 34912 * rho 34912 - rho 34911 * rho 34911 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
      ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
      ⟨(rho 34917 : Seg34.F), (rho 34918 : Seg34.F)⟩
      ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
      ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg34_rows53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3654 rho ∧ Seg34.relationRow3655 rho ∧ Seg34.relationRow3656 rho ∧ Seg34.relationRow3657 rho ∧ Seg34.relationRow3658 rho ∧ Seg34.relationRow3659 rho ∧ Seg34.relationRow3660 rho ∧ Seg34.relationRow3661 rho ∧ Seg34.relationRow3662 rho ∧ Seg34.relationRow3663 rho ∧ Seg34.relationRow3664 rho ∧ Seg34.relationRow3665 rho ∧ Seg34.relationRow3666 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩

theorem seg34_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩ := by
  obtain ⟨r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666⟩ := seg34_rows53 rho h
  unfold Seg34.relationRow3654 at r3654
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3654
  unfold Seg34.relationRow3655 at r3655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655
  unfold Seg34.relationRow3656 at r3656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3656
  unfold Seg34.relationRow3657 at r3657
  unfold Seg34.relationRow3658 at r3658
  unfold Seg34.relationRow3659 at r3659
  unfold Seg34.relationRow3660 at r3660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3660
  unfold Seg34.relationRow3661 at r3661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3661
  unfold Seg34.relationRow3662 at r3662
  unfold Seg34.relationRow3663 at r3663
  unfold Seg34.relationRow3664 at r3664
  unfold Seg34.relationRow3665 at r3665
  unfold Seg34.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 34045 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩ := by
    have hnextx : seg34AccX54 rho = seg34AccX53 rho + rho 34932 := by
      unfold seg34AccX54 seg34AccX53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 53]
      ring
    have hnexty : seg34AccY54 rho = seg34AccY53 rho + rho 34933 := by
      unfold seg34AccY54 seg34AccY53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 53]
      ring
    have ha0 : (rho 34924 + rho 34925) * (seg34AccX53 rho + seg34AccY53 rho) = rho 34926 := by
      unfold seg34AccX53 seg34AccY53
      linear_combination r3654
    have ha1 : rho 34925 * seg34AccX53 rho = rho 34927 := by
      unfold seg34AccX53
      linear_combination r3655
    have ha2 : rho 34924 * seg34AccY53 rho = rho 34928 := by
      unfold seg34AccY53
      linear_combination r3656
    have ha3 : 3021 * rho 34927 * rho 34928 = rho 34929 := by
      linear_combination r3657
    have ha4 : rho 34930 * (1 + rho 34929) = rho 34927 + rho 34928 := by
      linear_combination r3658
    have ha5 : rho 34931 * (1 - rho 34929) = rho 34926 - rho 34927 - rho 34928 := by
      linear_combination r3659
    have haddx :
        rho 34930 * (1 + 3021 * (rho 34925 * seg34AccX53 rho) * (rho 34924 * seg34AccY53 rho)) =
          rho 34925 * seg34AccX53 rho + rho 34924 * seg34AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34931 * (1 - 3021 * (rho 34925 * seg34AccX53 rho) * (rho 34924 * seg34AccY53 rho)) =
          (-1) * (rho 34925 * seg34AccX53 rho) - rho 34924 * seg34AccY53 rho +
            (seg34AccY53 rho - seg34AccX53 rho * (-1)) * (rho 34924 + rho 34925) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34931 * (1 - rho 34929) = rho 34926 - rho 34927 - rho 34928 := ha5
        _ = (-1) * rho 34927 - rho 34928 + (seg34AccY53 rho - seg34AccX53 rho * (-1)) * (rho 34924 + rho 34925) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX54 rho = seg34AccX53 rho - Bool.toZMod bit * (seg34AccX53 rho - rho 34930) := by
      have hd : rho 34932 = Bool.toZMod bit * (rho 34930 - seg34AccX53 rho) := by
        rw [← hbit]
        unfold seg34AccX53
        linear_combination -r3660
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY54 rho = seg34AccY53 rho - Bool.toZMod bit * (seg34AccY53 rho - rho 34931) := by
      have hd : rho 34933 = Bool.toZMod bit * (rho 34931 - seg34AccY53 rho) := by
        rw [← hbit]
        unfold seg34AccY53
        linear_combination -r3661
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34924 * rho 34925 = rho 34934 := by linear_combination r3662
    have hd1 : rho 34924 * rho 34924 = rho 34935 := by linear_combination r3663
    have hd2 : rho 34925 * rho 34925 = rho 34936 := by linear_combination r3664
    have hd3 : rho 34937 * (rho 34925 * rho 34925 + rho 34924 * rho 34924 * (-1)) = 2 * (rho 34924 * rho 34925) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 34938 * (2 - (rho 34925 * rho 34925 + rho 34924 * rho 34924 * (-1))) = rho 34925 * rho 34925 - rho 34924 * rho 34924 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
      ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
      ⟨(rho 34930 : Seg34.F), (rho 34931 : Seg34.F)⟩
      ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
      ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg34_rows54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3667 rho ∧ Seg34.relationRow3668 rho ∧ Seg34.relationRow3669 rho ∧ Seg34.relationRow3670 rho ∧ Seg34.relationRow3671 rho ∧ Seg34.relationRow3672 rho ∧ Seg34.relationRow3673 rho ∧ Seg34.relationRow3674 rho ∧ Seg34.relationRow3675 rho ∧ Seg34.relationRow3676 rho ∧ Seg34.relationRow3677 rho ∧ Seg34.relationRow3678 rho ∧ Seg34.relationRow3679 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  exact ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩

theorem seg34_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩ := by
  obtain ⟨r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩ := seg34_rows54 rho h
  unfold Seg34.relationRow3667 at r3667
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3667
  unfold Seg34.relationRow3668 at r3668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668
  unfold Seg34.relationRow3669 at r3669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3669
  unfold Seg34.relationRow3670 at r3670
  unfold Seg34.relationRow3671 at r3671
  unfold Seg34.relationRow3672 at r3672
  unfold Seg34.relationRow3673 at r3673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3673
  unfold Seg34.relationRow3674 at r3674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3674
  unfold Seg34.relationRow3675 at r3675
  unfold Seg34.relationRow3676 at r3676
  unfold Seg34.relationRow3677 at r3677
  unfold Seg34.relationRow3678 at r3678
  unfold Seg34.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 34046 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩ := by
    have hnextx : seg34AccX55 rho = seg34AccX54 rho + rho 34945 := by
      unfold seg34AccX55 seg34AccX54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 54]
      ring
    have hnexty : seg34AccY55 rho = seg34AccY54 rho + rho 34946 := by
      unfold seg34AccY55 seg34AccY54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 54]
      ring
    have ha0 : (rho 34937 + rho 34938) * (seg34AccX54 rho + seg34AccY54 rho) = rho 34939 := by
      unfold seg34AccX54 seg34AccY54
      linear_combination r3667
    have ha1 : rho 34938 * seg34AccX54 rho = rho 34940 := by
      unfold seg34AccX54
      linear_combination r3668
    have ha2 : rho 34937 * seg34AccY54 rho = rho 34941 := by
      unfold seg34AccY54
      linear_combination r3669
    have ha3 : 3021 * rho 34940 * rho 34941 = rho 34942 := by
      linear_combination r3670
    have ha4 : rho 34943 * (1 + rho 34942) = rho 34940 + rho 34941 := by
      linear_combination r3671
    have ha5 : rho 34944 * (1 - rho 34942) = rho 34939 - rho 34940 - rho 34941 := by
      linear_combination r3672
    have haddx :
        rho 34943 * (1 + 3021 * (rho 34938 * seg34AccX54 rho) * (rho 34937 * seg34AccY54 rho)) =
          rho 34938 * seg34AccX54 rho + rho 34937 * seg34AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34944 * (1 - 3021 * (rho 34938 * seg34AccX54 rho) * (rho 34937 * seg34AccY54 rho)) =
          (-1) * (rho 34938 * seg34AccX54 rho) - rho 34937 * seg34AccY54 rho +
            (seg34AccY54 rho - seg34AccX54 rho * (-1)) * (rho 34937 + rho 34938) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34944 * (1 - rho 34942) = rho 34939 - rho 34940 - rho 34941 := ha5
        _ = (-1) * rho 34940 - rho 34941 + (seg34AccY54 rho - seg34AccX54 rho * (-1)) * (rho 34937 + rho 34938) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX55 rho = seg34AccX54 rho - Bool.toZMod bit * (seg34AccX54 rho - rho 34943) := by
      have hd : rho 34945 = Bool.toZMod bit * (rho 34943 - seg34AccX54 rho) := by
        rw [← hbit]
        unfold seg34AccX54
        linear_combination -r3673
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY55 rho = seg34AccY54 rho - Bool.toZMod bit * (seg34AccY54 rho - rho 34944) := by
      have hd : rho 34946 = Bool.toZMod bit * (rho 34944 - seg34AccY54 rho) := by
        rw [← hbit]
        unfold seg34AccY54
        linear_combination -r3674
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34937 * rho 34938 = rho 34947 := by linear_combination r3675
    have hd1 : rho 34937 * rho 34937 = rho 34948 := by linear_combination r3676
    have hd2 : rho 34938 * rho 34938 = rho 34949 := by linear_combination r3677
    have hd3 : rho 34950 * (rho 34938 * rho 34938 + rho 34937 * rho 34937 * (-1)) = 2 * (rho 34937 * rho 34938) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 34951 * (2 - (rho 34938 * rho 34938 + rho 34937 * rho 34937 * (-1))) = rho 34938 * rho 34938 - rho 34937 * rho 34937 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
      ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
      ⟨(rho 34943 : Seg34.F), (rho 34944 : Seg34.F)⟩
      ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
      ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg34_hstep_c4 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg34_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg34_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg34_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg34_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg34_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg34_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg34_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg34_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg34_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg34_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
