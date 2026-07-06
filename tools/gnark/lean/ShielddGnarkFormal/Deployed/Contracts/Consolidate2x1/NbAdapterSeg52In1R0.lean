import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2692 rho ∧ Seg52.relationRow2693 rho ∧ Seg52.relationRow2694 rho ∧ Seg52.relationRow2695 rho ∧ Seg52.relationRow2696 rho ∧ Seg52.relationRow2697 rho ∧ Seg52.relationRow2698 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2692, r2693, r2694, r2695, r2696, r2697, r2698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2692, r2693, r2694, r2695, r2696, r2697, r2698⟩

theorem seg52In1_rung0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46954 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX0 rho, seg52In1AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX0 rho, seg52In1AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
        ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47087, rho 47088⟩ := by
  obtain ⟨r2692, r2693, r2694, r2695, r2696, r2697, r2698⟩ := seg52In1_rows0 rho h
  unfold Seg52.relationRow2692 at r2692

  unfold Seg52.relationRow2693 at r2693

  unfold Seg52.relationRow2694 at r2694

  unfold Seg52.relationRow2695 at r2695

  unfold Seg52.relationRow2696 at r2696

  unfold Seg52.relationRow2697 at r2697

  unfold Seg52.relationRow2698 at r2698

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX1 rho = seg52In1AccX0 rho + rho 47082 := by
    unfold seg52In1AccX1 seg52In1AccX0
    ring

  have hnexty : seg52In1AccY1 rho = seg52In1AccY0 rho + rho 47083 := by
    unfold seg52In1AccY1 seg52In1AccY0
    ring

  have haddx :
      rho 45162 * (1 + 3021 * (rho 45164 * seg52In1AccX0 rho) * (rho 45162 * seg52In1AccY0 rho)) =
        rho 45164 * seg52In1AccX0 rho + rho 45162 * seg52In1AccY0 rho := by
    unfold seg52In1AccX0 seg52In1AccY0
    ring
  have haddy :
      rho 45164 * (1 - 3021 * (rho 45164 * seg52In1AccX0 rho) * (rho 45162 * seg52In1AccY0 rho)) =
        (-1) * (rho 45164 * seg52In1AccX0 rho) - rho 45162 * seg52In1AccY0 rho +
          (seg52In1AccY0 rho - seg52In1AccX0 rho * (-1)) * (rho 45162 + rho 45164) := by
    unfold seg52In1AccX0 seg52In1AccY0
    ring
  have hselx : seg52In1AccX1 rho = seg52In1AccX0 rho - Bool.toZMod bit * (seg52In1AccX0 rho - rho 45162) := by
    have hd : rho 47082 = Bool.toZMod bit * (rho 45162 - seg52In1AccX0 rho) := by
      rw [← hbit]
      unfold seg52In1AccX0
      linear_combination -r2692
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY1 rho = seg52In1AccY0 rho - Bool.toZMod bit * (seg52In1AccY0 rho - rho 45164) := by
    have hd : rho 47083 = Bool.toZMod bit * (rho 45164 - seg52In1AccY0 rho) := by
      rw [← hbit]
      unfold seg52In1AccY0
      linear_combination -r2693
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45162 * rho 45164 = rho 47084 := by linear_combination r2694
  have hd1 : rho 45162 * rho 45162 = rho 47085 := by linear_combination r2695
  have hd2 : rho 45164 * rho 45164 = rho 47086 := by linear_combination r2696
  have hd3 : rho 47087 * (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1)) =
      2 * (rho 45162 * rho 45164) := by
    rw [hd0, hd1, hd2]
    linear_combination r2697
  have hd4 : rho 47088 * (2 - (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1))) =
      rho 45164 * rho 45164 - rho 45162 * rho 45162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2698
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX0 rho, seg52In1AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
    ⟨rho 45162, rho 45164⟩ ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47087, rho 47088⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2699 rho ∧ Seg52.relationRow2700 rho ∧ Seg52.relationRow2701 rho ∧ Seg52.relationRow2702 rho ∧ Seg52.relationRow2703 rho ∧ Seg52.relationRow2704 rho ∧ Seg52.relationRow2705 rho ∧ Seg52.relationRow2706 rho ∧ Seg52.relationRow2707 rho ∧ Seg52.relationRow2708 rho ∧ Seg52.relationRow2709 rho ∧ Seg52.relationRow2710 rho ∧ Seg52.relationRow2711 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711, _, _, _, _, _, _, _, _⟩

  exact ⟨r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711⟩

theorem seg52In1_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46955 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47087, rho 47088⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47087, rho 47088⟩
        ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47100, rho 47101⟩ := by
  obtain ⟨r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711⟩ := seg52In1_rows1 rho h
  unfold Seg52.relationRow2699 at r2699

  unfold Seg52.relationRow2700 at r2700

  unfold Seg52.relationRow2701 at r2701

  unfold Seg52.relationRow2702 at r2702

  unfold Seg52.relationRow2703 at r2703

  unfold Seg52.relationRow2704 at r2704

  unfold Seg52.relationRow2705 at r2705

  unfold Seg52.relationRow2706 at r2706

  unfold Seg52.relationRow2707 at r2707

  unfold Seg52.relationRow2708 at r2708

  unfold Seg52.relationRow2709 at r2709

  unfold Seg52.relationRow2710 at r2710

  unfold Seg52.relationRow2711 at r2711

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX2 rho = seg52In1AccX1 rho + rho 47095 := by
    unfold seg52In1AccX2 seg52In1AccX1
    ring

  have hnexty : seg52In1AccY2 rho = seg52In1AccY1 rho + rho 47096 := by
    unfold seg52In1AccY2 seg52In1AccY1
    ring

  have ha0 : (rho 47087 + rho 47088) * (seg52In1AccX1 rho + seg52In1AccY1 rho) = rho 47089 := by
    unfold seg52In1AccX1 seg52In1AccY1
    linear_combination r2699
  have ha1 : rho 47088 * seg52In1AccX1 rho = rho 47090 := by
    unfold seg52In1AccX1
    linear_combination r2700
  have ha2 : rho 47087 * seg52In1AccY1 rho = rho 47091 := by
    unfold seg52In1AccY1
    linear_combination r2701
  have ha3 : 3021 * rho 47090 * rho 47091 = rho 47092 := by
    linear_combination r2702
  have ha4 : rho 47093 * (1 + rho 47092) = rho 47090 + rho 47091 := by
    linear_combination r2703
  have ha5 : rho 47094 * (1 - rho 47092) = rho 47089 - rho 47090 - rho 47091 := by
    linear_combination r2704
  have haddx :
      rho 47093 * (1 + 3021 * (rho 47088 * seg52In1AccX1 rho) * (rho 47087 * seg52In1AccY1 rho)) =
        rho 47088 * seg52In1AccX1 rho + rho 47087 * seg52In1AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47094 * (1 - 3021 * (rho 47088 * seg52In1AccX1 rho) * (rho 47087 * seg52In1AccY1 rho)) =
        (-1) * (rho 47088 * seg52In1AccX1 rho) - rho 47087 * seg52In1AccY1 rho +
          (seg52In1AccY1 rho - seg52In1AccX1 rho * (-1)) * (rho 47087 + rho 47088) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47094 * (1 - rho 47092) = rho 47089 - rho 47090 - rho 47091 := ha5
      _ = (-1) * rho 47090 - rho 47091 + (seg52In1AccY1 rho - seg52In1AccX1 rho * (-1)) *
          (rho 47087 + rho 47088) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX2 rho = seg52In1AccX1 rho - Bool.toZMod bit * (seg52In1AccX1 rho - rho 47093) := by
    have hd : rho 47095 = Bool.toZMod bit * (rho 47093 - seg52In1AccX1 rho) := by
      rw [← hbit]
      unfold seg52In1AccX1
      linear_combination -r2705
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY2 rho = seg52In1AccY1 rho - Bool.toZMod bit * (seg52In1AccY1 rho - rho 47094) := by
    have hd : rho 47096 = Bool.toZMod bit * (rho 47094 - seg52In1AccY1 rho) := by
      rw [← hbit]
      unfold seg52In1AccY1
      linear_combination -r2706
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47087 * rho 47088 = rho 47097 := by linear_combination r2707
  have hd1 : rho 47087 * rho 47087 = rho 47098 := by linear_combination r2708
  have hd2 : rho 47088 * rho 47088 = rho 47099 := by linear_combination r2709
  have hd3 : rho 47100 * (rho 47088 * rho 47088 + rho 47087 * rho 47087 * (-1)) =
      2 * (rho 47087 * rho 47088) := by
    rw [hd0, hd1, hd2]
    linear_combination r2710
  have hd4 : rho 47101 * (2 - (rho 47088 * rho 47088 + rho 47087 * rho 47087 * (-1))) =
      rho 47088 * rho 47088 - rho 47087 * rho 47087 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2711
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47087, rho 47088⟩
    ⟨rho 47093, rho 47094⟩ ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47100, rho 47101⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2712 rho ∧ Seg52.relationRow2713 rho ∧ Seg52.relationRow2714 rho ∧ Seg52.relationRow2715 rho ∧ Seg52.relationRow2716 rho ∧ Seg52.relationRow2717 rho ∧ Seg52.relationRow2718 rho ∧ Seg52.relationRow2719 rho ∧ Seg52.relationRow2720 rho ∧ Seg52.relationRow2721 rho ∧ Seg52.relationRow2722 rho ∧ Seg52.relationRow2723 rho ∧ Seg52.relationRow2724 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719, r2720, r2721, r2722, r2723, r2724⟩

theorem seg52In1_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46956 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47100, rho 47101⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47100, rho 47101⟩
        ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47113, rho 47114⟩ := by
  obtain ⟨r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719, r2720, r2721, r2722, r2723, r2724⟩ := seg52In1_rows2 rho h
  unfold Seg52.relationRow2712 at r2712

  unfold Seg52.relationRow2713 at r2713

  unfold Seg52.relationRow2714 at r2714

  unfold Seg52.relationRow2715 at r2715

  unfold Seg52.relationRow2716 at r2716

  unfold Seg52.relationRow2717 at r2717

  unfold Seg52.relationRow2718 at r2718

  unfold Seg52.relationRow2719 at r2719

  unfold Seg52.relationRow2720 at r2720

  unfold Seg52.relationRow2721 at r2721

  unfold Seg52.relationRow2722 at r2722

  unfold Seg52.relationRow2723 at r2723

  unfold Seg52.relationRow2724 at r2724

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX3 rho = seg52In1AccX2 rho + rho 47108 := by
    unfold seg52In1AccX3 seg52In1AccX2
    ring

  have hnexty : seg52In1AccY3 rho = seg52In1AccY2 rho + rho 47109 := by
    unfold seg52In1AccY3 seg52In1AccY2
    ring

  have ha0 : (rho 47100 + rho 47101) * (seg52In1AccX2 rho + seg52In1AccY2 rho) = rho 47102 := by
    unfold seg52In1AccX2 seg52In1AccY2
    linear_combination r2712
  have ha1 : rho 47101 * seg52In1AccX2 rho = rho 47103 := by
    unfold seg52In1AccX2
    linear_combination r2713
  have ha2 : rho 47100 * seg52In1AccY2 rho = rho 47104 := by
    unfold seg52In1AccY2
    linear_combination r2714
  have ha3 : 3021 * rho 47103 * rho 47104 = rho 47105 := by
    linear_combination r2715
  have ha4 : rho 47106 * (1 + rho 47105) = rho 47103 + rho 47104 := by
    linear_combination r2716
  have ha5 : rho 47107 * (1 - rho 47105) = rho 47102 - rho 47103 - rho 47104 := by
    linear_combination r2717
  have haddx :
      rho 47106 * (1 + 3021 * (rho 47101 * seg52In1AccX2 rho) * (rho 47100 * seg52In1AccY2 rho)) =
        rho 47101 * seg52In1AccX2 rho + rho 47100 * seg52In1AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47107 * (1 - 3021 * (rho 47101 * seg52In1AccX2 rho) * (rho 47100 * seg52In1AccY2 rho)) =
        (-1) * (rho 47101 * seg52In1AccX2 rho) - rho 47100 * seg52In1AccY2 rho +
          (seg52In1AccY2 rho - seg52In1AccX2 rho * (-1)) * (rho 47100 + rho 47101) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47107 * (1 - rho 47105) = rho 47102 - rho 47103 - rho 47104 := ha5
      _ = (-1) * rho 47103 - rho 47104 + (seg52In1AccY2 rho - seg52In1AccX2 rho * (-1)) *
          (rho 47100 + rho 47101) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX3 rho = seg52In1AccX2 rho - Bool.toZMod bit * (seg52In1AccX2 rho - rho 47106) := by
    have hd : rho 47108 = Bool.toZMod bit * (rho 47106 - seg52In1AccX2 rho) := by
      rw [← hbit]
      unfold seg52In1AccX2
      linear_combination -r2718
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY3 rho = seg52In1AccY2 rho - Bool.toZMod bit * (seg52In1AccY2 rho - rho 47107) := by
    have hd : rho 47109 = Bool.toZMod bit * (rho 47107 - seg52In1AccY2 rho) := by
      rw [← hbit]
      unfold seg52In1AccY2
      linear_combination -r2719
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47100 * rho 47101 = rho 47110 := by linear_combination r2720
  have hd1 : rho 47100 * rho 47100 = rho 47111 := by linear_combination r2721
  have hd2 : rho 47101 * rho 47101 = rho 47112 := by linear_combination r2722
  have hd3 : rho 47113 * (rho 47101 * rho 47101 + rho 47100 * rho 47100 * (-1)) =
      2 * (rho 47100 * rho 47101) := by
    rw [hd0, hd1, hd2]
    linear_combination r2723
  have hd4 : rho 47114 * (2 - (rho 47101 * rho 47101 + rho 47100 * rho 47100 * (-1))) =
      rho 47101 * rho 47101 - rho 47100 * rho 47100 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2724
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47100, rho 47101⟩
    ⟨rho 47106, rho 47107⟩ ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47113, rho 47114⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2725 rho ∧ Seg52.relationRow2726 rho ∧ Seg52.relationRow2727 rho ∧ Seg52.relationRow2728 rho ∧ Seg52.relationRow2729 rho ∧ Seg52.relationRow2730 rho ∧ Seg52.relationRow2731 rho ∧ Seg52.relationRow2732 rho ∧ Seg52.relationRow2733 rho ∧ Seg52.relationRow2734 rho ∧ Seg52.relationRow2735 rho ∧ Seg52.relationRow2736 rho ∧ Seg52.relationRow2737 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737⟩

theorem seg52In1_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46957 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47113, rho 47114⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47113, rho 47114⟩
        ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47126, rho 47127⟩ := by
  obtain ⟨r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737⟩ := seg52In1_rows3 rho h
  unfold Seg52.relationRow2725 at r2725

  unfold Seg52.relationRow2726 at r2726

  unfold Seg52.relationRow2727 at r2727

  unfold Seg52.relationRow2728 at r2728

  unfold Seg52.relationRow2729 at r2729

  unfold Seg52.relationRow2730 at r2730

  unfold Seg52.relationRow2731 at r2731

  unfold Seg52.relationRow2732 at r2732

  unfold Seg52.relationRow2733 at r2733

  unfold Seg52.relationRow2734 at r2734

  unfold Seg52.relationRow2735 at r2735

  unfold Seg52.relationRow2736 at r2736

  unfold Seg52.relationRow2737 at r2737

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX4 rho = seg52In1AccX3 rho + rho 47121 := by
    unfold seg52In1AccX4 seg52In1AccX3
    ring

  have hnexty : seg52In1AccY4 rho = seg52In1AccY3 rho + rho 47122 := by
    unfold seg52In1AccY4 seg52In1AccY3
    ring

  have ha0 : (rho 47113 + rho 47114) * (seg52In1AccX3 rho + seg52In1AccY3 rho) = rho 47115 := by
    unfold seg52In1AccX3 seg52In1AccY3
    linear_combination r2725
  have ha1 : rho 47114 * seg52In1AccX3 rho = rho 47116 := by
    unfold seg52In1AccX3
    linear_combination r2726
  have ha2 : rho 47113 * seg52In1AccY3 rho = rho 47117 := by
    unfold seg52In1AccY3
    linear_combination r2727
  have ha3 : 3021 * rho 47116 * rho 47117 = rho 47118 := by
    linear_combination r2728
  have ha4 : rho 47119 * (1 + rho 47118) = rho 47116 + rho 47117 := by
    linear_combination r2729
  have ha5 : rho 47120 * (1 - rho 47118) = rho 47115 - rho 47116 - rho 47117 := by
    linear_combination r2730
  have haddx :
      rho 47119 * (1 + 3021 * (rho 47114 * seg52In1AccX3 rho) * (rho 47113 * seg52In1AccY3 rho)) =
        rho 47114 * seg52In1AccX3 rho + rho 47113 * seg52In1AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47120 * (1 - 3021 * (rho 47114 * seg52In1AccX3 rho) * (rho 47113 * seg52In1AccY3 rho)) =
        (-1) * (rho 47114 * seg52In1AccX3 rho) - rho 47113 * seg52In1AccY3 rho +
          (seg52In1AccY3 rho - seg52In1AccX3 rho * (-1)) * (rho 47113 + rho 47114) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47120 * (1 - rho 47118) = rho 47115 - rho 47116 - rho 47117 := ha5
      _ = (-1) * rho 47116 - rho 47117 + (seg52In1AccY3 rho - seg52In1AccX3 rho * (-1)) *
          (rho 47113 + rho 47114) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX4 rho = seg52In1AccX3 rho - Bool.toZMod bit * (seg52In1AccX3 rho - rho 47119) := by
    have hd : rho 47121 = Bool.toZMod bit * (rho 47119 - seg52In1AccX3 rho) := by
      rw [← hbit]
      unfold seg52In1AccX3
      linear_combination -r2731
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY4 rho = seg52In1AccY3 rho - Bool.toZMod bit * (seg52In1AccY3 rho - rho 47120) := by
    have hd : rho 47122 = Bool.toZMod bit * (rho 47120 - seg52In1AccY3 rho) := by
      rw [← hbit]
      unfold seg52In1AccY3
      linear_combination -r2732
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47113 * rho 47114 = rho 47123 := by linear_combination r2733
  have hd1 : rho 47113 * rho 47113 = rho 47124 := by linear_combination r2734
  have hd2 : rho 47114 * rho 47114 = rho 47125 := by linear_combination r2735
  have hd3 : rho 47126 * (rho 47114 * rho 47114 + rho 47113 * rho 47113 * (-1)) =
      2 * (rho 47113 * rho 47114) := by
    rw [hd0, hd1, hd2]
    linear_combination r2736
  have hd4 : rho 47127 * (2 - (rho 47114 * rho 47114 + rho 47113 * rho 47113 * (-1))) =
      rho 47114 * rho 47114 - rho 47113 * rho 47113 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2737
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47113, rho 47114⟩
    ⟨rho 47119, rho 47120⟩ ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47126, rho 47127⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2738 rho ∧ Seg52.relationRow2739 rho ∧ Seg52.relationRow2740 rho ∧ Seg52.relationRow2741 rho ∧ Seg52.relationRow2742 rho ∧ Seg52.relationRow2743 rho ∧ Seg52.relationRow2744 rho ∧ Seg52.relationRow2745 rho ∧ Seg52.relationRow2746 rho ∧ Seg52.relationRow2747 rho ∧ Seg52.relationRow2748 rho ∧ Seg52.relationRow2749 rho ∧ Seg52.relationRow2750 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750⟩

theorem seg52In1_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46958 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47126, rho 47127⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47126, rho 47127⟩
        ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47139, rho 47140⟩ := by
  obtain ⟨r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750⟩ := seg52In1_rows4 rho h
  unfold Seg52.relationRow2738 at r2738

  unfold Seg52.relationRow2739 at r2739

  unfold Seg52.relationRow2740 at r2740

  unfold Seg52.relationRow2741 at r2741

  unfold Seg52.relationRow2742 at r2742

  unfold Seg52.relationRow2743 at r2743

  unfold Seg52.relationRow2744 at r2744

  unfold Seg52.relationRow2745 at r2745

  unfold Seg52.relationRow2746 at r2746

  unfold Seg52.relationRow2747 at r2747

  unfold Seg52.relationRow2748 at r2748

  unfold Seg52.relationRow2749 at r2749

  unfold Seg52.relationRow2750 at r2750

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX5 rho = seg52In1AccX4 rho + rho 47134 := by
    unfold seg52In1AccX5 seg52In1AccX4
    ring

  have hnexty : seg52In1AccY5 rho = seg52In1AccY4 rho + rho 47135 := by
    unfold seg52In1AccY5 seg52In1AccY4
    ring

  have ha0 : (rho 47126 + rho 47127) * (seg52In1AccX4 rho + seg52In1AccY4 rho) = rho 47128 := by
    unfold seg52In1AccX4 seg52In1AccY4
    linear_combination r2738
  have ha1 : rho 47127 * seg52In1AccX4 rho = rho 47129 := by
    unfold seg52In1AccX4
    linear_combination r2739
  have ha2 : rho 47126 * seg52In1AccY4 rho = rho 47130 := by
    unfold seg52In1AccY4
    linear_combination r2740
  have ha3 : 3021 * rho 47129 * rho 47130 = rho 47131 := by
    linear_combination r2741
  have ha4 : rho 47132 * (1 + rho 47131) = rho 47129 + rho 47130 := by
    linear_combination r2742
  have ha5 : rho 47133 * (1 - rho 47131) = rho 47128 - rho 47129 - rho 47130 := by
    linear_combination r2743
  have haddx :
      rho 47132 * (1 + 3021 * (rho 47127 * seg52In1AccX4 rho) * (rho 47126 * seg52In1AccY4 rho)) =
        rho 47127 * seg52In1AccX4 rho + rho 47126 * seg52In1AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47133 * (1 - 3021 * (rho 47127 * seg52In1AccX4 rho) * (rho 47126 * seg52In1AccY4 rho)) =
        (-1) * (rho 47127 * seg52In1AccX4 rho) - rho 47126 * seg52In1AccY4 rho +
          (seg52In1AccY4 rho - seg52In1AccX4 rho * (-1)) * (rho 47126 + rho 47127) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47133 * (1 - rho 47131) = rho 47128 - rho 47129 - rho 47130 := ha5
      _ = (-1) * rho 47129 - rho 47130 + (seg52In1AccY4 rho - seg52In1AccX4 rho * (-1)) *
          (rho 47126 + rho 47127) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX5 rho = seg52In1AccX4 rho - Bool.toZMod bit * (seg52In1AccX4 rho - rho 47132) := by
    have hd : rho 47134 = Bool.toZMod bit * (rho 47132 - seg52In1AccX4 rho) := by
      rw [← hbit]
      unfold seg52In1AccX4
      linear_combination -r2744
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY5 rho = seg52In1AccY4 rho - Bool.toZMod bit * (seg52In1AccY4 rho - rho 47133) := by
    have hd : rho 47135 = Bool.toZMod bit * (rho 47133 - seg52In1AccY4 rho) := by
      rw [← hbit]
      unfold seg52In1AccY4
      linear_combination -r2745
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47126 * rho 47127 = rho 47136 := by linear_combination r2746
  have hd1 : rho 47126 * rho 47126 = rho 47137 := by linear_combination r2747
  have hd2 : rho 47127 * rho 47127 = rho 47138 := by linear_combination r2748
  have hd3 : rho 47139 * (rho 47127 * rho 47127 + rho 47126 * rho 47126 * (-1)) =
      2 * (rho 47126 * rho 47127) := by
    rw [hd0, hd1, hd2]
    linear_combination r2749
  have hd4 : rho 47140 * (2 - (rho 47127 * rho 47127 + rho 47126 * rho 47126 * (-1))) =
      rho 47127 * rho 47127 - rho 47126 * rho 47126 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2750
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47126, rho 47127⟩
    ⟨rho 47132, rho 47133⟩ ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47139, rho 47140⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2751 rho ∧ Seg52.relationRow2752 rho ∧ Seg52.relationRow2753 rho ∧ Seg52.relationRow2754 rho ∧ Seg52.relationRow2755 rho ∧ Seg52.relationRow2756 rho ∧ Seg52.relationRow2757 rho ∧ Seg52.relationRow2758 rho ∧ Seg52.relationRow2759 rho ∧ Seg52.relationRow2760 rho ∧ Seg52.relationRow2761 rho ∧ Seg52.relationRow2762 rho ∧ Seg52.relationRow2763 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763⟩

theorem seg52In1_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46959 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47139, rho 47140⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47139, rho 47140⟩
        ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47152, rho 47153⟩ := by
  obtain ⟨r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763⟩ := seg52In1_rows5 rho h
  unfold Seg52.relationRow2751 at r2751

  unfold Seg52.relationRow2752 at r2752

  unfold Seg52.relationRow2753 at r2753

  unfold Seg52.relationRow2754 at r2754

  unfold Seg52.relationRow2755 at r2755

  unfold Seg52.relationRow2756 at r2756

  unfold Seg52.relationRow2757 at r2757

  unfold Seg52.relationRow2758 at r2758

  unfold Seg52.relationRow2759 at r2759

  unfold Seg52.relationRow2760 at r2760

  unfold Seg52.relationRow2761 at r2761

  unfold Seg52.relationRow2762 at r2762

  unfold Seg52.relationRow2763 at r2763

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX6 rho = seg52In1AccX5 rho + rho 47147 := by
    unfold seg52In1AccX6 seg52In1AccX5
    ring

  have hnexty : seg52In1AccY6 rho = seg52In1AccY5 rho + rho 47148 := by
    unfold seg52In1AccY6 seg52In1AccY5
    ring

  have ha0 : (rho 47139 + rho 47140) * (seg52In1AccX5 rho + seg52In1AccY5 rho) = rho 47141 := by
    unfold seg52In1AccX5 seg52In1AccY5
    linear_combination r2751
  have ha1 : rho 47140 * seg52In1AccX5 rho = rho 47142 := by
    unfold seg52In1AccX5
    linear_combination r2752
  have ha2 : rho 47139 * seg52In1AccY5 rho = rho 47143 := by
    unfold seg52In1AccY5
    linear_combination r2753
  have ha3 : 3021 * rho 47142 * rho 47143 = rho 47144 := by
    linear_combination r2754
  have ha4 : rho 47145 * (1 + rho 47144) = rho 47142 + rho 47143 := by
    linear_combination r2755
  have ha5 : rho 47146 * (1 - rho 47144) = rho 47141 - rho 47142 - rho 47143 := by
    linear_combination r2756
  have haddx :
      rho 47145 * (1 + 3021 * (rho 47140 * seg52In1AccX5 rho) * (rho 47139 * seg52In1AccY5 rho)) =
        rho 47140 * seg52In1AccX5 rho + rho 47139 * seg52In1AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47146 * (1 - 3021 * (rho 47140 * seg52In1AccX5 rho) * (rho 47139 * seg52In1AccY5 rho)) =
        (-1) * (rho 47140 * seg52In1AccX5 rho) - rho 47139 * seg52In1AccY5 rho +
          (seg52In1AccY5 rho - seg52In1AccX5 rho * (-1)) * (rho 47139 + rho 47140) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47146 * (1 - rho 47144) = rho 47141 - rho 47142 - rho 47143 := ha5
      _ = (-1) * rho 47142 - rho 47143 + (seg52In1AccY5 rho - seg52In1AccX5 rho * (-1)) *
          (rho 47139 + rho 47140) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX6 rho = seg52In1AccX5 rho - Bool.toZMod bit * (seg52In1AccX5 rho - rho 47145) := by
    have hd : rho 47147 = Bool.toZMod bit * (rho 47145 - seg52In1AccX5 rho) := by
      rw [← hbit]
      unfold seg52In1AccX5
      linear_combination -r2757
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY6 rho = seg52In1AccY5 rho - Bool.toZMod bit * (seg52In1AccY5 rho - rho 47146) := by
    have hd : rho 47148 = Bool.toZMod bit * (rho 47146 - seg52In1AccY5 rho) := by
      rw [← hbit]
      unfold seg52In1AccY5
      linear_combination -r2758
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47139 * rho 47140 = rho 47149 := by linear_combination r2759
  have hd1 : rho 47139 * rho 47139 = rho 47150 := by linear_combination r2760
  have hd2 : rho 47140 * rho 47140 = rho 47151 := by linear_combination r2761
  have hd3 : rho 47152 * (rho 47140 * rho 47140 + rho 47139 * rho 47139 * (-1)) =
      2 * (rho 47139 * rho 47140) := by
    rw [hd0, hd1, hd2]
    linear_combination r2762
  have hd4 : rho 47153 * (2 - (rho 47140 * rho 47140 + rho 47139 * rho 47139 * (-1))) =
      rho 47140 * rho 47140 - rho 47139 * rho 47139 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2763
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47139, rho 47140⟩
    ⟨rho 47145, rho 47146⟩ ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47152, rho 47153⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2764 rho ∧ Seg52.relationRow2765 rho ∧ Seg52.relationRow2766 rho ∧ Seg52.relationRow2767 rho ∧ Seg52.relationRow2768 rho ∧ Seg52.relationRow2769 rho ∧ Seg52.relationRow2770 rho ∧ Seg52.relationRow2771 rho ∧ Seg52.relationRow2772 rho ∧ Seg52.relationRow2773 rho ∧ Seg52.relationRow2774 rho ∧ Seg52.relationRow2775 rho ∧ Seg52.relationRow2776 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776⟩

theorem seg52In1_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46960 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47152, rho 47153⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47152, rho 47153⟩
        ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47165, rho 47166⟩ := by
  obtain ⟨r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776⟩ := seg52In1_rows6 rho h
  unfold Seg52.relationRow2764 at r2764

  unfold Seg52.relationRow2765 at r2765

  unfold Seg52.relationRow2766 at r2766

  unfold Seg52.relationRow2767 at r2767

  unfold Seg52.relationRow2768 at r2768

  unfold Seg52.relationRow2769 at r2769

  unfold Seg52.relationRow2770 at r2770

  unfold Seg52.relationRow2771 at r2771

  unfold Seg52.relationRow2772 at r2772

  unfold Seg52.relationRow2773 at r2773

  unfold Seg52.relationRow2774 at r2774

  unfold Seg52.relationRow2775 at r2775

  unfold Seg52.relationRow2776 at r2776

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX7 rho = seg52In1AccX6 rho + rho 47160 := by
    unfold seg52In1AccX7 seg52In1AccX6
    ring

  have hnexty : seg52In1AccY7 rho = seg52In1AccY6 rho + rho 47161 := by
    unfold seg52In1AccY7 seg52In1AccY6
    ring

  have ha0 : (rho 47152 + rho 47153) * (seg52In1AccX6 rho + seg52In1AccY6 rho) = rho 47154 := by
    unfold seg52In1AccX6 seg52In1AccY6
    linear_combination r2764
  have ha1 : rho 47153 * seg52In1AccX6 rho = rho 47155 := by
    unfold seg52In1AccX6
    linear_combination r2765
  have ha2 : rho 47152 * seg52In1AccY6 rho = rho 47156 := by
    unfold seg52In1AccY6
    linear_combination r2766
  have ha3 : 3021 * rho 47155 * rho 47156 = rho 47157 := by
    linear_combination r2767
  have ha4 : rho 47158 * (1 + rho 47157) = rho 47155 + rho 47156 := by
    linear_combination r2768
  have ha5 : rho 47159 * (1 - rho 47157) = rho 47154 - rho 47155 - rho 47156 := by
    linear_combination r2769
  have haddx :
      rho 47158 * (1 + 3021 * (rho 47153 * seg52In1AccX6 rho) * (rho 47152 * seg52In1AccY6 rho)) =
        rho 47153 * seg52In1AccX6 rho + rho 47152 * seg52In1AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47159 * (1 - 3021 * (rho 47153 * seg52In1AccX6 rho) * (rho 47152 * seg52In1AccY6 rho)) =
        (-1) * (rho 47153 * seg52In1AccX6 rho) - rho 47152 * seg52In1AccY6 rho +
          (seg52In1AccY6 rho - seg52In1AccX6 rho * (-1)) * (rho 47152 + rho 47153) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47159 * (1 - rho 47157) = rho 47154 - rho 47155 - rho 47156 := ha5
      _ = (-1) * rho 47155 - rho 47156 + (seg52In1AccY6 rho - seg52In1AccX6 rho * (-1)) *
          (rho 47152 + rho 47153) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX7 rho = seg52In1AccX6 rho - Bool.toZMod bit * (seg52In1AccX6 rho - rho 47158) := by
    have hd : rho 47160 = Bool.toZMod bit * (rho 47158 - seg52In1AccX6 rho) := by
      rw [← hbit]
      unfold seg52In1AccX6
      linear_combination -r2770
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY7 rho = seg52In1AccY6 rho - Bool.toZMod bit * (seg52In1AccY6 rho - rho 47159) := by
    have hd : rho 47161 = Bool.toZMod bit * (rho 47159 - seg52In1AccY6 rho) := by
      rw [← hbit]
      unfold seg52In1AccY6
      linear_combination -r2771
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47152 * rho 47153 = rho 47162 := by linear_combination r2772
  have hd1 : rho 47152 * rho 47152 = rho 47163 := by linear_combination r2773
  have hd2 : rho 47153 * rho 47153 = rho 47164 := by linear_combination r2774
  have hd3 : rho 47165 * (rho 47153 * rho 47153 + rho 47152 * rho 47152 * (-1)) =
      2 * (rho 47152 * rho 47153) := by
    rw [hd0, hd1, hd2]
    linear_combination r2775
  have hd4 : rho 47166 * (2 - (rho 47153 * rho 47153 + rho 47152 * rho 47152 * (-1))) =
      rho 47153 * rho 47153 - rho 47152 * rho 47152 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2776
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47152, rho 47153⟩
    ⟨rho 47158, rho 47159⟩ ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47165, rho 47166⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2777 rho ∧ Seg52.relationRow2778 rho ∧ Seg52.relationRow2779 rho ∧ Seg52.relationRow2780 rho ∧ Seg52.relationRow2781 rho ∧ Seg52.relationRow2782 rho ∧ Seg52.relationRow2783 rho ∧ Seg52.relationRow2784 rho ∧ Seg52.relationRow2785 rho ∧ Seg52.relationRow2786 rho ∧ Seg52.relationRow2787 rho ∧ Seg52.relationRow2788 rho ∧ Seg52.relationRow2789 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789⟩

theorem seg52In1_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46961 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47165, rho 47166⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47165, rho 47166⟩
        ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47178, rho 47179⟩ := by
  obtain ⟨r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789⟩ := seg52In1_rows7 rho h
  unfold Seg52.relationRow2777 at r2777

  unfold Seg52.relationRow2778 at r2778

  unfold Seg52.relationRow2779 at r2779

  unfold Seg52.relationRow2780 at r2780

  unfold Seg52.relationRow2781 at r2781

  unfold Seg52.relationRow2782 at r2782

  unfold Seg52.relationRow2783 at r2783

  unfold Seg52.relationRow2784 at r2784

  unfold Seg52.relationRow2785 at r2785

  unfold Seg52.relationRow2786 at r2786

  unfold Seg52.relationRow2787 at r2787

  unfold Seg52.relationRow2788 at r2788

  unfold Seg52.relationRow2789 at r2789

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX8 rho = seg52In1AccX7 rho + rho 47173 := by
    unfold seg52In1AccX8 seg52In1AccX7
    ring

  have hnexty : seg52In1AccY8 rho = seg52In1AccY7 rho + rho 47174 := by
    unfold seg52In1AccY8 seg52In1AccY7
    ring

  have ha0 : (rho 47165 + rho 47166) * (seg52In1AccX7 rho + seg52In1AccY7 rho) = rho 47167 := by
    unfold seg52In1AccX7 seg52In1AccY7
    linear_combination r2777
  have ha1 : rho 47166 * seg52In1AccX7 rho = rho 47168 := by
    unfold seg52In1AccX7
    linear_combination r2778
  have ha2 : rho 47165 * seg52In1AccY7 rho = rho 47169 := by
    unfold seg52In1AccY7
    linear_combination r2779
  have ha3 : 3021 * rho 47168 * rho 47169 = rho 47170 := by
    linear_combination r2780
  have ha4 : rho 47171 * (1 + rho 47170) = rho 47168 + rho 47169 := by
    linear_combination r2781
  have ha5 : rho 47172 * (1 - rho 47170) = rho 47167 - rho 47168 - rho 47169 := by
    linear_combination r2782
  have haddx :
      rho 47171 * (1 + 3021 * (rho 47166 * seg52In1AccX7 rho) * (rho 47165 * seg52In1AccY7 rho)) =
        rho 47166 * seg52In1AccX7 rho + rho 47165 * seg52In1AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47172 * (1 - 3021 * (rho 47166 * seg52In1AccX7 rho) * (rho 47165 * seg52In1AccY7 rho)) =
        (-1) * (rho 47166 * seg52In1AccX7 rho) - rho 47165 * seg52In1AccY7 rho +
          (seg52In1AccY7 rho - seg52In1AccX7 rho * (-1)) * (rho 47165 + rho 47166) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47172 * (1 - rho 47170) = rho 47167 - rho 47168 - rho 47169 := ha5
      _ = (-1) * rho 47168 - rho 47169 + (seg52In1AccY7 rho - seg52In1AccX7 rho * (-1)) *
          (rho 47165 + rho 47166) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX8 rho = seg52In1AccX7 rho - Bool.toZMod bit * (seg52In1AccX7 rho - rho 47171) := by
    have hd : rho 47173 = Bool.toZMod bit * (rho 47171 - seg52In1AccX7 rho) := by
      rw [← hbit]
      unfold seg52In1AccX7
      linear_combination -r2783
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY8 rho = seg52In1AccY7 rho - Bool.toZMod bit * (seg52In1AccY7 rho - rho 47172) := by
    have hd : rho 47174 = Bool.toZMod bit * (rho 47172 - seg52In1AccY7 rho) := by
      rw [← hbit]
      unfold seg52In1AccY7
      linear_combination -r2784
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47165 * rho 47166 = rho 47175 := by linear_combination r2785
  have hd1 : rho 47165 * rho 47165 = rho 47176 := by linear_combination r2786
  have hd2 : rho 47166 * rho 47166 = rho 47177 := by linear_combination r2787
  have hd3 : rho 47178 * (rho 47166 * rho 47166 + rho 47165 * rho 47165 * (-1)) =
      2 * (rho 47165 * rho 47166) := by
    rw [hd0, hd1, hd2]
    linear_combination r2788
  have hd4 : rho 47179 * (2 - (rho 47166 * rho 47166 + rho 47165 * rho 47165 * (-1))) =
      rho 47166 * rho 47166 - rho 47165 * rho 47165 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2789
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47165, rho 47166⟩
    ⟨rho 47171, rho 47172⟩ ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47178, rho 47179⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2790 rho ∧ Seg52.relationRow2791 rho ∧ Seg52.relationRow2792 rho ∧ Seg52.relationRow2793 rho ∧ Seg52.relationRow2794 rho ∧ Seg52.relationRow2795 rho ∧ Seg52.relationRow2796 rho ∧ Seg52.relationRow2797 rho ∧ Seg52.relationRow2798 rho ∧ Seg52.relationRow2799 rho ∧ Seg52.relationRow2800 rho ∧ Seg52.relationRow2801 rho ∧ Seg52.relationRow2802 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p34, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨r2800, r2801, r2802, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802⟩

theorem seg52In1_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46962 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47178, rho 47179⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47178, rho 47179⟩
        ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47191, rho 47192⟩ := by
  obtain ⟨r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802⟩ := seg52In1_rows8 rho h
  unfold Seg52.relationRow2790 at r2790

  unfold Seg52.relationRow2791 at r2791

  unfold Seg52.relationRow2792 at r2792

  unfold Seg52.relationRow2793 at r2793

  unfold Seg52.relationRow2794 at r2794

  unfold Seg52.relationRow2795 at r2795

  unfold Seg52.relationRow2796 at r2796

  unfold Seg52.relationRow2797 at r2797

  unfold Seg52.relationRow2798 at r2798

  unfold Seg52.relationRow2799 at r2799

  unfold Seg52.relationRow2800 at r2800

  unfold Seg52.relationRow2801 at r2801

  unfold Seg52.relationRow2802 at r2802

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX9 rho = seg52In1AccX8 rho + rho 47186 := by
    unfold seg52In1AccX9 seg52In1AccX8
    ring

  have hnexty : seg52In1AccY9 rho = seg52In1AccY8 rho + rho 47187 := by
    unfold seg52In1AccY9 seg52In1AccY8
    ring

  have ha0 : (rho 47178 + rho 47179) * (seg52In1AccX8 rho + seg52In1AccY8 rho) = rho 47180 := by
    unfold seg52In1AccX8 seg52In1AccY8
    linear_combination r2790
  have ha1 : rho 47179 * seg52In1AccX8 rho = rho 47181 := by
    unfold seg52In1AccX8
    linear_combination r2791
  have ha2 : rho 47178 * seg52In1AccY8 rho = rho 47182 := by
    unfold seg52In1AccY8
    linear_combination r2792
  have ha3 : 3021 * rho 47181 * rho 47182 = rho 47183 := by
    linear_combination r2793
  have ha4 : rho 47184 * (1 + rho 47183) = rho 47181 + rho 47182 := by
    linear_combination r2794
  have ha5 : rho 47185 * (1 - rho 47183) = rho 47180 - rho 47181 - rho 47182 := by
    linear_combination r2795
  have haddx :
      rho 47184 * (1 + 3021 * (rho 47179 * seg52In1AccX8 rho) * (rho 47178 * seg52In1AccY8 rho)) =
        rho 47179 * seg52In1AccX8 rho + rho 47178 * seg52In1AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47185 * (1 - 3021 * (rho 47179 * seg52In1AccX8 rho) * (rho 47178 * seg52In1AccY8 rho)) =
        (-1) * (rho 47179 * seg52In1AccX8 rho) - rho 47178 * seg52In1AccY8 rho +
          (seg52In1AccY8 rho - seg52In1AccX8 rho * (-1)) * (rho 47178 + rho 47179) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47185 * (1 - rho 47183) = rho 47180 - rho 47181 - rho 47182 := ha5
      _ = (-1) * rho 47181 - rho 47182 + (seg52In1AccY8 rho - seg52In1AccX8 rho * (-1)) *
          (rho 47178 + rho 47179) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX9 rho = seg52In1AccX8 rho - Bool.toZMod bit * (seg52In1AccX8 rho - rho 47184) := by
    have hd : rho 47186 = Bool.toZMod bit * (rho 47184 - seg52In1AccX8 rho) := by
      rw [← hbit]
      unfold seg52In1AccX8
      linear_combination -r2796
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY9 rho = seg52In1AccY8 rho - Bool.toZMod bit * (seg52In1AccY8 rho - rho 47185) := by
    have hd : rho 47187 = Bool.toZMod bit * (rho 47185 - seg52In1AccY8 rho) := by
      rw [← hbit]
      unfold seg52In1AccY8
      linear_combination -r2797
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47178 * rho 47179 = rho 47188 := by linear_combination r2798
  have hd1 : rho 47178 * rho 47178 = rho 47189 := by linear_combination r2799
  have hd2 : rho 47179 * rho 47179 = rho 47190 := by linear_combination r2800
  have hd3 : rho 47191 * (rho 47179 * rho 47179 + rho 47178 * rho 47178 * (-1)) =
      2 * (rho 47178 * rho 47179) := by
    rw [hd0, hd1, hd2]
    linear_combination r2801
  have hd4 : rho 47192 * (2 - (rho 47179 * rho 47179 + rho 47178 * rho 47178 * (-1))) =
      rho 47179 * rho 47179 - rho 47178 * rho 47178 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2802
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47178, rho 47179⟩
    ⟨rho 47184, rho 47185⟩ ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47191, rho 47192⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2803 rho ∧ Seg52.relationRow2804 rho ∧ Seg52.relationRow2805 rho ∧ Seg52.relationRow2806 rho ∧ Seg52.relationRow2807 rho ∧ Seg52.relationRow2808 rho ∧ Seg52.relationRow2809 rho ∧ Seg52.relationRow2810 rho ∧ Seg52.relationRow2811 rho ∧ Seg52.relationRow2812 rho ∧ Seg52.relationRow2813 rho ∧ Seg52.relationRow2814 rho ∧ Seg52.relationRow2815 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815⟩

theorem seg52In1_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46963 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47191, rho 47192⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47191, rho 47192⟩
        ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47204, rho 47205⟩ := by
  obtain ⟨r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815⟩ := seg52In1_rows9 rho h
  unfold Seg52.relationRow2803 at r2803

  unfold Seg52.relationRow2804 at r2804

  unfold Seg52.relationRow2805 at r2805

  unfold Seg52.relationRow2806 at r2806

  unfold Seg52.relationRow2807 at r2807

  unfold Seg52.relationRow2808 at r2808

  unfold Seg52.relationRow2809 at r2809

  unfold Seg52.relationRow2810 at r2810

  unfold Seg52.relationRow2811 at r2811

  unfold Seg52.relationRow2812 at r2812

  unfold Seg52.relationRow2813 at r2813

  unfold Seg52.relationRow2814 at r2814

  unfold Seg52.relationRow2815 at r2815

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX10 rho = seg52In1AccX9 rho + rho 47199 := by
    unfold seg52In1AccX10 seg52In1AccX9
    ring

  have hnexty : seg52In1AccY10 rho = seg52In1AccY9 rho + rho 47200 := by
    unfold seg52In1AccY10 seg52In1AccY9
    ring

  have ha0 : (rho 47191 + rho 47192) * (seg52In1AccX9 rho + seg52In1AccY9 rho) = rho 47193 := by
    unfold seg52In1AccX9 seg52In1AccY9
    linear_combination r2803
  have ha1 : rho 47192 * seg52In1AccX9 rho = rho 47194 := by
    unfold seg52In1AccX9
    linear_combination r2804
  have ha2 : rho 47191 * seg52In1AccY9 rho = rho 47195 := by
    unfold seg52In1AccY9
    linear_combination r2805
  have ha3 : 3021 * rho 47194 * rho 47195 = rho 47196 := by
    linear_combination r2806
  have ha4 : rho 47197 * (1 + rho 47196) = rho 47194 + rho 47195 := by
    linear_combination r2807
  have ha5 : rho 47198 * (1 - rho 47196) = rho 47193 - rho 47194 - rho 47195 := by
    linear_combination r2808
  have haddx :
      rho 47197 * (1 + 3021 * (rho 47192 * seg52In1AccX9 rho) * (rho 47191 * seg52In1AccY9 rho)) =
        rho 47192 * seg52In1AccX9 rho + rho 47191 * seg52In1AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47198 * (1 - 3021 * (rho 47192 * seg52In1AccX9 rho) * (rho 47191 * seg52In1AccY9 rho)) =
        (-1) * (rho 47192 * seg52In1AccX9 rho) - rho 47191 * seg52In1AccY9 rho +
          (seg52In1AccY9 rho - seg52In1AccX9 rho * (-1)) * (rho 47191 + rho 47192) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47198 * (1 - rho 47196) = rho 47193 - rho 47194 - rho 47195 := ha5
      _ = (-1) * rho 47194 - rho 47195 + (seg52In1AccY9 rho - seg52In1AccX9 rho * (-1)) *
          (rho 47191 + rho 47192) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX10 rho = seg52In1AccX9 rho - Bool.toZMod bit * (seg52In1AccX9 rho - rho 47197) := by
    have hd : rho 47199 = Bool.toZMod bit * (rho 47197 - seg52In1AccX9 rho) := by
      rw [← hbit]
      unfold seg52In1AccX9
      linear_combination -r2809
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY10 rho = seg52In1AccY9 rho - Bool.toZMod bit * (seg52In1AccY9 rho - rho 47198) := by
    have hd : rho 47200 = Bool.toZMod bit * (rho 47198 - seg52In1AccY9 rho) := by
      rw [← hbit]
      unfold seg52In1AccY9
      linear_combination -r2810
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47191 * rho 47192 = rho 47201 := by linear_combination r2811
  have hd1 : rho 47191 * rho 47191 = rho 47202 := by linear_combination r2812
  have hd2 : rho 47192 * rho 47192 = rho 47203 := by linear_combination r2813
  have hd3 : rho 47204 * (rho 47192 * rho 47192 + rho 47191 * rho 47191 * (-1)) =
      2 * (rho 47191 * rho 47192) := by
    rw [hd0, hd1, hd2]
    linear_combination r2814
  have hd4 : rho 47205 * (2 - (rho 47192 * rho 47192 + rho 47191 * rho 47191 * (-1))) =
      rho 47192 * rho 47192 - rho 47191 * rho 47191 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2815
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47191, rho 47192⟩
    ⟨rho 47197, rho 47198⟩ ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47204, rho 47205⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2816 rho ∧ Seg52.relationRow2817 rho ∧ Seg52.relationRow2818 rho ∧ Seg52.relationRow2819 rho ∧ Seg52.relationRow2820 rho ∧ Seg52.relationRow2821 rho ∧ Seg52.relationRow2822 rho ∧ Seg52.relationRow2823 rho ∧ Seg52.relationRow2824 rho ∧ Seg52.relationRow2825 rho ∧ Seg52.relationRow2826 rho ∧ Seg52.relationRow2827 rho ∧ Seg52.relationRow2828 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828⟩

theorem seg52In1_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46964 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47204, rho 47205⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47204, rho 47205⟩
        ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47217, rho 47218⟩ := by
  obtain ⟨r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828⟩ := seg52In1_rows10 rho h
  unfold Seg52.relationRow2816 at r2816

  unfold Seg52.relationRow2817 at r2817

  unfold Seg52.relationRow2818 at r2818

  unfold Seg52.relationRow2819 at r2819

  unfold Seg52.relationRow2820 at r2820

  unfold Seg52.relationRow2821 at r2821

  unfold Seg52.relationRow2822 at r2822

  unfold Seg52.relationRow2823 at r2823

  unfold Seg52.relationRow2824 at r2824

  unfold Seg52.relationRow2825 at r2825

  unfold Seg52.relationRow2826 at r2826

  unfold Seg52.relationRow2827 at r2827

  unfold Seg52.relationRow2828 at r2828

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX11 rho = seg52In1AccX10 rho + rho 47212 := by
    unfold seg52In1AccX11 seg52In1AccX10
    ring

  have hnexty : seg52In1AccY11 rho = seg52In1AccY10 rho + rho 47213 := by
    unfold seg52In1AccY11 seg52In1AccY10
    ring

  have ha0 : (rho 47204 + rho 47205) * (seg52In1AccX10 rho + seg52In1AccY10 rho) = rho 47206 := by
    unfold seg52In1AccX10 seg52In1AccY10
    linear_combination r2816
  have ha1 : rho 47205 * seg52In1AccX10 rho = rho 47207 := by
    unfold seg52In1AccX10
    linear_combination r2817
  have ha2 : rho 47204 * seg52In1AccY10 rho = rho 47208 := by
    unfold seg52In1AccY10
    linear_combination r2818
  have ha3 : 3021 * rho 47207 * rho 47208 = rho 47209 := by
    linear_combination r2819
  have ha4 : rho 47210 * (1 + rho 47209) = rho 47207 + rho 47208 := by
    linear_combination r2820
  have ha5 : rho 47211 * (1 - rho 47209) = rho 47206 - rho 47207 - rho 47208 := by
    linear_combination r2821
  have haddx :
      rho 47210 * (1 + 3021 * (rho 47205 * seg52In1AccX10 rho) * (rho 47204 * seg52In1AccY10 rho)) =
        rho 47205 * seg52In1AccX10 rho + rho 47204 * seg52In1AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47211 * (1 - 3021 * (rho 47205 * seg52In1AccX10 rho) * (rho 47204 * seg52In1AccY10 rho)) =
        (-1) * (rho 47205 * seg52In1AccX10 rho) - rho 47204 * seg52In1AccY10 rho +
          (seg52In1AccY10 rho - seg52In1AccX10 rho * (-1)) * (rho 47204 + rho 47205) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47211 * (1 - rho 47209) = rho 47206 - rho 47207 - rho 47208 := ha5
      _ = (-1) * rho 47207 - rho 47208 + (seg52In1AccY10 rho - seg52In1AccX10 rho * (-1)) *
          (rho 47204 + rho 47205) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX11 rho = seg52In1AccX10 rho - Bool.toZMod bit * (seg52In1AccX10 rho - rho 47210) := by
    have hd : rho 47212 = Bool.toZMod bit * (rho 47210 - seg52In1AccX10 rho) := by
      rw [← hbit]
      unfold seg52In1AccX10
      linear_combination -r2822
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY11 rho = seg52In1AccY10 rho - Bool.toZMod bit * (seg52In1AccY10 rho - rho 47211) := by
    have hd : rho 47213 = Bool.toZMod bit * (rho 47211 - seg52In1AccY10 rho) := by
      rw [← hbit]
      unfold seg52In1AccY10
      linear_combination -r2823
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47204 * rho 47205 = rho 47214 := by linear_combination r2824
  have hd1 : rho 47204 * rho 47204 = rho 47215 := by linear_combination r2825
  have hd2 : rho 47205 * rho 47205 = rho 47216 := by linear_combination r2826
  have hd3 : rho 47217 * (rho 47205 * rho 47205 + rho 47204 * rho 47204 * (-1)) =
      2 * (rho 47204 * rho 47205) := by
    rw [hd0, hd1, hd2]
    linear_combination r2827
  have hd4 : rho 47218 * (2 - (rho 47205 * rho 47205 + rho 47204 * rho 47204 * (-1))) =
      rho 47205 * rho 47205 - rho 47204 * rho 47204 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2828
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47204, rho 47205⟩
    ⟨rho 47210, rho 47211⟩ ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47217, rho 47218⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg52In1_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg52In1_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg52In1_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg52In1_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg52In1_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg52In1_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg52In1_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg52In1_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg52In1_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg52In1_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
