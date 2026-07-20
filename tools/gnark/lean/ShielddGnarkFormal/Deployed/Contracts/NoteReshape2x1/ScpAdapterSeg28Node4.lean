import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode4.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node4_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode4Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (5 : Seg28.F))
        (rho 169 + rho 21115) (rho 170 + rho 21116 + rho 21117)
        (rho 170 + rho 21118 + rho 21119) (rho 171 + rho 21120) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, p22, p23, p24, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩
  unfold Seg28.relationPart22 at p22
  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837, r1838, r1839⟩
  unfold Seg28.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915, r1916, r1917, r1918, r1919⟩
  unfold Seg28.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩
  unfold Seg28.relationPart25 at p25
  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩
  unfold Seg28.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097, r2098, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.relation (rho 169) (rho 170) (rho 171) (rho 21115) (rho 21116) (rho 21117) (rho 21118) (rho 21119) (rho 21120)
      (fun o0 o1 o2 o3 o4 => o0 = rho 21450 ∧ o1 = rho 21455 ∧ o2 = rho 21460 ∧ o3 = rho 21465 ∧ o4 = rho 21470) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.relation
    exact seg28_scp_node4_seg0 rho _ r1749 r1750 r1751 r1752 r1753 (seg28_scp_node4_seg1 rho _ r1754 r1755 r1756 r1757 r1758 (seg28_scp_node4_seg2 rho _ r1759 r1760 r1761 r1762 r1763 (seg28_scp_node4_seg3 rho _ r1764 r1765 r1766 r1767 r1768 (seg28_scp_node4_seg4 rho _ r1769 r1770 r1771 r1772 r1773 (seg28_scp_node4_seg5 rho _ r1774 r1775 r1776 r1777 r1778 (seg28_scp_node4_seg6 rho _ r1779 r1780 r1781 r1782 r1783 (seg28_scp_node4_seg7 rho _ r1784 r1785 r1786 r1787 r1788 (seg28_scp_node4_seg8 rho _ r1789 r1790 r1791 r1792 r1793 (seg28_scp_node4_seg9 rho _ r1794 r1795 r1796 r1797 r1798 (seg28_scp_node4_seg10 rho _ r1799 r1800 r1801 r1802 r1803 (seg28_scp_node4_seg11 rho _ r1804 r1805 r1806 r1807 r1808 (seg28_scp_node4_seg12 rho _ r1809 r1810 r1811 r1812 r1813 (seg28_scp_node4_seg13 rho _ r1814 r1815 r1816 r1817 r1818 (seg28_scp_node4_seg14 rho _ r1819 r1820 r1821 r1822 r1823 (seg28_scp_node4_seg15 rho _ r1824 r1825 r1826 r1827 r1828 (seg28_scp_node4_seg16 rho _ r1829 r1830 r1831 r1832 r1833 (seg28_scp_node4_seg17 rho _ r1834 r1835 r1836 r1837 r1838 (seg28_scp_node4_seg18 rho _ r1839 r1840 r1841 r1842 r1843 (seg28_scp_node4_seg19 rho _ r1844 r1845 r1846 r1847 r1848 (seg28_scp_node4_seg20 rho _ r1849 r1850 r1851 r1852 r1853 (seg28_scp_node4_seg21 rho _ r1854 r1855 r1856 r1857 r1858 (seg28_scp_node4_seg22 rho _ r1859 r1860 r1861 r1862 r1863 (seg28_scp_node4_seg23 rho _ r1864 r1865 r1866 r1867 r1868 (seg28_scp_node4_seg24 rho _ r1869 r1870 r1871 r1872 r1873 (seg28_scp_node4_seg25 rho _ r1874 r1875 r1876 r1877 r1878 (seg28_scp_node4_seg26 rho _ r1879 r1880 r1881 r1882 r1883 (seg28_scp_node4_seg27 rho _ r1884 r1885 r1886 r1887 r1888 (seg28_scp_node4_seg28 rho _ r1889 r1890 r1891 r1892 r1893 (seg28_scp_node4_seg29 rho _ r1894 r1895 r1896 r1897 r1898 (seg28_scp_node4_seg30 rho _ r1899 r1900 r1901 r1902 r1903 (seg28_scp_node4_seg31 rho _ r1904 r1905 r1906 r1907 r1908 (seg28_scp_node4_seg32 rho _ r1909 r1910 r1911 r1912 r1913 (seg28_scp_node4_seg33 rho _ r1914 r1915 r1916 r1917 r1918 (seg28_scp_node4_seg34 rho _ r1919 r1920 r1921 r1922 r1923 (seg28_scp_node4_seg35 rho _ r1924 r1925 r1926 r1927 r1928 (seg28_scp_node4_seg36 rho _ r1929 r1930 r1931 r1932 r1933 (seg28_scp_node4_seg37 rho _ r1934 r1935 r1936 r1937 r1938 (seg28_scp_node4_seg38 rho _ r1939 r1940 r1941 r1942 r1943 (seg28_scp_node4_seg39 rho _ r1944 r1945 r1946 r1947 r1948 (seg28_scp_node4_seg40 rho _ r1949 r1950 r1951 r1952 r1953 (seg28_scp_node4_seg41 rho _ r1954 r1955 r1956 r1957 r1958 (seg28_scp_node4_seg42 rho _ r1959 r1960 r1961 r1962 r1963 (seg28_scp_node4_seg43 rho _ r1964 r1965 r1966 r1967 r1968 (seg28_scp_node4_seg44 rho _ r1969 r1970 r1971 r1972 r1973 (seg28_scp_node4_seg45 rho _ r1974 r1975 r1976 r1977 r1978 (seg28_scp_node4_seg46 rho _ r1979 r1980 r1981 r1982 r1983 (seg28_scp_node4_seg47 rho _ r1984 r1985 r1986 r1987 r1988 (seg28_scp_node4_seg48 rho _ r1989 r1990 r1991 r1992 r1993 (seg28_scp_node4_seg49 rho _ r1994 r1995 r1996 r1997 r1998 (seg28_scp_node4_seg50 rho _ r1999 r2000 r2001 r2002 r2003 (seg28_scp_node4_seg51 rho _ r2004 r2005 r2006 r2007 r2008 (seg28_scp_node4_seg52 rho _ r2009 r2010 r2011 r2012 r2013 (seg28_scp_node4_seg53 rho _ r2014 r2015 r2016 r2017 r2018 (seg28_scp_node4_seg54 rho _ r2019 r2020 r2021 r2022 r2023 (seg28_scp_node4_seg55 rho _ r2024 r2025 r2026 r2027 r2028 (seg28_scp_node4_seg56 rho _ r2029 r2030 r2031 r2032 r2033 (seg28_scp_node4_seg57 rho _ r2034 r2035 r2036 r2037 r2038 (seg28_scp_node4_seg58 rho _ r2039 r2040 r2041 r2042 r2043 (seg28_scp_node4_seg59 rho _ r2044 r2045 r2046 r2047 r2048 (seg28_scp_node4_seg60 rho _ r2049 r2050 r2051 r2052 r2053 (seg28_scp_node4_seg61 rho _ r2054 r2055 r2056 r2057 r2058 (seg28_scp_node4_seg62 rho _ r2059 r2060 r2061 r2062 r2063 (seg28_scp_node4_seg63 rho _ r2064 r2065 r2066 r2067 r2068 (seg28_scp_node4_seg64 rho _ r2069 r2070 r2071 r2072 r2073 (seg28_scp_node4_seg65 rho _ r2074 r2075 r2076 r2077 r2078 (seg28_scp_node4_seg66 rho _ r2079 r2080 r2081 r2082 r2083 (seg28_scp_node4_seg67 rho _ r2084 r2085 r2086 r2087 r2088 (seg28_scp_node4_seg68 rho _ r2089 r2090 r2091 r2092 r2093 (seg28_scp_node4_seg69 rho _ r2094 r2095 r2096 r2097 r2098 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.relation_sound_permSpec (rho 169) (rho 170) (rho 171) (rho 21115) (rho 21116) (rho 21117) (rho 21118) (rho 21119) (rho 21120) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.tctNode5DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.F) + (5 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode4Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

