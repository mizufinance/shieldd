import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3680 rho ∧ Seg34.relationRow3681 rho ∧ Seg34.relationRow3682 rho ∧ Seg34.relationRow3683 rho ∧ Seg34.relationRow3684 rho ∧ Seg34.relationRow3685 rho ∧ Seg34.relationRow3686 rho ∧ Seg34.relationRow3687 rho ∧ Seg34.relationRow3688 rho ∧ Seg34.relationRow3689 rho ∧ Seg34.relationRow3690 rho ∧ Seg34.relationRow3691 rho ∧ Seg34.relationRow3692 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩

theorem seg34_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩ := by
  obtain ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692⟩ := seg34_rows55 rho h
  unfold Seg34.relationRow3680 at r3680
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3680
  unfold Seg34.relationRow3681 at r3681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681
  unfold Seg34.relationRow3682 at r3682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3682
  unfold Seg34.relationRow3683 at r3683
  unfold Seg34.relationRow3684 at r3684
  unfold Seg34.relationRow3685 at r3685
  unfold Seg34.relationRow3686 at r3686
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3686
  unfold Seg34.relationRow3687 at r3687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3687
  unfold Seg34.relationRow3688 at r3688
  unfold Seg34.relationRow3689 at r3689
  unfold Seg34.relationRow3690 at r3690
  unfold Seg34.relationRow3691 at r3691
  unfold Seg34.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 34047 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩ := by
    have hnextx : seg34AccX56 rho = seg34AccX55 rho + rho 34958 := by
      unfold seg34AccX56 seg34AccX55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 55]
      ring
    have hnexty : seg34AccY56 rho = seg34AccY55 rho + rho 34959 := by
      unfold seg34AccY56 seg34AccY55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 55]
      ring
    have ha0 : (rho 34950 + rho 34951) * (seg34AccX55 rho + seg34AccY55 rho) = rho 34952 := by
      unfold seg34AccX55 seg34AccY55
      linear_combination r3680
    have ha1 : rho 34951 * seg34AccX55 rho = rho 34953 := by
      unfold seg34AccX55
      linear_combination r3681
    have ha2 : rho 34950 * seg34AccY55 rho = rho 34954 := by
      unfold seg34AccY55
      linear_combination r3682
    have ha3 : 3021 * rho 34953 * rho 34954 = rho 34955 := by
      linear_combination r3683
    have ha4 : rho 34956 * (1 + rho 34955) = rho 34953 + rho 34954 := by
      linear_combination r3684
    have ha5 : rho 34957 * (1 - rho 34955) = rho 34952 - rho 34953 - rho 34954 := by
      linear_combination r3685
    have haddx :
        rho 34956 * (1 + 3021 * (rho 34951 * seg34AccX55 rho) * (rho 34950 * seg34AccY55 rho)) =
          rho 34951 * seg34AccX55 rho + rho 34950 * seg34AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34957 * (1 - 3021 * (rho 34951 * seg34AccX55 rho) * (rho 34950 * seg34AccY55 rho)) =
          (-1) * (rho 34951 * seg34AccX55 rho) - rho 34950 * seg34AccY55 rho +
            (seg34AccY55 rho - seg34AccX55 rho * (-1)) * (rho 34950 + rho 34951) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34957 * (1 - rho 34955) = rho 34952 - rho 34953 - rho 34954 := ha5
        _ = (-1) * rho 34953 - rho 34954 + (seg34AccY55 rho - seg34AccX55 rho * (-1)) * (rho 34950 + rho 34951) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX56 rho = seg34AccX55 rho - Bool.toZMod bit * (seg34AccX55 rho - rho 34956) := by
      have hd : rho 34958 = Bool.toZMod bit * (rho 34956 - seg34AccX55 rho) := by
        rw [← hbit]
        unfold seg34AccX55
        linear_combination -r3686
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY56 rho = seg34AccY55 rho - Bool.toZMod bit * (seg34AccY55 rho - rho 34957) := by
      have hd : rho 34959 = Bool.toZMod bit * (rho 34957 - seg34AccY55 rho) := by
        rw [← hbit]
        unfold seg34AccY55
        linear_combination -r3687
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34950 * rho 34951 = rho 34960 := by linear_combination r3688
    have hd1 : rho 34950 * rho 34950 = rho 34961 := by linear_combination r3689
    have hd2 : rho 34951 * rho 34951 = rho 34962 := by linear_combination r3690
    have hd3 : rho 34963 * (rho 34951 * rho 34951 + rho 34950 * rho 34950 * (-1)) = 2 * (rho 34950 * rho 34951) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 34964 * (2 - (rho 34951 * rho 34951 + rho 34950 * rho 34950 * (-1))) = rho 34951 * rho 34951 - rho 34950 * rho 34950 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
      ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
      ⟨(rho 34956 : Seg34.F), (rho 34957 : Seg34.F)⟩
      ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
      ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg34_rows56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3693 rho ∧ Seg34.relationRow3694 rho ∧ Seg34.relationRow3695 rho ∧ Seg34.relationRow3696 rho ∧ Seg34.relationRow3697 rho ∧ Seg34.relationRow3698 rho ∧ Seg34.relationRow3699 rho ∧ Seg34.relationRow3700 rho ∧ Seg34.relationRow3701 rho ∧ Seg34.relationRow3702 rho ∧ Seg34.relationRow3703 rho ∧ Seg34.relationRow3704 rho ∧ Seg34.relationRow3705 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩

theorem seg34_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩ := by
  obtain ⟨r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705⟩ := seg34_rows56 rho h
  unfold Seg34.relationRow3693 at r3693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3693
  unfold Seg34.relationRow3694 at r3694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694
  unfold Seg34.relationRow3695 at r3695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3695
  unfold Seg34.relationRow3696 at r3696
  unfold Seg34.relationRow3697 at r3697
  unfold Seg34.relationRow3698 at r3698
  unfold Seg34.relationRow3699 at r3699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3699
  unfold Seg34.relationRow3700 at r3700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3700
  unfold Seg34.relationRow3701 at r3701
  unfold Seg34.relationRow3702 at r3702
  unfold Seg34.relationRow3703 at r3703
  unfold Seg34.relationRow3704 at r3704
  unfold Seg34.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 34048 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩ := by
    have hnextx : seg34AccX57 rho = seg34AccX56 rho + rho 34971 := by
      unfold seg34AccX57 seg34AccX56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 56]
      ring
    have hnexty : seg34AccY57 rho = seg34AccY56 rho + rho 34972 := by
      unfold seg34AccY57 seg34AccY56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 56]
      ring
    have ha0 : (rho 34963 + rho 34964) * (seg34AccX56 rho + seg34AccY56 rho) = rho 34965 := by
      unfold seg34AccX56 seg34AccY56
      linear_combination r3693
    have ha1 : rho 34964 * seg34AccX56 rho = rho 34966 := by
      unfold seg34AccX56
      linear_combination r3694
    have ha2 : rho 34963 * seg34AccY56 rho = rho 34967 := by
      unfold seg34AccY56
      linear_combination r3695
    have ha3 : 3021 * rho 34966 * rho 34967 = rho 34968 := by
      linear_combination r3696
    have ha4 : rho 34969 * (1 + rho 34968) = rho 34966 + rho 34967 := by
      linear_combination r3697
    have ha5 : rho 34970 * (1 - rho 34968) = rho 34965 - rho 34966 - rho 34967 := by
      linear_combination r3698
    have haddx :
        rho 34969 * (1 + 3021 * (rho 34964 * seg34AccX56 rho) * (rho 34963 * seg34AccY56 rho)) =
          rho 34964 * seg34AccX56 rho + rho 34963 * seg34AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34970 * (1 - 3021 * (rho 34964 * seg34AccX56 rho) * (rho 34963 * seg34AccY56 rho)) =
          (-1) * (rho 34964 * seg34AccX56 rho) - rho 34963 * seg34AccY56 rho +
            (seg34AccY56 rho - seg34AccX56 rho * (-1)) * (rho 34963 + rho 34964) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34970 * (1 - rho 34968) = rho 34965 - rho 34966 - rho 34967 := ha5
        _ = (-1) * rho 34966 - rho 34967 + (seg34AccY56 rho - seg34AccX56 rho * (-1)) * (rho 34963 + rho 34964) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX57 rho = seg34AccX56 rho - Bool.toZMod bit * (seg34AccX56 rho - rho 34969) := by
      have hd : rho 34971 = Bool.toZMod bit * (rho 34969 - seg34AccX56 rho) := by
        rw [← hbit]
        unfold seg34AccX56
        linear_combination -r3699
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY57 rho = seg34AccY56 rho - Bool.toZMod bit * (seg34AccY56 rho - rho 34970) := by
      have hd : rho 34972 = Bool.toZMod bit * (rho 34970 - seg34AccY56 rho) := by
        rw [← hbit]
        unfold seg34AccY56
        linear_combination -r3700
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34963 * rho 34964 = rho 34973 := by linear_combination r3701
    have hd1 : rho 34963 * rho 34963 = rho 34974 := by linear_combination r3702
    have hd2 : rho 34964 * rho 34964 = rho 34975 := by linear_combination r3703
    have hd3 : rho 34976 * (rho 34964 * rho 34964 + rho 34963 * rho 34963 * (-1)) = 2 * (rho 34963 * rho 34964) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 34977 * (2 - (rho 34964 * rho 34964 + rho 34963 * rho 34963 * (-1))) = rho 34964 * rho 34964 - rho 34963 * rho 34963 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
      ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
      ⟨(rho 34969 : Seg34.F), (rho 34970 : Seg34.F)⟩
      ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
      ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg34_rows57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3706 rho ∧ Seg34.relationRow3707 rho ∧ Seg34.relationRow3708 rho ∧ Seg34.relationRow3709 rho ∧ Seg34.relationRow3710 rho ∧ Seg34.relationRow3711 rho ∧ Seg34.relationRow3712 rho ∧ Seg34.relationRow3713 rho ∧ Seg34.relationRow3714 rho ∧ Seg34.relationRow3715 rho ∧ Seg34.relationRow3716 rho ∧ Seg34.relationRow3717 rho ∧ Seg34.relationRow3718 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩

theorem seg34_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩ := by
  obtain ⟨r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718⟩ := seg34_rows57 rho h
  unfold Seg34.relationRow3706 at r3706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3706
  unfold Seg34.relationRow3707 at r3707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707
  unfold Seg34.relationRow3708 at r3708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3708
  unfold Seg34.relationRow3709 at r3709
  unfold Seg34.relationRow3710 at r3710
  unfold Seg34.relationRow3711 at r3711
  unfold Seg34.relationRow3712 at r3712
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3712
  unfold Seg34.relationRow3713 at r3713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3713
  unfold Seg34.relationRow3714 at r3714
  unfold Seg34.relationRow3715 at r3715
  unfold Seg34.relationRow3716 at r3716
  unfold Seg34.relationRow3717 at r3717
  unfold Seg34.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 34049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩ := by
    have hnextx : seg34AccX58 rho = seg34AccX57 rho + rho 34984 := by
      unfold seg34AccX58 seg34AccX57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 57]
      ring
    have hnexty : seg34AccY58 rho = seg34AccY57 rho + rho 34985 := by
      unfold seg34AccY58 seg34AccY57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 57]
      ring
    have ha0 : (rho 34976 + rho 34977) * (seg34AccX57 rho + seg34AccY57 rho) = rho 34978 := by
      unfold seg34AccX57 seg34AccY57
      linear_combination r3706
    have ha1 : rho 34977 * seg34AccX57 rho = rho 34979 := by
      unfold seg34AccX57
      linear_combination r3707
    have ha2 : rho 34976 * seg34AccY57 rho = rho 34980 := by
      unfold seg34AccY57
      linear_combination r3708
    have ha3 : 3021 * rho 34979 * rho 34980 = rho 34981 := by
      linear_combination r3709
    have ha4 : rho 34982 * (1 + rho 34981) = rho 34979 + rho 34980 := by
      linear_combination r3710
    have ha5 : rho 34983 * (1 - rho 34981) = rho 34978 - rho 34979 - rho 34980 := by
      linear_combination r3711
    have haddx :
        rho 34982 * (1 + 3021 * (rho 34977 * seg34AccX57 rho) * (rho 34976 * seg34AccY57 rho)) =
          rho 34977 * seg34AccX57 rho + rho 34976 * seg34AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34983 * (1 - 3021 * (rho 34977 * seg34AccX57 rho) * (rho 34976 * seg34AccY57 rho)) =
          (-1) * (rho 34977 * seg34AccX57 rho) - rho 34976 * seg34AccY57 rho +
            (seg34AccY57 rho - seg34AccX57 rho * (-1)) * (rho 34976 + rho 34977) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34983 * (1 - rho 34981) = rho 34978 - rho 34979 - rho 34980 := ha5
        _ = (-1) * rho 34979 - rho 34980 + (seg34AccY57 rho - seg34AccX57 rho * (-1)) * (rho 34976 + rho 34977) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX58 rho = seg34AccX57 rho - Bool.toZMod bit * (seg34AccX57 rho - rho 34982) := by
      have hd : rho 34984 = Bool.toZMod bit * (rho 34982 - seg34AccX57 rho) := by
        rw [← hbit]
        unfold seg34AccX57
        linear_combination -r3712
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY58 rho = seg34AccY57 rho - Bool.toZMod bit * (seg34AccY57 rho - rho 34983) := by
      have hd : rho 34985 = Bool.toZMod bit * (rho 34983 - seg34AccY57 rho) := by
        rw [← hbit]
        unfold seg34AccY57
        linear_combination -r3713
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34976 * rho 34977 = rho 34986 := by linear_combination r3714
    have hd1 : rho 34976 * rho 34976 = rho 34987 := by linear_combination r3715
    have hd2 : rho 34977 * rho 34977 = rho 34988 := by linear_combination r3716
    have hd3 : rho 34989 * (rho 34977 * rho 34977 + rho 34976 * rho 34976 * (-1)) = 2 * (rho 34976 * rho 34977) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 34990 * (2 - (rho 34977 * rho 34977 + rho 34976 * rho 34976 * (-1))) = rho 34977 * rho 34977 - rho 34976 * rho 34976 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
      ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
      ⟨(rho 34982 : Seg34.F), (rho 34983 : Seg34.F)⟩
      ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
      ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg34_rows58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3719 rho ∧ Seg34.relationRow3720 rho ∧ Seg34.relationRow3721 rho ∧ Seg34.relationRow3722 rho ∧ Seg34.relationRow3723 rho ∧ Seg34.relationRow3724 rho ∧ Seg34.relationRow3725 rho ∧ Seg34.relationRow3726 rho ∧ Seg34.relationRow3727 rho ∧ Seg34.relationRow3728 rho ∧ Seg34.relationRow3729 rho ∧ Seg34.relationRow3730 rho ∧ Seg34.relationRow3731 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩

theorem seg34_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩ := by
  obtain ⟨r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731⟩ := seg34_rows58 rho h
  unfold Seg34.relationRow3719 at r3719
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3719
  unfold Seg34.relationRow3720 at r3720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720
  unfold Seg34.relationRow3721 at r3721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3721
  unfold Seg34.relationRow3722 at r3722
  unfold Seg34.relationRow3723 at r3723
  unfold Seg34.relationRow3724 at r3724
  unfold Seg34.relationRow3725 at r3725
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3725
  unfold Seg34.relationRow3726 at r3726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3726
  unfold Seg34.relationRow3727 at r3727
  unfold Seg34.relationRow3728 at r3728
  unfold Seg34.relationRow3729 at r3729
  unfold Seg34.relationRow3730 at r3730
  unfold Seg34.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 34050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩ := by
    have hnextx : seg34AccX59 rho = seg34AccX58 rho + rho 34997 := by
      unfold seg34AccX59 seg34AccX58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 58]
      ring
    have hnexty : seg34AccY59 rho = seg34AccY58 rho + rho 34998 := by
      unfold seg34AccY59 seg34AccY58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 58]
      ring
    have ha0 : (rho 34989 + rho 34990) * (seg34AccX58 rho + seg34AccY58 rho) = rho 34991 := by
      unfold seg34AccX58 seg34AccY58
      linear_combination r3719
    have ha1 : rho 34990 * seg34AccX58 rho = rho 34992 := by
      unfold seg34AccX58
      linear_combination r3720
    have ha2 : rho 34989 * seg34AccY58 rho = rho 34993 := by
      unfold seg34AccY58
      linear_combination r3721
    have ha3 : 3021 * rho 34992 * rho 34993 = rho 34994 := by
      linear_combination r3722
    have ha4 : rho 34995 * (1 + rho 34994) = rho 34992 + rho 34993 := by
      linear_combination r3723
    have ha5 : rho 34996 * (1 - rho 34994) = rho 34991 - rho 34992 - rho 34993 := by
      linear_combination r3724
    have haddx :
        rho 34995 * (1 + 3021 * (rho 34990 * seg34AccX58 rho) * (rho 34989 * seg34AccY58 rho)) =
          rho 34990 * seg34AccX58 rho + rho 34989 * seg34AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34996 * (1 - 3021 * (rho 34990 * seg34AccX58 rho) * (rho 34989 * seg34AccY58 rho)) =
          (-1) * (rho 34990 * seg34AccX58 rho) - rho 34989 * seg34AccY58 rho +
            (seg34AccY58 rho - seg34AccX58 rho * (-1)) * (rho 34989 + rho 34990) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34996 * (1 - rho 34994) = rho 34991 - rho 34992 - rho 34993 := ha5
        _ = (-1) * rho 34992 - rho 34993 + (seg34AccY58 rho - seg34AccX58 rho * (-1)) * (rho 34989 + rho 34990) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX59 rho = seg34AccX58 rho - Bool.toZMod bit * (seg34AccX58 rho - rho 34995) := by
      have hd : rho 34997 = Bool.toZMod bit * (rho 34995 - seg34AccX58 rho) := by
        rw [← hbit]
        unfold seg34AccX58
        linear_combination -r3725
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY59 rho = seg34AccY58 rho - Bool.toZMod bit * (seg34AccY58 rho - rho 34996) := by
      have hd : rho 34998 = Bool.toZMod bit * (rho 34996 - seg34AccY58 rho) := by
        rw [← hbit]
        unfold seg34AccY58
        linear_combination -r3726
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34989 * rho 34990 = rho 34999 := by linear_combination r3727
    have hd1 : rho 34989 * rho 34989 = rho 35000 := by linear_combination r3728
    have hd2 : rho 34990 * rho 34990 = rho 35001 := by linear_combination r3729
    have hd3 : rho 35002 * (rho 34990 * rho 34990 + rho 34989 * rho 34989 * (-1)) = 2 * (rho 34989 * rho 34990) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 35003 * (2 - (rho 34990 * rho 34990 + rho 34989 * rho 34989 * (-1))) = rho 34990 * rho 34990 - rho 34989 * rho 34989 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
      ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
      ⟨(rho 34995 : Seg34.F), (rho 34996 : Seg34.F)⟩
      ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
      ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg34_rows59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3732 rho ∧ Seg34.relationRow3733 rho ∧ Seg34.relationRow3734 rho ∧ Seg34.relationRow3735 rho ∧ Seg34.relationRow3736 rho ∧ Seg34.relationRow3737 rho ∧ Seg34.relationRow3738 rho ∧ Seg34.relationRow3739 rho ∧ Seg34.relationRow3740 rho ∧ Seg34.relationRow3741 rho ∧ Seg34.relationRow3742 rho ∧ Seg34.relationRow3743 rho ∧ Seg34.relationRow3744 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩

theorem seg34_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩ := by
  obtain ⟨r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744⟩ := seg34_rows59 rho h
  unfold Seg34.relationRow3732 at r3732
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3732
  unfold Seg34.relationRow3733 at r3733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733
  unfold Seg34.relationRow3734 at r3734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3734
  unfold Seg34.relationRow3735 at r3735
  unfold Seg34.relationRow3736 at r3736
  unfold Seg34.relationRow3737 at r3737
  unfold Seg34.relationRow3738 at r3738
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3738
  unfold Seg34.relationRow3739 at r3739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3739
  unfold Seg34.relationRow3740 at r3740
  unfold Seg34.relationRow3741 at r3741
  unfold Seg34.relationRow3742 at r3742
  unfold Seg34.relationRow3743 at r3743
  unfold Seg34.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 34051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩ := by
    have hnextx : seg34AccX60 rho = seg34AccX59 rho + rho 35010 := by
      unfold seg34AccX60 seg34AccX59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 59]
      ring
    have hnexty : seg34AccY60 rho = seg34AccY59 rho + rho 35011 := by
      unfold seg34AccY60 seg34AccY59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 59]
      ring
    have ha0 : (rho 35002 + rho 35003) * (seg34AccX59 rho + seg34AccY59 rho) = rho 35004 := by
      unfold seg34AccX59 seg34AccY59
      linear_combination r3732
    have ha1 : rho 35003 * seg34AccX59 rho = rho 35005 := by
      unfold seg34AccX59
      linear_combination r3733
    have ha2 : rho 35002 * seg34AccY59 rho = rho 35006 := by
      unfold seg34AccY59
      linear_combination r3734
    have ha3 : 3021 * rho 35005 * rho 35006 = rho 35007 := by
      linear_combination r3735
    have ha4 : rho 35008 * (1 + rho 35007) = rho 35005 + rho 35006 := by
      linear_combination r3736
    have ha5 : rho 35009 * (1 - rho 35007) = rho 35004 - rho 35005 - rho 35006 := by
      linear_combination r3737
    have haddx :
        rho 35008 * (1 + 3021 * (rho 35003 * seg34AccX59 rho) * (rho 35002 * seg34AccY59 rho)) =
          rho 35003 * seg34AccX59 rho + rho 35002 * seg34AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35009 * (1 - 3021 * (rho 35003 * seg34AccX59 rho) * (rho 35002 * seg34AccY59 rho)) =
          (-1) * (rho 35003 * seg34AccX59 rho) - rho 35002 * seg34AccY59 rho +
            (seg34AccY59 rho - seg34AccX59 rho * (-1)) * (rho 35002 + rho 35003) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35009 * (1 - rho 35007) = rho 35004 - rho 35005 - rho 35006 := ha5
        _ = (-1) * rho 35005 - rho 35006 + (seg34AccY59 rho - seg34AccX59 rho * (-1)) * (rho 35002 + rho 35003) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX60 rho = seg34AccX59 rho - Bool.toZMod bit * (seg34AccX59 rho - rho 35008) := by
      have hd : rho 35010 = Bool.toZMod bit * (rho 35008 - seg34AccX59 rho) := by
        rw [← hbit]
        unfold seg34AccX59
        linear_combination -r3738
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY60 rho = seg34AccY59 rho - Bool.toZMod bit * (seg34AccY59 rho - rho 35009) := by
      have hd : rho 35011 = Bool.toZMod bit * (rho 35009 - seg34AccY59 rho) := by
        rw [← hbit]
        unfold seg34AccY59
        linear_combination -r3739
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35002 * rho 35003 = rho 35012 := by linear_combination r3740
    have hd1 : rho 35002 * rho 35002 = rho 35013 := by linear_combination r3741
    have hd2 : rho 35003 * rho 35003 = rho 35014 := by linear_combination r3742
    have hd3 : rho 35015 * (rho 35003 * rho 35003 + rho 35002 * rho 35002 * (-1)) = 2 * (rho 35002 * rho 35003) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 35016 * (2 - (rho 35003 * rho 35003 + rho 35002 * rho 35002 * (-1))) = rho 35003 * rho 35003 - rho 35002 * rho 35002 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
      ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
      ⟨(rho 35008 : Seg34.F), (rho 35009 : Seg34.F)⟩
      ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
      ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg34_rows60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3745 rho ∧ Seg34.relationRow3746 rho ∧ Seg34.relationRow3747 rho ∧ Seg34.relationRow3748 rho ∧ Seg34.relationRow3749 rho ∧ Seg34.relationRow3750 rho ∧ Seg34.relationRow3751 rho ∧ Seg34.relationRow3752 rho ∧ Seg34.relationRow3753 rho ∧ Seg34.relationRow3754 rho ∧ Seg34.relationRow3755 rho ∧ Seg34.relationRow3756 rho ∧ Seg34.relationRow3757 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  exact ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩

theorem seg34_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩ := by
  obtain ⟨r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757⟩ := seg34_rows60 rho h
  unfold Seg34.relationRow3745 at r3745
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3745
  unfold Seg34.relationRow3746 at r3746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746
  unfold Seg34.relationRow3747 at r3747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3747
  unfold Seg34.relationRow3748 at r3748
  unfold Seg34.relationRow3749 at r3749
  unfold Seg34.relationRow3750 at r3750
  unfold Seg34.relationRow3751 at r3751
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3751
  unfold Seg34.relationRow3752 at r3752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3752
  unfold Seg34.relationRow3753 at r3753
  unfold Seg34.relationRow3754 at r3754
  unfold Seg34.relationRow3755 at r3755
  unfold Seg34.relationRow3756 at r3756
  unfold Seg34.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 34052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩ := by
    have hnextx : seg34AccX61 rho = seg34AccX60 rho + rho 35023 := by
      unfold seg34AccX61 seg34AccX60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 60]
      ring
    have hnexty : seg34AccY61 rho = seg34AccY60 rho + rho 35024 := by
      unfold seg34AccY61 seg34AccY60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 60]
      ring
    have ha0 : (rho 35015 + rho 35016) * (seg34AccX60 rho + seg34AccY60 rho) = rho 35017 := by
      unfold seg34AccX60 seg34AccY60
      linear_combination r3745
    have ha1 : rho 35016 * seg34AccX60 rho = rho 35018 := by
      unfold seg34AccX60
      linear_combination r3746
    have ha2 : rho 35015 * seg34AccY60 rho = rho 35019 := by
      unfold seg34AccY60
      linear_combination r3747
    have ha3 : 3021 * rho 35018 * rho 35019 = rho 35020 := by
      linear_combination r3748
    have ha4 : rho 35021 * (1 + rho 35020) = rho 35018 + rho 35019 := by
      linear_combination r3749
    have ha5 : rho 35022 * (1 - rho 35020) = rho 35017 - rho 35018 - rho 35019 := by
      linear_combination r3750
    have haddx :
        rho 35021 * (1 + 3021 * (rho 35016 * seg34AccX60 rho) * (rho 35015 * seg34AccY60 rho)) =
          rho 35016 * seg34AccX60 rho + rho 35015 * seg34AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35022 * (1 - 3021 * (rho 35016 * seg34AccX60 rho) * (rho 35015 * seg34AccY60 rho)) =
          (-1) * (rho 35016 * seg34AccX60 rho) - rho 35015 * seg34AccY60 rho +
            (seg34AccY60 rho - seg34AccX60 rho * (-1)) * (rho 35015 + rho 35016) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35022 * (1 - rho 35020) = rho 35017 - rho 35018 - rho 35019 := ha5
        _ = (-1) * rho 35018 - rho 35019 + (seg34AccY60 rho - seg34AccX60 rho * (-1)) * (rho 35015 + rho 35016) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX61 rho = seg34AccX60 rho - Bool.toZMod bit * (seg34AccX60 rho - rho 35021) := by
      have hd : rho 35023 = Bool.toZMod bit * (rho 35021 - seg34AccX60 rho) := by
        rw [← hbit]
        unfold seg34AccX60
        linear_combination -r3751
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY61 rho = seg34AccY60 rho - Bool.toZMod bit * (seg34AccY60 rho - rho 35022) := by
      have hd : rho 35024 = Bool.toZMod bit * (rho 35022 - seg34AccY60 rho) := by
        rw [← hbit]
        unfold seg34AccY60
        linear_combination -r3752
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35015 * rho 35016 = rho 35025 := by linear_combination r3753
    have hd1 : rho 35015 * rho 35015 = rho 35026 := by linear_combination r3754
    have hd2 : rho 35016 * rho 35016 = rho 35027 := by linear_combination r3755
    have hd3 : rho 35028 * (rho 35016 * rho 35016 + rho 35015 * rho 35015 * (-1)) = 2 * (rho 35015 * rho 35016) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 35029 * (2 - (rho 35016 * rho 35016 + rho 35015 * rho 35015 * (-1))) = rho 35016 * rho 35016 - rho 35015 * rho 35015 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
      ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
      ⟨(rho 35021 : Seg34.F), (rho 35022 : Seg34.F)⟩
      ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
      ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg34_rows61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3758 rho ∧ Seg34.relationRow3759 rho ∧ Seg34.relationRow3760 rho ∧ Seg34.relationRow3761 rho ∧ Seg34.relationRow3762 rho ∧ Seg34.relationRow3763 rho ∧ Seg34.relationRow3764 rho ∧ Seg34.relationRow3765 rho ∧ Seg34.relationRow3766 rho ∧ Seg34.relationRow3767 rho ∧ Seg34.relationRow3768 rho ∧ Seg34.relationRow3769 rho ∧ Seg34.relationRow3770 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩

theorem seg34_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩ := by
  obtain ⟨r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770⟩ := seg34_rows61 rho h
  unfold Seg34.relationRow3758 at r3758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3758
  unfold Seg34.relationRow3759 at r3759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759
  unfold Seg34.relationRow3760 at r3760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3760
  unfold Seg34.relationRow3761 at r3761
  unfold Seg34.relationRow3762 at r3762
  unfold Seg34.relationRow3763 at r3763
  unfold Seg34.relationRow3764 at r3764
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3764
  unfold Seg34.relationRow3765 at r3765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3765
  unfold Seg34.relationRow3766 at r3766
  unfold Seg34.relationRow3767 at r3767
  unfold Seg34.relationRow3768 at r3768
  unfold Seg34.relationRow3769 at r3769
  unfold Seg34.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 34053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩ := by
    have hnextx : seg34AccX62 rho = seg34AccX61 rho + rho 35036 := by
      unfold seg34AccX62 seg34AccX61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 61]
      ring
    have hnexty : seg34AccY62 rho = seg34AccY61 rho + rho 35037 := by
      unfold seg34AccY62 seg34AccY61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 61]
      ring
    have ha0 : (rho 35028 + rho 35029) * (seg34AccX61 rho + seg34AccY61 rho) = rho 35030 := by
      unfold seg34AccX61 seg34AccY61
      linear_combination r3758
    have ha1 : rho 35029 * seg34AccX61 rho = rho 35031 := by
      unfold seg34AccX61
      linear_combination r3759
    have ha2 : rho 35028 * seg34AccY61 rho = rho 35032 := by
      unfold seg34AccY61
      linear_combination r3760
    have ha3 : 3021 * rho 35031 * rho 35032 = rho 35033 := by
      linear_combination r3761
    have ha4 : rho 35034 * (1 + rho 35033) = rho 35031 + rho 35032 := by
      linear_combination r3762
    have ha5 : rho 35035 * (1 - rho 35033) = rho 35030 - rho 35031 - rho 35032 := by
      linear_combination r3763
    have haddx :
        rho 35034 * (1 + 3021 * (rho 35029 * seg34AccX61 rho) * (rho 35028 * seg34AccY61 rho)) =
          rho 35029 * seg34AccX61 rho + rho 35028 * seg34AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35035 * (1 - 3021 * (rho 35029 * seg34AccX61 rho) * (rho 35028 * seg34AccY61 rho)) =
          (-1) * (rho 35029 * seg34AccX61 rho) - rho 35028 * seg34AccY61 rho +
            (seg34AccY61 rho - seg34AccX61 rho * (-1)) * (rho 35028 + rho 35029) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35035 * (1 - rho 35033) = rho 35030 - rho 35031 - rho 35032 := ha5
        _ = (-1) * rho 35031 - rho 35032 + (seg34AccY61 rho - seg34AccX61 rho * (-1)) * (rho 35028 + rho 35029) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX62 rho = seg34AccX61 rho - Bool.toZMod bit * (seg34AccX61 rho - rho 35034) := by
      have hd : rho 35036 = Bool.toZMod bit * (rho 35034 - seg34AccX61 rho) := by
        rw [← hbit]
        unfold seg34AccX61
        linear_combination -r3764
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY62 rho = seg34AccY61 rho - Bool.toZMod bit * (seg34AccY61 rho - rho 35035) := by
      have hd : rho 35037 = Bool.toZMod bit * (rho 35035 - seg34AccY61 rho) := by
        rw [← hbit]
        unfold seg34AccY61
        linear_combination -r3765
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35028 * rho 35029 = rho 35038 := by linear_combination r3766
    have hd1 : rho 35028 * rho 35028 = rho 35039 := by linear_combination r3767
    have hd2 : rho 35029 * rho 35029 = rho 35040 := by linear_combination r3768
    have hd3 : rho 35041 * (rho 35029 * rho 35029 + rho 35028 * rho 35028 * (-1)) = 2 * (rho 35028 * rho 35029) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 35042 * (2 - (rho 35029 * rho 35029 + rho 35028 * rho 35028 * (-1))) = rho 35029 * rho 35029 - rho 35028 * rho 35028 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
      ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
      ⟨(rho 35034 : Seg34.F), (rho 35035 : Seg34.F)⟩
      ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
      ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg34_rows62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3771 rho ∧ Seg34.relationRow3772 rho ∧ Seg34.relationRow3773 rho ∧ Seg34.relationRow3774 rho ∧ Seg34.relationRow3775 rho ∧ Seg34.relationRow3776 rho ∧ Seg34.relationRow3777 rho ∧ Seg34.relationRow3778 rho ∧ Seg34.relationRow3779 rho ∧ Seg34.relationRow3780 rho ∧ Seg34.relationRow3781 rho ∧ Seg34.relationRow3782 rho ∧ Seg34.relationRow3783 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩

theorem seg34_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩ := by
  obtain ⟨r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783⟩ := seg34_rows62 rho h
  unfold Seg34.relationRow3771 at r3771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3771
  unfold Seg34.relationRow3772 at r3772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772
  unfold Seg34.relationRow3773 at r3773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3773
  unfold Seg34.relationRow3774 at r3774
  unfold Seg34.relationRow3775 at r3775
  unfold Seg34.relationRow3776 at r3776
  unfold Seg34.relationRow3777 at r3777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3777
  unfold Seg34.relationRow3778 at r3778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3778
  unfold Seg34.relationRow3779 at r3779
  unfold Seg34.relationRow3780 at r3780
  unfold Seg34.relationRow3781 at r3781
  unfold Seg34.relationRow3782 at r3782
  unfold Seg34.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 34054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩ := by
    have hnextx : seg34AccX63 rho = seg34AccX62 rho + rho 35049 := by
      unfold seg34AccX63 seg34AccX62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 62]
      ring
    have hnexty : seg34AccY63 rho = seg34AccY62 rho + rho 35050 := by
      unfold seg34AccY63 seg34AccY62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 62]
      ring
    have ha0 : (rho 35041 + rho 35042) * (seg34AccX62 rho + seg34AccY62 rho) = rho 35043 := by
      unfold seg34AccX62 seg34AccY62
      linear_combination r3771
    have ha1 : rho 35042 * seg34AccX62 rho = rho 35044 := by
      unfold seg34AccX62
      linear_combination r3772
    have ha2 : rho 35041 * seg34AccY62 rho = rho 35045 := by
      unfold seg34AccY62
      linear_combination r3773
    have ha3 : 3021 * rho 35044 * rho 35045 = rho 35046 := by
      linear_combination r3774
    have ha4 : rho 35047 * (1 + rho 35046) = rho 35044 + rho 35045 := by
      linear_combination r3775
    have ha5 : rho 35048 * (1 - rho 35046) = rho 35043 - rho 35044 - rho 35045 := by
      linear_combination r3776
    have haddx :
        rho 35047 * (1 + 3021 * (rho 35042 * seg34AccX62 rho) * (rho 35041 * seg34AccY62 rho)) =
          rho 35042 * seg34AccX62 rho + rho 35041 * seg34AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35048 * (1 - 3021 * (rho 35042 * seg34AccX62 rho) * (rho 35041 * seg34AccY62 rho)) =
          (-1) * (rho 35042 * seg34AccX62 rho) - rho 35041 * seg34AccY62 rho +
            (seg34AccY62 rho - seg34AccX62 rho * (-1)) * (rho 35041 + rho 35042) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35048 * (1 - rho 35046) = rho 35043 - rho 35044 - rho 35045 := ha5
        _ = (-1) * rho 35044 - rho 35045 + (seg34AccY62 rho - seg34AccX62 rho * (-1)) * (rho 35041 + rho 35042) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX63 rho = seg34AccX62 rho - Bool.toZMod bit * (seg34AccX62 rho - rho 35047) := by
      have hd : rho 35049 = Bool.toZMod bit * (rho 35047 - seg34AccX62 rho) := by
        rw [← hbit]
        unfold seg34AccX62
        linear_combination -r3777
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY63 rho = seg34AccY62 rho - Bool.toZMod bit * (seg34AccY62 rho - rho 35048) := by
      have hd : rho 35050 = Bool.toZMod bit * (rho 35048 - seg34AccY62 rho) := by
        rw [← hbit]
        unfold seg34AccY62
        linear_combination -r3778
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35041 * rho 35042 = rho 35051 := by linear_combination r3779
    have hd1 : rho 35041 * rho 35041 = rho 35052 := by linear_combination r3780
    have hd2 : rho 35042 * rho 35042 = rho 35053 := by linear_combination r3781
    have hd3 : rho 35054 * (rho 35042 * rho 35042 + rho 35041 * rho 35041 * (-1)) = 2 * (rho 35041 * rho 35042) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 35055 * (2 - (rho 35042 * rho 35042 + rho 35041 * rho 35041 * (-1))) = rho 35042 * rho 35042 - rho 35041 * rho 35041 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
      ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
      ⟨(rho 35047 : Seg34.F), (rho 35048 : Seg34.F)⟩
      ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
      ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg34_rows63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3784 rho ∧ Seg34.relationRow3785 rho ∧ Seg34.relationRow3786 rho ∧ Seg34.relationRow3787 rho ∧ Seg34.relationRow3788 rho ∧ Seg34.relationRow3789 rho ∧ Seg34.relationRow3790 rho ∧ Seg34.relationRow3791 rho ∧ Seg34.relationRow3792 rho ∧ Seg34.relationRow3793 rho ∧ Seg34.relationRow3794 rho ∧ Seg34.relationRow3795 rho ∧ Seg34.relationRow3796 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩

theorem seg34_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩ := by
  obtain ⟨r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796⟩ := seg34_rows63 rho h
  unfold Seg34.relationRow3784 at r3784
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3784
  unfold Seg34.relationRow3785 at r3785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785
  unfold Seg34.relationRow3786 at r3786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3786
  unfold Seg34.relationRow3787 at r3787
  unfold Seg34.relationRow3788 at r3788
  unfold Seg34.relationRow3789 at r3789
  unfold Seg34.relationRow3790 at r3790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3790
  unfold Seg34.relationRow3791 at r3791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3791
  unfold Seg34.relationRow3792 at r3792
  unfold Seg34.relationRow3793 at r3793
  unfold Seg34.relationRow3794 at r3794
  unfold Seg34.relationRow3795 at r3795
  unfold Seg34.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 34055 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩ := by
    have hnextx : seg34AccX64 rho = seg34AccX63 rho + rho 35062 := by
      unfold seg34AccX64 seg34AccX63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 63]
      ring
    have hnexty : seg34AccY64 rho = seg34AccY63 rho + rho 35063 := by
      unfold seg34AccY64 seg34AccY63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 63]
      ring
    have ha0 : (rho 35054 + rho 35055) * (seg34AccX63 rho + seg34AccY63 rho) = rho 35056 := by
      unfold seg34AccX63 seg34AccY63
      linear_combination r3784
    have ha1 : rho 35055 * seg34AccX63 rho = rho 35057 := by
      unfold seg34AccX63
      linear_combination r3785
    have ha2 : rho 35054 * seg34AccY63 rho = rho 35058 := by
      unfold seg34AccY63
      linear_combination r3786
    have ha3 : 3021 * rho 35057 * rho 35058 = rho 35059 := by
      linear_combination r3787
    have ha4 : rho 35060 * (1 + rho 35059) = rho 35057 + rho 35058 := by
      linear_combination r3788
    have ha5 : rho 35061 * (1 - rho 35059) = rho 35056 - rho 35057 - rho 35058 := by
      linear_combination r3789
    have haddx :
        rho 35060 * (1 + 3021 * (rho 35055 * seg34AccX63 rho) * (rho 35054 * seg34AccY63 rho)) =
          rho 35055 * seg34AccX63 rho + rho 35054 * seg34AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35061 * (1 - 3021 * (rho 35055 * seg34AccX63 rho) * (rho 35054 * seg34AccY63 rho)) =
          (-1) * (rho 35055 * seg34AccX63 rho) - rho 35054 * seg34AccY63 rho +
            (seg34AccY63 rho - seg34AccX63 rho * (-1)) * (rho 35054 + rho 35055) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35061 * (1 - rho 35059) = rho 35056 - rho 35057 - rho 35058 := ha5
        _ = (-1) * rho 35057 - rho 35058 + (seg34AccY63 rho - seg34AccX63 rho * (-1)) * (rho 35054 + rho 35055) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX64 rho = seg34AccX63 rho - Bool.toZMod bit * (seg34AccX63 rho - rho 35060) := by
      have hd : rho 35062 = Bool.toZMod bit * (rho 35060 - seg34AccX63 rho) := by
        rw [← hbit]
        unfold seg34AccX63
        linear_combination -r3790
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY64 rho = seg34AccY63 rho - Bool.toZMod bit * (seg34AccY63 rho - rho 35061) := by
      have hd : rho 35063 = Bool.toZMod bit * (rho 35061 - seg34AccY63 rho) := by
        rw [← hbit]
        unfold seg34AccY63
        linear_combination -r3791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35054 * rho 35055 = rho 35064 := by linear_combination r3792
    have hd1 : rho 35054 * rho 35054 = rho 35065 := by linear_combination r3793
    have hd2 : rho 35055 * rho 35055 = rho 35066 := by linear_combination r3794
    have hd3 : rho 35067 * (rho 35055 * rho 35055 + rho 35054 * rho 35054 * (-1)) = 2 * (rho 35054 * rho 35055) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 35068 * (2 - (rho 35055 * rho 35055 + rho 35054 * rho 35054 * (-1))) = rho 35055 * rho 35055 - rho 35054 * rho 35054 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
      ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
      ⟨(rho 35060 : Seg34.F), (rho 35061 : Seg34.F)⟩
      ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
      ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg34_rows64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3797 rho ∧ Seg34.relationRow3798 rho ∧ Seg34.relationRow3799 rho ∧ Seg34.relationRow3800 rho ∧ Seg34.relationRow3801 rho ∧ Seg34.relationRow3802 rho ∧ Seg34.relationRow3803 rho ∧ Seg34.relationRow3804 rho ∧ Seg34.relationRow3805 rho ∧ Seg34.relationRow3806 rho ∧ Seg34.relationRow3807 rho ∧ Seg34.relationRow3808 rho ∧ Seg34.relationRow3809 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩

theorem seg34_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩ := by
  obtain ⟨r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809⟩ := seg34_rows64 rho h
  unfold Seg34.relationRow3797 at r3797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3797
  unfold Seg34.relationRow3798 at r3798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798
  unfold Seg34.relationRow3799 at r3799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3799
  unfold Seg34.relationRow3800 at r3800
  unfold Seg34.relationRow3801 at r3801
  unfold Seg34.relationRow3802 at r3802
  unfold Seg34.relationRow3803 at r3803
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3803
  unfold Seg34.relationRow3804 at r3804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3804
  unfold Seg34.relationRow3805 at r3805
  unfold Seg34.relationRow3806 at r3806
  unfold Seg34.relationRow3807 at r3807
  unfold Seg34.relationRow3808 at r3808
  unfold Seg34.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 34056 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩ := by
    have hnextx : seg34AccX65 rho = seg34AccX64 rho + rho 35075 := by
      unfold seg34AccX65 seg34AccX64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 64]
      ring
    have hnexty : seg34AccY65 rho = seg34AccY64 rho + rho 35076 := by
      unfold seg34AccY65 seg34AccY64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 64]
      ring
    have ha0 : (rho 35067 + rho 35068) * (seg34AccX64 rho + seg34AccY64 rho) = rho 35069 := by
      unfold seg34AccX64 seg34AccY64
      linear_combination r3797
    have ha1 : rho 35068 * seg34AccX64 rho = rho 35070 := by
      unfold seg34AccX64
      linear_combination r3798
    have ha2 : rho 35067 * seg34AccY64 rho = rho 35071 := by
      unfold seg34AccY64
      linear_combination r3799
    have ha3 : 3021 * rho 35070 * rho 35071 = rho 35072 := by
      linear_combination r3800
    have ha4 : rho 35073 * (1 + rho 35072) = rho 35070 + rho 35071 := by
      linear_combination r3801
    have ha5 : rho 35074 * (1 - rho 35072) = rho 35069 - rho 35070 - rho 35071 := by
      linear_combination r3802
    have haddx :
        rho 35073 * (1 + 3021 * (rho 35068 * seg34AccX64 rho) * (rho 35067 * seg34AccY64 rho)) =
          rho 35068 * seg34AccX64 rho + rho 35067 * seg34AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35074 * (1 - 3021 * (rho 35068 * seg34AccX64 rho) * (rho 35067 * seg34AccY64 rho)) =
          (-1) * (rho 35068 * seg34AccX64 rho) - rho 35067 * seg34AccY64 rho +
            (seg34AccY64 rho - seg34AccX64 rho * (-1)) * (rho 35067 + rho 35068) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35074 * (1 - rho 35072) = rho 35069 - rho 35070 - rho 35071 := ha5
        _ = (-1) * rho 35070 - rho 35071 + (seg34AccY64 rho - seg34AccX64 rho * (-1)) * (rho 35067 + rho 35068) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX65 rho = seg34AccX64 rho - Bool.toZMod bit * (seg34AccX64 rho - rho 35073) := by
      have hd : rho 35075 = Bool.toZMod bit * (rho 35073 - seg34AccX64 rho) := by
        rw [← hbit]
        unfold seg34AccX64
        linear_combination -r3803
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY65 rho = seg34AccY64 rho - Bool.toZMod bit * (seg34AccY64 rho - rho 35074) := by
      have hd : rho 35076 = Bool.toZMod bit * (rho 35074 - seg34AccY64 rho) := by
        rw [← hbit]
        unfold seg34AccY64
        linear_combination -r3804
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35067 * rho 35068 = rho 35077 := by linear_combination r3805
    have hd1 : rho 35067 * rho 35067 = rho 35078 := by linear_combination r3806
    have hd2 : rho 35068 * rho 35068 = rho 35079 := by linear_combination r3807
    have hd3 : rho 35080 * (rho 35068 * rho 35068 + rho 35067 * rho 35067 * (-1)) = 2 * (rho 35067 * rho 35068) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 35081 * (2 - (rho 35068 * rho 35068 + rho 35067 * rho 35067 * (-1))) = rho 35068 * rho 35068 - rho 35067 * rho 35067 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
      ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
      ⟨(rho 35073 : Seg34.F), (rho 35074 : Seg34.F)⟩
      ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
      ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg34_rows65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3810 rho ∧ Seg34.relationRow3811 rho ∧ Seg34.relationRow3812 rho ∧ Seg34.relationRow3813 rho ∧ Seg34.relationRow3814 rho ∧ Seg34.relationRow3815 rho ∧ Seg34.relationRow3816 rho ∧ Seg34.relationRow3817 rho ∧ Seg34.relationRow3818 rho ∧ Seg34.relationRow3819 rho ∧ Seg34.relationRow3820 rho ∧ Seg34.relationRow3821 rho ∧ Seg34.relationRow3822 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩

theorem seg34_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩ := by
  obtain ⟨r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822⟩ := seg34_rows65 rho h
  unfold Seg34.relationRow3810 at r3810
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3810
  unfold Seg34.relationRow3811 at r3811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811
  unfold Seg34.relationRow3812 at r3812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3812
  unfold Seg34.relationRow3813 at r3813
  unfold Seg34.relationRow3814 at r3814
  unfold Seg34.relationRow3815 at r3815
  unfold Seg34.relationRow3816 at r3816
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3816
  unfold Seg34.relationRow3817 at r3817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3817
  unfold Seg34.relationRow3818 at r3818
  unfold Seg34.relationRow3819 at r3819
  unfold Seg34.relationRow3820 at r3820
  unfold Seg34.relationRow3821 at r3821
  unfold Seg34.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 34057 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩ := by
    have hnextx : seg34AccX66 rho = seg34AccX65 rho + rho 35088 := by
      unfold seg34AccX66 seg34AccX65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 65]
      ring
    have hnexty : seg34AccY66 rho = seg34AccY65 rho + rho 35089 := by
      unfold seg34AccY66 seg34AccY65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 65]
      ring
    have ha0 : (rho 35080 + rho 35081) * (seg34AccX65 rho + seg34AccY65 rho) = rho 35082 := by
      unfold seg34AccX65 seg34AccY65
      linear_combination r3810
    have ha1 : rho 35081 * seg34AccX65 rho = rho 35083 := by
      unfold seg34AccX65
      linear_combination r3811
    have ha2 : rho 35080 * seg34AccY65 rho = rho 35084 := by
      unfold seg34AccY65
      linear_combination r3812
    have ha3 : 3021 * rho 35083 * rho 35084 = rho 35085 := by
      linear_combination r3813
    have ha4 : rho 35086 * (1 + rho 35085) = rho 35083 + rho 35084 := by
      linear_combination r3814
    have ha5 : rho 35087 * (1 - rho 35085) = rho 35082 - rho 35083 - rho 35084 := by
      linear_combination r3815
    have haddx :
        rho 35086 * (1 + 3021 * (rho 35081 * seg34AccX65 rho) * (rho 35080 * seg34AccY65 rho)) =
          rho 35081 * seg34AccX65 rho + rho 35080 * seg34AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35087 * (1 - 3021 * (rho 35081 * seg34AccX65 rho) * (rho 35080 * seg34AccY65 rho)) =
          (-1) * (rho 35081 * seg34AccX65 rho) - rho 35080 * seg34AccY65 rho +
            (seg34AccY65 rho - seg34AccX65 rho * (-1)) * (rho 35080 + rho 35081) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35087 * (1 - rho 35085) = rho 35082 - rho 35083 - rho 35084 := ha5
        _ = (-1) * rho 35083 - rho 35084 + (seg34AccY65 rho - seg34AccX65 rho * (-1)) * (rho 35080 + rho 35081) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX66 rho = seg34AccX65 rho - Bool.toZMod bit * (seg34AccX65 rho - rho 35086) := by
      have hd : rho 35088 = Bool.toZMod bit * (rho 35086 - seg34AccX65 rho) := by
        rw [← hbit]
        unfold seg34AccX65
        linear_combination -r3816
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY66 rho = seg34AccY65 rho - Bool.toZMod bit * (seg34AccY65 rho - rho 35087) := by
      have hd : rho 35089 = Bool.toZMod bit * (rho 35087 - seg34AccY65 rho) := by
        rw [← hbit]
        unfold seg34AccY65
        linear_combination -r3817
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35080 * rho 35081 = rho 35090 := by linear_combination r3818
    have hd1 : rho 35080 * rho 35080 = rho 35091 := by linear_combination r3819
    have hd2 : rho 35081 * rho 35081 = rho 35092 := by linear_combination r3820
    have hd3 : rho 35093 * (rho 35081 * rho 35081 + rho 35080 * rho 35080 * (-1)) = 2 * (rho 35080 * rho 35081) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 35094 * (2 - (rho 35081 * rho 35081 + rho 35080 * rho 35080 * (-1))) = rho 35081 * rho 35081 - rho 35080 * rho 35080 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
      ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
      ⟨(rho 35086 : Seg34.F), (rho 35087 : Seg34.F)⟩
      ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
      ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg34_hstep_c5 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg34_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg34_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg34_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg34_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg34_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg34_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg34_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg34_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg34_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg34_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
