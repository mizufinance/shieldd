import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode4Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node4_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation rho) :
    nodeOut4 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 1497 + rho 1498) (rho 1499 + rho 1500 + rho 1501) (rho 1499 + rho 1503 + rho 1504) (rho 1502 + rho 1505) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, p18, p19, p20, p21, p22, p23,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart20 at p20
  rcases p20 with ⟨r1600, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart21 at p21
  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart22 at p22
  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837, r1838, r1839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850, r1851, r1852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 1497 + rho 1498) (rho 1499 + rho 1500 + rho 1501) (rho 1499 + rho 1503 + rho 1504) (rho 1502 + rho 1505)
      (fun w334 w339 w344 w349 w354 => w334 = rho 1835 ∧ w339 = rho 1840 ∧ w344 = rho 1845 ∧ w349 = rho 1850 ∧ w354 = rho 1855) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node4_seg0 rho _ r1503 r1504 r1505 r1506 r1507 (node4_seg1 rho _ r1508 r1509 r1510 r1511 r1512 (node4_seg2 rho _ r1513 r1514 r1515 r1516 r1517 (node4_seg3 rho _ r1518 r1519 r1520 r1521 r1522 (node4_seg4 rho _ r1523 r1524 r1525 r1526 r1527 (node4_seg5 rho _ r1528 r1529 r1530 r1531 r1532 (node4_seg6 rho _ r1533 r1534 r1535 r1536 r1537 (node4_seg7 rho _ r1538 r1539 r1540 r1541 r1542 (node4_seg8 rho _ r1543 r1544 r1545 r1546 r1547 (node4_seg9 rho _ r1548 r1549 r1550 r1551 r1552 (node4_seg10 rho _ r1553 r1554 r1555 r1556 r1557 (node4_seg11 rho _ r1558 r1559 r1560 r1561 r1562 (node4_seg12 rho _ r1563 r1564 r1565 r1566 r1567 (node4_seg13 rho _ r1568 r1569 r1570 r1571 r1572 (node4_seg14 rho _ r1573 r1574 r1575 r1576 r1577 (node4_seg15 rho _ r1578 r1579 r1580 r1581 r1582 (node4_seg16 rho _ r1583 r1584 r1585 r1586 r1587 (node4_seg17 rho _ r1588 r1589 r1590 r1591 r1592 (node4_seg18 rho _ r1593 r1594 r1595 r1596 r1597 (node4_seg19 rho _ r1598 r1599 r1600 r1601 r1602 (node4_seg20 rho _ r1603 r1604 r1605 r1606 r1607 (node4_seg21 rho _ r1608 r1609 r1610 r1611 r1612 (node4_seg22 rho _ r1613 r1614 r1615 r1616 r1617 (node4_seg23 rho _ r1618 r1619 r1620 r1621 r1622 (node4_seg24 rho _ r1623 r1624 r1625 r1626 r1627 (node4_seg25 rho _ r1628 r1629 r1630 r1631 r1632 (node4_seg26 rho _ r1633 r1634 r1635 r1636 r1637 (node4_seg27 rho _ r1638 r1639 r1640 r1641 r1642 (node4_seg28 rho _ r1643 r1644 r1645 r1646 r1647 (node4_seg29 rho _ r1648 r1649 r1650 r1651 r1652 (node4_seg30 rho _ r1653 r1654 r1655 r1656 r1657 (node4_seg31 rho _ r1658 r1659 r1660 r1661 r1662 (node4_seg32 rho _ r1663 r1664 r1665 r1666 r1667 (node4_seg33 rho _ r1668 r1669 r1670 r1671 r1672 (node4_seg34 rho _ r1673 r1674 r1675 r1676 r1677 (node4_seg35 rho _ r1678 r1679 r1680 r1681 r1682 (node4_seg36 rho _ r1683 r1684 r1685 r1686 r1687 (node4_seg37 rho _ r1688 r1689 r1690 r1691 r1692 (node4_seg38 rho _ r1693 r1694 r1695 r1696 r1697 (node4_seg39 rho _ r1698 r1699 r1700 r1701 r1702 (node4_seg40 rho _ r1703 r1704 r1705 r1706 r1707 (node4_seg41 rho _ r1708 r1709 r1710 r1711 r1712 (node4_seg42 rho _ r1713 r1714 r1715 r1716 r1717 (node4_seg43 rho _ r1718 r1719 r1720 r1721 r1722 (node4_seg44 rho _ r1723 r1724 r1725 r1726 r1727 (node4_seg45 rho _ r1728 r1729 r1730 r1731 r1732 (node4_seg46 rho _ r1733 r1734 r1735 r1736 r1737 (node4_seg47 rho _ r1738 r1739 r1740 r1741 r1742 (node4_seg48 rho _ r1743 r1744 r1745 r1746 r1747 (node4_seg49 rho _ r1748 r1749 r1750 r1751 r1752 (node4_seg50 rho _ r1753 r1754 r1755 r1756 r1757 (node4_seg51 rho _ r1758 r1759 r1760 r1761 r1762 (node4_seg52 rho _ r1763 r1764 r1765 r1766 r1767 (node4_seg53 rho _ r1768 r1769 r1770 r1771 r1772 (node4_seg54 rho _ r1773 r1774 r1775 r1776 r1777 (node4_seg55 rho _ r1778 r1779 r1780 r1781 r1782 (node4_seg56 rho _ r1783 r1784 r1785 r1786 r1787 (node4_seg57 rho _ r1788 r1789 r1790 r1791 r1792 (node4_seg58 rho _ r1793 r1794 r1795 r1796 r1797 (node4_seg59 rho _ r1798 r1799 r1800 r1801 r1802 (node4_seg60 rho _ r1803 r1804 r1805 r1806 r1807 (node4_seg61 rho _ r1808 r1809 r1810 r1811 r1812 (node4_seg62 rho _ r1813 r1814 r1815 r1816 r1817 (node4_seg63 rho _ r1818 r1819 r1820 r1821 r1822 (node4_seg64 rho _ r1823 r1824 r1825 r1826 r1827 (node4_seg65 rho _ r1828 r1829 r1830 r1831 r1832 (node4_seg66 rho _ r1833 r1834 r1835 r1836 r1837 (node4_seg67 rho _ r1838 r1839 r1840 r1841 r1842 (node4_seg68 rho _ r1843 r1844 r1845 r1846 r1847 (node4_seg69 rho _ r1848 r1849 r1850 r1851 r1852 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 1497 + rho 1498) (rho 1499 + rho 1500 + rho 1501) (rho 1499 + rho 1503 + rho 1504) (rho 1502 + rho 1505) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut4, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
