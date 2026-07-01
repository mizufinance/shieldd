import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4538 rho ∧ Seg45.relationRow4539 rho ∧ Seg45.relationRow4540 rho ∧ Seg45.relationRow4541 rho ∧ Seg45.relationRow4542 rho ∧ Seg45.relationRow4543 rho ∧ Seg45.relationRow4544 rho ∧ Seg45.relationRow4545 rho ∧ Seg45.relationRow4546 rho ∧ Seg45.relationRow4547 rho ∧ Seg45.relationRow4548 rho ∧ Seg45.relationRow4549 rho ∧ Seg45.relationRow4550 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩

theorem seg45_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩ := by
  obtain ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩ := seg45_rows121 rho h
  unfold Seg45.relationRow4538 at r4538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4538
  unfold Seg45.relationRow4539 at r4539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4539
  unfold Seg45.relationRow4540 at r4540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4540
  unfold Seg45.relationRow4541 at r4541
  unfold Seg45.relationRow4542 at r4542
  unfold Seg45.relationRow4543 at r4543
  unfold Seg45.relationRow4544 at r4544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4544
  unfold Seg45.relationRow4545 at r4545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4545
  unfold Seg45.relationRow4546 at r4546
  unfold Seg45.relationRow4547 at r4547
  unfold Seg45.relationRow4548 at r4548
  unfold Seg45.relationRow4549 at r4549
  unfold Seg45.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 41069 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩ := by
    have hnextx : seg45AccX122 rho = seg45AccX121 rho + rho 42772 := by
      unfold seg45AccX122 seg45AccX121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 121]
      ring
    have hnexty : seg45AccY122 rho = seg45AccY121 rho + rho 42773 := by
      unfold seg45AccY122 seg45AccY121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 121]
      ring
    have ha0 : (rho 42764 + rho 42765) * (seg45AccX121 rho + seg45AccY121 rho) = rho 42766 := by
      unfold seg45AccX121 seg45AccY121
      linear_combination r4538
    have ha1 : rho 42765 * seg45AccX121 rho = rho 42767 := by
      unfold seg45AccX121
      linear_combination r4539
    have ha2 : rho 42764 * seg45AccY121 rho = rho 42768 := by
      unfold seg45AccY121
      linear_combination r4540
    have ha3 : 3021 * rho 42767 * rho 42768 = rho 42769 := by
      linear_combination r4541
    have ha4 : rho 42770 * (1 + rho 42769) = rho 42767 + rho 42768 := by
      linear_combination r4542
    have ha5 : rho 42771 * (1 - rho 42769) = rho 42766 - rho 42767 - rho 42768 := by
      linear_combination r4543
    have haddx :
        rho 42770 * (1 + 3021 * (rho 42765 * seg45AccX121 rho) * (rho 42764 * seg45AccY121 rho)) =
          rho 42765 * seg45AccX121 rho + rho 42764 * seg45AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42771 * (1 - 3021 * (rho 42765 * seg45AccX121 rho) * (rho 42764 * seg45AccY121 rho)) =
          (-1) * (rho 42765 * seg45AccX121 rho) - rho 42764 * seg45AccY121 rho +
            (seg45AccY121 rho - seg45AccX121 rho * (-1)) * (rho 42764 + rho 42765) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42771 * (1 - rho 42769) = rho 42766 - rho 42767 - rho 42768 := ha5
        _ = (-1) * rho 42767 - rho 42768 + (seg45AccY121 rho - seg45AccX121 rho * (-1)) * (rho 42764 + rho 42765) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX122 rho = seg45AccX121 rho - Bool.toZMod bit * (seg45AccX121 rho - rho 42770) := by
      have hd : rho 42772 = Bool.toZMod bit * (rho 42770 - seg45AccX121 rho) := by
        rw [← hbit]
        unfold seg45AccX121
        linear_combination -r4544
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY122 rho = seg45AccY121 rho - Bool.toZMod bit * (seg45AccY121 rho - rho 42771) := by
      have hd : rho 42773 = Bool.toZMod bit * (rho 42771 - seg45AccY121 rho) := by
        rw [← hbit]
        unfold seg45AccY121
        linear_combination -r4545
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42764 * rho 42765 = rho 42774 := by linear_combination r4546
    have hd1 : rho 42764 * rho 42764 = rho 42775 := by linear_combination r4547
    have hd2 : rho 42765 * rho 42765 = rho 42776 := by linear_combination r4548
    have hd3 : rho 42777 * (rho 42765 * rho 42765 + rho 42764 * rho 42764 * (-1)) = 2 * (rho 42764 * rho 42765) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 42778 * (2 - (rho 42765 * rho 42765 + rho 42764 * rho 42764 * (-1))) = rho 42765 * rho 42765 - rho 42764 * rho 42764 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
      ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
      ⟨(rho 42770 : Seg45.F), (rho 42771 : Seg45.F)⟩
      ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
      ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg45_rows122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4551 rho ∧ Seg45.relationRow4552 rho ∧ Seg45.relationRow4553 rho ∧ Seg45.relationRow4554 rho ∧ Seg45.relationRow4555 rho ∧ Seg45.relationRow4556 rho ∧ Seg45.relationRow4557 rho ∧ Seg45.relationRow4558 rho ∧ Seg45.relationRow4559 rho ∧ Seg45.relationRow4560 rho ∧ Seg45.relationRow4561 rho ∧ Seg45.relationRow4562 rho ∧ Seg45.relationRow4563 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩

theorem seg45_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩ := by
  obtain ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩ := seg45_rows122 rho h
  unfold Seg45.relationRow4551 at r4551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4551
  unfold Seg45.relationRow4552 at r4552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4552
  unfold Seg45.relationRow4553 at r4553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4553
  unfold Seg45.relationRow4554 at r4554
  unfold Seg45.relationRow4555 at r4555
  unfold Seg45.relationRow4556 at r4556
  unfold Seg45.relationRow4557 at r4557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4557
  unfold Seg45.relationRow4558 at r4558
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4558
  unfold Seg45.relationRow4559 at r4559
  unfold Seg45.relationRow4560 at r4560
  unfold Seg45.relationRow4561 at r4561
  unfold Seg45.relationRow4562 at r4562
  unfold Seg45.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 41070 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩ := by
    have hnextx : seg45AccX123 rho = seg45AccX122 rho + rho 42785 := by
      unfold seg45AccX123 seg45AccX122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 122]
      ring
    have hnexty : seg45AccY123 rho = seg45AccY122 rho + rho 42786 := by
      unfold seg45AccY123 seg45AccY122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 122]
      ring
    have ha0 : (rho 42777 + rho 42778) * (seg45AccX122 rho + seg45AccY122 rho) = rho 42779 := by
      unfold seg45AccX122 seg45AccY122
      linear_combination r4551
    have ha1 : rho 42778 * seg45AccX122 rho = rho 42780 := by
      unfold seg45AccX122
      linear_combination r4552
    have ha2 : rho 42777 * seg45AccY122 rho = rho 42781 := by
      unfold seg45AccY122
      linear_combination r4553
    have ha3 : 3021 * rho 42780 * rho 42781 = rho 42782 := by
      linear_combination r4554
    have ha4 : rho 42783 * (1 + rho 42782) = rho 42780 + rho 42781 := by
      linear_combination r4555
    have ha5 : rho 42784 * (1 - rho 42782) = rho 42779 - rho 42780 - rho 42781 := by
      linear_combination r4556
    have haddx :
        rho 42783 * (1 + 3021 * (rho 42778 * seg45AccX122 rho) * (rho 42777 * seg45AccY122 rho)) =
          rho 42778 * seg45AccX122 rho + rho 42777 * seg45AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42784 * (1 - 3021 * (rho 42778 * seg45AccX122 rho) * (rho 42777 * seg45AccY122 rho)) =
          (-1) * (rho 42778 * seg45AccX122 rho) - rho 42777 * seg45AccY122 rho +
            (seg45AccY122 rho - seg45AccX122 rho * (-1)) * (rho 42777 + rho 42778) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42784 * (1 - rho 42782) = rho 42779 - rho 42780 - rho 42781 := ha5
        _ = (-1) * rho 42780 - rho 42781 + (seg45AccY122 rho - seg45AccX122 rho * (-1)) * (rho 42777 + rho 42778) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX123 rho = seg45AccX122 rho - Bool.toZMod bit * (seg45AccX122 rho - rho 42783) := by
      have hd : rho 42785 = Bool.toZMod bit * (rho 42783 - seg45AccX122 rho) := by
        rw [← hbit]
        unfold seg45AccX122
        linear_combination -r4557
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY123 rho = seg45AccY122 rho - Bool.toZMod bit * (seg45AccY122 rho - rho 42784) := by
      have hd : rho 42786 = Bool.toZMod bit * (rho 42784 - seg45AccY122 rho) := by
        rw [← hbit]
        unfold seg45AccY122
        linear_combination -r4558
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42777 * rho 42778 = rho 42787 := by linear_combination r4559
    have hd1 : rho 42777 * rho 42777 = rho 42788 := by linear_combination r4560
    have hd2 : rho 42778 * rho 42778 = rho 42789 := by linear_combination r4561
    have hd3 : rho 42790 * (rho 42778 * rho 42778 + rho 42777 * rho 42777 * (-1)) = 2 * (rho 42777 * rho 42778) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 42791 * (2 - (rho 42778 * rho 42778 + rho 42777 * rho 42777 * (-1))) = rho 42778 * rho 42778 - rho 42777 * rho 42777 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
      ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
      ⟨(rho 42783 : Seg45.F), (rho 42784 : Seg45.F)⟩
      ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
      ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg45_rows123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4564 rho ∧ Seg45.relationRow4565 rho ∧ Seg45.relationRow4566 rho ∧ Seg45.relationRow4567 rho ∧ Seg45.relationRow4568 rho ∧ Seg45.relationRow4569 rho ∧ Seg45.relationRow4570 rho ∧ Seg45.relationRow4571 rho ∧ Seg45.relationRow4572 rho ∧ Seg45.relationRow4573 rho ∧ Seg45.relationRow4574 rho ∧ Seg45.relationRow4575 rho ∧ Seg45.relationRow4576 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩

theorem seg45_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩ := by
  obtain ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩ := seg45_rows123 rho h
  unfold Seg45.relationRow4564 at r4564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4564
  unfold Seg45.relationRow4565 at r4565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4565
  unfold Seg45.relationRow4566 at r4566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4566
  unfold Seg45.relationRow4567 at r4567
  unfold Seg45.relationRow4568 at r4568
  unfold Seg45.relationRow4569 at r4569
  unfold Seg45.relationRow4570 at r4570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4570
  unfold Seg45.relationRow4571 at r4571
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4571
  unfold Seg45.relationRow4572 at r4572
  unfold Seg45.relationRow4573 at r4573
  unfold Seg45.relationRow4574 at r4574
  unfold Seg45.relationRow4575 at r4575
  unfold Seg45.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 41071 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩ := by
    have hnextx : seg45AccX124 rho = seg45AccX123 rho + rho 42798 := by
      unfold seg45AccX124 seg45AccX123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 123]
      ring
    have hnexty : seg45AccY124 rho = seg45AccY123 rho + rho 42799 := by
      unfold seg45AccY124 seg45AccY123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 123]
      ring
    have ha0 : (rho 42790 + rho 42791) * (seg45AccX123 rho + seg45AccY123 rho) = rho 42792 := by
      unfold seg45AccX123 seg45AccY123
      linear_combination r4564
    have ha1 : rho 42791 * seg45AccX123 rho = rho 42793 := by
      unfold seg45AccX123
      linear_combination r4565
    have ha2 : rho 42790 * seg45AccY123 rho = rho 42794 := by
      unfold seg45AccY123
      linear_combination r4566
    have ha3 : 3021 * rho 42793 * rho 42794 = rho 42795 := by
      linear_combination r4567
    have ha4 : rho 42796 * (1 + rho 42795) = rho 42793 + rho 42794 := by
      linear_combination r4568
    have ha5 : rho 42797 * (1 - rho 42795) = rho 42792 - rho 42793 - rho 42794 := by
      linear_combination r4569
    have haddx :
        rho 42796 * (1 + 3021 * (rho 42791 * seg45AccX123 rho) * (rho 42790 * seg45AccY123 rho)) =
          rho 42791 * seg45AccX123 rho + rho 42790 * seg45AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42797 * (1 - 3021 * (rho 42791 * seg45AccX123 rho) * (rho 42790 * seg45AccY123 rho)) =
          (-1) * (rho 42791 * seg45AccX123 rho) - rho 42790 * seg45AccY123 rho +
            (seg45AccY123 rho - seg45AccX123 rho * (-1)) * (rho 42790 + rho 42791) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42797 * (1 - rho 42795) = rho 42792 - rho 42793 - rho 42794 := ha5
        _ = (-1) * rho 42793 - rho 42794 + (seg45AccY123 rho - seg45AccX123 rho * (-1)) * (rho 42790 + rho 42791) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX124 rho = seg45AccX123 rho - Bool.toZMod bit * (seg45AccX123 rho - rho 42796) := by
      have hd : rho 42798 = Bool.toZMod bit * (rho 42796 - seg45AccX123 rho) := by
        rw [← hbit]
        unfold seg45AccX123
        linear_combination -r4570
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY124 rho = seg45AccY123 rho - Bool.toZMod bit * (seg45AccY123 rho - rho 42797) := by
      have hd : rho 42799 = Bool.toZMod bit * (rho 42797 - seg45AccY123 rho) := by
        rw [← hbit]
        unfold seg45AccY123
        linear_combination -r4571
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42790 * rho 42791 = rho 42800 := by linear_combination r4572
    have hd1 : rho 42790 * rho 42790 = rho 42801 := by linear_combination r4573
    have hd2 : rho 42791 * rho 42791 = rho 42802 := by linear_combination r4574
    have hd3 : rho 42803 * (rho 42791 * rho 42791 + rho 42790 * rho 42790 * (-1)) = 2 * (rho 42790 * rho 42791) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 42804 * (2 - (rho 42791 * rho 42791 + rho 42790 * rho 42790 * (-1))) = rho 42791 * rho 42791 - rho 42790 * rho 42790 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
      ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
      ⟨(rho 42796 : Seg45.F), (rho 42797 : Seg45.F)⟩
      ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
      ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg45_rows124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4577 rho ∧ Seg45.relationRow4578 rho ∧ Seg45.relationRow4579 rho ∧ Seg45.relationRow4580 rho ∧ Seg45.relationRow4581 rho ∧ Seg45.relationRow4582 rho ∧ Seg45.relationRow4583 rho ∧ Seg45.relationRow4584 rho ∧ Seg45.relationRow4585 rho ∧ Seg45.relationRow4586 rho ∧ Seg45.relationRow4587 rho ∧ Seg45.relationRow4588 rho ∧ Seg45.relationRow4589 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩

theorem seg45_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩ := by
  obtain ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩ := seg45_rows124 rho h
  unfold Seg45.relationRow4577 at r4577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4577
  unfold Seg45.relationRow4578 at r4578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4578
  unfold Seg45.relationRow4579 at r4579
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4579
  unfold Seg45.relationRow4580 at r4580
  unfold Seg45.relationRow4581 at r4581
  unfold Seg45.relationRow4582 at r4582
  unfold Seg45.relationRow4583 at r4583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4583
  unfold Seg45.relationRow4584 at r4584
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4584
  unfold Seg45.relationRow4585 at r4585
  unfold Seg45.relationRow4586 at r4586
  unfold Seg45.relationRow4587 at r4587
  unfold Seg45.relationRow4588 at r4588
  unfold Seg45.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 41072 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩ := by
    have hnextx : seg45AccX125 rho = seg45AccX124 rho + rho 42811 := by
      unfold seg45AccX125 seg45AccX124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 124]
      ring
    have hnexty : seg45AccY125 rho = seg45AccY124 rho + rho 42812 := by
      unfold seg45AccY125 seg45AccY124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 124]
      ring
    have ha0 : (rho 42803 + rho 42804) * (seg45AccX124 rho + seg45AccY124 rho) = rho 42805 := by
      unfold seg45AccX124 seg45AccY124
      linear_combination r4577
    have ha1 : rho 42804 * seg45AccX124 rho = rho 42806 := by
      unfold seg45AccX124
      linear_combination r4578
    have ha2 : rho 42803 * seg45AccY124 rho = rho 42807 := by
      unfold seg45AccY124
      linear_combination r4579
    have ha3 : 3021 * rho 42806 * rho 42807 = rho 42808 := by
      linear_combination r4580
    have ha4 : rho 42809 * (1 + rho 42808) = rho 42806 + rho 42807 := by
      linear_combination r4581
    have ha5 : rho 42810 * (1 - rho 42808) = rho 42805 - rho 42806 - rho 42807 := by
      linear_combination r4582
    have haddx :
        rho 42809 * (1 + 3021 * (rho 42804 * seg45AccX124 rho) * (rho 42803 * seg45AccY124 rho)) =
          rho 42804 * seg45AccX124 rho + rho 42803 * seg45AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42810 * (1 - 3021 * (rho 42804 * seg45AccX124 rho) * (rho 42803 * seg45AccY124 rho)) =
          (-1) * (rho 42804 * seg45AccX124 rho) - rho 42803 * seg45AccY124 rho +
            (seg45AccY124 rho - seg45AccX124 rho * (-1)) * (rho 42803 + rho 42804) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42810 * (1 - rho 42808) = rho 42805 - rho 42806 - rho 42807 := ha5
        _ = (-1) * rho 42806 - rho 42807 + (seg45AccY124 rho - seg45AccX124 rho * (-1)) * (rho 42803 + rho 42804) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX125 rho = seg45AccX124 rho - Bool.toZMod bit * (seg45AccX124 rho - rho 42809) := by
      have hd : rho 42811 = Bool.toZMod bit * (rho 42809 - seg45AccX124 rho) := by
        rw [← hbit]
        unfold seg45AccX124
        linear_combination -r4583
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY125 rho = seg45AccY124 rho - Bool.toZMod bit * (seg45AccY124 rho - rho 42810) := by
      have hd : rho 42812 = Bool.toZMod bit * (rho 42810 - seg45AccY124 rho) := by
        rw [← hbit]
        unfold seg45AccY124
        linear_combination -r4584
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42803 * rho 42804 = rho 42813 := by linear_combination r4585
    have hd1 : rho 42803 * rho 42803 = rho 42814 := by linear_combination r4586
    have hd2 : rho 42804 * rho 42804 = rho 42815 := by linear_combination r4587
    have hd3 : rho 42816 * (rho 42804 * rho 42804 + rho 42803 * rho 42803 * (-1)) = 2 * (rho 42803 * rho 42804) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 42817 * (2 - (rho 42804 * rho 42804 + rho 42803 * rho 42803 * (-1))) = rho 42804 * rho 42804 - rho 42803 * rho 42803 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
      ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
      ⟨(rho 42809 : Seg45.F), (rho 42810 : Seg45.F)⟩
      ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
      ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg45_rows125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4590 rho ∧ Seg45.relationRow4591 rho ∧ Seg45.relationRow4592 rho ∧ Seg45.relationRow4593 rho ∧ Seg45.relationRow4594 rho ∧ Seg45.relationRow4595 rho ∧ Seg45.relationRow4596 rho ∧ Seg45.relationRow4597 rho ∧ Seg45.relationRow4598 rho ∧ Seg45.relationRow4599 rho ∧ Seg45.relationRow4600 rho ∧ Seg45.relationRow4601 rho ∧ Seg45.relationRow4602 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩

theorem seg45_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩ := by
  obtain ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩ := seg45_rows125 rho h
  unfold Seg45.relationRow4590 at r4590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4590
  unfold Seg45.relationRow4591 at r4591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4591
  unfold Seg45.relationRow4592 at r4592
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4592
  unfold Seg45.relationRow4593 at r4593
  unfold Seg45.relationRow4594 at r4594
  unfold Seg45.relationRow4595 at r4595
  unfold Seg45.relationRow4596 at r4596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4596
  unfold Seg45.relationRow4597 at r4597
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4597
  unfold Seg45.relationRow4598 at r4598
  unfold Seg45.relationRow4599 at r4599
  unfold Seg45.relationRow4600 at r4600
  unfold Seg45.relationRow4601 at r4601
  unfold Seg45.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 41073 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩ := by
    have hnextx : seg45AccX126 rho = seg45AccX125 rho + rho 42824 := by
      unfold seg45AccX126 seg45AccX125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 125]
      ring
    have hnexty : seg45AccY126 rho = seg45AccY125 rho + rho 42825 := by
      unfold seg45AccY126 seg45AccY125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 125]
      ring
    have ha0 : (rho 42816 + rho 42817) * (seg45AccX125 rho + seg45AccY125 rho) = rho 42818 := by
      unfold seg45AccX125 seg45AccY125
      linear_combination r4590
    have ha1 : rho 42817 * seg45AccX125 rho = rho 42819 := by
      unfold seg45AccX125
      linear_combination r4591
    have ha2 : rho 42816 * seg45AccY125 rho = rho 42820 := by
      unfold seg45AccY125
      linear_combination r4592
    have ha3 : 3021 * rho 42819 * rho 42820 = rho 42821 := by
      linear_combination r4593
    have ha4 : rho 42822 * (1 + rho 42821) = rho 42819 + rho 42820 := by
      linear_combination r4594
    have ha5 : rho 42823 * (1 - rho 42821) = rho 42818 - rho 42819 - rho 42820 := by
      linear_combination r4595
    have haddx :
        rho 42822 * (1 + 3021 * (rho 42817 * seg45AccX125 rho) * (rho 42816 * seg45AccY125 rho)) =
          rho 42817 * seg45AccX125 rho + rho 42816 * seg45AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42823 * (1 - 3021 * (rho 42817 * seg45AccX125 rho) * (rho 42816 * seg45AccY125 rho)) =
          (-1) * (rho 42817 * seg45AccX125 rho) - rho 42816 * seg45AccY125 rho +
            (seg45AccY125 rho - seg45AccX125 rho * (-1)) * (rho 42816 + rho 42817) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42823 * (1 - rho 42821) = rho 42818 - rho 42819 - rho 42820 := ha5
        _ = (-1) * rho 42819 - rho 42820 + (seg45AccY125 rho - seg45AccX125 rho * (-1)) * (rho 42816 + rho 42817) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX126 rho = seg45AccX125 rho - Bool.toZMod bit * (seg45AccX125 rho - rho 42822) := by
      have hd : rho 42824 = Bool.toZMod bit * (rho 42822 - seg45AccX125 rho) := by
        rw [← hbit]
        unfold seg45AccX125
        linear_combination -r4596
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY126 rho = seg45AccY125 rho - Bool.toZMod bit * (seg45AccY125 rho - rho 42823) := by
      have hd : rho 42825 = Bool.toZMod bit * (rho 42823 - seg45AccY125 rho) := by
        rw [← hbit]
        unfold seg45AccY125
        linear_combination -r4597
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42816 * rho 42817 = rho 42826 := by linear_combination r4598
    have hd1 : rho 42816 * rho 42816 = rho 42827 := by linear_combination r4599
    have hd2 : rho 42817 * rho 42817 = rho 42828 := by linear_combination r4600
    have hd3 : rho 42829 * (rho 42817 * rho 42817 + rho 42816 * rho 42816 * (-1)) = 2 * (rho 42816 * rho 42817) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 42830 * (2 - (rho 42817 * rho 42817 + rho 42816 * rho 42816 * (-1))) = rho 42817 * rho 42817 - rho 42816 * rho 42816 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
      ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
      ⟨(rho 42822 : Seg45.F), (rho 42823 : Seg45.F)⟩
      ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
      ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg45_rows126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4603 rho ∧ Seg45.relationRow4604 rho ∧ Seg45.relationRow4605 rho ∧ Seg45.relationRow4606 rho ∧ Seg45.relationRow4607 rho ∧ Seg45.relationRow4608 rho ∧ Seg45.relationRow4609 rho ∧ Seg45.relationRow4610 rho ∧ Seg45.relationRow4611 rho ∧ Seg45.relationRow4612 rho ∧ Seg45.relationRow4613 rho ∧ Seg45.relationRow4614 rho ∧ Seg45.relationRow4615 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩

theorem seg45_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩ := by
  obtain ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩ := seg45_rows126 rho h
  unfold Seg45.relationRow4603 at r4603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4603
  unfold Seg45.relationRow4604 at r4604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4604
  unfold Seg45.relationRow4605 at r4605
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4605
  unfold Seg45.relationRow4606 at r4606
  unfold Seg45.relationRow4607 at r4607
  unfold Seg45.relationRow4608 at r4608
  unfold Seg45.relationRow4609 at r4609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4609
  unfold Seg45.relationRow4610 at r4610
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4610
  unfold Seg45.relationRow4611 at r4611
  unfold Seg45.relationRow4612 at r4612
  unfold Seg45.relationRow4613 at r4613
  unfold Seg45.relationRow4614 at r4614
  unfold Seg45.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 41074 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩ := by
    have hnextx : seg45AccX127 rho = seg45AccX126 rho + rho 42837 := by
      unfold seg45AccX127 seg45AccX126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 126]
      ring
    have hnexty : seg45AccY127 rho = seg45AccY126 rho + rho 42838 := by
      unfold seg45AccY127 seg45AccY126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 126]
      ring
    have ha0 : (rho 42829 + rho 42830) * (seg45AccX126 rho + seg45AccY126 rho) = rho 42831 := by
      unfold seg45AccX126 seg45AccY126
      linear_combination r4603
    have ha1 : rho 42830 * seg45AccX126 rho = rho 42832 := by
      unfold seg45AccX126
      linear_combination r4604
    have ha2 : rho 42829 * seg45AccY126 rho = rho 42833 := by
      unfold seg45AccY126
      linear_combination r4605
    have ha3 : 3021 * rho 42832 * rho 42833 = rho 42834 := by
      linear_combination r4606
    have ha4 : rho 42835 * (1 + rho 42834) = rho 42832 + rho 42833 := by
      linear_combination r4607
    have ha5 : rho 42836 * (1 - rho 42834) = rho 42831 - rho 42832 - rho 42833 := by
      linear_combination r4608
    have haddx :
        rho 42835 * (1 + 3021 * (rho 42830 * seg45AccX126 rho) * (rho 42829 * seg45AccY126 rho)) =
          rho 42830 * seg45AccX126 rho + rho 42829 * seg45AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42836 * (1 - 3021 * (rho 42830 * seg45AccX126 rho) * (rho 42829 * seg45AccY126 rho)) =
          (-1) * (rho 42830 * seg45AccX126 rho) - rho 42829 * seg45AccY126 rho +
            (seg45AccY126 rho - seg45AccX126 rho * (-1)) * (rho 42829 + rho 42830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42836 * (1 - rho 42834) = rho 42831 - rho 42832 - rho 42833 := ha5
        _ = (-1) * rho 42832 - rho 42833 + (seg45AccY126 rho - seg45AccX126 rho * (-1)) * (rho 42829 + rho 42830) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX127 rho = seg45AccX126 rho - Bool.toZMod bit * (seg45AccX126 rho - rho 42835) := by
      have hd : rho 42837 = Bool.toZMod bit * (rho 42835 - seg45AccX126 rho) := by
        rw [← hbit]
        unfold seg45AccX126
        linear_combination -r4609
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY127 rho = seg45AccY126 rho - Bool.toZMod bit * (seg45AccY126 rho - rho 42836) := by
      have hd : rho 42838 = Bool.toZMod bit * (rho 42836 - seg45AccY126 rho) := by
        rw [← hbit]
        unfold seg45AccY126
        linear_combination -r4610
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42829 * rho 42830 = rho 42839 := by linear_combination r4611
    have hd1 : rho 42829 * rho 42829 = rho 42840 := by linear_combination r4612
    have hd2 : rho 42830 * rho 42830 = rho 42841 := by linear_combination r4613
    have hd3 : rho 42842 * (rho 42830 * rho 42830 + rho 42829 * rho 42829 * (-1)) = 2 * (rho 42829 * rho 42830) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 42843 * (2 - (rho 42830 * rho 42830 + rho 42829 * rho 42829 * (-1))) = rho 42830 * rho 42830 - rho 42829 * rho 42829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
      ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
      ⟨(rho 42835 : Seg45.F), (rho 42836 : Seg45.F)⟩
      ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
      ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg45_rows127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4616 rho ∧ Seg45.relationRow4617 rho ∧ Seg45.relationRow4618 rho ∧ Seg45.relationRow4619 rho ∧ Seg45.relationRow4620 rho ∧ Seg45.relationRow4621 rho ∧ Seg45.relationRow4622 rho ∧ Seg45.relationRow4623 rho ∧ Seg45.relationRow4624 rho ∧ Seg45.relationRow4625 rho ∧ Seg45.relationRow4626 rho ∧ Seg45.relationRow4627 rho ∧ Seg45.relationRow4628 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩

theorem seg45_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩ := by
  obtain ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩ := seg45_rows127 rho h
  unfold Seg45.relationRow4616 at r4616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4616
  unfold Seg45.relationRow4617 at r4617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4617
  unfold Seg45.relationRow4618 at r4618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4618
  unfold Seg45.relationRow4619 at r4619
  unfold Seg45.relationRow4620 at r4620
  unfold Seg45.relationRow4621 at r4621
  unfold Seg45.relationRow4622 at r4622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4622
  unfold Seg45.relationRow4623 at r4623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4623
  unfold Seg45.relationRow4624 at r4624
  unfold Seg45.relationRow4625 at r4625
  unfold Seg45.relationRow4626 at r4626
  unfold Seg45.relationRow4627 at r4627
  unfold Seg45.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 41075 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩ := by
    have hnextx : seg45AccX128 rho = seg45AccX127 rho + rho 42850 := by
      unfold seg45AccX128 seg45AccX127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 127]
      ring
    have hnexty : seg45AccY128 rho = seg45AccY127 rho + rho 42851 := by
      unfold seg45AccY128 seg45AccY127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 127]
      ring
    have ha0 : (rho 42842 + rho 42843) * (seg45AccX127 rho + seg45AccY127 rho) = rho 42844 := by
      unfold seg45AccX127 seg45AccY127
      linear_combination r4616
    have ha1 : rho 42843 * seg45AccX127 rho = rho 42845 := by
      unfold seg45AccX127
      linear_combination r4617
    have ha2 : rho 42842 * seg45AccY127 rho = rho 42846 := by
      unfold seg45AccY127
      linear_combination r4618
    have ha3 : 3021 * rho 42845 * rho 42846 = rho 42847 := by
      linear_combination r4619
    have ha4 : rho 42848 * (1 + rho 42847) = rho 42845 + rho 42846 := by
      linear_combination r4620
    have ha5 : rho 42849 * (1 - rho 42847) = rho 42844 - rho 42845 - rho 42846 := by
      linear_combination r4621
    have haddx :
        rho 42848 * (1 + 3021 * (rho 42843 * seg45AccX127 rho) * (rho 42842 * seg45AccY127 rho)) =
          rho 42843 * seg45AccX127 rho + rho 42842 * seg45AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42849 * (1 - 3021 * (rho 42843 * seg45AccX127 rho) * (rho 42842 * seg45AccY127 rho)) =
          (-1) * (rho 42843 * seg45AccX127 rho) - rho 42842 * seg45AccY127 rho +
            (seg45AccY127 rho - seg45AccX127 rho * (-1)) * (rho 42842 + rho 42843) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42849 * (1 - rho 42847) = rho 42844 - rho 42845 - rho 42846 := ha5
        _ = (-1) * rho 42845 - rho 42846 + (seg45AccY127 rho - seg45AccX127 rho * (-1)) * (rho 42842 + rho 42843) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX128 rho = seg45AccX127 rho - Bool.toZMod bit * (seg45AccX127 rho - rho 42848) := by
      have hd : rho 42850 = Bool.toZMod bit * (rho 42848 - seg45AccX127 rho) := by
        rw [← hbit]
        unfold seg45AccX127
        linear_combination -r4622
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY128 rho = seg45AccY127 rho - Bool.toZMod bit * (seg45AccY127 rho - rho 42849) := by
      have hd : rho 42851 = Bool.toZMod bit * (rho 42849 - seg45AccY127 rho) := by
        rw [← hbit]
        unfold seg45AccY127
        linear_combination -r4623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42842 * rho 42843 = rho 42852 := by linear_combination r4624
    have hd1 : rho 42842 * rho 42842 = rho 42853 := by linear_combination r4625
    have hd2 : rho 42843 * rho 42843 = rho 42854 := by linear_combination r4626
    have hd3 : rho 42855 * (rho 42843 * rho 42843 + rho 42842 * rho 42842 * (-1)) = 2 * (rho 42842 * rho 42843) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 42856 * (2 - (rho 42843 * rho 42843 + rho 42842 * rho 42842 * (-1))) = rho 42843 * rho 42843 - rho 42842 * rho 42842 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
      ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
      ⟨(rho 42848 : Seg45.F), (rho 42849 : Seg45.F)⟩
      ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
      ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg45_rows128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4629 rho ∧ Seg45.relationRow4630 rho ∧ Seg45.relationRow4631 rho ∧ Seg45.relationRow4632 rho ∧ Seg45.relationRow4633 rho ∧ Seg45.relationRow4634 rho ∧ Seg45.relationRow4635 rho ∧ Seg45.relationRow4636 rho ∧ Seg45.relationRow4637 rho ∧ Seg45.relationRow4638 rho ∧ Seg45.relationRow4639 rho ∧ Seg45.relationRow4640 rho ∧ Seg45.relationRow4641 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩

theorem seg45_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩ := by
  obtain ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩ := seg45_rows128 rho h
  unfold Seg45.relationRow4629 at r4629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4629
  unfold Seg45.relationRow4630 at r4630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4630
  unfold Seg45.relationRow4631 at r4631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4631
  unfold Seg45.relationRow4632 at r4632
  unfold Seg45.relationRow4633 at r4633
  unfold Seg45.relationRow4634 at r4634
  unfold Seg45.relationRow4635 at r4635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4635
  unfold Seg45.relationRow4636 at r4636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4636
  unfold Seg45.relationRow4637 at r4637
  unfold Seg45.relationRow4638 at r4638
  unfold Seg45.relationRow4639 at r4639
  unfold Seg45.relationRow4640 at r4640
  unfold Seg45.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 41076 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩ := by
    have hnextx : seg45AccX129 rho = seg45AccX128 rho + rho 42863 := by
      unfold seg45AccX129 seg45AccX128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 128]
      ring
    have hnexty : seg45AccY129 rho = seg45AccY128 rho + rho 42864 := by
      unfold seg45AccY129 seg45AccY128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 128]
      ring
    have ha0 : (rho 42855 + rho 42856) * (seg45AccX128 rho + seg45AccY128 rho) = rho 42857 := by
      unfold seg45AccX128 seg45AccY128
      linear_combination r4629
    have ha1 : rho 42856 * seg45AccX128 rho = rho 42858 := by
      unfold seg45AccX128
      linear_combination r4630
    have ha2 : rho 42855 * seg45AccY128 rho = rho 42859 := by
      unfold seg45AccY128
      linear_combination r4631
    have ha3 : 3021 * rho 42858 * rho 42859 = rho 42860 := by
      linear_combination r4632
    have ha4 : rho 42861 * (1 + rho 42860) = rho 42858 + rho 42859 := by
      linear_combination r4633
    have ha5 : rho 42862 * (1 - rho 42860) = rho 42857 - rho 42858 - rho 42859 := by
      linear_combination r4634
    have haddx :
        rho 42861 * (1 + 3021 * (rho 42856 * seg45AccX128 rho) * (rho 42855 * seg45AccY128 rho)) =
          rho 42856 * seg45AccX128 rho + rho 42855 * seg45AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42862 * (1 - 3021 * (rho 42856 * seg45AccX128 rho) * (rho 42855 * seg45AccY128 rho)) =
          (-1) * (rho 42856 * seg45AccX128 rho) - rho 42855 * seg45AccY128 rho +
            (seg45AccY128 rho - seg45AccX128 rho * (-1)) * (rho 42855 + rho 42856) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42862 * (1 - rho 42860) = rho 42857 - rho 42858 - rho 42859 := ha5
        _ = (-1) * rho 42858 - rho 42859 + (seg45AccY128 rho - seg45AccX128 rho * (-1)) * (rho 42855 + rho 42856) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX129 rho = seg45AccX128 rho - Bool.toZMod bit * (seg45AccX128 rho - rho 42861) := by
      have hd : rho 42863 = Bool.toZMod bit * (rho 42861 - seg45AccX128 rho) := by
        rw [← hbit]
        unfold seg45AccX128
        linear_combination -r4635
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY129 rho = seg45AccY128 rho - Bool.toZMod bit * (seg45AccY128 rho - rho 42862) := by
      have hd : rho 42864 = Bool.toZMod bit * (rho 42862 - seg45AccY128 rho) := by
        rw [← hbit]
        unfold seg45AccY128
        linear_combination -r4636
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42855 * rho 42856 = rho 42865 := by linear_combination r4637
    have hd1 : rho 42855 * rho 42855 = rho 42866 := by linear_combination r4638
    have hd2 : rho 42856 * rho 42856 = rho 42867 := by linear_combination r4639
    have hd3 : rho 42868 * (rho 42856 * rho 42856 + rho 42855 * rho 42855 * (-1)) = 2 * (rho 42855 * rho 42856) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 42869 * (2 - (rho 42856 * rho 42856 + rho 42855 * rho 42855 * (-1))) = rho 42856 * rho 42856 - rho 42855 * rho 42855 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
      ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
      ⟨(rho 42861 : Seg45.F), (rho 42862 : Seg45.F)⟩
      ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
      ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg45_rows129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4642 rho ∧ Seg45.relationRow4643 rho ∧ Seg45.relationRow4644 rho ∧ Seg45.relationRow4645 rho ∧ Seg45.relationRow4646 rho ∧ Seg45.relationRow4647 rho ∧ Seg45.relationRow4648 rho ∧ Seg45.relationRow4649 rho ∧ Seg45.relationRow4650 rho ∧ Seg45.relationRow4651 rho ∧ Seg45.relationRow4652 rho ∧ Seg45.relationRow4653 rho ∧ Seg45.relationRow4654 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩

theorem seg45_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩ := by
  obtain ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩ := seg45_rows129 rho h
  unfold Seg45.relationRow4642 at r4642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4642
  unfold Seg45.relationRow4643 at r4643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4643
  unfold Seg45.relationRow4644 at r4644
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4644
  unfold Seg45.relationRow4645 at r4645
  unfold Seg45.relationRow4646 at r4646
  unfold Seg45.relationRow4647 at r4647
  unfold Seg45.relationRow4648 at r4648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4648
  unfold Seg45.relationRow4649 at r4649
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4649
  unfold Seg45.relationRow4650 at r4650
  unfold Seg45.relationRow4651 at r4651
  unfold Seg45.relationRow4652 at r4652
  unfold Seg45.relationRow4653 at r4653
  unfold Seg45.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 41077 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩ := by
    have hnextx : seg45AccX130 rho = seg45AccX129 rho + rho 42876 := by
      unfold seg45AccX130 seg45AccX129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 129]
      ring
    have hnexty : seg45AccY130 rho = seg45AccY129 rho + rho 42877 := by
      unfold seg45AccY130 seg45AccY129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 129]
      ring
    have ha0 : (rho 42868 + rho 42869) * (seg45AccX129 rho + seg45AccY129 rho) = rho 42870 := by
      unfold seg45AccX129 seg45AccY129
      linear_combination r4642
    have ha1 : rho 42869 * seg45AccX129 rho = rho 42871 := by
      unfold seg45AccX129
      linear_combination r4643
    have ha2 : rho 42868 * seg45AccY129 rho = rho 42872 := by
      unfold seg45AccY129
      linear_combination r4644
    have ha3 : 3021 * rho 42871 * rho 42872 = rho 42873 := by
      linear_combination r4645
    have ha4 : rho 42874 * (1 + rho 42873) = rho 42871 + rho 42872 := by
      linear_combination r4646
    have ha5 : rho 42875 * (1 - rho 42873) = rho 42870 - rho 42871 - rho 42872 := by
      linear_combination r4647
    have haddx :
        rho 42874 * (1 + 3021 * (rho 42869 * seg45AccX129 rho) * (rho 42868 * seg45AccY129 rho)) =
          rho 42869 * seg45AccX129 rho + rho 42868 * seg45AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42875 * (1 - 3021 * (rho 42869 * seg45AccX129 rho) * (rho 42868 * seg45AccY129 rho)) =
          (-1) * (rho 42869 * seg45AccX129 rho) - rho 42868 * seg45AccY129 rho +
            (seg45AccY129 rho - seg45AccX129 rho * (-1)) * (rho 42868 + rho 42869) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42875 * (1 - rho 42873) = rho 42870 - rho 42871 - rho 42872 := ha5
        _ = (-1) * rho 42871 - rho 42872 + (seg45AccY129 rho - seg45AccX129 rho * (-1)) * (rho 42868 + rho 42869) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX130 rho = seg45AccX129 rho - Bool.toZMod bit * (seg45AccX129 rho - rho 42874) := by
      have hd : rho 42876 = Bool.toZMod bit * (rho 42874 - seg45AccX129 rho) := by
        rw [← hbit]
        unfold seg45AccX129
        linear_combination -r4648
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY130 rho = seg45AccY129 rho - Bool.toZMod bit * (seg45AccY129 rho - rho 42875) := by
      have hd : rho 42877 = Bool.toZMod bit * (rho 42875 - seg45AccY129 rho) := by
        rw [← hbit]
        unfold seg45AccY129
        linear_combination -r4649
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42868 * rho 42869 = rho 42878 := by linear_combination r4650
    have hd1 : rho 42868 * rho 42868 = rho 42879 := by linear_combination r4651
    have hd2 : rho 42869 * rho 42869 = rho 42880 := by linear_combination r4652
    have hd3 : rho 42881 * (rho 42869 * rho 42869 + rho 42868 * rho 42868 * (-1)) = 2 * (rho 42868 * rho 42869) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 42882 * (2 - (rho 42869 * rho 42869 + rho 42868 * rho 42868 * (-1))) = rho 42869 * rho 42869 - rho 42868 * rho 42868 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
      ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
      ⟨(rho 42874 : Seg45.F), (rho 42875 : Seg45.F)⟩
      ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
      ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg45_rows130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4655 rho ∧ Seg45.relationRow4656 rho ∧ Seg45.relationRow4657 rho ∧ Seg45.relationRow4658 rho ∧ Seg45.relationRow4659 rho ∧ Seg45.relationRow4660 rho ∧ Seg45.relationRow4661 rho ∧ Seg45.relationRow4662 rho ∧ Seg45.relationRow4663 rho ∧ Seg45.relationRow4664 rho ∧ Seg45.relationRow4665 rho ∧ Seg45.relationRow4666 rho ∧ Seg45.relationRow4667 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩

theorem seg45_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩ := by
  obtain ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩ := seg45_rows130 rho h
  unfold Seg45.relationRow4655 at r4655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4655
  unfold Seg45.relationRow4656 at r4656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4656
  unfold Seg45.relationRow4657 at r4657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4657
  unfold Seg45.relationRow4658 at r4658
  unfold Seg45.relationRow4659 at r4659
  unfold Seg45.relationRow4660 at r4660
  unfold Seg45.relationRow4661 at r4661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4661
  unfold Seg45.relationRow4662 at r4662
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4662
  unfold Seg45.relationRow4663 at r4663
  unfold Seg45.relationRow4664 at r4664
  unfold Seg45.relationRow4665 at r4665
  unfold Seg45.relationRow4666 at r4666
  unfold Seg45.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 41078 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩ := by
    have hnextx : seg45AccX131 rho = seg45AccX130 rho + rho 42889 := by
      unfold seg45AccX131 seg45AccX130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 130]
      ring
    have hnexty : seg45AccY131 rho = seg45AccY130 rho + rho 42890 := by
      unfold seg45AccY131 seg45AccY130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 130]
      ring
    have ha0 : (rho 42881 + rho 42882) * (seg45AccX130 rho + seg45AccY130 rho) = rho 42883 := by
      unfold seg45AccX130 seg45AccY130
      linear_combination r4655
    have ha1 : rho 42882 * seg45AccX130 rho = rho 42884 := by
      unfold seg45AccX130
      linear_combination r4656
    have ha2 : rho 42881 * seg45AccY130 rho = rho 42885 := by
      unfold seg45AccY130
      linear_combination r4657
    have ha3 : 3021 * rho 42884 * rho 42885 = rho 42886 := by
      linear_combination r4658
    have ha4 : rho 42887 * (1 + rho 42886) = rho 42884 + rho 42885 := by
      linear_combination r4659
    have ha5 : rho 42888 * (1 - rho 42886) = rho 42883 - rho 42884 - rho 42885 := by
      linear_combination r4660
    have haddx :
        rho 42887 * (1 + 3021 * (rho 42882 * seg45AccX130 rho) * (rho 42881 * seg45AccY130 rho)) =
          rho 42882 * seg45AccX130 rho + rho 42881 * seg45AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42888 * (1 - 3021 * (rho 42882 * seg45AccX130 rho) * (rho 42881 * seg45AccY130 rho)) =
          (-1) * (rho 42882 * seg45AccX130 rho) - rho 42881 * seg45AccY130 rho +
            (seg45AccY130 rho - seg45AccX130 rho * (-1)) * (rho 42881 + rho 42882) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42888 * (1 - rho 42886) = rho 42883 - rho 42884 - rho 42885 := ha5
        _ = (-1) * rho 42884 - rho 42885 + (seg45AccY130 rho - seg45AccX130 rho * (-1)) * (rho 42881 + rho 42882) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX131 rho = seg45AccX130 rho - Bool.toZMod bit * (seg45AccX130 rho - rho 42887) := by
      have hd : rho 42889 = Bool.toZMod bit * (rho 42887 - seg45AccX130 rho) := by
        rw [← hbit]
        unfold seg45AccX130
        linear_combination -r4661
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY131 rho = seg45AccY130 rho - Bool.toZMod bit * (seg45AccY130 rho - rho 42888) := by
      have hd : rho 42890 = Bool.toZMod bit * (rho 42888 - seg45AccY130 rho) := by
        rw [← hbit]
        unfold seg45AccY130
        linear_combination -r4662
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42881 * rho 42882 = rho 42891 := by linear_combination r4663
    have hd1 : rho 42881 * rho 42881 = rho 42892 := by linear_combination r4664
    have hd2 : rho 42882 * rho 42882 = rho 42893 := by linear_combination r4665
    have hd3 : rho 42894 * (rho 42882 * rho 42882 + rho 42881 * rho 42881 * (-1)) = 2 * (rho 42881 * rho 42882) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 42895 * (2 - (rho 42882 * rho 42882 + rho 42881 * rho 42881 * (-1))) = rho 42882 * rho 42882 - rho 42881 * rho 42881 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
      ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
      ⟨(rho 42887 : Seg45.F), (rho 42888 : Seg45.F)⟩
      ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
      ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg45_rows131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4668 rho ∧ Seg45.relationRow4669 rho ∧ Seg45.relationRow4670 rho ∧ Seg45.relationRow4671 rho ∧ Seg45.relationRow4672 rho ∧ Seg45.relationRow4673 rho ∧ Seg45.relationRow4674 rho ∧ Seg45.relationRow4675 rho ∧ Seg45.relationRow4676 rho ∧ Seg45.relationRow4677 rho ∧ Seg45.relationRow4678 rho ∧ Seg45.relationRow4679 rho ∧ Seg45.relationRow4680 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩

theorem seg45_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩ := by
  obtain ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩ := seg45_rows131 rho h
  unfold Seg45.relationRow4668 at r4668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4668
  unfold Seg45.relationRow4669 at r4669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4669
  unfold Seg45.relationRow4670 at r4670
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4670
  unfold Seg45.relationRow4671 at r4671
  unfold Seg45.relationRow4672 at r4672
  unfold Seg45.relationRow4673 at r4673
  unfold Seg45.relationRow4674 at r4674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4674
  unfold Seg45.relationRow4675 at r4675
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4675
  unfold Seg45.relationRow4676 at r4676
  unfold Seg45.relationRow4677 at r4677
  unfold Seg45.relationRow4678 at r4678
  unfold Seg45.relationRow4679 at r4679
  unfold Seg45.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 41079 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩ := by
    have hnextx : seg45AccX132 rho = seg45AccX131 rho + rho 42902 := by
      unfold seg45AccX132 seg45AccX131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 131]
      ring
    have hnexty : seg45AccY132 rho = seg45AccY131 rho + rho 42903 := by
      unfold seg45AccY132 seg45AccY131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 131]
      ring
    have ha0 : (rho 42894 + rho 42895) * (seg45AccX131 rho + seg45AccY131 rho) = rho 42896 := by
      unfold seg45AccX131 seg45AccY131
      linear_combination r4668
    have ha1 : rho 42895 * seg45AccX131 rho = rho 42897 := by
      unfold seg45AccX131
      linear_combination r4669
    have ha2 : rho 42894 * seg45AccY131 rho = rho 42898 := by
      unfold seg45AccY131
      linear_combination r4670
    have ha3 : 3021 * rho 42897 * rho 42898 = rho 42899 := by
      linear_combination r4671
    have ha4 : rho 42900 * (1 + rho 42899) = rho 42897 + rho 42898 := by
      linear_combination r4672
    have ha5 : rho 42901 * (1 - rho 42899) = rho 42896 - rho 42897 - rho 42898 := by
      linear_combination r4673
    have haddx :
        rho 42900 * (1 + 3021 * (rho 42895 * seg45AccX131 rho) * (rho 42894 * seg45AccY131 rho)) =
          rho 42895 * seg45AccX131 rho + rho 42894 * seg45AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42901 * (1 - 3021 * (rho 42895 * seg45AccX131 rho) * (rho 42894 * seg45AccY131 rho)) =
          (-1) * (rho 42895 * seg45AccX131 rho) - rho 42894 * seg45AccY131 rho +
            (seg45AccY131 rho - seg45AccX131 rho * (-1)) * (rho 42894 + rho 42895) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42901 * (1 - rho 42899) = rho 42896 - rho 42897 - rho 42898 := ha5
        _ = (-1) * rho 42897 - rho 42898 + (seg45AccY131 rho - seg45AccX131 rho * (-1)) * (rho 42894 + rho 42895) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX132 rho = seg45AccX131 rho - Bool.toZMod bit * (seg45AccX131 rho - rho 42900) := by
      have hd : rho 42902 = Bool.toZMod bit * (rho 42900 - seg45AccX131 rho) := by
        rw [← hbit]
        unfold seg45AccX131
        linear_combination -r4674
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY132 rho = seg45AccY131 rho - Bool.toZMod bit * (seg45AccY131 rho - rho 42901) := by
      have hd : rho 42903 = Bool.toZMod bit * (rho 42901 - seg45AccY131 rho) := by
        rw [← hbit]
        unfold seg45AccY131
        linear_combination -r4675
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42894 * rho 42895 = rho 42904 := by linear_combination r4676
    have hd1 : rho 42894 * rho 42894 = rho 42905 := by linear_combination r4677
    have hd2 : rho 42895 * rho 42895 = rho 42906 := by linear_combination r4678
    have hd3 : rho 42907 * (rho 42895 * rho 42895 + rho 42894 * rho 42894 * (-1)) = 2 * (rho 42894 * rho 42895) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 42908 * (2 - (rho 42895 * rho 42895 + rho 42894 * rho 42894 * (-1))) = rho 42895 * rho 42895 - rho 42894 * rho 42894 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
      ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
      ⟨(rho 42900 : Seg45.F), (rho 42901 : Seg45.F)⟩
      ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
      ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg45_hstep_c11 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 132 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg45_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg45_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg45_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg45_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg45_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg45_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
  · exact seg45_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg45_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg45_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg45_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
