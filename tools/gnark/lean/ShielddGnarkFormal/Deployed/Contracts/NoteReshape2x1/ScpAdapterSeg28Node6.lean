import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode6.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

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
    exact seg28_scp_node6_seg0 rho _ r2477 r2478 r2479 r2480 r2481 (seg28_scp_node6_seg1 rho _ r2482 r2483 r2484 r2485 r2486 (seg28_scp_node6_seg2 rho _ r2487 r2488 r2489 r2490 r2491 (seg28_scp_node6_seg3 rho _ r2492 r2493 r2494 r2495 r2496 (seg28_scp_node6_seg4 rho _ r2497 r2498 r2499 r2500 r2501 (seg28_scp_node6_seg5 rho _ r2502 r2503 r2504 r2505 r2506 (seg28_scp_node6_seg6 rho _ r2507 r2508 r2509 r2510 r2511 (seg28_scp_node6_seg7 rho _ r2512 r2513 r2514 r2515 r2516 (seg28_scp_node6_seg8 rho _ r2517 r2518 r2519 r2520 r2521 (seg28_scp_node6_seg9 rho _ r2522 r2523 r2524 r2525 r2526 (seg28_scp_node6_seg10 rho _ r2527 r2528 r2529 r2530 r2531 (seg28_scp_node6_seg11 rho _ r2532 r2533 r2534 r2535 r2536 (seg28_scp_node6_seg12 rho _ r2537 r2538 r2539 r2540 r2541 (seg28_scp_node6_seg13 rho _ r2542 r2543 r2544 r2545 r2546 (seg28_scp_node6_seg14 rho _ r2547 r2548 r2549 r2550 r2551 (seg28_scp_node6_seg15 rho _ r2552 r2553 r2554 r2555 r2556 (seg28_scp_node6_seg16 rho _ r2557 r2558 r2559 r2560 r2561 (seg28_scp_node6_seg17 rho _ r2562 r2563 r2564 r2565 r2566 (seg28_scp_node6_seg18 rho _ r2567 r2568 r2569 r2570 r2571 (seg28_scp_node6_seg19 rho _ r2572 r2573 r2574 r2575 r2576 (seg28_scp_node6_seg20 rho _ r2577 r2578 r2579 r2580 r2581 (seg28_scp_node6_seg21 rho _ r2582 r2583 r2584 r2585 r2586 (seg28_scp_node6_seg22 rho _ r2587 r2588 r2589 r2590 r2591 (seg28_scp_node6_seg23 rho _ r2592 r2593 r2594 r2595 r2596 (seg28_scp_node6_seg24 rho _ r2597 r2598 r2599 r2600 r2601 (seg28_scp_node6_seg25 rho _ r2602 r2603 r2604 r2605 r2606 (seg28_scp_node6_seg26 rho _ r2607 r2608 r2609 r2610 r2611 (seg28_scp_node6_seg27 rho _ r2612 r2613 r2614 r2615 r2616 (seg28_scp_node6_seg28 rho _ r2617 r2618 r2619 r2620 r2621 (seg28_scp_node6_seg29 rho _ r2622 r2623 r2624 r2625 r2626 (seg28_scp_node6_seg30 rho _ r2627 r2628 r2629 r2630 r2631 (seg28_scp_node6_seg31 rho _ r2632 r2633 r2634 r2635 r2636 (seg28_scp_node6_seg32 rho _ r2637 r2638 r2639 r2640 r2641 (seg28_scp_node6_seg33 rho _ r2642 r2643 r2644 r2645 r2646 (seg28_scp_node6_seg34 rho _ r2647 r2648 r2649 r2650 r2651 (seg28_scp_node6_seg35 rho _ r2652 r2653 r2654 r2655 r2656 (seg28_scp_node6_seg36 rho _ r2657 r2658 r2659 r2660 r2661 (seg28_scp_node6_seg37 rho _ r2662 r2663 r2664 r2665 r2666 (seg28_scp_node6_seg38 rho _ r2667 r2668 r2669 r2670 r2671 (seg28_scp_node6_seg39 rho _ r2672 r2673 r2674 r2675 r2676 (seg28_scp_node6_seg40 rho _ r2677 r2678 r2679 r2680 r2681 (seg28_scp_node6_seg41 rho _ r2682 r2683 r2684 r2685 r2686 (seg28_scp_node6_seg42 rho _ r2687 r2688 r2689 r2690 r2691 (seg28_scp_node6_seg43 rho _ r2692 r2693 r2694 r2695 r2696 (seg28_scp_node6_seg44 rho _ r2697 r2698 r2699 r2700 r2701 (seg28_scp_node6_seg45 rho _ r2702 r2703 r2704 r2705 r2706 (seg28_scp_node6_seg46 rho _ r2707 r2708 r2709 r2710 r2711 (seg28_scp_node6_seg47 rho _ r2712 r2713 r2714 r2715 r2716 (seg28_scp_node6_seg48 rho _ r2717 r2718 r2719 r2720 r2721 (seg28_scp_node6_seg49 rho _ r2722 r2723 r2724 r2725 r2726 (seg28_scp_node6_seg50 rho _ r2727 r2728 r2729 r2730 r2731 (seg28_scp_node6_seg51 rho _ r2732 r2733 r2734 r2735 r2736 (seg28_scp_node6_seg52 rho _ r2737 r2738 r2739 r2740 r2741 (seg28_scp_node6_seg53 rho _ r2742 r2743 r2744 r2745 r2746 (seg28_scp_node6_seg54 rho _ r2747 r2748 r2749 r2750 r2751 (seg28_scp_node6_seg55 rho _ r2752 r2753 r2754 r2755 r2756 (seg28_scp_node6_seg56 rho _ r2757 r2758 r2759 r2760 r2761 (seg28_scp_node6_seg57 rho _ r2762 r2763 r2764 r2765 r2766 (seg28_scp_node6_seg58 rho _ r2767 r2768 r2769 r2770 r2771 (seg28_scp_node6_seg59 rho _ r2772 r2773 r2774 r2775 r2776 (seg28_scp_node6_seg60 rho _ r2777 r2778 r2779 r2780 r2781 (seg28_scp_node6_seg61 rho _ r2782 r2783 r2784 r2785 r2786 (seg28_scp_node6_seg62 rho _ r2787 r2788 r2789 r2790 r2791 (seg28_scp_node6_seg63 rho _ r2792 r2793 r2794 r2795 r2796 (seg28_scp_node6_seg64 rho _ r2797 r2798 r2799 r2800 r2801 (seg28_scp_node6_seg65 rho _ r2802 r2803 r2804 r2805 r2806 (seg28_scp_node6_seg66 rho _ r2807 r2808 r2809 r2810 r2811 (seg28_scp_node6_seg67 rho _ r2812 r2813 r2814 r2815 r2816 (seg28_scp_node6_seg68 rho _ r2817 r2818 r2819 r2820 r2821 (seg28_scp_node6_seg69 rho _ r2822 r2823 r2824 r2825 r2826 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.relation_sound_permSpec (rho 166) (rho 167) (rho 168) (rho 21841) (rho 21842) (rho 21843) (rho 21844) (rho 21845) (rho 21846) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.tctNode7DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.F) + (7 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode6Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode6.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

