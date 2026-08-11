import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1159) = ((1 : F) * rho 2224)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1159) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2225)

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1160) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2225) = ((1 : F) * rho 2226)

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1159) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2227)

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2220 + (1 : F) * rho 2221) * ((1 : F) + (1 : F) * rho 2223 + (1 : F) * rho 2224 + (1 : F) * rho 2226 + (1 : F) * rho 2227) = ((1 : F) * rho 2228)

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2220) * ((1 : F) + (1 : F) * rho 2226 + (1 : F) * rho 2227) = ((1 : F) * rho 2229)

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2221) * ((1 : F) * rho 2223 + (1 : F) * rho 2224) = ((1 : F) * rho 2230)

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2229) * ((1 : F) * rho 2230) = ((1 : F) * rho 2231)

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2232) * ((1 : F) + (1 : F) * rho 2231) = ((1 : F) * rho 2229 + (1 : F) * rho 2230)

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2233) * ((1 : F) + (-1 : F) * rho 2231) = ((1 : F) * rho 2228 + (-1 : F) * rho 2229 + (-1 : F) * rho 2230)

def relationRow2407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2232) * ((1 : F) * rho 2233) = ((1 : F) * rho 2234)

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2232) * ((1 : F) * rho 2232) = ((1 : F) * rho 2235)

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2233) * ((1 : F) * rho 2233) = ((1 : F) * rho 2236)

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2237) * ((-1 : F) * rho 2235 + (1 : F) * rho 2236) = ((2 : F) * rho 2234)

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2238) * ((2 : F) + (1 : F) * rho 2235 + (-1 : F) * rho 2236) = ((1 : F) * rho 2235 + (1 : F) * rho 2236)

def relationRow2412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2237) * ((1 : F) * rho 2238) = ((1 : F) * rho 2239)

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2237) * ((1 : F) * rho 2237) = ((1 : F) * rho 2240)

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2238) * ((1 : F) * rho 2238) = ((1 : F) * rho 2241)

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2242) * ((-1 : F) * rho 2240 + (1 : F) * rho 2241) = ((2 : F) * rho 2239)

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2243) * ((2 : F) + (1 : F) * rho 2240 + (-1 : F) * rho 2241) = ((1 : F) * rho 2240 + (1 : F) * rho 2241)

def relationRow2417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2244)

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1158) * ((1 : F) * rho 1252 + (1 : F) * rho 2244) = ((1 : F) * rho 2245)

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1157) = ((1 : F) * rho 2246)

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2247)

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1158) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2247) = ((1 : F) * rho 2248)

def relationRow2422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2249)

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2242 + (1 : F) * rho 2243) * ((1 : F) + (1 : F) * rho 2245 + (1 : F) * rho 2246 + (1 : F) * rho 2248 + (1 : F) * rho 2249) = ((1 : F) * rho 2250)

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2242) * ((1 : F) + (1 : F) * rho 2248 + (1 : F) * rho 2249) = ((1 : F) * rho 2251)

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2243) * ((1 : F) * rho 2245 + (1 : F) * rho 2246) = ((1 : F) * rho 2252)

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2251) * ((1 : F) * rho 2252) = ((1 : F) * rho 2253)

def relationRow2427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2254) * ((1 : F) + (1 : F) * rho 2253) = ((1 : F) * rho 2251 + (1 : F) * rho 2252)

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2255) * ((1 : F) + (-1 : F) * rho 2253) = ((1 : F) * rho 2250 + (-1 : F) * rho 2251 + (-1 : F) * rho 2252)

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2254) * ((1 : F) * rho 2255) = ((1 : F) * rho 2256)

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2254) * ((1 : F) * rho 2254) = ((1 : F) * rho 2257)

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2255) * ((1 : F) * rho 2255) = ((1 : F) * rho 2258)

def relationRow2432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2259) * ((-1 : F) * rho 2257 + (1 : F) * rho 2258) = ((2 : F) * rho 2256)

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2260) * ((2 : F) + (1 : F) * rho 2257 + (-1 : F) * rho 2258) = ((1 : F) * rho 2257 + (1 : F) * rho 2258)

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2259) * ((1 : F) * rho 2260) = ((1 : F) * rho 2261)

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2259) * ((1 : F) * rho 2259) = ((1 : F) * rho 2262)

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2260) * ((1 : F) * rho 2260) = ((1 : F) * rho 2263)

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2264) * ((-1 : F) * rho 2262 + (1 : F) * rho 2263) = ((2 : F) * rho 2261)

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2265) * ((2 : F) + (1 : F) * rho 2262 + (-1 : F) * rho 2263) = ((1 : F) * rho 2262 + (1 : F) * rho 2263)

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2266)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * ((1 : F) * rho 1252 + (1 : F) * rho 2266) = ((1 : F) * rho 2267)

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1155) = ((1 : F) * rho 2268)

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2269)

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2269) = ((1 : F) * rho 2270)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2271)

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2264 + (1 : F) * rho 2265) * ((1 : F) + (1 : F) * rho 2267 + (1 : F) * rho 2268 + (1 : F) * rho 2270 + (1 : F) * rho 2271) = ((1 : F) * rho 2272)

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2264) * ((1 : F) + (1 : F) * rho 2270 + (1 : F) * rho 2271) = ((1 : F) * rho 2273)

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2265) * ((1 : F) * rho 2267 + (1 : F) * rho 2268) = ((1 : F) * rho 2274)

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2273) * ((1 : F) * rho 2274) = ((1 : F) * rho 2275)

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2276) * ((1 : F) + (1 : F) * rho 2275) = ((1 : F) * rho 2273 + (1 : F) * rho 2274)

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2277) * ((1 : F) + (-1 : F) * rho 2275) = ((1 : F) * rho 2272 + (-1 : F) * rho 2273 + (-1 : F) * rho 2274)

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2276) * ((1 : F) * rho 2277) = ((1 : F) * rho 2278)

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2276) * ((1 : F) * rho 2276) = ((1 : F) * rho 2279)

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2277) * ((1 : F) * rho 2277) = ((1 : F) * rho 2280)

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2281) * ((-1 : F) * rho 2279 + (1 : F) * rho 2280) = ((2 : F) * rho 2278)

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2282) * ((2 : F) + (1 : F) * rho 2279 + (-1 : F) * rho 2280) = ((1 : F) * rho 2279 + (1 : F) * rho 2280)

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2281) * ((1 : F) * rho 2282) = ((1 : F) * rho 2283)

def relationRow2457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2281) * ((1 : F) * rho 2281) = ((1 : F) * rho 2284)

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2282) * ((1 : F) * rho 2282) = ((1 : F) * rho 2285)

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2286) * ((-1 : F) * rho 2284 + (1 : F) * rho 2285) = ((2 : F) * rho 2283)

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2287) * ((2 : F) + (1 : F) * rho 2284 + (-1 : F) * rho 2285) = ((1 : F) * rho 2284 + (1 : F) * rho 2285)

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2288)

def relationRow2462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1154) * ((1 : F) * rho 1252 + (1 : F) * rho 2288) = ((1 : F) * rho 2289)

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1153) = ((1 : F) * rho 2290)

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2291)

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1154) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2291) = ((1 : F) * rho 2292)

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2293)

def relationRow2467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2286 + (1 : F) * rho 2287) * ((1 : F) + (1 : F) * rho 2289 + (1 : F) * rho 2290 + (1 : F) * rho 2292 + (1 : F) * rho 2293) = ((1 : F) * rho 2294)

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2286) * ((1 : F) + (1 : F) * rho 2292 + (1 : F) * rho 2293) = ((1 : F) * rho 2295)

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2287) * ((1 : F) * rho 2289 + (1 : F) * rho 2290) = ((1 : F) * rho 2296)

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2295) * ((1 : F) * rho 2296) = ((1 : F) * rho 2297)

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2298) * ((1 : F) + (1 : F) * rho 2297) = ((1 : F) * rho 2295 + (1 : F) * rho 2296)

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2299) * ((1 : F) + (-1 : F) * rho 2297) = ((1 : F) * rho 2294 + (-1 : F) * rho 2295 + (-1 : F) * rho 2296)

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2298) * ((1 : F) * rho 2299) = ((1 : F) * rho 2300)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2298) * ((1 : F) * rho 2298) = ((1 : F) * rho 2301)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2299) * ((1 : F) * rho 2299) = ((1 : F) * rho 2302)

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2303) * ((-1 : F) * rho 2301 + (1 : F) * rho 2302) = ((2 : F) * rho 2300)

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2304) * ((2 : F) + (1 : F) * rho 2301 + (-1 : F) * rho 2302) = ((1 : F) * rho 2301 + (1 : F) * rho 2302)

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2303) * ((1 : F) * rho 2304) = ((1 : F) * rho 2305)

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2303) * ((1 : F) * rho 2303) = ((1 : F) * rho 2306)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2304) * ((1 : F) * rho 2304) = ((1 : F) * rho 2307)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2308) * ((-1 : F) * rho 2306 + (1 : F) * rho 2307) = ((2 : F) * rho 2305)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2309) * ((2 : F) + (1 : F) * rho 2306 + (-1 : F) * rho 2307) = ((1 : F) * rho 2306 + (1 : F) * rho 2307)

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2310)

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1152) * ((1 : F) * rho 1252 + (1 : F) * rho 2310) = ((1 : F) * rho 2311)

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1151) = ((1 : F) * rho 2312)

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2313)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1152) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2313) = ((1 : F) * rho 2314)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2315)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2308 + (1 : F) * rho 2309) * ((1 : F) + (1 : F) * rho 2311 + (1 : F) * rho 2312 + (1 : F) * rho 2314 + (1 : F) * rho 2315) = ((1 : F) * rho 2316)

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2308) * ((1 : F) + (1 : F) * rho 2314 + (1 : F) * rho 2315) = ((1 : F) * rho 2317)

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2309) * ((1 : F) * rho 2311 + (1 : F) * rho 2312) = ((1 : F) * rho 2318)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2317) * ((1 : F) * rho 2318) = ((1 : F) * rho 2319)

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2320) * ((1 : F) + (1 : F) * rho 2319) = ((1 : F) * rho 2317 + (1 : F) * rho 2318)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2321) * ((1 : F) + (-1 : F) * rho 2319) = ((1 : F) * rho 2316 + (-1 : F) * rho 2317 + (-1 : F) * rho 2318)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2320) * ((1 : F) * rho 2321) = ((1 : F) * rho 2322)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2320) * ((1 : F) * rho 2320) = ((1 : F) * rho 2323)

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2321) * ((1 : F) * rho 2321) = ((1 : F) * rho 2324)

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2325) * ((-1 : F) * rho 2323 + (1 : F) * rho 2324) = ((2 : F) * rho 2322)

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2326) * ((2 : F) + (1 : F) * rho 2323 + (-1 : F) * rho 2324) = ((1 : F) * rho 2323 + (1 : F) * rho 2324)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2325) * ((1 : F) * rho 2326) = ((1 : F) * rho 2327)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2325) * ((1 : F) * rho 2325) = ((1 : F) * rho 2328)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2326) * ((1 : F) * rho 2326) = ((1 : F) * rho 2329)

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2330) * ((-1 : F) * rho 2328 + (1 : F) * rho 2329) = ((2 : F) * rho 2327)

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2331) * ((2 : F) + (1 : F) * rho 2328 + (-1 : F) * rho 2329) = ((1 : F) * rho 2328 + (1 : F) * rho 2329)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2332)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * ((1 : F) * rho 1252 + (1 : F) * rho 2332) = ((1 : F) * rho 2333)

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1149) = ((1 : F) * rho 2334)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2335)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2335) = ((1 : F) * rho 2336)

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2337)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
