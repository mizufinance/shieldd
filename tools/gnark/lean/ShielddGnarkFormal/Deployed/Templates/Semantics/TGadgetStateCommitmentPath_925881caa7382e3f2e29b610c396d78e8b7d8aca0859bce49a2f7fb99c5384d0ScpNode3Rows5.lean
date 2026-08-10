import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1635 rho)
    (r1636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1636 rho)
    (r1637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1637 rho)
    (r1638 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1638 rho)
    (r1639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1639 rho)
    (tail : next (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg50 (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) next := by
  exact ⟨rho 1639, rho 1640, rho 1641, rho 1642, rho 1643, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1635 at r1635; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc35, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc35Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc35Part1] at r1635; linear_combination r1635), r1636, r1637, r1638, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1639 at r1639; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc35, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc35Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc35Part1] at r1639; linear_combination r1639), tail⟩

theorem template_scp_node3_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1640 rho)
    (r1641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1641 rho)
    (r1642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1642 rho)
    (r1643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1643 rho)
    (r1644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1644 rho)
    (tail : next (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) (rho 1648)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg51 (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) next := by
  exact ⟨rho 1644, rho 1645, rho 1646, rho 1647, rho 1648, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1640 at r1640; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc36, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc36Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc36Part1] at r1640; linear_combination r1640), r1641, r1642, r1643, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1644 at r1644; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc36, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc36Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc36Part1] at r1644; linear_combination r1644), tail⟩

theorem template_scp_node3_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1645 rho)
    (r1646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1646 rho)
    (r1647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1647 rho)
    (r1648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1648 rho)
    (r1649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1649 rho)
    (tail : next (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) (rho 1648) (rho 1653)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg52 (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) (rho 1648) next := by
  exact ⟨rho 1649, rho 1650, rho 1651, rho 1652, rho 1653, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1645 at r1645; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc37, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc37Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc37Part1] at r1645; linear_combination r1645), r1646, r1647, r1648, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1649 at r1649; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc37, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc37Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc37Part1] at r1649; linear_combination r1649), tail⟩

theorem template_scp_node3_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1650 rho)
    (r1651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1651 rho)
    (r1652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1652 rho)
    (r1653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1653 rho)
    (r1654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1654 rho)
    (tail : next (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) (rho 1648) (rho 1653) (rho 1658)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg53 (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) (rho 1648) (rho 1653) next := by
  exact ⟨rho 1654, rho 1655, rho 1656, rho 1657, rho 1658, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1650 at r1650; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc38, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc38Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc38Part1] at r1650; linear_combination r1650), r1651, r1652, r1653, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1654 at r1654; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc38, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc38Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc38Part1] at r1654; linear_combination r1654), tail⟩

theorem template_scp_node3_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1655 rho)
    (r1656 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1656 rho)
    (r1657 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1657 rho)
    (r1658 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1658 rho)
    (r1659 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1659 rho)
    (tail : next (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg54 (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488) (rho 1493) (rho 1498) (rho 1503) (rho 1508) (rho 1513) (rho 1518) (rho 1523) (rho 1528) (rho 1533) (rho 1538) (rho 1543) (rho 1548) (rho 1553) (rho 1558) (rho 1563) (rho 1568) (rho 1573) (rho 1578) (rho 1583) (rho 1588) (rho 1593) (rho 1598) (rho 1603) (rho 1608) (rho 1613) (rho 1618) (rho 1623) (rho 1628) (rho 1633) (rho 1638) (rho 1643) (rho 1648) (rho 1653) (rho 1658) next := by
  exact ⟨rho 1659, rho 1660, rho 1661, rho 1662, rho 1663, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1655 at r1655; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc39, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc39Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc39Part1] at r1655; linear_combination r1655), r1656, r1657, r1658, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1659 at r1659; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc39, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc39Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc39Part1] at r1659; linear_combination r1659), tail⟩

theorem template_scp_node3_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1660 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1660 rho)
    (r1661 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1661 rho)
    (r1662 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1662 rho)
    (r1663 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1663 rho)
    (r1664 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1664 rho)
    (tail : next (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg55 (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) next := by
  exact ⟨rho 1664, rho 1665, rho 1666, rho 1667, rho 1668, r1660, r1661, r1662, r1663, r1664, tail⟩

theorem template_scp_node3_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1665 rho)
    (r1666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1666 rho)
    (r1667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1667 rho)
    (r1668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1668 rho)
    (r1669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1669 rho)
    (tail : next (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) (rho 1673)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg56 (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) next := by
  exact ⟨rho 1669, rho 1670, rho 1671, rho 1672, rho 1673, r1665, r1666, r1667, r1668, r1669, tail⟩

theorem template_scp_node3_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1670 rho)
    (r1671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1671 rho)
    (r1672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1672 rho)
    (r1673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1673 rho)
    (r1674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1674 rho)
    (tail : next (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) (rho 1673) (rho 1678)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg57 (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) (rho 1673) next := by
  exact ⟨rho 1674, rho 1675, rho 1676, rho 1677, rho 1678, r1670, r1671, r1672, r1673, r1674, tail⟩

theorem template_scp_node3_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1675 rho)
    (r1676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1676 rho)
    (r1677 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1677 rho)
    (r1678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1678 rho)
    (r1679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1679 rho)
    (tail : next (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) (rho 1673) (rho 1678) (rho 1683)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg58 (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) (rho 1673) (rho 1678) next := by
  exact ⟨rho 1679, rho 1680, rho 1681, rho 1682, rho 1683, r1675, r1676, r1677, r1678, r1679, tail⟩

theorem template_scp_node3_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1680 rho)
    (r1681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1681 rho)
    (r1682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1682 rho)
    (r1683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1683 rho)
    (r1684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1684 rho)
    (tail : next (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg59 (rho 1643) (rho 1648) (rho 1653) (rho 1658) (rho 1663) (rho 1668) (rho 1673) (rho 1678) (rho 1683) next := by
  exact ⟨rho 1684, rho 1685, rho 1686, rho 1687, rho 1688, r1680, r1681, r1682, r1683, r1684, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
