import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1614 rho ∧ Seg52.relationRow1615 rho ∧ Seg52.relationRow1616 rho ∧ Seg52.relationRow1617 rho ∧ Seg52.relationRow1618 rho ∧ Seg52.relationRow1619 rho ∧ Seg52.relationRow1620 rho ∧ Seg52.relationRow1621 rho ∧ Seg52.relationRow1622 rho ∧ Seg52.relationRow1623 rho ∧ Seg52.relationRow1624 rho ∧ Seg52.relationRow1625 rho ∧ Seg52.relationRow1626 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626⟩

theorem seg52In0_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45223 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46003, rho 46004⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46003, rho 46004⟩
        ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46016, rho 46017⟩ := by
  obtain ⟨r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626⟩ := seg52In0_rows55 rho h
  unfold Seg52.relationRow1614 at r1614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1614

  unfold Seg52.relationRow1615 at r1615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1615

  unfold Seg52.relationRow1616 at r1616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1616

  unfold Seg52.relationRow1617 at r1617

  unfold Seg52.relationRow1618 at r1618

  unfold Seg52.relationRow1619 at r1619

  unfold Seg52.relationRow1620 at r1620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1620

  unfold Seg52.relationRow1621 at r1621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1621

  unfold Seg52.relationRow1622 at r1622

  unfold Seg52.relationRow1623 at r1623

  unfold Seg52.relationRow1624 at r1624

  unfold Seg52.relationRow1625 at r1625

  unfold Seg52.relationRow1626 at r1626

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX56 rho = seg52In0AccX55 rho + rho 46011 := by
    unfold seg52In0AccX56 seg52In0AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 55]

    ring

  have hnexty : seg52In0AccY56 rho = seg52In0AccY55 rho + rho 46012 := by
    unfold seg52In0AccY56 seg52In0AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 55]

    ring

  have ha0 : (rho 46003 + rho 46004) * (seg52In0AccX55 rho + seg52In0AccY55 rho) = rho 46005 := by
    unfold seg52In0AccX55 seg52In0AccY55
    linear_combination r1614
  have ha1 : rho 46004 * seg52In0AccX55 rho = rho 46006 := by
    unfold seg52In0AccX55
    linear_combination r1615
  have ha2 : rho 46003 * seg52In0AccY55 rho = rho 46007 := by
    unfold seg52In0AccY55
    linear_combination r1616
  have ha3 : 3021 * rho 46006 * rho 46007 = rho 46008 := by
    linear_combination r1617
  have ha4 : rho 46009 * (1 + rho 46008) = rho 46006 + rho 46007 := by
    linear_combination r1618
  have ha5 : rho 46010 * (1 - rho 46008) = rho 46005 - rho 46006 - rho 46007 := by
    linear_combination r1619
  have haddx :
      rho 46009 * (1 + 3021 * (rho 46004 * seg52In0AccX55 rho) * (rho 46003 * seg52In0AccY55 rho)) =
        rho 46004 * seg52In0AccX55 rho + rho 46003 * seg52In0AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46010 * (1 - 3021 * (rho 46004 * seg52In0AccX55 rho) * (rho 46003 * seg52In0AccY55 rho)) =
        (-1) * (rho 46004 * seg52In0AccX55 rho) - rho 46003 * seg52In0AccY55 rho +
          (seg52In0AccY55 rho - seg52In0AccX55 rho * (-1)) * (rho 46003 + rho 46004) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46010 * (1 - rho 46008) = rho 46005 - rho 46006 - rho 46007 := ha5
      _ = (-1) * rho 46006 - rho 46007 + (seg52In0AccY55 rho - seg52In0AccX55 rho * (-1)) *
          (rho 46003 + rho 46004) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX56 rho = seg52In0AccX55 rho - Bool.toZMod bit * (seg52In0AccX55 rho - rho 46009) := by
    have hd : rho 46011 = Bool.toZMod bit * (rho 46009 - seg52In0AccX55 rho) := by
      rw [← hbit]
      unfold seg52In0AccX55
      linear_combination -r1620
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY56 rho = seg52In0AccY55 rho - Bool.toZMod bit * (seg52In0AccY55 rho - rho 46010) := by
    have hd : rho 46012 = Bool.toZMod bit * (rho 46010 - seg52In0AccY55 rho) := by
      rw [← hbit]
      unfold seg52In0AccY55
      linear_combination -r1621
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46003 * rho 46004 = rho 46013 := by linear_combination r1622
  have hd1 : rho 46003 * rho 46003 = rho 46014 := by linear_combination r1623
  have hd2 : rho 46004 * rho 46004 = rho 46015 := by linear_combination r1624
  have hd3 : rho 46016 * (rho 46004 * rho 46004 + rho 46003 * rho 46003 * (-1)) =
      2 * (rho 46003 * rho 46004) := by
    rw [hd0, hd1, hd2]
    linear_combination r1625
  have hd4 : rho 46017 * (2 - (rho 46004 * rho 46004 + rho 46003 * rho 46003 * (-1))) =
      rho 46004 * rho 46004 - rho 46003 * rho 46003 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1626
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46003, rho 46004⟩
    ⟨rho 46009, rho 46010⟩ ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46016, rho 46017⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1627 rho ∧ Seg52.relationRow1628 rho ∧ Seg52.relationRow1629 rho ∧ Seg52.relationRow1630 rho ∧ Seg52.relationRow1631 rho ∧ Seg52.relationRow1632 rho ∧ Seg52.relationRow1633 rho ∧ Seg52.relationRow1634 rho ∧ Seg52.relationRow1635 rho ∧ Seg52.relationRow1636 rho ∧ Seg52.relationRow1637 rho ∧ Seg52.relationRow1638 rho ∧ Seg52.relationRow1639 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639⟩

theorem seg52In0_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45224 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46016, rho 46017⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46016, rho 46017⟩
        ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46029, rho 46030⟩ := by
  obtain ⟨r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639⟩ := seg52In0_rows56 rho h
  unfold Seg52.relationRow1627 at r1627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1627

  unfold Seg52.relationRow1628 at r1628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1628

  unfold Seg52.relationRow1629 at r1629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1629

  unfold Seg52.relationRow1630 at r1630

  unfold Seg52.relationRow1631 at r1631

  unfold Seg52.relationRow1632 at r1632

  unfold Seg52.relationRow1633 at r1633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1633

  unfold Seg52.relationRow1634 at r1634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1634

  unfold Seg52.relationRow1635 at r1635

  unfold Seg52.relationRow1636 at r1636

  unfold Seg52.relationRow1637 at r1637

  unfold Seg52.relationRow1638 at r1638

  unfold Seg52.relationRow1639 at r1639

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX57 rho = seg52In0AccX56 rho + rho 46024 := by
    unfold seg52In0AccX57 seg52In0AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 56]

    ring

  have hnexty : seg52In0AccY57 rho = seg52In0AccY56 rho + rho 46025 := by
    unfold seg52In0AccY57 seg52In0AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 56]

    ring

  have ha0 : (rho 46016 + rho 46017) * (seg52In0AccX56 rho + seg52In0AccY56 rho) = rho 46018 := by
    unfold seg52In0AccX56 seg52In0AccY56
    linear_combination r1627
  have ha1 : rho 46017 * seg52In0AccX56 rho = rho 46019 := by
    unfold seg52In0AccX56
    linear_combination r1628
  have ha2 : rho 46016 * seg52In0AccY56 rho = rho 46020 := by
    unfold seg52In0AccY56
    linear_combination r1629
  have ha3 : 3021 * rho 46019 * rho 46020 = rho 46021 := by
    linear_combination r1630
  have ha4 : rho 46022 * (1 + rho 46021) = rho 46019 + rho 46020 := by
    linear_combination r1631
  have ha5 : rho 46023 * (1 - rho 46021) = rho 46018 - rho 46019 - rho 46020 := by
    linear_combination r1632
  have haddx :
      rho 46022 * (1 + 3021 * (rho 46017 * seg52In0AccX56 rho) * (rho 46016 * seg52In0AccY56 rho)) =
        rho 46017 * seg52In0AccX56 rho + rho 46016 * seg52In0AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46023 * (1 - 3021 * (rho 46017 * seg52In0AccX56 rho) * (rho 46016 * seg52In0AccY56 rho)) =
        (-1) * (rho 46017 * seg52In0AccX56 rho) - rho 46016 * seg52In0AccY56 rho +
          (seg52In0AccY56 rho - seg52In0AccX56 rho * (-1)) * (rho 46016 + rho 46017) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46023 * (1 - rho 46021) = rho 46018 - rho 46019 - rho 46020 := ha5
      _ = (-1) * rho 46019 - rho 46020 + (seg52In0AccY56 rho - seg52In0AccX56 rho * (-1)) *
          (rho 46016 + rho 46017) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX57 rho = seg52In0AccX56 rho - Bool.toZMod bit * (seg52In0AccX56 rho - rho 46022) := by
    have hd : rho 46024 = Bool.toZMod bit * (rho 46022 - seg52In0AccX56 rho) := by
      rw [← hbit]
      unfold seg52In0AccX56
      linear_combination -r1633
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY57 rho = seg52In0AccY56 rho - Bool.toZMod bit * (seg52In0AccY56 rho - rho 46023) := by
    have hd : rho 46025 = Bool.toZMod bit * (rho 46023 - seg52In0AccY56 rho) := by
      rw [← hbit]
      unfold seg52In0AccY56
      linear_combination -r1634
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46016 * rho 46017 = rho 46026 := by linear_combination r1635
  have hd1 : rho 46016 * rho 46016 = rho 46027 := by linear_combination r1636
  have hd2 : rho 46017 * rho 46017 = rho 46028 := by linear_combination r1637
  have hd3 : rho 46029 * (rho 46017 * rho 46017 + rho 46016 * rho 46016 * (-1)) =
      2 * (rho 46016 * rho 46017) := by
    rw [hd0, hd1, hd2]
    linear_combination r1638
  have hd4 : rho 46030 * (2 - (rho 46017 * rho 46017 + rho 46016 * rho 46016 * (-1))) =
      rho 46017 * rho 46017 - rho 46016 * rho 46016 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1639
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46016, rho 46017⟩
    ⟨rho 46022, rho 46023⟩ ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46029, rho 46030⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1640 rho ∧ Seg52.relationRow1641 rho ∧ Seg52.relationRow1642 rho ∧ Seg52.relationRow1643 rho ∧ Seg52.relationRow1644 rho ∧ Seg52.relationRow1645 rho ∧ Seg52.relationRow1646 rho ∧ Seg52.relationRow1647 rho ∧ Seg52.relationRow1648 rho ∧ Seg52.relationRow1649 rho ∧ Seg52.relationRow1650 rho ∧ Seg52.relationRow1651 rho ∧ Seg52.relationRow1652 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652⟩

theorem seg52In0_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45225 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46029, rho 46030⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46029, rho 46030⟩
        ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46042, rho 46043⟩ := by
  obtain ⟨r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652⟩ := seg52In0_rows57 rho h
  unfold Seg52.relationRow1640 at r1640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1640

  unfold Seg52.relationRow1641 at r1641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1641

  unfold Seg52.relationRow1642 at r1642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1642

  unfold Seg52.relationRow1643 at r1643

  unfold Seg52.relationRow1644 at r1644

  unfold Seg52.relationRow1645 at r1645

  unfold Seg52.relationRow1646 at r1646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1646

  unfold Seg52.relationRow1647 at r1647

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1647

  unfold Seg52.relationRow1648 at r1648

  unfold Seg52.relationRow1649 at r1649

  unfold Seg52.relationRow1650 at r1650

  unfold Seg52.relationRow1651 at r1651

  unfold Seg52.relationRow1652 at r1652

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX58 rho = seg52In0AccX57 rho + rho 46037 := by
    unfold seg52In0AccX58 seg52In0AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 57]

    ring

  have hnexty : seg52In0AccY58 rho = seg52In0AccY57 rho + rho 46038 := by
    unfold seg52In0AccY58 seg52In0AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 57]

    ring

  have ha0 : (rho 46029 + rho 46030) * (seg52In0AccX57 rho + seg52In0AccY57 rho) = rho 46031 := by
    unfold seg52In0AccX57 seg52In0AccY57
    linear_combination r1640
  have ha1 : rho 46030 * seg52In0AccX57 rho = rho 46032 := by
    unfold seg52In0AccX57
    linear_combination r1641
  have ha2 : rho 46029 * seg52In0AccY57 rho = rho 46033 := by
    unfold seg52In0AccY57
    linear_combination r1642
  have ha3 : 3021 * rho 46032 * rho 46033 = rho 46034 := by
    linear_combination r1643
  have ha4 : rho 46035 * (1 + rho 46034) = rho 46032 + rho 46033 := by
    linear_combination r1644
  have ha5 : rho 46036 * (1 - rho 46034) = rho 46031 - rho 46032 - rho 46033 := by
    linear_combination r1645
  have haddx :
      rho 46035 * (1 + 3021 * (rho 46030 * seg52In0AccX57 rho) * (rho 46029 * seg52In0AccY57 rho)) =
        rho 46030 * seg52In0AccX57 rho + rho 46029 * seg52In0AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46036 * (1 - 3021 * (rho 46030 * seg52In0AccX57 rho) * (rho 46029 * seg52In0AccY57 rho)) =
        (-1) * (rho 46030 * seg52In0AccX57 rho) - rho 46029 * seg52In0AccY57 rho +
          (seg52In0AccY57 rho - seg52In0AccX57 rho * (-1)) * (rho 46029 + rho 46030) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46036 * (1 - rho 46034) = rho 46031 - rho 46032 - rho 46033 := ha5
      _ = (-1) * rho 46032 - rho 46033 + (seg52In0AccY57 rho - seg52In0AccX57 rho * (-1)) *
          (rho 46029 + rho 46030) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX58 rho = seg52In0AccX57 rho - Bool.toZMod bit * (seg52In0AccX57 rho - rho 46035) := by
    have hd : rho 46037 = Bool.toZMod bit * (rho 46035 - seg52In0AccX57 rho) := by
      rw [← hbit]
      unfold seg52In0AccX57
      linear_combination -r1646
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY58 rho = seg52In0AccY57 rho - Bool.toZMod bit * (seg52In0AccY57 rho - rho 46036) := by
    have hd : rho 46038 = Bool.toZMod bit * (rho 46036 - seg52In0AccY57 rho) := by
      rw [← hbit]
      unfold seg52In0AccY57
      linear_combination -r1647
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46029 * rho 46030 = rho 46039 := by linear_combination r1648
  have hd1 : rho 46029 * rho 46029 = rho 46040 := by linear_combination r1649
  have hd2 : rho 46030 * rho 46030 = rho 46041 := by linear_combination r1650
  have hd3 : rho 46042 * (rho 46030 * rho 46030 + rho 46029 * rho 46029 * (-1)) =
      2 * (rho 46029 * rho 46030) := by
    rw [hd0, hd1, hd2]
    linear_combination r1651
  have hd4 : rho 46043 * (2 - (rho 46030 * rho 46030 + rho 46029 * rho 46029 * (-1))) =
      rho 46030 * rho 46030 - rho 46029 * rho 46029 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1652
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46029, rho 46030⟩
    ⟨rho 46035, rho 46036⟩ ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46042, rho 46043⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1653 rho ∧ Seg52.relationRow1654 rho ∧ Seg52.relationRow1655 rho ∧ Seg52.relationRow1656 rho ∧ Seg52.relationRow1657 rho ∧ Seg52.relationRow1658 rho ∧ Seg52.relationRow1659 rho ∧ Seg52.relationRow1660 rho ∧ Seg52.relationRow1661 rho ∧ Seg52.relationRow1662 rho ∧ Seg52.relationRow1663 rho ∧ Seg52.relationRow1664 rho ∧ Seg52.relationRow1665 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665⟩

theorem seg52In0_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45226 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46042, rho 46043⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46042, rho 46043⟩
        ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46055, rho 46056⟩ := by
  obtain ⟨r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665⟩ := seg52In0_rows58 rho h
  unfold Seg52.relationRow1653 at r1653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1653

  unfold Seg52.relationRow1654 at r1654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1654

  unfold Seg52.relationRow1655 at r1655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1655

  unfold Seg52.relationRow1656 at r1656

  unfold Seg52.relationRow1657 at r1657

  unfold Seg52.relationRow1658 at r1658

  unfold Seg52.relationRow1659 at r1659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1659

  unfold Seg52.relationRow1660 at r1660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1660

  unfold Seg52.relationRow1661 at r1661

  unfold Seg52.relationRow1662 at r1662

  unfold Seg52.relationRow1663 at r1663

  unfold Seg52.relationRow1664 at r1664

  unfold Seg52.relationRow1665 at r1665

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX59 rho = seg52In0AccX58 rho + rho 46050 := by
    unfold seg52In0AccX59 seg52In0AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 58]

    ring

  have hnexty : seg52In0AccY59 rho = seg52In0AccY58 rho + rho 46051 := by
    unfold seg52In0AccY59 seg52In0AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 58]

    ring

  have ha0 : (rho 46042 + rho 46043) * (seg52In0AccX58 rho + seg52In0AccY58 rho) = rho 46044 := by
    unfold seg52In0AccX58 seg52In0AccY58
    linear_combination r1653
  have ha1 : rho 46043 * seg52In0AccX58 rho = rho 46045 := by
    unfold seg52In0AccX58
    linear_combination r1654
  have ha2 : rho 46042 * seg52In0AccY58 rho = rho 46046 := by
    unfold seg52In0AccY58
    linear_combination r1655
  have ha3 : 3021 * rho 46045 * rho 46046 = rho 46047 := by
    linear_combination r1656
  have ha4 : rho 46048 * (1 + rho 46047) = rho 46045 + rho 46046 := by
    linear_combination r1657
  have ha5 : rho 46049 * (1 - rho 46047) = rho 46044 - rho 46045 - rho 46046 := by
    linear_combination r1658
  have haddx :
      rho 46048 * (1 + 3021 * (rho 46043 * seg52In0AccX58 rho) * (rho 46042 * seg52In0AccY58 rho)) =
        rho 46043 * seg52In0AccX58 rho + rho 46042 * seg52In0AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46049 * (1 - 3021 * (rho 46043 * seg52In0AccX58 rho) * (rho 46042 * seg52In0AccY58 rho)) =
        (-1) * (rho 46043 * seg52In0AccX58 rho) - rho 46042 * seg52In0AccY58 rho +
          (seg52In0AccY58 rho - seg52In0AccX58 rho * (-1)) * (rho 46042 + rho 46043) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46049 * (1 - rho 46047) = rho 46044 - rho 46045 - rho 46046 := ha5
      _ = (-1) * rho 46045 - rho 46046 + (seg52In0AccY58 rho - seg52In0AccX58 rho * (-1)) *
          (rho 46042 + rho 46043) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX59 rho = seg52In0AccX58 rho - Bool.toZMod bit * (seg52In0AccX58 rho - rho 46048) := by
    have hd : rho 46050 = Bool.toZMod bit * (rho 46048 - seg52In0AccX58 rho) := by
      rw [← hbit]
      unfold seg52In0AccX58
      linear_combination -r1659
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY59 rho = seg52In0AccY58 rho - Bool.toZMod bit * (seg52In0AccY58 rho - rho 46049) := by
    have hd : rho 46051 = Bool.toZMod bit * (rho 46049 - seg52In0AccY58 rho) := by
      rw [← hbit]
      unfold seg52In0AccY58
      linear_combination -r1660
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46042 * rho 46043 = rho 46052 := by linear_combination r1661
  have hd1 : rho 46042 * rho 46042 = rho 46053 := by linear_combination r1662
  have hd2 : rho 46043 * rho 46043 = rho 46054 := by linear_combination r1663
  have hd3 : rho 46055 * (rho 46043 * rho 46043 + rho 46042 * rho 46042 * (-1)) =
      2 * (rho 46042 * rho 46043) := by
    rw [hd0, hd1, hd2]
    linear_combination r1664
  have hd4 : rho 46056 * (2 - (rho 46043 * rho 46043 + rho 46042 * rho 46042 * (-1))) =
      rho 46043 * rho 46043 - rho 46042 * rho 46042 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1665
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46042, rho 46043⟩
    ⟨rho 46048, rho 46049⟩ ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46055, rho 46056⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1666 rho ∧ Seg52.relationRow1667 rho ∧ Seg52.relationRow1668 rho ∧ Seg52.relationRow1669 rho ∧ Seg52.relationRow1670 rho ∧ Seg52.relationRow1671 rho ∧ Seg52.relationRow1672 rho ∧ Seg52.relationRow1673 rho ∧ Seg52.relationRow1674 rho ∧ Seg52.relationRow1675 rho ∧ Seg52.relationRow1676 rho ∧ Seg52.relationRow1677 rho ∧ Seg52.relationRow1678 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, _⟩

  exact ⟨r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678⟩

theorem seg52In0_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45227 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46055, rho 46056⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46055, rho 46056⟩
        ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46068, rho 46069⟩ := by
  obtain ⟨r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678⟩ := seg52In0_rows59 rho h
  unfold Seg52.relationRow1666 at r1666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1666

  unfold Seg52.relationRow1667 at r1667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1667

  unfold Seg52.relationRow1668 at r1668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1668

  unfold Seg52.relationRow1669 at r1669

  unfold Seg52.relationRow1670 at r1670

  unfold Seg52.relationRow1671 at r1671

  unfold Seg52.relationRow1672 at r1672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1672

  unfold Seg52.relationRow1673 at r1673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1673

  unfold Seg52.relationRow1674 at r1674

  unfold Seg52.relationRow1675 at r1675

  unfold Seg52.relationRow1676 at r1676

  unfold Seg52.relationRow1677 at r1677

  unfold Seg52.relationRow1678 at r1678

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX60 rho = seg52In0AccX59 rho + rho 46063 := by
    unfold seg52In0AccX60 seg52In0AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 59]

    ring

  have hnexty : seg52In0AccY60 rho = seg52In0AccY59 rho + rho 46064 := by
    unfold seg52In0AccY60 seg52In0AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 59]

    ring

  have ha0 : (rho 46055 + rho 46056) * (seg52In0AccX59 rho + seg52In0AccY59 rho) = rho 46057 := by
    unfold seg52In0AccX59 seg52In0AccY59
    linear_combination r1666
  have ha1 : rho 46056 * seg52In0AccX59 rho = rho 46058 := by
    unfold seg52In0AccX59
    linear_combination r1667
  have ha2 : rho 46055 * seg52In0AccY59 rho = rho 46059 := by
    unfold seg52In0AccY59
    linear_combination r1668
  have ha3 : 3021 * rho 46058 * rho 46059 = rho 46060 := by
    linear_combination r1669
  have ha4 : rho 46061 * (1 + rho 46060) = rho 46058 + rho 46059 := by
    linear_combination r1670
  have ha5 : rho 46062 * (1 - rho 46060) = rho 46057 - rho 46058 - rho 46059 := by
    linear_combination r1671
  have haddx :
      rho 46061 * (1 + 3021 * (rho 46056 * seg52In0AccX59 rho) * (rho 46055 * seg52In0AccY59 rho)) =
        rho 46056 * seg52In0AccX59 rho + rho 46055 * seg52In0AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46062 * (1 - 3021 * (rho 46056 * seg52In0AccX59 rho) * (rho 46055 * seg52In0AccY59 rho)) =
        (-1) * (rho 46056 * seg52In0AccX59 rho) - rho 46055 * seg52In0AccY59 rho +
          (seg52In0AccY59 rho - seg52In0AccX59 rho * (-1)) * (rho 46055 + rho 46056) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46062 * (1 - rho 46060) = rho 46057 - rho 46058 - rho 46059 := ha5
      _ = (-1) * rho 46058 - rho 46059 + (seg52In0AccY59 rho - seg52In0AccX59 rho * (-1)) *
          (rho 46055 + rho 46056) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX60 rho = seg52In0AccX59 rho - Bool.toZMod bit * (seg52In0AccX59 rho - rho 46061) := by
    have hd : rho 46063 = Bool.toZMod bit * (rho 46061 - seg52In0AccX59 rho) := by
      rw [← hbit]
      unfold seg52In0AccX59
      linear_combination -r1672
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY60 rho = seg52In0AccY59 rho - Bool.toZMod bit * (seg52In0AccY59 rho - rho 46062) := by
    have hd : rho 46064 = Bool.toZMod bit * (rho 46062 - seg52In0AccY59 rho) := by
      rw [← hbit]
      unfold seg52In0AccY59
      linear_combination -r1673
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46055 * rho 46056 = rho 46065 := by linear_combination r1674
  have hd1 : rho 46055 * rho 46055 = rho 46066 := by linear_combination r1675
  have hd2 : rho 46056 * rho 46056 = rho 46067 := by linear_combination r1676
  have hd3 : rho 46068 * (rho 46056 * rho 46056 + rho 46055 * rho 46055 * (-1)) =
      2 * (rho 46055 * rho 46056) := by
    rw [hd0, hd1, hd2]
    linear_combination r1677
  have hd4 : rho 46069 * (2 - (rho 46056 * rho 46056 + rho 46055 * rho 46055 * (-1))) =
      rho 46056 * rho 46056 - rho 46055 * rho 46055 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1678
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46055, rho 46056⟩
    ⟨rho 46061, rho 46062⟩ ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46068, rho 46069⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1679 rho ∧ Seg52.relationRow1680 rho ∧ Seg52.relationRow1681 rho ∧ Seg52.relationRow1682 rho ∧ Seg52.relationRow1683 rho ∧ Seg52.relationRow1684 rho ∧ Seg52.relationRow1685 rho ∧ Seg52.relationRow1686 rho ∧ Seg52.relationRow1687 rho ∧ Seg52.relationRow1688 rho ∧ Seg52.relationRow1689 rho ∧ Seg52.relationRow1690 rho ∧ Seg52.relationRow1691 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1679⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1679, r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691⟩

theorem seg52In0_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45228 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46068, rho 46069⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46068, rho 46069⟩
        ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46081, rho 46082⟩ := by
  obtain ⟨r1679, r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691⟩ := seg52In0_rows60 rho h
  unfold Seg52.relationRow1679 at r1679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1679

  unfold Seg52.relationRow1680 at r1680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1680

  unfold Seg52.relationRow1681 at r1681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1681

  unfold Seg52.relationRow1682 at r1682

  unfold Seg52.relationRow1683 at r1683

  unfold Seg52.relationRow1684 at r1684

  unfold Seg52.relationRow1685 at r1685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1685

  unfold Seg52.relationRow1686 at r1686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1686

  unfold Seg52.relationRow1687 at r1687

  unfold Seg52.relationRow1688 at r1688

  unfold Seg52.relationRow1689 at r1689

  unfold Seg52.relationRow1690 at r1690

  unfold Seg52.relationRow1691 at r1691

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX61 rho = seg52In0AccX60 rho + rho 46076 := by
    unfold seg52In0AccX61 seg52In0AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 60]

    ring

  have hnexty : seg52In0AccY61 rho = seg52In0AccY60 rho + rho 46077 := by
    unfold seg52In0AccY61 seg52In0AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 60]

    ring

  have ha0 : (rho 46068 + rho 46069) * (seg52In0AccX60 rho + seg52In0AccY60 rho) = rho 46070 := by
    unfold seg52In0AccX60 seg52In0AccY60
    linear_combination r1679
  have ha1 : rho 46069 * seg52In0AccX60 rho = rho 46071 := by
    unfold seg52In0AccX60
    linear_combination r1680
  have ha2 : rho 46068 * seg52In0AccY60 rho = rho 46072 := by
    unfold seg52In0AccY60
    linear_combination r1681
  have ha3 : 3021 * rho 46071 * rho 46072 = rho 46073 := by
    linear_combination r1682
  have ha4 : rho 46074 * (1 + rho 46073) = rho 46071 + rho 46072 := by
    linear_combination r1683
  have ha5 : rho 46075 * (1 - rho 46073) = rho 46070 - rho 46071 - rho 46072 := by
    linear_combination r1684
  have haddx :
      rho 46074 * (1 + 3021 * (rho 46069 * seg52In0AccX60 rho) * (rho 46068 * seg52In0AccY60 rho)) =
        rho 46069 * seg52In0AccX60 rho + rho 46068 * seg52In0AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46075 * (1 - 3021 * (rho 46069 * seg52In0AccX60 rho) * (rho 46068 * seg52In0AccY60 rho)) =
        (-1) * (rho 46069 * seg52In0AccX60 rho) - rho 46068 * seg52In0AccY60 rho +
          (seg52In0AccY60 rho - seg52In0AccX60 rho * (-1)) * (rho 46068 + rho 46069) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46075 * (1 - rho 46073) = rho 46070 - rho 46071 - rho 46072 := ha5
      _ = (-1) * rho 46071 - rho 46072 + (seg52In0AccY60 rho - seg52In0AccX60 rho * (-1)) *
          (rho 46068 + rho 46069) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX61 rho = seg52In0AccX60 rho - Bool.toZMod bit * (seg52In0AccX60 rho - rho 46074) := by
    have hd : rho 46076 = Bool.toZMod bit * (rho 46074 - seg52In0AccX60 rho) := by
      rw [← hbit]
      unfold seg52In0AccX60
      linear_combination -r1685
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY61 rho = seg52In0AccY60 rho - Bool.toZMod bit * (seg52In0AccY60 rho - rho 46075) := by
    have hd : rho 46077 = Bool.toZMod bit * (rho 46075 - seg52In0AccY60 rho) := by
      rw [← hbit]
      unfold seg52In0AccY60
      linear_combination -r1686
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46068 * rho 46069 = rho 46078 := by linear_combination r1687
  have hd1 : rho 46068 * rho 46068 = rho 46079 := by linear_combination r1688
  have hd2 : rho 46069 * rho 46069 = rho 46080 := by linear_combination r1689
  have hd3 : rho 46081 * (rho 46069 * rho 46069 + rho 46068 * rho 46068 * (-1)) =
      2 * (rho 46068 * rho 46069) := by
    rw [hd0, hd1, hd2]
    linear_combination r1690
  have hd4 : rho 46082 * (2 - (rho 46069 * rho 46069 + rho 46068 * rho 46068 * (-1))) =
      rho 46069 * rho 46069 - rho 46068 * rho 46068 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1691
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46068, rho 46069⟩
    ⟨rho 46074, rho 46075⟩ ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46081, rho 46082⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1692 rho ∧ Seg52.relationRow1693 rho ∧ Seg52.relationRow1694 rho ∧ Seg52.relationRow1695 rho ∧ Seg52.relationRow1696 rho ∧ Seg52.relationRow1697 rho ∧ Seg52.relationRow1698 rho ∧ Seg52.relationRow1699 rho ∧ Seg52.relationRow1700 rho ∧ Seg52.relationRow1701 rho ∧ Seg52.relationRow1702 rho ∧ Seg52.relationRow1703 rho ∧ Seg52.relationRow1704 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704⟩

theorem seg52In0_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45229 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46081, rho 46082⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46081, rho 46082⟩
        ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46094, rho 46095⟩ := by
  obtain ⟨r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704⟩ := seg52In0_rows61 rho h
  unfold Seg52.relationRow1692 at r1692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1692

  unfold Seg52.relationRow1693 at r1693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1693

  unfold Seg52.relationRow1694 at r1694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1694

  unfold Seg52.relationRow1695 at r1695

  unfold Seg52.relationRow1696 at r1696

  unfold Seg52.relationRow1697 at r1697

  unfold Seg52.relationRow1698 at r1698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1698

  unfold Seg52.relationRow1699 at r1699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1699

  unfold Seg52.relationRow1700 at r1700

  unfold Seg52.relationRow1701 at r1701

  unfold Seg52.relationRow1702 at r1702

  unfold Seg52.relationRow1703 at r1703

  unfold Seg52.relationRow1704 at r1704

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX62 rho = seg52In0AccX61 rho + rho 46089 := by
    unfold seg52In0AccX62 seg52In0AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 61]

    ring

  have hnexty : seg52In0AccY62 rho = seg52In0AccY61 rho + rho 46090 := by
    unfold seg52In0AccY62 seg52In0AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 61]

    ring

  have ha0 : (rho 46081 + rho 46082) * (seg52In0AccX61 rho + seg52In0AccY61 rho) = rho 46083 := by
    unfold seg52In0AccX61 seg52In0AccY61
    linear_combination r1692
  have ha1 : rho 46082 * seg52In0AccX61 rho = rho 46084 := by
    unfold seg52In0AccX61
    linear_combination r1693
  have ha2 : rho 46081 * seg52In0AccY61 rho = rho 46085 := by
    unfold seg52In0AccY61
    linear_combination r1694
  have ha3 : 3021 * rho 46084 * rho 46085 = rho 46086 := by
    linear_combination r1695
  have ha4 : rho 46087 * (1 + rho 46086) = rho 46084 + rho 46085 := by
    linear_combination r1696
  have ha5 : rho 46088 * (1 - rho 46086) = rho 46083 - rho 46084 - rho 46085 := by
    linear_combination r1697
  have haddx :
      rho 46087 * (1 + 3021 * (rho 46082 * seg52In0AccX61 rho) * (rho 46081 * seg52In0AccY61 rho)) =
        rho 46082 * seg52In0AccX61 rho + rho 46081 * seg52In0AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46088 * (1 - 3021 * (rho 46082 * seg52In0AccX61 rho) * (rho 46081 * seg52In0AccY61 rho)) =
        (-1) * (rho 46082 * seg52In0AccX61 rho) - rho 46081 * seg52In0AccY61 rho +
          (seg52In0AccY61 rho - seg52In0AccX61 rho * (-1)) * (rho 46081 + rho 46082) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46088 * (1 - rho 46086) = rho 46083 - rho 46084 - rho 46085 := ha5
      _ = (-1) * rho 46084 - rho 46085 + (seg52In0AccY61 rho - seg52In0AccX61 rho * (-1)) *
          (rho 46081 + rho 46082) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX62 rho = seg52In0AccX61 rho - Bool.toZMod bit * (seg52In0AccX61 rho - rho 46087) := by
    have hd : rho 46089 = Bool.toZMod bit * (rho 46087 - seg52In0AccX61 rho) := by
      rw [← hbit]
      unfold seg52In0AccX61
      linear_combination -r1698
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY62 rho = seg52In0AccY61 rho - Bool.toZMod bit * (seg52In0AccY61 rho - rho 46088) := by
    have hd : rho 46090 = Bool.toZMod bit * (rho 46088 - seg52In0AccY61 rho) := by
      rw [← hbit]
      unfold seg52In0AccY61
      linear_combination -r1699
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46081 * rho 46082 = rho 46091 := by linear_combination r1700
  have hd1 : rho 46081 * rho 46081 = rho 46092 := by linear_combination r1701
  have hd2 : rho 46082 * rho 46082 = rho 46093 := by linear_combination r1702
  have hd3 : rho 46094 * (rho 46082 * rho 46082 + rho 46081 * rho 46081 * (-1)) =
      2 * (rho 46081 * rho 46082) := by
    rw [hd0, hd1, hd2]
    linear_combination r1703
  have hd4 : rho 46095 * (2 - (rho 46082 * rho 46082 + rho 46081 * rho 46081 * (-1))) =
      rho 46082 * rho 46082 - rho 46081 * rho 46081 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1704
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46081, rho 46082⟩
    ⟨rho 46087, rho 46088⟩ ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46094, rho 46095⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1705 rho ∧ Seg52.relationRow1706 rho ∧ Seg52.relationRow1707 rho ∧ Seg52.relationRow1708 rho ∧ Seg52.relationRow1709 rho ∧ Seg52.relationRow1710 rho ∧ Seg52.relationRow1711 rho ∧ Seg52.relationRow1712 rho ∧ Seg52.relationRow1713 rho ∧ Seg52.relationRow1714 rho ∧ Seg52.relationRow1715 rho ∧ Seg52.relationRow1716 rho ∧ Seg52.relationRow1717 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717⟩

theorem seg52In0_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45230 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46094, rho 46095⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46094, rho 46095⟩
        ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46107, rho 46108⟩ := by
  obtain ⟨r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717⟩ := seg52In0_rows62 rho h
  unfold Seg52.relationRow1705 at r1705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1705

  unfold Seg52.relationRow1706 at r1706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1706

  unfold Seg52.relationRow1707 at r1707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1707

  unfold Seg52.relationRow1708 at r1708

  unfold Seg52.relationRow1709 at r1709

  unfold Seg52.relationRow1710 at r1710

  unfold Seg52.relationRow1711 at r1711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1711

  unfold Seg52.relationRow1712 at r1712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1712

  unfold Seg52.relationRow1713 at r1713

  unfold Seg52.relationRow1714 at r1714

  unfold Seg52.relationRow1715 at r1715

  unfold Seg52.relationRow1716 at r1716

  unfold Seg52.relationRow1717 at r1717

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX63 rho = seg52In0AccX62 rho + rho 46102 := by
    unfold seg52In0AccX63 seg52In0AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 62]

    ring

  have hnexty : seg52In0AccY63 rho = seg52In0AccY62 rho + rho 46103 := by
    unfold seg52In0AccY63 seg52In0AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 62]

    ring

  have ha0 : (rho 46094 + rho 46095) * (seg52In0AccX62 rho + seg52In0AccY62 rho) = rho 46096 := by
    unfold seg52In0AccX62 seg52In0AccY62
    linear_combination r1705
  have ha1 : rho 46095 * seg52In0AccX62 rho = rho 46097 := by
    unfold seg52In0AccX62
    linear_combination r1706
  have ha2 : rho 46094 * seg52In0AccY62 rho = rho 46098 := by
    unfold seg52In0AccY62
    linear_combination r1707
  have ha3 : 3021 * rho 46097 * rho 46098 = rho 46099 := by
    linear_combination r1708
  have ha4 : rho 46100 * (1 + rho 46099) = rho 46097 + rho 46098 := by
    linear_combination r1709
  have ha5 : rho 46101 * (1 - rho 46099) = rho 46096 - rho 46097 - rho 46098 := by
    linear_combination r1710
  have haddx :
      rho 46100 * (1 + 3021 * (rho 46095 * seg52In0AccX62 rho) * (rho 46094 * seg52In0AccY62 rho)) =
        rho 46095 * seg52In0AccX62 rho + rho 46094 * seg52In0AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46101 * (1 - 3021 * (rho 46095 * seg52In0AccX62 rho) * (rho 46094 * seg52In0AccY62 rho)) =
        (-1) * (rho 46095 * seg52In0AccX62 rho) - rho 46094 * seg52In0AccY62 rho +
          (seg52In0AccY62 rho - seg52In0AccX62 rho * (-1)) * (rho 46094 + rho 46095) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46101 * (1 - rho 46099) = rho 46096 - rho 46097 - rho 46098 := ha5
      _ = (-1) * rho 46097 - rho 46098 + (seg52In0AccY62 rho - seg52In0AccX62 rho * (-1)) *
          (rho 46094 + rho 46095) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX63 rho = seg52In0AccX62 rho - Bool.toZMod bit * (seg52In0AccX62 rho - rho 46100) := by
    have hd : rho 46102 = Bool.toZMod bit * (rho 46100 - seg52In0AccX62 rho) := by
      rw [← hbit]
      unfold seg52In0AccX62
      linear_combination -r1711
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY63 rho = seg52In0AccY62 rho - Bool.toZMod bit * (seg52In0AccY62 rho - rho 46101) := by
    have hd : rho 46103 = Bool.toZMod bit * (rho 46101 - seg52In0AccY62 rho) := by
      rw [← hbit]
      unfold seg52In0AccY62
      linear_combination -r1712
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46094 * rho 46095 = rho 46104 := by linear_combination r1713
  have hd1 : rho 46094 * rho 46094 = rho 46105 := by linear_combination r1714
  have hd2 : rho 46095 * rho 46095 = rho 46106 := by linear_combination r1715
  have hd3 : rho 46107 * (rho 46095 * rho 46095 + rho 46094 * rho 46094 * (-1)) =
      2 * (rho 46094 * rho 46095) := by
    rw [hd0, hd1, hd2]
    linear_combination r1716
  have hd4 : rho 46108 * (2 - (rho 46095 * rho 46095 + rho 46094 * rho 46094 * (-1))) =
      rho 46095 * rho 46095 - rho 46094 * rho 46094 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1717
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46094, rho 46095⟩
    ⟨rho 46100, rho 46101⟩ ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46107, rho 46108⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1718 rho ∧ Seg52.relationRow1719 rho ∧ Seg52.relationRow1720 rho ∧ Seg52.relationRow1721 rho ∧ Seg52.relationRow1722 rho ∧ Seg52.relationRow1723 rho ∧ Seg52.relationRow1724 rho ∧ Seg52.relationRow1725 rho ∧ Seg52.relationRow1726 rho ∧ Seg52.relationRow1727 rho ∧ Seg52.relationRow1728 rho ∧ Seg52.relationRow1729 rho ∧ Seg52.relationRow1730 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730⟩

theorem seg52In0_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45231 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46107, rho 46108⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46107, rho 46108⟩
        ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46120, rho 46121⟩ := by
  obtain ⟨r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730⟩ := seg52In0_rows63 rho h
  unfold Seg52.relationRow1718 at r1718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1718

  unfold Seg52.relationRow1719 at r1719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1719

  unfold Seg52.relationRow1720 at r1720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1720

  unfold Seg52.relationRow1721 at r1721

  unfold Seg52.relationRow1722 at r1722

  unfold Seg52.relationRow1723 at r1723

  unfold Seg52.relationRow1724 at r1724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1724

  unfold Seg52.relationRow1725 at r1725

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1725

  unfold Seg52.relationRow1726 at r1726

  unfold Seg52.relationRow1727 at r1727

  unfold Seg52.relationRow1728 at r1728

  unfold Seg52.relationRow1729 at r1729

  unfold Seg52.relationRow1730 at r1730

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX64 rho = seg52In0AccX63 rho + rho 46115 := by
    unfold seg52In0AccX64 seg52In0AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 63]

    ring

  have hnexty : seg52In0AccY64 rho = seg52In0AccY63 rho + rho 46116 := by
    unfold seg52In0AccY64 seg52In0AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 63]

    ring

  have ha0 : (rho 46107 + rho 46108) * (seg52In0AccX63 rho + seg52In0AccY63 rho) = rho 46109 := by
    unfold seg52In0AccX63 seg52In0AccY63
    linear_combination r1718
  have ha1 : rho 46108 * seg52In0AccX63 rho = rho 46110 := by
    unfold seg52In0AccX63
    linear_combination r1719
  have ha2 : rho 46107 * seg52In0AccY63 rho = rho 46111 := by
    unfold seg52In0AccY63
    linear_combination r1720
  have ha3 : 3021 * rho 46110 * rho 46111 = rho 46112 := by
    linear_combination r1721
  have ha4 : rho 46113 * (1 + rho 46112) = rho 46110 + rho 46111 := by
    linear_combination r1722
  have ha5 : rho 46114 * (1 - rho 46112) = rho 46109 - rho 46110 - rho 46111 := by
    linear_combination r1723
  have haddx :
      rho 46113 * (1 + 3021 * (rho 46108 * seg52In0AccX63 rho) * (rho 46107 * seg52In0AccY63 rho)) =
        rho 46108 * seg52In0AccX63 rho + rho 46107 * seg52In0AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46114 * (1 - 3021 * (rho 46108 * seg52In0AccX63 rho) * (rho 46107 * seg52In0AccY63 rho)) =
        (-1) * (rho 46108 * seg52In0AccX63 rho) - rho 46107 * seg52In0AccY63 rho +
          (seg52In0AccY63 rho - seg52In0AccX63 rho * (-1)) * (rho 46107 + rho 46108) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46114 * (1 - rho 46112) = rho 46109 - rho 46110 - rho 46111 := ha5
      _ = (-1) * rho 46110 - rho 46111 + (seg52In0AccY63 rho - seg52In0AccX63 rho * (-1)) *
          (rho 46107 + rho 46108) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX64 rho = seg52In0AccX63 rho - Bool.toZMod bit * (seg52In0AccX63 rho - rho 46113) := by
    have hd : rho 46115 = Bool.toZMod bit * (rho 46113 - seg52In0AccX63 rho) := by
      rw [← hbit]
      unfold seg52In0AccX63
      linear_combination -r1724
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY64 rho = seg52In0AccY63 rho - Bool.toZMod bit * (seg52In0AccY63 rho - rho 46114) := by
    have hd : rho 46116 = Bool.toZMod bit * (rho 46114 - seg52In0AccY63 rho) := by
      rw [← hbit]
      unfold seg52In0AccY63
      linear_combination -r1725
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46107 * rho 46108 = rho 46117 := by linear_combination r1726
  have hd1 : rho 46107 * rho 46107 = rho 46118 := by linear_combination r1727
  have hd2 : rho 46108 * rho 46108 = rho 46119 := by linear_combination r1728
  have hd3 : rho 46120 * (rho 46108 * rho 46108 + rho 46107 * rho 46107 * (-1)) =
      2 * (rho 46107 * rho 46108) := by
    rw [hd0, hd1, hd2]
    linear_combination r1729
  have hd4 : rho 46121 * (2 - (rho 46108 * rho 46108 + rho 46107 * rho 46107 * (-1))) =
      rho 46108 * rho 46108 - rho 46107 * rho 46107 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1730
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46107, rho 46108⟩
    ⟨rho 46113, rho 46114⟩ ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46120, rho 46121⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1731 rho ∧ Seg52.relationRow1732 rho ∧ Seg52.relationRow1733 rho ∧ Seg52.relationRow1734 rho ∧ Seg52.relationRow1735 rho ∧ Seg52.relationRow1736 rho ∧ Seg52.relationRow1737 rho ∧ Seg52.relationRow1738 rho ∧ Seg52.relationRow1739 rho ∧ Seg52.relationRow1740 rho ∧ Seg52.relationRow1741 rho ∧ Seg52.relationRow1742 rho ∧ Seg52.relationRow1743 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743⟩

theorem seg52In0_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45232 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46120, rho 46121⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46120, rho 46121⟩
        ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46133, rho 46134⟩ := by
  obtain ⟨r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743⟩ := seg52In0_rows64 rho h
  unfold Seg52.relationRow1731 at r1731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1731

  unfold Seg52.relationRow1732 at r1732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1732

  unfold Seg52.relationRow1733 at r1733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1733

  unfold Seg52.relationRow1734 at r1734

  unfold Seg52.relationRow1735 at r1735

  unfold Seg52.relationRow1736 at r1736

  unfold Seg52.relationRow1737 at r1737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1737

  unfold Seg52.relationRow1738 at r1738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1738

  unfold Seg52.relationRow1739 at r1739

  unfold Seg52.relationRow1740 at r1740

  unfold Seg52.relationRow1741 at r1741

  unfold Seg52.relationRow1742 at r1742

  unfold Seg52.relationRow1743 at r1743

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX65 rho = seg52In0AccX64 rho + rho 46128 := by
    unfold seg52In0AccX65 seg52In0AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 64]

    ring

  have hnexty : seg52In0AccY65 rho = seg52In0AccY64 rho + rho 46129 := by
    unfold seg52In0AccY65 seg52In0AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 64]

    ring

  have ha0 : (rho 46120 + rho 46121) * (seg52In0AccX64 rho + seg52In0AccY64 rho) = rho 46122 := by
    unfold seg52In0AccX64 seg52In0AccY64
    linear_combination r1731
  have ha1 : rho 46121 * seg52In0AccX64 rho = rho 46123 := by
    unfold seg52In0AccX64
    linear_combination r1732
  have ha2 : rho 46120 * seg52In0AccY64 rho = rho 46124 := by
    unfold seg52In0AccY64
    linear_combination r1733
  have ha3 : 3021 * rho 46123 * rho 46124 = rho 46125 := by
    linear_combination r1734
  have ha4 : rho 46126 * (1 + rho 46125) = rho 46123 + rho 46124 := by
    linear_combination r1735
  have ha5 : rho 46127 * (1 - rho 46125) = rho 46122 - rho 46123 - rho 46124 := by
    linear_combination r1736
  have haddx :
      rho 46126 * (1 + 3021 * (rho 46121 * seg52In0AccX64 rho) * (rho 46120 * seg52In0AccY64 rho)) =
        rho 46121 * seg52In0AccX64 rho + rho 46120 * seg52In0AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46127 * (1 - 3021 * (rho 46121 * seg52In0AccX64 rho) * (rho 46120 * seg52In0AccY64 rho)) =
        (-1) * (rho 46121 * seg52In0AccX64 rho) - rho 46120 * seg52In0AccY64 rho +
          (seg52In0AccY64 rho - seg52In0AccX64 rho * (-1)) * (rho 46120 + rho 46121) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46127 * (1 - rho 46125) = rho 46122 - rho 46123 - rho 46124 := ha5
      _ = (-1) * rho 46123 - rho 46124 + (seg52In0AccY64 rho - seg52In0AccX64 rho * (-1)) *
          (rho 46120 + rho 46121) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX65 rho = seg52In0AccX64 rho - Bool.toZMod bit * (seg52In0AccX64 rho - rho 46126) := by
    have hd : rho 46128 = Bool.toZMod bit * (rho 46126 - seg52In0AccX64 rho) := by
      rw [← hbit]
      unfold seg52In0AccX64
      linear_combination -r1737
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY65 rho = seg52In0AccY64 rho - Bool.toZMod bit * (seg52In0AccY64 rho - rho 46127) := by
    have hd : rho 46129 = Bool.toZMod bit * (rho 46127 - seg52In0AccY64 rho) := by
      rw [← hbit]
      unfold seg52In0AccY64
      linear_combination -r1738
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46120 * rho 46121 = rho 46130 := by linear_combination r1739
  have hd1 : rho 46120 * rho 46120 = rho 46131 := by linear_combination r1740
  have hd2 : rho 46121 * rho 46121 = rho 46132 := by linear_combination r1741
  have hd3 : rho 46133 * (rho 46121 * rho 46121 + rho 46120 * rho 46120 * (-1)) =
      2 * (rho 46120 * rho 46121) := by
    rw [hd0, hd1, hd2]
    linear_combination r1742
  have hd4 : rho 46134 * (2 - (rho 46121 * rho 46121 + rho 46120 * rho 46120 * (-1))) =
      rho 46121 * rho 46121 - rho 46120 * rho 46120 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1743
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46120, rho 46121⟩
    ⟨rho 46126, rho 46127⟩ ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46133, rho 46134⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1744 rho ∧ Seg52.relationRow1745 rho ∧ Seg52.relationRow1746 rho ∧ Seg52.relationRow1747 rho ∧ Seg52.relationRow1748 rho ∧ Seg52.relationRow1749 rho ∧ Seg52.relationRow1750 rho ∧ Seg52.relationRow1751 rho ∧ Seg52.relationRow1752 rho ∧ Seg52.relationRow1753 rho ∧ Seg52.relationRow1754 rho ∧ Seg52.relationRow1755 rho ∧ Seg52.relationRow1756 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, _, _, _⟩

  exact ⟨r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756⟩

theorem seg52In0_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45233 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46133, rho 46134⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46133, rho 46134⟩
        ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46146, rho 46147⟩ := by
  obtain ⟨r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756⟩ := seg52In0_rows65 rho h
  unfold Seg52.relationRow1744 at r1744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1744

  unfold Seg52.relationRow1745 at r1745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1745

  unfold Seg52.relationRow1746 at r1746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1746

  unfold Seg52.relationRow1747 at r1747

  unfold Seg52.relationRow1748 at r1748

  unfold Seg52.relationRow1749 at r1749

  unfold Seg52.relationRow1750 at r1750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1750

  unfold Seg52.relationRow1751 at r1751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1751

  unfold Seg52.relationRow1752 at r1752

  unfold Seg52.relationRow1753 at r1753

  unfold Seg52.relationRow1754 at r1754

  unfold Seg52.relationRow1755 at r1755

  unfold Seg52.relationRow1756 at r1756

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX66 rho = seg52In0AccX65 rho + rho 46141 := by
    unfold seg52In0AccX66 seg52In0AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 65]

    ring

  have hnexty : seg52In0AccY66 rho = seg52In0AccY65 rho + rho 46142 := by
    unfold seg52In0AccY66 seg52In0AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 65]

    ring

  have ha0 : (rho 46133 + rho 46134) * (seg52In0AccX65 rho + seg52In0AccY65 rho) = rho 46135 := by
    unfold seg52In0AccX65 seg52In0AccY65
    linear_combination r1744
  have ha1 : rho 46134 * seg52In0AccX65 rho = rho 46136 := by
    unfold seg52In0AccX65
    linear_combination r1745
  have ha2 : rho 46133 * seg52In0AccY65 rho = rho 46137 := by
    unfold seg52In0AccY65
    linear_combination r1746
  have ha3 : 3021 * rho 46136 * rho 46137 = rho 46138 := by
    linear_combination r1747
  have ha4 : rho 46139 * (1 + rho 46138) = rho 46136 + rho 46137 := by
    linear_combination r1748
  have ha5 : rho 46140 * (1 - rho 46138) = rho 46135 - rho 46136 - rho 46137 := by
    linear_combination r1749
  have haddx :
      rho 46139 * (1 + 3021 * (rho 46134 * seg52In0AccX65 rho) * (rho 46133 * seg52In0AccY65 rho)) =
        rho 46134 * seg52In0AccX65 rho + rho 46133 * seg52In0AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46140 * (1 - 3021 * (rho 46134 * seg52In0AccX65 rho) * (rho 46133 * seg52In0AccY65 rho)) =
        (-1) * (rho 46134 * seg52In0AccX65 rho) - rho 46133 * seg52In0AccY65 rho +
          (seg52In0AccY65 rho - seg52In0AccX65 rho * (-1)) * (rho 46133 + rho 46134) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46140 * (1 - rho 46138) = rho 46135 - rho 46136 - rho 46137 := ha5
      _ = (-1) * rho 46136 - rho 46137 + (seg52In0AccY65 rho - seg52In0AccX65 rho * (-1)) *
          (rho 46133 + rho 46134) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX66 rho = seg52In0AccX65 rho - Bool.toZMod bit * (seg52In0AccX65 rho - rho 46139) := by
    have hd : rho 46141 = Bool.toZMod bit * (rho 46139 - seg52In0AccX65 rho) := by
      rw [← hbit]
      unfold seg52In0AccX65
      linear_combination -r1750
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY66 rho = seg52In0AccY65 rho - Bool.toZMod bit * (seg52In0AccY65 rho - rho 46140) := by
    have hd : rho 46142 = Bool.toZMod bit * (rho 46140 - seg52In0AccY65 rho) := by
      rw [← hbit]
      unfold seg52In0AccY65
      linear_combination -r1751
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46133 * rho 46134 = rho 46143 := by linear_combination r1752
  have hd1 : rho 46133 * rho 46133 = rho 46144 := by linear_combination r1753
  have hd2 : rho 46134 * rho 46134 = rho 46145 := by linear_combination r1754
  have hd3 : rho 46146 * (rho 46134 * rho 46134 + rho 46133 * rho 46133 * (-1)) =
      2 * (rho 46133 * rho 46134) := by
    rw [hd0, hd1, hd2]
    linear_combination r1755
  have hd4 : rho 46147 * (2 - (rho 46134 * rho 46134 + rho 46133 * rho 46133 * (-1))) =
      rho 46134 * rho 46134 - rho 46133 * rho 46133 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1756
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46133, rho 46134⟩
    ⟨rho 46139, rho 46140⟩ ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46146, rho 46147⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg52In0_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg52In0_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg52In0_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg52In0_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg52In0_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg52In0_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg52In0_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg52In0_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg52In0_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg52In0_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
