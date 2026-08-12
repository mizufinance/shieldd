import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode5Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode5.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node5_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    seg33ScpNode5Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (6 : F))
        (rho 2105 + rho 2106) (rho 2107 + rho 2108 + rho 2109)
        (rho 2107 + rho 2111 + rho 2112) (rho 2110 + rho 2113) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, p27, p28, p29,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart27 at p27
  rcases p27 with ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart28 at p28
  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318, r2319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart29 at p29
  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396, r2397, r2398, r2399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart30 at p30
  rcases p30 with ⟨r2400, r2401, r2402, r2403, r2404, r2405, r2406, r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461, r2462, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.relation (rho 2105) (rho 2107) (rho 2110) (rho 2106) (rho 2108) (rho 2109) (rho 2111) (rho 2112) (rho 2113)
      (fun o0 o1 o2 o3 o4 => o0 = rho 2443 ∧ o1 = rho 2448 ∧ o2 = rho 2453 ∧ o3 = rho 2458 ∧ o4 = rho 2463) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.relation
    exact template_scp_node5_seg0 rho _ r2113 r2114 r2115 r2116 r2117 (template_scp_node5_seg1 rho _ r2118 r2119 r2120 r2121 r2122 (template_scp_node5_seg2 rho _ r2123 r2124 r2125 r2126 r2127 (template_scp_node5_seg3 rho _ r2128 r2129 r2130 r2131 r2132 (template_scp_node5_seg4 rho _ r2133 r2134 r2135 r2136 r2137 (template_scp_node5_seg5 rho _ r2138 r2139 r2140 r2141 r2142 (template_scp_node5_seg6 rho _ r2143 r2144 r2145 r2146 r2147 (template_scp_node5_seg7 rho _ r2148 r2149 r2150 r2151 r2152 (template_scp_node5_seg8 rho _ r2153 r2154 r2155 r2156 r2157 (template_scp_node5_seg9 rho _ r2158 r2159 r2160 r2161 r2162 (template_scp_node5_seg10 rho _ r2163 r2164 r2165 r2166 r2167 (template_scp_node5_seg11 rho _ r2168 r2169 r2170 r2171 r2172 (template_scp_node5_seg12 rho _ r2173 r2174 r2175 r2176 r2177 (template_scp_node5_seg13 rho _ r2178 r2179 r2180 r2181 r2182 (template_scp_node5_seg14 rho _ r2183 r2184 r2185 r2186 r2187 (template_scp_node5_seg15 rho _ r2188 r2189 r2190 r2191 r2192 (template_scp_node5_seg16 rho _ r2193 r2194 r2195 r2196 r2197 (template_scp_node5_seg17 rho _ r2198 r2199 r2200 r2201 r2202 (template_scp_node5_seg18 rho _ r2203 r2204 r2205 r2206 r2207 (template_scp_node5_seg19 rho _ r2208 r2209 r2210 r2211 r2212 (template_scp_node5_seg20 rho _ r2213 r2214 r2215 r2216 r2217 (template_scp_node5_seg21 rho _ r2218 r2219 r2220 r2221 r2222 (template_scp_node5_seg22 rho _ r2223 r2224 r2225 r2226 r2227 (template_scp_node5_seg23 rho _ r2228 r2229 r2230 r2231 r2232 (template_scp_node5_seg24 rho _ r2233 r2234 r2235 r2236 r2237 (template_scp_node5_seg25 rho _ r2238 r2239 r2240 r2241 r2242 (template_scp_node5_seg26 rho _ r2243 r2244 r2245 r2246 r2247 (template_scp_node5_seg27 rho _ r2248 r2249 r2250 r2251 r2252 (template_scp_node5_seg28 rho _ r2253 r2254 r2255 r2256 r2257 (template_scp_node5_seg29 rho _ r2258 r2259 r2260 r2261 r2262 (template_scp_node5_seg30 rho _ r2263 r2264 r2265 r2266 r2267 (template_scp_node5_seg31 rho _ r2268 r2269 r2270 r2271 r2272 (template_scp_node5_seg32 rho _ r2273 r2274 r2275 r2276 r2277 (template_scp_node5_template rho _ r2278 r2279 r2280 r2281 r2282 (template_scp_node5_seg34 rho _ r2283 r2284 r2285 r2286 r2287 (template_scp_node5_seg35 rho _ r2288 r2289 r2290 r2291 r2292 (template_scp_node5_seg36 rho _ r2293 r2294 r2295 r2296 r2297 (template_scp_node5_seg37 rho _ r2298 r2299 r2300 r2301 r2302 (template_scp_node5_seg38 rho _ r2303 r2304 r2305 r2306 r2307 (template_scp_node5_seg39 rho _ r2308 r2309 r2310 r2311 r2312 (template_scp_node5_seg40 rho _ r2313 r2314 r2315 r2316 r2317 (template_scp_node5_seg41 rho _ r2318 r2319 r2320 r2321 r2322 (template_scp_node5_seg42 rho _ r2323 r2324 r2325 r2326 r2327 (template_scp_node5_seg43 rho _ r2328 r2329 r2330 r2331 r2332 (template_scp_node5_seg44 rho _ r2333 r2334 r2335 r2336 r2337 (template_scp_node5_seg45 rho _ r2338 r2339 r2340 r2341 r2342 (template_scp_node5_seg46 rho _ r2343 r2344 r2345 r2346 r2347 (template_scp_node5_seg47 rho _ r2348 r2349 r2350 r2351 r2352 (template_scp_node5_seg48 rho _ r2353 r2354 r2355 r2356 r2357 (template_scp_node5_seg49 rho _ r2358 r2359 r2360 r2361 r2362 (template_scp_node5_seg50 rho _ r2363 r2364 r2365 r2366 r2367 (template_scp_node5_seg51 rho _ r2368 r2369 r2370 r2371 r2372 (template_scp_node5_seg52 rho _ r2373 r2374 r2375 r2376 r2377 (template_scp_node5_seg53 rho _ r2378 r2379 r2380 r2381 r2382 (template_scp_node5_seg54 rho _ r2383 r2384 r2385 r2386 r2387 (template_scp_node5_seg55 rho _ r2388 r2389 r2390 r2391 r2392 (template_scp_node5_seg56 rho _ r2393 r2394 r2395 r2396 r2397 (template_scp_node5_seg57 rho _ r2398 r2399 r2400 r2401 r2402 (template_scp_node5_seg58 rho _ r2403 r2404 r2405 r2406 r2407 (template_scp_node5_seg59 rho _ r2408 r2409 r2410 r2411 r2412 (template_scp_node5_seg60 rho _ r2413 r2414 r2415 r2416 r2417 (template_scp_node5_seg61 rho _ r2418 r2419 r2420 r2421 r2422 (template_scp_node5_seg62 rho _ r2423 r2424 r2425 r2426 r2427 (template_scp_node5_seg63 rho _ r2428 r2429 r2430 r2431 r2432 (template_scp_node5_seg64 rho _ r2433 r2434 r2435 r2436 r2437 (template_scp_node5_seg65 rho _ r2438 r2439 r2440 r2441 r2442 (template_scp_node5_seg66 rho _ r2443 r2444 r2445 r2446 r2447 (template_scp_node5_seg67 rho _ r2448 r2449 r2450 r2451 r2452 (template_scp_node5_seg68 rho _ r2453 r2454 r2455 r2456 r2457 (template_scp_node5_seg69 rho _ r2458 r2459 r2460 r2461 r2462 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.relation_sound_permSpec (rho 2105) (rho 2107) (rho 2110) (rho 2106) (rho 2108) (rho 2109) (rho 2111) (rho 2112) (rho 2113) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.tctNode6DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.F) + (6 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg33ScpNode5Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
