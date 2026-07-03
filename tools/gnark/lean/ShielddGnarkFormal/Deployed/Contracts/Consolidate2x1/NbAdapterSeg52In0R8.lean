import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2683 rho ∧ Seg52.relationRow2684 rho ∧ Seg52.relationRow2685 rho ∧ Seg52.relationRow2686 rho ∧ Seg52.relationRow2687 rho ∧ Seg52.relationRow2688 rho ∧ Seg52.relationRow2689 rho ∧ Seg52.relationRow2690 rho ∧ Seg52.relationRow2691 rho ∧ Seg52.relationRow2692 rho ∧ Seg52.relationRow2693 rho ∧ Seg52.relationRow2694 rho ∧ Seg52.relationRow2695 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2683, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, r2692, r2693, r2694, r2695, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2683, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, r2692, r2693, r2694, r2695⟩

theorem seg52In0_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45896 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47072, rho 47073⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 47072, rho 47073⟩
        ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 47085, rho 47086⟩ := by
  obtain ⟨r2683, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, r2692, r2693, r2694, r2695⟩ := seg52In0_rows88 rho h
  unfold Seg52.relationRow2683 at r2683

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2683

  unfold Seg52.relationRow2684 at r2684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2684

  unfold Seg52.relationRow2685 at r2685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2685

  unfold Seg52.relationRow2686 at r2686

  unfold Seg52.relationRow2687 at r2687

  unfold Seg52.relationRow2688 at r2688

  unfold Seg52.relationRow2689 at r2689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2689

  unfold Seg52.relationRow2690 at r2690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2690

  unfold Seg52.relationRow2691 at r2691

  unfold Seg52.relationRow2692 at r2692

  unfold Seg52.relationRow2693 at r2693

  unfold Seg52.relationRow2694 at r2694

  unfold Seg52.relationRow2695 at r2695

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX89 rho = seg52In0AccX88 rho + rho 47080 := by
    unfold seg52In0AccX89 seg52In0AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 88]

    ring

  have hnexty : seg52In0AccY89 rho = seg52In0AccY88 rho + rho 47081 := by
    unfold seg52In0AccY89 seg52In0AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 88]

    ring

  have ha0 : (rho 47072 + rho 47073) * (seg52In0AccX88 rho + seg52In0AccY88 rho) = rho 47074 := by
    unfold seg52In0AccX88 seg52In0AccY88
    linear_combination r2683
  have ha1 : rho 47073 * seg52In0AccX88 rho = rho 47075 := by
    unfold seg52In0AccX88
    linear_combination r2684
  have ha2 : rho 47072 * seg52In0AccY88 rho = rho 47076 := by
    unfold seg52In0AccY88
    linear_combination r2685
  have ha3 : 3021 * rho 47075 * rho 47076 = rho 47077 := by
    linear_combination r2686
  have ha4 : rho 47078 * (1 + rho 47077) = rho 47075 + rho 47076 := by
    linear_combination r2687
  have ha5 : rho 47079 * (1 - rho 47077) = rho 47074 - rho 47075 - rho 47076 := by
    linear_combination r2688
  have haddx :
      rho 47078 * (1 + 3021 * (rho 47073 * seg52In0AccX88 rho) * (rho 47072 * seg52In0AccY88 rho)) =
        rho 47073 * seg52In0AccX88 rho + rho 47072 * seg52In0AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47079 * (1 - 3021 * (rho 47073 * seg52In0AccX88 rho) * (rho 47072 * seg52In0AccY88 rho)) =
        (-1) * (rho 47073 * seg52In0AccX88 rho) - rho 47072 * seg52In0AccY88 rho +
          (seg52In0AccY88 rho - seg52In0AccX88 rho * (-1)) * (rho 47072 + rho 47073) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47079 * (1 - rho 47077) = rho 47074 - rho 47075 - rho 47076 := ha5
      _ = (-1) * rho 47075 - rho 47076 + (seg52In0AccY88 rho - seg52In0AccX88 rho * (-1)) *
          (rho 47072 + rho 47073) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX89 rho = seg52In0AccX88 rho - Bool.toZMod bit * (seg52In0AccX88 rho - rho 47078) := by
    have hd : rho 47080 = Bool.toZMod bit * (rho 47078 - seg52In0AccX88 rho) := by
      rw [← hbit]
      unfold seg52In0AccX88
      linear_combination -r2689
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY89 rho = seg52In0AccY88 rho - Bool.toZMod bit * (seg52In0AccY88 rho - rho 47079) := by
    have hd : rho 47081 = Bool.toZMod bit * (rho 47079 - seg52In0AccY88 rho) := by
      rw [← hbit]
      unfold seg52In0AccY88
      linear_combination -r2690
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47072 * rho 47073 = rho 47082 := by linear_combination r2691
  have hd1 : rho 47072 * rho 47072 = rho 47083 := by linear_combination r2692
  have hd2 : rho 47073 * rho 47073 = rho 47084 := by linear_combination r2693
  have hd3 : rho 47085 * (rho 47073 * rho 47073 + rho 47072 * rho 47072 * (-1)) =
      2 * (rho 47072 * rho 47073) := by
    rw [hd0, hd1, hd2]
    linear_combination r2694
  have hd4 : rho 47086 * (2 - (rho 47073 * rho 47073 + rho 47072 * rho 47072 * (-1))) =
      rho 47073 * rho 47073 - rho 47072 * rho 47072 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2695
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 47072, rho 47073⟩
    ⟨rho 47078, rho 47079⟩ ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 47085, rho 47086⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2696 rho ∧ Seg52.relationRow2697 rho ∧ Seg52.relationRow2698 rho ∧ Seg52.relationRow2699 rho ∧ Seg52.relationRow2700 rho ∧ Seg52.relationRow2701 rho ∧ Seg52.relationRow2702 rho ∧ Seg52.relationRow2703 rho ∧ Seg52.relationRow2704 rho ∧ Seg52.relationRow2705 rho ∧ Seg52.relationRow2706 rho ∧ Seg52.relationRow2707 rho ∧ Seg52.relationRow2708 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708⟩

theorem seg52In0_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45897 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47085, rho 47086⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 47085, rho 47086⟩
        ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 47098, rho 47099⟩ := by
  obtain ⟨r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708⟩ := seg52In0_rows89 rho h
  unfold Seg52.relationRow2696 at r2696

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2696

  unfold Seg52.relationRow2697 at r2697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2697

  unfold Seg52.relationRow2698 at r2698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2698

  unfold Seg52.relationRow2699 at r2699

  unfold Seg52.relationRow2700 at r2700

  unfold Seg52.relationRow2701 at r2701

  unfold Seg52.relationRow2702 at r2702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2702

  unfold Seg52.relationRow2703 at r2703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2703

  unfold Seg52.relationRow2704 at r2704

  unfold Seg52.relationRow2705 at r2705

  unfold Seg52.relationRow2706 at r2706

  unfold Seg52.relationRow2707 at r2707

  unfold Seg52.relationRow2708 at r2708

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX90 rho = seg52In0AccX89 rho + rho 47093 := by
    unfold seg52In0AccX90 seg52In0AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 89]

    ring

  have hnexty : seg52In0AccY90 rho = seg52In0AccY89 rho + rho 47094 := by
    unfold seg52In0AccY90 seg52In0AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 89]

    ring

  have ha0 : (rho 47085 + rho 47086) * (seg52In0AccX89 rho + seg52In0AccY89 rho) = rho 47087 := by
    unfold seg52In0AccX89 seg52In0AccY89
    linear_combination r2696
  have ha1 : rho 47086 * seg52In0AccX89 rho = rho 47088 := by
    unfold seg52In0AccX89
    linear_combination r2697
  have ha2 : rho 47085 * seg52In0AccY89 rho = rho 47089 := by
    unfold seg52In0AccY89
    linear_combination r2698
  have ha3 : 3021 * rho 47088 * rho 47089 = rho 47090 := by
    linear_combination r2699
  have ha4 : rho 47091 * (1 + rho 47090) = rho 47088 + rho 47089 := by
    linear_combination r2700
  have ha5 : rho 47092 * (1 - rho 47090) = rho 47087 - rho 47088 - rho 47089 := by
    linear_combination r2701
  have haddx :
      rho 47091 * (1 + 3021 * (rho 47086 * seg52In0AccX89 rho) * (rho 47085 * seg52In0AccY89 rho)) =
        rho 47086 * seg52In0AccX89 rho + rho 47085 * seg52In0AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47092 * (1 - 3021 * (rho 47086 * seg52In0AccX89 rho) * (rho 47085 * seg52In0AccY89 rho)) =
        (-1) * (rho 47086 * seg52In0AccX89 rho) - rho 47085 * seg52In0AccY89 rho +
          (seg52In0AccY89 rho - seg52In0AccX89 rho * (-1)) * (rho 47085 + rho 47086) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47092 * (1 - rho 47090) = rho 47087 - rho 47088 - rho 47089 := ha5
      _ = (-1) * rho 47088 - rho 47089 + (seg52In0AccY89 rho - seg52In0AccX89 rho * (-1)) *
          (rho 47085 + rho 47086) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX90 rho = seg52In0AccX89 rho - Bool.toZMod bit * (seg52In0AccX89 rho - rho 47091) := by
    have hd : rho 47093 = Bool.toZMod bit * (rho 47091 - seg52In0AccX89 rho) := by
      rw [← hbit]
      unfold seg52In0AccX89
      linear_combination -r2702
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY90 rho = seg52In0AccY89 rho - Bool.toZMod bit * (seg52In0AccY89 rho - rho 47092) := by
    have hd : rho 47094 = Bool.toZMod bit * (rho 47092 - seg52In0AccY89 rho) := by
      rw [← hbit]
      unfold seg52In0AccY89
      linear_combination -r2703
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47085 * rho 47086 = rho 47095 := by linear_combination r2704
  have hd1 : rho 47085 * rho 47085 = rho 47096 := by linear_combination r2705
  have hd2 : rho 47086 * rho 47086 = rho 47097 := by linear_combination r2706
  have hd3 : rho 47098 * (rho 47086 * rho 47086 + rho 47085 * rho 47085 * (-1)) =
      2 * (rho 47085 * rho 47086) := by
    rw [hd0, hd1, hd2]
    linear_combination r2707
  have hd4 : rho 47099 * (2 - (rho 47086 * rho 47086 + rho 47085 * rho 47085 * (-1))) =
      rho 47086 * rho 47086 - rho 47085 * rho 47085 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2708
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 47085, rho 47086⟩
    ⟨rho 47091, rho 47092⟩ ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 47098, rho 47099⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2709 rho ∧ Seg52.relationRow2710 rho ∧ Seg52.relationRow2711 rho ∧ Seg52.relationRow2712 rho ∧ Seg52.relationRow2713 rho ∧ Seg52.relationRow2714 rho ∧ Seg52.relationRow2715 rho ∧ Seg52.relationRow2716 rho ∧ Seg52.relationRow2717 rho ∧ Seg52.relationRow2718 rho ∧ Seg52.relationRow2719 rho ∧ Seg52.relationRow2720 rho ∧ Seg52.relationRow2721 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p33, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2709, r2710, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨r2720, r2721, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2709, r2710, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719, r2720, r2721⟩

theorem seg52In0_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45898 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47098, rho 47099⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 47098, rho 47099⟩
        ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 47111, rho 47112⟩ := by
  obtain ⟨r2709, r2710, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719, r2720, r2721⟩ := seg52In0_rows90 rho h
  unfold Seg52.relationRow2709 at r2709

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2709

  unfold Seg52.relationRow2710 at r2710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2710

  unfold Seg52.relationRow2711 at r2711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2711

  unfold Seg52.relationRow2712 at r2712

  unfold Seg52.relationRow2713 at r2713

  unfold Seg52.relationRow2714 at r2714

  unfold Seg52.relationRow2715 at r2715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2715

  unfold Seg52.relationRow2716 at r2716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2716

  unfold Seg52.relationRow2717 at r2717

  unfold Seg52.relationRow2718 at r2718

  unfold Seg52.relationRow2719 at r2719

  unfold Seg52.relationRow2720 at r2720

  unfold Seg52.relationRow2721 at r2721

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX91 rho = seg52In0AccX90 rho + rho 47106 := by
    unfold seg52In0AccX91 seg52In0AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 90]

    ring

  have hnexty : seg52In0AccY91 rho = seg52In0AccY90 rho + rho 47107 := by
    unfold seg52In0AccY91 seg52In0AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 90]

    ring

  have ha0 : (rho 47098 + rho 47099) * (seg52In0AccX90 rho + seg52In0AccY90 rho) = rho 47100 := by
    unfold seg52In0AccX90 seg52In0AccY90
    linear_combination r2709
  have ha1 : rho 47099 * seg52In0AccX90 rho = rho 47101 := by
    unfold seg52In0AccX90
    linear_combination r2710
  have ha2 : rho 47098 * seg52In0AccY90 rho = rho 47102 := by
    unfold seg52In0AccY90
    linear_combination r2711
  have ha3 : 3021 * rho 47101 * rho 47102 = rho 47103 := by
    linear_combination r2712
  have ha4 : rho 47104 * (1 + rho 47103) = rho 47101 + rho 47102 := by
    linear_combination r2713
  have ha5 : rho 47105 * (1 - rho 47103) = rho 47100 - rho 47101 - rho 47102 := by
    linear_combination r2714
  have haddx :
      rho 47104 * (1 + 3021 * (rho 47099 * seg52In0AccX90 rho) * (rho 47098 * seg52In0AccY90 rho)) =
        rho 47099 * seg52In0AccX90 rho + rho 47098 * seg52In0AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47105 * (1 - 3021 * (rho 47099 * seg52In0AccX90 rho) * (rho 47098 * seg52In0AccY90 rho)) =
        (-1) * (rho 47099 * seg52In0AccX90 rho) - rho 47098 * seg52In0AccY90 rho +
          (seg52In0AccY90 rho - seg52In0AccX90 rho * (-1)) * (rho 47098 + rho 47099) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47105 * (1 - rho 47103) = rho 47100 - rho 47101 - rho 47102 := ha5
      _ = (-1) * rho 47101 - rho 47102 + (seg52In0AccY90 rho - seg52In0AccX90 rho * (-1)) *
          (rho 47098 + rho 47099) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX91 rho = seg52In0AccX90 rho - Bool.toZMod bit * (seg52In0AccX90 rho - rho 47104) := by
    have hd : rho 47106 = Bool.toZMod bit * (rho 47104 - seg52In0AccX90 rho) := by
      rw [← hbit]
      unfold seg52In0AccX90
      linear_combination -r2715
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY91 rho = seg52In0AccY90 rho - Bool.toZMod bit * (seg52In0AccY90 rho - rho 47105) := by
    have hd : rho 47107 = Bool.toZMod bit * (rho 47105 - seg52In0AccY90 rho) := by
      rw [← hbit]
      unfold seg52In0AccY90
      linear_combination -r2716
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47098 * rho 47099 = rho 47108 := by linear_combination r2717
  have hd1 : rho 47098 * rho 47098 = rho 47109 := by linear_combination r2718
  have hd2 : rho 47099 * rho 47099 = rho 47110 := by linear_combination r2719
  have hd3 : rho 47111 * (rho 47099 * rho 47099 + rho 47098 * rho 47098 * (-1)) =
      2 * (rho 47098 * rho 47099) := by
    rw [hd0, hd1, hd2]
    linear_combination r2720
  have hd4 : rho 47112 * (2 - (rho 47099 * rho 47099 + rho 47098 * rho 47098 * (-1))) =
      rho 47099 * rho 47099 - rho 47098 * rho 47098 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2721
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 47098, rho 47099⟩
    ⟨rho 47104, rho 47105⟩ ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 47111, rho 47112⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2722 rho ∧ Seg52.relationRow2723 rho ∧ Seg52.relationRow2724 rho ∧ Seg52.relationRow2725 rho ∧ Seg52.relationRow2726 rho ∧ Seg52.relationRow2727 rho ∧ Seg52.relationRow2728 rho ∧ Seg52.relationRow2729 rho ∧ Seg52.relationRow2730 rho ∧ Seg52.relationRow2731 rho ∧ Seg52.relationRow2732 rho ∧ Seg52.relationRow2733 rho ∧ Seg52.relationRow2734 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734⟩

theorem seg52In0_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45899 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47111, rho 47112⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 47111, rho 47112⟩
        ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 47124, rho 47125⟩ := by
  obtain ⟨r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734⟩ := seg52In0_rows91 rho h
  unfold Seg52.relationRow2722 at r2722

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2722

  unfold Seg52.relationRow2723 at r2723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2723

  unfold Seg52.relationRow2724 at r2724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2724

  unfold Seg52.relationRow2725 at r2725

  unfold Seg52.relationRow2726 at r2726

  unfold Seg52.relationRow2727 at r2727

  unfold Seg52.relationRow2728 at r2728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2728

  unfold Seg52.relationRow2729 at r2729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2729

  unfold Seg52.relationRow2730 at r2730

  unfold Seg52.relationRow2731 at r2731

  unfold Seg52.relationRow2732 at r2732

  unfold Seg52.relationRow2733 at r2733

  unfold Seg52.relationRow2734 at r2734

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX92 rho = seg52In0AccX91 rho + rho 47119 := by
    unfold seg52In0AccX92 seg52In0AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 91]

    ring

  have hnexty : seg52In0AccY92 rho = seg52In0AccY91 rho + rho 47120 := by
    unfold seg52In0AccY92 seg52In0AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 91]

    ring

  have ha0 : (rho 47111 + rho 47112) * (seg52In0AccX91 rho + seg52In0AccY91 rho) = rho 47113 := by
    unfold seg52In0AccX91 seg52In0AccY91
    linear_combination r2722
  have ha1 : rho 47112 * seg52In0AccX91 rho = rho 47114 := by
    unfold seg52In0AccX91
    linear_combination r2723
  have ha2 : rho 47111 * seg52In0AccY91 rho = rho 47115 := by
    unfold seg52In0AccY91
    linear_combination r2724
  have ha3 : 3021 * rho 47114 * rho 47115 = rho 47116 := by
    linear_combination r2725
  have ha4 : rho 47117 * (1 + rho 47116) = rho 47114 + rho 47115 := by
    linear_combination r2726
  have ha5 : rho 47118 * (1 - rho 47116) = rho 47113 - rho 47114 - rho 47115 := by
    linear_combination r2727
  have haddx :
      rho 47117 * (1 + 3021 * (rho 47112 * seg52In0AccX91 rho) * (rho 47111 * seg52In0AccY91 rho)) =
        rho 47112 * seg52In0AccX91 rho + rho 47111 * seg52In0AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47118 * (1 - 3021 * (rho 47112 * seg52In0AccX91 rho) * (rho 47111 * seg52In0AccY91 rho)) =
        (-1) * (rho 47112 * seg52In0AccX91 rho) - rho 47111 * seg52In0AccY91 rho +
          (seg52In0AccY91 rho - seg52In0AccX91 rho * (-1)) * (rho 47111 + rho 47112) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47118 * (1 - rho 47116) = rho 47113 - rho 47114 - rho 47115 := ha5
      _ = (-1) * rho 47114 - rho 47115 + (seg52In0AccY91 rho - seg52In0AccX91 rho * (-1)) *
          (rho 47111 + rho 47112) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX92 rho = seg52In0AccX91 rho - Bool.toZMod bit * (seg52In0AccX91 rho - rho 47117) := by
    have hd : rho 47119 = Bool.toZMod bit * (rho 47117 - seg52In0AccX91 rho) := by
      rw [← hbit]
      unfold seg52In0AccX91
      linear_combination -r2728
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY92 rho = seg52In0AccY91 rho - Bool.toZMod bit * (seg52In0AccY91 rho - rho 47118) := by
    have hd : rho 47120 = Bool.toZMod bit * (rho 47118 - seg52In0AccY91 rho) := by
      rw [← hbit]
      unfold seg52In0AccY91
      linear_combination -r2729
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47111 * rho 47112 = rho 47121 := by linear_combination r2730
  have hd1 : rho 47111 * rho 47111 = rho 47122 := by linear_combination r2731
  have hd2 : rho 47112 * rho 47112 = rho 47123 := by linear_combination r2732
  have hd3 : rho 47124 * (rho 47112 * rho 47112 + rho 47111 * rho 47111 * (-1)) =
      2 * (rho 47111 * rho 47112) := by
    rw [hd0, hd1, hd2]
    linear_combination r2733
  have hd4 : rho 47125 * (2 - (rho 47112 * rho 47112 + rho 47111 * rho 47111 * (-1))) =
      rho 47112 * rho 47112 - rho 47111 * rho 47111 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2734
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 47111, rho 47112⟩
    ⟨rho 47117, rho 47118⟩ ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 47124, rho 47125⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2735 rho ∧ Seg52.relationRow2736 rho ∧ Seg52.relationRow2737 rho ∧ Seg52.relationRow2738 rho ∧ Seg52.relationRow2739 rho ∧ Seg52.relationRow2740 rho ∧ Seg52.relationRow2741 rho ∧ Seg52.relationRow2742 rho ∧ Seg52.relationRow2743 rho ∧ Seg52.relationRow2744 rho ∧ Seg52.relationRow2745 rho ∧ Seg52.relationRow2746 rho ∧ Seg52.relationRow2747 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747⟩

theorem seg52In0_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45900 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47124, rho 47125⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 47124, rho 47125⟩
        ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 47137, rho 47138⟩ := by
  obtain ⟨r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747⟩ := seg52In0_rows92 rho h
  unfold Seg52.relationRow2735 at r2735

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2735

  unfold Seg52.relationRow2736 at r2736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2736

  unfold Seg52.relationRow2737 at r2737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2737

  unfold Seg52.relationRow2738 at r2738

  unfold Seg52.relationRow2739 at r2739

  unfold Seg52.relationRow2740 at r2740

  unfold Seg52.relationRow2741 at r2741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2741

  unfold Seg52.relationRow2742 at r2742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2742

  unfold Seg52.relationRow2743 at r2743

  unfold Seg52.relationRow2744 at r2744

  unfold Seg52.relationRow2745 at r2745

  unfold Seg52.relationRow2746 at r2746

  unfold Seg52.relationRow2747 at r2747

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX93 rho = seg52In0AccX92 rho + rho 47132 := by
    unfold seg52In0AccX93 seg52In0AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 92]

    ring

  have hnexty : seg52In0AccY93 rho = seg52In0AccY92 rho + rho 47133 := by
    unfold seg52In0AccY93 seg52In0AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 92]

    ring

  have ha0 : (rho 47124 + rho 47125) * (seg52In0AccX92 rho + seg52In0AccY92 rho) = rho 47126 := by
    unfold seg52In0AccX92 seg52In0AccY92
    linear_combination r2735
  have ha1 : rho 47125 * seg52In0AccX92 rho = rho 47127 := by
    unfold seg52In0AccX92
    linear_combination r2736
  have ha2 : rho 47124 * seg52In0AccY92 rho = rho 47128 := by
    unfold seg52In0AccY92
    linear_combination r2737
  have ha3 : 3021 * rho 47127 * rho 47128 = rho 47129 := by
    linear_combination r2738
  have ha4 : rho 47130 * (1 + rho 47129) = rho 47127 + rho 47128 := by
    linear_combination r2739
  have ha5 : rho 47131 * (1 - rho 47129) = rho 47126 - rho 47127 - rho 47128 := by
    linear_combination r2740
  have haddx :
      rho 47130 * (1 + 3021 * (rho 47125 * seg52In0AccX92 rho) * (rho 47124 * seg52In0AccY92 rho)) =
        rho 47125 * seg52In0AccX92 rho + rho 47124 * seg52In0AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47131 * (1 - 3021 * (rho 47125 * seg52In0AccX92 rho) * (rho 47124 * seg52In0AccY92 rho)) =
        (-1) * (rho 47125 * seg52In0AccX92 rho) - rho 47124 * seg52In0AccY92 rho +
          (seg52In0AccY92 rho - seg52In0AccX92 rho * (-1)) * (rho 47124 + rho 47125) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47131 * (1 - rho 47129) = rho 47126 - rho 47127 - rho 47128 := ha5
      _ = (-1) * rho 47127 - rho 47128 + (seg52In0AccY92 rho - seg52In0AccX92 rho * (-1)) *
          (rho 47124 + rho 47125) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX93 rho = seg52In0AccX92 rho - Bool.toZMod bit * (seg52In0AccX92 rho - rho 47130) := by
    have hd : rho 47132 = Bool.toZMod bit * (rho 47130 - seg52In0AccX92 rho) := by
      rw [← hbit]
      unfold seg52In0AccX92
      linear_combination -r2741
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY93 rho = seg52In0AccY92 rho - Bool.toZMod bit * (seg52In0AccY92 rho - rho 47131) := by
    have hd : rho 47133 = Bool.toZMod bit * (rho 47131 - seg52In0AccY92 rho) := by
      rw [← hbit]
      unfold seg52In0AccY92
      linear_combination -r2742
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47124 * rho 47125 = rho 47134 := by linear_combination r2743
  have hd1 : rho 47124 * rho 47124 = rho 47135 := by linear_combination r2744
  have hd2 : rho 47125 * rho 47125 = rho 47136 := by linear_combination r2745
  have hd3 : rho 47137 * (rho 47125 * rho 47125 + rho 47124 * rho 47124 * (-1)) =
      2 * (rho 47124 * rho 47125) := by
    rw [hd0, hd1, hd2]
    linear_combination r2746
  have hd4 : rho 47138 * (2 - (rho 47125 * rho 47125 + rho 47124 * rho 47124 * (-1))) =
      rho 47125 * rho 47125 - rho 47124 * rho 47124 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2747
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 47124, rho 47125⟩
    ⟨rho 47130, rho 47131⟩ ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 47137, rho 47138⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2748 rho ∧ Seg52.relationRow2749 rho ∧ Seg52.relationRow2750 rho ∧ Seg52.relationRow2751 rho ∧ Seg52.relationRow2752 rho ∧ Seg52.relationRow2753 rho ∧ Seg52.relationRow2754 rho ∧ Seg52.relationRow2755 rho ∧ Seg52.relationRow2756 rho ∧ Seg52.relationRow2757 rho ∧ Seg52.relationRow2758 rho ∧ Seg52.relationRow2759 rho ∧ Seg52.relationRow2760 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760⟩

theorem seg52In0_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45901 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47137, rho 47138⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 47137, rho 47138⟩
        ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 47150, rho 47151⟩ := by
  obtain ⟨r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760⟩ := seg52In0_rows93 rho h
  unfold Seg52.relationRow2748 at r2748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2748

  unfold Seg52.relationRow2749 at r2749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2749

  unfold Seg52.relationRow2750 at r2750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2750

  unfold Seg52.relationRow2751 at r2751

  unfold Seg52.relationRow2752 at r2752

  unfold Seg52.relationRow2753 at r2753

  unfold Seg52.relationRow2754 at r2754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2754

  unfold Seg52.relationRow2755 at r2755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2755

  unfold Seg52.relationRow2756 at r2756

  unfold Seg52.relationRow2757 at r2757

  unfold Seg52.relationRow2758 at r2758

  unfold Seg52.relationRow2759 at r2759

  unfold Seg52.relationRow2760 at r2760

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX94 rho = seg52In0AccX93 rho + rho 47145 := by
    unfold seg52In0AccX94 seg52In0AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 93]

    ring

  have hnexty : seg52In0AccY94 rho = seg52In0AccY93 rho + rho 47146 := by
    unfold seg52In0AccY94 seg52In0AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 93]

    ring

  have ha0 : (rho 47137 + rho 47138) * (seg52In0AccX93 rho + seg52In0AccY93 rho) = rho 47139 := by
    unfold seg52In0AccX93 seg52In0AccY93
    linear_combination r2748
  have ha1 : rho 47138 * seg52In0AccX93 rho = rho 47140 := by
    unfold seg52In0AccX93
    linear_combination r2749
  have ha2 : rho 47137 * seg52In0AccY93 rho = rho 47141 := by
    unfold seg52In0AccY93
    linear_combination r2750
  have ha3 : 3021 * rho 47140 * rho 47141 = rho 47142 := by
    linear_combination r2751
  have ha4 : rho 47143 * (1 + rho 47142) = rho 47140 + rho 47141 := by
    linear_combination r2752
  have ha5 : rho 47144 * (1 - rho 47142) = rho 47139 - rho 47140 - rho 47141 := by
    linear_combination r2753
  have haddx :
      rho 47143 * (1 + 3021 * (rho 47138 * seg52In0AccX93 rho) * (rho 47137 * seg52In0AccY93 rho)) =
        rho 47138 * seg52In0AccX93 rho + rho 47137 * seg52In0AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47144 * (1 - 3021 * (rho 47138 * seg52In0AccX93 rho) * (rho 47137 * seg52In0AccY93 rho)) =
        (-1) * (rho 47138 * seg52In0AccX93 rho) - rho 47137 * seg52In0AccY93 rho +
          (seg52In0AccY93 rho - seg52In0AccX93 rho * (-1)) * (rho 47137 + rho 47138) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47144 * (1 - rho 47142) = rho 47139 - rho 47140 - rho 47141 := ha5
      _ = (-1) * rho 47140 - rho 47141 + (seg52In0AccY93 rho - seg52In0AccX93 rho * (-1)) *
          (rho 47137 + rho 47138) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX94 rho = seg52In0AccX93 rho - Bool.toZMod bit * (seg52In0AccX93 rho - rho 47143) := by
    have hd : rho 47145 = Bool.toZMod bit * (rho 47143 - seg52In0AccX93 rho) := by
      rw [← hbit]
      unfold seg52In0AccX93
      linear_combination -r2754
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY94 rho = seg52In0AccY93 rho - Bool.toZMod bit * (seg52In0AccY93 rho - rho 47144) := by
    have hd : rho 47146 = Bool.toZMod bit * (rho 47144 - seg52In0AccY93 rho) := by
      rw [← hbit]
      unfold seg52In0AccY93
      linear_combination -r2755
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47137 * rho 47138 = rho 47147 := by linear_combination r2756
  have hd1 : rho 47137 * rho 47137 = rho 47148 := by linear_combination r2757
  have hd2 : rho 47138 * rho 47138 = rho 47149 := by linear_combination r2758
  have hd3 : rho 47150 * (rho 47138 * rho 47138 + rho 47137 * rho 47137 * (-1)) =
      2 * (rho 47137 * rho 47138) := by
    rw [hd0, hd1, hd2]
    linear_combination r2759
  have hd4 : rho 47151 * (2 - (rho 47138 * rho 47138 + rho 47137 * rho 47137 * (-1))) =
      rho 47138 * rho 47138 - rho 47137 * rho 47137 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2760
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 47137, rho 47138⟩
    ⟨rho 47143, rho 47144⟩ ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 47150, rho 47151⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2761 rho ∧ Seg52.relationRow2762 rho ∧ Seg52.relationRow2763 rho ∧ Seg52.relationRow2764 rho ∧ Seg52.relationRow2765 rho ∧ Seg52.relationRow2766 rho ∧ Seg52.relationRow2767 rho ∧ Seg52.relationRow2768 rho ∧ Seg52.relationRow2769 rho ∧ Seg52.relationRow2770 rho ∧ Seg52.relationRow2771 rho ∧ Seg52.relationRow2772 rho ∧ Seg52.relationRow2773 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773⟩

theorem seg52In0_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45902 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47150, rho 47151⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 47150, rho 47151⟩
        ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 47163, rho 47164⟩ := by
  obtain ⟨r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773⟩ := seg52In0_rows94 rho h
  unfold Seg52.relationRow2761 at r2761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2761

  unfold Seg52.relationRow2762 at r2762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2762

  unfold Seg52.relationRow2763 at r2763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2763

  unfold Seg52.relationRow2764 at r2764

  unfold Seg52.relationRow2765 at r2765

  unfold Seg52.relationRow2766 at r2766

  unfold Seg52.relationRow2767 at r2767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2767

  unfold Seg52.relationRow2768 at r2768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2768

  unfold Seg52.relationRow2769 at r2769

  unfold Seg52.relationRow2770 at r2770

  unfold Seg52.relationRow2771 at r2771

  unfold Seg52.relationRow2772 at r2772

  unfold Seg52.relationRow2773 at r2773

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX95 rho = seg52In0AccX94 rho + rho 47158 := by
    unfold seg52In0AccX95 seg52In0AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 94]

    ring

  have hnexty : seg52In0AccY95 rho = seg52In0AccY94 rho + rho 47159 := by
    unfold seg52In0AccY95 seg52In0AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 94]

    ring

  have ha0 : (rho 47150 + rho 47151) * (seg52In0AccX94 rho + seg52In0AccY94 rho) = rho 47152 := by
    unfold seg52In0AccX94 seg52In0AccY94
    linear_combination r2761
  have ha1 : rho 47151 * seg52In0AccX94 rho = rho 47153 := by
    unfold seg52In0AccX94
    linear_combination r2762
  have ha2 : rho 47150 * seg52In0AccY94 rho = rho 47154 := by
    unfold seg52In0AccY94
    linear_combination r2763
  have ha3 : 3021 * rho 47153 * rho 47154 = rho 47155 := by
    linear_combination r2764
  have ha4 : rho 47156 * (1 + rho 47155) = rho 47153 + rho 47154 := by
    linear_combination r2765
  have ha5 : rho 47157 * (1 - rho 47155) = rho 47152 - rho 47153 - rho 47154 := by
    linear_combination r2766
  have haddx :
      rho 47156 * (1 + 3021 * (rho 47151 * seg52In0AccX94 rho) * (rho 47150 * seg52In0AccY94 rho)) =
        rho 47151 * seg52In0AccX94 rho + rho 47150 * seg52In0AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47157 * (1 - 3021 * (rho 47151 * seg52In0AccX94 rho) * (rho 47150 * seg52In0AccY94 rho)) =
        (-1) * (rho 47151 * seg52In0AccX94 rho) - rho 47150 * seg52In0AccY94 rho +
          (seg52In0AccY94 rho - seg52In0AccX94 rho * (-1)) * (rho 47150 + rho 47151) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47157 * (1 - rho 47155) = rho 47152 - rho 47153 - rho 47154 := ha5
      _ = (-1) * rho 47153 - rho 47154 + (seg52In0AccY94 rho - seg52In0AccX94 rho * (-1)) *
          (rho 47150 + rho 47151) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX95 rho = seg52In0AccX94 rho - Bool.toZMod bit * (seg52In0AccX94 rho - rho 47156) := by
    have hd : rho 47158 = Bool.toZMod bit * (rho 47156 - seg52In0AccX94 rho) := by
      rw [← hbit]
      unfold seg52In0AccX94
      linear_combination -r2767
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY95 rho = seg52In0AccY94 rho - Bool.toZMod bit * (seg52In0AccY94 rho - rho 47157) := by
    have hd : rho 47159 = Bool.toZMod bit * (rho 47157 - seg52In0AccY94 rho) := by
      rw [← hbit]
      unfold seg52In0AccY94
      linear_combination -r2768
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47150 * rho 47151 = rho 47160 := by linear_combination r2769
  have hd1 : rho 47150 * rho 47150 = rho 47161 := by linear_combination r2770
  have hd2 : rho 47151 * rho 47151 = rho 47162 := by linear_combination r2771
  have hd3 : rho 47163 * (rho 47151 * rho 47151 + rho 47150 * rho 47150 * (-1)) =
      2 * (rho 47150 * rho 47151) := by
    rw [hd0, hd1, hd2]
    linear_combination r2772
  have hd4 : rho 47164 * (2 - (rho 47151 * rho 47151 + rho 47150 * rho 47150 * (-1))) =
      rho 47151 * rho 47151 - rho 47150 * rho 47150 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2773
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 47150, rho 47151⟩
    ⟨rho 47156, rho 47157⟩ ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 47163, rho 47164⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2774 rho ∧ Seg52.relationRow2775 rho ∧ Seg52.relationRow2776 rho ∧ Seg52.relationRow2777 rho ∧ Seg52.relationRow2778 rho ∧ Seg52.relationRow2779 rho ∧ Seg52.relationRow2780 rho ∧ Seg52.relationRow2781 rho ∧ Seg52.relationRow2782 rho ∧ Seg52.relationRow2783 rho ∧ Seg52.relationRow2784 rho ∧ Seg52.relationRow2785 rho ∧ Seg52.relationRow2786 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786⟩

theorem seg52In0_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45903 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47163, rho 47164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 47163, rho 47164⟩
        ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 47176, rho 47177⟩ := by
  obtain ⟨r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786⟩ := seg52In0_rows95 rho h
  unfold Seg52.relationRow2774 at r2774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2774

  unfold Seg52.relationRow2775 at r2775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2775

  unfold Seg52.relationRow2776 at r2776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2776

  unfold Seg52.relationRow2777 at r2777

  unfold Seg52.relationRow2778 at r2778

  unfold Seg52.relationRow2779 at r2779

  unfold Seg52.relationRow2780 at r2780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2780

  unfold Seg52.relationRow2781 at r2781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2781

  unfold Seg52.relationRow2782 at r2782

  unfold Seg52.relationRow2783 at r2783

  unfold Seg52.relationRow2784 at r2784

  unfold Seg52.relationRow2785 at r2785

  unfold Seg52.relationRow2786 at r2786

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX96 rho = seg52In0AccX95 rho + rho 47171 := by
    unfold seg52In0AccX96 seg52In0AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 95]

    ring

  have hnexty : seg52In0AccY96 rho = seg52In0AccY95 rho + rho 47172 := by
    unfold seg52In0AccY96 seg52In0AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 95]

    ring

  have ha0 : (rho 47163 + rho 47164) * (seg52In0AccX95 rho + seg52In0AccY95 rho) = rho 47165 := by
    unfold seg52In0AccX95 seg52In0AccY95
    linear_combination r2774
  have ha1 : rho 47164 * seg52In0AccX95 rho = rho 47166 := by
    unfold seg52In0AccX95
    linear_combination r2775
  have ha2 : rho 47163 * seg52In0AccY95 rho = rho 47167 := by
    unfold seg52In0AccY95
    linear_combination r2776
  have ha3 : 3021 * rho 47166 * rho 47167 = rho 47168 := by
    linear_combination r2777
  have ha4 : rho 47169 * (1 + rho 47168) = rho 47166 + rho 47167 := by
    linear_combination r2778
  have ha5 : rho 47170 * (1 - rho 47168) = rho 47165 - rho 47166 - rho 47167 := by
    linear_combination r2779
  have haddx :
      rho 47169 * (1 + 3021 * (rho 47164 * seg52In0AccX95 rho) * (rho 47163 * seg52In0AccY95 rho)) =
        rho 47164 * seg52In0AccX95 rho + rho 47163 * seg52In0AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47170 * (1 - 3021 * (rho 47164 * seg52In0AccX95 rho) * (rho 47163 * seg52In0AccY95 rho)) =
        (-1) * (rho 47164 * seg52In0AccX95 rho) - rho 47163 * seg52In0AccY95 rho +
          (seg52In0AccY95 rho - seg52In0AccX95 rho * (-1)) * (rho 47163 + rho 47164) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47170 * (1 - rho 47168) = rho 47165 - rho 47166 - rho 47167 := ha5
      _ = (-1) * rho 47166 - rho 47167 + (seg52In0AccY95 rho - seg52In0AccX95 rho * (-1)) *
          (rho 47163 + rho 47164) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX96 rho = seg52In0AccX95 rho - Bool.toZMod bit * (seg52In0AccX95 rho - rho 47169) := by
    have hd : rho 47171 = Bool.toZMod bit * (rho 47169 - seg52In0AccX95 rho) := by
      rw [← hbit]
      unfold seg52In0AccX95
      linear_combination -r2780
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY96 rho = seg52In0AccY95 rho - Bool.toZMod bit * (seg52In0AccY95 rho - rho 47170) := by
    have hd : rho 47172 = Bool.toZMod bit * (rho 47170 - seg52In0AccY95 rho) := by
      rw [← hbit]
      unfold seg52In0AccY95
      linear_combination -r2781
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47163 * rho 47164 = rho 47173 := by linear_combination r2782
  have hd1 : rho 47163 * rho 47163 = rho 47174 := by linear_combination r2783
  have hd2 : rho 47164 * rho 47164 = rho 47175 := by linear_combination r2784
  have hd3 : rho 47176 * (rho 47164 * rho 47164 + rho 47163 * rho 47163 * (-1)) =
      2 * (rho 47163 * rho 47164) := by
    rw [hd0, hd1, hd2]
    linear_combination r2785
  have hd4 : rho 47177 * (2 - (rho 47164 * rho 47164 + rho 47163 * rho 47163 * (-1))) =
      rho 47164 * rho 47164 - rho 47163 * rho 47163 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2786
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 47163, rho 47164⟩
    ⟨rho 47169, rho 47170⟩ ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 47176, rho 47177⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2787 rho ∧ Seg52.relationRow2788 rho ∧ Seg52.relationRow2789 rho ∧ Seg52.relationRow2790 rho ∧ Seg52.relationRow2791 rho ∧ Seg52.relationRow2792 rho ∧ Seg52.relationRow2793 rho ∧ Seg52.relationRow2794 rho ∧ Seg52.relationRow2795 rho ∧ Seg52.relationRow2796 rho ∧ Seg52.relationRow2797 rho ∧ Seg52.relationRow2798 rho ∧ Seg52.relationRow2799 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩

  exact ⟨r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩

theorem seg52In0_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45904 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47176, rho 47177⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 47176, rho 47177⟩
        ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 47189, rho 47190⟩ := by
  obtain ⟨r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩ := seg52In0_rows96 rho h
  unfold Seg52.relationRow2787 at r2787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2787

  unfold Seg52.relationRow2788 at r2788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2788

  unfold Seg52.relationRow2789 at r2789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2789

  unfold Seg52.relationRow2790 at r2790

  unfold Seg52.relationRow2791 at r2791

  unfold Seg52.relationRow2792 at r2792

  unfold Seg52.relationRow2793 at r2793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2793

  unfold Seg52.relationRow2794 at r2794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2794

  unfold Seg52.relationRow2795 at r2795

  unfold Seg52.relationRow2796 at r2796

  unfold Seg52.relationRow2797 at r2797

  unfold Seg52.relationRow2798 at r2798

  unfold Seg52.relationRow2799 at r2799

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX97 rho = seg52In0AccX96 rho + rho 47184 := by
    unfold seg52In0AccX97 seg52In0AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 96]

    ring

  have hnexty : seg52In0AccY97 rho = seg52In0AccY96 rho + rho 47185 := by
    unfold seg52In0AccY97 seg52In0AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 96]

    ring

  have ha0 : (rho 47176 + rho 47177) * (seg52In0AccX96 rho + seg52In0AccY96 rho) = rho 47178 := by
    unfold seg52In0AccX96 seg52In0AccY96
    linear_combination r2787
  have ha1 : rho 47177 * seg52In0AccX96 rho = rho 47179 := by
    unfold seg52In0AccX96
    linear_combination r2788
  have ha2 : rho 47176 * seg52In0AccY96 rho = rho 47180 := by
    unfold seg52In0AccY96
    linear_combination r2789
  have ha3 : 3021 * rho 47179 * rho 47180 = rho 47181 := by
    linear_combination r2790
  have ha4 : rho 47182 * (1 + rho 47181) = rho 47179 + rho 47180 := by
    linear_combination r2791
  have ha5 : rho 47183 * (1 - rho 47181) = rho 47178 - rho 47179 - rho 47180 := by
    linear_combination r2792
  have haddx :
      rho 47182 * (1 + 3021 * (rho 47177 * seg52In0AccX96 rho) * (rho 47176 * seg52In0AccY96 rho)) =
        rho 47177 * seg52In0AccX96 rho + rho 47176 * seg52In0AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47183 * (1 - 3021 * (rho 47177 * seg52In0AccX96 rho) * (rho 47176 * seg52In0AccY96 rho)) =
        (-1) * (rho 47177 * seg52In0AccX96 rho) - rho 47176 * seg52In0AccY96 rho +
          (seg52In0AccY96 rho - seg52In0AccX96 rho * (-1)) * (rho 47176 + rho 47177) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47183 * (1 - rho 47181) = rho 47178 - rho 47179 - rho 47180 := ha5
      _ = (-1) * rho 47179 - rho 47180 + (seg52In0AccY96 rho - seg52In0AccX96 rho * (-1)) *
          (rho 47176 + rho 47177) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX97 rho = seg52In0AccX96 rho - Bool.toZMod bit * (seg52In0AccX96 rho - rho 47182) := by
    have hd : rho 47184 = Bool.toZMod bit * (rho 47182 - seg52In0AccX96 rho) := by
      rw [← hbit]
      unfold seg52In0AccX96
      linear_combination -r2793
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY97 rho = seg52In0AccY96 rho - Bool.toZMod bit * (seg52In0AccY96 rho - rho 47183) := by
    have hd : rho 47185 = Bool.toZMod bit * (rho 47183 - seg52In0AccY96 rho) := by
      rw [← hbit]
      unfold seg52In0AccY96
      linear_combination -r2794
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47176 * rho 47177 = rho 47186 := by linear_combination r2795
  have hd1 : rho 47176 * rho 47176 = rho 47187 := by linear_combination r2796
  have hd2 : rho 47177 * rho 47177 = rho 47188 := by linear_combination r2797
  have hd3 : rho 47189 * (rho 47177 * rho 47177 + rho 47176 * rho 47176 * (-1)) =
      2 * (rho 47176 * rho 47177) := by
    rw [hd0, hd1, hd2]
    linear_combination r2798
  have hd4 : rho 47190 * (2 - (rho 47177 * rho 47177 + rho 47176 * rho 47176 * (-1))) =
      rho 47177 * rho 47177 - rho 47176 * rho 47176 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2799
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 47176, rho 47177⟩
    ⟨rho 47182, rho 47183⟩ ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 47189, rho 47190⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2800 rho ∧ Seg52.relationRow2801 rho ∧ Seg52.relationRow2802 rho ∧ Seg52.relationRow2803 rho ∧ Seg52.relationRow2804 rho ∧ Seg52.relationRow2805 rho ∧ Seg52.relationRow2806 rho ∧ Seg52.relationRow2807 rho ∧ Seg52.relationRow2808 rho ∧ Seg52.relationRow2809 rho ∧ Seg52.relationRow2810 rho ∧ Seg52.relationRow2811 rho ∧ Seg52.relationRow2812 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812⟩

theorem seg52In0_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45905 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47189, rho 47190⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 47189, rho 47190⟩
        ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 47202, rho 47203⟩ := by
  obtain ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812⟩ := seg52In0_rows97 rho h
  unfold Seg52.relationRow2800 at r2800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2800

  unfold Seg52.relationRow2801 at r2801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2801

  unfold Seg52.relationRow2802 at r2802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2802

  unfold Seg52.relationRow2803 at r2803

  unfold Seg52.relationRow2804 at r2804

  unfold Seg52.relationRow2805 at r2805

  unfold Seg52.relationRow2806 at r2806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2806

  unfold Seg52.relationRow2807 at r2807

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2807

  unfold Seg52.relationRow2808 at r2808

  unfold Seg52.relationRow2809 at r2809

  unfold Seg52.relationRow2810 at r2810

  unfold Seg52.relationRow2811 at r2811

  unfold Seg52.relationRow2812 at r2812

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX98 rho = seg52In0AccX97 rho + rho 47197 := by
    unfold seg52In0AccX98 seg52In0AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 97]

    ring

  have hnexty : seg52In0AccY98 rho = seg52In0AccY97 rho + rho 47198 := by
    unfold seg52In0AccY98 seg52In0AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 97]

    ring

  have ha0 : (rho 47189 + rho 47190) * (seg52In0AccX97 rho + seg52In0AccY97 rho) = rho 47191 := by
    unfold seg52In0AccX97 seg52In0AccY97
    linear_combination r2800
  have ha1 : rho 47190 * seg52In0AccX97 rho = rho 47192 := by
    unfold seg52In0AccX97
    linear_combination r2801
  have ha2 : rho 47189 * seg52In0AccY97 rho = rho 47193 := by
    unfold seg52In0AccY97
    linear_combination r2802
  have ha3 : 3021 * rho 47192 * rho 47193 = rho 47194 := by
    linear_combination r2803
  have ha4 : rho 47195 * (1 + rho 47194) = rho 47192 + rho 47193 := by
    linear_combination r2804
  have ha5 : rho 47196 * (1 - rho 47194) = rho 47191 - rho 47192 - rho 47193 := by
    linear_combination r2805
  have haddx :
      rho 47195 * (1 + 3021 * (rho 47190 * seg52In0AccX97 rho) * (rho 47189 * seg52In0AccY97 rho)) =
        rho 47190 * seg52In0AccX97 rho + rho 47189 * seg52In0AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47196 * (1 - 3021 * (rho 47190 * seg52In0AccX97 rho) * (rho 47189 * seg52In0AccY97 rho)) =
        (-1) * (rho 47190 * seg52In0AccX97 rho) - rho 47189 * seg52In0AccY97 rho +
          (seg52In0AccY97 rho - seg52In0AccX97 rho * (-1)) * (rho 47189 + rho 47190) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47196 * (1 - rho 47194) = rho 47191 - rho 47192 - rho 47193 := ha5
      _ = (-1) * rho 47192 - rho 47193 + (seg52In0AccY97 rho - seg52In0AccX97 rho * (-1)) *
          (rho 47189 + rho 47190) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX98 rho = seg52In0AccX97 rho - Bool.toZMod bit * (seg52In0AccX97 rho - rho 47195) := by
    have hd : rho 47197 = Bool.toZMod bit * (rho 47195 - seg52In0AccX97 rho) := by
      rw [← hbit]
      unfold seg52In0AccX97
      linear_combination -r2806
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY98 rho = seg52In0AccY97 rho - Bool.toZMod bit * (seg52In0AccY97 rho - rho 47196) := by
    have hd : rho 47198 = Bool.toZMod bit * (rho 47196 - seg52In0AccY97 rho) := by
      rw [← hbit]
      unfold seg52In0AccY97
      linear_combination -r2807
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47189 * rho 47190 = rho 47199 := by linear_combination r2808
  have hd1 : rho 47189 * rho 47189 = rho 47200 := by linear_combination r2809
  have hd2 : rho 47190 * rho 47190 = rho 47201 := by linear_combination r2810
  have hd3 : rho 47202 * (rho 47190 * rho 47190 + rho 47189 * rho 47189 * (-1)) =
      2 * (rho 47189 * rho 47190) := by
    rw [hd0, hd1, hd2]
    linear_combination r2811
  have hd4 : rho 47203 * (2 - (rho 47190 * rho 47190 + rho 47189 * rho 47189 * (-1))) =
      rho 47190 * rho 47190 - rho 47189 * rho 47189 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2812
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 47189, rho 47190⟩
    ⟨rho 47195, rho 47196⟩ ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 47202, rho 47203⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2813 rho ∧ Seg52.relationRow2814 rho ∧ Seg52.relationRow2815 rho ∧ Seg52.relationRow2816 rho ∧ Seg52.relationRow2817 rho ∧ Seg52.relationRow2818 rho ∧ Seg52.relationRow2819 rho ∧ Seg52.relationRow2820 rho ∧ Seg52.relationRow2821 rho ∧ Seg52.relationRow2822 rho ∧ Seg52.relationRow2823 rho ∧ Seg52.relationRow2824 rho ∧ Seg52.relationRow2825 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825⟩

theorem seg52In0_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45906 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47202, rho 47203⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 47202, rho 47203⟩
        ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 47215, rho 47216⟩ := by
  obtain ⟨r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825⟩ := seg52In0_rows98 rho h
  unfold Seg52.relationRow2813 at r2813

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2813

  unfold Seg52.relationRow2814 at r2814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2814

  unfold Seg52.relationRow2815 at r2815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2815

  unfold Seg52.relationRow2816 at r2816

  unfold Seg52.relationRow2817 at r2817

  unfold Seg52.relationRow2818 at r2818

  unfold Seg52.relationRow2819 at r2819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2819

  unfold Seg52.relationRow2820 at r2820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2820

  unfold Seg52.relationRow2821 at r2821

  unfold Seg52.relationRow2822 at r2822

  unfold Seg52.relationRow2823 at r2823

  unfold Seg52.relationRow2824 at r2824

  unfold Seg52.relationRow2825 at r2825

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX99 rho = seg52In0AccX98 rho + rho 47210 := by
    unfold seg52In0AccX99 seg52In0AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 98]

    ring

  have hnexty : seg52In0AccY99 rho = seg52In0AccY98 rho + rho 47211 := by
    unfold seg52In0AccY99 seg52In0AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 98]

    ring

  have ha0 : (rho 47202 + rho 47203) * (seg52In0AccX98 rho + seg52In0AccY98 rho) = rho 47204 := by
    unfold seg52In0AccX98 seg52In0AccY98
    linear_combination r2813
  have ha1 : rho 47203 * seg52In0AccX98 rho = rho 47205 := by
    unfold seg52In0AccX98
    linear_combination r2814
  have ha2 : rho 47202 * seg52In0AccY98 rho = rho 47206 := by
    unfold seg52In0AccY98
    linear_combination r2815
  have ha3 : 3021 * rho 47205 * rho 47206 = rho 47207 := by
    linear_combination r2816
  have ha4 : rho 47208 * (1 + rho 47207) = rho 47205 + rho 47206 := by
    linear_combination r2817
  have ha5 : rho 47209 * (1 - rho 47207) = rho 47204 - rho 47205 - rho 47206 := by
    linear_combination r2818
  have haddx :
      rho 47208 * (1 + 3021 * (rho 47203 * seg52In0AccX98 rho) * (rho 47202 * seg52In0AccY98 rho)) =
        rho 47203 * seg52In0AccX98 rho + rho 47202 * seg52In0AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47209 * (1 - 3021 * (rho 47203 * seg52In0AccX98 rho) * (rho 47202 * seg52In0AccY98 rho)) =
        (-1) * (rho 47203 * seg52In0AccX98 rho) - rho 47202 * seg52In0AccY98 rho +
          (seg52In0AccY98 rho - seg52In0AccX98 rho * (-1)) * (rho 47202 + rho 47203) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47209 * (1 - rho 47207) = rho 47204 - rho 47205 - rho 47206 := ha5
      _ = (-1) * rho 47205 - rho 47206 + (seg52In0AccY98 rho - seg52In0AccX98 rho * (-1)) *
          (rho 47202 + rho 47203) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX99 rho = seg52In0AccX98 rho - Bool.toZMod bit * (seg52In0AccX98 rho - rho 47208) := by
    have hd : rho 47210 = Bool.toZMod bit * (rho 47208 - seg52In0AccX98 rho) := by
      rw [← hbit]
      unfold seg52In0AccX98
      linear_combination -r2819
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY99 rho = seg52In0AccY98 rho - Bool.toZMod bit * (seg52In0AccY98 rho - rho 47209) := by
    have hd : rho 47211 = Bool.toZMod bit * (rho 47209 - seg52In0AccY98 rho) := by
      rw [← hbit]
      unfold seg52In0AccY98
      linear_combination -r2820
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47202 * rho 47203 = rho 47212 := by linear_combination r2821
  have hd1 : rho 47202 * rho 47202 = rho 47213 := by linear_combination r2822
  have hd2 : rho 47203 * rho 47203 = rho 47214 := by linear_combination r2823
  have hd3 : rho 47215 * (rho 47203 * rho 47203 + rho 47202 * rho 47202 * (-1)) =
      2 * (rho 47202 * rho 47203) := by
    rw [hd0, hd1, hd2]
    linear_combination r2824
  have hd4 : rho 47216 * (2 - (rho 47203 * rho 47203 + rho 47202 * rho 47202 * (-1))) =
      rho 47203 * rho 47203 - rho 47202 * rho 47202 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2825
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 47202, rho 47203⟩
    ⟨rho 47208, rho 47209⟩ ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 47215, rho 47216⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg52In0_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg52In0_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg52In0_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg52In0_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg52In0_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg52In0_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg52In0_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg52In0_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg52In0_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg52In0_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
