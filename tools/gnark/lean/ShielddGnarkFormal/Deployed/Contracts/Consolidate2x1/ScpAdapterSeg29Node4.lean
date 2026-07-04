import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode4.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node4_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode4Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (5 : Seg29.F))
        (rho 172 + rho 22075) (rho 173 + rho 22076 + rho 22077)
        (rho 173 + rho 22078 + rho 22079) (rho 174 + rho 22080) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩
  unfold Seg29.relationPart22 at p22
  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837, r1838, r1839⟩
  unfold Seg29.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915, r1916, r1917, r1918, r1919⟩
  unfold Seg29.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩
  unfold Seg29.relationPart25 at p25
  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩
  unfold Seg29.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097, r2098, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.relation (rho 172) (rho 173) (rho 174) (rho 22075) (rho 22076) (rho 22077) (rho 22078) (rho 22079) (rho 22080)
      (fun o0 o1 o2 o3 o4 => o0 = rho 22410 ∧ o1 = rho 22415 ∧ o2 = rho 22420 ∧ o3 = rho 22425 ∧ o4 = rho 22430) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg0
    refine ⟨rho 22081, rho 22082, rho 22083, rho 22084, rho 22085,
      (by unfold Seg29.relationRow1749 at r1749; linear_combination r1749), (by unfold Seg29.relationRow1750 at r1750; linear_combination r1750), (by unfold Seg29.relationRow1751 at r1751; linear_combination r1751), (by unfold Seg29.relationRow1752 at r1752; linear_combination r1752), (by unfold Seg29.relationRow1753 at r1753; linear_combination r1753), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg1
    refine ⟨rho 22086, rho 22087, rho 22088, rho 22089, rho 22090,
      (by unfold Seg29.relationRow1754 at r1754; linear_combination r1754), (by unfold Seg29.relationRow1755 at r1755; linear_combination r1755), (by unfold Seg29.relationRow1756 at r1756; linear_combination r1756), (by unfold Seg29.relationRow1757 at r1757; linear_combination r1757), (by unfold Seg29.relationRow1758 at r1758; linear_combination r1758), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg2
    refine ⟨rho 22091, rho 22092, rho 22093, rho 22094, rho 22095,
      (by unfold Seg29.relationRow1759 at r1759; linear_combination r1759), (by unfold Seg29.relationRow1760 at r1760; linear_combination r1760), (by unfold Seg29.relationRow1761 at r1761; linear_combination r1761), (by unfold Seg29.relationRow1762 at r1762; linear_combination r1762), (by unfold Seg29.relationRow1763 at r1763; linear_combination r1763), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg3
    refine ⟨rho 22096, rho 22097, rho 22098, rho 22099, rho 22100,
      (by unfold Seg29.relationRow1764 at r1764; linear_combination r1764), (by unfold Seg29.relationRow1765 at r1765; linear_combination r1765), (by unfold Seg29.relationRow1766 at r1766; linear_combination r1766), (by unfold Seg29.relationRow1767 at r1767; linear_combination r1767), (by unfold Seg29.relationRow1768 at r1768; linear_combination r1768), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg4
    refine ⟨rho 22101, rho 22102, rho 22103, rho 22104, rho 22105,
      (by unfold Seg29.relationRow1769 at r1769; linear_combination r1769), (by unfold Seg29.relationRow1770 at r1770; linear_combination r1770), (by unfold Seg29.relationRow1771 at r1771; linear_combination r1771), (by unfold Seg29.relationRow1772 at r1772; linear_combination r1772), (by unfold Seg29.relationRow1773 at r1773; linear_combination r1773), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg5
    refine ⟨rho 22106, rho 22107, rho 22108, rho 22109, rho 22110,
      (by unfold Seg29.relationRow1774 at r1774; linear_combination r1774), (by unfold Seg29.relationRow1775 at r1775; linear_combination r1775), (by unfold Seg29.relationRow1776 at r1776; linear_combination r1776), (by unfold Seg29.relationRow1777 at r1777; linear_combination r1777), (by unfold Seg29.relationRow1778 at r1778; linear_combination r1778), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg6
    refine ⟨rho 22111, rho 22112, rho 22113, rho 22114, rho 22115,
      (by unfold Seg29.relationRow1779 at r1779; linear_combination r1779), (by unfold Seg29.relationRow1780 at r1780; linear_combination r1780), (by unfold Seg29.relationRow1781 at r1781; linear_combination r1781), (by unfold Seg29.relationRow1782 at r1782; linear_combination r1782), (by unfold Seg29.relationRow1783 at r1783; linear_combination r1783), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg7
    refine ⟨rho 22116, rho 22117, rho 22118, rho 22119, rho 22120,
      (by unfold Seg29.relationRow1784 at r1784; linear_combination r1784), (by unfold Seg29.relationRow1785 at r1785; linear_combination r1785), (by unfold Seg29.relationRow1786 at r1786; linear_combination r1786), (by unfold Seg29.relationRow1787 at r1787; linear_combination r1787), (by unfold Seg29.relationRow1788 at r1788; linear_combination r1788), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg8
    refine ⟨rho 22121, rho 22122, rho 22123, rho 22124, rho 22125,
      (by unfold Seg29.relationRow1789 at r1789; linear_combination r1789), (by unfold Seg29.relationRow1790 at r1790; linear_combination r1790), (by unfold Seg29.relationRow1791 at r1791; linear_combination r1791), (by unfold Seg29.relationRow1792 at r1792; linear_combination r1792), (by unfold Seg29.relationRow1793 at r1793; linear_combination r1793), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg9
    refine ⟨rho 22126, rho 22127, rho 22128, rho 22129, rho 22130,
      (by unfold Seg29.relationRow1794 at r1794; linear_combination r1794), (by unfold Seg29.relationRow1795 at r1795; linear_combination r1795), (by unfold Seg29.relationRow1796 at r1796; linear_combination r1796), (by unfold Seg29.relationRow1797 at r1797; linear_combination r1797), (by unfold Seg29.relationRow1798 at r1798; linear_combination r1798), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg10
    refine ⟨rho 22131, rho 22132, rho 22133, rho 22134, rho 22135,
      (by unfold Seg29.relationRow1799 at r1799; linear_combination r1799), (by unfold Seg29.relationRow1800 at r1800; linear_combination r1800), (by unfold Seg29.relationRow1801 at r1801; linear_combination r1801), (by unfold Seg29.relationRow1802 at r1802; linear_combination r1802), (by unfold Seg29.relationRow1803 at r1803; linear_combination r1803), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg11
    refine ⟨rho 22136, rho 22137, rho 22138, rho 22139, rho 22140,
      (by unfold Seg29.relationRow1804 at r1804; linear_combination r1804), (by unfold Seg29.relationRow1805 at r1805; linear_combination r1805), (by unfold Seg29.relationRow1806 at r1806; linear_combination r1806), (by unfold Seg29.relationRow1807 at r1807; linear_combination r1807), (by unfold Seg29.relationRow1808 at r1808; linear_combination r1808), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg12
    refine ⟨rho 22141, rho 22142, rho 22143, rho 22144, rho 22145,
      (by unfold Seg29.relationRow1809 at r1809; linear_combination r1809), (by unfold Seg29.relationRow1810 at r1810; linear_combination r1810), (by unfold Seg29.relationRow1811 at r1811; linear_combination r1811), (by unfold Seg29.relationRow1812 at r1812; linear_combination r1812), (by unfold Seg29.relationRow1813 at r1813; linear_combination r1813), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg13
    refine ⟨rho 22146, rho 22147, rho 22148, rho 22149, rho 22150,
      (by unfold Seg29.relationRow1814 at r1814; linear_combination r1814), (by unfold Seg29.relationRow1815 at r1815; linear_combination r1815), (by unfold Seg29.relationRow1816 at r1816; linear_combination r1816), (by unfold Seg29.relationRow1817 at r1817; linear_combination r1817), (by unfold Seg29.relationRow1818 at r1818; linear_combination r1818), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg14
    refine ⟨rho 22151, rho 22152, rho 22153, rho 22154, rho 22155,
      (by unfold Seg29.relationRow1819 at r1819; linear_combination r1819), (by unfold Seg29.relationRow1820 at r1820; linear_combination r1820), (by unfold Seg29.relationRow1821 at r1821; linear_combination r1821), (by unfold Seg29.relationRow1822 at r1822; linear_combination r1822), (by unfold Seg29.relationRow1823 at r1823; linear_combination r1823), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg15
    refine ⟨rho 22156, rho 22157, rho 22158, rho 22159, rho 22160,
      (by unfold Seg29.relationRow1824 at r1824; linear_combination r1824), (by unfold Seg29.relationRow1825 at r1825; linear_combination r1825), (by unfold Seg29.relationRow1826 at r1826; linear_combination r1826), (by unfold Seg29.relationRow1827 at r1827; linear_combination r1827), (by unfold Seg29.relationRow1828 at r1828; linear_combination r1828), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg16
    refine ⟨rho 22161, rho 22162, rho 22163, rho 22164, rho 22165,
      (by unfold Seg29.relationRow1829 at r1829; linear_combination r1829), (by unfold Seg29.relationRow1830 at r1830; linear_combination r1830), (by unfold Seg29.relationRow1831 at r1831; linear_combination r1831), (by unfold Seg29.relationRow1832 at r1832; linear_combination r1832), (by unfold Seg29.relationRow1833 at r1833; linear_combination r1833), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg17
    refine ⟨rho 22166, rho 22167, rho 22168, rho 22169, rho 22170,
      (by unfold Seg29.relationRow1834 at r1834; linear_combination r1834), (by unfold Seg29.relationRow1835 at r1835; linear_combination r1835), (by unfold Seg29.relationRow1836 at r1836; linear_combination r1836), (by unfold Seg29.relationRow1837 at r1837; linear_combination r1837), (by unfold Seg29.relationRow1838 at r1838; linear_combination r1838), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg18
    refine ⟨rho 22171, rho 22172, rho 22173, rho 22174, rho 22175,
      (by unfold Seg29.relationRow1839 at r1839; linear_combination r1839), (by unfold Seg29.relationRow1840 at r1840; linear_combination r1840), (by unfold Seg29.relationRow1841 at r1841; linear_combination r1841), (by unfold Seg29.relationRow1842 at r1842; linear_combination r1842), (by unfold Seg29.relationRow1843 at r1843; linear_combination r1843), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg19
    refine ⟨rho 22176, rho 22177, rho 22178, rho 22179, rho 22180,
      (by unfold Seg29.relationRow1844 at r1844; linear_combination r1844), (by unfold Seg29.relationRow1845 at r1845; linear_combination r1845), (by unfold Seg29.relationRow1846 at r1846; linear_combination r1846), (by unfold Seg29.relationRow1847 at r1847; linear_combination r1847), (by unfold Seg29.relationRow1848 at r1848; linear_combination r1848), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg20
    refine ⟨rho 22181, rho 22182, rho 22183, rho 22184, rho 22185,
      (by unfold Seg29.relationRow1849 at r1849; linear_combination r1849), (by unfold Seg29.relationRow1850 at r1850; linear_combination r1850), (by unfold Seg29.relationRow1851 at r1851; linear_combination r1851), (by unfold Seg29.relationRow1852 at r1852; linear_combination r1852), (by unfold Seg29.relationRow1853 at r1853; linear_combination r1853), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg21
    refine ⟨rho 22186, rho 22187, rho 22188, rho 22189, rho 22190,
      (by unfold Seg29.relationRow1854 at r1854; linear_combination r1854), (by unfold Seg29.relationRow1855 at r1855; linear_combination r1855), (by unfold Seg29.relationRow1856 at r1856; linear_combination r1856), (by unfold Seg29.relationRow1857 at r1857; linear_combination r1857), (by unfold Seg29.relationRow1858 at r1858; linear_combination r1858), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg22
    refine ⟨rho 22191, rho 22192, rho 22193, rho 22194, rho 22195,
      (by unfold Seg29.relationRow1859 at r1859; linear_combination r1859), (by unfold Seg29.relationRow1860 at r1860; linear_combination r1860), (by unfold Seg29.relationRow1861 at r1861; linear_combination r1861), (by unfold Seg29.relationRow1862 at r1862; linear_combination r1862), (by unfold Seg29.relationRow1863 at r1863; linear_combination r1863), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg23
    refine ⟨rho 22196, rho 22197, rho 22198, rho 22199, rho 22200,
      (by unfold Seg29.relationRow1864 at r1864; linear_combination r1864), (by unfold Seg29.relationRow1865 at r1865; linear_combination r1865), (by unfold Seg29.relationRow1866 at r1866; linear_combination r1866), (by unfold Seg29.relationRow1867 at r1867; linear_combination r1867), (by unfold Seg29.relationRow1868 at r1868; linear_combination r1868), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg24
    refine ⟨rho 22201, rho 22202, rho 22203, rho 22204, rho 22205,
      (by unfold Seg29.relationRow1869 at r1869; linear_combination r1869), (by unfold Seg29.relationRow1870 at r1870; linear_combination r1870), (by unfold Seg29.relationRow1871 at r1871; linear_combination r1871), (by unfold Seg29.relationRow1872 at r1872; linear_combination r1872), (by unfold Seg29.relationRow1873 at r1873; linear_combination r1873), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg25
    refine ⟨rho 22206, rho 22207, rho 22208, rho 22209, rho 22210,
      (by unfold Seg29.relationRow1874 at r1874; linear_combination r1874), (by unfold Seg29.relationRow1875 at r1875; linear_combination r1875), (by unfold Seg29.relationRow1876 at r1876; linear_combination r1876), (by unfold Seg29.relationRow1877 at r1877; linear_combination r1877), (by unfold Seg29.relationRow1878 at r1878; linear_combination r1878), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg26
    refine ⟨rho 22211, rho 22212, rho 22213, rho 22214, rho 22215,
      (by unfold Seg29.relationRow1879 at r1879; linear_combination r1879), (by unfold Seg29.relationRow1880 at r1880; linear_combination r1880), (by unfold Seg29.relationRow1881 at r1881; linear_combination r1881), (by unfold Seg29.relationRow1882 at r1882; linear_combination r1882), (by unfold Seg29.relationRow1883 at r1883; linear_combination r1883), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg27
    refine ⟨rho 22216, rho 22217, rho 22218, rho 22219, rho 22220,
      (by unfold Seg29.relationRow1884 at r1884; linear_combination r1884), (by unfold Seg29.relationRow1885 at r1885; linear_combination r1885), (by unfold Seg29.relationRow1886 at r1886; linear_combination r1886), (by unfold Seg29.relationRow1887 at r1887; linear_combination r1887), (by unfold Seg29.relationRow1888 at r1888; linear_combination r1888), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg28
    refine ⟨rho 22221, rho 22222, rho 22223, rho 22224, rho 22225,
      (by unfold Seg29.relationRow1889 at r1889; linear_combination r1889), (by unfold Seg29.relationRow1890 at r1890; linear_combination r1890), (by unfold Seg29.relationRow1891 at r1891; linear_combination r1891), (by unfold Seg29.relationRow1892 at r1892; linear_combination r1892), (by unfold Seg29.relationRow1893 at r1893; linear_combination r1893), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg29
    refine ⟨rho 22226, rho 22227, rho 22228, rho 22229, rho 22230,
      (by unfold Seg29.relationRow1894 at r1894; linear_combination r1894), (by unfold Seg29.relationRow1895 at r1895; linear_combination r1895), (by unfold Seg29.relationRow1896 at r1896; linear_combination r1896), (by unfold Seg29.relationRow1897 at r1897; linear_combination r1897), (by unfold Seg29.relationRow1898 at r1898; linear_combination r1898), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg30
    refine ⟨rho 22231, rho 22232, rho 22233, rho 22234, rho 22235,
      (by unfold Seg29.relationRow1899 at r1899; linear_combination r1899), (by unfold Seg29.relationRow1900 at r1900; linear_combination r1900), (by unfold Seg29.relationRow1901 at r1901; linear_combination r1901), (by unfold Seg29.relationRow1902 at r1902; linear_combination r1902), (by unfold Seg29.relationRow1903 at r1903; linear_combination r1903), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg31
    refine ⟨rho 22236, rho 22237, rho 22238, rho 22239, rho 22240,
      (by unfold Seg29.relationRow1904 at r1904; linear_combination r1904), (by unfold Seg29.relationRow1905 at r1905; linear_combination r1905), (by unfold Seg29.relationRow1906 at r1906; linear_combination r1906), (by unfold Seg29.relationRow1907 at r1907; linear_combination r1907), (by unfold Seg29.relationRow1908 at r1908; linear_combination r1908), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg32
    refine ⟨rho 22241, rho 22242, rho 22243, rho 22244, rho 22245,
      (by unfold Seg29.relationRow1909 at r1909; linear_combination r1909), (by unfold Seg29.relationRow1910 at r1910; linear_combination r1910), (by unfold Seg29.relationRow1911 at r1911; linear_combination r1911), (by unfold Seg29.relationRow1912 at r1912; linear_combination r1912), (by unfold Seg29.relationRow1913 at r1913; linear_combination r1913), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg33
    refine ⟨rho 22246, rho 22247, rho 22248, rho 22249, rho 22250,
      (by unfold Seg29.relationRow1914 at r1914; linear_combination r1914), (by unfold Seg29.relationRow1915 at r1915; linear_combination r1915), (by unfold Seg29.relationRow1916 at r1916; linear_combination r1916), (by unfold Seg29.relationRow1917 at r1917; linear_combination r1917), (by unfold Seg29.relationRow1918 at r1918; linear_combination r1918), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg34
    refine ⟨rho 22251, rho 22252, rho 22253, rho 22254, rho 22255,
      (by unfold Seg29.relationRow1919 at r1919; linear_combination r1919), (by unfold Seg29.relationRow1920 at r1920; linear_combination r1920), (by unfold Seg29.relationRow1921 at r1921; linear_combination r1921), (by unfold Seg29.relationRow1922 at r1922; linear_combination r1922), (by unfold Seg29.relationRow1923 at r1923; linear_combination r1923), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg35
    refine ⟨rho 22256, rho 22257, rho 22258, rho 22259, rho 22260,
      (by unfold Seg29.relationRow1924 at r1924; linear_combination r1924), (by unfold Seg29.relationRow1925 at r1925; linear_combination r1925), (by unfold Seg29.relationRow1926 at r1926; linear_combination r1926), (by unfold Seg29.relationRow1927 at r1927; linear_combination r1927), (by unfold Seg29.relationRow1928 at r1928; linear_combination r1928), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg36
    refine ⟨rho 22261, rho 22262, rho 22263, rho 22264, rho 22265,
      (by unfold Seg29.relationRow1929 at r1929; linear_combination r1929), (by unfold Seg29.relationRow1930 at r1930; linear_combination r1930), (by unfold Seg29.relationRow1931 at r1931; linear_combination r1931), (by unfold Seg29.relationRow1932 at r1932; linear_combination r1932), (by unfold Seg29.relationRow1933 at r1933; linear_combination r1933), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg37
    refine ⟨rho 22266, rho 22267, rho 22268, rho 22269, rho 22270,
      (by unfold Seg29.relationRow1934 at r1934; linear_combination r1934), (by unfold Seg29.relationRow1935 at r1935; linear_combination r1935), (by unfold Seg29.relationRow1936 at r1936; linear_combination r1936), (by unfold Seg29.relationRow1937 at r1937; linear_combination r1937), (by unfold Seg29.relationRow1938 at r1938; linear_combination r1938), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg38
    refine ⟨rho 22271, rho 22272, rho 22273, rho 22274, rho 22275,
      (by unfold Seg29.relationRow1939 at r1939; linear_combination r1939), (by unfold Seg29.relationRow1940 at r1940; linear_combination r1940), (by unfold Seg29.relationRow1941 at r1941; linear_combination r1941), (by unfold Seg29.relationRow1942 at r1942; linear_combination r1942), (by unfold Seg29.relationRow1943 at r1943; linear_combination r1943), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg39
    refine ⟨rho 22276, rho 22277, rho 22278, rho 22279, rho 22280,
      (by unfold Seg29.relationRow1944 at r1944; linear_combination r1944), (by unfold Seg29.relationRow1945 at r1945; linear_combination r1945), (by unfold Seg29.relationRow1946 at r1946; linear_combination r1946), (by unfold Seg29.relationRow1947 at r1947; linear_combination r1947), (by unfold Seg29.relationRow1948 at r1948; linear_combination r1948), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg40
    refine ⟨rho 22281, rho 22282, rho 22283, rho 22284, rho 22285,
      (by unfold Seg29.relationRow1949 at r1949; linear_combination r1949), (by unfold Seg29.relationRow1950 at r1950; linear_combination r1950), (by unfold Seg29.relationRow1951 at r1951; linear_combination r1951), (by unfold Seg29.relationRow1952 at r1952; linear_combination r1952), (by unfold Seg29.relationRow1953 at r1953; linear_combination r1953), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg41
    refine ⟨rho 22286, rho 22287, rho 22288, rho 22289, rho 22290,
      (by unfold Seg29.relationRow1954 at r1954; linear_combination r1954), (by unfold Seg29.relationRow1955 at r1955; linear_combination r1955), (by unfold Seg29.relationRow1956 at r1956; linear_combination r1956), (by unfold Seg29.relationRow1957 at r1957; linear_combination r1957), (by unfold Seg29.relationRow1958 at r1958; linear_combination r1958), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg42
    refine ⟨rho 22291, rho 22292, rho 22293, rho 22294, rho 22295,
      (by unfold Seg29.relationRow1959 at r1959; linear_combination r1959), (by unfold Seg29.relationRow1960 at r1960; linear_combination r1960), (by unfold Seg29.relationRow1961 at r1961; linear_combination r1961), (by unfold Seg29.relationRow1962 at r1962; linear_combination r1962), (by unfold Seg29.relationRow1963 at r1963; linear_combination r1963), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg43
    refine ⟨rho 22296, rho 22297, rho 22298, rho 22299, rho 22300,
      (by unfold Seg29.relationRow1964 at r1964; linear_combination r1964), (by unfold Seg29.relationRow1965 at r1965; linear_combination r1965), (by unfold Seg29.relationRow1966 at r1966; linear_combination r1966), (by unfold Seg29.relationRow1967 at r1967; linear_combination r1967), (by unfold Seg29.relationRow1968 at r1968; linear_combination r1968), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg44
    refine ⟨rho 22301, rho 22302, rho 22303, rho 22304, rho 22305,
      (by unfold Seg29.relationRow1969 at r1969; linear_combination r1969), (by unfold Seg29.relationRow1970 at r1970; linear_combination r1970), (by unfold Seg29.relationRow1971 at r1971; linear_combination r1971), (by unfold Seg29.relationRow1972 at r1972; linear_combination r1972), (by unfold Seg29.relationRow1973 at r1973; linear_combination r1973), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg45
    refine ⟨rho 22306, rho 22307, rho 22308, rho 22309, rho 22310,
      (by unfold Seg29.relationRow1974 at r1974; linear_combination r1974), (by unfold Seg29.relationRow1975 at r1975; linear_combination r1975), (by unfold Seg29.relationRow1976 at r1976; linear_combination r1976), (by unfold Seg29.relationRow1977 at r1977; linear_combination r1977), (by unfold Seg29.relationRow1978 at r1978; linear_combination r1978), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg46
    refine ⟨rho 22311, rho 22312, rho 22313, rho 22314, rho 22315,
      (by unfold Seg29.relationRow1979 at r1979; linear_combination r1979), (by unfold Seg29.relationRow1980 at r1980; linear_combination r1980), (by unfold Seg29.relationRow1981 at r1981; linear_combination r1981), (by unfold Seg29.relationRow1982 at r1982; linear_combination r1982), (by unfold Seg29.relationRow1983 at r1983; linear_combination r1983), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg47
    refine ⟨rho 22316, rho 22317, rho 22318, rho 22319, rho 22320,
      (by unfold Seg29.relationRow1984 at r1984; linear_combination r1984), (by unfold Seg29.relationRow1985 at r1985; linear_combination r1985), (by unfold Seg29.relationRow1986 at r1986; linear_combination r1986), (by unfold Seg29.relationRow1987 at r1987; linear_combination r1987), (by unfold Seg29.relationRow1988 at r1988; linear_combination r1988), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg48
    refine ⟨rho 22321, rho 22322, rho 22323, rho 22324, rho 22325,
      (by unfold Seg29.relationRow1989 at r1989; linear_combination r1989), (by unfold Seg29.relationRow1990 at r1990; linear_combination r1990), (by unfold Seg29.relationRow1991 at r1991; linear_combination r1991), (by unfold Seg29.relationRow1992 at r1992; linear_combination r1992), (by unfold Seg29.relationRow1993 at r1993; linear_combination r1993), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg49
    refine ⟨rho 22326, rho 22327, rho 22328, rho 22329, rho 22330,
      (by unfold Seg29.relationRow1994 at r1994; linear_combination r1994), (by unfold Seg29.relationRow1995 at r1995; linear_combination r1995), (by unfold Seg29.relationRow1996 at r1996; linear_combination r1996), (by unfold Seg29.relationRow1997 at r1997; linear_combination r1997), (by unfold Seg29.relationRow1998 at r1998; linear_combination r1998), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg50
    refine ⟨rho 22331, rho 22332, rho 22333, rho 22334, rho 22335,
      (by unfold Seg29.relationRow1999 at r1999; linear_combination r1999), (by unfold Seg29.relationRow2000 at r2000; linear_combination r2000), (by unfold Seg29.relationRow2001 at r2001; linear_combination r2001), (by unfold Seg29.relationRow2002 at r2002; linear_combination r2002), (by unfold Seg29.relationRow2003 at r2003; linear_combination r2003), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg51
    refine ⟨rho 22336, rho 22337, rho 22338, rho 22339, rho 22340,
      (by unfold Seg29.relationRow2004 at r2004; linear_combination r2004), (by unfold Seg29.relationRow2005 at r2005; linear_combination r2005), (by unfold Seg29.relationRow2006 at r2006; linear_combination r2006), (by unfold Seg29.relationRow2007 at r2007; linear_combination r2007), (by unfold Seg29.relationRow2008 at r2008; linear_combination r2008), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg52
    refine ⟨rho 22341, rho 22342, rho 22343, rho 22344, rho 22345,
      (by unfold Seg29.relationRow2009 at r2009; linear_combination r2009), (by unfold Seg29.relationRow2010 at r2010; linear_combination r2010), (by unfold Seg29.relationRow2011 at r2011; linear_combination r2011), (by unfold Seg29.relationRow2012 at r2012; linear_combination r2012), (by unfold Seg29.relationRow2013 at r2013; linear_combination r2013), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg53
    refine ⟨rho 22346, rho 22347, rho 22348, rho 22349, rho 22350,
      (by unfold Seg29.relationRow2014 at r2014; linear_combination r2014), (by unfold Seg29.relationRow2015 at r2015; linear_combination r2015), (by unfold Seg29.relationRow2016 at r2016; linear_combination r2016), (by unfold Seg29.relationRow2017 at r2017; linear_combination r2017), (by unfold Seg29.relationRow2018 at r2018; linear_combination r2018), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg54
    refine ⟨rho 22351, rho 22352, rho 22353, rho 22354, rho 22355,
      (by unfold Seg29.relationRow2019 at r2019; linear_combination r2019), (by unfold Seg29.relationRow2020 at r2020; linear_combination r2020), (by unfold Seg29.relationRow2021 at r2021; linear_combination r2021), (by unfold Seg29.relationRow2022 at r2022; linear_combination r2022), (by unfold Seg29.relationRow2023 at r2023; linear_combination r2023), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg55
    refine ⟨rho 22356, rho 22357, rho 22358, rho 22359, rho 22360,
      (by unfold Seg29.relationRow2024 at r2024; linear_combination r2024), (by unfold Seg29.relationRow2025 at r2025; linear_combination r2025), (by unfold Seg29.relationRow2026 at r2026; linear_combination r2026), (by unfold Seg29.relationRow2027 at r2027; linear_combination r2027), (by unfold Seg29.relationRow2028 at r2028; linear_combination r2028), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg56
    refine ⟨rho 22361, rho 22362, rho 22363, rho 22364, rho 22365,
      (by unfold Seg29.relationRow2029 at r2029; linear_combination r2029), (by unfold Seg29.relationRow2030 at r2030; linear_combination r2030), (by unfold Seg29.relationRow2031 at r2031; linear_combination r2031), (by unfold Seg29.relationRow2032 at r2032; linear_combination r2032), (by unfold Seg29.relationRow2033 at r2033; linear_combination r2033), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg57
    refine ⟨rho 22366, rho 22367, rho 22368, rho 22369, rho 22370,
      (by unfold Seg29.relationRow2034 at r2034; linear_combination r2034), (by unfold Seg29.relationRow2035 at r2035; linear_combination r2035), (by unfold Seg29.relationRow2036 at r2036; linear_combination r2036), (by unfold Seg29.relationRow2037 at r2037; linear_combination r2037), (by unfold Seg29.relationRow2038 at r2038; linear_combination r2038), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg58
    refine ⟨rho 22371, rho 22372, rho 22373, rho 22374, rho 22375,
      (by unfold Seg29.relationRow2039 at r2039; linear_combination r2039), (by unfold Seg29.relationRow2040 at r2040; linear_combination r2040), (by unfold Seg29.relationRow2041 at r2041; linear_combination r2041), (by unfold Seg29.relationRow2042 at r2042; linear_combination r2042), (by unfold Seg29.relationRow2043 at r2043; linear_combination r2043), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg59
    refine ⟨rho 22376, rho 22377, rho 22378, rho 22379, rho 22380,
      (by unfold Seg29.relationRow2044 at r2044; linear_combination r2044), (by unfold Seg29.relationRow2045 at r2045; linear_combination r2045), (by unfold Seg29.relationRow2046 at r2046; linear_combination r2046), (by unfold Seg29.relationRow2047 at r2047; linear_combination r2047), (by unfold Seg29.relationRow2048 at r2048; linear_combination r2048), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg60
    refine ⟨rho 22381, rho 22382, rho 22383, rho 22384, rho 22385,
      (by unfold Seg29.relationRow2049 at r2049; linear_combination r2049), (by unfold Seg29.relationRow2050 at r2050; linear_combination r2050), (by unfold Seg29.relationRow2051 at r2051; linear_combination r2051), (by unfold Seg29.relationRow2052 at r2052; linear_combination r2052), (by unfold Seg29.relationRow2053 at r2053; linear_combination r2053), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg61
    refine ⟨rho 22386, rho 22387, rho 22388, rho 22389, rho 22390,
      (by unfold Seg29.relationRow2054 at r2054; linear_combination r2054), (by unfold Seg29.relationRow2055 at r2055; linear_combination r2055), (by unfold Seg29.relationRow2056 at r2056; linear_combination r2056), (by unfold Seg29.relationRow2057 at r2057; linear_combination r2057), (by unfold Seg29.relationRow2058 at r2058; linear_combination r2058), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg62
    refine ⟨rho 22391, rho 22392, rho 22393, rho 22394, rho 22395,
      (by unfold Seg29.relationRow2059 at r2059; linear_combination r2059), (by unfold Seg29.relationRow2060 at r2060; linear_combination r2060), (by unfold Seg29.relationRow2061 at r2061; linear_combination r2061), (by unfold Seg29.relationRow2062 at r2062; linear_combination r2062), (by unfold Seg29.relationRow2063 at r2063; linear_combination r2063), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg63
    refine ⟨rho 22396, rho 22397, rho 22398, rho 22399, rho 22400,
      (by unfold Seg29.relationRow2064 at r2064; linear_combination r2064), (by unfold Seg29.relationRow2065 at r2065; linear_combination r2065), (by unfold Seg29.relationRow2066 at r2066; linear_combination r2066), (by unfold Seg29.relationRow2067 at r2067; linear_combination r2067), (by unfold Seg29.relationRow2068 at r2068; linear_combination r2068), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg64
    refine ⟨rho 22401, rho 22402, rho 22403, rho 22404, rho 22405,
      (by unfold Seg29.relationRow2069 at r2069; linear_combination r2069), (by unfold Seg29.relationRow2070 at r2070; linear_combination r2070), (by unfold Seg29.relationRow2071 at r2071; linear_combination r2071), (by unfold Seg29.relationRow2072 at r2072; linear_combination r2072), (by unfold Seg29.relationRow2073 at r2073; linear_combination r2073), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg65
    refine ⟨rho 22406, rho 22407, rho 22408, rho 22409, rho 22410,
      (by unfold Seg29.relationRow2074 at r2074; linear_combination r2074), (by unfold Seg29.relationRow2075 at r2075; linear_combination r2075), (by unfold Seg29.relationRow2076 at r2076; linear_combination r2076), (by unfold Seg29.relationRow2077 at r2077; linear_combination r2077), (by unfold Seg29.relationRow2078 at r2078; linear_combination r2078), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg66
    refine ⟨rho 22411, rho 22412, rho 22413, rho 22414, rho 22415,
      (by unfold Seg29.relationRow2079 at r2079; linear_combination r2079), (by unfold Seg29.relationRow2080 at r2080; linear_combination r2080), (by unfold Seg29.relationRow2081 at r2081; linear_combination r2081), (by unfold Seg29.relationRow2082 at r2082; linear_combination r2082), (by unfold Seg29.relationRow2083 at r2083; linear_combination r2083), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg67
    refine ⟨rho 22416, rho 22417, rho 22418, rho 22419, rho 22420,
      (by unfold Seg29.relationRow2084 at r2084; linear_combination r2084), (by unfold Seg29.relationRow2085 at r2085; linear_combination r2085), (by unfold Seg29.relationRow2086 at r2086; linear_combination r2086), (by unfold Seg29.relationRow2087 at r2087; linear_combination r2087), (by unfold Seg29.relationRow2088 at r2088; linear_combination r2088), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg68
    refine ⟨rho 22421, rho 22422, rho 22423, rho 22424, rho 22425,
      (by unfold Seg29.relationRow2089 at r2089; linear_combination r2089), (by unfold Seg29.relationRow2090 at r2090; linear_combination r2090), (by unfold Seg29.relationRow2091 at r2091; linear_combination r2091), (by unfold Seg29.relationRow2092 at r2092; linear_combination r2092), (by unfold Seg29.relationRow2093 at r2093; linear_combination r2093), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg69
    refine ⟨rho 22426, rho 22427, rho 22428, rho 22429, rho 22430,
      (by unfold Seg29.relationRow2094 at r2094; linear_combination r2094), (by unfold Seg29.relationRow2095 at r2095; linear_combination r2095), (by unfold Seg29.relationRow2096 at r2096; linear_combination r2096), (by unfold Seg29.relationRow2097 at r2097; linear_combination r2097), (by unfold Seg29.relationRow2098 at r2098; linear_combination r2098), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.relation_sound_permSpec (rho 172) (rho 173) (rho 174) (rho 22075) (rho 22076) (rho 22077) (rho 22078) (rho 22079) (rho 22080) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.tctNode5DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.F) + (5 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode4Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode4.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

