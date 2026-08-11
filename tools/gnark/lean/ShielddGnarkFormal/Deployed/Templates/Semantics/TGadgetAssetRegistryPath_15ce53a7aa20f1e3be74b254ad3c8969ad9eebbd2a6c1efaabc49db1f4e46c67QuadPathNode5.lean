import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode5Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node5_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut5 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 1859 + rho 1860) (rho 1861 + rho 1862 + rho 1863) (rho 1861 + rho 1865 + rho 1866) (rho 1864 + rho 1867) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p23,
    p24, p25, p26, p27, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915, r1916, r1917, r1918, r1919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart25 at p25
  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart27 at p27
  rcases p27 with ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214, r2215, r2216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 1859 + rho 1860) (rho 1861 + rho 1862 + rho 1863) (rho 1861 + rho 1865 + rho 1866) (rho 1864 + rho 1867)
      (fun w334 w339 w344 w349 w354 => w334 = rho 2197 ∧ w339 = rho 2202 ∧ w344 = rho 2207 ∧ w349 = rho 2212 ∧ w354 = rho 2217) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node5_seg0 rho _ r1867 r1868 r1869 r1870 r1871 (node5_seg1 rho _ r1872 r1873 r1874 r1875 r1876 (node5_seg2 rho _ r1877 r1878 r1879 r1880 r1881 (node5_seg3 rho _ r1882 r1883 r1884 r1885 r1886 (node5_seg4 rho _ r1887 r1888 r1889 r1890 r1891 (node5_seg5 rho _ r1892 r1893 r1894 r1895 r1896 (node5_seg6 rho _ r1897 r1898 r1899 r1900 r1901 (node5_seg7 rho _ r1902 r1903 r1904 r1905 r1906 (node5_seg8 rho _ r1907 r1908 r1909 r1910 r1911 (node5_seg9 rho _ r1912 r1913 r1914 r1915 r1916 (node5_seg10 rho _ r1917 r1918 r1919 r1920 r1921 (node5_seg11 rho _ r1922 r1923 r1924 r1925 r1926 (node5_seg12 rho _ r1927 r1928 r1929 r1930 r1931 (node5_seg13 rho _ r1932 r1933 r1934 r1935 r1936 (node5_seg14 rho _ r1937 r1938 r1939 r1940 r1941 (node5_seg15 rho _ r1942 r1943 r1944 r1945 r1946 (node5_seg16 rho _ r1947 r1948 r1949 r1950 r1951 (node5_seg17 rho _ r1952 r1953 r1954 r1955 r1956 (node5_seg18 rho _ r1957 r1958 r1959 r1960 r1961 (node5_seg19 rho _ r1962 r1963 r1964 r1965 r1966 (node5_seg20 rho _ r1967 r1968 r1969 r1970 r1971 (node5_seg21 rho _ r1972 r1973 r1974 r1975 r1976 (node5_seg22 rho _ r1977 r1978 r1979 r1980 r1981 (node5_seg23 rho _ r1982 r1983 r1984 r1985 r1986 (node5_seg24 rho _ r1987 r1988 r1989 r1990 r1991 (node5_seg25 rho _ r1992 r1993 r1994 r1995 r1996 (node5_seg26 rho _ r1997 r1998 r1999 r2000 r2001 (node5_seg27 rho _ r2002 r2003 r2004 r2005 r2006 (node5_seg28 rho _ r2007 r2008 r2009 r2010 r2011 (node5_seg29 rho _ r2012 r2013 r2014 r2015 r2016 (node5_seg30 rho _ r2017 r2018 r2019 r2020 r2021 (node5_seg31 rho _ r2022 r2023 r2024 r2025 r2026 (node5_seg32 rho _ r2027 r2028 r2029 r2030 r2031 (node5_seg33 rho _ r2032 r2033 r2034 r2035 r2036 (node5_seg34 rho _ r2037 r2038 r2039 r2040 r2041 (node5_seg35 rho _ r2042 r2043 r2044 r2045 r2046 (node5_seg36 rho _ r2047 r2048 r2049 r2050 r2051 (node5_seg37 rho _ r2052 r2053 r2054 r2055 r2056 (node5_seg38 rho _ r2057 r2058 r2059 r2060 r2061 (node5_seg39 rho _ r2062 r2063 r2064 r2065 r2066 (node5_seg40 rho _ r2067 r2068 r2069 r2070 r2071 (node5_seg41 rho _ r2072 r2073 r2074 r2075 r2076 (node5_seg42 rho _ r2077 r2078 r2079 r2080 r2081 (node5_seg43 rho _ r2082 r2083 r2084 r2085 r2086 (node5_seg44 rho _ r2087 r2088 r2089 r2090 r2091 (node5_seg45 rho _ r2092 r2093 r2094 r2095 r2096 (node5_seg46 rho _ r2097 r2098 r2099 r2100 r2101 (node5_seg47 rho _ r2102 r2103 r2104 r2105 r2106 (node5_seg48 rho _ r2107 r2108 r2109 r2110 r2111 (node5_seg49 rho _ r2112 r2113 r2114 r2115 r2116 (node5_seg50 rho _ r2117 r2118 r2119 r2120 r2121 (node5_seg51 rho _ r2122 r2123 r2124 r2125 r2126 (node5_seg52 rho _ r2127 r2128 r2129 r2130 r2131 (node5_seg53 rho _ r2132 r2133 r2134 r2135 r2136 (node5_seg54 rho _ r2137 r2138 r2139 r2140 r2141 (node5_seg55 rho _ r2142 r2143 r2144 r2145 r2146 (node5_seg56 rho _ r2147 r2148 r2149 r2150 r2151 (node5_seg57 rho _ r2152 r2153 r2154 r2155 r2156 (node5_seg58 rho _ r2157 r2158 r2159 r2160 r2161 (node5_seg59 rho _ r2162 r2163 r2164 r2165 r2166 (node5_seg60 rho _ r2167 r2168 r2169 r2170 r2171 (node5_seg61 rho _ r2172 r2173 r2174 r2175 r2176 (node5_seg62 rho _ r2177 r2178 r2179 r2180 r2181 (node5_seg63 rho _ r2182 r2183 r2184 r2185 r2186 (node5_seg64 rho _ r2187 r2188 r2189 r2190 r2191 (node5_seg65 rho _ r2192 r2193 r2194 r2195 r2196 (node5_seg66 rho _ r2197 r2198 r2199 r2200 r2201 (node5_seg67 rho _ r2202 r2203 r2204 r2205 r2206 (node5_seg68 rho _ r2207 r2208 r2209 r2210 r2211 (node5_seg69 rho _ r2212 r2213 r2214 r2215 r2216 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 1859 + rho 1860) (rho 1861 + rho 1862 + rho 1863) (rho 1861 + rho 1865 + rho 1866) (rho 1864 + rho 1867) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut5, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
