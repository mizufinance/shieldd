import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node4_seg20 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1849 : Seg13.relationRow1849 rho)
    (r1850 : Seg13.relationRow1850 rho)
    (r1851 : Seg13.relationRow1851 rho)
    (r1852 : Seg13.relationRow1852 rho)
    (r1853 : Seg13.relationRow1853 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg20 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) next := by
  exact ⟨rho 9040, rho 9041, rho 9042, rho 9043, rho 9044, r1849, r1850, r1851, r1852, r1853, tail⟩

theorem seg13_scp_node4_seg21 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1854 : Seg13.relationRow1854 rho)
    (r1855 : Seg13.relationRow1855 rho)
    (r1856 : Seg13.relationRow1856 rho)
    (r1857 : Seg13.relationRow1857 rho)
    (r1858 : Seg13.relationRow1858 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg21 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) next := by
  exact ⟨rho 9045, rho 9046, rho 9047, rho 9048, rho 9049, r1854, r1855, r1856, r1857, r1858, tail⟩

theorem seg13_scp_node4_seg22 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1859 : Seg13.relationRow1859 rho)
    (r1860 : Seg13.relationRow1860 rho)
    (r1861 : Seg13.relationRow1861 rho)
    (r1862 : Seg13.relationRow1862 rho)
    (r1863 : Seg13.relationRow1863 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg22 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) next := by
  exact ⟨rho 9050, rho 9051, rho 9052, rho 9053, rho 9054, r1859, r1860, r1861, r1862, r1863, tail⟩

theorem seg13_scp_node4_seg23 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1864 : Seg13.relationRow1864 rho)
    (r1865 : Seg13.relationRow1865 rho)
    (r1866 : Seg13.relationRow1866 rho)
    (r1867 : Seg13.relationRow1867 rho)
    (r1868 : Seg13.relationRow1868 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg23 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) next := by
  exact ⟨rho 9055, rho 9056, rho 9057, rho 9058, rho 9059, r1864, r1865, r1866, r1867, r1868, tail⟩

theorem seg13_scp_node4_seg24 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1869 : Seg13.relationRow1869 rho)
    (r1870 : Seg13.relationRow1870 rho)
    (r1871 : Seg13.relationRow1871 rho)
    (r1872 : Seg13.relationRow1872 rho)
    (r1873 : Seg13.relationRow1873 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg24 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) next := by
  exact ⟨rho 9060, rho 9061, rho 9062, rho 9063, rho 9064, r1869, r1870, r1871, r1872, r1873, tail⟩

theorem seg13_scp_node4_seg25 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1874 : Seg13.relationRow1874 rho)
    (r1875 : Seg13.relationRow1875 rho)
    (r1876 : Seg13.relationRow1876 rho)
    (r1877 : Seg13.relationRow1877 rho)
    (r1878 : Seg13.relationRow1878 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg25 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) next := by
  exact ⟨rho 9065, rho 9066, rho 9067, rho 9068, rho 9069, r1874, r1875, r1876, r1877, r1878, tail⟩

theorem seg13_scp_node4_seg26 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1879 : Seg13.relationRow1879 rho)
    (r1880 : Seg13.relationRow1880 rho)
    (r1881 : Seg13.relationRow1881 rho)
    (r1882 : Seg13.relationRow1882 rho)
    (r1883 : Seg13.relationRow1883 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg26 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) next := by
  exact ⟨rho 9070, rho 9071, rho 9072, rho 9073, rho 9074, r1879, r1880, r1881, r1882, r1883, tail⟩

theorem seg13_scp_node4_seg27 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1884 : Seg13.relationRow1884 rho)
    (r1885 : Seg13.relationRow1885 rho)
    (r1886 : Seg13.relationRow1886 rho)
    (r1887 : Seg13.relationRow1887 rho)
    (r1888 : Seg13.relationRow1888 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg27 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) next := by
  exact ⟨rho 9075, rho 9076, rho 9077, rho 9078, rho 9079, r1884, r1885, r1886, r1887, r1888, tail⟩

theorem seg13_scp_node4_seg28 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1889 : Seg13.relationRow1889 rho)
    (r1890 : Seg13.relationRow1890 rho)
    (r1891 : Seg13.relationRow1891 rho)
    (r1892 : Seg13.relationRow1892 rho)
    (r1893 : Seg13.relationRow1893 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg28 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) next := by
  exact ⟨rho 9080, rho 9081, rho 9082, rho 9083, rho 9084, r1889, r1890, r1891, r1892, r1893, tail⟩

theorem seg13_scp_node4_seg29 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1894 : Seg13.relationRow1894 rho)
    (r1895 : Seg13.relationRow1895 rho)
    (r1896 : Seg13.relationRow1896 rho)
    (r1897 : Seg13.relationRow1897 rho)
    (r1898 : Seg13.relationRow1898 rho)
    (tail : next (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) (rho 9089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg29 (rho 9014) (rho 9019) (rho 9024) (rho 9029) (rho 9034) (rho 9039) (rho 9044) (rho 9049) (rho 9054) (rho 9059) (rho 9064) (rho 9069) (rho 9074) (rho 9079) (rho 9084) next := by
  exact ⟨rho 9085, rho 9086, rho 9087, rho 9088, rho 9089, r1894, r1895, r1896, r1897, r1898, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

