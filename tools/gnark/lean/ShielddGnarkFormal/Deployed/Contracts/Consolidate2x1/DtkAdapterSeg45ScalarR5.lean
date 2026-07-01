import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3680 rho ∧ Seg45.relationRow3681 rho ∧ Seg45.relationRow3682 rho ∧ Seg45.relationRow3683 rho ∧ Seg45.relationRow3684 rho ∧ Seg45.relationRow3685 rho ∧ Seg45.relationRow3686 rho ∧ Seg45.relationRow3687 rho ∧ Seg45.relationRow3688 rho ∧ Seg45.relationRow3689 rho ∧ Seg45.relationRow3690 rho ∧ Seg45.relationRow3691 rho ∧ Seg45.relationRow3692 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩

theorem seg45_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩ := by
  obtain ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩ := seg45_rows55 rho h
  unfold Seg45.relationRow3680 at r3680
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3680
  unfold Seg45.relationRow3681 at r3681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681
  unfold Seg45.relationRow3682 at r3682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3682
  unfold Seg45.relationRow3683 at r3683
  unfold Seg45.relationRow3684 at r3684
  unfold Seg45.relationRow3685 at r3685
  unfold Seg45.relationRow3686 at r3686
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3686
  unfold Seg45.relationRow3687 at r3687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3687
  unfold Seg45.relationRow3688 at r3688
  unfold Seg45.relationRow3689 at r3689
  unfold Seg45.relationRow3690 at r3690
  unfold Seg45.relationRow3691 at r3691
  unfold Seg45.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 41003 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩ := by
    have hnextx : seg45AccX56 rho = seg45AccX55 rho + rho 41914 := by
      unfold seg45AccX56 seg45AccX55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 55]
      ring
    have hnexty : seg45AccY56 rho = seg45AccY55 rho + rho 41915 := by
      unfold seg45AccY56 seg45AccY55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 55]
      ring
    have ha0 : (rho 41906 + rho 41907) * (seg45AccX55 rho + seg45AccY55 rho) = rho 41908 := by
      unfold seg45AccX55 seg45AccY55
      linear_combination r3680
    have ha1 : rho 41907 * seg45AccX55 rho = rho 41909 := by
      unfold seg45AccX55
      linear_combination r3681
    have ha2 : rho 41906 * seg45AccY55 rho = rho 41910 := by
      unfold seg45AccY55
      linear_combination r3682
    have ha3 : 3021 * rho 41909 * rho 41910 = rho 41911 := by
      linear_combination r3683
    have ha4 : rho 41912 * (1 + rho 41911) = rho 41909 + rho 41910 := by
      linear_combination r3684
    have ha5 : rho 41913 * (1 - rho 41911) = rho 41908 - rho 41909 - rho 41910 := by
      linear_combination r3685
    have haddx :
        rho 41912 * (1 + 3021 * (rho 41907 * seg45AccX55 rho) * (rho 41906 * seg45AccY55 rho)) =
          rho 41907 * seg45AccX55 rho + rho 41906 * seg45AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41913 * (1 - 3021 * (rho 41907 * seg45AccX55 rho) * (rho 41906 * seg45AccY55 rho)) =
          (-1) * (rho 41907 * seg45AccX55 rho) - rho 41906 * seg45AccY55 rho +
            (seg45AccY55 rho - seg45AccX55 rho * (-1)) * (rho 41906 + rho 41907) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41913 * (1 - rho 41911) = rho 41908 - rho 41909 - rho 41910 := ha5
        _ = (-1) * rho 41909 - rho 41910 + (seg45AccY55 rho - seg45AccX55 rho * (-1)) * (rho 41906 + rho 41907) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX56 rho = seg45AccX55 rho - Bool.toZMod bit * (seg45AccX55 rho - rho 41912) := by
      have hd : rho 41914 = Bool.toZMod bit * (rho 41912 - seg45AccX55 rho) := by
        rw [← hbit]
        unfold seg45AccX55
        linear_combination -r3686
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY56 rho = seg45AccY55 rho - Bool.toZMod bit * (seg45AccY55 rho - rho 41913) := by
      have hd : rho 41915 = Bool.toZMod bit * (rho 41913 - seg45AccY55 rho) := by
        rw [← hbit]
        unfold seg45AccY55
        linear_combination -r3687
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41906 * rho 41907 = rho 41916 := by linear_combination r3688
    have hd1 : rho 41906 * rho 41906 = rho 41917 := by linear_combination r3689
    have hd2 : rho 41907 * rho 41907 = rho 41918 := by linear_combination r3690
    have hd3 : rho 41919 * (rho 41907 * rho 41907 + rho 41906 * rho 41906 * (-1)) = 2 * (rho 41906 * rho 41907) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 41920 * (2 - (rho 41907 * rho 41907 + rho 41906 * rho 41906 * (-1))) = rho 41907 * rho 41907 - rho 41906 * rho 41906 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
      ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
      ⟨(rho 41912 : Seg45.F), (rho 41913 : Seg45.F)⟩
      ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
      ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg45_rows56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3693 rho ∧ Seg45.relationRow3694 rho ∧ Seg45.relationRow3695 rho ∧ Seg45.relationRow3696 rho ∧ Seg45.relationRow3697 rho ∧ Seg45.relationRow3698 rho ∧ Seg45.relationRow3699 rho ∧ Seg45.relationRow3700 rho ∧ Seg45.relationRow3701 rho ∧ Seg45.relationRow3702 rho ∧ Seg45.relationRow3703 rho ∧ Seg45.relationRow3704 rho ∧ Seg45.relationRow3705 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩

theorem seg45_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩ := by
  obtain ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩ := seg45_rows56 rho h
  unfold Seg45.relationRow3693 at r3693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3693
  unfold Seg45.relationRow3694 at r3694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694
  unfold Seg45.relationRow3695 at r3695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3695
  unfold Seg45.relationRow3696 at r3696
  unfold Seg45.relationRow3697 at r3697
  unfold Seg45.relationRow3698 at r3698
  unfold Seg45.relationRow3699 at r3699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3699
  unfold Seg45.relationRow3700 at r3700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3700
  unfold Seg45.relationRow3701 at r3701
  unfold Seg45.relationRow3702 at r3702
  unfold Seg45.relationRow3703 at r3703
  unfold Seg45.relationRow3704 at r3704
  unfold Seg45.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 41004 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩ := by
    have hnextx : seg45AccX57 rho = seg45AccX56 rho + rho 41927 := by
      unfold seg45AccX57 seg45AccX56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 56]
      ring
    have hnexty : seg45AccY57 rho = seg45AccY56 rho + rho 41928 := by
      unfold seg45AccY57 seg45AccY56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 56]
      ring
    have ha0 : (rho 41919 + rho 41920) * (seg45AccX56 rho + seg45AccY56 rho) = rho 41921 := by
      unfold seg45AccX56 seg45AccY56
      linear_combination r3693
    have ha1 : rho 41920 * seg45AccX56 rho = rho 41922 := by
      unfold seg45AccX56
      linear_combination r3694
    have ha2 : rho 41919 * seg45AccY56 rho = rho 41923 := by
      unfold seg45AccY56
      linear_combination r3695
    have ha3 : 3021 * rho 41922 * rho 41923 = rho 41924 := by
      linear_combination r3696
    have ha4 : rho 41925 * (1 + rho 41924) = rho 41922 + rho 41923 := by
      linear_combination r3697
    have ha5 : rho 41926 * (1 - rho 41924) = rho 41921 - rho 41922 - rho 41923 := by
      linear_combination r3698
    have haddx :
        rho 41925 * (1 + 3021 * (rho 41920 * seg45AccX56 rho) * (rho 41919 * seg45AccY56 rho)) =
          rho 41920 * seg45AccX56 rho + rho 41919 * seg45AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41926 * (1 - 3021 * (rho 41920 * seg45AccX56 rho) * (rho 41919 * seg45AccY56 rho)) =
          (-1) * (rho 41920 * seg45AccX56 rho) - rho 41919 * seg45AccY56 rho +
            (seg45AccY56 rho - seg45AccX56 rho * (-1)) * (rho 41919 + rho 41920) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41926 * (1 - rho 41924) = rho 41921 - rho 41922 - rho 41923 := ha5
        _ = (-1) * rho 41922 - rho 41923 + (seg45AccY56 rho - seg45AccX56 rho * (-1)) * (rho 41919 + rho 41920) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX57 rho = seg45AccX56 rho - Bool.toZMod bit * (seg45AccX56 rho - rho 41925) := by
      have hd : rho 41927 = Bool.toZMod bit * (rho 41925 - seg45AccX56 rho) := by
        rw [← hbit]
        unfold seg45AccX56
        linear_combination -r3699
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY57 rho = seg45AccY56 rho - Bool.toZMod bit * (seg45AccY56 rho - rho 41926) := by
      have hd : rho 41928 = Bool.toZMod bit * (rho 41926 - seg45AccY56 rho) := by
        rw [← hbit]
        unfold seg45AccY56
        linear_combination -r3700
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41919 * rho 41920 = rho 41929 := by linear_combination r3701
    have hd1 : rho 41919 * rho 41919 = rho 41930 := by linear_combination r3702
    have hd2 : rho 41920 * rho 41920 = rho 41931 := by linear_combination r3703
    have hd3 : rho 41932 * (rho 41920 * rho 41920 + rho 41919 * rho 41919 * (-1)) = 2 * (rho 41919 * rho 41920) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 41933 * (2 - (rho 41920 * rho 41920 + rho 41919 * rho 41919 * (-1))) = rho 41920 * rho 41920 - rho 41919 * rho 41919 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
      ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
      ⟨(rho 41925 : Seg45.F), (rho 41926 : Seg45.F)⟩
      ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
      ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg45_rows57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3706 rho ∧ Seg45.relationRow3707 rho ∧ Seg45.relationRow3708 rho ∧ Seg45.relationRow3709 rho ∧ Seg45.relationRow3710 rho ∧ Seg45.relationRow3711 rho ∧ Seg45.relationRow3712 rho ∧ Seg45.relationRow3713 rho ∧ Seg45.relationRow3714 rho ∧ Seg45.relationRow3715 rho ∧ Seg45.relationRow3716 rho ∧ Seg45.relationRow3717 rho ∧ Seg45.relationRow3718 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩

theorem seg45_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩ := by
  obtain ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩ := seg45_rows57 rho h
  unfold Seg45.relationRow3706 at r3706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3706
  unfold Seg45.relationRow3707 at r3707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707
  unfold Seg45.relationRow3708 at r3708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3708
  unfold Seg45.relationRow3709 at r3709
  unfold Seg45.relationRow3710 at r3710
  unfold Seg45.relationRow3711 at r3711
  unfold Seg45.relationRow3712 at r3712
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3712
  unfold Seg45.relationRow3713 at r3713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3713
  unfold Seg45.relationRow3714 at r3714
  unfold Seg45.relationRow3715 at r3715
  unfold Seg45.relationRow3716 at r3716
  unfold Seg45.relationRow3717 at r3717
  unfold Seg45.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 41005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩ := by
    have hnextx : seg45AccX58 rho = seg45AccX57 rho + rho 41940 := by
      unfold seg45AccX58 seg45AccX57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 57]
      ring
    have hnexty : seg45AccY58 rho = seg45AccY57 rho + rho 41941 := by
      unfold seg45AccY58 seg45AccY57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 57]
      ring
    have ha0 : (rho 41932 + rho 41933) * (seg45AccX57 rho + seg45AccY57 rho) = rho 41934 := by
      unfold seg45AccX57 seg45AccY57
      linear_combination r3706
    have ha1 : rho 41933 * seg45AccX57 rho = rho 41935 := by
      unfold seg45AccX57
      linear_combination r3707
    have ha2 : rho 41932 * seg45AccY57 rho = rho 41936 := by
      unfold seg45AccY57
      linear_combination r3708
    have ha3 : 3021 * rho 41935 * rho 41936 = rho 41937 := by
      linear_combination r3709
    have ha4 : rho 41938 * (1 + rho 41937) = rho 41935 + rho 41936 := by
      linear_combination r3710
    have ha5 : rho 41939 * (1 - rho 41937) = rho 41934 - rho 41935 - rho 41936 := by
      linear_combination r3711
    have haddx :
        rho 41938 * (1 + 3021 * (rho 41933 * seg45AccX57 rho) * (rho 41932 * seg45AccY57 rho)) =
          rho 41933 * seg45AccX57 rho + rho 41932 * seg45AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41939 * (1 - 3021 * (rho 41933 * seg45AccX57 rho) * (rho 41932 * seg45AccY57 rho)) =
          (-1) * (rho 41933 * seg45AccX57 rho) - rho 41932 * seg45AccY57 rho +
            (seg45AccY57 rho - seg45AccX57 rho * (-1)) * (rho 41932 + rho 41933) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41939 * (1 - rho 41937) = rho 41934 - rho 41935 - rho 41936 := ha5
        _ = (-1) * rho 41935 - rho 41936 + (seg45AccY57 rho - seg45AccX57 rho * (-1)) * (rho 41932 + rho 41933) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX58 rho = seg45AccX57 rho - Bool.toZMod bit * (seg45AccX57 rho - rho 41938) := by
      have hd : rho 41940 = Bool.toZMod bit * (rho 41938 - seg45AccX57 rho) := by
        rw [← hbit]
        unfold seg45AccX57
        linear_combination -r3712
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY58 rho = seg45AccY57 rho - Bool.toZMod bit * (seg45AccY57 rho - rho 41939) := by
      have hd : rho 41941 = Bool.toZMod bit * (rho 41939 - seg45AccY57 rho) := by
        rw [← hbit]
        unfold seg45AccY57
        linear_combination -r3713
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41932 * rho 41933 = rho 41942 := by linear_combination r3714
    have hd1 : rho 41932 * rho 41932 = rho 41943 := by linear_combination r3715
    have hd2 : rho 41933 * rho 41933 = rho 41944 := by linear_combination r3716
    have hd3 : rho 41945 * (rho 41933 * rho 41933 + rho 41932 * rho 41932 * (-1)) = 2 * (rho 41932 * rho 41933) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 41946 * (2 - (rho 41933 * rho 41933 + rho 41932 * rho 41932 * (-1))) = rho 41933 * rho 41933 - rho 41932 * rho 41932 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
      ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
      ⟨(rho 41938 : Seg45.F), (rho 41939 : Seg45.F)⟩
      ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
      ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg45_rows58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3719 rho ∧ Seg45.relationRow3720 rho ∧ Seg45.relationRow3721 rho ∧ Seg45.relationRow3722 rho ∧ Seg45.relationRow3723 rho ∧ Seg45.relationRow3724 rho ∧ Seg45.relationRow3725 rho ∧ Seg45.relationRow3726 rho ∧ Seg45.relationRow3727 rho ∧ Seg45.relationRow3728 rho ∧ Seg45.relationRow3729 rho ∧ Seg45.relationRow3730 rho ∧ Seg45.relationRow3731 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩

theorem seg45_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩ := by
  obtain ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩ := seg45_rows58 rho h
  unfold Seg45.relationRow3719 at r3719
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3719
  unfold Seg45.relationRow3720 at r3720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720
  unfold Seg45.relationRow3721 at r3721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3721
  unfold Seg45.relationRow3722 at r3722
  unfold Seg45.relationRow3723 at r3723
  unfold Seg45.relationRow3724 at r3724
  unfold Seg45.relationRow3725 at r3725
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3725
  unfold Seg45.relationRow3726 at r3726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3726
  unfold Seg45.relationRow3727 at r3727
  unfold Seg45.relationRow3728 at r3728
  unfold Seg45.relationRow3729 at r3729
  unfold Seg45.relationRow3730 at r3730
  unfold Seg45.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 41006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩ := by
    have hnextx : seg45AccX59 rho = seg45AccX58 rho + rho 41953 := by
      unfold seg45AccX59 seg45AccX58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 58]
      ring
    have hnexty : seg45AccY59 rho = seg45AccY58 rho + rho 41954 := by
      unfold seg45AccY59 seg45AccY58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 58]
      ring
    have ha0 : (rho 41945 + rho 41946) * (seg45AccX58 rho + seg45AccY58 rho) = rho 41947 := by
      unfold seg45AccX58 seg45AccY58
      linear_combination r3719
    have ha1 : rho 41946 * seg45AccX58 rho = rho 41948 := by
      unfold seg45AccX58
      linear_combination r3720
    have ha2 : rho 41945 * seg45AccY58 rho = rho 41949 := by
      unfold seg45AccY58
      linear_combination r3721
    have ha3 : 3021 * rho 41948 * rho 41949 = rho 41950 := by
      linear_combination r3722
    have ha4 : rho 41951 * (1 + rho 41950) = rho 41948 + rho 41949 := by
      linear_combination r3723
    have ha5 : rho 41952 * (1 - rho 41950) = rho 41947 - rho 41948 - rho 41949 := by
      linear_combination r3724
    have haddx :
        rho 41951 * (1 + 3021 * (rho 41946 * seg45AccX58 rho) * (rho 41945 * seg45AccY58 rho)) =
          rho 41946 * seg45AccX58 rho + rho 41945 * seg45AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41952 * (1 - 3021 * (rho 41946 * seg45AccX58 rho) * (rho 41945 * seg45AccY58 rho)) =
          (-1) * (rho 41946 * seg45AccX58 rho) - rho 41945 * seg45AccY58 rho +
            (seg45AccY58 rho - seg45AccX58 rho * (-1)) * (rho 41945 + rho 41946) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41952 * (1 - rho 41950) = rho 41947 - rho 41948 - rho 41949 := ha5
        _ = (-1) * rho 41948 - rho 41949 + (seg45AccY58 rho - seg45AccX58 rho * (-1)) * (rho 41945 + rho 41946) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX59 rho = seg45AccX58 rho - Bool.toZMod bit * (seg45AccX58 rho - rho 41951) := by
      have hd : rho 41953 = Bool.toZMod bit * (rho 41951 - seg45AccX58 rho) := by
        rw [← hbit]
        unfold seg45AccX58
        linear_combination -r3725
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY59 rho = seg45AccY58 rho - Bool.toZMod bit * (seg45AccY58 rho - rho 41952) := by
      have hd : rho 41954 = Bool.toZMod bit * (rho 41952 - seg45AccY58 rho) := by
        rw [← hbit]
        unfold seg45AccY58
        linear_combination -r3726
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41945 * rho 41946 = rho 41955 := by linear_combination r3727
    have hd1 : rho 41945 * rho 41945 = rho 41956 := by linear_combination r3728
    have hd2 : rho 41946 * rho 41946 = rho 41957 := by linear_combination r3729
    have hd3 : rho 41958 * (rho 41946 * rho 41946 + rho 41945 * rho 41945 * (-1)) = 2 * (rho 41945 * rho 41946) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 41959 * (2 - (rho 41946 * rho 41946 + rho 41945 * rho 41945 * (-1))) = rho 41946 * rho 41946 - rho 41945 * rho 41945 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
      ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
      ⟨(rho 41951 : Seg45.F), (rho 41952 : Seg45.F)⟩
      ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
      ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg45_rows59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3732 rho ∧ Seg45.relationRow3733 rho ∧ Seg45.relationRow3734 rho ∧ Seg45.relationRow3735 rho ∧ Seg45.relationRow3736 rho ∧ Seg45.relationRow3737 rho ∧ Seg45.relationRow3738 rho ∧ Seg45.relationRow3739 rho ∧ Seg45.relationRow3740 rho ∧ Seg45.relationRow3741 rho ∧ Seg45.relationRow3742 rho ∧ Seg45.relationRow3743 rho ∧ Seg45.relationRow3744 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩

theorem seg45_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩ := by
  obtain ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩ := seg45_rows59 rho h
  unfold Seg45.relationRow3732 at r3732
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3732
  unfold Seg45.relationRow3733 at r3733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733
  unfold Seg45.relationRow3734 at r3734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3734
  unfold Seg45.relationRow3735 at r3735
  unfold Seg45.relationRow3736 at r3736
  unfold Seg45.relationRow3737 at r3737
  unfold Seg45.relationRow3738 at r3738
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3738
  unfold Seg45.relationRow3739 at r3739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3739
  unfold Seg45.relationRow3740 at r3740
  unfold Seg45.relationRow3741 at r3741
  unfold Seg45.relationRow3742 at r3742
  unfold Seg45.relationRow3743 at r3743
  unfold Seg45.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 41007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩ := by
    have hnextx : seg45AccX60 rho = seg45AccX59 rho + rho 41966 := by
      unfold seg45AccX60 seg45AccX59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 59]
      ring
    have hnexty : seg45AccY60 rho = seg45AccY59 rho + rho 41967 := by
      unfold seg45AccY60 seg45AccY59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 59]
      ring
    have ha0 : (rho 41958 + rho 41959) * (seg45AccX59 rho + seg45AccY59 rho) = rho 41960 := by
      unfold seg45AccX59 seg45AccY59
      linear_combination r3732
    have ha1 : rho 41959 * seg45AccX59 rho = rho 41961 := by
      unfold seg45AccX59
      linear_combination r3733
    have ha2 : rho 41958 * seg45AccY59 rho = rho 41962 := by
      unfold seg45AccY59
      linear_combination r3734
    have ha3 : 3021 * rho 41961 * rho 41962 = rho 41963 := by
      linear_combination r3735
    have ha4 : rho 41964 * (1 + rho 41963) = rho 41961 + rho 41962 := by
      linear_combination r3736
    have ha5 : rho 41965 * (1 - rho 41963) = rho 41960 - rho 41961 - rho 41962 := by
      linear_combination r3737
    have haddx :
        rho 41964 * (1 + 3021 * (rho 41959 * seg45AccX59 rho) * (rho 41958 * seg45AccY59 rho)) =
          rho 41959 * seg45AccX59 rho + rho 41958 * seg45AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41965 * (1 - 3021 * (rho 41959 * seg45AccX59 rho) * (rho 41958 * seg45AccY59 rho)) =
          (-1) * (rho 41959 * seg45AccX59 rho) - rho 41958 * seg45AccY59 rho +
            (seg45AccY59 rho - seg45AccX59 rho * (-1)) * (rho 41958 + rho 41959) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41965 * (1 - rho 41963) = rho 41960 - rho 41961 - rho 41962 := ha5
        _ = (-1) * rho 41961 - rho 41962 + (seg45AccY59 rho - seg45AccX59 rho * (-1)) * (rho 41958 + rho 41959) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX60 rho = seg45AccX59 rho - Bool.toZMod bit * (seg45AccX59 rho - rho 41964) := by
      have hd : rho 41966 = Bool.toZMod bit * (rho 41964 - seg45AccX59 rho) := by
        rw [← hbit]
        unfold seg45AccX59
        linear_combination -r3738
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY60 rho = seg45AccY59 rho - Bool.toZMod bit * (seg45AccY59 rho - rho 41965) := by
      have hd : rho 41967 = Bool.toZMod bit * (rho 41965 - seg45AccY59 rho) := by
        rw [← hbit]
        unfold seg45AccY59
        linear_combination -r3739
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41958 * rho 41959 = rho 41968 := by linear_combination r3740
    have hd1 : rho 41958 * rho 41958 = rho 41969 := by linear_combination r3741
    have hd2 : rho 41959 * rho 41959 = rho 41970 := by linear_combination r3742
    have hd3 : rho 41971 * (rho 41959 * rho 41959 + rho 41958 * rho 41958 * (-1)) = 2 * (rho 41958 * rho 41959) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 41972 * (2 - (rho 41959 * rho 41959 + rho 41958 * rho 41958 * (-1))) = rho 41959 * rho 41959 - rho 41958 * rho 41958 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
      ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
      ⟨(rho 41964 : Seg45.F), (rho 41965 : Seg45.F)⟩
      ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
      ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg45_rows60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3745 rho ∧ Seg45.relationRow3746 rho ∧ Seg45.relationRow3747 rho ∧ Seg45.relationRow3748 rho ∧ Seg45.relationRow3749 rho ∧ Seg45.relationRow3750 rho ∧ Seg45.relationRow3751 rho ∧ Seg45.relationRow3752 rho ∧ Seg45.relationRow3753 rho ∧ Seg45.relationRow3754 rho ∧ Seg45.relationRow3755 rho ∧ Seg45.relationRow3756 rho ∧ Seg45.relationRow3757 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  exact ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩

theorem seg45_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩ := by
  obtain ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩ := seg45_rows60 rho h
  unfold Seg45.relationRow3745 at r3745
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3745
  unfold Seg45.relationRow3746 at r3746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746
  unfold Seg45.relationRow3747 at r3747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3747
  unfold Seg45.relationRow3748 at r3748
  unfold Seg45.relationRow3749 at r3749
  unfold Seg45.relationRow3750 at r3750
  unfold Seg45.relationRow3751 at r3751
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3751
  unfold Seg45.relationRow3752 at r3752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3752
  unfold Seg45.relationRow3753 at r3753
  unfold Seg45.relationRow3754 at r3754
  unfold Seg45.relationRow3755 at r3755
  unfold Seg45.relationRow3756 at r3756
  unfold Seg45.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 41008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩ := by
    have hnextx : seg45AccX61 rho = seg45AccX60 rho + rho 41979 := by
      unfold seg45AccX61 seg45AccX60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 60]
      ring
    have hnexty : seg45AccY61 rho = seg45AccY60 rho + rho 41980 := by
      unfold seg45AccY61 seg45AccY60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 60]
      ring
    have ha0 : (rho 41971 + rho 41972) * (seg45AccX60 rho + seg45AccY60 rho) = rho 41973 := by
      unfold seg45AccX60 seg45AccY60
      linear_combination r3745
    have ha1 : rho 41972 * seg45AccX60 rho = rho 41974 := by
      unfold seg45AccX60
      linear_combination r3746
    have ha2 : rho 41971 * seg45AccY60 rho = rho 41975 := by
      unfold seg45AccY60
      linear_combination r3747
    have ha3 : 3021 * rho 41974 * rho 41975 = rho 41976 := by
      linear_combination r3748
    have ha4 : rho 41977 * (1 + rho 41976) = rho 41974 + rho 41975 := by
      linear_combination r3749
    have ha5 : rho 41978 * (1 - rho 41976) = rho 41973 - rho 41974 - rho 41975 := by
      linear_combination r3750
    have haddx :
        rho 41977 * (1 + 3021 * (rho 41972 * seg45AccX60 rho) * (rho 41971 * seg45AccY60 rho)) =
          rho 41972 * seg45AccX60 rho + rho 41971 * seg45AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41978 * (1 - 3021 * (rho 41972 * seg45AccX60 rho) * (rho 41971 * seg45AccY60 rho)) =
          (-1) * (rho 41972 * seg45AccX60 rho) - rho 41971 * seg45AccY60 rho +
            (seg45AccY60 rho - seg45AccX60 rho * (-1)) * (rho 41971 + rho 41972) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41978 * (1 - rho 41976) = rho 41973 - rho 41974 - rho 41975 := ha5
        _ = (-1) * rho 41974 - rho 41975 + (seg45AccY60 rho - seg45AccX60 rho * (-1)) * (rho 41971 + rho 41972) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX61 rho = seg45AccX60 rho - Bool.toZMod bit * (seg45AccX60 rho - rho 41977) := by
      have hd : rho 41979 = Bool.toZMod bit * (rho 41977 - seg45AccX60 rho) := by
        rw [← hbit]
        unfold seg45AccX60
        linear_combination -r3751
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY61 rho = seg45AccY60 rho - Bool.toZMod bit * (seg45AccY60 rho - rho 41978) := by
      have hd : rho 41980 = Bool.toZMod bit * (rho 41978 - seg45AccY60 rho) := by
        rw [← hbit]
        unfold seg45AccY60
        linear_combination -r3752
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41971 * rho 41972 = rho 41981 := by linear_combination r3753
    have hd1 : rho 41971 * rho 41971 = rho 41982 := by linear_combination r3754
    have hd2 : rho 41972 * rho 41972 = rho 41983 := by linear_combination r3755
    have hd3 : rho 41984 * (rho 41972 * rho 41972 + rho 41971 * rho 41971 * (-1)) = 2 * (rho 41971 * rho 41972) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 41985 * (2 - (rho 41972 * rho 41972 + rho 41971 * rho 41971 * (-1))) = rho 41972 * rho 41972 - rho 41971 * rho 41971 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
      ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
      ⟨(rho 41977 : Seg45.F), (rho 41978 : Seg45.F)⟩
      ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
      ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg45_rows61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3758 rho ∧ Seg45.relationRow3759 rho ∧ Seg45.relationRow3760 rho ∧ Seg45.relationRow3761 rho ∧ Seg45.relationRow3762 rho ∧ Seg45.relationRow3763 rho ∧ Seg45.relationRow3764 rho ∧ Seg45.relationRow3765 rho ∧ Seg45.relationRow3766 rho ∧ Seg45.relationRow3767 rho ∧ Seg45.relationRow3768 rho ∧ Seg45.relationRow3769 rho ∧ Seg45.relationRow3770 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩

theorem seg45_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩ := by
  obtain ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩ := seg45_rows61 rho h
  unfold Seg45.relationRow3758 at r3758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3758
  unfold Seg45.relationRow3759 at r3759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759
  unfold Seg45.relationRow3760 at r3760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3760
  unfold Seg45.relationRow3761 at r3761
  unfold Seg45.relationRow3762 at r3762
  unfold Seg45.relationRow3763 at r3763
  unfold Seg45.relationRow3764 at r3764
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3764
  unfold Seg45.relationRow3765 at r3765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3765
  unfold Seg45.relationRow3766 at r3766
  unfold Seg45.relationRow3767 at r3767
  unfold Seg45.relationRow3768 at r3768
  unfold Seg45.relationRow3769 at r3769
  unfold Seg45.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 41009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩ := by
    have hnextx : seg45AccX62 rho = seg45AccX61 rho + rho 41992 := by
      unfold seg45AccX62 seg45AccX61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 61]
      ring
    have hnexty : seg45AccY62 rho = seg45AccY61 rho + rho 41993 := by
      unfold seg45AccY62 seg45AccY61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 61]
      ring
    have ha0 : (rho 41984 + rho 41985) * (seg45AccX61 rho + seg45AccY61 rho) = rho 41986 := by
      unfold seg45AccX61 seg45AccY61
      linear_combination r3758
    have ha1 : rho 41985 * seg45AccX61 rho = rho 41987 := by
      unfold seg45AccX61
      linear_combination r3759
    have ha2 : rho 41984 * seg45AccY61 rho = rho 41988 := by
      unfold seg45AccY61
      linear_combination r3760
    have ha3 : 3021 * rho 41987 * rho 41988 = rho 41989 := by
      linear_combination r3761
    have ha4 : rho 41990 * (1 + rho 41989) = rho 41987 + rho 41988 := by
      linear_combination r3762
    have ha5 : rho 41991 * (1 - rho 41989) = rho 41986 - rho 41987 - rho 41988 := by
      linear_combination r3763
    have haddx :
        rho 41990 * (1 + 3021 * (rho 41985 * seg45AccX61 rho) * (rho 41984 * seg45AccY61 rho)) =
          rho 41985 * seg45AccX61 rho + rho 41984 * seg45AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41991 * (1 - 3021 * (rho 41985 * seg45AccX61 rho) * (rho 41984 * seg45AccY61 rho)) =
          (-1) * (rho 41985 * seg45AccX61 rho) - rho 41984 * seg45AccY61 rho +
            (seg45AccY61 rho - seg45AccX61 rho * (-1)) * (rho 41984 + rho 41985) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41991 * (1 - rho 41989) = rho 41986 - rho 41987 - rho 41988 := ha5
        _ = (-1) * rho 41987 - rho 41988 + (seg45AccY61 rho - seg45AccX61 rho * (-1)) * (rho 41984 + rho 41985) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX62 rho = seg45AccX61 rho - Bool.toZMod bit * (seg45AccX61 rho - rho 41990) := by
      have hd : rho 41992 = Bool.toZMod bit * (rho 41990 - seg45AccX61 rho) := by
        rw [← hbit]
        unfold seg45AccX61
        linear_combination -r3764
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY62 rho = seg45AccY61 rho - Bool.toZMod bit * (seg45AccY61 rho - rho 41991) := by
      have hd : rho 41993 = Bool.toZMod bit * (rho 41991 - seg45AccY61 rho) := by
        rw [← hbit]
        unfold seg45AccY61
        linear_combination -r3765
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41984 * rho 41985 = rho 41994 := by linear_combination r3766
    have hd1 : rho 41984 * rho 41984 = rho 41995 := by linear_combination r3767
    have hd2 : rho 41985 * rho 41985 = rho 41996 := by linear_combination r3768
    have hd3 : rho 41997 * (rho 41985 * rho 41985 + rho 41984 * rho 41984 * (-1)) = 2 * (rho 41984 * rho 41985) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 41998 * (2 - (rho 41985 * rho 41985 + rho 41984 * rho 41984 * (-1))) = rho 41985 * rho 41985 - rho 41984 * rho 41984 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
      ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
      ⟨(rho 41990 : Seg45.F), (rho 41991 : Seg45.F)⟩
      ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
      ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg45_rows62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3771 rho ∧ Seg45.relationRow3772 rho ∧ Seg45.relationRow3773 rho ∧ Seg45.relationRow3774 rho ∧ Seg45.relationRow3775 rho ∧ Seg45.relationRow3776 rho ∧ Seg45.relationRow3777 rho ∧ Seg45.relationRow3778 rho ∧ Seg45.relationRow3779 rho ∧ Seg45.relationRow3780 rho ∧ Seg45.relationRow3781 rho ∧ Seg45.relationRow3782 rho ∧ Seg45.relationRow3783 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩

theorem seg45_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩ := by
  obtain ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩ := seg45_rows62 rho h
  unfold Seg45.relationRow3771 at r3771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3771
  unfold Seg45.relationRow3772 at r3772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772
  unfold Seg45.relationRow3773 at r3773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3773
  unfold Seg45.relationRow3774 at r3774
  unfold Seg45.relationRow3775 at r3775
  unfold Seg45.relationRow3776 at r3776
  unfold Seg45.relationRow3777 at r3777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3777
  unfold Seg45.relationRow3778 at r3778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3778
  unfold Seg45.relationRow3779 at r3779
  unfold Seg45.relationRow3780 at r3780
  unfold Seg45.relationRow3781 at r3781
  unfold Seg45.relationRow3782 at r3782
  unfold Seg45.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 41010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩ := by
    have hnextx : seg45AccX63 rho = seg45AccX62 rho + rho 42005 := by
      unfold seg45AccX63 seg45AccX62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 62]
      ring
    have hnexty : seg45AccY63 rho = seg45AccY62 rho + rho 42006 := by
      unfold seg45AccY63 seg45AccY62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 62]
      ring
    have ha0 : (rho 41997 + rho 41998) * (seg45AccX62 rho + seg45AccY62 rho) = rho 41999 := by
      unfold seg45AccX62 seg45AccY62
      linear_combination r3771
    have ha1 : rho 41998 * seg45AccX62 rho = rho 42000 := by
      unfold seg45AccX62
      linear_combination r3772
    have ha2 : rho 41997 * seg45AccY62 rho = rho 42001 := by
      unfold seg45AccY62
      linear_combination r3773
    have ha3 : 3021 * rho 42000 * rho 42001 = rho 42002 := by
      linear_combination r3774
    have ha4 : rho 42003 * (1 + rho 42002) = rho 42000 + rho 42001 := by
      linear_combination r3775
    have ha5 : rho 42004 * (1 - rho 42002) = rho 41999 - rho 42000 - rho 42001 := by
      linear_combination r3776
    have haddx :
        rho 42003 * (1 + 3021 * (rho 41998 * seg45AccX62 rho) * (rho 41997 * seg45AccY62 rho)) =
          rho 41998 * seg45AccX62 rho + rho 41997 * seg45AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42004 * (1 - 3021 * (rho 41998 * seg45AccX62 rho) * (rho 41997 * seg45AccY62 rho)) =
          (-1) * (rho 41998 * seg45AccX62 rho) - rho 41997 * seg45AccY62 rho +
            (seg45AccY62 rho - seg45AccX62 rho * (-1)) * (rho 41997 + rho 41998) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42004 * (1 - rho 42002) = rho 41999 - rho 42000 - rho 42001 := ha5
        _ = (-1) * rho 42000 - rho 42001 + (seg45AccY62 rho - seg45AccX62 rho * (-1)) * (rho 41997 + rho 41998) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX63 rho = seg45AccX62 rho - Bool.toZMod bit * (seg45AccX62 rho - rho 42003) := by
      have hd : rho 42005 = Bool.toZMod bit * (rho 42003 - seg45AccX62 rho) := by
        rw [← hbit]
        unfold seg45AccX62
        linear_combination -r3777
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY63 rho = seg45AccY62 rho - Bool.toZMod bit * (seg45AccY62 rho - rho 42004) := by
      have hd : rho 42006 = Bool.toZMod bit * (rho 42004 - seg45AccY62 rho) := by
        rw [← hbit]
        unfold seg45AccY62
        linear_combination -r3778
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41997 * rho 41998 = rho 42007 := by linear_combination r3779
    have hd1 : rho 41997 * rho 41997 = rho 42008 := by linear_combination r3780
    have hd2 : rho 41998 * rho 41998 = rho 42009 := by linear_combination r3781
    have hd3 : rho 42010 * (rho 41998 * rho 41998 + rho 41997 * rho 41997 * (-1)) = 2 * (rho 41997 * rho 41998) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 42011 * (2 - (rho 41998 * rho 41998 + rho 41997 * rho 41997 * (-1))) = rho 41998 * rho 41998 - rho 41997 * rho 41997 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
      ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
      ⟨(rho 42003 : Seg45.F), (rho 42004 : Seg45.F)⟩
      ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
      ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg45_rows63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3784 rho ∧ Seg45.relationRow3785 rho ∧ Seg45.relationRow3786 rho ∧ Seg45.relationRow3787 rho ∧ Seg45.relationRow3788 rho ∧ Seg45.relationRow3789 rho ∧ Seg45.relationRow3790 rho ∧ Seg45.relationRow3791 rho ∧ Seg45.relationRow3792 rho ∧ Seg45.relationRow3793 rho ∧ Seg45.relationRow3794 rho ∧ Seg45.relationRow3795 rho ∧ Seg45.relationRow3796 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩

theorem seg45_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩ := by
  obtain ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩ := seg45_rows63 rho h
  unfold Seg45.relationRow3784 at r3784
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3784
  unfold Seg45.relationRow3785 at r3785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785
  unfold Seg45.relationRow3786 at r3786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3786
  unfold Seg45.relationRow3787 at r3787
  unfold Seg45.relationRow3788 at r3788
  unfold Seg45.relationRow3789 at r3789
  unfold Seg45.relationRow3790 at r3790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3790
  unfold Seg45.relationRow3791 at r3791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3791
  unfold Seg45.relationRow3792 at r3792
  unfold Seg45.relationRow3793 at r3793
  unfold Seg45.relationRow3794 at r3794
  unfold Seg45.relationRow3795 at r3795
  unfold Seg45.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 41011 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩ := by
    have hnextx : seg45AccX64 rho = seg45AccX63 rho + rho 42018 := by
      unfold seg45AccX64 seg45AccX63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 63]
      ring
    have hnexty : seg45AccY64 rho = seg45AccY63 rho + rho 42019 := by
      unfold seg45AccY64 seg45AccY63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 63]
      ring
    have ha0 : (rho 42010 + rho 42011) * (seg45AccX63 rho + seg45AccY63 rho) = rho 42012 := by
      unfold seg45AccX63 seg45AccY63
      linear_combination r3784
    have ha1 : rho 42011 * seg45AccX63 rho = rho 42013 := by
      unfold seg45AccX63
      linear_combination r3785
    have ha2 : rho 42010 * seg45AccY63 rho = rho 42014 := by
      unfold seg45AccY63
      linear_combination r3786
    have ha3 : 3021 * rho 42013 * rho 42014 = rho 42015 := by
      linear_combination r3787
    have ha4 : rho 42016 * (1 + rho 42015) = rho 42013 + rho 42014 := by
      linear_combination r3788
    have ha5 : rho 42017 * (1 - rho 42015) = rho 42012 - rho 42013 - rho 42014 := by
      linear_combination r3789
    have haddx :
        rho 42016 * (1 + 3021 * (rho 42011 * seg45AccX63 rho) * (rho 42010 * seg45AccY63 rho)) =
          rho 42011 * seg45AccX63 rho + rho 42010 * seg45AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42017 * (1 - 3021 * (rho 42011 * seg45AccX63 rho) * (rho 42010 * seg45AccY63 rho)) =
          (-1) * (rho 42011 * seg45AccX63 rho) - rho 42010 * seg45AccY63 rho +
            (seg45AccY63 rho - seg45AccX63 rho * (-1)) * (rho 42010 + rho 42011) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42017 * (1 - rho 42015) = rho 42012 - rho 42013 - rho 42014 := ha5
        _ = (-1) * rho 42013 - rho 42014 + (seg45AccY63 rho - seg45AccX63 rho * (-1)) * (rho 42010 + rho 42011) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX64 rho = seg45AccX63 rho - Bool.toZMod bit * (seg45AccX63 rho - rho 42016) := by
      have hd : rho 42018 = Bool.toZMod bit * (rho 42016 - seg45AccX63 rho) := by
        rw [← hbit]
        unfold seg45AccX63
        linear_combination -r3790
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY64 rho = seg45AccY63 rho - Bool.toZMod bit * (seg45AccY63 rho - rho 42017) := by
      have hd : rho 42019 = Bool.toZMod bit * (rho 42017 - seg45AccY63 rho) := by
        rw [← hbit]
        unfold seg45AccY63
        linear_combination -r3791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42010 * rho 42011 = rho 42020 := by linear_combination r3792
    have hd1 : rho 42010 * rho 42010 = rho 42021 := by linear_combination r3793
    have hd2 : rho 42011 * rho 42011 = rho 42022 := by linear_combination r3794
    have hd3 : rho 42023 * (rho 42011 * rho 42011 + rho 42010 * rho 42010 * (-1)) = 2 * (rho 42010 * rho 42011) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 42024 * (2 - (rho 42011 * rho 42011 + rho 42010 * rho 42010 * (-1))) = rho 42011 * rho 42011 - rho 42010 * rho 42010 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
      ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
      ⟨(rho 42016 : Seg45.F), (rho 42017 : Seg45.F)⟩
      ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
      ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg45_rows64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3797 rho ∧ Seg45.relationRow3798 rho ∧ Seg45.relationRow3799 rho ∧ Seg45.relationRow3800 rho ∧ Seg45.relationRow3801 rho ∧ Seg45.relationRow3802 rho ∧ Seg45.relationRow3803 rho ∧ Seg45.relationRow3804 rho ∧ Seg45.relationRow3805 rho ∧ Seg45.relationRow3806 rho ∧ Seg45.relationRow3807 rho ∧ Seg45.relationRow3808 rho ∧ Seg45.relationRow3809 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩

theorem seg45_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩ := by
  obtain ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩ := seg45_rows64 rho h
  unfold Seg45.relationRow3797 at r3797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3797
  unfold Seg45.relationRow3798 at r3798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798
  unfold Seg45.relationRow3799 at r3799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3799
  unfold Seg45.relationRow3800 at r3800
  unfold Seg45.relationRow3801 at r3801
  unfold Seg45.relationRow3802 at r3802
  unfold Seg45.relationRow3803 at r3803
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3803
  unfold Seg45.relationRow3804 at r3804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3804
  unfold Seg45.relationRow3805 at r3805
  unfold Seg45.relationRow3806 at r3806
  unfold Seg45.relationRow3807 at r3807
  unfold Seg45.relationRow3808 at r3808
  unfold Seg45.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 41012 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩ := by
    have hnextx : seg45AccX65 rho = seg45AccX64 rho + rho 42031 := by
      unfold seg45AccX65 seg45AccX64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 64]
      ring
    have hnexty : seg45AccY65 rho = seg45AccY64 rho + rho 42032 := by
      unfold seg45AccY65 seg45AccY64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 64]
      ring
    have ha0 : (rho 42023 + rho 42024) * (seg45AccX64 rho + seg45AccY64 rho) = rho 42025 := by
      unfold seg45AccX64 seg45AccY64
      linear_combination r3797
    have ha1 : rho 42024 * seg45AccX64 rho = rho 42026 := by
      unfold seg45AccX64
      linear_combination r3798
    have ha2 : rho 42023 * seg45AccY64 rho = rho 42027 := by
      unfold seg45AccY64
      linear_combination r3799
    have ha3 : 3021 * rho 42026 * rho 42027 = rho 42028 := by
      linear_combination r3800
    have ha4 : rho 42029 * (1 + rho 42028) = rho 42026 + rho 42027 := by
      linear_combination r3801
    have ha5 : rho 42030 * (1 - rho 42028) = rho 42025 - rho 42026 - rho 42027 := by
      linear_combination r3802
    have haddx :
        rho 42029 * (1 + 3021 * (rho 42024 * seg45AccX64 rho) * (rho 42023 * seg45AccY64 rho)) =
          rho 42024 * seg45AccX64 rho + rho 42023 * seg45AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42030 * (1 - 3021 * (rho 42024 * seg45AccX64 rho) * (rho 42023 * seg45AccY64 rho)) =
          (-1) * (rho 42024 * seg45AccX64 rho) - rho 42023 * seg45AccY64 rho +
            (seg45AccY64 rho - seg45AccX64 rho * (-1)) * (rho 42023 + rho 42024) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42030 * (1 - rho 42028) = rho 42025 - rho 42026 - rho 42027 := ha5
        _ = (-1) * rho 42026 - rho 42027 + (seg45AccY64 rho - seg45AccX64 rho * (-1)) * (rho 42023 + rho 42024) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX65 rho = seg45AccX64 rho - Bool.toZMod bit * (seg45AccX64 rho - rho 42029) := by
      have hd : rho 42031 = Bool.toZMod bit * (rho 42029 - seg45AccX64 rho) := by
        rw [← hbit]
        unfold seg45AccX64
        linear_combination -r3803
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY65 rho = seg45AccY64 rho - Bool.toZMod bit * (seg45AccY64 rho - rho 42030) := by
      have hd : rho 42032 = Bool.toZMod bit * (rho 42030 - seg45AccY64 rho) := by
        rw [← hbit]
        unfold seg45AccY64
        linear_combination -r3804
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42023 * rho 42024 = rho 42033 := by linear_combination r3805
    have hd1 : rho 42023 * rho 42023 = rho 42034 := by linear_combination r3806
    have hd2 : rho 42024 * rho 42024 = rho 42035 := by linear_combination r3807
    have hd3 : rho 42036 * (rho 42024 * rho 42024 + rho 42023 * rho 42023 * (-1)) = 2 * (rho 42023 * rho 42024) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 42037 * (2 - (rho 42024 * rho 42024 + rho 42023 * rho 42023 * (-1))) = rho 42024 * rho 42024 - rho 42023 * rho 42023 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
      ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
      ⟨(rho 42029 : Seg45.F), (rho 42030 : Seg45.F)⟩
      ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
      ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg45_rows65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3810 rho ∧ Seg45.relationRow3811 rho ∧ Seg45.relationRow3812 rho ∧ Seg45.relationRow3813 rho ∧ Seg45.relationRow3814 rho ∧ Seg45.relationRow3815 rho ∧ Seg45.relationRow3816 rho ∧ Seg45.relationRow3817 rho ∧ Seg45.relationRow3818 rho ∧ Seg45.relationRow3819 rho ∧ Seg45.relationRow3820 rho ∧ Seg45.relationRow3821 rho ∧ Seg45.relationRow3822 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩

theorem seg45_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩ := by
  obtain ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩ := seg45_rows65 rho h
  unfold Seg45.relationRow3810 at r3810
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3810
  unfold Seg45.relationRow3811 at r3811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811
  unfold Seg45.relationRow3812 at r3812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3812
  unfold Seg45.relationRow3813 at r3813
  unfold Seg45.relationRow3814 at r3814
  unfold Seg45.relationRow3815 at r3815
  unfold Seg45.relationRow3816 at r3816
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3816
  unfold Seg45.relationRow3817 at r3817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3817
  unfold Seg45.relationRow3818 at r3818
  unfold Seg45.relationRow3819 at r3819
  unfold Seg45.relationRow3820 at r3820
  unfold Seg45.relationRow3821 at r3821
  unfold Seg45.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 41013 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩ := by
    have hnextx : seg45AccX66 rho = seg45AccX65 rho + rho 42044 := by
      unfold seg45AccX66 seg45AccX65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 65]
      ring
    have hnexty : seg45AccY66 rho = seg45AccY65 rho + rho 42045 := by
      unfold seg45AccY66 seg45AccY65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 65]
      ring
    have ha0 : (rho 42036 + rho 42037) * (seg45AccX65 rho + seg45AccY65 rho) = rho 42038 := by
      unfold seg45AccX65 seg45AccY65
      linear_combination r3810
    have ha1 : rho 42037 * seg45AccX65 rho = rho 42039 := by
      unfold seg45AccX65
      linear_combination r3811
    have ha2 : rho 42036 * seg45AccY65 rho = rho 42040 := by
      unfold seg45AccY65
      linear_combination r3812
    have ha3 : 3021 * rho 42039 * rho 42040 = rho 42041 := by
      linear_combination r3813
    have ha4 : rho 42042 * (1 + rho 42041) = rho 42039 + rho 42040 := by
      linear_combination r3814
    have ha5 : rho 42043 * (1 - rho 42041) = rho 42038 - rho 42039 - rho 42040 := by
      linear_combination r3815
    have haddx :
        rho 42042 * (1 + 3021 * (rho 42037 * seg45AccX65 rho) * (rho 42036 * seg45AccY65 rho)) =
          rho 42037 * seg45AccX65 rho + rho 42036 * seg45AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42043 * (1 - 3021 * (rho 42037 * seg45AccX65 rho) * (rho 42036 * seg45AccY65 rho)) =
          (-1) * (rho 42037 * seg45AccX65 rho) - rho 42036 * seg45AccY65 rho +
            (seg45AccY65 rho - seg45AccX65 rho * (-1)) * (rho 42036 + rho 42037) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42043 * (1 - rho 42041) = rho 42038 - rho 42039 - rho 42040 := ha5
        _ = (-1) * rho 42039 - rho 42040 + (seg45AccY65 rho - seg45AccX65 rho * (-1)) * (rho 42036 + rho 42037) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX66 rho = seg45AccX65 rho - Bool.toZMod bit * (seg45AccX65 rho - rho 42042) := by
      have hd : rho 42044 = Bool.toZMod bit * (rho 42042 - seg45AccX65 rho) := by
        rw [← hbit]
        unfold seg45AccX65
        linear_combination -r3816
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY66 rho = seg45AccY65 rho - Bool.toZMod bit * (seg45AccY65 rho - rho 42043) := by
      have hd : rho 42045 = Bool.toZMod bit * (rho 42043 - seg45AccY65 rho) := by
        rw [← hbit]
        unfold seg45AccY65
        linear_combination -r3817
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42036 * rho 42037 = rho 42046 := by linear_combination r3818
    have hd1 : rho 42036 * rho 42036 = rho 42047 := by linear_combination r3819
    have hd2 : rho 42037 * rho 42037 = rho 42048 := by linear_combination r3820
    have hd3 : rho 42049 * (rho 42037 * rho 42037 + rho 42036 * rho 42036 * (-1)) = 2 * (rho 42036 * rho 42037) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 42050 * (2 - (rho 42037 * rho 42037 + rho 42036 * rho 42036 * (-1))) = rho 42037 * rho 42037 - rho 42036 * rho 42036 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
      ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
      ⟨(rho 42042 : Seg45.F), (rho 42043 : Seg45.F)⟩
      ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
      ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg45_hstep_c5 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg45_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg45_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg45_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg45_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg45_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg45_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg45_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg45_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg45_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg45_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
