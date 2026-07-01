import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3680 rho ∧ Seg16.relationRow3681 rho ∧ Seg16.relationRow3682 rho ∧ Seg16.relationRow3683 rho ∧ Seg16.relationRow3684 rho ∧ Seg16.relationRow3685 rho ∧ Seg16.relationRow3686 rho ∧ Seg16.relationRow3687 rho ∧ Seg16.relationRow3688 rho ∧ Seg16.relationRow3689 rho ∧ Seg16.relationRow3690 rho ∧ Seg16.relationRow3691 rho ∧ Seg16.relationRow3692 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩

theorem seg16_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15347 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩ := by
  obtain ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩ := seg16_rows55 rho h
  unfold Seg16.relationRow3680 at r3680
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3680
  unfold Seg16.relationRow3681 at r3681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681
  unfold Seg16.relationRow3682 at r3682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3682
  unfold Seg16.relationRow3683 at r3683
  unfold Seg16.relationRow3684 at r3684
  unfold Seg16.relationRow3685 at r3685
  unfold Seg16.relationRow3686 at r3686
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3686
  unfold Seg16.relationRow3687 at r3687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3687
  unfold Seg16.relationRow3688 at r3688
  unfold Seg16.relationRow3689 at r3689
  unfold Seg16.relationRow3690 at r3690
  unfold Seg16.relationRow3691 at r3691
  unfold Seg16.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 15347 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩ := by
    have hnextx : seg16AccX56 rho = seg16AccX55 rho + rho 16258 := by
      unfold seg16AccX56 seg16AccX55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 55]
      ring
    have hnexty : seg16AccY56 rho = seg16AccY55 rho + rho 16259 := by
      unfold seg16AccY56 seg16AccY55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 55]
      ring
    have ha0 : (rho 16250 + rho 16251) * (seg16AccX55 rho + seg16AccY55 rho) = rho 16252 := by
      unfold seg16AccX55 seg16AccY55
      linear_combination r3680
    have ha1 : rho 16251 * seg16AccX55 rho = rho 16253 := by
      unfold seg16AccX55
      linear_combination r3681
    have ha2 : rho 16250 * seg16AccY55 rho = rho 16254 := by
      unfold seg16AccY55
      linear_combination r3682
    have ha3 : 3021 * rho 16253 * rho 16254 = rho 16255 := by
      linear_combination r3683
    have ha4 : rho 16256 * (1 + rho 16255) = rho 16253 + rho 16254 := by
      linear_combination r3684
    have ha5 : rho 16257 * (1 - rho 16255) = rho 16252 - rho 16253 - rho 16254 := by
      linear_combination r3685
    have haddx :
        rho 16256 * (1 + 3021 * (rho 16251 * seg16AccX55 rho) * (rho 16250 * seg16AccY55 rho)) =
          rho 16251 * seg16AccX55 rho + rho 16250 * seg16AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16257 * (1 - 3021 * (rho 16251 * seg16AccX55 rho) * (rho 16250 * seg16AccY55 rho)) =
          (-1) * (rho 16251 * seg16AccX55 rho) - rho 16250 * seg16AccY55 rho +
            (seg16AccY55 rho - seg16AccX55 rho * (-1)) * (rho 16250 + rho 16251) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16257 * (1 - rho 16255) = rho 16252 - rho 16253 - rho 16254 := ha5
        _ = (-1) * rho 16253 - rho 16254 + (seg16AccY55 rho - seg16AccX55 rho * (-1)) * (rho 16250 + rho 16251) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX56 rho = seg16AccX55 rho - Bool.toZMod bit * (seg16AccX55 rho - rho 16256) := by
      have hd : rho 16258 = Bool.toZMod bit * (rho 16256 - seg16AccX55 rho) := by
        rw [← hbit]
        unfold seg16AccX55
        linear_combination -r3686
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY56 rho = seg16AccY55 rho - Bool.toZMod bit * (seg16AccY55 rho - rho 16257) := by
      have hd : rho 16259 = Bool.toZMod bit * (rho 16257 - seg16AccY55 rho) := by
        rw [← hbit]
        unfold seg16AccY55
        linear_combination -r3687
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16250 * rho 16251 = rho 16260 := by linear_combination r3688
    have hd1 : rho 16250 * rho 16250 = rho 16261 := by linear_combination r3689
    have hd2 : rho 16251 * rho 16251 = rho 16262 := by linear_combination r3690
    have hd3 : rho 16263 * (rho 16251 * rho 16251 + rho 16250 * rho 16250 * (-1)) = 2 * (rho 16250 * rho 16251) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 16264 * (2 - (rho 16251 * rho 16251 + rho 16250 * rho 16250 * (-1))) = rho 16251 * rho 16251 - rho 16250 * rho 16250 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
      ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
      ⟨(rho 16256 : Seg16.F), (rho 16257 : Seg16.F)⟩
      ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
      ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg16_rows56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3693 rho ∧ Seg16.relationRow3694 rho ∧ Seg16.relationRow3695 rho ∧ Seg16.relationRow3696 rho ∧ Seg16.relationRow3697 rho ∧ Seg16.relationRow3698 rho ∧ Seg16.relationRow3699 rho ∧ Seg16.relationRow3700 rho ∧ Seg16.relationRow3701 rho ∧ Seg16.relationRow3702 rho ∧ Seg16.relationRow3703 rho ∧ Seg16.relationRow3704 rho ∧ Seg16.relationRow3705 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩

theorem seg16_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15348 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩ := by
  obtain ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩ := seg16_rows56 rho h
  unfold Seg16.relationRow3693 at r3693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3693
  unfold Seg16.relationRow3694 at r3694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694
  unfold Seg16.relationRow3695 at r3695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3695
  unfold Seg16.relationRow3696 at r3696
  unfold Seg16.relationRow3697 at r3697
  unfold Seg16.relationRow3698 at r3698
  unfold Seg16.relationRow3699 at r3699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3699
  unfold Seg16.relationRow3700 at r3700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3700
  unfold Seg16.relationRow3701 at r3701
  unfold Seg16.relationRow3702 at r3702
  unfold Seg16.relationRow3703 at r3703
  unfold Seg16.relationRow3704 at r3704
  unfold Seg16.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 15348 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩ := by
    have hnextx : seg16AccX57 rho = seg16AccX56 rho + rho 16271 := by
      unfold seg16AccX57 seg16AccX56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 56]
      ring
    have hnexty : seg16AccY57 rho = seg16AccY56 rho + rho 16272 := by
      unfold seg16AccY57 seg16AccY56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 56]
      ring
    have ha0 : (rho 16263 + rho 16264) * (seg16AccX56 rho + seg16AccY56 rho) = rho 16265 := by
      unfold seg16AccX56 seg16AccY56
      linear_combination r3693
    have ha1 : rho 16264 * seg16AccX56 rho = rho 16266 := by
      unfold seg16AccX56
      linear_combination r3694
    have ha2 : rho 16263 * seg16AccY56 rho = rho 16267 := by
      unfold seg16AccY56
      linear_combination r3695
    have ha3 : 3021 * rho 16266 * rho 16267 = rho 16268 := by
      linear_combination r3696
    have ha4 : rho 16269 * (1 + rho 16268) = rho 16266 + rho 16267 := by
      linear_combination r3697
    have ha5 : rho 16270 * (1 - rho 16268) = rho 16265 - rho 16266 - rho 16267 := by
      linear_combination r3698
    have haddx :
        rho 16269 * (1 + 3021 * (rho 16264 * seg16AccX56 rho) * (rho 16263 * seg16AccY56 rho)) =
          rho 16264 * seg16AccX56 rho + rho 16263 * seg16AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16270 * (1 - 3021 * (rho 16264 * seg16AccX56 rho) * (rho 16263 * seg16AccY56 rho)) =
          (-1) * (rho 16264 * seg16AccX56 rho) - rho 16263 * seg16AccY56 rho +
            (seg16AccY56 rho - seg16AccX56 rho * (-1)) * (rho 16263 + rho 16264) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16270 * (1 - rho 16268) = rho 16265 - rho 16266 - rho 16267 := ha5
        _ = (-1) * rho 16266 - rho 16267 + (seg16AccY56 rho - seg16AccX56 rho * (-1)) * (rho 16263 + rho 16264) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX57 rho = seg16AccX56 rho - Bool.toZMod bit * (seg16AccX56 rho - rho 16269) := by
      have hd : rho 16271 = Bool.toZMod bit * (rho 16269 - seg16AccX56 rho) := by
        rw [← hbit]
        unfold seg16AccX56
        linear_combination -r3699
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY57 rho = seg16AccY56 rho - Bool.toZMod bit * (seg16AccY56 rho - rho 16270) := by
      have hd : rho 16272 = Bool.toZMod bit * (rho 16270 - seg16AccY56 rho) := by
        rw [← hbit]
        unfold seg16AccY56
        linear_combination -r3700
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16263 * rho 16264 = rho 16273 := by linear_combination r3701
    have hd1 : rho 16263 * rho 16263 = rho 16274 := by linear_combination r3702
    have hd2 : rho 16264 * rho 16264 = rho 16275 := by linear_combination r3703
    have hd3 : rho 16276 * (rho 16264 * rho 16264 + rho 16263 * rho 16263 * (-1)) = 2 * (rho 16263 * rho 16264) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 16277 * (2 - (rho 16264 * rho 16264 + rho 16263 * rho 16263 * (-1))) = rho 16264 * rho 16264 - rho 16263 * rho 16263 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
      ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
      ⟨(rho 16269 : Seg16.F), (rho 16270 : Seg16.F)⟩
      ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
      ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg16_rows57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3706 rho ∧ Seg16.relationRow3707 rho ∧ Seg16.relationRow3708 rho ∧ Seg16.relationRow3709 rho ∧ Seg16.relationRow3710 rho ∧ Seg16.relationRow3711 rho ∧ Seg16.relationRow3712 rho ∧ Seg16.relationRow3713 rho ∧ Seg16.relationRow3714 rho ∧ Seg16.relationRow3715 rho ∧ Seg16.relationRow3716 rho ∧ Seg16.relationRow3717 rho ∧ Seg16.relationRow3718 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩

theorem seg16_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15349 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩ := by
  obtain ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩ := seg16_rows57 rho h
  unfold Seg16.relationRow3706 at r3706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3706
  unfold Seg16.relationRow3707 at r3707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707
  unfold Seg16.relationRow3708 at r3708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3708
  unfold Seg16.relationRow3709 at r3709
  unfold Seg16.relationRow3710 at r3710
  unfold Seg16.relationRow3711 at r3711
  unfold Seg16.relationRow3712 at r3712
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3712
  unfold Seg16.relationRow3713 at r3713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3713
  unfold Seg16.relationRow3714 at r3714
  unfold Seg16.relationRow3715 at r3715
  unfold Seg16.relationRow3716 at r3716
  unfold Seg16.relationRow3717 at r3717
  unfold Seg16.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 15349 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩ := by
    have hnextx : seg16AccX58 rho = seg16AccX57 rho + rho 16284 := by
      unfold seg16AccX58 seg16AccX57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 57]
      ring
    have hnexty : seg16AccY58 rho = seg16AccY57 rho + rho 16285 := by
      unfold seg16AccY58 seg16AccY57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 57]
      ring
    have ha0 : (rho 16276 + rho 16277) * (seg16AccX57 rho + seg16AccY57 rho) = rho 16278 := by
      unfold seg16AccX57 seg16AccY57
      linear_combination r3706
    have ha1 : rho 16277 * seg16AccX57 rho = rho 16279 := by
      unfold seg16AccX57
      linear_combination r3707
    have ha2 : rho 16276 * seg16AccY57 rho = rho 16280 := by
      unfold seg16AccY57
      linear_combination r3708
    have ha3 : 3021 * rho 16279 * rho 16280 = rho 16281 := by
      linear_combination r3709
    have ha4 : rho 16282 * (1 + rho 16281) = rho 16279 + rho 16280 := by
      linear_combination r3710
    have ha5 : rho 16283 * (1 - rho 16281) = rho 16278 - rho 16279 - rho 16280 := by
      linear_combination r3711
    have haddx :
        rho 16282 * (1 + 3021 * (rho 16277 * seg16AccX57 rho) * (rho 16276 * seg16AccY57 rho)) =
          rho 16277 * seg16AccX57 rho + rho 16276 * seg16AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16283 * (1 - 3021 * (rho 16277 * seg16AccX57 rho) * (rho 16276 * seg16AccY57 rho)) =
          (-1) * (rho 16277 * seg16AccX57 rho) - rho 16276 * seg16AccY57 rho +
            (seg16AccY57 rho - seg16AccX57 rho * (-1)) * (rho 16276 + rho 16277) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16283 * (1 - rho 16281) = rho 16278 - rho 16279 - rho 16280 := ha5
        _ = (-1) * rho 16279 - rho 16280 + (seg16AccY57 rho - seg16AccX57 rho * (-1)) * (rho 16276 + rho 16277) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX58 rho = seg16AccX57 rho - Bool.toZMod bit * (seg16AccX57 rho - rho 16282) := by
      have hd : rho 16284 = Bool.toZMod bit * (rho 16282 - seg16AccX57 rho) := by
        rw [← hbit]
        unfold seg16AccX57
        linear_combination -r3712
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY58 rho = seg16AccY57 rho - Bool.toZMod bit * (seg16AccY57 rho - rho 16283) := by
      have hd : rho 16285 = Bool.toZMod bit * (rho 16283 - seg16AccY57 rho) := by
        rw [← hbit]
        unfold seg16AccY57
        linear_combination -r3713
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16276 * rho 16277 = rho 16286 := by linear_combination r3714
    have hd1 : rho 16276 * rho 16276 = rho 16287 := by linear_combination r3715
    have hd2 : rho 16277 * rho 16277 = rho 16288 := by linear_combination r3716
    have hd3 : rho 16289 * (rho 16277 * rho 16277 + rho 16276 * rho 16276 * (-1)) = 2 * (rho 16276 * rho 16277) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 16290 * (2 - (rho 16277 * rho 16277 + rho 16276 * rho 16276 * (-1))) = rho 16277 * rho 16277 - rho 16276 * rho 16276 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
      ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
      ⟨(rho 16282 : Seg16.F), (rho 16283 : Seg16.F)⟩
      ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
      ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg16_rows58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3719 rho ∧ Seg16.relationRow3720 rho ∧ Seg16.relationRow3721 rho ∧ Seg16.relationRow3722 rho ∧ Seg16.relationRow3723 rho ∧ Seg16.relationRow3724 rho ∧ Seg16.relationRow3725 rho ∧ Seg16.relationRow3726 rho ∧ Seg16.relationRow3727 rho ∧ Seg16.relationRow3728 rho ∧ Seg16.relationRow3729 rho ∧ Seg16.relationRow3730 rho ∧ Seg16.relationRow3731 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩

theorem seg16_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15350 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩ := by
  obtain ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩ := seg16_rows58 rho h
  unfold Seg16.relationRow3719 at r3719
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3719
  unfold Seg16.relationRow3720 at r3720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720
  unfold Seg16.relationRow3721 at r3721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3721
  unfold Seg16.relationRow3722 at r3722
  unfold Seg16.relationRow3723 at r3723
  unfold Seg16.relationRow3724 at r3724
  unfold Seg16.relationRow3725 at r3725
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3725
  unfold Seg16.relationRow3726 at r3726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3726
  unfold Seg16.relationRow3727 at r3727
  unfold Seg16.relationRow3728 at r3728
  unfold Seg16.relationRow3729 at r3729
  unfold Seg16.relationRow3730 at r3730
  unfold Seg16.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 15350 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩ := by
    have hnextx : seg16AccX59 rho = seg16AccX58 rho + rho 16297 := by
      unfold seg16AccX59 seg16AccX58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 58]
      ring
    have hnexty : seg16AccY59 rho = seg16AccY58 rho + rho 16298 := by
      unfold seg16AccY59 seg16AccY58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 58]
      ring
    have ha0 : (rho 16289 + rho 16290) * (seg16AccX58 rho + seg16AccY58 rho) = rho 16291 := by
      unfold seg16AccX58 seg16AccY58
      linear_combination r3719
    have ha1 : rho 16290 * seg16AccX58 rho = rho 16292 := by
      unfold seg16AccX58
      linear_combination r3720
    have ha2 : rho 16289 * seg16AccY58 rho = rho 16293 := by
      unfold seg16AccY58
      linear_combination r3721
    have ha3 : 3021 * rho 16292 * rho 16293 = rho 16294 := by
      linear_combination r3722
    have ha4 : rho 16295 * (1 + rho 16294) = rho 16292 + rho 16293 := by
      linear_combination r3723
    have ha5 : rho 16296 * (1 - rho 16294) = rho 16291 - rho 16292 - rho 16293 := by
      linear_combination r3724
    have haddx :
        rho 16295 * (1 + 3021 * (rho 16290 * seg16AccX58 rho) * (rho 16289 * seg16AccY58 rho)) =
          rho 16290 * seg16AccX58 rho + rho 16289 * seg16AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16296 * (1 - 3021 * (rho 16290 * seg16AccX58 rho) * (rho 16289 * seg16AccY58 rho)) =
          (-1) * (rho 16290 * seg16AccX58 rho) - rho 16289 * seg16AccY58 rho +
            (seg16AccY58 rho - seg16AccX58 rho * (-1)) * (rho 16289 + rho 16290) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16296 * (1 - rho 16294) = rho 16291 - rho 16292 - rho 16293 := ha5
        _ = (-1) * rho 16292 - rho 16293 + (seg16AccY58 rho - seg16AccX58 rho * (-1)) * (rho 16289 + rho 16290) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX59 rho = seg16AccX58 rho - Bool.toZMod bit * (seg16AccX58 rho - rho 16295) := by
      have hd : rho 16297 = Bool.toZMod bit * (rho 16295 - seg16AccX58 rho) := by
        rw [← hbit]
        unfold seg16AccX58
        linear_combination -r3725
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY59 rho = seg16AccY58 rho - Bool.toZMod bit * (seg16AccY58 rho - rho 16296) := by
      have hd : rho 16298 = Bool.toZMod bit * (rho 16296 - seg16AccY58 rho) := by
        rw [← hbit]
        unfold seg16AccY58
        linear_combination -r3726
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16289 * rho 16290 = rho 16299 := by linear_combination r3727
    have hd1 : rho 16289 * rho 16289 = rho 16300 := by linear_combination r3728
    have hd2 : rho 16290 * rho 16290 = rho 16301 := by linear_combination r3729
    have hd3 : rho 16302 * (rho 16290 * rho 16290 + rho 16289 * rho 16289 * (-1)) = 2 * (rho 16289 * rho 16290) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 16303 * (2 - (rho 16290 * rho 16290 + rho 16289 * rho 16289 * (-1))) = rho 16290 * rho 16290 - rho 16289 * rho 16289 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
      ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
      ⟨(rho 16295 : Seg16.F), (rho 16296 : Seg16.F)⟩
      ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
      ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg16_rows59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3732 rho ∧ Seg16.relationRow3733 rho ∧ Seg16.relationRow3734 rho ∧ Seg16.relationRow3735 rho ∧ Seg16.relationRow3736 rho ∧ Seg16.relationRow3737 rho ∧ Seg16.relationRow3738 rho ∧ Seg16.relationRow3739 rho ∧ Seg16.relationRow3740 rho ∧ Seg16.relationRow3741 rho ∧ Seg16.relationRow3742 rho ∧ Seg16.relationRow3743 rho ∧ Seg16.relationRow3744 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩

theorem seg16_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15351 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩ := by
  obtain ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩ := seg16_rows59 rho h
  unfold Seg16.relationRow3732 at r3732
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3732
  unfold Seg16.relationRow3733 at r3733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733
  unfold Seg16.relationRow3734 at r3734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3734
  unfold Seg16.relationRow3735 at r3735
  unfold Seg16.relationRow3736 at r3736
  unfold Seg16.relationRow3737 at r3737
  unfold Seg16.relationRow3738 at r3738
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3738
  unfold Seg16.relationRow3739 at r3739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3739
  unfold Seg16.relationRow3740 at r3740
  unfold Seg16.relationRow3741 at r3741
  unfold Seg16.relationRow3742 at r3742
  unfold Seg16.relationRow3743 at r3743
  unfold Seg16.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 15351 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩ := by
    have hnextx : seg16AccX60 rho = seg16AccX59 rho + rho 16310 := by
      unfold seg16AccX60 seg16AccX59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 59]
      ring
    have hnexty : seg16AccY60 rho = seg16AccY59 rho + rho 16311 := by
      unfold seg16AccY60 seg16AccY59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 59]
      ring
    have ha0 : (rho 16302 + rho 16303) * (seg16AccX59 rho + seg16AccY59 rho) = rho 16304 := by
      unfold seg16AccX59 seg16AccY59
      linear_combination r3732
    have ha1 : rho 16303 * seg16AccX59 rho = rho 16305 := by
      unfold seg16AccX59
      linear_combination r3733
    have ha2 : rho 16302 * seg16AccY59 rho = rho 16306 := by
      unfold seg16AccY59
      linear_combination r3734
    have ha3 : 3021 * rho 16305 * rho 16306 = rho 16307 := by
      linear_combination r3735
    have ha4 : rho 16308 * (1 + rho 16307) = rho 16305 + rho 16306 := by
      linear_combination r3736
    have ha5 : rho 16309 * (1 - rho 16307) = rho 16304 - rho 16305 - rho 16306 := by
      linear_combination r3737
    have haddx :
        rho 16308 * (1 + 3021 * (rho 16303 * seg16AccX59 rho) * (rho 16302 * seg16AccY59 rho)) =
          rho 16303 * seg16AccX59 rho + rho 16302 * seg16AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16309 * (1 - 3021 * (rho 16303 * seg16AccX59 rho) * (rho 16302 * seg16AccY59 rho)) =
          (-1) * (rho 16303 * seg16AccX59 rho) - rho 16302 * seg16AccY59 rho +
            (seg16AccY59 rho - seg16AccX59 rho * (-1)) * (rho 16302 + rho 16303) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16309 * (1 - rho 16307) = rho 16304 - rho 16305 - rho 16306 := ha5
        _ = (-1) * rho 16305 - rho 16306 + (seg16AccY59 rho - seg16AccX59 rho * (-1)) * (rho 16302 + rho 16303) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX60 rho = seg16AccX59 rho - Bool.toZMod bit * (seg16AccX59 rho - rho 16308) := by
      have hd : rho 16310 = Bool.toZMod bit * (rho 16308 - seg16AccX59 rho) := by
        rw [← hbit]
        unfold seg16AccX59
        linear_combination -r3738
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY60 rho = seg16AccY59 rho - Bool.toZMod bit * (seg16AccY59 rho - rho 16309) := by
      have hd : rho 16311 = Bool.toZMod bit * (rho 16309 - seg16AccY59 rho) := by
        rw [← hbit]
        unfold seg16AccY59
        linear_combination -r3739
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16302 * rho 16303 = rho 16312 := by linear_combination r3740
    have hd1 : rho 16302 * rho 16302 = rho 16313 := by linear_combination r3741
    have hd2 : rho 16303 * rho 16303 = rho 16314 := by linear_combination r3742
    have hd3 : rho 16315 * (rho 16303 * rho 16303 + rho 16302 * rho 16302 * (-1)) = 2 * (rho 16302 * rho 16303) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 16316 * (2 - (rho 16303 * rho 16303 + rho 16302 * rho 16302 * (-1))) = rho 16303 * rho 16303 - rho 16302 * rho 16302 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
      ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
      ⟨(rho 16308 : Seg16.F), (rho 16309 : Seg16.F)⟩
      ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
      ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg16_rows60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3745 rho ∧ Seg16.relationRow3746 rho ∧ Seg16.relationRow3747 rho ∧ Seg16.relationRow3748 rho ∧ Seg16.relationRow3749 rho ∧ Seg16.relationRow3750 rho ∧ Seg16.relationRow3751 rho ∧ Seg16.relationRow3752 rho ∧ Seg16.relationRow3753 rho ∧ Seg16.relationRow3754 rho ∧ Seg16.relationRow3755 rho ∧ Seg16.relationRow3756 rho ∧ Seg16.relationRow3757 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  exact ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩

theorem seg16_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15352 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩ := by
  obtain ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩ := seg16_rows60 rho h
  unfold Seg16.relationRow3745 at r3745
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3745
  unfold Seg16.relationRow3746 at r3746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746
  unfold Seg16.relationRow3747 at r3747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3747
  unfold Seg16.relationRow3748 at r3748
  unfold Seg16.relationRow3749 at r3749
  unfold Seg16.relationRow3750 at r3750
  unfold Seg16.relationRow3751 at r3751
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3751
  unfold Seg16.relationRow3752 at r3752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3752
  unfold Seg16.relationRow3753 at r3753
  unfold Seg16.relationRow3754 at r3754
  unfold Seg16.relationRow3755 at r3755
  unfold Seg16.relationRow3756 at r3756
  unfold Seg16.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 15352 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩ := by
    have hnextx : seg16AccX61 rho = seg16AccX60 rho + rho 16323 := by
      unfold seg16AccX61 seg16AccX60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 60]
      ring
    have hnexty : seg16AccY61 rho = seg16AccY60 rho + rho 16324 := by
      unfold seg16AccY61 seg16AccY60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 60]
      ring
    have ha0 : (rho 16315 + rho 16316) * (seg16AccX60 rho + seg16AccY60 rho) = rho 16317 := by
      unfold seg16AccX60 seg16AccY60
      linear_combination r3745
    have ha1 : rho 16316 * seg16AccX60 rho = rho 16318 := by
      unfold seg16AccX60
      linear_combination r3746
    have ha2 : rho 16315 * seg16AccY60 rho = rho 16319 := by
      unfold seg16AccY60
      linear_combination r3747
    have ha3 : 3021 * rho 16318 * rho 16319 = rho 16320 := by
      linear_combination r3748
    have ha4 : rho 16321 * (1 + rho 16320) = rho 16318 + rho 16319 := by
      linear_combination r3749
    have ha5 : rho 16322 * (1 - rho 16320) = rho 16317 - rho 16318 - rho 16319 := by
      linear_combination r3750
    have haddx :
        rho 16321 * (1 + 3021 * (rho 16316 * seg16AccX60 rho) * (rho 16315 * seg16AccY60 rho)) =
          rho 16316 * seg16AccX60 rho + rho 16315 * seg16AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16322 * (1 - 3021 * (rho 16316 * seg16AccX60 rho) * (rho 16315 * seg16AccY60 rho)) =
          (-1) * (rho 16316 * seg16AccX60 rho) - rho 16315 * seg16AccY60 rho +
            (seg16AccY60 rho - seg16AccX60 rho * (-1)) * (rho 16315 + rho 16316) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16322 * (1 - rho 16320) = rho 16317 - rho 16318 - rho 16319 := ha5
        _ = (-1) * rho 16318 - rho 16319 + (seg16AccY60 rho - seg16AccX60 rho * (-1)) * (rho 16315 + rho 16316) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX61 rho = seg16AccX60 rho - Bool.toZMod bit * (seg16AccX60 rho - rho 16321) := by
      have hd : rho 16323 = Bool.toZMod bit * (rho 16321 - seg16AccX60 rho) := by
        rw [← hbit]
        unfold seg16AccX60
        linear_combination -r3751
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY61 rho = seg16AccY60 rho - Bool.toZMod bit * (seg16AccY60 rho - rho 16322) := by
      have hd : rho 16324 = Bool.toZMod bit * (rho 16322 - seg16AccY60 rho) := by
        rw [← hbit]
        unfold seg16AccY60
        linear_combination -r3752
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16315 * rho 16316 = rho 16325 := by linear_combination r3753
    have hd1 : rho 16315 * rho 16315 = rho 16326 := by linear_combination r3754
    have hd2 : rho 16316 * rho 16316 = rho 16327 := by linear_combination r3755
    have hd3 : rho 16328 * (rho 16316 * rho 16316 + rho 16315 * rho 16315 * (-1)) = 2 * (rho 16315 * rho 16316) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 16329 * (2 - (rho 16316 * rho 16316 + rho 16315 * rho 16315 * (-1))) = rho 16316 * rho 16316 - rho 16315 * rho 16315 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
      ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
      ⟨(rho 16321 : Seg16.F), (rho 16322 : Seg16.F)⟩
      ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
      ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg16_rows61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3758 rho ∧ Seg16.relationRow3759 rho ∧ Seg16.relationRow3760 rho ∧ Seg16.relationRow3761 rho ∧ Seg16.relationRow3762 rho ∧ Seg16.relationRow3763 rho ∧ Seg16.relationRow3764 rho ∧ Seg16.relationRow3765 rho ∧ Seg16.relationRow3766 rho ∧ Seg16.relationRow3767 rho ∧ Seg16.relationRow3768 rho ∧ Seg16.relationRow3769 rho ∧ Seg16.relationRow3770 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩

theorem seg16_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15353 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩ := by
  obtain ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩ := seg16_rows61 rho h
  unfold Seg16.relationRow3758 at r3758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3758
  unfold Seg16.relationRow3759 at r3759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759
  unfold Seg16.relationRow3760 at r3760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3760
  unfold Seg16.relationRow3761 at r3761
  unfold Seg16.relationRow3762 at r3762
  unfold Seg16.relationRow3763 at r3763
  unfold Seg16.relationRow3764 at r3764
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3764
  unfold Seg16.relationRow3765 at r3765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3765
  unfold Seg16.relationRow3766 at r3766
  unfold Seg16.relationRow3767 at r3767
  unfold Seg16.relationRow3768 at r3768
  unfold Seg16.relationRow3769 at r3769
  unfold Seg16.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 15353 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩ := by
    have hnextx : seg16AccX62 rho = seg16AccX61 rho + rho 16336 := by
      unfold seg16AccX62 seg16AccX61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 61]
      ring
    have hnexty : seg16AccY62 rho = seg16AccY61 rho + rho 16337 := by
      unfold seg16AccY62 seg16AccY61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 61]
      ring
    have ha0 : (rho 16328 + rho 16329) * (seg16AccX61 rho + seg16AccY61 rho) = rho 16330 := by
      unfold seg16AccX61 seg16AccY61
      linear_combination r3758
    have ha1 : rho 16329 * seg16AccX61 rho = rho 16331 := by
      unfold seg16AccX61
      linear_combination r3759
    have ha2 : rho 16328 * seg16AccY61 rho = rho 16332 := by
      unfold seg16AccY61
      linear_combination r3760
    have ha3 : 3021 * rho 16331 * rho 16332 = rho 16333 := by
      linear_combination r3761
    have ha4 : rho 16334 * (1 + rho 16333) = rho 16331 + rho 16332 := by
      linear_combination r3762
    have ha5 : rho 16335 * (1 - rho 16333) = rho 16330 - rho 16331 - rho 16332 := by
      linear_combination r3763
    have haddx :
        rho 16334 * (1 + 3021 * (rho 16329 * seg16AccX61 rho) * (rho 16328 * seg16AccY61 rho)) =
          rho 16329 * seg16AccX61 rho + rho 16328 * seg16AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16335 * (1 - 3021 * (rho 16329 * seg16AccX61 rho) * (rho 16328 * seg16AccY61 rho)) =
          (-1) * (rho 16329 * seg16AccX61 rho) - rho 16328 * seg16AccY61 rho +
            (seg16AccY61 rho - seg16AccX61 rho * (-1)) * (rho 16328 + rho 16329) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16335 * (1 - rho 16333) = rho 16330 - rho 16331 - rho 16332 := ha5
        _ = (-1) * rho 16331 - rho 16332 + (seg16AccY61 rho - seg16AccX61 rho * (-1)) * (rho 16328 + rho 16329) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX62 rho = seg16AccX61 rho - Bool.toZMod bit * (seg16AccX61 rho - rho 16334) := by
      have hd : rho 16336 = Bool.toZMod bit * (rho 16334 - seg16AccX61 rho) := by
        rw [← hbit]
        unfold seg16AccX61
        linear_combination -r3764
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY62 rho = seg16AccY61 rho - Bool.toZMod bit * (seg16AccY61 rho - rho 16335) := by
      have hd : rho 16337 = Bool.toZMod bit * (rho 16335 - seg16AccY61 rho) := by
        rw [← hbit]
        unfold seg16AccY61
        linear_combination -r3765
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16328 * rho 16329 = rho 16338 := by linear_combination r3766
    have hd1 : rho 16328 * rho 16328 = rho 16339 := by linear_combination r3767
    have hd2 : rho 16329 * rho 16329 = rho 16340 := by linear_combination r3768
    have hd3 : rho 16341 * (rho 16329 * rho 16329 + rho 16328 * rho 16328 * (-1)) = 2 * (rho 16328 * rho 16329) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 16342 * (2 - (rho 16329 * rho 16329 + rho 16328 * rho 16328 * (-1))) = rho 16329 * rho 16329 - rho 16328 * rho 16328 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
      ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
      ⟨(rho 16334 : Seg16.F), (rho 16335 : Seg16.F)⟩
      ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
      ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg16_rows62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3771 rho ∧ Seg16.relationRow3772 rho ∧ Seg16.relationRow3773 rho ∧ Seg16.relationRow3774 rho ∧ Seg16.relationRow3775 rho ∧ Seg16.relationRow3776 rho ∧ Seg16.relationRow3777 rho ∧ Seg16.relationRow3778 rho ∧ Seg16.relationRow3779 rho ∧ Seg16.relationRow3780 rho ∧ Seg16.relationRow3781 rho ∧ Seg16.relationRow3782 rho ∧ Seg16.relationRow3783 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩

theorem seg16_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15354 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩ := by
  obtain ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩ := seg16_rows62 rho h
  unfold Seg16.relationRow3771 at r3771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3771
  unfold Seg16.relationRow3772 at r3772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772
  unfold Seg16.relationRow3773 at r3773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3773
  unfold Seg16.relationRow3774 at r3774
  unfold Seg16.relationRow3775 at r3775
  unfold Seg16.relationRow3776 at r3776
  unfold Seg16.relationRow3777 at r3777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3777
  unfold Seg16.relationRow3778 at r3778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3778
  unfold Seg16.relationRow3779 at r3779
  unfold Seg16.relationRow3780 at r3780
  unfold Seg16.relationRow3781 at r3781
  unfold Seg16.relationRow3782 at r3782
  unfold Seg16.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 15354 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩ := by
    have hnextx : seg16AccX63 rho = seg16AccX62 rho + rho 16349 := by
      unfold seg16AccX63 seg16AccX62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 62]
      ring
    have hnexty : seg16AccY63 rho = seg16AccY62 rho + rho 16350 := by
      unfold seg16AccY63 seg16AccY62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 62]
      ring
    have ha0 : (rho 16341 + rho 16342) * (seg16AccX62 rho + seg16AccY62 rho) = rho 16343 := by
      unfold seg16AccX62 seg16AccY62
      linear_combination r3771
    have ha1 : rho 16342 * seg16AccX62 rho = rho 16344 := by
      unfold seg16AccX62
      linear_combination r3772
    have ha2 : rho 16341 * seg16AccY62 rho = rho 16345 := by
      unfold seg16AccY62
      linear_combination r3773
    have ha3 : 3021 * rho 16344 * rho 16345 = rho 16346 := by
      linear_combination r3774
    have ha4 : rho 16347 * (1 + rho 16346) = rho 16344 + rho 16345 := by
      linear_combination r3775
    have ha5 : rho 16348 * (1 - rho 16346) = rho 16343 - rho 16344 - rho 16345 := by
      linear_combination r3776
    have haddx :
        rho 16347 * (1 + 3021 * (rho 16342 * seg16AccX62 rho) * (rho 16341 * seg16AccY62 rho)) =
          rho 16342 * seg16AccX62 rho + rho 16341 * seg16AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16348 * (1 - 3021 * (rho 16342 * seg16AccX62 rho) * (rho 16341 * seg16AccY62 rho)) =
          (-1) * (rho 16342 * seg16AccX62 rho) - rho 16341 * seg16AccY62 rho +
            (seg16AccY62 rho - seg16AccX62 rho * (-1)) * (rho 16341 + rho 16342) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16348 * (1 - rho 16346) = rho 16343 - rho 16344 - rho 16345 := ha5
        _ = (-1) * rho 16344 - rho 16345 + (seg16AccY62 rho - seg16AccX62 rho * (-1)) * (rho 16341 + rho 16342) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX63 rho = seg16AccX62 rho - Bool.toZMod bit * (seg16AccX62 rho - rho 16347) := by
      have hd : rho 16349 = Bool.toZMod bit * (rho 16347 - seg16AccX62 rho) := by
        rw [← hbit]
        unfold seg16AccX62
        linear_combination -r3777
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY63 rho = seg16AccY62 rho - Bool.toZMod bit * (seg16AccY62 rho - rho 16348) := by
      have hd : rho 16350 = Bool.toZMod bit * (rho 16348 - seg16AccY62 rho) := by
        rw [← hbit]
        unfold seg16AccY62
        linear_combination -r3778
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16341 * rho 16342 = rho 16351 := by linear_combination r3779
    have hd1 : rho 16341 * rho 16341 = rho 16352 := by linear_combination r3780
    have hd2 : rho 16342 * rho 16342 = rho 16353 := by linear_combination r3781
    have hd3 : rho 16354 * (rho 16342 * rho 16342 + rho 16341 * rho 16341 * (-1)) = 2 * (rho 16341 * rho 16342) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 16355 * (2 - (rho 16342 * rho 16342 + rho 16341 * rho 16341 * (-1))) = rho 16342 * rho 16342 - rho 16341 * rho 16341 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
      ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
      ⟨(rho 16347 : Seg16.F), (rho 16348 : Seg16.F)⟩
      ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
      ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg16_rows63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3784 rho ∧ Seg16.relationRow3785 rho ∧ Seg16.relationRow3786 rho ∧ Seg16.relationRow3787 rho ∧ Seg16.relationRow3788 rho ∧ Seg16.relationRow3789 rho ∧ Seg16.relationRow3790 rho ∧ Seg16.relationRow3791 rho ∧ Seg16.relationRow3792 rho ∧ Seg16.relationRow3793 rho ∧ Seg16.relationRow3794 rho ∧ Seg16.relationRow3795 rho ∧ Seg16.relationRow3796 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩

theorem seg16_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15355 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩ := by
  obtain ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩ := seg16_rows63 rho h
  unfold Seg16.relationRow3784 at r3784
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3784
  unfold Seg16.relationRow3785 at r3785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785
  unfold Seg16.relationRow3786 at r3786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3786
  unfold Seg16.relationRow3787 at r3787
  unfold Seg16.relationRow3788 at r3788
  unfold Seg16.relationRow3789 at r3789
  unfold Seg16.relationRow3790 at r3790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3790
  unfold Seg16.relationRow3791 at r3791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3791
  unfold Seg16.relationRow3792 at r3792
  unfold Seg16.relationRow3793 at r3793
  unfold Seg16.relationRow3794 at r3794
  unfold Seg16.relationRow3795 at r3795
  unfold Seg16.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 15355 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩ := by
    have hnextx : seg16AccX64 rho = seg16AccX63 rho + rho 16362 := by
      unfold seg16AccX64 seg16AccX63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 63]
      ring
    have hnexty : seg16AccY64 rho = seg16AccY63 rho + rho 16363 := by
      unfold seg16AccY64 seg16AccY63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 63]
      ring
    have ha0 : (rho 16354 + rho 16355) * (seg16AccX63 rho + seg16AccY63 rho) = rho 16356 := by
      unfold seg16AccX63 seg16AccY63
      linear_combination r3784
    have ha1 : rho 16355 * seg16AccX63 rho = rho 16357 := by
      unfold seg16AccX63
      linear_combination r3785
    have ha2 : rho 16354 * seg16AccY63 rho = rho 16358 := by
      unfold seg16AccY63
      linear_combination r3786
    have ha3 : 3021 * rho 16357 * rho 16358 = rho 16359 := by
      linear_combination r3787
    have ha4 : rho 16360 * (1 + rho 16359) = rho 16357 + rho 16358 := by
      linear_combination r3788
    have ha5 : rho 16361 * (1 - rho 16359) = rho 16356 - rho 16357 - rho 16358 := by
      linear_combination r3789
    have haddx :
        rho 16360 * (1 + 3021 * (rho 16355 * seg16AccX63 rho) * (rho 16354 * seg16AccY63 rho)) =
          rho 16355 * seg16AccX63 rho + rho 16354 * seg16AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16361 * (1 - 3021 * (rho 16355 * seg16AccX63 rho) * (rho 16354 * seg16AccY63 rho)) =
          (-1) * (rho 16355 * seg16AccX63 rho) - rho 16354 * seg16AccY63 rho +
            (seg16AccY63 rho - seg16AccX63 rho * (-1)) * (rho 16354 + rho 16355) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16361 * (1 - rho 16359) = rho 16356 - rho 16357 - rho 16358 := ha5
        _ = (-1) * rho 16357 - rho 16358 + (seg16AccY63 rho - seg16AccX63 rho * (-1)) * (rho 16354 + rho 16355) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX64 rho = seg16AccX63 rho - Bool.toZMod bit * (seg16AccX63 rho - rho 16360) := by
      have hd : rho 16362 = Bool.toZMod bit * (rho 16360 - seg16AccX63 rho) := by
        rw [← hbit]
        unfold seg16AccX63
        linear_combination -r3790
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY64 rho = seg16AccY63 rho - Bool.toZMod bit * (seg16AccY63 rho - rho 16361) := by
      have hd : rho 16363 = Bool.toZMod bit * (rho 16361 - seg16AccY63 rho) := by
        rw [← hbit]
        unfold seg16AccY63
        linear_combination -r3791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16354 * rho 16355 = rho 16364 := by linear_combination r3792
    have hd1 : rho 16354 * rho 16354 = rho 16365 := by linear_combination r3793
    have hd2 : rho 16355 * rho 16355 = rho 16366 := by linear_combination r3794
    have hd3 : rho 16367 * (rho 16355 * rho 16355 + rho 16354 * rho 16354 * (-1)) = 2 * (rho 16354 * rho 16355) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 16368 * (2 - (rho 16355 * rho 16355 + rho 16354 * rho 16354 * (-1))) = rho 16355 * rho 16355 - rho 16354 * rho 16354 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
      ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
      ⟨(rho 16360 : Seg16.F), (rho 16361 : Seg16.F)⟩
      ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
      ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg16_rows64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3797 rho ∧ Seg16.relationRow3798 rho ∧ Seg16.relationRow3799 rho ∧ Seg16.relationRow3800 rho ∧ Seg16.relationRow3801 rho ∧ Seg16.relationRow3802 rho ∧ Seg16.relationRow3803 rho ∧ Seg16.relationRow3804 rho ∧ Seg16.relationRow3805 rho ∧ Seg16.relationRow3806 rho ∧ Seg16.relationRow3807 rho ∧ Seg16.relationRow3808 rho ∧ Seg16.relationRow3809 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩

theorem seg16_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15356 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩ := by
  obtain ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩ := seg16_rows64 rho h
  unfold Seg16.relationRow3797 at r3797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3797
  unfold Seg16.relationRow3798 at r3798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798
  unfold Seg16.relationRow3799 at r3799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3799
  unfold Seg16.relationRow3800 at r3800
  unfold Seg16.relationRow3801 at r3801
  unfold Seg16.relationRow3802 at r3802
  unfold Seg16.relationRow3803 at r3803
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3803
  unfold Seg16.relationRow3804 at r3804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3804
  unfold Seg16.relationRow3805 at r3805
  unfold Seg16.relationRow3806 at r3806
  unfold Seg16.relationRow3807 at r3807
  unfold Seg16.relationRow3808 at r3808
  unfold Seg16.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 15356 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩ := by
    have hnextx : seg16AccX65 rho = seg16AccX64 rho + rho 16375 := by
      unfold seg16AccX65 seg16AccX64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 64]
      ring
    have hnexty : seg16AccY65 rho = seg16AccY64 rho + rho 16376 := by
      unfold seg16AccY65 seg16AccY64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 64]
      ring
    have ha0 : (rho 16367 + rho 16368) * (seg16AccX64 rho + seg16AccY64 rho) = rho 16369 := by
      unfold seg16AccX64 seg16AccY64
      linear_combination r3797
    have ha1 : rho 16368 * seg16AccX64 rho = rho 16370 := by
      unfold seg16AccX64
      linear_combination r3798
    have ha2 : rho 16367 * seg16AccY64 rho = rho 16371 := by
      unfold seg16AccY64
      linear_combination r3799
    have ha3 : 3021 * rho 16370 * rho 16371 = rho 16372 := by
      linear_combination r3800
    have ha4 : rho 16373 * (1 + rho 16372) = rho 16370 + rho 16371 := by
      linear_combination r3801
    have ha5 : rho 16374 * (1 - rho 16372) = rho 16369 - rho 16370 - rho 16371 := by
      linear_combination r3802
    have haddx :
        rho 16373 * (1 + 3021 * (rho 16368 * seg16AccX64 rho) * (rho 16367 * seg16AccY64 rho)) =
          rho 16368 * seg16AccX64 rho + rho 16367 * seg16AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16374 * (1 - 3021 * (rho 16368 * seg16AccX64 rho) * (rho 16367 * seg16AccY64 rho)) =
          (-1) * (rho 16368 * seg16AccX64 rho) - rho 16367 * seg16AccY64 rho +
            (seg16AccY64 rho - seg16AccX64 rho * (-1)) * (rho 16367 + rho 16368) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16374 * (1 - rho 16372) = rho 16369 - rho 16370 - rho 16371 := ha5
        _ = (-1) * rho 16370 - rho 16371 + (seg16AccY64 rho - seg16AccX64 rho * (-1)) * (rho 16367 + rho 16368) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX65 rho = seg16AccX64 rho - Bool.toZMod bit * (seg16AccX64 rho - rho 16373) := by
      have hd : rho 16375 = Bool.toZMod bit * (rho 16373 - seg16AccX64 rho) := by
        rw [← hbit]
        unfold seg16AccX64
        linear_combination -r3803
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY65 rho = seg16AccY64 rho - Bool.toZMod bit * (seg16AccY64 rho - rho 16374) := by
      have hd : rho 16376 = Bool.toZMod bit * (rho 16374 - seg16AccY64 rho) := by
        rw [← hbit]
        unfold seg16AccY64
        linear_combination -r3804
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16367 * rho 16368 = rho 16377 := by linear_combination r3805
    have hd1 : rho 16367 * rho 16367 = rho 16378 := by linear_combination r3806
    have hd2 : rho 16368 * rho 16368 = rho 16379 := by linear_combination r3807
    have hd3 : rho 16380 * (rho 16368 * rho 16368 + rho 16367 * rho 16367 * (-1)) = 2 * (rho 16367 * rho 16368) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 16381 * (2 - (rho 16368 * rho 16368 + rho 16367 * rho 16367 * (-1))) = rho 16368 * rho 16368 - rho 16367 * rho 16367 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
      ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
      ⟨(rho 16373 : Seg16.F), (rho 16374 : Seg16.F)⟩
      ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
      ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg16_rows65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3810 rho ∧ Seg16.relationRow3811 rho ∧ Seg16.relationRow3812 rho ∧ Seg16.relationRow3813 rho ∧ Seg16.relationRow3814 rho ∧ Seg16.relationRow3815 rho ∧ Seg16.relationRow3816 rho ∧ Seg16.relationRow3817 rho ∧ Seg16.relationRow3818 rho ∧ Seg16.relationRow3819 rho ∧ Seg16.relationRow3820 rho ∧ Seg16.relationRow3821 rho ∧ Seg16.relationRow3822 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩

theorem seg16_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15357 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩ := by
  obtain ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩ := seg16_rows65 rho h
  unfold Seg16.relationRow3810 at r3810
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3810
  unfold Seg16.relationRow3811 at r3811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811
  unfold Seg16.relationRow3812 at r3812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3812
  unfold Seg16.relationRow3813 at r3813
  unfold Seg16.relationRow3814 at r3814
  unfold Seg16.relationRow3815 at r3815
  unfold Seg16.relationRow3816 at r3816
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3816
  unfold Seg16.relationRow3817 at r3817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3817
  unfold Seg16.relationRow3818 at r3818
  unfold Seg16.relationRow3819 at r3819
  unfold Seg16.relationRow3820 at r3820
  unfold Seg16.relationRow3821 at r3821
  unfold Seg16.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 15357 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩ := by
    have hnextx : seg16AccX66 rho = seg16AccX65 rho + rho 16388 := by
      unfold seg16AccX66 seg16AccX65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 65]
      ring
    have hnexty : seg16AccY66 rho = seg16AccY65 rho + rho 16389 := by
      unfold seg16AccY66 seg16AccY65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 65]
      ring
    have ha0 : (rho 16380 + rho 16381) * (seg16AccX65 rho + seg16AccY65 rho) = rho 16382 := by
      unfold seg16AccX65 seg16AccY65
      linear_combination r3810
    have ha1 : rho 16381 * seg16AccX65 rho = rho 16383 := by
      unfold seg16AccX65
      linear_combination r3811
    have ha2 : rho 16380 * seg16AccY65 rho = rho 16384 := by
      unfold seg16AccY65
      linear_combination r3812
    have ha3 : 3021 * rho 16383 * rho 16384 = rho 16385 := by
      linear_combination r3813
    have ha4 : rho 16386 * (1 + rho 16385) = rho 16383 + rho 16384 := by
      linear_combination r3814
    have ha5 : rho 16387 * (1 - rho 16385) = rho 16382 - rho 16383 - rho 16384 := by
      linear_combination r3815
    have haddx :
        rho 16386 * (1 + 3021 * (rho 16381 * seg16AccX65 rho) * (rho 16380 * seg16AccY65 rho)) =
          rho 16381 * seg16AccX65 rho + rho 16380 * seg16AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16387 * (1 - 3021 * (rho 16381 * seg16AccX65 rho) * (rho 16380 * seg16AccY65 rho)) =
          (-1) * (rho 16381 * seg16AccX65 rho) - rho 16380 * seg16AccY65 rho +
            (seg16AccY65 rho - seg16AccX65 rho * (-1)) * (rho 16380 + rho 16381) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16387 * (1 - rho 16385) = rho 16382 - rho 16383 - rho 16384 := ha5
        _ = (-1) * rho 16383 - rho 16384 + (seg16AccY65 rho - seg16AccX65 rho * (-1)) * (rho 16380 + rho 16381) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX66 rho = seg16AccX65 rho - Bool.toZMod bit * (seg16AccX65 rho - rho 16386) := by
      have hd : rho 16388 = Bool.toZMod bit * (rho 16386 - seg16AccX65 rho) := by
        rw [← hbit]
        unfold seg16AccX65
        linear_combination -r3816
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY66 rho = seg16AccY65 rho - Bool.toZMod bit * (seg16AccY65 rho - rho 16387) := by
      have hd : rho 16389 = Bool.toZMod bit * (rho 16387 - seg16AccY65 rho) := by
        rw [← hbit]
        unfold seg16AccY65
        linear_combination -r3817
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16380 * rho 16381 = rho 16390 := by linear_combination r3818
    have hd1 : rho 16380 * rho 16380 = rho 16391 := by linear_combination r3819
    have hd2 : rho 16381 * rho 16381 = rho 16392 := by linear_combination r3820
    have hd3 : rho 16393 * (rho 16381 * rho 16381 + rho 16380 * rho 16380 * (-1)) = 2 * (rho 16380 * rho 16381) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 16394 * (2 - (rho 16381 * rho 16381 + rho 16380 * rho 16380 * (-1))) = rho 16381 * rho 16381 - rho 16380 * rho 16380 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
      ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
      ⟨(rho 16386 : Seg16.F), (rho 16387 : Seg16.F)⟩
      ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
      ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg16_hstep_c5 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg16_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg16_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg16_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg16_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg16_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg16_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg16_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg16_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg16_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg16_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
