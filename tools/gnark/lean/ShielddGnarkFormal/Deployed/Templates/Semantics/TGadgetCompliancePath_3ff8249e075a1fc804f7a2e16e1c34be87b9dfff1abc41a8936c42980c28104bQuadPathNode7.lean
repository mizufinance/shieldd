import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode7Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node7_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    nodeOut7 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 2587 + rho 2588) (rho 2589 + rho 2590 + rho 2591) (rho 2589 + rho 2593 + rho 2594) (rho 2592 + rho 2595) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    p32, p33, p34, p35, p36, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604, r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617, r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630, r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, r2643, r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656, r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669, r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682, r2683, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, r2692, r2693, r2694, r2695, r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 2587 + rho 2588) (rho 2589 + rho 2590 + rho 2591) (rho 2589 + rho 2593 + rho 2594) (rho 2592 + rho 2595)
      (fun w334 w339 w344 w349 w354 => w334 = rho 2925 ∧ w339 = rho 2930 ∧ w344 = rho 2935 ∧ w349 = rho 2940 ∧ w354 = rho 2945) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node7_seg0 rho _ r2595 r2596 r2597 r2598 r2599 (node7_seg1 rho _ r2600 r2601 r2602 r2603 r2604 (node7_seg2 rho _ r2605 r2606 r2607 r2608 r2609 (node7_seg3 rho _ r2610 r2611 r2612 r2613 r2614 (node7_seg4 rho _ r2615 r2616 r2617 r2618 r2619 (node7_seg5 rho _ r2620 r2621 r2622 r2623 r2624 (node7_seg6 rho _ r2625 r2626 r2627 r2628 r2629 (node7_seg7 rho _ r2630 r2631 r2632 r2633 r2634 (node7_seg8 rho _ r2635 r2636 r2637 r2638 r2639 (node7_seg9 rho _ r2640 r2641 r2642 r2643 r2644 (node7_seg10 rho _ r2645 r2646 r2647 r2648 r2649 (node7_seg11 rho _ r2650 r2651 r2652 r2653 r2654 (node7_seg12 rho _ r2655 r2656 r2657 r2658 r2659 (node7_seg13 rho _ r2660 r2661 r2662 r2663 r2664 (node7_seg14 rho _ r2665 r2666 r2667 r2668 r2669 (node7_seg15 rho _ r2670 r2671 r2672 r2673 r2674 (node7_seg16 rho _ r2675 r2676 r2677 r2678 r2679 (node7_seg17 rho _ r2680 r2681 r2682 r2683 r2684 (node7_seg18 rho _ r2685 r2686 r2687 r2688 r2689 (node7_seg19 rho _ r2690 r2691 r2692 r2693 r2694 (node7_seg20 rho _ r2695 r2696 r2697 r2698 r2699 (node7_seg21 rho _ r2700 r2701 r2702 r2703 r2704 (node7_seg22 rho _ r2705 r2706 r2707 r2708 r2709 (node7_seg23 rho _ r2710 r2711 r2712 r2713 r2714 (node7_seg24 rho _ r2715 r2716 r2717 r2718 r2719 (node7_seg25 rho _ r2720 r2721 r2722 r2723 r2724 (node7_seg26 rho _ r2725 r2726 r2727 r2728 r2729 (node7_seg27 rho _ r2730 r2731 r2732 r2733 r2734 (node7_seg28 rho _ r2735 r2736 r2737 r2738 r2739 (node7_seg29 rho _ r2740 r2741 r2742 r2743 r2744 (node7_seg30 rho _ r2745 r2746 r2747 r2748 r2749 (node7_seg31 rho _ r2750 r2751 r2752 r2753 r2754 (node7_seg32 rho _ r2755 r2756 r2757 r2758 r2759 (node7_seg33 rho _ r2760 r2761 r2762 r2763 r2764 (node7_seg34 rho _ r2765 r2766 r2767 r2768 r2769 (node7_seg35 rho _ r2770 r2771 r2772 r2773 r2774 (node7_seg36 rho _ r2775 r2776 r2777 r2778 r2779 (node7_seg37 rho _ r2780 r2781 r2782 r2783 r2784 (node7_seg38 rho _ r2785 r2786 r2787 r2788 r2789 (node7_seg39 rho _ r2790 r2791 r2792 r2793 r2794 (node7_seg40 rho _ r2795 r2796 r2797 r2798 r2799 (node7_seg41 rho _ r2800 r2801 r2802 r2803 r2804 (node7_seg42 rho _ r2805 r2806 r2807 r2808 r2809 (node7_seg43 rho _ r2810 r2811 r2812 r2813 r2814 (node7_seg44 rho _ r2815 r2816 r2817 r2818 r2819 (node7_seg45 rho _ r2820 r2821 r2822 r2823 r2824 (node7_seg46 rho _ r2825 r2826 r2827 r2828 r2829 (node7_seg47 rho _ r2830 r2831 r2832 r2833 r2834 (node7_seg48 rho _ r2835 r2836 r2837 r2838 r2839 (node7_seg49 rho _ r2840 r2841 r2842 r2843 r2844 (node7_seg50 rho _ r2845 r2846 r2847 r2848 r2849 (node7_seg51 rho _ r2850 r2851 r2852 r2853 r2854 (node7_seg52 rho _ r2855 r2856 r2857 r2858 r2859 (node7_seg53 rho _ r2860 r2861 r2862 r2863 r2864 (node7_seg54 rho _ r2865 r2866 r2867 r2868 r2869 (node7_seg55 rho _ r2870 r2871 r2872 r2873 r2874 (node7_seg56 rho _ r2875 r2876 r2877 r2878 r2879 (node7_seg57 rho _ r2880 r2881 r2882 r2883 r2884 (node7_seg58 rho _ r2885 r2886 r2887 r2888 r2889 (node7_seg59 rho _ r2890 r2891 r2892 r2893 r2894 (node7_seg60 rho _ r2895 r2896 r2897 r2898 r2899 (node7_seg61 rho _ r2900 r2901 r2902 r2903 r2904 (node7_seg62 rho _ r2905 r2906 r2907 r2908 r2909 (node7_seg63 rho _ r2910 r2911 r2912 r2913 r2914 (node7_seg64 rho _ r2915 r2916 r2917 r2918 r2919 (node7_seg65 rho _ r2920 r2921 r2922 r2923 r2924 (node7_seg66 rho _ r2925 r2926 r2927 r2928 r2929 (node7_seg67 rho _ r2930 r2931 r2932 r2933 r2934 (node7_seg68 rho _ r2935 r2936 r2937 r2938 r2939 (node7_seg69 rho _ r2940 r2941 r2942 r2943 r2944 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 2587 + rho 2588) (rho 2589 + rho 2590 + rho 2591) (rho 2589 + rho 2593 + rho 2594) (rho 2592 + rho 2595) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut7, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
