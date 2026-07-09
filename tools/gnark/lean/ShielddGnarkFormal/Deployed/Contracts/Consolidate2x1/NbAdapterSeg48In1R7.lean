import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3687 rho ∧ Seg48.relationRow3688 rho ∧ Seg48.relationRow3689 rho ∧ Seg48.relationRow3690 rho ∧ Seg48.relationRow3691 rho ∧ Seg48.relationRow3692 rho ∧ Seg48.relationRow3693 rho ∧ Seg48.relationRow3694 rho ∧ Seg48.relationRow3695 rho ∧ Seg48.relationRow3696 rho ∧ Seg48.relationRow3697 rho ∧ Seg48.relationRow3698 rho ∧ Seg48.relationRow3699 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699⟩

theorem seg48In1_rung77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35399 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX77 rho, seg48In1AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36443, rho 36444⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX77 rho, seg48In1AccY77 rho⟩ ⟨rho 36443, rho 36444⟩
        ⟨seg48In1AccX78 rho, seg48In1AccY78 rho⟩ ⟨rho 36456, rho 36457⟩ := by
  obtain ⟨r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699⟩ := seg48In1_rows77 rho h
  unfold Seg48.relationRow3687 at r3687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3687

  unfold Seg48.relationRow3688 at r3688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3688

  unfold Seg48.relationRow3689 at r3689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3689

  unfold Seg48.relationRow3690 at r3690

  unfold Seg48.relationRow3691 at r3691

  unfold Seg48.relationRow3692 at r3692

  unfold Seg48.relationRow3693 at r3693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3693

  unfold Seg48.relationRow3694 at r3694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694

  unfold Seg48.relationRow3695 at r3695

  unfold Seg48.relationRow3696 at r3696

  unfold Seg48.relationRow3697 at r3697

  unfold Seg48.relationRow3698 at r3698

  unfold Seg48.relationRow3699 at r3699

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX78 rho = seg48In1AccX77 rho + rho 36451 := by
    unfold seg48In1AccX78 seg48In1AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 77]

    ring

  have hnexty : seg48In1AccY78 rho = seg48In1AccY77 rho + rho 36452 := by
    unfold seg48In1AccY78 seg48In1AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 77]

    ring

  have ha0 : (rho 36443 + rho 36444) * (seg48In1AccX77 rho + seg48In1AccY77 rho) = rho 36445 := by
    unfold seg48In1AccX77 seg48In1AccY77
    linear_combination r3687
  have ha1 : rho 36444 * seg48In1AccX77 rho = rho 36446 := by
    unfold seg48In1AccX77
    linear_combination r3688
  have ha2 : rho 36443 * seg48In1AccY77 rho = rho 36447 := by
    unfold seg48In1AccY77
    linear_combination r3689
  have ha3 : 3021 * rho 36446 * rho 36447 = rho 36448 := by
    linear_combination r3690
  have ha4 : rho 36449 * (1 + rho 36448) = rho 36446 + rho 36447 := by
    linear_combination r3691
  have ha5 : rho 36450 * (1 - rho 36448) = rho 36445 - rho 36446 - rho 36447 := by
    linear_combination r3692
  have haddx :
      rho 36449 * (1 + 3021 * (rho 36444 * seg48In1AccX77 rho) * (rho 36443 * seg48In1AccY77 rho)) =
        rho 36444 * seg48In1AccX77 rho + rho 36443 * seg48In1AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36450 * (1 - 3021 * (rho 36444 * seg48In1AccX77 rho) * (rho 36443 * seg48In1AccY77 rho)) =
        (-1) * (rho 36444 * seg48In1AccX77 rho) - rho 36443 * seg48In1AccY77 rho +
          (seg48In1AccY77 rho - seg48In1AccX77 rho * (-1)) * (rho 36443 + rho 36444) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36450 * (1 - rho 36448) = rho 36445 - rho 36446 - rho 36447 := ha5
      _ = (-1) * rho 36446 - rho 36447 + (seg48In1AccY77 rho - seg48In1AccX77 rho * (-1)) *
          (rho 36443 + rho 36444) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX78 rho = seg48In1AccX77 rho - Bool.toZMod bit * (seg48In1AccX77 rho - rho 36449) := by
    have hd : rho 36451 = Bool.toZMod bit * (rho 36449 - seg48In1AccX77 rho) := by
      rw [← hbit]
      unfold seg48In1AccX77
      linear_combination -r3693
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY78 rho = seg48In1AccY77 rho - Bool.toZMod bit * (seg48In1AccY77 rho - rho 36450) := by
    have hd : rho 36452 = Bool.toZMod bit * (rho 36450 - seg48In1AccY77 rho) := by
      rw [← hbit]
      unfold seg48In1AccY77
      linear_combination -r3694
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36443 * rho 36444 = rho 36453 := by linear_combination r3695
  have hd1 : rho 36443 * rho 36443 = rho 36454 := by linear_combination r3696
  have hd2 : rho 36444 * rho 36444 = rho 36455 := by linear_combination r3697
  have hd3 : rho 36456 * (rho 36444 * rho 36444 + rho 36443 * rho 36443 * (-1)) =
      2 * (rho 36443 * rho 36444) := by
    rw [hd0, hd1, hd2]
    linear_combination r3698
  have hd4 : rho 36457 * (2 - (rho 36444 * rho 36444 + rho 36443 * rho 36443 * (-1))) =
      rho 36444 * rho 36444 - rho 36443 * rho 36443 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3699
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX77 rho, seg48In1AccY77 rho⟩ ⟨rho 36443, rho 36444⟩
    ⟨rho 36449, rho 36450⟩ ⟨seg48In1AccX78 rho, seg48In1AccY78 rho⟩ ⟨rho 36456, rho 36457⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3700 rho ∧ Seg48.relationRow3701 rho ∧ Seg48.relationRow3702 rho ∧ Seg48.relationRow3703 rho ∧ Seg48.relationRow3704 rho ∧ Seg48.relationRow3705 rho ∧ Seg48.relationRow3706 rho ∧ Seg48.relationRow3707 rho ∧ Seg48.relationRow3708 rho ∧ Seg48.relationRow3709 rho ∧ Seg48.relationRow3710 rho ∧ Seg48.relationRow3711 rho ∧ Seg48.relationRow3712 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712⟩

theorem seg48In1_rung78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35400 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX78 rho, seg48In1AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36456, rho 36457⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX78 rho, seg48In1AccY78 rho⟩ ⟨rho 36456, rho 36457⟩
        ⟨seg48In1AccX79 rho, seg48In1AccY79 rho⟩ ⟨rho 36469, rho 36470⟩ := by
  obtain ⟨r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712⟩ := seg48In1_rows78 rho h
  unfold Seg48.relationRow3700 at r3700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3700

  unfold Seg48.relationRow3701 at r3701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3701

  unfold Seg48.relationRow3702 at r3702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3702

  unfold Seg48.relationRow3703 at r3703

  unfold Seg48.relationRow3704 at r3704

  unfold Seg48.relationRow3705 at r3705

  unfold Seg48.relationRow3706 at r3706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3706

  unfold Seg48.relationRow3707 at r3707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707

  unfold Seg48.relationRow3708 at r3708

  unfold Seg48.relationRow3709 at r3709

  unfold Seg48.relationRow3710 at r3710

  unfold Seg48.relationRow3711 at r3711

  unfold Seg48.relationRow3712 at r3712

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX79 rho = seg48In1AccX78 rho + rho 36464 := by
    unfold seg48In1AccX79 seg48In1AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 78]

    ring

  have hnexty : seg48In1AccY79 rho = seg48In1AccY78 rho + rho 36465 := by
    unfold seg48In1AccY79 seg48In1AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 78]

    ring

  have ha0 : (rho 36456 + rho 36457) * (seg48In1AccX78 rho + seg48In1AccY78 rho) = rho 36458 := by
    unfold seg48In1AccX78 seg48In1AccY78
    linear_combination r3700
  have ha1 : rho 36457 * seg48In1AccX78 rho = rho 36459 := by
    unfold seg48In1AccX78
    linear_combination r3701
  have ha2 : rho 36456 * seg48In1AccY78 rho = rho 36460 := by
    unfold seg48In1AccY78
    linear_combination r3702
  have ha3 : 3021 * rho 36459 * rho 36460 = rho 36461 := by
    linear_combination r3703
  have ha4 : rho 36462 * (1 + rho 36461) = rho 36459 + rho 36460 := by
    linear_combination r3704
  have ha5 : rho 36463 * (1 - rho 36461) = rho 36458 - rho 36459 - rho 36460 := by
    linear_combination r3705
  have haddx :
      rho 36462 * (1 + 3021 * (rho 36457 * seg48In1AccX78 rho) * (rho 36456 * seg48In1AccY78 rho)) =
        rho 36457 * seg48In1AccX78 rho + rho 36456 * seg48In1AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36463 * (1 - 3021 * (rho 36457 * seg48In1AccX78 rho) * (rho 36456 * seg48In1AccY78 rho)) =
        (-1) * (rho 36457 * seg48In1AccX78 rho) - rho 36456 * seg48In1AccY78 rho +
          (seg48In1AccY78 rho - seg48In1AccX78 rho * (-1)) * (rho 36456 + rho 36457) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36463 * (1 - rho 36461) = rho 36458 - rho 36459 - rho 36460 := ha5
      _ = (-1) * rho 36459 - rho 36460 + (seg48In1AccY78 rho - seg48In1AccX78 rho * (-1)) *
          (rho 36456 + rho 36457) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX79 rho = seg48In1AccX78 rho - Bool.toZMod bit * (seg48In1AccX78 rho - rho 36462) := by
    have hd : rho 36464 = Bool.toZMod bit * (rho 36462 - seg48In1AccX78 rho) := by
      rw [← hbit]
      unfold seg48In1AccX78
      linear_combination -r3706
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY79 rho = seg48In1AccY78 rho - Bool.toZMod bit * (seg48In1AccY78 rho - rho 36463) := by
    have hd : rho 36465 = Bool.toZMod bit * (rho 36463 - seg48In1AccY78 rho) := by
      rw [← hbit]
      unfold seg48In1AccY78
      linear_combination -r3707
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36456 * rho 36457 = rho 36466 := by linear_combination r3708
  have hd1 : rho 36456 * rho 36456 = rho 36467 := by linear_combination r3709
  have hd2 : rho 36457 * rho 36457 = rho 36468 := by linear_combination r3710
  have hd3 : rho 36469 * (rho 36457 * rho 36457 + rho 36456 * rho 36456 * (-1)) =
      2 * (rho 36456 * rho 36457) := by
    rw [hd0, hd1, hd2]
    linear_combination r3711
  have hd4 : rho 36470 * (2 - (rho 36457 * rho 36457 + rho 36456 * rho 36456 * (-1))) =
      rho 36457 * rho 36457 - rho 36456 * rho 36456 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3712
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX78 rho, seg48In1AccY78 rho⟩ ⟨rho 36456, rho 36457⟩
    ⟨rho 36462, rho 36463⟩ ⟨seg48In1AccX79 rho, seg48In1AccY79 rho⟩ ⟨rho 36469, rho 36470⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3713 rho ∧ Seg48.relationRow3714 rho ∧ Seg48.relationRow3715 rho ∧ Seg48.relationRow3716 rho ∧ Seg48.relationRow3717 rho ∧ Seg48.relationRow3718 rho ∧ Seg48.relationRow3719 rho ∧ Seg48.relationRow3720 rho ∧ Seg48.relationRow3721 rho ∧ Seg48.relationRow3722 rho ∧ Seg48.relationRow3723 rho ∧ Seg48.relationRow3724 rho ∧ Seg48.relationRow3725 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725⟩

theorem seg48In1_rung79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35401 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX79 rho, seg48In1AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36469, rho 36470⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX79 rho, seg48In1AccY79 rho⟩ ⟨rho 36469, rho 36470⟩
        ⟨seg48In1AccX80 rho, seg48In1AccY80 rho⟩ ⟨rho 36482, rho 36483⟩ := by
  obtain ⟨r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725⟩ := seg48In1_rows79 rho h
  unfold Seg48.relationRow3713 at r3713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3713

  unfold Seg48.relationRow3714 at r3714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3714

  unfold Seg48.relationRow3715 at r3715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3715

  unfold Seg48.relationRow3716 at r3716

  unfold Seg48.relationRow3717 at r3717

  unfold Seg48.relationRow3718 at r3718

  unfold Seg48.relationRow3719 at r3719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3719

  unfold Seg48.relationRow3720 at r3720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720

  unfold Seg48.relationRow3721 at r3721

  unfold Seg48.relationRow3722 at r3722

  unfold Seg48.relationRow3723 at r3723

  unfold Seg48.relationRow3724 at r3724

  unfold Seg48.relationRow3725 at r3725

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX80 rho = seg48In1AccX79 rho + rho 36477 := by
    unfold seg48In1AccX80 seg48In1AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 79]

    ring

  have hnexty : seg48In1AccY80 rho = seg48In1AccY79 rho + rho 36478 := by
    unfold seg48In1AccY80 seg48In1AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 79]

    ring

  have ha0 : (rho 36469 + rho 36470) * (seg48In1AccX79 rho + seg48In1AccY79 rho) = rho 36471 := by
    unfold seg48In1AccX79 seg48In1AccY79
    linear_combination r3713
  have ha1 : rho 36470 * seg48In1AccX79 rho = rho 36472 := by
    unfold seg48In1AccX79
    linear_combination r3714
  have ha2 : rho 36469 * seg48In1AccY79 rho = rho 36473 := by
    unfold seg48In1AccY79
    linear_combination r3715
  have ha3 : 3021 * rho 36472 * rho 36473 = rho 36474 := by
    linear_combination r3716
  have ha4 : rho 36475 * (1 + rho 36474) = rho 36472 + rho 36473 := by
    linear_combination r3717
  have ha5 : rho 36476 * (1 - rho 36474) = rho 36471 - rho 36472 - rho 36473 := by
    linear_combination r3718
  have haddx :
      rho 36475 * (1 + 3021 * (rho 36470 * seg48In1AccX79 rho) * (rho 36469 * seg48In1AccY79 rho)) =
        rho 36470 * seg48In1AccX79 rho + rho 36469 * seg48In1AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36476 * (1 - 3021 * (rho 36470 * seg48In1AccX79 rho) * (rho 36469 * seg48In1AccY79 rho)) =
        (-1) * (rho 36470 * seg48In1AccX79 rho) - rho 36469 * seg48In1AccY79 rho +
          (seg48In1AccY79 rho - seg48In1AccX79 rho * (-1)) * (rho 36469 + rho 36470) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36476 * (1 - rho 36474) = rho 36471 - rho 36472 - rho 36473 := ha5
      _ = (-1) * rho 36472 - rho 36473 + (seg48In1AccY79 rho - seg48In1AccX79 rho * (-1)) *
          (rho 36469 + rho 36470) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX80 rho = seg48In1AccX79 rho - Bool.toZMod bit * (seg48In1AccX79 rho - rho 36475) := by
    have hd : rho 36477 = Bool.toZMod bit * (rho 36475 - seg48In1AccX79 rho) := by
      rw [← hbit]
      unfold seg48In1AccX79
      linear_combination -r3719
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY80 rho = seg48In1AccY79 rho - Bool.toZMod bit * (seg48In1AccY79 rho - rho 36476) := by
    have hd : rho 36478 = Bool.toZMod bit * (rho 36476 - seg48In1AccY79 rho) := by
      rw [← hbit]
      unfold seg48In1AccY79
      linear_combination -r3720
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36469 * rho 36470 = rho 36479 := by linear_combination r3721
  have hd1 : rho 36469 * rho 36469 = rho 36480 := by linear_combination r3722
  have hd2 : rho 36470 * rho 36470 = rho 36481 := by linear_combination r3723
  have hd3 : rho 36482 * (rho 36470 * rho 36470 + rho 36469 * rho 36469 * (-1)) =
      2 * (rho 36469 * rho 36470) := by
    rw [hd0, hd1, hd2]
    linear_combination r3724
  have hd4 : rho 36483 * (2 - (rho 36470 * rho 36470 + rho 36469 * rho 36469 * (-1))) =
      rho 36470 * rho 36470 - rho 36469 * rho 36469 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3725
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX79 rho, seg48In1AccY79 rho⟩ ⟨rho 36469, rho 36470⟩
    ⟨rho 36475, rho 36476⟩ ⟨seg48In1AccX80 rho, seg48In1AccY80 rho⟩ ⟨rho 36482, rho 36483⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3726 rho ∧ Seg48.relationRow3727 rho ∧ Seg48.relationRow3728 rho ∧ Seg48.relationRow3729 rho ∧ Seg48.relationRow3730 rho ∧ Seg48.relationRow3731 rho ∧ Seg48.relationRow3732 rho ∧ Seg48.relationRow3733 rho ∧ Seg48.relationRow3734 rho ∧ Seg48.relationRow3735 rho ∧ Seg48.relationRow3736 rho ∧ Seg48.relationRow3737 rho ∧ Seg48.relationRow3738 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738⟩

theorem seg48In1_rung80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35402 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX80 rho, seg48In1AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36482, rho 36483⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX80 rho, seg48In1AccY80 rho⟩ ⟨rho 36482, rho 36483⟩
        ⟨seg48In1AccX81 rho, seg48In1AccY81 rho⟩ ⟨rho 36495, rho 36496⟩ := by
  obtain ⟨r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738⟩ := seg48In1_rows80 rho h
  unfold Seg48.relationRow3726 at r3726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3726

  unfold Seg48.relationRow3727 at r3727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3727

  unfold Seg48.relationRow3728 at r3728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3728

  unfold Seg48.relationRow3729 at r3729

  unfold Seg48.relationRow3730 at r3730

  unfold Seg48.relationRow3731 at r3731

  unfold Seg48.relationRow3732 at r3732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3732

  unfold Seg48.relationRow3733 at r3733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733

  unfold Seg48.relationRow3734 at r3734

  unfold Seg48.relationRow3735 at r3735

  unfold Seg48.relationRow3736 at r3736

  unfold Seg48.relationRow3737 at r3737

  unfold Seg48.relationRow3738 at r3738

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX81 rho = seg48In1AccX80 rho + rho 36490 := by
    unfold seg48In1AccX81 seg48In1AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 80]

    ring

  have hnexty : seg48In1AccY81 rho = seg48In1AccY80 rho + rho 36491 := by
    unfold seg48In1AccY81 seg48In1AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 80]

    ring

  have ha0 : (rho 36482 + rho 36483) * (seg48In1AccX80 rho + seg48In1AccY80 rho) = rho 36484 := by
    unfold seg48In1AccX80 seg48In1AccY80
    linear_combination r3726
  have ha1 : rho 36483 * seg48In1AccX80 rho = rho 36485 := by
    unfold seg48In1AccX80
    linear_combination r3727
  have ha2 : rho 36482 * seg48In1AccY80 rho = rho 36486 := by
    unfold seg48In1AccY80
    linear_combination r3728
  have ha3 : 3021 * rho 36485 * rho 36486 = rho 36487 := by
    linear_combination r3729
  have ha4 : rho 36488 * (1 + rho 36487) = rho 36485 + rho 36486 := by
    linear_combination r3730
  have ha5 : rho 36489 * (1 - rho 36487) = rho 36484 - rho 36485 - rho 36486 := by
    linear_combination r3731
  have haddx :
      rho 36488 * (1 + 3021 * (rho 36483 * seg48In1AccX80 rho) * (rho 36482 * seg48In1AccY80 rho)) =
        rho 36483 * seg48In1AccX80 rho + rho 36482 * seg48In1AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36489 * (1 - 3021 * (rho 36483 * seg48In1AccX80 rho) * (rho 36482 * seg48In1AccY80 rho)) =
        (-1) * (rho 36483 * seg48In1AccX80 rho) - rho 36482 * seg48In1AccY80 rho +
          (seg48In1AccY80 rho - seg48In1AccX80 rho * (-1)) * (rho 36482 + rho 36483) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36489 * (1 - rho 36487) = rho 36484 - rho 36485 - rho 36486 := ha5
      _ = (-1) * rho 36485 - rho 36486 + (seg48In1AccY80 rho - seg48In1AccX80 rho * (-1)) *
          (rho 36482 + rho 36483) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX81 rho = seg48In1AccX80 rho - Bool.toZMod bit * (seg48In1AccX80 rho - rho 36488) := by
    have hd : rho 36490 = Bool.toZMod bit * (rho 36488 - seg48In1AccX80 rho) := by
      rw [← hbit]
      unfold seg48In1AccX80
      linear_combination -r3732
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY81 rho = seg48In1AccY80 rho - Bool.toZMod bit * (seg48In1AccY80 rho - rho 36489) := by
    have hd : rho 36491 = Bool.toZMod bit * (rho 36489 - seg48In1AccY80 rho) := by
      rw [← hbit]
      unfold seg48In1AccY80
      linear_combination -r3733
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36482 * rho 36483 = rho 36492 := by linear_combination r3734
  have hd1 : rho 36482 * rho 36482 = rho 36493 := by linear_combination r3735
  have hd2 : rho 36483 * rho 36483 = rho 36494 := by linear_combination r3736
  have hd3 : rho 36495 * (rho 36483 * rho 36483 + rho 36482 * rho 36482 * (-1)) =
      2 * (rho 36482 * rho 36483) := by
    rw [hd0, hd1, hd2]
    linear_combination r3737
  have hd4 : rho 36496 * (2 - (rho 36483 * rho 36483 + rho 36482 * rho 36482 * (-1))) =
      rho 36483 * rho 36483 - rho 36482 * rho 36482 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3738
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX80 rho, seg48In1AccY80 rho⟩ ⟨rho 36482, rho 36483⟩
    ⟨rho 36488, rho 36489⟩ ⟨seg48In1AccX81 rho, seg48In1AccY81 rho⟩ ⟨rho 36495, rho 36496⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3739 rho ∧ Seg48.relationRow3740 rho ∧ Seg48.relationRow3741 rho ∧ Seg48.relationRow3742 rho ∧ Seg48.relationRow3743 rho ∧ Seg48.relationRow3744 rho ∧ Seg48.relationRow3745 rho ∧ Seg48.relationRow3746 rho ∧ Seg48.relationRow3747 rho ∧ Seg48.relationRow3748 rho ∧ Seg48.relationRow3749 rho ∧ Seg48.relationRow3750 rho ∧ Seg48.relationRow3751 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, _, _, _, _, _, _, _, _⟩

  exact ⟨r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751⟩

theorem seg48In1_rung81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35403 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX81 rho, seg48In1AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36495, rho 36496⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX81 rho, seg48In1AccY81 rho⟩ ⟨rho 36495, rho 36496⟩
        ⟨seg48In1AccX82 rho, seg48In1AccY82 rho⟩ ⟨rho 36508, rho 36509⟩ := by
  obtain ⟨r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751⟩ := seg48In1_rows81 rho h
  unfold Seg48.relationRow3739 at r3739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3739

  unfold Seg48.relationRow3740 at r3740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3740

  unfold Seg48.relationRow3741 at r3741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3741

  unfold Seg48.relationRow3742 at r3742

  unfold Seg48.relationRow3743 at r3743

  unfold Seg48.relationRow3744 at r3744

  unfold Seg48.relationRow3745 at r3745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3745

  unfold Seg48.relationRow3746 at r3746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746

  unfold Seg48.relationRow3747 at r3747

  unfold Seg48.relationRow3748 at r3748

  unfold Seg48.relationRow3749 at r3749

  unfold Seg48.relationRow3750 at r3750

  unfold Seg48.relationRow3751 at r3751

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX82 rho = seg48In1AccX81 rho + rho 36503 := by
    unfold seg48In1AccX82 seg48In1AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 81]

    ring

  have hnexty : seg48In1AccY82 rho = seg48In1AccY81 rho + rho 36504 := by
    unfold seg48In1AccY82 seg48In1AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 81]

    ring

  have ha0 : (rho 36495 + rho 36496) * (seg48In1AccX81 rho + seg48In1AccY81 rho) = rho 36497 := by
    unfold seg48In1AccX81 seg48In1AccY81
    linear_combination r3739
  have ha1 : rho 36496 * seg48In1AccX81 rho = rho 36498 := by
    unfold seg48In1AccX81
    linear_combination r3740
  have ha2 : rho 36495 * seg48In1AccY81 rho = rho 36499 := by
    unfold seg48In1AccY81
    linear_combination r3741
  have ha3 : 3021 * rho 36498 * rho 36499 = rho 36500 := by
    linear_combination r3742
  have ha4 : rho 36501 * (1 + rho 36500) = rho 36498 + rho 36499 := by
    linear_combination r3743
  have ha5 : rho 36502 * (1 - rho 36500) = rho 36497 - rho 36498 - rho 36499 := by
    linear_combination r3744
  have haddx :
      rho 36501 * (1 + 3021 * (rho 36496 * seg48In1AccX81 rho) * (rho 36495 * seg48In1AccY81 rho)) =
        rho 36496 * seg48In1AccX81 rho + rho 36495 * seg48In1AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36502 * (1 - 3021 * (rho 36496 * seg48In1AccX81 rho) * (rho 36495 * seg48In1AccY81 rho)) =
        (-1) * (rho 36496 * seg48In1AccX81 rho) - rho 36495 * seg48In1AccY81 rho +
          (seg48In1AccY81 rho - seg48In1AccX81 rho * (-1)) * (rho 36495 + rho 36496) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36502 * (1 - rho 36500) = rho 36497 - rho 36498 - rho 36499 := ha5
      _ = (-1) * rho 36498 - rho 36499 + (seg48In1AccY81 rho - seg48In1AccX81 rho * (-1)) *
          (rho 36495 + rho 36496) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX82 rho = seg48In1AccX81 rho - Bool.toZMod bit * (seg48In1AccX81 rho - rho 36501) := by
    have hd : rho 36503 = Bool.toZMod bit * (rho 36501 - seg48In1AccX81 rho) := by
      rw [← hbit]
      unfold seg48In1AccX81
      linear_combination -r3745
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY82 rho = seg48In1AccY81 rho - Bool.toZMod bit * (seg48In1AccY81 rho - rho 36502) := by
    have hd : rho 36504 = Bool.toZMod bit * (rho 36502 - seg48In1AccY81 rho) := by
      rw [← hbit]
      unfold seg48In1AccY81
      linear_combination -r3746
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36495 * rho 36496 = rho 36505 := by linear_combination r3747
  have hd1 : rho 36495 * rho 36495 = rho 36506 := by linear_combination r3748
  have hd2 : rho 36496 * rho 36496 = rho 36507 := by linear_combination r3749
  have hd3 : rho 36508 * (rho 36496 * rho 36496 + rho 36495 * rho 36495 * (-1)) =
      2 * (rho 36495 * rho 36496) := by
    rw [hd0, hd1, hd2]
    linear_combination r3750
  have hd4 : rho 36509 * (2 - (rho 36496 * rho 36496 + rho 36495 * rho 36495 * (-1))) =
      rho 36496 * rho 36496 - rho 36495 * rho 36495 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3751
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX81 rho, seg48In1AccY81 rho⟩ ⟨rho 36495, rho 36496⟩
    ⟨rho 36501, rho 36502⟩ ⟨seg48In1AccX82 rho, seg48In1AccY82 rho⟩ ⟨rho 36508, rho 36509⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3752 rho ∧ Seg48.relationRow3753 rho ∧ Seg48.relationRow3754 rho ∧ Seg48.relationRow3755 rho ∧ Seg48.relationRow3756 rho ∧ Seg48.relationRow3757 rho ∧ Seg48.relationRow3758 rho ∧ Seg48.relationRow3759 rho ∧ Seg48.relationRow3760 rho ∧ Seg48.relationRow3761 rho ∧ Seg48.relationRow3762 rho ∧ Seg48.relationRow3763 rho ∧ Seg48.relationRow3764 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764⟩

theorem seg48In1_rung82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35404 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX82 rho, seg48In1AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36508, rho 36509⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX82 rho, seg48In1AccY82 rho⟩ ⟨rho 36508, rho 36509⟩
        ⟨seg48In1AccX83 rho, seg48In1AccY83 rho⟩ ⟨rho 36521, rho 36522⟩ := by
  obtain ⟨r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764⟩ := seg48In1_rows82 rho h
  unfold Seg48.relationRow3752 at r3752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3752

  unfold Seg48.relationRow3753 at r3753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3753

  unfold Seg48.relationRow3754 at r3754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3754

  unfold Seg48.relationRow3755 at r3755

  unfold Seg48.relationRow3756 at r3756

  unfold Seg48.relationRow3757 at r3757

  unfold Seg48.relationRow3758 at r3758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3758

  unfold Seg48.relationRow3759 at r3759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759

  unfold Seg48.relationRow3760 at r3760

  unfold Seg48.relationRow3761 at r3761

  unfold Seg48.relationRow3762 at r3762

  unfold Seg48.relationRow3763 at r3763

  unfold Seg48.relationRow3764 at r3764

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX83 rho = seg48In1AccX82 rho + rho 36516 := by
    unfold seg48In1AccX83 seg48In1AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 82]

    ring

  have hnexty : seg48In1AccY83 rho = seg48In1AccY82 rho + rho 36517 := by
    unfold seg48In1AccY83 seg48In1AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 82]

    ring

  have ha0 : (rho 36508 + rho 36509) * (seg48In1AccX82 rho + seg48In1AccY82 rho) = rho 36510 := by
    unfold seg48In1AccX82 seg48In1AccY82
    linear_combination r3752
  have ha1 : rho 36509 * seg48In1AccX82 rho = rho 36511 := by
    unfold seg48In1AccX82
    linear_combination r3753
  have ha2 : rho 36508 * seg48In1AccY82 rho = rho 36512 := by
    unfold seg48In1AccY82
    linear_combination r3754
  have ha3 : 3021 * rho 36511 * rho 36512 = rho 36513 := by
    linear_combination r3755
  have ha4 : rho 36514 * (1 + rho 36513) = rho 36511 + rho 36512 := by
    linear_combination r3756
  have ha5 : rho 36515 * (1 - rho 36513) = rho 36510 - rho 36511 - rho 36512 := by
    linear_combination r3757
  have haddx :
      rho 36514 * (1 + 3021 * (rho 36509 * seg48In1AccX82 rho) * (rho 36508 * seg48In1AccY82 rho)) =
        rho 36509 * seg48In1AccX82 rho + rho 36508 * seg48In1AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36515 * (1 - 3021 * (rho 36509 * seg48In1AccX82 rho) * (rho 36508 * seg48In1AccY82 rho)) =
        (-1) * (rho 36509 * seg48In1AccX82 rho) - rho 36508 * seg48In1AccY82 rho +
          (seg48In1AccY82 rho - seg48In1AccX82 rho * (-1)) * (rho 36508 + rho 36509) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36515 * (1 - rho 36513) = rho 36510 - rho 36511 - rho 36512 := ha5
      _ = (-1) * rho 36511 - rho 36512 + (seg48In1AccY82 rho - seg48In1AccX82 rho * (-1)) *
          (rho 36508 + rho 36509) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX83 rho = seg48In1AccX82 rho - Bool.toZMod bit * (seg48In1AccX82 rho - rho 36514) := by
    have hd : rho 36516 = Bool.toZMod bit * (rho 36514 - seg48In1AccX82 rho) := by
      rw [← hbit]
      unfold seg48In1AccX82
      linear_combination -r3758
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY83 rho = seg48In1AccY82 rho - Bool.toZMod bit * (seg48In1AccY82 rho - rho 36515) := by
    have hd : rho 36517 = Bool.toZMod bit * (rho 36515 - seg48In1AccY82 rho) := by
      rw [← hbit]
      unfold seg48In1AccY82
      linear_combination -r3759
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36508 * rho 36509 = rho 36518 := by linear_combination r3760
  have hd1 : rho 36508 * rho 36508 = rho 36519 := by linear_combination r3761
  have hd2 : rho 36509 * rho 36509 = rho 36520 := by linear_combination r3762
  have hd3 : rho 36521 * (rho 36509 * rho 36509 + rho 36508 * rho 36508 * (-1)) =
      2 * (rho 36508 * rho 36509) := by
    rw [hd0, hd1, hd2]
    linear_combination r3763
  have hd4 : rho 36522 * (2 - (rho 36509 * rho 36509 + rho 36508 * rho 36508 * (-1))) =
      rho 36509 * rho 36509 - rho 36508 * rho 36508 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3764
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX82 rho, seg48In1AccY82 rho⟩ ⟨rho 36508, rho 36509⟩
    ⟨rho 36514, rho 36515⟩ ⟨seg48In1AccX83 rho, seg48In1AccY83 rho⟩ ⟨rho 36521, rho 36522⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3765 rho ∧ Seg48.relationRow3766 rho ∧ Seg48.relationRow3767 rho ∧ Seg48.relationRow3768 rho ∧ Seg48.relationRow3769 rho ∧ Seg48.relationRow3770 rho ∧ Seg48.relationRow3771 rho ∧ Seg48.relationRow3772 rho ∧ Seg48.relationRow3773 rho ∧ Seg48.relationRow3774 rho ∧ Seg48.relationRow3775 rho ∧ Seg48.relationRow3776 rho ∧ Seg48.relationRow3777 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777⟩

theorem seg48In1_rung83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35405 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX83 rho, seg48In1AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36521, rho 36522⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX83 rho, seg48In1AccY83 rho⟩ ⟨rho 36521, rho 36522⟩
        ⟨seg48In1AccX84 rho, seg48In1AccY84 rho⟩ ⟨rho 36534, rho 36535⟩ := by
  obtain ⟨r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777⟩ := seg48In1_rows83 rho h
  unfold Seg48.relationRow3765 at r3765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3765

  unfold Seg48.relationRow3766 at r3766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3766

  unfold Seg48.relationRow3767 at r3767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3767

  unfold Seg48.relationRow3768 at r3768

  unfold Seg48.relationRow3769 at r3769

  unfold Seg48.relationRow3770 at r3770

  unfold Seg48.relationRow3771 at r3771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3771

  unfold Seg48.relationRow3772 at r3772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772

  unfold Seg48.relationRow3773 at r3773

  unfold Seg48.relationRow3774 at r3774

  unfold Seg48.relationRow3775 at r3775

  unfold Seg48.relationRow3776 at r3776

  unfold Seg48.relationRow3777 at r3777

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX84 rho = seg48In1AccX83 rho + rho 36529 := by
    unfold seg48In1AccX84 seg48In1AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 83]

    ring

  have hnexty : seg48In1AccY84 rho = seg48In1AccY83 rho + rho 36530 := by
    unfold seg48In1AccY84 seg48In1AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 83]

    ring

  have ha0 : (rho 36521 + rho 36522) * (seg48In1AccX83 rho + seg48In1AccY83 rho) = rho 36523 := by
    unfold seg48In1AccX83 seg48In1AccY83
    linear_combination r3765
  have ha1 : rho 36522 * seg48In1AccX83 rho = rho 36524 := by
    unfold seg48In1AccX83
    linear_combination r3766
  have ha2 : rho 36521 * seg48In1AccY83 rho = rho 36525 := by
    unfold seg48In1AccY83
    linear_combination r3767
  have ha3 : 3021 * rho 36524 * rho 36525 = rho 36526 := by
    linear_combination r3768
  have ha4 : rho 36527 * (1 + rho 36526) = rho 36524 + rho 36525 := by
    linear_combination r3769
  have ha5 : rho 36528 * (1 - rho 36526) = rho 36523 - rho 36524 - rho 36525 := by
    linear_combination r3770
  have haddx :
      rho 36527 * (1 + 3021 * (rho 36522 * seg48In1AccX83 rho) * (rho 36521 * seg48In1AccY83 rho)) =
        rho 36522 * seg48In1AccX83 rho + rho 36521 * seg48In1AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36528 * (1 - 3021 * (rho 36522 * seg48In1AccX83 rho) * (rho 36521 * seg48In1AccY83 rho)) =
        (-1) * (rho 36522 * seg48In1AccX83 rho) - rho 36521 * seg48In1AccY83 rho +
          (seg48In1AccY83 rho - seg48In1AccX83 rho * (-1)) * (rho 36521 + rho 36522) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36528 * (1 - rho 36526) = rho 36523 - rho 36524 - rho 36525 := ha5
      _ = (-1) * rho 36524 - rho 36525 + (seg48In1AccY83 rho - seg48In1AccX83 rho * (-1)) *
          (rho 36521 + rho 36522) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX84 rho = seg48In1AccX83 rho - Bool.toZMod bit * (seg48In1AccX83 rho - rho 36527) := by
    have hd : rho 36529 = Bool.toZMod bit * (rho 36527 - seg48In1AccX83 rho) := by
      rw [← hbit]
      unfold seg48In1AccX83
      linear_combination -r3771
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY84 rho = seg48In1AccY83 rho - Bool.toZMod bit * (seg48In1AccY83 rho - rho 36528) := by
    have hd : rho 36530 = Bool.toZMod bit * (rho 36528 - seg48In1AccY83 rho) := by
      rw [← hbit]
      unfold seg48In1AccY83
      linear_combination -r3772
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36521 * rho 36522 = rho 36531 := by linear_combination r3773
  have hd1 : rho 36521 * rho 36521 = rho 36532 := by linear_combination r3774
  have hd2 : rho 36522 * rho 36522 = rho 36533 := by linear_combination r3775
  have hd3 : rho 36534 * (rho 36522 * rho 36522 + rho 36521 * rho 36521 * (-1)) =
      2 * (rho 36521 * rho 36522) := by
    rw [hd0, hd1, hd2]
    linear_combination r3776
  have hd4 : rho 36535 * (2 - (rho 36522 * rho 36522 + rho 36521 * rho 36521 * (-1))) =
      rho 36522 * rho 36522 - rho 36521 * rho 36521 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3777
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX83 rho, seg48In1AccY83 rho⟩ ⟨rho 36521, rho 36522⟩
    ⟨rho 36527, rho 36528⟩ ⟨seg48In1AccX84 rho, seg48In1AccY84 rho⟩ ⟨rho 36534, rho 36535⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3778 rho ∧ Seg48.relationRow3779 rho ∧ Seg48.relationRow3780 rho ∧ Seg48.relationRow3781 rho ∧ Seg48.relationRow3782 rho ∧ Seg48.relationRow3783 rho ∧ Seg48.relationRow3784 rho ∧ Seg48.relationRow3785 rho ∧ Seg48.relationRow3786 rho ∧ Seg48.relationRow3787 rho ∧ Seg48.relationRow3788 rho ∧ Seg48.relationRow3789 rho ∧ Seg48.relationRow3790 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790⟩

theorem seg48In1_rung84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35406 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX84 rho, seg48In1AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36534, rho 36535⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX84 rho, seg48In1AccY84 rho⟩ ⟨rho 36534, rho 36535⟩
        ⟨seg48In1AccX85 rho, seg48In1AccY85 rho⟩ ⟨rho 36547, rho 36548⟩ := by
  obtain ⟨r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790⟩ := seg48In1_rows84 rho h
  unfold Seg48.relationRow3778 at r3778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3778

  unfold Seg48.relationRow3779 at r3779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3779

  unfold Seg48.relationRow3780 at r3780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3780

  unfold Seg48.relationRow3781 at r3781

  unfold Seg48.relationRow3782 at r3782

  unfold Seg48.relationRow3783 at r3783

  unfold Seg48.relationRow3784 at r3784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3784

  unfold Seg48.relationRow3785 at r3785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785

  unfold Seg48.relationRow3786 at r3786

  unfold Seg48.relationRow3787 at r3787

  unfold Seg48.relationRow3788 at r3788

  unfold Seg48.relationRow3789 at r3789

  unfold Seg48.relationRow3790 at r3790

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX85 rho = seg48In1AccX84 rho + rho 36542 := by
    unfold seg48In1AccX85 seg48In1AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 84]

    ring

  have hnexty : seg48In1AccY85 rho = seg48In1AccY84 rho + rho 36543 := by
    unfold seg48In1AccY85 seg48In1AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 84]

    ring

  have ha0 : (rho 36534 + rho 36535) * (seg48In1AccX84 rho + seg48In1AccY84 rho) = rho 36536 := by
    unfold seg48In1AccX84 seg48In1AccY84
    linear_combination r3778
  have ha1 : rho 36535 * seg48In1AccX84 rho = rho 36537 := by
    unfold seg48In1AccX84
    linear_combination r3779
  have ha2 : rho 36534 * seg48In1AccY84 rho = rho 36538 := by
    unfold seg48In1AccY84
    linear_combination r3780
  have ha3 : 3021 * rho 36537 * rho 36538 = rho 36539 := by
    linear_combination r3781
  have ha4 : rho 36540 * (1 + rho 36539) = rho 36537 + rho 36538 := by
    linear_combination r3782
  have ha5 : rho 36541 * (1 - rho 36539) = rho 36536 - rho 36537 - rho 36538 := by
    linear_combination r3783
  have haddx :
      rho 36540 * (1 + 3021 * (rho 36535 * seg48In1AccX84 rho) * (rho 36534 * seg48In1AccY84 rho)) =
        rho 36535 * seg48In1AccX84 rho + rho 36534 * seg48In1AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36541 * (1 - 3021 * (rho 36535 * seg48In1AccX84 rho) * (rho 36534 * seg48In1AccY84 rho)) =
        (-1) * (rho 36535 * seg48In1AccX84 rho) - rho 36534 * seg48In1AccY84 rho +
          (seg48In1AccY84 rho - seg48In1AccX84 rho * (-1)) * (rho 36534 + rho 36535) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36541 * (1 - rho 36539) = rho 36536 - rho 36537 - rho 36538 := ha5
      _ = (-1) * rho 36537 - rho 36538 + (seg48In1AccY84 rho - seg48In1AccX84 rho * (-1)) *
          (rho 36534 + rho 36535) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX85 rho = seg48In1AccX84 rho - Bool.toZMod bit * (seg48In1AccX84 rho - rho 36540) := by
    have hd : rho 36542 = Bool.toZMod bit * (rho 36540 - seg48In1AccX84 rho) := by
      rw [← hbit]
      unfold seg48In1AccX84
      linear_combination -r3784
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY85 rho = seg48In1AccY84 rho - Bool.toZMod bit * (seg48In1AccY84 rho - rho 36541) := by
    have hd : rho 36543 = Bool.toZMod bit * (rho 36541 - seg48In1AccY84 rho) := by
      rw [← hbit]
      unfold seg48In1AccY84
      linear_combination -r3785
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36534 * rho 36535 = rho 36544 := by linear_combination r3786
  have hd1 : rho 36534 * rho 36534 = rho 36545 := by linear_combination r3787
  have hd2 : rho 36535 * rho 36535 = rho 36546 := by linear_combination r3788
  have hd3 : rho 36547 * (rho 36535 * rho 36535 + rho 36534 * rho 36534 * (-1)) =
      2 * (rho 36534 * rho 36535) := by
    rw [hd0, hd1, hd2]
    linear_combination r3789
  have hd4 : rho 36548 * (2 - (rho 36535 * rho 36535 + rho 36534 * rho 36534 * (-1))) =
      rho 36535 * rho 36535 - rho 36534 * rho 36534 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3790
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX84 rho, seg48In1AccY84 rho⟩ ⟨rho 36534, rho 36535⟩
    ⟨rho 36540, rho 36541⟩ ⟨seg48In1AccX85 rho, seg48In1AccY85 rho⟩ ⟨rho 36547, rho 36548⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3791 rho ∧ Seg48.relationRow3792 rho ∧ Seg48.relationRow3793 rho ∧ Seg48.relationRow3794 rho ∧ Seg48.relationRow3795 rho ∧ Seg48.relationRow3796 rho ∧ Seg48.relationRow3797 rho ∧ Seg48.relationRow3798 rho ∧ Seg48.relationRow3799 rho ∧ Seg48.relationRow3800 rho ∧ Seg48.relationRow3801 rho ∧ Seg48.relationRow3802 rho ∧ Seg48.relationRow3803 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803⟩

theorem seg48In1_rung85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35407 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX85 rho, seg48In1AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36547, rho 36548⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX85 rho, seg48In1AccY85 rho⟩ ⟨rho 36547, rho 36548⟩
        ⟨seg48In1AccX86 rho, seg48In1AccY86 rho⟩ ⟨rho 36560, rho 36561⟩ := by
  obtain ⟨r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803⟩ := seg48In1_rows85 rho h
  unfold Seg48.relationRow3791 at r3791

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3791

  unfold Seg48.relationRow3792 at r3792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3792

  unfold Seg48.relationRow3793 at r3793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3793

  unfold Seg48.relationRow3794 at r3794

  unfold Seg48.relationRow3795 at r3795

  unfold Seg48.relationRow3796 at r3796

  unfold Seg48.relationRow3797 at r3797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3797

  unfold Seg48.relationRow3798 at r3798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798

  unfold Seg48.relationRow3799 at r3799

  unfold Seg48.relationRow3800 at r3800

  unfold Seg48.relationRow3801 at r3801

  unfold Seg48.relationRow3802 at r3802

  unfold Seg48.relationRow3803 at r3803

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX86 rho = seg48In1AccX85 rho + rho 36555 := by
    unfold seg48In1AccX86 seg48In1AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 85]

    ring

  have hnexty : seg48In1AccY86 rho = seg48In1AccY85 rho + rho 36556 := by
    unfold seg48In1AccY86 seg48In1AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 85]

    ring

  have ha0 : (rho 36547 + rho 36548) * (seg48In1AccX85 rho + seg48In1AccY85 rho) = rho 36549 := by
    unfold seg48In1AccX85 seg48In1AccY85
    linear_combination r3791
  have ha1 : rho 36548 * seg48In1AccX85 rho = rho 36550 := by
    unfold seg48In1AccX85
    linear_combination r3792
  have ha2 : rho 36547 * seg48In1AccY85 rho = rho 36551 := by
    unfold seg48In1AccY85
    linear_combination r3793
  have ha3 : 3021 * rho 36550 * rho 36551 = rho 36552 := by
    linear_combination r3794
  have ha4 : rho 36553 * (1 + rho 36552) = rho 36550 + rho 36551 := by
    linear_combination r3795
  have ha5 : rho 36554 * (1 - rho 36552) = rho 36549 - rho 36550 - rho 36551 := by
    linear_combination r3796
  have haddx :
      rho 36553 * (1 + 3021 * (rho 36548 * seg48In1AccX85 rho) * (rho 36547 * seg48In1AccY85 rho)) =
        rho 36548 * seg48In1AccX85 rho + rho 36547 * seg48In1AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36554 * (1 - 3021 * (rho 36548 * seg48In1AccX85 rho) * (rho 36547 * seg48In1AccY85 rho)) =
        (-1) * (rho 36548 * seg48In1AccX85 rho) - rho 36547 * seg48In1AccY85 rho +
          (seg48In1AccY85 rho - seg48In1AccX85 rho * (-1)) * (rho 36547 + rho 36548) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36554 * (1 - rho 36552) = rho 36549 - rho 36550 - rho 36551 := ha5
      _ = (-1) * rho 36550 - rho 36551 + (seg48In1AccY85 rho - seg48In1AccX85 rho * (-1)) *
          (rho 36547 + rho 36548) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX86 rho = seg48In1AccX85 rho - Bool.toZMod bit * (seg48In1AccX85 rho - rho 36553) := by
    have hd : rho 36555 = Bool.toZMod bit * (rho 36553 - seg48In1AccX85 rho) := by
      rw [← hbit]
      unfold seg48In1AccX85
      linear_combination -r3797
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY86 rho = seg48In1AccY85 rho - Bool.toZMod bit * (seg48In1AccY85 rho - rho 36554) := by
    have hd : rho 36556 = Bool.toZMod bit * (rho 36554 - seg48In1AccY85 rho) := by
      rw [← hbit]
      unfold seg48In1AccY85
      linear_combination -r3798
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36547 * rho 36548 = rho 36557 := by linear_combination r3799
  have hd1 : rho 36547 * rho 36547 = rho 36558 := by linear_combination r3800
  have hd2 : rho 36548 * rho 36548 = rho 36559 := by linear_combination r3801
  have hd3 : rho 36560 * (rho 36548 * rho 36548 + rho 36547 * rho 36547 * (-1)) =
      2 * (rho 36547 * rho 36548) := by
    rw [hd0, hd1, hd2]
    linear_combination r3802
  have hd4 : rho 36561 * (2 - (rho 36548 * rho 36548 + rho 36547 * rho 36547 * (-1))) =
      rho 36548 * rho 36548 - rho 36547 * rho 36547 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3803
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX85 rho, seg48In1AccY85 rho⟩ ⟨rho 36547, rho 36548⟩
    ⟨rho 36553, rho 36554⟩ ⟨seg48In1AccX86 rho, seg48In1AccY86 rho⟩ ⟨rho 36560, rho 36561⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3804 rho ∧ Seg48.relationRow3805 rho ∧ Seg48.relationRow3806 rho ∧ Seg48.relationRow3807 rho ∧ Seg48.relationRow3808 rho ∧ Seg48.relationRow3809 rho ∧ Seg48.relationRow3810 rho ∧ Seg48.relationRow3811 rho ∧ Seg48.relationRow3812 rho ∧ Seg48.relationRow3813 rho ∧ Seg48.relationRow3814 rho ∧ Seg48.relationRow3815 rho ∧ Seg48.relationRow3816 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816⟩

theorem seg48In1_rung86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35408 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX86 rho, seg48In1AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36560, rho 36561⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX86 rho, seg48In1AccY86 rho⟩ ⟨rho 36560, rho 36561⟩
        ⟨seg48In1AccX87 rho, seg48In1AccY87 rho⟩ ⟨rho 36573, rho 36574⟩ := by
  obtain ⟨r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816⟩ := seg48In1_rows86 rho h
  unfold Seg48.relationRow3804 at r3804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3804

  unfold Seg48.relationRow3805 at r3805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3805

  unfold Seg48.relationRow3806 at r3806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3806

  unfold Seg48.relationRow3807 at r3807

  unfold Seg48.relationRow3808 at r3808

  unfold Seg48.relationRow3809 at r3809

  unfold Seg48.relationRow3810 at r3810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3810

  unfold Seg48.relationRow3811 at r3811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811

  unfold Seg48.relationRow3812 at r3812

  unfold Seg48.relationRow3813 at r3813

  unfold Seg48.relationRow3814 at r3814

  unfold Seg48.relationRow3815 at r3815

  unfold Seg48.relationRow3816 at r3816

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX87 rho = seg48In1AccX86 rho + rho 36568 := by
    unfold seg48In1AccX87 seg48In1AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 86]

    ring

  have hnexty : seg48In1AccY87 rho = seg48In1AccY86 rho + rho 36569 := by
    unfold seg48In1AccY87 seg48In1AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 86]

    ring

  have ha0 : (rho 36560 + rho 36561) * (seg48In1AccX86 rho + seg48In1AccY86 rho) = rho 36562 := by
    unfold seg48In1AccX86 seg48In1AccY86
    linear_combination r3804
  have ha1 : rho 36561 * seg48In1AccX86 rho = rho 36563 := by
    unfold seg48In1AccX86
    linear_combination r3805
  have ha2 : rho 36560 * seg48In1AccY86 rho = rho 36564 := by
    unfold seg48In1AccY86
    linear_combination r3806
  have ha3 : 3021 * rho 36563 * rho 36564 = rho 36565 := by
    linear_combination r3807
  have ha4 : rho 36566 * (1 + rho 36565) = rho 36563 + rho 36564 := by
    linear_combination r3808
  have ha5 : rho 36567 * (1 - rho 36565) = rho 36562 - rho 36563 - rho 36564 := by
    linear_combination r3809
  have haddx :
      rho 36566 * (1 + 3021 * (rho 36561 * seg48In1AccX86 rho) * (rho 36560 * seg48In1AccY86 rho)) =
        rho 36561 * seg48In1AccX86 rho + rho 36560 * seg48In1AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36567 * (1 - 3021 * (rho 36561 * seg48In1AccX86 rho) * (rho 36560 * seg48In1AccY86 rho)) =
        (-1) * (rho 36561 * seg48In1AccX86 rho) - rho 36560 * seg48In1AccY86 rho +
          (seg48In1AccY86 rho - seg48In1AccX86 rho * (-1)) * (rho 36560 + rho 36561) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36567 * (1 - rho 36565) = rho 36562 - rho 36563 - rho 36564 := ha5
      _ = (-1) * rho 36563 - rho 36564 + (seg48In1AccY86 rho - seg48In1AccX86 rho * (-1)) *
          (rho 36560 + rho 36561) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX87 rho = seg48In1AccX86 rho - Bool.toZMod bit * (seg48In1AccX86 rho - rho 36566) := by
    have hd : rho 36568 = Bool.toZMod bit * (rho 36566 - seg48In1AccX86 rho) := by
      rw [← hbit]
      unfold seg48In1AccX86
      linear_combination -r3810
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY87 rho = seg48In1AccY86 rho - Bool.toZMod bit * (seg48In1AccY86 rho - rho 36567) := by
    have hd : rho 36569 = Bool.toZMod bit * (rho 36567 - seg48In1AccY86 rho) := by
      rw [← hbit]
      unfold seg48In1AccY86
      linear_combination -r3811
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36560 * rho 36561 = rho 36570 := by linear_combination r3812
  have hd1 : rho 36560 * rho 36560 = rho 36571 := by linear_combination r3813
  have hd2 : rho 36561 * rho 36561 = rho 36572 := by linear_combination r3814
  have hd3 : rho 36573 * (rho 36561 * rho 36561 + rho 36560 * rho 36560 * (-1)) =
      2 * (rho 36560 * rho 36561) := by
    rw [hd0, hd1, hd2]
    linear_combination r3815
  have hd4 : rho 36574 * (2 - (rho 36561 * rho 36561 + rho 36560 * rho 36560 * (-1))) =
      rho 36561 * rho 36561 - rho 36560 * rho 36560 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3816
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX86 rho, seg48In1AccY86 rho⟩ ⟨rho 36560, rho 36561⟩
    ⟨rho 36566, rho 36567⟩ ⟨seg48In1AccX87 rho, seg48In1AccY87 rho⟩ ⟨rho 36573, rho 36574⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3817 rho ∧ Seg48.relationRow3818 rho ∧ Seg48.relationRow3819 rho ∧ Seg48.relationRow3820 rho ∧ Seg48.relationRow3821 rho ∧ Seg48.relationRow3822 rho ∧ Seg48.relationRow3823 rho ∧ Seg48.relationRow3824 rho ∧ Seg48.relationRow3825 rho ∧ Seg48.relationRow3826 rho ∧ Seg48.relationRow3827 rho ∧ Seg48.relationRow3828 rho ∧ Seg48.relationRow3829 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829⟩

theorem seg48In1_rung87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35409 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX87 rho, seg48In1AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36573, rho 36574⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX87 rho, seg48In1AccY87 rho⟩ ⟨rho 36573, rho 36574⟩
        ⟨seg48In1AccX88 rho, seg48In1AccY88 rho⟩ ⟨rho 36586, rho 36587⟩ := by
  obtain ⟨r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829⟩ := seg48In1_rows87 rho h
  unfold Seg48.relationRow3817 at r3817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3817

  unfold Seg48.relationRow3818 at r3818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3818

  unfold Seg48.relationRow3819 at r3819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3819

  unfold Seg48.relationRow3820 at r3820

  unfold Seg48.relationRow3821 at r3821

  unfold Seg48.relationRow3822 at r3822

  unfold Seg48.relationRow3823 at r3823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3823

  unfold Seg48.relationRow3824 at r3824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824

  unfold Seg48.relationRow3825 at r3825

  unfold Seg48.relationRow3826 at r3826

  unfold Seg48.relationRow3827 at r3827

  unfold Seg48.relationRow3828 at r3828

  unfold Seg48.relationRow3829 at r3829

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX88 rho = seg48In1AccX87 rho + rho 36581 := by
    unfold seg48In1AccX88 seg48In1AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 87]

    ring

  have hnexty : seg48In1AccY88 rho = seg48In1AccY87 rho + rho 36582 := by
    unfold seg48In1AccY88 seg48In1AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 87]

    ring

  have ha0 : (rho 36573 + rho 36574) * (seg48In1AccX87 rho + seg48In1AccY87 rho) = rho 36575 := by
    unfold seg48In1AccX87 seg48In1AccY87
    linear_combination r3817
  have ha1 : rho 36574 * seg48In1AccX87 rho = rho 36576 := by
    unfold seg48In1AccX87
    linear_combination r3818
  have ha2 : rho 36573 * seg48In1AccY87 rho = rho 36577 := by
    unfold seg48In1AccY87
    linear_combination r3819
  have ha3 : 3021 * rho 36576 * rho 36577 = rho 36578 := by
    linear_combination r3820
  have ha4 : rho 36579 * (1 + rho 36578) = rho 36576 + rho 36577 := by
    linear_combination r3821
  have ha5 : rho 36580 * (1 - rho 36578) = rho 36575 - rho 36576 - rho 36577 := by
    linear_combination r3822
  have haddx :
      rho 36579 * (1 + 3021 * (rho 36574 * seg48In1AccX87 rho) * (rho 36573 * seg48In1AccY87 rho)) =
        rho 36574 * seg48In1AccX87 rho + rho 36573 * seg48In1AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36580 * (1 - 3021 * (rho 36574 * seg48In1AccX87 rho) * (rho 36573 * seg48In1AccY87 rho)) =
        (-1) * (rho 36574 * seg48In1AccX87 rho) - rho 36573 * seg48In1AccY87 rho +
          (seg48In1AccY87 rho - seg48In1AccX87 rho * (-1)) * (rho 36573 + rho 36574) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36580 * (1 - rho 36578) = rho 36575 - rho 36576 - rho 36577 := ha5
      _ = (-1) * rho 36576 - rho 36577 + (seg48In1AccY87 rho - seg48In1AccX87 rho * (-1)) *
          (rho 36573 + rho 36574) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX88 rho = seg48In1AccX87 rho - Bool.toZMod bit * (seg48In1AccX87 rho - rho 36579) := by
    have hd : rho 36581 = Bool.toZMod bit * (rho 36579 - seg48In1AccX87 rho) := by
      rw [← hbit]
      unfold seg48In1AccX87
      linear_combination -r3823
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY88 rho = seg48In1AccY87 rho - Bool.toZMod bit * (seg48In1AccY87 rho - rho 36580) := by
    have hd : rho 36582 = Bool.toZMod bit * (rho 36580 - seg48In1AccY87 rho) := by
      rw [← hbit]
      unfold seg48In1AccY87
      linear_combination -r3824
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36573 * rho 36574 = rho 36583 := by linear_combination r3825
  have hd1 : rho 36573 * rho 36573 = rho 36584 := by linear_combination r3826
  have hd2 : rho 36574 * rho 36574 = rho 36585 := by linear_combination r3827
  have hd3 : rho 36586 * (rho 36574 * rho 36574 + rho 36573 * rho 36573 * (-1)) =
      2 * (rho 36573 * rho 36574) := by
    rw [hd0, hd1, hd2]
    linear_combination r3828
  have hd4 : rho 36587 * (2 - (rho 36574 * rho 36574 + rho 36573 * rho 36573 * (-1))) =
      rho 36574 * rho 36574 - rho 36573 * rho 36573 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3829
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX87 rho, seg48In1AccY87 rho⟩ ⟨rho 36573, rho 36574⟩
    ⟨rho 36579, rho 36580⟩ ⟨seg48In1AccX88 rho, seg48In1AccY88 rho⟩ ⟨rho 36586, rho 36587⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c7 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg48In1_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg48In1_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg48In1_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg48In1_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg48In1_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg48In1_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg48In1_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg48In1_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg48In1_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg48In1_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
