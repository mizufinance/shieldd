import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node4_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1799 : Seg13.relationRow1799 rho)
    (r1800 : Seg13.relationRow1800 rho)
    (r1801 : Seg13.relationRow1801 rho)
    (r1802 : Seg13.relationRow1802 rho)
    (r1803 : Seg13.relationRow1803 rho)
    (tail : next (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) (rho 9000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg10 (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) next := by
  exact ⟨rho 8996, rho 8997, rho 8998, rho 8999, rho 9000, r1799, r1800, r1801, r1802, r1803, tail⟩

theorem seg13_scp_node4_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1804 : Seg13.relationRow1804 rho)
    (r1805 : Seg13.relationRow1805 rho)
    (r1806 : Seg13.relationRow1806 rho)
    (r1807 : Seg13.relationRow1807 rho)
    (r1808 : Seg13.relationRow1808 rho)
    (tail : next (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) (rho 9000) (rho 9005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg11 (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) (rho 9000) next := by
  exact ⟨rho 9001, rho 9002, rho 9003, rho 9004, rho 9005, r1804, r1805, r1806, r1807, r1808, tail⟩

theorem seg13_scp_node4_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1809 : Seg13.relationRow1809 rho)
    (r1810 : Seg13.relationRow1810 rho)
    (r1811 : Seg13.relationRow1811 rho)
    (r1812 : Seg13.relationRow1812 rho)
    (r1813 : Seg13.relationRow1813 rho)
    (tail : next (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) (rho 9000) (rho 9005) (rho 9010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg12 (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) (rho 9000) (rho 9005) next := by
  exact ⟨rho 9006, rho 9007, rho 9008, rho 9009, rho 9010, r1809, r1810, r1811, r1812, r1813, tail⟩

theorem seg13_scp_node4_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1814 : Seg13.relationRow1814 rho)
    (r1815 : Seg13.relationRow1815 rho)
    (r1816 : Seg13.relationRow1816 rho)
    (r1817 : Seg13.relationRow1817 rho)
    (r1818 : Seg13.relationRow1818 rho)
    (tail : next (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg13 (rho 8970) (rho 8975) (rho 8980) (rho 8985) (rho 8990) (rho 8995) (rho 9000) (rho 9005) (rho 9010) next := by
  exact ⟨rho 9011, rho 9012, rho 9013, rho 9014, rho 9015, r1814, r1815, r1816, r1817, r1818, tail⟩

theorem seg13_scp_node4_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1819 : Seg13.relationRow1819 rho)
    (r1820 : Seg13.relationRow1820 rho)
    (r1821 : Seg13.relationRow1821 rho)
    (r1822 : Seg13.relationRow1822 rho)
    (r1823 : Seg13.relationRow1823 rho)
    (tail : next (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg14 (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) next := by
  exact ⟨rho 9016, rho 9017, rho 9018, rho 9019, rho 9020, r1819, r1820, r1821, r1822, r1823, tail⟩

theorem seg13_scp_node4_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1824 : Seg13.relationRow1824 rho)
    (r1825 : Seg13.relationRow1825 rho)
    (r1826 : Seg13.relationRow1826 rho)
    (r1827 : Seg13.relationRow1827 rho)
    (r1828 : Seg13.relationRow1828 rho)
    (tail : next (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) (rho 9025)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg15 (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) next := by
  exact ⟨rho 9021, rho 9022, rho 9023, rho 9024, rho 9025, r1824, r1825, r1826, r1827, r1828, tail⟩

theorem seg13_scp_node4_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1829 : Seg13.relationRow1829 rho)
    (r1830 : Seg13.relationRow1830 rho)
    (r1831 : Seg13.relationRow1831 rho)
    (r1832 : Seg13.relationRow1832 rho)
    (r1833 : Seg13.relationRow1833 rho)
    (tail : next (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) (rho 9025) (rho 9030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg16 (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) (rho 9025) next := by
  exact ⟨rho 9026, rho 9027, rho 9028, rho 9029, rho 9030, r1829, r1830, r1831, r1832, r1833, tail⟩

theorem seg13_scp_node4_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1834 : Seg13.relationRow1834 rho)
    (r1835 : Seg13.relationRow1835 rho)
    (r1836 : Seg13.relationRow1836 rho)
    (r1837 : Seg13.relationRow1837 rho)
    (r1838 : Seg13.relationRow1838 rho)
    (tail : next (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) (rho 9025) (rho 9030) (rho 9035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg17 (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) (rho 9025) (rho 9030) next := by
  exact ⟨rho 9031, rho 9032, rho 9033, rho 9034, rho 9035, r1834, r1835, r1836, r1837, r1838, tail⟩

theorem seg13_scp_node4_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1839 : Seg13.relationRow1839 rho)
    (r1840 : Seg13.relationRow1840 rho)
    (r1841 : Seg13.relationRow1841 rho)
    (r1842 : Seg13.relationRow1842 rho)
    (r1843 : Seg13.relationRow1843 rho)
    (tail : next (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg18 (rho 8995) (rho 9000) (rho 9005) (rho 9010) (rho 9015) (rho 9020) (rho 9025) (rho 9030) (rho 9035) next := by
  exact ⟨rho 9036, rho 9037, rho 9038, rho 9039, rho 9040, r1839, r1840, r1841, r1842, r1843, tail⟩

theorem seg13_scp_node4_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1844 : Seg13.relationRow1844 rho)
    (r1845 : Seg13.relationRow1845 rho)
    (r1846 : Seg13.relationRow1846 rho)
    (r1847 : Seg13.relationRow1847 rho)
    (r1848 : Seg13.relationRow1848 rho)
    (tail : next (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) (rho 9045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg19 (rho 9020) (rho 9025) (rho 9030) (rho 9035) (rho 9040) next := by
  exact ⟨rho 9041, rho 9042, rho 9043, rho 9044, rho 9045, r1844, r1845, r1846, r1847, r1848, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

