import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs70

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2237) * ((2 : F) + (1 : F) * rho 2234 + (-1 : F) * rho 2235) = ((1 : F) * rho 2234 + (1 : F) * rho 2235)

def relationRow2232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 2238)

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 214) * ((1 : F) * rho 1818 + (1 : F) * rho 2238) = ((1 : F) * rho 2239)

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 2240)

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 2241)

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 214) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 2241) = ((1 : F) * rho 2242)

def relationRow2237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 2243)

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2236 + (1 : F) * rho 2237) * ((1 : F) + (1 : F) * rho 2239 + (1 : F) * rho 2240 + (1 : F) * rho 2242 + (1 : F) * rho 2243) = ((1 : F) * rho 2244)

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2236) * ((1 : F) + (1 : F) * rho 2242 + (1 : F) * rho 2243) = ((1 : F) * rho 2245)

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2237) * ((1 : F) * rho 2239 + (1 : F) * rho 2240) = ((1 : F) * rho 2246)

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2245) * ((1 : F) * rho 2246) = ((1 : F) * rho 2247)

def relationRow2242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2248) * ((1 : F) + (1 : F) * rho 2247) = ((1 : F) * rho 2245 + (1 : F) * rho 2246)

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2249) * ((1 : F) + (-1 : F) * rho 2247) = ((1 : F) * rho 2244 + (-1 : F) * rho 2245 + (-1 : F) * rho 2246)

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2248) * ((1 : F) * rho 2249) = ((1 : F) * rho 2250)

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2248) * ((1 : F) * rho 2248) = ((1 : F) * rho 2251)

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2249) * ((1 : F) * rho 2249) = ((1 : F) * rho 2252)

def relationRow2247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2253) * ((-1 : F) * rho 2251 + (1 : F) * rho 2252) = ((2 : F) * rho 2250)

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2254) * ((2 : F) + (1 : F) * rho 2251 + (-1 : F) * rho 2252) = ((1 : F) * rho 2251 + (1 : F) * rho 2252)

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2253) * ((1 : F) * rho 2254) = ((1 : F) * rho 2255)

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2253) * ((1 : F) * rho 2253) = ((1 : F) * rho 2256)

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2254) * ((1 : F) * rho 2254) = ((1 : F) * rho 2257)

def relationRow2252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2258) * ((-1 : F) * rho 2256 + (1 : F) * rho 2257) = ((2 : F) * rho 2255)

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2259) * ((2 : F) + (1 : F) * rho 2256 + (-1 : F) * rho 2257) = ((1 : F) * rho 2256 + (1 : F) * rho 2257)

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 2260)

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 212) * ((1 : F) * rho 1818 + (1 : F) * rho 2260) = ((1 : F) * rho 2261)

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 2262)

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 2263)

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 212) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 2263) = ((1 : F) * rho 2264)

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 2265)

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2258 + (1 : F) * rho 2259) * ((1 : F) + (1 : F) * rho 2261 + (1 : F) * rho 2262 + (1 : F) * rho 2264 + (1 : F) * rho 2265) = ((1 : F) * rho 2266)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2258) * ((1 : F) + (1 : F) * rho 2264 + (1 : F) * rho 2265) = ((1 : F) * rho 2267)

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2259) * ((1 : F) * rho 2261 + (1 : F) * rho 2262) = ((1 : F) * rho 2268)

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2267) * ((1 : F) * rho 2268) = ((1 : F) * rho 2269)

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2270) * ((1 : F) + (1 : F) * rho 2269) = ((1 : F) * rho 2267 + (1 : F) * rho 2268)

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2271) * ((1 : F) + (-1 : F) * rho 2269) = ((1 : F) * rho 2266 + (-1 : F) * rho 2267 + (-1 : F) * rho 2268)

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2270) * ((1 : F) * rho 2271) = ((1 : F) * rho 2272)

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2270) * ((1 : F) * rho 2270) = ((1 : F) * rho 2273)

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2271) * ((1 : F) * rho 2271) = ((1 : F) * rho 2274)

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2275) * ((-1 : F) * rho 2273 + (1 : F) * rho 2274) = ((2 : F) * rho 2272)

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2276) * ((2 : F) + (1 : F) * rho 2273 + (-1 : F) * rho 2274) = ((1 : F) * rho 2273 + (1 : F) * rho 2274)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2275) * ((1 : F) * rho 2276) = ((1 : F) * rho 2277)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2275) * ((1 : F) * rho 2275) = ((1 : F) * rho 2278)

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2276) * ((1 : F) * rho 2276) = ((1 : F) * rho 2279)

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2280) * ((-1 : F) * rho 2278 + (1 : F) * rho 2279) = ((2 : F) * rho 2277)

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2281) * ((2 : F) + (1 : F) * rho 2278 + (-1 : F) * rho 2279) = ((1 : F) * rho 2278 + (1 : F) * rho 2279)

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 2282)

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 210) * ((1 : F) * rho 1818 + (1 : F) * rho 2282) = ((1 : F) * rho 2283)

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 2284)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 2285)

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 210) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 2285) = ((1 : F) * rho 2286)

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 2287)

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2280 + (1 : F) * rho 2281) * ((1 : F) + (1 : F) * rho 2283 + (1 : F) * rho 2284 + (1 : F) * rho 2286 + (1 : F) * rho 2287) = ((1 : F) * rho 2288)

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2280) * ((1 : F) + (1 : F) * rho 2286 + (1 : F) * rho 2287) = ((1 : F) * rho 2289)

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2281) * ((1 : F) * rho 2283 + (1 : F) * rho 2284) = ((1 : F) * rho 2290)

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2289) * ((1 : F) * rho 2290) = ((1 : F) * rho 2291)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2292) * ((1 : F) + (1 : F) * rho 2291) = ((1 : F) * rho 2289 + (1 : F) * rho 2290)

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2293) * ((1 : F) + (-1 : F) * rho 2291) = ((1 : F) * rho 2288 + (-1 : F) * rho 2289 + (-1 : F) * rho 2290)

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2292) * ((1 : F) * rho 2293) = ((1 : F) * rho 2294)

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2292) * ((1 : F) * rho 2292) = ((1 : F) * rho 2295)

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2293) * ((1 : F) * rho 2293) = ((1 : F) * rho 2296)

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2297) * ((-1 : F) * rho 2295 + (1 : F) * rho 2296) = ((2 : F) * rho 2294)

def relationRow2292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2298) * ((2 : F) + (1 : F) * rho 2295 + (-1 : F) * rho 2296) = ((1 : F) * rho 2295 + (1 : F) * rho 2296)

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2297) * ((1 : F) * rho 2298) = ((1 : F) * rho 2299)

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2297) * ((1 : F) * rho 2297) = ((1 : F) * rho 2300)

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2298) * ((1 : F) * rho 2298) = ((1 : F) * rho 2301)

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2302) * ((-1 : F) * rho 2300 + (1 : F) * rho 2301) = ((2 : F) * rho 2299)

def relationRow2297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2303) * ((2 : F) + (1 : F) * rho 2300 + (-1 : F) * rho 2301) = ((1 : F) * rho 2300 + (1 : F) * rho 2301)

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 2304)

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 208) * ((1 : F) * rho 1818 + (1 : F) * rho 2304) = ((1 : F) * rho 2305)

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 2306)

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 2307)

def relationRow2302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 208) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 2307) = ((1 : F) * rho 2308)

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 2309)

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2302 + (1 : F) * rho 2303) * ((1 : F) + (1 : F) * rho 2305 + (1 : F) * rho 2306 + (1 : F) * rho 2308 + (1 : F) * rho 2309) = ((1 : F) * rho 2310)

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2302) * ((1 : F) + (1 : F) * rho 2308 + (1 : F) * rho 2309) = ((1 : F) * rho 2311)

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2303) * ((1 : F) * rho 2305 + (1 : F) * rho 2306) = ((1 : F) * rho 2312)

def relationRow2307 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2311) * ((1 : F) * rho 2312) = ((1 : F) * rho 2313)

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2314) * ((1 : F) + (1 : F) * rho 2313) = ((1 : F) * rho 2311 + (1 : F) * rho 2312)

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2315) * ((1 : F) + (-1 : F) * rho 2313) = ((1 : F) * rho 2310 + (-1 : F) * rho 2311 + (-1 : F) * rho 2312)

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2314) * ((1 : F) * rho 2315) = ((1 : F) * rho 2316)

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2314) * ((1 : F) * rho 2314) = ((1 : F) * rho 2317)

def relationRow2312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2315) * ((1 : F) * rho 2315) = ((1 : F) * rho 2318)

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2319) * ((-1 : F) * rho 2317 + (1 : F) * rho 2318) = ((2 : F) * rho 2316)

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2320) * ((2 : F) + (1 : F) * rho 2317 + (-1 : F) * rho 2318) = ((1 : F) * rho 2317 + (1 : F) * rho 2318)

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2319) * ((1 : F) * rho 2320) = ((1 : F) * rho 2321)

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2319) * ((1 : F) * rho 2319) = ((1 : F) * rho 2322)

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2320) * ((1 : F) * rho 2320) = ((1 : F) * rho 2323)

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2324) * ((-1 : F) * rho 2322 + (1 : F) * rho 2323) = ((2 : F) * rho 2321)

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2325) * ((2 : F) + (1 : F) * rho 2322 + (-1 : F) * rho 2323) = ((1 : F) * rho 2322 + (1 : F) * rho 2323)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 2326)

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 206) * ((1 : F) * rho 1818 + (1 : F) * rho 2326) = ((1 : F) * rho 2327)

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 2328)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 2329)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 206) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 2329) = ((1 : F) * rho 2330)

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 2331)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2324 + (1 : F) * rho 2325) * ((1 : F) + (1 : F) * rho 2327 + (1 : F) * rho 2328 + (1 : F) * rho 2330 + (1 : F) * rho 2331) = ((1 : F) * rho 2332)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2324) * ((1 : F) + (1 : F) * rho 2330 + (1 : F) * rho 2331) = ((1 : F) * rho 2333)

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2325) * ((1 : F) * rho 2327 + (1 : F) * rho 2328) = ((1 : F) * rho 2334)

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2333) * ((1 : F) * rho 2334) = ((1 : F) * rho 2335)

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2336) * ((1 : F) + (1 : F) * rho 2335) = ((1 : F) * rho 2333 + (1 : F) * rho 2334)

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2337) * ((1 : F) + (-1 : F) * rho 2335) = ((1 : F) * rho 2332 + (-1 : F) * rho 2333 + (-1 : F) * rho 2334)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2336) * ((1 : F) * rho 2337) = ((1 : F) * rho 2338)

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2336) * ((1 : F) * rho 2336) = ((1 : F) * rho 2339)

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2337) * ((1 : F) * rho 2337) = ((1 : F) * rho 2340)

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2341) * ((-1 : F) * rho 2339 + (1 : F) * rho 2340) = ((2 : F) * rho 2338)

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2342) * ((2 : F) + (1 : F) * rho 2339 + (-1 : F) * rho 2340) = ((1 : F) * rho 2339 + (1 : F) * rho 2340)

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2341) * ((1 : F) * rho 2342) = ((1 : F) * rho 2343)

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2341) * ((1 : F) * rho 2341) = ((1 : F) * rho 2344)

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2342) * ((1 : F) * rho 2342) = ((1 : F) * rho 2345)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2346) * ((-1 : F) * rho 2344 + (1 : F) * rho 2345) = ((2 : F) * rho 2343)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
