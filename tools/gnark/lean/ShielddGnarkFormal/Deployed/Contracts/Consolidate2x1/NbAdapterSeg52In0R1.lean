import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1682 rho ∧ Seg52.relationRow1683 rho ∧ Seg52.relationRow1684 rho ∧ Seg52.relationRow1685 rho ∧ Seg52.relationRow1686 rho ∧ Seg52.relationRow1687 rho ∧ Seg52.relationRow1688 rho ∧ Seg52.relationRow1689 rho ∧ Seg52.relationRow1690 rho ∧ Seg52.relationRow1691 rho ∧ Seg52.relationRow1692 rho ∧ Seg52.relationRow1693 rho ∧ Seg52.relationRow1694 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694⟩

theorem seg52In0_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45819 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46071, rho 46072⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 46071, rho 46072⟩
        ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 46084, rho 46085⟩ := by
  obtain ⟨r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694⟩ := seg52In0_rows11 rho h
  unfold Seg52.relationRow1682 at r1682

  unfold Seg52.relationRow1683 at r1683

  unfold Seg52.relationRow1684 at r1684

  unfold Seg52.relationRow1685 at r1685

  unfold Seg52.relationRow1686 at r1686

  unfold Seg52.relationRow1687 at r1687

  unfold Seg52.relationRow1688 at r1688

  unfold Seg52.relationRow1689 at r1689

  unfold Seg52.relationRow1690 at r1690

  unfold Seg52.relationRow1691 at r1691

  unfold Seg52.relationRow1692 at r1692

  unfold Seg52.relationRow1693 at r1693

  unfold Seg52.relationRow1694 at r1694

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX12 rho = seg52In0AccX11 rho + rho 46079 := by
    unfold seg52In0AccX12 seg52In0AccX11
    ring

  have hnexty : seg52In0AccY12 rho = seg52In0AccY11 rho + rho 46080 := by
    unfold seg52In0AccY12 seg52In0AccY11
    ring

  have ha0 : (rho 46071 + rho 46072) * (seg52In0AccX11 rho + seg52In0AccY11 rho) = rho 46073 := by
    unfold seg52In0AccX11 seg52In0AccY11
    linear_combination r1682
  have ha1 : rho 46072 * seg52In0AccX11 rho = rho 46074 := by
    unfold seg52In0AccX11
    linear_combination r1683
  have ha2 : rho 46071 * seg52In0AccY11 rho = rho 46075 := by
    unfold seg52In0AccY11
    linear_combination r1684
  have ha3 : 3021 * rho 46074 * rho 46075 = rho 46076 := by
    linear_combination r1685
  have ha4 : rho 46077 * (1 + rho 46076) = rho 46074 + rho 46075 := by
    linear_combination r1686
  have ha5 : rho 46078 * (1 - rho 46076) = rho 46073 - rho 46074 - rho 46075 := by
    linear_combination r1687
  have haddx :
      rho 46077 * (1 + 3021 * (rho 46072 * seg52In0AccX11 rho) * (rho 46071 * seg52In0AccY11 rho)) =
        rho 46072 * seg52In0AccX11 rho + rho 46071 * seg52In0AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46078 * (1 - 3021 * (rho 46072 * seg52In0AccX11 rho) * (rho 46071 * seg52In0AccY11 rho)) =
        (-1) * (rho 46072 * seg52In0AccX11 rho) - rho 46071 * seg52In0AccY11 rho +
          (seg52In0AccY11 rho - seg52In0AccX11 rho * (-1)) * (rho 46071 + rho 46072) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46078 * (1 - rho 46076) = rho 46073 - rho 46074 - rho 46075 := ha5
      _ = (-1) * rho 46074 - rho 46075 + (seg52In0AccY11 rho - seg52In0AccX11 rho * (-1)) *
          (rho 46071 + rho 46072) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX12 rho = seg52In0AccX11 rho - Bool.toZMod bit * (seg52In0AccX11 rho - rho 46077) := by
    have hd : rho 46079 = Bool.toZMod bit * (rho 46077 - seg52In0AccX11 rho) := by
      rw [← hbit]
      unfold seg52In0AccX11
      linear_combination -r1688
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY12 rho = seg52In0AccY11 rho - Bool.toZMod bit * (seg52In0AccY11 rho - rho 46078) := by
    have hd : rho 46080 = Bool.toZMod bit * (rho 46078 - seg52In0AccY11 rho) := by
      rw [← hbit]
      unfold seg52In0AccY11
      linear_combination -r1689
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46071 * rho 46072 = rho 46081 := by linear_combination r1690
  have hd1 : rho 46071 * rho 46071 = rho 46082 := by linear_combination r1691
  have hd2 : rho 46072 * rho 46072 = rho 46083 := by linear_combination r1692
  have hd3 : rho 46084 * (rho 46072 * rho 46072 + rho 46071 * rho 46071 * (-1)) =
      2 * (rho 46071 * rho 46072) := by
    rw [hd0, hd1, hd2]
    linear_combination r1693
  have hd4 : rho 46085 * (2 - (rho 46072 * rho 46072 + rho 46071 * rho 46071 * (-1))) =
      rho 46072 * rho 46072 - rho 46071 * rho 46071 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1694
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 46071, rho 46072⟩
    ⟨rho 46077, rho 46078⟩ ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 46084, rho 46085⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1695 rho ∧ Seg52.relationRow1696 rho ∧ Seg52.relationRow1697 rho ∧ Seg52.relationRow1698 rho ∧ Seg52.relationRow1699 rho ∧ Seg52.relationRow1700 rho ∧ Seg52.relationRow1701 rho ∧ Seg52.relationRow1702 rho ∧ Seg52.relationRow1703 rho ∧ Seg52.relationRow1704 rho ∧ Seg52.relationRow1705 rho ∧ Seg52.relationRow1706 rho ∧ Seg52.relationRow1707 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707⟩

theorem seg52In0_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45820 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46084, rho 46085⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 46084, rho 46085⟩
        ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 46097, rho 46098⟩ := by
  obtain ⟨r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707⟩ := seg52In0_rows12 rho h
  unfold Seg52.relationRow1695 at r1695

  unfold Seg52.relationRow1696 at r1696

  unfold Seg52.relationRow1697 at r1697

  unfold Seg52.relationRow1698 at r1698

  unfold Seg52.relationRow1699 at r1699

  unfold Seg52.relationRow1700 at r1700

  unfold Seg52.relationRow1701 at r1701

  unfold Seg52.relationRow1702 at r1702

  unfold Seg52.relationRow1703 at r1703

  unfold Seg52.relationRow1704 at r1704

  unfold Seg52.relationRow1705 at r1705

  unfold Seg52.relationRow1706 at r1706

  unfold Seg52.relationRow1707 at r1707

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX13 rho = seg52In0AccX12 rho + rho 46092 := by
    unfold seg52In0AccX13 seg52In0AccX12
    ring

  have hnexty : seg52In0AccY13 rho = seg52In0AccY12 rho + rho 46093 := by
    unfold seg52In0AccY13 seg52In0AccY12
    ring

  have ha0 : (rho 46084 + rho 46085) * (seg52In0AccX12 rho + seg52In0AccY12 rho) = rho 46086 := by
    unfold seg52In0AccX12 seg52In0AccY12
    linear_combination r1695
  have ha1 : rho 46085 * seg52In0AccX12 rho = rho 46087 := by
    unfold seg52In0AccX12
    linear_combination r1696
  have ha2 : rho 46084 * seg52In0AccY12 rho = rho 46088 := by
    unfold seg52In0AccY12
    linear_combination r1697
  have ha3 : 3021 * rho 46087 * rho 46088 = rho 46089 := by
    linear_combination r1698
  have ha4 : rho 46090 * (1 + rho 46089) = rho 46087 + rho 46088 := by
    linear_combination r1699
  have ha5 : rho 46091 * (1 - rho 46089) = rho 46086 - rho 46087 - rho 46088 := by
    linear_combination r1700
  have haddx :
      rho 46090 * (1 + 3021 * (rho 46085 * seg52In0AccX12 rho) * (rho 46084 * seg52In0AccY12 rho)) =
        rho 46085 * seg52In0AccX12 rho + rho 46084 * seg52In0AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46091 * (1 - 3021 * (rho 46085 * seg52In0AccX12 rho) * (rho 46084 * seg52In0AccY12 rho)) =
        (-1) * (rho 46085 * seg52In0AccX12 rho) - rho 46084 * seg52In0AccY12 rho +
          (seg52In0AccY12 rho - seg52In0AccX12 rho * (-1)) * (rho 46084 + rho 46085) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46091 * (1 - rho 46089) = rho 46086 - rho 46087 - rho 46088 := ha5
      _ = (-1) * rho 46087 - rho 46088 + (seg52In0AccY12 rho - seg52In0AccX12 rho * (-1)) *
          (rho 46084 + rho 46085) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX13 rho = seg52In0AccX12 rho - Bool.toZMod bit * (seg52In0AccX12 rho - rho 46090) := by
    have hd : rho 46092 = Bool.toZMod bit * (rho 46090 - seg52In0AccX12 rho) := by
      rw [← hbit]
      unfold seg52In0AccX12
      linear_combination -r1701
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY13 rho = seg52In0AccY12 rho - Bool.toZMod bit * (seg52In0AccY12 rho - rho 46091) := by
    have hd : rho 46093 = Bool.toZMod bit * (rho 46091 - seg52In0AccY12 rho) := by
      rw [← hbit]
      unfold seg52In0AccY12
      linear_combination -r1702
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46084 * rho 46085 = rho 46094 := by linear_combination r1703
  have hd1 : rho 46084 * rho 46084 = rho 46095 := by linear_combination r1704
  have hd2 : rho 46085 * rho 46085 = rho 46096 := by linear_combination r1705
  have hd3 : rho 46097 * (rho 46085 * rho 46085 + rho 46084 * rho 46084 * (-1)) =
      2 * (rho 46084 * rho 46085) := by
    rw [hd0, hd1, hd2]
    linear_combination r1706
  have hd4 : rho 46098 * (2 - (rho 46085 * rho 46085 + rho 46084 * rho 46084 * (-1))) =
      rho 46085 * rho 46085 - rho 46084 * rho 46084 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1707
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 46084, rho 46085⟩
    ⟨rho 46090, rho 46091⟩ ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 46097, rho 46098⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1708 rho ∧ Seg52.relationRow1709 rho ∧ Seg52.relationRow1710 rho ∧ Seg52.relationRow1711 rho ∧ Seg52.relationRow1712 rho ∧ Seg52.relationRow1713 rho ∧ Seg52.relationRow1714 rho ∧ Seg52.relationRow1715 rho ∧ Seg52.relationRow1716 rho ∧ Seg52.relationRow1717 rho ∧ Seg52.relationRow1718 rho ∧ Seg52.relationRow1719 rho ∧ Seg52.relationRow1720 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720⟩

theorem seg52In0_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45821 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46097, rho 46098⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 46097, rho 46098⟩
        ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 46110, rho 46111⟩ := by
  obtain ⟨r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720⟩ := seg52In0_rows13 rho h
  unfold Seg52.relationRow1708 at r1708

  unfold Seg52.relationRow1709 at r1709

  unfold Seg52.relationRow1710 at r1710

  unfold Seg52.relationRow1711 at r1711

  unfold Seg52.relationRow1712 at r1712

  unfold Seg52.relationRow1713 at r1713

  unfold Seg52.relationRow1714 at r1714

  unfold Seg52.relationRow1715 at r1715

  unfold Seg52.relationRow1716 at r1716

  unfold Seg52.relationRow1717 at r1717

  unfold Seg52.relationRow1718 at r1718

  unfold Seg52.relationRow1719 at r1719

  unfold Seg52.relationRow1720 at r1720

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX14 rho = seg52In0AccX13 rho + rho 46105 := by
    unfold seg52In0AccX14 seg52In0AccX13
    ring

  have hnexty : seg52In0AccY14 rho = seg52In0AccY13 rho + rho 46106 := by
    unfold seg52In0AccY14 seg52In0AccY13
    ring

  have ha0 : (rho 46097 + rho 46098) * (seg52In0AccX13 rho + seg52In0AccY13 rho) = rho 46099 := by
    unfold seg52In0AccX13 seg52In0AccY13
    linear_combination r1708
  have ha1 : rho 46098 * seg52In0AccX13 rho = rho 46100 := by
    unfold seg52In0AccX13
    linear_combination r1709
  have ha2 : rho 46097 * seg52In0AccY13 rho = rho 46101 := by
    unfold seg52In0AccY13
    linear_combination r1710
  have ha3 : 3021 * rho 46100 * rho 46101 = rho 46102 := by
    linear_combination r1711
  have ha4 : rho 46103 * (1 + rho 46102) = rho 46100 + rho 46101 := by
    linear_combination r1712
  have ha5 : rho 46104 * (1 - rho 46102) = rho 46099 - rho 46100 - rho 46101 := by
    linear_combination r1713
  have haddx :
      rho 46103 * (1 + 3021 * (rho 46098 * seg52In0AccX13 rho) * (rho 46097 * seg52In0AccY13 rho)) =
        rho 46098 * seg52In0AccX13 rho + rho 46097 * seg52In0AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46104 * (1 - 3021 * (rho 46098 * seg52In0AccX13 rho) * (rho 46097 * seg52In0AccY13 rho)) =
        (-1) * (rho 46098 * seg52In0AccX13 rho) - rho 46097 * seg52In0AccY13 rho +
          (seg52In0AccY13 rho - seg52In0AccX13 rho * (-1)) * (rho 46097 + rho 46098) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46104 * (1 - rho 46102) = rho 46099 - rho 46100 - rho 46101 := ha5
      _ = (-1) * rho 46100 - rho 46101 + (seg52In0AccY13 rho - seg52In0AccX13 rho * (-1)) *
          (rho 46097 + rho 46098) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX14 rho = seg52In0AccX13 rho - Bool.toZMod bit * (seg52In0AccX13 rho - rho 46103) := by
    have hd : rho 46105 = Bool.toZMod bit * (rho 46103 - seg52In0AccX13 rho) := by
      rw [← hbit]
      unfold seg52In0AccX13
      linear_combination -r1714
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY14 rho = seg52In0AccY13 rho - Bool.toZMod bit * (seg52In0AccY13 rho - rho 46104) := by
    have hd : rho 46106 = Bool.toZMod bit * (rho 46104 - seg52In0AccY13 rho) := by
      rw [← hbit]
      unfold seg52In0AccY13
      linear_combination -r1715
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46097 * rho 46098 = rho 46107 := by linear_combination r1716
  have hd1 : rho 46097 * rho 46097 = rho 46108 := by linear_combination r1717
  have hd2 : rho 46098 * rho 46098 = rho 46109 := by linear_combination r1718
  have hd3 : rho 46110 * (rho 46098 * rho 46098 + rho 46097 * rho 46097 * (-1)) =
      2 * (rho 46097 * rho 46098) := by
    rw [hd0, hd1, hd2]
    linear_combination r1719
  have hd4 : rho 46111 * (2 - (rho 46098 * rho 46098 + rho 46097 * rho 46097 * (-1))) =
      rho 46098 * rho 46098 - rho 46097 * rho 46097 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1720
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 46097, rho 46098⟩
    ⟨rho 46103, rho 46104⟩ ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 46110, rho 46111⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1721 rho ∧ Seg52.relationRow1722 rho ∧ Seg52.relationRow1723 rho ∧ Seg52.relationRow1724 rho ∧ Seg52.relationRow1725 rho ∧ Seg52.relationRow1726 rho ∧ Seg52.relationRow1727 rho ∧ Seg52.relationRow1728 rho ∧ Seg52.relationRow1729 rho ∧ Seg52.relationRow1730 rho ∧ Seg52.relationRow1731 rho ∧ Seg52.relationRow1732 rho ∧ Seg52.relationRow1733 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733⟩

theorem seg52In0_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45822 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46110, rho 46111⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 46110, rho 46111⟩
        ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 46123, rho 46124⟩ := by
  obtain ⟨r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733⟩ := seg52In0_rows14 rho h
  unfold Seg52.relationRow1721 at r1721

  unfold Seg52.relationRow1722 at r1722

  unfold Seg52.relationRow1723 at r1723

  unfold Seg52.relationRow1724 at r1724

  unfold Seg52.relationRow1725 at r1725

  unfold Seg52.relationRow1726 at r1726

  unfold Seg52.relationRow1727 at r1727

  unfold Seg52.relationRow1728 at r1728

  unfold Seg52.relationRow1729 at r1729

  unfold Seg52.relationRow1730 at r1730

  unfold Seg52.relationRow1731 at r1731

  unfold Seg52.relationRow1732 at r1732

  unfold Seg52.relationRow1733 at r1733

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX15 rho = seg52In0AccX14 rho + rho 46118 := by
    unfold seg52In0AccX15 seg52In0AccX14
    ring

  have hnexty : seg52In0AccY15 rho = seg52In0AccY14 rho + rho 46119 := by
    unfold seg52In0AccY15 seg52In0AccY14
    ring

  have ha0 : (rho 46110 + rho 46111) * (seg52In0AccX14 rho + seg52In0AccY14 rho) = rho 46112 := by
    unfold seg52In0AccX14 seg52In0AccY14
    linear_combination r1721
  have ha1 : rho 46111 * seg52In0AccX14 rho = rho 46113 := by
    unfold seg52In0AccX14
    linear_combination r1722
  have ha2 : rho 46110 * seg52In0AccY14 rho = rho 46114 := by
    unfold seg52In0AccY14
    linear_combination r1723
  have ha3 : 3021 * rho 46113 * rho 46114 = rho 46115 := by
    linear_combination r1724
  have ha4 : rho 46116 * (1 + rho 46115) = rho 46113 + rho 46114 := by
    linear_combination r1725
  have ha5 : rho 46117 * (1 - rho 46115) = rho 46112 - rho 46113 - rho 46114 := by
    linear_combination r1726
  have haddx :
      rho 46116 * (1 + 3021 * (rho 46111 * seg52In0AccX14 rho) * (rho 46110 * seg52In0AccY14 rho)) =
        rho 46111 * seg52In0AccX14 rho + rho 46110 * seg52In0AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46117 * (1 - 3021 * (rho 46111 * seg52In0AccX14 rho) * (rho 46110 * seg52In0AccY14 rho)) =
        (-1) * (rho 46111 * seg52In0AccX14 rho) - rho 46110 * seg52In0AccY14 rho +
          (seg52In0AccY14 rho - seg52In0AccX14 rho * (-1)) * (rho 46110 + rho 46111) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46117 * (1 - rho 46115) = rho 46112 - rho 46113 - rho 46114 := ha5
      _ = (-1) * rho 46113 - rho 46114 + (seg52In0AccY14 rho - seg52In0AccX14 rho * (-1)) *
          (rho 46110 + rho 46111) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX15 rho = seg52In0AccX14 rho - Bool.toZMod bit * (seg52In0AccX14 rho - rho 46116) := by
    have hd : rho 46118 = Bool.toZMod bit * (rho 46116 - seg52In0AccX14 rho) := by
      rw [← hbit]
      unfold seg52In0AccX14
      linear_combination -r1727
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY15 rho = seg52In0AccY14 rho - Bool.toZMod bit * (seg52In0AccY14 rho - rho 46117) := by
    have hd : rho 46119 = Bool.toZMod bit * (rho 46117 - seg52In0AccY14 rho) := by
      rw [← hbit]
      unfold seg52In0AccY14
      linear_combination -r1728
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46110 * rho 46111 = rho 46120 := by linear_combination r1729
  have hd1 : rho 46110 * rho 46110 = rho 46121 := by linear_combination r1730
  have hd2 : rho 46111 * rho 46111 = rho 46122 := by linear_combination r1731
  have hd3 : rho 46123 * (rho 46111 * rho 46111 + rho 46110 * rho 46110 * (-1)) =
      2 * (rho 46110 * rho 46111) := by
    rw [hd0, hd1, hd2]
    linear_combination r1732
  have hd4 : rho 46124 * (2 - (rho 46111 * rho 46111 + rho 46110 * rho 46110 * (-1))) =
      rho 46111 * rho 46111 - rho 46110 * rho 46110 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1733
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 46110, rho 46111⟩
    ⟨rho 46116, rho 46117⟩ ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 46123, rho 46124⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1734 rho ∧ Seg52.relationRow1735 rho ∧ Seg52.relationRow1736 rho ∧ Seg52.relationRow1737 rho ∧ Seg52.relationRow1738 rho ∧ Seg52.relationRow1739 rho ∧ Seg52.relationRow1740 rho ∧ Seg52.relationRow1741 rho ∧ Seg52.relationRow1742 rho ∧ Seg52.relationRow1743 rho ∧ Seg52.relationRow1744 rho ∧ Seg52.relationRow1745 rho ∧ Seg52.relationRow1746 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, r1744, r1745, r1746, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, r1744, r1745, r1746⟩

theorem seg52In0_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45823 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46123, rho 46124⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 46123, rho 46124⟩
        ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 46136, rho 46137⟩ := by
  obtain ⟨r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, r1744, r1745, r1746⟩ := seg52In0_rows15 rho h
  unfold Seg52.relationRow1734 at r1734

  unfold Seg52.relationRow1735 at r1735

  unfold Seg52.relationRow1736 at r1736

  unfold Seg52.relationRow1737 at r1737

  unfold Seg52.relationRow1738 at r1738

  unfold Seg52.relationRow1739 at r1739

  unfold Seg52.relationRow1740 at r1740

  unfold Seg52.relationRow1741 at r1741

  unfold Seg52.relationRow1742 at r1742

  unfold Seg52.relationRow1743 at r1743

  unfold Seg52.relationRow1744 at r1744

  unfold Seg52.relationRow1745 at r1745

  unfold Seg52.relationRow1746 at r1746

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX16 rho = seg52In0AccX15 rho + rho 46131 := by
    unfold seg52In0AccX16 seg52In0AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 45936 13]

    ring

  have hnexty : seg52In0AccY16 rho = seg52In0AccY15 rho + rho 46132 := by
    unfold seg52In0AccY16 seg52In0AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 45937 13]

    ring

  have ha0 : (rho 46123 + rho 46124) * (seg52In0AccX15 rho + seg52In0AccY15 rho) = rho 46125 := by
    unfold seg52In0AccX15 seg52In0AccY15
    linear_combination r1734
  have ha1 : rho 46124 * seg52In0AccX15 rho = rho 46126 := by
    unfold seg52In0AccX15
    linear_combination r1735
  have ha2 : rho 46123 * seg52In0AccY15 rho = rho 46127 := by
    unfold seg52In0AccY15
    linear_combination r1736
  have ha3 : 3021 * rho 46126 * rho 46127 = rho 46128 := by
    linear_combination r1737
  have ha4 : rho 46129 * (1 + rho 46128) = rho 46126 + rho 46127 := by
    linear_combination r1738
  have ha5 : rho 46130 * (1 - rho 46128) = rho 46125 - rho 46126 - rho 46127 := by
    linear_combination r1739
  have haddx :
      rho 46129 * (1 + 3021 * (rho 46124 * seg52In0AccX15 rho) * (rho 46123 * seg52In0AccY15 rho)) =
        rho 46124 * seg52In0AccX15 rho + rho 46123 * seg52In0AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46130 * (1 - 3021 * (rho 46124 * seg52In0AccX15 rho) * (rho 46123 * seg52In0AccY15 rho)) =
        (-1) * (rho 46124 * seg52In0AccX15 rho) - rho 46123 * seg52In0AccY15 rho +
          (seg52In0AccY15 rho - seg52In0AccX15 rho * (-1)) * (rho 46123 + rho 46124) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46130 * (1 - rho 46128) = rho 46125 - rho 46126 - rho 46127 := ha5
      _ = (-1) * rho 46126 - rho 46127 + (seg52In0AccY15 rho - seg52In0AccX15 rho * (-1)) *
          (rho 46123 + rho 46124) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX16 rho = seg52In0AccX15 rho - Bool.toZMod bit * (seg52In0AccX15 rho - rho 46129) := by
    have hd : rho 46131 = Bool.toZMod bit * (rho 46129 - seg52In0AccX15 rho) := by
      rw [← hbit]
      unfold seg52In0AccX15
      linear_combination -r1740
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY16 rho = seg52In0AccY15 rho - Bool.toZMod bit * (seg52In0AccY15 rho - rho 46130) := by
    have hd : rho 46132 = Bool.toZMod bit * (rho 46130 - seg52In0AccY15 rho) := by
      rw [← hbit]
      unfold seg52In0AccY15
      linear_combination -r1741
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46123 * rho 46124 = rho 46133 := by linear_combination r1742
  have hd1 : rho 46123 * rho 46123 = rho 46134 := by linear_combination r1743
  have hd2 : rho 46124 * rho 46124 = rho 46135 := by linear_combination r1744
  have hd3 : rho 46136 * (rho 46124 * rho 46124 + rho 46123 * rho 46123 * (-1)) =
      2 * (rho 46123 * rho 46124) := by
    rw [hd0, hd1, hd2]
    linear_combination r1745
  have hd4 : rho 46137 * (2 - (rho 46124 * rho 46124 + rho 46123 * rho 46123 * (-1))) =
      rho 46124 * rho 46124 - rho 46123 * rho 46123 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1746
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 46123, rho 46124⟩
    ⟨rho 46129, rho 46130⟩ ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 46136, rho 46137⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1747 rho ∧ Seg52.relationRow1748 rho ∧ Seg52.relationRow1749 rho ∧ Seg52.relationRow1750 rho ∧ Seg52.relationRow1751 rho ∧ Seg52.relationRow1752 rho ∧ Seg52.relationRow1753 rho ∧ Seg52.relationRow1754 rho ∧ Seg52.relationRow1755 rho ∧ Seg52.relationRow1756 rho ∧ Seg52.relationRow1757 rho ∧ Seg52.relationRow1758 rho ∧ Seg52.relationRow1759 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩

  exact ⟨r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩

theorem seg52In0_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45824 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46136, rho 46137⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 46136, rho 46137⟩
        ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 46149, rho 46150⟩ := by
  obtain ⟨r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩ := seg52In0_rows16 rho h
  unfold Seg52.relationRow1747 at r1747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1747

  unfold Seg52.relationRow1748 at r1748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1748

  unfold Seg52.relationRow1749 at r1749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1749

  unfold Seg52.relationRow1750 at r1750

  unfold Seg52.relationRow1751 at r1751

  unfold Seg52.relationRow1752 at r1752

  unfold Seg52.relationRow1753 at r1753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1753

  unfold Seg52.relationRow1754 at r1754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1754

  unfold Seg52.relationRow1755 at r1755

  unfold Seg52.relationRow1756 at r1756

  unfold Seg52.relationRow1757 at r1757

  unfold Seg52.relationRow1758 at r1758

  unfold Seg52.relationRow1759 at r1759

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX17 rho = seg52In0AccX16 rho + rho 46144 := by
    unfold seg52In0AccX17 seg52In0AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 16]

    ring

  have hnexty : seg52In0AccY17 rho = seg52In0AccY16 rho + rho 46145 := by
    unfold seg52In0AccY17 seg52In0AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 16]

    ring

  have ha0 : (rho 46136 + rho 46137) * (seg52In0AccX16 rho + seg52In0AccY16 rho) = rho 46138 := by
    unfold seg52In0AccX16 seg52In0AccY16
    linear_combination r1747
  have ha1 : rho 46137 * seg52In0AccX16 rho = rho 46139 := by
    unfold seg52In0AccX16
    linear_combination r1748
  have ha2 : rho 46136 * seg52In0AccY16 rho = rho 46140 := by
    unfold seg52In0AccY16
    linear_combination r1749
  have ha3 : 3021 * rho 46139 * rho 46140 = rho 46141 := by
    linear_combination r1750
  have ha4 : rho 46142 * (1 + rho 46141) = rho 46139 + rho 46140 := by
    linear_combination r1751
  have ha5 : rho 46143 * (1 - rho 46141) = rho 46138 - rho 46139 - rho 46140 := by
    linear_combination r1752
  have haddx :
      rho 46142 * (1 + 3021 * (rho 46137 * seg52In0AccX16 rho) * (rho 46136 * seg52In0AccY16 rho)) =
        rho 46137 * seg52In0AccX16 rho + rho 46136 * seg52In0AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46143 * (1 - 3021 * (rho 46137 * seg52In0AccX16 rho) * (rho 46136 * seg52In0AccY16 rho)) =
        (-1) * (rho 46137 * seg52In0AccX16 rho) - rho 46136 * seg52In0AccY16 rho +
          (seg52In0AccY16 rho - seg52In0AccX16 rho * (-1)) * (rho 46136 + rho 46137) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46143 * (1 - rho 46141) = rho 46138 - rho 46139 - rho 46140 := ha5
      _ = (-1) * rho 46139 - rho 46140 + (seg52In0AccY16 rho - seg52In0AccX16 rho * (-1)) *
          (rho 46136 + rho 46137) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX17 rho = seg52In0AccX16 rho - Bool.toZMod bit * (seg52In0AccX16 rho - rho 46142) := by
    have hd : rho 46144 = Bool.toZMod bit * (rho 46142 - seg52In0AccX16 rho) := by
      rw [← hbit]
      unfold seg52In0AccX16
      linear_combination -r1753
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY17 rho = seg52In0AccY16 rho - Bool.toZMod bit * (seg52In0AccY16 rho - rho 46143) := by
    have hd : rho 46145 = Bool.toZMod bit * (rho 46143 - seg52In0AccY16 rho) := by
      rw [← hbit]
      unfold seg52In0AccY16
      linear_combination -r1754
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46136 * rho 46137 = rho 46146 := by linear_combination r1755
  have hd1 : rho 46136 * rho 46136 = rho 46147 := by linear_combination r1756
  have hd2 : rho 46137 * rho 46137 = rho 46148 := by linear_combination r1757
  have hd3 : rho 46149 * (rho 46137 * rho 46137 + rho 46136 * rho 46136 * (-1)) =
      2 * (rho 46136 * rho 46137) := by
    rw [hd0, hd1, hd2]
    linear_combination r1758
  have hd4 : rho 46150 * (2 - (rho 46137 * rho 46137 + rho 46136 * rho 46136 * (-1))) =
      rho 46137 * rho 46137 - rho 46136 * rho 46136 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1759
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 46136, rho 46137⟩
    ⟨rho 46142, rho 46143⟩ ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 46149, rho 46150⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1760 rho ∧ Seg52.relationRow1761 rho ∧ Seg52.relationRow1762 rho ∧ Seg52.relationRow1763 rho ∧ Seg52.relationRow1764 rho ∧ Seg52.relationRow1765 rho ∧ Seg52.relationRow1766 rho ∧ Seg52.relationRow1767 rho ∧ Seg52.relationRow1768 rho ∧ Seg52.relationRow1769 rho ∧ Seg52.relationRow1770 rho ∧ Seg52.relationRow1771 rho ∧ Seg52.relationRow1772 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772⟩

theorem seg52In0_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45825 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46149, rho 46150⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 46149, rho 46150⟩
        ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 46162, rho 46163⟩ := by
  obtain ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772⟩ := seg52In0_rows17 rho h
  unfold Seg52.relationRow1760 at r1760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1760

  unfold Seg52.relationRow1761 at r1761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1761

  unfold Seg52.relationRow1762 at r1762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1762

  unfold Seg52.relationRow1763 at r1763

  unfold Seg52.relationRow1764 at r1764

  unfold Seg52.relationRow1765 at r1765

  unfold Seg52.relationRow1766 at r1766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1766

  unfold Seg52.relationRow1767 at r1767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1767

  unfold Seg52.relationRow1768 at r1768

  unfold Seg52.relationRow1769 at r1769

  unfold Seg52.relationRow1770 at r1770

  unfold Seg52.relationRow1771 at r1771

  unfold Seg52.relationRow1772 at r1772

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX18 rho = seg52In0AccX17 rho + rho 46157 := by
    unfold seg52In0AccX18 seg52In0AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 17]

    ring

  have hnexty : seg52In0AccY18 rho = seg52In0AccY17 rho + rho 46158 := by
    unfold seg52In0AccY18 seg52In0AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 17]

    ring

  have ha0 : (rho 46149 + rho 46150) * (seg52In0AccX17 rho + seg52In0AccY17 rho) = rho 46151 := by
    unfold seg52In0AccX17 seg52In0AccY17
    linear_combination r1760
  have ha1 : rho 46150 * seg52In0AccX17 rho = rho 46152 := by
    unfold seg52In0AccX17
    linear_combination r1761
  have ha2 : rho 46149 * seg52In0AccY17 rho = rho 46153 := by
    unfold seg52In0AccY17
    linear_combination r1762
  have ha3 : 3021 * rho 46152 * rho 46153 = rho 46154 := by
    linear_combination r1763
  have ha4 : rho 46155 * (1 + rho 46154) = rho 46152 + rho 46153 := by
    linear_combination r1764
  have ha5 : rho 46156 * (1 - rho 46154) = rho 46151 - rho 46152 - rho 46153 := by
    linear_combination r1765
  have haddx :
      rho 46155 * (1 + 3021 * (rho 46150 * seg52In0AccX17 rho) * (rho 46149 * seg52In0AccY17 rho)) =
        rho 46150 * seg52In0AccX17 rho + rho 46149 * seg52In0AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46156 * (1 - 3021 * (rho 46150 * seg52In0AccX17 rho) * (rho 46149 * seg52In0AccY17 rho)) =
        (-1) * (rho 46150 * seg52In0AccX17 rho) - rho 46149 * seg52In0AccY17 rho +
          (seg52In0AccY17 rho - seg52In0AccX17 rho * (-1)) * (rho 46149 + rho 46150) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46156 * (1 - rho 46154) = rho 46151 - rho 46152 - rho 46153 := ha5
      _ = (-1) * rho 46152 - rho 46153 + (seg52In0AccY17 rho - seg52In0AccX17 rho * (-1)) *
          (rho 46149 + rho 46150) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX18 rho = seg52In0AccX17 rho - Bool.toZMod bit * (seg52In0AccX17 rho - rho 46155) := by
    have hd : rho 46157 = Bool.toZMod bit * (rho 46155 - seg52In0AccX17 rho) := by
      rw [← hbit]
      unfold seg52In0AccX17
      linear_combination -r1766
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY18 rho = seg52In0AccY17 rho - Bool.toZMod bit * (seg52In0AccY17 rho - rho 46156) := by
    have hd : rho 46158 = Bool.toZMod bit * (rho 46156 - seg52In0AccY17 rho) := by
      rw [← hbit]
      unfold seg52In0AccY17
      linear_combination -r1767
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46149 * rho 46150 = rho 46159 := by linear_combination r1768
  have hd1 : rho 46149 * rho 46149 = rho 46160 := by linear_combination r1769
  have hd2 : rho 46150 * rho 46150 = rho 46161 := by linear_combination r1770
  have hd3 : rho 46162 * (rho 46150 * rho 46150 + rho 46149 * rho 46149 * (-1)) =
      2 * (rho 46149 * rho 46150) := by
    rw [hd0, hd1, hd2]
    linear_combination r1771
  have hd4 : rho 46163 * (2 - (rho 46150 * rho 46150 + rho 46149 * rho 46149 * (-1))) =
      rho 46150 * rho 46150 - rho 46149 * rho 46149 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1772
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 46149, rho 46150⟩
    ⟨rho 46155, rho 46156⟩ ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 46162, rho 46163⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1773 rho ∧ Seg52.relationRow1774 rho ∧ Seg52.relationRow1775 rho ∧ Seg52.relationRow1776 rho ∧ Seg52.relationRow1777 rho ∧ Seg52.relationRow1778 rho ∧ Seg52.relationRow1779 rho ∧ Seg52.relationRow1780 rho ∧ Seg52.relationRow1781 rho ∧ Seg52.relationRow1782 rho ∧ Seg52.relationRow1783 rho ∧ Seg52.relationRow1784 rho ∧ Seg52.relationRow1785 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785⟩

theorem seg52In0_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45826 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46162, rho 46163⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 46162, rho 46163⟩
        ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 46175, rho 46176⟩ := by
  obtain ⟨r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785⟩ := seg52In0_rows18 rho h
  unfold Seg52.relationRow1773 at r1773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1773

  unfold Seg52.relationRow1774 at r1774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1774

  unfold Seg52.relationRow1775 at r1775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1775

  unfold Seg52.relationRow1776 at r1776

  unfold Seg52.relationRow1777 at r1777

  unfold Seg52.relationRow1778 at r1778

  unfold Seg52.relationRow1779 at r1779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1779

  unfold Seg52.relationRow1780 at r1780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1780

  unfold Seg52.relationRow1781 at r1781

  unfold Seg52.relationRow1782 at r1782

  unfold Seg52.relationRow1783 at r1783

  unfold Seg52.relationRow1784 at r1784

  unfold Seg52.relationRow1785 at r1785

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX19 rho = seg52In0AccX18 rho + rho 46170 := by
    unfold seg52In0AccX19 seg52In0AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 18]

    ring

  have hnexty : seg52In0AccY19 rho = seg52In0AccY18 rho + rho 46171 := by
    unfold seg52In0AccY19 seg52In0AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 18]

    ring

  have ha0 : (rho 46162 + rho 46163) * (seg52In0AccX18 rho + seg52In0AccY18 rho) = rho 46164 := by
    unfold seg52In0AccX18 seg52In0AccY18
    linear_combination r1773
  have ha1 : rho 46163 * seg52In0AccX18 rho = rho 46165 := by
    unfold seg52In0AccX18
    linear_combination r1774
  have ha2 : rho 46162 * seg52In0AccY18 rho = rho 46166 := by
    unfold seg52In0AccY18
    linear_combination r1775
  have ha3 : 3021 * rho 46165 * rho 46166 = rho 46167 := by
    linear_combination r1776
  have ha4 : rho 46168 * (1 + rho 46167) = rho 46165 + rho 46166 := by
    linear_combination r1777
  have ha5 : rho 46169 * (1 - rho 46167) = rho 46164 - rho 46165 - rho 46166 := by
    linear_combination r1778
  have haddx :
      rho 46168 * (1 + 3021 * (rho 46163 * seg52In0AccX18 rho) * (rho 46162 * seg52In0AccY18 rho)) =
        rho 46163 * seg52In0AccX18 rho + rho 46162 * seg52In0AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46169 * (1 - 3021 * (rho 46163 * seg52In0AccX18 rho) * (rho 46162 * seg52In0AccY18 rho)) =
        (-1) * (rho 46163 * seg52In0AccX18 rho) - rho 46162 * seg52In0AccY18 rho +
          (seg52In0AccY18 rho - seg52In0AccX18 rho * (-1)) * (rho 46162 + rho 46163) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46169 * (1 - rho 46167) = rho 46164 - rho 46165 - rho 46166 := ha5
      _ = (-1) * rho 46165 - rho 46166 + (seg52In0AccY18 rho - seg52In0AccX18 rho * (-1)) *
          (rho 46162 + rho 46163) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX19 rho = seg52In0AccX18 rho - Bool.toZMod bit * (seg52In0AccX18 rho - rho 46168) := by
    have hd : rho 46170 = Bool.toZMod bit * (rho 46168 - seg52In0AccX18 rho) := by
      rw [← hbit]
      unfold seg52In0AccX18
      linear_combination -r1779
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY19 rho = seg52In0AccY18 rho - Bool.toZMod bit * (seg52In0AccY18 rho - rho 46169) := by
    have hd : rho 46171 = Bool.toZMod bit * (rho 46169 - seg52In0AccY18 rho) := by
      rw [← hbit]
      unfold seg52In0AccY18
      linear_combination -r1780
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46162 * rho 46163 = rho 46172 := by linear_combination r1781
  have hd1 : rho 46162 * rho 46162 = rho 46173 := by linear_combination r1782
  have hd2 : rho 46163 * rho 46163 = rho 46174 := by linear_combination r1783
  have hd3 : rho 46175 * (rho 46163 * rho 46163 + rho 46162 * rho 46162 * (-1)) =
      2 * (rho 46162 * rho 46163) := by
    rw [hd0, hd1, hd2]
    linear_combination r1784
  have hd4 : rho 46176 * (2 - (rho 46163 * rho 46163 + rho 46162 * rho 46162 * (-1))) =
      rho 46163 * rho 46163 - rho 46162 * rho 46162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1785
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 46162, rho 46163⟩
    ⟨rho 46168, rho 46169⟩ ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 46175, rho 46176⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1786 rho ∧ Seg52.relationRow1787 rho ∧ Seg52.relationRow1788 rho ∧ Seg52.relationRow1789 rho ∧ Seg52.relationRow1790 rho ∧ Seg52.relationRow1791 rho ∧ Seg52.relationRow1792 rho ∧ Seg52.relationRow1793 rho ∧ Seg52.relationRow1794 rho ∧ Seg52.relationRow1795 rho ∧ Seg52.relationRow1796 rho ∧ Seg52.relationRow1797 rho ∧ Seg52.relationRow1798 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798⟩

theorem seg52In0_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45827 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46175, rho 46176⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 46175, rho 46176⟩
        ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 46188, rho 46189⟩ := by
  obtain ⟨r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798⟩ := seg52In0_rows19 rho h
  unfold Seg52.relationRow1786 at r1786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1786

  unfold Seg52.relationRow1787 at r1787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1787

  unfold Seg52.relationRow1788 at r1788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1788

  unfold Seg52.relationRow1789 at r1789

  unfold Seg52.relationRow1790 at r1790

  unfold Seg52.relationRow1791 at r1791

  unfold Seg52.relationRow1792 at r1792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1792

  unfold Seg52.relationRow1793 at r1793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1793

  unfold Seg52.relationRow1794 at r1794

  unfold Seg52.relationRow1795 at r1795

  unfold Seg52.relationRow1796 at r1796

  unfold Seg52.relationRow1797 at r1797

  unfold Seg52.relationRow1798 at r1798

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX20 rho = seg52In0AccX19 rho + rho 46183 := by
    unfold seg52In0AccX20 seg52In0AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 19]

    ring

  have hnexty : seg52In0AccY20 rho = seg52In0AccY19 rho + rho 46184 := by
    unfold seg52In0AccY20 seg52In0AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 19]

    ring

  have ha0 : (rho 46175 + rho 46176) * (seg52In0AccX19 rho + seg52In0AccY19 rho) = rho 46177 := by
    unfold seg52In0AccX19 seg52In0AccY19
    linear_combination r1786
  have ha1 : rho 46176 * seg52In0AccX19 rho = rho 46178 := by
    unfold seg52In0AccX19
    linear_combination r1787
  have ha2 : rho 46175 * seg52In0AccY19 rho = rho 46179 := by
    unfold seg52In0AccY19
    linear_combination r1788
  have ha3 : 3021 * rho 46178 * rho 46179 = rho 46180 := by
    linear_combination r1789
  have ha4 : rho 46181 * (1 + rho 46180) = rho 46178 + rho 46179 := by
    linear_combination r1790
  have ha5 : rho 46182 * (1 - rho 46180) = rho 46177 - rho 46178 - rho 46179 := by
    linear_combination r1791
  have haddx :
      rho 46181 * (1 + 3021 * (rho 46176 * seg52In0AccX19 rho) * (rho 46175 * seg52In0AccY19 rho)) =
        rho 46176 * seg52In0AccX19 rho + rho 46175 * seg52In0AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46182 * (1 - 3021 * (rho 46176 * seg52In0AccX19 rho) * (rho 46175 * seg52In0AccY19 rho)) =
        (-1) * (rho 46176 * seg52In0AccX19 rho) - rho 46175 * seg52In0AccY19 rho +
          (seg52In0AccY19 rho - seg52In0AccX19 rho * (-1)) * (rho 46175 + rho 46176) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46182 * (1 - rho 46180) = rho 46177 - rho 46178 - rho 46179 := ha5
      _ = (-1) * rho 46178 - rho 46179 + (seg52In0AccY19 rho - seg52In0AccX19 rho * (-1)) *
          (rho 46175 + rho 46176) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX20 rho = seg52In0AccX19 rho - Bool.toZMod bit * (seg52In0AccX19 rho - rho 46181) := by
    have hd : rho 46183 = Bool.toZMod bit * (rho 46181 - seg52In0AccX19 rho) := by
      rw [← hbit]
      unfold seg52In0AccX19
      linear_combination -r1792
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY20 rho = seg52In0AccY19 rho - Bool.toZMod bit * (seg52In0AccY19 rho - rho 46182) := by
    have hd : rho 46184 = Bool.toZMod bit * (rho 46182 - seg52In0AccY19 rho) := by
      rw [← hbit]
      unfold seg52In0AccY19
      linear_combination -r1793
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46175 * rho 46176 = rho 46185 := by linear_combination r1794
  have hd1 : rho 46175 * rho 46175 = rho 46186 := by linear_combination r1795
  have hd2 : rho 46176 * rho 46176 = rho 46187 := by linear_combination r1796
  have hd3 : rho 46188 * (rho 46176 * rho 46176 + rho 46175 * rho 46175 * (-1)) =
      2 * (rho 46175 * rho 46176) := by
    rw [hd0, hd1, hd2]
    linear_combination r1797
  have hd4 : rho 46189 * (2 - (rho 46176 * rho 46176 + rho 46175 * rho 46175 * (-1))) =
      rho 46176 * rho 46176 - rho 46175 * rho 46175 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1798
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 46175, rho 46176⟩
    ⟨rho 46181, rho 46182⟩ ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 46188, rho 46189⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1799 rho ∧ Seg52.relationRow1800 rho ∧ Seg52.relationRow1801 rho ∧ Seg52.relationRow1802 rho ∧ Seg52.relationRow1803 rho ∧ Seg52.relationRow1804 rho ∧ Seg52.relationRow1805 rho ∧ Seg52.relationRow1806 rho ∧ Seg52.relationRow1807 rho ∧ Seg52.relationRow1808 rho ∧ Seg52.relationRow1809 rho ∧ Seg52.relationRow1810 rho ∧ Seg52.relationRow1811 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811⟩

theorem seg52In0_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45828 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46188, rho 46189⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 46188, rho 46189⟩
        ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 46201, rho 46202⟩ := by
  obtain ⟨r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811⟩ := seg52In0_rows20 rho h
  unfold Seg52.relationRow1799 at r1799

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1799

  unfold Seg52.relationRow1800 at r1800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1800

  unfold Seg52.relationRow1801 at r1801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1801

  unfold Seg52.relationRow1802 at r1802

  unfold Seg52.relationRow1803 at r1803

  unfold Seg52.relationRow1804 at r1804

  unfold Seg52.relationRow1805 at r1805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1805

  unfold Seg52.relationRow1806 at r1806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1806

  unfold Seg52.relationRow1807 at r1807

  unfold Seg52.relationRow1808 at r1808

  unfold Seg52.relationRow1809 at r1809

  unfold Seg52.relationRow1810 at r1810

  unfold Seg52.relationRow1811 at r1811

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX21 rho = seg52In0AccX20 rho + rho 46196 := by
    unfold seg52In0AccX21 seg52In0AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 20]

    ring

  have hnexty : seg52In0AccY21 rho = seg52In0AccY20 rho + rho 46197 := by
    unfold seg52In0AccY21 seg52In0AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 20]

    ring

  have ha0 : (rho 46188 + rho 46189) * (seg52In0AccX20 rho + seg52In0AccY20 rho) = rho 46190 := by
    unfold seg52In0AccX20 seg52In0AccY20
    linear_combination r1799
  have ha1 : rho 46189 * seg52In0AccX20 rho = rho 46191 := by
    unfold seg52In0AccX20
    linear_combination r1800
  have ha2 : rho 46188 * seg52In0AccY20 rho = rho 46192 := by
    unfold seg52In0AccY20
    linear_combination r1801
  have ha3 : 3021 * rho 46191 * rho 46192 = rho 46193 := by
    linear_combination r1802
  have ha4 : rho 46194 * (1 + rho 46193) = rho 46191 + rho 46192 := by
    linear_combination r1803
  have ha5 : rho 46195 * (1 - rho 46193) = rho 46190 - rho 46191 - rho 46192 := by
    linear_combination r1804
  have haddx :
      rho 46194 * (1 + 3021 * (rho 46189 * seg52In0AccX20 rho) * (rho 46188 * seg52In0AccY20 rho)) =
        rho 46189 * seg52In0AccX20 rho + rho 46188 * seg52In0AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46195 * (1 - 3021 * (rho 46189 * seg52In0AccX20 rho) * (rho 46188 * seg52In0AccY20 rho)) =
        (-1) * (rho 46189 * seg52In0AccX20 rho) - rho 46188 * seg52In0AccY20 rho +
          (seg52In0AccY20 rho - seg52In0AccX20 rho * (-1)) * (rho 46188 + rho 46189) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46195 * (1 - rho 46193) = rho 46190 - rho 46191 - rho 46192 := ha5
      _ = (-1) * rho 46191 - rho 46192 + (seg52In0AccY20 rho - seg52In0AccX20 rho * (-1)) *
          (rho 46188 + rho 46189) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX21 rho = seg52In0AccX20 rho - Bool.toZMod bit * (seg52In0AccX20 rho - rho 46194) := by
    have hd : rho 46196 = Bool.toZMod bit * (rho 46194 - seg52In0AccX20 rho) := by
      rw [← hbit]
      unfold seg52In0AccX20
      linear_combination -r1805
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY21 rho = seg52In0AccY20 rho - Bool.toZMod bit * (seg52In0AccY20 rho - rho 46195) := by
    have hd : rho 46197 = Bool.toZMod bit * (rho 46195 - seg52In0AccY20 rho) := by
      rw [← hbit]
      unfold seg52In0AccY20
      linear_combination -r1806
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46188 * rho 46189 = rho 46198 := by linear_combination r1807
  have hd1 : rho 46188 * rho 46188 = rho 46199 := by linear_combination r1808
  have hd2 : rho 46189 * rho 46189 = rho 46200 := by linear_combination r1809
  have hd3 : rho 46201 * (rho 46189 * rho 46189 + rho 46188 * rho 46188 * (-1)) =
      2 * (rho 46188 * rho 46189) := by
    rw [hd0, hd1, hd2]
    linear_combination r1810
  have hd4 : rho 46202 * (2 - (rho 46189 * rho 46189 + rho 46188 * rho 46188 * (-1))) =
      rho 46189 * rho 46189 - rho 46188 * rho 46188 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1811
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 46188, rho 46189⟩
    ⟨rho 46194, rho 46195⟩ ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 46201, rho 46202⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1812 rho ∧ Seg52.relationRow1813 rho ∧ Seg52.relationRow1814 rho ∧ Seg52.relationRow1815 rho ∧ Seg52.relationRow1816 rho ∧ Seg52.relationRow1817 rho ∧ Seg52.relationRow1818 rho ∧ Seg52.relationRow1819 rho ∧ Seg52.relationRow1820 rho ∧ Seg52.relationRow1821 rho ∧ Seg52.relationRow1822 rho ∧ Seg52.relationRow1823 rho ∧ Seg52.relationRow1824 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824⟩

theorem seg52In0_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45829 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46201, rho 46202⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 46201, rho 46202⟩
        ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 46214, rho 46215⟩ := by
  obtain ⟨r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824⟩ := seg52In0_rows21 rho h
  unfold Seg52.relationRow1812 at r1812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1812

  unfold Seg52.relationRow1813 at r1813

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1813

  unfold Seg52.relationRow1814 at r1814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1814

  unfold Seg52.relationRow1815 at r1815

  unfold Seg52.relationRow1816 at r1816

  unfold Seg52.relationRow1817 at r1817

  unfold Seg52.relationRow1818 at r1818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1818

  unfold Seg52.relationRow1819 at r1819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1819

  unfold Seg52.relationRow1820 at r1820

  unfold Seg52.relationRow1821 at r1821

  unfold Seg52.relationRow1822 at r1822

  unfold Seg52.relationRow1823 at r1823

  unfold Seg52.relationRow1824 at r1824

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX22 rho = seg52In0AccX21 rho + rho 46209 := by
    unfold seg52In0AccX22 seg52In0AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 21]

    ring

  have hnexty : seg52In0AccY22 rho = seg52In0AccY21 rho + rho 46210 := by
    unfold seg52In0AccY22 seg52In0AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 21]

    ring

  have ha0 : (rho 46201 + rho 46202) * (seg52In0AccX21 rho + seg52In0AccY21 rho) = rho 46203 := by
    unfold seg52In0AccX21 seg52In0AccY21
    linear_combination r1812
  have ha1 : rho 46202 * seg52In0AccX21 rho = rho 46204 := by
    unfold seg52In0AccX21
    linear_combination r1813
  have ha2 : rho 46201 * seg52In0AccY21 rho = rho 46205 := by
    unfold seg52In0AccY21
    linear_combination r1814
  have ha3 : 3021 * rho 46204 * rho 46205 = rho 46206 := by
    linear_combination r1815
  have ha4 : rho 46207 * (1 + rho 46206) = rho 46204 + rho 46205 := by
    linear_combination r1816
  have ha5 : rho 46208 * (1 - rho 46206) = rho 46203 - rho 46204 - rho 46205 := by
    linear_combination r1817
  have haddx :
      rho 46207 * (1 + 3021 * (rho 46202 * seg52In0AccX21 rho) * (rho 46201 * seg52In0AccY21 rho)) =
        rho 46202 * seg52In0AccX21 rho + rho 46201 * seg52In0AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46208 * (1 - 3021 * (rho 46202 * seg52In0AccX21 rho) * (rho 46201 * seg52In0AccY21 rho)) =
        (-1) * (rho 46202 * seg52In0AccX21 rho) - rho 46201 * seg52In0AccY21 rho +
          (seg52In0AccY21 rho - seg52In0AccX21 rho * (-1)) * (rho 46201 + rho 46202) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46208 * (1 - rho 46206) = rho 46203 - rho 46204 - rho 46205 := ha5
      _ = (-1) * rho 46204 - rho 46205 + (seg52In0AccY21 rho - seg52In0AccX21 rho * (-1)) *
          (rho 46201 + rho 46202) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX22 rho = seg52In0AccX21 rho - Bool.toZMod bit * (seg52In0AccX21 rho - rho 46207) := by
    have hd : rho 46209 = Bool.toZMod bit * (rho 46207 - seg52In0AccX21 rho) := by
      rw [← hbit]
      unfold seg52In0AccX21
      linear_combination -r1818
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY22 rho = seg52In0AccY21 rho - Bool.toZMod bit * (seg52In0AccY21 rho - rho 46208) := by
    have hd : rho 46210 = Bool.toZMod bit * (rho 46208 - seg52In0AccY21 rho) := by
      rw [← hbit]
      unfold seg52In0AccY21
      linear_combination -r1819
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46201 * rho 46202 = rho 46211 := by linear_combination r1820
  have hd1 : rho 46201 * rho 46201 = rho 46212 := by linear_combination r1821
  have hd2 : rho 46202 * rho 46202 = rho 46213 := by linear_combination r1822
  have hd3 : rho 46214 * (rho 46202 * rho 46202 + rho 46201 * rho 46201 * (-1)) =
      2 * (rho 46201 * rho 46202) := by
    rw [hd0, hd1, hd2]
    linear_combination r1823
  have hd4 : rho 46215 * (2 - (rho 46202 * rho 46202 + rho 46201 * rho 46201 * (-1))) =
      rho 46202 * rho 46202 - rho 46201 * rho 46201 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1824
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 46201, rho 46202⟩
    ⟨rho 46207, rho 46208⟩ ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 46214, rho 46215⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg52In0_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg52In0_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg52In0_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg52In0_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg52In0_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg52In0_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg52In0_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg52In0_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg52In0_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg52In0_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
