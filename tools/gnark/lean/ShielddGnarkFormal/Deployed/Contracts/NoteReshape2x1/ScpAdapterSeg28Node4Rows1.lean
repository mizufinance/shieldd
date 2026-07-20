import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node4_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1799 : Seg28.relationRow1799 rho)
    (r1800 : Seg28.relationRow1800 rho)
    (r1801 : Seg28.relationRow1801 rho)
    (r1802 : Seg28.relationRow1802 rho)
    (r1803 : Seg28.relationRow1803 rho)
    (tail : next (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) (rho 21175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg10 (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) next := by
  exact ⟨rho 21171, rho 21172, rho 21173, rho 21174, rho 21175, r1799, r1800, r1801, r1802, r1803, tail⟩

theorem seg28_scp_node4_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1804 : Seg28.relationRow1804 rho)
    (r1805 : Seg28.relationRow1805 rho)
    (r1806 : Seg28.relationRow1806 rho)
    (r1807 : Seg28.relationRow1807 rho)
    (r1808 : Seg28.relationRow1808 rho)
    (tail : next (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) (rho 21175) (rho 21180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg11 (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) (rho 21175) next := by
  exact ⟨rho 21176, rho 21177, rho 21178, rho 21179, rho 21180, r1804, r1805, r1806, r1807, r1808, tail⟩

theorem seg28_scp_node4_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1809 : Seg28.relationRow1809 rho)
    (r1810 : Seg28.relationRow1810 rho)
    (r1811 : Seg28.relationRow1811 rho)
    (r1812 : Seg28.relationRow1812 rho)
    (r1813 : Seg28.relationRow1813 rho)
    (tail : next (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) (rho 21175) (rho 21180) (rho 21185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg12 (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) (rho 21175) (rho 21180) next := by
  exact ⟨rho 21181, rho 21182, rho 21183, rho 21184, rho 21185, r1809, r1810, r1811, r1812, r1813, tail⟩

theorem seg28_scp_node4_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1814 : Seg28.relationRow1814 rho)
    (r1815 : Seg28.relationRow1815 rho)
    (r1816 : Seg28.relationRow1816 rho)
    (r1817 : Seg28.relationRow1817 rho)
    (r1818 : Seg28.relationRow1818 rho)
    (tail : next (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg13 (rho 21145) (rho 21150) (rho 21155) (rho 21160) (rho 21165) (rho 21170) (rho 21175) (rho 21180) (rho 21185) next := by
  exact ⟨rho 21186, rho 21187, rho 21188, rho 21189, rho 21190, r1814, r1815, r1816, r1817, r1818, tail⟩

theorem seg28_scp_node4_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1819 : Seg28.relationRow1819 rho)
    (r1820 : Seg28.relationRow1820 rho)
    (r1821 : Seg28.relationRow1821 rho)
    (r1822 : Seg28.relationRow1822 rho)
    (r1823 : Seg28.relationRow1823 rho)
    (tail : next (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg14 (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) next := by
  exact ⟨rho 21191, rho 21192, rho 21193, rho 21194, rho 21195, r1819, r1820, r1821, r1822, r1823, tail⟩

theorem seg28_scp_node4_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1824 : Seg28.relationRow1824 rho)
    (r1825 : Seg28.relationRow1825 rho)
    (r1826 : Seg28.relationRow1826 rho)
    (r1827 : Seg28.relationRow1827 rho)
    (r1828 : Seg28.relationRow1828 rho)
    (tail : next (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) (rho 21200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg15 (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) next := by
  exact ⟨rho 21196, rho 21197, rho 21198, rho 21199, rho 21200, r1824, r1825, r1826, r1827, r1828, tail⟩

theorem seg28_scp_node4_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1829 : Seg28.relationRow1829 rho)
    (r1830 : Seg28.relationRow1830 rho)
    (r1831 : Seg28.relationRow1831 rho)
    (r1832 : Seg28.relationRow1832 rho)
    (r1833 : Seg28.relationRow1833 rho)
    (tail : next (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) (rho 21200) (rho 21205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg16 (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) (rho 21200) next := by
  exact ⟨rho 21201, rho 21202, rho 21203, rho 21204, rho 21205, r1829, r1830, r1831, r1832, r1833, tail⟩

theorem seg28_scp_node4_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1834 : Seg28.relationRow1834 rho)
    (r1835 : Seg28.relationRow1835 rho)
    (r1836 : Seg28.relationRow1836 rho)
    (r1837 : Seg28.relationRow1837 rho)
    (r1838 : Seg28.relationRow1838 rho)
    (tail : next (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) (rho 21200) (rho 21205) (rho 21210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg17 (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) (rho 21200) (rho 21205) next := by
  exact ⟨rho 21206, rho 21207, rho 21208, rho 21209, rho 21210, r1834, r1835, r1836, r1837, r1838, tail⟩

theorem seg28_scp_node4_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1839 : Seg28.relationRow1839 rho)
    (r1840 : Seg28.relationRow1840 rho)
    (r1841 : Seg28.relationRow1841 rho)
    (r1842 : Seg28.relationRow1842 rho)
    (r1843 : Seg28.relationRow1843 rho)
    (tail : next (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg18 (rho 21170) (rho 21175) (rho 21180) (rho 21185) (rho 21190) (rho 21195) (rho 21200) (rho 21205) (rho 21210) next := by
  exact ⟨rho 21211, rho 21212, rho 21213, rho 21214, rho 21215, r1839, r1840, r1841, r1842, r1843, tail⟩

theorem seg28_scp_node4_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1844 : Seg28.relationRow1844 rho)
    (r1845 : Seg28.relationRow1845 rho)
    (r1846 : Seg28.relationRow1846 rho)
    (r1847 : Seg28.relationRow1847 rho)
    (r1848 : Seg28.relationRow1848 rho)
    (tail : next (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) (rho 21220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg19 (rho 21195) (rho 21200) (rho 21205) (rho 21210) (rho 21215) next := by
  exact ⟨rho 21216, rho 21217, rho 21218, rho 21219, rho 21220, r1844, r1845, r1846, r1847, r1848, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

