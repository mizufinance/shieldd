import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node4_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1799 rho)
    (r1800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1800 rho)
    (r1801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1801 rho)
    (r1802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1802 rho)
    (r1803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1803 rho)
    (tail : next (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) (rho 1806)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg10 (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) next := by
  exact ⟨rho 1802, rho 1803, rho 1804, rho 1805, rho 1806, r1799, r1800, r1801, r1802, r1803, tail⟩

theorem template_scp_node4_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1804 rho)
    (r1805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1805 rho)
    (r1806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1806 rho)
    (r1807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1807 rho)
    (r1808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1808 rho)
    (tail : next (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) (rho 1806) (rho 1811)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg11 (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) (rho 1806) next := by
  exact ⟨rho 1807, rho 1808, rho 1809, rho 1810, rho 1811, r1804, r1805, r1806, r1807, r1808, tail⟩

theorem template_scp_node4_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1809 rho)
    (r1810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1810 rho)
    (r1811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1811 rho)
    (r1812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1812 rho)
    (r1813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1813 rho)
    (tail : next (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) (rho 1806) (rho 1811) (rho 1816)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg12 (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) (rho 1806) (rho 1811) next := by
  exact ⟨rho 1812, rho 1813, rho 1814, rho 1815, rho 1816, r1809, r1810, r1811, r1812, r1813, tail⟩

theorem template_scp_node4_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1814 rho)
    (r1815 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1815 rho)
    (r1816 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1816 rho)
    (r1817 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1817 rho)
    (r1818 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1818 rho)
    (tail : next (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg13 (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801) (rho 1806) (rho 1811) (rho 1816) next := by
  exact ⟨rho 1817, rho 1818, rho 1819, rho 1820, rho 1821, r1814, r1815, r1816, r1817, r1818, tail⟩

theorem template_scp_node4_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1819 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1819 rho)
    (r1820 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1820 rho)
    (r1821 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1821 rho)
    (r1822 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1822 rho)
    (r1823 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1823 rho)
    (tail : next (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg14 (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) next := by
  exact ⟨rho 1822, rho 1823, rho 1824, rho 1825, rho 1826, r1819, r1820, r1821, r1822, r1823, tail⟩

theorem template_scp_node4_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1824 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1824 rho)
    (r1825 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1825 rho)
    (r1826 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1826 rho)
    (r1827 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1827 rho)
    (r1828 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1828 rho)
    (tail : next (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) (rho 1831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg15 (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) next := by
  exact ⟨rho 1827, rho 1828, rho 1829, rho 1830, rho 1831, r1824, r1825, r1826, r1827, r1828, tail⟩

theorem template_scp_node4_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1829 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1829 rho)
    (r1830 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1830 rho)
    (r1831 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1831 rho)
    (r1832 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1832 rho)
    (r1833 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1833 rho)
    (tail : next (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) (rho 1831) (rho 1836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg16 (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) (rho 1831) next := by
  exact ⟨rho 1832, rho 1833, rho 1834, rho 1835, rho 1836, r1829, r1830, r1831, r1832, r1833, tail⟩

theorem template_scp_node4_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1834 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1834 rho)
    (r1835 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1835 rho)
    (r1836 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1836 rho)
    (r1837 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1837 rho)
    (r1838 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1838 rho)
    (tail : next (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) (rho 1831) (rho 1836) (rho 1841)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg17 (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) (rho 1831) (rho 1836) next := by
  exact ⟨rho 1837, rho 1838, rho 1839, rho 1840, rho 1841, r1834, r1835, r1836, r1837, r1838, tail⟩

theorem template_scp_node4_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1839 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1839 rho)
    (r1840 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1840 rho)
    (r1841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1841 rho)
    (r1842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1842 rho)
    (r1843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1843 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg18 (rho 1801) (rho 1806) (rho 1811) (rho 1816) (rho 1821) (rho 1826) (rho 1831) (rho 1836) (rho 1841) next := by
  exact ⟨rho 1842, rho 1843, rho 1844, rho 1845, rho 1846, r1839, r1840, r1841, r1842, r1843, tail⟩

theorem template_scp_node4_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1844 rho)
    (r1845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1845 rho)
    (r1846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1846 rho)
    (r1847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1847 rho)
    (r1848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1848 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg19 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) next := by
  exact ⟨rho 1847, rho 1848, rho 1849, rho 1850, rho 1851, r1844, r1845, r1846, r1847, r1848, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
