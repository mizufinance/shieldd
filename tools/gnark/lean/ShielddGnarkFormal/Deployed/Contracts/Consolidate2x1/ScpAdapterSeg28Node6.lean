import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode6.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node6_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode6Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (7 : Seg28.F))
        (rho 166 + rho 21841) (rho 167 + rho 21842 + rho 21843)
        (rho 167 + rho 21844 + rho 21845) (rho 168 + rho 21846) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, p31, p32, p33, p34, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2477, r2478, r2479⟩
  unfold Seg28.relationPart31 at p31
  rcases p31 with ⟨r2480, r2481, r2482, r2483, r2484, r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559⟩
  unfold Seg28.relationPart32 at p32
  rcases p32 with ⟨r2560, r2561, r2562, r2563, r2564, r2565, r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578, r2579, r2580, r2581, r2582, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591, r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604, r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617, r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630, r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639⟩
  unfold Seg28.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, r2643, r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656, r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669, r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682, r2683, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, r2692, r2693, r2694, r2695, r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩
  unfold Seg28.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Seg28.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.relation (rho 166) (rho 167) (rho 168) (rho 21841) (rho 21842) (rho 21843) (rho 21844) (rho 21845) (rho 21846)
      (fun o0 o1 o2 o3 o4 => o0 = rho 22176 ∧ o1 = rho 22181 ∧ o2 = rho 22186 ∧ o3 = rho 22191 ∧ o4 = rho 22196) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg0
    refine ⟨rho 21847, rho 21848, rho 21849, rho 21850, rho 21851,
      (by unfold Seg28.relationRow2477 at r2477; linear_combination r2477), (by unfold Seg28.relationRow2478 at r2478; linear_combination r2478), (by unfold Seg28.relationRow2479 at r2479; linear_combination r2479), (by unfold Seg28.relationRow2480 at r2480; linear_combination r2480), (by unfold Seg28.relationRow2481 at r2481; linear_combination r2481), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg1
    refine ⟨rho 21852, rho 21853, rho 21854, rho 21855, rho 21856,
      (by unfold Seg28.relationRow2482 at r2482; linear_combination r2482), (by unfold Seg28.relationRow2483 at r2483; linear_combination r2483), (by unfold Seg28.relationRow2484 at r2484; linear_combination r2484), (by unfold Seg28.relationRow2485 at r2485; linear_combination r2485), (by unfold Seg28.relationRow2486 at r2486; linear_combination r2486), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg2
    refine ⟨rho 21857, rho 21858, rho 21859, rho 21860, rho 21861,
      (by unfold Seg28.relationRow2487 at r2487; linear_combination r2487), (by unfold Seg28.relationRow2488 at r2488; linear_combination r2488), (by unfold Seg28.relationRow2489 at r2489; linear_combination r2489), (by unfold Seg28.relationRow2490 at r2490; linear_combination r2490), (by unfold Seg28.relationRow2491 at r2491; linear_combination r2491), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg3
    refine ⟨rho 21862, rho 21863, rho 21864, rho 21865, rho 21866,
      (by unfold Seg28.relationRow2492 at r2492; linear_combination r2492), (by unfold Seg28.relationRow2493 at r2493; linear_combination r2493), (by unfold Seg28.relationRow2494 at r2494; linear_combination r2494), (by unfold Seg28.relationRow2495 at r2495; linear_combination r2495), (by unfold Seg28.relationRow2496 at r2496; linear_combination r2496), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg4
    refine ⟨rho 21867, rho 21868, rho 21869, rho 21870, rho 21871,
      (by unfold Seg28.relationRow2497 at r2497; linear_combination r2497), (by unfold Seg28.relationRow2498 at r2498; linear_combination r2498), (by unfold Seg28.relationRow2499 at r2499; linear_combination r2499), (by unfold Seg28.relationRow2500 at r2500; linear_combination r2500), (by unfold Seg28.relationRow2501 at r2501; linear_combination r2501), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg5
    refine ⟨rho 21872, rho 21873, rho 21874, rho 21875, rho 21876,
      (by unfold Seg28.relationRow2502 at r2502; linear_combination r2502), (by unfold Seg28.relationRow2503 at r2503; linear_combination r2503), (by unfold Seg28.relationRow2504 at r2504; linear_combination r2504), (by unfold Seg28.relationRow2505 at r2505; linear_combination r2505), (by unfold Seg28.relationRow2506 at r2506; linear_combination r2506), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg6
    refine ⟨rho 21877, rho 21878, rho 21879, rho 21880, rho 21881,
      (by unfold Seg28.relationRow2507 at r2507; linear_combination r2507), (by unfold Seg28.relationRow2508 at r2508; linear_combination r2508), (by unfold Seg28.relationRow2509 at r2509; linear_combination r2509), (by unfold Seg28.relationRow2510 at r2510; linear_combination r2510), (by unfold Seg28.relationRow2511 at r2511; linear_combination r2511), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg7
    refine ⟨rho 21882, rho 21883, rho 21884, rho 21885, rho 21886,
      (by unfold Seg28.relationRow2512 at r2512; linear_combination r2512), (by unfold Seg28.relationRow2513 at r2513; linear_combination r2513), (by unfold Seg28.relationRow2514 at r2514; linear_combination r2514), (by unfold Seg28.relationRow2515 at r2515; linear_combination r2515), (by unfold Seg28.relationRow2516 at r2516; linear_combination r2516), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg8
    refine ⟨rho 21887, rho 21888, rho 21889, rho 21890, rho 21891,
      (by unfold Seg28.relationRow2517 at r2517; linear_combination r2517), (by unfold Seg28.relationRow2518 at r2518; linear_combination r2518), (by unfold Seg28.relationRow2519 at r2519; linear_combination r2519), (by unfold Seg28.relationRow2520 at r2520; linear_combination r2520), (by unfold Seg28.relationRow2521 at r2521; linear_combination r2521), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg9
    refine ⟨rho 21892, rho 21893, rho 21894, rho 21895, rho 21896,
      (by unfold Seg28.relationRow2522 at r2522; linear_combination r2522), (by unfold Seg28.relationRow2523 at r2523; linear_combination r2523), (by unfold Seg28.relationRow2524 at r2524; linear_combination r2524), (by unfold Seg28.relationRow2525 at r2525; linear_combination r2525), (by unfold Seg28.relationRow2526 at r2526; linear_combination r2526), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg10
    refine ⟨rho 21897, rho 21898, rho 21899, rho 21900, rho 21901,
      (by unfold Seg28.relationRow2527 at r2527; linear_combination r2527), (by unfold Seg28.relationRow2528 at r2528; linear_combination r2528), (by unfold Seg28.relationRow2529 at r2529; linear_combination r2529), (by unfold Seg28.relationRow2530 at r2530; linear_combination r2530), (by unfold Seg28.relationRow2531 at r2531; linear_combination r2531), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg11
    refine ⟨rho 21902, rho 21903, rho 21904, rho 21905, rho 21906,
      (by unfold Seg28.relationRow2532 at r2532; linear_combination r2532), (by unfold Seg28.relationRow2533 at r2533; linear_combination r2533), (by unfold Seg28.relationRow2534 at r2534; linear_combination r2534), (by unfold Seg28.relationRow2535 at r2535; linear_combination r2535), (by unfold Seg28.relationRow2536 at r2536; linear_combination r2536), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg12
    refine ⟨rho 21907, rho 21908, rho 21909, rho 21910, rho 21911,
      (by unfold Seg28.relationRow2537 at r2537; linear_combination r2537), (by unfold Seg28.relationRow2538 at r2538; linear_combination r2538), (by unfold Seg28.relationRow2539 at r2539; linear_combination r2539), (by unfold Seg28.relationRow2540 at r2540; linear_combination r2540), (by unfold Seg28.relationRow2541 at r2541; linear_combination r2541), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg13
    refine ⟨rho 21912, rho 21913, rho 21914, rho 21915, rho 21916,
      (by unfold Seg28.relationRow2542 at r2542; linear_combination r2542), (by unfold Seg28.relationRow2543 at r2543; linear_combination r2543), (by unfold Seg28.relationRow2544 at r2544; linear_combination r2544), (by unfold Seg28.relationRow2545 at r2545; linear_combination r2545), (by unfold Seg28.relationRow2546 at r2546; linear_combination r2546), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg14
    refine ⟨rho 21917, rho 21918, rho 21919, rho 21920, rho 21921,
      (by unfold Seg28.relationRow2547 at r2547; linear_combination r2547), (by unfold Seg28.relationRow2548 at r2548; linear_combination r2548), (by unfold Seg28.relationRow2549 at r2549; linear_combination r2549), (by unfold Seg28.relationRow2550 at r2550; linear_combination r2550), (by unfold Seg28.relationRow2551 at r2551; linear_combination r2551), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg15
    refine ⟨rho 21922, rho 21923, rho 21924, rho 21925, rho 21926,
      (by unfold Seg28.relationRow2552 at r2552; linear_combination r2552), (by unfold Seg28.relationRow2553 at r2553; linear_combination r2553), (by unfold Seg28.relationRow2554 at r2554; linear_combination r2554), (by unfold Seg28.relationRow2555 at r2555; linear_combination r2555), (by unfold Seg28.relationRow2556 at r2556; linear_combination r2556), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg16
    refine ⟨rho 21927, rho 21928, rho 21929, rho 21930, rho 21931,
      (by unfold Seg28.relationRow2557 at r2557; linear_combination r2557), (by unfold Seg28.relationRow2558 at r2558; linear_combination r2558), (by unfold Seg28.relationRow2559 at r2559; linear_combination r2559), (by unfold Seg28.relationRow2560 at r2560; linear_combination r2560), (by unfold Seg28.relationRow2561 at r2561; linear_combination r2561), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg17
    refine ⟨rho 21932, rho 21933, rho 21934, rho 21935, rho 21936,
      (by unfold Seg28.relationRow2562 at r2562; linear_combination r2562), (by unfold Seg28.relationRow2563 at r2563; linear_combination r2563), (by unfold Seg28.relationRow2564 at r2564; linear_combination r2564), (by unfold Seg28.relationRow2565 at r2565; linear_combination r2565), (by unfold Seg28.relationRow2566 at r2566; linear_combination r2566), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg18
    refine ⟨rho 21937, rho 21938, rho 21939, rho 21940, rho 21941,
      (by unfold Seg28.relationRow2567 at r2567; linear_combination r2567), (by unfold Seg28.relationRow2568 at r2568; linear_combination r2568), (by unfold Seg28.relationRow2569 at r2569; linear_combination r2569), (by unfold Seg28.relationRow2570 at r2570; linear_combination r2570), (by unfold Seg28.relationRow2571 at r2571; linear_combination r2571), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg19
    refine ⟨rho 21942, rho 21943, rho 21944, rho 21945, rho 21946,
      (by unfold Seg28.relationRow2572 at r2572; linear_combination r2572), (by unfold Seg28.relationRow2573 at r2573; linear_combination r2573), (by unfold Seg28.relationRow2574 at r2574; linear_combination r2574), (by unfold Seg28.relationRow2575 at r2575; linear_combination r2575), (by unfold Seg28.relationRow2576 at r2576; linear_combination r2576), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg20
    refine ⟨rho 21947, rho 21948, rho 21949, rho 21950, rho 21951,
      (by unfold Seg28.relationRow2577 at r2577; linear_combination r2577), (by unfold Seg28.relationRow2578 at r2578; linear_combination r2578), (by unfold Seg28.relationRow2579 at r2579; linear_combination r2579), (by unfold Seg28.relationRow2580 at r2580; linear_combination r2580), (by unfold Seg28.relationRow2581 at r2581; linear_combination r2581), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg21
    refine ⟨rho 21952, rho 21953, rho 21954, rho 21955, rho 21956,
      (by unfold Seg28.relationRow2582 at r2582; linear_combination r2582), (by unfold Seg28.relationRow2583 at r2583; linear_combination r2583), (by unfold Seg28.relationRow2584 at r2584; linear_combination r2584), (by unfold Seg28.relationRow2585 at r2585; linear_combination r2585), (by unfold Seg28.relationRow2586 at r2586; linear_combination r2586), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg22
    refine ⟨rho 21957, rho 21958, rho 21959, rho 21960, rho 21961,
      (by unfold Seg28.relationRow2587 at r2587; linear_combination r2587), (by unfold Seg28.relationRow2588 at r2588; linear_combination r2588), (by unfold Seg28.relationRow2589 at r2589; linear_combination r2589), (by unfold Seg28.relationRow2590 at r2590; linear_combination r2590), (by unfold Seg28.relationRow2591 at r2591; linear_combination r2591), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg23
    refine ⟨rho 21962, rho 21963, rho 21964, rho 21965, rho 21966,
      (by unfold Seg28.relationRow2592 at r2592; linear_combination r2592), (by unfold Seg28.relationRow2593 at r2593; linear_combination r2593), (by unfold Seg28.relationRow2594 at r2594; linear_combination r2594), (by unfold Seg28.relationRow2595 at r2595; linear_combination r2595), (by unfold Seg28.relationRow2596 at r2596; linear_combination r2596), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg24
    refine ⟨rho 21967, rho 21968, rho 21969, rho 21970, rho 21971,
      (by unfold Seg28.relationRow2597 at r2597; linear_combination r2597), (by unfold Seg28.relationRow2598 at r2598; linear_combination r2598), (by unfold Seg28.relationRow2599 at r2599; linear_combination r2599), (by unfold Seg28.relationRow2600 at r2600; linear_combination r2600), (by unfold Seg28.relationRow2601 at r2601; linear_combination r2601), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg25
    refine ⟨rho 21972, rho 21973, rho 21974, rho 21975, rho 21976,
      (by unfold Seg28.relationRow2602 at r2602; linear_combination r2602), (by unfold Seg28.relationRow2603 at r2603; linear_combination r2603), (by unfold Seg28.relationRow2604 at r2604; linear_combination r2604), (by unfold Seg28.relationRow2605 at r2605; linear_combination r2605), (by unfold Seg28.relationRow2606 at r2606; linear_combination r2606), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg26
    refine ⟨rho 21977, rho 21978, rho 21979, rho 21980, rho 21981,
      (by unfold Seg28.relationRow2607 at r2607; linear_combination r2607), (by unfold Seg28.relationRow2608 at r2608; linear_combination r2608), (by unfold Seg28.relationRow2609 at r2609; linear_combination r2609), (by unfold Seg28.relationRow2610 at r2610; linear_combination r2610), (by unfold Seg28.relationRow2611 at r2611; linear_combination r2611), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg27
    refine ⟨rho 21982, rho 21983, rho 21984, rho 21985, rho 21986,
      (by unfold Seg28.relationRow2612 at r2612; linear_combination r2612), (by unfold Seg28.relationRow2613 at r2613; linear_combination r2613), (by unfold Seg28.relationRow2614 at r2614; linear_combination r2614), (by unfold Seg28.relationRow2615 at r2615; linear_combination r2615), (by unfold Seg28.relationRow2616 at r2616; linear_combination r2616), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg28
    refine ⟨rho 21987, rho 21988, rho 21989, rho 21990, rho 21991,
      (by unfold Seg28.relationRow2617 at r2617; linear_combination r2617), (by unfold Seg28.relationRow2618 at r2618; linear_combination r2618), (by unfold Seg28.relationRow2619 at r2619; linear_combination r2619), (by unfold Seg28.relationRow2620 at r2620; linear_combination r2620), (by unfold Seg28.relationRow2621 at r2621; linear_combination r2621), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg29
    refine ⟨rho 21992, rho 21993, rho 21994, rho 21995, rho 21996,
      (by unfold Seg28.relationRow2622 at r2622; linear_combination r2622), (by unfold Seg28.relationRow2623 at r2623; linear_combination r2623), (by unfold Seg28.relationRow2624 at r2624; linear_combination r2624), (by unfold Seg28.relationRow2625 at r2625; linear_combination r2625), (by unfold Seg28.relationRow2626 at r2626; linear_combination r2626), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg30
    refine ⟨rho 21997, rho 21998, rho 21999, rho 22000, rho 22001,
      (by unfold Seg28.relationRow2627 at r2627; linear_combination r2627), (by unfold Seg28.relationRow2628 at r2628; linear_combination r2628), (by unfold Seg28.relationRow2629 at r2629; linear_combination r2629), (by unfold Seg28.relationRow2630 at r2630; linear_combination r2630), (by unfold Seg28.relationRow2631 at r2631; linear_combination r2631), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg31
    refine ⟨rho 22002, rho 22003, rho 22004, rho 22005, rho 22006,
      (by unfold Seg28.relationRow2632 at r2632; linear_combination r2632), (by unfold Seg28.relationRow2633 at r2633; linear_combination r2633), (by unfold Seg28.relationRow2634 at r2634; linear_combination r2634), (by unfold Seg28.relationRow2635 at r2635; linear_combination r2635), (by unfold Seg28.relationRow2636 at r2636; linear_combination r2636), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg32
    refine ⟨rho 22007, rho 22008, rho 22009, rho 22010, rho 22011,
      (by unfold Seg28.relationRow2637 at r2637; linear_combination r2637), (by unfold Seg28.relationRow2638 at r2638; linear_combination r2638), (by unfold Seg28.relationRow2639 at r2639; linear_combination r2639), (by unfold Seg28.relationRow2640 at r2640; linear_combination r2640), (by unfold Seg28.relationRow2641 at r2641; linear_combination r2641), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg33
    refine ⟨rho 22012, rho 22013, rho 22014, rho 22015, rho 22016,
      (by unfold Seg28.relationRow2642 at r2642; linear_combination r2642), (by unfold Seg28.relationRow2643 at r2643; linear_combination r2643), (by unfold Seg28.relationRow2644 at r2644; linear_combination r2644), (by unfold Seg28.relationRow2645 at r2645; linear_combination r2645), (by unfold Seg28.relationRow2646 at r2646; linear_combination r2646), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg34
    refine ⟨rho 22017, rho 22018, rho 22019, rho 22020, rho 22021,
      (by unfold Seg28.relationRow2647 at r2647; linear_combination r2647), (by unfold Seg28.relationRow2648 at r2648; linear_combination r2648), (by unfold Seg28.relationRow2649 at r2649; linear_combination r2649), (by unfold Seg28.relationRow2650 at r2650; linear_combination r2650), (by unfold Seg28.relationRow2651 at r2651; linear_combination r2651), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg35
    refine ⟨rho 22022, rho 22023, rho 22024, rho 22025, rho 22026,
      (by unfold Seg28.relationRow2652 at r2652; linear_combination r2652), (by unfold Seg28.relationRow2653 at r2653; linear_combination r2653), (by unfold Seg28.relationRow2654 at r2654; linear_combination r2654), (by unfold Seg28.relationRow2655 at r2655; linear_combination r2655), (by unfold Seg28.relationRow2656 at r2656; linear_combination r2656), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg36
    refine ⟨rho 22027, rho 22028, rho 22029, rho 22030, rho 22031,
      (by unfold Seg28.relationRow2657 at r2657; linear_combination r2657), (by unfold Seg28.relationRow2658 at r2658; linear_combination r2658), (by unfold Seg28.relationRow2659 at r2659; linear_combination r2659), (by unfold Seg28.relationRow2660 at r2660; linear_combination r2660), (by unfold Seg28.relationRow2661 at r2661; linear_combination r2661), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg37
    refine ⟨rho 22032, rho 22033, rho 22034, rho 22035, rho 22036,
      (by unfold Seg28.relationRow2662 at r2662; linear_combination r2662), (by unfold Seg28.relationRow2663 at r2663; linear_combination r2663), (by unfold Seg28.relationRow2664 at r2664; linear_combination r2664), (by unfold Seg28.relationRow2665 at r2665; linear_combination r2665), (by unfold Seg28.relationRow2666 at r2666; linear_combination r2666), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg38
    refine ⟨rho 22037, rho 22038, rho 22039, rho 22040, rho 22041,
      (by unfold Seg28.relationRow2667 at r2667; linear_combination r2667), (by unfold Seg28.relationRow2668 at r2668; linear_combination r2668), (by unfold Seg28.relationRow2669 at r2669; linear_combination r2669), (by unfold Seg28.relationRow2670 at r2670; linear_combination r2670), (by unfold Seg28.relationRow2671 at r2671; linear_combination r2671), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg39
    refine ⟨rho 22042, rho 22043, rho 22044, rho 22045, rho 22046,
      (by unfold Seg28.relationRow2672 at r2672; linear_combination r2672), (by unfold Seg28.relationRow2673 at r2673; linear_combination r2673), (by unfold Seg28.relationRow2674 at r2674; linear_combination r2674), (by unfold Seg28.relationRow2675 at r2675; linear_combination r2675), (by unfold Seg28.relationRow2676 at r2676; linear_combination r2676), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg40
    refine ⟨rho 22047, rho 22048, rho 22049, rho 22050, rho 22051,
      (by unfold Seg28.relationRow2677 at r2677; linear_combination r2677), (by unfold Seg28.relationRow2678 at r2678; linear_combination r2678), (by unfold Seg28.relationRow2679 at r2679; linear_combination r2679), (by unfold Seg28.relationRow2680 at r2680; linear_combination r2680), (by unfold Seg28.relationRow2681 at r2681; linear_combination r2681), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg41
    refine ⟨rho 22052, rho 22053, rho 22054, rho 22055, rho 22056,
      (by unfold Seg28.relationRow2682 at r2682; linear_combination r2682), (by unfold Seg28.relationRow2683 at r2683; linear_combination r2683), (by unfold Seg28.relationRow2684 at r2684; linear_combination r2684), (by unfold Seg28.relationRow2685 at r2685; linear_combination r2685), (by unfold Seg28.relationRow2686 at r2686; linear_combination r2686), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg42
    refine ⟨rho 22057, rho 22058, rho 22059, rho 22060, rho 22061,
      (by unfold Seg28.relationRow2687 at r2687; linear_combination r2687), (by unfold Seg28.relationRow2688 at r2688; linear_combination r2688), (by unfold Seg28.relationRow2689 at r2689; linear_combination r2689), (by unfold Seg28.relationRow2690 at r2690; linear_combination r2690), (by unfold Seg28.relationRow2691 at r2691; linear_combination r2691), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg43
    refine ⟨rho 22062, rho 22063, rho 22064, rho 22065, rho 22066,
      (by unfold Seg28.relationRow2692 at r2692; linear_combination r2692), (by unfold Seg28.relationRow2693 at r2693; linear_combination r2693), (by unfold Seg28.relationRow2694 at r2694; linear_combination r2694), (by unfold Seg28.relationRow2695 at r2695; linear_combination r2695), (by unfold Seg28.relationRow2696 at r2696; linear_combination r2696), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg44
    refine ⟨rho 22067, rho 22068, rho 22069, rho 22070, rho 22071,
      (by unfold Seg28.relationRow2697 at r2697; linear_combination r2697), (by unfold Seg28.relationRow2698 at r2698; linear_combination r2698), (by unfold Seg28.relationRow2699 at r2699; linear_combination r2699), (by unfold Seg28.relationRow2700 at r2700; linear_combination r2700), (by unfold Seg28.relationRow2701 at r2701; linear_combination r2701), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg45
    refine ⟨rho 22072, rho 22073, rho 22074, rho 22075, rho 22076,
      (by unfold Seg28.relationRow2702 at r2702; linear_combination r2702), (by unfold Seg28.relationRow2703 at r2703; linear_combination r2703), (by unfold Seg28.relationRow2704 at r2704; linear_combination r2704), (by unfold Seg28.relationRow2705 at r2705; linear_combination r2705), (by unfold Seg28.relationRow2706 at r2706; linear_combination r2706), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg46
    refine ⟨rho 22077, rho 22078, rho 22079, rho 22080, rho 22081,
      (by unfold Seg28.relationRow2707 at r2707; linear_combination r2707), (by unfold Seg28.relationRow2708 at r2708; linear_combination r2708), (by unfold Seg28.relationRow2709 at r2709; linear_combination r2709), (by unfold Seg28.relationRow2710 at r2710; linear_combination r2710), (by unfold Seg28.relationRow2711 at r2711; linear_combination r2711), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg47
    refine ⟨rho 22082, rho 22083, rho 22084, rho 22085, rho 22086,
      (by unfold Seg28.relationRow2712 at r2712; linear_combination r2712), (by unfold Seg28.relationRow2713 at r2713; linear_combination r2713), (by unfold Seg28.relationRow2714 at r2714; linear_combination r2714), (by unfold Seg28.relationRow2715 at r2715; linear_combination r2715), (by unfold Seg28.relationRow2716 at r2716; linear_combination r2716), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg48
    refine ⟨rho 22087, rho 22088, rho 22089, rho 22090, rho 22091,
      (by unfold Seg28.relationRow2717 at r2717; linear_combination r2717), (by unfold Seg28.relationRow2718 at r2718; linear_combination r2718), (by unfold Seg28.relationRow2719 at r2719; linear_combination r2719), (by unfold Seg28.relationRow2720 at r2720; linear_combination r2720), (by unfold Seg28.relationRow2721 at r2721; linear_combination r2721), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg49
    refine ⟨rho 22092, rho 22093, rho 22094, rho 22095, rho 22096,
      (by unfold Seg28.relationRow2722 at r2722; linear_combination r2722), (by unfold Seg28.relationRow2723 at r2723; linear_combination r2723), (by unfold Seg28.relationRow2724 at r2724; linear_combination r2724), (by unfold Seg28.relationRow2725 at r2725; linear_combination r2725), (by unfold Seg28.relationRow2726 at r2726; linear_combination r2726), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg50
    refine ⟨rho 22097, rho 22098, rho 22099, rho 22100, rho 22101,
      (by unfold Seg28.relationRow2727 at r2727; linear_combination r2727), (by unfold Seg28.relationRow2728 at r2728; linear_combination r2728), (by unfold Seg28.relationRow2729 at r2729; linear_combination r2729), (by unfold Seg28.relationRow2730 at r2730; linear_combination r2730), (by unfold Seg28.relationRow2731 at r2731; linear_combination r2731), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg51
    refine ⟨rho 22102, rho 22103, rho 22104, rho 22105, rho 22106,
      (by unfold Seg28.relationRow2732 at r2732; linear_combination r2732), (by unfold Seg28.relationRow2733 at r2733; linear_combination r2733), (by unfold Seg28.relationRow2734 at r2734; linear_combination r2734), (by unfold Seg28.relationRow2735 at r2735; linear_combination r2735), (by unfold Seg28.relationRow2736 at r2736; linear_combination r2736), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg52
    refine ⟨rho 22107, rho 22108, rho 22109, rho 22110, rho 22111,
      (by unfold Seg28.relationRow2737 at r2737; linear_combination r2737), (by unfold Seg28.relationRow2738 at r2738; linear_combination r2738), (by unfold Seg28.relationRow2739 at r2739; linear_combination r2739), (by unfold Seg28.relationRow2740 at r2740; linear_combination r2740), (by unfold Seg28.relationRow2741 at r2741; linear_combination r2741), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg53
    refine ⟨rho 22112, rho 22113, rho 22114, rho 22115, rho 22116,
      (by unfold Seg28.relationRow2742 at r2742; linear_combination r2742), (by unfold Seg28.relationRow2743 at r2743; linear_combination r2743), (by unfold Seg28.relationRow2744 at r2744; linear_combination r2744), (by unfold Seg28.relationRow2745 at r2745; linear_combination r2745), (by unfold Seg28.relationRow2746 at r2746; linear_combination r2746), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg54
    refine ⟨rho 22117, rho 22118, rho 22119, rho 22120, rho 22121,
      (by unfold Seg28.relationRow2747 at r2747; linear_combination r2747), (by unfold Seg28.relationRow2748 at r2748; linear_combination r2748), (by unfold Seg28.relationRow2749 at r2749; linear_combination r2749), (by unfold Seg28.relationRow2750 at r2750; linear_combination r2750), (by unfold Seg28.relationRow2751 at r2751; linear_combination r2751), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg55
    refine ⟨rho 22122, rho 22123, rho 22124, rho 22125, rho 22126,
      (by unfold Seg28.relationRow2752 at r2752; linear_combination r2752), (by unfold Seg28.relationRow2753 at r2753; linear_combination r2753), (by unfold Seg28.relationRow2754 at r2754; linear_combination r2754), (by unfold Seg28.relationRow2755 at r2755; linear_combination r2755), (by unfold Seg28.relationRow2756 at r2756; linear_combination r2756), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg56
    refine ⟨rho 22127, rho 22128, rho 22129, rho 22130, rho 22131,
      (by unfold Seg28.relationRow2757 at r2757; linear_combination r2757), (by unfold Seg28.relationRow2758 at r2758; linear_combination r2758), (by unfold Seg28.relationRow2759 at r2759; linear_combination r2759), (by unfold Seg28.relationRow2760 at r2760; linear_combination r2760), (by unfold Seg28.relationRow2761 at r2761; linear_combination r2761), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg57
    refine ⟨rho 22132, rho 22133, rho 22134, rho 22135, rho 22136,
      (by unfold Seg28.relationRow2762 at r2762; linear_combination r2762), (by unfold Seg28.relationRow2763 at r2763; linear_combination r2763), (by unfold Seg28.relationRow2764 at r2764; linear_combination r2764), (by unfold Seg28.relationRow2765 at r2765; linear_combination r2765), (by unfold Seg28.relationRow2766 at r2766; linear_combination r2766), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg58
    refine ⟨rho 22137, rho 22138, rho 22139, rho 22140, rho 22141,
      (by unfold Seg28.relationRow2767 at r2767; linear_combination r2767), (by unfold Seg28.relationRow2768 at r2768; linear_combination r2768), (by unfold Seg28.relationRow2769 at r2769; linear_combination r2769), (by unfold Seg28.relationRow2770 at r2770; linear_combination r2770), (by unfold Seg28.relationRow2771 at r2771; linear_combination r2771), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg59
    refine ⟨rho 22142, rho 22143, rho 22144, rho 22145, rho 22146,
      (by unfold Seg28.relationRow2772 at r2772; linear_combination r2772), (by unfold Seg28.relationRow2773 at r2773; linear_combination r2773), (by unfold Seg28.relationRow2774 at r2774; linear_combination r2774), (by unfold Seg28.relationRow2775 at r2775; linear_combination r2775), (by unfold Seg28.relationRow2776 at r2776; linear_combination r2776), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg60
    refine ⟨rho 22147, rho 22148, rho 22149, rho 22150, rho 22151,
      (by unfold Seg28.relationRow2777 at r2777; linear_combination r2777), (by unfold Seg28.relationRow2778 at r2778; linear_combination r2778), (by unfold Seg28.relationRow2779 at r2779; linear_combination r2779), (by unfold Seg28.relationRow2780 at r2780; linear_combination r2780), (by unfold Seg28.relationRow2781 at r2781; linear_combination r2781), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg61
    refine ⟨rho 22152, rho 22153, rho 22154, rho 22155, rho 22156,
      (by unfold Seg28.relationRow2782 at r2782; linear_combination r2782), (by unfold Seg28.relationRow2783 at r2783; linear_combination r2783), (by unfold Seg28.relationRow2784 at r2784; linear_combination r2784), (by unfold Seg28.relationRow2785 at r2785; linear_combination r2785), (by unfold Seg28.relationRow2786 at r2786; linear_combination r2786), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg62
    refine ⟨rho 22157, rho 22158, rho 22159, rho 22160, rho 22161,
      (by unfold Seg28.relationRow2787 at r2787; linear_combination r2787), (by unfold Seg28.relationRow2788 at r2788; linear_combination r2788), (by unfold Seg28.relationRow2789 at r2789; linear_combination r2789), (by unfold Seg28.relationRow2790 at r2790; linear_combination r2790), (by unfold Seg28.relationRow2791 at r2791; linear_combination r2791), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg63
    refine ⟨rho 22162, rho 22163, rho 22164, rho 22165, rho 22166,
      (by unfold Seg28.relationRow2792 at r2792; linear_combination r2792), (by unfold Seg28.relationRow2793 at r2793; linear_combination r2793), (by unfold Seg28.relationRow2794 at r2794; linear_combination r2794), (by unfold Seg28.relationRow2795 at r2795; linear_combination r2795), (by unfold Seg28.relationRow2796 at r2796; linear_combination r2796), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg64
    refine ⟨rho 22167, rho 22168, rho 22169, rho 22170, rho 22171,
      (by unfold Seg28.relationRow2797 at r2797; linear_combination r2797), (by unfold Seg28.relationRow2798 at r2798; linear_combination r2798), (by unfold Seg28.relationRow2799 at r2799; linear_combination r2799), (by unfold Seg28.relationRow2800 at r2800; linear_combination r2800), (by unfold Seg28.relationRow2801 at r2801; linear_combination r2801), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg65
    refine ⟨rho 22172, rho 22173, rho 22174, rho 22175, rho 22176,
      (by unfold Seg28.relationRow2802 at r2802; linear_combination r2802), (by unfold Seg28.relationRow2803 at r2803; linear_combination r2803), (by unfold Seg28.relationRow2804 at r2804; linear_combination r2804), (by unfold Seg28.relationRow2805 at r2805; linear_combination r2805), (by unfold Seg28.relationRow2806 at r2806; linear_combination r2806), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg66
    refine ⟨rho 22177, rho 22178, rho 22179, rho 22180, rho 22181,
      (by unfold Seg28.relationRow2807 at r2807; linear_combination r2807), (by unfold Seg28.relationRow2808 at r2808; linear_combination r2808), (by unfold Seg28.relationRow2809 at r2809; linear_combination r2809), (by unfold Seg28.relationRow2810 at r2810; linear_combination r2810), (by unfold Seg28.relationRow2811 at r2811; linear_combination r2811), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg67
    refine ⟨rho 22182, rho 22183, rho 22184, rho 22185, rho 22186,
      (by unfold Seg28.relationRow2812 at r2812; linear_combination r2812), (by unfold Seg28.relationRow2813 at r2813; linear_combination r2813), (by unfold Seg28.relationRow2814 at r2814; linear_combination r2814), (by unfold Seg28.relationRow2815 at r2815; linear_combination r2815), (by unfold Seg28.relationRow2816 at r2816; linear_combination r2816), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg68
    refine ⟨rho 22187, rho 22188, rho 22189, rho 22190, rho 22191,
      (by unfold Seg28.relationRow2817 at r2817; linear_combination r2817), (by unfold Seg28.relationRow2818 at r2818; linear_combination r2818), (by unfold Seg28.relationRow2819 at r2819; linear_combination r2819), (by unfold Seg28.relationRow2820 at r2820; linear_combination r2820), (by unfold Seg28.relationRow2821 at r2821; linear_combination r2821), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg69
    refine ⟨rho 22192, rho 22193, rho 22194, rho 22195, rho 22196,
      (by unfold Seg28.relationRow2822 at r2822; linear_combination r2822), (by unfold Seg28.relationRow2823 at r2823; linear_combination r2823), (by unfold Seg28.relationRow2824 at r2824; linear_combination r2824), (by unfold Seg28.relationRow2825 at r2825; linear_combination r2825), (by unfold Seg28.relationRow2826 at r2826; linear_combination r2826), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.relation_sound_permSpec (rho 166) (rho 167) (rho 168) (rho 21841) (rho 21842) (rho 21843) (rho 21844) (rho 21845) (rho 21846) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.tctNode7DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.F) + (7 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode6Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

