import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode6Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node6_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut6 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 2222 + rho 2223) (rho 2224 + rho 2225 + rho 2226) (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, p27, p28, p29, p30, p31,
    p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart28 at p28
  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318, r2319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart29 at p29
  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396, r2397, r2398, r2399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart30 at p30
  rcases p30 with ⟨r2400, r2401, r2402, r2403, r2404, r2405, r2406, r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471, r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart31 at p31
  rcases p31 with ⟨r2480, r2481, r2482, r2483, r2484, r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart32 at p32
  rcases p32 with ⟨r2560, r2561, r2562, r2563, r2564, r2565, r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578, r2579, r2580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 2222 + rho 2223) (rho 2224 + rho 2225 + rho 2226) (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230)
      (fun w334 w339 w344 w349 w354 => w334 = rho 2560 ∧ w339 = rho 2565 ∧ w344 = rho 2570 ∧ w349 = rho 2575 ∧ w354 = rho 2580) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node6_seg0 rho _ r2231 r2232 r2233 r2234 r2235 (node6_seg1 rho _ r2236 r2237 r2238 r2239 r2240 (node6_seg2 rho _ r2241 r2242 r2243 r2244 r2245 (node6_seg3 rho _ r2246 r2247 r2248 r2249 r2250 (node6_seg4 rho _ r2251 r2252 r2253 r2254 r2255 (node6_seg5 rho _ r2256 r2257 r2258 r2259 r2260 (node6_seg6 rho _ r2261 r2262 r2263 r2264 r2265 (node6_seg7 rho _ r2266 r2267 r2268 r2269 r2270 (node6_seg8 rho _ r2271 r2272 r2273 r2274 r2275 (node6_seg9 rho _ r2276 r2277 r2278 r2279 r2280 (node6_seg10 rho _ r2281 r2282 r2283 r2284 r2285 (node6_seg11 rho _ r2286 r2287 r2288 r2289 r2290 (node6_seg12 rho _ r2291 r2292 r2293 r2294 r2295 (node6_seg13 rho _ r2296 r2297 r2298 r2299 r2300 (node6_seg14 rho _ r2301 r2302 r2303 r2304 r2305 (node6_seg15 rho _ r2306 r2307 r2308 r2309 r2310 (node6_seg16 rho _ r2311 r2312 r2313 r2314 r2315 (node6_seg17 rho _ r2316 r2317 r2318 r2319 r2320 (node6_seg18 rho _ r2321 r2322 r2323 r2324 r2325 (node6_seg19 rho _ r2326 r2327 r2328 r2329 r2330 (node6_seg20 rho _ r2331 r2332 r2333 r2334 r2335 (node6_seg21 rho _ r2336 r2337 r2338 r2339 r2340 (node6_seg22 rho _ r2341 r2342 r2343 r2344 r2345 (node6_seg23 rho _ r2346 r2347 r2348 r2349 r2350 (node6_seg24 rho _ r2351 r2352 r2353 r2354 r2355 (node6_seg25 rho _ r2356 r2357 r2358 r2359 r2360 (node6_seg26 rho _ r2361 r2362 r2363 r2364 r2365 (node6_seg27 rho _ r2366 r2367 r2368 r2369 r2370 (node6_seg28 rho _ r2371 r2372 r2373 r2374 r2375 (node6_seg29 rho _ r2376 r2377 r2378 r2379 r2380 (node6_seg30 rho _ r2381 r2382 r2383 r2384 r2385 (node6_seg31 rho _ r2386 r2387 r2388 r2389 r2390 (node6_seg32 rho _ r2391 r2392 r2393 r2394 r2395 (node6_seg33 rho _ r2396 r2397 r2398 r2399 r2400 (node6_seg34 rho _ r2401 r2402 r2403 r2404 r2405 (node6_seg35 rho _ r2406 r2407 r2408 r2409 r2410 (node6_seg36 rho _ r2411 r2412 r2413 r2414 r2415 (node6_seg37 rho _ r2416 r2417 r2418 r2419 r2420 (node6_seg38 rho _ r2421 r2422 r2423 r2424 r2425 (node6_seg39 rho _ r2426 r2427 r2428 r2429 r2430 (node6_seg40 rho _ r2431 r2432 r2433 r2434 r2435 (node6_seg41 rho _ r2436 r2437 r2438 r2439 r2440 (node6_seg42 rho _ r2441 r2442 r2443 r2444 r2445 (node6_seg43 rho _ r2446 r2447 r2448 r2449 r2450 (node6_seg44 rho _ r2451 r2452 r2453 r2454 r2455 (node6_seg45 rho _ r2456 r2457 r2458 r2459 r2460 (node6_seg46 rho _ r2461 r2462 r2463 r2464 r2465 (node6_seg47 rho _ r2466 r2467 r2468 r2469 r2470 (node6_seg48 rho _ r2471 r2472 r2473 r2474 r2475 (node6_seg49 rho _ r2476 r2477 r2478 r2479 r2480 (node6_seg50 rho _ r2481 r2482 r2483 r2484 r2485 (node6_seg51 rho _ r2486 r2487 r2488 r2489 r2490 (node6_seg52 rho _ r2491 r2492 r2493 r2494 r2495 (node6_seg53 rho _ r2496 r2497 r2498 r2499 r2500 (node6_seg54 rho _ r2501 r2502 r2503 r2504 r2505 (node6_seg55 rho _ r2506 r2507 r2508 r2509 r2510 (node6_seg56 rho _ r2511 r2512 r2513 r2514 r2515 (node6_seg57 rho _ r2516 r2517 r2518 r2519 r2520 (node6_seg58 rho _ r2521 r2522 r2523 r2524 r2525 (node6_seg59 rho _ r2526 r2527 r2528 r2529 r2530 (node6_seg60 rho _ r2531 r2532 r2533 r2534 r2535 (node6_seg61 rho _ r2536 r2537 r2538 r2539 r2540 (node6_seg62 rho _ r2541 r2542 r2543 r2544 r2545 (node6_seg63 rho _ r2546 r2547 r2548 r2549 r2550 (node6_seg64 rho _ r2551 r2552 r2553 r2554 r2555 (node6_seg65 rho _ r2556 r2557 r2558 r2559 r2560 (node6_seg66 rho _ r2561 r2562 r2563 r2564 r2565 (node6_seg67 rho _ r2566 r2567 r2568 r2569 r2570 (node6_seg68 rho _ r2571 r2572 r2573 r2574 r2575 (node6_seg69 rho _ r2576 r2577 r2578 r2579 r2580 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 2222 + rho 2223) (rho 2224 + rho 2225 + rho 2226) (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut6, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
