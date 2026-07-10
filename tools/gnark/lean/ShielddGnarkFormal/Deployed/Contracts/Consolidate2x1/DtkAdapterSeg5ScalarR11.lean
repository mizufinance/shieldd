import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4538 rho ∧ Seg5.relationRow4539 rho ∧ Seg5.relationRow4540 rho ∧ Seg5.relationRow4541 rho ∧ Seg5.relationRow4542 rho ∧ Seg5.relationRow4543 rho ∧ Seg5.relationRow4544 rho ∧ Seg5.relationRow4545 rho ∧ Seg5.relationRow4546 rho ∧ Seg5.relationRow4547 rho ∧ Seg5.relationRow4548 rho ∧ Seg5.relationRow4549 rho ∧ Seg5.relationRow4550 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩

theorem seg5_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2536 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩
        ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩
        ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩
        ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩ := by
  obtain ⟨r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550⟩ := seg5_rows121 rho h
  unfold Seg5.relationRow4538 at r4538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4538
  unfold Seg5.relationRow4539 at r4539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4539
  unfold Seg5.relationRow4540 at r4540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4540
  unfold Seg5.relationRow4541 at r4541
  unfold Seg5.relationRow4542 at r4542
  unfold Seg5.relationRow4543 at r4543
  unfold Seg5.relationRow4544 at r4544
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4544
  unfold Seg5.relationRow4545 at r4545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4545
  unfold Seg5.relationRow4546 at r4546
  unfold Seg5.relationRow4547 at r4547
  unfold Seg5.relationRow4548 at r4548
  unfold Seg5.relationRow4549 at r4549
  unfold Seg5.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 2536 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩
        ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩
        ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩
        ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩ := by
    have hnextx : seg5AccX122 rho = seg5AccX121 rho + rho 4239 := by
      unfold seg5AccX122 seg5AccX121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 121]
      ring
    have hnexty : seg5AccY122 rho = seg5AccY121 rho + rho 4240 := by
      unfold seg5AccY122 seg5AccY121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 121]
      ring
    have ha0 : (rho 4231 + rho 4232) * (seg5AccX121 rho + seg5AccY121 rho) = rho 4233 := by
      unfold seg5AccX121 seg5AccY121
      linear_combination r4538
    have ha1 : rho 4232 * seg5AccX121 rho = rho 4234 := by
      unfold seg5AccX121
      linear_combination r4539
    have ha2 : rho 4231 * seg5AccY121 rho = rho 4235 := by
      unfold seg5AccY121
      linear_combination r4540
    have ha3 : 3021 * rho 4234 * rho 4235 = rho 4236 := by
      linear_combination r4541
    have ha4 : rho 4237 * (1 + rho 4236) = rho 4234 + rho 4235 := by
      linear_combination r4542
    have ha5 : rho 4238 * (1 - rho 4236) = rho 4233 - rho 4234 - rho 4235 := by
      linear_combination r4543
    have haddx :
        rho 4237 * (1 + 3021 * (rho 4232 * seg5AccX121 rho) * (rho 4231 * seg5AccY121 rho)) =
          rho 4232 * seg5AccX121 rho + rho 4231 * seg5AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4238 * (1 - 3021 * (rho 4232 * seg5AccX121 rho) * (rho 4231 * seg5AccY121 rho)) =
          (-1) * (rho 4232 * seg5AccX121 rho) - rho 4231 * seg5AccY121 rho +
            (seg5AccY121 rho - seg5AccX121 rho * (-1)) * (rho 4231 + rho 4232) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4238 * (1 - rho 4236) = rho 4233 - rho 4234 - rho 4235 := ha5
        _ = (-1) * rho 4234 - rho 4235 + (seg5AccY121 rho - seg5AccX121 rho * (-1)) * (rho 4231 + rho 4232) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX122 rho = seg5AccX121 rho - Bool.toZMod bit * (seg5AccX121 rho - rho 4237) := by
      have hd : rho 4239 = Bool.toZMod bit * (rho 4237 - seg5AccX121 rho) := by
        rw [← hbit]
        unfold seg5AccX121
        linear_combination -r4544
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY122 rho = seg5AccY121 rho - Bool.toZMod bit * (seg5AccY121 rho - rho 4238) := by
      have hd : rho 4240 = Bool.toZMod bit * (rho 4238 - seg5AccY121 rho) := by
        rw [← hbit]
        unfold seg5AccY121
        linear_combination -r4545
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4231 * rho 4232 = rho 4241 := by linear_combination r4546
    have hd1 : rho 4231 * rho 4231 = rho 4242 := by linear_combination r4547
    have hd2 : rho 4232 * rho 4232 = rho 4243 := by linear_combination r4548
    have hd3 : rho 4244 * (rho 4232 * rho 4232 + rho 4231 * rho 4231 * (-1)) = 2 * (rho 4231 * rho 4232) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 4245 * (2 - (rho 4232 * rho 4232 + rho 4231 * rho 4231 * (-1))) = rho 4232 * rho 4232 - rho 4231 * rho 4231 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩
      ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩
      ⟨(rho 4237 : Seg5.F), (rho 4238 : Seg5.F)⟩
      ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩
      ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg5_rows122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4551 rho ∧ Seg5.relationRow4552 rho ∧ Seg5.relationRow4553 rho ∧ Seg5.relationRow4554 rho ∧ Seg5.relationRow4555 rho ∧ Seg5.relationRow4556 rho ∧ Seg5.relationRow4557 rho ∧ Seg5.relationRow4558 rho ∧ Seg5.relationRow4559 rho ∧ Seg5.relationRow4560 rho ∧ Seg5.relationRow4561 rho ∧ Seg5.relationRow4562 rho ∧ Seg5.relationRow4563 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩

theorem seg5_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2537 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩
        ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩
        ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩
        ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩ := by
  obtain ⟨r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560, r4561, r4562, r4563⟩ := seg5_rows122 rho h
  unfold Seg5.relationRow4551 at r4551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4551
  unfold Seg5.relationRow4552 at r4552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4552
  unfold Seg5.relationRow4553 at r4553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4553
  unfold Seg5.relationRow4554 at r4554
  unfold Seg5.relationRow4555 at r4555
  unfold Seg5.relationRow4556 at r4556
  unfold Seg5.relationRow4557 at r4557
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4557
  unfold Seg5.relationRow4558 at r4558
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4558
  unfold Seg5.relationRow4559 at r4559
  unfold Seg5.relationRow4560 at r4560
  unfold Seg5.relationRow4561 at r4561
  unfold Seg5.relationRow4562 at r4562
  unfold Seg5.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 2537 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩
        ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩
        ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩
        ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩ := by
    have hnextx : seg5AccX123 rho = seg5AccX122 rho + rho 4252 := by
      unfold seg5AccX123 seg5AccX122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 122]
      ring
    have hnexty : seg5AccY123 rho = seg5AccY122 rho + rho 4253 := by
      unfold seg5AccY123 seg5AccY122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 122]
      ring
    have ha0 : (rho 4244 + rho 4245) * (seg5AccX122 rho + seg5AccY122 rho) = rho 4246 := by
      unfold seg5AccX122 seg5AccY122
      linear_combination r4551
    have ha1 : rho 4245 * seg5AccX122 rho = rho 4247 := by
      unfold seg5AccX122
      linear_combination r4552
    have ha2 : rho 4244 * seg5AccY122 rho = rho 4248 := by
      unfold seg5AccY122
      linear_combination r4553
    have ha3 : 3021 * rho 4247 * rho 4248 = rho 4249 := by
      linear_combination r4554
    have ha4 : rho 4250 * (1 + rho 4249) = rho 4247 + rho 4248 := by
      linear_combination r4555
    have ha5 : rho 4251 * (1 - rho 4249) = rho 4246 - rho 4247 - rho 4248 := by
      linear_combination r4556
    have haddx :
        rho 4250 * (1 + 3021 * (rho 4245 * seg5AccX122 rho) * (rho 4244 * seg5AccY122 rho)) =
          rho 4245 * seg5AccX122 rho + rho 4244 * seg5AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4251 * (1 - 3021 * (rho 4245 * seg5AccX122 rho) * (rho 4244 * seg5AccY122 rho)) =
          (-1) * (rho 4245 * seg5AccX122 rho) - rho 4244 * seg5AccY122 rho +
            (seg5AccY122 rho - seg5AccX122 rho * (-1)) * (rho 4244 + rho 4245) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4251 * (1 - rho 4249) = rho 4246 - rho 4247 - rho 4248 := ha5
        _ = (-1) * rho 4247 - rho 4248 + (seg5AccY122 rho - seg5AccX122 rho * (-1)) * (rho 4244 + rho 4245) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX123 rho = seg5AccX122 rho - Bool.toZMod bit * (seg5AccX122 rho - rho 4250) := by
      have hd : rho 4252 = Bool.toZMod bit * (rho 4250 - seg5AccX122 rho) := by
        rw [← hbit]
        unfold seg5AccX122
        linear_combination -r4557
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY123 rho = seg5AccY122 rho - Bool.toZMod bit * (seg5AccY122 rho - rho 4251) := by
      have hd : rho 4253 = Bool.toZMod bit * (rho 4251 - seg5AccY122 rho) := by
        rw [← hbit]
        unfold seg5AccY122
        linear_combination -r4558
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4244 * rho 4245 = rho 4254 := by linear_combination r4559
    have hd1 : rho 4244 * rho 4244 = rho 4255 := by linear_combination r4560
    have hd2 : rho 4245 * rho 4245 = rho 4256 := by linear_combination r4561
    have hd3 : rho 4257 * (rho 4245 * rho 4245 + rho 4244 * rho 4244 * (-1)) = 2 * (rho 4244 * rho 4245) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 4258 * (2 - (rho 4245 * rho 4245 + rho 4244 * rho 4244 * (-1))) = rho 4245 * rho 4245 - rho 4244 * rho 4244 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX122 rho : Seg5.F), (seg5AccY122 rho : Seg5.F)⟩
      ⟨(rho 4244 : Seg5.F), (rho 4245 : Seg5.F)⟩
      ⟨(rho 4250 : Seg5.F), (rho 4251 : Seg5.F)⟩
      ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩
      ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg5_rows123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4564 rho ∧ Seg5.relationRow4565 rho ∧ Seg5.relationRow4566 rho ∧ Seg5.relationRow4567 rho ∧ Seg5.relationRow4568 rho ∧ Seg5.relationRow4569 rho ∧ Seg5.relationRow4570 rho ∧ Seg5.relationRow4571 rho ∧ Seg5.relationRow4572 rho ∧ Seg5.relationRow4573 rho ∧ Seg5.relationRow4574 rho ∧ Seg5.relationRow4575 rho ∧ Seg5.relationRow4576 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩

theorem seg5_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2538 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩
        ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩
        ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩
        ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩ := by
  obtain ⟨r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576⟩ := seg5_rows123 rho h
  unfold Seg5.relationRow4564 at r4564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4564
  unfold Seg5.relationRow4565 at r4565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4565
  unfold Seg5.relationRow4566 at r4566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4566
  unfold Seg5.relationRow4567 at r4567
  unfold Seg5.relationRow4568 at r4568
  unfold Seg5.relationRow4569 at r4569
  unfold Seg5.relationRow4570 at r4570
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4570
  unfold Seg5.relationRow4571 at r4571
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4571
  unfold Seg5.relationRow4572 at r4572
  unfold Seg5.relationRow4573 at r4573
  unfold Seg5.relationRow4574 at r4574
  unfold Seg5.relationRow4575 at r4575
  unfold Seg5.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 2538 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩
        ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩
        ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩
        ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩ := by
    have hnextx : seg5AccX124 rho = seg5AccX123 rho + rho 4265 := by
      unfold seg5AccX124 seg5AccX123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 123]
      ring
    have hnexty : seg5AccY124 rho = seg5AccY123 rho + rho 4266 := by
      unfold seg5AccY124 seg5AccY123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 123]
      ring
    have ha0 : (rho 4257 + rho 4258) * (seg5AccX123 rho + seg5AccY123 rho) = rho 4259 := by
      unfold seg5AccX123 seg5AccY123
      linear_combination r4564
    have ha1 : rho 4258 * seg5AccX123 rho = rho 4260 := by
      unfold seg5AccX123
      linear_combination r4565
    have ha2 : rho 4257 * seg5AccY123 rho = rho 4261 := by
      unfold seg5AccY123
      linear_combination r4566
    have ha3 : 3021 * rho 4260 * rho 4261 = rho 4262 := by
      linear_combination r4567
    have ha4 : rho 4263 * (1 + rho 4262) = rho 4260 + rho 4261 := by
      linear_combination r4568
    have ha5 : rho 4264 * (1 - rho 4262) = rho 4259 - rho 4260 - rho 4261 := by
      linear_combination r4569
    have haddx :
        rho 4263 * (1 + 3021 * (rho 4258 * seg5AccX123 rho) * (rho 4257 * seg5AccY123 rho)) =
          rho 4258 * seg5AccX123 rho + rho 4257 * seg5AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4264 * (1 - 3021 * (rho 4258 * seg5AccX123 rho) * (rho 4257 * seg5AccY123 rho)) =
          (-1) * (rho 4258 * seg5AccX123 rho) - rho 4257 * seg5AccY123 rho +
            (seg5AccY123 rho - seg5AccX123 rho * (-1)) * (rho 4257 + rho 4258) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4264 * (1 - rho 4262) = rho 4259 - rho 4260 - rho 4261 := ha5
        _ = (-1) * rho 4260 - rho 4261 + (seg5AccY123 rho - seg5AccX123 rho * (-1)) * (rho 4257 + rho 4258) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX124 rho = seg5AccX123 rho - Bool.toZMod bit * (seg5AccX123 rho - rho 4263) := by
      have hd : rho 4265 = Bool.toZMod bit * (rho 4263 - seg5AccX123 rho) := by
        rw [← hbit]
        unfold seg5AccX123
        linear_combination -r4570
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY124 rho = seg5AccY123 rho - Bool.toZMod bit * (seg5AccY123 rho - rho 4264) := by
      have hd : rho 4266 = Bool.toZMod bit * (rho 4264 - seg5AccY123 rho) := by
        rw [← hbit]
        unfold seg5AccY123
        linear_combination -r4571
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4257 * rho 4258 = rho 4267 := by linear_combination r4572
    have hd1 : rho 4257 * rho 4257 = rho 4268 := by linear_combination r4573
    have hd2 : rho 4258 * rho 4258 = rho 4269 := by linear_combination r4574
    have hd3 : rho 4270 * (rho 4258 * rho 4258 + rho 4257 * rho 4257 * (-1)) = 2 * (rho 4257 * rho 4258) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 4271 * (2 - (rho 4258 * rho 4258 + rho 4257 * rho 4257 * (-1))) = rho 4258 * rho 4258 - rho 4257 * rho 4257 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX123 rho : Seg5.F), (seg5AccY123 rho : Seg5.F)⟩
      ⟨(rho 4257 : Seg5.F), (rho 4258 : Seg5.F)⟩
      ⟨(rho 4263 : Seg5.F), (rho 4264 : Seg5.F)⟩
      ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩
      ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg5_rows124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4577 rho ∧ Seg5.relationRow4578 rho ∧ Seg5.relationRow4579 rho ∧ Seg5.relationRow4580 rho ∧ Seg5.relationRow4581 rho ∧ Seg5.relationRow4582 rho ∧ Seg5.relationRow4583 rho ∧ Seg5.relationRow4584 rho ∧ Seg5.relationRow4585 rho ∧ Seg5.relationRow4586 rho ∧ Seg5.relationRow4587 rho ∧ Seg5.relationRow4588 rho ∧ Seg5.relationRow4589 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩

theorem seg5_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2539 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩
        ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩
        ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩
        ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩ := by
  obtain ⟨r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589⟩ := seg5_rows124 rho h
  unfold Seg5.relationRow4577 at r4577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4577
  unfold Seg5.relationRow4578 at r4578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4578
  unfold Seg5.relationRow4579 at r4579
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4579
  unfold Seg5.relationRow4580 at r4580
  unfold Seg5.relationRow4581 at r4581
  unfold Seg5.relationRow4582 at r4582
  unfold Seg5.relationRow4583 at r4583
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4583
  unfold Seg5.relationRow4584 at r4584
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4584
  unfold Seg5.relationRow4585 at r4585
  unfold Seg5.relationRow4586 at r4586
  unfold Seg5.relationRow4587 at r4587
  unfold Seg5.relationRow4588 at r4588
  unfold Seg5.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 2539 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩
        ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩
        ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩
        ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩ := by
    have hnextx : seg5AccX125 rho = seg5AccX124 rho + rho 4278 := by
      unfold seg5AccX125 seg5AccX124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 124]
      ring
    have hnexty : seg5AccY125 rho = seg5AccY124 rho + rho 4279 := by
      unfold seg5AccY125 seg5AccY124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 124]
      ring
    have ha0 : (rho 4270 + rho 4271) * (seg5AccX124 rho + seg5AccY124 rho) = rho 4272 := by
      unfold seg5AccX124 seg5AccY124
      linear_combination r4577
    have ha1 : rho 4271 * seg5AccX124 rho = rho 4273 := by
      unfold seg5AccX124
      linear_combination r4578
    have ha2 : rho 4270 * seg5AccY124 rho = rho 4274 := by
      unfold seg5AccY124
      linear_combination r4579
    have ha3 : 3021 * rho 4273 * rho 4274 = rho 4275 := by
      linear_combination r4580
    have ha4 : rho 4276 * (1 + rho 4275) = rho 4273 + rho 4274 := by
      linear_combination r4581
    have ha5 : rho 4277 * (1 - rho 4275) = rho 4272 - rho 4273 - rho 4274 := by
      linear_combination r4582
    have haddx :
        rho 4276 * (1 + 3021 * (rho 4271 * seg5AccX124 rho) * (rho 4270 * seg5AccY124 rho)) =
          rho 4271 * seg5AccX124 rho + rho 4270 * seg5AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4277 * (1 - 3021 * (rho 4271 * seg5AccX124 rho) * (rho 4270 * seg5AccY124 rho)) =
          (-1) * (rho 4271 * seg5AccX124 rho) - rho 4270 * seg5AccY124 rho +
            (seg5AccY124 rho - seg5AccX124 rho * (-1)) * (rho 4270 + rho 4271) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4277 * (1 - rho 4275) = rho 4272 - rho 4273 - rho 4274 := ha5
        _ = (-1) * rho 4273 - rho 4274 + (seg5AccY124 rho - seg5AccX124 rho * (-1)) * (rho 4270 + rho 4271) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX125 rho = seg5AccX124 rho - Bool.toZMod bit * (seg5AccX124 rho - rho 4276) := by
      have hd : rho 4278 = Bool.toZMod bit * (rho 4276 - seg5AccX124 rho) := by
        rw [← hbit]
        unfold seg5AccX124
        linear_combination -r4583
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY125 rho = seg5AccY124 rho - Bool.toZMod bit * (seg5AccY124 rho - rho 4277) := by
      have hd : rho 4279 = Bool.toZMod bit * (rho 4277 - seg5AccY124 rho) := by
        rw [← hbit]
        unfold seg5AccY124
        linear_combination -r4584
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4270 * rho 4271 = rho 4280 := by linear_combination r4585
    have hd1 : rho 4270 * rho 4270 = rho 4281 := by linear_combination r4586
    have hd2 : rho 4271 * rho 4271 = rho 4282 := by linear_combination r4587
    have hd3 : rho 4283 * (rho 4271 * rho 4271 + rho 4270 * rho 4270 * (-1)) = 2 * (rho 4270 * rho 4271) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 4284 * (2 - (rho 4271 * rho 4271 + rho 4270 * rho 4270 * (-1))) = rho 4271 * rho 4271 - rho 4270 * rho 4270 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX124 rho : Seg5.F), (seg5AccY124 rho : Seg5.F)⟩
      ⟨(rho 4270 : Seg5.F), (rho 4271 : Seg5.F)⟩
      ⟨(rho 4276 : Seg5.F), (rho 4277 : Seg5.F)⟩
      ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩
      ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg5_rows125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4590 rho ∧ Seg5.relationRow4591 rho ∧ Seg5.relationRow4592 rho ∧ Seg5.relationRow4593 rho ∧ Seg5.relationRow4594 rho ∧ Seg5.relationRow4595 rho ∧ Seg5.relationRow4596 rho ∧ Seg5.relationRow4597 rho ∧ Seg5.relationRow4598 rho ∧ Seg5.relationRow4599 rho ∧ Seg5.relationRow4600 rho ∧ Seg5.relationRow4601 rho ∧ Seg5.relationRow4602 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩

theorem seg5_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2540 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩
        ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩
        ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩
        ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩ := by
  obtain ⟨r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602⟩ := seg5_rows125 rho h
  unfold Seg5.relationRow4590 at r4590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4590
  unfold Seg5.relationRow4591 at r4591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4591
  unfold Seg5.relationRow4592 at r4592
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4592
  unfold Seg5.relationRow4593 at r4593
  unfold Seg5.relationRow4594 at r4594
  unfold Seg5.relationRow4595 at r4595
  unfold Seg5.relationRow4596 at r4596
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4596
  unfold Seg5.relationRow4597 at r4597
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4597
  unfold Seg5.relationRow4598 at r4598
  unfold Seg5.relationRow4599 at r4599
  unfold Seg5.relationRow4600 at r4600
  unfold Seg5.relationRow4601 at r4601
  unfold Seg5.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 2540 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩
        ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩
        ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩
        ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩ := by
    have hnextx : seg5AccX126 rho = seg5AccX125 rho + rho 4291 := by
      unfold seg5AccX126 seg5AccX125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 125]
      ring
    have hnexty : seg5AccY126 rho = seg5AccY125 rho + rho 4292 := by
      unfold seg5AccY126 seg5AccY125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 125]
      ring
    have ha0 : (rho 4283 + rho 4284) * (seg5AccX125 rho + seg5AccY125 rho) = rho 4285 := by
      unfold seg5AccX125 seg5AccY125
      linear_combination r4590
    have ha1 : rho 4284 * seg5AccX125 rho = rho 4286 := by
      unfold seg5AccX125
      linear_combination r4591
    have ha2 : rho 4283 * seg5AccY125 rho = rho 4287 := by
      unfold seg5AccY125
      linear_combination r4592
    have ha3 : 3021 * rho 4286 * rho 4287 = rho 4288 := by
      linear_combination r4593
    have ha4 : rho 4289 * (1 + rho 4288) = rho 4286 + rho 4287 := by
      linear_combination r4594
    have ha5 : rho 4290 * (1 - rho 4288) = rho 4285 - rho 4286 - rho 4287 := by
      linear_combination r4595
    have haddx :
        rho 4289 * (1 + 3021 * (rho 4284 * seg5AccX125 rho) * (rho 4283 * seg5AccY125 rho)) =
          rho 4284 * seg5AccX125 rho + rho 4283 * seg5AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4290 * (1 - 3021 * (rho 4284 * seg5AccX125 rho) * (rho 4283 * seg5AccY125 rho)) =
          (-1) * (rho 4284 * seg5AccX125 rho) - rho 4283 * seg5AccY125 rho +
            (seg5AccY125 rho - seg5AccX125 rho * (-1)) * (rho 4283 + rho 4284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4290 * (1 - rho 4288) = rho 4285 - rho 4286 - rho 4287 := ha5
        _ = (-1) * rho 4286 - rho 4287 + (seg5AccY125 rho - seg5AccX125 rho * (-1)) * (rho 4283 + rho 4284) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX126 rho = seg5AccX125 rho - Bool.toZMod bit * (seg5AccX125 rho - rho 4289) := by
      have hd : rho 4291 = Bool.toZMod bit * (rho 4289 - seg5AccX125 rho) := by
        rw [← hbit]
        unfold seg5AccX125
        linear_combination -r4596
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY126 rho = seg5AccY125 rho - Bool.toZMod bit * (seg5AccY125 rho - rho 4290) := by
      have hd : rho 4292 = Bool.toZMod bit * (rho 4290 - seg5AccY125 rho) := by
        rw [← hbit]
        unfold seg5AccY125
        linear_combination -r4597
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4283 * rho 4284 = rho 4293 := by linear_combination r4598
    have hd1 : rho 4283 * rho 4283 = rho 4294 := by linear_combination r4599
    have hd2 : rho 4284 * rho 4284 = rho 4295 := by linear_combination r4600
    have hd3 : rho 4296 * (rho 4284 * rho 4284 + rho 4283 * rho 4283 * (-1)) = 2 * (rho 4283 * rho 4284) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 4297 * (2 - (rho 4284 * rho 4284 + rho 4283 * rho 4283 * (-1))) = rho 4284 * rho 4284 - rho 4283 * rho 4283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX125 rho : Seg5.F), (seg5AccY125 rho : Seg5.F)⟩
      ⟨(rho 4283 : Seg5.F), (rho 4284 : Seg5.F)⟩
      ⟨(rho 4289 : Seg5.F), (rho 4290 : Seg5.F)⟩
      ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩
      ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg5_rows126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4603 rho ∧ Seg5.relationRow4604 rho ∧ Seg5.relationRow4605 rho ∧ Seg5.relationRow4606 rho ∧ Seg5.relationRow4607 rho ∧ Seg5.relationRow4608 rho ∧ Seg5.relationRow4609 rho ∧ Seg5.relationRow4610 rho ∧ Seg5.relationRow4611 rho ∧ Seg5.relationRow4612 rho ∧ Seg5.relationRow4613 rho ∧ Seg5.relationRow4614 rho ∧ Seg5.relationRow4615 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩

theorem seg5_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2541 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩
        ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩
        ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩
        ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩ := by
  obtain ⟨r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615⟩ := seg5_rows126 rho h
  unfold Seg5.relationRow4603 at r4603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4603
  unfold Seg5.relationRow4604 at r4604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4604
  unfold Seg5.relationRow4605 at r4605
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4605
  unfold Seg5.relationRow4606 at r4606
  unfold Seg5.relationRow4607 at r4607
  unfold Seg5.relationRow4608 at r4608
  unfold Seg5.relationRow4609 at r4609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4609
  unfold Seg5.relationRow4610 at r4610
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4610
  unfold Seg5.relationRow4611 at r4611
  unfold Seg5.relationRow4612 at r4612
  unfold Seg5.relationRow4613 at r4613
  unfold Seg5.relationRow4614 at r4614
  unfold Seg5.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 2541 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩
        ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩
        ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩
        ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩ := by
    have hnextx : seg5AccX127 rho = seg5AccX126 rho + rho 4304 := by
      unfold seg5AccX127 seg5AccX126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 126]
      ring
    have hnexty : seg5AccY127 rho = seg5AccY126 rho + rho 4305 := by
      unfold seg5AccY127 seg5AccY126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 126]
      ring
    have ha0 : (rho 4296 + rho 4297) * (seg5AccX126 rho + seg5AccY126 rho) = rho 4298 := by
      unfold seg5AccX126 seg5AccY126
      linear_combination r4603
    have ha1 : rho 4297 * seg5AccX126 rho = rho 4299 := by
      unfold seg5AccX126
      linear_combination r4604
    have ha2 : rho 4296 * seg5AccY126 rho = rho 4300 := by
      unfold seg5AccY126
      linear_combination r4605
    have ha3 : 3021 * rho 4299 * rho 4300 = rho 4301 := by
      linear_combination r4606
    have ha4 : rho 4302 * (1 + rho 4301) = rho 4299 + rho 4300 := by
      linear_combination r4607
    have ha5 : rho 4303 * (1 - rho 4301) = rho 4298 - rho 4299 - rho 4300 := by
      linear_combination r4608
    have haddx :
        rho 4302 * (1 + 3021 * (rho 4297 * seg5AccX126 rho) * (rho 4296 * seg5AccY126 rho)) =
          rho 4297 * seg5AccX126 rho + rho 4296 * seg5AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4303 * (1 - 3021 * (rho 4297 * seg5AccX126 rho) * (rho 4296 * seg5AccY126 rho)) =
          (-1) * (rho 4297 * seg5AccX126 rho) - rho 4296 * seg5AccY126 rho +
            (seg5AccY126 rho - seg5AccX126 rho * (-1)) * (rho 4296 + rho 4297) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4303 * (1 - rho 4301) = rho 4298 - rho 4299 - rho 4300 := ha5
        _ = (-1) * rho 4299 - rho 4300 + (seg5AccY126 rho - seg5AccX126 rho * (-1)) * (rho 4296 + rho 4297) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX127 rho = seg5AccX126 rho - Bool.toZMod bit * (seg5AccX126 rho - rho 4302) := by
      have hd : rho 4304 = Bool.toZMod bit * (rho 4302 - seg5AccX126 rho) := by
        rw [← hbit]
        unfold seg5AccX126
        linear_combination -r4609
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY127 rho = seg5AccY126 rho - Bool.toZMod bit * (seg5AccY126 rho - rho 4303) := by
      have hd : rho 4305 = Bool.toZMod bit * (rho 4303 - seg5AccY126 rho) := by
        rw [← hbit]
        unfold seg5AccY126
        linear_combination -r4610
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4296 * rho 4297 = rho 4306 := by linear_combination r4611
    have hd1 : rho 4296 * rho 4296 = rho 4307 := by linear_combination r4612
    have hd2 : rho 4297 * rho 4297 = rho 4308 := by linear_combination r4613
    have hd3 : rho 4309 * (rho 4297 * rho 4297 + rho 4296 * rho 4296 * (-1)) = 2 * (rho 4296 * rho 4297) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 4310 * (2 - (rho 4297 * rho 4297 + rho 4296 * rho 4296 * (-1))) = rho 4297 * rho 4297 - rho 4296 * rho 4296 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX126 rho : Seg5.F), (seg5AccY126 rho : Seg5.F)⟩
      ⟨(rho 4296 : Seg5.F), (rho 4297 : Seg5.F)⟩
      ⟨(rho 4302 : Seg5.F), (rho 4303 : Seg5.F)⟩
      ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩
      ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg5_rows127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4616 rho ∧ Seg5.relationRow4617 rho ∧ Seg5.relationRow4618 rho ∧ Seg5.relationRow4619 rho ∧ Seg5.relationRow4620 rho ∧ Seg5.relationRow4621 rho ∧ Seg5.relationRow4622 rho ∧ Seg5.relationRow4623 rho ∧ Seg5.relationRow4624 rho ∧ Seg5.relationRow4625 rho ∧ Seg5.relationRow4626 rho ∧ Seg5.relationRow4627 rho ∧ Seg5.relationRow4628 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩

theorem seg5_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2542 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩
        ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩
        ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩
        ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩ := by
  obtain ⟨r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628⟩ := seg5_rows127 rho h
  unfold Seg5.relationRow4616 at r4616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4616
  unfold Seg5.relationRow4617 at r4617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4617
  unfold Seg5.relationRow4618 at r4618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4618
  unfold Seg5.relationRow4619 at r4619
  unfold Seg5.relationRow4620 at r4620
  unfold Seg5.relationRow4621 at r4621
  unfold Seg5.relationRow4622 at r4622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4622
  unfold Seg5.relationRow4623 at r4623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4623
  unfold Seg5.relationRow4624 at r4624
  unfold Seg5.relationRow4625 at r4625
  unfold Seg5.relationRow4626 at r4626
  unfold Seg5.relationRow4627 at r4627
  unfold Seg5.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 2542 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩
        ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩
        ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩
        ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩ := by
    have hnextx : seg5AccX128 rho = seg5AccX127 rho + rho 4317 := by
      unfold seg5AccX128 seg5AccX127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 127]
      ring
    have hnexty : seg5AccY128 rho = seg5AccY127 rho + rho 4318 := by
      unfold seg5AccY128 seg5AccY127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 127]
      ring
    have ha0 : (rho 4309 + rho 4310) * (seg5AccX127 rho + seg5AccY127 rho) = rho 4311 := by
      unfold seg5AccX127 seg5AccY127
      linear_combination r4616
    have ha1 : rho 4310 * seg5AccX127 rho = rho 4312 := by
      unfold seg5AccX127
      linear_combination r4617
    have ha2 : rho 4309 * seg5AccY127 rho = rho 4313 := by
      unfold seg5AccY127
      linear_combination r4618
    have ha3 : 3021 * rho 4312 * rho 4313 = rho 4314 := by
      linear_combination r4619
    have ha4 : rho 4315 * (1 + rho 4314) = rho 4312 + rho 4313 := by
      linear_combination r4620
    have ha5 : rho 4316 * (1 - rho 4314) = rho 4311 - rho 4312 - rho 4313 := by
      linear_combination r4621
    have haddx :
        rho 4315 * (1 + 3021 * (rho 4310 * seg5AccX127 rho) * (rho 4309 * seg5AccY127 rho)) =
          rho 4310 * seg5AccX127 rho + rho 4309 * seg5AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4316 * (1 - 3021 * (rho 4310 * seg5AccX127 rho) * (rho 4309 * seg5AccY127 rho)) =
          (-1) * (rho 4310 * seg5AccX127 rho) - rho 4309 * seg5AccY127 rho +
            (seg5AccY127 rho - seg5AccX127 rho * (-1)) * (rho 4309 + rho 4310) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4316 * (1 - rho 4314) = rho 4311 - rho 4312 - rho 4313 := ha5
        _ = (-1) * rho 4312 - rho 4313 + (seg5AccY127 rho - seg5AccX127 rho * (-1)) * (rho 4309 + rho 4310) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX128 rho = seg5AccX127 rho - Bool.toZMod bit * (seg5AccX127 rho - rho 4315) := by
      have hd : rho 4317 = Bool.toZMod bit * (rho 4315 - seg5AccX127 rho) := by
        rw [← hbit]
        unfold seg5AccX127
        linear_combination -r4622
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY128 rho = seg5AccY127 rho - Bool.toZMod bit * (seg5AccY127 rho - rho 4316) := by
      have hd : rho 4318 = Bool.toZMod bit * (rho 4316 - seg5AccY127 rho) := by
        rw [← hbit]
        unfold seg5AccY127
        linear_combination -r4623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4309 * rho 4310 = rho 4319 := by linear_combination r4624
    have hd1 : rho 4309 * rho 4309 = rho 4320 := by linear_combination r4625
    have hd2 : rho 4310 * rho 4310 = rho 4321 := by linear_combination r4626
    have hd3 : rho 4322 * (rho 4310 * rho 4310 + rho 4309 * rho 4309 * (-1)) = 2 * (rho 4309 * rho 4310) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 4323 * (2 - (rho 4310 * rho 4310 + rho 4309 * rho 4309 * (-1))) = rho 4310 * rho 4310 - rho 4309 * rho 4309 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX127 rho : Seg5.F), (seg5AccY127 rho : Seg5.F)⟩
      ⟨(rho 4309 : Seg5.F), (rho 4310 : Seg5.F)⟩
      ⟨(rho 4315 : Seg5.F), (rho 4316 : Seg5.F)⟩
      ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩
      ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg5_rows128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4629 rho ∧ Seg5.relationRow4630 rho ∧ Seg5.relationRow4631 rho ∧ Seg5.relationRow4632 rho ∧ Seg5.relationRow4633 rho ∧ Seg5.relationRow4634 rho ∧ Seg5.relationRow4635 rho ∧ Seg5.relationRow4636 rho ∧ Seg5.relationRow4637 rho ∧ Seg5.relationRow4638 rho ∧ Seg5.relationRow4639 rho ∧ Seg5.relationRow4640 rho ∧ Seg5.relationRow4641 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩

theorem seg5_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2543 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩
        ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩
        ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩
        ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩ := by
  obtain ⟨r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639, r4640, r4641⟩ := seg5_rows128 rho h
  unfold Seg5.relationRow4629 at r4629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4629
  unfold Seg5.relationRow4630 at r4630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4630
  unfold Seg5.relationRow4631 at r4631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4631
  unfold Seg5.relationRow4632 at r4632
  unfold Seg5.relationRow4633 at r4633
  unfold Seg5.relationRow4634 at r4634
  unfold Seg5.relationRow4635 at r4635
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4635
  unfold Seg5.relationRow4636 at r4636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4636
  unfold Seg5.relationRow4637 at r4637
  unfold Seg5.relationRow4638 at r4638
  unfold Seg5.relationRow4639 at r4639
  unfold Seg5.relationRow4640 at r4640
  unfold Seg5.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 2543 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩
        ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩
        ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩
        ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩ := by
    have hnextx : seg5AccX129 rho = seg5AccX128 rho + rho 4330 := by
      unfold seg5AccX129 seg5AccX128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 128]
      ring
    have hnexty : seg5AccY129 rho = seg5AccY128 rho + rho 4331 := by
      unfold seg5AccY129 seg5AccY128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 128]
      ring
    have ha0 : (rho 4322 + rho 4323) * (seg5AccX128 rho + seg5AccY128 rho) = rho 4324 := by
      unfold seg5AccX128 seg5AccY128
      linear_combination r4629
    have ha1 : rho 4323 * seg5AccX128 rho = rho 4325 := by
      unfold seg5AccX128
      linear_combination r4630
    have ha2 : rho 4322 * seg5AccY128 rho = rho 4326 := by
      unfold seg5AccY128
      linear_combination r4631
    have ha3 : 3021 * rho 4325 * rho 4326 = rho 4327 := by
      linear_combination r4632
    have ha4 : rho 4328 * (1 + rho 4327) = rho 4325 + rho 4326 := by
      linear_combination r4633
    have ha5 : rho 4329 * (1 - rho 4327) = rho 4324 - rho 4325 - rho 4326 := by
      linear_combination r4634
    have haddx :
        rho 4328 * (1 + 3021 * (rho 4323 * seg5AccX128 rho) * (rho 4322 * seg5AccY128 rho)) =
          rho 4323 * seg5AccX128 rho + rho 4322 * seg5AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4329 * (1 - 3021 * (rho 4323 * seg5AccX128 rho) * (rho 4322 * seg5AccY128 rho)) =
          (-1) * (rho 4323 * seg5AccX128 rho) - rho 4322 * seg5AccY128 rho +
            (seg5AccY128 rho - seg5AccX128 rho * (-1)) * (rho 4322 + rho 4323) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4329 * (1 - rho 4327) = rho 4324 - rho 4325 - rho 4326 := ha5
        _ = (-1) * rho 4325 - rho 4326 + (seg5AccY128 rho - seg5AccX128 rho * (-1)) * (rho 4322 + rho 4323) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX129 rho = seg5AccX128 rho - Bool.toZMod bit * (seg5AccX128 rho - rho 4328) := by
      have hd : rho 4330 = Bool.toZMod bit * (rho 4328 - seg5AccX128 rho) := by
        rw [← hbit]
        unfold seg5AccX128
        linear_combination -r4635
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY129 rho = seg5AccY128 rho - Bool.toZMod bit * (seg5AccY128 rho - rho 4329) := by
      have hd : rho 4331 = Bool.toZMod bit * (rho 4329 - seg5AccY128 rho) := by
        rw [← hbit]
        unfold seg5AccY128
        linear_combination -r4636
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4322 * rho 4323 = rho 4332 := by linear_combination r4637
    have hd1 : rho 4322 * rho 4322 = rho 4333 := by linear_combination r4638
    have hd2 : rho 4323 * rho 4323 = rho 4334 := by linear_combination r4639
    have hd3 : rho 4335 * (rho 4323 * rho 4323 + rho 4322 * rho 4322 * (-1)) = 2 * (rho 4322 * rho 4323) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 4336 * (2 - (rho 4323 * rho 4323 + rho 4322 * rho 4322 * (-1))) = rho 4323 * rho 4323 - rho 4322 * rho 4322 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX128 rho : Seg5.F), (seg5AccY128 rho : Seg5.F)⟩
      ⟨(rho 4322 : Seg5.F), (rho 4323 : Seg5.F)⟩
      ⟨(rho 4328 : Seg5.F), (rho 4329 : Seg5.F)⟩
      ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩
      ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg5_rows129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4642 rho ∧ Seg5.relationRow4643 rho ∧ Seg5.relationRow4644 rho ∧ Seg5.relationRow4645 rho ∧ Seg5.relationRow4646 rho ∧ Seg5.relationRow4647 rho ∧ Seg5.relationRow4648 rho ∧ Seg5.relationRow4649 rho ∧ Seg5.relationRow4650 rho ∧ Seg5.relationRow4651 rho ∧ Seg5.relationRow4652 rho ∧ Seg5.relationRow4653 rho ∧ Seg5.relationRow4654 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩

theorem seg5_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2544 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩
        ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩
        ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩
        ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩ := by
  obtain ⟨r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654⟩ := seg5_rows129 rho h
  unfold Seg5.relationRow4642 at r4642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4642
  unfold Seg5.relationRow4643 at r4643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4643
  unfold Seg5.relationRow4644 at r4644
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4644
  unfold Seg5.relationRow4645 at r4645
  unfold Seg5.relationRow4646 at r4646
  unfold Seg5.relationRow4647 at r4647
  unfold Seg5.relationRow4648 at r4648
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4648
  unfold Seg5.relationRow4649 at r4649
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4649
  unfold Seg5.relationRow4650 at r4650
  unfold Seg5.relationRow4651 at r4651
  unfold Seg5.relationRow4652 at r4652
  unfold Seg5.relationRow4653 at r4653
  unfold Seg5.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 2544 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩
        ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩
        ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩
        ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩ := by
    have hnextx : seg5AccX130 rho = seg5AccX129 rho + rho 4343 := by
      unfold seg5AccX130 seg5AccX129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 129]
      ring
    have hnexty : seg5AccY130 rho = seg5AccY129 rho + rho 4344 := by
      unfold seg5AccY130 seg5AccY129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 129]
      ring
    have ha0 : (rho 4335 + rho 4336) * (seg5AccX129 rho + seg5AccY129 rho) = rho 4337 := by
      unfold seg5AccX129 seg5AccY129
      linear_combination r4642
    have ha1 : rho 4336 * seg5AccX129 rho = rho 4338 := by
      unfold seg5AccX129
      linear_combination r4643
    have ha2 : rho 4335 * seg5AccY129 rho = rho 4339 := by
      unfold seg5AccY129
      linear_combination r4644
    have ha3 : 3021 * rho 4338 * rho 4339 = rho 4340 := by
      linear_combination r4645
    have ha4 : rho 4341 * (1 + rho 4340) = rho 4338 + rho 4339 := by
      linear_combination r4646
    have ha5 : rho 4342 * (1 - rho 4340) = rho 4337 - rho 4338 - rho 4339 := by
      linear_combination r4647
    have haddx :
        rho 4341 * (1 + 3021 * (rho 4336 * seg5AccX129 rho) * (rho 4335 * seg5AccY129 rho)) =
          rho 4336 * seg5AccX129 rho + rho 4335 * seg5AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4342 * (1 - 3021 * (rho 4336 * seg5AccX129 rho) * (rho 4335 * seg5AccY129 rho)) =
          (-1) * (rho 4336 * seg5AccX129 rho) - rho 4335 * seg5AccY129 rho +
            (seg5AccY129 rho - seg5AccX129 rho * (-1)) * (rho 4335 + rho 4336) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4342 * (1 - rho 4340) = rho 4337 - rho 4338 - rho 4339 := ha5
        _ = (-1) * rho 4338 - rho 4339 + (seg5AccY129 rho - seg5AccX129 rho * (-1)) * (rho 4335 + rho 4336) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX130 rho = seg5AccX129 rho - Bool.toZMod bit * (seg5AccX129 rho - rho 4341) := by
      have hd : rho 4343 = Bool.toZMod bit * (rho 4341 - seg5AccX129 rho) := by
        rw [← hbit]
        unfold seg5AccX129
        linear_combination -r4648
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY130 rho = seg5AccY129 rho - Bool.toZMod bit * (seg5AccY129 rho - rho 4342) := by
      have hd : rho 4344 = Bool.toZMod bit * (rho 4342 - seg5AccY129 rho) := by
        rw [← hbit]
        unfold seg5AccY129
        linear_combination -r4649
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4335 * rho 4336 = rho 4345 := by linear_combination r4650
    have hd1 : rho 4335 * rho 4335 = rho 4346 := by linear_combination r4651
    have hd2 : rho 4336 * rho 4336 = rho 4347 := by linear_combination r4652
    have hd3 : rho 4348 * (rho 4336 * rho 4336 + rho 4335 * rho 4335 * (-1)) = 2 * (rho 4335 * rho 4336) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 4349 * (2 - (rho 4336 * rho 4336 + rho 4335 * rho 4335 * (-1))) = rho 4336 * rho 4336 - rho 4335 * rho 4335 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX129 rho : Seg5.F), (seg5AccY129 rho : Seg5.F)⟩
      ⟨(rho 4335 : Seg5.F), (rho 4336 : Seg5.F)⟩
      ⟨(rho 4341 : Seg5.F), (rho 4342 : Seg5.F)⟩
      ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩
      ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg5_rows130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4655 rho ∧ Seg5.relationRow4656 rho ∧ Seg5.relationRow4657 rho ∧ Seg5.relationRow4658 rho ∧ Seg5.relationRow4659 rho ∧ Seg5.relationRow4660 rho ∧ Seg5.relationRow4661 rho ∧ Seg5.relationRow4662 rho ∧ Seg5.relationRow4663 rho ∧ Seg5.relationRow4664 rho ∧ Seg5.relationRow4665 rho ∧ Seg5.relationRow4666 rho ∧ Seg5.relationRow4667 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩

theorem seg5_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2545 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩
        ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩
        ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩
        ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩ := by
  obtain ⟨r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667⟩ := seg5_rows130 rho h
  unfold Seg5.relationRow4655 at r4655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4655
  unfold Seg5.relationRow4656 at r4656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4656
  unfold Seg5.relationRow4657 at r4657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4657
  unfold Seg5.relationRow4658 at r4658
  unfold Seg5.relationRow4659 at r4659
  unfold Seg5.relationRow4660 at r4660
  unfold Seg5.relationRow4661 at r4661
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4661
  unfold Seg5.relationRow4662 at r4662
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4662
  unfold Seg5.relationRow4663 at r4663
  unfold Seg5.relationRow4664 at r4664
  unfold Seg5.relationRow4665 at r4665
  unfold Seg5.relationRow4666 at r4666
  unfold Seg5.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 2545 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩
        ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩
        ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩
        ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩ := by
    have hnextx : seg5AccX131 rho = seg5AccX130 rho + rho 4356 := by
      unfold seg5AccX131 seg5AccX130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 130]
      ring
    have hnexty : seg5AccY131 rho = seg5AccY130 rho + rho 4357 := by
      unfold seg5AccY131 seg5AccY130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 130]
      ring
    have ha0 : (rho 4348 + rho 4349) * (seg5AccX130 rho + seg5AccY130 rho) = rho 4350 := by
      unfold seg5AccX130 seg5AccY130
      linear_combination r4655
    have ha1 : rho 4349 * seg5AccX130 rho = rho 4351 := by
      unfold seg5AccX130
      linear_combination r4656
    have ha2 : rho 4348 * seg5AccY130 rho = rho 4352 := by
      unfold seg5AccY130
      linear_combination r4657
    have ha3 : 3021 * rho 4351 * rho 4352 = rho 4353 := by
      linear_combination r4658
    have ha4 : rho 4354 * (1 + rho 4353) = rho 4351 + rho 4352 := by
      linear_combination r4659
    have ha5 : rho 4355 * (1 - rho 4353) = rho 4350 - rho 4351 - rho 4352 := by
      linear_combination r4660
    have haddx :
        rho 4354 * (1 + 3021 * (rho 4349 * seg5AccX130 rho) * (rho 4348 * seg5AccY130 rho)) =
          rho 4349 * seg5AccX130 rho + rho 4348 * seg5AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4355 * (1 - 3021 * (rho 4349 * seg5AccX130 rho) * (rho 4348 * seg5AccY130 rho)) =
          (-1) * (rho 4349 * seg5AccX130 rho) - rho 4348 * seg5AccY130 rho +
            (seg5AccY130 rho - seg5AccX130 rho * (-1)) * (rho 4348 + rho 4349) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4355 * (1 - rho 4353) = rho 4350 - rho 4351 - rho 4352 := ha5
        _ = (-1) * rho 4351 - rho 4352 + (seg5AccY130 rho - seg5AccX130 rho * (-1)) * (rho 4348 + rho 4349) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX131 rho = seg5AccX130 rho - Bool.toZMod bit * (seg5AccX130 rho - rho 4354) := by
      have hd : rho 4356 = Bool.toZMod bit * (rho 4354 - seg5AccX130 rho) := by
        rw [← hbit]
        unfold seg5AccX130
        linear_combination -r4661
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY131 rho = seg5AccY130 rho - Bool.toZMod bit * (seg5AccY130 rho - rho 4355) := by
      have hd : rho 4357 = Bool.toZMod bit * (rho 4355 - seg5AccY130 rho) := by
        rw [← hbit]
        unfold seg5AccY130
        linear_combination -r4662
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4348 * rho 4349 = rho 4358 := by linear_combination r4663
    have hd1 : rho 4348 * rho 4348 = rho 4359 := by linear_combination r4664
    have hd2 : rho 4349 * rho 4349 = rho 4360 := by linear_combination r4665
    have hd3 : rho 4361 * (rho 4349 * rho 4349 + rho 4348 * rho 4348 * (-1)) = 2 * (rho 4348 * rho 4349) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 4362 * (2 - (rho 4349 * rho 4349 + rho 4348 * rho 4348 * (-1))) = rho 4349 * rho 4349 - rho 4348 * rho 4348 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX130 rho : Seg5.F), (seg5AccY130 rho : Seg5.F)⟩
      ⟨(rho 4348 : Seg5.F), (rho 4349 : Seg5.F)⟩
      ⟨(rho 4354 : Seg5.F), (rho 4355 : Seg5.F)⟩
      ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩
      ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg5_rows131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4668 rho ∧ Seg5.relationRow4669 rho ∧ Seg5.relationRow4670 rho ∧ Seg5.relationRow4671 rho ∧ Seg5.relationRow4672 rho ∧ Seg5.relationRow4673 rho ∧ Seg5.relationRow4674 rho ∧ Seg5.relationRow4675 rho ∧ Seg5.relationRow4676 rho ∧ Seg5.relationRow4677 rho ∧ Seg5.relationRow4678 rho ∧ Seg5.relationRow4679 rho ∧ Seg5.relationRow4680 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩

theorem seg5_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2546 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩
        ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩
        ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩
        ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩ := by
  obtain ⟨r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680⟩ := seg5_rows131 rho h
  unfold Seg5.relationRow4668 at r4668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4668
  unfold Seg5.relationRow4669 at r4669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4669
  unfold Seg5.relationRow4670 at r4670
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4670
  unfold Seg5.relationRow4671 at r4671
  unfold Seg5.relationRow4672 at r4672
  unfold Seg5.relationRow4673 at r4673
  unfold Seg5.relationRow4674 at r4674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4674
  unfold Seg5.relationRow4675 at r4675
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4675
  unfold Seg5.relationRow4676 at r4676
  unfold Seg5.relationRow4677 at r4677
  unfold Seg5.relationRow4678 at r4678
  unfold Seg5.relationRow4679 at r4679
  unfold Seg5.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 2546 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩
        ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩
        ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩
        ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩ := by
    have hnextx : seg5AccX132 rho = seg5AccX131 rho + rho 4369 := by
      unfold seg5AccX132 seg5AccX131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 131]
      ring
    have hnexty : seg5AccY132 rho = seg5AccY131 rho + rho 4370 := by
      unfold seg5AccY132 seg5AccY131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 131]
      ring
    have ha0 : (rho 4361 + rho 4362) * (seg5AccX131 rho + seg5AccY131 rho) = rho 4363 := by
      unfold seg5AccX131 seg5AccY131
      linear_combination r4668
    have ha1 : rho 4362 * seg5AccX131 rho = rho 4364 := by
      unfold seg5AccX131
      linear_combination r4669
    have ha2 : rho 4361 * seg5AccY131 rho = rho 4365 := by
      unfold seg5AccY131
      linear_combination r4670
    have ha3 : 3021 * rho 4364 * rho 4365 = rho 4366 := by
      linear_combination r4671
    have ha4 : rho 4367 * (1 + rho 4366) = rho 4364 + rho 4365 := by
      linear_combination r4672
    have ha5 : rho 4368 * (1 - rho 4366) = rho 4363 - rho 4364 - rho 4365 := by
      linear_combination r4673
    have haddx :
        rho 4367 * (1 + 3021 * (rho 4362 * seg5AccX131 rho) * (rho 4361 * seg5AccY131 rho)) =
          rho 4362 * seg5AccX131 rho + rho 4361 * seg5AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4368 * (1 - 3021 * (rho 4362 * seg5AccX131 rho) * (rho 4361 * seg5AccY131 rho)) =
          (-1) * (rho 4362 * seg5AccX131 rho) - rho 4361 * seg5AccY131 rho +
            (seg5AccY131 rho - seg5AccX131 rho * (-1)) * (rho 4361 + rho 4362) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4368 * (1 - rho 4366) = rho 4363 - rho 4364 - rho 4365 := ha5
        _ = (-1) * rho 4364 - rho 4365 + (seg5AccY131 rho - seg5AccX131 rho * (-1)) * (rho 4361 + rho 4362) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX132 rho = seg5AccX131 rho - Bool.toZMod bit * (seg5AccX131 rho - rho 4367) := by
      have hd : rho 4369 = Bool.toZMod bit * (rho 4367 - seg5AccX131 rho) := by
        rw [← hbit]
        unfold seg5AccX131
        linear_combination -r4674
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY132 rho = seg5AccY131 rho - Bool.toZMod bit * (seg5AccY131 rho - rho 4368) := by
      have hd : rho 4370 = Bool.toZMod bit * (rho 4368 - seg5AccY131 rho) := by
        rw [← hbit]
        unfold seg5AccY131
        linear_combination -r4675
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4361 * rho 4362 = rho 4371 := by linear_combination r4676
    have hd1 : rho 4361 * rho 4361 = rho 4372 := by linear_combination r4677
    have hd2 : rho 4362 * rho 4362 = rho 4373 := by linear_combination r4678
    have hd3 : rho 4374 * (rho 4362 * rho 4362 + rho 4361 * rho 4361 * (-1)) = 2 * (rho 4361 * rho 4362) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 4375 * (2 - (rho 4362 * rho 4362 + rho 4361 * rho 4361 * (-1))) = rho 4362 * rho 4362 - rho 4361 * rho 4361 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX131 rho : Seg5.F), (seg5AccY131 rho : Seg5.F)⟩
      ⟨(rho 4361 : Seg5.F), (rho 4362 : Seg5.F)⟩
      ⟨(rho 4367 : Seg5.F), (rho 4368 : Seg5.F)⟩
      ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩
      ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg5_hstep_c11 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 132 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg5_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg5_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg5_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg5_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg5_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg5_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
  · exact seg5_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg5_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg5_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg5_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
