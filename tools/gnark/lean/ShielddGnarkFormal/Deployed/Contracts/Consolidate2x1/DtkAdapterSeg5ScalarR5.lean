import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3680 rho ∧ Seg5.relationRow3681 rho ∧ Seg5.relationRow3682 rho ∧ Seg5.relationRow3683 rho ∧ Seg5.relationRow3684 rho ∧ Seg5.relationRow3685 rho ∧ Seg5.relationRow3686 rho ∧ Seg5.relationRow3687 rho ∧ Seg5.relationRow3688 rho ∧ Seg5.relationRow3689 rho ∧ Seg5.relationRow3690 rho ∧ Seg5.relationRow3691 rho ∧ Seg5.relationRow3692 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩

theorem seg5_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2470 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩
        ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩
        ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩
        ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩ := by
  obtain ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩ := seg5_rows55 rho h
  unfold Seg5.relationRow3680 at r3680
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3680
  unfold Seg5.relationRow3681 at r3681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681
  unfold Seg5.relationRow3682 at r3682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3682
  unfold Seg5.relationRow3683 at r3683
  unfold Seg5.relationRow3684 at r3684
  unfold Seg5.relationRow3685 at r3685
  unfold Seg5.relationRow3686 at r3686
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3686
  unfold Seg5.relationRow3687 at r3687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3687
  unfold Seg5.relationRow3688 at r3688
  unfold Seg5.relationRow3689 at r3689
  unfold Seg5.relationRow3690 at r3690
  unfold Seg5.relationRow3691 at r3691
  unfold Seg5.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 2470 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩
        ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩
        ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩
        ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩ := by
    have hnextx : seg5AccX56 rho = seg5AccX55 rho + rho 3381 := by
      unfold seg5AccX56 seg5AccX55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 55]
      ring
    have hnexty : seg5AccY56 rho = seg5AccY55 rho + rho 3382 := by
      unfold seg5AccY56 seg5AccY55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 55]
      ring
    have ha0 : (rho 3373 + rho 3374) * (seg5AccX55 rho + seg5AccY55 rho) = rho 3375 := by
      unfold seg5AccX55 seg5AccY55
      linear_combination r3680
    have ha1 : rho 3374 * seg5AccX55 rho = rho 3376 := by
      unfold seg5AccX55
      linear_combination r3681
    have ha2 : rho 3373 * seg5AccY55 rho = rho 3377 := by
      unfold seg5AccY55
      linear_combination r3682
    have ha3 : 3021 * rho 3376 * rho 3377 = rho 3378 := by
      linear_combination r3683
    have ha4 : rho 3379 * (1 + rho 3378) = rho 3376 + rho 3377 := by
      linear_combination r3684
    have ha5 : rho 3380 * (1 - rho 3378) = rho 3375 - rho 3376 - rho 3377 := by
      linear_combination r3685
    have haddx :
        rho 3379 * (1 + 3021 * (rho 3374 * seg5AccX55 rho) * (rho 3373 * seg5AccY55 rho)) =
          rho 3374 * seg5AccX55 rho + rho 3373 * seg5AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3380 * (1 - 3021 * (rho 3374 * seg5AccX55 rho) * (rho 3373 * seg5AccY55 rho)) =
          (-1) * (rho 3374 * seg5AccX55 rho) - rho 3373 * seg5AccY55 rho +
            (seg5AccY55 rho - seg5AccX55 rho * (-1)) * (rho 3373 + rho 3374) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3380 * (1 - rho 3378) = rho 3375 - rho 3376 - rho 3377 := ha5
        _ = (-1) * rho 3376 - rho 3377 + (seg5AccY55 rho - seg5AccX55 rho * (-1)) * (rho 3373 + rho 3374) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX56 rho = seg5AccX55 rho - Bool.toZMod bit * (seg5AccX55 rho - rho 3379) := by
      have hd : rho 3381 = Bool.toZMod bit * (rho 3379 - seg5AccX55 rho) := by
        rw [← hbit]
        unfold seg5AccX55
        linear_combination -r3686
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY56 rho = seg5AccY55 rho - Bool.toZMod bit * (seg5AccY55 rho - rho 3380) := by
      have hd : rho 3382 = Bool.toZMod bit * (rho 3380 - seg5AccY55 rho) := by
        rw [← hbit]
        unfold seg5AccY55
        linear_combination -r3687
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3373 * rho 3374 = rho 3383 := by linear_combination r3688
    have hd1 : rho 3373 * rho 3373 = rho 3384 := by linear_combination r3689
    have hd2 : rho 3374 * rho 3374 = rho 3385 := by linear_combination r3690
    have hd3 : rho 3386 * (rho 3374 * rho 3374 + rho 3373 * rho 3373 * (-1)) = 2 * (rho 3373 * rho 3374) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 3387 * (2 - (rho 3374 * rho 3374 + rho 3373 * rho 3373 * (-1))) = rho 3374 * rho 3374 - rho 3373 * rho 3373 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX55 rho : Seg5.F), (seg5AccY55 rho : Seg5.F)⟩
      ⟨(rho 3373 : Seg5.F), (rho 3374 : Seg5.F)⟩
      ⟨(rho 3379 : Seg5.F), (rho 3380 : Seg5.F)⟩
      ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩
      ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg5_rows56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3693 rho ∧ Seg5.relationRow3694 rho ∧ Seg5.relationRow3695 rho ∧ Seg5.relationRow3696 rho ∧ Seg5.relationRow3697 rho ∧ Seg5.relationRow3698 rho ∧ Seg5.relationRow3699 rho ∧ Seg5.relationRow3700 rho ∧ Seg5.relationRow3701 rho ∧ Seg5.relationRow3702 rho ∧ Seg5.relationRow3703 rho ∧ Seg5.relationRow3704 rho ∧ Seg5.relationRow3705 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩

theorem seg5_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2471 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩
        ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩
        ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩
        ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩ := by
  obtain ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩ := seg5_rows56 rho h
  unfold Seg5.relationRow3693 at r3693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3693
  unfold Seg5.relationRow3694 at r3694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694
  unfold Seg5.relationRow3695 at r3695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3695
  unfold Seg5.relationRow3696 at r3696
  unfold Seg5.relationRow3697 at r3697
  unfold Seg5.relationRow3698 at r3698
  unfold Seg5.relationRow3699 at r3699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3699
  unfold Seg5.relationRow3700 at r3700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3700
  unfold Seg5.relationRow3701 at r3701
  unfold Seg5.relationRow3702 at r3702
  unfold Seg5.relationRow3703 at r3703
  unfold Seg5.relationRow3704 at r3704
  unfold Seg5.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 2471 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩
        ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩
        ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩
        ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩ := by
    have hnextx : seg5AccX57 rho = seg5AccX56 rho + rho 3394 := by
      unfold seg5AccX57 seg5AccX56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 56]
      ring
    have hnexty : seg5AccY57 rho = seg5AccY56 rho + rho 3395 := by
      unfold seg5AccY57 seg5AccY56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 56]
      ring
    have ha0 : (rho 3386 + rho 3387) * (seg5AccX56 rho + seg5AccY56 rho) = rho 3388 := by
      unfold seg5AccX56 seg5AccY56
      linear_combination r3693
    have ha1 : rho 3387 * seg5AccX56 rho = rho 3389 := by
      unfold seg5AccX56
      linear_combination r3694
    have ha2 : rho 3386 * seg5AccY56 rho = rho 3390 := by
      unfold seg5AccY56
      linear_combination r3695
    have ha3 : 3021 * rho 3389 * rho 3390 = rho 3391 := by
      linear_combination r3696
    have ha4 : rho 3392 * (1 + rho 3391) = rho 3389 + rho 3390 := by
      linear_combination r3697
    have ha5 : rho 3393 * (1 - rho 3391) = rho 3388 - rho 3389 - rho 3390 := by
      linear_combination r3698
    have haddx :
        rho 3392 * (1 + 3021 * (rho 3387 * seg5AccX56 rho) * (rho 3386 * seg5AccY56 rho)) =
          rho 3387 * seg5AccX56 rho + rho 3386 * seg5AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3393 * (1 - 3021 * (rho 3387 * seg5AccX56 rho) * (rho 3386 * seg5AccY56 rho)) =
          (-1) * (rho 3387 * seg5AccX56 rho) - rho 3386 * seg5AccY56 rho +
            (seg5AccY56 rho - seg5AccX56 rho * (-1)) * (rho 3386 + rho 3387) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3393 * (1 - rho 3391) = rho 3388 - rho 3389 - rho 3390 := ha5
        _ = (-1) * rho 3389 - rho 3390 + (seg5AccY56 rho - seg5AccX56 rho * (-1)) * (rho 3386 + rho 3387) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX57 rho = seg5AccX56 rho - Bool.toZMod bit * (seg5AccX56 rho - rho 3392) := by
      have hd : rho 3394 = Bool.toZMod bit * (rho 3392 - seg5AccX56 rho) := by
        rw [← hbit]
        unfold seg5AccX56
        linear_combination -r3699
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY57 rho = seg5AccY56 rho - Bool.toZMod bit * (seg5AccY56 rho - rho 3393) := by
      have hd : rho 3395 = Bool.toZMod bit * (rho 3393 - seg5AccY56 rho) := by
        rw [← hbit]
        unfold seg5AccY56
        linear_combination -r3700
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3386 * rho 3387 = rho 3396 := by linear_combination r3701
    have hd1 : rho 3386 * rho 3386 = rho 3397 := by linear_combination r3702
    have hd2 : rho 3387 * rho 3387 = rho 3398 := by linear_combination r3703
    have hd3 : rho 3399 * (rho 3387 * rho 3387 + rho 3386 * rho 3386 * (-1)) = 2 * (rho 3386 * rho 3387) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 3400 * (2 - (rho 3387 * rho 3387 + rho 3386 * rho 3386 * (-1))) = rho 3387 * rho 3387 - rho 3386 * rho 3386 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX56 rho : Seg5.F), (seg5AccY56 rho : Seg5.F)⟩
      ⟨(rho 3386 : Seg5.F), (rho 3387 : Seg5.F)⟩
      ⟨(rho 3392 : Seg5.F), (rho 3393 : Seg5.F)⟩
      ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩
      ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg5_rows57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3706 rho ∧ Seg5.relationRow3707 rho ∧ Seg5.relationRow3708 rho ∧ Seg5.relationRow3709 rho ∧ Seg5.relationRow3710 rho ∧ Seg5.relationRow3711 rho ∧ Seg5.relationRow3712 rho ∧ Seg5.relationRow3713 rho ∧ Seg5.relationRow3714 rho ∧ Seg5.relationRow3715 rho ∧ Seg5.relationRow3716 rho ∧ Seg5.relationRow3717 rho ∧ Seg5.relationRow3718 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩

theorem seg5_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2472 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩
        ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩
        ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩
        ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩ := by
  obtain ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩ := seg5_rows57 rho h
  unfold Seg5.relationRow3706 at r3706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3706
  unfold Seg5.relationRow3707 at r3707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707
  unfold Seg5.relationRow3708 at r3708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3708
  unfold Seg5.relationRow3709 at r3709
  unfold Seg5.relationRow3710 at r3710
  unfold Seg5.relationRow3711 at r3711
  unfold Seg5.relationRow3712 at r3712
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3712
  unfold Seg5.relationRow3713 at r3713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3713
  unfold Seg5.relationRow3714 at r3714
  unfold Seg5.relationRow3715 at r3715
  unfold Seg5.relationRow3716 at r3716
  unfold Seg5.relationRow3717 at r3717
  unfold Seg5.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 2472 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩
        ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩
        ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩
        ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩ := by
    have hnextx : seg5AccX58 rho = seg5AccX57 rho + rho 3407 := by
      unfold seg5AccX58 seg5AccX57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 57]
      ring
    have hnexty : seg5AccY58 rho = seg5AccY57 rho + rho 3408 := by
      unfold seg5AccY58 seg5AccY57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 57]
      ring
    have ha0 : (rho 3399 + rho 3400) * (seg5AccX57 rho + seg5AccY57 rho) = rho 3401 := by
      unfold seg5AccX57 seg5AccY57
      linear_combination r3706
    have ha1 : rho 3400 * seg5AccX57 rho = rho 3402 := by
      unfold seg5AccX57
      linear_combination r3707
    have ha2 : rho 3399 * seg5AccY57 rho = rho 3403 := by
      unfold seg5AccY57
      linear_combination r3708
    have ha3 : 3021 * rho 3402 * rho 3403 = rho 3404 := by
      linear_combination r3709
    have ha4 : rho 3405 * (1 + rho 3404) = rho 3402 + rho 3403 := by
      linear_combination r3710
    have ha5 : rho 3406 * (1 - rho 3404) = rho 3401 - rho 3402 - rho 3403 := by
      linear_combination r3711
    have haddx :
        rho 3405 * (1 + 3021 * (rho 3400 * seg5AccX57 rho) * (rho 3399 * seg5AccY57 rho)) =
          rho 3400 * seg5AccX57 rho + rho 3399 * seg5AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3406 * (1 - 3021 * (rho 3400 * seg5AccX57 rho) * (rho 3399 * seg5AccY57 rho)) =
          (-1) * (rho 3400 * seg5AccX57 rho) - rho 3399 * seg5AccY57 rho +
            (seg5AccY57 rho - seg5AccX57 rho * (-1)) * (rho 3399 + rho 3400) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3406 * (1 - rho 3404) = rho 3401 - rho 3402 - rho 3403 := ha5
        _ = (-1) * rho 3402 - rho 3403 + (seg5AccY57 rho - seg5AccX57 rho * (-1)) * (rho 3399 + rho 3400) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX58 rho = seg5AccX57 rho - Bool.toZMod bit * (seg5AccX57 rho - rho 3405) := by
      have hd : rho 3407 = Bool.toZMod bit * (rho 3405 - seg5AccX57 rho) := by
        rw [← hbit]
        unfold seg5AccX57
        linear_combination -r3712
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY58 rho = seg5AccY57 rho - Bool.toZMod bit * (seg5AccY57 rho - rho 3406) := by
      have hd : rho 3408 = Bool.toZMod bit * (rho 3406 - seg5AccY57 rho) := by
        rw [← hbit]
        unfold seg5AccY57
        linear_combination -r3713
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3399 * rho 3400 = rho 3409 := by linear_combination r3714
    have hd1 : rho 3399 * rho 3399 = rho 3410 := by linear_combination r3715
    have hd2 : rho 3400 * rho 3400 = rho 3411 := by linear_combination r3716
    have hd3 : rho 3412 * (rho 3400 * rho 3400 + rho 3399 * rho 3399 * (-1)) = 2 * (rho 3399 * rho 3400) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 3413 * (2 - (rho 3400 * rho 3400 + rho 3399 * rho 3399 * (-1))) = rho 3400 * rho 3400 - rho 3399 * rho 3399 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX57 rho : Seg5.F), (seg5AccY57 rho : Seg5.F)⟩
      ⟨(rho 3399 : Seg5.F), (rho 3400 : Seg5.F)⟩
      ⟨(rho 3405 : Seg5.F), (rho 3406 : Seg5.F)⟩
      ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩
      ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg5_rows58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3719 rho ∧ Seg5.relationRow3720 rho ∧ Seg5.relationRow3721 rho ∧ Seg5.relationRow3722 rho ∧ Seg5.relationRow3723 rho ∧ Seg5.relationRow3724 rho ∧ Seg5.relationRow3725 rho ∧ Seg5.relationRow3726 rho ∧ Seg5.relationRow3727 rho ∧ Seg5.relationRow3728 rho ∧ Seg5.relationRow3729 rho ∧ Seg5.relationRow3730 rho ∧ Seg5.relationRow3731 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩

theorem seg5_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2473 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩
        ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩
        ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩
        ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩ := by
  obtain ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩ := seg5_rows58 rho h
  unfold Seg5.relationRow3719 at r3719
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3719
  unfold Seg5.relationRow3720 at r3720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720
  unfold Seg5.relationRow3721 at r3721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3721
  unfold Seg5.relationRow3722 at r3722
  unfold Seg5.relationRow3723 at r3723
  unfold Seg5.relationRow3724 at r3724
  unfold Seg5.relationRow3725 at r3725
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3725
  unfold Seg5.relationRow3726 at r3726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3726
  unfold Seg5.relationRow3727 at r3727
  unfold Seg5.relationRow3728 at r3728
  unfold Seg5.relationRow3729 at r3729
  unfold Seg5.relationRow3730 at r3730
  unfold Seg5.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 2473 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩
        ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩
        ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩
        ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩ := by
    have hnextx : seg5AccX59 rho = seg5AccX58 rho + rho 3420 := by
      unfold seg5AccX59 seg5AccX58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 58]
      ring
    have hnexty : seg5AccY59 rho = seg5AccY58 rho + rho 3421 := by
      unfold seg5AccY59 seg5AccY58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 58]
      ring
    have ha0 : (rho 3412 + rho 3413) * (seg5AccX58 rho + seg5AccY58 rho) = rho 3414 := by
      unfold seg5AccX58 seg5AccY58
      linear_combination r3719
    have ha1 : rho 3413 * seg5AccX58 rho = rho 3415 := by
      unfold seg5AccX58
      linear_combination r3720
    have ha2 : rho 3412 * seg5AccY58 rho = rho 3416 := by
      unfold seg5AccY58
      linear_combination r3721
    have ha3 : 3021 * rho 3415 * rho 3416 = rho 3417 := by
      linear_combination r3722
    have ha4 : rho 3418 * (1 + rho 3417) = rho 3415 + rho 3416 := by
      linear_combination r3723
    have ha5 : rho 3419 * (1 - rho 3417) = rho 3414 - rho 3415 - rho 3416 := by
      linear_combination r3724
    have haddx :
        rho 3418 * (1 + 3021 * (rho 3413 * seg5AccX58 rho) * (rho 3412 * seg5AccY58 rho)) =
          rho 3413 * seg5AccX58 rho + rho 3412 * seg5AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3419 * (1 - 3021 * (rho 3413 * seg5AccX58 rho) * (rho 3412 * seg5AccY58 rho)) =
          (-1) * (rho 3413 * seg5AccX58 rho) - rho 3412 * seg5AccY58 rho +
            (seg5AccY58 rho - seg5AccX58 rho * (-1)) * (rho 3412 + rho 3413) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3419 * (1 - rho 3417) = rho 3414 - rho 3415 - rho 3416 := ha5
        _ = (-1) * rho 3415 - rho 3416 + (seg5AccY58 rho - seg5AccX58 rho * (-1)) * (rho 3412 + rho 3413) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX59 rho = seg5AccX58 rho - Bool.toZMod bit * (seg5AccX58 rho - rho 3418) := by
      have hd : rho 3420 = Bool.toZMod bit * (rho 3418 - seg5AccX58 rho) := by
        rw [← hbit]
        unfold seg5AccX58
        linear_combination -r3725
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY59 rho = seg5AccY58 rho - Bool.toZMod bit * (seg5AccY58 rho - rho 3419) := by
      have hd : rho 3421 = Bool.toZMod bit * (rho 3419 - seg5AccY58 rho) := by
        rw [← hbit]
        unfold seg5AccY58
        linear_combination -r3726
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3412 * rho 3413 = rho 3422 := by linear_combination r3727
    have hd1 : rho 3412 * rho 3412 = rho 3423 := by linear_combination r3728
    have hd2 : rho 3413 * rho 3413 = rho 3424 := by linear_combination r3729
    have hd3 : rho 3425 * (rho 3413 * rho 3413 + rho 3412 * rho 3412 * (-1)) = 2 * (rho 3412 * rho 3413) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 3426 * (2 - (rho 3413 * rho 3413 + rho 3412 * rho 3412 * (-1))) = rho 3413 * rho 3413 - rho 3412 * rho 3412 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX58 rho : Seg5.F), (seg5AccY58 rho : Seg5.F)⟩
      ⟨(rho 3412 : Seg5.F), (rho 3413 : Seg5.F)⟩
      ⟨(rho 3418 : Seg5.F), (rho 3419 : Seg5.F)⟩
      ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩
      ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg5_rows59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3732 rho ∧ Seg5.relationRow3733 rho ∧ Seg5.relationRow3734 rho ∧ Seg5.relationRow3735 rho ∧ Seg5.relationRow3736 rho ∧ Seg5.relationRow3737 rho ∧ Seg5.relationRow3738 rho ∧ Seg5.relationRow3739 rho ∧ Seg5.relationRow3740 rho ∧ Seg5.relationRow3741 rho ∧ Seg5.relationRow3742 rho ∧ Seg5.relationRow3743 rho ∧ Seg5.relationRow3744 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩

theorem seg5_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2474 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩
        ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩
        ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩
        ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩ := by
  obtain ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩ := seg5_rows59 rho h
  unfold Seg5.relationRow3732 at r3732
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3732
  unfold Seg5.relationRow3733 at r3733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733
  unfold Seg5.relationRow3734 at r3734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3734
  unfold Seg5.relationRow3735 at r3735
  unfold Seg5.relationRow3736 at r3736
  unfold Seg5.relationRow3737 at r3737
  unfold Seg5.relationRow3738 at r3738
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3738
  unfold Seg5.relationRow3739 at r3739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3739
  unfold Seg5.relationRow3740 at r3740
  unfold Seg5.relationRow3741 at r3741
  unfold Seg5.relationRow3742 at r3742
  unfold Seg5.relationRow3743 at r3743
  unfold Seg5.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 2474 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩
        ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩
        ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩
        ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩ := by
    have hnextx : seg5AccX60 rho = seg5AccX59 rho + rho 3433 := by
      unfold seg5AccX60 seg5AccX59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 59]
      ring
    have hnexty : seg5AccY60 rho = seg5AccY59 rho + rho 3434 := by
      unfold seg5AccY60 seg5AccY59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 59]
      ring
    have ha0 : (rho 3425 + rho 3426) * (seg5AccX59 rho + seg5AccY59 rho) = rho 3427 := by
      unfold seg5AccX59 seg5AccY59
      linear_combination r3732
    have ha1 : rho 3426 * seg5AccX59 rho = rho 3428 := by
      unfold seg5AccX59
      linear_combination r3733
    have ha2 : rho 3425 * seg5AccY59 rho = rho 3429 := by
      unfold seg5AccY59
      linear_combination r3734
    have ha3 : 3021 * rho 3428 * rho 3429 = rho 3430 := by
      linear_combination r3735
    have ha4 : rho 3431 * (1 + rho 3430) = rho 3428 + rho 3429 := by
      linear_combination r3736
    have ha5 : rho 3432 * (1 - rho 3430) = rho 3427 - rho 3428 - rho 3429 := by
      linear_combination r3737
    have haddx :
        rho 3431 * (1 + 3021 * (rho 3426 * seg5AccX59 rho) * (rho 3425 * seg5AccY59 rho)) =
          rho 3426 * seg5AccX59 rho + rho 3425 * seg5AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3432 * (1 - 3021 * (rho 3426 * seg5AccX59 rho) * (rho 3425 * seg5AccY59 rho)) =
          (-1) * (rho 3426 * seg5AccX59 rho) - rho 3425 * seg5AccY59 rho +
            (seg5AccY59 rho - seg5AccX59 rho * (-1)) * (rho 3425 + rho 3426) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3432 * (1 - rho 3430) = rho 3427 - rho 3428 - rho 3429 := ha5
        _ = (-1) * rho 3428 - rho 3429 + (seg5AccY59 rho - seg5AccX59 rho * (-1)) * (rho 3425 + rho 3426) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX60 rho = seg5AccX59 rho - Bool.toZMod bit * (seg5AccX59 rho - rho 3431) := by
      have hd : rho 3433 = Bool.toZMod bit * (rho 3431 - seg5AccX59 rho) := by
        rw [← hbit]
        unfold seg5AccX59
        linear_combination -r3738
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY60 rho = seg5AccY59 rho - Bool.toZMod bit * (seg5AccY59 rho - rho 3432) := by
      have hd : rho 3434 = Bool.toZMod bit * (rho 3432 - seg5AccY59 rho) := by
        rw [← hbit]
        unfold seg5AccY59
        linear_combination -r3739
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3425 * rho 3426 = rho 3435 := by linear_combination r3740
    have hd1 : rho 3425 * rho 3425 = rho 3436 := by linear_combination r3741
    have hd2 : rho 3426 * rho 3426 = rho 3437 := by linear_combination r3742
    have hd3 : rho 3438 * (rho 3426 * rho 3426 + rho 3425 * rho 3425 * (-1)) = 2 * (rho 3425 * rho 3426) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 3439 * (2 - (rho 3426 * rho 3426 + rho 3425 * rho 3425 * (-1))) = rho 3426 * rho 3426 - rho 3425 * rho 3425 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX59 rho : Seg5.F), (seg5AccY59 rho : Seg5.F)⟩
      ⟨(rho 3425 : Seg5.F), (rho 3426 : Seg5.F)⟩
      ⟨(rho 3431 : Seg5.F), (rho 3432 : Seg5.F)⟩
      ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩
      ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg5_rows60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3745 rho ∧ Seg5.relationRow3746 rho ∧ Seg5.relationRow3747 rho ∧ Seg5.relationRow3748 rho ∧ Seg5.relationRow3749 rho ∧ Seg5.relationRow3750 rho ∧ Seg5.relationRow3751 rho ∧ Seg5.relationRow3752 rho ∧ Seg5.relationRow3753 rho ∧ Seg5.relationRow3754 rho ∧ Seg5.relationRow3755 rho ∧ Seg5.relationRow3756 rho ∧ Seg5.relationRow3757 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  exact ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩

theorem seg5_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2475 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩
        ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩
        ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩
        ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩ := by
  obtain ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩ := seg5_rows60 rho h
  unfold Seg5.relationRow3745 at r3745
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3745
  unfold Seg5.relationRow3746 at r3746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746
  unfold Seg5.relationRow3747 at r3747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3747
  unfold Seg5.relationRow3748 at r3748
  unfold Seg5.relationRow3749 at r3749
  unfold Seg5.relationRow3750 at r3750
  unfold Seg5.relationRow3751 at r3751
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3751
  unfold Seg5.relationRow3752 at r3752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3752
  unfold Seg5.relationRow3753 at r3753
  unfold Seg5.relationRow3754 at r3754
  unfold Seg5.relationRow3755 at r3755
  unfold Seg5.relationRow3756 at r3756
  unfold Seg5.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 2475 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩
        ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩
        ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩
        ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩ := by
    have hnextx : seg5AccX61 rho = seg5AccX60 rho + rho 3446 := by
      unfold seg5AccX61 seg5AccX60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 60]
      ring
    have hnexty : seg5AccY61 rho = seg5AccY60 rho + rho 3447 := by
      unfold seg5AccY61 seg5AccY60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 60]
      ring
    have ha0 : (rho 3438 + rho 3439) * (seg5AccX60 rho + seg5AccY60 rho) = rho 3440 := by
      unfold seg5AccX60 seg5AccY60
      linear_combination r3745
    have ha1 : rho 3439 * seg5AccX60 rho = rho 3441 := by
      unfold seg5AccX60
      linear_combination r3746
    have ha2 : rho 3438 * seg5AccY60 rho = rho 3442 := by
      unfold seg5AccY60
      linear_combination r3747
    have ha3 : 3021 * rho 3441 * rho 3442 = rho 3443 := by
      linear_combination r3748
    have ha4 : rho 3444 * (1 + rho 3443) = rho 3441 + rho 3442 := by
      linear_combination r3749
    have ha5 : rho 3445 * (1 - rho 3443) = rho 3440 - rho 3441 - rho 3442 := by
      linear_combination r3750
    have haddx :
        rho 3444 * (1 + 3021 * (rho 3439 * seg5AccX60 rho) * (rho 3438 * seg5AccY60 rho)) =
          rho 3439 * seg5AccX60 rho + rho 3438 * seg5AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3445 * (1 - 3021 * (rho 3439 * seg5AccX60 rho) * (rho 3438 * seg5AccY60 rho)) =
          (-1) * (rho 3439 * seg5AccX60 rho) - rho 3438 * seg5AccY60 rho +
            (seg5AccY60 rho - seg5AccX60 rho * (-1)) * (rho 3438 + rho 3439) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3445 * (1 - rho 3443) = rho 3440 - rho 3441 - rho 3442 := ha5
        _ = (-1) * rho 3441 - rho 3442 + (seg5AccY60 rho - seg5AccX60 rho * (-1)) * (rho 3438 + rho 3439) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX61 rho = seg5AccX60 rho - Bool.toZMod bit * (seg5AccX60 rho - rho 3444) := by
      have hd : rho 3446 = Bool.toZMod bit * (rho 3444 - seg5AccX60 rho) := by
        rw [← hbit]
        unfold seg5AccX60
        linear_combination -r3751
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY61 rho = seg5AccY60 rho - Bool.toZMod bit * (seg5AccY60 rho - rho 3445) := by
      have hd : rho 3447 = Bool.toZMod bit * (rho 3445 - seg5AccY60 rho) := by
        rw [← hbit]
        unfold seg5AccY60
        linear_combination -r3752
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3438 * rho 3439 = rho 3448 := by linear_combination r3753
    have hd1 : rho 3438 * rho 3438 = rho 3449 := by linear_combination r3754
    have hd2 : rho 3439 * rho 3439 = rho 3450 := by linear_combination r3755
    have hd3 : rho 3451 * (rho 3439 * rho 3439 + rho 3438 * rho 3438 * (-1)) = 2 * (rho 3438 * rho 3439) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 3452 * (2 - (rho 3439 * rho 3439 + rho 3438 * rho 3438 * (-1))) = rho 3439 * rho 3439 - rho 3438 * rho 3438 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX60 rho : Seg5.F), (seg5AccY60 rho : Seg5.F)⟩
      ⟨(rho 3438 : Seg5.F), (rho 3439 : Seg5.F)⟩
      ⟨(rho 3444 : Seg5.F), (rho 3445 : Seg5.F)⟩
      ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩
      ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg5_rows61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3758 rho ∧ Seg5.relationRow3759 rho ∧ Seg5.relationRow3760 rho ∧ Seg5.relationRow3761 rho ∧ Seg5.relationRow3762 rho ∧ Seg5.relationRow3763 rho ∧ Seg5.relationRow3764 rho ∧ Seg5.relationRow3765 rho ∧ Seg5.relationRow3766 rho ∧ Seg5.relationRow3767 rho ∧ Seg5.relationRow3768 rho ∧ Seg5.relationRow3769 rho ∧ Seg5.relationRow3770 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩

theorem seg5_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2476 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩
        ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩
        ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩
        ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩ := by
  obtain ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩ := seg5_rows61 rho h
  unfold Seg5.relationRow3758 at r3758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3758
  unfold Seg5.relationRow3759 at r3759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759
  unfold Seg5.relationRow3760 at r3760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3760
  unfold Seg5.relationRow3761 at r3761
  unfold Seg5.relationRow3762 at r3762
  unfold Seg5.relationRow3763 at r3763
  unfold Seg5.relationRow3764 at r3764
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3764
  unfold Seg5.relationRow3765 at r3765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3765
  unfold Seg5.relationRow3766 at r3766
  unfold Seg5.relationRow3767 at r3767
  unfold Seg5.relationRow3768 at r3768
  unfold Seg5.relationRow3769 at r3769
  unfold Seg5.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 2476 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩
        ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩
        ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩
        ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩ := by
    have hnextx : seg5AccX62 rho = seg5AccX61 rho + rho 3459 := by
      unfold seg5AccX62 seg5AccX61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 61]
      ring
    have hnexty : seg5AccY62 rho = seg5AccY61 rho + rho 3460 := by
      unfold seg5AccY62 seg5AccY61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 61]
      ring
    have ha0 : (rho 3451 + rho 3452) * (seg5AccX61 rho + seg5AccY61 rho) = rho 3453 := by
      unfold seg5AccX61 seg5AccY61
      linear_combination r3758
    have ha1 : rho 3452 * seg5AccX61 rho = rho 3454 := by
      unfold seg5AccX61
      linear_combination r3759
    have ha2 : rho 3451 * seg5AccY61 rho = rho 3455 := by
      unfold seg5AccY61
      linear_combination r3760
    have ha3 : 3021 * rho 3454 * rho 3455 = rho 3456 := by
      linear_combination r3761
    have ha4 : rho 3457 * (1 + rho 3456) = rho 3454 + rho 3455 := by
      linear_combination r3762
    have ha5 : rho 3458 * (1 - rho 3456) = rho 3453 - rho 3454 - rho 3455 := by
      linear_combination r3763
    have haddx :
        rho 3457 * (1 + 3021 * (rho 3452 * seg5AccX61 rho) * (rho 3451 * seg5AccY61 rho)) =
          rho 3452 * seg5AccX61 rho + rho 3451 * seg5AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3458 * (1 - 3021 * (rho 3452 * seg5AccX61 rho) * (rho 3451 * seg5AccY61 rho)) =
          (-1) * (rho 3452 * seg5AccX61 rho) - rho 3451 * seg5AccY61 rho +
            (seg5AccY61 rho - seg5AccX61 rho * (-1)) * (rho 3451 + rho 3452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3458 * (1 - rho 3456) = rho 3453 - rho 3454 - rho 3455 := ha5
        _ = (-1) * rho 3454 - rho 3455 + (seg5AccY61 rho - seg5AccX61 rho * (-1)) * (rho 3451 + rho 3452) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX62 rho = seg5AccX61 rho - Bool.toZMod bit * (seg5AccX61 rho - rho 3457) := by
      have hd : rho 3459 = Bool.toZMod bit * (rho 3457 - seg5AccX61 rho) := by
        rw [← hbit]
        unfold seg5AccX61
        linear_combination -r3764
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY62 rho = seg5AccY61 rho - Bool.toZMod bit * (seg5AccY61 rho - rho 3458) := by
      have hd : rho 3460 = Bool.toZMod bit * (rho 3458 - seg5AccY61 rho) := by
        rw [← hbit]
        unfold seg5AccY61
        linear_combination -r3765
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3451 * rho 3452 = rho 3461 := by linear_combination r3766
    have hd1 : rho 3451 * rho 3451 = rho 3462 := by linear_combination r3767
    have hd2 : rho 3452 * rho 3452 = rho 3463 := by linear_combination r3768
    have hd3 : rho 3464 * (rho 3452 * rho 3452 + rho 3451 * rho 3451 * (-1)) = 2 * (rho 3451 * rho 3452) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 3465 * (2 - (rho 3452 * rho 3452 + rho 3451 * rho 3451 * (-1))) = rho 3452 * rho 3452 - rho 3451 * rho 3451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX61 rho : Seg5.F), (seg5AccY61 rho : Seg5.F)⟩
      ⟨(rho 3451 : Seg5.F), (rho 3452 : Seg5.F)⟩
      ⟨(rho 3457 : Seg5.F), (rho 3458 : Seg5.F)⟩
      ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩
      ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg5_rows62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3771 rho ∧ Seg5.relationRow3772 rho ∧ Seg5.relationRow3773 rho ∧ Seg5.relationRow3774 rho ∧ Seg5.relationRow3775 rho ∧ Seg5.relationRow3776 rho ∧ Seg5.relationRow3777 rho ∧ Seg5.relationRow3778 rho ∧ Seg5.relationRow3779 rho ∧ Seg5.relationRow3780 rho ∧ Seg5.relationRow3781 rho ∧ Seg5.relationRow3782 rho ∧ Seg5.relationRow3783 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩

theorem seg5_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2477 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩
        ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩
        ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩
        ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩ := by
  obtain ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩ := seg5_rows62 rho h
  unfold Seg5.relationRow3771 at r3771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3771
  unfold Seg5.relationRow3772 at r3772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772
  unfold Seg5.relationRow3773 at r3773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3773
  unfold Seg5.relationRow3774 at r3774
  unfold Seg5.relationRow3775 at r3775
  unfold Seg5.relationRow3776 at r3776
  unfold Seg5.relationRow3777 at r3777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3777
  unfold Seg5.relationRow3778 at r3778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3778
  unfold Seg5.relationRow3779 at r3779
  unfold Seg5.relationRow3780 at r3780
  unfold Seg5.relationRow3781 at r3781
  unfold Seg5.relationRow3782 at r3782
  unfold Seg5.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 2477 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩
        ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩
        ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩
        ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩ := by
    have hnextx : seg5AccX63 rho = seg5AccX62 rho + rho 3472 := by
      unfold seg5AccX63 seg5AccX62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 62]
      ring
    have hnexty : seg5AccY63 rho = seg5AccY62 rho + rho 3473 := by
      unfold seg5AccY63 seg5AccY62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 62]
      ring
    have ha0 : (rho 3464 + rho 3465) * (seg5AccX62 rho + seg5AccY62 rho) = rho 3466 := by
      unfold seg5AccX62 seg5AccY62
      linear_combination r3771
    have ha1 : rho 3465 * seg5AccX62 rho = rho 3467 := by
      unfold seg5AccX62
      linear_combination r3772
    have ha2 : rho 3464 * seg5AccY62 rho = rho 3468 := by
      unfold seg5AccY62
      linear_combination r3773
    have ha3 : 3021 * rho 3467 * rho 3468 = rho 3469 := by
      linear_combination r3774
    have ha4 : rho 3470 * (1 + rho 3469) = rho 3467 + rho 3468 := by
      linear_combination r3775
    have ha5 : rho 3471 * (1 - rho 3469) = rho 3466 - rho 3467 - rho 3468 := by
      linear_combination r3776
    have haddx :
        rho 3470 * (1 + 3021 * (rho 3465 * seg5AccX62 rho) * (rho 3464 * seg5AccY62 rho)) =
          rho 3465 * seg5AccX62 rho + rho 3464 * seg5AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3471 * (1 - 3021 * (rho 3465 * seg5AccX62 rho) * (rho 3464 * seg5AccY62 rho)) =
          (-1) * (rho 3465 * seg5AccX62 rho) - rho 3464 * seg5AccY62 rho +
            (seg5AccY62 rho - seg5AccX62 rho * (-1)) * (rho 3464 + rho 3465) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3471 * (1 - rho 3469) = rho 3466 - rho 3467 - rho 3468 := ha5
        _ = (-1) * rho 3467 - rho 3468 + (seg5AccY62 rho - seg5AccX62 rho * (-1)) * (rho 3464 + rho 3465) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX63 rho = seg5AccX62 rho - Bool.toZMod bit * (seg5AccX62 rho - rho 3470) := by
      have hd : rho 3472 = Bool.toZMod bit * (rho 3470 - seg5AccX62 rho) := by
        rw [← hbit]
        unfold seg5AccX62
        linear_combination -r3777
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY63 rho = seg5AccY62 rho - Bool.toZMod bit * (seg5AccY62 rho - rho 3471) := by
      have hd : rho 3473 = Bool.toZMod bit * (rho 3471 - seg5AccY62 rho) := by
        rw [← hbit]
        unfold seg5AccY62
        linear_combination -r3778
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3464 * rho 3465 = rho 3474 := by linear_combination r3779
    have hd1 : rho 3464 * rho 3464 = rho 3475 := by linear_combination r3780
    have hd2 : rho 3465 * rho 3465 = rho 3476 := by linear_combination r3781
    have hd3 : rho 3477 * (rho 3465 * rho 3465 + rho 3464 * rho 3464 * (-1)) = 2 * (rho 3464 * rho 3465) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 3478 * (2 - (rho 3465 * rho 3465 + rho 3464 * rho 3464 * (-1))) = rho 3465 * rho 3465 - rho 3464 * rho 3464 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX62 rho : Seg5.F), (seg5AccY62 rho : Seg5.F)⟩
      ⟨(rho 3464 : Seg5.F), (rho 3465 : Seg5.F)⟩
      ⟨(rho 3470 : Seg5.F), (rho 3471 : Seg5.F)⟩
      ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩
      ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg5_rows63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3784 rho ∧ Seg5.relationRow3785 rho ∧ Seg5.relationRow3786 rho ∧ Seg5.relationRow3787 rho ∧ Seg5.relationRow3788 rho ∧ Seg5.relationRow3789 rho ∧ Seg5.relationRow3790 rho ∧ Seg5.relationRow3791 rho ∧ Seg5.relationRow3792 rho ∧ Seg5.relationRow3793 rho ∧ Seg5.relationRow3794 rho ∧ Seg5.relationRow3795 rho ∧ Seg5.relationRow3796 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩

theorem seg5_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2478 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩
        ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩
        ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩
        ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩ := by
  obtain ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩ := seg5_rows63 rho h
  unfold Seg5.relationRow3784 at r3784
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3784
  unfold Seg5.relationRow3785 at r3785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785
  unfold Seg5.relationRow3786 at r3786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3786
  unfold Seg5.relationRow3787 at r3787
  unfold Seg5.relationRow3788 at r3788
  unfold Seg5.relationRow3789 at r3789
  unfold Seg5.relationRow3790 at r3790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3790
  unfold Seg5.relationRow3791 at r3791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3791
  unfold Seg5.relationRow3792 at r3792
  unfold Seg5.relationRow3793 at r3793
  unfold Seg5.relationRow3794 at r3794
  unfold Seg5.relationRow3795 at r3795
  unfold Seg5.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 2478 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩
        ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩
        ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩
        ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩ := by
    have hnextx : seg5AccX64 rho = seg5AccX63 rho + rho 3485 := by
      unfold seg5AccX64 seg5AccX63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 63]
      ring
    have hnexty : seg5AccY64 rho = seg5AccY63 rho + rho 3486 := by
      unfold seg5AccY64 seg5AccY63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 63]
      ring
    have ha0 : (rho 3477 + rho 3478) * (seg5AccX63 rho + seg5AccY63 rho) = rho 3479 := by
      unfold seg5AccX63 seg5AccY63
      linear_combination r3784
    have ha1 : rho 3478 * seg5AccX63 rho = rho 3480 := by
      unfold seg5AccX63
      linear_combination r3785
    have ha2 : rho 3477 * seg5AccY63 rho = rho 3481 := by
      unfold seg5AccY63
      linear_combination r3786
    have ha3 : 3021 * rho 3480 * rho 3481 = rho 3482 := by
      linear_combination r3787
    have ha4 : rho 3483 * (1 + rho 3482) = rho 3480 + rho 3481 := by
      linear_combination r3788
    have ha5 : rho 3484 * (1 - rho 3482) = rho 3479 - rho 3480 - rho 3481 := by
      linear_combination r3789
    have haddx :
        rho 3483 * (1 + 3021 * (rho 3478 * seg5AccX63 rho) * (rho 3477 * seg5AccY63 rho)) =
          rho 3478 * seg5AccX63 rho + rho 3477 * seg5AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3484 * (1 - 3021 * (rho 3478 * seg5AccX63 rho) * (rho 3477 * seg5AccY63 rho)) =
          (-1) * (rho 3478 * seg5AccX63 rho) - rho 3477 * seg5AccY63 rho +
            (seg5AccY63 rho - seg5AccX63 rho * (-1)) * (rho 3477 + rho 3478) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3484 * (1 - rho 3482) = rho 3479 - rho 3480 - rho 3481 := ha5
        _ = (-1) * rho 3480 - rho 3481 + (seg5AccY63 rho - seg5AccX63 rho * (-1)) * (rho 3477 + rho 3478) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX64 rho = seg5AccX63 rho - Bool.toZMod bit * (seg5AccX63 rho - rho 3483) := by
      have hd : rho 3485 = Bool.toZMod bit * (rho 3483 - seg5AccX63 rho) := by
        rw [← hbit]
        unfold seg5AccX63
        linear_combination -r3790
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY64 rho = seg5AccY63 rho - Bool.toZMod bit * (seg5AccY63 rho - rho 3484) := by
      have hd : rho 3486 = Bool.toZMod bit * (rho 3484 - seg5AccY63 rho) := by
        rw [← hbit]
        unfold seg5AccY63
        linear_combination -r3791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3477 * rho 3478 = rho 3487 := by linear_combination r3792
    have hd1 : rho 3477 * rho 3477 = rho 3488 := by linear_combination r3793
    have hd2 : rho 3478 * rho 3478 = rho 3489 := by linear_combination r3794
    have hd3 : rho 3490 * (rho 3478 * rho 3478 + rho 3477 * rho 3477 * (-1)) = 2 * (rho 3477 * rho 3478) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 3491 * (2 - (rho 3478 * rho 3478 + rho 3477 * rho 3477 * (-1))) = rho 3478 * rho 3478 - rho 3477 * rho 3477 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX63 rho : Seg5.F), (seg5AccY63 rho : Seg5.F)⟩
      ⟨(rho 3477 : Seg5.F), (rho 3478 : Seg5.F)⟩
      ⟨(rho 3483 : Seg5.F), (rho 3484 : Seg5.F)⟩
      ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩
      ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg5_rows64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3797 rho ∧ Seg5.relationRow3798 rho ∧ Seg5.relationRow3799 rho ∧ Seg5.relationRow3800 rho ∧ Seg5.relationRow3801 rho ∧ Seg5.relationRow3802 rho ∧ Seg5.relationRow3803 rho ∧ Seg5.relationRow3804 rho ∧ Seg5.relationRow3805 rho ∧ Seg5.relationRow3806 rho ∧ Seg5.relationRow3807 rho ∧ Seg5.relationRow3808 rho ∧ Seg5.relationRow3809 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩

theorem seg5_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2479 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩
        ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩
        ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩
        ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩ := by
  obtain ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩ := seg5_rows64 rho h
  unfold Seg5.relationRow3797 at r3797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3797
  unfold Seg5.relationRow3798 at r3798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798
  unfold Seg5.relationRow3799 at r3799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3799
  unfold Seg5.relationRow3800 at r3800
  unfold Seg5.relationRow3801 at r3801
  unfold Seg5.relationRow3802 at r3802
  unfold Seg5.relationRow3803 at r3803
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3803
  unfold Seg5.relationRow3804 at r3804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3804
  unfold Seg5.relationRow3805 at r3805
  unfold Seg5.relationRow3806 at r3806
  unfold Seg5.relationRow3807 at r3807
  unfold Seg5.relationRow3808 at r3808
  unfold Seg5.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 2479 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩
        ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩
        ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩
        ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩ := by
    have hnextx : seg5AccX65 rho = seg5AccX64 rho + rho 3498 := by
      unfold seg5AccX65 seg5AccX64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 64]
      ring
    have hnexty : seg5AccY65 rho = seg5AccY64 rho + rho 3499 := by
      unfold seg5AccY65 seg5AccY64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 64]
      ring
    have ha0 : (rho 3490 + rho 3491) * (seg5AccX64 rho + seg5AccY64 rho) = rho 3492 := by
      unfold seg5AccX64 seg5AccY64
      linear_combination r3797
    have ha1 : rho 3491 * seg5AccX64 rho = rho 3493 := by
      unfold seg5AccX64
      linear_combination r3798
    have ha2 : rho 3490 * seg5AccY64 rho = rho 3494 := by
      unfold seg5AccY64
      linear_combination r3799
    have ha3 : 3021 * rho 3493 * rho 3494 = rho 3495 := by
      linear_combination r3800
    have ha4 : rho 3496 * (1 + rho 3495) = rho 3493 + rho 3494 := by
      linear_combination r3801
    have ha5 : rho 3497 * (1 - rho 3495) = rho 3492 - rho 3493 - rho 3494 := by
      linear_combination r3802
    have haddx :
        rho 3496 * (1 + 3021 * (rho 3491 * seg5AccX64 rho) * (rho 3490 * seg5AccY64 rho)) =
          rho 3491 * seg5AccX64 rho + rho 3490 * seg5AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3497 * (1 - 3021 * (rho 3491 * seg5AccX64 rho) * (rho 3490 * seg5AccY64 rho)) =
          (-1) * (rho 3491 * seg5AccX64 rho) - rho 3490 * seg5AccY64 rho +
            (seg5AccY64 rho - seg5AccX64 rho * (-1)) * (rho 3490 + rho 3491) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3497 * (1 - rho 3495) = rho 3492 - rho 3493 - rho 3494 := ha5
        _ = (-1) * rho 3493 - rho 3494 + (seg5AccY64 rho - seg5AccX64 rho * (-1)) * (rho 3490 + rho 3491) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX65 rho = seg5AccX64 rho - Bool.toZMod bit * (seg5AccX64 rho - rho 3496) := by
      have hd : rho 3498 = Bool.toZMod bit * (rho 3496 - seg5AccX64 rho) := by
        rw [← hbit]
        unfold seg5AccX64
        linear_combination -r3803
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY65 rho = seg5AccY64 rho - Bool.toZMod bit * (seg5AccY64 rho - rho 3497) := by
      have hd : rho 3499 = Bool.toZMod bit * (rho 3497 - seg5AccY64 rho) := by
        rw [← hbit]
        unfold seg5AccY64
        linear_combination -r3804
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3490 * rho 3491 = rho 3500 := by linear_combination r3805
    have hd1 : rho 3490 * rho 3490 = rho 3501 := by linear_combination r3806
    have hd2 : rho 3491 * rho 3491 = rho 3502 := by linear_combination r3807
    have hd3 : rho 3503 * (rho 3491 * rho 3491 + rho 3490 * rho 3490 * (-1)) = 2 * (rho 3490 * rho 3491) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 3504 * (2 - (rho 3491 * rho 3491 + rho 3490 * rho 3490 * (-1))) = rho 3491 * rho 3491 - rho 3490 * rho 3490 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX64 rho : Seg5.F), (seg5AccY64 rho : Seg5.F)⟩
      ⟨(rho 3490 : Seg5.F), (rho 3491 : Seg5.F)⟩
      ⟨(rho 3496 : Seg5.F), (rho 3497 : Seg5.F)⟩
      ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩
      ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg5_rows65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3810 rho ∧ Seg5.relationRow3811 rho ∧ Seg5.relationRow3812 rho ∧ Seg5.relationRow3813 rho ∧ Seg5.relationRow3814 rho ∧ Seg5.relationRow3815 rho ∧ Seg5.relationRow3816 rho ∧ Seg5.relationRow3817 rho ∧ Seg5.relationRow3818 rho ∧ Seg5.relationRow3819 rho ∧ Seg5.relationRow3820 rho ∧ Seg5.relationRow3821 rho ∧ Seg5.relationRow3822 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩

theorem seg5_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2480 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩
        ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩
        ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩
        ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩ := by
  obtain ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩ := seg5_rows65 rho h
  unfold Seg5.relationRow3810 at r3810
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3810
  unfold Seg5.relationRow3811 at r3811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811
  unfold Seg5.relationRow3812 at r3812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3812
  unfold Seg5.relationRow3813 at r3813
  unfold Seg5.relationRow3814 at r3814
  unfold Seg5.relationRow3815 at r3815
  unfold Seg5.relationRow3816 at r3816
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3816
  unfold Seg5.relationRow3817 at r3817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3817
  unfold Seg5.relationRow3818 at r3818
  unfold Seg5.relationRow3819 at r3819
  unfold Seg5.relationRow3820 at r3820
  unfold Seg5.relationRow3821 at r3821
  unfold Seg5.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 2480 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩
        ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩
        ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩
        ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩ := by
    have hnextx : seg5AccX66 rho = seg5AccX65 rho + rho 3511 := by
      unfold seg5AccX66 seg5AccX65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 65]
      ring
    have hnexty : seg5AccY66 rho = seg5AccY65 rho + rho 3512 := by
      unfold seg5AccY66 seg5AccY65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 65]
      ring
    have ha0 : (rho 3503 + rho 3504) * (seg5AccX65 rho + seg5AccY65 rho) = rho 3505 := by
      unfold seg5AccX65 seg5AccY65
      linear_combination r3810
    have ha1 : rho 3504 * seg5AccX65 rho = rho 3506 := by
      unfold seg5AccX65
      linear_combination r3811
    have ha2 : rho 3503 * seg5AccY65 rho = rho 3507 := by
      unfold seg5AccY65
      linear_combination r3812
    have ha3 : 3021 * rho 3506 * rho 3507 = rho 3508 := by
      linear_combination r3813
    have ha4 : rho 3509 * (1 + rho 3508) = rho 3506 + rho 3507 := by
      linear_combination r3814
    have ha5 : rho 3510 * (1 - rho 3508) = rho 3505 - rho 3506 - rho 3507 := by
      linear_combination r3815
    have haddx :
        rho 3509 * (1 + 3021 * (rho 3504 * seg5AccX65 rho) * (rho 3503 * seg5AccY65 rho)) =
          rho 3504 * seg5AccX65 rho + rho 3503 * seg5AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3510 * (1 - 3021 * (rho 3504 * seg5AccX65 rho) * (rho 3503 * seg5AccY65 rho)) =
          (-1) * (rho 3504 * seg5AccX65 rho) - rho 3503 * seg5AccY65 rho +
            (seg5AccY65 rho - seg5AccX65 rho * (-1)) * (rho 3503 + rho 3504) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3510 * (1 - rho 3508) = rho 3505 - rho 3506 - rho 3507 := ha5
        _ = (-1) * rho 3506 - rho 3507 + (seg5AccY65 rho - seg5AccX65 rho * (-1)) * (rho 3503 + rho 3504) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX66 rho = seg5AccX65 rho - Bool.toZMod bit * (seg5AccX65 rho - rho 3509) := by
      have hd : rho 3511 = Bool.toZMod bit * (rho 3509 - seg5AccX65 rho) := by
        rw [← hbit]
        unfold seg5AccX65
        linear_combination -r3816
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY66 rho = seg5AccY65 rho - Bool.toZMod bit * (seg5AccY65 rho - rho 3510) := by
      have hd : rho 3512 = Bool.toZMod bit * (rho 3510 - seg5AccY65 rho) := by
        rw [← hbit]
        unfold seg5AccY65
        linear_combination -r3817
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3503 * rho 3504 = rho 3513 := by linear_combination r3818
    have hd1 : rho 3503 * rho 3503 = rho 3514 := by linear_combination r3819
    have hd2 : rho 3504 * rho 3504 = rho 3515 := by linear_combination r3820
    have hd3 : rho 3516 * (rho 3504 * rho 3504 + rho 3503 * rho 3503 * (-1)) = 2 * (rho 3503 * rho 3504) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 3517 * (2 - (rho 3504 * rho 3504 + rho 3503 * rho 3503 * (-1))) = rho 3504 * rho 3504 - rho 3503 * rho 3503 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX65 rho : Seg5.F), (seg5AccY65 rho : Seg5.F)⟩
      ⟨(rho 3503 : Seg5.F), (rho 3504 : Seg5.F)⟩
      ⟨(rho 3509 : Seg5.F), (rho 3510 : Seg5.F)⟩
      ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩
      ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg5_hstep_c5 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg5_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg5_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg5_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg5_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg5_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg5_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg5_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg5_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg5_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg5_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
