import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3687 rho ∧ Seg52.relationRow3688 rho ∧ Seg52.relationRow3689 rho ∧ Seg52.relationRow3690 rho ∧ Seg52.relationRow3691 rho ∧ Seg52.relationRow3692 rho ∧ Seg52.relationRow3693 rho ∧ Seg52.relationRow3694 rho ∧ Seg52.relationRow3695 rho ∧ Seg52.relationRow3696 rho ∧ Seg52.relationRow3697 rho ∧ Seg52.relationRow3698 rho ∧ Seg52.relationRow3699 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699⟩

theorem seg52In1_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48075, rho 48076⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48075, rho 48076⟩
        ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48088, rho 48089⟩ := by
  obtain ⟨r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699⟩ := seg52In1_rows77 rho h
  unfold Seg52.relationRow3687 at r3687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3687

  unfold Seg52.relationRow3688 at r3688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3688

  unfold Seg52.relationRow3689 at r3689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3689

  unfold Seg52.relationRow3690 at r3690

  unfold Seg52.relationRow3691 at r3691

  unfold Seg52.relationRow3692 at r3692

  unfold Seg52.relationRow3693 at r3693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3693

  unfold Seg52.relationRow3694 at r3694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694

  unfold Seg52.relationRow3695 at r3695

  unfold Seg52.relationRow3696 at r3696

  unfold Seg52.relationRow3697 at r3697

  unfold Seg52.relationRow3698 at r3698

  unfold Seg52.relationRow3699 at r3699

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX78 rho = seg52In1AccX77 rho + rho 48083 := by
    unfold seg52In1AccX78 seg52In1AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 77]

    ring

  have hnexty : seg52In1AccY78 rho = seg52In1AccY77 rho + rho 48084 := by
    unfold seg52In1AccY78 seg52In1AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 77]

    ring

  have ha0 : (rho 48075 + rho 48076) * (seg52In1AccX77 rho + seg52In1AccY77 rho) = rho 48077 := by
    unfold seg52In1AccX77 seg52In1AccY77
    linear_combination r3687
  have ha1 : rho 48076 * seg52In1AccX77 rho = rho 48078 := by
    unfold seg52In1AccX77
    linear_combination r3688
  have ha2 : rho 48075 * seg52In1AccY77 rho = rho 48079 := by
    unfold seg52In1AccY77
    linear_combination r3689
  have ha3 : 3021 * rho 48078 * rho 48079 = rho 48080 := by
    linear_combination r3690
  have ha4 : rho 48081 * (1 + rho 48080) = rho 48078 + rho 48079 := by
    linear_combination r3691
  have ha5 : rho 48082 * (1 - rho 48080) = rho 48077 - rho 48078 - rho 48079 := by
    linear_combination r3692
  have haddx :
      rho 48081 * (1 + 3021 * (rho 48076 * seg52In1AccX77 rho) * (rho 48075 * seg52In1AccY77 rho)) =
        rho 48076 * seg52In1AccX77 rho + rho 48075 * seg52In1AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48082 * (1 - 3021 * (rho 48076 * seg52In1AccX77 rho) * (rho 48075 * seg52In1AccY77 rho)) =
        (-1) * (rho 48076 * seg52In1AccX77 rho) - rho 48075 * seg52In1AccY77 rho +
          (seg52In1AccY77 rho - seg52In1AccX77 rho * (-1)) * (rho 48075 + rho 48076) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48082 * (1 - rho 48080) = rho 48077 - rho 48078 - rho 48079 := ha5
      _ = (-1) * rho 48078 - rho 48079 + (seg52In1AccY77 rho - seg52In1AccX77 rho * (-1)) *
          (rho 48075 + rho 48076) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX78 rho = seg52In1AccX77 rho - Bool.toZMod bit * (seg52In1AccX77 rho - rho 48081) := by
    have hd : rho 48083 = Bool.toZMod bit * (rho 48081 - seg52In1AccX77 rho) := by
      rw [← hbit]
      unfold seg52In1AccX77
      linear_combination -r3693
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY78 rho = seg52In1AccY77 rho - Bool.toZMod bit * (seg52In1AccY77 rho - rho 48082) := by
    have hd : rho 48084 = Bool.toZMod bit * (rho 48082 - seg52In1AccY77 rho) := by
      rw [← hbit]
      unfold seg52In1AccY77
      linear_combination -r3694
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48075 * rho 48076 = rho 48085 := by linear_combination r3695
  have hd1 : rho 48075 * rho 48075 = rho 48086 := by linear_combination r3696
  have hd2 : rho 48076 * rho 48076 = rho 48087 := by linear_combination r3697
  have hd3 : rho 48088 * (rho 48076 * rho 48076 + rho 48075 * rho 48075 * (-1)) =
      2 * (rho 48075 * rho 48076) := by
    rw [hd0, hd1, hd2]
    linear_combination r3698
  have hd4 : rho 48089 * (2 - (rho 48076 * rho 48076 + rho 48075 * rho 48075 * (-1))) =
      rho 48076 * rho 48076 - rho 48075 * rho 48075 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3699
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48075, rho 48076⟩
    ⟨rho 48081, rho 48082⟩ ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48088, rho 48089⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3700 rho ∧ Seg52.relationRow3701 rho ∧ Seg52.relationRow3702 rho ∧ Seg52.relationRow3703 rho ∧ Seg52.relationRow3704 rho ∧ Seg52.relationRow3705 rho ∧ Seg52.relationRow3706 rho ∧ Seg52.relationRow3707 rho ∧ Seg52.relationRow3708 rho ∧ Seg52.relationRow3709 rho ∧ Seg52.relationRow3710 rho ∧ Seg52.relationRow3711 rho ∧ Seg52.relationRow3712 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712⟩

theorem seg52In1_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48088, rho 48089⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48088, rho 48089⟩
        ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48101, rho 48102⟩ := by
  obtain ⟨r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712⟩ := seg52In1_rows78 rho h
  unfold Seg52.relationRow3700 at r3700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3700

  unfold Seg52.relationRow3701 at r3701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3701

  unfold Seg52.relationRow3702 at r3702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3702

  unfold Seg52.relationRow3703 at r3703

  unfold Seg52.relationRow3704 at r3704

  unfold Seg52.relationRow3705 at r3705

  unfold Seg52.relationRow3706 at r3706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3706

  unfold Seg52.relationRow3707 at r3707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707

  unfold Seg52.relationRow3708 at r3708

  unfold Seg52.relationRow3709 at r3709

  unfold Seg52.relationRow3710 at r3710

  unfold Seg52.relationRow3711 at r3711

  unfold Seg52.relationRow3712 at r3712

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX79 rho = seg52In1AccX78 rho + rho 48096 := by
    unfold seg52In1AccX79 seg52In1AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 78]

    ring

  have hnexty : seg52In1AccY79 rho = seg52In1AccY78 rho + rho 48097 := by
    unfold seg52In1AccY79 seg52In1AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 78]

    ring

  have ha0 : (rho 48088 + rho 48089) * (seg52In1AccX78 rho + seg52In1AccY78 rho) = rho 48090 := by
    unfold seg52In1AccX78 seg52In1AccY78
    linear_combination r3700
  have ha1 : rho 48089 * seg52In1AccX78 rho = rho 48091 := by
    unfold seg52In1AccX78
    linear_combination r3701
  have ha2 : rho 48088 * seg52In1AccY78 rho = rho 48092 := by
    unfold seg52In1AccY78
    linear_combination r3702
  have ha3 : 3021 * rho 48091 * rho 48092 = rho 48093 := by
    linear_combination r3703
  have ha4 : rho 48094 * (1 + rho 48093) = rho 48091 + rho 48092 := by
    linear_combination r3704
  have ha5 : rho 48095 * (1 - rho 48093) = rho 48090 - rho 48091 - rho 48092 := by
    linear_combination r3705
  have haddx :
      rho 48094 * (1 + 3021 * (rho 48089 * seg52In1AccX78 rho) * (rho 48088 * seg52In1AccY78 rho)) =
        rho 48089 * seg52In1AccX78 rho + rho 48088 * seg52In1AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48095 * (1 - 3021 * (rho 48089 * seg52In1AccX78 rho) * (rho 48088 * seg52In1AccY78 rho)) =
        (-1) * (rho 48089 * seg52In1AccX78 rho) - rho 48088 * seg52In1AccY78 rho +
          (seg52In1AccY78 rho - seg52In1AccX78 rho * (-1)) * (rho 48088 + rho 48089) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48095 * (1 - rho 48093) = rho 48090 - rho 48091 - rho 48092 := ha5
      _ = (-1) * rho 48091 - rho 48092 + (seg52In1AccY78 rho - seg52In1AccX78 rho * (-1)) *
          (rho 48088 + rho 48089) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX79 rho = seg52In1AccX78 rho - Bool.toZMod bit * (seg52In1AccX78 rho - rho 48094) := by
    have hd : rho 48096 = Bool.toZMod bit * (rho 48094 - seg52In1AccX78 rho) := by
      rw [← hbit]
      unfold seg52In1AccX78
      linear_combination -r3706
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY79 rho = seg52In1AccY78 rho - Bool.toZMod bit * (seg52In1AccY78 rho - rho 48095) := by
    have hd : rho 48097 = Bool.toZMod bit * (rho 48095 - seg52In1AccY78 rho) := by
      rw [← hbit]
      unfold seg52In1AccY78
      linear_combination -r3707
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48088 * rho 48089 = rho 48098 := by linear_combination r3708
  have hd1 : rho 48088 * rho 48088 = rho 48099 := by linear_combination r3709
  have hd2 : rho 48089 * rho 48089 = rho 48100 := by linear_combination r3710
  have hd3 : rho 48101 * (rho 48089 * rho 48089 + rho 48088 * rho 48088 * (-1)) =
      2 * (rho 48088 * rho 48089) := by
    rw [hd0, hd1, hd2]
    linear_combination r3711
  have hd4 : rho 48102 * (2 - (rho 48089 * rho 48089 + rho 48088 * rho 48088 * (-1))) =
      rho 48089 * rho 48089 - rho 48088 * rho 48088 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3712
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48088, rho 48089⟩
    ⟨rho 48094, rho 48095⟩ ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48101, rho 48102⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3713 rho ∧ Seg52.relationRow3714 rho ∧ Seg52.relationRow3715 rho ∧ Seg52.relationRow3716 rho ∧ Seg52.relationRow3717 rho ∧ Seg52.relationRow3718 rho ∧ Seg52.relationRow3719 rho ∧ Seg52.relationRow3720 rho ∧ Seg52.relationRow3721 rho ∧ Seg52.relationRow3722 rho ∧ Seg52.relationRow3723 rho ∧ Seg52.relationRow3724 rho ∧ Seg52.relationRow3725 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725⟩

theorem seg52In1_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48101, rho 48102⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48101, rho 48102⟩
        ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48114, rho 48115⟩ := by
  obtain ⟨r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725⟩ := seg52In1_rows79 rho h
  unfold Seg52.relationRow3713 at r3713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3713

  unfold Seg52.relationRow3714 at r3714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3714

  unfold Seg52.relationRow3715 at r3715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3715

  unfold Seg52.relationRow3716 at r3716

  unfold Seg52.relationRow3717 at r3717

  unfold Seg52.relationRow3718 at r3718

  unfold Seg52.relationRow3719 at r3719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3719

  unfold Seg52.relationRow3720 at r3720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720

  unfold Seg52.relationRow3721 at r3721

  unfold Seg52.relationRow3722 at r3722

  unfold Seg52.relationRow3723 at r3723

  unfold Seg52.relationRow3724 at r3724

  unfold Seg52.relationRow3725 at r3725

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX80 rho = seg52In1AccX79 rho + rho 48109 := by
    unfold seg52In1AccX80 seg52In1AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 79]

    ring

  have hnexty : seg52In1AccY80 rho = seg52In1AccY79 rho + rho 48110 := by
    unfold seg52In1AccY80 seg52In1AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 79]

    ring

  have ha0 : (rho 48101 + rho 48102) * (seg52In1AccX79 rho + seg52In1AccY79 rho) = rho 48103 := by
    unfold seg52In1AccX79 seg52In1AccY79
    linear_combination r3713
  have ha1 : rho 48102 * seg52In1AccX79 rho = rho 48104 := by
    unfold seg52In1AccX79
    linear_combination r3714
  have ha2 : rho 48101 * seg52In1AccY79 rho = rho 48105 := by
    unfold seg52In1AccY79
    linear_combination r3715
  have ha3 : 3021 * rho 48104 * rho 48105 = rho 48106 := by
    linear_combination r3716
  have ha4 : rho 48107 * (1 + rho 48106) = rho 48104 + rho 48105 := by
    linear_combination r3717
  have ha5 : rho 48108 * (1 - rho 48106) = rho 48103 - rho 48104 - rho 48105 := by
    linear_combination r3718
  have haddx :
      rho 48107 * (1 + 3021 * (rho 48102 * seg52In1AccX79 rho) * (rho 48101 * seg52In1AccY79 rho)) =
        rho 48102 * seg52In1AccX79 rho + rho 48101 * seg52In1AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48108 * (1 - 3021 * (rho 48102 * seg52In1AccX79 rho) * (rho 48101 * seg52In1AccY79 rho)) =
        (-1) * (rho 48102 * seg52In1AccX79 rho) - rho 48101 * seg52In1AccY79 rho +
          (seg52In1AccY79 rho - seg52In1AccX79 rho * (-1)) * (rho 48101 + rho 48102) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48108 * (1 - rho 48106) = rho 48103 - rho 48104 - rho 48105 := ha5
      _ = (-1) * rho 48104 - rho 48105 + (seg52In1AccY79 rho - seg52In1AccX79 rho * (-1)) *
          (rho 48101 + rho 48102) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX80 rho = seg52In1AccX79 rho - Bool.toZMod bit * (seg52In1AccX79 rho - rho 48107) := by
    have hd : rho 48109 = Bool.toZMod bit * (rho 48107 - seg52In1AccX79 rho) := by
      rw [← hbit]
      unfold seg52In1AccX79
      linear_combination -r3719
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY80 rho = seg52In1AccY79 rho - Bool.toZMod bit * (seg52In1AccY79 rho - rho 48108) := by
    have hd : rho 48110 = Bool.toZMod bit * (rho 48108 - seg52In1AccY79 rho) := by
      rw [← hbit]
      unfold seg52In1AccY79
      linear_combination -r3720
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48101 * rho 48102 = rho 48111 := by linear_combination r3721
  have hd1 : rho 48101 * rho 48101 = rho 48112 := by linear_combination r3722
  have hd2 : rho 48102 * rho 48102 = rho 48113 := by linear_combination r3723
  have hd3 : rho 48114 * (rho 48102 * rho 48102 + rho 48101 * rho 48101 * (-1)) =
      2 * (rho 48101 * rho 48102) := by
    rw [hd0, hd1, hd2]
    linear_combination r3724
  have hd4 : rho 48115 * (2 - (rho 48102 * rho 48102 + rho 48101 * rho 48101 * (-1))) =
      rho 48102 * rho 48102 - rho 48101 * rho 48101 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3725
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48101, rho 48102⟩
    ⟨rho 48107, rho 48108⟩ ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48114, rho 48115⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3726 rho ∧ Seg52.relationRow3727 rho ∧ Seg52.relationRow3728 rho ∧ Seg52.relationRow3729 rho ∧ Seg52.relationRow3730 rho ∧ Seg52.relationRow3731 rho ∧ Seg52.relationRow3732 rho ∧ Seg52.relationRow3733 rho ∧ Seg52.relationRow3734 rho ∧ Seg52.relationRow3735 rho ∧ Seg52.relationRow3736 rho ∧ Seg52.relationRow3737 rho ∧ Seg52.relationRow3738 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738⟩

theorem seg52In1_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48114, rho 48115⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48114, rho 48115⟩
        ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48127, rho 48128⟩ := by
  obtain ⟨r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738⟩ := seg52In1_rows80 rho h
  unfold Seg52.relationRow3726 at r3726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3726

  unfold Seg52.relationRow3727 at r3727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3727

  unfold Seg52.relationRow3728 at r3728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3728

  unfold Seg52.relationRow3729 at r3729

  unfold Seg52.relationRow3730 at r3730

  unfold Seg52.relationRow3731 at r3731

  unfold Seg52.relationRow3732 at r3732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3732

  unfold Seg52.relationRow3733 at r3733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733

  unfold Seg52.relationRow3734 at r3734

  unfold Seg52.relationRow3735 at r3735

  unfold Seg52.relationRow3736 at r3736

  unfold Seg52.relationRow3737 at r3737

  unfold Seg52.relationRow3738 at r3738

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX81 rho = seg52In1AccX80 rho + rho 48122 := by
    unfold seg52In1AccX81 seg52In1AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 80]

    ring

  have hnexty : seg52In1AccY81 rho = seg52In1AccY80 rho + rho 48123 := by
    unfold seg52In1AccY81 seg52In1AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 80]

    ring

  have ha0 : (rho 48114 + rho 48115) * (seg52In1AccX80 rho + seg52In1AccY80 rho) = rho 48116 := by
    unfold seg52In1AccX80 seg52In1AccY80
    linear_combination r3726
  have ha1 : rho 48115 * seg52In1AccX80 rho = rho 48117 := by
    unfold seg52In1AccX80
    linear_combination r3727
  have ha2 : rho 48114 * seg52In1AccY80 rho = rho 48118 := by
    unfold seg52In1AccY80
    linear_combination r3728
  have ha3 : 3021 * rho 48117 * rho 48118 = rho 48119 := by
    linear_combination r3729
  have ha4 : rho 48120 * (1 + rho 48119) = rho 48117 + rho 48118 := by
    linear_combination r3730
  have ha5 : rho 48121 * (1 - rho 48119) = rho 48116 - rho 48117 - rho 48118 := by
    linear_combination r3731
  have haddx :
      rho 48120 * (1 + 3021 * (rho 48115 * seg52In1AccX80 rho) * (rho 48114 * seg52In1AccY80 rho)) =
        rho 48115 * seg52In1AccX80 rho + rho 48114 * seg52In1AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48121 * (1 - 3021 * (rho 48115 * seg52In1AccX80 rho) * (rho 48114 * seg52In1AccY80 rho)) =
        (-1) * (rho 48115 * seg52In1AccX80 rho) - rho 48114 * seg52In1AccY80 rho +
          (seg52In1AccY80 rho - seg52In1AccX80 rho * (-1)) * (rho 48114 + rho 48115) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48121 * (1 - rho 48119) = rho 48116 - rho 48117 - rho 48118 := ha5
      _ = (-1) * rho 48117 - rho 48118 + (seg52In1AccY80 rho - seg52In1AccX80 rho * (-1)) *
          (rho 48114 + rho 48115) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX81 rho = seg52In1AccX80 rho - Bool.toZMod bit * (seg52In1AccX80 rho - rho 48120) := by
    have hd : rho 48122 = Bool.toZMod bit * (rho 48120 - seg52In1AccX80 rho) := by
      rw [← hbit]
      unfold seg52In1AccX80
      linear_combination -r3732
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY81 rho = seg52In1AccY80 rho - Bool.toZMod bit * (seg52In1AccY80 rho - rho 48121) := by
    have hd : rho 48123 = Bool.toZMod bit * (rho 48121 - seg52In1AccY80 rho) := by
      rw [← hbit]
      unfold seg52In1AccY80
      linear_combination -r3733
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48114 * rho 48115 = rho 48124 := by linear_combination r3734
  have hd1 : rho 48114 * rho 48114 = rho 48125 := by linear_combination r3735
  have hd2 : rho 48115 * rho 48115 = rho 48126 := by linear_combination r3736
  have hd3 : rho 48127 * (rho 48115 * rho 48115 + rho 48114 * rho 48114 * (-1)) =
      2 * (rho 48114 * rho 48115) := by
    rw [hd0, hd1, hd2]
    linear_combination r3737
  have hd4 : rho 48128 * (2 - (rho 48115 * rho 48115 + rho 48114 * rho 48114 * (-1))) =
      rho 48115 * rho 48115 - rho 48114 * rho 48114 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3738
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48114, rho 48115⟩
    ⟨rho 48120, rho 48121⟩ ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48127, rho 48128⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3739 rho ∧ Seg52.relationRow3740 rho ∧ Seg52.relationRow3741 rho ∧ Seg52.relationRow3742 rho ∧ Seg52.relationRow3743 rho ∧ Seg52.relationRow3744 rho ∧ Seg52.relationRow3745 rho ∧ Seg52.relationRow3746 rho ∧ Seg52.relationRow3747 rho ∧ Seg52.relationRow3748 rho ∧ Seg52.relationRow3749 rho ∧ Seg52.relationRow3750 rho ∧ Seg52.relationRow3751 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, _, _, _, _, _, _, _, _⟩

  exact ⟨r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751⟩

theorem seg52In1_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48127, rho 48128⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48127, rho 48128⟩
        ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48140, rho 48141⟩ := by
  obtain ⟨r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751⟩ := seg52In1_rows81 rho h
  unfold Seg52.relationRow3739 at r3739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3739

  unfold Seg52.relationRow3740 at r3740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3740

  unfold Seg52.relationRow3741 at r3741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3741

  unfold Seg52.relationRow3742 at r3742

  unfold Seg52.relationRow3743 at r3743

  unfold Seg52.relationRow3744 at r3744

  unfold Seg52.relationRow3745 at r3745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3745

  unfold Seg52.relationRow3746 at r3746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746

  unfold Seg52.relationRow3747 at r3747

  unfold Seg52.relationRow3748 at r3748

  unfold Seg52.relationRow3749 at r3749

  unfold Seg52.relationRow3750 at r3750

  unfold Seg52.relationRow3751 at r3751

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX82 rho = seg52In1AccX81 rho + rho 48135 := by
    unfold seg52In1AccX82 seg52In1AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 81]

    ring

  have hnexty : seg52In1AccY82 rho = seg52In1AccY81 rho + rho 48136 := by
    unfold seg52In1AccY82 seg52In1AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 81]

    ring

  have ha0 : (rho 48127 + rho 48128) * (seg52In1AccX81 rho + seg52In1AccY81 rho) = rho 48129 := by
    unfold seg52In1AccX81 seg52In1AccY81
    linear_combination r3739
  have ha1 : rho 48128 * seg52In1AccX81 rho = rho 48130 := by
    unfold seg52In1AccX81
    linear_combination r3740
  have ha2 : rho 48127 * seg52In1AccY81 rho = rho 48131 := by
    unfold seg52In1AccY81
    linear_combination r3741
  have ha3 : 3021 * rho 48130 * rho 48131 = rho 48132 := by
    linear_combination r3742
  have ha4 : rho 48133 * (1 + rho 48132) = rho 48130 + rho 48131 := by
    linear_combination r3743
  have ha5 : rho 48134 * (1 - rho 48132) = rho 48129 - rho 48130 - rho 48131 := by
    linear_combination r3744
  have haddx :
      rho 48133 * (1 + 3021 * (rho 48128 * seg52In1AccX81 rho) * (rho 48127 * seg52In1AccY81 rho)) =
        rho 48128 * seg52In1AccX81 rho + rho 48127 * seg52In1AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48134 * (1 - 3021 * (rho 48128 * seg52In1AccX81 rho) * (rho 48127 * seg52In1AccY81 rho)) =
        (-1) * (rho 48128 * seg52In1AccX81 rho) - rho 48127 * seg52In1AccY81 rho +
          (seg52In1AccY81 rho - seg52In1AccX81 rho * (-1)) * (rho 48127 + rho 48128) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48134 * (1 - rho 48132) = rho 48129 - rho 48130 - rho 48131 := ha5
      _ = (-1) * rho 48130 - rho 48131 + (seg52In1AccY81 rho - seg52In1AccX81 rho * (-1)) *
          (rho 48127 + rho 48128) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX82 rho = seg52In1AccX81 rho - Bool.toZMod bit * (seg52In1AccX81 rho - rho 48133) := by
    have hd : rho 48135 = Bool.toZMod bit * (rho 48133 - seg52In1AccX81 rho) := by
      rw [← hbit]
      unfold seg52In1AccX81
      linear_combination -r3745
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY82 rho = seg52In1AccY81 rho - Bool.toZMod bit * (seg52In1AccY81 rho - rho 48134) := by
    have hd : rho 48136 = Bool.toZMod bit * (rho 48134 - seg52In1AccY81 rho) := by
      rw [← hbit]
      unfold seg52In1AccY81
      linear_combination -r3746
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48127 * rho 48128 = rho 48137 := by linear_combination r3747
  have hd1 : rho 48127 * rho 48127 = rho 48138 := by linear_combination r3748
  have hd2 : rho 48128 * rho 48128 = rho 48139 := by linear_combination r3749
  have hd3 : rho 48140 * (rho 48128 * rho 48128 + rho 48127 * rho 48127 * (-1)) =
      2 * (rho 48127 * rho 48128) := by
    rw [hd0, hd1, hd2]
    linear_combination r3750
  have hd4 : rho 48141 * (2 - (rho 48128 * rho 48128 + rho 48127 * rho 48127 * (-1))) =
      rho 48128 * rho 48128 - rho 48127 * rho 48127 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3751
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48127, rho 48128⟩
    ⟨rho 48133, rho 48134⟩ ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48140, rho 48141⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3752 rho ∧ Seg52.relationRow3753 rho ∧ Seg52.relationRow3754 rho ∧ Seg52.relationRow3755 rho ∧ Seg52.relationRow3756 rho ∧ Seg52.relationRow3757 rho ∧ Seg52.relationRow3758 rho ∧ Seg52.relationRow3759 rho ∧ Seg52.relationRow3760 rho ∧ Seg52.relationRow3761 rho ∧ Seg52.relationRow3762 rho ∧ Seg52.relationRow3763 rho ∧ Seg52.relationRow3764 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764⟩

theorem seg52In1_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48140, rho 48141⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48140, rho 48141⟩
        ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48153, rho 48154⟩ := by
  obtain ⟨r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764⟩ := seg52In1_rows82 rho h
  unfold Seg52.relationRow3752 at r3752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3752

  unfold Seg52.relationRow3753 at r3753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3753

  unfold Seg52.relationRow3754 at r3754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3754

  unfold Seg52.relationRow3755 at r3755

  unfold Seg52.relationRow3756 at r3756

  unfold Seg52.relationRow3757 at r3757

  unfold Seg52.relationRow3758 at r3758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3758

  unfold Seg52.relationRow3759 at r3759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759

  unfold Seg52.relationRow3760 at r3760

  unfold Seg52.relationRow3761 at r3761

  unfold Seg52.relationRow3762 at r3762

  unfold Seg52.relationRow3763 at r3763

  unfold Seg52.relationRow3764 at r3764

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX83 rho = seg52In1AccX82 rho + rho 48148 := by
    unfold seg52In1AccX83 seg52In1AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 82]

    ring

  have hnexty : seg52In1AccY83 rho = seg52In1AccY82 rho + rho 48149 := by
    unfold seg52In1AccY83 seg52In1AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 82]

    ring

  have ha0 : (rho 48140 + rho 48141) * (seg52In1AccX82 rho + seg52In1AccY82 rho) = rho 48142 := by
    unfold seg52In1AccX82 seg52In1AccY82
    linear_combination r3752
  have ha1 : rho 48141 * seg52In1AccX82 rho = rho 48143 := by
    unfold seg52In1AccX82
    linear_combination r3753
  have ha2 : rho 48140 * seg52In1AccY82 rho = rho 48144 := by
    unfold seg52In1AccY82
    linear_combination r3754
  have ha3 : 3021 * rho 48143 * rho 48144 = rho 48145 := by
    linear_combination r3755
  have ha4 : rho 48146 * (1 + rho 48145) = rho 48143 + rho 48144 := by
    linear_combination r3756
  have ha5 : rho 48147 * (1 - rho 48145) = rho 48142 - rho 48143 - rho 48144 := by
    linear_combination r3757
  have haddx :
      rho 48146 * (1 + 3021 * (rho 48141 * seg52In1AccX82 rho) * (rho 48140 * seg52In1AccY82 rho)) =
        rho 48141 * seg52In1AccX82 rho + rho 48140 * seg52In1AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48147 * (1 - 3021 * (rho 48141 * seg52In1AccX82 rho) * (rho 48140 * seg52In1AccY82 rho)) =
        (-1) * (rho 48141 * seg52In1AccX82 rho) - rho 48140 * seg52In1AccY82 rho +
          (seg52In1AccY82 rho - seg52In1AccX82 rho * (-1)) * (rho 48140 + rho 48141) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48147 * (1 - rho 48145) = rho 48142 - rho 48143 - rho 48144 := ha5
      _ = (-1) * rho 48143 - rho 48144 + (seg52In1AccY82 rho - seg52In1AccX82 rho * (-1)) *
          (rho 48140 + rho 48141) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX83 rho = seg52In1AccX82 rho - Bool.toZMod bit * (seg52In1AccX82 rho - rho 48146) := by
    have hd : rho 48148 = Bool.toZMod bit * (rho 48146 - seg52In1AccX82 rho) := by
      rw [← hbit]
      unfold seg52In1AccX82
      linear_combination -r3758
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY83 rho = seg52In1AccY82 rho - Bool.toZMod bit * (seg52In1AccY82 rho - rho 48147) := by
    have hd : rho 48149 = Bool.toZMod bit * (rho 48147 - seg52In1AccY82 rho) := by
      rw [← hbit]
      unfold seg52In1AccY82
      linear_combination -r3759
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48140 * rho 48141 = rho 48150 := by linear_combination r3760
  have hd1 : rho 48140 * rho 48140 = rho 48151 := by linear_combination r3761
  have hd2 : rho 48141 * rho 48141 = rho 48152 := by linear_combination r3762
  have hd3 : rho 48153 * (rho 48141 * rho 48141 + rho 48140 * rho 48140 * (-1)) =
      2 * (rho 48140 * rho 48141) := by
    rw [hd0, hd1, hd2]
    linear_combination r3763
  have hd4 : rho 48154 * (2 - (rho 48141 * rho 48141 + rho 48140 * rho 48140 * (-1))) =
      rho 48141 * rho 48141 - rho 48140 * rho 48140 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3764
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48140, rho 48141⟩
    ⟨rho 48146, rho 48147⟩ ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48153, rho 48154⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3765 rho ∧ Seg52.relationRow3766 rho ∧ Seg52.relationRow3767 rho ∧ Seg52.relationRow3768 rho ∧ Seg52.relationRow3769 rho ∧ Seg52.relationRow3770 rho ∧ Seg52.relationRow3771 rho ∧ Seg52.relationRow3772 rho ∧ Seg52.relationRow3773 rho ∧ Seg52.relationRow3774 rho ∧ Seg52.relationRow3775 rho ∧ Seg52.relationRow3776 rho ∧ Seg52.relationRow3777 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777⟩

theorem seg52In1_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48153, rho 48154⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48153, rho 48154⟩
        ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48166, rho 48167⟩ := by
  obtain ⟨r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777⟩ := seg52In1_rows83 rho h
  unfold Seg52.relationRow3765 at r3765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3765

  unfold Seg52.relationRow3766 at r3766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3766

  unfold Seg52.relationRow3767 at r3767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3767

  unfold Seg52.relationRow3768 at r3768

  unfold Seg52.relationRow3769 at r3769

  unfold Seg52.relationRow3770 at r3770

  unfold Seg52.relationRow3771 at r3771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3771

  unfold Seg52.relationRow3772 at r3772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772

  unfold Seg52.relationRow3773 at r3773

  unfold Seg52.relationRow3774 at r3774

  unfold Seg52.relationRow3775 at r3775

  unfold Seg52.relationRow3776 at r3776

  unfold Seg52.relationRow3777 at r3777

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX84 rho = seg52In1AccX83 rho + rho 48161 := by
    unfold seg52In1AccX84 seg52In1AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 83]

    ring

  have hnexty : seg52In1AccY84 rho = seg52In1AccY83 rho + rho 48162 := by
    unfold seg52In1AccY84 seg52In1AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 83]

    ring

  have ha0 : (rho 48153 + rho 48154) * (seg52In1AccX83 rho + seg52In1AccY83 rho) = rho 48155 := by
    unfold seg52In1AccX83 seg52In1AccY83
    linear_combination r3765
  have ha1 : rho 48154 * seg52In1AccX83 rho = rho 48156 := by
    unfold seg52In1AccX83
    linear_combination r3766
  have ha2 : rho 48153 * seg52In1AccY83 rho = rho 48157 := by
    unfold seg52In1AccY83
    linear_combination r3767
  have ha3 : 3021 * rho 48156 * rho 48157 = rho 48158 := by
    linear_combination r3768
  have ha4 : rho 48159 * (1 + rho 48158) = rho 48156 + rho 48157 := by
    linear_combination r3769
  have ha5 : rho 48160 * (1 - rho 48158) = rho 48155 - rho 48156 - rho 48157 := by
    linear_combination r3770
  have haddx :
      rho 48159 * (1 + 3021 * (rho 48154 * seg52In1AccX83 rho) * (rho 48153 * seg52In1AccY83 rho)) =
        rho 48154 * seg52In1AccX83 rho + rho 48153 * seg52In1AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48160 * (1 - 3021 * (rho 48154 * seg52In1AccX83 rho) * (rho 48153 * seg52In1AccY83 rho)) =
        (-1) * (rho 48154 * seg52In1AccX83 rho) - rho 48153 * seg52In1AccY83 rho +
          (seg52In1AccY83 rho - seg52In1AccX83 rho * (-1)) * (rho 48153 + rho 48154) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48160 * (1 - rho 48158) = rho 48155 - rho 48156 - rho 48157 := ha5
      _ = (-1) * rho 48156 - rho 48157 + (seg52In1AccY83 rho - seg52In1AccX83 rho * (-1)) *
          (rho 48153 + rho 48154) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX84 rho = seg52In1AccX83 rho - Bool.toZMod bit * (seg52In1AccX83 rho - rho 48159) := by
    have hd : rho 48161 = Bool.toZMod bit * (rho 48159 - seg52In1AccX83 rho) := by
      rw [← hbit]
      unfold seg52In1AccX83
      linear_combination -r3771
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY84 rho = seg52In1AccY83 rho - Bool.toZMod bit * (seg52In1AccY83 rho - rho 48160) := by
    have hd : rho 48162 = Bool.toZMod bit * (rho 48160 - seg52In1AccY83 rho) := by
      rw [← hbit]
      unfold seg52In1AccY83
      linear_combination -r3772
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48153 * rho 48154 = rho 48163 := by linear_combination r3773
  have hd1 : rho 48153 * rho 48153 = rho 48164 := by linear_combination r3774
  have hd2 : rho 48154 * rho 48154 = rho 48165 := by linear_combination r3775
  have hd3 : rho 48166 * (rho 48154 * rho 48154 + rho 48153 * rho 48153 * (-1)) =
      2 * (rho 48153 * rho 48154) := by
    rw [hd0, hd1, hd2]
    linear_combination r3776
  have hd4 : rho 48167 * (2 - (rho 48154 * rho 48154 + rho 48153 * rho 48153 * (-1))) =
      rho 48154 * rho 48154 - rho 48153 * rho 48153 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3777
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48153, rho 48154⟩
    ⟨rho 48159, rho 48160⟩ ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48166, rho 48167⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3778 rho ∧ Seg52.relationRow3779 rho ∧ Seg52.relationRow3780 rho ∧ Seg52.relationRow3781 rho ∧ Seg52.relationRow3782 rho ∧ Seg52.relationRow3783 rho ∧ Seg52.relationRow3784 rho ∧ Seg52.relationRow3785 rho ∧ Seg52.relationRow3786 rho ∧ Seg52.relationRow3787 rho ∧ Seg52.relationRow3788 rho ∧ Seg52.relationRow3789 rho ∧ Seg52.relationRow3790 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790⟩

theorem seg52In1_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48166, rho 48167⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48166, rho 48167⟩
        ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48179, rho 48180⟩ := by
  obtain ⟨r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790⟩ := seg52In1_rows84 rho h
  unfold Seg52.relationRow3778 at r3778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3778

  unfold Seg52.relationRow3779 at r3779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3779

  unfold Seg52.relationRow3780 at r3780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3780

  unfold Seg52.relationRow3781 at r3781

  unfold Seg52.relationRow3782 at r3782

  unfold Seg52.relationRow3783 at r3783

  unfold Seg52.relationRow3784 at r3784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3784

  unfold Seg52.relationRow3785 at r3785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785

  unfold Seg52.relationRow3786 at r3786

  unfold Seg52.relationRow3787 at r3787

  unfold Seg52.relationRow3788 at r3788

  unfold Seg52.relationRow3789 at r3789

  unfold Seg52.relationRow3790 at r3790

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX85 rho = seg52In1AccX84 rho + rho 48174 := by
    unfold seg52In1AccX85 seg52In1AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 84]

    ring

  have hnexty : seg52In1AccY85 rho = seg52In1AccY84 rho + rho 48175 := by
    unfold seg52In1AccY85 seg52In1AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 84]

    ring

  have ha0 : (rho 48166 + rho 48167) * (seg52In1AccX84 rho + seg52In1AccY84 rho) = rho 48168 := by
    unfold seg52In1AccX84 seg52In1AccY84
    linear_combination r3778
  have ha1 : rho 48167 * seg52In1AccX84 rho = rho 48169 := by
    unfold seg52In1AccX84
    linear_combination r3779
  have ha2 : rho 48166 * seg52In1AccY84 rho = rho 48170 := by
    unfold seg52In1AccY84
    linear_combination r3780
  have ha3 : 3021 * rho 48169 * rho 48170 = rho 48171 := by
    linear_combination r3781
  have ha4 : rho 48172 * (1 + rho 48171) = rho 48169 + rho 48170 := by
    linear_combination r3782
  have ha5 : rho 48173 * (1 - rho 48171) = rho 48168 - rho 48169 - rho 48170 := by
    linear_combination r3783
  have haddx :
      rho 48172 * (1 + 3021 * (rho 48167 * seg52In1AccX84 rho) * (rho 48166 * seg52In1AccY84 rho)) =
        rho 48167 * seg52In1AccX84 rho + rho 48166 * seg52In1AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48173 * (1 - 3021 * (rho 48167 * seg52In1AccX84 rho) * (rho 48166 * seg52In1AccY84 rho)) =
        (-1) * (rho 48167 * seg52In1AccX84 rho) - rho 48166 * seg52In1AccY84 rho +
          (seg52In1AccY84 rho - seg52In1AccX84 rho * (-1)) * (rho 48166 + rho 48167) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48173 * (1 - rho 48171) = rho 48168 - rho 48169 - rho 48170 := ha5
      _ = (-1) * rho 48169 - rho 48170 + (seg52In1AccY84 rho - seg52In1AccX84 rho * (-1)) *
          (rho 48166 + rho 48167) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX85 rho = seg52In1AccX84 rho - Bool.toZMod bit * (seg52In1AccX84 rho - rho 48172) := by
    have hd : rho 48174 = Bool.toZMod bit * (rho 48172 - seg52In1AccX84 rho) := by
      rw [← hbit]
      unfold seg52In1AccX84
      linear_combination -r3784
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY85 rho = seg52In1AccY84 rho - Bool.toZMod bit * (seg52In1AccY84 rho - rho 48173) := by
    have hd : rho 48175 = Bool.toZMod bit * (rho 48173 - seg52In1AccY84 rho) := by
      rw [← hbit]
      unfold seg52In1AccY84
      linear_combination -r3785
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48166 * rho 48167 = rho 48176 := by linear_combination r3786
  have hd1 : rho 48166 * rho 48166 = rho 48177 := by linear_combination r3787
  have hd2 : rho 48167 * rho 48167 = rho 48178 := by linear_combination r3788
  have hd3 : rho 48179 * (rho 48167 * rho 48167 + rho 48166 * rho 48166 * (-1)) =
      2 * (rho 48166 * rho 48167) := by
    rw [hd0, hd1, hd2]
    linear_combination r3789
  have hd4 : rho 48180 * (2 - (rho 48167 * rho 48167 + rho 48166 * rho 48166 * (-1))) =
      rho 48167 * rho 48167 - rho 48166 * rho 48166 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3790
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48166, rho 48167⟩
    ⟨rho 48172, rho 48173⟩ ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48179, rho 48180⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3791 rho ∧ Seg52.relationRow3792 rho ∧ Seg52.relationRow3793 rho ∧ Seg52.relationRow3794 rho ∧ Seg52.relationRow3795 rho ∧ Seg52.relationRow3796 rho ∧ Seg52.relationRow3797 rho ∧ Seg52.relationRow3798 rho ∧ Seg52.relationRow3799 rho ∧ Seg52.relationRow3800 rho ∧ Seg52.relationRow3801 rho ∧ Seg52.relationRow3802 rho ∧ Seg52.relationRow3803 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803⟩

theorem seg52In1_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48179, rho 48180⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48179, rho 48180⟩
        ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48192, rho 48193⟩ := by
  obtain ⟨r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803⟩ := seg52In1_rows85 rho h
  unfold Seg52.relationRow3791 at r3791

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3791

  unfold Seg52.relationRow3792 at r3792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3792

  unfold Seg52.relationRow3793 at r3793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3793

  unfold Seg52.relationRow3794 at r3794

  unfold Seg52.relationRow3795 at r3795

  unfold Seg52.relationRow3796 at r3796

  unfold Seg52.relationRow3797 at r3797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3797

  unfold Seg52.relationRow3798 at r3798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798

  unfold Seg52.relationRow3799 at r3799

  unfold Seg52.relationRow3800 at r3800

  unfold Seg52.relationRow3801 at r3801

  unfold Seg52.relationRow3802 at r3802

  unfold Seg52.relationRow3803 at r3803

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX86 rho = seg52In1AccX85 rho + rho 48187 := by
    unfold seg52In1AccX86 seg52In1AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 85]

    ring

  have hnexty : seg52In1AccY86 rho = seg52In1AccY85 rho + rho 48188 := by
    unfold seg52In1AccY86 seg52In1AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 85]

    ring

  have ha0 : (rho 48179 + rho 48180) * (seg52In1AccX85 rho + seg52In1AccY85 rho) = rho 48181 := by
    unfold seg52In1AccX85 seg52In1AccY85
    linear_combination r3791
  have ha1 : rho 48180 * seg52In1AccX85 rho = rho 48182 := by
    unfold seg52In1AccX85
    linear_combination r3792
  have ha2 : rho 48179 * seg52In1AccY85 rho = rho 48183 := by
    unfold seg52In1AccY85
    linear_combination r3793
  have ha3 : 3021 * rho 48182 * rho 48183 = rho 48184 := by
    linear_combination r3794
  have ha4 : rho 48185 * (1 + rho 48184) = rho 48182 + rho 48183 := by
    linear_combination r3795
  have ha5 : rho 48186 * (1 - rho 48184) = rho 48181 - rho 48182 - rho 48183 := by
    linear_combination r3796
  have haddx :
      rho 48185 * (1 + 3021 * (rho 48180 * seg52In1AccX85 rho) * (rho 48179 * seg52In1AccY85 rho)) =
        rho 48180 * seg52In1AccX85 rho + rho 48179 * seg52In1AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48186 * (1 - 3021 * (rho 48180 * seg52In1AccX85 rho) * (rho 48179 * seg52In1AccY85 rho)) =
        (-1) * (rho 48180 * seg52In1AccX85 rho) - rho 48179 * seg52In1AccY85 rho +
          (seg52In1AccY85 rho - seg52In1AccX85 rho * (-1)) * (rho 48179 + rho 48180) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48186 * (1 - rho 48184) = rho 48181 - rho 48182 - rho 48183 := ha5
      _ = (-1) * rho 48182 - rho 48183 + (seg52In1AccY85 rho - seg52In1AccX85 rho * (-1)) *
          (rho 48179 + rho 48180) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX86 rho = seg52In1AccX85 rho - Bool.toZMod bit * (seg52In1AccX85 rho - rho 48185) := by
    have hd : rho 48187 = Bool.toZMod bit * (rho 48185 - seg52In1AccX85 rho) := by
      rw [← hbit]
      unfold seg52In1AccX85
      linear_combination -r3797
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY86 rho = seg52In1AccY85 rho - Bool.toZMod bit * (seg52In1AccY85 rho - rho 48186) := by
    have hd : rho 48188 = Bool.toZMod bit * (rho 48186 - seg52In1AccY85 rho) := by
      rw [← hbit]
      unfold seg52In1AccY85
      linear_combination -r3798
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48179 * rho 48180 = rho 48189 := by linear_combination r3799
  have hd1 : rho 48179 * rho 48179 = rho 48190 := by linear_combination r3800
  have hd2 : rho 48180 * rho 48180 = rho 48191 := by linear_combination r3801
  have hd3 : rho 48192 * (rho 48180 * rho 48180 + rho 48179 * rho 48179 * (-1)) =
      2 * (rho 48179 * rho 48180) := by
    rw [hd0, hd1, hd2]
    linear_combination r3802
  have hd4 : rho 48193 * (2 - (rho 48180 * rho 48180 + rho 48179 * rho 48179 * (-1))) =
      rho 48180 * rho 48180 - rho 48179 * rho 48179 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3803
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48179, rho 48180⟩
    ⟨rho 48185, rho 48186⟩ ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48192, rho 48193⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3804 rho ∧ Seg52.relationRow3805 rho ∧ Seg52.relationRow3806 rho ∧ Seg52.relationRow3807 rho ∧ Seg52.relationRow3808 rho ∧ Seg52.relationRow3809 rho ∧ Seg52.relationRow3810 rho ∧ Seg52.relationRow3811 rho ∧ Seg52.relationRow3812 rho ∧ Seg52.relationRow3813 rho ∧ Seg52.relationRow3814 rho ∧ Seg52.relationRow3815 rho ∧ Seg52.relationRow3816 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816⟩

theorem seg52In1_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48192, rho 48193⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48192, rho 48193⟩
        ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48205, rho 48206⟩ := by
  obtain ⟨r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816⟩ := seg52In1_rows86 rho h
  unfold Seg52.relationRow3804 at r3804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3804

  unfold Seg52.relationRow3805 at r3805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3805

  unfold Seg52.relationRow3806 at r3806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3806

  unfold Seg52.relationRow3807 at r3807

  unfold Seg52.relationRow3808 at r3808

  unfold Seg52.relationRow3809 at r3809

  unfold Seg52.relationRow3810 at r3810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3810

  unfold Seg52.relationRow3811 at r3811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811

  unfold Seg52.relationRow3812 at r3812

  unfold Seg52.relationRow3813 at r3813

  unfold Seg52.relationRow3814 at r3814

  unfold Seg52.relationRow3815 at r3815

  unfold Seg52.relationRow3816 at r3816

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX87 rho = seg52In1AccX86 rho + rho 48200 := by
    unfold seg52In1AccX87 seg52In1AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 86]

    ring

  have hnexty : seg52In1AccY87 rho = seg52In1AccY86 rho + rho 48201 := by
    unfold seg52In1AccY87 seg52In1AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 86]

    ring

  have ha0 : (rho 48192 + rho 48193) * (seg52In1AccX86 rho + seg52In1AccY86 rho) = rho 48194 := by
    unfold seg52In1AccX86 seg52In1AccY86
    linear_combination r3804
  have ha1 : rho 48193 * seg52In1AccX86 rho = rho 48195 := by
    unfold seg52In1AccX86
    linear_combination r3805
  have ha2 : rho 48192 * seg52In1AccY86 rho = rho 48196 := by
    unfold seg52In1AccY86
    linear_combination r3806
  have ha3 : 3021 * rho 48195 * rho 48196 = rho 48197 := by
    linear_combination r3807
  have ha4 : rho 48198 * (1 + rho 48197) = rho 48195 + rho 48196 := by
    linear_combination r3808
  have ha5 : rho 48199 * (1 - rho 48197) = rho 48194 - rho 48195 - rho 48196 := by
    linear_combination r3809
  have haddx :
      rho 48198 * (1 + 3021 * (rho 48193 * seg52In1AccX86 rho) * (rho 48192 * seg52In1AccY86 rho)) =
        rho 48193 * seg52In1AccX86 rho + rho 48192 * seg52In1AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48199 * (1 - 3021 * (rho 48193 * seg52In1AccX86 rho) * (rho 48192 * seg52In1AccY86 rho)) =
        (-1) * (rho 48193 * seg52In1AccX86 rho) - rho 48192 * seg52In1AccY86 rho +
          (seg52In1AccY86 rho - seg52In1AccX86 rho * (-1)) * (rho 48192 + rho 48193) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48199 * (1 - rho 48197) = rho 48194 - rho 48195 - rho 48196 := ha5
      _ = (-1) * rho 48195 - rho 48196 + (seg52In1AccY86 rho - seg52In1AccX86 rho * (-1)) *
          (rho 48192 + rho 48193) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX87 rho = seg52In1AccX86 rho - Bool.toZMod bit * (seg52In1AccX86 rho - rho 48198) := by
    have hd : rho 48200 = Bool.toZMod bit * (rho 48198 - seg52In1AccX86 rho) := by
      rw [← hbit]
      unfold seg52In1AccX86
      linear_combination -r3810
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY87 rho = seg52In1AccY86 rho - Bool.toZMod bit * (seg52In1AccY86 rho - rho 48199) := by
    have hd : rho 48201 = Bool.toZMod bit * (rho 48199 - seg52In1AccY86 rho) := by
      rw [← hbit]
      unfold seg52In1AccY86
      linear_combination -r3811
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48192 * rho 48193 = rho 48202 := by linear_combination r3812
  have hd1 : rho 48192 * rho 48192 = rho 48203 := by linear_combination r3813
  have hd2 : rho 48193 * rho 48193 = rho 48204 := by linear_combination r3814
  have hd3 : rho 48205 * (rho 48193 * rho 48193 + rho 48192 * rho 48192 * (-1)) =
      2 * (rho 48192 * rho 48193) := by
    rw [hd0, hd1, hd2]
    linear_combination r3815
  have hd4 : rho 48206 * (2 - (rho 48193 * rho 48193 + rho 48192 * rho 48192 * (-1))) =
      rho 48193 * rho 48193 - rho 48192 * rho 48192 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3816
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48192, rho 48193⟩
    ⟨rho 48198, rho 48199⟩ ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48205, rho 48206⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3817 rho ∧ Seg52.relationRow3818 rho ∧ Seg52.relationRow3819 rho ∧ Seg52.relationRow3820 rho ∧ Seg52.relationRow3821 rho ∧ Seg52.relationRow3822 rho ∧ Seg52.relationRow3823 rho ∧ Seg52.relationRow3824 rho ∧ Seg52.relationRow3825 rho ∧ Seg52.relationRow3826 rho ∧ Seg52.relationRow3827 rho ∧ Seg52.relationRow3828 rho ∧ Seg52.relationRow3829 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829⟩

theorem seg52In1_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48205, rho 48206⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48205, rho 48206⟩
        ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48218, rho 48219⟩ := by
  obtain ⟨r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829⟩ := seg52In1_rows87 rho h
  unfold Seg52.relationRow3817 at r3817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3817

  unfold Seg52.relationRow3818 at r3818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3818

  unfold Seg52.relationRow3819 at r3819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3819

  unfold Seg52.relationRow3820 at r3820

  unfold Seg52.relationRow3821 at r3821

  unfold Seg52.relationRow3822 at r3822

  unfold Seg52.relationRow3823 at r3823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3823

  unfold Seg52.relationRow3824 at r3824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824

  unfold Seg52.relationRow3825 at r3825

  unfold Seg52.relationRow3826 at r3826

  unfold Seg52.relationRow3827 at r3827

  unfold Seg52.relationRow3828 at r3828

  unfold Seg52.relationRow3829 at r3829

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX88 rho = seg52In1AccX87 rho + rho 48213 := by
    unfold seg52In1AccX88 seg52In1AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 87]

    ring

  have hnexty : seg52In1AccY88 rho = seg52In1AccY87 rho + rho 48214 := by
    unfold seg52In1AccY88 seg52In1AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 87]

    ring

  have ha0 : (rho 48205 + rho 48206) * (seg52In1AccX87 rho + seg52In1AccY87 rho) = rho 48207 := by
    unfold seg52In1AccX87 seg52In1AccY87
    linear_combination r3817
  have ha1 : rho 48206 * seg52In1AccX87 rho = rho 48208 := by
    unfold seg52In1AccX87
    linear_combination r3818
  have ha2 : rho 48205 * seg52In1AccY87 rho = rho 48209 := by
    unfold seg52In1AccY87
    linear_combination r3819
  have ha3 : 3021 * rho 48208 * rho 48209 = rho 48210 := by
    linear_combination r3820
  have ha4 : rho 48211 * (1 + rho 48210) = rho 48208 + rho 48209 := by
    linear_combination r3821
  have ha5 : rho 48212 * (1 - rho 48210) = rho 48207 - rho 48208 - rho 48209 := by
    linear_combination r3822
  have haddx :
      rho 48211 * (1 + 3021 * (rho 48206 * seg52In1AccX87 rho) * (rho 48205 * seg52In1AccY87 rho)) =
        rho 48206 * seg52In1AccX87 rho + rho 48205 * seg52In1AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48212 * (1 - 3021 * (rho 48206 * seg52In1AccX87 rho) * (rho 48205 * seg52In1AccY87 rho)) =
        (-1) * (rho 48206 * seg52In1AccX87 rho) - rho 48205 * seg52In1AccY87 rho +
          (seg52In1AccY87 rho - seg52In1AccX87 rho * (-1)) * (rho 48205 + rho 48206) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48212 * (1 - rho 48210) = rho 48207 - rho 48208 - rho 48209 := ha5
      _ = (-1) * rho 48208 - rho 48209 + (seg52In1AccY87 rho - seg52In1AccX87 rho * (-1)) *
          (rho 48205 + rho 48206) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX88 rho = seg52In1AccX87 rho - Bool.toZMod bit * (seg52In1AccX87 rho - rho 48211) := by
    have hd : rho 48213 = Bool.toZMod bit * (rho 48211 - seg52In1AccX87 rho) := by
      rw [← hbit]
      unfold seg52In1AccX87
      linear_combination -r3823
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY88 rho = seg52In1AccY87 rho - Bool.toZMod bit * (seg52In1AccY87 rho - rho 48212) := by
    have hd : rho 48214 = Bool.toZMod bit * (rho 48212 - seg52In1AccY87 rho) := by
      rw [← hbit]
      unfold seg52In1AccY87
      linear_combination -r3824
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48205 * rho 48206 = rho 48215 := by linear_combination r3825
  have hd1 : rho 48205 * rho 48205 = rho 48216 := by linear_combination r3826
  have hd2 : rho 48206 * rho 48206 = rho 48217 := by linear_combination r3827
  have hd3 : rho 48218 * (rho 48206 * rho 48206 + rho 48205 * rho 48205 * (-1)) =
      2 * (rho 48205 * rho 48206) := by
    rw [hd0, hd1, hd2]
    linear_combination r3828
  have hd4 : rho 48219 * (2 - (rho 48206 * rho 48206 + rho 48205 * rho 48205 * (-1))) =
      rho 48206 * rho 48206 - rho 48205 * rho 48205 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3829
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48205, rho 48206⟩
    ⟨rho 48211, rho 48212⟩ ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48218, rho 48219⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg52In1_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg52In1_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg52In1_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg52In1_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg52In1_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg52In1_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg52In1_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg52In1_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg52In1_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg52In1_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
