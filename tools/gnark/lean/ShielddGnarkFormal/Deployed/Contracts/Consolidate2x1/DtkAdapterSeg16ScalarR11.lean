import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4538 rho ∧ Seg16.relationRow4539 rho ∧ Seg16.relationRow4540 rho ∧ Seg16.relationRow4541 rho ∧ Seg16.relationRow4542 rho ∧ Seg16.relationRow4543 rho ∧ Seg16.relationRow4544 rho ∧ Seg16.relationRow4545 rho ∧ Seg16.relationRow4546 rho ∧ Seg16.relationRow4547 rho ∧ Seg16.relationRow4548 rho ∧ Seg16.relationRow4549 rho ∧ Seg16.relationRow4550 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩

theorem seg16_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15413 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩ := by
  obtain ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩ := seg16_rows121 rho h
  unfold Seg16.relationRow4538 at r4538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4538
  unfold Seg16.relationRow4539 at r4539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4539
  unfold Seg16.relationRow4540 at r4540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4540
  unfold Seg16.relationRow4541 at r4541
  unfold Seg16.relationRow4542 at r4542
  unfold Seg16.relationRow4543 at r4543
  unfold Seg16.relationRow4544 at r4544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4544
  unfold Seg16.relationRow4545 at r4545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4545
  unfold Seg16.relationRow4546 at r4546
  unfold Seg16.relationRow4547 at r4547
  unfold Seg16.relationRow4548 at r4548
  unfold Seg16.relationRow4549 at r4549
  unfold Seg16.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 15413 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩ := by
    have hnextx : seg16AccX122 rho = seg16AccX121 rho + rho 17116 := by
      unfold seg16AccX122 seg16AccX121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 121]
      ring
    have hnexty : seg16AccY122 rho = seg16AccY121 rho + rho 17117 := by
      unfold seg16AccY122 seg16AccY121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 121]
      ring
    have ha0 : (rho 17108 + rho 17109) * (seg16AccX121 rho + seg16AccY121 rho) = rho 17110 := by
      unfold seg16AccX121 seg16AccY121
      linear_combination r4538
    have ha1 : rho 17109 * seg16AccX121 rho = rho 17111 := by
      unfold seg16AccX121
      linear_combination r4539
    have ha2 : rho 17108 * seg16AccY121 rho = rho 17112 := by
      unfold seg16AccY121
      linear_combination r4540
    have ha3 : 3021 * rho 17111 * rho 17112 = rho 17113 := by
      linear_combination r4541
    have ha4 : rho 17114 * (1 + rho 17113) = rho 17111 + rho 17112 := by
      linear_combination r4542
    have ha5 : rho 17115 * (1 - rho 17113) = rho 17110 - rho 17111 - rho 17112 := by
      linear_combination r4543
    have haddx :
        rho 17114 * (1 + 3021 * (rho 17109 * seg16AccX121 rho) * (rho 17108 * seg16AccY121 rho)) =
          rho 17109 * seg16AccX121 rho + rho 17108 * seg16AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17115 * (1 - 3021 * (rho 17109 * seg16AccX121 rho) * (rho 17108 * seg16AccY121 rho)) =
          (-1) * (rho 17109 * seg16AccX121 rho) - rho 17108 * seg16AccY121 rho +
            (seg16AccY121 rho - seg16AccX121 rho * (-1)) * (rho 17108 + rho 17109) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17115 * (1 - rho 17113) = rho 17110 - rho 17111 - rho 17112 := ha5
        _ = (-1) * rho 17111 - rho 17112 + (seg16AccY121 rho - seg16AccX121 rho * (-1)) * (rho 17108 + rho 17109) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX122 rho = seg16AccX121 rho - Bool.toZMod bit * (seg16AccX121 rho - rho 17114) := by
      have hd : rho 17116 = Bool.toZMod bit * (rho 17114 - seg16AccX121 rho) := by
        rw [← hbit]
        unfold seg16AccX121
        linear_combination -r4544
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY122 rho = seg16AccY121 rho - Bool.toZMod bit * (seg16AccY121 rho - rho 17115) := by
      have hd : rho 17117 = Bool.toZMod bit * (rho 17115 - seg16AccY121 rho) := by
        rw [← hbit]
        unfold seg16AccY121
        linear_combination -r4545
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17108 * rho 17109 = rho 17118 := by linear_combination r4546
    have hd1 : rho 17108 * rho 17108 = rho 17119 := by linear_combination r4547
    have hd2 : rho 17109 * rho 17109 = rho 17120 := by linear_combination r4548
    have hd3 : rho 17121 * (rho 17109 * rho 17109 + rho 17108 * rho 17108 * (-1)) = 2 * (rho 17108 * rho 17109) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 17122 * (2 - (rho 17109 * rho 17109 + rho 17108 * rho 17108 * (-1))) = rho 17109 * rho 17109 - rho 17108 * rho 17108 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
      ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
      ⟨(rho 17114 : Seg16.F), (rho 17115 : Seg16.F)⟩
      ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
      ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg16_rows122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4551 rho ∧ Seg16.relationRow4552 rho ∧ Seg16.relationRow4553 rho ∧ Seg16.relationRow4554 rho ∧ Seg16.relationRow4555 rho ∧ Seg16.relationRow4556 rho ∧ Seg16.relationRow4557 rho ∧ Seg16.relationRow4558 rho ∧ Seg16.relationRow4559 rho ∧ Seg16.relationRow4560 rho ∧ Seg16.relationRow4561 rho ∧ Seg16.relationRow4562 rho ∧ Seg16.relationRow4563 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩

theorem seg16_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15414 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩ := by
  obtain ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩ := seg16_rows122 rho h
  unfold Seg16.relationRow4551 at r4551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4551
  unfold Seg16.relationRow4552 at r4552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4552
  unfold Seg16.relationRow4553 at r4553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4553
  unfold Seg16.relationRow4554 at r4554
  unfold Seg16.relationRow4555 at r4555
  unfold Seg16.relationRow4556 at r4556
  unfold Seg16.relationRow4557 at r4557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4557
  unfold Seg16.relationRow4558 at r4558
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4558
  unfold Seg16.relationRow4559 at r4559
  unfold Seg16.relationRow4560 at r4560
  unfold Seg16.relationRow4561 at r4561
  unfold Seg16.relationRow4562 at r4562
  unfold Seg16.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 15414 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩ := by
    have hnextx : seg16AccX123 rho = seg16AccX122 rho + rho 17129 := by
      unfold seg16AccX123 seg16AccX122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 122]
      ring
    have hnexty : seg16AccY123 rho = seg16AccY122 rho + rho 17130 := by
      unfold seg16AccY123 seg16AccY122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 122]
      ring
    have ha0 : (rho 17121 + rho 17122) * (seg16AccX122 rho + seg16AccY122 rho) = rho 17123 := by
      unfold seg16AccX122 seg16AccY122
      linear_combination r4551
    have ha1 : rho 17122 * seg16AccX122 rho = rho 17124 := by
      unfold seg16AccX122
      linear_combination r4552
    have ha2 : rho 17121 * seg16AccY122 rho = rho 17125 := by
      unfold seg16AccY122
      linear_combination r4553
    have ha3 : 3021 * rho 17124 * rho 17125 = rho 17126 := by
      linear_combination r4554
    have ha4 : rho 17127 * (1 + rho 17126) = rho 17124 + rho 17125 := by
      linear_combination r4555
    have ha5 : rho 17128 * (1 - rho 17126) = rho 17123 - rho 17124 - rho 17125 := by
      linear_combination r4556
    have haddx :
        rho 17127 * (1 + 3021 * (rho 17122 * seg16AccX122 rho) * (rho 17121 * seg16AccY122 rho)) =
          rho 17122 * seg16AccX122 rho + rho 17121 * seg16AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17128 * (1 - 3021 * (rho 17122 * seg16AccX122 rho) * (rho 17121 * seg16AccY122 rho)) =
          (-1) * (rho 17122 * seg16AccX122 rho) - rho 17121 * seg16AccY122 rho +
            (seg16AccY122 rho - seg16AccX122 rho * (-1)) * (rho 17121 + rho 17122) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17128 * (1 - rho 17126) = rho 17123 - rho 17124 - rho 17125 := ha5
        _ = (-1) * rho 17124 - rho 17125 + (seg16AccY122 rho - seg16AccX122 rho * (-1)) * (rho 17121 + rho 17122) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX123 rho = seg16AccX122 rho - Bool.toZMod bit * (seg16AccX122 rho - rho 17127) := by
      have hd : rho 17129 = Bool.toZMod bit * (rho 17127 - seg16AccX122 rho) := by
        rw [← hbit]
        unfold seg16AccX122
        linear_combination -r4557
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY123 rho = seg16AccY122 rho - Bool.toZMod bit * (seg16AccY122 rho - rho 17128) := by
      have hd : rho 17130 = Bool.toZMod bit * (rho 17128 - seg16AccY122 rho) := by
        rw [← hbit]
        unfold seg16AccY122
        linear_combination -r4558
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17121 * rho 17122 = rho 17131 := by linear_combination r4559
    have hd1 : rho 17121 * rho 17121 = rho 17132 := by linear_combination r4560
    have hd2 : rho 17122 * rho 17122 = rho 17133 := by linear_combination r4561
    have hd3 : rho 17134 * (rho 17122 * rho 17122 + rho 17121 * rho 17121 * (-1)) = 2 * (rho 17121 * rho 17122) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 17135 * (2 - (rho 17122 * rho 17122 + rho 17121 * rho 17121 * (-1))) = rho 17122 * rho 17122 - rho 17121 * rho 17121 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
      ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
      ⟨(rho 17127 : Seg16.F), (rho 17128 : Seg16.F)⟩
      ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
      ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg16_rows123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4564 rho ∧ Seg16.relationRow4565 rho ∧ Seg16.relationRow4566 rho ∧ Seg16.relationRow4567 rho ∧ Seg16.relationRow4568 rho ∧ Seg16.relationRow4569 rho ∧ Seg16.relationRow4570 rho ∧ Seg16.relationRow4571 rho ∧ Seg16.relationRow4572 rho ∧ Seg16.relationRow4573 rho ∧ Seg16.relationRow4574 rho ∧ Seg16.relationRow4575 rho ∧ Seg16.relationRow4576 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩

theorem seg16_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15415 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩ := by
  obtain ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩ := seg16_rows123 rho h
  unfold Seg16.relationRow4564 at r4564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4564
  unfold Seg16.relationRow4565 at r4565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4565
  unfold Seg16.relationRow4566 at r4566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4566
  unfold Seg16.relationRow4567 at r4567
  unfold Seg16.relationRow4568 at r4568
  unfold Seg16.relationRow4569 at r4569
  unfold Seg16.relationRow4570 at r4570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4570
  unfold Seg16.relationRow4571 at r4571
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4571
  unfold Seg16.relationRow4572 at r4572
  unfold Seg16.relationRow4573 at r4573
  unfold Seg16.relationRow4574 at r4574
  unfold Seg16.relationRow4575 at r4575
  unfold Seg16.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 15415 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩ := by
    have hnextx : seg16AccX124 rho = seg16AccX123 rho + rho 17142 := by
      unfold seg16AccX124 seg16AccX123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 123]
      ring
    have hnexty : seg16AccY124 rho = seg16AccY123 rho + rho 17143 := by
      unfold seg16AccY124 seg16AccY123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 123]
      ring
    have ha0 : (rho 17134 + rho 17135) * (seg16AccX123 rho + seg16AccY123 rho) = rho 17136 := by
      unfold seg16AccX123 seg16AccY123
      linear_combination r4564
    have ha1 : rho 17135 * seg16AccX123 rho = rho 17137 := by
      unfold seg16AccX123
      linear_combination r4565
    have ha2 : rho 17134 * seg16AccY123 rho = rho 17138 := by
      unfold seg16AccY123
      linear_combination r4566
    have ha3 : 3021 * rho 17137 * rho 17138 = rho 17139 := by
      linear_combination r4567
    have ha4 : rho 17140 * (1 + rho 17139) = rho 17137 + rho 17138 := by
      linear_combination r4568
    have ha5 : rho 17141 * (1 - rho 17139) = rho 17136 - rho 17137 - rho 17138 := by
      linear_combination r4569
    have haddx :
        rho 17140 * (1 + 3021 * (rho 17135 * seg16AccX123 rho) * (rho 17134 * seg16AccY123 rho)) =
          rho 17135 * seg16AccX123 rho + rho 17134 * seg16AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17141 * (1 - 3021 * (rho 17135 * seg16AccX123 rho) * (rho 17134 * seg16AccY123 rho)) =
          (-1) * (rho 17135 * seg16AccX123 rho) - rho 17134 * seg16AccY123 rho +
            (seg16AccY123 rho - seg16AccX123 rho * (-1)) * (rho 17134 + rho 17135) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17141 * (1 - rho 17139) = rho 17136 - rho 17137 - rho 17138 := ha5
        _ = (-1) * rho 17137 - rho 17138 + (seg16AccY123 rho - seg16AccX123 rho * (-1)) * (rho 17134 + rho 17135) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX124 rho = seg16AccX123 rho - Bool.toZMod bit * (seg16AccX123 rho - rho 17140) := by
      have hd : rho 17142 = Bool.toZMod bit * (rho 17140 - seg16AccX123 rho) := by
        rw [← hbit]
        unfold seg16AccX123
        linear_combination -r4570
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY124 rho = seg16AccY123 rho - Bool.toZMod bit * (seg16AccY123 rho - rho 17141) := by
      have hd : rho 17143 = Bool.toZMod bit * (rho 17141 - seg16AccY123 rho) := by
        rw [← hbit]
        unfold seg16AccY123
        linear_combination -r4571
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17134 * rho 17135 = rho 17144 := by linear_combination r4572
    have hd1 : rho 17134 * rho 17134 = rho 17145 := by linear_combination r4573
    have hd2 : rho 17135 * rho 17135 = rho 17146 := by linear_combination r4574
    have hd3 : rho 17147 * (rho 17135 * rho 17135 + rho 17134 * rho 17134 * (-1)) = 2 * (rho 17134 * rho 17135) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 17148 * (2 - (rho 17135 * rho 17135 + rho 17134 * rho 17134 * (-1))) = rho 17135 * rho 17135 - rho 17134 * rho 17134 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
      ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
      ⟨(rho 17140 : Seg16.F), (rho 17141 : Seg16.F)⟩
      ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
      ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg16_rows124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4577 rho ∧ Seg16.relationRow4578 rho ∧ Seg16.relationRow4579 rho ∧ Seg16.relationRow4580 rho ∧ Seg16.relationRow4581 rho ∧ Seg16.relationRow4582 rho ∧ Seg16.relationRow4583 rho ∧ Seg16.relationRow4584 rho ∧ Seg16.relationRow4585 rho ∧ Seg16.relationRow4586 rho ∧ Seg16.relationRow4587 rho ∧ Seg16.relationRow4588 rho ∧ Seg16.relationRow4589 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩

theorem seg16_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15416 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩ := by
  obtain ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩ := seg16_rows124 rho h
  unfold Seg16.relationRow4577 at r4577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4577
  unfold Seg16.relationRow4578 at r4578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4578
  unfold Seg16.relationRow4579 at r4579
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4579
  unfold Seg16.relationRow4580 at r4580
  unfold Seg16.relationRow4581 at r4581
  unfold Seg16.relationRow4582 at r4582
  unfold Seg16.relationRow4583 at r4583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4583
  unfold Seg16.relationRow4584 at r4584
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4584
  unfold Seg16.relationRow4585 at r4585
  unfold Seg16.relationRow4586 at r4586
  unfold Seg16.relationRow4587 at r4587
  unfold Seg16.relationRow4588 at r4588
  unfold Seg16.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 15416 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩ := by
    have hnextx : seg16AccX125 rho = seg16AccX124 rho + rho 17155 := by
      unfold seg16AccX125 seg16AccX124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 124]
      ring
    have hnexty : seg16AccY125 rho = seg16AccY124 rho + rho 17156 := by
      unfold seg16AccY125 seg16AccY124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 124]
      ring
    have ha0 : (rho 17147 + rho 17148) * (seg16AccX124 rho + seg16AccY124 rho) = rho 17149 := by
      unfold seg16AccX124 seg16AccY124
      linear_combination r4577
    have ha1 : rho 17148 * seg16AccX124 rho = rho 17150 := by
      unfold seg16AccX124
      linear_combination r4578
    have ha2 : rho 17147 * seg16AccY124 rho = rho 17151 := by
      unfold seg16AccY124
      linear_combination r4579
    have ha3 : 3021 * rho 17150 * rho 17151 = rho 17152 := by
      linear_combination r4580
    have ha4 : rho 17153 * (1 + rho 17152) = rho 17150 + rho 17151 := by
      linear_combination r4581
    have ha5 : rho 17154 * (1 - rho 17152) = rho 17149 - rho 17150 - rho 17151 := by
      linear_combination r4582
    have haddx :
        rho 17153 * (1 + 3021 * (rho 17148 * seg16AccX124 rho) * (rho 17147 * seg16AccY124 rho)) =
          rho 17148 * seg16AccX124 rho + rho 17147 * seg16AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17154 * (1 - 3021 * (rho 17148 * seg16AccX124 rho) * (rho 17147 * seg16AccY124 rho)) =
          (-1) * (rho 17148 * seg16AccX124 rho) - rho 17147 * seg16AccY124 rho +
            (seg16AccY124 rho - seg16AccX124 rho * (-1)) * (rho 17147 + rho 17148) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17154 * (1 - rho 17152) = rho 17149 - rho 17150 - rho 17151 := ha5
        _ = (-1) * rho 17150 - rho 17151 + (seg16AccY124 rho - seg16AccX124 rho * (-1)) * (rho 17147 + rho 17148) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX125 rho = seg16AccX124 rho - Bool.toZMod bit * (seg16AccX124 rho - rho 17153) := by
      have hd : rho 17155 = Bool.toZMod bit * (rho 17153 - seg16AccX124 rho) := by
        rw [← hbit]
        unfold seg16AccX124
        linear_combination -r4583
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY125 rho = seg16AccY124 rho - Bool.toZMod bit * (seg16AccY124 rho - rho 17154) := by
      have hd : rho 17156 = Bool.toZMod bit * (rho 17154 - seg16AccY124 rho) := by
        rw [← hbit]
        unfold seg16AccY124
        linear_combination -r4584
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17147 * rho 17148 = rho 17157 := by linear_combination r4585
    have hd1 : rho 17147 * rho 17147 = rho 17158 := by linear_combination r4586
    have hd2 : rho 17148 * rho 17148 = rho 17159 := by linear_combination r4587
    have hd3 : rho 17160 * (rho 17148 * rho 17148 + rho 17147 * rho 17147 * (-1)) = 2 * (rho 17147 * rho 17148) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 17161 * (2 - (rho 17148 * rho 17148 + rho 17147 * rho 17147 * (-1))) = rho 17148 * rho 17148 - rho 17147 * rho 17147 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
      ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
      ⟨(rho 17153 : Seg16.F), (rho 17154 : Seg16.F)⟩
      ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
      ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg16_rows125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4590 rho ∧ Seg16.relationRow4591 rho ∧ Seg16.relationRow4592 rho ∧ Seg16.relationRow4593 rho ∧ Seg16.relationRow4594 rho ∧ Seg16.relationRow4595 rho ∧ Seg16.relationRow4596 rho ∧ Seg16.relationRow4597 rho ∧ Seg16.relationRow4598 rho ∧ Seg16.relationRow4599 rho ∧ Seg16.relationRow4600 rho ∧ Seg16.relationRow4601 rho ∧ Seg16.relationRow4602 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩

theorem seg16_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15417 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩ := by
  obtain ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩ := seg16_rows125 rho h
  unfold Seg16.relationRow4590 at r4590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4590
  unfold Seg16.relationRow4591 at r4591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4591
  unfold Seg16.relationRow4592 at r4592
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4592
  unfold Seg16.relationRow4593 at r4593
  unfold Seg16.relationRow4594 at r4594
  unfold Seg16.relationRow4595 at r4595
  unfold Seg16.relationRow4596 at r4596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4596
  unfold Seg16.relationRow4597 at r4597
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4597
  unfold Seg16.relationRow4598 at r4598
  unfold Seg16.relationRow4599 at r4599
  unfold Seg16.relationRow4600 at r4600
  unfold Seg16.relationRow4601 at r4601
  unfold Seg16.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 15417 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩ := by
    have hnextx : seg16AccX126 rho = seg16AccX125 rho + rho 17168 := by
      unfold seg16AccX126 seg16AccX125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 125]
      ring
    have hnexty : seg16AccY126 rho = seg16AccY125 rho + rho 17169 := by
      unfold seg16AccY126 seg16AccY125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 125]
      ring
    have ha0 : (rho 17160 + rho 17161) * (seg16AccX125 rho + seg16AccY125 rho) = rho 17162 := by
      unfold seg16AccX125 seg16AccY125
      linear_combination r4590
    have ha1 : rho 17161 * seg16AccX125 rho = rho 17163 := by
      unfold seg16AccX125
      linear_combination r4591
    have ha2 : rho 17160 * seg16AccY125 rho = rho 17164 := by
      unfold seg16AccY125
      linear_combination r4592
    have ha3 : 3021 * rho 17163 * rho 17164 = rho 17165 := by
      linear_combination r4593
    have ha4 : rho 17166 * (1 + rho 17165) = rho 17163 + rho 17164 := by
      linear_combination r4594
    have ha5 : rho 17167 * (1 - rho 17165) = rho 17162 - rho 17163 - rho 17164 := by
      linear_combination r4595
    have haddx :
        rho 17166 * (1 + 3021 * (rho 17161 * seg16AccX125 rho) * (rho 17160 * seg16AccY125 rho)) =
          rho 17161 * seg16AccX125 rho + rho 17160 * seg16AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17167 * (1 - 3021 * (rho 17161 * seg16AccX125 rho) * (rho 17160 * seg16AccY125 rho)) =
          (-1) * (rho 17161 * seg16AccX125 rho) - rho 17160 * seg16AccY125 rho +
            (seg16AccY125 rho - seg16AccX125 rho * (-1)) * (rho 17160 + rho 17161) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17167 * (1 - rho 17165) = rho 17162 - rho 17163 - rho 17164 := ha5
        _ = (-1) * rho 17163 - rho 17164 + (seg16AccY125 rho - seg16AccX125 rho * (-1)) * (rho 17160 + rho 17161) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX126 rho = seg16AccX125 rho - Bool.toZMod bit * (seg16AccX125 rho - rho 17166) := by
      have hd : rho 17168 = Bool.toZMod bit * (rho 17166 - seg16AccX125 rho) := by
        rw [← hbit]
        unfold seg16AccX125
        linear_combination -r4596
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY126 rho = seg16AccY125 rho - Bool.toZMod bit * (seg16AccY125 rho - rho 17167) := by
      have hd : rho 17169 = Bool.toZMod bit * (rho 17167 - seg16AccY125 rho) := by
        rw [← hbit]
        unfold seg16AccY125
        linear_combination -r4597
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17160 * rho 17161 = rho 17170 := by linear_combination r4598
    have hd1 : rho 17160 * rho 17160 = rho 17171 := by linear_combination r4599
    have hd2 : rho 17161 * rho 17161 = rho 17172 := by linear_combination r4600
    have hd3 : rho 17173 * (rho 17161 * rho 17161 + rho 17160 * rho 17160 * (-1)) = 2 * (rho 17160 * rho 17161) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 17174 * (2 - (rho 17161 * rho 17161 + rho 17160 * rho 17160 * (-1))) = rho 17161 * rho 17161 - rho 17160 * rho 17160 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
      ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
      ⟨(rho 17166 : Seg16.F), (rho 17167 : Seg16.F)⟩
      ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
      ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg16_rows126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4603 rho ∧ Seg16.relationRow4604 rho ∧ Seg16.relationRow4605 rho ∧ Seg16.relationRow4606 rho ∧ Seg16.relationRow4607 rho ∧ Seg16.relationRow4608 rho ∧ Seg16.relationRow4609 rho ∧ Seg16.relationRow4610 rho ∧ Seg16.relationRow4611 rho ∧ Seg16.relationRow4612 rho ∧ Seg16.relationRow4613 rho ∧ Seg16.relationRow4614 rho ∧ Seg16.relationRow4615 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩

theorem seg16_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15418 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩ := by
  obtain ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩ := seg16_rows126 rho h
  unfold Seg16.relationRow4603 at r4603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4603
  unfold Seg16.relationRow4604 at r4604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4604
  unfold Seg16.relationRow4605 at r4605
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4605
  unfold Seg16.relationRow4606 at r4606
  unfold Seg16.relationRow4607 at r4607
  unfold Seg16.relationRow4608 at r4608
  unfold Seg16.relationRow4609 at r4609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4609
  unfold Seg16.relationRow4610 at r4610
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4610
  unfold Seg16.relationRow4611 at r4611
  unfold Seg16.relationRow4612 at r4612
  unfold Seg16.relationRow4613 at r4613
  unfold Seg16.relationRow4614 at r4614
  unfold Seg16.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 15418 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩ := by
    have hnextx : seg16AccX127 rho = seg16AccX126 rho + rho 17181 := by
      unfold seg16AccX127 seg16AccX126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 126]
      ring
    have hnexty : seg16AccY127 rho = seg16AccY126 rho + rho 17182 := by
      unfold seg16AccY127 seg16AccY126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 126]
      ring
    have ha0 : (rho 17173 + rho 17174) * (seg16AccX126 rho + seg16AccY126 rho) = rho 17175 := by
      unfold seg16AccX126 seg16AccY126
      linear_combination r4603
    have ha1 : rho 17174 * seg16AccX126 rho = rho 17176 := by
      unfold seg16AccX126
      linear_combination r4604
    have ha2 : rho 17173 * seg16AccY126 rho = rho 17177 := by
      unfold seg16AccY126
      linear_combination r4605
    have ha3 : 3021 * rho 17176 * rho 17177 = rho 17178 := by
      linear_combination r4606
    have ha4 : rho 17179 * (1 + rho 17178) = rho 17176 + rho 17177 := by
      linear_combination r4607
    have ha5 : rho 17180 * (1 - rho 17178) = rho 17175 - rho 17176 - rho 17177 := by
      linear_combination r4608
    have haddx :
        rho 17179 * (1 + 3021 * (rho 17174 * seg16AccX126 rho) * (rho 17173 * seg16AccY126 rho)) =
          rho 17174 * seg16AccX126 rho + rho 17173 * seg16AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17180 * (1 - 3021 * (rho 17174 * seg16AccX126 rho) * (rho 17173 * seg16AccY126 rho)) =
          (-1) * (rho 17174 * seg16AccX126 rho) - rho 17173 * seg16AccY126 rho +
            (seg16AccY126 rho - seg16AccX126 rho * (-1)) * (rho 17173 + rho 17174) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17180 * (1 - rho 17178) = rho 17175 - rho 17176 - rho 17177 := ha5
        _ = (-1) * rho 17176 - rho 17177 + (seg16AccY126 rho - seg16AccX126 rho * (-1)) * (rho 17173 + rho 17174) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX127 rho = seg16AccX126 rho - Bool.toZMod bit * (seg16AccX126 rho - rho 17179) := by
      have hd : rho 17181 = Bool.toZMod bit * (rho 17179 - seg16AccX126 rho) := by
        rw [← hbit]
        unfold seg16AccX126
        linear_combination -r4609
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY127 rho = seg16AccY126 rho - Bool.toZMod bit * (seg16AccY126 rho - rho 17180) := by
      have hd : rho 17182 = Bool.toZMod bit * (rho 17180 - seg16AccY126 rho) := by
        rw [← hbit]
        unfold seg16AccY126
        linear_combination -r4610
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17173 * rho 17174 = rho 17183 := by linear_combination r4611
    have hd1 : rho 17173 * rho 17173 = rho 17184 := by linear_combination r4612
    have hd2 : rho 17174 * rho 17174 = rho 17185 := by linear_combination r4613
    have hd3 : rho 17186 * (rho 17174 * rho 17174 + rho 17173 * rho 17173 * (-1)) = 2 * (rho 17173 * rho 17174) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 17187 * (2 - (rho 17174 * rho 17174 + rho 17173 * rho 17173 * (-1))) = rho 17174 * rho 17174 - rho 17173 * rho 17173 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
      ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
      ⟨(rho 17179 : Seg16.F), (rho 17180 : Seg16.F)⟩
      ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
      ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg16_rows127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4616 rho ∧ Seg16.relationRow4617 rho ∧ Seg16.relationRow4618 rho ∧ Seg16.relationRow4619 rho ∧ Seg16.relationRow4620 rho ∧ Seg16.relationRow4621 rho ∧ Seg16.relationRow4622 rho ∧ Seg16.relationRow4623 rho ∧ Seg16.relationRow4624 rho ∧ Seg16.relationRow4625 rho ∧ Seg16.relationRow4626 rho ∧ Seg16.relationRow4627 rho ∧ Seg16.relationRow4628 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩

theorem seg16_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15419 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩ := by
  obtain ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩ := seg16_rows127 rho h
  unfold Seg16.relationRow4616 at r4616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4616
  unfold Seg16.relationRow4617 at r4617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4617
  unfold Seg16.relationRow4618 at r4618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4618
  unfold Seg16.relationRow4619 at r4619
  unfold Seg16.relationRow4620 at r4620
  unfold Seg16.relationRow4621 at r4621
  unfold Seg16.relationRow4622 at r4622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4622
  unfold Seg16.relationRow4623 at r4623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4623
  unfold Seg16.relationRow4624 at r4624
  unfold Seg16.relationRow4625 at r4625
  unfold Seg16.relationRow4626 at r4626
  unfold Seg16.relationRow4627 at r4627
  unfold Seg16.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 15419 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩ := by
    have hnextx : seg16AccX128 rho = seg16AccX127 rho + rho 17194 := by
      unfold seg16AccX128 seg16AccX127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 127]
      ring
    have hnexty : seg16AccY128 rho = seg16AccY127 rho + rho 17195 := by
      unfold seg16AccY128 seg16AccY127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 127]
      ring
    have ha0 : (rho 17186 + rho 17187) * (seg16AccX127 rho + seg16AccY127 rho) = rho 17188 := by
      unfold seg16AccX127 seg16AccY127
      linear_combination r4616
    have ha1 : rho 17187 * seg16AccX127 rho = rho 17189 := by
      unfold seg16AccX127
      linear_combination r4617
    have ha2 : rho 17186 * seg16AccY127 rho = rho 17190 := by
      unfold seg16AccY127
      linear_combination r4618
    have ha3 : 3021 * rho 17189 * rho 17190 = rho 17191 := by
      linear_combination r4619
    have ha4 : rho 17192 * (1 + rho 17191) = rho 17189 + rho 17190 := by
      linear_combination r4620
    have ha5 : rho 17193 * (1 - rho 17191) = rho 17188 - rho 17189 - rho 17190 := by
      linear_combination r4621
    have haddx :
        rho 17192 * (1 + 3021 * (rho 17187 * seg16AccX127 rho) * (rho 17186 * seg16AccY127 rho)) =
          rho 17187 * seg16AccX127 rho + rho 17186 * seg16AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17193 * (1 - 3021 * (rho 17187 * seg16AccX127 rho) * (rho 17186 * seg16AccY127 rho)) =
          (-1) * (rho 17187 * seg16AccX127 rho) - rho 17186 * seg16AccY127 rho +
            (seg16AccY127 rho - seg16AccX127 rho * (-1)) * (rho 17186 + rho 17187) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17193 * (1 - rho 17191) = rho 17188 - rho 17189 - rho 17190 := ha5
        _ = (-1) * rho 17189 - rho 17190 + (seg16AccY127 rho - seg16AccX127 rho * (-1)) * (rho 17186 + rho 17187) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX128 rho = seg16AccX127 rho - Bool.toZMod bit * (seg16AccX127 rho - rho 17192) := by
      have hd : rho 17194 = Bool.toZMod bit * (rho 17192 - seg16AccX127 rho) := by
        rw [← hbit]
        unfold seg16AccX127
        linear_combination -r4622
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY128 rho = seg16AccY127 rho - Bool.toZMod bit * (seg16AccY127 rho - rho 17193) := by
      have hd : rho 17195 = Bool.toZMod bit * (rho 17193 - seg16AccY127 rho) := by
        rw [← hbit]
        unfold seg16AccY127
        linear_combination -r4623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17186 * rho 17187 = rho 17196 := by linear_combination r4624
    have hd1 : rho 17186 * rho 17186 = rho 17197 := by linear_combination r4625
    have hd2 : rho 17187 * rho 17187 = rho 17198 := by linear_combination r4626
    have hd3 : rho 17199 * (rho 17187 * rho 17187 + rho 17186 * rho 17186 * (-1)) = 2 * (rho 17186 * rho 17187) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 17200 * (2 - (rho 17187 * rho 17187 + rho 17186 * rho 17186 * (-1))) = rho 17187 * rho 17187 - rho 17186 * rho 17186 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
      ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
      ⟨(rho 17192 : Seg16.F), (rho 17193 : Seg16.F)⟩
      ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
      ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg16_rows128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4629 rho ∧ Seg16.relationRow4630 rho ∧ Seg16.relationRow4631 rho ∧ Seg16.relationRow4632 rho ∧ Seg16.relationRow4633 rho ∧ Seg16.relationRow4634 rho ∧ Seg16.relationRow4635 rho ∧ Seg16.relationRow4636 rho ∧ Seg16.relationRow4637 rho ∧ Seg16.relationRow4638 rho ∧ Seg16.relationRow4639 rho ∧ Seg16.relationRow4640 rho ∧ Seg16.relationRow4641 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩

theorem seg16_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15420 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩ := by
  obtain ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩ := seg16_rows128 rho h
  unfold Seg16.relationRow4629 at r4629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4629
  unfold Seg16.relationRow4630 at r4630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4630
  unfold Seg16.relationRow4631 at r4631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4631
  unfold Seg16.relationRow4632 at r4632
  unfold Seg16.relationRow4633 at r4633
  unfold Seg16.relationRow4634 at r4634
  unfold Seg16.relationRow4635 at r4635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4635
  unfold Seg16.relationRow4636 at r4636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4636
  unfold Seg16.relationRow4637 at r4637
  unfold Seg16.relationRow4638 at r4638
  unfold Seg16.relationRow4639 at r4639
  unfold Seg16.relationRow4640 at r4640
  unfold Seg16.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 15420 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩ := by
    have hnextx : seg16AccX129 rho = seg16AccX128 rho + rho 17207 := by
      unfold seg16AccX129 seg16AccX128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 128]
      ring
    have hnexty : seg16AccY129 rho = seg16AccY128 rho + rho 17208 := by
      unfold seg16AccY129 seg16AccY128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 128]
      ring
    have ha0 : (rho 17199 + rho 17200) * (seg16AccX128 rho + seg16AccY128 rho) = rho 17201 := by
      unfold seg16AccX128 seg16AccY128
      linear_combination r4629
    have ha1 : rho 17200 * seg16AccX128 rho = rho 17202 := by
      unfold seg16AccX128
      linear_combination r4630
    have ha2 : rho 17199 * seg16AccY128 rho = rho 17203 := by
      unfold seg16AccY128
      linear_combination r4631
    have ha3 : 3021 * rho 17202 * rho 17203 = rho 17204 := by
      linear_combination r4632
    have ha4 : rho 17205 * (1 + rho 17204) = rho 17202 + rho 17203 := by
      linear_combination r4633
    have ha5 : rho 17206 * (1 - rho 17204) = rho 17201 - rho 17202 - rho 17203 := by
      linear_combination r4634
    have haddx :
        rho 17205 * (1 + 3021 * (rho 17200 * seg16AccX128 rho) * (rho 17199 * seg16AccY128 rho)) =
          rho 17200 * seg16AccX128 rho + rho 17199 * seg16AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17206 * (1 - 3021 * (rho 17200 * seg16AccX128 rho) * (rho 17199 * seg16AccY128 rho)) =
          (-1) * (rho 17200 * seg16AccX128 rho) - rho 17199 * seg16AccY128 rho +
            (seg16AccY128 rho - seg16AccX128 rho * (-1)) * (rho 17199 + rho 17200) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17206 * (1 - rho 17204) = rho 17201 - rho 17202 - rho 17203 := ha5
        _ = (-1) * rho 17202 - rho 17203 + (seg16AccY128 rho - seg16AccX128 rho * (-1)) * (rho 17199 + rho 17200) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX129 rho = seg16AccX128 rho - Bool.toZMod bit * (seg16AccX128 rho - rho 17205) := by
      have hd : rho 17207 = Bool.toZMod bit * (rho 17205 - seg16AccX128 rho) := by
        rw [← hbit]
        unfold seg16AccX128
        linear_combination -r4635
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY129 rho = seg16AccY128 rho - Bool.toZMod bit * (seg16AccY128 rho - rho 17206) := by
      have hd : rho 17208 = Bool.toZMod bit * (rho 17206 - seg16AccY128 rho) := by
        rw [← hbit]
        unfold seg16AccY128
        linear_combination -r4636
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17199 * rho 17200 = rho 17209 := by linear_combination r4637
    have hd1 : rho 17199 * rho 17199 = rho 17210 := by linear_combination r4638
    have hd2 : rho 17200 * rho 17200 = rho 17211 := by linear_combination r4639
    have hd3 : rho 17212 * (rho 17200 * rho 17200 + rho 17199 * rho 17199 * (-1)) = 2 * (rho 17199 * rho 17200) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 17213 * (2 - (rho 17200 * rho 17200 + rho 17199 * rho 17199 * (-1))) = rho 17200 * rho 17200 - rho 17199 * rho 17199 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
      ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
      ⟨(rho 17205 : Seg16.F), (rho 17206 : Seg16.F)⟩
      ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
      ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg16_rows129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4642 rho ∧ Seg16.relationRow4643 rho ∧ Seg16.relationRow4644 rho ∧ Seg16.relationRow4645 rho ∧ Seg16.relationRow4646 rho ∧ Seg16.relationRow4647 rho ∧ Seg16.relationRow4648 rho ∧ Seg16.relationRow4649 rho ∧ Seg16.relationRow4650 rho ∧ Seg16.relationRow4651 rho ∧ Seg16.relationRow4652 rho ∧ Seg16.relationRow4653 rho ∧ Seg16.relationRow4654 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩

theorem seg16_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15421 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩ := by
  obtain ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩ := seg16_rows129 rho h
  unfold Seg16.relationRow4642 at r4642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4642
  unfold Seg16.relationRow4643 at r4643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4643
  unfold Seg16.relationRow4644 at r4644
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4644
  unfold Seg16.relationRow4645 at r4645
  unfold Seg16.relationRow4646 at r4646
  unfold Seg16.relationRow4647 at r4647
  unfold Seg16.relationRow4648 at r4648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4648
  unfold Seg16.relationRow4649 at r4649
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4649
  unfold Seg16.relationRow4650 at r4650
  unfold Seg16.relationRow4651 at r4651
  unfold Seg16.relationRow4652 at r4652
  unfold Seg16.relationRow4653 at r4653
  unfold Seg16.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 15421 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩ := by
    have hnextx : seg16AccX130 rho = seg16AccX129 rho + rho 17220 := by
      unfold seg16AccX130 seg16AccX129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 129]
      ring
    have hnexty : seg16AccY130 rho = seg16AccY129 rho + rho 17221 := by
      unfold seg16AccY130 seg16AccY129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 129]
      ring
    have ha0 : (rho 17212 + rho 17213) * (seg16AccX129 rho + seg16AccY129 rho) = rho 17214 := by
      unfold seg16AccX129 seg16AccY129
      linear_combination r4642
    have ha1 : rho 17213 * seg16AccX129 rho = rho 17215 := by
      unfold seg16AccX129
      linear_combination r4643
    have ha2 : rho 17212 * seg16AccY129 rho = rho 17216 := by
      unfold seg16AccY129
      linear_combination r4644
    have ha3 : 3021 * rho 17215 * rho 17216 = rho 17217 := by
      linear_combination r4645
    have ha4 : rho 17218 * (1 + rho 17217) = rho 17215 + rho 17216 := by
      linear_combination r4646
    have ha5 : rho 17219 * (1 - rho 17217) = rho 17214 - rho 17215 - rho 17216 := by
      linear_combination r4647
    have haddx :
        rho 17218 * (1 + 3021 * (rho 17213 * seg16AccX129 rho) * (rho 17212 * seg16AccY129 rho)) =
          rho 17213 * seg16AccX129 rho + rho 17212 * seg16AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17219 * (1 - 3021 * (rho 17213 * seg16AccX129 rho) * (rho 17212 * seg16AccY129 rho)) =
          (-1) * (rho 17213 * seg16AccX129 rho) - rho 17212 * seg16AccY129 rho +
            (seg16AccY129 rho - seg16AccX129 rho * (-1)) * (rho 17212 + rho 17213) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17219 * (1 - rho 17217) = rho 17214 - rho 17215 - rho 17216 := ha5
        _ = (-1) * rho 17215 - rho 17216 + (seg16AccY129 rho - seg16AccX129 rho * (-1)) * (rho 17212 + rho 17213) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX130 rho = seg16AccX129 rho - Bool.toZMod bit * (seg16AccX129 rho - rho 17218) := by
      have hd : rho 17220 = Bool.toZMod bit * (rho 17218 - seg16AccX129 rho) := by
        rw [← hbit]
        unfold seg16AccX129
        linear_combination -r4648
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY130 rho = seg16AccY129 rho - Bool.toZMod bit * (seg16AccY129 rho - rho 17219) := by
      have hd : rho 17221 = Bool.toZMod bit * (rho 17219 - seg16AccY129 rho) := by
        rw [← hbit]
        unfold seg16AccY129
        linear_combination -r4649
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17212 * rho 17213 = rho 17222 := by linear_combination r4650
    have hd1 : rho 17212 * rho 17212 = rho 17223 := by linear_combination r4651
    have hd2 : rho 17213 * rho 17213 = rho 17224 := by linear_combination r4652
    have hd3 : rho 17225 * (rho 17213 * rho 17213 + rho 17212 * rho 17212 * (-1)) = 2 * (rho 17212 * rho 17213) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 17226 * (2 - (rho 17213 * rho 17213 + rho 17212 * rho 17212 * (-1))) = rho 17213 * rho 17213 - rho 17212 * rho 17212 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
      ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
      ⟨(rho 17218 : Seg16.F), (rho 17219 : Seg16.F)⟩
      ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
      ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg16_rows130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4655 rho ∧ Seg16.relationRow4656 rho ∧ Seg16.relationRow4657 rho ∧ Seg16.relationRow4658 rho ∧ Seg16.relationRow4659 rho ∧ Seg16.relationRow4660 rho ∧ Seg16.relationRow4661 rho ∧ Seg16.relationRow4662 rho ∧ Seg16.relationRow4663 rho ∧ Seg16.relationRow4664 rho ∧ Seg16.relationRow4665 rho ∧ Seg16.relationRow4666 rho ∧ Seg16.relationRow4667 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩

theorem seg16_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15422 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩ := by
  obtain ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩ := seg16_rows130 rho h
  unfold Seg16.relationRow4655 at r4655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4655
  unfold Seg16.relationRow4656 at r4656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4656
  unfold Seg16.relationRow4657 at r4657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4657
  unfold Seg16.relationRow4658 at r4658
  unfold Seg16.relationRow4659 at r4659
  unfold Seg16.relationRow4660 at r4660
  unfold Seg16.relationRow4661 at r4661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4661
  unfold Seg16.relationRow4662 at r4662
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4662
  unfold Seg16.relationRow4663 at r4663
  unfold Seg16.relationRow4664 at r4664
  unfold Seg16.relationRow4665 at r4665
  unfold Seg16.relationRow4666 at r4666
  unfold Seg16.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 15422 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩ := by
    have hnextx : seg16AccX131 rho = seg16AccX130 rho + rho 17233 := by
      unfold seg16AccX131 seg16AccX130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 130]
      ring
    have hnexty : seg16AccY131 rho = seg16AccY130 rho + rho 17234 := by
      unfold seg16AccY131 seg16AccY130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 130]
      ring
    have ha0 : (rho 17225 + rho 17226) * (seg16AccX130 rho + seg16AccY130 rho) = rho 17227 := by
      unfold seg16AccX130 seg16AccY130
      linear_combination r4655
    have ha1 : rho 17226 * seg16AccX130 rho = rho 17228 := by
      unfold seg16AccX130
      linear_combination r4656
    have ha2 : rho 17225 * seg16AccY130 rho = rho 17229 := by
      unfold seg16AccY130
      linear_combination r4657
    have ha3 : 3021 * rho 17228 * rho 17229 = rho 17230 := by
      linear_combination r4658
    have ha4 : rho 17231 * (1 + rho 17230) = rho 17228 + rho 17229 := by
      linear_combination r4659
    have ha5 : rho 17232 * (1 - rho 17230) = rho 17227 - rho 17228 - rho 17229 := by
      linear_combination r4660
    have haddx :
        rho 17231 * (1 + 3021 * (rho 17226 * seg16AccX130 rho) * (rho 17225 * seg16AccY130 rho)) =
          rho 17226 * seg16AccX130 rho + rho 17225 * seg16AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17232 * (1 - 3021 * (rho 17226 * seg16AccX130 rho) * (rho 17225 * seg16AccY130 rho)) =
          (-1) * (rho 17226 * seg16AccX130 rho) - rho 17225 * seg16AccY130 rho +
            (seg16AccY130 rho - seg16AccX130 rho * (-1)) * (rho 17225 + rho 17226) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17232 * (1 - rho 17230) = rho 17227 - rho 17228 - rho 17229 := ha5
        _ = (-1) * rho 17228 - rho 17229 + (seg16AccY130 rho - seg16AccX130 rho * (-1)) * (rho 17225 + rho 17226) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX131 rho = seg16AccX130 rho - Bool.toZMod bit * (seg16AccX130 rho - rho 17231) := by
      have hd : rho 17233 = Bool.toZMod bit * (rho 17231 - seg16AccX130 rho) := by
        rw [← hbit]
        unfold seg16AccX130
        linear_combination -r4661
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY131 rho = seg16AccY130 rho - Bool.toZMod bit * (seg16AccY130 rho - rho 17232) := by
      have hd : rho 17234 = Bool.toZMod bit * (rho 17232 - seg16AccY130 rho) := by
        rw [← hbit]
        unfold seg16AccY130
        linear_combination -r4662
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17225 * rho 17226 = rho 17235 := by linear_combination r4663
    have hd1 : rho 17225 * rho 17225 = rho 17236 := by linear_combination r4664
    have hd2 : rho 17226 * rho 17226 = rho 17237 := by linear_combination r4665
    have hd3 : rho 17238 * (rho 17226 * rho 17226 + rho 17225 * rho 17225 * (-1)) = 2 * (rho 17225 * rho 17226) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 17239 * (2 - (rho 17226 * rho 17226 + rho 17225 * rho 17225 * (-1))) = rho 17226 * rho 17226 - rho 17225 * rho 17225 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
      ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
      ⟨(rho 17231 : Seg16.F), (rho 17232 : Seg16.F)⟩
      ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
      ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg16_rows131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4668 rho ∧ Seg16.relationRow4669 rho ∧ Seg16.relationRow4670 rho ∧ Seg16.relationRow4671 rho ∧ Seg16.relationRow4672 rho ∧ Seg16.relationRow4673 rho ∧ Seg16.relationRow4674 rho ∧ Seg16.relationRow4675 rho ∧ Seg16.relationRow4676 rho ∧ Seg16.relationRow4677 rho ∧ Seg16.relationRow4678 rho ∧ Seg16.relationRow4679 rho ∧ Seg16.relationRow4680 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩

theorem seg16_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15423 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩ := by
  obtain ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩ := seg16_rows131 rho h
  unfold Seg16.relationRow4668 at r4668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4668
  unfold Seg16.relationRow4669 at r4669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4669
  unfold Seg16.relationRow4670 at r4670
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4670
  unfold Seg16.relationRow4671 at r4671
  unfold Seg16.relationRow4672 at r4672
  unfold Seg16.relationRow4673 at r4673
  unfold Seg16.relationRow4674 at r4674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4674
  unfold Seg16.relationRow4675 at r4675
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4675
  unfold Seg16.relationRow4676 at r4676
  unfold Seg16.relationRow4677 at r4677
  unfold Seg16.relationRow4678 at r4678
  unfold Seg16.relationRow4679 at r4679
  unfold Seg16.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 15423 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩ := by
    have hnextx : seg16AccX132 rho = seg16AccX131 rho + rho 17246 := by
      unfold seg16AccX132 seg16AccX131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 131]
      ring
    have hnexty : seg16AccY132 rho = seg16AccY131 rho + rho 17247 := by
      unfold seg16AccY132 seg16AccY131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 131]
      ring
    have ha0 : (rho 17238 + rho 17239) * (seg16AccX131 rho + seg16AccY131 rho) = rho 17240 := by
      unfold seg16AccX131 seg16AccY131
      linear_combination r4668
    have ha1 : rho 17239 * seg16AccX131 rho = rho 17241 := by
      unfold seg16AccX131
      linear_combination r4669
    have ha2 : rho 17238 * seg16AccY131 rho = rho 17242 := by
      unfold seg16AccY131
      linear_combination r4670
    have ha3 : 3021 * rho 17241 * rho 17242 = rho 17243 := by
      linear_combination r4671
    have ha4 : rho 17244 * (1 + rho 17243) = rho 17241 + rho 17242 := by
      linear_combination r4672
    have ha5 : rho 17245 * (1 - rho 17243) = rho 17240 - rho 17241 - rho 17242 := by
      linear_combination r4673
    have haddx :
        rho 17244 * (1 + 3021 * (rho 17239 * seg16AccX131 rho) * (rho 17238 * seg16AccY131 rho)) =
          rho 17239 * seg16AccX131 rho + rho 17238 * seg16AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17245 * (1 - 3021 * (rho 17239 * seg16AccX131 rho) * (rho 17238 * seg16AccY131 rho)) =
          (-1) * (rho 17239 * seg16AccX131 rho) - rho 17238 * seg16AccY131 rho +
            (seg16AccY131 rho - seg16AccX131 rho * (-1)) * (rho 17238 + rho 17239) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17245 * (1 - rho 17243) = rho 17240 - rho 17241 - rho 17242 := ha5
        _ = (-1) * rho 17241 - rho 17242 + (seg16AccY131 rho - seg16AccX131 rho * (-1)) * (rho 17238 + rho 17239) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX132 rho = seg16AccX131 rho - Bool.toZMod bit * (seg16AccX131 rho - rho 17244) := by
      have hd : rho 17246 = Bool.toZMod bit * (rho 17244 - seg16AccX131 rho) := by
        rw [← hbit]
        unfold seg16AccX131
        linear_combination -r4674
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY132 rho = seg16AccY131 rho - Bool.toZMod bit * (seg16AccY131 rho - rho 17245) := by
      have hd : rho 17247 = Bool.toZMod bit * (rho 17245 - seg16AccY131 rho) := by
        rw [← hbit]
        unfold seg16AccY131
        linear_combination -r4675
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17238 * rho 17239 = rho 17248 := by linear_combination r4676
    have hd1 : rho 17238 * rho 17238 = rho 17249 := by linear_combination r4677
    have hd2 : rho 17239 * rho 17239 = rho 17250 := by linear_combination r4678
    have hd3 : rho 17251 * (rho 17239 * rho 17239 + rho 17238 * rho 17238 * (-1)) = 2 * (rho 17238 * rho 17239) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 17252 * (2 - (rho 17239 * rho 17239 + rho 17238 * rho 17238 * (-1))) = rho 17239 * rho 17239 - rho 17238 * rho 17238 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
      ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
      ⟨(rho 17244 : Seg16.F), (rho 17245 : Seg16.F)⟩
      ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
      ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg16_hstep_c11 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 132 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg16_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg16_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg16_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg16_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg16_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg16_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
  · exact seg16_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg16_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg16_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg16_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
