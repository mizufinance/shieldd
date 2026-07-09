import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1614 rho ∧ Seg48.relationRow1615 rho ∧ Seg48.relationRow1616 rho ∧ Seg48.relationRow1617 rho ∧ Seg48.relationRow1618 rho ∧ Seg48.relationRow1619 rho ∧ Seg48.relationRow1620 rho ∧ Seg48.relationRow1621 rho ∧ Seg48.relationRow1622 rho ∧ Seg48.relationRow1623 rho ∧ Seg48.relationRow1624 rho ∧ Seg48.relationRow1625 rho ∧ Seg48.relationRow1626 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626⟩

theorem seg48In0_rung55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33591 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX55 rho, seg48In0AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34371, rho 34372⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX55 rho, seg48In0AccY55 rho⟩ ⟨rho 34371, rho 34372⟩
        ⟨seg48In0AccX56 rho, seg48In0AccY56 rho⟩ ⟨rho 34384, rho 34385⟩ := by
  obtain ⟨r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626⟩ := seg48In0_rows55 rho h
  unfold Seg48.relationRow1614 at r1614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1614

  unfold Seg48.relationRow1615 at r1615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1615

  unfold Seg48.relationRow1616 at r1616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1616

  unfold Seg48.relationRow1617 at r1617

  unfold Seg48.relationRow1618 at r1618

  unfold Seg48.relationRow1619 at r1619

  unfold Seg48.relationRow1620 at r1620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1620

  unfold Seg48.relationRow1621 at r1621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1621

  unfold Seg48.relationRow1622 at r1622

  unfold Seg48.relationRow1623 at r1623

  unfold Seg48.relationRow1624 at r1624

  unfold Seg48.relationRow1625 at r1625

  unfold Seg48.relationRow1626 at r1626

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX56 rho = seg48In0AccX55 rho + rho 34379 := by
    unfold seg48In0AccX56 seg48In0AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 55]

    ring

  have hnexty : seg48In0AccY56 rho = seg48In0AccY55 rho + rho 34380 := by
    unfold seg48In0AccY56 seg48In0AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 55]

    ring

  have ha0 : (rho 34371 + rho 34372) * (seg48In0AccX55 rho + seg48In0AccY55 rho) = rho 34373 := by
    unfold seg48In0AccX55 seg48In0AccY55
    linear_combination r1614
  have ha1 : rho 34372 * seg48In0AccX55 rho = rho 34374 := by
    unfold seg48In0AccX55
    linear_combination r1615
  have ha2 : rho 34371 * seg48In0AccY55 rho = rho 34375 := by
    unfold seg48In0AccY55
    linear_combination r1616
  have ha3 : 3021 * rho 34374 * rho 34375 = rho 34376 := by
    linear_combination r1617
  have ha4 : rho 34377 * (1 + rho 34376) = rho 34374 + rho 34375 := by
    linear_combination r1618
  have ha5 : rho 34378 * (1 - rho 34376) = rho 34373 - rho 34374 - rho 34375 := by
    linear_combination r1619
  have haddx :
      rho 34377 * (1 + 3021 * (rho 34372 * seg48In0AccX55 rho) * (rho 34371 * seg48In0AccY55 rho)) =
        rho 34372 * seg48In0AccX55 rho + rho 34371 * seg48In0AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34378 * (1 - 3021 * (rho 34372 * seg48In0AccX55 rho) * (rho 34371 * seg48In0AccY55 rho)) =
        (-1) * (rho 34372 * seg48In0AccX55 rho) - rho 34371 * seg48In0AccY55 rho +
          (seg48In0AccY55 rho - seg48In0AccX55 rho * (-1)) * (rho 34371 + rho 34372) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34378 * (1 - rho 34376) = rho 34373 - rho 34374 - rho 34375 := ha5
      _ = (-1) * rho 34374 - rho 34375 + (seg48In0AccY55 rho - seg48In0AccX55 rho * (-1)) *
          (rho 34371 + rho 34372) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX56 rho = seg48In0AccX55 rho - Bool.toZMod bit * (seg48In0AccX55 rho - rho 34377) := by
    have hd : rho 34379 = Bool.toZMod bit * (rho 34377 - seg48In0AccX55 rho) := by
      rw [← hbit]
      unfold seg48In0AccX55
      linear_combination -r1620
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY56 rho = seg48In0AccY55 rho - Bool.toZMod bit * (seg48In0AccY55 rho - rho 34378) := by
    have hd : rho 34380 = Bool.toZMod bit * (rho 34378 - seg48In0AccY55 rho) := by
      rw [← hbit]
      unfold seg48In0AccY55
      linear_combination -r1621
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34371 * rho 34372 = rho 34381 := by linear_combination r1622
  have hd1 : rho 34371 * rho 34371 = rho 34382 := by linear_combination r1623
  have hd2 : rho 34372 * rho 34372 = rho 34383 := by linear_combination r1624
  have hd3 : rho 34384 * (rho 34372 * rho 34372 + rho 34371 * rho 34371 * (-1)) =
      2 * (rho 34371 * rho 34372) := by
    rw [hd0, hd1, hd2]
    linear_combination r1625
  have hd4 : rho 34385 * (2 - (rho 34372 * rho 34372 + rho 34371 * rho 34371 * (-1))) =
      rho 34372 * rho 34372 - rho 34371 * rho 34371 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1626
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX55 rho, seg48In0AccY55 rho⟩ ⟨rho 34371, rho 34372⟩
    ⟨rho 34377, rho 34378⟩ ⟨seg48In0AccX56 rho, seg48In0AccY56 rho⟩ ⟨rho 34384, rho 34385⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1627 rho ∧ Seg48.relationRow1628 rho ∧ Seg48.relationRow1629 rho ∧ Seg48.relationRow1630 rho ∧ Seg48.relationRow1631 rho ∧ Seg48.relationRow1632 rho ∧ Seg48.relationRow1633 rho ∧ Seg48.relationRow1634 rho ∧ Seg48.relationRow1635 rho ∧ Seg48.relationRow1636 rho ∧ Seg48.relationRow1637 rho ∧ Seg48.relationRow1638 rho ∧ Seg48.relationRow1639 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639⟩

theorem seg48In0_rung56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33592 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX56 rho, seg48In0AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34384, rho 34385⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX56 rho, seg48In0AccY56 rho⟩ ⟨rho 34384, rho 34385⟩
        ⟨seg48In0AccX57 rho, seg48In0AccY57 rho⟩ ⟨rho 34397, rho 34398⟩ := by
  obtain ⟨r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639⟩ := seg48In0_rows56 rho h
  unfold Seg48.relationRow1627 at r1627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1627

  unfold Seg48.relationRow1628 at r1628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1628

  unfold Seg48.relationRow1629 at r1629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1629

  unfold Seg48.relationRow1630 at r1630

  unfold Seg48.relationRow1631 at r1631

  unfold Seg48.relationRow1632 at r1632

  unfold Seg48.relationRow1633 at r1633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1633

  unfold Seg48.relationRow1634 at r1634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1634

  unfold Seg48.relationRow1635 at r1635

  unfold Seg48.relationRow1636 at r1636

  unfold Seg48.relationRow1637 at r1637

  unfold Seg48.relationRow1638 at r1638

  unfold Seg48.relationRow1639 at r1639

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX57 rho = seg48In0AccX56 rho + rho 34392 := by
    unfold seg48In0AccX57 seg48In0AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 56]

    ring

  have hnexty : seg48In0AccY57 rho = seg48In0AccY56 rho + rho 34393 := by
    unfold seg48In0AccY57 seg48In0AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 56]

    ring

  have ha0 : (rho 34384 + rho 34385) * (seg48In0AccX56 rho + seg48In0AccY56 rho) = rho 34386 := by
    unfold seg48In0AccX56 seg48In0AccY56
    linear_combination r1627
  have ha1 : rho 34385 * seg48In0AccX56 rho = rho 34387 := by
    unfold seg48In0AccX56
    linear_combination r1628
  have ha2 : rho 34384 * seg48In0AccY56 rho = rho 34388 := by
    unfold seg48In0AccY56
    linear_combination r1629
  have ha3 : 3021 * rho 34387 * rho 34388 = rho 34389 := by
    linear_combination r1630
  have ha4 : rho 34390 * (1 + rho 34389) = rho 34387 + rho 34388 := by
    linear_combination r1631
  have ha5 : rho 34391 * (1 - rho 34389) = rho 34386 - rho 34387 - rho 34388 := by
    linear_combination r1632
  have haddx :
      rho 34390 * (1 + 3021 * (rho 34385 * seg48In0AccX56 rho) * (rho 34384 * seg48In0AccY56 rho)) =
        rho 34385 * seg48In0AccX56 rho + rho 34384 * seg48In0AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34391 * (1 - 3021 * (rho 34385 * seg48In0AccX56 rho) * (rho 34384 * seg48In0AccY56 rho)) =
        (-1) * (rho 34385 * seg48In0AccX56 rho) - rho 34384 * seg48In0AccY56 rho +
          (seg48In0AccY56 rho - seg48In0AccX56 rho * (-1)) * (rho 34384 + rho 34385) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34391 * (1 - rho 34389) = rho 34386 - rho 34387 - rho 34388 := ha5
      _ = (-1) * rho 34387 - rho 34388 + (seg48In0AccY56 rho - seg48In0AccX56 rho * (-1)) *
          (rho 34384 + rho 34385) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX57 rho = seg48In0AccX56 rho - Bool.toZMod bit * (seg48In0AccX56 rho - rho 34390) := by
    have hd : rho 34392 = Bool.toZMod bit * (rho 34390 - seg48In0AccX56 rho) := by
      rw [← hbit]
      unfold seg48In0AccX56
      linear_combination -r1633
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY57 rho = seg48In0AccY56 rho - Bool.toZMod bit * (seg48In0AccY56 rho - rho 34391) := by
    have hd : rho 34393 = Bool.toZMod bit * (rho 34391 - seg48In0AccY56 rho) := by
      rw [← hbit]
      unfold seg48In0AccY56
      linear_combination -r1634
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34384 * rho 34385 = rho 34394 := by linear_combination r1635
  have hd1 : rho 34384 * rho 34384 = rho 34395 := by linear_combination r1636
  have hd2 : rho 34385 * rho 34385 = rho 34396 := by linear_combination r1637
  have hd3 : rho 34397 * (rho 34385 * rho 34385 + rho 34384 * rho 34384 * (-1)) =
      2 * (rho 34384 * rho 34385) := by
    rw [hd0, hd1, hd2]
    linear_combination r1638
  have hd4 : rho 34398 * (2 - (rho 34385 * rho 34385 + rho 34384 * rho 34384 * (-1))) =
      rho 34385 * rho 34385 - rho 34384 * rho 34384 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1639
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX56 rho, seg48In0AccY56 rho⟩ ⟨rho 34384, rho 34385⟩
    ⟨rho 34390, rho 34391⟩ ⟨seg48In0AccX57 rho, seg48In0AccY57 rho⟩ ⟨rho 34397, rho 34398⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1640 rho ∧ Seg48.relationRow1641 rho ∧ Seg48.relationRow1642 rho ∧ Seg48.relationRow1643 rho ∧ Seg48.relationRow1644 rho ∧ Seg48.relationRow1645 rho ∧ Seg48.relationRow1646 rho ∧ Seg48.relationRow1647 rho ∧ Seg48.relationRow1648 rho ∧ Seg48.relationRow1649 rho ∧ Seg48.relationRow1650 rho ∧ Seg48.relationRow1651 rho ∧ Seg48.relationRow1652 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652⟩

theorem seg48In0_rung57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33593 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX57 rho, seg48In0AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34397, rho 34398⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX57 rho, seg48In0AccY57 rho⟩ ⟨rho 34397, rho 34398⟩
        ⟨seg48In0AccX58 rho, seg48In0AccY58 rho⟩ ⟨rho 34410, rho 34411⟩ := by
  obtain ⟨r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652⟩ := seg48In0_rows57 rho h
  unfold Seg48.relationRow1640 at r1640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1640

  unfold Seg48.relationRow1641 at r1641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1641

  unfold Seg48.relationRow1642 at r1642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1642

  unfold Seg48.relationRow1643 at r1643

  unfold Seg48.relationRow1644 at r1644

  unfold Seg48.relationRow1645 at r1645

  unfold Seg48.relationRow1646 at r1646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1646

  unfold Seg48.relationRow1647 at r1647

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1647

  unfold Seg48.relationRow1648 at r1648

  unfold Seg48.relationRow1649 at r1649

  unfold Seg48.relationRow1650 at r1650

  unfold Seg48.relationRow1651 at r1651

  unfold Seg48.relationRow1652 at r1652

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX58 rho = seg48In0AccX57 rho + rho 34405 := by
    unfold seg48In0AccX58 seg48In0AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 57]

    ring

  have hnexty : seg48In0AccY58 rho = seg48In0AccY57 rho + rho 34406 := by
    unfold seg48In0AccY58 seg48In0AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 57]

    ring

  have ha0 : (rho 34397 + rho 34398) * (seg48In0AccX57 rho + seg48In0AccY57 rho) = rho 34399 := by
    unfold seg48In0AccX57 seg48In0AccY57
    linear_combination r1640
  have ha1 : rho 34398 * seg48In0AccX57 rho = rho 34400 := by
    unfold seg48In0AccX57
    linear_combination r1641
  have ha2 : rho 34397 * seg48In0AccY57 rho = rho 34401 := by
    unfold seg48In0AccY57
    linear_combination r1642
  have ha3 : 3021 * rho 34400 * rho 34401 = rho 34402 := by
    linear_combination r1643
  have ha4 : rho 34403 * (1 + rho 34402) = rho 34400 + rho 34401 := by
    linear_combination r1644
  have ha5 : rho 34404 * (1 - rho 34402) = rho 34399 - rho 34400 - rho 34401 := by
    linear_combination r1645
  have haddx :
      rho 34403 * (1 + 3021 * (rho 34398 * seg48In0AccX57 rho) * (rho 34397 * seg48In0AccY57 rho)) =
        rho 34398 * seg48In0AccX57 rho + rho 34397 * seg48In0AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34404 * (1 - 3021 * (rho 34398 * seg48In0AccX57 rho) * (rho 34397 * seg48In0AccY57 rho)) =
        (-1) * (rho 34398 * seg48In0AccX57 rho) - rho 34397 * seg48In0AccY57 rho +
          (seg48In0AccY57 rho - seg48In0AccX57 rho * (-1)) * (rho 34397 + rho 34398) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34404 * (1 - rho 34402) = rho 34399 - rho 34400 - rho 34401 := ha5
      _ = (-1) * rho 34400 - rho 34401 + (seg48In0AccY57 rho - seg48In0AccX57 rho * (-1)) *
          (rho 34397 + rho 34398) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX58 rho = seg48In0AccX57 rho - Bool.toZMod bit * (seg48In0AccX57 rho - rho 34403) := by
    have hd : rho 34405 = Bool.toZMod bit * (rho 34403 - seg48In0AccX57 rho) := by
      rw [← hbit]
      unfold seg48In0AccX57
      linear_combination -r1646
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY58 rho = seg48In0AccY57 rho - Bool.toZMod bit * (seg48In0AccY57 rho - rho 34404) := by
    have hd : rho 34406 = Bool.toZMod bit * (rho 34404 - seg48In0AccY57 rho) := by
      rw [← hbit]
      unfold seg48In0AccY57
      linear_combination -r1647
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34397 * rho 34398 = rho 34407 := by linear_combination r1648
  have hd1 : rho 34397 * rho 34397 = rho 34408 := by linear_combination r1649
  have hd2 : rho 34398 * rho 34398 = rho 34409 := by linear_combination r1650
  have hd3 : rho 34410 * (rho 34398 * rho 34398 + rho 34397 * rho 34397 * (-1)) =
      2 * (rho 34397 * rho 34398) := by
    rw [hd0, hd1, hd2]
    linear_combination r1651
  have hd4 : rho 34411 * (2 - (rho 34398 * rho 34398 + rho 34397 * rho 34397 * (-1))) =
      rho 34398 * rho 34398 - rho 34397 * rho 34397 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1652
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX57 rho, seg48In0AccY57 rho⟩ ⟨rho 34397, rho 34398⟩
    ⟨rho 34403, rho 34404⟩ ⟨seg48In0AccX58 rho, seg48In0AccY58 rho⟩ ⟨rho 34410, rho 34411⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1653 rho ∧ Seg48.relationRow1654 rho ∧ Seg48.relationRow1655 rho ∧ Seg48.relationRow1656 rho ∧ Seg48.relationRow1657 rho ∧ Seg48.relationRow1658 rho ∧ Seg48.relationRow1659 rho ∧ Seg48.relationRow1660 rho ∧ Seg48.relationRow1661 rho ∧ Seg48.relationRow1662 rho ∧ Seg48.relationRow1663 rho ∧ Seg48.relationRow1664 rho ∧ Seg48.relationRow1665 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665⟩

theorem seg48In0_rung58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33594 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX58 rho, seg48In0AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34410, rho 34411⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX58 rho, seg48In0AccY58 rho⟩ ⟨rho 34410, rho 34411⟩
        ⟨seg48In0AccX59 rho, seg48In0AccY59 rho⟩ ⟨rho 34423, rho 34424⟩ := by
  obtain ⟨r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665⟩ := seg48In0_rows58 rho h
  unfold Seg48.relationRow1653 at r1653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1653

  unfold Seg48.relationRow1654 at r1654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1654

  unfold Seg48.relationRow1655 at r1655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1655

  unfold Seg48.relationRow1656 at r1656

  unfold Seg48.relationRow1657 at r1657

  unfold Seg48.relationRow1658 at r1658

  unfold Seg48.relationRow1659 at r1659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1659

  unfold Seg48.relationRow1660 at r1660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1660

  unfold Seg48.relationRow1661 at r1661

  unfold Seg48.relationRow1662 at r1662

  unfold Seg48.relationRow1663 at r1663

  unfold Seg48.relationRow1664 at r1664

  unfold Seg48.relationRow1665 at r1665

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX59 rho = seg48In0AccX58 rho + rho 34418 := by
    unfold seg48In0AccX59 seg48In0AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 58]

    ring

  have hnexty : seg48In0AccY59 rho = seg48In0AccY58 rho + rho 34419 := by
    unfold seg48In0AccY59 seg48In0AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 58]

    ring

  have ha0 : (rho 34410 + rho 34411) * (seg48In0AccX58 rho + seg48In0AccY58 rho) = rho 34412 := by
    unfold seg48In0AccX58 seg48In0AccY58
    linear_combination r1653
  have ha1 : rho 34411 * seg48In0AccX58 rho = rho 34413 := by
    unfold seg48In0AccX58
    linear_combination r1654
  have ha2 : rho 34410 * seg48In0AccY58 rho = rho 34414 := by
    unfold seg48In0AccY58
    linear_combination r1655
  have ha3 : 3021 * rho 34413 * rho 34414 = rho 34415 := by
    linear_combination r1656
  have ha4 : rho 34416 * (1 + rho 34415) = rho 34413 + rho 34414 := by
    linear_combination r1657
  have ha5 : rho 34417 * (1 - rho 34415) = rho 34412 - rho 34413 - rho 34414 := by
    linear_combination r1658
  have haddx :
      rho 34416 * (1 + 3021 * (rho 34411 * seg48In0AccX58 rho) * (rho 34410 * seg48In0AccY58 rho)) =
        rho 34411 * seg48In0AccX58 rho + rho 34410 * seg48In0AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34417 * (1 - 3021 * (rho 34411 * seg48In0AccX58 rho) * (rho 34410 * seg48In0AccY58 rho)) =
        (-1) * (rho 34411 * seg48In0AccX58 rho) - rho 34410 * seg48In0AccY58 rho +
          (seg48In0AccY58 rho - seg48In0AccX58 rho * (-1)) * (rho 34410 + rho 34411) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34417 * (1 - rho 34415) = rho 34412 - rho 34413 - rho 34414 := ha5
      _ = (-1) * rho 34413 - rho 34414 + (seg48In0AccY58 rho - seg48In0AccX58 rho * (-1)) *
          (rho 34410 + rho 34411) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX59 rho = seg48In0AccX58 rho - Bool.toZMod bit * (seg48In0AccX58 rho - rho 34416) := by
    have hd : rho 34418 = Bool.toZMod bit * (rho 34416 - seg48In0AccX58 rho) := by
      rw [← hbit]
      unfold seg48In0AccX58
      linear_combination -r1659
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY59 rho = seg48In0AccY58 rho - Bool.toZMod bit * (seg48In0AccY58 rho - rho 34417) := by
    have hd : rho 34419 = Bool.toZMod bit * (rho 34417 - seg48In0AccY58 rho) := by
      rw [← hbit]
      unfold seg48In0AccY58
      linear_combination -r1660
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34410 * rho 34411 = rho 34420 := by linear_combination r1661
  have hd1 : rho 34410 * rho 34410 = rho 34421 := by linear_combination r1662
  have hd2 : rho 34411 * rho 34411 = rho 34422 := by linear_combination r1663
  have hd3 : rho 34423 * (rho 34411 * rho 34411 + rho 34410 * rho 34410 * (-1)) =
      2 * (rho 34410 * rho 34411) := by
    rw [hd0, hd1, hd2]
    linear_combination r1664
  have hd4 : rho 34424 * (2 - (rho 34411 * rho 34411 + rho 34410 * rho 34410 * (-1))) =
      rho 34411 * rho 34411 - rho 34410 * rho 34410 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1665
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX58 rho, seg48In0AccY58 rho⟩ ⟨rho 34410, rho 34411⟩
    ⟨rho 34416, rho 34417⟩ ⟨seg48In0AccX59 rho, seg48In0AccY59 rho⟩ ⟨rho 34423, rho 34424⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1666 rho ∧ Seg48.relationRow1667 rho ∧ Seg48.relationRow1668 rho ∧ Seg48.relationRow1669 rho ∧ Seg48.relationRow1670 rho ∧ Seg48.relationRow1671 rho ∧ Seg48.relationRow1672 rho ∧ Seg48.relationRow1673 rho ∧ Seg48.relationRow1674 rho ∧ Seg48.relationRow1675 rho ∧ Seg48.relationRow1676 rho ∧ Seg48.relationRow1677 rho ∧ Seg48.relationRow1678 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, _⟩

  exact ⟨r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678⟩

theorem seg48In0_rung59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33595 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX59 rho, seg48In0AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34423, rho 34424⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX59 rho, seg48In0AccY59 rho⟩ ⟨rho 34423, rho 34424⟩
        ⟨seg48In0AccX60 rho, seg48In0AccY60 rho⟩ ⟨rho 34436, rho 34437⟩ := by
  obtain ⟨r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678⟩ := seg48In0_rows59 rho h
  unfold Seg48.relationRow1666 at r1666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1666

  unfold Seg48.relationRow1667 at r1667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1667

  unfold Seg48.relationRow1668 at r1668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1668

  unfold Seg48.relationRow1669 at r1669

  unfold Seg48.relationRow1670 at r1670

  unfold Seg48.relationRow1671 at r1671

  unfold Seg48.relationRow1672 at r1672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1672

  unfold Seg48.relationRow1673 at r1673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1673

  unfold Seg48.relationRow1674 at r1674

  unfold Seg48.relationRow1675 at r1675

  unfold Seg48.relationRow1676 at r1676

  unfold Seg48.relationRow1677 at r1677

  unfold Seg48.relationRow1678 at r1678

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX60 rho = seg48In0AccX59 rho + rho 34431 := by
    unfold seg48In0AccX60 seg48In0AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 59]

    ring

  have hnexty : seg48In0AccY60 rho = seg48In0AccY59 rho + rho 34432 := by
    unfold seg48In0AccY60 seg48In0AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 59]

    ring

  have ha0 : (rho 34423 + rho 34424) * (seg48In0AccX59 rho + seg48In0AccY59 rho) = rho 34425 := by
    unfold seg48In0AccX59 seg48In0AccY59
    linear_combination r1666
  have ha1 : rho 34424 * seg48In0AccX59 rho = rho 34426 := by
    unfold seg48In0AccX59
    linear_combination r1667
  have ha2 : rho 34423 * seg48In0AccY59 rho = rho 34427 := by
    unfold seg48In0AccY59
    linear_combination r1668
  have ha3 : 3021 * rho 34426 * rho 34427 = rho 34428 := by
    linear_combination r1669
  have ha4 : rho 34429 * (1 + rho 34428) = rho 34426 + rho 34427 := by
    linear_combination r1670
  have ha5 : rho 34430 * (1 - rho 34428) = rho 34425 - rho 34426 - rho 34427 := by
    linear_combination r1671
  have haddx :
      rho 34429 * (1 + 3021 * (rho 34424 * seg48In0AccX59 rho) * (rho 34423 * seg48In0AccY59 rho)) =
        rho 34424 * seg48In0AccX59 rho + rho 34423 * seg48In0AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34430 * (1 - 3021 * (rho 34424 * seg48In0AccX59 rho) * (rho 34423 * seg48In0AccY59 rho)) =
        (-1) * (rho 34424 * seg48In0AccX59 rho) - rho 34423 * seg48In0AccY59 rho +
          (seg48In0AccY59 rho - seg48In0AccX59 rho * (-1)) * (rho 34423 + rho 34424) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34430 * (1 - rho 34428) = rho 34425 - rho 34426 - rho 34427 := ha5
      _ = (-1) * rho 34426 - rho 34427 + (seg48In0AccY59 rho - seg48In0AccX59 rho * (-1)) *
          (rho 34423 + rho 34424) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX60 rho = seg48In0AccX59 rho - Bool.toZMod bit * (seg48In0AccX59 rho - rho 34429) := by
    have hd : rho 34431 = Bool.toZMod bit * (rho 34429 - seg48In0AccX59 rho) := by
      rw [← hbit]
      unfold seg48In0AccX59
      linear_combination -r1672
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY60 rho = seg48In0AccY59 rho - Bool.toZMod bit * (seg48In0AccY59 rho - rho 34430) := by
    have hd : rho 34432 = Bool.toZMod bit * (rho 34430 - seg48In0AccY59 rho) := by
      rw [← hbit]
      unfold seg48In0AccY59
      linear_combination -r1673
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34423 * rho 34424 = rho 34433 := by linear_combination r1674
  have hd1 : rho 34423 * rho 34423 = rho 34434 := by linear_combination r1675
  have hd2 : rho 34424 * rho 34424 = rho 34435 := by linear_combination r1676
  have hd3 : rho 34436 * (rho 34424 * rho 34424 + rho 34423 * rho 34423 * (-1)) =
      2 * (rho 34423 * rho 34424) := by
    rw [hd0, hd1, hd2]
    linear_combination r1677
  have hd4 : rho 34437 * (2 - (rho 34424 * rho 34424 + rho 34423 * rho 34423 * (-1))) =
      rho 34424 * rho 34424 - rho 34423 * rho 34423 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1678
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX59 rho, seg48In0AccY59 rho⟩ ⟨rho 34423, rho 34424⟩
    ⟨rho 34429, rho 34430⟩ ⟨seg48In0AccX60 rho, seg48In0AccY60 rho⟩ ⟨rho 34436, rho 34437⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1679 rho ∧ Seg48.relationRow1680 rho ∧ Seg48.relationRow1681 rho ∧ Seg48.relationRow1682 rho ∧ Seg48.relationRow1683 rho ∧ Seg48.relationRow1684 rho ∧ Seg48.relationRow1685 rho ∧ Seg48.relationRow1686 rho ∧ Seg48.relationRow1687 rho ∧ Seg48.relationRow1688 rho ∧ Seg48.relationRow1689 rho ∧ Seg48.relationRow1690 rho ∧ Seg48.relationRow1691 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1679⟩

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1679, r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691⟩

theorem seg48In0_rung60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33596 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX60 rho, seg48In0AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34436, rho 34437⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX60 rho, seg48In0AccY60 rho⟩ ⟨rho 34436, rho 34437⟩
        ⟨seg48In0AccX61 rho, seg48In0AccY61 rho⟩ ⟨rho 34449, rho 34450⟩ := by
  obtain ⟨r1679, r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691⟩ := seg48In0_rows60 rho h
  unfold Seg48.relationRow1679 at r1679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1679

  unfold Seg48.relationRow1680 at r1680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1680

  unfold Seg48.relationRow1681 at r1681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1681

  unfold Seg48.relationRow1682 at r1682

  unfold Seg48.relationRow1683 at r1683

  unfold Seg48.relationRow1684 at r1684

  unfold Seg48.relationRow1685 at r1685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1685

  unfold Seg48.relationRow1686 at r1686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1686

  unfold Seg48.relationRow1687 at r1687

  unfold Seg48.relationRow1688 at r1688

  unfold Seg48.relationRow1689 at r1689

  unfold Seg48.relationRow1690 at r1690

  unfold Seg48.relationRow1691 at r1691

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX61 rho = seg48In0AccX60 rho + rho 34444 := by
    unfold seg48In0AccX61 seg48In0AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 60]

    ring

  have hnexty : seg48In0AccY61 rho = seg48In0AccY60 rho + rho 34445 := by
    unfold seg48In0AccY61 seg48In0AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 60]

    ring

  have ha0 : (rho 34436 + rho 34437) * (seg48In0AccX60 rho + seg48In0AccY60 rho) = rho 34438 := by
    unfold seg48In0AccX60 seg48In0AccY60
    linear_combination r1679
  have ha1 : rho 34437 * seg48In0AccX60 rho = rho 34439 := by
    unfold seg48In0AccX60
    linear_combination r1680
  have ha2 : rho 34436 * seg48In0AccY60 rho = rho 34440 := by
    unfold seg48In0AccY60
    linear_combination r1681
  have ha3 : 3021 * rho 34439 * rho 34440 = rho 34441 := by
    linear_combination r1682
  have ha4 : rho 34442 * (1 + rho 34441) = rho 34439 + rho 34440 := by
    linear_combination r1683
  have ha5 : rho 34443 * (1 - rho 34441) = rho 34438 - rho 34439 - rho 34440 := by
    linear_combination r1684
  have haddx :
      rho 34442 * (1 + 3021 * (rho 34437 * seg48In0AccX60 rho) * (rho 34436 * seg48In0AccY60 rho)) =
        rho 34437 * seg48In0AccX60 rho + rho 34436 * seg48In0AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34443 * (1 - 3021 * (rho 34437 * seg48In0AccX60 rho) * (rho 34436 * seg48In0AccY60 rho)) =
        (-1) * (rho 34437 * seg48In0AccX60 rho) - rho 34436 * seg48In0AccY60 rho +
          (seg48In0AccY60 rho - seg48In0AccX60 rho * (-1)) * (rho 34436 + rho 34437) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34443 * (1 - rho 34441) = rho 34438 - rho 34439 - rho 34440 := ha5
      _ = (-1) * rho 34439 - rho 34440 + (seg48In0AccY60 rho - seg48In0AccX60 rho * (-1)) *
          (rho 34436 + rho 34437) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX61 rho = seg48In0AccX60 rho - Bool.toZMod bit * (seg48In0AccX60 rho - rho 34442) := by
    have hd : rho 34444 = Bool.toZMod bit * (rho 34442 - seg48In0AccX60 rho) := by
      rw [← hbit]
      unfold seg48In0AccX60
      linear_combination -r1685
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY61 rho = seg48In0AccY60 rho - Bool.toZMod bit * (seg48In0AccY60 rho - rho 34443) := by
    have hd : rho 34445 = Bool.toZMod bit * (rho 34443 - seg48In0AccY60 rho) := by
      rw [← hbit]
      unfold seg48In0AccY60
      linear_combination -r1686
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34436 * rho 34437 = rho 34446 := by linear_combination r1687
  have hd1 : rho 34436 * rho 34436 = rho 34447 := by linear_combination r1688
  have hd2 : rho 34437 * rho 34437 = rho 34448 := by linear_combination r1689
  have hd3 : rho 34449 * (rho 34437 * rho 34437 + rho 34436 * rho 34436 * (-1)) =
      2 * (rho 34436 * rho 34437) := by
    rw [hd0, hd1, hd2]
    linear_combination r1690
  have hd4 : rho 34450 * (2 - (rho 34437 * rho 34437 + rho 34436 * rho 34436 * (-1))) =
      rho 34437 * rho 34437 - rho 34436 * rho 34436 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1691
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX60 rho, seg48In0AccY60 rho⟩ ⟨rho 34436, rho 34437⟩
    ⟨rho 34442, rho 34443⟩ ⟨seg48In0AccX61 rho, seg48In0AccY61 rho⟩ ⟨rho 34449, rho 34450⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1692 rho ∧ Seg48.relationRow1693 rho ∧ Seg48.relationRow1694 rho ∧ Seg48.relationRow1695 rho ∧ Seg48.relationRow1696 rho ∧ Seg48.relationRow1697 rho ∧ Seg48.relationRow1698 rho ∧ Seg48.relationRow1699 rho ∧ Seg48.relationRow1700 rho ∧ Seg48.relationRow1701 rho ∧ Seg48.relationRow1702 rho ∧ Seg48.relationRow1703 rho ∧ Seg48.relationRow1704 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704⟩

theorem seg48In0_rung61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33597 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX61 rho, seg48In0AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34449, rho 34450⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX61 rho, seg48In0AccY61 rho⟩ ⟨rho 34449, rho 34450⟩
        ⟨seg48In0AccX62 rho, seg48In0AccY62 rho⟩ ⟨rho 34462, rho 34463⟩ := by
  obtain ⟨r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704⟩ := seg48In0_rows61 rho h
  unfold Seg48.relationRow1692 at r1692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1692

  unfold Seg48.relationRow1693 at r1693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1693

  unfold Seg48.relationRow1694 at r1694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1694

  unfold Seg48.relationRow1695 at r1695

  unfold Seg48.relationRow1696 at r1696

  unfold Seg48.relationRow1697 at r1697

  unfold Seg48.relationRow1698 at r1698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1698

  unfold Seg48.relationRow1699 at r1699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1699

  unfold Seg48.relationRow1700 at r1700

  unfold Seg48.relationRow1701 at r1701

  unfold Seg48.relationRow1702 at r1702

  unfold Seg48.relationRow1703 at r1703

  unfold Seg48.relationRow1704 at r1704

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX62 rho = seg48In0AccX61 rho + rho 34457 := by
    unfold seg48In0AccX62 seg48In0AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 61]

    ring

  have hnexty : seg48In0AccY62 rho = seg48In0AccY61 rho + rho 34458 := by
    unfold seg48In0AccY62 seg48In0AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 61]

    ring

  have ha0 : (rho 34449 + rho 34450) * (seg48In0AccX61 rho + seg48In0AccY61 rho) = rho 34451 := by
    unfold seg48In0AccX61 seg48In0AccY61
    linear_combination r1692
  have ha1 : rho 34450 * seg48In0AccX61 rho = rho 34452 := by
    unfold seg48In0AccX61
    linear_combination r1693
  have ha2 : rho 34449 * seg48In0AccY61 rho = rho 34453 := by
    unfold seg48In0AccY61
    linear_combination r1694
  have ha3 : 3021 * rho 34452 * rho 34453 = rho 34454 := by
    linear_combination r1695
  have ha4 : rho 34455 * (1 + rho 34454) = rho 34452 + rho 34453 := by
    linear_combination r1696
  have ha5 : rho 34456 * (1 - rho 34454) = rho 34451 - rho 34452 - rho 34453 := by
    linear_combination r1697
  have haddx :
      rho 34455 * (1 + 3021 * (rho 34450 * seg48In0AccX61 rho) * (rho 34449 * seg48In0AccY61 rho)) =
        rho 34450 * seg48In0AccX61 rho + rho 34449 * seg48In0AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34456 * (1 - 3021 * (rho 34450 * seg48In0AccX61 rho) * (rho 34449 * seg48In0AccY61 rho)) =
        (-1) * (rho 34450 * seg48In0AccX61 rho) - rho 34449 * seg48In0AccY61 rho +
          (seg48In0AccY61 rho - seg48In0AccX61 rho * (-1)) * (rho 34449 + rho 34450) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34456 * (1 - rho 34454) = rho 34451 - rho 34452 - rho 34453 := ha5
      _ = (-1) * rho 34452 - rho 34453 + (seg48In0AccY61 rho - seg48In0AccX61 rho * (-1)) *
          (rho 34449 + rho 34450) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX62 rho = seg48In0AccX61 rho - Bool.toZMod bit * (seg48In0AccX61 rho - rho 34455) := by
    have hd : rho 34457 = Bool.toZMod bit * (rho 34455 - seg48In0AccX61 rho) := by
      rw [← hbit]
      unfold seg48In0AccX61
      linear_combination -r1698
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY62 rho = seg48In0AccY61 rho - Bool.toZMod bit * (seg48In0AccY61 rho - rho 34456) := by
    have hd : rho 34458 = Bool.toZMod bit * (rho 34456 - seg48In0AccY61 rho) := by
      rw [← hbit]
      unfold seg48In0AccY61
      linear_combination -r1699
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34449 * rho 34450 = rho 34459 := by linear_combination r1700
  have hd1 : rho 34449 * rho 34449 = rho 34460 := by linear_combination r1701
  have hd2 : rho 34450 * rho 34450 = rho 34461 := by linear_combination r1702
  have hd3 : rho 34462 * (rho 34450 * rho 34450 + rho 34449 * rho 34449 * (-1)) =
      2 * (rho 34449 * rho 34450) := by
    rw [hd0, hd1, hd2]
    linear_combination r1703
  have hd4 : rho 34463 * (2 - (rho 34450 * rho 34450 + rho 34449 * rho 34449 * (-1))) =
      rho 34450 * rho 34450 - rho 34449 * rho 34449 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1704
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX61 rho, seg48In0AccY61 rho⟩ ⟨rho 34449, rho 34450⟩
    ⟨rho 34455, rho 34456⟩ ⟨seg48In0AccX62 rho, seg48In0AccY62 rho⟩ ⟨rho 34462, rho 34463⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1705 rho ∧ Seg48.relationRow1706 rho ∧ Seg48.relationRow1707 rho ∧ Seg48.relationRow1708 rho ∧ Seg48.relationRow1709 rho ∧ Seg48.relationRow1710 rho ∧ Seg48.relationRow1711 rho ∧ Seg48.relationRow1712 rho ∧ Seg48.relationRow1713 rho ∧ Seg48.relationRow1714 rho ∧ Seg48.relationRow1715 rho ∧ Seg48.relationRow1716 rho ∧ Seg48.relationRow1717 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717⟩

theorem seg48In0_rung62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33598 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX62 rho, seg48In0AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34462, rho 34463⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX62 rho, seg48In0AccY62 rho⟩ ⟨rho 34462, rho 34463⟩
        ⟨seg48In0AccX63 rho, seg48In0AccY63 rho⟩ ⟨rho 34475, rho 34476⟩ := by
  obtain ⟨r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717⟩ := seg48In0_rows62 rho h
  unfold Seg48.relationRow1705 at r1705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1705

  unfold Seg48.relationRow1706 at r1706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1706

  unfold Seg48.relationRow1707 at r1707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1707

  unfold Seg48.relationRow1708 at r1708

  unfold Seg48.relationRow1709 at r1709

  unfold Seg48.relationRow1710 at r1710

  unfold Seg48.relationRow1711 at r1711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1711

  unfold Seg48.relationRow1712 at r1712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1712

  unfold Seg48.relationRow1713 at r1713

  unfold Seg48.relationRow1714 at r1714

  unfold Seg48.relationRow1715 at r1715

  unfold Seg48.relationRow1716 at r1716

  unfold Seg48.relationRow1717 at r1717

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX63 rho = seg48In0AccX62 rho + rho 34470 := by
    unfold seg48In0AccX63 seg48In0AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 62]

    ring

  have hnexty : seg48In0AccY63 rho = seg48In0AccY62 rho + rho 34471 := by
    unfold seg48In0AccY63 seg48In0AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 62]

    ring

  have ha0 : (rho 34462 + rho 34463) * (seg48In0AccX62 rho + seg48In0AccY62 rho) = rho 34464 := by
    unfold seg48In0AccX62 seg48In0AccY62
    linear_combination r1705
  have ha1 : rho 34463 * seg48In0AccX62 rho = rho 34465 := by
    unfold seg48In0AccX62
    linear_combination r1706
  have ha2 : rho 34462 * seg48In0AccY62 rho = rho 34466 := by
    unfold seg48In0AccY62
    linear_combination r1707
  have ha3 : 3021 * rho 34465 * rho 34466 = rho 34467 := by
    linear_combination r1708
  have ha4 : rho 34468 * (1 + rho 34467) = rho 34465 + rho 34466 := by
    linear_combination r1709
  have ha5 : rho 34469 * (1 - rho 34467) = rho 34464 - rho 34465 - rho 34466 := by
    linear_combination r1710
  have haddx :
      rho 34468 * (1 + 3021 * (rho 34463 * seg48In0AccX62 rho) * (rho 34462 * seg48In0AccY62 rho)) =
        rho 34463 * seg48In0AccX62 rho + rho 34462 * seg48In0AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34469 * (1 - 3021 * (rho 34463 * seg48In0AccX62 rho) * (rho 34462 * seg48In0AccY62 rho)) =
        (-1) * (rho 34463 * seg48In0AccX62 rho) - rho 34462 * seg48In0AccY62 rho +
          (seg48In0AccY62 rho - seg48In0AccX62 rho * (-1)) * (rho 34462 + rho 34463) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34469 * (1 - rho 34467) = rho 34464 - rho 34465 - rho 34466 := ha5
      _ = (-1) * rho 34465 - rho 34466 + (seg48In0AccY62 rho - seg48In0AccX62 rho * (-1)) *
          (rho 34462 + rho 34463) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX63 rho = seg48In0AccX62 rho - Bool.toZMod bit * (seg48In0AccX62 rho - rho 34468) := by
    have hd : rho 34470 = Bool.toZMod bit * (rho 34468 - seg48In0AccX62 rho) := by
      rw [← hbit]
      unfold seg48In0AccX62
      linear_combination -r1711
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY63 rho = seg48In0AccY62 rho - Bool.toZMod bit * (seg48In0AccY62 rho - rho 34469) := by
    have hd : rho 34471 = Bool.toZMod bit * (rho 34469 - seg48In0AccY62 rho) := by
      rw [← hbit]
      unfold seg48In0AccY62
      linear_combination -r1712
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34462 * rho 34463 = rho 34472 := by linear_combination r1713
  have hd1 : rho 34462 * rho 34462 = rho 34473 := by linear_combination r1714
  have hd2 : rho 34463 * rho 34463 = rho 34474 := by linear_combination r1715
  have hd3 : rho 34475 * (rho 34463 * rho 34463 + rho 34462 * rho 34462 * (-1)) =
      2 * (rho 34462 * rho 34463) := by
    rw [hd0, hd1, hd2]
    linear_combination r1716
  have hd4 : rho 34476 * (2 - (rho 34463 * rho 34463 + rho 34462 * rho 34462 * (-1))) =
      rho 34463 * rho 34463 - rho 34462 * rho 34462 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1717
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX62 rho, seg48In0AccY62 rho⟩ ⟨rho 34462, rho 34463⟩
    ⟨rho 34468, rho 34469⟩ ⟨seg48In0AccX63 rho, seg48In0AccY63 rho⟩ ⟨rho 34475, rho 34476⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1718 rho ∧ Seg48.relationRow1719 rho ∧ Seg48.relationRow1720 rho ∧ Seg48.relationRow1721 rho ∧ Seg48.relationRow1722 rho ∧ Seg48.relationRow1723 rho ∧ Seg48.relationRow1724 rho ∧ Seg48.relationRow1725 rho ∧ Seg48.relationRow1726 rho ∧ Seg48.relationRow1727 rho ∧ Seg48.relationRow1728 rho ∧ Seg48.relationRow1729 rho ∧ Seg48.relationRow1730 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730⟩

theorem seg48In0_rung63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33599 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX63 rho, seg48In0AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34475, rho 34476⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX63 rho, seg48In0AccY63 rho⟩ ⟨rho 34475, rho 34476⟩
        ⟨seg48In0AccX64 rho, seg48In0AccY64 rho⟩ ⟨rho 34488, rho 34489⟩ := by
  obtain ⟨r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730⟩ := seg48In0_rows63 rho h
  unfold Seg48.relationRow1718 at r1718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1718

  unfold Seg48.relationRow1719 at r1719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1719

  unfold Seg48.relationRow1720 at r1720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1720

  unfold Seg48.relationRow1721 at r1721

  unfold Seg48.relationRow1722 at r1722

  unfold Seg48.relationRow1723 at r1723

  unfold Seg48.relationRow1724 at r1724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1724

  unfold Seg48.relationRow1725 at r1725

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1725

  unfold Seg48.relationRow1726 at r1726

  unfold Seg48.relationRow1727 at r1727

  unfold Seg48.relationRow1728 at r1728

  unfold Seg48.relationRow1729 at r1729

  unfold Seg48.relationRow1730 at r1730

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX64 rho = seg48In0AccX63 rho + rho 34483 := by
    unfold seg48In0AccX64 seg48In0AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 63]

    ring

  have hnexty : seg48In0AccY64 rho = seg48In0AccY63 rho + rho 34484 := by
    unfold seg48In0AccY64 seg48In0AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 63]

    ring

  have ha0 : (rho 34475 + rho 34476) * (seg48In0AccX63 rho + seg48In0AccY63 rho) = rho 34477 := by
    unfold seg48In0AccX63 seg48In0AccY63
    linear_combination r1718
  have ha1 : rho 34476 * seg48In0AccX63 rho = rho 34478 := by
    unfold seg48In0AccX63
    linear_combination r1719
  have ha2 : rho 34475 * seg48In0AccY63 rho = rho 34479 := by
    unfold seg48In0AccY63
    linear_combination r1720
  have ha3 : 3021 * rho 34478 * rho 34479 = rho 34480 := by
    linear_combination r1721
  have ha4 : rho 34481 * (1 + rho 34480) = rho 34478 + rho 34479 := by
    linear_combination r1722
  have ha5 : rho 34482 * (1 - rho 34480) = rho 34477 - rho 34478 - rho 34479 := by
    linear_combination r1723
  have haddx :
      rho 34481 * (1 + 3021 * (rho 34476 * seg48In0AccX63 rho) * (rho 34475 * seg48In0AccY63 rho)) =
        rho 34476 * seg48In0AccX63 rho + rho 34475 * seg48In0AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34482 * (1 - 3021 * (rho 34476 * seg48In0AccX63 rho) * (rho 34475 * seg48In0AccY63 rho)) =
        (-1) * (rho 34476 * seg48In0AccX63 rho) - rho 34475 * seg48In0AccY63 rho +
          (seg48In0AccY63 rho - seg48In0AccX63 rho * (-1)) * (rho 34475 + rho 34476) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34482 * (1 - rho 34480) = rho 34477 - rho 34478 - rho 34479 := ha5
      _ = (-1) * rho 34478 - rho 34479 + (seg48In0AccY63 rho - seg48In0AccX63 rho * (-1)) *
          (rho 34475 + rho 34476) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX64 rho = seg48In0AccX63 rho - Bool.toZMod bit * (seg48In0AccX63 rho - rho 34481) := by
    have hd : rho 34483 = Bool.toZMod bit * (rho 34481 - seg48In0AccX63 rho) := by
      rw [← hbit]
      unfold seg48In0AccX63
      linear_combination -r1724
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY64 rho = seg48In0AccY63 rho - Bool.toZMod bit * (seg48In0AccY63 rho - rho 34482) := by
    have hd : rho 34484 = Bool.toZMod bit * (rho 34482 - seg48In0AccY63 rho) := by
      rw [← hbit]
      unfold seg48In0AccY63
      linear_combination -r1725
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34475 * rho 34476 = rho 34485 := by linear_combination r1726
  have hd1 : rho 34475 * rho 34475 = rho 34486 := by linear_combination r1727
  have hd2 : rho 34476 * rho 34476 = rho 34487 := by linear_combination r1728
  have hd3 : rho 34488 * (rho 34476 * rho 34476 + rho 34475 * rho 34475 * (-1)) =
      2 * (rho 34475 * rho 34476) := by
    rw [hd0, hd1, hd2]
    linear_combination r1729
  have hd4 : rho 34489 * (2 - (rho 34476 * rho 34476 + rho 34475 * rho 34475 * (-1))) =
      rho 34476 * rho 34476 - rho 34475 * rho 34475 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1730
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX63 rho, seg48In0AccY63 rho⟩ ⟨rho 34475, rho 34476⟩
    ⟨rho 34481, rho 34482⟩ ⟨seg48In0AccX64 rho, seg48In0AccY64 rho⟩ ⟨rho 34488, rho 34489⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1731 rho ∧ Seg48.relationRow1732 rho ∧ Seg48.relationRow1733 rho ∧ Seg48.relationRow1734 rho ∧ Seg48.relationRow1735 rho ∧ Seg48.relationRow1736 rho ∧ Seg48.relationRow1737 rho ∧ Seg48.relationRow1738 rho ∧ Seg48.relationRow1739 rho ∧ Seg48.relationRow1740 rho ∧ Seg48.relationRow1741 rho ∧ Seg48.relationRow1742 rho ∧ Seg48.relationRow1743 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743⟩

theorem seg48In0_rung64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33600 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX64 rho, seg48In0AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34488, rho 34489⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX64 rho, seg48In0AccY64 rho⟩ ⟨rho 34488, rho 34489⟩
        ⟨seg48In0AccX65 rho, seg48In0AccY65 rho⟩ ⟨rho 34501, rho 34502⟩ := by
  obtain ⟨r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743⟩ := seg48In0_rows64 rho h
  unfold Seg48.relationRow1731 at r1731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1731

  unfold Seg48.relationRow1732 at r1732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1732

  unfold Seg48.relationRow1733 at r1733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1733

  unfold Seg48.relationRow1734 at r1734

  unfold Seg48.relationRow1735 at r1735

  unfold Seg48.relationRow1736 at r1736

  unfold Seg48.relationRow1737 at r1737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1737

  unfold Seg48.relationRow1738 at r1738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1738

  unfold Seg48.relationRow1739 at r1739

  unfold Seg48.relationRow1740 at r1740

  unfold Seg48.relationRow1741 at r1741

  unfold Seg48.relationRow1742 at r1742

  unfold Seg48.relationRow1743 at r1743

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX65 rho = seg48In0AccX64 rho + rho 34496 := by
    unfold seg48In0AccX65 seg48In0AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 64]

    ring

  have hnexty : seg48In0AccY65 rho = seg48In0AccY64 rho + rho 34497 := by
    unfold seg48In0AccY65 seg48In0AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 64]

    ring

  have ha0 : (rho 34488 + rho 34489) * (seg48In0AccX64 rho + seg48In0AccY64 rho) = rho 34490 := by
    unfold seg48In0AccX64 seg48In0AccY64
    linear_combination r1731
  have ha1 : rho 34489 * seg48In0AccX64 rho = rho 34491 := by
    unfold seg48In0AccX64
    linear_combination r1732
  have ha2 : rho 34488 * seg48In0AccY64 rho = rho 34492 := by
    unfold seg48In0AccY64
    linear_combination r1733
  have ha3 : 3021 * rho 34491 * rho 34492 = rho 34493 := by
    linear_combination r1734
  have ha4 : rho 34494 * (1 + rho 34493) = rho 34491 + rho 34492 := by
    linear_combination r1735
  have ha5 : rho 34495 * (1 - rho 34493) = rho 34490 - rho 34491 - rho 34492 := by
    linear_combination r1736
  have haddx :
      rho 34494 * (1 + 3021 * (rho 34489 * seg48In0AccX64 rho) * (rho 34488 * seg48In0AccY64 rho)) =
        rho 34489 * seg48In0AccX64 rho + rho 34488 * seg48In0AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34495 * (1 - 3021 * (rho 34489 * seg48In0AccX64 rho) * (rho 34488 * seg48In0AccY64 rho)) =
        (-1) * (rho 34489 * seg48In0AccX64 rho) - rho 34488 * seg48In0AccY64 rho +
          (seg48In0AccY64 rho - seg48In0AccX64 rho * (-1)) * (rho 34488 + rho 34489) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34495 * (1 - rho 34493) = rho 34490 - rho 34491 - rho 34492 := ha5
      _ = (-1) * rho 34491 - rho 34492 + (seg48In0AccY64 rho - seg48In0AccX64 rho * (-1)) *
          (rho 34488 + rho 34489) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX65 rho = seg48In0AccX64 rho - Bool.toZMod bit * (seg48In0AccX64 rho - rho 34494) := by
    have hd : rho 34496 = Bool.toZMod bit * (rho 34494 - seg48In0AccX64 rho) := by
      rw [← hbit]
      unfold seg48In0AccX64
      linear_combination -r1737
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY65 rho = seg48In0AccY64 rho - Bool.toZMod bit * (seg48In0AccY64 rho - rho 34495) := by
    have hd : rho 34497 = Bool.toZMod bit * (rho 34495 - seg48In0AccY64 rho) := by
      rw [← hbit]
      unfold seg48In0AccY64
      linear_combination -r1738
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34488 * rho 34489 = rho 34498 := by linear_combination r1739
  have hd1 : rho 34488 * rho 34488 = rho 34499 := by linear_combination r1740
  have hd2 : rho 34489 * rho 34489 = rho 34500 := by linear_combination r1741
  have hd3 : rho 34501 * (rho 34489 * rho 34489 + rho 34488 * rho 34488 * (-1)) =
      2 * (rho 34488 * rho 34489) := by
    rw [hd0, hd1, hd2]
    linear_combination r1742
  have hd4 : rho 34502 * (2 - (rho 34489 * rho 34489 + rho 34488 * rho 34488 * (-1))) =
      rho 34489 * rho 34489 - rho 34488 * rho 34488 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1743
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX64 rho, seg48In0AccY64 rho⟩ ⟨rho 34488, rho 34489⟩
    ⟨rho 34494, rho 34495⟩ ⟨seg48In0AccX65 rho, seg48In0AccY65 rho⟩ ⟨rho 34501, rho 34502⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1744 rho ∧ Seg48.relationRow1745 rho ∧ Seg48.relationRow1746 rho ∧ Seg48.relationRow1747 rho ∧ Seg48.relationRow1748 rho ∧ Seg48.relationRow1749 rho ∧ Seg48.relationRow1750 rho ∧ Seg48.relationRow1751 rho ∧ Seg48.relationRow1752 rho ∧ Seg48.relationRow1753 rho ∧ Seg48.relationRow1754 rho ∧ Seg48.relationRow1755 rho ∧ Seg48.relationRow1756 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, _, _, _⟩

  exact ⟨r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756⟩

theorem seg48In0_rung65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33601 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX65 rho, seg48In0AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34501, rho 34502⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX65 rho, seg48In0AccY65 rho⟩ ⟨rho 34501, rho 34502⟩
        ⟨seg48In0AccX66 rho, seg48In0AccY66 rho⟩ ⟨rho 34514, rho 34515⟩ := by
  obtain ⟨r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756⟩ := seg48In0_rows65 rho h
  unfold Seg48.relationRow1744 at r1744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1744

  unfold Seg48.relationRow1745 at r1745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1745

  unfold Seg48.relationRow1746 at r1746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1746

  unfold Seg48.relationRow1747 at r1747

  unfold Seg48.relationRow1748 at r1748

  unfold Seg48.relationRow1749 at r1749

  unfold Seg48.relationRow1750 at r1750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1750

  unfold Seg48.relationRow1751 at r1751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1751

  unfold Seg48.relationRow1752 at r1752

  unfold Seg48.relationRow1753 at r1753

  unfold Seg48.relationRow1754 at r1754

  unfold Seg48.relationRow1755 at r1755

  unfold Seg48.relationRow1756 at r1756

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX66 rho = seg48In0AccX65 rho + rho 34509 := by
    unfold seg48In0AccX66 seg48In0AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 65]

    ring

  have hnexty : seg48In0AccY66 rho = seg48In0AccY65 rho + rho 34510 := by
    unfold seg48In0AccY66 seg48In0AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 65]

    ring

  have ha0 : (rho 34501 + rho 34502) * (seg48In0AccX65 rho + seg48In0AccY65 rho) = rho 34503 := by
    unfold seg48In0AccX65 seg48In0AccY65
    linear_combination r1744
  have ha1 : rho 34502 * seg48In0AccX65 rho = rho 34504 := by
    unfold seg48In0AccX65
    linear_combination r1745
  have ha2 : rho 34501 * seg48In0AccY65 rho = rho 34505 := by
    unfold seg48In0AccY65
    linear_combination r1746
  have ha3 : 3021 * rho 34504 * rho 34505 = rho 34506 := by
    linear_combination r1747
  have ha4 : rho 34507 * (1 + rho 34506) = rho 34504 + rho 34505 := by
    linear_combination r1748
  have ha5 : rho 34508 * (1 - rho 34506) = rho 34503 - rho 34504 - rho 34505 := by
    linear_combination r1749
  have haddx :
      rho 34507 * (1 + 3021 * (rho 34502 * seg48In0AccX65 rho) * (rho 34501 * seg48In0AccY65 rho)) =
        rho 34502 * seg48In0AccX65 rho + rho 34501 * seg48In0AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34508 * (1 - 3021 * (rho 34502 * seg48In0AccX65 rho) * (rho 34501 * seg48In0AccY65 rho)) =
        (-1) * (rho 34502 * seg48In0AccX65 rho) - rho 34501 * seg48In0AccY65 rho +
          (seg48In0AccY65 rho - seg48In0AccX65 rho * (-1)) * (rho 34501 + rho 34502) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34508 * (1 - rho 34506) = rho 34503 - rho 34504 - rho 34505 := ha5
      _ = (-1) * rho 34504 - rho 34505 + (seg48In0AccY65 rho - seg48In0AccX65 rho * (-1)) *
          (rho 34501 + rho 34502) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX66 rho = seg48In0AccX65 rho - Bool.toZMod bit * (seg48In0AccX65 rho - rho 34507) := by
    have hd : rho 34509 = Bool.toZMod bit * (rho 34507 - seg48In0AccX65 rho) := by
      rw [← hbit]
      unfold seg48In0AccX65
      linear_combination -r1750
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY66 rho = seg48In0AccY65 rho - Bool.toZMod bit * (seg48In0AccY65 rho - rho 34508) := by
    have hd : rho 34510 = Bool.toZMod bit * (rho 34508 - seg48In0AccY65 rho) := by
      rw [← hbit]
      unfold seg48In0AccY65
      linear_combination -r1751
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34501 * rho 34502 = rho 34511 := by linear_combination r1752
  have hd1 : rho 34501 * rho 34501 = rho 34512 := by linear_combination r1753
  have hd2 : rho 34502 * rho 34502 = rho 34513 := by linear_combination r1754
  have hd3 : rho 34514 * (rho 34502 * rho 34502 + rho 34501 * rho 34501 * (-1)) =
      2 * (rho 34501 * rho 34502) := by
    rw [hd0, hd1, hd2]
    linear_combination r1755
  have hd4 : rho 34515 * (2 - (rho 34502 * rho 34502 + rho 34501 * rho 34501 * (-1))) =
      rho 34502 * rho 34502 - rho 34501 * rho 34501 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1756
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX65 rho, seg48In0AccY65 rho⟩ ⟨rho 34501, rho 34502⟩
    ⟨rho 34507, rho 34508⟩ ⟨seg48In0AccX66 rho, seg48In0AccY66 rho⟩ ⟨rho 34514, rho 34515⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c5 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg48In0_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg48In0_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg48In0_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg48In0_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg48In0_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg48In0_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg48In0_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg48In0_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg48In0_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg48In0_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
