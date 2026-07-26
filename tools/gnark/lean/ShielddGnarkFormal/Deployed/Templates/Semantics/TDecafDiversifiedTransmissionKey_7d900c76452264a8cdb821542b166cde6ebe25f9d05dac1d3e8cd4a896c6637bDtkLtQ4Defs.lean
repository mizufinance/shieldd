import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkBase
import ShielddGnarkFormal.Deployed.Dtk.LtConst
import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def dtkQ4IlAtom0 (rho : Nat -> F) : F := rho 1967
def dtkQ4IlAtom1 (rho : Nat -> F) : F := rho 1969 + (-1 : F) * rho 1970
def dtkQ4IlAtom2 (rho : Nat -> F) : F := rho 1972 + (-1 : F) * rho 1973
def dtkQ4IlAtom3 (rho : Nat -> F) : F := rho 1975 + (-1 : F) * rho 1976
def dtkQ4IlAtom4 (rho : Nat -> F) : F := rho 1979 + (-1 : F) * rho 1980
def dtkQ4IlAtom5 (rho : Nat -> F) : F := rho 1983 + (-1 : F) * rho 1984
def dtkQ4IlAtom6 (rho : Nat -> F) : F := rho 1986 + (-1 : F) * rho 1987
def dtkQ4IlAtom7 (rho : Nat -> F) : F := rho 1990 + (-1 : F) * rho 1991
def dtkQ4IlAtom8 (rho : Nat -> F) : F := rho 1993 + (-1 : F) * rho 1994
def dtkQ4IlAtom9 (rho : Nat -> F) : F := rho 1996 + (-1 : F) * rho 1997
def dtkQ4IlAtom10 (rho : Nat -> F) : F := rho 1999 + (-1 : F) * rho 2000
def dtkQ4IlAtom11 (rho : Nat -> F) : F := rho 2002 + (-1 : F) * rho 2003
def dtkQ4IlAtom12 (rho : Nat -> F) : F := rho 2006 + (-1 : F) * rho 2007
def dtkQ4IlAtom13 (rho : Nat -> F) : F := rho 2014 + (-1 : F) * rho 2015
def dtkQ4IlAtom14 (rho : Nat -> F) : F := rho 2017 + (-1 : F) * rho 2018
def dtkQ4IlAtom15 (rho : Nat -> F) : F := rho 2020 + (-1 : F) * rho 2021
def dtkQ4IlAtom16 (rho : Nat -> F) : F := rho 2023
def dtkQ4IlAtom17 (rho : Nat -> F) : F := rho 2024
def dtkQ4IlAtom18 (rho : Nat -> F) : F := rho 2026 + (-1 : F) * rho 2027
def dtkQ4IlAtom19 (rho : Nat -> F) : F := rho 2029 + (-1 : F) * rho 2030
def dtkQ4IlAtom20 (rho : Nat -> F) : F := rho 2032 + (-1 : F) * rho 2033
def dtkQ4IlAtom21 (rho : Nat -> F) : F := rho 2036 + (-1 : F) * rho 2037
def dtkQ4IlAtom22 (rho : Nat -> F) : F := rho 2039 + (-1 : F) * rho 2040
def dtkQ4IlAtom23 (rho : Nat -> F) : F := rho 2042 + (-1 : F) * rho 2043
def dtkQ4IlAtom24 (rho : Nat -> F) : F := rho 2045 + (-1 : F) * rho 2046
def dtkQ4IlAtom25 (rho : Nat -> F) : F := rho 2048 + (-1 : F) * rho 2049
def dtkQ4IlAtom26 (rho : Nat -> F) : F := rho 2051 + (-1 : F) * rho 2052
def dtkQ4IlAtom27 (rho : Nat -> F) : F := rho 2058 + (-1 : F) * rho 2059
def dtkQ4IlAtom28 (rho : Nat -> F) : F := rho 2061 + (-1 : F) * rho 2062
def dtkQ4IlAtom29 (rho : Nat -> F) : F := rho 2065 + (-1 : F) * rho 2066
def dtkQ4IlAtom30 (rho : Nat -> F) : F := rho 2068 + (-1 : F) * rho 2069
def dtkQ4IlAtom31 (rho : Nat -> F) : F := rho 2071 + (-1 : F) * rho 2072
def dtkQ4IlAtom32 (rho : Nat -> F) : F := rho 2075 + (-1 : F) * rho 2076
def dtkQ4IlAtom33 (rho : Nat -> F) : F := rho 2079
def dtkQ4IlAtom34 (rho : Nat -> F) : F := rho 2080
def dtkQ4IlAtom35 (rho : Nat -> F) : F := rho 2089 + (-1 : F) * rho 2090
def dtkQ4IlAtom36 (rho : Nat -> F) : F := rho 2092 + (-1 : F) * rho 2093
def dtkQ4IlAtom37 (rho : Nat -> F) : F := rho 2098 + (-1 : F) * rho 2099
def dtkQ4IlAtom38 (rho : Nat -> F) : F := rho 2103 + (-1 : F) * rho 2104
def dtkQ4IlAtom39 (rho : Nat -> F) : F := rho 2108 + (-1 : F) * rho 2109
def dtkQ4IlAtom40 (rho : Nat -> F) : F := rho 2112 + (-1 : F) * rho 2113
def dtkQ4IlAtom41 (rho : Nat -> F) : F := rho 2117 + (-1 : F) * rho 2118
def dtkQ4IlAtom42 (rho : Nat -> F) : F := rho 2121 + (-1 : F) * rho 2122
def dtkQ4IlAtom43 (rho : Nat -> F) : F := rho 2124 + (-1 : F) * rho 2125
def dtkQ4IlAtom44 (rho : Nat -> F) : F := rho 2127 + (-1 : F) * rho 2128
def dtkQ4IlAtom45 (rho : Nat -> F) : F := rho 2133 + (-1 : F) * rho 2134
def dtkQ4IlAtom46 (rho : Nat -> F) : F := rho 2137 + (-1 : F) * rho 2138
def dtkQ4IlAtom47 (rho : Nat -> F) : F := rho 2140 + (-1 : F) * rho 2141
def dtkQ4IlAtom48 (rho : Nat -> F) : F := rho 2145 + (-1 : F) * rho 2146
def dtkQ4IlAtom49 (rho : Nat -> F) : F := rho 2149 + (-1 : F) * rho 2150
def dtkQ4IlAtom50 (rho : Nat -> F) : F := rho 2154
def dtkQ4IlAtom51 (rho : Nat -> F) : F := rho 2155
def dtkQ4IlAtom52 (rho : Nat -> F) : F := rho 2157 + (-1 : F) * rho 2158
def dtkQ4IlAtom53 (rho : Nat -> F) : F := rho 2160 + (-1 : F) * rho 2161
def dtkQ4IlAtom54 (rho : Nat -> F) : F := rho 2163 + (-1 : F) * rho 2164
def dtkQ4IlAtom55 (rho : Nat -> F) : F := rho 2168 + (-1 : F) * rho 2169
def dtkQ4IlAtom56 (rho : Nat -> F) : F := rho 2171 + (-1 : F) * rho 2172
def dtkQ4IlAtom57 (rho : Nat -> F) : F := rho 2182 + (-1 : F) * rho 2183
def dtkQ4IlAtom58 (rho : Nat -> F) : F := rho 2187 + (-1 : F) * rho 2188
def dtkQ4IlAtom59 (rho : Nat -> F) : F := rho 2190 + (-1 : F) * rho 2191
def dtkQ4IlAtom60 (rho : Nat -> F) : F := rho 2201 + (-1 : F) * rho 2202
def dtkQ4IlAtom61 (rho : Nat -> F) : F := rho 2205 + (-1 : F) * rho 2206

def dtkQ4Pe253 (rho : Nat -> F) : F := (1 : F)
def dtkQ4Il253 (rho : Nat -> F) : F := (0 : F)
def dtkQ4Pe252 (rho : Nat -> F) : F := (1 : F) + (-1 : F) * rho 1235
def dtkQ4Il252 (rho : Nat -> F) : F := dtkQ4Il253 rho
def dtkQ4Pe251 (rho : Nat -> F) : F := rho 1839
def dtkQ4Il251 (rho : Nat -> F) : F := dtkQ4Il252 rho
def dtkQ4Pe250 (rho : Nat -> F) : F := rho 1840
def dtkQ4Il250 (rho : Nat -> F) : F := dtkQ4Il251 rho
def dtkQ4Pe249 (rho : Nat -> F) : F := rho 1841
def dtkQ4Il249 (rho : Nat -> F) : F := dtkQ4Il250 rho
def dtkQ4Pe248 (rho : Nat -> F) : F := rho 1842
def dtkQ4Il248 (rho : Nat -> F) : F := dtkQ4Il249 rho
def dtkQ4Pe247 (rho : Nat -> F) : F := rho 1843
def dtkQ4Il247 (rho : Nat -> F) : F := dtkQ4Il248 rho
def dtkQ4Pe246 (rho : Nat -> F) : F := rho 1844
def dtkQ4Il246 (rho : Nat -> F) : F := dtkQ4Il247 rho
def dtkQ4Pe245 (rho : Nat -> F) : F := rho 1845
def dtkQ4Il245 (rho : Nat -> F) : F := dtkQ4Il246 rho
def dtkQ4Pe244 (rho : Nat -> F) : F := rho 1846
def dtkQ4Il244 (rho : Nat -> F) : F := dtkQ4Il245 rho
def dtkQ4Pe243 (rho : Nat -> F) : F := rho 1847
def dtkQ4Il243 (rho : Nat -> F) : F := dtkQ4Il244 rho
def dtkQ4Pe242 (rho : Nat -> F) : F := rho 1848
def dtkQ4Il242 (rho : Nat -> F) : F := dtkQ4Il243 rho
def dtkQ4Pe241 (rho : Nat -> F) : F := rho 1849
def dtkQ4Il241 (rho : Nat -> F) : F := dtkQ4Il242 rho
def dtkQ4Pe240 (rho : Nat -> F) : F := rho 1850
def dtkQ4Il240 (rho : Nat -> F) : F := dtkQ4Il241 rho
def dtkQ4Pe239 (rho : Nat -> F) : F := rho 1851
def dtkQ4Il239 (rho : Nat -> F) : F := dtkQ4Il240 rho
def dtkQ4Pe238 (rho : Nat -> F) : F := rho 1852
def dtkQ4Il238 (rho : Nat -> F) : F := dtkQ4Il239 rho
def dtkQ4Pe237 (rho : Nat -> F) : F := rho 1853
def dtkQ4Il237 (rho : Nat -> F) : F := dtkQ4Il238 rho
def dtkQ4Pe236 (rho : Nat -> F) : F := rho 1854
def dtkQ4Il236 (rho : Nat -> F) : F := dtkQ4Il237 rho
def dtkQ4Pe235 (rho : Nat -> F) : F := rho 1855
def dtkQ4Il235 (rho : Nat -> F) : F := dtkQ4Il236 rho
def dtkQ4Pe234 (rho : Nat -> F) : F := rho 1856
def dtkQ4Il234 (rho : Nat -> F) : F := dtkQ4Il235 rho
def dtkQ4Pe233 (rho : Nat -> F) : F := rho 1857
def dtkQ4Il233 (rho : Nat -> F) : F := dtkQ4Il234 rho
def dtkQ4Pe232 (rho : Nat -> F) : F := rho 1858
def dtkQ4Il232 (rho : Nat -> F) : F := dtkQ4Il233 rho
def dtkQ4Pe231 (rho : Nat -> F) : F := rho 1859
def dtkQ4Il231 (rho : Nat -> F) : F := dtkQ4Il232 rho
def dtkQ4Pe230 (rho : Nat -> F) : F := rho 1860
def dtkQ4Il230 (rho : Nat -> F) : F := dtkQ4Il231 rho
def dtkQ4Pe229 (rho : Nat -> F) : F := rho 1861
def dtkQ4Il229 (rho : Nat -> F) : F := dtkQ4Il230 rho
def dtkQ4Pe228 (rho : Nat -> F) : F := rho 1862
def dtkQ4Il228 (rho : Nat -> F) : F := dtkQ4Il229 rho
def dtkQ4Pe227 (rho : Nat -> F) : F := rho 1863
def dtkQ4Il227 (rho : Nat -> F) : F := dtkQ4Il228 rho
def dtkQ4Pe226 (rho : Nat -> F) : F := rho 1864
def dtkQ4Il226 (rho : Nat -> F) : F := dtkQ4Il227 rho
def dtkQ4Pe225 (rho : Nat -> F) : F := rho 1865
def dtkQ4Il225 (rho : Nat -> F) : F := dtkQ4Il226 rho
def dtkQ4Pe224 (rho : Nat -> F) : F := rho 1866
def dtkQ4Il224 (rho : Nat -> F) : F := dtkQ4Il225 rho
def dtkQ4Pe223 (rho : Nat -> F) : F := rho 1867
def dtkQ4Il223 (rho : Nat -> F) : F := dtkQ4Il224 rho
def dtkQ4Pe222 (rho : Nat -> F) : F := rho 1868
def dtkQ4Il222 (rho : Nat -> F) : F := dtkQ4Il223 rho
def dtkQ4Pe221 (rho : Nat -> F) : F := rho 1869
def dtkQ4Il221 (rho : Nat -> F) : F := dtkQ4Il222 rho
def dtkQ4Pe220 (rho : Nat -> F) : F := rho 1870
def dtkQ4Il220 (rho : Nat -> F) : F := dtkQ4Il221 rho
def dtkQ4Pe219 (rho : Nat -> F) : F := rho 1871
def dtkQ4Il219 (rho : Nat -> F) : F := dtkQ4Il220 rho
def dtkQ4Pe218 (rho : Nat -> F) : F := rho 1872
def dtkQ4Il218 (rho : Nat -> F) : F := dtkQ4Il219 rho
def dtkQ4Pe217 (rho : Nat -> F) : F := rho 1873
def dtkQ4Il217 (rho : Nat -> F) : F := dtkQ4Il218 rho
def dtkQ4Pe216 (rho : Nat -> F) : F := rho 1874
def dtkQ4Il216 (rho : Nat -> F) : F := dtkQ4Il217 rho
def dtkQ4Pe215 (rho : Nat -> F) : F := rho 1875
def dtkQ4Il215 (rho : Nat -> F) : F := dtkQ4Il216 rho
def dtkQ4Pe214 (rho : Nat -> F) : F := rho 1876
def dtkQ4Il214 (rho : Nat -> F) : F := dtkQ4Il215 rho
def dtkQ4Pe213 (rho : Nat -> F) : F := rho 1877
def dtkQ4Il213 (rho : Nat -> F) : F := dtkQ4Il214 rho
def dtkQ4Pe212 (rho : Nat -> F) : F := rho 1878
def dtkQ4Il212 (rho : Nat -> F) : F := dtkQ4Il213 rho
def dtkQ4Pe211 (rho : Nat -> F) : F := rho 1879
def dtkQ4Il211 (rho : Nat -> F) : F := dtkQ4Il212 rho
def dtkQ4Pe210 (rho : Nat -> F) : F := rho 1880
def dtkQ4Il210 (rho : Nat -> F) : F := dtkQ4Il211 rho
def dtkQ4Pe209 (rho : Nat -> F) : F := rho 1881
def dtkQ4Il209 (rho : Nat -> F) : F := dtkQ4Il210 rho
def dtkQ4Pe208 (rho : Nat -> F) : F := rho 1882
def dtkQ4Il208 (rho : Nat -> F) : F := dtkQ4Il209 rho
def dtkQ4Pe207 (rho : Nat -> F) : F := rho 1883
def dtkQ4Il207 (rho : Nat -> F) : F := dtkQ4Il208 rho
def dtkQ4Pe206 (rho : Nat -> F) : F := rho 1884
def dtkQ4Il206 (rho : Nat -> F) : F := dtkQ4Il207 rho
def dtkQ4Pe205 (rho : Nat -> F) : F := rho 1885
def dtkQ4Il205 (rho : Nat -> F) : F := dtkQ4Il206 rho
def dtkQ4Pe204 (rho : Nat -> F) : F := rho 1886
def dtkQ4Il204 (rho : Nat -> F) : F := dtkQ4Il205 rho
def dtkQ4Pe203 (rho : Nat -> F) : F := rho 1887
def dtkQ4Il203 (rho : Nat -> F) : F := dtkQ4Il204 rho
def dtkQ4Pe202 (rho : Nat -> F) : F := rho 1888
def dtkQ4Il202 (rho : Nat -> F) : F := dtkQ4Il203 rho
def dtkQ4Pe201 (rho : Nat -> F) : F := rho 1889
def dtkQ4Il201 (rho : Nat -> F) : F := dtkQ4Il202 rho
def dtkQ4Pe200 (rho : Nat -> F) : F := rho 1890
def dtkQ4Il200 (rho : Nat -> F) : F := dtkQ4Il201 rho
def dtkQ4Pe199 (rho : Nat -> F) : F := rho 1891
def dtkQ4Il199 (rho : Nat -> F) : F := dtkQ4Il200 rho
def dtkQ4Pe198 (rho : Nat -> F) : F := rho 1892
def dtkQ4Il198 (rho : Nat -> F) : F := dtkQ4Il199 rho
def dtkQ4Pe197 (rho : Nat -> F) : F := rho 1893
def dtkQ4Il197 (rho : Nat -> F) : F := dtkQ4Il198 rho
def dtkQ4Pe196 (rho : Nat -> F) : F := rho 1894
def dtkQ4Il196 (rho : Nat -> F) : F := dtkQ4Il197 rho
def dtkQ4Pe195 (rho : Nat -> F) : F := rho 1895
def dtkQ4Il195 (rho : Nat -> F) : F := dtkQ4Il196 rho
def dtkQ4Pe194 (rho : Nat -> F) : F := rho 1896
def dtkQ4Il194 (rho : Nat -> F) : F := dtkQ4Il195 rho
def dtkQ4Pe193 (rho : Nat -> F) : F := rho 1897
def dtkQ4Il193 (rho : Nat -> F) : F := dtkQ4Il194 rho
def dtkQ4Pe192 (rho : Nat -> F) : F := rho 1898
def dtkQ4Il192 (rho : Nat -> F) : F := dtkQ4Il193 rho
def dtkQ4Pe191 (rho : Nat -> F) : F := rho 1899
def dtkQ4Il191 (rho : Nat -> F) : F := dtkQ4Il192 rho
def dtkQ4Pe190 (rho : Nat -> F) : F := rho 1900
def dtkQ4Il190 (rho : Nat -> F) : F := dtkQ4Il191 rho
def dtkQ4Pe189 (rho : Nat -> F) : F := rho 1901
def dtkQ4Il189 (rho : Nat -> F) : F := dtkQ4Il190 rho
def dtkQ4Pe188 (rho : Nat -> F) : F := rho 1902
def dtkQ4Il188 (rho : Nat -> F) : F := dtkQ4Il189 rho
def dtkQ4Pe187 (rho : Nat -> F) : F := rho 1903
def dtkQ4Il187 (rho : Nat -> F) : F := dtkQ4Il188 rho
def dtkQ4Pe186 (rho : Nat -> F) : F := rho 1904
def dtkQ4Il186 (rho : Nat -> F) : F := dtkQ4Il187 rho
def dtkQ4Pe185 (rho : Nat -> F) : F := rho 1905
def dtkQ4Il185 (rho : Nat -> F) : F := dtkQ4Il186 rho
def dtkQ4Pe184 (rho : Nat -> F) : F := rho 1906
def dtkQ4Il184 (rho : Nat -> F) : F := dtkQ4Il185 rho
def dtkQ4Pe183 (rho : Nat -> F) : F := rho 1907
def dtkQ4Il183 (rho : Nat -> F) : F := dtkQ4Il184 rho
def dtkQ4Pe182 (rho : Nat -> F) : F := rho 1908
def dtkQ4Il182 (rho : Nat -> F) : F := dtkQ4Il183 rho
def dtkQ4Pe181 (rho : Nat -> F) : F := rho 1909
def dtkQ4Il181 (rho : Nat -> F) : F := dtkQ4Il182 rho
def dtkQ4Pe180 (rho : Nat -> F) : F := rho 1910
def dtkQ4Il180 (rho : Nat -> F) : F := dtkQ4Il181 rho
def dtkQ4Pe179 (rho : Nat -> F) : F := rho 1911
def dtkQ4Il179 (rho : Nat -> F) : F := dtkQ4Il180 rho
def dtkQ4Pe178 (rho : Nat -> F) : F := rho 1912
def dtkQ4Il178 (rho : Nat -> F) : F := dtkQ4Il179 rho
def dtkQ4Pe177 (rho : Nat -> F) : F := rho 1913
def dtkQ4Il177 (rho : Nat -> F) : F := dtkQ4Il178 rho
def dtkQ4Pe176 (rho : Nat -> F) : F := rho 1914
def dtkQ4Il176 (rho : Nat -> F) : F := dtkQ4Il177 rho
def dtkQ4Pe175 (rho : Nat -> F) : F := rho 1915
def dtkQ4Il175 (rho : Nat -> F) : F := dtkQ4Il176 rho
def dtkQ4Pe174 (rho : Nat -> F) : F := rho 1916
def dtkQ4Il174 (rho : Nat -> F) : F := dtkQ4Il175 rho
def dtkQ4Pe173 (rho : Nat -> F) : F := rho 1917
def dtkQ4Il173 (rho : Nat -> F) : F := dtkQ4Il174 rho
def dtkQ4Pe172 (rho : Nat -> F) : F := rho 1918
def dtkQ4Il172 (rho : Nat -> F) : F := dtkQ4Il173 rho
def dtkQ4Pe171 (rho : Nat -> F) : F := rho 1919
def dtkQ4Il171 (rho : Nat -> F) : F := dtkQ4Il172 rho
def dtkQ4Pe170 (rho : Nat -> F) : F := rho 1920
def dtkQ4Il170 (rho : Nat -> F) : F := dtkQ4Il171 rho
def dtkQ4Pe169 (rho : Nat -> F) : F := rho 1921
def dtkQ4Il169 (rho : Nat -> F) : F := dtkQ4Il170 rho
def dtkQ4Pe168 (rho : Nat -> F) : F := rho 1922
def dtkQ4Il168 (rho : Nat -> F) : F := dtkQ4Il169 rho
def dtkQ4Pe167 (rho : Nat -> F) : F := rho 1923
def dtkQ4Il167 (rho : Nat -> F) : F := dtkQ4Il168 rho
def dtkQ4Pe166 (rho : Nat -> F) : F := rho 1924
def dtkQ4Il166 (rho : Nat -> F) : F := dtkQ4Il167 rho
def dtkQ4Pe165 (rho : Nat -> F) : F := rho 1925
def dtkQ4Il165 (rho : Nat -> F) : F := dtkQ4Il166 rho
def dtkQ4Pe164 (rho : Nat -> F) : F := rho 1926
def dtkQ4Il164 (rho : Nat -> F) : F := dtkQ4Il165 rho
def dtkQ4Pe163 (rho : Nat -> F) : F := rho 1927
def dtkQ4Il163 (rho : Nat -> F) : F := dtkQ4Il164 rho
def dtkQ4Pe162 (rho : Nat -> F) : F := rho 1928
def dtkQ4Il162 (rho : Nat -> F) : F := dtkQ4Il163 rho
def dtkQ4Pe161 (rho : Nat -> F) : F := rho 1929
def dtkQ4Il161 (rho : Nat -> F) : F := dtkQ4Il162 rho
def dtkQ4Pe160 (rho : Nat -> F) : F := rho 1930
def dtkQ4Il160 (rho : Nat -> F) : F := dtkQ4Il161 rho
def dtkQ4Pe159 (rho : Nat -> F) : F := rho 1931
def dtkQ4Il159 (rho : Nat -> F) : F := dtkQ4Il160 rho
def dtkQ4Pe158 (rho : Nat -> F) : F := rho 1932
def dtkQ4Il158 (rho : Nat -> F) : F := dtkQ4Il159 rho
def dtkQ4Pe157 (rho : Nat -> F) : F := rho 1933
def dtkQ4Il157 (rho : Nat -> F) : F := dtkQ4Il158 rho
def dtkQ4Pe156 (rho : Nat -> F) : F := rho 1934
def dtkQ4Il156 (rho : Nat -> F) : F := dtkQ4Il157 rho
def dtkQ4Pe155 (rho : Nat -> F) : F := rho 1935
def dtkQ4Il155 (rho : Nat -> F) : F := dtkQ4Il156 rho
def dtkQ4Pe154 (rho : Nat -> F) : F := rho 1936
def dtkQ4Il154 (rho : Nat -> F) : F := dtkQ4Il155 rho
def dtkQ4Pe153 (rho : Nat -> F) : F := rho 1937
def dtkQ4Il153 (rho : Nat -> F) : F := dtkQ4Il154 rho
def dtkQ4Pe152 (rho : Nat -> F) : F := rho 1938
def dtkQ4Il152 (rho : Nat -> F) : F := dtkQ4Il153 rho
def dtkQ4Pe151 (rho : Nat -> F) : F := rho 1939
def dtkQ4Il151 (rho : Nat -> F) : F := dtkQ4Il152 rho
def dtkQ4Pe150 (rho : Nat -> F) : F := rho 1940
def dtkQ4Il150 (rho : Nat -> F) : F := dtkQ4Il151 rho
def dtkQ4Pe149 (rho : Nat -> F) : F := rho 1941
def dtkQ4Il149 (rho : Nat -> F) : F := dtkQ4Il150 rho
def dtkQ4Pe148 (rho : Nat -> F) : F := rho 1942
def dtkQ4Il148 (rho : Nat -> F) : F := dtkQ4Il149 rho
def dtkQ4Pe147 (rho : Nat -> F) : F := rho 1943
def dtkQ4Il147 (rho : Nat -> F) : F := dtkQ4Il148 rho
def dtkQ4Pe146 (rho : Nat -> F) : F := rho 1944
def dtkQ4Il146 (rho : Nat -> F) : F := dtkQ4Il147 rho
def dtkQ4Pe145 (rho : Nat -> F) : F := rho 1945
def dtkQ4Il145 (rho : Nat -> F) : F := dtkQ4Il146 rho
def dtkQ4Pe144 (rho : Nat -> F) : F := rho 1946
def dtkQ4Il144 (rho : Nat -> F) : F := dtkQ4Il145 rho
def dtkQ4Pe143 (rho : Nat -> F) : F := rho 1947
def dtkQ4Il143 (rho : Nat -> F) : F := dtkQ4Il144 rho
def dtkQ4Pe142 (rho : Nat -> F) : F := rho 1948
def dtkQ4Il142 (rho : Nat -> F) : F := dtkQ4Il143 rho
def dtkQ4Pe141 (rho : Nat -> F) : F := rho 1949
def dtkQ4Il141 (rho : Nat -> F) : F := dtkQ4Il142 rho
def dtkQ4Pe140 (rho : Nat -> F) : F := rho 1950
def dtkQ4Il140 (rho : Nat -> F) : F := dtkQ4Il141 rho
def dtkQ4Pe139 (rho : Nat -> F) : F := rho 1951
def dtkQ4Il139 (rho : Nat -> F) : F := dtkQ4Il140 rho
def dtkQ4Pe138 (rho : Nat -> F) : F := rho 1952
def dtkQ4Il138 (rho : Nat -> F) : F := dtkQ4Il139 rho
def dtkQ4Pe137 (rho : Nat -> F) : F := rho 1953
def dtkQ4Il137 (rho : Nat -> F) : F := dtkQ4Il138 rho
def dtkQ4Pe136 (rho : Nat -> F) : F := rho 1954
def dtkQ4Il136 (rho : Nat -> F) : F := dtkQ4Il137 rho
def dtkQ4Pe135 (rho : Nat -> F) : F := rho 1955
def dtkQ4Il135 (rho : Nat -> F) : F := dtkQ4Il136 rho
def dtkQ4Pe134 (rho : Nat -> F) : F := rho 1956
def dtkQ4Il134 (rho : Nat -> F) : F := dtkQ4Il135 rho
def dtkQ4Pe133 (rho : Nat -> F) : F := rho 1957
def dtkQ4Il133 (rho : Nat -> F) : F := dtkQ4Il134 rho
def dtkQ4Pe132 (rho : Nat -> F) : F := rho 1958
def dtkQ4Il132 (rho : Nat -> F) : F := dtkQ4Il133 rho
def dtkQ4Pe131 (rho : Nat -> F) : F := rho 1959
def dtkQ4Il131 (rho : Nat -> F) : F := dtkQ4Il132 rho
def dtkQ4Pe130 (rho : Nat -> F) : F := rho 1960
def dtkQ4Il130 (rho : Nat -> F) : F := dtkQ4Il131 rho
def dtkQ4Pe129 (rho : Nat -> F) : F := rho 1961
def dtkQ4Il129 (rho : Nat -> F) : F := dtkQ4Il130 rho
def dtkQ4Pe128 (rho : Nat -> F) : F := rho 1962
def dtkQ4Il128 (rho : Nat -> F) : F := dtkQ4Il129 rho
def dtkQ4Pe127 (rho : Nat -> F) : F := rho 1963
def dtkQ4Il127 (rho : Nat -> F) : F := dtkQ4Il128 rho
def dtkQ4Pe126 (rho : Nat -> F) : F := rho 1964
def dtkQ4Il126 (rho : Nat -> F) : F := dtkQ4Il127 rho
def dtkQ4Pe125 (rho : Nat -> F) : F := rho 1965
def dtkQ4Il125 (rho : Nat -> F) : F := dtkQ4Il126 rho
def dtkQ4Pe124 (rho : Nat -> F) : F := rho 1966
def dtkQ4Il124 (rho : Nat -> F) : F := dtkQ4Il125 rho
def dtkQ4Pe123 (rho : Nat -> F) : F := rho 1968
def dtkQ4Il123 (rho : Nat -> F) : F := dtkQ4Il124 rho + dtkQ4IlAtom0 rho
def dtkQ4Pe122 (rho : Nat -> F) : F := rho 1971
def dtkQ4Il122 (rho : Nat -> F) : F := dtkQ4Il123 rho + dtkQ4IlAtom1 rho
def dtkQ4Pe121 (rho : Nat -> F) : F := rho 1974
def dtkQ4Il121 (rho : Nat -> F) : F := dtkQ4Il122 rho + dtkQ4IlAtom2 rho
def dtkQ4Pe120 (rho : Nat -> F) : F := rho 1977
def dtkQ4Il120 (rho : Nat -> F) : F := dtkQ4Il121 rho + dtkQ4IlAtom3 rho
def dtkQ4Pe119 (rho : Nat -> F) : F := rho 1978
def dtkQ4Il119 (rho : Nat -> F) : F := dtkQ4Il120 rho
def dtkQ4Pe118 (rho : Nat -> F) : F := rho 1981
def dtkQ4Il118 (rho : Nat -> F) : F := dtkQ4Il119 rho + dtkQ4IlAtom4 rho
def dtkQ4Pe117 (rho : Nat -> F) : F := rho 1982
def dtkQ4Il117 (rho : Nat -> F) : F := dtkQ4Il118 rho
def dtkQ4Pe116 (rho : Nat -> F) : F := rho 1985
def dtkQ4Il116 (rho : Nat -> F) : F := dtkQ4Il117 rho + dtkQ4IlAtom5 rho
def dtkQ4Pe115 (rho : Nat -> F) : F := rho 1988
def dtkQ4Il115 (rho : Nat -> F) : F := dtkQ4Il116 rho + dtkQ4IlAtom6 rho
def dtkQ4Pe114 (rho : Nat -> F) : F := rho 1989
def dtkQ4Il114 (rho : Nat -> F) : F := dtkQ4Il115 rho
def dtkQ4Pe113 (rho : Nat -> F) : F := rho 1992
def dtkQ4Il113 (rho : Nat -> F) : F := dtkQ4Il114 rho + dtkQ4IlAtom7 rho
def dtkQ4Pe112 (rho : Nat -> F) : F := rho 1995
def dtkQ4Il112 (rho : Nat -> F) : F := dtkQ4Il113 rho + dtkQ4IlAtom8 rho
def dtkQ4Pe111 (rho : Nat -> F) : F := rho 1998
def dtkQ4Il111 (rho : Nat -> F) : F := dtkQ4Il112 rho + dtkQ4IlAtom9 rho
def dtkQ4Pe110 (rho : Nat -> F) : F := rho 2001
def dtkQ4Il110 (rho : Nat -> F) : F := dtkQ4Il111 rho + dtkQ4IlAtom10 rho
def dtkQ4Pe109 (rho : Nat -> F) : F := rho 2004
def dtkQ4Il109 (rho : Nat -> F) : F := dtkQ4Il110 rho + dtkQ4IlAtom11 rho
def dtkQ4Pe108 (rho : Nat -> F) : F := rho 2005
def dtkQ4Il108 (rho : Nat -> F) : F := dtkQ4Il109 rho
def dtkQ4Pe107 (rho : Nat -> F) : F := rho 2008
def dtkQ4Il107 (rho : Nat -> F) : F := dtkQ4Il108 rho + dtkQ4IlAtom12 rho
def dtkQ4Pe106 (rho : Nat -> F) : F := rho 2009
def dtkQ4Il106 (rho : Nat -> F) : F := dtkQ4Il107 rho
def dtkQ4Pe105 (rho : Nat -> F) : F := rho 2010
def dtkQ4Il105 (rho : Nat -> F) : F := dtkQ4Il106 rho
def dtkQ4Pe104 (rho : Nat -> F) : F := rho 2011
def dtkQ4Il104 (rho : Nat -> F) : F := dtkQ4Il105 rho
def dtkQ4Pe103 (rho : Nat -> F) : F := rho 2012
def dtkQ4Il103 (rho : Nat -> F) : F := dtkQ4Il104 rho
def dtkQ4Pe102 (rho : Nat -> F) : F := rho 2013
def dtkQ4Il102 (rho : Nat -> F) : F := dtkQ4Il103 rho
def dtkQ4Pe101 (rho : Nat -> F) : F := rho 2016
def dtkQ4Il101 (rho : Nat -> F) : F := dtkQ4Il102 rho + dtkQ4IlAtom13 rho
def dtkQ4Pe100 (rho : Nat -> F) : F := rho 2019
def dtkQ4Il100 (rho : Nat -> F) : F := dtkQ4Il101 rho + dtkQ4IlAtom14 rho
def dtkQ4Pe99 (rho : Nat -> F) : F := rho 2022
def dtkQ4Il99 (rho : Nat -> F) : F := dtkQ4Il100 rho + dtkQ4IlAtom15 rho
def dtkQ4Pe98 (rho : Nat -> F) : F := rho 2025
def dtkQ4Il98 (rho : Nat -> F) : F := dtkQ4Il99 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho
def dtkQ4Pe97 (rho : Nat -> F) : F := rho 2028
def dtkQ4Il97 (rho : Nat -> F) : F := dtkQ4Il98 rho + dtkQ4IlAtom18 rho
def dtkQ4Pe96 (rho : Nat -> F) : F := rho 2031
def dtkQ4Il96 (rho : Nat -> F) : F := dtkQ4Il97 rho + dtkQ4IlAtom19 rho
def dtkQ4Pe95 (rho : Nat -> F) : F := rho 2034
def dtkQ4Il95 (rho : Nat -> F) : F := dtkQ4Il96 rho + dtkQ4IlAtom20 rho
def dtkQ4Pe94 (rho : Nat -> F) : F := rho 2035
def dtkQ4Il94 (rho : Nat -> F) : F := dtkQ4Il95 rho
def dtkQ4Pe93 (rho : Nat -> F) : F := rho 2038
def dtkQ4Il93 (rho : Nat -> F) : F := dtkQ4Il94 rho + dtkQ4IlAtom21 rho
def dtkQ4Pe92 (rho : Nat -> F) : F := rho 2041
def dtkQ4Il92 (rho : Nat -> F) : F := dtkQ4Il93 rho + dtkQ4IlAtom22 rho
def dtkQ4Pe91 (rho : Nat -> F) : F := rho 2044
def dtkQ4Il91 (rho : Nat -> F) : F := dtkQ4Il92 rho + dtkQ4IlAtom23 rho
def dtkQ4Pe90 (rho : Nat -> F) : F := rho 2047
def dtkQ4Il90 (rho : Nat -> F) : F := dtkQ4Il91 rho + dtkQ4IlAtom24 rho
def dtkQ4Pe89 (rho : Nat -> F) : F := rho 2050
def dtkQ4Il89 (rho : Nat -> F) : F := dtkQ4Il90 rho + dtkQ4IlAtom25 rho
def dtkQ4Pe88 (rho : Nat -> F) : F := rho 2053
def dtkQ4Il88 (rho : Nat -> F) : F := dtkQ4Il89 rho + dtkQ4IlAtom26 rho
def dtkQ4Pe87 (rho : Nat -> F) : F := rho 2054
def dtkQ4Il87 (rho : Nat -> F) : F := dtkQ4Il88 rho
def dtkQ4Pe86 (rho : Nat -> F) : F := rho 2055
def dtkQ4Il86 (rho : Nat -> F) : F := dtkQ4Il87 rho
def dtkQ4Pe85 (rho : Nat -> F) : F := rho 2056
def dtkQ4Il85 (rho : Nat -> F) : F := dtkQ4Il86 rho
def dtkQ4Pe84 (rho : Nat -> F) : F := rho 2057
def dtkQ4Il84 (rho : Nat -> F) : F := dtkQ4Il85 rho
def dtkQ4Pe83 (rho : Nat -> F) : F := rho 2060
def dtkQ4Il83 (rho : Nat -> F) : F := dtkQ4Il84 rho + dtkQ4IlAtom27 rho
def dtkQ4Pe82 (rho : Nat -> F) : F := rho 2063
def dtkQ4Il82 (rho : Nat -> F) : F := dtkQ4Il83 rho + dtkQ4IlAtom28 rho
def dtkQ4Pe81 (rho : Nat -> F) : F := rho 2064
def dtkQ4Il81 (rho : Nat -> F) : F := dtkQ4Il82 rho
def dtkQ4Pe80 (rho : Nat -> F) : F := rho 2067
def dtkQ4Il80 (rho : Nat -> F) : F := dtkQ4Il81 rho + dtkQ4IlAtom29 rho
def dtkQ4Pe79 (rho : Nat -> F) : F := rho 2070
def dtkQ4Il79 (rho : Nat -> F) : F := dtkQ4Il80 rho + dtkQ4IlAtom30 rho
def dtkQ4Pe78 (rho : Nat -> F) : F := rho 2073
def dtkQ4Il78 (rho : Nat -> F) : F := dtkQ4Il79 rho + dtkQ4IlAtom31 rho
def dtkQ4Pe77 (rho : Nat -> F) : F := rho 2074
def dtkQ4Il77 (rho : Nat -> F) : F := dtkQ4Il78 rho
def dtkQ4Pe76 (rho : Nat -> F) : F := rho 2077
def dtkQ4Il76 (rho : Nat -> F) : F := dtkQ4Il77 rho + dtkQ4IlAtom32 rho
def dtkQ4Pe75 (rho : Nat -> F) : F := rho 2078
def dtkQ4Il75 (rho : Nat -> F) : F := dtkQ4Il76 rho
def dtkQ4Pe74 (rho : Nat -> F) : F := rho 2081
def dtkQ4Il74 (rho : Nat -> F) : F := dtkQ4Il75 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho
def dtkQ4Pe73 (rho : Nat -> F) : F := rho 2082
def dtkQ4Il73 (rho : Nat -> F) : F := dtkQ4Il74 rho
def dtkQ4Pe72 (rho : Nat -> F) : F := rho 2083
def dtkQ4Il72 (rho : Nat -> F) : F := dtkQ4Il73 rho
def dtkQ4Pe71 (rho : Nat -> F) : F := rho 2084
def dtkQ4Il71 (rho : Nat -> F) : F := dtkQ4Il72 rho
def dtkQ4Pe70 (rho : Nat -> F) : F := rho 2085
def dtkQ4Il70 (rho : Nat -> F) : F := dtkQ4Il71 rho
def dtkQ4Pe69 (rho : Nat -> F) : F := rho 2086
def dtkQ4Il69 (rho : Nat -> F) : F := dtkQ4Il70 rho
def dtkQ4Pe68 (rho : Nat -> F) : F := rho 2087
def dtkQ4Il68 (rho : Nat -> F) : F := dtkQ4Il69 rho
def dtkQ4Pe67 (rho : Nat -> F) : F := rho 2088
def dtkQ4Il67 (rho : Nat -> F) : F := dtkQ4Il68 rho
def dtkQ4Pe66 (rho : Nat -> F) : F := rho 2091
def dtkQ4Il66 (rho : Nat -> F) : F := dtkQ4Il67 rho + dtkQ4IlAtom35 rho
def dtkQ4Pe65 (rho : Nat -> F) : F := rho 2094
def dtkQ4Il65 (rho : Nat -> F) : F := dtkQ4Il66 rho + dtkQ4IlAtom36 rho
def dtkQ4Pe64 (rho : Nat -> F) : F := rho 2095
def dtkQ4Il64 (rho : Nat -> F) : F := dtkQ4Il65 rho
def dtkQ4Pe63 (rho : Nat -> F) : F := rho 2096
def dtkQ4Il63 (rho : Nat -> F) : F := dtkQ4Il64 rho
def dtkQ4Pe62 (rho : Nat -> F) : F := rho 2097
def dtkQ4Il62 (rho : Nat -> F) : F := dtkQ4Il63 rho
def dtkQ4Pe61 (rho : Nat -> F) : F := rho 2100
def dtkQ4Il61 (rho : Nat -> F) : F := dtkQ4Il62 rho + dtkQ4IlAtom37 rho
def dtkQ4Pe60 (rho : Nat -> F) : F := rho 2101
def dtkQ4Il60 (rho : Nat -> F) : F := dtkQ4Il61 rho
def dtkQ4Pe59 (rho : Nat -> F) : F := rho 2102
def dtkQ4Il59 (rho : Nat -> F) : F := dtkQ4Il60 rho
def dtkQ4Pe58 (rho : Nat -> F) : F := rho 2105
def dtkQ4Il58 (rho : Nat -> F) : F := dtkQ4Il59 rho + dtkQ4IlAtom38 rho
def dtkQ4Pe57 (rho : Nat -> F) : F := rho 2106
def dtkQ4Il57 (rho : Nat -> F) : F := dtkQ4Il58 rho
def dtkQ4Pe56 (rho : Nat -> F) : F := rho 2107
def dtkQ4Il56 (rho : Nat -> F) : F := dtkQ4Il57 rho
def dtkQ4Pe55 (rho : Nat -> F) : F := rho 2110
def dtkQ4Il55 (rho : Nat -> F) : F := dtkQ4Il56 rho + dtkQ4IlAtom39 rho
def dtkQ4Pe54 (rho : Nat -> F) : F := rho 2111
def dtkQ4Il54 (rho : Nat -> F) : F := dtkQ4Il55 rho
def dtkQ4Pe53 (rho : Nat -> F) : F := rho 2114
def dtkQ4Il53 (rho : Nat -> F) : F := dtkQ4Il54 rho + dtkQ4IlAtom40 rho
def dtkQ4Pe52 (rho : Nat -> F) : F := rho 2115
def dtkQ4Il52 (rho : Nat -> F) : F := dtkQ4Il53 rho
def dtkQ4Pe51 (rho : Nat -> F) : F := rho 2116
def dtkQ4Il51 (rho : Nat -> F) : F := dtkQ4Il52 rho
def dtkQ4Pe50 (rho : Nat -> F) : F := rho 2119
def dtkQ4Il50 (rho : Nat -> F) : F := dtkQ4Il51 rho + dtkQ4IlAtom41 rho
def dtkQ4Pe49 (rho : Nat -> F) : F := rho 2120
def dtkQ4Il49 (rho : Nat -> F) : F := dtkQ4Il50 rho
def dtkQ4Pe48 (rho : Nat -> F) : F := rho 2123
def dtkQ4Il48 (rho : Nat -> F) : F := dtkQ4Il49 rho + dtkQ4IlAtom42 rho
def dtkQ4Pe47 (rho : Nat -> F) : F := rho 2126
def dtkQ4Il47 (rho : Nat -> F) : F := dtkQ4Il48 rho + dtkQ4IlAtom43 rho
def dtkQ4Pe46 (rho : Nat -> F) : F := rho 2129
def dtkQ4Il46 (rho : Nat -> F) : F := dtkQ4Il47 rho + dtkQ4IlAtom44 rho
def dtkQ4Pe45 (rho : Nat -> F) : F := rho 2130
def dtkQ4Il45 (rho : Nat -> F) : F := dtkQ4Il46 rho
def dtkQ4Pe44 (rho : Nat -> F) : F := rho 2131
def dtkQ4Il44 (rho : Nat -> F) : F := dtkQ4Il45 rho
def dtkQ4Pe43 (rho : Nat -> F) : F := rho 2132
def dtkQ4Il43 (rho : Nat -> F) : F := dtkQ4Il44 rho
def dtkQ4Pe42 (rho : Nat -> F) : F := rho 2135
def dtkQ4Il42 (rho : Nat -> F) : F := dtkQ4Il43 rho + dtkQ4IlAtom45 rho
def dtkQ4Pe41 (rho : Nat -> F) : F := rho 2136
def dtkQ4Il41 (rho : Nat -> F) : F := dtkQ4Il42 rho
def dtkQ4Pe40 (rho : Nat -> F) : F := rho 2139
def dtkQ4Il40 (rho : Nat -> F) : F := dtkQ4Il41 rho + dtkQ4IlAtom46 rho
def dtkQ4Pe39 (rho : Nat -> F) : F := rho 2142
def dtkQ4Il39 (rho : Nat -> F) : F := dtkQ4Il40 rho + dtkQ4IlAtom47 rho
def dtkQ4Pe38 (rho : Nat -> F) : F := rho 2143
def dtkQ4Il38 (rho : Nat -> F) : F := dtkQ4Il39 rho
def dtkQ4Pe37 (rho : Nat -> F) : F := rho 2144
def dtkQ4Il37 (rho : Nat -> F) : F := dtkQ4Il38 rho
def dtkQ4Pe36 (rho : Nat -> F) : F := rho 2147
def dtkQ4Il36 (rho : Nat -> F) : F := dtkQ4Il37 rho + dtkQ4IlAtom48 rho
def dtkQ4Pe35 (rho : Nat -> F) : F := rho 2148
def dtkQ4Il35 (rho : Nat -> F) : F := dtkQ4Il36 rho
def dtkQ4Pe34 (rho : Nat -> F) : F := rho 2151
def dtkQ4Il34 (rho : Nat -> F) : F := dtkQ4Il35 rho + dtkQ4IlAtom49 rho
def dtkQ4Pe33 (rho : Nat -> F) : F := rho 2152
def dtkQ4Il33 (rho : Nat -> F) : F := dtkQ4Il34 rho
def dtkQ4Pe32 (rho : Nat -> F) : F := rho 2153
def dtkQ4Il32 (rho : Nat -> F) : F := dtkQ4Il33 rho
def dtkQ4Pe31 (rho : Nat -> F) : F := rho 2156
def dtkQ4Il31 (rho : Nat -> F) : F := dtkQ4Il32 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho
def dtkQ4Pe30 (rho : Nat -> F) : F := rho 2159
def dtkQ4Il30 (rho : Nat -> F) : F := dtkQ4Il31 rho + dtkQ4IlAtom52 rho
def dtkQ4Pe29 (rho : Nat -> F) : F := rho 2162
def dtkQ4Il29 (rho : Nat -> F) : F := dtkQ4Il30 rho + dtkQ4IlAtom53 rho
def dtkQ4Pe28 (rho : Nat -> F) : F := rho 2165
def dtkQ4Il28 (rho : Nat -> F) : F := dtkQ4Il29 rho + dtkQ4IlAtom54 rho
def dtkQ4Pe27 (rho : Nat -> F) : F := rho 2166
def dtkQ4Il27 (rho : Nat -> F) : F := dtkQ4Il28 rho
def dtkQ4Pe26 (rho : Nat -> F) : F := rho 2167
def dtkQ4Il26 (rho : Nat -> F) : F := dtkQ4Il27 rho
def dtkQ4Pe25 (rho : Nat -> F) : F := rho 2170
def dtkQ4Il25 (rho : Nat -> F) : F := dtkQ4Il26 rho + dtkQ4IlAtom55 rho
def dtkQ4Pe24 (rho : Nat -> F) : F := rho 2173
def dtkQ4Il24 (rho : Nat -> F) : F := dtkQ4Il25 rho + dtkQ4IlAtom56 rho
def dtkQ4Pe23 (rho : Nat -> F) : F := rho 2174
def dtkQ4Il23 (rho : Nat -> F) : F := dtkQ4Il24 rho
def dtkQ4Pe22 (rho : Nat -> F) : F := rho 2175
def dtkQ4Il22 (rho : Nat -> F) : F := dtkQ4Il23 rho
def dtkQ4Pe21 (rho : Nat -> F) : F := rho 2176
def dtkQ4Il21 (rho : Nat -> F) : F := dtkQ4Il22 rho
def dtkQ4Pe20 (rho : Nat -> F) : F := rho 2177
def dtkQ4Il20 (rho : Nat -> F) : F := dtkQ4Il21 rho
def dtkQ4Pe19 (rho : Nat -> F) : F := rho 2178
def dtkQ4Il19 (rho : Nat -> F) : F := dtkQ4Il20 rho
def dtkQ4Pe18 (rho : Nat -> F) : F := rho 2179
def dtkQ4Il18 (rho : Nat -> F) : F := dtkQ4Il19 rho
def dtkQ4Pe17 (rho : Nat -> F) : F := rho 2180
def dtkQ4Il17 (rho : Nat -> F) : F := dtkQ4Il18 rho
def dtkQ4Pe16 (rho : Nat -> F) : F := rho 2181
def dtkQ4Il16 (rho : Nat -> F) : F := dtkQ4Il17 rho
def dtkQ4Pe15 (rho : Nat -> F) : F := rho 2184
def dtkQ4Il15 (rho : Nat -> F) : F := dtkQ4Il16 rho + dtkQ4IlAtom57 rho
def dtkQ4Pe14 (rho : Nat -> F) : F := rho 2185
def dtkQ4Il14 (rho : Nat -> F) : F := dtkQ4Il15 rho
def dtkQ4Pe13 (rho : Nat -> F) : F := rho 2186
def dtkQ4Il13 (rho : Nat -> F) : F := dtkQ4Il14 rho
def dtkQ4Pe12 (rho : Nat -> F) : F := rho 2189
def dtkQ4Il12 (rho : Nat -> F) : F := dtkQ4Il13 rho + dtkQ4IlAtom58 rho
def dtkQ4Pe11 (rho : Nat -> F) : F := rho 2192
def dtkQ4Il11 (rho : Nat -> F) : F := dtkQ4Il12 rho + dtkQ4IlAtom59 rho
def dtkQ4Pe10 (rho : Nat -> F) : F := rho 2193
def dtkQ4Il10 (rho : Nat -> F) : F := dtkQ4Il11 rho
def dtkQ4Pe9 (rho : Nat -> F) : F := rho 2194
def dtkQ4Il9 (rho : Nat -> F) : F := dtkQ4Il10 rho
def dtkQ4Pe8 (rho : Nat -> F) : F := rho 2195
def dtkQ4Il8 (rho : Nat -> F) : F := dtkQ4Il9 rho
def dtkQ4Pe7 (rho : Nat -> F) : F := rho 2196
def dtkQ4Il7 (rho : Nat -> F) : F := dtkQ4Il8 rho
def dtkQ4Pe6 (rho : Nat -> F) : F := rho 2197
def dtkQ4Il6 (rho : Nat -> F) : F := dtkQ4Il7 rho
def dtkQ4Pe5 (rho : Nat -> F) : F := rho 2198
def dtkQ4Il5 (rho : Nat -> F) : F := dtkQ4Il6 rho
def dtkQ4Pe4 (rho : Nat -> F) : F := rho 2199
def dtkQ4Il4 (rho : Nat -> F) : F := dtkQ4Il5 rho
def dtkQ4Pe3 (rho : Nat -> F) : F := rho 2200
def dtkQ4Il3 (rho : Nat -> F) : F := dtkQ4Il4 rho
def dtkQ4Pe2 (rho : Nat -> F) : F := rho 2203
def dtkQ4Il2 (rho : Nat -> F) : F := dtkQ4Il3 rho + dtkQ4IlAtom60 rho
def dtkQ4Pe1 (rho : Nat -> F) : F := rho 2204
def dtkQ4Il1 (rho : Nat -> F) : F := dtkQ4Il2 rho
def dtkQ4Pe0 (rho : Nat -> F) : F := rho 2207
def dtkQ4Il0 (rho : Nat -> F) : F := dtkQ4Il1 rho + dtkQ4IlAtom61 rho

def dtkQ4PeState (rho : Nat -> F) : Nat -> F
  | 0 => dtkQ4Pe0 rho
  | 1 => dtkQ4Pe1 rho
  | 2 => dtkQ4Pe2 rho
  | 3 => dtkQ4Pe3 rho
  | 4 => dtkQ4Pe4 rho
  | 5 => dtkQ4Pe5 rho
  | 6 => dtkQ4Pe6 rho
  | 7 => dtkQ4Pe7 rho
  | 8 => dtkQ4Pe8 rho
  | 9 => dtkQ4Pe9 rho
  | 10 => dtkQ4Pe10 rho
  | 11 => dtkQ4Pe11 rho
  | 12 => dtkQ4Pe12 rho
  | 13 => dtkQ4Pe13 rho
  | 14 => dtkQ4Pe14 rho
  | 15 => dtkQ4Pe15 rho
  | 16 => dtkQ4Pe16 rho
  | 17 => dtkQ4Pe17 rho
  | 18 => dtkQ4Pe18 rho
  | 19 => dtkQ4Pe19 rho
  | 20 => dtkQ4Pe20 rho
  | 21 => dtkQ4Pe21 rho
  | 22 => dtkQ4Pe22 rho
  | 23 => dtkQ4Pe23 rho
  | 24 => dtkQ4Pe24 rho
  | 25 => dtkQ4Pe25 rho
  | 26 => dtkQ4Pe26 rho
  | 27 => dtkQ4Pe27 rho
  | 28 => dtkQ4Pe28 rho
  | 29 => dtkQ4Pe29 rho
  | 30 => dtkQ4Pe30 rho
  | 31 => dtkQ4Pe31 rho
  | 32 => dtkQ4Pe32 rho
  | 33 => dtkQ4Pe33 rho
  | 34 => dtkQ4Pe34 rho
  | 35 => dtkQ4Pe35 rho
  | 36 => dtkQ4Pe36 rho
  | 37 => dtkQ4Pe37 rho
  | 38 => dtkQ4Pe38 rho
  | 39 => dtkQ4Pe39 rho
  | 40 => dtkQ4Pe40 rho
  | 41 => dtkQ4Pe41 rho
  | 42 => dtkQ4Pe42 rho
  | 43 => dtkQ4Pe43 rho
  | 44 => dtkQ4Pe44 rho
  | 45 => dtkQ4Pe45 rho
  | 46 => dtkQ4Pe46 rho
  | 47 => dtkQ4Pe47 rho
  | 48 => dtkQ4Pe48 rho
  | 49 => dtkQ4Pe49 rho
  | 50 => dtkQ4Pe50 rho
  | 51 => dtkQ4Pe51 rho
  | 52 => dtkQ4Pe52 rho
  | 53 => dtkQ4Pe53 rho
  | 54 => dtkQ4Pe54 rho
  | 55 => dtkQ4Pe55 rho
  | 56 => dtkQ4Pe56 rho
  | 57 => dtkQ4Pe57 rho
  | 58 => dtkQ4Pe58 rho
  | 59 => dtkQ4Pe59 rho
  | 60 => dtkQ4Pe60 rho
  | 61 => dtkQ4Pe61 rho
  | 62 => dtkQ4Pe62 rho
  | 63 => dtkQ4Pe63 rho
  | 64 => dtkQ4Pe64 rho
  | 65 => dtkQ4Pe65 rho
  | 66 => dtkQ4Pe66 rho
  | 67 => dtkQ4Pe67 rho
  | 68 => dtkQ4Pe68 rho
  | 69 => dtkQ4Pe69 rho
  | 70 => dtkQ4Pe70 rho
  | 71 => dtkQ4Pe71 rho
  | 72 => dtkQ4Pe72 rho
  | 73 => dtkQ4Pe73 rho
  | 74 => dtkQ4Pe74 rho
  | 75 => dtkQ4Pe75 rho
  | 76 => dtkQ4Pe76 rho
  | 77 => dtkQ4Pe77 rho
  | 78 => dtkQ4Pe78 rho
  | 79 => dtkQ4Pe79 rho
  | 80 => dtkQ4Pe80 rho
  | 81 => dtkQ4Pe81 rho
  | 82 => dtkQ4Pe82 rho
  | 83 => dtkQ4Pe83 rho
  | 84 => dtkQ4Pe84 rho
  | 85 => dtkQ4Pe85 rho
  | 86 => dtkQ4Pe86 rho
  | 87 => dtkQ4Pe87 rho
  | 88 => dtkQ4Pe88 rho
  | 89 => dtkQ4Pe89 rho
  | 90 => dtkQ4Pe90 rho
  | 91 => dtkQ4Pe91 rho
  | 92 => dtkQ4Pe92 rho
  | 93 => dtkQ4Pe93 rho
  | 94 => dtkQ4Pe94 rho
  | 95 => dtkQ4Pe95 rho
  | 96 => dtkQ4Pe96 rho
  | 97 => dtkQ4Pe97 rho
  | 98 => dtkQ4Pe98 rho
  | 99 => dtkQ4Pe99 rho
  | 100 => dtkQ4Pe100 rho
  | 101 => dtkQ4Pe101 rho
  | 102 => dtkQ4Pe102 rho
  | 103 => dtkQ4Pe103 rho
  | 104 => dtkQ4Pe104 rho
  | 105 => dtkQ4Pe105 rho
  | 106 => dtkQ4Pe106 rho
  | 107 => dtkQ4Pe107 rho
  | 108 => dtkQ4Pe108 rho
  | 109 => dtkQ4Pe109 rho
  | 110 => dtkQ4Pe110 rho
  | 111 => dtkQ4Pe111 rho
  | 112 => dtkQ4Pe112 rho
  | 113 => dtkQ4Pe113 rho
  | 114 => dtkQ4Pe114 rho
  | 115 => dtkQ4Pe115 rho
  | 116 => dtkQ4Pe116 rho
  | 117 => dtkQ4Pe117 rho
  | 118 => dtkQ4Pe118 rho
  | 119 => dtkQ4Pe119 rho
  | 120 => dtkQ4Pe120 rho
  | 121 => dtkQ4Pe121 rho
  | 122 => dtkQ4Pe122 rho
  | 123 => dtkQ4Pe123 rho
  | 124 => dtkQ4Pe124 rho
  | 125 => dtkQ4Pe125 rho
  | 126 => dtkQ4Pe126 rho
  | 127 => dtkQ4Pe127 rho
  | 128 => dtkQ4Pe128 rho
  | 129 => dtkQ4Pe129 rho
  | 130 => dtkQ4Pe130 rho
  | 131 => dtkQ4Pe131 rho
  | 132 => dtkQ4Pe132 rho
  | 133 => dtkQ4Pe133 rho
  | 134 => dtkQ4Pe134 rho
  | 135 => dtkQ4Pe135 rho
  | 136 => dtkQ4Pe136 rho
  | 137 => dtkQ4Pe137 rho
  | 138 => dtkQ4Pe138 rho
  | 139 => dtkQ4Pe139 rho
  | 140 => dtkQ4Pe140 rho
  | 141 => dtkQ4Pe141 rho
  | 142 => dtkQ4Pe142 rho
  | 143 => dtkQ4Pe143 rho
  | 144 => dtkQ4Pe144 rho
  | 145 => dtkQ4Pe145 rho
  | 146 => dtkQ4Pe146 rho
  | 147 => dtkQ4Pe147 rho
  | 148 => dtkQ4Pe148 rho
  | 149 => dtkQ4Pe149 rho
  | 150 => dtkQ4Pe150 rho
  | 151 => dtkQ4Pe151 rho
  | 152 => dtkQ4Pe152 rho
  | 153 => dtkQ4Pe153 rho
  | 154 => dtkQ4Pe154 rho
  | 155 => dtkQ4Pe155 rho
  | 156 => dtkQ4Pe156 rho
  | 157 => dtkQ4Pe157 rho
  | 158 => dtkQ4Pe158 rho
  | 159 => dtkQ4Pe159 rho
  | 160 => dtkQ4Pe160 rho
  | 161 => dtkQ4Pe161 rho
  | 162 => dtkQ4Pe162 rho
  | 163 => dtkQ4Pe163 rho
  | 164 => dtkQ4Pe164 rho
  | 165 => dtkQ4Pe165 rho
  | 166 => dtkQ4Pe166 rho
  | 167 => dtkQ4Pe167 rho
  | 168 => dtkQ4Pe168 rho
  | 169 => dtkQ4Pe169 rho
  | 170 => dtkQ4Pe170 rho
  | 171 => dtkQ4Pe171 rho
  | 172 => dtkQ4Pe172 rho
  | 173 => dtkQ4Pe173 rho
  | 174 => dtkQ4Pe174 rho
  | 175 => dtkQ4Pe175 rho
  | 176 => dtkQ4Pe176 rho
  | 177 => dtkQ4Pe177 rho
  | 178 => dtkQ4Pe178 rho
  | 179 => dtkQ4Pe179 rho
  | 180 => dtkQ4Pe180 rho
  | 181 => dtkQ4Pe181 rho
  | 182 => dtkQ4Pe182 rho
  | 183 => dtkQ4Pe183 rho
  | 184 => dtkQ4Pe184 rho
  | 185 => dtkQ4Pe185 rho
  | 186 => dtkQ4Pe186 rho
  | 187 => dtkQ4Pe187 rho
  | 188 => dtkQ4Pe188 rho
  | 189 => dtkQ4Pe189 rho
  | 190 => dtkQ4Pe190 rho
  | 191 => dtkQ4Pe191 rho
  | 192 => dtkQ4Pe192 rho
  | 193 => dtkQ4Pe193 rho
  | 194 => dtkQ4Pe194 rho
  | 195 => dtkQ4Pe195 rho
  | 196 => dtkQ4Pe196 rho
  | 197 => dtkQ4Pe197 rho
  | 198 => dtkQ4Pe198 rho
  | 199 => dtkQ4Pe199 rho
  | 200 => dtkQ4Pe200 rho
  | 201 => dtkQ4Pe201 rho
  | 202 => dtkQ4Pe202 rho
  | 203 => dtkQ4Pe203 rho
  | 204 => dtkQ4Pe204 rho
  | 205 => dtkQ4Pe205 rho
  | 206 => dtkQ4Pe206 rho
  | 207 => dtkQ4Pe207 rho
  | 208 => dtkQ4Pe208 rho
  | 209 => dtkQ4Pe209 rho
  | 210 => dtkQ4Pe210 rho
  | 211 => dtkQ4Pe211 rho
  | 212 => dtkQ4Pe212 rho
  | 213 => dtkQ4Pe213 rho
  | 214 => dtkQ4Pe214 rho
  | 215 => dtkQ4Pe215 rho
  | 216 => dtkQ4Pe216 rho
  | 217 => dtkQ4Pe217 rho
  | 218 => dtkQ4Pe218 rho
  | 219 => dtkQ4Pe219 rho
  | 220 => dtkQ4Pe220 rho
  | 221 => dtkQ4Pe221 rho
  | 222 => dtkQ4Pe222 rho
  | 223 => dtkQ4Pe223 rho
  | 224 => dtkQ4Pe224 rho
  | 225 => dtkQ4Pe225 rho
  | 226 => dtkQ4Pe226 rho
  | 227 => dtkQ4Pe227 rho
  | 228 => dtkQ4Pe228 rho
  | 229 => dtkQ4Pe229 rho
  | 230 => dtkQ4Pe230 rho
  | 231 => dtkQ4Pe231 rho
  | 232 => dtkQ4Pe232 rho
  | 233 => dtkQ4Pe233 rho
  | 234 => dtkQ4Pe234 rho
  | 235 => dtkQ4Pe235 rho
  | 236 => dtkQ4Pe236 rho
  | 237 => dtkQ4Pe237 rho
  | 238 => dtkQ4Pe238 rho
  | 239 => dtkQ4Pe239 rho
  | 240 => dtkQ4Pe240 rho
  | 241 => dtkQ4Pe241 rho
  | 242 => dtkQ4Pe242 rho
  | 243 => dtkQ4Pe243 rho
  | 244 => dtkQ4Pe244 rho
  | 245 => dtkQ4Pe245 rho
  | 246 => dtkQ4Pe246 rho
  | 247 => dtkQ4Pe247 rho
  | 248 => dtkQ4Pe248 rho
  | 249 => dtkQ4Pe249 rho
  | 250 => dtkQ4Pe250 rho
  | 251 => dtkQ4Pe251 rho
  | 252 => dtkQ4Pe252 rho
  | 253 => dtkQ4Pe253 rho
  | _ => 0

def dtkQ4IlState (rho : Nat -> F) : Nat -> F
  | 0 => dtkQ4Il0 rho
  | 1 => dtkQ4Il1 rho
  | 2 => dtkQ4Il2 rho
  | 3 => dtkQ4Il3 rho
  | 4 => dtkQ4Il4 rho
  | 5 => dtkQ4Il5 rho
  | 6 => dtkQ4Il6 rho
  | 7 => dtkQ4Il7 rho
  | 8 => dtkQ4Il8 rho
  | 9 => dtkQ4Il9 rho
  | 10 => dtkQ4Il10 rho
  | 11 => dtkQ4Il11 rho
  | 12 => dtkQ4Il12 rho
  | 13 => dtkQ4Il13 rho
  | 14 => dtkQ4Il14 rho
  | 15 => dtkQ4Il15 rho
  | 16 => dtkQ4Il16 rho
  | 17 => dtkQ4Il17 rho
  | 18 => dtkQ4Il18 rho
  | 19 => dtkQ4Il19 rho
  | 20 => dtkQ4Il20 rho
  | 21 => dtkQ4Il21 rho
  | 22 => dtkQ4Il22 rho
  | 23 => dtkQ4Il23 rho
  | 24 => dtkQ4Il24 rho
  | 25 => dtkQ4Il25 rho
  | 26 => dtkQ4Il26 rho
  | 27 => dtkQ4Il27 rho
  | 28 => dtkQ4Il28 rho
  | 29 => dtkQ4Il29 rho
  | 30 => dtkQ4Il30 rho
  | 31 => dtkQ4Il31 rho
  | 32 => dtkQ4Il32 rho
  | 33 => dtkQ4Il33 rho
  | 34 => dtkQ4Il34 rho
  | 35 => dtkQ4Il35 rho
  | 36 => dtkQ4Il36 rho
  | 37 => dtkQ4Il37 rho
  | 38 => dtkQ4Il38 rho
  | 39 => dtkQ4Il39 rho
  | 40 => dtkQ4Il40 rho
  | 41 => dtkQ4Il41 rho
  | 42 => dtkQ4Il42 rho
  | 43 => dtkQ4Il43 rho
  | 44 => dtkQ4Il44 rho
  | 45 => dtkQ4Il45 rho
  | 46 => dtkQ4Il46 rho
  | 47 => dtkQ4Il47 rho
  | 48 => dtkQ4Il48 rho
  | 49 => dtkQ4Il49 rho
  | 50 => dtkQ4Il50 rho
  | 51 => dtkQ4Il51 rho
  | 52 => dtkQ4Il52 rho
  | 53 => dtkQ4Il53 rho
  | 54 => dtkQ4Il54 rho
  | 55 => dtkQ4Il55 rho
  | 56 => dtkQ4Il56 rho
  | 57 => dtkQ4Il57 rho
  | 58 => dtkQ4Il58 rho
  | 59 => dtkQ4Il59 rho
  | 60 => dtkQ4Il60 rho
  | 61 => dtkQ4Il61 rho
  | 62 => dtkQ4Il62 rho
  | 63 => dtkQ4Il63 rho
  | 64 => dtkQ4Il64 rho
  | 65 => dtkQ4Il65 rho
  | 66 => dtkQ4Il66 rho
  | 67 => dtkQ4Il67 rho
  | 68 => dtkQ4Il68 rho
  | 69 => dtkQ4Il69 rho
  | 70 => dtkQ4Il70 rho
  | 71 => dtkQ4Il71 rho
  | 72 => dtkQ4Il72 rho
  | 73 => dtkQ4Il73 rho
  | 74 => dtkQ4Il74 rho
  | 75 => dtkQ4Il75 rho
  | 76 => dtkQ4Il76 rho
  | 77 => dtkQ4Il77 rho
  | 78 => dtkQ4Il78 rho
  | 79 => dtkQ4Il79 rho
  | 80 => dtkQ4Il80 rho
  | 81 => dtkQ4Il81 rho
  | 82 => dtkQ4Il82 rho
  | 83 => dtkQ4Il83 rho
  | 84 => dtkQ4Il84 rho
  | 85 => dtkQ4Il85 rho
  | 86 => dtkQ4Il86 rho
  | 87 => dtkQ4Il87 rho
  | 88 => dtkQ4Il88 rho
  | 89 => dtkQ4Il89 rho
  | 90 => dtkQ4Il90 rho
  | 91 => dtkQ4Il91 rho
  | 92 => dtkQ4Il92 rho
  | 93 => dtkQ4Il93 rho
  | 94 => dtkQ4Il94 rho
  | 95 => dtkQ4Il95 rho
  | 96 => dtkQ4Il96 rho
  | 97 => dtkQ4Il97 rho
  | 98 => dtkQ4Il98 rho
  | 99 => dtkQ4Il99 rho
  | 100 => dtkQ4Il100 rho
  | 101 => dtkQ4Il101 rho
  | 102 => dtkQ4Il102 rho
  | 103 => dtkQ4Il103 rho
  | 104 => dtkQ4Il104 rho
  | 105 => dtkQ4Il105 rho
  | 106 => dtkQ4Il106 rho
  | 107 => dtkQ4Il107 rho
  | 108 => dtkQ4Il108 rho
  | 109 => dtkQ4Il109 rho
  | 110 => dtkQ4Il110 rho
  | 111 => dtkQ4Il111 rho
  | 112 => dtkQ4Il112 rho
  | 113 => dtkQ4Il113 rho
  | 114 => dtkQ4Il114 rho
  | 115 => dtkQ4Il115 rho
  | 116 => dtkQ4Il116 rho
  | 117 => dtkQ4Il117 rho
  | 118 => dtkQ4Il118 rho
  | 119 => dtkQ4Il119 rho
  | 120 => dtkQ4Il120 rho
  | 121 => dtkQ4Il121 rho
  | 122 => dtkQ4Il122 rho
  | 123 => dtkQ4Il123 rho
  | 124 => dtkQ4Il124 rho
  | 125 => dtkQ4Il125 rho
  | 126 => dtkQ4Il126 rho
  | 127 => dtkQ4Il127 rho
  | 128 => dtkQ4Il128 rho
  | 129 => dtkQ4Il129 rho
  | 130 => dtkQ4Il130 rho
  | 131 => dtkQ4Il131 rho
  | 132 => dtkQ4Il132 rho
  | 133 => dtkQ4Il133 rho
  | 134 => dtkQ4Il134 rho
  | 135 => dtkQ4Il135 rho
  | 136 => dtkQ4Il136 rho
  | 137 => dtkQ4Il137 rho
  | 138 => dtkQ4Il138 rho
  | 139 => dtkQ4Il139 rho
  | 140 => dtkQ4Il140 rho
  | 141 => dtkQ4Il141 rho
  | 142 => dtkQ4Il142 rho
  | 143 => dtkQ4Il143 rho
  | 144 => dtkQ4Il144 rho
  | 145 => dtkQ4Il145 rho
  | 146 => dtkQ4Il146 rho
  | 147 => dtkQ4Il147 rho
  | 148 => dtkQ4Il148 rho
  | 149 => dtkQ4Il149 rho
  | 150 => dtkQ4Il150 rho
  | 151 => dtkQ4Il151 rho
  | 152 => dtkQ4Il152 rho
  | 153 => dtkQ4Il153 rho
  | 154 => dtkQ4Il154 rho
  | 155 => dtkQ4Il155 rho
  | 156 => dtkQ4Il156 rho
  | 157 => dtkQ4Il157 rho
  | 158 => dtkQ4Il158 rho
  | 159 => dtkQ4Il159 rho
  | 160 => dtkQ4Il160 rho
  | 161 => dtkQ4Il161 rho
  | 162 => dtkQ4Il162 rho
  | 163 => dtkQ4Il163 rho
  | 164 => dtkQ4Il164 rho
  | 165 => dtkQ4Il165 rho
  | 166 => dtkQ4Il166 rho
  | 167 => dtkQ4Il167 rho
  | 168 => dtkQ4Il168 rho
  | 169 => dtkQ4Il169 rho
  | 170 => dtkQ4Il170 rho
  | 171 => dtkQ4Il171 rho
  | 172 => dtkQ4Il172 rho
  | 173 => dtkQ4Il173 rho
  | 174 => dtkQ4Il174 rho
  | 175 => dtkQ4Il175 rho
  | 176 => dtkQ4Il176 rho
  | 177 => dtkQ4Il177 rho
  | 178 => dtkQ4Il178 rho
  | 179 => dtkQ4Il179 rho
  | 180 => dtkQ4Il180 rho
  | 181 => dtkQ4Il181 rho
  | 182 => dtkQ4Il182 rho
  | 183 => dtkQ4Il183 rho
  | 184 => dtkQ4Il184 rho
  | 185 => dtkQ4Il185 rho
  | 186 => dtkQ4Il186 rho
  | 187 => dtkQ4Il187 rho
  | 188 => dtkQ4Il188 rho
  | 189 => dtkQ4Il189 rho
  | 190 => dtkQ4Il190 rho
  | 191 => dtkQ4Il191 rho
  | 192 => dtkQ4Il192 rho
  | 193 => dtkQ4Il193 rho
  | 194 => dtkQ4Il194 rho
  | 195 => dtkQ4Il195 rho
  | 196 => dtkQ4Il196 rho
  | 197 => dtkQ4Il197 rho
  | 198 => dtkQ4Il198 rho
  | 199 => dtkQ4Il199 rho
  | 200 => dtkQ4Il200 rho
  | 201 => dtkQ4Il201 rho
  | 202 => dtkQ4Il202 rho
  | 203 => dtkQ4Il203 rho
  | 204 => dtkQ4Il204 rho
  | 205 => dtkQ4Il205 rho
  | 206 => dtkQ4Il206 rho
  | 207 => dtkQ4Il207 rho
  | 208 => dtkQ4Il208 rho
  | 209 => dtkQ4Il209 rho
  | 210 => dtkQ4Il210 rho
  | 211 => dtkQ4Il211 rho
  | 212 => dtkQ4Il212 rho
  | 213 => dtkQ4Il213 rho
  | 214 => dtkQ4Il214 rho
  | 215 => dtkQ4Il215 rho
  | 216 => dtkQ4Il216 rho
  | 217 => dtkQ4Il217 rho
  | 218 => dtkQ4Il218 rho
  | 219 => dtkQ4Il219 rho
  | 220 => dtkQ4Il220 rho
  | 221 => dtkQ4Il221 rho
  | 222 => dtkQ4Il222 rho
  | 223 => dtkQ4Il223 rho
  | 224 => dtkQ4Il224 rho
  | 225 => dtkQ4Il225 rho
  | 226 => dtkQ4Il226 rho
  | 227 => dtkQ4Il227 rho
  | 228 => dtkQ4Il228 rho
  | 229 => dtkQ4Il229 rho
  | 230 => dtkQ4Il230 rho
  | 231 => dtkQ4Il231 rho
  | 232 => dtkQ4Il232 rho
  | 233 => dtkQ4Il233 rho
  | 234 => dtkQ4Il234 rho
  | 235 => dtkQ4Il235 rho
  | 236 => dtkQ4Il236 rho
  | 237 => dtkQ4Il237 rho
  | 238 => dtkQ4Il238 rho
  | 239 => dtkQ4Il239 rho
  | 240 => dtkQ4Il240 rho
  | 241 => dtkQ4Il241 rho
  | 242 => dtkQ4Il242 rho
  | 243 => dtkQ4Il243 rho
  | 244 => dtkQ4Il244 rho
  | 245 => dtkQ4Il245 rho
  | 246 => dtkQ4Il246 rho
  | 247 => dtkQ4Il247 rho
  | 248 => dtkQ4Il248 rho
  | 249 => dtkQ4Il249 rho
  | 250 => dtkQ4Il250 rho
  | 251 => dtkQ4Il251 rho
  | 252 => dtkQ4Il252 rho
  | 253 => dtkQ4Il253 rho
  | _ => 0

theorem dtkQ4Il253Atoms (rho : Nat -> F) : dtkQ4Il253 rho = (0 : F) := by
  rfl

theorem dtkQ4Il252Atoms (rho : Nat -> F) : dtkQ4Il252 rho = (0 : F) := by
  unfold dtkQ4Il252
  rw [dtkQ4Il253Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il251Atoms (rho : Nat -> F) : dtkQ4Il251 rho = (0 : F) := by
  unfold dtkQ4Il251
  rw [dtkQ4Il252Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il250Atoms (rho : Nat -> F) : dtkQ4Il250 rho = (0 : F) := by
  unfold dtkQ4Il250
  rw [dtkQ4Il251Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il249Atoms (rho : Nat -> F) : dtkQ4Il249 rho = (0 : F) := by
  unfold dtkQ4Il249
  rw [dtkQ4Il250Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il248Atoms (rho : Nat -> F) : dtkQ4Il248 rho = (0 : F) := by
  unfold dtkQ4Il248
  rw [dtkQ4Il249Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il247Atoms (rho : Nat -> F) : dtkQ4Il247 rho = (0 : F) := by
  unfold dtkQ4Il247
  rw [dtkQ4Il248Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il246Atoms (rho : Nat -> F) : dtkQ4Il246 rho = (0 : F) := by
  unfold dtkQ4Il246
  rw [dtkQ4Il247Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il245Atoms (rho : Nat -> F) : dtkQ4Il245 rho = (0 : F) := by
  unfold dtkQ4Il245
  rw [dtkQ4Il246Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il244Atoms (rho : Nat -> F) : dtkQ4Il244 rho = (0 : F) := by
  unfold dtkQ4Il244
  rw [dtkQ4Il245Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il243Atoms (rho : Nat -> F) : dtkQ4Il243 rho = (0 : F) := by
  unfold dtkQ4Il243
  rw [dtkQ4Il244Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il242Atoms (rho : Nat -> F) : dtkQ4Il242 rho = (0 : F) := by
  unfold dtkQ4Il242
  rw [dtkQ4Il243Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il241Atoms (rho : Nat -> F) : dtkQ4Il241 rho = (0 : F) := by
  unfold dtkQ4Il241
  rw [dtkQ4Il242Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il240Atoms (rho : Nat -> F) : dtkQ4Il240 rho = (0 : F) := by
  unfold dtkQ4Il240
  rw [dtkQ4Il241Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il239Atoms (rho : Nat -> F) : dtkQ4Il239 rho = (0 : F) := by
  unfold dtkQ4Il239
  rw [dtkQ4Il240Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il238Atoms (rho : Nat -> F) : dtkQ4Il238 rho = (0 : F) := by
  unfold dtkQ4Il238
  rw [dtkQ4Il239Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il237Atoms (rho : Nat -> F) : dtkQ4Il237 rho = (0 : F) := by
  unfold dtkQ4Il237
  rw [dtkQ4Il238Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il236Atoms (rho : Nat -> F) : dtkQ4Il236 rho = (0 : F) := by
  unfold dtkQ4Il236
  rw [dtkQ4Il237Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il235Atoms (rho : Nat -> F) : dtkQ4Il235 rho = (0 : F) := by
  unfold dtkQ4Il235
  rw [dtkQ4Il236Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il234Atoms (rho : Nat -> F) : dtkQ4Il234 rho = (0 : F) := by
  unfold dtkQ4Il234
  rw [dtkQ4Il235Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il233Atoms (rho : Nat -> F) : dtkQ4Il233 rho = (0 : F) := by
  unfold dtkQ4Il233
  rw [dtkQ4Il234Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il232Atoms (rho : Nat -> F) : dtkQ4Il232 rho = (0 : F) := by
  unfold dtkQ4Il232
  rw [dtkQ4Il233Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il231Atoms (rho : Nat -> F) : dtkQ4Il231 rho = (0 : F) := by
  unfold dtkQ4Il231
  rw [dtkQ4Il232Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il230Atoms (rho : Nat -> F) : dtkQ4Il230 rho = (0 : F) := by
  unfold dtkQ4Il230
  rw [dtkQ4Il231Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il229Atoms (rho : Nat -> F) : dtkQ4Il229 rho = (0 : F) := by
  unfold dtkQ4Il229
  rw [dtkQ4Il230Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il228Atoms (rho : Nat -> F) : dtkQ4Il228 rho = (0 : F) := by
  unfold dtkQ4Il228
  rw [dtkQ4Il229Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il227Atoms (rho : Nat -> F) : dtkQ4Il227 rho = (0 : F) := by
  unfold dtkQ4Il227
  rw [dtkQ4Il228Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il226Atoms (rho : Nat -> F) : dtkQ4Il226 rho = (0 : F) := by
  unfold dtkQ4Il226
  rw [dtkQ4Il227Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il225Atoms (rho : Nat -> F) : dtkQ4Il225 rho = (0 : F) := by
  unfold dtkQ4Il225
  rw [dtkQ4Il226Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il224Atoms (rho : Nat -> F) : dtkQ4Il224 rho = (0 : F) := by
  unfold dtkQ4Il224
  rw [dtkQ4Il225Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il223Atoms (rho : Nat -> F) : dtkQ4Il223 rho = (0 : F) := by
  unfold dtkQ4Il223
  rw [dtkQ4Il224Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il222Atoms (rho : Nat -> F) : dtkQ4Il222 rho = (0 : F) := by
  unfold dtkQ4Il222
  rw [dtkQ4Il223Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il221Atoms (rho : Nat -> F) : dtkQ4Il221 rho = (0 : F) := by
  unfold dtkQ4Il221
  rw [dtkQ4Il222Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il220Atoms (rho : Nat -> F) : dtkQ4Il220 rho = (0 : F) := by
  unfold dtkQ4Il220
  rw [dtkQ4Il221Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il219Atoms (rho : Nat -> F) : dtkQ4Il219 rho = (0 : F) := by
  unfold dtkQ4Il219
  rw [dtkQ4Il220Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il218Atoms (rho : Nat -> F) : dtkQ4Il218 rho = (0 : F) := by
  unfold dtkQ4Il218
  rw [dtkQ4Il219Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il217Atoms (rho : Nat -> F) : dtkQ4Il217 rho = (0 : F) := by
  unfold dtkQ4Il217
  rw [dtkQ4Il218Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il216Atoms (rho : Nat -> F) : dtkQ4Il216 rho = (0 : F) := by
  unfold dtkQ4Il216
  rw [dtkQ4Il217Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il215Atoms (rho : Nat -> F) : dtkQ4Il215 rho = (0 : F) := by
  unfold dtkQ4Il215
  rw [dtkQ4Il216Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il214Atoms (rho : Nat -> F) : dtkQ4Il214 rho = (0 : F) := by
  unfold dtkQ4Il214
  rw [dtkQ4Il215Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il213Atoms (rho : Nat -> F) : dtkQ4Il213 rho = (0 : F) := by
  unfold dtkQ4Il213
  rw [dtkQ4Il214Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il212Atoms (rho : Nat -> F) : dtkQ4Il212 rho = (0 : F) := by
  unfold dtkQ4Il212
  rw [dtkQ4Il213Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il211Atoms (rho : Nat -> F) : dtkQ4Il211 rho = (0 : F) := by
  unfold dtkQ4Il211
  rw [dtkQ4Il212Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il210Atoms (rho : Nat -> F) : dtkQ4Il210 rho = (0 : F) := by
  unfold dtkQ4Il210
  rw [dtkQ4Il211Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il209Atoms (rho : Nat -> F) : dtkQ4Il209 rho = (0 : F) := by
  unfold dtkQ4Il209
  rw [dtkQ4Il210Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il208Atoms (rho : Nat -> F) : dtkQ4Il208 rho = (0 : F) := by
  unfold dtkQ4Il208
  rw [dtkQ4Il209Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il207Atoms (rho : Nat -> F) : dtkQ4Il207 rho = (0 : F) := by
  unfold dtkQ4Il207
  rw [dtkQ4Il208Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il206Atoms (rho : Nat -> F) : dtkQ4Il206 rho = (0 : F) := by
  unfold dtkQ4Il206
  rw [dtkQ4Il207Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il205Atoms (rho : Nat -> F) : dtkQ4Il205 rho = (0 : F) := by
  unfold dtkQ4Il205
  rw [dtkQ4Il206Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il204Atoms (rho : Nat -> F) : dtkQ4Il204 rho = (0 : F) := by
  unfold dtkQ4Il204
  rw [dtkQ4Il205Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il203Atoms (rho : Nat -> F) : dtkQ4Il203 rho = (0 : F) := by
  unfold dtkQ4Il203
  rw [dtkQ4Il204Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il202Atoms (rho : Nat -> F) : dtkQ4Il202 rho = (0 : F) := by
  unfold dtkQ4Il202
  rw [dtkQ4Il203Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il201Atoms (rho : Nat -> F) : dtkQ4Il201 rho = (0 : F) := by
  unfold dtkQ4Il201
  rw [dtkQ4Il202Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il200Atoms (rho : Nat -> F) : dtkQ4Il200 rho = (0 : F) := by
  unfold dtkQ4Il200
  rw [dtkQ4Il201Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il199Atoms (rho : Nat -> F) : dtkQ4Il199 rho = (0 : F) := by
  unfold dtkQ4Il199
  rw [dtkQ4Il200Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il198Atoms (rho : Nat -> F) : dtkQ4Il198 rho = (0 : F) := by
  unfold dtkQ4Il198
  rw [dtkQ4Il199Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il197Atoms (rho : Nat -> F) : dtkQ4Il197 rho = (0 : F) := by
  unfold dtkQ4Il197
  rw [dtkQ4Il198Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il196Atoms (rho : Nat -> F) : dtkQ4Il196 rho = (0 : F) := by
  unfold dtkQ4Il196
  rw [dtkQ4Il197Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il195Atoms (rho : Nat -> F) : dtkQ4Il195 rho = (0 : F) := by
  unfold dtkQ4Il195
  rw [dtkQ4Il196Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il194Atoms (rho : Nat -> F) : dtkQ4Il194 rho = (0 : F) := by
  unfold dtkQ4Il194
  rw [dtkQ4Il195Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il193Atoms (rho : Nat -> F) : dtkQ4Il193 rho = (0 : F) := by
  unfold dtkQ4Il193
  rw [dtkQ4Il194Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il192Atoms (rho : Nat -> F) : dtkQ4Il192 rho = (0 : F) := by
  unfold dtkQ4Il192
  rw [dtkQ4Il193Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il191Atoms (rho : Nat -> F) : dtkQ4Il191 rho = (0 : F) := by
  unfold dtkQ4Il191
  rw [dtkQ4Il192Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il190Atoms (rho : Nat -> F) : dtkQ4Il190 rho = (0 : F) := by
  unfold dtkQ4Il190
  rw [dtkQ4Il191Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il189Atoms (rho : Nat -> F) : dtkQ4Il189 rho = (0 : F) := by
  unfold dtkQ4Il189
  rw [dtkQ4Il190Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il188Atoms (rho : Nat -> F) : dtkQ4Il188 rho = (0 : F) := by
  unfold dtkQ4Il188
  rw [dtkQ4Il189Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il187Atoms (rho : Nat -> F) : dtkQ4Il187 rho = (0 : F) := by
  unfold dtkQ4Il187
  rw [dtkQ4Il188Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il186Atoms (rho : Nat -> F) : dtkQ4Il186 rho = (0 : F) := by
  unfold dtkQ4Il186
  rw [dtkQ4Il187Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il185Atoms (rho : Nat -> F) : dtkQ4Il185 rho = (0 : F) := by
  unfold dtkQ4Il185
  rw [dtkQ4Il186Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il184Atoms (rho : Nat -> F) : dtkQ4Il184 rho = (0 : F) := by
  unfold dtkQ4Il184
  rw [dtkQ4Il185Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il183Atoms (rho : Nat -> F) : dtkQ4Il183 rho = (0 : F) := by
  unfold dtkQ4Il183
  rw [dtkQ4Il184Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il182Atoms (rho : Nat -> F) : dtkQ4Il182 rho = (0 : F) := by
  unfold dtkQ4Il182
  rw [dtkQ4Il183Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il181Atoms (rho : Nat -> F) : dtkQ4Il181 rho = (0 : F) := by
  unfold dtkQ4Il181
  rw [dtkQ4Il182Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il180Atoms (rho : Nat -> F) : dtkQ4Il180 rho = (0 : F) := by
  unfold dtkQ4Il180
  rw [dtkQ4Il181Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il179Atoms (rho : Nat -> F) : dtkQ4Il179 rho = (0 : F) := by
  unfold dtkQ4Il179
  rw [dtkQ4Il180Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il178Atoms (rho : Nat -> F) : dtkQ4Il178 rho = (0 : F) := by
  unfold dtkQ4Il178
  rw [dtkQ4Il179Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il177Atoms (rho : Nat -> F) : dtkQ4Il177 rho = (0 : F) := by
  unfold dtkQ4Il177
  rw [dtkQ4Il178Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il176Atoms (rho : Nat -> F) : dtkQ4Il176 rho = (0 : F) := by
  unfold dtkQ4Il176
  rw [dtkQ4Il177Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il175Atoms (rho : Nat -> F) : dtkQ4Il175 rho = (0 : F) := by
  unfold dtkQ4Il175
  rw [dtkQ4Il176Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il174Atoms (rho : Nat -> F) : dtkQ4Il174 rho = (0 : F) := by
  unfold dtkQ4Il174
  rw [dtkQ4Il175Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il173Atoms (rho : Nat -> F) : dtkQ4Il173 rho = (0 : F) := by
  unfold dtkQ4Il173
  rw [dtkQ4Il174Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il172Atoms (rho : Nat -> F) : dtkQ4Il172 rho = (0 : F) := by
  unfold dtkQ4Il172
  rw [dtkQ4Il173Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il171Atoms (rho : Nat -> F) : dtkQ4Il171 rho = (0 : F) := by
  unfold dtkQ4Il171
  rw [dtkQ4Il172Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il170Atoms (rho : Nat -> F) : dtkQ4Il170 rho = (0 : F) := by
  unfold dtkQ4Il170
  rw [dtkQ4Il171Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il169Atoms (rho : Nat -> F) : dtkQ4Il169 rho = (0 : F) := by
  unfold dtkQ4Il169
  rw [dtkQ4Il170Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il168Atoms (rho : Nat -> F) : dtkQ4Il168 rho = (0 : F) := by
  unfold dtkQ4Il168
  rw [dtkQ4Il169Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il167Atoms (rho : Nat -> F) : dtkQ4Il167 rho = (0 : F) := by
  unfold dtkQ4Il167
  rw [dtkQ4Il168Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il166Atoms (rho : Nat -> F) : dtkQ4Il166 rho = (0 : F) := by
  unfold dtkQ4Il166
  rw [dtkQ4Il167Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il165Atoms (rho : Nat -> F) : dtkQ4Il165 rho = (0 : F) := by
  unfold dtkQ4Il165
  rw [dtkQ4Il166Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il164Atoms (rho : Nat -> F) : dtkQ4Il164 rho = (0 : F) := by
  unfold dtkQ4Il164
  rw [dtkQ4Il165Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il163Atoms (rho : Nat -> F) : dtkQ4Il163 rho = (0 : F) := by
  unfold dtkQ4Il163
  rw [dtkQ4Il164Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il162Atoms (rho : Nat -> F) : dtkQ4Il162 rho = (0 : F) := by
  unfold dtkQ4Il162
  rw [dtkQ4Il163Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il161Atoms (rho : Nat -> F) : dtkQ4Il161 rho = (0 : F) := by
  unfold dtkQ4Il161
  rw [dtkQ4Il162Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il160Atoms (rho : Nat -> F) : dtkQ4Il160 rho = (0 : F) := by
  unfold dtkQ4Il160
  rw [dtkQ4Il161Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il159Atoms (rho : Nat -> F) : dtkQ4Il159 rho = (0 : F) := by
  unfold dtkQ4Il159
  rw [dtkQ4Il160Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il158Atoms (rho : Nat -> F) : dtkQ4Il158 rho = (0 : F) := by
  unfold dtkQ4Il158
  rw [dtkQ4Il159Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il157Atoms (rho : Nat -> F) : dtkQ4Il157 rho = (0 : F) := by
  unfold dtkQ4Il157
  rw [dtkQ4Il158Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il156Atoms (rho : Nat -> F) : dtkQ4Il156 rho = (0 : F) := by
  unfold dtkQ4Il156
  rw [dtkQ4Il157Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il155Atoms (rho : Nat -> F) : dtkQ4Il155 rho = (0 : F) := by
  unfold dtkQ4Il155
  rw [dtkQ4Il156Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il154Atoms (rho : Nat -> F) : dtkQ4Il154 rho = (0 : F) := by
  unfold dtkQ4Il154
  rw [dtkQ4Il155Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il153Atoms (rho : Nat -> F) : dtkQ4Il153 rho = (0 : F) := by
  unfold dtkQ4Il153
  rw [dtkQ4Il154Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il152Atoms (rho : Nat -> F) : dtkQ4Il152 rho = (0 : F) := by
  unfold dtkQ4Il152
  rw [dtkQ4Il153Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il151Atoms (rho : Nat -> F) : dtkQ4Il151 rho = (0 : F) := by
  unfold dtkQ4Il151
  rw [dtkQ4Il152Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il150Atoms (rho : Nat -> F) : dtkQ4Il150 rho = (0 : F) := by
  unfold dtkQ4Il150
  rw [dtkQ4Il151Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il149Atoms (rho : Nat -> F) : dtkQ4Il149 rho = (0 : F) := by
  unfold dtkQ4Il149
  rw [dtkQ4Il150Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il148Atoms (rho : Nat -> F) : dtkQ4Il148 rho = (0 : F) := by
  unfold dtkQ4Il148
  rw [dtkQ4Il149Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il147Atoms (rho : Nat -> F) : dtkQ4Il147 rho = (0 : F) := by
  unfold dtkQ4Il147
  rw [dtkQ4Il148Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il146Atoms (rho : Nat -> F) : dtkQ4Il146 rho = (0 : F) := by
  unfold dtkQ4Il146
  rw [dtkQ4Il147Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il145Atoms (rho : Nat -> F) : dtkQ4Il145 rho = (0 : F) := by
  unfold dtkQ4Il145
  rw [dtkQ4Il146Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il144Atoms (rho : Nat -> F) : dtkQ4Il144 rho = (0 : F) := by
  unfold dtkQ4Il144
  rw [dtkQ4Il145Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il143Atoms (rho : Nat -> F) : dtkQ4Il143 rho = (0 : F) := by
  unfold dtkQ4Il143
  rw [dtkQ4Il144Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il142Atoms (rho : Nat -> F) : dtkQ4Il142 rho = (0 : F) := by
  unfold dtkQ4Il142
  rw [dtkQ4Il143Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il141Atoms (rho : Nat -> F) : dtkQ4Il141 rho = (0 : F) := by
  unfold dtkQ4Il141
  rw [dtkQ4Il142Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il140Atoms (rho : Nat -> F) : dtkQ4Il140 rho = (0 : F) := by
  unfold dtkQ4Il140
  rw [dtkQ4Il141Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il139Atoms (rho : Nat -> F) : dtkQ4Il139 rho = (0 : F) := by
  unfold dtkQ4Il139
  rw [dtkQ4Il140Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il138Atoms (rho : Nat -> F) : dtkQ4Il138 rho = (0 : F) := by
  unfold dtkQ4Il138
  rw [dtkQ4Il139Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il137Atoms (rho : Nat -> F) : dtkQ4Il137 rho = (0 : F) := by
  unfold dtkQ4Il137
  rw [dtkQ4Il138Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il136Atoms (rho : Nat -> F) : dtkQ4Il136 rho = (0 : F) := by
  unfold dtkQ4Il136
  rw [dtkQ4Il137Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il135Atoms (rho : Nat -> F) : dtkQ4Il135 rho = (0 : F) := by
  unfold dtkQ4Il135
  rw [dtkQ4Il136Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il134Atoms (rho : Nat -> F) : dtkQ4Il134 rho = (0 : F) := by
  unfold dtkQ4Il134
  rw [dtkQ4Il135Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il133Atoms (rho : Nat -> F) : dtkQ4Il133 rho = (0 : F) := by
  unfold dtkQ4Il133
  rw [dtkQ4Il134Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il132Atoms (rho : Nat -> F) : dtkQ4Il132 rho = (0 : F) := by
  unfold dtkQ4Il132
  rw [dtkQ4Il133Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il131Atoms (rho : Nat -> F) : dtkQ4Il131 rho = (0 : F) := by
  unfold dtkQ4Il131
  rw [dtkQ4Il132Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il130Atoms (rho : Nat -> F) : dtkQ4Il130 rho = (0 : F) := by
  unfold dtkQ4Il130
  rw [dtkQ4Il131Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il129Atoms (rho : Nat -> F) : dtkQ4Il129 rho = (0 : F) := by
  unfold dtkQ4Il129
  rw [dtkQ4Il130Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il128Atoms (rho : Nat -> F) : dtkQ4Il128 rho = (0 : F) := by
  unfold dtkQ4Il128
  rw [dtkQ4Il129Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il127Atoms (rho : Nat -> F) : dtkQ4Il127 rho = (0 : F) := by
  unfold dtkQ4Il127
  rw [dtkQ4Il128Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il126Atoms (rho : Nat -> F) : dtkQ4Il126 rho = (0 : F) := by
  unfold dtkQ4Il126
  rw [dtkQ4Il127Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il125Atoms (rho : Nat -> F) : dtkQ4Il125 rho = (0 : F) := by
  unfold dtkQ4Il125
  rw [dtkQ4Il126Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il124Atoms (rho : Nat -> F) : dtkQ4Il124 rho = (0 : F) := by
  unfold dtkQ4Il124
  rw [dtkQ4Il125Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il123Atoms (rho : Nat -> F) : dtkQ4Il123 rho = dtkQ4IlAtom0 rho := by
  unfold dtkQ4Il123
  rw [dtkQ4Il124Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il122Atoms (rho : Nat -> F) : dtkQ4Il122 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho := by
  unfold dtkQ4Il122
  rw [dtkQ4Il123Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il121Atoms (rho : Nat -> F) : dtkQ4Il121 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho := by
  unfold dtkQ4Il121
  rw [dtkQ4Il122Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il120Atoms (rho : Nat -> F) : dtkQ4Il120 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho := by
  unfold dtkQ4Il120
  rw [dtkQ4Il121Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il119Atoms (rho : Nat -> F) : dtkQ4Il119 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho := by
  unfold dtkQ4Il119
  rw [dtkQ4Il120Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il118Atoms (rho : Nat -> F) : dtkQ4Il118 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho := by
  unfold dtkQ4Il118
  rw [dtkQ4Il119Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il117Atoms (rho : Nat -> F) : dtkQ4Il117 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho := by
  unfold dtkQ4Il117
  rw [dtkQ4Il118Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il116Atoms (rho : Nat -> F) : dtkQ4Il116 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho := by
  unfold dtkQ4Il116
  rw [dtkQ4Il117Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il115Atoms (rho : Nat -> F) : dtkQ4Il115 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho := by
  unfold dtkQ4Il115
  rw [dtkQ4Il116Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il114Atoms (rho : Nat -> F) : dtkQ4Il114 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho := by
  unfold dtkQ4Il114
  rw [dtkQ4Il115Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il113Atoms (rho : Nat -> F) : dtkQ4Il113 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho := by
  unfold dtkQ4Il113
  rw [dtkQ4Il114Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il112Atoms (rho : Nat -> F) : dtkQ4Il112 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho := by
  unfold dtkQ4Il112
  rw [dtkQ4Il113Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il111Atoms (rho : Nat -> F) : dtkQ4Il111 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho := by
  unfold dtkQ4Il111
  rw [dtkQ4Il112Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il110Atoms (rho : Nat -> F) : dtkQ4Il110 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho := by
  unfold dtkQ4Il110
  rw [dtkQ4Il111Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il109Atoms (rho : Nat -> F) : dtkQ4Il109 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho := by
  unfold dtkQ4Il109
  rw [dtkQ4Il110Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il108Atoms (rho : Nat -> F) : dtkQ4Il108 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho := by
  unfold dtkQ4Il108
  rw [dtkQ4Il109Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il107Atoms (rho : Nat -> F) : dtkQ4Il107 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho := by
  unfold dtkQ4Il107
  rw [dtkQ4Il108Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il106Atoms (rho : Nat -> F) : dtkQ4Il106 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho := by
  unfold dtkQ4Il106
  rw [dtkQ4Il107Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il105Atoms (rho : Nat -> F) : dtkQ4Il105 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho := by
  unfold dtkQ4Il105
  rw [dtkQ4Il106Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il104Atoms (rho : Nat -> F) : dtkQ4Il104 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho := by
  unfold dtkQ4Il104
  rw [dtkQ4Il105Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il103Atoms (rho : Nat -> F) : dtkQ4Il103 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho := by
  unfold dtkQ4Il103
  rw [dtkQ4Il104Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il102Atoms (rho : Nat -> F) : dtkQ4Il102 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho := by
  unfold dtkQ4Il102
  rw [dtkQ4Il103Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il101Atoms (rho : Nat -> F) : dtkQ4Il101 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho := by
  unfold dtkQ4Il101
  rw [dtkQ4Il102Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il100Atoms (rho : Nat -> F) : dtkQ4Il100 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho := by
  unfold dtkQ4Il100
  rw [dtkQ4Il101Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il99Atoms (rho : Nat -> F) : dtkQ4Il99 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho := by
  unfold dtkQ4Il99
  rw [dtkQ4Il100Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il98Atoms (rho : Nat -> F) : dtkQ4Il98 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho := by
  unfold dtkQ4Il98
  rw [dtkQ4Il99Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il97Atoms (rho : Nat -> F) : dtkQ4Il97 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho := by
  unfold dtkQ4Il97
  rw [dtkQ4Il98Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il96Atoms (rho : Nat -> F) : dtkQ4Il96 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho := by
  unfold dtkQ4Il96
  rw [dtkQ4Il97Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il95Atoms (rho : Nat -> F) : dtkQ4Il95 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho := by
  unfold dtkQ4Il95
  rw [dtkQ4Il96Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il94Atoms (rho : Nat -> F) : dtkQ4Il94 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho := by
  unfold dtkQ4Il94
  rw [dtkQ4Il95Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il93Atoms (rho : Nat -> F) : dtkQ4Il93 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho := by
  unfold dtkQ4Il93
  rw [dtkQ4Il94Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il92Atoms (rho : Nat -> F) : dtkQ4Il92 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho := by
  unfold dtkQ4Il92
  rw [dtkQ4Il93Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il91Atoms (rho : Nat -> F) : dtkQ4Il91 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho := by
  unfold dtkQ4Il91
  rw [dtkQ4Il92Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il90Atoms (rho : Nat -> F) : dtkQ4Il90 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho := by
  unfold dtkQ4Il90
  rw [dtkQ4Il91Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il89Atoms (rho : Nat -> F) : dtkQ4Il89 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho := by
  unfold dtkQ4Il89
  rw [dtkQ4Il90Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il88Atoms (rho : Nat -> F) : dtkQ4Il88 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold dtkQ4Il88
  rw [dtkQ4Il89Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il87Atoms (rho : Nat -> F) : dtkQ4Il87 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold dtkQ4Il87
  rw [dtkQ4Il88Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il86Atoms (rho : Nat -> F) : dtkQ4Il86 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold dtkQ4Il86
  rw [dtkQ4Il87Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il85Atoms (rho : Nat -> F) : dtkQ4Il85 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold dtkQ4Il85
  rw [dtkQ4Il86Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il84Atoms (rho : Nat -> F) : dtkQ4Il84 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold dtkQ4Il84
  rw [dtkQ4Il85Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il83Atoms (rho : Nat -> F) : dtkQ4Il83 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho := by
  unfold dtkQ4Il83
  rw [dtkQ4Il84Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il82Atoms (rho : Nat -> F) : dtkQ4Il82 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho := by
  unfold dtkQ4Il82
  rw [dtkQ4Il83Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il81Atoms (rho : Nat -> F) : dtkQ4Il81 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho := by
  unfold dtkQ4Il81
  rw [dtkQ4Il82Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il80Atoms (rho : Nat -> F) : dtkQ4Il80 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho := by
  unfold dtkQ4Il80
  rw [dtkQ4Il81Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il79Atoms (rho : Nat -> F) : dtkQ4Il79 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho := by
  unfold dtkQ4Il79
  rw [dtkQ4Il80Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il78Atoms (rho : Nat -> F) : dtkQ4Il78 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho := by
  unfold dtkQ4Il78
  rw [dtkQ4Il79Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il77Atoms (rho : Nat -> F) : dtkQ4Il77 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho := by
  unfold dtkQ4Il77
  rw [dtkQ4Il78Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il76Atoms (rho : Nat -> F) : dtkQ4Il76 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho := by
  unfold dtkQ4Il76
  rw [dtkQ4Il77Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il75Atoms (rho : Nat -> F) : dtkQ4Il75 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho := by
  unfold dtkQ4Il75
  rw [dtkQ4Il76Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il74Atoms (rho : Nat -> F) : dtkQ4Il74 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il74
  rw [dtkQ4Il75Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il73Atoms (rho : Nat -> F) : dtkQ4Il73 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il73
  rw [dtkQ4Il74Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il72Atoms (rho : Nat -> F) : dtkQ4Il72 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il72
  rw [dtkQ4Il73Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il71Atoms (rho : Nat -> F) : dtkQ4Il71 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il71
  rw [dtkQ4Il72Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il70Atoms (rho : Nat -> F) : dtkQ4Il70 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il70
  rw [dtkQ4Il71Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il69Atoms (rho : Nat -> F) : dtkQ4Il69 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il69
  rw [dtkQ4Il70Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il68Atoms (rho : Nat -> F) : dtkQ4Il68 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il68
  rw [dtkQ4Il69Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il67Atoms (rho : Nat -> F) : dtkQ4Il67 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold dtkQ4Il67
  rw [dtkQ4Il68Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il66Atoms (rho : Nat -> F) : dtkQ4Il66 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho := by
  unfold dtkQ4Il66
  rw [dtkQ4Il67Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il65Atoms (rho : Nat -> F) : dtkQ4Il65 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho := by
  unfold dtkQ4Il65
  rw [dtkQ4Il66Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il64Atoms (rho : Nat -> F) : dtkQ4Il64 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho := by
  unfold dtkQ4Il64
  rw [dtkQ4Il65Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il63Atoms (rho : Nat -> F) : dtkQ4Il63 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho := by
  unfold dtkQ4Il63
  rw [dtkQ4Il64Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il62Atoms (rho : Nat -> F) : dtkQ4Il62 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho := by
  unfold dtkQ4Il62
  rw [dtkQ4Il63Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il61Atoms (rho : Nat -> F) : dtkQ4Il61 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho := by
  unfold dtkQ4Il61
  rw [dtkQ4Il62Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il60Atoms (rho : Nat -> F) : dtkQ4Il60 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho := by
  unfold dtkQ4Il60
  rw [dtkQ4Il61Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il59Atoms (rho : Nat -> F) : dtkQ4Il59 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho := by
  unfold dtkQ4Il59
  rw [dtkQ4Il60Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il58Atoms (rho : Nat -> F) : dtkQ4Il58 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho := by
  unfold dtkQ4Il58
  rw [dtkQ4Il59Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il57Atoms (rho : Nat -> F) : dtkQ4Il57 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho := by
  unfold dtkQ4Il57
  rw [dtkQ4Il58Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il56Atoms (rho : Nat -> F) : dtkQ4Il56 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho := by
  unfold dtkQ4Il56
  rw [dtkQ4Il57Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il55Atoms (rho : Nat -> F) : dtkQ4Il55 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho := by
  unfold dtkQ4Il55
  rw [dtkQ4Il56Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il54Atoms (rho : Nat -> F) : dtkQ4Il54 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho := by
  unfold dtkQ4Il54
  rw [dtkQ4Il55Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il53Atoms (rho : Nat -> F) : dtkQ4Il53 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho := by
  unfold dtkQ4Il53
  rw [dtkQ4Il54Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il52Atoms (rho : Nat -> F) : dtkQ4Il52 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho := by
  unfold dtkQ4Il52
  rw [dtkQ4Il53Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il51Atoms (rho : Nat -> F) : dtkQ4Il51 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho := by
  unfold dtkQ4Il51
  rw [dtkQ4Il52Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il50Atoms (rho : Nat -> F) : dtkQ4Il50 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho := by
  unfold dtkQ4Il50
  rw [dtkQ4Il51Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il49Atoms (rho : Nat -> F) : dtkQ4Il49 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho := by
  unfold dtkQ4Il49
  rw [dtkQ4Il50Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il48Atoms (rho : Nat -> F) : dtkQ4Il48 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho := by
  unfold dtkQ4Il48
  rw [dtkQ4Il49Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il47Atoms (rho : Nat -> F) : dtkQ4Il47 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho := by
  unfold dtkQ4Il47
  rw [dtkQ4Il48Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il46Atoms (rho : Nat -> F) : dtkQ4Il46 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho := by
  unfold dtkQ4Il46
  rw [dtkQ4Il47Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il45Atoms (rho : Nat -> F) : dtkQ4Il45 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho := by
  unfold dtkQ4Il45
  rw [dtkQ4Il46Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il44Atoms (rho : Nat -> F) : dtkQ4Il44 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho := by
  unfold dtkQ4Il44
  rw [dtkQ4Il45Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il43Atoms (rho : Nat -> F) : dtkQ4Il43 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho := by
  unfold dtkQ4Il43
  rw [dtkQ4Il44Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il42Atoms (rho : Nat -> F) : dtkQ4Il42 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho := by
  unfold dtkQ4Il42
  rw [dtkQ4Il43Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il41Atoms (rho : Nat -> F) : dtkQ4Il41 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho := by
  unfold dtkQ4Il41
  rw [dtkQ4Il42Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il40Atoms (rho : Nat -> F) : dtkQ4Il40 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho := by
  unfold dtkQ4Il40
  rw [dtkQ4Il41Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il39Atoms (rho : Nat -> F) : dtkQ4Il39 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho := by
  unfold dtkQ4Il39
  rw [dtkQ4Il40Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il38Atoms (rho : Nat -> F) : dtkQ4Il38 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho := by
  unfold dtkQ4Il38
  rw [dtkQ4Il39Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il37Atoms (rho : Nat -> F) : dtkQ4Il37 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho := by
  unfold dtkQ4Il37
  rw [dtkQ4Il38Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il36Atoms (rho : Nat -> F) : dtkQ4Il36 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho := by
  unfold dtkQ4Il36
  rw [dtkQ4Il37Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il35Atoms (rho : Nat -> F) : dtkQ4Il35 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho := by
  unfold dtkQ4Il35
  rw [dtkQ4Il36Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il34Atoms (rho : Nat -> F) : dtkQ4Il34 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho := by
  unfold dtkQ4Il34
  rw [dtkQ4Il35Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il33Atoms (rho : Nat -> F) : dtkQ4Il33 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho := by
  unfold dtkQ4Il33
  rw [dtkQ4Il34Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il32Atoms (rho : Nat -> F) : dtkQ4Il32 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho := by
  unfold dtkQ4Il32
  rw [dtkQ4Il33Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il31Atoms (rho : Nat -> F) : dtkQ4Il31 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho := by
  unfold dtkQ4Il31
  rw [dtkQ4Il32Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il30Atoms (rho : Nat -> F) : dtkQ4Il30 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho := by
  unfold dtkQ4Il30
  rw [dtkQ4Il31Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il29Atoms (rho : Nat -> F) : dtkQ4Il29 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho := by
  unfold dtkQ4Il29
  rw [dtkQ4Il30Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il28Atoms (rho : Nat -> F) : dtkQ4Il28 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho := by
  unfold dtkQ4Il28
  rw [dtkQ4Il29Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il27Atoms (rho : Nat -> F) : dtkQ4Il27 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho := by
  unfold dtkQ4Il27
  rw [dtkQ4Il28Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il26Atoms (rho : Nat -> F) : dtkQ4Il26 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho := by
  unfold dtkQ4Il26
  rw [dtkQ4Il27Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il25Atoms (rho : Nat -> F) : dtkQ4Il25 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho := by
  unfold dtkQ4Il25
  rw [dtkQ4Il26Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il24Atoms (rho : Nat -> F) : dtkQ4Il24 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il24
  rw [dtkQ4Il25Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il23Atoms (rho : Nat -> F) : dtkQ4Il23 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il23
  rw [dtkQ4Il24Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il22Atoms (rho : Nat -> F) : dtkQ4Il22 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il22
  rw [dtkQ4Il23Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il21Atoms (rho : Nat -> F) : dtkQ4Il21 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il21
  rw [dtkQ4Il22Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il20Atoms (rho : Nat -> F) : dtkQ4Il20 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il20
  rw [dtkQ4Il21Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il19Atoms (rho : Nat -> F) : dtkQ4Il19 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il19
  rw [dtkQ4Il20Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il18Atoms (rho : Nat -> F) : dtkQ4Il18 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il18
  rw [dtkQ4Il19Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il17Atoms (rho : Nat -> F) : dtkQ4Il17 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il17
  rw [dtkQ4Il18Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il16Atoms (rho : Nat -> F) : dtkQ4Il16 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold dtkQ4Il16
  rw [dtkQ4Il17Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il15Atoms (rho : Nat -> F) : dtkQ4Il15 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho := by
  unfold dtkQ4Il15
  rw [dtkQ4Il16Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il14Atoms (rho : Nat -> F) : dtkQ4Il14 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho := by
  unfold dtkQ4Il14
  rw [dtkQ4Il15Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il13Atoms (rho : Nat -> F) : dtkQ4Il13 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho := by
  unfold dtkQ4Il13
  rw [dtkQ4Il14Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il12Atoms (rho : Nat -> F) : dtkQ4Il12 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho := by
  unfold dtkQ4Il12
  rw [dtkQ4Il13Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il11Atoms (rho : Nat -> F) : dtkQ4Il11 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il11
  rw [dtkQ4Il12Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il10Atoms (rho : Nat -> F) : dtkQ4Il10 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il10
  rw [dtkQ4Il11Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il9Atoms (rho : Nat -> F) : dtkQ4Il9 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il9
  rw [dtkQ4Il10Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il8Atoms (rho : Nat -> F) : dtkQ4Il8 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il8
  rw [dtkQ4Il9Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il7Atoms (rho : Nat -> F) : dtkQ4Il7 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il7
  rw [dtkQ4Il8Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il6Atoms (rho : Nat -> F) : dtkQ4Il6 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il6
  rw [dtkQ4Il7Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il5Atoms (rho : Nat -> F) : dtkQ4Il5 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il5
  rw [dtkQ4Il6Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il4Atoms (rho : Nat -> F) : dtkQ4Il4 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il4
  rw [dtkQ4Il5Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il3Atoms (rho : Nat -> F) : dtkQ4Il3 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold dtkQ4Il3
  rw [dtkQ4Il4Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il2Atoms (rho : Nat -> F) : dtkQ4Il2 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho + dtkQ4IlAtom60 rho := by
  unfold dtkQ4Il2
  rw [dtkQ4Il3Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il1Atoms (rho : Nat -> F) : dtkQ4Il1 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho + dtkQ4IlAtom60 rho := by
  unfold dtkQ4Il1
  rw [dtkQ4Il2Atoms rho] <;> simp only [zero_add]

theorem dtkQ4Il0Atoms (rho : Nat -> F) : dtkQ4Il0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho + dtkQ4IlAtom60 rho + dtkQ4IlAtom61 rho := by
  unfold dtkQ4Il0
  rw [dtkQ4Il1Atoms rho] <;> simp only [zero_add]

theorem dtkQ4relationLc125Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc125Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125Part1 dtkQ4IlAtom17
  ring

theorem dtkQ4relationLc125Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125
  rw [dtkQ4relationLc125Part0Atom rho, dtkQ4relationLc125Part1Atom rho] <;> ring

theorem dtkQ4relationLc126Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc126Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126Part1 dtkQ4IlAtom17 dtkQ4IlAtom18
  ring

theorem dtkQ4relationLc126Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126
  rw [dtkQ4relationLc126Part0Atom rho, dtkQ4relationLc126Part1Atom rho] <;> ring

theorem dtkQ4relationLc127Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc127Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19
  ring

theorem dtkQ4relationLc127Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127
  rw [dtkQ4relationLc127Part0Atom rho, dtkQ4relationLc127Part1Atom rho] <;> ring

theorem dtkQ4relationLc128Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc128Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20
  ring

theorem dtkQ4relationLc128Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128
  rw [dtkQ4relationLc128Part0Atom rho, dtkQ4relationLc128Part1Atom rho] <;> ring

theorem dtkQ4relationLc129Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc129Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21
  ring

theorem dtkQ4relationLc129Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129
  rw [dtkQ4relationLc129Part0Atom rho, dtkQ4relationLc129Part1Atom rho] <;> ring

theorem dtkQ4relationLc130Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc130Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22
  ring

theorem dtkQ4relationLc130Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130
  rw [dtkQ4relationLc130Part0Atom rho, dtkQ4relationLc130Part1Atom rho] <;> ring

theorem dtkQ4relationLc131Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc131Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23
  ring

theorem dtkQ4relationLc131Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131
  rw [dtkQ4relationLc131Part0Atom rho, dtkQ4relationLc131Part1Atom rho] <;> ring

theorem dtkQ4relationLc132Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc132Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24
  ring

theorem dtkQ4relationLc132Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132
  rw [dtkQ4relationLc132Part0Atom rho, dtkQ4relationLc132Part1Atom rho] <;> ring

theorem dtkQ4relationLc133Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc133Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25
  ring

theorem dtkQ4relationLc133Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133
  rw [dtkQ4relationLc133Part0Atom rho, dtkQ4relationLc133Part1Atom rho] <;> ring

theorem dtkQ4relationLc134Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc134Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26
  ring

theorem dtkQ4relationLc134Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134
  rw [dtkQ4relationLc134Part0Atom rho, dtkQ4relationLc134Part1Atom rho] <;> ring

theorem dtkQ4relationLc135Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc135Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27
  ring

theorem dtkQ4relationLc135Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135
  rw [dtkQ4relationLc135Part0Atom rho, dtkQ4relationLc135Part1Atom rho] <;> ring

theorem dtkQ4relationLc136Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc136Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28
  ring

theorem dtkQ4relationLc136Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136
  rw [dtkQ4relationLc136Part0Atom rho, dtkQ4relationLc136Part1Atom rho] <;> ring

theorem dtkQ4relationLc137Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc137Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29
  ring

theorem dtkQ4relationLc137Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137
  rw [dtkQ4relationLc137Part0Atom rho, dtkQ4relationLc137Part1Atom rho] <;> ring

theorem dtkQ4relationLc138Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc138Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30
  ring

theorem dtkQ4relationLc138Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138
  rw [dtkQ4relationLc138Part0Atom rho, dtkQ4relationLc138Part1Atom rho] <;> ring

theorem dtkQ4relationLc139Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc139Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31
  ring

theorem dtkQ4relationLc139Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139
  rw [dtkQ4relationLc139Part0Atom rho, dtkQ4relationLc139Part1Atom rho] <;> ring

theorem dtkQ4relationLc140Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc140Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32
  ring

theorem dtkQ4relationLc140Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140
  rw [dtkQ4relationLc140Part0Atom rho, dtkQ4relationLc140Part1Atom rho] <;> ring

theorem dtkQ4relationLc141Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc141Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc141Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141Part2 dtkQ4IlAtom34
  ring

theorem dtkQ4relationLc141Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141
  rw [dtkQ4relationLc141Part0Atom rho, dtkQ4relationLc141Part1Atom rho, dtkQ4relationLc141Part2Atom rho] <;> ring

theorem dtkQ4relationLc142Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc142Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc142Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142Part2 dtkQ4IlAtom34 dtkQ4IlAtom35
  ring

theorem dtkQ4relationLc142Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142
  rw [dtkQ4relationLc142Part0Atom rho, dtkQ4relationLc142Part1Atom rho, dtkQ4relationLc142Part2Atom rho] <;> ring

theorem dtkQ4relationLc143Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc143Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc143Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36
  ring

theorem dtkQ4relationLc143Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143
  rw [dtkQ4relationLc143Part0Atom rho, dtkQ4relationLc143Part1Atom rho, dtkQ4relationLc143Part2Atom rho] <;> ring

theorem dtkQ4relationLc144Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc144Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc144Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37
  ring

theorem dtkQ4relationLc144Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144
  rw [dtkQ4relationLc144Part0Atom rho, dtkQ4relationLc144Part1Atom rho, dtkQ4relationLc144Part2Atom rho] <;> ring

theorem dtkQ4relationLc145Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc145Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc145Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38
  ring

theorem dtkQ4relationLc145Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145
  rw [dtkQ4relationLc145Part0Atom rho, dtkQ4relationLc145Part1Atom rho, dtkQ4relationLc145Part2Atom rho] <;> ring

theorem dtkQ4relationLc146Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc146Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc146Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39
  ring

theorem dtkQ4relationLc146Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146
  rw [dtkQ4relationLc146Part0Atom rho, dtkQ4relationLc146Part1Atom rho, dtkQ4relationLc146Part2Atom rho] <;> ring

theorem dtkQ4relationLc147Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc147Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc147Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40
  ring

theorem dtkQ4relationLc147Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147
  rw [dtkQ4relationLc147Part0Atom rho, dtkQ4relationLc147Part1Atom rho, dtkQ4relationLc147Part2Atom rho] <;> ring

theorem dtkQ4relationLc148Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc148Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc148Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41
  ring

theorem dtkQ4relationLc148Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148
  rw [dtkQ4relationLc148Part0Atom rho, dtkQ4relationLc148Part1Atom rho, dtkQ4relationLc148Part2Atom rho] <;> ring

theorem dtkQ4relationLc149Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc149Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc149Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42
  ring

theorem dtkQ4relationLc149Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149
  rw [dtkQ4relationLc149Part0Atom rho, dtkQ4relationLc149Part1Atom rho, dtkQ4relationLc149Part2Atom rho] <;> ring

theorem dtkQ4relationLc150Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc150Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc150Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43
  ring

theorem dtkQ4relationLc150Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150
  rw [dtkQ4relationLc150Part0Atom rho, dtkQ4relationLc150Part1Atom rho, dtkQ4relationLc150Part2Atom rho] <;> ring

theorem dtkQ4relationLc151Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc151Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc151Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44
  ring

theorem dtkQ4relationLc151Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151
  rw [dtkQ4relationLc151Part0Atom rho, dtkQ4relationLc151Part1Atom rho, dtkQ4relationLc151Part2Atom rho] <;> ring

theorem dtkQ4relationLc152Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc152Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc152Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45
  ring

theorem dtkQ4relationLc152Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152
  rw [dtkQ4relationLc152Part0Atom rho, dtkQ4relationLc152Part1Atom rho, dtkQ4relationLc152Part2Atom rho] <;> ring

theorem dtkQ4relationLc153Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc153Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc153Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46
  ring

theorem dtkQ4relationLc153Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153
  rw [dtkQ4relationLc153Part0Atom rho, dtkQ4relationLc153Part1Atom rho, dtkQ4relationLc153Part2Atom rho] <;> ring

theorem dtkQ4relationLc154Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc154Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc154Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47
  ring

theorem dtkQ4relationLc154Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154
  rw [dtkQ4relationLc154Part0Atom rho, dtkQ4relationLc154Part1Atom rho, dtkQ4relationLc154Part2Atom rho] <;> ring

theorem dtkQ4relationLc155Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc155Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc155Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48
  ring

theorem dtkQ4relationLc155Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155
  rw [dtkQ4relationLc155Part0Atom rho, dtkQ4relationLc155Part1Atom rho, dtkQ4relationLc155Part2Atom rho] <;> ring

theorem dtkQ4relationLc156Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc156Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc156Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49
  ring

theorem dtkQ4relationLc156Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156
  rw [dtkQ4relationLc156Part0Atom rho, dtkQ4relationLc156Part1Atom rho, dtkQ4relationLc156Part2Atom rho] <;> ring

theorem dtkQ4relationLc157Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc157Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc157Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc157Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157Part3 dtkQ4IlAtom51
  ring

theorem dtkQ4relationLc157Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157
  rw [dtkQ4relationLc157Part0Atom rho, dtkQ4relationLc157Part1Atom rho, dtkQ4relationLc157Part2Atom rho, dtkQ4relationLc157Part3Atom rho] <;> ring

theorem dtkQ4relationLc158Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc158Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc158Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc158Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158Part3 dtkQ4IlAtom51 dtkQ4IlAtom52
  ring

theorem dtkQ4relationLc158Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158
  rw [dtkQ4relationLc158Part0Atom rho, dtkQ4relationLc158Part1Atom rho, dtkQ4relationLc158Part2Atom rho, dtkQ4relationLc158Part3Atom rho] <;> ring

theorem dtkQ4relationLc159Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc159Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc159Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc159Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53
  ring

theorem dtkQ4relationLc159Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159
  rw [dtkQ4relationLc159Part0Atom rho, dtkQ4relationLc159Part1Atom rho, dtkQ4relationLc159Part2Atom rho, dtkQ4relationLc159Part3Atom rho] <;> ring

theorem dtkQ4relationLc160Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc160Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc160Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc160Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54
  ring

theorem dtkQ4relationLc160Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160
  rw [dtkQ4relationLc160Part0Atom rho, dtkQ4relationLc160Part1Atom rho, dtkQ4relationLc160Part2Atom rho, dtkQ4relationLc160Part3Atom rho] <;> ring

theorem dtkQ4relationLc161Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc161Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc161Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc161Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55
  ring

theorem dtkQ4relationLc161Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161
  rw [dtkQ4relationLc161Part0Atom rho, dtkQ4relationLc161Part1Atom rho, dtkQ4relationLc161Part2Atom rho, dtkQ4relationLc161Part3Atom rho] <;> ring

theorem dtkQ4relationLc162Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc162Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc162Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc162Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55 dtkQ4IlAtom56
  ring

theorem dtkQ4relationLc162Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162
  rw [dtkQ4relationLc162Part0Atom rho, dtkQ4relationLc162Part1Atom rho, dtkQ4relationLc162Part2Atom rho, dtkQ4relationLc162Part3Atom rho] <;> ring

theorem dtkQ4relationLc163Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc163Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc163Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc163Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55 dtkQ4IlAtom56 dtkQ4IlAtom57
  ring

theorem dtkQ4relationLc163Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163
  rw [dtkQ4relationLc163Part0Atom rho, dtkQ4relationLc163Part1Atom rho, dtkQ4relationLc163Part2Atom rho, dtkQ4relationLc163Part3Atom rho] <;> ring

theorem dtkQ4relationLc164Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc164Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc164Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc164Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55 dtkQ4IlAtom56 dtkQ4IlAtom57 dtkQ4IlAtom58
  ring

theorem dtkQ4relationLc164Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164
  rw [dtkQ4relationLc164Part0Atom rho, dtkQ4relationLc164Part1Atom rho, dtkQ4relationLc164Part2Atom rho, dtkQ4relationLc164Part3Atom rho] <;> ring

theorem dtkQ4relationLc165Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc165Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc165Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc165Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55 dtkQ4IlAtom56 dtkQ4IlAtom57 dtkQ4IlAtom58 dtkQ4IlAtom59
  ring

theorem dtkQ4relationLc165Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165
  rw [dtkQ4relationLc165Part0Atom rho, dtkQ4relationLc165Part1Atom rho, dtkQ4relationLc165Part2Atom rho, dtkQ4relationLc165Part3Atom rho] <;> ring

theorem dtkQ4relationLc166Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part0 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom16 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc166Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part1 rho = (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part1 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32 dtkQ4IlAtom33
  ring

theorem dtkQ4relationLc166Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part2 rho = (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part2 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49 dtkQ4IlAtom50
  ring

theorem dtkQ4relationLc166Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part3 rho = (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho + dtkQ4IlAtom60 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166Part3 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55 dtkQ4IlAtom56 dtkQ4IlAtom57 dtkQ4IlAtom58 dtkQ4IlAtom59 dtkQ4IlAtom60
  ring

theorem dtkQ4relationLc166Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166 rho = dtkQ4IlAtom0 rho + dtkQ4IlAtom1 rho + dtkQ4IlAtom2 rho + dtkQ4IlAtom3 rho + dtkQ4IlAtom4 rho + dtkQ4IlAtom5 rho + dtkQ4IlAtom6 rho + dtkQ4IlAtom7 rho + dtkQ4IlAtom8 rho + dtkQ4IlAtom9 rho + dtkQ4IlAtom10 rho + dtkQ4IlAtom11 rho + dtkQ4IlAtom12 rho + dtkQ4IlAtom13 rho + dtkQ4IlAtom14 rho + dtkQ4IlAtom15 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho + dtkQ4IlAtom18 rho + dtkQ4IlAtom19 rho + dtkQ4IlAtom20 rho + dtkQ4IlAtom21 rho + dtkQ4IlAtom22 rho + dtkQ4IlAtom23 rho + dtkQ4IlAtom24 rho + dtkQ4IlAtom25 rho + dtkQ4IlAtom26 rho + dtkQ4IlAtom27 rho + dtkQ4IlAtom28 rho + dtkQ4IlAtom29 rho + dtkQ4IlAtom30 rho + dtkQ4IlAtom31 rho + dtkQ4IlAtom32 rho + dtkQ4IlAtom33 rho + (-1 : F) * dtkQ4IlAtom34 rho + dtkQ4IlAtom35 rho + dtkQ4IlAtom36 rho + dtkQ4IlAtom37 rho + dtkQ4IlAtom38 rho + dtkQ4IlAtom39 rho + dtkQ4IlAtom40 rho + dtkQ4IlAtom41 rho + dtkQ4IlAtom42 rho + dtkQ4IlAtom43 rho + dtkQ4IlAtom44 rho + dtkQ4IlAtom45 rho + dtkQ4IlAtom46 rho + dtkQ4IlAtom47 rho + dtkQ4IlAtom48 rho + dtkQ4IlAtom49 rho + dtkQ4IlAtom50 rho + (-1 : F) * dtkQ4IlAtom51 rho + dtkQ4IlAtom52 rho + dtkQ4IlAtom53 rho + dtkQ4IlAtom54 rho + dtkQ4IlAtom55 rho + dtkQ4IlAtom56 rho + dtkQ4IlAtom57 rho + dtkQ4IlAtom58 rho + dtkQ4IlAtom59 rho + dtkQ4IlAtom60 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166
  rw [dtkQ4relationLc166Part0Atom rho, dtkQ4relationLc166Part1Atom rho, dtkQ4relationLc166Part2Atom rho, dtkQ4relationLc166Part3Atom rho] <;> ring

theorem dtkQ4relationLc167Part0Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part0 rho = (1 : F) + (-1 : F) * dtkQ4IlAtom0 rho + (-1 : F) * dtkQ4IlAtom1 rho + (-1 : F) * dtkQ4IlAtom2 rho + (-1 : F) * dtkQ4IlAtom3 rho + (-1 : F) * dtkQ4IlAtom4 rho + (-1 : F) * dtkQ4IlAtom5 rho + (-1 : F) * dtkQ4IlAtom6 rho + (-1 : F) * dtkQ4IlAtom7 rho + (-1 : F) * dtkQ4IlAtom8 rho + (-1 : F) * dtkQ4IlAtom9 rho + (-1 : F) * dtkQ4IlAtom10 rho + (-1 : F) * dtkQ4IlAtom11 rho + (-1 : F) * dtkQ4IlAtom12 rho + (-1 : F) * dtkQ4IlAtom13 rho + (-1 : F) * dtkQ4IlAtom14 rho + (-1 : F) * dtkQ4IlAtom15 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part0 dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  ring

theorem dtkQ4relationLc167Part1Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part1 rho = (-1 : F) * dtkQ4IlAtom16 rho + dtkQ4IlAtom17 rho + (-1 : F) * dtkQ4IlAtom18 rho + (-1 : F) * dtkQ4IlAtom19 rho + (-1 : F) * dtkQ4IlAtom20 rho + (-1 : F) * dtkQ4IlAtom21 rho + (-1 : F) * dtkQ4IlAtom22 rho + (-1 : F) * dtkQ4IlAtom23 rho + (-1 : F) * dtkQ4IlAtom24 rho + (-1 : F) * dtkQ4IlAtom25 rho + (-1 : F) * dtkQ4IlAtom26 rho + (-1 : F) * dtkQ4IlAtom27 rho + (-1 : F) * dtkQ4IlAtom28 rho + (-1 : F) * dtkQ4IlAtom29 rho + (-1 : F) * dtkQ4IlAtom30 rho + (-1 : F) * dtkQ4IlAtom31 rho + (-1 : F) * dtkQ4IlAtom32 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part1 dtkQ4IlAtom16 dtkQ4IlAtom17 dtkQ4IlAtom18 dtkQ4IlAtom19 dtkQ4IlAtom20 dtkQ4IlAtom21 dtkQ4IlAtom22 dtkQ4IlAtom23 dtkQ4IlAtom24 dtkQ4IlAtom25 dtkQ4IlAtom26 dtkQ4IlAtom27 dtkQ4IlAtom28 dtkQ4IlAtom29 dtkQ4IlAtom30 dtkQ4IlAtom31 dtkQ4IlAtom32
  ring

theorem dtkQ4relationLc167Part2Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part2 rho = (-1 : F) * dtkQ4IlAtom33 rho + dtkQ4IlAtom34 rho + (-1 : F) * dtkQ4IlAtom35 rho + (-1 : F) * dtkQ4IlAtom36 rho + (-1 : F) * dtkQ4IlAtom37 rho + (-1 : F) * dtkQ4IlAtom38 rho + (-1 : F) * dtkQ4IlAtom39 rho + (-1 : F) * dtkQ4IlAtom40 rho + (-1 : F) * dtkQ4IlAtom41 rho + (-1 : F) * dtkQ4IlAtom42 rho + (-1 : F) * dtkQ4IlAtom43 rho + (-1 : F) * dtkQ4IlAtom44 rho + (-1 : F) * dtkQ4IlAtom45 rho + (-1 : F) * dtkQ4IlAtom46 rho + (-1 : F) * dtkQ4IlAtom47 rho + (-1 : F) * dtkQ4IlAtom48 rho + (-1 : F) * dtkQ4IlAtom49 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part2 dtkQ4IlAtom33 dtkQ4IlAtom34 dtkQ4IlAtom35 dtkQ4IlAtom36 dtkQ4IlAtom37 dtkQ4IlAtom38 dtkQ4IlAtom39 dtkQ4IlAtom40 dtkQ4IlAtom41 dtkQ4IlAtom42 dtkQ4IlAtom43 dtkQ4IlAtom44 dtkQ4IlAtom45 dtkQ4IlAtom46 dtkQ4IlAtom47 dtkQ4IlAtom48 dtkQ4IlAtom49
  ring

theorem dtkQ4relationLc167Part3Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part3 rho = (-1 : F) * dtkQ4IlAtom50 rho + dtkQ4IlAtom51 rho + (-1 : F) * dtkQ4IlAtom52 rho + (-1 : F) * dtkQ4IlAtom53 rho + (-1 : F) * dtkQ4IlAtom54 rho + (-1 : F) * dtkQ4IlAtom55 rho + (-1 : F) * dtkQ4IlAtom56 rho + (-1 : F) * dtkQ4IlAtom57 rho + (-1 : F) * dtkQ4IlAtom58 rho + (-1 : F) * dtkQ4IlAtom59 rho + (-1 : F) * dtkQ4IlAtom60 rho + (-1 : F) * dtkQ4IlAtom61 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167Part3 dtkQ4IlAtom50 dtkQ4IlAtom51 dtkQ4IlAtom52 dtkQ4IlAtom53 dtkQ4IlAtom54 dtkQ4IlAtom55 dtkQ4IlAtom56 dtkQ4IlAtom57 dtkQ4IlAtom58 dtkQ4IlAtom59 dtkQ4IlAtom60 dtkQ4IlAtom61
  ring

theorem dtkQ4relationLc167Atom (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167 rho = (1 : F) + (-1 : F) * dtkQ4IlAtom0 rho + (-1 : F) * dtkQ4IlAtom1 rho + (-1 : F) * dtkQ4IlAtom2 rho + (-1 : F) * dtkQ4IlAtom3 rho + (-1 : F) * dtkQ4IlAtom4 rho + (-1 : F) * dtkQ4IlAtom5 rho + (-1 : F) * dtkQ4IlAtom6 rho + (-1 : F) * dtkQ4IlAtom7 rho + (-1 : F) * dtkQ4IlAtom8 rho + (-1 : F) * dtkQ4IlAtom9 rho + (-1 : F) * dtkQ4IlAtom10 rho + (-1 : F) * dtkQ4IlAtom11 rho + (-1 : F) * dtkQ4IlAtom12 rho + (-1 : F) * dtkQ4IlAtom13 rho + (-1 : F) * dtkQ4IlAtom14 rho + (-1 : F) * dtkQ4IlAtom15 rho + (-1 : F) * dtkQ4IlAtom16 rho + dtkQ4IlAtom17 rho + (-1 : F) * dtkQ4IlAtom18 rho + (-1 : F) * dtkQ4IlAtom19 rho + (-1 : F) * dtkQ4IlAtom20 rho + (-1 : F) * dtkQ4IlAtom21 rho + (-1 : F) * dtkQ4IlAtom22 rho + (-1 : F) * dtkQ4IlAtom23 rho + (-1 : F) * dtkQ4IlAtom24 rho + (-1 : F) * dtkQ4IlAtom25 rho + (-1 : F) * dtkQ4IlAtom26 rho + (-1 : F) * dtkQ4IlAtom27 rho + (-1 : F) * dtkQ4IlAtom28 rho + (-1 : F) * dtkQ4IlAtom29 rho + (-1 : F) * dtkQ4IlAtom30 rho + (-1 : F) * dtkQ4IlAtom31 rho + (-1 : F) * dtkQ4IlAtom32 rho + (-1 : F) * dtkQ4IlAtom33 rho + dtkQ4IlAtom34 rho + (-1 : F) * dtkQ4IlAtom35 rho + (-1 : F) * dtkQ4IlAtom36 rho + (-1 : F) * dtkQ4IlAtom37 rho + (-1 : F) * dtkQ4IlAtom38 rho + (-1 : F) * dtkQ4IlAtom39 rho + (-1 : F) * dtkQ4IlAtom40 rho + (-1 : F) * dtkQ4IlAtom41 rho + (-1 : F) * dtkQ4IlAtom42 rho + (-1 : F) * dtkQ4IlAtom43 rho + (-1 : F) * dtkQ4IlAtom44 rho + (-1 : F) * dtkQ4IlAtom45 rho + (-1 : F) * dtkQ4IlAtom46 rho + (-1 : F) * dtkQ4IlAtom47 rho + (-1 : F) * dtkQ4IlAtom48 rho + (-1 : F) * dtkQ4IlAtom49 rho + (-1 : F) * dtkQ4IlAtom50 rho + dtkQ4IlAtom51 rho + (-1 : F) * dtkQ4IlAtom52 rho + (-1 : F) * dtkQ4IlAtom53 rho + (-1 : F) * dtkQ4IlAtom54 rho + (-1 : F) * dtkQ4IlAtom55 rho + (-1 : F) * dtkQ4IlAtom56 rho + (-1 : F) * dtkQ4IlAtom57 rho + (-1 : F) * dtkQ4IlAtom58 rho + (-1 : F) * dtkQ4IlAtom59 rho + (-1 : F) * dtkQ4IlAtom60 rho + (-1 : F) * dtkQ4IlAtom61 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167
  rw [dtkQ4relationLc167Part0Atom rho, dtkQ4relationLc167Part1Atom rho, dtkQ4relationLc167Part2Atom rho, dtkQ4relationLc167Part3Atom rho] <;> ring

theorem dtkQ4Step97IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc125 rho = dtkQ4Il98 rho := by
  rw [dtkQ4relationLc125Atom rho]
  exact (dtkQ4Il98Atoms rho).symm

theorem dtkQ4Step96IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc126 rho = dtkQ4Il97 rho := by
  rw [dtkQ4relationLc126Atom rho]
  exact (dtkQ4Il97Atoms rho).symm

theorem dtkQ4Step95IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc127 rho = dtkQ4Il96 rho := by
  rw [dtkQ4relationLc127Atom rho]
  exact (dtkQ4Il96Atoms rho).symm

theorem dtkQ4Step93IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc128 rho = dtkQ4Il94 rho := by
  rw [dtkQ4relationLc128Atom rho]
  exact (dtkQ4Il94Atoms rho).symm

theorem dtkQ4Step92IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc129 rho = dtkQ4Il93 rho := by
  rw [dtkQ4relationLc129Atom rho]
  exact (dtkQ4Il93Atoms rho).symm

theorem dtkQ4Step91IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc130 rho = dtkQ4Il92 rho := by
  rw [dtkQ4relationLc130Atom rho]
  exact (dtkQ4Il92Atoms rho).symm

theorem dtkQ4Step90IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc131 rho = dtkQ4Il91 rho := by
  rw [dtkQ4relationLc131Atom rho]
  exact (dtkQ4Il91Atoms rho).symm

theorem dtkQ4Step89IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc132 rho = dtkQ4Il90 rho := by
  rw [dtkQ4relationLc132Atom rho]
  exact (dtkQ4Il90Atoms rho).symm

theorem dtkQ4Step88IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc133 rho = dtkQ4Il89 rho := by
  rw [dtkQ4relationLc133Atom rho]
  exact (dtkQ4Il89Atoms rho).symm

theorem dtkQ4Step83IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc134 rho = dtkQ4Il84 rho := by
  rw [dtkQ4relationLc134Atom rho]
  exact (dtkQ4Il84Atoms rho).symm

theorem dtkQ4Step82IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc135 rho = dtkQ4Il83 rho := by
  rw [dtkQ4relationLc135Atom rho]
  exact (dtkQ4Il83Atoms rho).symm

theorem dtkQ4Step80IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc136 rho = dtkQ4Il81 rho := by
  rw [dtkQ4relationLc136Atom rho]
  exact (dtkQ4Il81Atoms rho).symm

theorem dtkQ4Step79IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc137 rho = dtkQ4Il80 rho := by
  rw [dtkQ4relationLc137Atom rho]
  exact (dtkQ4Il80Atoms rho).symm

theorem dtkQ4Step78IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc138 rho = dtkQ4Il79 rho := by
  rw [dtkQ4relationLc138Atom rho]
  exact (dtkQ4Il79Atoms rho).symm

theorem dtkQ4Step76IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc139 rho = dtkQ4Il77 rho := by
  rw [dtkQ4relationLc139Atom rho]
  exact (dtkQ4Il77Atoms rho).symm

theorem dtkQ4Step74IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc140 rho = dtkQ4Il75 rho := by
  rw [dtkQ4relationLc140Atom rho]
  exact (dtkQ4Il75Atoms rho).symm

theorem dtkQ4Step66IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc141 rho = dtkQ4Il67 rho := by
  rw [dtkQ4relationLc141Atom rho]
  exact (dtkQ4Il67Atoms rho).symm

theorem dtkQ4Step65IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc142 rho = dtkQ4Il66 rho := by
  rw [dtkQ4relationLc142Atom rho]
  exact (dtkQ4Il66Atoms rho).symm

theorem dtkQ4Step61IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc143 rho = dtkQ4Il62 rho := by
  rw [dtkQ4relationLc143Atom rho]
  exact (dtkQ4Il62Atoms rho).symm

theorem dtkQ4Step58IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc144 rho = dtkQ4Il59 rho := by
  rw [dtkQ4relationLc144Atom rho]
  exact (dtkQ4Il59Atoms rho).symm

theorem dtkQ4Step55IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc145 rho = dtkQ4Il56 rho := by
  rw [dtkQ4relationLc145Atom rho]
  exact (dtkQ4Il56Atoms rho).symm

theorem dtkQ4Step53IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc146 rho = dtkQ4Il54 rho := by
  rw [dtkQ4relationLc146Atom rho]
  exact (dtkQ4Il54Atoms rho).symm

theorem dtkQ4Step50IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc147 rho = dtkQ4Il51 rho := by
  rw [dtkQ4relationLc147Atom rho]
  exact (dtkQ4Il51Atoms rho).symm

theorem dtkQ4Step48IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc148 rho = dtkQ4Il49 rho := by
  rw [dtkQ4relationLc148Atom rho]
  exact (dtkQ4Il49Atoms rho).symm

theorem dtkQ4Step47IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc149 rho = dtkQ4Il48 rho := by
  rw [dtkQ4relationLc149Atom rho]
  exact (dtkQ4Il48Atoms rho).symm

theorem dtkQ4Step46IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc150 rho = dtkQ4Il47 rho := by
  rw [dtkQ4relationLc150Atom rho]
  exact (dtkQ4Il47Atoms rho).symm

theorem dtkQ4Step42IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc151 rho = dtkQ4Il43 rho := by
  rw [dtkQ4relationLc151Atom rho]
  exact (dtkQ4Il43Atoms rho).symm

theorem dtkQ4Step40IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc152 rho = dtkQ4Il41 rho := by
  rw [dtkQ4relationLc152Atom rho]
  exact (dtkQ4Il41Atoms rho).symm

theorem dtkQ4Step39IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc153 rho = dtkQ4Il40 rho := by
  rw [dtkQ4relationLc153Atom rho]
  exact (dtkQ4Il40Atoms rho).symm

theorem dtkQ4Step36IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc154 rho = dtkQ4Il37 rho := by
  rw [dtkQ4relationLc154Atom rho]
  exact (dtkQ4Il37Atoms rho).symm

theorem dtkQ4Step34IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc155 rho = dtkQ4Il35 rho := by
  rw [dtkQ4relationLc155Atom rho]
  exact (dtkQ4Il35Atoms rho).symm

theorem dtkQ4Step31IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc156 rho = dtkQ4Il32 rho := by
  rw [dtkQ4relationLc156Atom rho]
  exact (dtkQ4Il32Atoms rho).symm

theorem dtkQ4Step30IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc157 rho = dtkQ4Il31 rho := by
  rw [dtkQ4relationLc157Atom rho]
  exact (dtkQ4Il31Atoms rho).symm

theorem dtkQ4Step29IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc158 rho = dtkQ4Il30 rho := by
  rw [dtkQ4relationLc158Atom rho]
  exact (dtkQ4Il30Atoms rho).symm

theorem dtkQ4Step28IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc159 rho = dtkQ4Il29 rho := by
  rw [dtkQ4relationLc159Atom rho]
  exact (dtkQ4Il29Atoms rho).symm

theorem dtkQ4Step25IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc160 rho = dtkQ4Il26 rho := by
  rw [dtkQ4relationLc160Atom rho]
  exact (dtkQ4Il26Atoms rho).symm

theorem dtkQ4Step24IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc161 rho = dtkQ4Il25 rho := by
  rw [dtkQ4relationLc161Atom rho]
  exact (dtkQ4Il25Atoms rho).symm

theorem dtkQ4Step15IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc162 rho = dtkQ4Il16 rho := by
  rw [dtkQ4relationLc162Atom rho]
  exact (dtkQ4Il16Atoms rho).symm

theorem dtkQ4Step12IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc163 rho = dtkQ4Il13 rho := by
  rw [dtkQ4relationLc163Atom rho]
  exact (dtkQ4Il13Atoms rho).symm

theorem dtkQ4Step11IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc164 rho = dtkQ4Il12 rho := by
  rw [dtkQ4relationLc164Atom rho]
  exact (dtkQ4Il12Atoms rho).symm

theorem dtkQ4Step2IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc165 rho = dtkQ4Il3 rho := by
  rw [dtkQ4relationLc165Atom rho]
  exact (dtkQ4Il3Atoms rho).symm

theorem dtkQ4Step0IlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc166 rho = dtkQ4Il1 rho := by
  rw [dtkQ4relationLc166Atom rho]
  exact (dtkQ4Il1Atoms rho).symm

theorem dtkQ4TerminalIlLc (rho : Nat -> F) : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc167 rho = 1 - dtkQ4Il0 rho := by
  rw [dtkQ4relationLc167Atom rho]
  rw [dtkQ4Il0Atoms rho]
  ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
