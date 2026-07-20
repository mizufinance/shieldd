import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3714 rho ∧ Seg6.relationRow3715 rho ∧ Seg6.relationRow3716 rho ∧ Seg6.relationRow3717 rho ∧ Seg6.relationRow3718 rho ∧ Seg6.relationRow3719 rho ∧ Seg6.relationRow3720 rho ∧ Seg6.relationRow3721 rho ∧ Seg6.relationRow3722 rho ∧ Seg6.relationRow3723 rho ∧ Seg6.relationRow3724 rho ∧ Seg6.relationRow3725 rho ∧ Seg6.relationRow3726 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726⟩

theorem seg6_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1961 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4105 : Seg6.F), (rho 4106 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩
        ⟨(rho 4105 : Seg6.F), (rho 4106 : Seg6.F)⟩
        ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩
        ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩ := by
  obtain ⟨r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726⟩ := seg6_rows77 rho h
  unfold Seg6.relationRow3714 Seg6.relationLc473 at r3714
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3714
  unfold Seg6.relationRow3715 Seg6.relationLc474 at r3715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3715
  unfold Seg6.relationRow3716 Seg6.relationLc475 at r3716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3716
  unfold Seg6.relationRow3717 at r3717
  unfold Seg6.relationRow3718 at r3718
  unfold Seg6.relationRow3719 at r3719
  unfold Seg6.relationRow3720 Seg6.relationLc476 at r3720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720
  unfold Seg6.relationRow3721 Seg6.relationLc477 at r3721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3721
  unfold Seg6.relationRow3722 at r3722
  unfold Seg6.relationRow3723 at r3723
  unfold Seg6.relationRow3724 at r3724
  unfold Seg6.relationRow3725 at r3725
  unfold Seg6.relationRow3726 at r3726
  have hrung77 (bit : Bool) (hbit : rho 1961 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4105 : Seg6.F), (rho 4106 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩
        ⟨(rho 4105 : Seg6.F), (rho 4106 : Seg6.F)⟩
        ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩
        ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩ := by
    have hnextx : seg6AccX78 rho = seg6AccX77 rho + rho 4113 := by
      unfold seg6AccX78 seg6AccX77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 77]
      ring
    have hnexty : seg6AccY78 rho = seg6AccY77 rho + rho 4114 := by
      unfold seg6AccY78 seg6AccY77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 77]
      ring
    have ha0 : (rho 4105 + rho 4106) * (seg6AccX77 rho + seg6AccY77 rho) = rho 4107 := by
      unfold seg6AccX77 seg6AccY77
      linear_combination r3714
    have ha1 : rho 4106 * seg6AccX77 rho = rho 4108 := by
      unfold seg6AccX77
      linear_combination r3715
    have ha2 : rho 4105 * seg6AccY77 rho = rho 4109 := by
      unfold seg6AccY77
      linear_combination r3716
    have ha3 : 3021 * rho 4108 * rho 4109 = rho 4110 := by
      linear_combination r3717
    have ha4 : rho 4111 * (1 + rho 4110) = rho 4108 + rho 4109 := by
      linear_combination r3718
    have ha5 : rho 4112 * (1 - rho 4110) = rho 4107 - rho 4108 - rho 4109 := by
      linear_combination r3719
    have haddx :
        rho 4111 * (1 + 3021 * (rho 4106 * seg6AccX77 rho) * (rho 4105 * seg6AccY77 rho)) =
          rho 4106 * seg6AccX77 rho + rho 4105 * seg6AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4112 * (1 - 3021 * (rho 4106 * seg6AccX77 rho) * (rho 4105 * seg6AccY77 rho)) =
          (-1) * (rho 4106 * seg6AccX77 rho) - rho 4105 * seg6AccY77 rho +
            (seg6AccY77 rho - seg6AccX77 rho * (-1)) * (rho 4105 + rho 4106) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4112 * (1 - rho 4110) = rho 4107 - rho 4108 - rho 4109 := ha5
        _ = (-1) * rho 4108 - rho 4109 + (seg6AccY77 rho - seg6AccX77 rho * (-1)) * (rho 4105 + rho 4106) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX78 rho = seg6AccX77 rho - Bool.toZMod bit * (seg6AccX77 rho - rho 4111) := by
      have hd : rho 4113 = Bool.toZMod bit * (rho 4111 - seg6AccX77 rho) := by
        rw [← hbit]
        unfold seg6AccX77
        linear_combination -r3720
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY78 rho = seg6AccY77 rho - Bool.toZMod bit * (seg6AccY77 rho - rho 4112) := by
      have hd : rho 4114 = Bool.toZMod bit * (rho 4112 - seg6AccY77 rho) := by
        rw [← hbit]
        unfold seg6AccY77
        linear_combination -r3721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4105 * rho 4106 = rho 4115 := by linear_combination r3722
    have hd1 : rho 4105 * rho 4105 = rho 4116 := by linear_combination r3723
    have hd2 : rho 4106 * rho 4106 = rho 4117 := by linear_combination r3724
    have hd3 : rho 4118 * (rho 4106 * rho 4106 + rho 4105 * rho 4105 * (-1)) = 2 * (rho 4105 * rho 4106) := by
      rw [hd0, hd1, hd2]
      linear_combination r3725
    have hd4 : rho 4119 * (2 - (rho 4106 * rho 4106 + rho 4105 * rho 4105 * (-1))) = rho 4106 * rho 4106 - rho 4105 * rho 4105 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩
      ⟨(rho 4105 : Seg6.F), (rho 4106 : Seg6.F)⟩
      ⟨(rho 4111 : Seg6.F), (rho 4112 : Seg6.F)⟩
      ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩
      ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg6_rows78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3727 rho ∧ Seg6.relationRow3728 rho ∧ Seg6.relationRow3729 rho ∧ Seg6.relationRow3730 rho ∧ Seg6.relationRow3731 rho ∧ Seg6.relationRow3732 rho ∧ Seg6.relationRow3733 rho ∧ Seg6.relationRow3734 rho ∧ Seg6.relationRow3735 rho ∧ Seg6.relationRow3736 rho ∧ Seg6.relationRow3737 rho ∧ Seg6.relationRow3738 rho ∧ Seg6.relationRow3739 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739⟩

theorem seg6_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1962 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩
        ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩
        ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩
        ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩ := by
  obtain ⟨r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739⟩ := seg6_rows78 rho h
  unfold Seg6.relationRow3727 Seg6.relationLc478 at r3727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3727
  unfold Seg6.relationRow3728 Seg6.relationLc479 at r3728
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3728
  unfold Seg6.relationRow3729 Seg6.relationLc480 at r3729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3729
  unfold Seg6.relationRow3730 at r3730
  unfold Seg6.relationRow3731 at r3731
  unfold Seg6.relationRow3732 at r3732
  unfold Seg6.relationRow3733 Seg6.relationLc481 at r3733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733
  unfold Seg6.relationRow3734 Seg6.relationLc482 at r3734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3734
  unfold Seg6.relationRow3735 at r3735
  unfold Seg6.relationRow3736 at r3736
  unfold Seg6.relationRow3737 at r3737
  unfold Seg6.relationRow3738 at r3738
  unfold Seg6.relationRow3739 at r3739
  have hrung78 (bit : Bool) (hbit : rho 1962 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩
        ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩
        ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩
        ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩ := by
    have hnextx : seg6AccX79 rho = seg6AccX78 rho + rho 4126 := by
      unfold seg6AccX79 seg6AccX78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 78]
      ring
    have hnexty : seg6AccY79 rho = seg6AccY78 rho + rho 4127 := by
      unfold seg6AccY79 seg6AccY78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 78]
      ring
    have ha0 : (rho 4118 + rho 4119) * (seg6AccX78 rho + seg6AccY78 rho) = rho 4120 := by
      unfold seg6AccX78 seg6AccY78
      linear_combination r3727
    have ha1 : rho 4119 * seg6AccX78 rho = rho 4121 := by
      unfold seg6AccX78
      linear_combination r3728
    have ha2 : rho 4118 * seg6AccY78 rho = rho 4122 := by
      unfold seg6AccY78
      linear_combination r3729
    have ha3 : 3021 * rho 4121 * rho 4122 = rho 4123 := by
      linear_combination r3730
    have ha4 : rho 4124 * (1 + rho 4123) = rho 4121 + rho 4122 := by
      linear_combination r3731
    have ha5 : rho 4125 * (1 - rho 4123) = rho 4120 - rho 4121 - rho 4122 := by
      linear_combination r3732
    have haddx :
        rho 4124 * (1 + 3021 * (rho 4119 * seg6AccX78 rho) * (rho 4118 * seg6AccY78 rho)) =
          rho 4119 * seg6AccX78 rho + rho 4118 * seg6AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4125 * (1 - 3021 * (rho 4119 * seg6AccX78 rho) * (rho 4118 * seg6AccY78 rho)) =
          (-1) * (rho 4119 * seg6AccX78 rho) - rho 4118 * seg6AccY78 rho +
            (seg6AccY78 rho - seg6AccX78 rho * (-1)) * (rho 4118 + rho 4119) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4125 * (1 - rho 4123) = rho 4120 - rho 4121 - rho 4122 := ha5
        _ = (-1) * rho 4121 - rho 4122 + (seg6AccY78 rho - seg6AccX78 rho * (-1)) * (rho 4118 + rho 4119) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX79 rho = seg6AccX78 rho - Bool.toZMod bit * (seg6AccX78 rho - rho 4124) := by
      have hd : rho 4126 = Bool.toZMod bit * (rho 4124 - seg6AccX78 rho) := by
        rw [← hbit]
        unfold seg6AccX78
        linear_combination -r3733
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY79 rho = seg6AccY78 rho - Bool.toZMod bit * (seg6AccY78 rho - rho 4125) := by
      have hd : rho 4127 = Bool.toZMod bit * (rho 4125 - seg6AccY78 rho) := by
        rw [← hbit]
        unfold seg6AccY78
        linear_combination -r3734
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4118 * rho 4119 = rho 4128 := by linear_combination r3735
    have hd1 : rho 4118 * rho 4118 = rho 4129 := by linear_combination r3736
    have hd2 : rho 4119 * rho 4119 = rho 4130 := by linear_combination r3737
    have hd3 : rho 4131 * (rho 4119 * rho 4119 + rho 4118 * rho 4118 * (-1)) = 2 * (rho 4118 * rho 4119) := by
      rw [hd0, hd1, hd2]
      linear_combination r3738
    have hd4 : rho 4132 * (2 - (rho 4119 * rho 4119 + rho 4118 * rho 4118 * (-1))) = rho 4119 * rho 4119 - rho 4118 * rho 4118 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3739
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX78 rho : Seg6.F), (seg6AccY78 rho : Seg6.F)⟩
      ⟨(rho 4118 : Seg6.F), (rho 4119 : Seg6.F)⟩
      ⟨(rho 4124 : Seg6.F), (rho 4125 : Seg6.F)⟩
      ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩
      ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg6_rows79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3740 rho ∧ Seg6.relationRow3741 rho ∧ Seg6.relationRow3742 rho ∧ Seg6.relationRow3743 rho ∧ Seg6.relationRow3744 rho ∧ Seg6.relationRow3745 rho ∧ Seg6.relationRow3746 rho ∧ Seg6.relationRow3747 rho ∧ Seg6.relationRow3748 rho ∧ Seg6.relationRow3749 rho ∧ Seg6.relationRow3750 rho ∧ Seg6.relationRow3751 rho ∧ Seg6.relationRow3752 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, _, _, _, _, _, _, _⟩
  exact ⟨r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752⟩

theorem seg6_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1963 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩
        ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩
        ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩
        ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩ := by
  obtain ⟨r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752⟩ := seg6_rows79 rho h
  unfold Seg6.relationRow3740 Seg6.relationLc483 at r3740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3740
  unfold Seg6.relationRow3741 Seg6.relationLc484 at r3741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3741
  unfold Seg6.relationRow3742 Seg6.relationLc485 at r3742
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3742
  unfold Seg6.relationRow3743 at r3743
  unfold Seg6.relationRow3744 at r3744
  unfold Seg6.relationRow3745 at r3745
  unfold Seg6.relationRow3746 Seg6.relationLc486 at r3746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746
  unfold Seg6.relationRow3747 Seg6.relationLc487 at r3747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3747
  unfold Seg6.relationRow3748 at r3748
  unfold Seg6.relationRow3749 at r3749
  unfold Seg6.relationRow3750 at r3750
  unfold Seg6.relationRow3751 at r3751
  unfold Seg6.relationRow3752 at r3752
  have hrung79 (bit : Bool) (hbit : rho 1963 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩
        ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩
        ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩
        ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩ := by
    have hnextx : seg6AccX80 rho = seg6AccX79 rho + rho 4139 := by
      unfold seg6AccX80 seg6AccX79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 79]
      ring
    have hnexty : seg6AccY80 rho = seg6AccY79 rho + rho 4140 := by
      unfold seg6AccY80 seg6AccY79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 79]
      ring
    have ha0 : (rho 4131 + rho 4132) * (seg6AccX79 rho + seg6AccY79 rho) = rho 4133 := by
      unfold seg6AccX79 seg6AccY79
      linear_combination r3740
    have ha1 : rho 4132 * seg6AccX79 rho = rho 4134 := by
      unfold seg6AccX79
      linear_combination r3741
    have ha2 : rho 4131 * seg6AccY79 rho = rho 4135 := by
      unfold seg6AccY79
      linear_combination r3742
    have ha3 : 3021 * rho 4134 * rho 4135 = rho 4136 := by
      linear_combination r3743
    have ha4 : rho 4137 * (1 + rho 4136) = rho 4134 + rho 4135 := by
      linear_combination r3744
    have ha5 : rho 4138 * (1 - rho 4136) = rho 4133 - rho 4134 - rho 4135 := by
      linear_combination r3745
    have haddx :
        rho 4137 * (1 + 3021 * (rho 4132 * seg6AccX79 rho) * (rho 4131 * seg6AccY79 rho)) =
          rho 4132 * seg6AccX79 rho + rho 4131 * seg6AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4138 * (1 - 3021 * (rho 4132 * seg6AccX79 rho) * (rho 4131 * seg6AccY79 rho)) =
          (-1) * (rho 4132 * seg6AccX79 rho) - rho 4131 * seg6AccY79 rho +
            (seg6AccY79 rho - seg6AccX79 rho * (-1)) * (rho 4131 + rho 4132) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4138 * (1 - rho 4136) = rho 4133 - rho 4134 - rho 4135 := ha5
        _ = (-1) * rho 4134 - rho 4135 + (seg6AccY79 rho - seg6AccX79 rho * (-1)) * (rho 4131 + rho 4132) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX80 rho = seg6AccX79 rho - Bool.toZMod bit * (seg6AccX79 rho - rho 4137) := by
      have hd : rho 4139 = Bool.toZMod bit * (rho 4137 - seg6AccX79 rho) := by
        rw [← hbit]
        unfold seg6AccX79
        linear_combination -r3746
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY80 rho = seg6AccY79 rho - Bool.toZMod bit * (seg6AccY79 rho - rho 4138) := by
      have hd : rho 4140 = Bool.toZMod bit * (rho 4138 - seg6AccY79 rho) := by
        rw [← hbit]
        unfold seg6AccY79
        linear_combination -r3747
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4131 * rho 4132 = rho 4141 := by linear_combination r3748
    have hd1 : rho 4131 * rho 4131 = rho 4142 := by linear_combination r3749
    have hd2 : rho 4132 * rho 4132 = rho 4143 := by linear_combination r3750
    have hd3 : rho 4144 * (rho 4132 * rho 4132 + rho 4131 * rho 4131 * (-1)) = 2 * (rho 4131 * rho 4132) := by
      rw [hd0, hd1, hd2]
      linear_combination r3751
    have hd4 : rho 4145 * (2 - (rho 4132 * rho 4132 + rho 4131 * rho 4131 * (-1))) = rho 4132 * rho 4132 - rho 4131 * rho 4131 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3752
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX79 rho : Seg6.F), (seg6AccY79 rho : Seg6.F)⟩
      ⟨(rho 4131 : Seg6.F), (rho 4132 : Seg6.F)⟩
      ⟨(rho 4137 : Seg6.F), (rho 4138 : Seg6.F)⟩
      ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩
      ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg6_rows80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3753 rho ∧ Seg6.relationRow3754 rho ∧ Seg6.relationRow3755 rho ∧ Seg6.relationRow3756 rho ∧ Seg6.relationRow3757 rho ∧ Seg6.relationRow3758 rho ∧ Seg6.relationRow3759 rho ∧ Seg6.relationRow3760 rho ∧ Seg6.relationRow3761 rho ∧ Seg6.relationRow3762 rho ∧ Seg6.relationRow3763 rho ∧ Seg6.relationRow3764 rho ∧ Seg6.relationRow3765 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765⟩

theorem seg6_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1964 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩
        ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩
        ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩
        ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩ := by
  obtain ⟨r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765⟩ := seg6_rows80 rho h
  unfold Seg6.relationRow3753 Seg6.relationLc488 at r3753
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3753
  unfold Seg6.relationRow3754 Seg6.relationLc489 at r3754
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3754
  unfold Seg6.relationRow3755 Seg6.relationLc490 at r3755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3755
  unfold Seg6.relationRow3756 at r3756
  unfold Seg6.relationRow3757 at r3757
  unfold Seg6.relationRow3758 at r3758
  unfold Seg6.relationRow3759 Seg6.relationLc491 at r3759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759
  unfold Seg6.relationRow3760 Seg6.relationLc492 at r3760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3760
  unfold Seg6.relationRow3761 at r3761
  unfold Seg6.relationRow3762 at r3762
  unfold Seg6.relationRow3763 at r3763
  unfold Seg6.relationRow3764 at r3764
  unfold Seg6.relationRow3765 at r3765
  have hrung80 (bit : Bool) (hbit : rho 1964 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩
        ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩
        ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩
        ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩ := by
    have hnextx : seg6AccX81 rho = seg6AccX80 rho + rho 4152 := by
      unfold seg6AccX81 seg6AccX80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 80]
      ring
    have hnexty : seg6AccY81 rho = seg6AccY80 rho + rho 4153 := by
      unfold seg6AccY81 seg6AccY80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 80]
      ring
    have ha0 : (rho 4144 + rho 4145) * (seg6AccX80 rho + seg6AccY80 rho) = rho 4146 := by
      unfold seg6AccX80 seg6AccY80
      linear_combination r3753
    have ha1 : rho 4145 * seg6AccX80 rho = rho 4147 := by
      unfold seg6AccX80
      linear_combination r3754
    have ha2 : rho 4144 * seg6AccY80 rho = rho 4148 := by
      unfold seg6AccY80
      linear_combination r3755
    have ha3 : 3021 * rho 4147 * rho 4148 = rho 4149 := by
      linear_combination r3756
    have ha4 : rho 4150 * (1 + rho 4149) = rho 4147 + rho 4148 := by
      linear_combination r3757
    have ha5 : rho 4151 * (1 - rho 4149) = rho 4146 - rho 4147 - rho 4148 := by
      linear_combination r3758
    have haddx :
        rho 4150 * (1 + 3021 * (rho 4145 * seg6AccX80 rho) * (rho 4144 * seg6AccY80 rho)) =
          rho 4145 * seg6AccX80 rho + rho 4144 * seg6AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4151 * (1 - 3021 * (rho 4145 * seg6AccX80 rho) * (rho 4144 * seg6AccY80 rho)) =
          (-1) * (rho 4145 * seg6AccX80 rho) - rho 4144 * seg6AccY80 rho +
            (seg6AccY80 rho - seg6AccX80 rho * (-1)) * (rho 4144 + rho 4145) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4151 * (1 - rho 4149) = rho 4146 - rho 4147 - rho 4148 := ha5
        _ = (-1) * rho 4147 - rho 4148 + (seg6AccY80 rho - seg6AccX80 rho * (-1)) * (rho 4144 + rho 4145) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX81 rho = seg6AccX80 rho - Bool.toZMod bit * (seg6AccX80 rho - rho 4150) := by
      have hd : rho 4152 = Bool.toZMod bit * (rho 4150 - seg6AccX80 rho) := by
        rw [← hbit]
        unfold seg6AccX80
        linear_combination -r3759
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY81 rho = seg6AccY80 rho - Bool.toZMod bit * (seg6AccY80 rho - rho 4151) := by
      have hd : rho 4153 = Bool.toZMod bit * (rho 4151 - seg6AccY80 rho) := by
        rw [← hbit]
        unfold seg6AccY80
        linear_combination -r3760
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4144 * rho 4145 = rho 4154 := by linear_combination r3761
    have hd1 : rho 4144 * rho 4144 = rho 4155 := by linear_combination r3762
    have hd2 : rho 4145 * rho 4145 = rho 4156 := by linear_combination r3763
    have hd3 : rho 4157 * (rho 4145 * rho 4145 + rho 4144 * rho 4144 * (-1)) = 2 * (rho 4144 * rho 4145) := by
      rw [hd0, hd1, hd2]
      linear_combination r3764
    have hd4 : rho 4158 * (2 - (rho 4145 * rho 4145 + rho 4144 * rho 4144 * (-1))) = rho 4145 * rho 4145 - rho 4144 * rho 4144 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3765
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX80 rho : Seg6.F), (seg6AccY80 rho : Seg6.F)⟩
      ⟨(rho 4144 : Seg6.F), (rho 4145 : Seg6.F)⟩
      ⟨(rho 4150 : Seg6.F), (rho 4151 : Seg6.F)⟩
      ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩
      ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg6_rows81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3766 rho ∧ Seg6.relationRow3767 rho ∧ Seg6.relationRow3768 rho ∧ Seg6.relationRow3769 rho ∧ Seg6.relationRow3770 rho ∧ Seg6.relationRow3771 rho ∧ Seg6.relationRow3772 rho ∧ Seg6.relationRow3773 rho ∧ Seg6.relationRow3774 rho ∧ Seg6.relationRow3775 rho ∧ Seg6.relationRow3776 rho ∧ Seg6.relationRow3777 rho ∧ Seg6.relationRow3778 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778⟩

theorem seg6_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1965 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩
        ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩
        ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩
        ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩ := by
  obtain ⟨r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778⟩ := seg6_rows81 rho h
  unfold Seg6.relationRow3766 Seg6.relationLc493 at r3766
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3766
  unfold Seg6.relationRow3767 Seg6.relationLc494 at r3767
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3767
  unfold Seg6.relationRow3768 Seg6.relationLc495 at r3768
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3768
  unfold Seg6.relationRow3769 at r3769
  unfold Seg6.relationRow3770 at r3770
  unfold Seg6.relationRow3771 at r3771
  unfold Seg6.relationRow3772 Seg6.relationLc496 at r3772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772
  unfold Seg6.relationRow3773 Seg6.relationLc497 at r3773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3773
  unfold Seg6.relationRow3774 at r3774
  unfold Seg6.relationRow3775 at r3775
  unfold Seg6.relationRow3776 at r3776
  unfold Seg6.relationRow3777 at r3777
  unfold Seg6.relationRow3778 at r3778
  have hrung81 (bit : Bool) (hbit : rho 1965 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩
        ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩
        ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩
        ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩ := by
    have hnextx : seg6AccX82 rho = seg6AccX81 rho + rho 4165 := by
      unfold seg6AccX82 seg6AccX81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 81]
      ring
    have hnexty : seg6AccY82 rho = seg6AccY81 rho + rho 4166 := by
      unfold seg6AccY82 seg6AccY81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 81]
      ring
    have ha0 : (rho 4157 + rho 4158) * (seg6AccX81 rho + seg6AccY81 rho) = rho 4159 := by
      unfold seg6AccX81 seg6AccY81
      linear_combination r3766
    have ha1 : rho 4158 * seg6AccX81 rho = rho 4160 := by
      unfold seg6AccX81
      linear_combination r3767
    have ha2 : rho 4157 * seg6AccY81 rho = rho 4161 := by
      unfold seg6AccY81
      linear_combination r3768
    have ha3 : 3021 * rho 4160 * rho 4161 = rho 4162 := by
      linear_combination r3769
    have ha4 : rho 4163 * (1 + rho 4162) = rho 4160 + rho 4161 := by
      linear_combination r3770
    have ha5 : rho 4164 * (1 - rho 4162) = rho 4159 - rho 4160 - rho 4161 := by
      linear_combination r3771
    have haddx :
        rho 4163 * (1 + 3021 * (rho 4158 * seg6AccX81 rho) * (rho 4157 * seg6AccY81 rho)) =
          rho 4158 * seg6AccX81 rho + rho 4157 * seg6AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4164 * (1 - 3021 * (rho 4158 * seg6AccX81 rho) * (rho 4157 * seg6AccY81 rho)) =
          (-1) * (rho 4158 * seg6AccX81 rho) - rho 4157 * seg6AccY81 rho +
            (seg6AccY81 rho - seg6AccX81 rho * (-1)) * (rho 4157 + rho 4158) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4164 * (1 - rho 4162) = rho 4159 - rho 4160 - rho 4161 := ha5
        _ = (-1) * rho 4160 - rho 4161 + (seg6AccY81 rho - seg6AccX81 rho * (-1)) * (rho 4157 + rho 4158) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX82 rho = seg6AccX81 rho - Bool.toZMod bit * (seg6AccX81 rho - rho 4163) := by
      have hd : rho 4165 = Bool.toZMod bit * (rho 4163 - seg6AccX81 rho) := by
        rw [← hbit]
        unfold seg6AccX81
        linear_combination -r3772
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY82 rho = seg6AccY81 rho - Bool.toZMod bit * (seg6AccY81 rho - rho 4164) := by
      have hd : rho 4166 = Bool.toZMod bit * (rho 4164 - seg6AccY81 rho) := by
        rw [← hbit]
        unfold seg6AccY81
        linear_combination -r3773
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4157 * rho 4158 = rho 4167 := by linear_combination r3774
    have hd1 : rho 4157 * rho 4157 = rho 4168 := by linear_combination r3775
    have hd2 : rho 4158 * rho 4158 = rho 4169 := by linear_combination r3776
    have hd3 : rho 4170 * (rho 4158 * rho 4158 + rho 4157 * rho 4157 * (-1)) = 2 * (rho 4157 * rho 4158) := by
      rw [hd0, hd1, hd2]
      linear_combination r3777
    have hd4 : rho 4171 * (2 - (rho 4158 * rho 4158 + rho 4157 * rho 4157 * (-1))) = rho 4158 * rho 4158 - rho 4157 * rho 4157 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3778
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX81 rho : Seg6.F), (seg6AccY81 rho : Seg6.F)⟩
      ⟨(rho 4157 : Seg6.F), (rho 4158 : Seg6.F)⟩
      ⟨(rho 4163 : Seg6.F), (rho 4164 : Seg6.F)⟩
      ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩
      ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg6_rows82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3779 rho ∧ Seg6.relationRow3780 rho ∧ Seg6.relationRow3781 rho ∧ Seg6.relationRow3782 rho ∧ Seg6.relationRow3783 rho ∧ Seg6.relationRow3784 rho ∧ Seg6.relationRow3785 rho ∧ Seg6.relationRow3786 rho ∧ Seg6.relationRow3787 rho ∧ Seg6.relationRow3788 rho ∧ Seg6.relationRow3789 rho ∧ Seg6.relationRow3790 rho ∧ Seg6.relationRow3791 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791⟩

theorem seg6_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1966 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩
        ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩
        ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩
        ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩ := by
  obtain ⟨r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791⟩ := seg6_rows82 rho h
  unfold Seg6.relationRow3779 Seg6.relationLc498 at r3779
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3779
  unfold Seg6.relationRow3780 Seg6.relationLc499 at r3780
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3780
  unfold Seg6.relationRow3781 Seg6.relationLc500 at r3781
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3781
  unfold Seg6.relationRow3782 at r3782
  unfold Seg6.relationRow3783 at r3783
  unfold Seg6.relationRow3784 at r3784
  unfold Seg6.relationRow3785 Seg6.relationLc501 at r3785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785
  unfold Seg6.relationRow3786 Seg6.relationLc502 at r3786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3786
  unfold Seg6.relationRow3787 at r3787
  unfold Seg6.relationRow3788 at r3788
  unfold Seg6.relationRow3789 at r3789
  unfold Seg6.relationRow3790 at r3790
  unfold Seg6.relationRow3791 at r3791
  have hrung82 (bit : Bool) (hbit : rho 1966 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩
        ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩
        ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩
        ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩ := by
    have hnextx : seg6AccX83 rho = seg6AccX82 rho + rho 4178 := by
      unfold seg6AccX83 seg6AccX82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 82]
      ring
    have hnexty : seg6AccY83 rho = seg6AccY82 rho + rho 4179 := by
      unfold seg6AccY83 seg6AccY82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 82]
      ring
    have ha0 : (rho 4170 + rho 4171) * (seg6AccX82 rho + seg6AccY82 rho) = rho 4172 := by
      unfold seg6AccX82 seg6AccY82
      linear_combination r3779
    have ha1 : rho 4171 * seg6AccX82 rho = rho 4173 := by
      unfold seg6AccX82
      linear_combination r3780
    have ha2 : rho 4170 * seg6AccY82 rho = rho 4174 := by
      unfold seg6AccY82
      linear_combination r3781
    have ha3 : 3021 * rho 4173 * rho 4174 = rho 4175 := by
      linear_combination r3782
    have ha4 : rho 4176 * (1 + rho 4175) = rho 4173 + rho 4174 := by
      linear_combination r3783
    have ha5 : rho 4177 * (1 - rho 4175) = rho 4172 - rho 4173 - rho 4174 := by
      linear_combination r3784
    have haddx :
        rho 4176 * (1 + 3021 * (rho 4171 * seg6AccX82 rho) * (rho 4170 * seg6AccY82 rho)) =
          rho 4171 * seg6AccX82 rho + rho 4170 * seg6AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4177 * (1 - 3021 * (rho 4171 * seg6AccX82 rho) * (rho 4170 * seg6AccY82 rho)) =
          (-1) * (rho 4171 * seg6AccX82 rho) - rho 4170 * seg6AccY82 rho +
            (seg6AccY82 rho - seg6AccX82 rho * (-1)) * (rho 4170 + rho 4171) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4177 * (1 - rho 4175) = rho 4172 - rho 4173 - rho 4174 := ha5
        _ = (-1) * rho 4173 - rho 4174 + (seg6AccY82 rho - seg6AccX82 rho * (-1)) * (rho 4170 + rho 4171) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX83 rho = seg6AccX82 rho - Bool.toZMod bit * (seg6AccX82 rho - rho 4176) := by
      have hd : rho 4178 = Bool.toZMod bit * (rho 4176 - seg6AccX82 rho) := by
        rw [← hbit]
        unfold seg6AccX82
        linear_combination -r3785
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY83 rho = seg6AccY82 rho - Bool.toZMod bit * (seg6AccY82 rho - rho 4177) := by
      have hd : rho 4179 = Bool.toZMod bit * (rho 4177 - seg6AccY82 rho) := by
        rw [← hbit]
        unfold seg6AccY82
        linear_combination -r3786
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4170 * rho 4171 = rho 4180 := by linear_combination r3787
    have hd1 : rho 4170 * rho 4170 = rho 4181 := by linear_combination r3788
    have hd2 : rho 4171 * rho 4171 = rho 4182 := by linear_combination r3789
    have hd3 : rho 4183 * (rho 4171 * rho 4171 + rho 4170 * rho 4170 * (-1)) = 2 * (rho 4170 * rho 4171) := by
      rw [hd0, hd1, hd2]
      linear_combination r3790
    have hd4 : rho 4184 * (2 - (rho 4171 * rho 4171 + rho 4170 * rho 4170 * (-1))) = rho 4171 * rho 4171 - rho 4170 * rho 4170 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3791
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX82 rho : Seg6.F), (seg6AccY82 rho : Seg6.F)⟩
      ⟨(rho 4170 : Seg6.F), (rho 4171 : Seg6.F)⟩
      ⟨(rho 4176 : Seg6.F), (rho 4177 : Seg6.F)⟩
      ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩
      ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg6_rows83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3792 rho ∧ Seg6.relationRow3793 rho ∧ Seg6.relationRow3794 rho ∧ Seg6.relationRow3795 rho ∧ Seg6.relationRow3796 rho ∧ Seg6.relationRow3797 rho ∧ Seg6.relationRow3798 rho ∧ Seg6.relationRow3799 rho ∧ Seg6.relationRow3800 rho ∧ Seg6.relationRow3801 rho ∧ Seg6.relationRow3802 rho ∧ Seg6.relationRow3803 rho ∧ Seg6.relationRow3804 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804⟩

theorem seg6_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1967 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩
        ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩
        ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩
        ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩ := by
  obtain ⟨r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804⟩ := seg6_rows83 rho h
  unfold Seg6.relationRow3792 Seg6.relationLc503 at r3792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3792
  unfold Seg6.relationRow3793 Seg6.relationLc504 at r3793
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3793
  unfold Seg6.relationRow3794 Seg6.relationLc505 at r3794
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3794
  unfold Seg6.relationRow3795 at r3795
  unfold Seg6.relationRow3796 at r3796
  unfold Seg6.relationRow3797 at r3797
  unfold Seg6.relationRow3798 Seg6.relationLc506 at r3798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798
  unfold Seg6.relationRow3799 Seg6.relationLc507 at r3799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3799
  unfold Seg6.relationRow3800 at r3800
  unfold Seg6.relationRow3801 at r3801
  unfold Seg6.relationRow3802 at r3802
  unfold Seg6.relationRow3803 at r3803
  unfold Seg6.relationRow3804 at r3804
  have hrung83 (bit : Bool) (hbit : rho 1967 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩
        ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩
        ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩
        ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩ := by
    have hnextx : seg6AccX84 rho = seg6AccX83 rho + rho 4191 := by
      unfold seg6AccX84 seg6AccX83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 83]
      ring
    have hnexty : seg6AccY84 rho = seg6AccY83 rho + rho 4192 := by
      unfold seg6AccY84 seg6AccY83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 83]
      ring
    have ha0 : (rho 4183 + rho 4184) * (seg6AccX83 rho + seg6AccY83 rho) = rho 4185 := by
      unfold seg6AccX83 seg6AccY83
      linear_combination r3792
    have ha1 : rho 4184 * seg6AccX83 rho = rho 4186 := by
      unfold seg6AccX83
      linear_combination r3793
    have ha2 : rho 4183 * seg6AccY83 rho = rho 4187 := by
      unfold seg6AccY83
      linear_combination r3794
    have ha3 : 3021 * rho 4186 * rho 4187 = rho 4188 := by
      linear_combination r3795
    have ha4 : rho 4189 * (1 + rho 4188) = rho 4186 + rho 4187 := by
      linear_combination r3796
    have ha5 : rho 4190 * (1 - rho 4188) = rho 4185 - rho 4186 - rho 4187 := by
      linear_combination r3797
    have haddx :
        rho 4189 * (1 + 3021 * (rho 4184 * seg6AccX83 rho) * (rho 4183 * seg6AccY83 rho)) =
          rho 4184 * seg6AccX83 rho + rho 4183 * seg6AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4190 * (1 - 3021 * (rho 4184 * seg6AccX83 rho) * (rho 4183 * seg6AccY83 rho)) =
          (-1) * (rho 4184 * seg6AccX83 rho) - rho 4183 * seg6AccY83 rho +
            (seg6AccY83 rho - seg6AccX83 rho * (-1)) * (rho 4183 + rho 4184) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4190 * (1 - rho 4188) = rho 4185 - rho 4186 - rho 4187 := ha5
        _ = (-1) * rho 4186 - rho 4187 + (seg6AccY83 rho - seg6AccX83 rho * (-1)) * (rho 4183 + rho 4184) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX84 rho = seg6AccX83 rho - Bool.toZMod bit * (seg6AccX83 rho - rho 4189) := by
      have hd : rho 4191 = Bool.toZMod bit * (rho 4189 - seg6AccX83 rho) := by
        rw [← hbit]
        unfold seg6AccX83
        linear_combination -r3798
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY84 rho = seg6AccY83 rho - Bool.toZMod bit * (seg6AccY83 rho - rho 4190) := by
      have hd : rho 4192 = Bool.toZMod bit * (rho 4190 - seg6AccY83 rho) := by
        rw [← hbit]
        unfold seg6AccY83
        linear_combination -r3799
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4183 * rho 4184 = rho 4193 := by linear_combination r3800
    have hd1 : rho 4183 * rho 4183 = rho 4194 := by linear_combination r3801
    have hd2 : rho 4184 * rho 4184 = rho 4195 := by linear_combination r3802
    have hd3 : rho 4196 * (rho 4184 * rho 4184 + rho 4183 * rho 4183 * (-1)) = 2 * (rho 4183 * rho 4184) := by
      rw [hd0, hd1, hd2]
      linear_combination r3803
    have hd4 : rho 4197 * (2 - (rho 4184 * rho 4184 + rho 4183 * rho 4183 * (-1))) = rho 4184 * rho 4184 - rho 4183 * rho 4183 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3804
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX83 rho : Seg6.F), (seg6AccY83 rho : Seg6.F)⟩
      ⟨(rho 4183 : Seg6.F), (rho 4184 : Seg6.F)⟩
      ⟨(rho 4189 : Seg6.F), (rho 4190 : Seg6.F)⟩
      ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩
      ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg6_rows84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3805 rho ∧ Seg6.relationRow3806 rho ∧ Seg6.relationRow3807 rho ∧ Seg6.relationRow3808 rho ∧ Seg6.relationRow3809 rho ∧ Seg6.relationRow3810 rho ∧ Seg6.relationRow3811 rho ∧ Seg6.relationRow3812 rho ∧ Seg6.relationRow3813 rho ∧ Seg6.relationRow3814 rho ∧ Seg6.relationRow3815 rho ∧ Seg6.relationRow3816 rho ∧ Seg6.relationRow3817 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817⟩

theorem seg6_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1968 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩
        ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩
        ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩
        ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩ := by
  obtain ⟨r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817⟩ := seg6_rows84 rho h
  unfold Seg6.relationRow3805 Seg6.relationLc508 at r3805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3805
  unfold Seg6.relationRow3806 Seg6.relationLc509 at r3806
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3806
  unfold Seg6.relationRow3807 Seg6.relationLc510 at r3807
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3807
  unfold Seg6.relationRow3808 at r3808
  unfold Seg6.relationRow3809 at r3809
  unfold Seg6.relationRow3810 at r3810
  unfold Seg6.relationRow3811 Seg6.relationLc511 at r3811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811
  unfold Seg6.relationRow3812 Seg6.relationLc512 at r3812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3812
  unfold Seg6.relationRow3813 at r3813
  unfold Seg6.relationRow3814 at r3814
  unfold Seg6.relationRow3815 at r3815
  unfold Seg6.relationRow3816 at r3816
  unfold Seg6.relationRow3817 at r3817
  have hrung84 (bit : Bool) (hbit : rho 1968 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩
        ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩
        ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩
        ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩ := by
    have hnextx : seg6AccX85 rho = seg6AccX84 rho + rho 4204 := by
      unfold seg6AccX85 seg6AccX84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 84]
      ring
    have hnexty : seg6AccY85 rho = seg6AccY84 rho + rho 4205 := by
      unfold seg6AccY85 seg6AccY84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 84]
      ring
    have ha0 : (rho 4196 + rho 4197) * (seg6AccX84 rho + seg6AccY84 rho) = rho 4198 := by
      unfold seg6AccX84 seg6AccY84
      linear_combination r3805
    have ha1 : rho 4197 * seg6AccX84 rho = rho 4199 := by
      unfold seg6AccX84
      linear_combination r3806
    have ha2 : rho 4196 * seg6AccY84 rho = rho 4200 := by
      unfold seg6AccY84
      linear_combination r3807
    have ha3 : 3021 * rho 4199 * rho 4200 = rho 4201 := by
      linear_combination r3808
    have ha4 : rho 4202 * (1 + rho 4201) = rho 4199 + rho 4200 := by
      linear_combination r3809
    have ha5 : rho 4203 * (1 - rho 4201) = rho 4198 - rho 4199 - rho 4200 := by
      linear_combination r3810
    have haddx :
        rho 4202 * (1 + 3021 * (rho 4197 * seg6AccX84 rho) * (rho 4196 * seg6AccY84 rho)) =
          rho 4197 * seg6AccX84 rho + rho 4196 * seg6AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4203 * (1 - 3021 * (rho 4197 * seg6AccX84 rho) * (rho 4196 * seg6AccY84 rho)) =
          (-1) * (rho 4197 * seg6AccX84 rho) - rho 4196 * seg6AccY84 rho +
            (seg6AccY84 rho - seg6AccX84 rho * (-1)) * (rho 4196 + rho 4197) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4203 * (1 - rho 4201) = rho 4198 - rho 4199 - rho 4200 := ha5
        _ = (-1) * rho 4199 - rho 4200 + (seg6AccY84 rho - seg6AccX84 rho * (-1)) * (rho 4196 + rho 4197) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX85 rho = seg6AccX84 rho - Bool.toZMod bit * (seg6AccX84 rho - rho 4202) := by
      have hd : rho 4204 = Bool.toZMod bit * (rho 4202 - seg6AccX84 rho) := by
        rw [← hbit]
        unfold seg6AccX84
        linear_combination -r3811
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY85 rho = seg6AccY84 rho - Bool.toZMod bit * (seg6AccY84 rho - rho 4203) := by
      have hd : rho 4205 = Bool.toZMod bit * (rho 4203 - seg6AccY84 rho) := by
        rw [← hbit]
        unfold seg6AccY84
        linear_combination -r3812
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4196 * rho 4197 = rho 4206 := by linear_combination r3813
    have hd1 : rho 4196 * rho 4196 = rho 4207 := by linear_combination r3814
    have hd2 : rho 4197 * rho 4197 = rho 4208 := by linear_combination r3815
    have hd3 : rho 4209 * (rho 4197 * rho 4197 + rho 4196 * rho 4196 * (-1)) = 2 * (rho 4196 * rho 4197) := by
      rw [hd0, hd1, hd2]
      linear_combination r3816
    have hd4 : rho 4210 * (2 - (rho 4197 * rho 4197 + rho 4196 * rho 4196 * (-1))) = rho 4197 * rho 4197 - rho 4196 * rho 4196 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3817
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX84 rho : Seg6.F), (seg6AccY84 rho : Seg6.F)⟩
      ⟨(rho 4196 : Seg6.F), (rho 4197 : Seg6.F)⟩
      ⟨(rho 4202 : Seg6.F), (rho 4203 : Seg6.F)⟩
      ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩
      ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg6_rows85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3818 rho ∧ Seg6.relationRow3819 rho ∧ Seg6.relationRow3820 rho ∧ Seg6.relationRow3821 rho ∧ Seg6.relationRow3822 rho ∧ Seg6.relationRow3823 rho ∧ Seg6.relationRow3824 rho ∧ Seg6.relationRow3825 rho ∧ Seg6.relationRow3826 rho ∧ Seg6.relationRow3827 rho ∧ Seg6.relationRow3828 rho ∧ Seg6.relationRow3829 rho ∧ Seg6.relationRow3830 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830⟩

theorem seg6_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1969 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩
        ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩
        ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩
        ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩ := by
  obtain ⟨r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830⟩ := seg6_rows85 rho h
  unfold Seg6.relationRow3818 Seg6.relationLc513 at r3818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3818
  unfold Seg6.relationRow3819 Seg6.relationLc514 at r3819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3819
  unfold Seg6.relationRow3820 Seg6.relationLc515 at r3820
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3820
  unfold Seg6.relationRow3821 at r3821
  unfold Seg6.relationRow3822 at r3822
  unfold Seg6.relationRow3823 at r3823
  unfold Seg6.relationRow3824 Seg6.relationLc516 at r3824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824
  unfold Seg6.relationRow3825 Seg6.relationLc517 at r3825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3825
  unfold Seg6.relationRow3826 at r3826
  unfold Seg6.relationRow3827 at r3827
  unfold Seg6.relationRow3828 at r3828
  unfold Seg6.relationRow3829 at r3829
  unfold Seg6.relationRow3830 at r3830
  have hrung85 (bit : Bool) (hbit : rho 1969 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩
        ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩
        ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩
        ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩ := by
    have hnextx : seg6AccX86 rho = seg6AccX85 rho + rho 4217 := by
      unfold seg6AccX86 seg6AccX85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 85]
      ring
    have hnexty : seg6AccY86 rho = seg6AccY85 rho + rho 4218 := by
      unfold seg6AccY86 seg6AccY85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 85]
      ring
    have ha0 : (rho 4209 + rho 4210) * (seg6AccX85 rho + seg6AccY85 rho) = rho 4211 := by
      unfold seg6AccX85 seg6AccY85
      linear_combination r3818
    have ha1 : rho 4210 * seg6AccX85 rho = rho 4212 := by
      unfold seg6AccX85
      linear_combination r3819
    have ha2 : rho 4209 * seg6AccY85 rho = rho 4213 := by
      unfold seg6AccY85
      linear_combination r3820
    have ha3 : 3021 * rho 4212 * rho 4213 = rho 4214 := by
      linear_combination r3821
    have ha4 : rho 4215 * (1 + rho 4214) = rho 4212 + rho 4213 := by
      linear_combination r3822
    have ha5 : rho 4216 * (1 - rho 4214) = rho 4211 - rho 4212 - rho 4213 := by
      linear_combination r3823
    have haddx :
        rho 4215 * (1 + 3021 * (rho 4210 * seg6AccX85 rho) * (rho 4209 * seg6AccY85 rho)) =
          rho 4210 * seg6AccX85 rho + rho 4209 * seg6AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4216 * (1 - 3021 * (rho 4210 * seg6AccX85 rho) * (rho 4209 * seg6AccY85 rho)) =
          (-1) * (rho 4210 * seg6AccX85 rho) - rho 4209 * seg6AccY85 rho +
            (seg6AccY85 rho - seg6AccX85 rho * (-1)) * (rho 4209 + rho 4210) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4216 * (1 - rho 4214) = rho 4211 - rho 4212 - rho 4213 := ha5
        _ = (-1) * rho 4212 - rho 4213 + (seg6AccY85 rho - seg6AccX85 rho * (-1)) * (rho 4209 + rho 4210) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX86 rho = seg6AccX85 rho - Bool.toZMod bit * (seg6AccX85 rho - rho 4215) := by
      have hd : rho 4217 = Bool.toZMod bit * (rho 4215 - seg6AccX85 rho) := by
        rw [← hbit]
        unfold seg6AccX85
        linear_combination -r3824
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY86 rho = seg6AccY85 rho - Bool.toZMod bit * (seg6AccY85 rho - rho 4216) := by
      have hd : rho 4218 = Bool.toZMod bit * (rho 4216 - seg6AccY85 rho) := by
        rw [← hbit]
        unfold seg6AccY85
        linear_combination -r3825
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4209 * rho 4210 = rho 4219 := by linear_combination r3826
    have hd1 : rho 4209 * rho 4209 = rho 4220 := by linear_combination r3827
    have hd2 : rho 4210 * rho 4210 = rho 4221 := by linear_combination r3828
    have hd3 : rho 4222 * (rho 4210 * rho 4210 + rho 4209 * rho 4209 * (-1)) = 2 * (rho 4209 * rho 4210) := by
      rw [hd0, hd1, hd2]
      linear_combination r3829
    have hd4 : rho 4223 * (2 - (rho 4210 * rho 4210 + rho 4209 * rho 4209 * (-1))) = rho 4210 * rho 4210 - rho 4209 * rho 4209 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3830
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX85 rho : Seg6.F), (seg6AccY85 rho : Seg6.F)⟩
      ⟨(rho 4209 : Seg6.F), (rho 4210 : Seg6.F)⟩
      ⟨(rho 4215 : Seg6.F), (rho 4216 : Seg6.F)⟩
      ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩
      ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg6_rows86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3831 rho ∧ Seg6.relationRow3832 rho ∧ Seg6.relationRow3833 rho ∧ Seg6.relationRow3834 rho ∧ Seg6.relationRow3835 rho ∧ Seg6.relationRow3836 rho ∧ Seg6.relationRow3837 rho ∧ Seg6.relationRow3838 rho ∧ Seg6.relationRow3839 rho ∧ Seg6.relationRow3840 rho ∧ Seg6.relationRow3841 rho ∧ Seg6.relationRow3842 rho ∧ Seg6.relationRow3843 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843⟩

theorem seg6_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1970 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩
        ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩
        ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩
        ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩ := by
  obtain ⟨r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843⟩ := seg6_rows86 rho h
  unfold Seg6.relationRow3831 Seg6.relationLc518 at r3831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3831
  unfold Seg6.relationRow3832 Seg6.relationLc519 at r3832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3832
  unfold Seg6.relationRow3833 Seg6.relationLc520 at r3833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3833
  unfold Seg6.relationRow3834 at r3834
  unfold Seg6.relationRow3835 at r3835
  unfold Seg6.relationRow3836 at r3836
  unfold Seg6.relationRow3837 Seg6.relationLc521 at r3837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837
  unfold Seg6.relationRow3838 Seg6.relationLc522 at r3838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3838
  unfold Seg6.relationRow3839 at r3839
  unfold Seg6.relationRow3840 at r3840
  unfold Seg6.relationRow3841 at r3841
  unfold Seg6.relationRow3842 at r3842
  unfold Seg6.relationRow3843 at r3843
  have hrung86 (bit : Bool) (hbit : rho 1970 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩
        ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩
        ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩
        ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩ := by
    have hnextx : seg6AccX87 rho = seg6AccX86 rho + rho 4230 := by
      unfold seg6AccX87 seg6AccX86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 86]
      ring
    have hnexty : seg6AccY87 rho = seg6AccY86 rho + rho 4231 := by
      unfold seg6AccY87 seg6AccY86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 86]
      ring
    have ha0 : (rho 4222 + rho 4223) * (seg6AccX86 rho + seg6AccY86 rho) = rho 4224 := by
      unfold seg6AccX86 seg6AccY86
      linear_combination r3831
    have ha1 : rho 4223 * seg6AccX86 rho = rho 4225 := by
      unfold seg6AccX86
      linear_combination r3832
    have ha2 : rho 4222 * seg6AccY86 rho = rho 4226 := by
      unfold seg6AccY86
      linear_combination r3833
    have ha3 : 3021 * rho 4225 * rho 4226 = rho 4227 := by
      linear_combination r3834
    have ha4 : rho 4228 * (1 + rho 4227) = rho 4225 + rho 4226 := by
      linear_combination r3835
    have ha5 : rho 4229 * (1 - rho 4227) = rho 4224 - rho 4225 - rho 4226 := by
      linear_combination r3836
    have haddx :
        rho 4228 * (1 + 3021 * (rho 4223 * seg6AccX86 rho) * (rho 4222 * seg6AccY86 rho)) =
          rho 4223 * seg6AccX86 rho + rho 4222 * seg6AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4229 * (1 - 3021 * (rho 4223 * seg6AccX86 rho) * (rho 4222 * seg6AccY86 rho)) =
          (-1) * (rho 4223 * seg6AccX86 rho) - rho 4222 * seg6AccY86 rho +
            (seg6AccY86 rho - seg6AccX86 rho * (-1)) * (rho 4222 + rho 4223) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4229 * (1 - rho 4227) = rho 4224 - rho 4225 - rho 4226 := ha5
        _ = (-1) * rho 4225 - rho 4226 + (seg6AccY86 rho - seg6AccX86 rho * (-1)) * (rho 4222 + rho 4223) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX87 rho = seg6AccX86 rho - Bool.toZMod bit * (seg6AccX86 rho - rho 4228) := by
      have hd : rho 4230 = Bool.toZMod bit * (rho 4228 - seg6AccX86 rho) := by
        rw [← hbit]
        unfold seg6AccX86
        linear_combination -r3837
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY87 rho = seg6AccY86 rho - Bool.toZMod bit * (seg6AccY86 rho - rho 4229) := by
      have hd : rho 4231 = Bool.toZMod bit * (rho 4229 - seg6AccY86 rho) := by
        rw [← hbit]
        unfold seg6AccY86
        linear_combination -r3838
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4222 * rho 4223 = rho 4232 := by linear_combination r3839
    have hd1 : rho 4222 * rho 4222 = rho 4233 := by linear_combination r3840
    have hd2 : rho 4223 * rho 4223 = rho 4234 := by linear_combination r3841
    have hd3 : rho 4235 * (rho 4223 * rho 4223 + rho 4222 * rho 4222 * (-1)) = 2 * (rho 4222 * rho 4223) := by
      rw [hd0, hd1, hd2]
      linear_combination r3842
    have hd4 : rho 4236 * (2 - (rho 4223 * rho 4223 + rho 4222 * rho 4222 * (-1))) = rho 4223 * rho 4223 - rho 4222 * rho 4222 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3843
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX86 rho : Seg6.F), (seg6AccY86 rho : Seg6.F)⟩
      ⟨(rho 4222 : Seg6.F), (rho 4223 : Seg6.F)⟩
      ⟨(rho 4228 : Seg6.F), (rho 4229 : Seg6.F)⟩
      ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩
      ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg6_rows87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3844 rho ∧ Seg6.relationRow3845 rho ∧ Seg6.relationRow3846 rho ∧ Seg6.relationRow3847 rho ∧ Seg6.relationRow3848 rho ∧ Seg6.relationRow3849 rho ∧ Seg6.relationRow3850 rho ∧ Seg6.relationRow3851 rho ∧ Seg6.relationRow3852 rho ∧ Seg6.relationRow3853 rho ∧ Seg6.relationRow3854 rho ∧ Seg6.relationRow3855 rho ∧ Seg6.relationRow3856 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856⟩

theorem seg6_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1971 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩
        ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩
        ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩
        ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩ := by
  obtain ⟨r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856⟩ := seg6_rows87 rho h
  unfold Seg6.relationRow3844 Seg6.relationLc523 at r3844
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3844
  unfold Seg6.relationRow3845 Seg6.relationLc524 at r3845
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3845
  unfold Seg6.relationRow3846 Seg6.relationLc525 at r3846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3846
  unfold Seg6.relationRow3847 at r3847
  unfold Seg6.relationRow3848 at r3848
  unfold Seg6.relationRow3849 at r3849
  unfold Seg6.relationRow3850 Seg6.relationLc526 at r3850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850
  unfold Seg6.relationRow3851 Seg6.relationLc527 at r3851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3851
  unfold Seg6.relationRow3852 at r3852
  unfold Seg6.relationRow3853 at r3853
  unfold Seg6.relationRow3854 at r3854
  unfold Seg6.relationRow3855 at r3855
  unfold Seg6.relationRow3856 at r3856
  have hrung87 (bit : Bool) (hbit : rho 1971 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩
        ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩
        ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩
        ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩ := by
    have hnextx : seg6AccX88 rho = seg6AccX87 rho + rho 4243 := by
      unfold seg6AccX88 seg6AccX87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 87]
      ring
    have hnexty : seg6AccY88 rho = seg6AccY87 rho + rho 4244 := by
      unfold seg6AccY88 seg6AccY87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 87]
      ring
    have ha0 : (rho 4235 + rho 4236) * (seg6AccX87 rho + seg6AccY87 rho) = rho 4237 := by
      unfold seg6AccX87 seg6AccY87
      linear_combination r3844
    have ha1 : rho 4236 * seg6AccX87 rho = rho 4238 := by
      unfold seg6AccX87
      linear_combination r3845
    have ha2 : rho 4235 * seg6AccY87 rho = rho 4239 := by
      unfold seg6AccY87
      linear_combination r3846
    have ha3 : 3021 * rho 4238 * rho 4239 = rho 4240 := by
      linear_combination r3847
    have ha4 : rho 4241 * (1 + rho 4240) = rho 4238 + rho 4239 := by
      linear_combination r3848
    have ha5 : rho 4242 * (1 - rho 4240) = rho 4237 - rho 4238 - rho 4239 := by
      linear_combination r3849
    have haddx :
        rho 4241 * (1 + 3021 * (rho 4236 * seg6AccX87 rho) * (rho 4235 * seg6AccY87 rho)) =
          rho 4236 * seg6AccX87 rho + rho 4235 * seg6AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4242 * (1 - 3021 * (rho 4236 * seg6AccX87 rho) * (rho 4235 * seg6AccY87 rho)) =
          (-1) * (rho 4236 * seg6AccX87 rho) - rho 4235 * seg6AccY87 rho +
            (seg6AccY87 rho - seg6AccX87 rho * (-1)) * (rho 4235 + rho 4236) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4242 * (1 - rho 4240) = rho 4237 - rho 4238 - rho 4239 := ha5
        _ = (-1) * rho 4238 - rho 4239 + (seg6AccY87 rho - seg6AccX87 rho * (-1)) * (rho 4235 + rho 4236) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX88 rho = seg6AccX87 rho - Bool.toZMod bit * (seg6AccX87 rho - rho 4241) := by
      have hd : rho 4243 = Bool.toZMod bit * (rho 4241 - seg6AccX87 rho) := by
        rw [← hbit]
        unfold seg6AccX87
        linear_combination -r3850
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY88 rho = seg6AccY87 rho - Bool.toZMod bit * (seg6AccY87 rho - rho 4242) := by
      have hd : rho 4244 = Bool.toZMod bit * (rho 4242 - seg6AccY87 rho) := by
        rw [← hbit]
        unfold seg6AccY87
        linear_combination -r3851
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4235 * rho 4236 = rho 4245 := by linear_combination r3852
    have hd1 : rho 4235 * rho 4235 = rho 4246 := by linear_combination r3853
    have hd2 : rho 4236 * rho 4236 = rho 4247 := by linear_combination r3854
    have hd3 : rho 4248 * (rho 4236 * rho 4236 + rho 4235 * rho 4235 * (-1)) = 2 * (rho 4235 * rho 4236) := by
      rw [hd0, hd1, hd2]
      linear_combination r3855
    have hd4 : rho 4249 * (2 - (rho 4236 * rho 4236 + rho 4235 * rho 4235 * (-1))) = rho 4236 * rho 4236 - rho 4235 * rho 4235 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3856
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX87 rho : Seg6.F), (seg6AccY87 rho : Seg6.F)⟩
      ⟨(rho 4235 : Seg6.F), (rho 4236 : Seg6.F)⟩
      ⟨(rho 4241 : Seg6.F), (rho 4242 : Seg6.F)⟩
      ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩
      ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg6_hstep_c7 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg6_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg6_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg6_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg6_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg6_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg6_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg6_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg6_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg6_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg6_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
