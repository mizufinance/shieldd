import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node4_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1849 rho)
    (r1850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1850 rho)
    (r1851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1851 rho)
    (r1852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1852 rho)
    (r1853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1853 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg20 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) next := by
  exact ⟨rho 1852, rho 1853, rho 1854, rho 1855, rho 1856, r1849, r1850, r1851, r1852, r1853, tail⟩

theorem template_scp_node4_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1854 rho)
    (r1855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1855 rho)
    (r1856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1856 rho)
    (r1857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1857 rho)
    (r1858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1858 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg21 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) next := by
  exact ⟨rho 1857, rho 1858, rho 1859, rho 1860, rho 1861, r1854, r1855, r1856, r1857, r1858, tail⟩

theorem template_scp_node4_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1859 rho)
    (r1860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1860 rho)
    (r1861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1861 rho)
    (r1862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1862 rho)
    (r1863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1863 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg22 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) next := by
  exact ⟨rho 1862, rho 1863, rho 1864, rho 1865, rho 1866, r1859, r1860, r1861, r1862, r1863, tail⟩

theorem template_scp_node4_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r1864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1864 rho)
    (r1865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1865 rho)
    (r1866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1866 rho)
    (r1867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1867 rho)
    (r1868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1868 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg23 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) next := by
  exact ⟨rho 1867, rho 1868, rho 1869, rho 1870, rho 1871, r1864, r1865, r1866, r1867, r1868, tail⟩

theorem template_scp_node4_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1869 rho)
    (r1870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1870 rho)
    (r1871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1871 rho)
    (r1872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1872 rho)
    (r1873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1873 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg24 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) next := by
  exact ⟨rho 1872, rho 1873, rho 1874, rho 1875, rho 1876, r1869, r1870, r1871, r1872, r1873, tail⟩

theorem template_scp_node4_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1874 rho)
    (r1875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1875 rho)
    (r1876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1876 rho)
    (r1877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1877 rho)
    (r1878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1878 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg25 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) next := by
  exact ⟨rho 1877, rho 1878, rho 1879, rho 1880, rho 1881, r1874, r1875, r1876, r1877, r1878, tail⟩

theorem template_scp_node4_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1879 rho)
    (r1880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1880 rho)
    (r1881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1881 rho)
    (r1882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1882 rho)
    (r1883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1883 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg26 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) next := by
  exact ⟨rho 1882, rho 1883, rho 1884, rho 1885, rho 1886, r1879, r1880, r1881, r1882, r1883, tail⟩

theorem template_scp_node4_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1884 rho)
    (r1885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1885 rho)
    (r1886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1886 rho)
    (r1887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1887 rho)
    (r1888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1888 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg27 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) next := by
  exact ⟨rho 1887, rho 1888, rho 1889, rho 1890, rho 1891, r1884, r1885, r1886, r1887, r1888, tail⟩

theorem template_scp_node4_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1889 rho)
    (r1890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1890 rho)
    (r1891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1891 rho)
    (r1892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1892 rho)
    (r1893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1893 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg28 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) next := by
  exact ⟨rho 1892, rho 1893, rho 1894, rho 1895, rho 1896, r1889, r1890, r1891, r1892, r1893, tail⟩

theorem template_scp_node4_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1894 rho)
    (r1895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1895 rho)
    (r1896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1896 rho)
    (r1897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1897 rho)
    (r1898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1898 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg29 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) next := by
  exact ⟨rho 1897, rho 1898, rho 1899, rho 1900, rho 1901, r1894, r1895, r1896, r1897, r1898, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
