import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode5.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node5_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode5Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (6 : Seg28.F))
        (rho 169 + rho 21481) (rho 170 + rho 21482 + rho 21483)
        (rho 170 + rho 21484 + rho 21485) (rho 171 + rho 21486) := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩
  unfold Seg28.relationPart27 at p27
  rcases p27 with ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239⟩
  unfold Seg28.relationPart28 at p28
  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318, r2319⟩
  unfold Seg28.relationPart29 at p29
  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396, r2397, r2398, r2399⟩
  unfold Seg28.relationPart30 at p30
  rcases p30 with ⟨r2400, r2401, r2402, r2403, r2404, r2405, r2406, r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461, r2462, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.relation (rho 169) (rho 170) (rho 171) (rho 21481) (rho 21482) (rho 21483) (rho 21484) (rho 21485) (rho 21486)
      (fun o0 o1 o2 o3 o4 => o0 = rho 21816 ∧ o1 = rho 21821 ∧ o2 = rho 21826 ∧ o3 = rho 21831 ∧ o4 = rho 21836) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg0
    refine ⟨rho 21487, rho 21488, rho 21489, rho 21490, rho 21491,
      (by unfold Seg28.relationRow2113 at r2113; linear_combination r2113), (by unfold Seg28.relationRow2114 at r2114; linear_combination r2114), (by unfold Seg28.relationRow2115 at r2115; linear_combination r2115), (by unfold Seg28.relationRow2116 at r2116; linear_combination r2116), (by unfold Seg28.relationRow2117 at r2117; linear_combination r2117), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg1
    refine ⟨rho 21492, rho 21493, rho 21494, rho 21495, rho 21496,
      (by unfold Seg28.relationRow2118 at r2118; linear_combination r2118), (by unfold Seg28.relationRow2119 at r2119; linear_combination r2119), (by unfold Seg28.relationRow2120 at r2120; linear_combination r2120), (by unfold Seg28.relationRow2121 at r2121; linear_combination r2121), (by unfold Seg28.relationRow2122 at r2122; linear_combination r2122), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg2
    refine ⟨rho 21497, rho 21498, rho 21499, rho 21500, rho 21501,
      (by unfold Seg28.relationRow2123 at r2123; linear_combination r2123), (by unfold Seg28.relationRow2124 at r2124; linear_combination r2124), (by unfold Seg28.relationRow2125 at r2125; linear_combination r2125), (by unfold Seg28.relationRow2126 at r2126; linear_combination r2126), (by unfold Seg28.relationRow2127 at r2127; linear_combination r2127), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg3
    refine ⟨rho 21502, rho 21503, rho 21504, rho 21505, rho 21506,
      (by unfold Seg28.relationRow2128 at r2128; linear_combination r2128), (by unfold Seg28.relationRow2129 at r2129; linear_combination r2129), (by unfold Seg28.relationRow2130 at r2130; linear_combination r2130), (by unfold Seg28.relationRow2131 at r2131; linear_combination r2131), (by unfold Seg28.relationRow2132 at r2132; linear_combination r2132), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg4
    refine ⟨rho 21507, rho 21508, rho 21509, rho 21510, rho 21511,
      (by unfold Seg28.relationRow2133 at r2133; linear_combination r2133), (by unfold Seg28.relationRow2134 at r2134; linear_combination r2134), (by unfold Seg28.relationRow2135 at r2135; linear_combination r2135), (by unfold Seg28.relationRow2136 at r2136; linear_combination r2136), (by unfold Seg28.relationRow2137 at r2137; linear_combination r2137), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg5
    refine ⟨rho 21512, rho 21513, rho 21514, rho 21515, rho 21516,
      (by unfold Seg28.relationRow2138 at r2138; linear_combination r2138), (by unfold Seg28.relationRow2139 at r2139; linear_combination r2139), (by unfold Seg28.relationRow2140 at r2140; linear_combination r2140), (by unfold Seg28.relationRow2141 at r2141; linear_combination r2141), (by unfold Seg28.relationRow2142 at r2142; linear_combination r2142), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg6
    refine ⟨rho 21517, rho 21518, rho 21519, rho 21520, rho 21521,
      (by unfold Seg28.relationRow2143 at r2143; linear_combination r2143), (by unfold Seg28.relationRow2144 at r2144; linear_combination r2144), (by unfold Seg28.relationRow2145 at r2145; linear_combination r2145), (by unfold Seg28.relationRow2146 at r2146; linear_combination r2146), (by unfold Seg28.relationRow2147 at r2147; linear_combination r2147), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg7
    refine ⟨rho 21522, rho 21523, rho 21524, rho 21525, rho 21526,
      (by unfold Seg28.relationRow2148 at r2148; linear_combination r2148), (by unfold Seg28.relationRow2149 at r2149; linear_combination r2149), (by unfold Seg28.relationRow2150 at r2150; linear_combination r2150), (by unfold Seg28.relationRow2151 at r2151; linear_combination r2151), (by unfold Seg28.relationRow2152 at r2152; linear_combination r2152), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg8
    refine ⟨rho 21527, rho 21528, rho 21529, rho 21530, rho 21531,
      (by unfold Seg28.relationRow2153 at r2153; linear_combination r2153), (by unfold Seg28.relationRow2154 at r2154; linear_combination r2154), (by unfold Seg28.relationRow2155 at r2155; linear_combination r2155), (by unfold Seg28.relationRow2156 at r2156; linear_combination r2156), (by unfold Seg28.relationRow2157 at r2157; linear_combination r2157), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg9
    refine ⟨rho 21532, rho 21533, rho 21534, rho 21535, rho 21536,
      (by unfold Seg28.relationRow2158 at r2158; linear_combination r2158), (by unfold Seg28.relationRow2159 at r2159; linear_combination r2159), (by unfold Seg28.relationRow2160 at r2160; linear_combination r2160), (by unfold Seg28.relationRow2161 at r2161; linear_combination r2161), (by unfold Seg28.relationRow2162 at r2162; linear_combination r2162), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg10
    refine ⟨rho 21537, rho 21538, rho 21539, rho 21540, rho 21541,
      (by unfold Seg28.relationRow2163 at r2163; linear_combination r2163), (by unfold Seg28.relationRow2164 at r2164; linear_combination r2164), (by unfold Seg28.relationRow2165 at r2165; linear_combination r2165), (by unfold Seg28.relationRow2166 at r2166; linear_combination r2166), (by unfold Seg28.relationRow2167 at r2167; linear_combination r2167), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg11
    refine ⟨rho 21542, rho 21543, rho 21544, rho 21545, rho 21546,
      (by unfold Seg28.relationRow2168 at r2168; linear_combination r2168), (by unfold Seg28.relationRow2169 at r2169; linear_combination r2169), (by unfold Seg28.relationRow2170 at r2170; linear_combination r2170), (by unfold Seg28.relationRow2171 at r2171; linear_combination r2171), (by unfold Seg28.relationRow2172 at r2172; linear_combination r2172), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg12
    refine ⟨rho 21547, rho 21548, rho 21549, rho 21550, rho 21551,
      (by unfold Seg28.relationRow2173 at r2173; linear_combination r2173), (by unfold Seg28.relationRow2174 at r2174; linear_combination r2174), (by unfold Seg28.relationRow2175 at r2175; linear_combination r2175), (by unfold Seg28.relationRow2176 at r2176; linear_combination r2176), (by unfold Seg28.relationRow2177 at r2177; linear_combination r2177), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg13
    refine ⟨rho 21552, rho 21553, rho 21554, rho 21555, rho 21556,
      (by unfold Seg28.relationRow2178 at r2178; linear_combination r2178), (by unfold Seg28.relationRow2179 at r2179; linear_combination r2179), (by unfold Seg28.relationRow2180 at r2180; linear_combination r2180), (by unfold Seg28.relationRow2181 at r2181; linear_combination r2181), (by unfold Seg28.relationRow2182 at r2182; linear_combination r2182), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg14
    refine ⟨rho 21557, rho 21558, rho 21559, rho 21560, rho 21561,
      (by unfold Seg28.relationRow2183 at r2183; linear_combination r2183), (by unfold Seg28.relationRow2184 at r2184; linear_combination r2184), (by unfold Seg28.relationRow2185 at r2185; linear_combination r2185), (by unfold Seg28.relationRow2186 at r2186; linear_combination r2186), (by unfold Seg28.relationRow2187 at r2187; linear_combination r2187), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg15
    refine ⟨rho 21562, rho 21563, rho 21564, rho 21565, rho 21566,
      (by unfold Seg28.relationRow2188 at r2188; linear_combination r2188), (by unfold Seg28.relationRow2189 at r2189; linear_combination r2189), (by unfold Seg28.relationRow2190 at r2190; linear_combination r2190), (by unfold Seg28.relationRow2191 at r2191; linear_combination r2191), (by unfold Seg28.relationRow2192 at r2192; linear_combination r2192), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg16
    refine ⟨rho 21567, rho 21568, rho 21569, rho 21570, rho 21571,
      (by unfold Seg28.relationRow2193 at r2193; linear_combination r2193), (by unfold Seg28.relationRow2194 at r2194; linear_combination r2194), (by unfold Seg28.relationRow2195 at r2195; linear_combination r2195), (by unfold Seg28.relationRow2196 at r2196; linear_combination r2196), (by unfold Seg28.relationRow2197 at r2197; linear_combination r2197), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg17
    refine ⟨rho 21572, rho 21573, rho 21574, rho 21575, rho 21576,
      (by unfold Seg28.relationRow2198 at r2198; linear_combination r2198), (by unfold Seg28.relationRow2199 at r2199; linear_combination r2199), (by unfold Seg28.relationRow2200 at r2200; linear_combination r2200), (by unfold Seg28.relationRow2201 at r2201; linear_combination r2201), (by unfold Seg28.relationRow2202 at r2202; linear_combination r2202), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg18
    refine ⟨rho 21577, rho 21578, rho 21579, rho 21580, rho 21581,
      (by unfold Seg28.relationRow2203 at r2203; linear_combination r2203), (by unfold Seg28.relationRow2204 at r2204; linear_combination r2204), (by unfold Seg28.relationRow2205 at r2205; linear_combination r2205), (by unfold Seg28.relationRow2206 at r2206; linear_combination r2206), (by unfold Seg28.relationRow2207 at r2207; linear_combination r2207), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg19
    refine ⟨rho 21582, rho 21583, rho 21584, rho 21585, rho 21586,
      (by unfold Seg28.relationRow2208 at r2208; linear_combination r2208), (by unfold Seg28.relationRow2209 at r2209; linear_combination r2209), (by unfold Seg28.relationRow2210 at r2210; linear_combination r2210), (by unfold Seg28.relationRow2211 at r2211; linear_combination r2211), (by unfold Seg28.relationRow2212 at r2212; linear_combination r2212), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg20
    refine ⟨rho 21587, rho 21588, rho 21589, rho 21590, rho 21591,
      (by unfold Seg28.relationRow2213 at r2213; linear_combination r2213), (by unfold Seg28.relationRow2214 at r2214; linear_combination r2214), (by unfold Seg28.relationRow2215 at r2215; linear_combination r2215), (by unfold Seg28.relationRow2216 at r2216; linear_combination r2216), (by unfold Seg28.relationRow2217 at r2217; linear_combination r2217), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg21
    refine ⟨rho 21592, rho 21593, rho 21594, rho 21595, rho 21596,
      (by unfold Seg28.relationRow2218 at r2218; linear_combination r2218), (by unfold Seg28.relationRow2219 at r2219; linear_combination r2219), (by unfold Seg28.relationRow2220 at r2220; linear_combination r2220), (by unfold Seg28.relationRow2221 at r2221; linear_combination r2221), (by unfold Seg28.relationRow2222 at r2222; linear_combination r2222), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg22
    refine ⟨rho 21597, rho 21598, rho 21599, rho 21600, rho 21601,
      (by unfold Seg28.relationRow2223 at r2223; linear_combination r2223), (by unfold Seg28.relationRow2224 at r2224; linear_combination r2224), (by unfold Seg28.relationRow2225 at r2225; linear_combination r2225), (by unfold Seg28.relationRow2226 at r2226; linear_combination r2226), (by unfold Seg28.relationRow2227 at r2227; linear_combination r2227), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg23
    refine ⟨rho 21602, rho 21603, rho 21604, rho 21605, rho 21606,
      (by unfold Seg28.relationRow2228 at r2228; linear_combination r2228), (by unfold Seg28.relationRow2229 at r2229; linear_combination r2229), (by unfold Seg28.relationRow2230 at r2230; linear_combination r2230), (by unfold Seg28.relationRow2231 at r2231; linear_combination r2231), (by unfold Seg28.relationRow2232 at r2232; linear_combination r2232), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg24
    refine ⟨rho 21607, rho 21608, rho 21609, rho 21610, rho 21611,
      (by unfold Seg28.relationRow2233 at r2233; linear_combination r2233), (by unfold Seg28.relationRow2234 at r2234; linear_combination r2234), (by unfold Seg28.relationRow2235 at r2235; linear_combination r2235), (by unfold Seg28.relationRow2236 at r2236; linear_combination r2236), (by unfold Seg28.relationRow2237 at r2237; linear_combination r2237), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg25
    refine ⟨rho 21612, rho 21613, rho 21614, rho 21615, rho 21616,
      (by unfold Seg28.relationRow2238 at r2238; linear_combination r2238), (by unfold Seg28.relationRow2239 at r2239; linear_combination r2239), (by unfold Seg28.relationRow2240 at r2240; linear_combination r2240), (by unfold Seg28.relationRow2241 at r2241; linear_combination r2241), (by unfold Seg28.relationRow2242 at r2242; linear_combination r2242), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg26
    refine ⟨rho 21617, rho 21618, rho 21619, rho 21620, rho 21621,
      (by unfold Seg28.relationRow2243 at r2243; linear_combination r2243), (by unfold Seg28.relationRow2244 at r2244; linear_combination r2244), (by unfold Seg28.relationRow2245 at r2245; linear_combination r2245), (by unfold Seg28.relationRow2246 at r2246; linear_combination r2246), (by unfold Seg28.relationRow2247 at r2247; linear_combination r2247), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg27
    refine ⟨rho 21622, rho 21623, rho 21624, rho 21625, rho 21626,
      (by unfold Seg28.relationRow2248 at r2248; linear_combination r2248), (by unfold Seg28.relationRow2249 at r2249; linear_combination r2249), (by unfold Seg28.relationRow2250 at r2250; linear_combination r2250), (by unfold Seg28.relationRow2251 at r2251; linear_combination r2251), (by unfold Seg28.relationRow2252 at r2252; linear_combination r2252), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg28
    refine ⟨rho 21627, rho 21628, rho 21629, rho 21630, rho 21631,
      (by unfold Seg28.relationRow2253 at r2253; linear_combination r2253), (by unfold Seg28.relationRow2254 at r2254; linear_combination r2254), (by unfold Seg28.relationRow2255 at r2255; linear_combination r2255), (by unfold Seg28.relationRow2256 at r2256; linear_combination r2256), (by unfold Seg28.relationRow2257 at r2257; linear_combination r2257), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg29
    refine ⟨rho 21632, rho 21633, rho 21634, rho 21635, rho 21636,
      (by unfold Seg28.relationRow2258 at r2258; linear_combination r2258), (by unfold Seg28.relationRow2259 at r2259; linear_combination r2259), (by unfold Seg28.relationRow2260 at r2260; linear_combination r2260), (by unfold Seg28.relationRow2261 at r2261; linear_combination r2261), (by unfold Seg28.relationRow2262 at r2262; linear_combination r2262), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg30
    refine ⟨rho 21637, rho 21638, rho 21639, rho 21640, rho 21641,
      (by unfold Seg28.relationRow2263 at r2263; linear_combination r2263), (by unfold Seg28.relationRow2264 at r2264; linear_combination r2264), (by unfold Seg28.relationRow2265 at r2265; linear_combination r2265), (by unfold Seg28.relationRow2266 at r2266; linear_combination r2266), (by unfold Seg28.relationRow2267 at r2267; linear_combination r2267), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg31
    refine ⟨rho 21642, rho 21643, rho 21644, rho 21645, rho 21646,
      (by unfold Seg28.relationRow2268 at r2268; linear_combination r2268), (by unfold Seg28.relationRow2269 at r2269; linear_combination r2269), (by unfold Seg28.relationRow2270 at r2270; linear_combination r2270), (by unfold Seg28.relationRow2271 at r2271; linear_combination r2271), (by unfold Seg28.relationRow2272 at r2272; linear_combination r2272), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg32
    refine ⟨rho 21647, rho 21648, rho 21649, rho 21650, rho 21651,
      (by unfold Seg28.relationRow2273 at r2273; linear_combination r2273), (by unfold Seg28.relationRow2274 at r2274; linear_combination r2274), (by unfold Seg28.relationRow2275 at r2275; linear_combination r2275), (by unfold Seg28.relationRow2276 at r2276; linear_combination r2276), (by unfold Seg28.relationRow2277 at r2277; linear_combination r2277), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg33
    refine ⟨rho 21652, rho 21653, rho 21654, rho 21655, rho 21656,
      (by unfold Seg28.relationRow2278 at r2278; linear_combination r2278), (by unfold Seg28.relationRow2279 at r2279; linear_combination r2279), (by unfold Seg28.relationRow2280 at r2280; linear_combination r2280), (by unfold Seg28.relationRow2281 at r2281; linear_combination r2281), (by unfold Seg28.relationRow2282 at r2282; linear_combination r2282), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg34
    refine ⟨rho 21657, rho 21658, rho 21659, rho 21660, rho 21661,
      (by unfold Seg28.relationRow2283 at r2283; linear_combination r2283), (by unfold Seg28.relationRow2284 at r2284; linear_combination r2284), (by unfold Seg28.relationRow2285 at r2285; linear_combination r2285), (by unfold Seg28.relationRow2286 at r2286; linear_combination r2286), (by unfold Seg28.relationRow2287 at r2287; linear_combination r2287), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg35
    refine ⟨rho 21662, rho 21663, rho 21664, rho 21665, rho 21666,
      (by unfold Seg28.relationRow2288 at r2288; linear_combination r2288), (by unfold Seg28.relationRow2289 at r2289; linear_combination r2289), (by unfold Seg28.relationRow2290 at r2290; linear_combination r2290), (by unfold Seg28.relationRow2291 at r2291; linear_combination r2291), (by unfold Seg28.relationRow2292 at r2292; linear_combination r2292), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg36
    refine ⟨rho 21667, rho 21668, rho 21669, rho 21670, rho 21671,
      (by unfold Seg28.relationRow2293 at r2293; linear_combination r2293), (by unfold Seg28.relationRow2294 at r2294; linear_combination r2294), (by unfold Seg28.relationRow2295 at r2295; linear_combination r2295), (by unfold Seg28.relationRow2296 at r2296; linear_combination r2296), (by unfold Seg28.relationRow2297 at r2297; linear_combination r2297), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg37
    refine ⟨rho 21672, rho 21673, rho 21674, rho 21675, rho 21676,
      (by unfold Seg28.relationRow2298 at r2298; linear_combination r2298), (by unfold Seg28.relationRow2299 at r2299; linear_combination r2299), (by unfold Seg28.relationRow2300 at r2300; linear_combination r2300), (by unfold Seg28.relationRow2301 at r2301; linear_combination r2301), (by unfold Seg28.relationRow2302 at r2302; linear_combination r2302), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg38
    refine ⟨rho 21677, rho 21678, rho 21679, rho 21680, rho 21681,
      (by unfold Seg28.relationRow2303 at r2303; linear_combination r2303), (by unfold Seg28.relationRow2304 at r2304; linear_combination r2304), (by unfold Seg28.relationRow2305 at r2305; linear_combination r2305), (by unfold Seg28.relationRow2306 at r2306; linear_combination r2306), (by unfold Seg28.relationRow2307 at r2307; linear_combination r2307), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg39
    refine ⟨rho 21682, rho 21683, rho 21684, rho 21685, rho 21686,
      (by unfold Seg28.relationRow2308 at r2308; linear_combination r2308), (by unfold Seg28.relationRow2309 at r2309; linear_combination r2309), (by unfold Seg28.relationRow2310 at r2310; linear_combination r2310), (by unfold Seg28.relationRow2311 at r2311; linear_combination r2311), (by unfold Seg28.relationRow2312 at r2312; linear_combination r2312), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg40
    refine ⟨rho 21687, rho 21688, rho 21689, rho 21690, rho 21691,
      (by unfold Seg28.relationRow2313 at r2313; linear_combination r2313), (by unfold Seg28.relationRow2314 at r2314; linear_combination r2314), (by unfold Seg28.relationRow2315 at r2315; linear_combination r2315), (by unfold Seg28.relationRow2316 at r2316; linear_combination r2316), (by unfold Seg28.relationRow2317 at r2317; linear_combination r2317), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg41
    refine ⟨rho 21692, rho 21693, rho 21694, rho 21695, rho 21696,
      (by unfold Seg28.relationRow2318 at r2318; linear_combination r2318), (by unfold Seg28.relationRow2319 at r2319; linear_combination r2319), (by unfold Seg28.relationRow2320 at r2320; linear_combination r2320), (by unfold Seg28.relationRow2321 at r2321; linear_combination r2321), (by unfold Seg28.relationRow2322 at r2322; linear_combination r2322), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg42
    refine ⟨rho 21697, rho 21698, rho 21699, rho 21700, rho 21701,
      (by unfold Seg28.relationRow2323 at r2323; linear_combination r2323), (by unfold Seg28.relationRow2324 at r2324; linear_combination r2324), (by unfold Seg28.relationRow2325 at r2325; linear_combination r2325), (by unfold Seg28.relationRow2326 at r2326; linear_combination r2326), (by unfold Seg28.relationRow2327 at r2327; linear_combination r2327), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg43
    refine ⟨rho 21702, rho 21703, rho 21704, rho 21705, rho 21706,
      (by unfold Seg28.relationRow2328 at r2328; linear_combination r2328), (by unfold Seg28.relationRow2329 at r2329; linear_combination r2329), (by unfold Seg28.relationRow2330 at r2330; linear_combination r2330), (by unfold Seg28.relationRow2331 at r2331; linear_combination r2331), (by unfold Seg28.relationRow2332 at r2332; linear_combination r2332), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg44
    refine ⟨rho 21707, rho 21708, rho 21709, rho 21710, rho 21711,
      (by unfold Seg28.relationRow2333 at r2333; linear_combination r2333), (by unfold Seg28.relationRow2334 at r2334; linear_combination r2334), (by unfold Seg28.relationRow2335 at r2335; linear_combination r2335), (by unfold Seg28.relationRow2336 at r2336; linear_combination r2336), (by unfold Seg28.relationRow2337 at r2337; linear_combination r2337), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg45
    refine ⟨rho 21712, rho 21713, rho 21714, rho 21715, rho 21716,
      (by unfold Seg28.relationRow2338 at r2338; linear_combination r2338), (by unfold Seg28.relationRow2339 at r2339; linear_combination r2339), (by unfold Seg28.relationRow2340 at r2340; linear_combination r2340), (by unfold Seg28.relationRow2341 at r2341; linear_combination r2341), (by unfold Seg28.relationRow2342 at r2342; linear_combination r2342), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg46
    refine ⟨rho 21717, rho 21718, rho 21719, rho 21720, rho 21721,
      (by unfold Seg28.relationRow2343 at r2343; linear_combination r2343), (by unfold Seg28.relationRow2344 at r2344; linear_combination r2344), (by unfold Seg28.relationRow2345 at r2345; linear_combination r2345), (by unfold Seg28.relationRow2346 at r2346; linear_combination r2346), (by unfold Seg28.relationRow2347 at r2347; linear_combination r2347), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg47
    refine ⟨rho 21722, rho 21723, rho 21724, rho 21725, rho 21726,
      (by unfold Seg28.relationRow2348 at r2348; linear_combination r2348), (by unfold Seg28.relationRow2349 at r2349; linear_combination r2349), (by unfold Seg28.relationRow2350 at r2350; linear_combination r2350), (by unfold Seg28.relationRow2351 at r2351; linear_combination r2351), (by unfold Seg28.relationRow2352 at r2352; linear_combination r2352), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg48
    refine ⟨rho 21727, rho 21728, rho 21729, rho 21730, rho 21731,
      (by unfold Seg28.relationRow2353 at r2353; linear_combination r2353), (by unfold Seg28.relationRow2354 at r2354; linear_combination r2354), (by unfold Seg28.relationRow2355 at r2355; linear_combination r2355), (by unfold Seg28.relationRow2356 at r2356; linear_combination r2356), (by unfold Seg28.relationRow2357 at r2357; linear_combination r2357), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg49
    refine ⟨rho 21732, rho 21733, rho 21734, rho 21735, rho 21736,
      (by unfold Seg28.relationRow2358 at r2358; linear_combination r2358), (by unfold Seg28.relationRow2359 at r2359; linear_combination r2359), (by unfold Seg28.relationRow2360 at r2360; linear_combination r2360), (by unfold Seg28.relationRow2361 at r2361; linear_combination r2361), (by unfold Seg28.relationRow2362 at r2362; linear_combination r2362), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg50
    refine ⟨rho 21737, rho 21738, rho 21739, rho 21740, rho 21741,
      (by unfold Seg28.relationRow2363 at r2363; linear_combination r2363), (by unfold Seg28.relationRow2364 at r2364; linear_combination r2364), (by unfold Seg28.relationRow2365 at r2365; linear_combination r2365), (by unfold Seg28.relationRow2366 at r2366; linear_combination r2366), (by unfold Seg28.relationRow2367 at r2367; linear_combination r2367), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg51
    refine ⟨rho 21742, rho 21743, rho 21744, rho 21745, rho 21746,
      (by unfold Seg28.relationRow2368 at r2368; linear_combination r2368), (by unfold Seg28.relationRow2369 at r2369; linear_combination r2369), (by unfold Seg28.relationRow2370 at r2370; linear_combination r2370), (by unfold Seg28.relationRow2371 at r2371; linear_combination r2371), (by unfold Seg28.relationRow2372 at r2372; linear_combination r2372), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg52
    refine ⟨rho 21747, rho 21748, rho 21749, rho 21750, rho 21751,
      (by unfold Seg28.relationRow2373 at r2373; linear_combination r2373), (by unfold Seg28.relationRow2374 at r2374; linear_combination r2374), (by unfold Seg28.relationRow2375 at r2375; linear_combination r2375), (by unfold Seg28.relationRow2376 at r2376; linear_combination r2376), (by unfold Seg28.relationRow2377 at r2377; linear_combination r2377), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg53
    refine ⟨rho 21752, rho 21753, rho 21754, rho 21755, rho 21756,
      (by unfold Seg28.relationRow2378 at r2378; linear_combination r2378), (by unfold Seg28.relationRow2379 at r2379; linear_combination r2379), (by unfold Seg28.relationRow2380 at r2380; linear_combination r2380), (by unfold Seg28.relationRow2381 at r2381; linear_combination r2381), (by unfold Seg28.relationRow2382 at r2382; linear_combination r2382), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg54
    refine ⟨rho 21757, rho 21758, rho 21759, rho 21760, rho 21761,
      (by unfold Seg28.relationRow2383 at r2383; linear_combination r2383), (by unfold Seg28.relationRow2384 at r2384; linear_combination r2384), (by unfold Seg28.relationRow2385 at r2385; linear_combination r2385), (by unfold Seg28.relationRow2386 at r2386; linear_combination r2386), (by unfold Seg28.relationRow2387 at r2387; linear_combination r2387), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg55
    refine ⟨rho 21762, rho 21763, rho 21764, rho 21765, rho 21766,
      (by unfold Seg28.relationRow2388 at r2388; linear_combination r2388), (by unfold Seg28.relationRow2389 at r2389; linear_combination r2389), (by unfold Seg28.relationRow2390 at r2390; linear_combination r2390), (by unfold Seg28.relationRow2391 at r2391; linear_combination r2391), (by unfold Seg28.relationRow2392 at r2392; linear_combination r2392), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg56
    refine ⟨rho 21767, rho 21768, rho 21769, rho 21770, rho 21771,
      (by unfold Seg28.relationRow2393 at r2393; linear_combination r2393), (by unfold Seg28.relationRow2394 at r2394; linear_combination r2394), (by unfold Seg28.relationRow2395 at r2395; linear_combination r2395), (by unfold Seg28.relationRow2396 at r2396; linear_combination r2396), (by unfold Seg28.relationRow2397 at r2397; linear_combination r2397), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg57
    refine ⟨rho 21772, rho 21773, rho 21774, rho 21775, rho 21776,
      (by unfold Seg28.relationRow2398 at r2398; linear_combination r2398), (by unfold Seg28.relationRow2399 at r2399; linear_combination r2399), (by unfold Seg28.relationRow2400 at r2400; linear_combination r2400), (by unfold Seg28.relationRow2401 at r2401; linear_combination r2401), (by unfold Seg28.relationRow2402 at r2402; linear_combination r2402), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg58
    refine ⟨rho 21777, rho 21778, rho 21779, rho 21780, rho 21781,
      (by unfold Seg28.relationRow2403 at r2403; linear_combination r2403), (by unfold Seg28.relationRow2404 at r2404; linear_combination r2404), (by unfold Seg28.relationRow2405 at r2405; linear_combination r2405), (by unfold Seg28.relationRow2406 at r2406; linear_combination r2406), (by unfold Seg28.relationRow2407 at r2407; linear_combination r2407), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg59
    refine ⟨rho 21782, rho 21783, rho 21784, rho 21785, rho 21786,
      (by unfold Seg28.relationRow2408 at r2408; linear_combination r2408), (by unfold Seg28.relationRow2409 at r2409; linear_combination r2409), (by unfold Seg28.relationRow2410 at r2410; linear_combination r2410), (by unfold Seg28.relationRow2411 at r2411; linear_combination r2411), (by unfold Seg28.relationRow2412 at r2412; linear_combination r2412), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg60
    refine ⟨rho 21787, rho 21788, rho 21789, rho 21790, rho 21791,
      (by unfold Seg28.relationRow2413 at r2413; linear_combination r2413), (by unfold Seg28.relationRow2414 at r2414; linear_combination r2414), (by unfold Seg28.relationRow2415 at r2415; linear_combination r2415), (by unfold Seg28.relationRow2416 at r2416; linear_combination r2416), (by unfold Seg28.relationRow2417 at r2417; linear_combination r2417), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg61
    refine ⟨rho 21792, rho 21793, rho 21794, rho 21795, rho 21796,
      (by unfold Seg28.relationRow2418 at r2418; linear_combination r2418), (by unfold Seg28.relationRow2419 at r2419; linear_combination r2419), (by unfold Seg28.relationRow2420 at r2420; linear_combination r2420), (by unfold Seg28.relationRow2421 at r2421; linear_combination r2421), (by unfold Seg28.relationRow2422 at r2422; linear_combination r2422), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg62
    refine ⟨rho 21797, rho 21798, rho 21799, rho 21800, rho 21801,
      (by unfold Seg28.relationRow2423 at r2423; linear_combination r2423), (by unfold Seg28.relationRow2424 at r2424; linear_combination r2424), (by unfold Seg28.relationRow2425 at r2425; linear_combination r2425), (by unfold Seg28.relationRow2426 at r2426; linear_combination r2426), (by unfold Seg28.relationRow2427 at r2427; linear_combination r2427), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg63
    refine ⟨rho 21802, rho 21803, rho 21804, rho 21805, rho 21806,
      (by unfold Seg28.relationRow2428 at r2428; linear_combination r2428), (by unfold Seg28.relationRow2429 at r2429; linear_combination r2429), (by unfold Seg28.relationRow2430 at r2430; linear_combination r2430), (by unfold Seg28.relationRow2431 at r2431; linear_combination r2431), (by unfold Seg28.relationRow2432 at r2432; linear_combination r2432), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg64
    refine ⟨rho 21807, rho 21808, rho 21809, rho 21810, rho 21811,
      (by unfold Seg28.relationRow2433 at r2433; linear_combination r2433), (by unfold Seg28.relationRow2434 at r2434; linear_combination r2434), (by unfold Seg28.relationRow2435 at r2435; linear_combination r2435), (by unfold Seg28.relationRow2436 at r2436; linear_combination r2436), (by unfold Seg28.relationRow2437 at r2437; linear_combination r2437), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg65
    refine ⟨rho 21812, rho 21813, rho 21814, rho 21815, rho 21816,
      (by unfold Seg28.relationRow2438 at r2438; linear_combination r2438), (by unfold Seg28.relationRow2439 at r2439; linear_combination r2439), (by unfold Seg28.relationRow2440 at r2440; linear_combination r2440), (by unfold Seg28.relationRow2441 at r2441; linear_combination r2441), (by unfold Seg28.relationRow2442 at r2442; linear_combination r2442), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg66
    refine ⟨rho 21817, rho 21818, rho 21819, rho 21820, rho 21821,
      (by unfold Seg28.relationRow2443 at r2443; linear_combination r2443), (by unfold Seg28.relationRow2444 at r2444; linear_combination r2444), (by unfold Seg28.relationRow2445 at r2445; linear_combination r2445), (by unfold Seg28.relationRow2446 at r2446; linear_combination r2446), (by unfold Seg28.relationRow2447 at r2447; linear_combination r2447), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg67
    refine ⟨rho 21822, rho 21823, rho 21824, rho 21825, rho 21826,
      (by unfold Seg28.relationRow2448 at r2448; linear_combination r2448), (by unfold Seg28.relationRow2449 at r2449; linear_combination r2449), (by unfold Seg28.relationRow2450 at r2450; linear_combination r2450), (by unfold Seg28.relationRow2451 at r2451; linear_combination r2451), (by unfold Seg28.relationRow2452 at r2452; linear_combination r2452), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg68
    refine ⟨rho 21827, rho 21828, rho 21829, rho 21830, rho 21831,
      (by unfold Seg28.relationRow2453 at r2453; linear_combination r2453), (by unfold Seg28.relationRow2454 at r2454; linear_combination r2454), (by unfold Seg28.relationRow2455 at r2455; linear_combination r2455), (by unfold Seg28.relationRow2456 at r2456; linear_combination r2456), (by unfold Seg28.relationRow2457 at r2457; linear_combination r2457), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg69
    refine ⟨rho 21832, rho 21833, rho 21834, rho 21835, rho 21836,
      (by unfold Seg28.relationRow2458 at r2458; linear_combination r2458), (by unfold Seg28.relationRow2459 at r2459; linear_combination r2459), (by unfold Seg28.relationRow2460 at r2460; linear_combination r2460), (by unfold Seg28.relationRow2461 at r2461; linear_combination r2461), (by unfold Seg28.relationRow2462 at r2462; linear_combination r2462), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.relation_sound_permSpec (rho 169) (rho 170) (rho 171) (rho 21481) (rho 21482) (rho 21483) (rho 21484) (rho 21485) (rho 21486) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.tctNode6DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.F) + (6 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode5Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

