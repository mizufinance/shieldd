import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4538 rho ∧ Seg34.relationRow4539 rho ∧ Seg34.relationRow4540 rho ∧ Seg34.relationRow4541 rho ∧ Seg34.relationRow4542 rho ∧ Seg34.relationRow4543 rho ∧ Seg34.relationRow4544 rho ∧ Seg34.relationRow4545 rho ∧ Seg34.relationRow4546 rho ∧ Seg34.relationRow4547 rho ∧ Seg34.relationRow4548 rho ∧ Seg34.relationRow4549 rho ∧ Seg34.relationRow4550 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩

theorem seg34_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34113 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩ := by
  obtain ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩ := seg34_rows121 rho h
  unfold Seg34.relationRow4538 at r4538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4538
  unfold Seg34.relationRow4539 at r4539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4539
  unfold Seg34.relationRow4540 at r4540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4540
  unfold Seg34.relationRow4541 at r4541
  unfold Seg34.relationRow4542 at r4542
  unfold Seg34.relationRow4543 at r4543
  unfold Seg34.relationRow4544 at r4544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4544
  unfold Seg34.relationRow4545 at r4545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4545
  unfold Seg34.relationRow4546 at r4546
  unfold Seg34.relationRow4547 at r4547
  unfold Seg34.relationRow4548 at r4548
  unfold Seg34.relationRow4549 at r4549
  unfold Seg34.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 34113 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩ := by
    have hnextx : seg34AccX122 rho = seg34AccX121 rho + rho 35816 := by
      unfold seg34AccX122 seg34AccX121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 121]
      ring
    have hnexty : seg34AccY122 rho = seg34AccY121 rho + rho 35817 := by
      unfold seg34AccY122 seg34AccY121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 121]
      ring
    have ha0 : (rho 35808 + rho 35809) * (seg34AccX121 rho + seg34AccY121 rho) = rho 35810 := by
      unfold seg34AccX121 seg34AccY121
      linear_combination r4538
    have ha1 : rho 35809 * seg34AccX121 rho = rho 35811 := by
      unfold seg34AccX121
      linear_combination r4539
    have ha2 : rho 35808 * seg34AccY121 rho = rho 35812 := by
      unfold seg34AccY121
      linear_combination r4540
    have ha3 : 3021 * rho 35811 * rho 35812 = rho 35813 := by
      linear_combination r4541
    have ha4 : rho 35814 * (1 + rho 35813) = rho 35811 + rho 35812 := by
      linear_combination r4542
    have ha5 : rho 35815 * (1 - rho 35813) = rho 35810 - rho 35811 - rho 35812 := by
      linear_combination r4543
    have haddx :
        rho 35814 * (1 + 3021 * (rho 35809 * seg34AccX121 rho) * (rho 35808 * seg34AccY121 rho)) =
          rho 35809 * seg34AccX121 rho + rho 35808 * seg34AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35815 * (1 - 3021 * (rho 35809 * seg34AccX121 rho) * (rho 35808 * seg34AccY121 rho)) =
          (-1) * (rho 35809 * seg34AccX121 rho) - rho 35808 * seg34AccY121 rho +
            (seg34AccY121 rho - seg34AccX121 rho * (-1)) * (rho 35808 + rho 35809) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35815 * (1 - rho 35813) = rho 35810 - rho 35811 - rho 35812 := ha5
        _ = (-1) * rho 35811 - rho 35812 + (seg34AccY121 rho - seg34AccX121 rho * (-1)) * (rho 35808 + rho 35809) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX122 rho = seg34AccX121 rho - Bool.toZMod bit * (seg34AccX121 rho - rho 35814) := by
      have hd : rho 35816 = Bool.toZMod bit * (rho 35814 - seg34AccX121 rho) := by
        rw [← hbit]
        unfold seg34AccX121
        linear_combination -r4544
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY122 rho = seg34AccY121 rho - Bool.toZMod bit * (seg34AccY121 rho - rho 35815) := by
      have hd : rho 35817 = Bool.toZMod bit * (rho 35815 - seg34AccY121 rho) := by
        rw [← hbit]
        unfold seg34AccY121
        linear_combination -r4545
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35808 * rho 35809 = rho 35818 := by linear_combination r4546
    have hd1 : rho 35808 * rho 35808 = rho 35819 := by linear_combination r4547
    have hd2 : rho 35809 * rho 35809 = rho 35820 := by linear_combination r4548
    have hd3 : rho 35821 * (rho 35809 * rho 35809 + rho 35808 * rho 35808 * (-1)) = 2 * (rho 35808 * rho 35809) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 35822 * (2 - (rho 35809 * rho 35809 + rho 35808 * rho 35808 * (-1))) = rho 35809 * rho 35809 - rho 35808 * rho 35808 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
      ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
      ⟨(rho 35814 : Seg34.F), (rho 35815 : Seg34.F)⟩
      ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
      ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg34_rows122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4551 rho ∧ Seg34.relationRow4552 rho ∧ Seg34.relationRow4553 rho ∧ Seg34.relationRow4554 rho ∧ Seg34.relationRow4555 rho ∧ Seg34.relationRow4556 rho ∧ Seg34.relationRow4557 rho ∧ Seg34.relationRow4558 rho ∧ Seg34.relationRow4559 rho ∧ Seg34.relationRow4560 rho ∧ Seg34.relationRow4561 rho ∧ Seg34.relationRow4562 rho ∧ Seg34.relationRow4563 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩

theorem seg34_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩ := by
  obtain ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩ := seg34_rows122 rho h
  unfold Seg34.relationRow4551 at r4551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4551
  unfold Seg34.relationRow4552 at r4552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4552
  unfold Seg34.relationRow4553 at r4553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4553
  unfold Seg34.relationRow4554 at r4554
  unfold Seg34.relationRow4555 at r4555
  unfold Seg34.relationRow4556 at r4556
  unfold Seg34.relationRow4557 at r4557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4557
  unfold Seg34.relationRow4558 at r4558
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4558
  unfold Seg34.relationRow4559 at r4559
  unfold Seg34.relationRow4560 at r4560
  unfold Seg34.relationRow4561 at r4561
  unfold Seg34.relationRow4562 at r4562
  unfold Seg34.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 34114 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩ := by
    have hnextx : seg34AccX123 rho = seg34AccX122 rho + rho 35829 := by
      unfold seg34AccX123 seg34AccX122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 122]
      ring
    have hnexty : seg34AccY123 rho = seg34AccY122 rho + rho 35830 := by
      unfold seg34AccY123 seg34AccY122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 122]
      ring
    have ha0 : (rho 35821 + rho 35822) * (seg34AccX122 rho + seg34AccY122 rho) = rho 35823 := by
      unfold seg34AccX122 seg34AccY122
      linear_combination r4551
    have ha1 : rho 35822 * seg34AccX122 rho = rho 35824 := by
      unfold seg34AccX122
      linear_combination r4552
    have ha2 : rho 35821 * seg34AccY122 rho = rho 35825 := by
      unfold seg34AccY122
      linear_combination r4553
    have ha3 : 3021 * rho 35824 * rho 35825 = rho 35826 := by
      linear_combination r4554
    have ha4 : rho 35827 * (1 + rho 35826) = rho 35824 + rho 35825 := by
      linear_combination r4555
    have ha5 : rho 35828 * (1 - rho 35826) = rho 35823 - rho 35824 - rho 35825 := by
      linear_combination r4556
    have haddx :
        rho 35827 * (1 + 3021 * (rho 35822 * seg34AccX122 rho) * (rho 35821 * seg34AccY122 rho)) =
          rho 35822 * seg34AccX122 rho + rho 35821 * seg34AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35828 * (1 - 3021 * (rho 35822 * seg34AccX122 rho) * (rho 35821 * seg34AccY122 rho)) =
          (-1) * (rho 35822 * seg34AccX122 rho) - rho 35821 * seg34AccY122 rho +
            (seg34AccY122 rho - seg34AccX122 rho * (-1)) * (rho 35821 + rho 35822) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35828 * (1 - rho 35826) = rho 35823 - rho 35824 - rho 35825 := ha5
        _ = (-1) * rho 35824 - rho 35825 + (seg34AccY122 rho - seg34AccX122 rho * (-1)) * (rho 35821 + rho 35822) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX123 rho = seg34AccX122 rho - Bool.toZMod bit * (seg34AccX122 rho - rho 35827) := by
      have hd : rho 35829 = Bool.toZMod bit * (rho 35827 - seg34AccX122 rho) := by
        rw [← hbit]
        unfold seg34AccX122
        linear_combination -r4557
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY123 rho = seg34AccY122 rho - Bool.toZMod bit * (seg34AccY122 rho - rho 35828) := by
      have hd : rho 35830 = Bool.toZMod bit * (rho 35828 - seg34AccY122 rho) := by
        rw [← hbit]
        unfold seg34AccY122
        linear_combination -r4558
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35821 * rho 35822 = rho 35831 := by linear_combination r4559
    have hd1 : rho 35821 * rho 35821 = rho 35832 := by linear_combination r4560
    have hd2 : rho 35822 * rho 35822 = rho 35833 := by linear_combination r4561
    have hd3 : rho 35834 * (rho 35822 * rho 35822 + rho 35821 * rho 35821 * (-1)) = 2 * (rho 35821 * rho 35822) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 35835 * (2 - (rho 35822 * rho 35822 + rho 35821 * rho 35821 * (-1))) = rho 35822 * rho 35822 - rho 35821 * rho 35821 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
      ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
      ⟨(rho 35827 : Seg34.F), (rho 35828 : Seg34.F)⟩
      ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
      ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg34_rows123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4564 rho ∧ Seg34.relationRow4565 rho ∧ Seg34.relationRow4566 rho ∧ Seg34.relationRow4567 rho ∧ Seg34.relationRow4568 rho ∧ Seg34.relationRow4569 rho ∧ Seg34.relationRow4570 rho ∧ Seg34.relationRow4571 rho ∧ Seg34.relationRow4572 rho ∧ Seg34.relationRow4573 rho ∧ Seg34.relationRow4574 rho ∧ Seg34.relationRow4575 rho ∧ Seg34.relationRow4576 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩

theorem seg34_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34115 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩ := by
  obtain ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩ := seg34_rows123 rho h
  unfold Seg34.relationRow4564 at r4564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4564
  unfold Seg34.relationRow4565 at r4565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4565
  unfold Seg34.relationRow4566 at r4566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4566
  unfold Seg34.relationRow4567 at r4567
  unfold Seg34.relationRow4568 at r4568
  unfold Seg34.relationRow4569 at r4569
  unfold Seg34.relationRow4570 at r4570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4570
  unfold Seg34.relationRow4571 at r4571
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4571
  unfold Seg34.relationRow4572 at r4572
  unfold Seg34.relationRow4573 at r4573
  unfold Seg34.relationRow4574 at r4574
  unfold Seg34.relationRow4575 at r4575
  unfold Seg34.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 34115 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩ := by
    have hnextx : seg34AccX124 rho = seg34AccX123 rho + rho 35842 := by
      unfold seg34AccX124 seg34AccX123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 123]
      ring
    have hnexty : seg34AccY124 rho = seg34AccY123 rho + rho 35843 := by
      unfold seg34AccY124 seg34AccY123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 123]
      ring
    have ha0 : (rho 35834 + rho 35835) * (seg34AccX123 rho + seg34AccY123 rho) = rho 35836 := by
      unfold seg34AccX123 seg34AccY123
      linear_combination r4564
    have ha1 : rho 35835 * seg34AccX123 rho = rho 35837 := by
      unfold seg34AccX123
      linear_combination r4565
    have ha2 : rho 35834 * seg34AccY123 rho = rho 35838 := by
      unfold seg34AccY123
      linear_combination r4566
    have ha3 : 3021 * rho 35837 * rho 35838 = rho 35839 := by
      linear_combination r4567
    have ha4 : rho 35840 * (1 + rho 35839) = rho 35837 + rho 35838 := by
      linear_combination r4568
    have ha5 : rho 35841 * (1 - rho 35839) = rho 35836 - rho 35837 - rho 35838 := by
      linear_combination r4569
    have haddx :
        rho 35840 * (1 + 3021 * (rho 35835 * seg34AccX123 rho) * (rho 35834 * seg34AccY123 rho)) =
          rho 35835 * seg34AccX123 rho + rho 35834 * seg34AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35841 * (1 - 3021 * (rho 35835 * seg34AccX123 rho) * (rho 35834 * seg34AccY123 rho)) =
          (-1) * (rho 35835 * seg34AccX123 rho) - rho 35834 * seg34AccY123 rho +
            (seg34AccY123 rho - seg34AccX123 rho * (-1)) * (rho 35834 + rho 35835) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35841 * (1 - rho 35839) = rho 35836 - rho 35837 - rho 35838 := ha5
        _ = (-1) * rho 35837 - rho 35838 + (seg34AccY123 rho - seg34AccX123 rho * (-1)) * (rho 35834 + rho 35835) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX124 rho = seg34AccX123 rho - Bool.toZMod bit * (seg34AccX123 rho - rho 35840) := by
      have hd : rho 35842 = Bool.toZMod bit * (rho 35840 - seg34AccX123 rho) := by
        rw [← hbit]
        unfold seg34AccX123
        linear_combination -r4570
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY124 rho = seg34AccY123 rho - Bool.toZMod bit * (seg34AccY123 rho - rho 35841) := by
      have hd : rho 35843 = Bool.toZMod bit * (rho 35841 - seg34AccY123 rho) := by
        rw [← hbit]
        unfold seg34AccY123
        linear_combination -r4571
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35834 * rho 35835 = rho 35844 := by linear_combination r4572
    have hd1 : rho 35834 * rho 35834 = rho 35845 := by linear_combination r4573
    have hd2 : rho 35835 * rho 35835 = rho 35846 := by linear_combination r4574
    have hd3 : rho 35847 * (rho 35835 * rho 35835 + rho 35834 * rho 35834 * (-1)) = 2 * (rho 35834 * rho 35835) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 35848 * (2 - (rho 35835 * rho 35835 + rho 35834 * rho 35834 * (-1))) = rho 35835 * rho 35835 - rho 35834 * rho 35834 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
      ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
      ⟨(rho 35840 : Seg34.F), (rho 35841 : Seg34.F)⟩
      ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
      ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg34_rows124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4577 rho ∧ Seg34.relationRow4578 rho ∧ Seg34.relationRow4579 rho ∧ Seg34.relationRow4580 rho ∧ Seg34.relationRow4581 rho ∧ Seg34.relationRow4582 rho ∧ Seg34.relationRow4583 rho ∧ Seg34.relationRow4584 rho ∧ Seg34.relationRow4585 rho ∧ Seg34.relationRow4586 rho ∧ Seg34.relationRow4587 rho ∧ Seg34.relationRow4588 rho ∧ Seg34.relationRow4589 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩

theorem seg34_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34116 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩ := by
  obtain ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩ := seg34_rows124 rho h
  unfold Seg34.relationRow4577 at r4577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4577
  unfold Seg34.relationRow4578 at r4578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4578
  unfold Seg34.relationRow4579 at r4579
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4579
  unfold Seg34.relationRow4580 at r4580
  unfold Seg34.relationRow4581 at r4581
  unfold Seg34.relationRow4582 at r4582
  unfold Seg34.relationRow4583 at r4583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4583
  unfold Seg34.relationRow4584 at r4584
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4584
  unfold Seg34.relationRow4585 at r4585
  unfold Seg34.relationRow4586 at r4586
  unfold Seg34.relationRow4587 at r4587
  unfold Seg34.relationRow4588 at r4588
  unfold Seg34.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 34116 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩ := by
    have hnextx : seg34AccX125 rho = seg34AccX124 rho + rho 35855 := by
      unfold seg34AccX125 seg34AccX124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 124]
      ring
    have hnexty : seg34AccY125 rho = seg34AccY124 rho + rho 35856 := by
      unfold seg34AccY125 seg34AccY124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 124]
      ring
    have ha0 : (rho 35847 + rho 35848) * (seg34AccX124 rho + seg34AccY124 rho) = rho 35849 := by
      unfold seg34AccX124 seg34AccY124
      linear_combination r4577
    have ha1 : rho 35848 * seg34AccX124 rho = rho 35850 := by
      unfold seg34AccX124
      linear_combination r4578
    have ha2 : rho 35847 * seg34AccY124 rho = rho 35851 := by
      unfold seg34AccY124
      linear_combination r4579
    have ha3 : 3021 * rho 35850 * rho 35851 = rho 35852 := by
      linear_combination r4580
    have ha4 : rho 35853 * (1 + rho 35852) = rho 35850 + rho 35851 := by
      linear_combination r4581
    have ha5 : rho 35854 * (1 - rho 35852) = rho 35849 - rho 35850 - rho 35851 := by
      linear_combination r4582
    have haddx :
        rho 35853 * (1 + 3021 * (rho 35848 * seg34AccX124 rho) * (rho 35847 * seg34AccY124 rho)) =
          rho 35848 * seg34AccX124 rho + rho 35847 * seg34AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35854 * (1 - 3021 * (rho 35848 * seg34AccX124 rho) * (rho 35847 * seg34AccY124 rho)) =
          (-1) * (rho 35848 * seg34AccX124 rho) - rho 35847 * seg34AccY124 rho +
            (seg34AccY124 rho - seg34AccX124 rho * (-1)) * (rho 35847 + rho 35848) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35854 * (1 - rho 35852) = rho 35849 - rho 35850 - rho 35851 := ha5
        _ = (-1) * rho 35850 - rho 35851 + (seg34AccY124 rho - seg34AccX124 rho * (-1)) * (rho 35847 + rho 35848) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX125 rho = seg34AccX124 rho - Bool.toZMod bit * (seg34AccX124 rho - rho 35853) := by
      have hd : rho 35855 = Bool.toZMod bit * (rho 35853 - seg34AccX124 rho) := by
        rw [← hbit]
        unfold seg34AccX124
        linear_combination -r4583
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY125 rho = seg34AccY124 rho - Bool.toZMod bit * (seg34AccY124 rho - rho 35854) := by
      have hd : rho 35856 = Bool.toZMod bit * (rho 35854 - seg34AccY124 rho) := by
        rw [← hbit]
        unfold seg34AccY124
        linear_combination -r4584
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35847 * rho 35848 = rho 35857 := by linear_combination r4585
    have hd1 : rho 35847 * rho 35847 = rho 35858 := by linear_combination r4586
    have hd2 : rho 35848 * rho 35848 = rho 35859 := by linear_combination r4587
    have hd3 : rho 35860 * (rho 35848 * rho 35848 + rho 35847 * rho 35847 * (-1)) = 2 * (rho 35847 * rho 35848) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 35861 * (2 - (rho 35848 * rho 35848 + rho 35847 * rho 35847 * (-1))) = rho 35848 * rho 35848 - rho 35847 * rho 35847 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
      ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
      ⟨(rho 35853 : Seg34.F), (rho 35854 : Seg34.F)⟩
      ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
      ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg34_rows125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4590 rho ∧ Seg34.relationRow4591 rho ∧ Seg34.relationRow4592 rho ∧ Seg34.relationRow4593 rho ∧ Seg34.relationRow4594 rho ∧ Seg34.relationRow4595 rho ∧ Seg34.relationRow4596 rho ∧ Seg34.relationRow4597 rho ∧ Seg34.relationRow4598 rho ∧ Seg34.relationRow4599 rho ∧ Seg34.relationRow4600 rho ∧ Seg34.relationRow4601 rho ∧ Seg34.relationRow4602 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩

theorem seg34_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34117 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩ := by
  obtain ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩ := seg34_rows125 rho h
  unfold Seg34.relationRow4590 at r4590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4590
  unfold Seg34.relationRow4591 at r4591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4591
  unfold Seg34.relationRow4592 at r4592
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4592
  unfold Seg34.relationRow4593 at r4593
  unfold Seg34.relationRow4594 at r4594
  unfold Seg34.relationRow4595 at r4595
  unfold Seg34.relationRow4596 at r4596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4596
  unfold Seg34.relationRow4597 at r4597
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4597
  unfold Seg34.relationRow4598 at r4598
  unfold Seg34.relationRow4599 at r4599
  unfold Seg34.relationRow4600 at r4600
  unfold Seg34.relationRow4601 at r4601
  unfold Seg34.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 34117 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩ := by
    have hnextx : seg34AccX126 rho = seg34AccX125 rho + rho 35868 := by
      unfold seg34AccX126 seg34AccX125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 125]
      ring
    have hnexty : seg34AccY126 rho = seg34AccY125 rho + rho 35869 := by
      unfold seg34AccY126 seg34AccY125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 125]
      ring
    have ha0 : (rho 35860 + rho 35861) * (seg34AccX125 rho + seg34AccY125 rho) = rho 35862 := by
      unfold seg34AccX125 seg34AccY125
      linear_combination r4590
    have ha1 : rho 35861 * seg34AccX125 rho = rho 35863 := by
      unfold seg34AccX125
      linear_combination r4591
    have ha2 : rho 35860 * seg34AccY125 rho = rho 35864 := by
      unfold seg34AccY125
      linear_combination r4592
    have ha3 : 3021 * rho 35863 * rho 35864 = rho 35865 := by
      linear_combination r4593
    have ha4 : rho 35866 * (1 + rho 35865) = rho 35863 + rho 35864 := by
      linear_combination r4594
    have ha5 : rho 35867 * (1 - rho 35865) = rho 35862 - rho 35863 - rho 35864 := by
      linear_combination r4595
    have haddx :
        rho 35866 * (1 + 3021 * (rho 35861 * seg34AccX125 rho) * (rho 35860 * seg34AccY125 rho)) =
          rho 35861 * seg34AccX125 rho + rho 35860 * seg34AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35867 * (1 - 3021 * (rho 35861 * seg34AccX125 rho) * (rho 35860 * seg34AccY125 rho)) =
          (-1) * (rho 35861 * seg34AccX125 rho) - rho 35860 * seg34AccY125 rho +
            (seg34AccY125 rho - seg34AccX125 rho * (-1)) * (rho 35860 + rho 35861) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35867 * (1 - rho 35865) = rho 35862 - rho 35863 - rho 35864 := ha5
        _ = (-1) * rho 35863 - rho 35864 + (seg34AccY125 rho - seg34AccX125 rho * (-1)) * (rho 35860 + rho 35861) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX126 rho = seg34AccX125 rho - Bool.toZMod bit * (seg34AccX125 rho - rho 35866) := by
      have hd : rho 35868 = Bool.toZMod bit * (rho 35866 - seg34AccX125 rho) := by
        rw [← hbit]
        unfold seg34AccX125
        linear_combination -r4596
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY126 rho = seg34AccY125 rho - Bool.toZMod bit * (seg34AccY125 rho - rho 35867) := by
      have hd : rho 35869 = Bool.toZMod bit * (rho 35867 - seg34AccY125 rho) := by
        rw [← hbit]
        unfold seg34AccY125
        linear_combination -r4597
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35860 * rho 35861 = rho 35870 := by linear_combination r4598
    have hd1 : rho 35860 * rho 35860 = rho 35871 := by linear_combination r4599
    have hd2 : rho 35861 * rho 35861 = rho 35872 := by linear_combination r4600
    have hd3 : rho 35873 * (rho 35861 * rho 35861 + rho 35860 * rho 35860 * (-1)) = 2 * (rho 35860 * rho 35861) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 35874 * (2 - (rho 35861 * rho 35861 + rho 35860 * rho 35860 * (-1))) = rho 35861 * rho 35861 - rho 35860 * rho 35860 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
      ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
      ⟨(rho 35866 : Seg34.F), (rho 35867 : Seg34.F)⟩
      ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
      ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg34_rows126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4603 rho ∧ Seg34.relationRow4604 rho ∧ Seg34.relationRow4605 rho ∧ Seg34.relationRow4606 rho ∧ Seg34.relationRow4607 rho ∧ Seg34.relationRow4608 rho ∧ Seg34.relationRow4609 rho ∧ Seg34.relationRow4610 rho ∧ Seg34.relationRow4611 rho ∧ Seg34.relationRow4612 rho ∧ Seg34.relationRow4613 rho ∧ Seg34.relationRow4614 rho ∧ Seg34.relationRow4615 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩

theorem seg34_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34118 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩ := by
  obtain ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩ := seg34_rows126 rho h
  unfold Seg34.relationRow4603 at r4603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4603
  unfold Seg34.relationRow4604 at r4604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4604
  unfold Seg34.relationRow4605 at r4605
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4605
  unfold Seg34.relationRow4606 at r4606
  unfold Seg34.relationRow4607 at r4607
  unfold Seg34.relationRow4608 at r4608
  unfold Seg34.relationRow4609 at r4609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4609
  unfold Seg34.relationRow4610 at r4610
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4610
  unfold Seg34.relationRow4611 at r4611
  unfold Seg34.relationRow4612 at r4612
  unfold Seg34.relationRow4613 at r4613
  unfold Seg34.relationRow4614 at r4614
  unfold Seg34.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 34118 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩ := by
    have hnextx : seg34AccX127 rho = seg34AccX126 rho + rho 35881 := by
      unfold seg34AccX127 seg34AccX126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 126]
      ring
    have hnexty : seg34AccY127 rho = seg34AccY126 rho + rho 35882 := by
      unfold seg34AccY127 seg34AccY126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 126]
      ring
    have ha0 : (rho 35873 + rho 35874) * (seg34AccX126 rho + seg34AccY126 rho) = rho 35875 := by
      unfold seg34AccX126 seg34AccY126
      linear_combination r4603
    have ha1 : rho 35874 * seg34AccX126 rho = rho 35876 := by
      unfold seg34AccX126
      linear_combination r4604
    have ha2 : rho 35873 * seg34AccY126 rho = rho 35877 := by
      unfold seg34AccY126
      linear_combination r4605
    have ha3 : 3021 * rho 35876 * rho 35877 = rho 35878 := by
      linear_combination r4606
    have ha4 : rho 35879 * (1 + rho 35878) = rho 35876 + rho 35877 := by
      linear_combination r4607
    have ha5 : rho 35880 * (1 - rho 35878) = rho 35875 - rho 35876 - rho 35877 := by
      linear_combination r4608
    have haddx :
        rho 35879 * (1 + 3021 * (rho 35874 * seg34AccX126 rho) * (rho 35873 * seg34AccY126 rho)) =
          rho 35874 * seg34AccX126 rho + rho 35873 * seg34AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35880 * (1 - 3021 * (rho 35874 * seg34AccX126 rho) * (rho 35873 * seg34AccY126 rho)) =
          (-1) * (rho 35874 * seg34AccX126 rho) - rho 35873 * seg34AccY126 rho +
            (seg34AccY126 rho - seg34AccX126 rho * (-1)) * (rho 35873 + rho 35874) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35880 * (1 - rho 35878) = rho 35875 - rho 35876 - rho 35877 := ha5
        _ = (-1) * rho 35876 - rho 35877 + (seg34AccY126 rho - seg34AccX126 rho * (-1)) * (rho 35873 + rho 35874) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX127 rho = seg34AccX126 rho - Bool.toZMod bit * (seg34AccX126 rho - rho 35879) := by
      have hd : rho 35881 = Bool.toZMod bit * (rho 35879 - seg34AccX126 rho) := by
        rw [← hbit]
        unfold seg34AccX126
        linear_combination -r4609
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY127 rho = seg34AccY126 rho - Bool.toZMod bit * (seg34AccY126 rho - rho 35880) := by
      have hd : rho 35882 = Bool.toZMod bit * (rho 35880 - seg34AccY126 rho) := by
        rw [← hbit]
        unfold seg34AccY126
        linear_combination -r4610
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35873 * rho 35874 = rho 35883 := by linear_combination r4611
    have hd1 : rho 35873 * rho 35873 = rho 35884 := by linear_combination r4612
    have hd2 : rho 35874 * rho 35874 = rho 35885 := by linear_combination r4613
    have hd3 : rho 35886 * (rho 35874 * rho 35874 + rho 35873 * rho 35873 * (-1)) = 2 * (rho 35873 * rho 35874) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 35887 * (2 - (rho 35874 * rho 35874 + rho 35873 * rho 35873 * (-1))) = rho 35874 * rho 35874 - rho 35873 * rho 35873 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
      ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
      ⟨(rho 35879 : Seg34.F), (rho 35880 : Seg34.F)⟩
      ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
      ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg34_rows127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4616 rho ∧ Seg34.relationRow4617 rho ∧ Seg34.relationRow4618 rho ∧ Seg34.relationRow4619 rho ∧ Seg34.relationRow4620 rho ∧ Seg34.relationRow4621 rho ∧ Seg34.relationRow4622 rho ∧ Seg34.relationRow4623 rho ∧ Seg34.relationRow4624 rho ∧ Seg34.relationRow4625 rho ∧ Seg34.relationRow4626 rho ∧ Seg34.relationRow4627 rho ∧ Seg34.relationRow4628 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩

theorem seg34_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34119 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩ := by
  obtain ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩ := seg34_rows127 rho h
  unfold Seg34.relationRow4616 at r4616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4616
  unfold Seg34.relationRow4617 at r4617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4617
  unfold Seg34.relationRow4618 at r4618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4618
  unfold Seg34.relationRow4619 at r4619
  unfold Seg34.relationRow4620 at r4620
  unfold Seg34.relationRow4621 at r4621
  unfold Seg34.relationRow4622 at r4622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4622
  unfold Seg34.relationRow4623 at r4623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4623
  unfold Seg34.relationRow4624 at r4624
  unfold Seg34.relationRow4625 at r4625
  unfold Seg34.relationRow4626 at r4626
  unfold Seg34.relationRow4627 at r4627
  unfold Seg34.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 34119 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩ := by
    have hnextx : seg34AccX128 rho = seg34AccX127 rho + rho 35894 := by
      unfold seg34AccX128 seg34AccX127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 127]
      ring
    have hnexty : seg34AccY128 rho = seg34AccY127 rho + rho 35895 := by
      unfold seg34AccY128 seg34AccY127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 127]
      ring
    have ha0 : (rho 35886 + rho 35887) * (seg34AccX127 rho + seg34AccY127 rho) = rho 35888 := by
      unfold seg34AccX127 seg34AccY127
      linear_combination r4616
    have ha1 : rho 35887 * seg34AccX127 rho = rho 35889 := by
      unfold seg34AccX127
      linear_combination r4617
    have ha2 : rho 35886 * seg34AccY127 rho = rho 35890 := by
      unfold seg34AccY127
      linear_combination r4618
    have ha3 : 3021 * rho 35889 * rho 35890 = rho 35891 := by
      linear_combination r4619
    have ha4 : rho 35892 * (1 + rho 35891) = rho 35889 + rho 35890 := by
      linear_combination r4620
    have ha5 : rho 35893 * (1 - rho 35891) = rho 35888 - rho 35889 - rho 35890 := by
      linear_combination r4621
    have haddx :
        rho 35892 * (1 + 3021 * (rho 35887 * seg34AccX127 rho) * (rho 35886 * seg34AccY127 rho)) =
          rho 35887 * seg34AccX127 rho + rho 35886 * seg34AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35893 * (1 - 3021 * (rho 35887 * seg34AccX127 rho) * (rho 35886 * seg34AccY127 rho)) =
          (-1) * (rho 35887 * seg34AccX127 rho) - rho 35886 * seg34AccY127 rho +
            (seg34AccY127 rho - seg34AccX127 rho * (-1)) * (rho 35886 + rho 35887) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35893 * (1 - rho 35891) = rho 35888 - rho 35889 - rho 35890 := ha5
        _ = (-1) * rho 35889 - rho 35890 + (seg34AccY127 rho - seg34AccX127 rho * (-1)) * (rho 35886 + rho 35887) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX128 rho = seg34AccX127 rho - Bool.toZMod bit * (seg34AccX127 rho - rho 35892) := by
      have hd : rho 35894 = Bool.toZMod bit * (rho 35892 - seg34AccX127 rho) := by
        rw [← hbit]
        unfold seg34AccX127
        linear_combination -r4622
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY128 rho = seg34AccY127 rho - Bool.toZMod bit * (seg34AccY127 rho - rho 35893) := by
      have hd : rho 35895 = Bool.toZMod bit * (rho 35893 - seg34AccY127 rho) := by
        rw [← hbit]
        unfold seg34AccY127
        linear_combination -r4623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35886 * rho 35887 = rho 35896 := by linear_combination r4624
    have hd1 : rho 35886 * rho 35886 = rho 35897 := by linear_combination r4625
    have hd2 : rho 35887 * rho 35887 = rho 35898 := by linear_combination r4626
    have hd3 : rho 35899 * (rho 35887 * rho 35887 + rho 35886 * rho 35886 * (-1)) = 2 * (rho 35886 * rho 35887) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 35900 * (2 - (rho 35887 * rho 35887 + rho 35886 * rho 35886 * (-1))) = rho 35887 * rho 35887 - rho 35886 * rho 35886 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
      ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
      ⟨(rho 35892 : Seg34.F), (rho 35893 : Seg34.F)⟩
      ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
      ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg34_rows128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4629 rho ∧ Seg34.relationRow4630 rho ∧ Seg34.relationRow4631 rho ∧ Seg34.relationRow4632 rho ∧ Seg34.relationRow4633 rho ∧ Seg34.relationRow4634 rho ∧ Seg34.relationRow4635 rho ∧ Seg34.relationRow4636 rho ∧ Seg34.relationRow4637 rho ∧ Seg34.relationRow4638 rho ∧ Seg34.relationRow4639 rho ∧ Seg34.relationRow4640 rho ∧ Seg34.relationRow4641 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩

theorem seg34_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34120 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩ := by
  obtain ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩ := seg34_rows128 rho h
  unfold Seg34.relationRow4629 at r4629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4629
  unfold Seg34.relationRow4630 at r4630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4630
  unfold Seg34.relationRow4631 at r4631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4631
  unfold Seg34.relationRow4632 at r4632
  unfold Seg34.relationRow4633 at r4633
  unfold Seg34.relationRow4634 at r4634
  unfold Seg34.relationRow4635 at r4635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4635
  unfold Seg34.relationRow4636 at r4636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4636
  unfold Seg34.relationRow4637 at r4637
  unfold Seg34.relationRow4638 at r4638
  unfold Seg34.relationRow4639 at r4639
  unfold Seg34.relationRow4640 at r4640
  unfold Seg34.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 34120 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩ := by
    have hnextx : seg34AccX129 rho = seg34AccX128 rho + rho 35907 := by
      unfold seg34AccX129 seg34AccX128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 128]
      ring
    have hnexty : seg34AccY129 rho = seg34AccY128 rho + rho 35908 := by
      unfold seg34AccY129 seg34AccY128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 128]
      ring
    have ha0 : (rho 35899 + rho 35900) * (seg34AccX128 rho + seg34AccY128 rho) = rho 35901 := by
      unfold seg34AccX128 seg34AccY128
      linear_combination r4629
    have ha1 : rho 35900 * seg34AccX128 rho = rho 35902 := by
      unfold seg34AccX128
      linear_combination r4630
    have ha2 : rho 35899 * seg34AccY128 rho = rho 35903 := by
      unfold seg34AccY128
      linear_combination r4631
    have ha3 : 3021 * rho 35902 * rho 35903 = rho 35904 := by
      linear_combination r4632
    have ha4 : rho 35905 * (1 + rho 35904) = rho 35902 + rho 35903 := by
      linear_combination r4633
    have ha5 : rho 35906 * (1 - rho 35904) = rho 35901 - rho 35902 - rho 35903 := by
      linear_combination r4634
    have haddx :
        rho 35905 * (1 + 3021 * (rho 35900 * seg34AccX128 rho) * (rho 35899 * seg34AccY128 rho)) =
          rho 35900 * seg34AccX128 rho + rho 35899 * seg34AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35906 * (1 - 3021 * (rho 35900 * seg34AccX128 rho) * (rho 35899 * seg34AccY128 rho)) =
          (-1) * (rho 35900 * seg34AccX128 rho) - rho 35899 * seg34AccY128 rho +
            (seg34AccY128 rho - seg34AccX128 rho * (-1)) * (rho 35899 + rho 35900) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35906 * (1 - rho 35904) = rho 35901 - rho 35902 - rho 35903 := ha5
        _ = (-1) * rho 35902 - rho 35903 + (seg34AccY128 rho - seg34AccX128 rho * (-1)) * (rho 35899 + rho 35900) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX129 rho = seg34AccX128 rho - Bool.toZMod bit * (seg34AccX128 rho - rho 35905) := by
      have hd : rho 35907 = Bool.toZMod bit * (rho 35905 - seg34AccX128 rho) := by
        rw [← hbit]
        unfold seg34AccX128
        linear_combination -r4635
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY129 rho = seg34AccY128 rho - Bool.toZMod bit * (seg34AccY128 rho - rho 35906) := by
      have hd : rho 35908 = Bool.toZMod bit * (rho 35906 - seg34AccY128 rho) := by
        rw [← hbit]
        unfold seg34AccY128
        linear_combination -r4636
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35899 * rho 35900 = rho 35909 := by linear_combination r4637
    have hd1 : rho 35899 * rho 35899 = rho 35910 := by linear_combination r4638
    have hd2 : rho 35900 * rho 35900 = rho 35911 := by linear_combination r4639
    have hd3 : rho 35912 * (rho 35900 * rho 35900 + rho 35899 * rho 35899 * (-1)) = 2 * (rho 35899 * rho 35900) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 35913 * (2 - (rho 35900 * rho 35900 + rho 35899 * rho 35899 * (-1))) = rho 35900 * rho 35900 - rho 35899 * rho 35899 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
      ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
      ⟨(rho 35905 : Seg34.F), (rho 35906 : Seg34.F)⟩
      ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
      ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg34_rows129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4642 rho ∧ Seg34.relationRow4643 rho ∧ Seg34.relationRow4644 rho ∧ Seg34.relationRow4645 rho ∧ Seg34.relationRow4646 rho ∧ Seg34.relationRow4647 rho ∧ Seg34.relationRow4648 rho ∧ Seg34.relationRow4649 rho ∧ Seg34.relationRow4650 rho ∧ Seg34.relationRow4651 rho ∧ Seg34.relationRow4652 rho ∧ Seg34.relationRow4653 rho ∧ Seg34.relationRow4654 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩

theorem seg34_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩ := by
  obtain ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩ := seg34_rows129 rho h
  unfold Seg34.relationRow4642 at r4642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4642
  unfold Seg34.relationRow4643 at r4643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4643
  unfold Seg34.relationRow4644 at r4644
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4644
  unfold Seg34.relationRow4645 at r4645
  unfold Seg34.relationRow4646 at r4646
  unfold Seg34.relationRow4647 at r4647
  unfold Seg34.relationRow4648 at r4648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4648
  unfold Seg34.relationRow4649 at r4649
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4649
  unfold Seg34.relationRow4650 at r4650
  unfold Seg34.relationRow4651 at r4651
  unfold Seg34.relationRow4652 at r4652
  unfold Seg34.relationRow4653 at r4653
  unfold Seg34.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 34121 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩ := by
    have hnextx : seg34AccX130 rho = seg34AccX129 rho + rho 35920 := by
      unfold seg34AccX130 seg34AccX129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 129]
      ring
    have hnexty : seg34AccY130 rho = seg34AccY129 rho + rho 35921 := by
      unfold seg34AccY130 seg34AccY129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 129]
      ring
    have ha0 : (rho 35912 + rho 35913) * (seg34AccX129 rho + seg34AccY129 rho) = rho 35914 := by
      unfold seg34AccX129 seg34AccY129
      linear_combination r4642
    have ha1 : rho 35913 * seg34AccX129 rho = rho 35915 := by
      unfold seg34AccX129
      linear_combination r4643
    have ha2 : rho 35912 * seg34AccY129 rho = rho 35916 := by
      unfold seg34AccY129
      linear_combination r4644
    have ha3 : 3021 * rho 35915 * rho 35916 = rho 35917 := by
      linear_combination r4645
    have ha4 : rho 35918 * (1 + rho 35917) = rho 35915 + rho 35916 := by
      linear_combination r4646
    have ha5 : rho 35919 * (1 - rho 35917) = rho 35914 - rho 35915 - rho 35916 := by
      linear_combination r4647
    have haddx :
        rho 35918 * (1 + 3021 * (rho 35913 * seg34AccX129 rho) * (rho 35912 * seg34AccY129 rho)) =
          rho 35913 * seg34AccX129 rho + rho 35912 * seg34AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35919 * (1 - 3021 * (rho 35913 * seg34AccX129 rho) * (rho 35912 * seg34AccY129 rho)) =
          (-1) * (rho 35913 * seg34AccX129 rho) - rho 35912 * seg34AccY129 rho +
            (seg34AccY129 rho - seg34AccX129 rho * (-1)) * (rho 35912 + rho 35913) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35919 * (1 - rho 35917) = rho 35914 - rho 35915 - rho 35916 := ha5
        _ = (-1) * rho 35915 - rho 35916 + (seg34AccY129 rho - seg34AccX129 rho * (-1)) * (rho 35912 + rho 35913) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX130 rho = seg34AccX129 rho - Bool.toZMod bit * (seg34AccX129 rho - rho 35918) := by
      have hd : rho 35920 = Bool.toZMod bit * (rho 35918 - seg34AccX129 rho) := by
        rw [← hbit]
        unfold seg34AccX129
        linear_combination -r4648
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY130 rho = seg34AccY129 rho - Bool.toZMod bit * (seg34AccY129 rho - rho 35919) := by
      have hd : rho 35921 = Bool.toZMod bit * (rho 35919 - seg34AccY129 rho) := by
        rw [← hbit]
        unfold seg34AccY129
        linear_combination -r4649
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35912 * rho 35913 = rho 35922 := by linear_combination r4650
    have hd1 : rho 35912 * rho 35912 = rho 35923 := by linear_combination r4651
    have hd2 : rho 35913 * rho 35913 = rho 35924 := by linear_combination r4652
    have hd3 : rho 35925 * (rho 35913 * rho 35913 + rho 35912 * rho 35912 * (-1)) = 2 * (rho 35912 * rho 35913) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 35926 * (2 - (rho 35913 * rho 35913 + rho 35912 * rho 35912 * (-1))) = rho 35913 * rho 35913 - rho 35912 * rho 35912 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
      ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
      ⟨(rho 35918 : Seg34.F), (rho 35919 : Seg34.F)⟩
      ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
      ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg34_rows130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4655 rho ∧ Seg34.relationRow4656 rho ∧ Seg34.relationRow4657 rho ∧ Seg34.relationRow4658 rho ∧ Seg34.relationRow4659 rho ∧ Seg34.relationRow4660 rho ∧ Seg34.relationRow4661 rho ∧ Seg34.relationRow4662 rho ∧ Seg34.relationRow4663 rho ∧ Seg34.relationRow4664 rho ∧ Seg34.relationRow4665 rho ∧ Seg34.relationRow4666 rho ∧ Seg34.relationRow4667 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩

theorem seg34_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩ := by
  obtain ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩ := seg34_rows130 rho h
  unfold Seg34.relationRow4655 at r4655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4655
  unfold Seg34.relationRow4656 at r4656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4656
  unfold Seg34.relationRow4657 at r4657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4657
  unfold Seg34.relationRow4658 at r4658
  unfold Seg34.relationRow4659 at r4659
  unfold Seg34.relationRow4660 at r4660
  unfold Seg34.relationRow4661 at r4661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4661
  unfold Seg34.relationRow4662 at r4662
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4662
  unfold Seg34.relationRow4663 at r4663
  unfold Seg34.relationRow4664 at r4664
  unfold Seg34.relationRow4665 at r4665
  unfold Seg34.relationRow4666 at r4666
  unfold Seg34.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 34122 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩ := by
    have hnextx : seg34AccX131 rho = seg34AccX130 rho + rho 35933 := by
      unfold seg34AccX131 seg34AccX130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 130]
      ring
    have hnexty : seg34AccY131 rho = seg34AccY130 rho + rho 35934 := by
      unfold seg34AccY131 seg34AccY130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 130]
      ring
    have ha0 : (rho 35925 + rho 35926) * (seg34AccX130 rho + seg34AccY130 rho) = rho 35927 := by
      unfold seg34AccX130 seg34AccY130
      linear_combination r4655
    have ha1 : rho 35926 * seg34AccX130 rho = rho 35928 := by
      unfold seg34AccX130
      linear_combination r4656
    have ha2 : rho 35925 * seg34AccY130 rho = rho 35929 := by
      unfold seg34AccY130
      linear_combination r4657
    have ha3 : 3021 * rho 35928 * rho 35929 = rho 35930 := by
      linear_combination r4658
    have ha4 : rho 35931 * (1 + rho 35930) = rho 35928 + rho 35929 := by
      linear_combination r4659
    have ha5 : rho 35932 * (1 - rho 35930) = rho 35927 - rho 35928 - rho 35929 := by
      linear_combination r4660
    have haddx :
        rho 35931 * (1 + 3021 * (rho 35926 * seg34AccX130 rho) * (rho 35925 * seg34AccY130 rho)) =
          rho 35926 * seg34AccX130 rho + rho 35925 * seg34AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35932 * (1 - 3021 * (rho 35926 * seg34AccX130 rho) * (rho 35925 * seg34AccY130 rho)) =
          (-1) * (rho 35926 * seg34AccX130 rho) - rho 35925 * seg34AccY130 rho +
            (seg34AccY130 rho - seg34AccX130 rho * (-1)) * (rho 35925 + rho 35926) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35932 * (1 - rho 35930) = rho 35927 - rho 35928 - rho 35929 := ha5
        _ = (-1) * rho 35928 - rho 35929 + (seg34AccY130 rho - seg34AccX130 rho * (-1)) * (rho 35925 + rho 35926) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX131 rho = seg34AccX130 rho - Bool.toZMod bit * (seg34AccX130 rho - rho 35931) := by
      have hd : rho 35933 = Bool.toZMod bit * (rho 35931 - seg34AccX130 rho) := by
        rw [← hbit]
        unfold seg34AccX130
        linear_combination -r4661
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY131 rho = seg34AccY130 rho - Bool.toZMod bit * (seg34AccY130 rho - rho 35932) := by
      have hd : rho 35934 = Bool.toZMod bit * (rho 35932 - seg34AccY130 rho) := by
        rw [← hbit]
        unfold seg34AccY130
        linear_combination -r4662
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35925 * rho 35926 = rho 35935 := by linear_combination r4663
    have hd1 : rho 35925 * rho 35925 = rho 35936 := by linear_combination r4664
    have hd2 : rho 35926 * rho 35926 = rho 35937 := by linear_combination r4665
    have hd3 : rho 35938 * (rho 35926 * rho 35926 + rho 35925 * rho 35925 * (-1)) = 2 * (rho 35925 * rho 35926) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 35939 * (2 - (rho 35926 * rho 35926 + rho 35925 * rho 35925 * (-1))) = rho 35926 * rho 35926 - rho 35925 * rho 35925 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
      ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
      ⟨(rho 35931 : Seg34.F), (rho 35932 : Seg34.F)⟩
      ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
      ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg34_rows131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4668 rho ∧ Seg34.relationRow4669 rho ∧ Seg34.relationRow4670 rho ∧ Seg34.relationRow4671 rho ∧ Seg34.relationRow4672 rho ∧ Seg34.relationRow4673 rho ∧ Seg34.relationRow4674 rho ∧ Seg34.relationRow4675 rho ∧ Seg34.relationRow4676 rho ∧ Seg34.relationRow4677 rho ∧ Seg34.relationRow4678 rho ∧ Seg34.relationRow4679 rho ∧ Seg34.relationRow4680 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩

theorem seg34_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
        ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
        ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩ := by
  obtain ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩ := seg34_rows131 rho h
  unfold Seg34.relationRow4668 at r4668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4668
  unfold Seg34.relationRow4669 at r4669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4669
  unfold Seg34.relationRow4670 at r4670
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4670
  unfold Seg34.relationRow4671 at r4671
  unfold Seg34.relationRow4672 at r4672
  unfold Seg34.relationRow4673 at r4673
  unfold Seg34.relationRow4674 at r4674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4674
  unfold Seg34.relationRow4675 at r4675
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4675
  unfold Seg34.relationRow4676 at r4676
  unfold Seg34.relationRow4677 at r4677
  unfold Seg34.relationRow4678 at r4678
  unfold Seg34.relationRow4679 at r4679
  unfold Seg34.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 34123 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
        ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
        ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩ := by
    have hnextx : seg34AccX132 rho = seg34AccX131 rho + rho 35946 := by
      unfold seg34AccX132 seg34AccX131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 131]
      ring
    have hnexty : seg34AccY132 rho = seg34AccY131 rho + rho 35947 := by
      unfold seg34AccY132 seg34AccY131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 131]
      ring
    have ha0 : (rho 35938 + rho 35939) * (seg34AccX131 rho + seg34AccY131 rho) = rho 35940 := by
      unfold seg34AccX131 seg34AccY131
      linear_combination r4668
    have ha1 : rho 35939 * seg34AccX131 rho = rho 35941 := by
      unfold seg34AccX131
      linear_combination r4669
    have ha2 : rho 35938 * seg34AccY131 rho = rho 35942 := by
      unfold seg34AccY131
      linear_combination r4670
    have ha3 : 3021 * rho 35941 * rho 35942 = rho 35943 := by
      linear_combination r4671
    have ha4 : rho 35944 * (1 + rho 35943) = rho 35941 + rho 35942 := by
      linear_combination r4672
    have ha5 : rho 35945 * (1 - rho 35943) = rho 35940 - rho 35941 - rho 35942 := by
      linear_combination r4673
    have haddx :
        rho 35944 * (1 + 3021 * (rho 35939 * seg34AccX131 rho) * (rho 35938 * seg34AccY131 rho)) =
          rho 35939 * seg34AccX131 rho + rho 35938 * seg34AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35945 * (1 - 3021 * (rho 35939 * seg34AccX131 rho) * (rho 35938 * seg34AccY131 rho)) =
          (-1) * (rho 35939 * seg34AccX131 rho) - rho 35938 * seg34AccY131 rho +
            (seg34AccY131 rho - seg34AccX131 rho * (-1)) * (rho 35938 + rho 35939) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35945 * (1 - rho 35943) = rho 35940 - rho 35941 - rho 35942 := ha5
        _ = (-1) * rho 35941 - rho 35942 + (seg34AccY131 rho - seg34AccX131 rho * (-1)) * (rho 35938 + rho 35939) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX132 rho = seg34AccX131 rho - Bool.toZMod bit * (seg34AccX131 rho - rho 35944) := by
      have hd : rho 35946 = Bool.toZMod bit * (rho 35944 - seg34AccX131 rho) := by
        rw [← hbit]
        unfold seg34AccX131
        linear_combination -r4674
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY132 rho = seg34AccY131 rho - Bool.toZMod bit * (seg34AccY131 rho - rho 35945) := by
      have hd : rho 35947 = Bool.toZMod bit * (rho 35945 - seg34AccY131 rho) := by
        rw [← hbit]
        unfold seg34AccY131
        linear_combination -r4675
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35938 * rho 35939 = rho 35948 := by linear_combination r4676
    have hd1 : rho 35938 * rho 35938 = rho 35949 := by linear_combination r4677
    have hd2 : rho 35939 * rho 35939 = rho 35950 := by linear_combination r4678
    have hd3 : rho 35951 * (rho 35939 * rho 35939 + rho 35938 * rho 35938 * (-1)) = 2 * (rho 35938 * rho 35939) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 35952 * (2 - (rho 35939 * rho 35939 + rho 35938 * rho 35938 * (-1))) = rho 35939 * rho 35939 - rho 35938 * rho 35938 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
      ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
      ⟨(rho 35944 : Seg34.F), (rho 35945 : Seg34.F)⟩
      ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
      ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg34_hstep_c11 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 132 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg34_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg34_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg34_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg34_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg34_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg34_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
  · exact seg34_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg34_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg34_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg34_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
