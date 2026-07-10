import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Base
import ShielddGnarkFormal.Deployed.Dtk.LtConst
import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg5Q4IlAtom0 (rho : Nat -> Seg5.F) : Seg5.F := rho 2171
def seg5Q4IlAtom1 (rho : Nat -> Seg5.F) : Seg5.F := rho 2173 + (-1 : Seg5.F) * rho 2174
def seg5Q4IlAtom2 (rho : Nat -> Seg5.F) : Seg5.F := rho 2176 + (-1 : Seg5.F) * rho 2177
def seg5Q4IlAtom3 (rho : Nat -> Seg5.F) : Seg5.F := rho 2179 + (-1 : Seg5.F) * rho 2180
def seg5Q4IlAtom4 (rho : Nat -> Seg5.F) : Seg5.F := rho 2183 + (-1 : Seg5.F) * rho 2184
def seg5Q4IlAtom5 (rho : Nat -> Seg5.F) : Seg5.F := rho 2187 + (-1 : Seg5.F) * rho 2188
def seg5Q4IlAtom6 (rho : Nat -> Seg5.F) : Seg5.F := rho 2190 + (-1 : Seg5.F) * rho 2191
def seg5Q4IlAtom7 (rho : Nat -> Seg5.F) : Seg5.F := rho 2194 + (-1 : Seg5.F) * rho 2195
def seg5Q4IlAtom8 (rho : Nat -> Seg5.F) : Seg5.F := rho 2197 + (-1 : Seg5.F) * rho 2198
def seg5Q4IlAtom9 (rho : Nat -> Seg5.F) : Seg5.F := rho 2200 + (-1 : Seg5.F) * rho 2201
def seg5Q4IlAtom10 (rho : Nat -> Seg5.F) : Seg5.F := rho 2203 + (-1 : Seg5.F) * rho 2204
def seg5Q4IlAtom11 (rho : Nat -> Seg5.F) : Seg5.F := rho 2206 + (-1 : Seg5.F) * rho 2207
def seg5Q4IlAtom12 (rho : Nat -> Seg5.F) : Seg5.F := rho 2210 + (-1 : Seg5.F) * rho 2211
def seg5Q4IlAtom13 (rho : Nat -> Seg5.F) : Seg5.F := rho 2218 + (-1 : Seg5.F) * rho 2219
def seg5Q4IlAtom14 (rho : Nat -> Seg5.F) : Seg5.F := rho 2221 + (-1 : Seg5.F) * rho 2222
def seg5Q4IlAtom15 (rho : Nat -> Seg5.F) : Seg5.F := rho 2224 + (-1 : Seg5.F) * rho 2225
def seg5Q4IlAtom16 (rho : Nat -> Seg5.F) : Seg5.F := rho 2227
def seg5Q4IlAtom17 (rho : Nat -> Seg5.F) : Seg5.F := rho 2228
def seg5Q4IlAtom18 (rho : Nat -> Seg5.F) : Seg5.F := rho 2230 + (-1 : Seg5.F) * rho 2231
def seg5Q4IlAtom19 (rho : Nat -> Seg5.F) : Seg5.F := rho 2233 + (-1 : Seg5.F) * rho 2234
def seg5Q4IlAtom20 (rho : Nat -> Seg5.F) : Seg5.F := rho 2236 + (-1 : Seg5.F) * rho 2237
def seg5Q4IlAtom21 (rho : Nat -> Seg5.F) : Seg5.F := rho 2240 + (-1 : Seg5.F) * rho 2241
def seg5Q4IlAtom22 (rho : Nat -> Seg5.F) : Seg5.F := rho 2243 + (-1 : Seg5.F) * rho 2244
def seg5Q4IlAtom23 (rho : Nat -> Seg5.F) : Seg5.F := rho 2246 + (-1 : Seg5.F) * rho 2247
def seg5Q4IlAtom24 (rho : Nat -> Seg5.F) : Seg5.F := rho 2249 + (-1 : Seg5.F) * rho 2250
def seg5Q4IlAtom25 (rho : Nat -> Seg5.F) : Seg5.F := rho 2252 + (-1 : Seg5.F) * rho 2253
def seg5Q4IlAtom26 (rho : Nat -> Seg5.F) : Seg5.F := rho 2255 + (-1 : Seg5.F) * rho 2256
def seg5Q4IlAtom27 (rho : Nat -> Seg5.F) : Seg5.F := rho 2262 + (-1 : Seg5.F) * rho 2263
def seg5Q4IlAtom28 (rho : Nat -> Seg5.F) : Seg5.F := rho 2265 + (-1 : Seg5.F) * rho 2266
def seg5Q4IlAtom29 (rho : Nat -> Seg5.F) : Seg5.F := rho 2269 + (-1 : Seg5.F) * rho 2270
def seg5Q4IlAtom30 (rho : Nat -> Seg5.F) : Seg5.F := rho 2272 + (-1 : Seg5.F) * rho 2273
def seg5Q4IlAtom31 (rho : Nat -> Seg5.F) : Seg5.F := rho 2275 + (-1 : Seg5.F) * rho 2276
def seg5Q4IlAtom32 (rho : Nat -> Seg5.F) : Seg5.F := rho 2279 + (-1 : Seg5.F) * rho 2280
def seg5Q4IlAtom33 (rho : Nat -> Seg5.F) : Seg5.F := rho 2283
def seg5Q4IlAtom34 (rho : Nat -> Seg5.F) : Seg5.F := rho 2284
def seg5Q4IlAtom35 (rho : Nat -> Seg5.F) : Seg5.F := rho 2293 + (-1 : Seg5.F) * rho 2294
def seg5Q4IlAtom36 (rho : Nat -> Seg5.F) : Seg5.F := rho 2296 + (-1 : Seg5.F) * rho 2297
def seg5Q4IlAtom37 (rho : Nat -> Seg5.F) : Seg5.F := rho 2302 + (-1 : Seg5.F) * rho 2303
def seg5Q4IlAtom38 (rho : Nat -> Seg5.F) : Seg5.F := rho 2307 + (-1 : Seg5.F) * rho 2308
def seg5Q4IlAtom39 (rho : Nat -> Seg5.F) : Seg5.F := rho 2312 + (-1 : Seg5.F) * rho 2313
def seg5Q4IlAtom40 (rho : Nat -> Seg5.F) : Seg5.F := rho 2316 + (-1 : Seg5.F) * rho 2317
def seg5Q4IlAtom41 (rho : Nat -> Seg5.F) : Seg5.F := rho 2321 + (-1 : Seg5.F) * rho 2322
def seg5Q4IlAtom42 (rho : Nat -> Seg5.F) : Seg5.F := rho 2325 + (-1 : Seg5.F) * rho 2326
def seg5Q4IlAtom43 (rho : Nat -> Seg5.F) : Seg5.F := rho 2328 + (-1 : Seg5.F) * rho 2329
def seg5Q4IlAtom44 (rho : Nat -> Seg5.F) : Seg5.F := rho 2331 + (-1 : Seg5.F) * rho 2332
def seg5Q4IlAtom45 (rho : Nat -> Seg5.F) : Seg5.F := rho 2337 + (-1 : Seg5.F) * rho 2338
def seg5Q4IlAtom46 (rho : Nat -> Seg5.F) : Seg5.F := rho 2341 + (-1 : Seg5.F) * rho 2342
def seg5Q4IlAtom47 (rho : Nat -> Seg5.F) : Seg5.F := rho 2344 + (-1 : Seg5.F) * rho 2345
def seg5Q4IlAtom48 (rho : Nat -> Seg5.F) : Seg5.F := rho 2349 + (-1 : Seg5.F) * rho 2350
def seg5Q4IlAtom49 (rho : Nat -> Seg5.F) : Seg5.F := rho 2353 + (-1 : Seg5.F) * rho 2354
def seg5Q4IlAtom50 (rho : Nat -> Seg5.F) : Seg5.F := rho 2358
def seg5Q4IlAtom51 (rho : Nat -> Seg5.F) : Seg5.F := rho 2359
def seg5Q4IlAtom52 (rho : Nat -> Seg5.F) : Seg5.F := rho 2361 + (-1 : Seg5.F) * rho 2362
def seg5Q4IlAtom53 (rho : Nat -> Seg5.F) : Seg5.F := rho 2364 + (-1 : Seg5.F) * rho 2365
def seg5Q4IlAtom54 (rho : Nat -> Seg5.F) : Seg5.F := rho 2367 + (-1 : Seg5.F) * rho 2368
def seg5Q4IlAtom55 (rho : Nat -> Seg5.F) : Seg5.F := rho 2372 + (-1 : Seg5.F) * rho 2373
def seg5Q4IlAtom56 (rho : Nat -> Seg5.F) : Seg5.F := rho 2375 + (-1 : Seg5.F) * rho 2376
def seg5Q4IlAtom57 (rho : Nat -> Seg5.F) : Seg5.F := rho 2386 + (-1 : Seg5.F) * rho 2387
def seg5Q4IlAtom58 (rho : Nat -> Seg5.F) : Seg5.F := rho 2391 + (-1 : Seg5.F) * rho 2392
def seg5Q4IlAtom59 (rho : Nat -> Seg5.F) : Seg5.F := rho 2394 + (-1 : Seg5.F) * rho 2395
def seg5Q4IlAtom60 (rho : Nat -> Seg5.F) : Seg5.F := rho 2405 + (-1 : Seg5.F) * rho 2406
def seg5Q4IlAtom61 (rho : Nat -> Seg5.F) : Seg5.F := rho 2409 + (-1 : Seg5.F) * rho 2410

def seg5Q4Pe253 (rho : Nat -> Seg5.F) : Seg5.F := (1 : Seg5.F)
def seg5Q4Il253 (rho : Nat -> Seg5.F) : Seg5.F := (0 : Seg5.F)
def seg5Q4Pe252 (rho : Nat -> Seg5.F) : Seg5.F := (1 : Seg5.F) + (-1 : Seg5.F) * rho 1439
def seg5Q4Il252 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il253 rho
def seg5Q4Pe251 (rho : Nat -> Seg5.F) : Seg5.F := rho 2043
def seg5Q4Il251 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il252 rho
def seg5Q4Pe250 (rho : Nat -> Seg5.F) : Seg5.F := rho 2044
def seg5Q4Il250 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il251 rho
def seg5Q4Pe249 (rho : Nat -> Seg5.F) : Seg5.F := rho 2045
def seg5Q4Il249 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il250 rho
def seg5Q4Pe248 (rho : Nat -> Seg5.F) : Seg5.F := rho 2046
def seg5Q4Il248 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il249 rho
def seg5Q4Pe247 (rho : Nat -> Seg5.F) : Seg5.F := rho 2047
def seg5Q4Il247 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il248 rho
def seg5Q4Pe246 (rho : Nat -> Seg5.F) : Seg5.F := rho 2048
def seg5Q4Il246 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il247 rho
def seg5Q4Pe245 (rho : Nat -> Seg5.F) : Seg5.F := rho 2049
def seg5Q4Il245 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il246 rho
def seg5Q4Pe244 (rho : Nat -> Seg5.F) : Seg5.F := rho 2050
def seg5Q4Il244 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il245 rho
def seg5Q4Pe243 (rho : Nat -> Seg5.F) : Seg5.F := rho 2051
def seg5Q4Il243 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il244 rho
def seg5Q4Pe242 (rho : Nat -> Seg5.F) : Seg5.F := rho 2052
def seg5Q4Il242 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il243 rho
def seg5Q4Pe241 (rho : Nat -> Seg5.F) : Seg5.F := rho 2053
def seg5Q4Il241 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il242 rho
def seg5Q4Pe240 (rho : Nat -> Seg5.F) : Seg5.F := rho 2054
def seg5Q4Il240 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il241 rho
def seg5Q4Pe239 (rho : Nat -> Seg5.F) : Seg5.F := rho 2055
def seg5Q4Il239 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il240 rho
def seg5Q4Pe238 (rho : Nat -> Seg5.F) : Seg5.F := rho 2056
def seg5Q4Il238 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il239 rho
def seg5Q4Pe237 (rho : Nat -> Seg5.F) : Seg5.F := rho 2057
def seg5Q4Il237 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il238 rho
def seg5Q4Pe236 (rho : Nat -> Seg5.F) : Seg5.F := rho 2058
def seg5Q4Il236 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il237 rho
def seg5Q4Pe235 (rho : Nat -> Seg5.F) : Seg5.F := rho 2059
def seg5Q4Il235 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il236 rho
def seg5Q4Pe234 (rho : Nat -> Seg5.F) : Seg5.F := rho 2060
def seg5Q4Il234 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il235 rho
def seg5Q4Pe233 (rho : Nat -> Seg5.F) : Seg5.F := rho 2061
def seg5Q4Il233 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il234 rho
def seg5Q4Pe232 (rho : Nat -> Seg5.F) : Seg5.F := rho 2062
def seg5Q4Il232 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il233 rho
def seg5Q4Pe231 (rho : Nat -> Seg5.F) : Seg5.F := rho 2063
def seg5Q4Il231 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il232 rho
def seg5Q4Pe230 (rho : Nat -> Seg5.F) : Seg5.F := rho 2064
def seg5Q4Il230 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il231 rho
def seg5Q4Pe229 (rho : Nat -> Seg5.F) : Seg5.F := rho 2065
def seg5Q4Il229 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il230 rho
def seg5Q4Pe228 (rho : Nat -> Seg5.F) : Seg5.F := rho 2066
def seg5Q4Il228 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il229 rho
def seg5Q4Pe227 (rho : Nat -> Seg5.F) : Seg5.F := rho 2067
def seg5Q4Il227 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il228 rho
def seg5Q4Pe226 (rho : Nat -> Seg5.F) : Seg5.F := rho 2068
def seg5Q4Il226 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il227 rho
def seg5Q4Pe225 (rho : Nat -> Seg5.F) : Seg5.F := rho 2069
def seg5Q4Il225 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il226 rho
def seg5Q4Pe224 (rho : Nat -> Seg5.F) : Seg5.F := rho 2070
def seg5Q4Il224 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il225 rho
def seg5Q4Pe223 (rho : Nat -> Seg5.F) : Seg5.F := rho 2071
def seg5Q4Il223 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il224 rho
def seg5Q4Pe222 (rho : Nat -> Seg5.F) : Seg5.F := rho 2072
def seg5Q4Il222 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il223 rho
def seg5Q4Pe221 (rho : Nat -> Seg5.F) : Seg5.F := rho 2073
def seg5Q4Il221 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il222 rho
def seg5Q4Pe220 (rho : Nat -> Seg5.F) : Seg5.F := rho 2074
def seg5Q4Il220 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il221 rho
def seg5Q4Pe219 (rho : Nat -> Seg5.F) : Seg5.F := rho 2075
def seg5Q4Il219 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il220 rho
def seg5Q4Pe218 (rho : Nat -> Seg5.F) : Seg5.F := rho 2076
def seg5Q4Il218 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il219 rho
def seg5Q4Pe217 (rho : Nat -> Seg5.F) : Seg5.F := rho 2077
def seg5Q4Il217 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il218 rho
def seg5Q4Pe216 (rho : Nat -> Seg5.F) : Seg5.F := rho 2078
def seg5Q4Il216 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il217 rho
def seg5Q4Pe215 (rho : Nat -> Seg5.F) : Seg5.F := rho 2079
def seg5Q4Il215 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il216 rho
def seg5Q4Pe214 (rho : Nat -> Seg5.F) : Seg5.F := rho 2080
def seg5Q4Il214 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il215 rho
def seg5Q4Pe213 (rho : Nat -> Seg5.F) : Seg5.F := rho 2081
def seg5Q4Il213 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il214 rho
def seg5Q4Pe212 (rho : Nat -> Seg5.F) : Seg5.F := rho 2082
def seg5Q4Il212 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il213 rho
def seg5Q4Pe211 (rho : Nat -> Seg5.F) : Seg5.F := rho 2083
def seg5Q4Il211 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il212 rho
def seg5Q4Pe210 (rho : Nat -> Seg5.F) : Seg5.F := rho 2084
def seg5Q4Il210 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il211 rho
def seg5Q4Pe209 (rho : Nat -> Seg5.F) : Seg5.F := rho 2085
def seg5Q4Il209 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il210 rho
def seg5Q4Pe208 (rho : Nat -> Seg5.F) : Seg5.F := rho 2086
def seg5Q4Il208 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il209 rho
def seg5Q4Pe207 (rho : Nat -> Seg5.F) : Seg5.F := rho 2087
def seg5Q4Il207 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il208 rho
def seg5Q4Pe206 (rho : Nat -> Seg5.F) : Seg5.F := rho 2088
def seg5Q4Il206 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il207 rho
def seg5Q4Pe205 (rho : Nat -> Seg5.F) : Seg5.F := rho 2089
def seg5Q4Il205 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il206 rho
def seg5Q4Pe204 (rho : Nat -> Seg5.F) : Seg5.F := rho 2090
def seg5Q4Il204 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il205 rho
def seg5Q4Pe203 (rho : Nat -> Seg5.F) : Seg5.F := rho 2091
def seg5Q4Il203 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il204 rho
def seg5Q4Pe202 (rho : Nat -> Seg5.F) : Seg5.F := rho 2092
def seg5Q4Il202 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il203 rho
def seg5Q4Pe201 (rho : Nat -> Seg5.F) : Seg5.F := rho 2093
def seg5Q4Il201 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il202 rho
def seg5Q4Pe200 (rho : Nat -> Seg5.F) : Seg5.F := rho 2094
def seg5Q4Il200 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il201 rho
def seg5Q4Pe199 (rho : Nat -> Seg5.F) : Seg5.F := rho 2095
def seg5Q4Il199 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il200 rho
def seg5Q4Pe198 (rho : Nat -> Seg5.F) : Seg5.F := rho 2096
def seg5Q4Il198 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il199 rho
def seg5Q4Pe197 (rho : Nat -> Seg5.F) : Seg5.F := rho 2097
def seg5Q4Il197 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il198 rho
def seg5Q4Pe196 (rho : Nat -> Seg5.F) : Seg5.F := rho 2098
def seg5Q4Il196 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il197 rho
def seg5Q4Pe195 (rho : Nat -> Seg5.F) : Seg5.F := rho 2099
def seg5Q4Il195 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il196 rho
def seg5Q4Pe194 (rho : Nat -> Seg5.F) : Seg5.F := rho 2100
def seg5Q4Il194 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il195 rho
def seg5Q4Pe193 (rho : Nat -> Seg5.F) : Seg5.F := rho 2101
def seg5Q4Il193 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il194 rho
def seg5Q4Pe192 (rho : Nat -> Seg5.F) : Seg5.F := rho 2102
def seg5Q4Il192 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il193 rho
def seg5Q4Pe191 (rho : Nat -> Seg5.F) : Seg5.F := rho 2103
def seg5Q4Il191 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il192 rho
def seg5Q4Pe190 (rho : Nat -> Seg5.F) : Seg5.F := rho 2104
def seg5Q4Il190 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il191 rho
def seg5Q4Pe189 (rho : Nat -> Seg5.F) : Seg5.F := rho 2105
def seg5Q4Il189 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il190 rho
def seg5Q4Pe188 (rho : Nat -> Seg5.F) : Seg5.F := rho 2106
def seg5Q4Il188 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il189 rho
def seg5Q4Pe187 (rho : Nat -> Seg5.F) : Seg5.F := rho 2107
def seg5Q4Il187 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il188 rho
def seg5Q4Pe186 (rho : Nat -> Seg5.F) : Seg5.F := rho 2108
def seg5Q4Il186 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il187 rho
def seg5Q4Pe185 (rho : Nat -> Seg5.F) : Seg5.F := rho 2109
def seg5Q4Il185 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il186 rho
def seg5Q4Pe184 (rho : Nat -> Seg5.F) : Seg5.F := rho 2110
def seg5Q4Il184 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il185 rho
def seg5Q4Pe183 (rho : Nat -> Seg5.F) : Seg5.F := rho 2111
def seg5Q4Il183 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il184 rho
def seg5Q4Pe182 (rho : Nat -> Seg5.F) : Seg5.F := rho 2112
def seg5Q4Il182 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il183 rho
def seg5Q4Pe181 (rho : Nat -> Seg5.F) : Seg5.F := rho 2113
def seg5Q4Il181 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il182 rho
def seg5Q4Pe180 (rho : Nat -> Seg5.F) : Seg5.F := rho 2114
def seg5Q4Il180 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il181 rho
def seg5Q4Pe179 (rho : Nat -> Seg5.F) : Seg5.F := rho 2115
def seg5Q4Il179 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il180 rho
def seg5Q4Pe178 (rho : Nat -> Seg5.F) : Seg5.F := rho 2116
def seg5Q4Il178 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il179 rho
def seg5Q4Pe177 (rho : Nat -> Seg5.F) : Seg5.F := rho 2117
def seg5Q4Il177 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il178 rho
def seg5Q4Pe176 (rho : Nat -> Seg5.F) : Seg5.F := rho 2118
def seg5Q4Il176 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il177 rho
def seg5Q4Pe175 (rho : Nat -> Seg5.F) : Seg5.F := rho 2119
def seg5Q4Il175 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il176 rho
def seg5Q4Pe174 (rho : Nat -> Seg5.F) : Seg5.F := rho 2120
def seg5Q4Il174 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il175 rho
def seg5Q4Pe173 (rho : Nat -> Seg5.F) : Seg5.F := rho 2121
def seg5Q4Il173 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il174 rho
def seg5Q4Pe172 (rho : Nat -> Seg5.F) : Seg5.F := rho 2122
def seg5Q4Il172 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il173 rho
def seg5Q4Pe171 (rho : Nat -> Seg5.F) : Seg5.F := rho 2123
def seg5Q4Il171 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il172 rho
def seg5Q4Pe170 (rho : Nat -> Seg5.F) : Seg5.F := rho 2124
def seg5Q4Il170 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il171 rho
def seg5Q4Pe169 (rho : Nat -> Seg5.F) : Seg5.F := rho 2125
def seg5Q4Il169 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il170 rho
def seg5Q4Pe168 (rho : Nat -> Seg5.F) : Seg5.F := rho 2126
def seg5Q4Il168 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il169 rho
def seg5Q4Pe167 (rho : Nat -> Seg5.F) : Seg5.F := rho 2127
def seg5Q4Il167 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il168 rho
def seg5Q4Pe166 (rho : Nat -> Seg5.F) : Seg5.F := rho 2128
def seg5Q4Il166 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il167 rho
def seg5Q4Pe165 (rho : Nat -> Seg5.F) : Seg5.F := rho 2129
def seg5Q4Il165 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il166 rho
def seg5Q4Pe164 (rho : Nat -> Seg5.F) : Seg5.F := rho 2130
def seg5Q4Il164 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il165 rho
def seg5Q4Pe163 (rho : Nat -> Seg5.F) : Seg5.F := rho 2131
def seg5Q4Il163 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il164 rho
def seg5Q4Pe162 (rho : Nat -> Seg5.F) : Seg5.F := rho 2132
def seg5Q4Il162 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il163 rho
def seg5Q4Pe161 (rho : Nat -> Seg5.F) : Seg5.F := rho 2133
def seg5Q4Il161 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il162 rho
def seg5Q4Pe160 (rho : Nat -> Seg5.F) : Seg5.F := rho 2134
def seg5Q4Il160 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il161 rho
def seg5Q4Pe159 (rho : Nat -> Seg5.F) : Seg5.F := rho 2135
def seg5Q4Il159 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il160 rho
def seg5Q4Pe158 (rho : Nat -> Seg5.F) : Seg5.F := rho 2136
def seg5Q4Il158 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il159 rho
def seg5Q4Pe157 (rho : Nat -> Seg5.F) : Seg5.F := rho 2137
def seg5Q4Il157 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il158 rho
def seg5Q4Pe156 (rho : Nat -> Seg5.F) : Seg5.F := rho 2138
def seg5Q4Il156 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il157 rho
def seg5Q4Pe155 (rho : Nat -> Seg5.F) : Seg5.F := rho 2139
def seg5Q4Il155 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il156 rho
def seg5Q4Pe154 (rho : Nat -> Seg5.F) : Seg5.F := rho 2140
def seg5Q4Il154 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il155 rho
def seg5Q4Pe153 (rho : Nat -> Seg5.F) : Seg5.F := rho 2141
def seg5Q4Il153 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il154 rho
def seg5Q4Pe152 (rho : Nat -> Seg5.F) : Seg5.F := rho 2142
def seg5Q4Il152 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il153 rho
def seg5Q4Pe151 (rho : Nat -> Seg5.F) : Seg5.F := rho 2143
def seg5Q4Il151 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il152 rho
def seg5Q4Pe150 (rho : Nat -> Seg5.F) : Seg5.F := rho 2144
def seg5Q4Il150 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il151 rho
def seg5Q4Pe149 (rho : Nat -> Seg5.F) : Seg5.F := rho 2145
def seg5Q4Il149 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il150 rho
def seg5Q4Pe148 (rho : Nat -> Seg5.F) : Seg5.F := rho 2146
def seg5Q4Il148 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il149 rho
def seg5Q4Pe147 (rho : Nat -> Seg5.F) : Seg5.F := rho 2147
def seg5Q4Il147 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il148 rho
def seg5Q4Pe146 (rho : Nat -> Seg5.F) : Seg5.F := rho 2148
def seg5Q4Il146 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il147 rho
def seg5Q4Pe145 (rho : Nat -> Seg5.F) : Seg5.F := rho 2149
def seg5Q4Il145 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il146 rho
def seg5Q4Pe144 (rho : Nat -> Seg5.F) : Seg5.F := rho 2150
def seg5Q4Il144 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il145 rho
def seg5Q4Pe143 (rho : Nat -> Seg5.F) : Seg5.F := rho 2151
def seg5Q4Il143 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il144 rho
def seg5Q4Pe142 (rho : Nat -> Seg5.F) : Seg5.F := rho 2152
def seg5Q4Il142 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il143 rho
def seg5Q4Pe141 (rho : Nat -> Seg5.F) : Seg5.F := rho 2153
def seg5Q4Il141 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il142 rho
def seg5Q4Pe140 (rho : Nat -> Seg5.F) : Seg5.F := rho 2154
def seg5Q4Il140 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il141 rho
def seg5Q4Pe139 (rho : Nat -> Seg5.F) : Seg5.F := rho 2155
def seg5Q4Il139 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il140 rho
def seg5Q4Pe138 (rho : Nat -> Seg5.F) : Seg5.F := rho 2156
def seg5Q4Il138 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il139 rho
def seg5Q4Pe137 (rho : Nat -> Seg5.F) : Seg5.F := rho 2157
def seg5Q4Il137 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il138 rho
def seg5Q4Pe136 (rho : Nat -> Seg5.F) : Seg5.F := rho 2158
def seg5Q4Il136 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il137 rho
def seg5Q4Pe135 (rho : Nat -> Seg5.F) : Seg5.F := rho 2159
def seg5Q4Il135 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il136 rho
def seg5Q4Pe134 (rho : Nat -> Seg5.F) : Seg5.F := rho 2160
def seg5Q4Il134 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il135 rho
def seg5Q4Pe133 (rho : Nat -> Seg5.F) : Seg5.F := rho 2161
def seg5Q4Il133 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il134 rho
def seg5Q4Pe132 (rho : Nat -> Seg5.F) : Seg5.F := rho 2162
def seg5Q4Il132 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il133 rho
def seg5Q4Pe131 (rho : Nat -> Seg5.F) : Seg5.F := rho 2163
def seg5Q4Il131 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il132 rho
def seg5Q4Pe130 (rho : Nat -> Seg5.F) : Seg5.F := rho 2164
def seg5Q4Il130 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il131 rho
def seg5Q4Pe129 (rho : Nat -> Seg5.F) : Seg5.F := rho 2165
def seg5Q4Il129 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il130 rho
def seg5Q4Pe128 (rho : Nat -> Seg5.F) : Seg5.F := rho 2166
def seg5Q4Il128 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il129 rho
def seg5Q4Pe127 (rho : Nat -> Seg5.F) : Seg5.F := rho 2167
def seg5Q4Il127 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il128 rho
def seg5Q4Pe126 (rho : Nat -> Seg5.F) : Seg5.F := rho 2168
def seg5Q4Il126 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il127 rho
def seg5Q4Pe125 (rho : Nat -> Seg5.F) : Seg5.F := rho 2169
def seg5Q4Il125 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il126 rho
def seg5Q4Pe124 (rho : Nat -> Seg5.F) : Seg5.F := rho 2170
def seg5Q4Il124 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il125 rho
def seg5Q4Pe123 (rho : Nat -> Seg5.F) : Seg5.F := rho 2172
def seg5Q4Il123 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il124 rho + seg5Q4IlAtom0 rho
def seg5Q4Pe122 (rho : Nat -> Seg5.F) : Seg5.F := rho 2175
def seg5Q4Il122 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il123 rho + seg5Q4IlAtom1 rho
def seg5Q4Pe121 (rho : Nat -> Seg5.F) : Seg5.F := rho 2178
def seg5Q4Il121 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il122 rho + seg5Q4IlAtom2 rho
def seg5Q4Pe120 (rho : Nat -> Seg5.F) : Seg5.F := rho 2181
def seg5Q4Il120 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il121 rho + seg5Q4IlAtom3 rho
def seg5Q4Pe119 (rho : Nat -> Seg5.F) : Seg5.F := rho 2182
def seg5Q4Il119 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il120 rho
def seg5Q4Pe118 (rho : Nat -> Seg5.F) : Seg5.F := rho 2185
def seg5Q4Il118 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il119 rho + seg5Q4IlAtom4 rho
def seg5Q4Pe117 (rho : Nat -> Seg5.F) : Seg5.F := rho 2186
def seg5Q4Il117 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il118 rho
def seg5Q4Pe116 (rho : Nat -> Seg5.F) : Seg5.F := rho 2189
def seg5Q4Il116 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il117 rho + seg5Q4IlAtom5 rho
def seg5Q4Pe115 (rho : Nat -> Seg5.F) : Seg5.F := rho 2192
def seg5Q4Il115 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il116 rho + seg5Q4IlAtom6 rho
def seg5Q4Pe114 (rho : Nat -> Seg5.F) : Seg5.F := rho 2193
def seg5Q4Il114 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il115 rho
def seg5Q4Pe113 (rho : Nat -> Seg5.F) : Seg5.F := rho 2196
def seg5Q4Il113 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il114 rho + seg5Q4IlAtom7 rho
def seg5Q4Pe112 (rho : Nat -> Seg5.F) : Seg5.F := rho 2199
def seg5Q4Il112 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il113 rho + seg5Q4IlAtom8 rho
def seg5Q4Pe111 (rho : Nat -> Seg5.F) : Seg5.F := rho 2202
def seg5Q4Il111 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il112 rho + seg5Q4IlAtom9 rho
def seg5Q4Pe110 (rho : Nat -> Seg5.F) : Seg5.F := rho 2205
def seg5Q4Il110 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il111 rho + seg5Q4IlAtom10 rho
def seg5Q4Pe109 (rho : Nat -> Seg5.F) : Seg5.F := rho 2208
def seg5Q4Il109 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il110 rho + seg5Q4IlAtom11 rho
def seg5Q4Pe108 (rho : Nat -> Seg5.F) : Seg5.F := rho 2209
def seg5Q4Il108 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il109 rho
def seg5Q4Pe107 (rho : Nat -> Seg5.F) : Seg5.F := rho 2212
def seg5Q4Il107 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il108 rho + seg5Q4IlAtom12 rho
def seg5Q4Pe106 (rho : Nat -> Seg5.F) : Seg5.F := rho 2213
def seg5Q4Il106 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il107 rho
def seg5Q4Pe105 (rho : Nat -> Seg5.F) : Seg5.F := rho 2214
def seg5Q4Il105 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il106 rho
def seg5Q4Pe104 (rho : Nat -> Seg5.F) : Seg5.F := rho 2215
def seg5Q4Il104 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il105 rho
def seg5Q4Pe103 (rho : Nat -> Seg5.F) : Seg5.F := rho 2216
def seg5Q4Il103 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il104 rho
def seg5Q4Pe102 (rho : Nat -> Seg5.F) : Seg5.F := rho 2217
def seg5Q4Il102 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il103 rho
def seg5Q4Pe101 (rho : Nat -> Seg5.F) : Seg5.F := rho 2220
def seg5Q4Il101 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il102 rho + seg5Q4IlAtom13 rho
def seg5Q4Pe100 (rho : Nat -> Seg5.F) : Seg5.F := rho 2223
def seg5Q4Il100 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il101 rho + seg5Q4IlAtom14 rho
def seg5Q4Pe99 (rho : Nat -> Seg5.F) : Seg5.F := rho 2226
def seg5Q4Il99 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il100 rho + seg5Q4IlAtom15 rho
def seg5Q4Pe98 (rho : Nat -> Seg5.F) : Seg5.F := rho 2229
def seg5Q4Il98 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il99 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho
def seg5Q4Pe97 (rho : Nat -> Seg5.F) : Seg5.F := rho 2232
def seg5Q4Il97 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il98 rho + seg5Q4IlAtom18 rho
def seg5Q4Pe96 (rho : Nat -> Seg5.F) : Seg5.F := rho 2235
def seg5Q4Il96 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il97 rho + seg5Q4IlAtom19 rho
def seg5Q4Pe95 (rho : Nat -> Seg5.F) : Seg5.F := rho 2238
def seg5Q4Il95 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il96 rho + seg5Q4IlAtom20 rho
def seg5Q4Pe94 (rho : Nat -> Seg5.F) : Seg5.F := rho 2239
def seg5Q4Il94 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il95 rho
def seg5Q4Pe93 (rho : Nat -> Seg5.F) : Seg5.F := rho 2242
def seg5Q4Il93 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il94 rho + seg5Q4IlAtom21 rho
def seg5Q4Pe92 (rho : Nat -> Seg5.F) : Seg5.F := rho 2245
def seg5Q4Il92 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il93 rho + seg5Q4IlAtom22 rho
def seg5Q4Pe91 (rho : Nat -> Seg5.F) : Seg5.F := rho 2248
def seg5Q4Il91 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il92 rho + seg5Q4IlAtom23 rho
def seg5Q4Pe90 (rho : Nat -> Seg5.F) : Seg5.F := rho 2251
def seg5Q4Il90 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il91 rho + seg5Q4IlAtom24 rho
def seg5Q4Pe89 (rho : Nat -> Seg5.F) : Seg5.F := rho 2254
def seg5Q4Il89 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il90 rho + seg5Q4IlAtom25 rho
def seg5Q4Pe88 (rho : Nat -> Seg5.F) : Seg5.F := rho 2257
def seg5Q4Il88 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il89 rho + seg5Q4IlAtom26 rho
def seg5Q4Pe87 (rho : Nat -> Seg5.F) : Seg5.F := rho 2258
def seg5Q4Il87 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il88 rho
def seg5Q4Pe86 (rho : Nat -> Seg5.F) : Seg5.F := rho 2259
def seg5Q4Il86 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il87 rho
def seg5Q4Pe85 (rho : Nat -> Seg5.F) : Seg5.F := rho 2260
def seg5Q4Il85 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il86 rho
def seg5Q4Pe84 (rho : Nat -> Seg5.F) : Seg5.F := rho 2261
def seg5Q4Il84 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il85 rho
def seg5Q4Pe83 (rho : Nat -> Seg5.F) : Seg5.F := rho 2264
def seg5Q4Il83 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il84 rho + seg5Q4IlAtom27 rho
def seg5Q4Pe82 (rho : Nat -> Seg5.F) : Seg5.F := rho 2267
def seg5Q4Il82 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il83 rho + seg5Q4IlAtom28 rho
def seg5Q4Pe81 (rho : Nat -> Seg5.F) : Seg5.F := rho 2268
def seg5Q4Il81 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il82 rho
def seg5Q4Pe80 (rho : Nat -> Seg5.F) : Seg5.F := rho 2271
def seg5Q4Il80 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il81 rho + seg5Q4IlAtom29 rho
def seg5Q4Pe79 (rho : Nat -> Seg5.F) : Seg5.F := rho 2274
def seg5Q4Il79 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il80 rho + seg5Q4IlAtom30 rho
def seg5Q4Pe78 (rho : Nat -> Seg5.F) : Seg5.F := rho 2277
def seg5Q4Il78 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il79 rho + seg5Q4IlAtom31 rho
def seg5Q4Pe77 (rho : Nat -> Seg5.F) : Seg5.F := rho 2278
def seg5Q4Il77 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il78 rho
def seg5Q4Pe76 (rho : Nat -> Seg5.F) : Seg5.F := rho 2281
def seg5Q4Il76 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il77 rho + seg5Q4IlAtom32 rho
def seg5Q4Pe75 (rho : Nat -> Seg5.F) : Seg5.F := rho 2282
def seg5Q4Il75 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il76 rho
def seg5Q4Pe74 (rho : Nat -> Seg5.F) : Seg5.F := rho 2285
def seg5Q4Il74 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il75 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho
def seg5Q4Pe73 (rho : Nat -> Seg5.F) : Seg5.F := rho 2286
def seg5Q4Il73 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il74 rho
def seg5Q4Pe72 (rho : Nat -> Seg5.F) : Seg5.F := rho 2287
def seg5Q4Il72 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il73 rho
def seg5Q4Pe71 (rho : Nat -> Seg5.F) : Seg5.F := rho 2288
def seg5Q4Il71 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il72 rho
def seg5Q4Pe70 (rho : Nat -> Seg5.F) : Seg5.F := rho 2289
def seg5Q4Il70 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il71 rho
def seg5Q4Pe69 (rho : Nat -> Seg5.F) : Seg5.F := rho 2290
def seg5Q4Il69 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il70 rho
def seg5Q4Pe68 (rho : Nat -> Seg5.F) : Seg5.F := rho 2291
def seg5Q4Il68 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il69 rho
def seg5Q4Pe67 (rho : Nat -> Seg5.F) : Seg5.F := rho 2292
def seg5Q4Il67 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il68 rho
def seg5Q4Pe66 (rho : Nat -> Seg5.F) : Seg5.F := rho 2295
def seg5Q4Il66 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il67 rho + seg5Q4IlAtom35 rho
def seg5Q4Pe65 (rho : Nat -> Seg5.F) : Seg5.F := rho 2298
def seg5Q4Il65 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il66 rho + seg5Q4IlAtom36 rho
def seg5Q4Pe64 (rho : Nat -> Seg5.F) : Seg5.F := rho 2299
def seg5Q4Il64 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il65 rho
def seg5Q4Pe63 (rho : Nat -> Seg5.F) : Seg5.F := rho 2300
def seg5Q4Il63 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il64 rho
def seg5Q4Pe62 (rho : Nat -> Seg5.F) : Seg5.F := rho 2301
def seg5Q4Il62 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il63 rho
def seg5Q4Pe61 (rho : Nat -> Seg5.F) : Seg5.F := rho 2304
def seg5Q4Il61 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il62 rho + seg5Q4IlAtom37 rho
def seg5Q4Pe60 (rho : Nat -> Seg5.F) : Seg5.F := rho 2305
def seg5Q4Il60 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il61 rho
def seg5Q4Pe59 (rho : Nat -> Seg5.F) : Seg5.F := rho 2306
def seg5Q4Il59 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il60 rho
def seg5Q4Pe58 (rho : Nat -> Seg5.F) : Seg5.F := rho 2309
def seg5Q4Il58 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il59 rho + seg5Q4IlAtom38 rho
def seg5Q4Pe57 (rho : Nat -> Seg5.F) : Seg5.F := rho 2310
def seg5Q4Il57 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il58 rho
def seg5Q4Pe56 (rho : Nat -> Seg5.F) : Seg5.F := rho 2311
def seg5Q4Il56 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il57 rho
def seg5Q4Pe55 (rho : Nat -> Seg5.F) : Seg5.F := rho 2314
def seg5Q4Il55 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il56 rho + seg5Q4IlAtom39 rho
def seg5Q4Pe54 (rho : Nat -> Seg5.F) : Seg5.F := rho 2315
def seg5Q4Il54 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il55 rho
def seg5Q4Pe53 (rho : Nat -> Seg5.F) : Seg5.F := rho 2318
def seg5Q4Il53 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il54 rho + seg5Q4IlAtom40 rho
def seg5Q4Pe52 (rho : Nat -> Seg5.F) : Seg5.F := rho 2319
def seg5Q4Il52 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il53 rho
def seg5Q4Pe51 (rho : Nat -> Seg5.F) : Seg5.F := rho 2320
def seg5Q4Il51 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il52 rho
def seg5Q4Pe50 (rho : Nat -> Seg5.F) : Seg5.F := rho 2323
def seg5Q4Il50 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il51 rho + seg5Q4IlAtom41 rho
def seg5Q4Pe49 (rho : Nat -> Seg5.F) : Seg5.F := rho 2324
def seg5Q4Il49 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il50 rho
def seg5Q4Pe48 (rho : Nat -> Seg5.F) : Seg5.F := rho 2327
def seg5Q4Il48 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il49 rho + seg5Q4IlAtom42 rho
def seg5Q4Pe47 (rho : Nat -> Seg5.F) : Seg5.F := rho 2330
def seg5Q4Il47 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il48 rho + seg5Q4IlAtom43 rho
def seg5Q4Pe46 (rho : Nat -> Seg5.F) : Seg5.F := rho 2333
def seg5Q4Il46 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il47 rho + seg5Q4IlAtom44 rho
def seg5Q4Pe45 (rho : Nat -> Seg5.F) : Seg5.F := rho 2334
def seg5Q4Il45 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il46 rho
def seg5Q4Pe44 (rho : Nat -> Seg5.F) : Seg5.F := rho 2335
def seg5Q4Il44 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il45 rho
def seg5Q4Pe43 (rho : Nat -> Seg5.F) : Seg5.F := rho 2336
def seg5Q4Il43 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il44 rho
def seg5Q4Pe42 (rho : Nat -> Seg5.F) : Seg5.F := rho 2339
def seg5Q4Il42 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il43 rho + seg5Q4IlAtom45 rho
def seg5Q4Pe41 (rho : Nat -> Seg5.F) : Seg5.F := rho 2340
def seg5Q4Il41 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il42 rho
def seg5Q4Pe40 (rho : Nat -> Seg5.F) : Seg5.F := rho 2343
def seg5Q4Il40 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il41 rho + seg5Q4IlAtom46 rho
def seg5Q4Pe39 (rho : Nat -> Seg5.F) : Seg5.F := rho 2346
def seg5Q4Il39 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il40 rho + seg5Q4IlAtom47 rho
def seg5Q4Pe38 (rho : Nat -> Seg5.F) : Seg5.F := rho 2347
def seg5Q4Il38 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il39 rho
def seg5Q4Pe37 (rho : Nat -> Seg5.F) : Seg5.F := rho 2348
def seg5Q4Il37 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il38 rho
def seg5Q4Pe36 (rho : Nat -> Seg5.F) : Seg5.F := rho 2351
def seg5Q4Il36 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il37 rho + seg5Q4IlAtom48 rho
def seg5Q4Pe35 (rho : Nat -> Seg5.F) : Seg5.F := rho 2352
def seg5Q4Il35 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il36 rho
def seg5Q4Pe34 (rho : Nat -> Seg5.F) : Seg5.F := rho 2355
def seg5Q4Il34 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il35 rho + seg5Q4IlAtom49 rho
def seg5Q4Pe33 (rho : Nat -> Seg5.F) : Seg5.F := rho 2356
def seg5Q4Il33 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il34 rho
def seg5Q4Pe32 (rho : Nat -> Seg5.F) : Seg5.F := rho 2357
def seg5Q4Il32 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il33 rho
def seg5Q4Pe31 (rho : Nat -> Seg5.F) : Seg5.F := rho 2360
def seg5Q4Il31 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il32 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho
def seg5Q4Pe30 (rho : Nat -> Seg5.F) : Seg5.F := rho 2363
def seg5Q4Il30 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il31 rho + seg5Q4IlAtom52 rho
def seg5Q4Pe29 (rho : Nat -> Seg5.F) : Seg5.F := rho 2366
def seg5Q4Il29 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il30 rho + seg5Q4IlAtom53 rho
def seg5Q4Pe28 (rho : Nat -> Seg5.F) : Seg5.F := rho 2369
def seg5Q4Il28 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il29 rho + seg5Q4IlAtom54 rho
def seg5Q4Pe27 (rho : Nat -> Seg5.F) : Seg5.F := rho 2370
def seg5Q4Il27 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il28 rho
def seg5Q4Pe26 (rho : Nat -> Seg5.F) : Seg5.F := rho 2371
def seg5Q4Il26 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il27 rho
def seg5Q4Pe25 (rho : Nat -> Seg5.F) : Seg5.F := rho 2374
def seg5Q4Il25 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il26 rho + seg5Q4IlAtom55 rho
def seg5Q4Pe24 (rho : Nat -> Seg5.F) : Seg5.F := rho 2377
def seg5Q4Il24 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il25 rho + seg5Q4IlAtom56 rho
def seg5Q4Pe23 (rho : Nat -> Seg5.F) : Seg5.F := rho 2378
def seg5Q4Il23 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il24 rho
def seg5Q4Pe22 (rho : Nat -> Seg5.F) : Seg5.F := rho 2379
def seg5Q4Il22 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il23 rho
def seg5Q4Pe21 (rho : Nat -> Seg5.F) : Seg5.F := rho 2380
def seg5Q4Il21 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il22 rho
def seg5Q4Pe20 (rho : Nat -> Seg5.F) : Seg5.F := rho 2381
def seg5Q4Il20 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il21 rho
def seg5Q4Pe19 (rho : Nat -> Seg5.F) : Seg5.F := rho 2382
def seg5Q4Il19 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il20 rho
def seg5Q4Pe18 (rho : Nat -> Seg5.F) : Seg5.F := rho 2383
def seg5Q4Il18 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il19 rho
def seg5Q4Pe17 (rho : Nat -> Seg5.F) : Seg5.F := rho 2384
def seg5Q4Il17 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il18 rho
def seg5Q4Pe16 (rho : Nat -> Seg5.F) : Seg5.F := rho 2385
def seg5Q4Il16 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il17 rho
def seg5Q4Pe15 (rho : Nat -> Seg5.F) : Seg5.F := rho 2388
def seg5Q4Il15 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il16 rho + seg5Q4IlAtom57 rho
def seg5Q4Pe14 (rho : Nat -> Seg5.F) : Seg5.F := rho 2389
def seg5Q4Il14 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il15 rho
def seg5Q4Pe13 (rho : Nat -> Seg5.F) : Seg5.F := rho 2390
def seg5Q4Il13 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il14 rho
def seg5Q4Pe12 (rho : Nat -> Seg5.F) : Seg5.F := rho 2393
def seg5Q4Il12 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il13 rho + seg5Q4IlAtom58 rho
def seg5Q4Pe11 (rho : Nat -> Seg5.F) : Seg5.F := rho 2396
def seg5Q4Il11 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il12 rho + seg5Q4IlAtom59 rho
def seg5Q4Pe10 (rho : Nat -> Seg5.F) : Seg5.F := rho 2397
def seg5Q4Il10 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il11 rho
def seg5Q4Pe9 (rho : Nat -> Seg5.F) : Seg5.F := rho 2398
def seg5Q4Il9 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il10 rho
def seg5Q4Pe8 (rho : Nat -> Seg5.F) : Seg5.F := rho 2399
def seg5Q4Il8 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il9 rho
def seg5Q4Pe7 (rho : Nat -> Seg5.F) : Seg5.F := rho 2400
def seg5Q4Il7 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il8 rho
def seg5Q4Pe6 (rho : Nat -> Seg5.F) : Seg5.F := rho 2401
def seg5Q4Il6 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il7 rho
def seg5Q4Pe5 (rho : Nat -> Seg5.F) : Seg5.F := rho 2402
def seg5Q4Il5 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il6 rho
def seg5Q4Pe4 (rho : Nat -> Seg5.F) : Seg5.F := rho 2403
def seg5Q4Il4 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il5 rho
def seg5Q4Pe3 (rho : Nat -> Seg5.F) : Seg5.F := rho 2404
def seg5Q4Il3 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il4 rho
def seg5Q4Pe2 (rho : Nat -> Seg5.F) : Seg5.F := rho 2407
def seg5Q4Il2 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il3 rho + seg5Q4IlAtom60 rho
def seg5Q4Pe1 (rho : Nat -> Seg5.F) : Seg5.F := rho 2408
def seg5Q4Il1 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il2 rho
def seg5Q4Pe0 (rho : Nat -> Seg5.F) : Seg5.F := rho 2411
def seg5Q4Il0 (rho : Nat -> Seg5.F) : Seg5.F := seg5Q4Il1 rho + seg5Q4IlAtom61 rho

def seg5Q4PeState (rho : Nat -> Seg5.F) : Nat -> Seg5.F
  | 0 => seg5Q4Pe0 rho
  | 1 => seg5Q4Pe1 rho
  | 2 => seg5Q4Pe2 rho
  | 3 => seg5Q4Pe3 rho
  | 4 => seg5Q4Pe4 rho
  | 5 => seg5Q4Pe5 rho
  | 6 => seg5Q4Pe6 rho
  | 7 => seg5Q4Pe7 rho
  | 8 => seg5Q4Pe8 rho
  | 9 => seg5Q4Pe9 rho
  | 10 => seg5Q4Pe10 rho
  | 11 => seg5Q4Pe11 rho
  | 12 => seg5Q4Pe12 rho
  | 13 => seg5Q4Pe13 rho
  | 14 => seg5Q4Pe14 rho
  | 15 => seg5Q4Pe15 rho
  | 16 => seg5Q4Pe16 rho
  | 17 => seg5Q4Pe17 rho
  | 18 => seg5Q4Pe18 rho
  | 19 => seg5Q4Pe19 rho
  | 20 => seg5Q4Pe20 rho
  | 21 => seg5Q4Pe21 rho
  | 22 => seg5Q4Pe22 rho
  | 23 => seg5Q4Pe23 rho
  | 24 => seg5Q4Pe24 rho
  | 25 => seg5Q4Pe25 rho
  | 26 => seg5Q4Pe26 rho
  | 27 => seg5Q4Pe27 rho
  | 28 => seg5Q4Pe28 rho
  | 29 => seg5Q4Pe29 rho
  | 30 => seg5Q4Pe30 rho
  | 31 => seg5Q4Pe31 rho
  | 32 => seg5Q4Pe32 rho
  | 33 => seg5Q4Pe33 rho
  | 34 => seg5Q4Pe34 rho
  | 35 => seg5Q4Pe35 rho
  | 36 => seg5Q4Pe36 rho
  | 37 => seg5Q4Pe37 rho
  | 38 => seg5Q4Pe38 rho
  | 39 => seg5Q4Pe39 rho
  | 40 => seg5Q4Pe40 rho
  | 41 => seg5Q4Pe41 rho
  | 42 => seg5Q4Pe42 rho
  | 43 => seg5Q4Pe43 rho
  | 44 => seg5Q4Pe44 rho
  | 45 => seg5Q4Pe45 rho
  | 46 => seg5Q4Pe46 rho
  | 47 => seg5Q4Pe47 rho
  | 48 => seg5Q4Pe48 rho
  | 49 => seg5Q4Pe49 rho
  | 50 => seg5Q4Pe50 rho
  | 51 => seg5Q4Pe51 rho
  | 52 => seg5Q4Pe52 rho
  | 53 => seg5Q4Pe53 rho
  | 54 => seg5Q4Pe54 rho
  | 55 => seg5Q4Pe55 rho
  | 56 => seg5Q4Pe56 rho
  | 57 => seg5Q4Pe57 rho
  | 58 => seg5Q4Pe58 rho
  | 59 => seg5Q4Pe59 rho
  | 60 => seg5Q4Pe60 rho
  | 61 => seg5Q4Pe61 rho
  | 62 => seg5Q4Pe62 rho
  | 63 => seg5Q4Pe63 rho
  | 64 => seg5Q4Pe64 rho
  | 65 => seg5Q4Pe65 rho
  | 66 => seg5Q4Pe66 rho
  | 67 => seg5Q4Pe67 rho
  | 68 => seg5Q4Pe68 rho
  | 69 => seg5Q4Pe69 rho
  | 70 => seg5Q4Pe70 rho
  | 71 => seg5Q4Pe71 rho
  | 72 => seg5Q4Pe72 rho
  | 73 => seg5Q4Pe73 rho
  | 74 => seg5Q4Pe74 rho
  | 75 => seg5Q4Pe75 rho
  | 76 => seg5Q4Pe76 rho
  | 77 => seg5Q4Pe77 rho
  | 78 => seg5Q4Pe78 rho
  | 79 => seg5Q4Pe79 rho
  | 80 => seg5Q4Pe80 rho
  | 81 => seg5Q4Pe81 rho
  | 82 => seg5Q4Pe82 rho
  | 83 => seg5Q4Pe83 rho
  | 84 => seg5Q4Pe84 rho
  | 85 => seg5Q4Pe85 rho
  | 86 => seg5Q4Pe86 rho
  | 87 => seg5Q4Pe87 rho
  | 88 => seg5Q4Pe88 rho
  | 89 => seg5Q4Pe89 rho
  | 90 => seg5Q4Pe90 rho
  | 91 => seg5Q4Pe91 rho
  | 92 => seg5Q4Pe92 rho
  | 93 => seg5Q4Pe93 rho
  | 94 => seg5Q4Pe94 rho
  | 95 => seg5Q4Pe95 rho
  | 96 => seg5Q4Pe96 rho
  | 97 => seg5Q4Pe97 rho
  | 98 => seg5Q4Pe98 rho
  | 99 => seg5Q4Pe99 rho
  | 100 => seg5Q4Pe100 rho
  | 101 => seg5Q4Pe101 rho
  | 102 => seg5Q4Pe102 rho
  | 103 => seg5Q4Pe103 rho
  | 104 => seg5Q4Pe104 rho
  | 105 => seg5Q4Pe105 rho
  | 106 => seg5Q4Pe106 rho
  | 107 => seg5Q4Pe107 rho
  | 108 => seg5Q4Pe108 rho
  | 109 => seg5Q4Pe109 rho
  | 110 => seg5Q4Pe110 rho
  | 111 => seg5Q4Pe111 rho
  | 112 => seg5Q4Pe112 rho
  | 113 => seg5Q4Pe113 rho
  | 114 => seg5Q4Pe114 rho
  | 115 => seg5Q4Pe115 rho
  | 116 => seg5Q4Pe116 rho
  | 117 => seg5Q4Pe117 rho
  | 118 => seg5Q4Pe118 rho
  | 119 => seg5Q4Pe119 rho
  | 120 => seg5Q4Pe120 rho
  | 121 => seg5Q4Pe121 rho
  | 122 => seg5Q4Pe122 rho
  | 123 => seg5Q4Pe123 rho
  | 124 => seg5Q4Pe124 rho
  | 125 => seg5Q4Pe125 rho
  | 126 => seg5Q4Pe126 rho
  | 127 => seg5Q4Pe127 rho
  | 128 => seg5Q4Pe128 rho
  | 129 => seg5Q4Pe129 rho
  | 130 => seg5Q4Pe130 rho
  | 131 => seg5Q4Pe131 rho
  | 132 => seg5Q4Pe132 rho
  | 133 => seg5Q4Pe133 rho
  | 134 => seg5Q4Pe134 rho
  | 135 => seg5Q4Pe135 rho
  | 136 => seg5Q4Pe136 rho
  | 137 => seg5Q4Pe137 rho
  | 138 => seg5Q4Pe138 rho
  | 139 => seg5Q4Pe139 rho
  | 140 => seg5Q4Pe140 rho
  | 141 => seg5Q4Pe141 rho
  | 142 => seg5Q4Pe142 rho
  | 143 => seg5Q4Pe143 rho
  | 144 => seg5Q4Pe144 rho
  | 145 => seg5Q4Pe145 rho
  | 146 => seg5Q4Pe146 rho
  | 147 => seg5Q4Pe147 rho
  | 148 => seg5Q4Pe148 rho
  | 149 => seg5Q4Pe149 rho
  | 150 => seg5Q4Pe150 rho
  | 151 => seg5Q4Pe151 rho
  | 152 => seg5Q4Pe152 rho
  | 153 => seg5Q4Pe153 rho
  | 154 => seg5Q4Pe154 rho
  | 155 => seg5Q4Pe155 rho
  | 156 => seg5Q4Pe156 rho
  | 157 => seg5Q4Pe157 rho
  | 158 => seg5Q4Pe158 rho
  | 159 => seg5Q4Pe159 rho
  | 160 => seg5Q4Pe160 rho
  | 161 => seg5Q4Pe161 rho
  | 162 => seg5Q4Pe162 rho
  | 163 => seg5Q4Pe163 rho
  | 164 => seg5Q4Pe164 rho
  | 165 => seg5Q4Pe165 rho
  | 166 => seg5Q4Pe166 rho
  | 167 => seg5Q4Pe167 rho
  | 168 => seg5Q4Pe168 rho
  | 169 => seg5Q4Pe169 rho
  | 170 => seg5Q4Pe170 rho
  | 171 => seg5Q4Pe171 rho
  | 172 => seg5Q4Pe172 rho
  | 173 => seg5Q4Pe173 rho
  | 174 => seg5Q4Pe174 rho
  | 175 => seg5Q4Pe175 rho
  | 176 => seg5Q4Pe176 rho
  | 177 => seg5Q4Pe177 rho
  | 178 => seg5Q4Pe178 rho
  | 179 => seg5Q4Pe179 rho
  | 180 => seg5Q4Pe180 rho
  | 181 => seg5Q4Pe181 rho
  | 182 => seg5Q4Pe182 rho
  | 183 => seg5Q4Pe183 rho
  | 184 => seg5Q4Pe184 rho
  | 185 => seg5Q4Pe185 rho
  | 186 => seg5Q4Pe186 rho
  | 187 => seg5Q4Pe187 rho
  | 188 => seg5Q4Pe188 rho
  | 189 => seg5Q4Pe189 rho
  | 190 => seg5Q4Pe190 rho
  | 191 => seg5Q4Pe191 rho
  | 192 => seg5Q4Pe192 rho
  | 193 => seg5Q4Pe193 rho
  | 194 => seg5Q4Pe194 rho
  | 195 => seg5Q4Pe195 rho
  | 196 => seg5Q4Pe196 rho
  | 197 => seg5Q4Pe197 rho
  | 198 => seg5Q4Pe198 rho
  | 199 => seg5Q4Pe199 rho
  | 200 => seg5Q4Pe200 rho
  | 201 => seg5Q4Pe201 rho
  | 202 => seg5Q4Pe202 rho
  | 203 => seg5Q4Pe203 rho
  | 204 => seg5Q4Pe204 rho
  | 205 => seg5Q4Pe205 rho
  | 206 => seg5Q4Pe206 rho
  | 207 => seg5Q4Pe207 rho
  | 208 => seg5Q4Pe208 rho
  | 209 => seg5Q4Pe209 rho
  | 210 => seg5Q4Pe210 rho
  | 211 => seg5Q4Pe211 rho
  | 212 => seg5Q4Pe212 rho
  | 213 => seg5Q4Pe213 rho
  | 214 => seg5Q4Pe214 rho
  | 215 => seg5Q4Pe215 rho
  | 216 => seg5Q4Pe216 rho
  | 217 => seg5Q4Pe217 rho
  | 218 => seg5Q4Pe218 rho
  | 219 => seg5Q4Pe219 rho
  | 220 => seg5Q4Pe220 rho
  | 221 => seg5Q4Pe221 rho
  | 222 => seg5Q4Pe222 rho
  | 223 => seg5Q4Pe223 rho
  | 224 => seg5Q4Pe224 rho
  | 225 => seg5Q4Pe225 rho
  | 226 => seg5Q4Pe226 rho
  | 227 => seg5Q4Pe227 rho
  | 228 => seg5Q4Pe228 rho
  | 229 => seg5Q4Pe229 rho
  | 230 => seg5Q4Pe230 rho
  | 231 => seg5Q4Pe231 rho
  | 232 => seg5Q4Pe232 rho
  | 233 => seg5Q4Pe233 rho
  | 234 => seg5Q4Pe234 rho
  | 235 => seg5Q4Pe235 rho
  | 236 => seg5Q4Pe236 rho
  | 237 => seg5Q4Pe237 rho
  | 238 => seg5Q4Pe238 rho
  | 239 => seg5Q4Pe239 rho
  | 240 => seg5Q4Pe240 rho
  | 241 => seg5Q4Pe241 rho
  | 242 => seg5Q4Pe242 rho
  | 243 => seg5Q4Pe243 rho
  | 244 => seg5Q4Pe244 rho
  | 245 => seg5Q4Pe245 rho
  | 246 => seg5Q4Pe246 rho
  | 247 => seg5Q4Pe247 rho
  | 248 => seg5Q4Pe248 rho
  | 249 => seg5Q4Pe249 rho
  | 250 => seg5Q4Pe250 rho
  | 251 => seg5Q4Pe251 rho
  | 252 => seg5Q4Pe252 rho
  | 253 => seg5Q4Pe253 rho
  | _ => 0

def seg5Q4IlState (rho : Nat -> Seg5.F) : Nat -> Seg5.F
  | 0 => seg5Q4Il0 rho
  | 1 => seg5Q4Il1 rho
  | 2 => seg5Q4Il2 rho
  | 3 => seg5Q4Il3 rho
  | 4 => seg5Q4Il4 rho
  | 5 => seg5Q4Il5 rho
  | 6 => seg5Q4Il6 rho
  | 7 => seg5Q4Il7 rho
  | 8 => seg5Q4Il8 rho
  | 9 => seg5Q4Il9 rho
  | 10 => seg5Q4Il10 rho
  | 11 => seg5Q4Il11 rho
  | 12 => seg5Q4Il12 rho
  | 13 => seg5Q4Il13 rho
  | 14 => seg5Q4Il14 rho
  | 15 => seg5Q4Il15 rho
  | 16 => seg5Q4Il16 rho
  | 17 => seg5Q4Il17 rho
  | 18 => seg5Q4Il18 rho
  | 19 => seg5Q4Il19 rho
  | 20 => seg5Q4Il20 rho
  | 21 => seg5Q4Il21 rho
  | 22 => seg5Q4Il22 rho
  | 23 => seg5Q4Il23 rho
  | 24 => seg5Q4Il24 rho
  | 25 => seg5Q4Il25 rho
  | 26 => seg5Q4Il26 rho
  | 27 => seg5Q4Il27 rho
  | 28 => seg5Q4Il28 rho
  | 29 => seg5Q4Il29 rho
  | 30 => seg5Q4Il30 rho
  | 31 => seg5Q4Il31 rho
  | 32 => seg5Q4Il32 rho
  | 33 => seg5Q4Il33 rho
  | 34 => seg5Q4Il34 rho
  | 35 => seg5Q4Il35 rho
  | 36 => seg5Q4Il36 rho
  | 37 => seg5Q4Il37 rho
  | 38 => seg5Q4Il38 rho
  | 39 => seg5Q4Il39 rho
  | 40 => seg5Q4Il40 rho
  | 41 => seg5Q4Il41 rho
  | 42 => seg5Q4Il42 rho
  | 43 => seg5Q4Il43 rho
  | 44 => seg5Q4Il44 rho
  | 45 => seg5Q4Il45 rho
  | 46 => seg5Q4Il46 rho
  | 47 => seg5Q4Il47 rho
  | 48 => seg5Q4Il48 rho
  | 49 => seg5Q4Il49 rho
  | 50 => seg5Q4Il50 rho
  | 51 => seg5Q4Il51 rho
  | 52 => seg5Q4Il52 rho
  | 53 => seg5Q4Il53 rho
  | 54 => seg5Q4Il54 rho
  | 55 => seg5Q4Il55 rho
  | 56 => seg5Q4Il56 rho
  | 57 => seg5Q4Il57 rho
  | 58 => seg5Q4Il58 rho
  | 59 => seg5Q4Il59 rho
  | 60 => seg5Q4Il60 rho
  | 61 => seg5Q4Il61 rho
  | 62 => seg5Q4Il62 rho
  | 63 => seg5Q4Il63 rho
  | 64 => seg5Q4Il64 rho
  | 65 => seg5Q4Il65 rho
  | 66 => seg5Q4Il66 rho
  | 67 => seg5Q4Il67 rho
  | 68 => seg5Q4Il68 rho
  | 69 => seg5Q4Il69 rho
  | 70 => seg5Q4Il70 rho
  | 71 => seg5Q4Il71 rho
  | 72 => seg5Q4Il72 rho
  | 73 => seg5Q4Il73 rho
  | 74 => seg5Q4Il74 rho
  | 75 => seg5Q4Il75 rho
  | 76 => seg5Q4Il76 rho
  | 77 => seg5Q4Il77 rho
  | 78 => seg5Q4Il78 rho
  | 79 => seg5Q4Il79 rho
  | 80 => seg5Q4Il80 rho
  | 81 => seg5Q4Il81 rho
  | 82 => seg5Q4Il82 rho
  | 83 => seg5Q4Il83 rho
  | 84 => seg5Q4Il84 rho
  | 85 => seg5Q4Il85 rho
  | 86 => seg5Q4Il86 rho
  | 87 => seg5Q4Il87 rho
  | 88 => seg5Q4Il88 rho
  | 89 => seg5Q4Il89 rho
  | 90 => seg5Q4Il90 rho
  | 91 => seg5Q4Il91 rho
  | 92 => seg5Q4Il92 rho
  | 93 => seg5Q4Il93 rho
  | 94 => seg5Q4Il94 rho
  | 95 => seg5Q4Il95 rho
  | 96 => seg5Q4Il96 rho
  | 97 => seg5Q4Il97 rho
  | 98 => seg5Q4Il98 rho
  | 99 => seg5Q4Il99 rho
  | 100 => seg5Q4Il100 rho
  | 101 => seg5Q4Il101 rho
  | 102 => seg5Q4Il102 rho
  | 103 => seg5Q4Il103 rho
  | 104 => seg5Q4Il104 rho
  | 105 => seg5Q4Il105 rho
  | 106 => seg5Q4Il106 rho
  | 107 => seg5Q4Il107 rho
  | 108 => seg5Q4Il108 rho
  | 109 => seg5Q4Il109 rho
  | 110 => seg5Q4Il110 rho
  | 111 => seg5Q4Il111 rho
  | 112 => seg5Q4Il112 rho
  | 113 => seg5Q4Il113 rho
  | 114 => seg5Q4Il114 rho
  | 115 => seg5Q4Il115 rho
  | 116 => seg5Q4Il116 rho
  | 117 => seg5Q4Il117 rho
  | 118 => seg5Q4Il118 rho
  | 119 => seg5Q4Il119 rho
  | 120 => seg5Q4Il120 rho
  | 121 => seg5Q4Il121 rho
  | 122 => seg5Q4Il122 rho
  | 123 => seg5Q4Il123 rho
  | 124 => seg5Q4Il124 rho
  | 125 => seg5Q4Il125 rho
  | 126 => seg5Q4Il126 rho
  | 127 => seg5Q4Il127 rho
  | 128 => seg5Q4Il128 rho
  | 129 => seg5Q4Il129 rho
  | 130 => seg5Q4Il130 rho
  | 131 => seg5Q4Il131 rho
  | 132 => seg5Q4Il132 rho
  | 133 => seg5Q4Il133 rho
  | 134 => seg5Q4Il134 rho
  | 135 => seg5Q4Il135 rho
  | 136 => seg5Q4Il136 rho
  | 137 => seg5Q4Il137 rho
  | 138 => seg5Q4Il138 rho
  | 139 => seg5Q4Il139 rho
  | 140 => seg5Q4Il140 rho
  | 141 => seg5Q4Il141 rho
  | 142 => seg5Q4Il142 rho
  | 143 => seg5Q4Il143 rho
  | 144 => seg5Q4Il144 rho
  | 145 => seg5Q4Il145 rho
  | 146 => seg5Q4Il146 rho
  | 147 => seg5Q4Il147 rho
  | 148 => seg5Q4Il148 rho
  | 149 => seg5Q4Il149 rho
  | 150 => seg5Q4Il150 rho
  | 151 => seg5Q4Il151 rho
  | 152 => seg5Q4Il152 rho
  | 153 => seg5Q4Il153 rho
  | 154 => seg5Q4Il154 rho
  | 155 => seg5Q4Il155 rho
  | 156 => seg5Q4Il156 rho
  | 157 => seg5Q4Il157 rho
  | 158 => seg5Q4Il158 rho
  | 159 => seg5Q4Il159 rho
  | 160 => seg5Q4Il160 rho
  | 161 => seg5Q4Il161 rho
  | 162 => seg5Q4Il162 rho
  | 163 => seg5Q4Il163 rho
  | 164 => seg5Q4Il164 rho
  | 165 => seg5Q4Il165 rho
  | 166 => seg5Q4Il166 rho
  | 167 => seg5Q4Il167 rho
  | 168 => seg5Q4Il168 rho
  | 169 => seg5Q4Il169 rho
  | 170 => seg5Q4Il170 rho
  | 171 => seg5Q4Il171 rho
  | 172 => seg5Q4Il172 rho
  | 173 => seg5Q4Il173 rho
  | 174 => seg5Q4Il174 rho
  | 175 => seg5Q4Il175 rho
  | 176 => seg5Q4Il176 rho
  | 177 => seg5Q4Il177 rho
  | 178 => seg5Q4Il178 rho
  | 179 => seg5Q4Il179 rho
  | 180 => seg5Q4Il180 rho
  | 181 => seg5Q4Il181 rho
  | 182 => seg5Q4Il182 rho
  | 183 => seg5Q4Il183 rho
  | 184 => seg5Q4Il184 rho
  | 185 => seg5Q4Il185 rho
  | 186 => seg5Q4Il186 rho
  | 187 => seg5Q4Il187 rho
  | 188 => seg5Q4Il188 rho
  | 189 => seg5Q4Il189 rho
  | 190 => seg5Q4Il190 rho
  | 191 => seg5Q4Il191 rho
  | 192 => seg5Q4Il192 rho
  | 193 => seg5Q4Il193 rho
  | 194 => seg5Q4Il194 rho
  | 195 => seg5Q4Il195 rho
  | 196 => seg5Q4Il196 rho
  | 197 => seg5Q4Il197 rho
  | 198 => seg5Q4Il198 rho
  | 199 => seg5Q4Il199 rho
  | 200 => seg5Q4Il200 rho
  | 201 => seg5Q4Il201 rho
  | 202 => seg5Q4Il202 rho
  | 203 => seg5Q4Il203 rho
  | 204 => seg5Q4Il204 rho
  | 205 => seg5Q4Il205 rho
  | 206 => seg5Q4Il206 rho
  | 207 => seg5Q4Il207 rho
  | 208 => seg5Q4Il208 rho
  | 209 => seg5Q4Il209 rho
  | 210 => seg5Q4Il210 rho
  | 211 => seg5Q4Il211 rho
  | 212 => seg5Q4Il212 rho
  | 213 => seg5Q4Il213 rho
  | 214 => seg5Q4Il214 rho
  | 215 => seg5Q4Il215 rho
  | 216 => seg5Q4Il216 rho
  | 217 => seg5Q4Il217 rho
  | 218 => seg5Q4Il218 rho
  | 219 => seg5Q4Il219 rho
  | 220 => seg5Q4Il220 rho
  | 221 => seg5Q4Il221 rho
  | 222 => seg5Q4Il222 rho
  | 223 => seg5Q4Il223 rho
  | 224 => seg5Q4Il224 rho
  | 225 => seg5Q4Il225 rho
  | 226 => seg5Q4Il226 rho
  | 227 => seg5Q4Il227 rho
  | 228 => seg5Q4Il228 rho
  | 229 => seg5Q4Il229 rho
  | 230 => seg5Q4Il230 rho
  | 231 => seg5Q4Il231 rho
  | 232 => seg5Q4Il232 rho
  | 233 => seg5Q4Il233 rho
  | 234 => seg5Q4Il234 rho
  | 235 => seg5Q4Il235 rho
  | 236 => seg5Q4Il236 rho
  | 237 => seg5Q4Il237 rho
  | 238 => seg5Q4Il238 rho
  | 239 => seg5Q4Il239 rho
  | 240 => seg5Q4Il240 rho
  | 241 => seg5Q4Il241 rho
  | 242 => seg5Q4Il242 rho
  | 243 => seg5Q4Il243 rho
  | 244 => seg5Q4Il244 rho
  | 245 => seg5Q4Il245 rho
  | 246 => seg5Q4Il246 rho
  | 247 => seg5Q4Il247 rho
  | 248 => seg5Q4Il248 rho
  | 249 => seg5Q4Il249 rho
  | 250 => seg5Q4Il250 rho
  | 251 => seg5Q4Il251 rho
  | 252 => seg5Q4Il252 rho
  | 253 => seg5Q4Il253 rho
  | _ => 0

theorem seg5Q4Il253Atoms (rho : Nat -> Seg5.F) : seg5Q4Il253 rho = (0 : Seg5.F) := by
  rfl

theorem seg5Q4Il252Atoms (rho : Nat -> Seg5.F) : seg5Q4Il252 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il252
  rw [seg5Q4Il253Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il251Atoms (rho : Nat -> Seg5.F) : seg5Q4Il251 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il251
  rw [seg5Q4Il252Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il250Atoms (rho : Nat -> Seg5.F) : seg5Q4Il250 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il250
  rw [seg5Q4Il251Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il249Atoms (rho : Nat -> Seg5.F) : seg5Q4Il249 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il249
  rw [seg5Q4Il250Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il248Atoms (rho : Nat -> Seg5.F) : seg5Q4Il248 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il248
  rw [seg5Q4Il249Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il247Atoms (rho : Nat -> Seg5.F) : seg5Q4Il247 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il247
  rw [seg5Q4Il248Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il246Atoms (rho : Nat -> Seg5.F) : seg5Q4Il246 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il246
  rw [seg5Q4Il247Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il245Atoms (rho : Nat -> Seg5.F) : seg5Q4Il245 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il245
  rw [seg5Q4Il246Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il244Atoms (rho : Nat -> Seg5.F) : seg5Q4Il244 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il244
  rw [seg5Q4Il245Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il243Atoms (rho : Nat -> Seg5.F) : seg5Q4Il243 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il243
  rw [seg5Q4Il244Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il242Atoms (rho : Nat -> Seg5.F) : seg5Q4Il242 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il242
  rw [seg5Q4Il243Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il241Atoms (rho : Nat -> Seg5.F) : seg5Q4Il241 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il241
  rw [seg5Q4Il242Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il240Atoms (rho : Nat -> Seg5.F) : seg5Q4Il240 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il240
  rw [seg5Q4Il241Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il239Atoms (rho : Nat -> Seg5.F) : seg5Q4Il239 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il239
  rw [seg5Q4Il240Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il238Atoms (rho : Nat -> Seg5.F) : seg5Q4Il238 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il238
  rw [seg5Q4Il239Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il237Atoms (rho : Nat -> Seg5.F) : seg5Q4Il237 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il237
  rw [seg5Q4Il238Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il236Atoms (rho : Nat -> Seg5.F) : seg5Q4Il236 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il236
  rw [seg5Q4Il237Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il235Atoms (rho : Nat -> Seg5.F) : seg5Q4Il235 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il235
  rw [seg5Q4Il236Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il234Atoms (rho : Nat -> Seg5.F) : seg5Q4Il234 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il234
  rw [seg5Q4Il235Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il233Atoms (rho : Nat -> Seg5.F) : seg5Q4Il233 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il233
  rw [seg5Q4Il234Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il232Atoms (rho : Nat -> Seg5.F) : seg5Q4Il232 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il232
  rw [seg5Q4Il233Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il231Atoms (rho : Nat -> Seg5.F) : seg5Q4Il231 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il231
  rw [seg5Q4Il232Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il230Atoms (rho : Nat -> Seg5.F) : seg5Q4Il230 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il230
  rw [seg5Q4Il231Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il229Atoms (rho : Nat -> Seg5.F) : seg5Q4Il229 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il229
  rw [seg5Q4Il230Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il228Atoms (rho : Nat -> Seg5.F) : seg5Q4Il228 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il228
  rw [seg5Q4Il229Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il227Atoms (rho : Nat -> Seg5.F) : seg5Q4Il227 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il227
  rw [seg5Q4Il228Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il226Atoms (rho : Nat -> Seg5.F) : seg5Q4Il226 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il226
  rw [seg5Q4Il227Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il225Atoms (rho : Nat -> Seg5.F) : seg5Q4Il225 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il225
  rw [seg5Q4Il226Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il224Atoms (rho : Nat -> Seg5.F) : seg5Q4Il224 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il224
  rw [seg5Q4Il225Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il223Atoms (rho : Nat -> Seg5.F) : seg5Q4Il223 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il223
  rw [seg5Q4Il224Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il222Atoms (rho : Nat -> Seg5.F) : seg5Q4Il222 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il222
  rw [seg5Q4Il223Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il221Atoms (rho : Nat -> Seg5.F) : seg5Q4Il221 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il221
  rw [seg5Q4Il222Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il220Atoms (rho : Nat -> Seg5.F) : seg5Q4Il220 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il220
  rw [seg5Q4Il221Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il219Atoms (rho : Nat -> Seg5.F) : seg5Q4Il219 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il219
  rw [seg5Q4Il220Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il218Atoms (rho : Nat -> Seg5.F) : seg5Q4Il218 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il218
  rw [seg5Q4Il219Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il217Atoms (rho : Nat -> Seg5.F) : seg5Q4Il217 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il217
  rw [seg5Q4Il218Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il216Atoms (rho : Nat -> Seg5.F) : seg5Q4Il216 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il216
  rw [seg5Q4Il217Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il215Atoms (rho : Nat -> Seg5.F) : seg5Q4Il215 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il215
  rw [seg5Q4Il216Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il214Atoms (rho : Nat -> Seg5.F) : seg5Q4Il214 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il214
  rw [seg5Q4Il215Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il213Atoms (rho : Nat -> Seg5.F) : seg5Q4Il213 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il213
  rw [seg5Q4Il214Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il212Atoms (rho : Nat -> Seg5.F) : seg5Q4Il212 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il212
  rw [seg5Q4Il213Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il211Atoms (rho : Nat -> Seg5.F) : seg5Q4Il211 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il211
  rw [seg5Q4Il212Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il210Atoms (rho : Nat -> Seg5.F) : seg5Q4Il210 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il210
  rw [seg5Q4Il211Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il209Atoms (rho : Nat -> Seg5.F) : seg5Q4Il209 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il209
  rw [seg5Q4Il210Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il208Atoms (rho : Nat -> Seg5.F) : seg5Q4Il208 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il208
  rw [seg5Q4Il209Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il207Atoms (rho : Nat -> Seg5.F) : seg5Q4Il207 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il207
  rw [seg5Q4Il208Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il206Atoms (rho : Nat -> Seg5.F) : seg5Q4Il206 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il206
  rw [seg5Q4Il207Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il205Atoms (rho : Nat -> Seg5.F) : seg5Q4Il205 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il205
  rw [seg5Q4Il206Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il204Atoms (rho : Nat -> Seg5.F) : seg5Q4Il204 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il204
  rw [seg5Q4Il205Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il203Atoms (rho : Nat -> Seg5.F) : seg5Q4Il203 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il203
  rw [seg5Q4Il204Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il202Atoms (rho : Nat -> Seg5.F) : seg5Q4Il202 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il202
  rw [seg5Q4Il203Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il201Atoms (rho : Nat -> Seg5.F) : seg5Q4Il201 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il201
  rw [seg5Q4Il202Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il200Atoms (rho : Nat -> Seg5.F) : seg5Q4Il200 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il200
  rw [seg5Q4Il201Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il199Atoms (rho : Nat -> Seg5.F) : seg5Q4Il199 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il199
  rw [seg5Q4Il200Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il198Atoms (rho : Nat -> Seg5.F) : seg5Q4Il198 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il198
  rw [seg5Q4Il199Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il197Atoms (rho : Nat -> Seg5.F) : seg5Q4Il197 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il197
  rw [seg5Q4Il198Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il196Atoms (rho : Nat -> Seg5.F) : seg5Q4Il196 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il196
  rw [seg5Q4Il197Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il195Atoms (rho : Nat -> Seg5.F) : seg5Q4Il195 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il195
  rw [seg5Q4Il196Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il194Atoms (rho : Nat -> Seg5.F) : seg5Q4Il194 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il194
  rw [seg5Q4Il195Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il193Atoms (rho : Nat -> Seg5.F) : seg5Q4Il193 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il193
  rw [seg5Q4Il194Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il192Atoms (rho : Nat -> Seg5.F) : seg5Q4Il192 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il192
  rw [seg5Q4Il193Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il191Atoms (rho : Nat -> Seg5.F) : seg5Q4Il191 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il191
  rw [seg5Q4Il192Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il190Atoms (rho : Nat -> Seg5.F) : seg5Q4Il190 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il190
  rw [seg5Q4Il191Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il189Atoms (rho : Nat -> Seg5.F) : seg5Q4Il189 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il189
  rw [seg5Q4Il190Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il188Atoms (rho : Nat -> Seg5.F) : seg5Q4Il188 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il188
  rw [seg5Q4Il189Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il187Atoms (rho : Nat -> Seg5.F) : seg5Q4Il187 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il187
  rw [seg5Q4Il188Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il186Atoms (rho : Nat -> Seg5.F) : seg5Q4Il186 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il186
  rw [seg5Q4Il187Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il185Atoms (rho : Nat -> Seg5.F) : seg5Q4Il185 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il185
  rw [seg5Q4Il186Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il184Atoms (rho : Nat -> Seg5.F) : seg5Q4Il184 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il184
  rw [seg5Q4Il185Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il183Atoms (rho : Nat -> Seg5.F) : seg5Q4Il183 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il183
  rw [seg5Q4Il184Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il182Atoms (rho : Nat -> Seg5.F) : seg5Q4Il182 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il182
  rw [seg5Q4Il183Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il181Atoms (rho : Nat -> Seg5.F) : seg5Q4Il181 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il181
  rw [seg5Q4Il182Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il180Atoms (rho : Nat -> Seg5.F) : seg5Q4Il180 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il180
  rw [seg5Q4Il181Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il179Atoms (rho : Nat -> Seg5.F) : seg5Q4Il179 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il179
  rw [seg5Q4Il180Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il178Atoms (rho : Nat -> Seg5.F) : seg5Q4Il178 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il178
  rw [seg5Q4Il179Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il177Atoms (rho : Nat -> Seg5.F) : seg5Q4Il177 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il177
  rw [seg5Q4Il178Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il176Atoms (rho : Nat -> Seg5.F) : seg5Q4Il176 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il176
  rw [seg5Q4Il177Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il175Atoms (rho : Nat -> Seg5.F) : seg5Q4Il175 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il175
  rw [seg5Q4Il176Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il174Atoms (rho : Nat -> Seg5.F) : seg5Q4Il174 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il174
  rw [seg5Q4Il175Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il173Atoms (rho : Nat -> Seg5.F) : seg5Q4Il173 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il173
  rw [seg5Q4Il174Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il172Atoms (rho : Nat -> Seg5.F) : seg5Q4Il172 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il172
  rw [seg5Q4Il173Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il171Atoms (rho : Nat -> Seg5.F) : seg5Q4Il171 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il171
  rw [seg5Q4Il172Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il170Atoms (rho : Nat -> Seg5.F) : seg5Q4Il170 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il170
  rw [seg5Q4Il171Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il169Atoms (rho : Nat -> Seg5.F) : seg5Q4Il169 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il169
  rw [seg5Q4Il170Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il168Atoms (rho : Nat -> Seg5.F) : seg5Q4Il168 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il168
  rw [seg5Q4Il169Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il167Atoms (rho : Nat -> Seg5.F) : seg5Q4Il167 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il167
  rw [seg5Q4Il168Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il166Atoms (rho : Nat -> Seg5.F) : seg5Q4Il166 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il166
  rw [seg5Q4Il167Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il165Atoms (rho : Nat -> Seg5.F) : seg5Q4Il165 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il165
  rw [seg5Q4Il166Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il164Atoms (rho : Nat -> Seg5.F) : seg5Q4Il164 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il164
  rw [seg5Q4Il165Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il163Atoms (rho : Nat -> Seg5.F) : seg5Q4Il163 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il163
  rw [seg5Q4Il164Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il162Atoms (rho : Nat -> Seg5.F) : seg5Q4Il162 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il162
  rw [seg5Q4Il163Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il161Atoms (rho : Nat -> Seg5.F) : seg5Q4Il161 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il161
  rw [seg5Q4Il162Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il160Atoms (rho : Nat -> Seg5.F) : seg5Q4Il160 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il160
  rw [seg5Q4Il161Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il159Atoms (rho : Nat -> Seg5.F) : seg5Q4Il159 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il159
  rw [seg5Q4Il160Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il158Atoms (rho : Nat -> Seg5.F) : seg5Q4Il158 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il158
  rw [seg5Q4Il159Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il157Atoms (rho : Nat -> Seg5.F) : seg5Q4Il157 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il157
  rw [seg5Q4Il158Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il156Atoms (rho : Nat -> Seg5.F) : seg5Q4Il156 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il156
  rw [seg5Q4Il157Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il155Atoms (rho : Nat -> Seg5.F) : seg5Q4Il155 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il155
  rw [seg5Q4Il156Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il154Atoms (rho : Nat -> Seg5.F) : seg5Q4Il154 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il154
  rw [seg5Q4Il155Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il153Atoms (rho : Nat -> Seg5.F) : seg5Q4Il153 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il153
  rw [seg5Q4Il154Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il152Atoms (rho : Nat -> Seg5.F) : seg5Q4Il152 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il152
  rw [seg5Q4Il153Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il151Atoms (rho : Nat -> Seg5.F) : seg5Q4Il151 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il151
  rw [seg5Q4Il152Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il150Atoms (rho : Nat -> Seg5.F) : seg5Q4Il150 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il150
  rw [seg5Q4Il151Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il149Atoms (rho : Nat -> Seg5.F) : seg5Q4Il149 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il149
  rw [seg5Q4Il150Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il148Atoms (rho : Nat -> Seg5.F) : seg5Q4Il148 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il148
  rw [seg5Q4Il149Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il147Atoms (rho : Nat -> Seg5.F) : seg5Q4Il147 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il147
  rw [seg5Q4Il148Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il146Atoms (rho : Nat -> Seg5.F) : seg5Q4Il146 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il146
  rw [seg5Q4Il147Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il145Atoms (rho : Nat -> Seg5.F) : seg5Q4Il145 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il145
  rw [seg5Q4Il146Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il144Atoms (rho : Nat -> Seg5.F) : seg5Q4Il144 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il144
  rw [seg5Q4Il145Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il143Atoms (rho : Nat -> Seg5.F) : seg5Q4Il143 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il143
  rw [seg5Q4Il144Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il142Atoms (rho : Nat -> Seg5.F) : seg5Q4Il142 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il142
  rw [seg5Q4Il143Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il141Atoms (rho : Nat -> Seg5.F) : seg5Q4Il141 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il141
  rw [seg5Q4Il142Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il140Atoms (rho : Nat -> Seg5.F) : seg5Q4Il140 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il140
  rw [seg5Q4Il141Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il139Atoms (rho : Nat -> Seg5.F) : seg5Q4Il139 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il139
  rw [seg5Q4Il140Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il138Atoms (rho : Nat -> Seg5.F) : seg5Q4Il138 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il138
  rw [seg5Q4Il139Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il137Atoms (rho : Nat -> Seg5.F) : seg5Q4Il137 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il137
  rw [seg5Q4Il138Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il136Atoms (rho : Nat -> Seg5.F) : seg5Q4Il136 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il136
  rw [seg5Q4Il137Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il135Atoms (rho : Nat -> Seg5.F) : seg5Q4Il135 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il135
  rw [seg5Q4Il136Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il134Atoms (rho : Nat -> Seg5.F) : seg5Q4Il134 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il134
  rw [seg5Q4Il135Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il133Atoms (rho : Nat -> Seg5.F) : seg5Q4Il133 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il133
  rw [seg5Q4Il134Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il132Atoms (rho : Nat -> Seg5.F) : seg5Q4Il132 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il132
  rw [seg5Q4Il133Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il131Atoms (rho : Nat -> Seg5.F) : seg5Q4Il131 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il131
  rw [seg5Q4Il132Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il130Atoms (rho : Nat -> Seg5.F) : seg5Q4Il130 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il130
  rw [seg5Q4Il131Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il129Atoms (rho : Nat -> Seg5.F) : seg5Q4Il129 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il129
  rw [seg5Q4Il130Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il128Atoms (rho : Nat -> Seg5.F) : seg5Q4Il128 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il128
  rw [seg5Q4Il129Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il127Atoms (rho : Nat -> Seg5.F) : seg5Q4Il127 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il127
  rw [seg5Q4Il128Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il126Atoms (rho : Nat -> Seg5.F) : seg5Q4Il126 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il126
  rw [seg5Q4Il127Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il125Atoms (rho : Nat -> Seg5.F) : seg5Q4Il125 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il125
  rw [seg5Q4Il126Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il124Atoms (rho : Nat -> Seg5.F) : seg5Q4Il124 rho = (0 : Seg5.F) := by
  unfold seg5Q4Il124
  rw [seg5Q4Il125Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il123Atoms (rho : Nat -> Seg5.F) : seg5Q4Il123 rho = seg5Q4IlAtom0 rho := by
  unfold seg5Q4Il123
  rw [seg5Q4Il124Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il122Atoms (rho : Nat -> Seg5.F) : seg5Q4Il122 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho := by
  unfold seg5Q4Il122
  rw [seg5Q4Il123Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il121Atoms (rho : Nat -> Seg5.F) : seg5Q4Il121 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho := by
  unfold seg5Q4Il121
  rw [seg5Q4Il122Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il120Atoms (rho : Nat -> Seg5.F) : seg5Q4Il120 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho := by
  unfold seg5Q4Il120
  rw [seg5Q4Il121Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il119Atoms (rho : Nat -> Seg5.F) : seg5Q4Il119 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho := by
  unfold seg5Q4Il119
  rw [seg5Q4Il120Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il118Atoms (rho : Nat -> Seg5.F) : seg5Q4Il118 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho := by
  unfold seg5Q4Il118
  rw [seg5Q4Il119Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il117Atoms (rho : Nat -> Seg5.F) : seg5Q4Il117 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho := by
  unfold seg5Q4Il117
  rw [seg5Q4Il118Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il116Atoms (rho : Nat -> Seg5.F) : seg5Q4Il116 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho := by
  unfold seg5Q4Il116
  rw [seg5Q4Il117Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il115Atoms (rho : Nat -> Seg5.F) : seg5Q4Il115 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho := by
  unfold seg5Q4Il115
  rw [seg5Q4Il116Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il114Atoms (rho : Nat -> Seg5.F) : seg5Q4Il114 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho := by
  unfold seg5Q4Il114
  rw [seg5Q4Il115Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il113Atoms (rho : Nat -> Seg5.F) : seg5Q4Il113 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho := by
  unfold seg5Q4Il113
  rw [seg5Q4Il114Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il112Atoms (rho : Nat -> Seg5.F) : seg5Q4Il112 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho := by
  unfold seg5Q4Il112
  rw [seg5Q4Il113Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il111Atoms (rho : Nat -> Seg5.F) : seg5Q4Il111 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho := by
  unfold seg5Q4Il111
  rw [seg5Q4Il112Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il110Atoms (rho : Nat -> Seg5.F) : seg5Q4Il110 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho := by
  unfold seg5Q4Il110
  rw [seg5Q4Il111Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il109Atoms (rho : Nat -> Seg5.F) : seg5Q4Il109 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho := by
  unfold seg5Q4Il109
  rw [seg5Q4Il110Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il108Atoms (rho : Nat -> Seg5.F) : seg5Q4Il108 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho := by
  unfold seg5Q4Il108
  rw [seg5Q4Il109Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il107Atoms (rho : Nat -> Seg5.F) : seg5Q4Il107 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho := by
  unfold seg5Q4Il107
  rw [seg5Q4Il108Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il106Atoms (rho : Nat -> Seg5.F) : seg5Q4Il106 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho := by
  unfold seg5Q4Il106
  rw [seg5Q4Il107Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il105Atoms (rho : Nat -> Seg5.F) : seg5Q4Il105 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho := by
  unfold seg5Q4Il105
  rw [seg5Q4Il106Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il104Atoms (rho : Nat -> Seg5.F) : seg5Q4Il104 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho := by
  unfold seg5Q4Il104
  rw [seg5Q4Il105Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il103Atoms (rho : Nat -> Seg5.F) : seg5Q4Il103 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho := by
  unfold seg5Q4Il103
  rw [seg5Q4Il104Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il102Atoms (rho : Nat -> Seg5.F) : seg5Q4Il102 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho := by
  unfold seg5Q4Il102
  rw [seg5Q4Il103Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il101Atoms (rho : Nat -> Seg5.F) : seg5Q4Il101 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho := by
  unfold seg5Q4Il101
  rw [seg5Q4Il102Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il100Atoms (rho : Nat -> Seg5.F) : seg5Q4Il100 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho := by
  unfold seg5Q4Il100
  rw [seg5Q4Il101Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il99Atoms (rho : Nat -> Seg5.F) : seg5Q4Il99 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho := by
  unfold seg5Q4Il99
  rw [seg5Q4Il100Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il98Atoms (rho : Nat -> Seg5.F) : seg5Q4Il98 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho := by
  unfold seg5Q4Il98
  rw [seg5Q4Il99Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il97Atoms (rho : Nat -> Seg5.F) : seg5Q4Il97 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho := by
  unfold seg5Q4Il97
  rw [seg5Q4Il98Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il96Atoms (rho : Nat -> Seg5.F) : seg5Q4Il96 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho := by
  unfold seg5Q4Il96
  rw [seg5Q4Il97Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il95Atoms (rho : Nat -> Seg5.F) : seg5Q4Il95 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho := by
  unfold seg5Q4Il95
  rw [seg5Q4Il96Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il94Atoms (rho : Nat -> Seg5.F) : seg5Q4Il94 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho := by
  unfold seg5Q4Il94
  rw [seg5Q4Il95Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il93Atoms (rho : Nat -> Seg5.F) : seg5Q4Il93 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho := by
  unfold seg5Q4Il93
  rw [seg5Q4Il94Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il92Atoms (rho : Nat -> Seg5.F) : seg5Q4Il92 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho := by
  unfold seg5Q4Il92
  rw [seg5Q4Il93Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il91Atoms (rho : Nat -> Seg5.F) : seg5Q4Il91 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho := by
  unfold seg5Q4Il91
  rw [seg5Q4Il92Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il90Atoms (rho : Nat -> Seg5.F) : seg5Q4Il90 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho := by
  unfold seg5Q4Il90
  rw [seg5Q4Il91Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il89Atoms (rho : Nat -> Seg5.F) : seg5Q4Il89 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho := by
  unfold seg5Q4Il89
  rw [seg5Q4Il90Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il88Atoms (rho : Nat -> Seg5.F) : seg5Q4Il88 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold seg5Q4Il88
  rw [seg5Q4Il89Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il87Atoms (rho : Nat -> Seg5.F) : seg5Q4Il87 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold seg5Q4Il87
  rw [seg5Q4Il88Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il86Atoms (rho : Nat -> Seg5.F) : seg5Q4Il86 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold seg5Q4Il86
  rw [seg5Q4Il87Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il85Atoms (rho : Nat -> Seg5.F) : seg5Q4Il85 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold seg5Q4Il85
  rw [seg5Q4Il86Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il84Atoms (rho : Nat -> Seg5.F) : seg5Q4Il84 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold seg5Q4Il84
  rw [seg5Q4Il85Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il83Atoms (rho : Nat -> Seg5.F) : seg5Q4Il83 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho := by
  unfold seg5Q4Il83
  rw [seg5Q4Il84Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il82Atoms (rho : Nat -> Seg5.F) : seg5Q4Il82 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho := by
  unfold seg5Q4Il82
  rw [seg5Q4Il83Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il81Atoms (rho : Nat -> Seg5.F) : seg5Q4Il81 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho := by
  unfold seg5Q4Il81
  rw [seg5Q4Il82Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il80Atoms (rho : Nat -> Seg5.F) : seg5Q4Il80 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho := by
  unfold seg5Q4Il80
  rw [seg5Q4Il81Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il79Atoms (rho : Nat -> Seg5.F) : seg5Q4Il79 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho := by
  unfold seg5Q4Il79
  rw [seg5Q4Il80Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il78Atoms (rho : Nat -> Seg5.F) : seg5Q4Il78 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho := by
  unfold seg5Q4Il78
  rw [seg5Q4Il79Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il77Atoms (rho : Nat -> Seg5.F) : seg5Q4Il77 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho := by
  unfold seg5Q4Il77
  rw [seg5Q4Il78Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il76Atoms (rho : Nat -> Seg5.F) : seg5Q4Il76 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho := by
  unfold seg5Q4Il76
  rw [seg5Q4Il77Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il75Atoms (rho : Nat -> Seg5.F) : seg5Q4Il75 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho := by
  unfold seg5Q4Il75
  rw [seg5Q4Il76Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il74Atoms (rho : Nat -> Seg5.F) : seg5Q4Il74 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il74
  rw [seg5Q4Il75Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il73Atoms (rho : Nat -> Seg5.F) : seg5Q4Il73 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il73
  rw [seg5Q4Il74Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il72Atoms (rho : Nat -> Seg5.F) : seg5Q4Il72 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il72
  rw [seg5Q4Il73Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il71Atoms (rho : Nat -> Seg5.F) : seg5Q4Il71 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il71
  rw [seg5Q4Il72Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il70Atoms (rho : Nat -> Seg5.F) : seg5Q4Il70 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il70
  rw [seg5Q4Il71Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il69Atoms (rho : Nat -> Seg5.F) : seg5Q4Il69 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il69
  rw [seg5Q4Il70Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il68Atoms (rho : Nat -> Seg5.F) : seg5Q4Il68 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il68
  rw [seg5Q4Il69Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il67Atoms (rho : Nat -> Seg5.F) : seg5Q4Il67 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold seg5Q4Il67
  rw [seg5Q4Il68Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il66Atoms (rho : Nat -> Seg5.F) : seg5Q4Il66 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho := by
  unfold seg5Q4Il66
  rw [seg5Q4Il67Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il65Atoms (rho : Nat -> Seg5.F) : seg5Q4Il65 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho := by
  unfold seg5Q4Il65
  rw [seg5Q4Il66Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il64Atoms (rho : Nat -> Seg5.F) : seg5Q4Il64 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho := by
  unfold seg5Q4Il64
  rw [seg5Q4Il65Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il63Atoms (rho : Nat -> Seg5.F) : seg5Q4Il63 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho := by
  unfold seg5Q4Il63
  rw [seg5Q4Il64Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il62Atoms (rho : Nat -> Seg5.F) : seg5Q4Il62 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho := by
  unfold seg5Q4Il62
  rw [seg5Q4Il63Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il61Atoms (rho : Nat -> Seg5.F) : seg5Q4Il61 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho := by
  unfold seg5Q4Il61
  rw [seg5Q4Il62Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il60Atoms (rho : Nat -> Seg5.F) : seg5Q4Il60 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho := by
  unfold seg5Q4Il60
  rw [seg5Q4Il61Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il59Atoms (rho : Nat -> Seg5.F) : seg5Q4Il59 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho := by
  unfold seg5Q4Il59
  rw [seg5Q4Il60Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il58Atoms (rho : Nat -> Seg5.F) : seg5Q4Il58 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho := by
  unfold seg5Q4Il58
  rw [seg5Q4Il59Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il57Atoms (rho : Nat -> Seg5.F) : seg5Q4Il57 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho := by
  unfold seg5Q4Il57
  rw [seg5Q4Il58Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il56Atoms (rho : Nat -> Seg5.F) : seg5Q4Il56 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho := by
  unfold seg5Q4Il56
  rw [seg5Q4Il57Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il55Atoms (rho : Nat -> Seg5.F) : seg5Q4Il55 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho := by
  unfold seg5Q4Il55
  rw [seg5Q4Il56Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il54Atoms (rho : Nat -> Seg5.F) : seg5Q4Il54 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho := by
  unfold seg5Q4Il54
  rw [seg5Q4Il55Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il53Atoms (rho : Nat -> Seg5.F) : seg5Q4Il53 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho := by
  unfold seg5Q4Il53
  rw [seg5Q4Il54Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il52Atoms (rho : Nat -> Seg5.F) : seg5Q4Il52 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho := by
  unfold seg5Q4Il52
  rw [seg5Q4Il53Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il51Atoms (rho : Nat -> Seg5.F) : seg5Q4Il51 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho := by
  unfold seg5Q4Il51
  rw [seg5Q4Il52Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il50Atoms (rho : Nat -> Seg5.F) : seg5Q4Il50 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho := by
  unfold seg5Q4Il50
  rw [seg5Q4Il51Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il49Atoms (rho : Nat -> Seg5.F) : seg5Q4Il49 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho := by
  unfold seg5Q4Il49
  rw [seg5Q4Il50Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il48Atoms (rho : Nat -> Seg5.F) : seg5Q4Il48 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho := by
  unfold seg5Q4Il48
  rw [seg5Q4Il49Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il47Atoms (rho : Nat -> Seg5.F) : seg5Q4Il47 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho := by
  unfold seg5Q4Il47
  rw [seg5Q4Il48Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il46Atoms (rho : Nat -> Seg5.F) : seg5Q4Il46 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho := by
  unfold seg5Q4Il46
  rw [seg5Q4Il47Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il45Atoms (rho : Nat -> Seg5.F) : seg5Q4Il45 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho := by
  unfold seg5Q4Il45
  rw [seg5Q4Il46Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il44Atoms (rho : Nat -> Seg5.F) : seg5Q4Il44 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho := by
  unfold seg5Q4Il44
  rw [seg5Q4Il45Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il43Atoms (rho : Nat -> Seg5.F) : seg5Q4Il43 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho := by
  unfold seg5Q4Il43
  rw [seg5Q4Il44Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il42Atoms (rho : Nat -> Seg5.F) : seg5Q4Il42 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho := by
  unfold seg5Q4Il42
  rw [seg5Q4Il43Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il41Atoms (rho : Nat -> Seg5.F) : seg5Q4Il41 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho := by
  unfold seg5Q4Il41
  rw [seg5Q4Il42Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il40Atoms (rho : Nat -> Seg5.F) : seg5Q4Il40 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho := by
  unfold seg5Q4Il40
  rw [seg5Q4Il41Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il39Atoms (rho : Nat -> Seg5.F) : seg5Q4Il39 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho := by
  unfold seg5Q4Il39
  rw [seg5Q4Il40Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il38Atoms (rho : Nat -> Seg5.F) : seg5Q4Il38 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho := by
  unfold seg5Q4Il38
  rw [seg5Q4Il39Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il37Atoms (rho : Nat -> Seg5.F) : seg5Q4Il37 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho := by
  unfold seg5Q4Il37
  rw [seg5Q4Il38Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il36Atoms (rho : Nat -> Seg5.F) : seg5Q4Il36 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho := by
  unfold seg5Q4Il36
  rw [seg5Q4Il37Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il35Atoms (rho : Nat -> Seg5.F) : seg5Q4Il35 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho := by
  unfold seg5Q4Il35
  rw [seg5Q4Il36Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il34Atoms (rho : Nat -> Seg5.F) : seg5Q4Il34 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho := by
  unfold seg5Q4Il34
  rw [seg5Q4Il35Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il33Atoms (rho : Nat -> Seg5.F) : seg5Q4Il33 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho := by
  unfold seg5Q4Il33
  rw [seg5Q4Il34Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il32Atoms (rho : Nat -> Seg5.F) : seg5Q4Il32 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho := by
  unfold seg5Q4Il32
  rw [seg5Q4Il33Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il31Atoms (rho : Nat -> Seg5.F) : seg5Q4Il31 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho := by
  unfold seg5Q4Il31
  rw [seg5Q4Il32Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il30Atoms (rho : Nat -> Seg5.F) : seg5Q4Il30 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho := by
  unfold seg5Q4Il30
  rw [seg5Q4Il31Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il29Atoms (rho : Nat -> Seg5.F) : seg5Q4Il29 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho := by
  unfold seg5Q4Il29
  rw [seg5Q4Il30Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il28Atoms (rho : Nat -> Seg5.F) : seg5Q4Il28 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho := by
  unfold seg5Q4Il28
  rw [seg5Q4Il29Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il27Atoms (rho : Nat -> Seg5.F) : seg5Q4Il27 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho := by
  unfold seg5Q4Il27
  rw [seg5Q4Il28Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il26Atoms (rho : Nat -> Seg5.F) : seg5Q4Il26 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho := by
  unfold seg5Q4Il26
  rw [seg5Q4Il27Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il25Atoms (rho : Nat -> Seg5.F) : seg5Q4Il25 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho := by
  unfold seg5Q4Il25
  rw [seg5Q4Il26Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il24Atoms (rho : Nat -> Seg5.F) : seg5Q4Il24 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il24
  rw [seg5Q4Il25Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il23Atoms (rho : Nat -> Seg5.F) : seg5Q4Il23 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il23
  rw [seg5Q4Il24Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il22Atoms (rho : Nat -> Seg5.F) : seg5Q4Il22 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il22
  rw [seg5Q4Il23Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il21Atoms (rho : Nat -> Seg5.F) : seg5Q4Il21 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il21
  rw [seg5Q4Il22Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il20Atoms (rho : Nat -> Seg5.F) : seg5Q4Il20 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il20
  rw [seg5Q4Il21Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il19Atoms (rho : Nat -> Seg5.F) : seg5Q4Il19 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il19
  rw [seg5Q4Il20Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il18Atoms (rho : Nat -> Seg5.F) : seg5Q4Il18 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il18
  rw [seg5Q4Il19Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il17Atoms (rho : Nat -> Seg5.F) : seg5Q4Il17 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il17
  rw [seg5Q4Il18Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il16Atoms (rho : Nat -> Seg5.F) : seg5Q4Il16 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold seg5Q4Il16
  rw [seg5Q4Il17Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il15Atoms (rho : Nat -> Seg5.F) : seg5Q4Il15 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho := by
  unfold seg5Q4Il15
  rw [seg5Q4Il16Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il14Atoms (rho : Nat -> Seg5.F) : seg5Q4Il14 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho := by
  unfold seg5Q4Il14
  rw [seg5Q4Il15Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il13Atoms (rho : Nat -> Seg5.F) : seg5Q4Il13 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho := by
  unfold seg5Q4Il13
  rw [seg5Q4Il14Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il12Atoms (rho : Nat -> Seg5.F) : seg5Q4Il12 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho := by
  unfold seg5Q4Il12
  rw [seg5Q4Il13Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il11Atoms (rho : Nat -> Seg5.F) : seg5Q4Il11 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il11
  rw [seg5Q4Il12Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il10Atoms (rho : Nat -> Seg5.F) : seg5Q4Il10 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il10
  rw [seg5Q4Il11Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il9Atoms (rho : Nat -> Seg5.F) : seg5Q4Il9 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il9
  rw [seg5Q4Il10Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il8Atoms (rho : Nat -> Seg5.F) : seg5Q4Il8 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il8
  rw [seg5Q4Il9Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il7Atoms (rho : Nat -> Seg5.F) : seg5Q4Il7 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il7
  rw [seg5Q4Il8Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il6Atoms (rho : Nat -> Seg5.F) : seg5Q4Il6 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il6
  rw [seg5Q4Il7Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il5Atoms (rho : Nat -> Seg5.F) : seg5Q4Il5 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il5
  rw [seg5Q4Il6Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il4Atoms (rho : Nat -> Seg5.F) : seg5Q4Il4 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il4
  rw [seg5Q4Il5Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il3Atoms (rho : Nat -> Seg5.F) : seg5Q4Il3 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold seg5Q4Il3
  rw [seg5Q4Il4Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il2Atoms (rho : Nat -> Seg5.F) : seg5Q4Il2 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho + seg5Q4IlAtom60 rho := by
  unfold seg5Q4Il2
  rw [seg5Q4Il3Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il1Atoms (rho : Nat -> Seg5.F) : seg5Q4Il1 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho + seg5Q4IlAtom60 rho := by
  unfold seg5Q4Il1
  rw [seg5Q4Il2Atoms rho] <;> simp only [zero_add]

theorem seg5Q4Il0Atoms (rho : Nat -> Seg5.F) : seg5Q4Il0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho + seg5Q4IlAtom60 rho + seg5Q4IlAtom61 rho := by
  unfold seg5Q4Il0
  rw [seg5Q4Il1Atoms rho] <;> simp only [zero_add]

theorem seg5Q4relationLc135Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc135Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc135Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc135Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc135Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho := by
  unfold Seg5.relationLc135Part1 seg5Q4IlAtom17
  ring

theorem seg5Q4relationLc135Atom (rho : Nat -> Seg5.F) : Seg5.relationLc135 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho := by
  unfold Seg5.relationLc135
  rw [seg5Q4relationLc135Part0Atom rho, seg5Q4relationLc135Part1Atom rho] <;> ring

theorem seg5Q4relationLc136Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc136Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc136Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc136Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc136Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho := by
  unfold Seg5.relationLc136Part1 seg5Q4IlAtom17 seg5Q4IlAtom18
  ring

theorem seg5Q4relationLc136Atom (rho : Nat -> Seg5.F) : Seg5.relationLc136 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho := by
  unfold Seg5.relationLc136
  rw [seg5Q4relationLc136Part0Atom rho, seg5Q4relationLc136Part1Atom rho] <;> ring

theorem seg5Q4relationLc137Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc137Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc137Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc137Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc137Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho := by
  unfold Seg5.relationLc137Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19
  ring

theorem seg5Q4relationLc137Atom (rho : Nat -> Seg5.F) : Seg5.relationLc137 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho := by
  unfold Seg5.relationLc137
  rw [seg5Q4relationLc137Part0Atom rho, seg5Q4relationLc137Part1Atom rho] <;> ring

theorem seg5Q4relationLc138Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc138Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc138Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc138Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc138Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho := by
  unfold Seg5.relationLc138Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20
  ring

theorem seg5Q4relationLc138Atom (rho : Nat -> Seg5.F) : Seg5.relationLc138 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho := by
  unfold Seg5.relationLc138
  rw [seg5Q4relationLc138Part0Atom rho, seg5Q4relationLc138Part1Atom rho] <;> ring

theorem seg5Q4relationLc139Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc139Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc139Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc139Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc139Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho := by
  unfold Seg5.relationLc139Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21
  ring

theorem seg5Q4relationLc139Atom (rho : Nat -> Seg5.F) : Seg5.relationLc139 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho := by
  unfold Seg5.relationLc139
  rw [seg5Q4relationLc139Part0Atom rho, seg5Q4relationLc139Part1Atom rho] <;> ring

theorem seg5Q4relationLc140Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc140Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc140Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc140Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc140Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho := by
  unfold Seg5.relationLc140Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22
  ring

theorem seg5Q4relationLc140Atom (rho : Nat -> Seg5.F) : Seg5.relationLc140 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho := by
  unfold Seg5.relationLc140
  rw [seg5Q4relationLc140Part0Atom rho, seg5Q4relationLc140Part1Atom rho] <;> ring

theorem seg5Q4relationLc141Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc141Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc141Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc141Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc141Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho := by
  unfold Seg5.relationLc141Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23
  ring

theorem seg5Q4relationLc141Atom (rho : Nat -> Seg5.F) : Seg5.relationLc141 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho := by
  unfold Seg5.relationLc141
  rw [seg5Q4relationLc141Part0Atom rho, seg5Q4relationLc141Part1Atom rho] <;> ring

theorem seg5Q4relationLc142Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc142Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc142Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc142Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc142Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho := by
  unfold Seg5.relationLc142Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24
  ring

theorem seg5Q4relationLc142Atom (rho : Nat -> Seg5.F) : Seg5.relationLc142 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho := by
  unfold Seg5.relationLc142
  rw [seg5Q4relationLc142Part0Atom rho, seg5Q4relationLc142Part1Atom rho] <;> ring

theorem seg5Q4relationLc143Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc143Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc143Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc143Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc143Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho := by
  unfold Seg5.relationLc143Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25
  ring

theorem seg5Q4relationLc143Atom (rho : Nat -> Seg5.F) : Seg5.relationLc143 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho := by
  unfold Seg5.relationLc143
  rw [seg5Q4relationLc143Part0Atom rho, seg5Q4relationLc143Part1Atom rho] <;> ring

theorem seg5Q4relationLc144Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc144Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc144Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc144Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc144Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold Seg5.relationLc144Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26
  ring

theorem seg5Q4relationLc144Atom (rho : Nat -> Seg5.F) : Seg5.relationLc144 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho := by
  unfold Seg5.relationLc144
  rw [seg5Q4relationLc144Part0Atom rho, seg5Q4relationLc144Part1Atom rho] <;> ring

theorem seg5Q4relationLc145Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc145Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc145Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc145Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc145Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho := by
  unfold Seg5.relationLc145Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27
  ring

theorem seg5Q4relationLc145Atom (rho : Nat -> Seg5.F) : Seg5.relationLc145 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho := by
  unfold Seg5.relationLc145
  rw [seg5Q4relationLc145Part0Atom rho, seg5Q4relationLc145Part1Atom rho] <;> ring

theorem seg5Q4relationLc146Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc146Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc146Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc146Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc146Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho := by
  unfold Seg5.relationLc146Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28
  ring

theorem seg5Q4relationLc146Atom (rho : Nat -> Seg5.F) : Seg5.relationLc146 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho := by
  unfold Seg5.relationLc146
  rw [seg5Q4relationLc146Part0Atom rho, seg5Q4relationLc146Part1Atom rho] <;> ring

theorem seg5Q4relationLc147Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc147Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc147Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc147Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc147Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho := by
  unfold Seg5.relationLc147Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29
  ring

theorem seg5Q4relationLc147Atom (rho : Nat -> Seg5.F) : Seg5.relationLc147 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho := by
  unfold Seg5.relationLc147
  rw [seg5Q4relationLc147Part0Atom rho, seg5Q4relationLc147Part1Atom rho] <;> ring

theorem seg5Q4relationLc148Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc148Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc148Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc148Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc148Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho := by
  unfold Seg5.relationLc148Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30
  ring

theorem seg5Q4relationLc148Atom (rho : Nat -> Seg5.F) : Seg5.relationLc148 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho := by
  unfold Seg5.relationLc148
  rw [seg5Q4relationLc148Part0Atom rho, seg5Q4relationLc148Part1Atom rho] <;> ring

theorem seg5Q4relationLc149Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc149Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc149Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc149Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc149Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho := by
  unfold Seg5.relationLc149Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31
  ring

theorem seg5Q4relationLc149Atom (rho : Nat -> Seg5.F) : Seg5.relationLc149 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho := by
  unfold Seg5.relationLc149
  rw [seg5Q4relationLc149Part0Atom rho, seg5Q4relationLc149Part1Atom rho] <;> ring

theorem seg5Q4relationLc150Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc150Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc150Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc150Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc150Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho := by
  unfold Seg5.relationLc150Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32
  ring

theorem seg5Q4relationLc150Atom (rho : Nat -> Seg5.F) : Seg5.relationLc150 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho := by
  unfold Seg5.relationLc150
  rw [seg5Q4relationLc150Part0Atom rho, seg5Q4relationLc150Part1Atom rho] <;> ring

theorem seg5Q4relationLc151Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc151Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc151Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc151Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc151Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc151Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc151Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc151Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold Seg5.relationLc151Part2 seg5Q4IlAtom34
  ring

theorem seg5Q4relationLc151Atom (rho : Nat -> Seg5.F) : Seg5.relationLc151 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho := by
  unfold Seg5.relationLc151
  rw [seg5Q4relationLc151Part0Atom rho, seg5Q4relationLc151Part1Atom rho, seg5Q4relationLc151Part2Atom rho] <;> ring

theorem seg5Q4relationLc152Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc152Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc152Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc152Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc152Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc152Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc152Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc152Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho := by
  unfold Seg5.relationLc152Part2 seg5Q4IlAtom34 seg5Q4IlAtom35
  ring

theorem seg5Q4relationLc152Atom (rho : Nat -> Seg5.F) : Seg5.relationLc152 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho := by
  unfold Seg5.relationLc152
  rw [seg5Q4relationLc152Part0Atom rho, seg5Q4relationLc152Part1Atom rho, seg5Q4relationLc152Part2Atom rho] <;> ring

theorem seg5Q4relationLc153Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc153Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc153Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc153Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc153Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc153Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc153Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc153Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho := by
  unfold Seg5.relationLc153Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36
  ring

theorem seg5Q4relationLc153Atom (rho : Nat -> Seg5.F) : Seg5.relationLc153 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho := by
  unfold Seg5.relationLc153
  rw [seg5Q4relationLc153Part0Atom rho, seg5Q4relationLc153Part1Atom rho, seg5Q4relationLc153Part2Atom rho] <;> ring

theorem seg5Q4relationLc154Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc154Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc154Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc154Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc154Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc154Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc154Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc154Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho := by
  unfold Seg5.relationLc154Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37
  ring

theorem seg5Q4relationLc154Atom (rho : Nat -> Seg5.F) : Seg5.relationLc154 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho := by
  unfold Seg5.relationLc154
  rw [seg5Q4relationLc154Part0Atom rho, seg5Q4relationLc154Part1Atom rho, seg5Q4relationLc154Part2Atom rho] <;> ring

theorem seg5Q4relationLc155Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc155Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc155Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc155Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc155Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc155Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc155Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc155Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho := by
  unfold Seg5.relationLc155Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38
  ring

theorem seg5Q4relationLc155Atom (rho : Nat -> Seg5.F) : Seg5.relationLc155 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho := by
  unfold Seg5.relationLc155
  rw [seg5Q4relationLc155Part0Atom rho, seg5Q4relationLc155Part1Atom rho, seg5Q4relationLc155Part2Atom rho] <;> ring

theorem seg5Q4relationLc156Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc156Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc156Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc156Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc156Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc156Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc156Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc156Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho := by
  unfold Seg5.relationLc156Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39
  ring

theorem seg5Q4relationLc156Atom (rho : Nat -> Seg5.F) : Seg5.relationLc156 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho := by
  unfold Seg5.relationLc156
  rw [seg5Q4relationLc156Part0Atom rho, seg5Q4relationLc156Part1Atom rho, seg5Q4relationLc156Part2Atom rho] <;> ring

theorem seg5Q4relationLc157Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc157Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc157Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc157Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc157Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc157Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc157Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc157Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho := by
  unfold Seg5.relationLc157Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40
  ring

theorem seg5Q4relationLc157Atom (rho : Nat -> Seg5.F) : Seg5.relationLc157 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho := by
  unfold Seg5.relationLc157
  rw [seg5Q4relationLc157Part0Atom rho, seg5Q4relationLc157Part1Atom rho, seg5Q4relationLc157Part2Atom rho] <;> ring

theorem seg5Q4relationLc158Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc158Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc158Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc158Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc158Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc158Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc158Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc158Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho := by
  unfold Seg5.relationLc158Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41
  ring

theorem seg5Q4relationLc158Atom (rho : Nat -> Seg5.F) : Seg5.relationLc158 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho := by
  unfold Seg5.relationLc158
  rw [seg5Q4relationLc158Part0Atom rho, seg5Q4relationLc158Part1Atom rho, seg5Q4relationLc158Part2Atom rho] <;> ring

theorem seg5Q4relationLc159Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc159Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc159Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc159Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc159Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc159Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc159Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc159Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho := by
  unfold Seg5.relationLc159Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42
  ring

theorem seg5Q4relationLc159Atom (rho : Nat -> Seg5.F) : Seg5.relationLc159 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho := by
  unfold Seg5.relationLc159
  rw [seg5Q4relationLc159Part0Atom rho, seg5Q4relationLc159Part1Atom rho, seg5Q4relationLc159Part2Atom rho] <;> ring

theorem seg5Q4relationLc160Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc160Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc160Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc160Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc160Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc160Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc160Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc160Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho := by
  unfold Seg5.relationLc160Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43
  ring

theorem seg5Q4relationLc160Atom (rho : Nat -> Seg5.F) : Seg5.relationLc160 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho := by
  unfold Seg5.relationLc160
  rw [seg5Q4relationLc160Part0Atom rho, seg5Q4relationLc160Part1Atom rho, seg5Q4relationLc160Part2Atom rho] <;> ring

theorem seg5Q4relationLc161Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc161Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc161Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc161Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc161Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc161Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc161Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc161Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho := by
  unfold Seg5.relationLc161Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44
  ring

theorem seg5Q4relationLc161Atom (rho : Nat -> Seg5.F) : Seg5.relationLc161 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho := by
  unfold Seg5.relationLc161
  rw [seg5Q4relationLc161Part0Atom rho, seg5Q4relationLc161Part1Atom rho, seg5Q4relationLc161Part2Atom rho] <;> ring

theorem seg5Q4relationLc162Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc162Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc162Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc162Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc162Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc162Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc162Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc162Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho := by
  unfold Seg5.relationLc162Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45
  ring

theorem seg5Q4relationLc162Atom (rho : Nat -> Seg5.F) : Seg5.relationLc162 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho := by
  unfold Seg5.relationLc162
  rw [seg5Q4relationLc162Part0Atom rho, seg5Q4relationLc162Part1Atom rho, seg5Q4relationLc162Part2Atom rho] <;> ring

theorem seg5Q4relationLc163Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc163Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc163Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc163Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc163Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc163Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc163Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc163Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho := by
  unfold Seg5.relationLc163Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46
  ring

theorem seg5Q4relationLc163Atom (rho : Nat -> Seg5.F) : Seg5.relationLc163 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho := by
  unfold Seg5.relationLc163
  rw [seg5Q4relationLc163Part0Atom rho, seg5Q4relationLc163Part1Atom rho, seg5Q4relationLc163Part2Atom rho] <;> ring

theorem seg5Q4relationLc164Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc164Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc164Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc164Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc164Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc164Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc164Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc164Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho := by
  unfold Seg5.relationLc164Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47
  ring

theorem seg5Q4relationLc164Atom (rho : Nat -> Seg5.F) : Seg5.relationLc164 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho := by
  unfold Seg5.relationLc164
  rw [seg5Q4relationLc164Part0Atom rho, seg5Q4relationLc164Part1Atom rho, seg5Q4relationLc164Part2Atom rho] <;> ring

theorem seg5Q4relationLc165Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc165Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc165Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc165Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc165Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc165Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc165Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc165Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho := by
  unfold Seg5.relationLc165Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48
  ring

theorem seg5Q4relationLc165Atom (rho : Nat -> Seg5.F) : Seg5.relationLc165 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho := by
  unfold Seg5.relationLc165
  rw [seg5Q4relationLc165Part0Atom rho, seg5Q4relationLc165Part1Atom rho, seg5Q4relationLc165Part2Atom rho] <;> ring

theorem seg5Q4relationLc166Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc166Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc166Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc166Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc166Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc166Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc166Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc166Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho := by
  unfold Seg5.relationLc166Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49
  ring

theorem seg5Q4relationLc166Atom (rho : Nat -> Seg5.F) : Seg5.relationLc166 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho := by
  unfold Seg5.relationLc166
  rw [seg5Q4relationLc166Part0Atom rho, seg5Q4relationLc166Part1Atom rho, seg5Q4relationLc166Part2Atom rho] <;> ring

theorem seg5Q4relationLc167Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc167Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc167Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc167Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc167Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc167Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc167Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc167Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc167Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc167Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc167Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho := by
  unfold Seg5.relationLc167Part3 seg5Q4IlAtom51
  ring

theorem seg5Q4relationLc167Atom (rho : Nat -> Seg5.F) : Seg5.relationLc167 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho := by
  unfold Seg5.relationLc167
  rw [seg5Q4relationLc167Part0Atom rho, seg5Q4relationLc167Part1Atom rho, seg5Q4relationLc167Part2Atom rho, seg5Q4relationLc167Part3Atom rho] <;> ring

theorem seg5Q4relationLc168Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc168Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc168Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc168Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc168Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc168Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc168Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc168Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc168Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc168Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc168Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho := by
  unfold Seg5.relationLc168Part3 seg5Q4IlAtom51 seg5Q4IlAtom52
  ring

theorem seg5Q4relationLc168Atom (rho : Nat -> Seg5.F) : Seg5.relationLc168 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho := by
  unfold Seg5.relationLc168
  rw [seg5Q4relationLc168Part0Atom rho, seg5Q4relationLc168Part1Atom rho, seg5Q4relationLc168Part2Atom rho, seg5Q4relationLc168Part3Atom rho] <;> ring

theorem seg5Q4relationLc169Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc169Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc169Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc169Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc169Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc169Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc169Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc169Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc169Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc169Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc169Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho := by
  unfold Seg5.relationLc169Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53
  ring

theorem seg5Q4relationLc169Atom (rho : Nat -> Seg5.F) : Seg5.relationLc169 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho := by
  unfold Seg5.relationLc169
  rw [seg5Q4relationLc169Part0Atom rho, seg5Q4relationLc169Part1Atom rho, seg5Q4relationLc169Part2Atom rho, seg5Q4relationLc169Part3Atom rho] <;> ring

theorem seg5Q4relationLc170Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc170Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc170Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc170Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc170Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc170Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc170Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc170Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc170Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc170Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc170Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho := by
  unfold Seg5.relationLc170Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54
  ring

theorem seg5Q4relationLc170Atom (rho : Nat -> Seg5.F) : Seg5.relationLc170 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho := by
  unfold Seg5.relationLc170
  rw [seg5Q4relationLc170Part0Atom rho, seg5Q4relationLc170Part1Atom rho, seg5Q4relationLc170Part2Atom rho, seg5Q4relationLc170Part3Atom rho] <;> ring

theorem seg5Q4relationLc171Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc171Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc171Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc171Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc171Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc171Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc171Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc171Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc171Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc171Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc171Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho := by
  unfold Seg5.relationLc171Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55
  ring

theorem seg5Q4relationLc171Atom (rho : Nat -> Seg5.F) : Seg5.relationLc171 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho := by
  unfold Seg5.relationLc171
  rw [seg5Q4relationLc171Part0Atom rho, seg5Q4relationLc171Part1Atom rho, seg5Q4relationLc171Part2Atom rho, seg5Q4relationLc171Part3Atom rho] <;> ring

theorem seg5Q4relationLc172Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc172Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc172Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc172Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc172Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc172Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc172Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc172Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc172Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc172Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc172Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold Seg5.relationLc172Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55 seg5Q4IlAtom56
  ring

theorem seg5Q4relationLc172Atom (rho : Nat -> Seg5.F) : Seg5.relationLc172 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho := by
  unfold Seg5.relationLc172
  rw [seg5Q4relationLc172Part0Atom rho, seg5Q4relationLc172Part1Atom rho, seg5Q4relationLc172Part2Atom rho, seg5Q4relationLc172Part3Atom rho] <;> ring

theorem seg5Q4relationLc173Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc173Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc173Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc173Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc173Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc173Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc173Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc173Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc173Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc173Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc173Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho := by
  unfold Seg5.relationLc173Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55 seg5Q4IlAtom56 seg5Q4IlAtom57
  ring

theorem seg5Q4relationLc173Atom (rho : Nat -> Seg5.F) : Seg5.relationLc173 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho := by
  unfold Seg5.relationLc173
  rw [seg5Q4relationLc173Part0Atom rho, seg5Q4relationLc173Part1Atom rho, seg5Q4relationLc173Part2Atom rho, seg5Q4relationLc173Part3Atom rho] <;> ring

theorem seg5Q4relationLc174Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc174Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc174Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc174Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc174Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc174Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc174Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc174Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc174Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc174Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc174Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho := by
  unfold Seg5.relationLc174Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55 seg5Q4IlAtom56 seg5Q4IlAtom57 seg5Q4IlAtom58
  ring

theorem seg5Q4relationLc174Atom (rho : Nat -> Seg5.F) : Seg5.relationLc174 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho := by
  unfold Seg5.relationLc174
  rw [seg5Q4relationLc174Part0Atom rho, seg5Q4relationLc174Part1Atom rho, seg5Q4relationLc174Part2Atom rho, seg5Q4relationLc174Part3Atom rho] <;> ring

theorem seg5Q4relationLc175Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc175Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc175Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc175Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc175Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc175Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc175Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc175Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc175Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc175Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc175Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold Seg5.relationLc175Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55 seg5Q4IlAtom56 seg5Q4IlAtom57 seg5Q4IlAtom58 seg5Q4IlAtom59
  ring

theorem seg5Q4relationLc175Atom (rho : Nat -> Seg5.F) : Seg5.relationLc175 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho := by
  unfold Seg5.relationLc175
  rw [seg5Q4relationLc175Part0Atom rho, seg5Q4relationLc175Part1Atom rho, seg5Q4relationLc175Part2Atom rho, seg5Q4relationLc175Part3Atom rho] <;> ring

theorem seg5Q4relationLc176Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc176Part0 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho := by
  unfold Seg5.relationLc176Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom16 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc176Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc176Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho := by
  unfold Seg5.relationLc176Part1 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32 seg5Q4IlAtom33
  ring

theorem seg5Q4relationLc176Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc176Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho := by
  unfold Seg5.relationLc176Part2 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49 seg5Q4IlAtom50
  ring

theorem seg5Q4relationLc176Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc176Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho + seg5Q4IlAtom60 rho := by
  unfold Seg5.relationLc176Part3 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55 seg5Q4IlAtom56 seg5Q4IlAtom57 seg5Q4IlAtom58 seg5Q4IlAtom59 seg5Q4IlAtom60
  ring

theorem seg5Q4relationLc176Atom (rho : Nat -> Seg5.F) : Seg5.relationLc176 rho = seg5Q4IlAtom0 rho + seg5Q4IlAtom1 rho + seg5Q4IlAtom2 rho + seg5Q4IlAtom3 rho + seg5Q4IlAtom4 rho + seg5Q4IlAtom5 rho + seg5Q4IlAtom6 rho + seg5Q4IlAtom7 rho + seg5Q4IlAtom8 rho + seg5Q4IlAtom9 rho + seg5Q4IlAtom10 rho + seg5Q4IlAtom11 rho + seg5Q4IlAtom12 rho + seg5Q4IlAtom13 rho + seg5Q4IlAtom14 rho + seg5Q4IlAtom15 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho + seg5Q4IlAtom18 rho + seg5Q4IlAtom19 rho + seg5Q4IlAtom20 rho + seg5Q4IlAtom21 rho + seg5Q4IlAtom22 rho + seg5Q4IlAtom23 rho + seg5Q4IlAtom24 rho + seg5Q4IlAtom25 rho + seg5Q4IlAtom26 rho + seg5Q4IlAtom27 rho + seg5Q4IlAtom28 rho + seg5Q4IlAtom29 rho + seg5Q4IlAtom30 rho + seg5Q4IlAtom31 rho + seg5Q4IlAtom32 rho + seg5Q4IlAtom33 rho + (-1 : Seg5.F) * seg5Q4IlAtom34 rho + seg5Q4IlAtom35 rho + seg5Q4IlAtom36 rho + seg5Q4IlAtom37 rho + seg5Q4IlAtom38 rho + seg5Q4IlAtom39 rho + seg5Q4IlAtom40 rho + seg5Q4IlAtom41 rho + seg5Q4IlAtom42 rho + seg5Q4IlAtom43 rho + seg5Q4IlAtom44 rho + seg5Q4IlAtom45 rho + seg5Q4IlAtom46 rho + seg5Q4IlAtom47 rho + seg5Q4IlAtom48 rho + seg5Q4IlAtom49 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho + seg5Q4IlAtom52 rho + seg5Q4IlAtom53 rho + seg5Q4IlAtom54 rho + seg5Q4IlAtom55 rho + seg5Q4IlAtom56 rho + seg5Q4IlAtom57 rho + seg5Q4IlAtom58 rho + seg5Q4IlAtom59 rho + seg5Q4IlAtom60 rho := by
  unfold Seg5.relationLc176
  rw [seg5Q4relationLc176Part0Atom rho, seg5Q4relationLc176Part1Atom rho, seg5Q4relationLc176Part2Atom rho, seg5Q4relationLc176Part3Atom rho] <;> ring

theorem seg5Q4relationLc177Part0Atom (rho : Nat -> Seg5.F) : Seg5.relationLc177Part0 rho = (1 : Seg5.F) + (-1 : Seg5.F) * seg5Q4IlAtom0 rho + (-1 : Seg5.F) * seg5Q4IlAtom1 rho + (-1 : Seg5.F) * seg5Q4IlAtom2 rho + (-1 : Seg5.F) * seg5Q4IlAtom3 rho + (-1 : Seg5.F) * seg5Q4IlAtom4 rho + (-1 : Seg5.F) * seg5Q4IlAtom5 rho + (-1 : Seg5.F) * seg5Q4IlAtom6 rho + (-1 : Seg5.F) * seg5Q4IlAtom7 rho + (-1 : Seg5.F) * seg5Q4IlAtom8 rho + (-1 : Seg5.F) * seg5Q4IlAtom9 rho + (-1 : Seg5.F) * seg5Q4IlAtom10 rho + (-1 : Seg5.F) * seg5Q4IlAtom11 rho + (-1 : Seg5.F) * seg5Q4IlAtom12 rho + (-1 : Seg5.F) * seg5Q4IlAtom13 rho + (-1 : Seg5.F) * seg5Q4IlAtom14 rho + (-1 : Seg5.F) * seg5Q4IlAtom15 rho := by
  unfold Seg5.relationLc177Part0 seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  ring

theorem seg5Q4relationLc177Part1Atom (rho : Nat -> Seg5.F) : Seg5.relationLc177Part1 rho = (-1 : Seg5.F) * seg5Q4IlAtom16 rho + seg5Q4IlAtom17 rho + (-1 : Seg5.F) * seg5Q4IlAtom18 rho + (-1 : Seg5.F) * seg5Q4IlAtom19 rho + (-1 : Seg5.F) * seg5Q4IlAtom20 rho + (-1 : Seg5.F) * seg5Q4IlAtom21 rho + (-1 : Seg5.F) * seg5Q4IlAtom22 rho + (-1 : Seg5.F) * seg5Q4IlAtom23 rho + (-1 : Seg5.F) * seg5Q4IlAtom24 rho + (-1 : Seg5.F) * seg5Q4IlAtom25 rho + (-1 : Seg5.F) * seg5Q4IlAtom26 rho + (-1 : Seg5.F) * seg5Q4IlAtom27 rho + (-1 : Seg5.F) * seg5Q4IlAtom28 rho + (-1 : Seg5.F) * seg5Q4IlAtom29 rho + (-1 : Seg5.F) * seg5Q4IlAtom30 rho + (-1 : Seg5.F) * seg5Q4IlAtom31 rho + (-1 : Seg5.F) * seg5Q4IlAtom32 rho := by
  unfold Seg5.relationLc177Part1 seg5Q4IlAtom16 seg5Q4IlAtom17 seg5Q4IlAtom18 seg5Q4IlAtom19 seg5Q4IlAtom20 seg5Q4IlAtom21 seg5Q4IlAtom22 seg5Q4IlAtom23 seg5Q4IlAtom24 seg5Q4IlAtom25 seg5Q4IlAtom26 seg5Q4IlAtom27 seg5Q4IlAtom28 seg5Q4IlAtom29 seg5Q4IlAtom30 seg5Q4IlAtom31 seg5Q4IlAtom32
  ring

theorem seg5Q4relationLc177Part2Atom (rho : Nat -> Seg5.F) : Seg5.relationLc177Part2 rho = (-1 : Seg5.F) * seg5Q4IlAtom33 rho + seg5Q4IlAtom34 rho + (-1 : Seg5.F) * seg5Q4IlAtom35 rho + (-1 : Seg5.F) * seg5Q4IlAtom36 rho + (-1 : Seg5.F) * seg5Q4IlAtom37 rho + (-1 : Seg5.F) * seg5Q4IlAtom38 rho + (-1 : Seg5.F) * seg5Q4IlAtom39 rho + (-1 : Seg5.F) * seg5Q4IlAtom40 rho + (-1 : Seg5.F) * seg5Q4IlAtom41 rho + (-1 : Seg5.F) * seg5Q4IlAtom42 rho + (-1 : Seg5.F) * seg5Q4IlAtom43 rho + (-1 : Seg5.F) * seg5Q4IlAtom44 rho + (-1 : Seg5.F) * seg5Q4IlAtom45 rho + (-1 : Seg5.F) * seg5Q4IlAtom46 rho + (-1 : Seg5.F) * seg5Q4IlAtom47 rho + (-1 : Seg5.F) * seg5Q4IlAtom48 rho + (-1 : Seg5.F) * seg5Q4IlAtom49 rho := by
  unfold Seg5.relationLc177Part2 seg5Q4IlAtom33 seg5Q4IlAtom34 seg5Q4IlAtom35 seg5Q4IlAtom36 seg5Q4IlAtom37 seg5Q4IlAtom38 seg5Q4IlAtom39 seg5Q4IlAtom40 seg5Q4IlAtom41 seg5Q4IlAtom42 seg5Q4IlAtom43 seg5Q4IlAtom44 seg5Q4IlAtom45 seg5Q4IlAtom46 seg5Q4IlAtom47 seg5Q4IlAtom48 seg5Q4IlAtom49
  ring

theorem seg5Q4relationLc177Part3Atom (rho : Nat -> Seg5.F) : Seg5.relationLc177Part3 rho = (-1 : Seg5.F) * seg5Q4IlAtom50 rho + seg5Q4IlAtom51 rho + (-1 : Seg5.F) * seg5Q4IlAtom52 rho + (-1 : Seg5.F) * seg5Q4IlAtom53 rho + (-1 : Seg5.F) * seg5Q4IlAtom54 rho + (-1 : Seg5.F) * seg5Q4IlAtom55 rho + (-1 : Seg5.F) * seg5Q4IlAtom56 rho + (-1 : Seg5.F) * seg5Q4IlAtom57 rho + (-1 : Seg5.F) * seg5Q4IlAtom58 rho + (-1 : Seg5.F) * seg5Q4IlAtom59 rho + (-1 : Seg5.F) * seg5Q4IlAtom60 rho + (-1 : Seg5.F) * seg5Q4IlAtom61 rho := by
  unfold Seg5.relationLc177Part3 seg5Q4IlAtom50 seg5Q4IlAtom51 seg5Q4IlAtom52 seg5Q4IlAtom53 seg5Q4IlAtom54 seg5Q4IlAtom55 seg5Q4IlAtom56 seg5Q4IlAtom57 seg5Q4IlAtom58 seg5Q4IlAtom59 seg5Q4IlAtom60 seg5Q4IlAtom61
  ring

theorem seg5Q4relationLc177Atom (rho : Nat -> Seg5.F) : Seg5.relationLc177 rho = (1 : Seg5.F) + (-1 : Seg5.F) * seg5Q4IlAtom0 rho + (-1 : Seg5.F) * seg5Q4IlAtom1 rho + (-1 : Seg5.F) * seg5Q4IlAtom2 rho + (-1 : Seg5.F) * seg5Q4IlAtom3 rho + (-1 : Seg5.F) * seg5Q4IlAtom4 rho + (-1 : Seg5.F) * seg5Q4IlAtom5 rho + (-1 : Seg5.F) * seg5Q4IlAtom6 rho + (-1 : Seg5.F) * seg5Q4IlAtom7 rho + (-1 : Seg5.F) * seg5Q4IlAtom8 rho + (-1 : Seg5.F) * seg5Q4IlAtom9 rho + (-1 : Seg5.F) * seg5Q4IlAtom10 rho + (-1 : Seg5.F) * seg5Q4IlAtom11 rho + (-1 : Seg5.F) * seg5Q4IlAtom12 rho + (-1 : Seg5.F) * seg5Q4IlAtom13 rho + (-1 : Seg5.F) * seg5Q4IlAtom14 rho + (-1 : Seg5.F) * seg5Q4IlAtom15 rho + (-1 : Seg5.F) * seg5Q4IlAtom16 rho + seg5Q4IlAtom17 rho + (-1 : Seg5.F) * seg5Q4IlAtom18 rho + (-1 : Seg5.F) * seg5Q4IlAtom19 rho + (-1 : Seg5.F) * seg5Q4IlAtom20 rho + (-1 : Seg5.F) * seg5Q4IlAtom21 rho + (-1 : Seg5.F) * seg5Q4IlAtom22 rho + (-1 : Seg5.F) * seg5Q4IlAtom23 rho + (-1 : Seg5.F) * seg5Q4IlAtom24 rho + (-1 : Seg5.F) * seg5Q4IlAtom25 rho + (-1 : Seg5.F) * seg5Q4IlAtom26 rho + (-1 : Seg5.F) * seg5Q4IlAtom27 rho + (-1 : Seg5.F) * seg5Q4IlAtom28 rho + (-1 : Seg5.F) * seg5Q4IlAtom29 rho + (-1 : Seg5.F) * seg5Q4IlAtom30 rho + (-1 : Seg5.F) * seg5Q4IlAtom31 rho + (-1 : Seg5.F) * seg5Q4IlAtom32 rho + (-1 : Seg5.F) * seg5Q4IlAtom33 rho + seg5Q4IlAtom34 rho + (-1 : Seg5.F) * seg5Q4IlAtom35 rho + (-1 : Seg5.F) * seg5Q4IlAtom36 rho + (-1 : Seg5.F) * seg5Q4IlAtom37 rho + (-1 : Seg5.F) * seg5Q4IlAtom38 rho + (-1 : Seg5.F) * seg5Q4IlAtom39 rho + (-1 : Seg5.F) * seg5Q4IlAtom40 rho + (-1 : Seg5.F) * seg5Q4IlAtom41 rho + (-1 : Seg5.F) * seg5Q4IlAtom42 rho + (-1 : Seg5.F) * seg5Q4IlAtom43 rho + (-1 : Seg5.F) * seg5Q4IlAtom44 rho + (-1 : Seg5.F) * seg5Q4IlAtom45 rho + (-1 : Seg5.F) * seg5Q4IlAtom46 rho + (-1 : Seg5.F) * seg5Q4IlAtom47 rho + (-1 : Seg5.F) * seg5Q4IlAtom48 rho + (-1 : Seg5.F) * seg5Q4IlAtom49 rho + (-1 : Seg5.F) * seg5Q4IlAtom50 rho + seg5Q4IlAtom51 rho + (-1 : Seg5.F) * seg5Q4IlAtom52 rho + (-1 : Seg5.F) * seg5Q4IlAtom53 rho + (-1 : Seg5.F) * seg5Q4IlAtom54 rho + (-1 : Seg5.F) * seg5Q4IlAtom55 rho + (-1 : Seg5.F) * seg5Q4IlAtom56 rho + (-1 : Seg5.F) * seg5Q4IlAtom57 rho + (-1 : Seg5.F) * seg5Q4IlAtom58 rho + (-1 : Seg5.F) * seg5Q4IlAtom59 rho + (-1 : Seg5.F) * seg5Q4IlAtom60 rho + (-1 : Seg5.F) * seg5Q4IlAtom61 rho := by
  unfold Seg5.relationLc177
  rw [seg5Q4relationLc177Part0Atom rho, seg5Q4relationLc177Part1Atom rho, seg5Q4relationLc177Part2Atom rho, seg5Q4relationLc177Part3Atom rho] <;> ring

theorem seg5Q4Step97IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc135 rho = seg5Q4Il98 rho := by
  rw [seg5Q4relationLc135Atom rho]
  exact (seg5Q4Il98Atoms rho).symm

theorem seg5Q4Step96IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc136 rho = seg5Q4Il97 rho := by
  rw [seg5Q4relationLc136Atom rho]
  exact (seg5Q4Il97Atoms rho).symm

theorem seg5Q4Step95IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc137 rho = seg5Q4Il96 rho := by
  rw [seg5Q4relationLc137Atom rho]
  exact (seg5Q4Il96Atoms rho).symm

theorem seg5Q4Step93IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc138 rho = seg5Q4Il94 rho := by
  rw [seg5Q4relationLc138Atom rho]
  exact (seg5Q4Il94Atoms rho).symm

theorem seg5Q4Step92IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc139 rho = seg5Q4Il93 rho := by
  rw [seg5Q4relationLc139Atom rho]
  exact (seg5Q4Il93Atoms rho).symm

theorem seg5Q4Step91IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc140 rho = seg5Q4Il92 rho := by
  rw [seg5Q4relationLc140Atom rho]
  exact (seg5Q4Il92Atoms rho).symm

theorem seg5Q4Step90IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc141 rho = seg5Q4Il91 rho := by
  rw [seg5Q4relationLc141Atom rho]
  exact (seg5Q4Il91Atoms rho).symm

theorem seg5Q4Step89IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc142 rho = seg5Q4Il90 rho := by
  rw [seg5Q4relationLc142Atom rho]
  exact (seg5Q4Il90Atoms rho).symm

theorem seg5Q4Step88IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc143 rho = seg5Q4Il89 rho := by
  rw [seg5Q4relationLc143Atom rho]
  exact (seg5Q4Il89Atoms rho).symm

theorem seg5Q4Step83IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc144 rho = seg5Q4Il84 rho := by
  rw [seg5Q4relationLc144Atom rho]
  exact (seg5Q4Il84Atoms rho).symm

theorem seg5Q4Step82IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc145 rho = seg5Q4Il83 rho := by
  rw [seg5Q4relationLc145Atom rho]
  exact (seg5Q4Il83Atoms rho).symm

theorem seg5Q4Step80IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc146 rho = seg5Q4Il81 rho := by
  rw [seg5Q4relationLc146Atom rho]
  exact (seg5Q4Il81Atoms rho).symm

theorem seg5Q4Step79IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc147 rho = seg5Q4Il80 rho := by
  rw [seg5Q4relationLc147Atom rho]
  exact (seg5Q4Il80Atoms rho).symm

theorem seg5Q4Step78IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc148 rho = seg5Q4Il79 rho := by
  rw [seg5Q4relationLc148Atom rho]
  exact (seg5Q4Il79Atoms rho).symm

theorem seg5Q4Step76IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc149 rho = seg5Q4Il77 rho := by
  rw [seg5Q4relationLc149Atom rho]
  exact (seg5Q4Il77Atoms rho).symm

theorem seg5Q4Step74IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc150 rho = seg5Q4Il75 rho := by
  rw [seg5Q4relationLc150Atom rho]
  exact (seg5Q4Il75Atoms rho).symm

theorem seg5Q4Step66IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc151 rho = seg5Q4Il67 rho := by
  rw [seg5Q4relationLc151Atom rho]
  exact (seg5Q4Il67Atoms rho).symm

theorem seg5Q4Step65IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc152 rho = seg5Q4Il66 rho := by
  rw [seg5Q4relationLc152Atom rho]
  exact (seg5Q4Il66Atoms rho).symm

theorem seg5Q4Step61IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc153 rho = seg5Q4Il62 rho := by
  rw [seg5Q4relationLc153Atom rho]
  exact (seg5Q4Il62Atoms rho).symm

theorem seg5Q4Step58IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc154 rho = seg5Q4Il59 rho := by
  rw [seg5Q4relationLc154Atom rho]
  exact (seg5Q4Il59Atoms rho).symm

theorem seg5Q4Step55IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc155 rho = seg5Q4Il56 rho := by
  rw [seg5Q4relationLc155Atom rho]
  exact (seg5Q4Il56Atoms rho).symm

theorem seg5Q4Step53IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc156 rho = seg5Q4Il54 rho := by
  rw [seg5Q4relationLc156Atom rho]
  exact (seg5Q4Il54Atoms rho).symm

theorem seg5Q4Step50IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc157 rho = seg5Q4Il51 rho := by
  rw [seg5Q4relationLc157Atom rho]
  exact (seg5Q4Il51Atoms rho).symm

theorem seg5Q4Step48IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc158 rho = seg5Q4Il49 rho := by
  rw [seg5Q4relationLc158Atom rho]
  exact (seg5Q4Il49Atoms rho).symm

theorem seg5Q4Step47IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc159 rho = seg5Q4Il48 rho := by
  rw [seg5Q4relationLc159Atom rho]
  exact (seg5Q4Il48Atoms rho).symm

theorem seg5Q4Step46IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc160 rho = seg5Q4Il47 rho := by
  rw [seg5Q4relationLc160Atom rho]
  exact (seg5Q4Il47Atoms rho).symm

theorem seg5Q4Step42IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc161 rho = seg5Q4Il43 rho := by
  rw [seg5Q4relationLc161Atom rho]
  exact (seg5Q4Il43Atoms rho).symm

theorem seg5Q4Step40IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc162 rho = seg5Q4Il41 rho := by
  rw [seg5Q4relationLc162Atom rho]
  exact (seg5Q4Il41Atoms rho).symm

theorem seg5Q4Step39IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc163 rho = seg5Q4Il40 rho := by
  rw [seg5Q4relationLc163Atom rho]
  exact (seg5Q4Il40Atoms rho).symm

theorem seg5Q4Step36IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc164 rho = seg5Q4Il37 rho := by
  rw [seg5Q4relationLc164Atom rho]
  exact (seg5Q4Il37Atoms rho).symm

theorem seg5Q4Step34IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc165 rho = seg5Q4Il35 rho := by
  rw [seg5Q4relationLc165Atom rho]
  exact (seg5Q4Il35Atoms rho).symm

theorem seg5Q4Step31IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc166 rho = seg5Q4Il32 rho := by
  rw [seg5Q4relationLc166Atom rho]
  exact (seg5Q4Il32Atoms rho).symm

theorem seg5Q4Step30IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc167 rho = seg5Q4Il31 rho := by
  rw [seg5Q4relationLc167Atom rho]
  exact (seg5Q4Il31Atoms rho).symm

theorem seg5Q4Step29IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc168 rho = seg5Q4Il30 rho := by
  rw [seg5Q4relationLc168Atom rho]
  exact (seg5Q4Il30Atoms rho).symm

theorem seg5Q4Step28IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc169 rho = seg5Q4Il29 rho := by
  rw [seg5Q4relationLc169Atom rho]
  exact (seg5Q4Il29Atoms rho).symm

theorem seg5Q4Step25IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc170 rho = seg5Q4Il26 rho := by
  rw [seg5Q4relationLc170Atom rho]
  exact (seg5Q4Il26Atoms rho).symm

theorem seg5Q4Step24IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc171 rho = seg5Q4Il25 rho := by
  rw [seg5Q4relationLc171Atom rho]
  exact (seg5Q4Il25Atoms rho).symm

theorem seg5Q4Step15IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc172 rho = seg5Q4Il16 rho := by
  rw [seg5Q4relationLc172Atom rho]
  exact (seg5Q4Il16Atoms rho).symm

theorem seg5Q4Step12IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc173 rho = seg5Q4Il13 rho := by
  rw [seg5Q4relationLc173Atom rho]
  exact (seg5Q4Il13Atoms rho).symm

theorem seg5Q4Step11IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc174 rho = seg5Q4Il12 rho := by
  rw [seg5Q4relationLc174Atom rho]
  exact (seg5Q4Il12Atoms rho).symm

theorem seg5Q4Step2IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc175 rho = seg5Q4Il3 rho := by
  rw [seg5Q4relationLc175Atom rho]
  exact (seg5Q4Il3Atoms rho).symm

theorem seg5Q4Step0IlLc (rho : Nat -> Seg5.F) : Seg5.relationLc176 rho = seg5Q4Il1 rho := by
  rw [seg5Q4relationLc176Atom rho]
  exact (seg5Q4Il1Atoms rho).symm

theorem seg5Q4TerminalIlLc (rho : Nat -> Seg5.F) : Seg5.relationLc177 rho = 1 - seg5Q4Il0 rho := by
  rw [seg5Q4relationLc177Atom rho]
  rw [seg5Q4Il0Atoms rho]
  ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
