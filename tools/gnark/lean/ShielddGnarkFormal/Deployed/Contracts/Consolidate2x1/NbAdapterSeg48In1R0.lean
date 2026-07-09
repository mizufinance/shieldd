import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2692 rho ∧ Seg48.relationRow2693 rho ∧ Seg48.relationRow2694 rho ∧ Seg48.relationRow2695 rho ∧ Seg48.relationRow2696 rho ∧ Seg48.relationRow2697 rho ∧ Seg48.relationRow2698 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2692, r2693, r2694, r2695, r2696, r2697, r2698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2692, r2693, r2694, r2695, r2696, r2697, r2698⟩

theorem seg48In1_rung0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35322 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX0 rho, seg48In1AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33530, rho 33532⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX0 rho, seg48In1AccY0 rho⟩ ⟨rho 33530, rho 33532⟩
        ⟨seg48In1AccX1 rho, seg48In1AccY1 rho⟩ ⟨rho 35455, rho 35456⟩ := by
  obtain ⟨r2692, r2693, r2694, r2695, r2696, r2697, r2698⟩ := seg48In1_rows0 rho h
  unfold Seg48.relationRow2692 at r2692

  unfold Seg48.relationRow2693 at r2693

  unfold Seg48.relationRow2694 at r2694

  unfold Seg48.relationRow2695 at r2695

  unfold Seg48.relationRow2696 at r2696

  unfold Seg48.relationRow2697 at r2697

  unfold Seg48.relationRow2698 at r2698

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX1 rho = seg48In1AccX0 rho + rho 35450 := by
    unfold seg48In1AccX1 seg48In1AccX0
    ring

  have hnexty : seg48In1AccY1 rho = seg48In1AccY0 rho + rho 35451 := by
    unfold seg48In1AccY1 seg48In1AccY0
    ring

  have haddx :
      rho 33530 * (1 + 3021 * (rho 33532 * seg48In1AccX0 rho) * (rho 33530 * seg48In1AccY0 rho)) =
        rho 33532 * seg48In1AccX0 rho + rho 33530 * seg48In1AccY0 rho := by
    unfold seg48In1AccX0 seg48In1AccY0
    ring
  have haddy :
      rho 33532 * (1 - 3021 * (rho 33532 * seg48In1AccX0 rho) * (rho 33530 * seg48In1AccY0 rho)) =
        (-1) * (rho 33532 * seg48In1AccX0 rho) - rho 33530 * seg48In1AccY0 rho +
          (seg48In1AccY0 rho - seg48In1AccX0 rho * (-1)) * (rho 33530 + rho 33532) := by
    unfold seg48In1AccX0 seg48In1AccY0
    ring
  have hselx : seg48In1AccX1 rho = seg48In1AccX0 rho - Bool.toZMod bit * (seg48In1AccX0 rho - rho 33530) := by
    have hd : rho 35450 = Bool.toZMod bit * (rho 33530 - seg48In1AccX0 rho) := by
      rw [← hbit]
      unfold seg48In1AccX0
      linear_combination -r2692
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY1 rho = seg48In1AccY0 rho - Bool.toZMod bit * (seg48In1AccY0 rho - rho 33532) := by
    have hd : rho 35451 = Bool.toZMod bit * (rho 33532 - seg48In1AccY0 rho) := by
      rw [← hbit]
      unfold seg48In1AccY0
      linear_combination -r2693
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33530 * rho 33532 = rho 35452 := by linear_combination r2694
  have hd1 : rho 33530 * rho 33530 = rho 35453 := by linear_combination r2695
  have hd2 : rho 33532 * rho 33532 = rho 35454 := by linear_combination r2696
  have hd3 : rho 35455 * (rho 33532 * rho 33532 + rho 33530 * rho 33530 * (-1)) =
      2 * (rho 33530 * rho 33532) := by
    rw [hd0, hd1, hd2]
    linear_combination r2697
  have hd4 : rho 35456 * (2 - (rho 33532 * rho 33532 + rho 33530 * rho 33530 * (-1))) =
      rho 33532 * rho 33532 - rho 33530 * rho 33530 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2698
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX0 rho, seg48In1AccY0 rho⟩ ⟨rho 33530, rho 33532⟩
    ⟨rho 33530, rho 33532⟩ ⟨seg48In1AccX1 rho, seg48In1AccY1 rho⟩ ⟨rho 35455, rho 35456⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2699 rho ∧ Seg48.relationRow2700 rho ∧ Seg48.relationRow2701 rho ∧ Seg48.relationRow2702 rho ∧ Seg48.relationRow2703 rho ∧ Seg48.relationRow2704 rho ∧ Seg48.relationRow2705 rho ∧ Seg48.relationRow2706 rho ∧ Seg48.relationRow2707 rho ∧ Seg48.relationRow2708 rho ∧ Seg48.relationRow2709 rho ∧ Seg48.relationRow2710 rho ∧ Seg48.relationRow2711 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711, _, _, _, _, _, _, _, _⟩

  exact ⟨r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711⟩

theorem seg48In1_rung1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35323 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX1 rho, seg48In1AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35455, rho 35456⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX1 rho, seg48In1AccY1 rho⟩ ⟨rho 35455, rho 35456⟩
        ⟨seg48In1AccX2 rho, seg48In1AccY2 rho⟩ ⟨rho 35468, rho 35469⟩ := by
  obtain ⟨r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711⟩ := seg48In1_rows1 rho h
  unfold Seg48.relationRow2699 at r2699

  unfold Seg48.relationRow2700 at r2700

  unfold Seg48.relationRow2701 at r2701

  unfold Seg48.relationRow2702 at r2702

  unfold Seg48.relationRow2703 at r2703

  unfold Seg48.relationRow2704 at r2704

  unfold Seg48.relationRow2705 at r2705

  unfold Seg48.relationRow2706 at r2706

  unfold Seg48.relationRow2707 at r2707

  unfold Seg48.relationRow2708 at r2708

  unfold Seg48.relationRow2709 at r2709

  unfold Seg48.relationRow2710 at r2710

  unfold Seg48.relationRow2711 at r2711

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX2 rho = seg48In1AccX1 rho + rho 35463 := by
    unfold seg48In1AccX2 seg48In1AccX1
    ring

  have hnexty : seg48In1AccY2 rho = seg48In1AccY1 rho + rho 35464 := by
    unfold seg48In1AccY2 seg48In1AccY1
    ring

  have ha0 : (rho 35455 + rho 35456) * (seg48In1AccX1 rho + seg48In1AccY1 rho) = rho 35457 := by
    unfold seg48In1AccX1 seg48In1AccY1
    linear_combination r2699
  have ha1 : rho 35456 * seg48In1AccX1 rho = rho 35458 := by
    unfold seg48In1AccX1
    linear_combination r2700
  have ha2 : rho 35455 * seg48In1AccY1 rho = rho 35459 := by
    unfold seg48In1AccY1
    linear_combination r2701
  have ha3 : 3021 * rho 35458 * rho 35459 = rho 35460 := by
    linear_combination r2702
  have ha4 : rho 35461 * (1 + rho 35460) = rho 35458 + rho 35459 := by
    linear_combination r2703
  have ha5 : rho 35462 * (1 - rho 35460) = rho 35457 - rho 35458 - rho 35459 := by
    linear_combination r2704
  have haddx :
      rho 35461 * (1 + 3021 * (rho 35456 * seg48In1AccX1 rho) * (rho 35455 * seg48In1AccY1 rho)) =
        rho 35456 * seg48In1AccX1 rho + rho 35455 * seg48In1AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35462 * (1 - 3021 * (rho 35456 * seg48In1AccX1 rho) * (rho 35455 * seg48In1AccY1 rho)) =
        (-1) * (rho 35456 * seg48In1AccX1 rho) - rho 35455 * seg48In1AccY1 rho +
          (seg48In1AccY1 rho - seg48In1AccX1 rho * (-1)) * (rho 35455 + rho 35456) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35462 * (1 - rho 35460) = rho 35457 - rho 35458 - rho 35459 := ha5
      _ = (-1) * rho 35458 - rho 35459 + (seg48In1AccY1 rho - seg48In1AccX1 rho * (-1)) *
          (rho 35455 + rho 35456) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX2 rho = seg48In1AccX1 rho - Bool.toZMod bit * (seg48In1AccX1 rho - rho 35461) := by
    have hd : rho 35463 = Bool.toZMod bit * (rho 35461 - seg48In1AccX1 rho) := by
      rw [← hbit]
      unfold seg48In1AccX1
      linear_combination -r2705
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY2 rho = seg48In1AccY1 rho - Bool.toZMod bit * (seg48In1AccY1 rho - rho 35462) := by
    have hd : rho 35464 = Bool.toZMod bit * (rho 35462 - seg48In1AccY1 rho) := by
      rw [← hbit]
      unfold seg48In1AccY1
      linear_combination -r2706
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35455 * rho 35456 = rho 35465 := by linear_combination r2707
  have hd1 : rho 35455 * rho 35455 = rho 35466 := by linear_combination r2708
  have hd2 : rho 35456 * rho 35456 = rho 35467 := by linear_combination r2709
  have hd3 : rho 35468 * (rho 35456 * rho 35456 + rho 35455 * rho 35455 * (-1)) =
      2 * (rho 35455 * rho 35456) := by
    rw [hd0, hd1, hd2]
    linear_combination r2710
  have hd4 : rho 35469 * (2 - (rho 35456 * rho 35456 + rho 35455 * rho 35455 * (-1))) =
      rho 35456 * rho 35456 - rho 35455 * rho 35455 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2711
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX1 rho, seg48In1AccY1 rho⟩ ⟨rho 35455, rho 35456⟩
    ⟨rho 35461, rho 35462⟩ ⟨seg48In1AccX2 rho, seg48In1AccY2 rho⟩ ⟨rho 35468, rho 35469⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2712 rho ∧ Seg48.relationRow2713 rho ∧ Seg48.relationRow2714 rho ∧ Seg48.relationRow2715 rho ∧ Seg48.relationRow2716 rho ∧ Seg48.relationRow2717 rho ∧ Seg48.relationRow2718 rho ∧ Seg48.relationRow2719 rho ∧ Seg48.relationRow2720 rho ∧ Seg48.relationRow2721 rho ∧ Seg48.relationRow2722 rho ∧ Seg48.relationRow2723 rho ∧ Seg48.relationRow2724 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719, r2720, r2721, r2722, r2723, r2724⟩

theorem seg48In1_rung2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35324 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX2 rho, seg48In1AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35468, rho 35469⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX2 rho, seg48In1AccY2 rho⟩ ⟨rho 35468, rho 35469⟩
        ⟨seg48In1AccX3 rho, seg48In1AccY3 rho⟩ ⟨rho 35481, rho 35482⟩ := by
  obtain ⟨r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719, r2720, r2721, r2722, r2723, r2724⟩ := seg48In1_rows2 rho h
  unfold Seg48.relationRow2712 at r2712

  unfold Seg48.relationRow2713 at r2713

  unfold Seg48.relationRow2714 at r2714

  unfold Seg48.relationRow2715 at r2715

  unfold Seg48.relationRow2716 at r2716

  unfold Seg48.relationRow2717 at r2717

  unfold Seg48.relationRow2718 at r2718

  unfold Seg48.relationRow2719 at r2719

  unfold Seg48.relationRow2720 at r2720

  unfold Seg48.relationRow2721 at r2721

  unfold Seg48.relationRow2722 at r2722

  unfold Seg48.relationRow2723 at r2723

  unfold Seg48.relationRow2724 at r2724

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX3 rho = seg48In1AccX2 rho + rho 35476 := by
    unfold seg48In1AccX3 seg48In1AccX2
    ring

  have hnexty : seg48In1AccY3 rho = seg48In1AccY2 rho + rho 35477 := by
    unfold seg48In1AccY3 seg48In1AccY2
    ring

  have ha0 : (rho 35468 + rho 35469) * (seg48In1AccX2 rho + seg48In1AccY2 rho) = rho 35470 := by
    unfold seg48In1AccX2 seg48In1AccY2
    linear_combination r2712
  have ha1 : rho 35469 * seg48In1AccX2 rho = rho 35471 := by
    unfold seg48In1AccX2
    linear_combination r2713
  have ha2 : rho 35468 * seg48In1AccY2 rho = rho 35472 := by
    unfold seg48In1AccY2
    linear_combination r2714
  have ha3 : 3021 * rho 35471 * rho 35472 = rho 35473 := by
    linear_combination r2715
  have ha4 : rho 35474 * (1 + rho 35473) = rho 35471 + rho 35472 := by
    linear_combination r2716
  have ha5 : rho 35475 * (1 - rho 35473) = rho 35470 - rho 35471 - rho 35472 := by
    linear_combination r2717
  have haddx :
      rho 35474 * (1 + 3021 * (rho 35469 * seg48In1AccX2 rho) * (rho 35468 * seg48In1AccY2 rho)) =
        rho 35469 * seg48In1AccX2 rho + rho 35468 * seg48In1AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35475 * (1 - 3021 * (rho 35469 * seg48In1AccX2 rho) * (rho 35468 * seg48In1AccY2 rho)) =
        (-1) * (rho 35469 * seg48In1AccX2 rho) - rho 35468 * seg48In1AccY2 rho +
          (seg48In1AccY2 rho - seg48In1AccX2 rho * (-1)) * (rho 35468 + rho 35469) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35475 * (1 - rho 35473) = rho 35470 - rho 35471 - rho 35472 := ha5
      _ = (-1) * rho 35471 - rho 35472 + (seg48In1AccY2 rho - seg48In1AccX2 rho * (-1)) *
          (rho 35468 + rho 35469) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX3 rho = seg48In1AccX2 rho - Bool.toZMod bit * (seg48In1AccX2 rho - rho 35474) := by
    have hd : rho 35476 = Bool.toZMod bit * (rho 35474 - seg48In1AccX2 rho) := by
      rw [← hbit]
      unfold seg48In1AccX2
      linear_combination -r2718
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY3 rho = seg48In1AccY2 rho - Bool.toZMod bit * (seg48In1AccY2 rho - rho 35475) := by
    have hd : rho 35477 = Bool.toZMod bit * (rho 35475 - seg48In1AccY2 rho) := by
      rw [← hbit]
      unfold seg48In1AccY2
      linear_combination -r2719
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35468 * rho 35469 = rho 35478 := by linear_combination r2720
  have hd1 : rho 35468 * rho 35468 = rho 35479 := by linear_combination r2721
  have hd2 : rho 35469 * rho 35469 = rho 35480 := by linear_combination r2722
  have hd3 : rho 35481 * (rho 35469 * rho 35469 + rho 35468 * rho 35468 * (-1)) =
      2 * (rho 35468 * rho 35469) := by
    rw [hd0, hd1, hd2]
    linear_combination r2723
  have hd4 : rho 35482 * (2 - (rho 35469 * rho 35469 + rho 35468 * rho 35468 * (-1))) =
      rho 35469 * rho 35469 - rho 35468 * rho 35468 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2724
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX2 rho, seg48In1AccY2 rho⟩ ⟨rho 35468, rho 35469⟩
    ⟨rho 35474, rho 35475⟩ ⟨seg48In1AccX3 rho, seg48In1AccY3 rho⟩ ⟨rho 35481, rho 35482⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2725 rho ∧ Seg48.relationRow2726 rho ∧ Seg48.relationRow2727 rho ∧ Seg48.relationRow2728 rho ∧ Seg48.relationRow2729 rho ∧ Seg48.relationRow2730 rho ∧ Seg48.relationRow2731 rho ∧ Seg48.relationRow2732 rho ∧ Seg48.relationRow2733 rho ∧ Seg48.relationRow2734 rho ∧ Seg48.relationRow2735 rho ∧ Seg48.relationRow2736 rho ∧ Seg48.relationRow2737 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737⟩

theorem seg48In1_rung3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35325 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX3 rho, seg48In1AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35481, rho 35482⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX3 rho, seg48In1AccY3 rho⟩ ⟨rho 35481, rho 35482⟩
        ⟨seg48In1AccX4 rho, seg48In1AccY4 rho⟩ ⟨rho 35494, rho 35495⟩ := by
  obtain ⟨r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737⟩ := seg48In1_rows3 rho h
  unfold Seg48.relationRow2725 at r2725

  unfold Seg48.relationRow2726 at r2726

  unfold Seg48.relationRow2727 at r2727

  unfold Seg48.relationRow2728 at r2728

  unfold Seg48.relationRow2729 at r2729

  unfold Seg48.relationRow2730 at r2730

  unfold Seg48.relationRow2731 at r2731

  unfold Seg48.relationRow2732 at r2732

  unfold Seg48.relationRow2733 at r2733

  unfold Seg48.relationRow2734 at r2734

  unfold Seg48.relationRow2735 at r2735

  unfold Seg48.relationRow2736 at r2736

  unfold Seg48.relationRow2737 at r2737

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX4 rho = seg48In1AccX3 rho + rho 35489 := by
    unfold seg48In1AccX4 seg48In1AccX3
    ring

  have hnexty : seg48In1AccY4 rho = seg48In1AccY3 rho + rho 35490 := by
    unfold seg48In1AccY4 seg48In1AccY3
    ring

  have ha0 : (rho 35481 + rho 35482) * (seg48In1AccX3 rho + seg48In1AccY3 rho) = rho 35483 := by
    unfold seg48In1AccX3 seg48In1AccY3
    linear_combination r2725
  have ha1 : rho 35482 * seg48In1AccX3 rho = rho 35484 := by
    unfold seg48In1AccX3
    linear_combination r2726
  have ha2 : rho 35481 * seg48In1AccY3 rho = rho 35485 := by
    unfold seg48In1AccY3
    linear_combination r2727
  have ha3 : 3021 * rho 35484 * rho 35485 = rho 35486 := by
    linear_combination r2728
  have ha4 : rho 35487 * (1 + rho 35486) = rho 35484 + rho 35485 := by
    linear_combination r2729
  have ha5 : rho 35488 * (1 - rho 35486) = rho 35483 - rho 35484 - rho 35485 := by
    linear_combination r2730
  have haddx :
      rho 35487 * (1 + 3021 * (rho 35482 * seg48In1AccX3 rho) * (rho 35481 * seg48In1AccY3 rho)) =
        rho 35482 * seg48In1AccX3 rho + rho 35481 * seg48In1AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35488 * (1 - 3021 * (rho 35482 * seg48In1AccX3 rho) * (rho 35481 * seg48In1AccY3 rho)) =
        (-1) * (rho 35482 * seg48In1AccX3 rho) - rho 35481 * seg48In1AccY3 rho +
          (seg48In1AccY3 rho - seg48In1AccX3 rho * (-1)) * (rho 35481 + rho 35482) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35488 * (1 - rho 35486) = rho 35483 - rho 35484 - rho 35485 := ha5
      _ = (-1) * rho 35484 - rho 35485 + (seg48In1AccY3 rho - seg48In1AccX3 rho * (-1)) *
          (rho 35481 + rho 35482) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX4 rho = seg48In1AccX3 rho - Bool.toZMod bit * (seg48In1AccX3 rho - rho 35487) := by
    have hd : rho 35489 = Bool.toZMod bit * (rho 35487 - seg48In1AccX3 rho) := by
      rw [← hbit]
      unfold seg48In1AccX3
      linear_combination -r2731
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY4 rho = seg48In1AccY3 rho - Bool.toZMod bit * (seg48In1AccY3 rho - rho 35488) := by
    have hd : rho 35490 = Bool.toZMod bit * (rho 35488 - seg48In1AccY3 rho) := by
      rw [← hbit]
      unfold seg48In1AccY3
      linear_combination -r2732
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35481 * rho 35482 = rho 35491 := by linear_combination r2733
  have hd1 : rho 35481 * rho 35481 = rho 35492 := by linear_combination r2734
  have hd2 : rho 35482 * rho 35482 = rho 35493 := by linear_combination r2735
  have hd3 : rho 35494 * (rho 35482 * rho 35482 + rho 35481 * rho 35481 * (-1)) =
      2 * (rho 35481 * rho 35482) := by
    rw [hd0, hd1, hd2]
    linear_combination r2736
  have hd4 : rho 35495 * (2 - (rho 35482 * rho 35482 + rho 35481 * rho 35481 * (-1))) =
      rho 35482 * rho 35482 - rho 35481 * rho 35481 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2737
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX3 rho, seg48In1AccY3 rho⟩ ⟨rho 35481, rho 35482⟩
    ⟨rho 35487, rho 35488⟩ ⟨seg48In1AccX4 rho, seg48In1AccY4 rho⟩ ⟨rho 35494, rho 35495⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2738 rho ∧ Seg48.relationRow2739 rho ∧ Seg48.relationRow2740 rho ∧ Seg48.relationRow2741 rho ∧ Seg48.relationRow2742 rho ∧ Seg48.relationRow2743 rho ∧ Seg48.relationRow2744 rho ∧ Seg48.relationRow2745 rho ∧ Seg48.relationRow2746 rho ∧ Seg48.relationRow2747 rho ∧ Seg48.relationRow2748 rho ∧ Seg48.relationRow2749 rho ∧ Seg48.relationRow2750 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750⟩

theorem seg48In1_rung4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35326 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX4 rho, seg48In1AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35494, rho 35495⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX4 rho, seg48In1AccY4 rho⟩ ⟨rho 35494, rho 35495⟩
        ⟨seg48In1AccX5 rho, seg48In1AccY5 rho⟩ ⟨rho 35507, rho 35508⟩ := by
  obtain ⟨r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750⟩ := seg48In1_rows4 rho h
  unfold Seg48.relationRow2738 at r2738

  unfold Seg48.relationRow2739 at r2739

  unfold Seg48.relationRow2740 at r2740

  unfold Seg48.relationRow2741 at r2741

  unfold Seg48.relationRow2742 at r2742

  unfold Seg48.relationRow2743 at r2743

  unfold Seg48.relationRow2744 at r2744

  unfold Seg48.relationRow2745 at r2745

  unfold Seg48.relationRow2746 at r2746

  unfold Seg48.relationRow2747 at r2747

  unfold Seg48.relationRow2748 at r2748

  unfold Seg48.relationRow2749 at r2749

  unfold Seg48.relationRow2750 at r2750

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX5 rho = seg48In1AccX4 rho + rho 35502 := by
    unfold seg48In1AccX5 seg48In1AccX4
    ring

  have hnexty : seg48In1AccY5 rho = seg48In1AccY4 rho + rho 35503 := by
    unfold seg48In1AccY5 seg48In1AccY4
    ring

  have ha0 : (rho 35494 + rho 35495) * (seg48In1AccX4 rho + seg48In1AccY4 rho) = rho 35496 := by
    unfold seg48In1AccX4 seg48In1AccY4
    linear_combination r2738
  have ha1 : rho 35495 * seg48In1AccX4 rho = rho 35497 := by
    unfold seg48In1AccX4
    linear_combination r2739
  have ha2 : rho 35494 * seg48In1AccY4 rho = rho 35498 := by
    unfold seg48In1AccY4
    linear_combination r2740
  have ha3 : 3021 * rho 35497 * rho 35498 = rho 35499 := by
    linear_combination r2741
  have ha4 : rho 35500 * (1 + rho 35499) = rho 35497 + rho 35498 := by
    linear_combination r2742
  have ha5 : rho 35501 * (1 - rho 35499) = rho 35496 - rho 35497 - rho 35498 := by
    linear_combination r2743
  have haddx :
      rho 35500 * (1 + 3021 * (rho 35495 * seg48In1AccX4 rho) * (rho 35494 * seg48In1AccY4 rho)) =
        rho 35495 * seg48In1AccX4 rho + rho 35494 * seg48In1AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35501 * (1 - 3021 * (rho 35495 * seg48In1AccX4 rho) * (rho 35494 * seg48In1AccY4 rho)) =
        (-1) * (rho 35495 * seg48In1AccX4 rho) - rho 35494 * seg48In1AccY4 rho +
          (seg48In1AccY4 rho - seg48In1AccX4 rho * (-1)) * (rho 35494 + rho 35495) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35501 * (1 - rho 35499) = rho 35496 - rho 35497 - rho 35498 := ha5
      _ = (-1) * rho 35497 - rho 35498 + (seg48In1AccY4 rho - seg48In1AccX4 rho * (-1)) *
          (rho 35494 + rho 35495) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX5 rho = seg48In1AccX4 rho - Bool.toZMod bit * (seg48In1AccX4 rho - rho 35500) := by
    have hd : rho 35502 = Bool.toZMod bit * (rho 35500 - seg48In1AccX4 rho) := by
      rw [← hbit]
      unfold seg48In1AccX4
      linear_combination -r2744
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY5 rho = seg48In1AccY4 rho - Bool.toZMod bit * (seg48In1AccY4 rho - rho 35501) := by
    have hd : rho 35503 = Bool.toZMod bit * (rho 35501 - seg48In1AccY4 rho) := by
      rw [← hbit]
      unfold seg48In1AccY4
      linear_combination -r2745
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35494 * rho 35495 = rho 35504 := by linear_combination r2746
  have hd1 : rho 35494 * rho 35494 = rho 35505 := by linear_combination r2747
  have hd2 : rho 35495 * rho 35495 = rho 35506 := by linear_combination r2748
  have hd3 : rho 35507 * (rho 35495 * rho 35495 + rho 35494 * rho 35494 * (-1)) =
      2 * (rho 35494 * rho 35495) := by
    rw [hd0, hd1, hd2]
    linear_combination r2749
  have hd4 : rho 35508 * (2 - (rho 35495 * rho 35495 + rho 35494 * rho 35494 * (-1))) =
      rho 35495 * rho 35495 - rho 35494 * rho 35494 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2750
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX4 rho, seg48In1AccY4 rho⟩ ⟨rho 35494, rho 35495⟩
    ⟨rho 35500, rho 35501⟩ ⟨seg48In1AccX5 rho, seg48In1AccY5 rho⟩ ⟨rho 35507, rho 35508⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2751 rho ∧ Seg48.relationRow2752 rho ∧ Seg48.relationRow2753 rho ∧ Seg48.relationRow2754 rho ∧ Seg48.relationRow2755 rho ∧ Seg48.relationRow2756 rho ∧ Seg48.relationRow2757 rho ∧ Seg48.relationRow2758 rho ∧ Seg48.relationRow2759 rho ∧ Seg48.relationRow2760 rho ∧ Seg48.relationRow2761 rho ∧ Seg48.relationRow2762 rho ∧ Seg48.relationRow2763 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763⟩

theorem seg48In1_rung5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35327 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX5 rho, seg48In1AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35507, rho 35508⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX5 rho, seg48In1AccY5 rho⟩ ⟨rho 35507, rho 35508⟩
        ⟨seg48In1AccX6 rho, seg48In1AccY6 rho⟩ ⟨rho 35520, rho 35521⟩ := by
  obtain ⟨r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763⟩ := seg48In1_rows5 rho h
  unfold Seg48.relationRow2751 at r2751

  unfold Seg48.relationRow2752 at r2752

  unfold Seg48.relationRow2753 at r2753

  unfold Seg48.relationRow2754 at r2754

  unfold Seg48.relationRow2755 at r2755

  unfold Seg48.relationRow2756 at r2756

  unfold Seg48.relationRow2757 at r2757

  unfold Seg48.relationRow2758 at r2758

  unfold Seg48.relationRow2759 at r2759

  unfold Seg48.relationRow2760 at r2760

  unfold Seg48.relationRow2761 at r2761

  unfold Seg48.relationRow2762 at r2762

  unfold Seg48.relationRow2763 at r2763

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX6 rho = seg48In1AccX5 rho + rho 35515 := by
    unfold seg48In1AccX6 seg48In1AccX5
    ring

  have hnexty : seg48In1AccY6 rho = seg48In1AccY5 rho + rho 35516 := by
    unfold seg48In1AccY6 seg48In1AccY5
    ring

  have ha0 : (rho 35507 + rho 35508) * (seg48In1AccX5 rho + seg48In1AccY5 rho) = rho 35509 := by
    unfold seg48In1AccX5 seg48In1AccY5
    linear_combination r2751
  have ha1 : rho 35508 * seg48In1AccX5 rho = rho 35510 := by
    unfold seg48In1AccX5
    linear_combination r2752
  have ha2 : rho 35507 * seg48In1AccY5 rho = rho 35511 := by
    unfold seg48In1AccY5
    linear_combination r2753
  have ha3 : 3021 * rho 35510 * rho 35511 = rho 35512 := by
    linear_combination r2754
  have ha4 : rho 35513 * (1 + rho 35512) = rho 35510 + rho 35511 := by
    linear_combination r2755
  have ha5 : rho 35514 * (1 - rho 35512) = rho 35509 - rho 35510 - rho 35511 := by
    linear_combination r2756
  have haddx :
      rho 35513 * (1 + 3021 * (rho 35508 * seg48In1AccX5 rho) * (rho 35507 * seg48In1AccY5 rho)) =
        rho 35508 * seg48In1AccX5 rho + rho 35507 * seg48In1AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35514 * (1 - 3021 * (rho 35508 * seg48In1AccX5 rho) * (rho 35507 * seg48In1AccY5 rho)) =
        (-1) * (rho 35508 * seg48In1AccX5 rho) - rho 35507 * seg48In1AccY5 rho +
          (seg48In1AccY5 rho - seg48In1AccX5 rho * (-1)) * (rho 35507 + rho 35508) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35514 * (1 - rho 35512) = rho 35509 - rho 35510 - rho 35511 := ha5
      _ = (-1) * rho 35510 - rho 35511 + (seg48In1AccY5 rho - seg48In1AccX5 rho * (-1)) *
          (rho 35507 + rho 35508) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX6 rho = seg48In1AccX5 rho - Bool.toZMod bit * (seg48In1AccX5 rho - rho 35513) := by
    have hd : rho 35515 = Bool.toZMod bit * (rho 35513 - seg48In1AccX5 rho) := by
      rw [← hbit]
      unfold seg48In1AccX5
      linear_combination -r2757
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY6 rho = seg48In1AccY5 rho - Bool.toZMod bit * (seg48In1AccY5 rho - rho 35514) := by
    have hd : rho 35516 = Bool.toZMod bit * (rho 35514 - seg48In1AccY5 rho) := by
      rw [← hbit]
      unfold seg48In1AccY5
      linear_combination -r2758
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35507 * rho 35508 = rho 35517 := by linear_combination r2759
  have hd1 : rho 35507 * rho 35507 = rho 35518 := by linear_combination r2760
  have hd2 : rho 35508 * rho 35508 = rho 35519 := by linear_combination r2761
  have hd3 : rho 35520 * (rho 35508 * rho 35508 + rho 35507 * rho 35507 * (-1)) =
      2 * (rho 35507 * rho 35508) := by
    rw [hd0, hd1, hd2]
    linear_combination r2762
  have hd4 : rho 35521 * (2 - (rho 35508 * rho 35508 + rho 35507 * rho 35507 * (-1))) =
      rho 35508 * rho 35508 - rho 35507 * rho 35507 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2763
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX5 rho, seg48In1AccY5 rho⟩ ⟨rho 35507, rho 35508⟩
    ⟨rho 35513, rho 35514⟩ ⟨seg48In1AccX6 rho, seg48In1AccY6 rho⟩ ⟨rho 35520, rho 35521⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2764 rho ∧ Seg48.relationRow2765 rho ∧ Seg48.relationRow2766 rho ∧ Seg48.relationRow2767 rho ∧ Seg48.relationRow2768 rho ∧ Seg48.relationRow2769 rho ∧ Seg48.relationRow2770 rho ∧ Seg48.relationRow2771 rho ∧ Seg48.relationRow2772 rho ∧ Seg48.relationRow2773 rho ∧ Seg48.relationRow2774 rho ∧ Seg48.relationRow2775 rho ∧ Seg48.relationRow2776 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776⟩

theorem seg48In1_rung6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35328 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX6 rho, seg48In1AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35520, rho 35521⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX6 rho, seg48In1AccY6 rho⟩ ⟨rho 35520, rho 35521⟩
        ⟨seg48In1AccX7 rho, seg48In1AccY7 rho⟩ ⟨rho 35533, rho 35534⟩ := by
  obtain ⟨r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776⟩ := seg48In1_rows6 rho h
  unfold Seg48.relationRow2764 at r2764

  unfold Seg48.relationRow2765 at r2765

  unfold Seg48.relationRow2766 at r2766

  unfold Seg48.relationRow2767 at r2767

  unfold Seg48.relationRow2768 at r2768

  unfold Seg48.relationRow2769 at r2769

  unfold Seg48.relationRow2770 at r2770

  unfold Seg48.relationRow2771 at r2771

  unfold Seg48.relationRow2772 at r2772

  unfold Seg48.relationRow2773 at r2773

  unfold Seg48.relationRow2774 at r2774

  unfold Seg48.relationRow2775 at r2775

  unfold Seg48.relationRow2776 at r2776

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX7 rho = seg48In1AccX6 rho + rho 35528 := by
    unfold seg48In1AccX7 seg48In1AccX6
    ring

  have hnexty : seg48In1AccY7 rho = seg48In1AccY6 rho + rho 35529 := by
    unfold seg48In1AccY7 seg48In1AccY6
    ring

  have ha0 : (rho 35520 + rho 35521) * (seg48In1AccX6 rho + seg48In1AccY6 rho) = rho 35522 := by
    unfold seg48In1AccX6 seg48In1AccY6
    linear_combination r2764
  have ha1 : rho 35521 * seg48In1AccX6 rho = rho 35523 := by
    unfold seg48In1AccX6
    linear_combination r2765
  have ha2 : rho 35520 * seg48In1AccY6 rho = rho 35524 := by
    unfold seg48In1AccY6
    linear_combination r2766
  have ha3 : 3021 * rho 35523 * rho 35524 = rho 35525 := by
    linear_combination r2767
  have ha4 : rho 35526 * (1 + rho 35525) = rho 35523 + rho 35524 := by
    linear_combination r2768
  have ha5 : rho 35527 * (1 - rho 35525) = rho 35522 - rho 35523 - rho 35524 := by
    linear_combination r2769
  have haddx :
      rho 35526 * (1 + 3021 * (rho 35521 * seg48In1AccX6 rho) * (rho 35520 * seg48In1AccY6 rho)) =
        rho 35521 * seg48In1AccX6 rho + rho 35520 * seg48In1AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35527 * (1 - 3021 * (rho 35521 * seg48In1AccX6 rho) * (rho 35520 * seg48In1AccY6 rho)) =
        (-1) * (rho 35521 * seg48In1AccX6 rho) - rho 35520 * seg48In1AccY6 rho +
          (seg48In1AccY6 rho - seg48In1AccX6 rho * (-1)) * (rho 35520 + rho 35521) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35527 * (1 - rho 35525) = rho 35522 - rho 35523 - rho 35524 := ha5
      _ = (-1) * rho 35523 - rho 35524 + (seg48In1AccY6 rho - seg48In1AccX6 rho * (-1)) *
          (rho 35520 + rho 35521) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX7 rho = seg48In1AccX6 rho - Bool.toZMod bit * (seg48In1AccX6 rho - rho 35526) := by
    have hd : rho 35528 = Bool.toZMod bit * (rho 35526 - seg48In1AccX6 rho) := by
      rw [← hbit]
      unfold seg48In1AccX6
      linear_combination -r2770
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY7 rho = seg48In1AccY6 rho - Bool.toZMod bit * (seg48In1AccY6 rho - rho 35527) := by
    have hd : rho 35529 = Bool.toZMod bit * (rho 35527 - seg48In1AccY6 rho) := by
      rw [← hbit]
      unfold seg48In1AccY6
      linear_combination -r2771
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35520 * rho 35521 = rho 35530 := by linear_combination r2772
  have hd1 : rho 35520 * rho 35520 = rho 35531 := by linear_combination r2773
  have hd2 : rho 35521 * rho 35521 = rho 35532 := by linear_combination r2774
  have hd3 : rho 35533 * (rho 35521 * rho 35521 + rho 35520 * rho 35520 * (-1)) =
      2 * (rho 35520 * rho 35521) := by
    rw [hd0, hd1, hd2]
    linear_combination r2775
  have hd4 : rho 35534 * (2 - (rho 35521 * rho 35521 + rho 35520 * rho 35520 * (-1))) =
      rho 35521 * rho 35521 - rho 35520 * rho 35520 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2776
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX6 rho, seg48In1AccY6 rho⟩ ⟨rho 35520, rho 35521⟩
    ⟨rho 35526, rho 35527⟩ ⟨seg48In1AccX7 rho, seg48In1AccY7 rho⟩ ⟨rho 35533, rho 35534⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2777 rho ∧ Seg48.relationRow2778 rho ∧ Seg48.relationRow2779 rho ∧ Seg48.relationRow2780 rho ∧ Seg48.relationRow2781 rho ∧ Seg48.relationRow2782 rho ∧ Seg48.relationRow2783 rho ∧ Seg48.relationRow2784 rho ∧ Seg48.relationRow2785 rho ∧ Seg48.relationRow2786 rho ∧ Seg48.relationRow2787 rho ∧ Seg48.relationRow2788 rho ∧ Seg48.relationRow2789 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789⟩

theorem seg48In1_rung7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35329 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX7 rho, seg48In1AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35533, rho 35534⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX7 rho, seg48In1AccY7 rho⟩ ⟨rho 35533, rho 35534⟩
        ⟨seg48In1AccX8 rho, seg48In1AccY8 rho⟩ ⟨rho 35546, rho 35547⟩ := by
  obtain ⟨r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789⟩ := seg48In1_rows7 rho h
  unfold Seg48.relationRow2777 at r2777

  unfold Seg48.relationRow2778 at r2778

  unfold Seg48.relationRow2779 at r2779

  unfold Seg48.relationRow2780 at r2780

  unfold Seg48.relationRow2781 at r2781

  unfold Seg48.relationRow2782 at r2782

  unfold Seg48.relationRow2783 at r2783

  unfold Seg48.relationRow2784 at r2784

  unfold Seg48.relationRow2785 at r2785

  unfold Seg48.relationRow2786 at r2786

  unfold Seg48.relationRow2787 at r2787

  unfold Seg48.relationRow2788 at r2788

  unfold Seg48.relationRow2789 at r2789

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX8 rho = seg48In1AccX7 rho + rho 35541 := by
    unfold seg48In1AccX8 seg48In1AccX7
    ring

  have hnexty : seg48In1AccY8 rho = seg48In1AccY7 rho + rho 35542 := by
    unfold seg48In1AccY8 seg48In1AccY7
    ring

  have ha0 : (rho 35533 + rho 35534) * (seg48In1AccX7 rho + seg48In1AccY7 rho) = rho 35535 := by
    unfold seg48In1AccX7 seg48In1AccY7
    linear_combination r2777
  have ha1 : rho 35534 * seg48In1AccX7 rho = rho 35536 := by
    unfold seg48In1AccX7
    linear_combination r2778
  have ha2 : rho 35533 * seg48In1AccY7 rho = rho 35537 := by
    unfold seg48In1AccY7
    linear_combination r2779
  have ha3 : 3021 * rho 35536 * rho 35537 = rho 35538 := by
    linear_combination r2780
  have ha4 : rho 35539 * (1 + rho 35538) = rho 35536 + rho 35537 := by
    linear_combination r2781
  have ha5 : rho 35540 * (1 - rho 35538) = rho 35535 - rho 35536 - rho 35537 := by
    linear_combination r2782
  have haddx :
      rho 35539 * (1 + 3021 * (rho 35534 * seg48In1AccX7 rho) * (rho 35533 * seg48In1AccY7 rho)) =
        rho 35534 * seg48In1AccX7 rho + rho 35533 * seg48In1AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35540 * (1 - 3021 * (rho 35534 * seg48In1AccX7 rho) * (rho 35533 * seg48In1AccY7 rho)) =
        (-1) * (rho 35534 * seg48In1AccX7 rho) - rho 35533 * seg48In1AccY7 rho +
          (seg48In1AccY7 rho - seg48In1AccX7 rho * (-1)) * (rho 35533 + rho 35534) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35540 * (1 - rho 35538) = rho 35535 - rho 35536 - rho 35537 := ha5
      _ = (-1) * rho 35536 - rho 35537 + (seg48In1AccY7 rho - seg48In1AccX7 rho * (-1)) *
          (rho 35533 + rho 35534) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX8 rho = seg48In1AccX7 rho - Bool.toZMod bit * (seg48In1AccX7 rho - rho 35539) := by
    have hd : rho 35541 = Bool.toZMod bit * (rho 35539 - seg48In1AccX7 rho) := by
      rw [← hbit]
      unfold seg48In1AccX7
      linear_combination -r2783
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY8 rho = seg48In1AccY7 rho - Bool.toZMod bit * (seg48In1AccY7 rho - rho 35540) := by
    have hd : rho 35542 = Bool.toZMod bit * (rho 35540 - seg48In1AccY7 rho) := by
      rw [← hbit]
      unfold seg48In1AccY7
      linear_combination -r2784
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35533 * rho 35534 = rho 35543 := by linear_combination r2785
  have hd1 : rho 35533 * rho 35533 = rho 35544 := by linear_combination r2786
  have hd2 : rho 35534 * rho 35534 = rho 35545 := by linear_combination r2787
  have hd3 : rho 35546 * (rho 35534 * rho 35534 + rho 35533 * rho 35533 * (-1)) =
      2 * (rho 35533 * rho 35534) := by
    rw [hd0, hd1, hd2]
    linear_combination r2788
  have hd4 : rho 35547 * (2 - (rho 35534 * rho 35534 + rho 35533 * rho 35533 * (-1))) =
      rho 35534 * rho 35534 - rho 35533 * rho 35533 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2789
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX7 rho, seg48In1AccY7 rho⟩ ⟨rho 35533, rho 35534⟩
    ⟨rho 35539, rho 35540⟩ ⟨seg48In1AccX8 rho, seg48In1AccY8 rho⟩ ⟨rho 35546, rho 35547⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2790 rho ∧ Seg48.relationRow2791 rho ∧ Seg48.relationRow2792 rho ∧ Seg48.relationRow2793 rho ∧ Seg48.relationRow2794 rho ∧ Seg48.relationRow2795 rho ∧ Seg48.relationRow2796 rho ∧ Seg48.relationRow2797 rho ∧ Seg48.relationRow2798 rho ∧ Seg48.relationRow2799 rho ∧ Seg48.relationRow2800 rho ∧ Seg48.relationRow2801 rho ∧ Seg48.relationRow2802 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart34 at p34

  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨r2800, r2801, r2802, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802⟩

theorem seg48In1_rung8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35330 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX8 rho, seg48In1AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35546, rho 35547⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX8 rho, seg48In1AccY8 rho⟩ ⟨rho 35546, rho 35547⟩
        ⟨seg48In1AccX9 rho, seg48In1AccY9 rho⟩ ⟨rho 35559, rho 35560⟩ := by
  obtain ⟨r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802⟩ := seg48In1_rows8 rho h
  unfold Seg48.relationRow2790 at r2790

  unfold Seg48.relationRow2791 at r2791

  unfold Seg48.relationRow2792 at r2792

  unfold Seg48.relationRow2793 at r2793

  unfold Seg48.relationRow2794 at r2794

  unfold Seg48.relationRow2795 at r2795

  unfold Seg48.relationRow2796 at r2796

  unfold Seg48.relationRow2797 at r2797

  unfold Seg48.relationRow2798 at r2798

  unfold Seg48.relationRow2799 at r2799

  unfold Seg48.relationRow2800 at r2800

  unfold Seg48.relationRow2801 at r2801

  unfold Seg48.relationRow2802 at r2802

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX9 rho = seg48In1AccX8 rho + rho 35554 := by
    unfold seg48In1AccX9 seg48In1AccX8
    ring

  have hnexty : seg48In1AccY9 rho = seg48In1AccY8 rho + rho 35555 := by
    unfold seg48In1AccY9 seg48In1AccY8
    ring

  have ha0 : (rho 35546 + rho 35547) * (seg48In1AccX8 rho + seg48In1AccY8 rho) = rho 35548 := by
    unfold seg48In1AccX8 seg48In1AccY8
    linear_combination r2790
  have ha1 : rho 35547 * seg48In1AccX8 rho = rho 35549 := by
    unfold seg48In1AccX8
    linear_combination r2791
  have ha2 : rho 35546 * seg48In1AccY8 rho = rho 35550 := by
    unfold seg48In1AccY8
    linear_combination r2792
  have ha3 : 3021 * rho 35549 * rho 35550 = rho 35551 := by
    linear_combination r2793
  have ha4 : rho 35552 * (1 + rho 35551) = rho 35549 + rho 35550 := by
    linear_combination r2794
  have ha5 : rho 35553 * (1 - rho 35551) = rho 35548 - rho 35549 - rho 35550 := by
    linear_combination r2795
  have haddx :
      rho 35552 * (1 + 3021 * (rho 35547 * seg48In1AccX8 rho) * (rho 35546 * seg48In1AccY8 rho)) =
        rho 35547 * seg48In1AccX8 rho + rho 35546 * seg48In1AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35553 * (1 - 3021 * (rho 35547 * seg48In1AccX8 rho) * (rho 35546 * seg48In1AccY8 rho)) =
        (-1) * (rho 35547 * seg48In1AccX8 rho) - rho 35546 * seg48In1AccY8 rho +
          (seg48In1AccY8 rho - seg48In1AccX8 rho * (-1)) * (rho 35546 + rho 35547) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35553 * (1 - rho 35551) = rho 35548 - rho 35549 - rho 35550 := ha5
      _ = (-1) * rho 35549 - rho 35550 + (seg48In1AccY8 rho - seg48In1AccX8 rho * (-1)) *
          (rho 35546 + rho 35547) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX9 rho = seg48In1AccX8 rho - Bool.toZMod bit * (seg48In1AccX8 rho - rho 35552) := by
    have hd : rho 35554 = Bool.toZMod bit * (rho 35552 - seg48In1AccX8 rho) := by
      rw [← hbit]
      unfold seg48In1AccX8
      linear_combination -r2796
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY9 rho = seg48In1AccY8 rho - Bool.toZMod bit * (seg48In1AccY8 rho - rho 35553) := by
    have hd : rho 35555 = Bool.toZMod bit * (rho 35553 - seg48In1AccY8 rho) := by
      rw [← hbit]
      unfold seg48In1AccY8
      linear_combination -r2797
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35546 * rho 35547 = rho 35556 := by linear_combination r2798
  have hd1 : rho 35546 * rho 35546 = rho 35557 := by linear_combination r2799
  have hd2 : rho 35547 * rho 35547 = rho 35558 := by linear_combination r2800
  have hd3 : rho 35559 * (rho 35547 * rho 35547 + rho 35546 * rho 35546 * (-1)) =
      2 * (rho 35546 * rho 35547) := by
    rw [hd0, hd1, hd2]
    linear_combination r2801
  have hd4 : rho 35560 * (2 - (rho 35547 * rho 35547 + rho 35546 * rho 35546 * (-1))) =
      rho 35547 * rho 35547 - rho 35546 * rho 35546 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2802
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX8 rho, seg48In1AccY8 rho⟩ ⟨rho 35546, rho 35547⟩
    ⟨rho 35552, rho 35553⟩ ⟨seg48In1AccX9 rho, seg48In1AccY9 rho⟩ ⟨rho 35559, rho 35560⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2803 rho ∧ Seg48.relationRow2804 rho ∧ Seg48.relationRow2805 rho ∧ Seg48.relationRow2806 rho ∧ Seg48.relationRow2807 rho ∧ Seg48.relationRow2808 rho ∧ Seg48.relationRow2809 rho ∧ Seg48.relationRow2810 rho ∧ Seg48.relationRow2811 rho ∧ Seg48.relationRow2812 rho ∧ Seg48.relationRow2813 rho ∧ Seg48.relationRow2814 rho ∧ Seg48.relationRow2815 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨_, _, _, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815⟩

theorem seg48In1_rung9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35331 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX9 rho, seg48In1AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35559, rho 35560⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX9 rho, seg48In1AccY9 rho⟩ ⟨rho 35559, rho 35560⟩
        ⟨seg48In1AccX10 rho, seg48In1AccY10 rho⟩ ⟨rho 35572, rho 35573⟩ := by
  obtain ⟨r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815⟩ := seg48In1_rows9 rho h
  unfold Seg48.relationRow2803 at r2803

  unfold Seg48.relationRow2804 at r2804

  unfold Seg48.relationRow2805 at r2805

  unfold Seg48.relationRow2806 at r2806

  unfold Seg48.relationRow2807 at r2807

  unfold Seg48.relationRow2808 at r2808

  unfold Seg48.relationRow2809 at r2809

  unfold Seg48.relationRow2810 at r2810

  unfold Seg48.relationRow2811 at r2811

  unfold Seg48.relationRow2812 at r2812

  unfold Seg48.relationRow2813 at r2813

  unfold Seg48.relationRow2814 at r2814

  unfold Seg48.relationRow2815 at r2815

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX10 rho = seg48In1AccX9 rho + rho 35567 := by
    unfold seg48In1AccX10 seg48In1AccX9
    ring

  have hnexty : seg48In1AccY10 rho = seg48In1AccY9 rho + rho 35568 := by
    unfold seg48In1AccY10 seg48In1AccY9
    ring

  have ha0 : (rho 35559 + rho 35560) * (seg48In1AccX9 rho + seg48In1AccY9 rho) = rho 35561 := by
    unfold seg48In1AccX9 seg48In1AccY9
    linear_combination r2803
  have ha1 : rho 35560 * seg48In1AccX9 rho = rho 35562 := by
    unfold seg48In1AccX9
    linear_combination r2804
  have ha2 : rho 35559 * seg48In1AccY9 rho = rho 35563 := by
    unfold seg48In1AccY9
    linear_combination r2805
  have ha3 : 3021 * rho 35562 * rho 35563 = rho 35564 := by
    linear_combination r2806
  have ha4 : rho 35565 * (1 + rho 35564) = rho 35562 + rho 35563 := by
    linear_combination r2807
  have ha5 : rho 35566 * (1 - rho 35564) = rho 35561 - rho 35562 - rho 35563 := by
    linear_combination r2808
  have haddx :
      rho 35565 * (1 + 3021 * (rho 35560 * seg48In1AccX9 rho) * (rho 35559 * seg48In1AccY9 rho)) =
        rho 35560 * seg48In1AccX9 rho + rho 35559 * seg48In1AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35566 * (1 - 3021 * (rho 35560 * seg48In1AccX9 rho) * (rho 35559 * seg48In1AccY9 rho)) =
        (-1) * (rho 35560 * seg48In1AccX9 rho) - rho 35559 * seg48In1AccY9 rho +
          (seg48In1AccY9 rho - seg48In1AccX9 rho * (-1)) * (rho 35559 + rho 35560) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35566 * (1 - rho 35564) = rho 35561 - rho 35562 - rho 35563 := ha5
      _ = (-1) * rho 35562 - rho 35563 + (seg48In1AccY9 rho - seg48In1AccX9 rho * (-1)) *
          (rho 35559 + rho 35560) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX10 rho = seg48In1AccX9 rho - Bool.toZMod bit * (seg48In1AccX9 rho - rho 35565) := by
    have hd : rho 35567 = Bool.toZMod bit * (rho 35565 - seg48In1AccX9 rho) := by
      rw [← hbit]
      unfold seg48In1AccX9
      linear_combination -r2809
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY10 rho = seg48In1AccY9 rho - Bool.toZMod bit * (seg48In1AccY9 rho - rho 35566) := by
    have hd : rho 35568 = Bool.toZMod bit * (rho 35566 - seg48In1AccY9 rho) := by
      rw [← hbit]
      unfold seg48In1AccY9
      linear_combination -r2810
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35559 * rho 35560 = rho 35569 := by linear_combination r2811
  have hd1 : rho 35559 * rho 35559 = rho 35570 := by linear_combination r2812
  have hd2 : rho 35560 * rho 35560 = rho 35571 := by linear_combination r2813
  have hd3 : rho 35572 * (rho 35560 * rho 35560 + rho 35559 * rho 35559 * (-1)) =
      2 * (rho 35559 * rho 35560) := by
    rw [hd0, hd1, hd2]
    linear_combination r2814
  have hd4 : rho 35573 * (2 - (rho 35560 * rho 35560 + rho 35559 * rho 35559 * (-1))) =
      rho 35560 * rho 35560 - rho 35559 * rho 35559 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2815
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX9 rho, seg48In1AccY9 rho⟩ ⟨rho 35559, rho 35560⟩
    ⟨rho 35565, rho 35566⟩ ⟨seg48In1AccX10 rho, seg48In1AccY10 rho⟩ ⟨rho 35572, rho 35573⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2816 rho ∧ Seg48.relationRow2817 rho ∧ Seg48.relationRow2818 rho ∧ Seg48.relationRow2819 rho ∧ Seg48.relationRow2820 rho ∧ Seg48.relationRow2821 rho ∧ Seg48.relationRow2822 rho ∧ Seg48.relationRow2823 rho ∧ Seg48.relationRow2824 rho ∧ Seg48.relationRow2825 rho ∧ Seg48.relationRow2826 rho ∧ Seg48.relationRow2827 rho ∧ Seg48.relationRow2828 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828⟩

theorem seg48In1_rung10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35332 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX10 rho, seg48In1AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35572, rho 35573⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX10 rho, seg48In1AccY10 rho⟩ ⟨rho 35572, rho 35573⟩
        ⟨seg48In1AccX11 rho, seg48In1AccY11 rho⟩ ⟨rho 35585, rho 35586⟩ := by
  obtain ⟨r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828⟩ := seg48In1_rows10 rho h
  unfold Seg48.relationRow2816 at r2816

  unfold Seg48.relationRow2817 at r2817

  unfold Seg48.relationRow2818 at r2818

  unfold Seg48.relationRow2819 at r2819

  unfold Seg48.relationRow2820 at r2820

  unfold Seg48.relationRow2821 at r2821

  unfold Seg48.relationRow2822 at r2822

  unfold Seg48.relationRow2823 at r2823

  unfold Seg48.relationRow2824 at r2824

  unfold Seg48.relationRow2825 at r2825

  unfold Seg48.relationRow2826 at r2826

  unfold Seg48.relationRow2827 at r2827

  unfold Seg48.relationRow2828 at r2828

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX11 rho = seg48In1AccX10 rho + rho 35580 := by
    unfold seg48In1AccX11 seg48In1AccX10
    ring

  have hnexty : seg48In1AccY11 rho = seg48In1AccY10 rho + rho 35581 := by
    unfold seg48In1AccY11 seg48In1AccY10
    ring

  have ha0 : (rho 35572 + rho 35573) * (seg48In1AccX10 rho + seg48In1AccY10 rho) = rho 35574 := by
    unfold seg48In1AccX10 seg48In1AccY10
    linear_combination r2816
  have ha1 : rho 35573 * seg48In1AccX10 rho = rho 35575 := by
    unfold seg48In1AccX10
    linear_combination r2817
  have ha2 : rho 35572 * seg48In1AccY10 rho = rho 35576 := by
    unfold seg48In1AccY10
    linear_combination r2818
  have ha3 : 3021 * rho 35575 * rho 35576 = rho 35577 := by
    linear_combination r2819
  have ha4 : rho 35578 * (1 + rho 35577) = rho 35575 + rho 35576 := by
    linear_combination r2820
  have ha5 : rho 35579 * (1 - rho 35577) = rho 35574 - rho 35575 - rho 35576 := by
    linear_combination r2821
  have haddx :
      rho 35578 * (1 + 3021 * (rho 35573 * seg48In1AccX10 rho) * (rho 35572 * seg48In1AccY10 rho)) =
        rho 35573 * seg48In1AccX10 rho + rho 35572 * seg48In1AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35579 * (1 - 3021 * (rho 35573 * seg48In1AccX10 rho) * (rho 35572 * seg48In1AccY10 rho)) =
        (-1) * (rho 35573 * seg48In1AccX10 rho) - rho 35572 * seg48In1AccY10 rho +
          (seg48In1AccY10 rho - seg48In1AccX10 rho * (-1)) * (rho 35572 + rho 35573) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35579 * (1 - rho 35577) = rho 35574 - rho 35575 - rho 35576 := ha5
      _ = (-1) * rho 35575 - rho 35576 + (seg48In1AccY10 rho - seg48In1AccX10 rho * (-1)) *
          (rho 35572 + rho 35573) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX11 rho = seg48In1AccX10 rho - Bool.toZMod bit * (seg48In1AccX10 rho - rho 35578) := by
    have hd : rho 35580 = Bool.toZMod bit * (rho 35578 - seg48In1AccX10 rho) := by
      rw [← hbit]
      unfold seg48In1AccX10
      linear_combination -r2822
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY11 rho = seg48In1AccY10 rho - Bool.toZMod bit * (seg48In1AccY10 rho - rho 35579) := by
    have hd : rho 35581 = Bool.toZMod bit * (rho 35579 - seg48In1AccY10 rho) := by
      rw [← hbit]
      unfold seg48In1AccY10
      linear_combination -r2823
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35572 * rho 35573 = rho 35582 := by linear_combination r2824
  have hd1 : rho 35572 * rho 35572 = rho 35583 := by linear_combination r2825
  have hd2 : rho 35573 * rho 35573 = rho 35584 := by linear_combination r2826
  have hd3 : rho 35585 * (rho 35573 * rho 35573 + rho 35572 * rho 35572 * (-1)) =
      2 * (rho 35572 * rho 35573) := by
    rw [hd0, hd1, hd2]
    linear_combination r2827
  have hd4 : rho 35586 * (2 - (rho 35573 * rho 35573 + rho 35572 * rho 35572 * (-1))) =
      rho 35573 * rho 35573 - rho 35572 * rho 35572 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2828
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX10 rho, seg48In1AccY10 rho⟩ ⟨rho 35572, rho 35573⟩
    ⟨rho 35578, rho 35579⟩ ⟨seg48In1AccX11 rho, seg48In1AccY11 rho⟩ ⟨rho 35585, rho 35586⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c0 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg48In1_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg48In1_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg48In1_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg48In1_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg48In1_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg48In1_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg48In1_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg48In1_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg48In1_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg48In1_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
