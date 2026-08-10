import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs35

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2562) * ((1 : F) * rho 2562) = ((1 : F) * rho 2565)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2563) * ((1 : F) * rho 2563) = ((1 : F) * rho 2566)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2567) * ((-1 : F) * rho 2565 + (1 : F) * rho 2566) = ((2 : F) * rho 2564)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2568) * ((2 : F) + (1 : F) * rho 2565 + (-1 : F) * rho 2566) = ((1 : F) * rho 2565 + (1 : F) * rho 2566)

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2567) * ((1 : F) * rho 2568) = ((1 : F) * rho 2569)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2567) * ((1 : F) * rho 2567) = ((1 : F) * rho 2570)

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2568) * ((1 : F) * rho 2568) = ((1 : F) * rho 2571)

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2572) * ((-1 : F) * rho 2570 + (1 : F) * rho 2571) = ((2 : F) * rho 2569)

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2573) * ((2 : F) + (1 : F) * rho 2570 + (-1 : F) * rho 2571) = ((1 : F) * rho 2570 + (1 : F) * rho 2571)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2574)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1128) * ((1 : F) * rho 1252 + (1 : F) * rho 2574) = ((1 : F) * rho 2575)

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1127) = ((1 : F) * rho 2576)

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2577)

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1128) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2577) = ((1 : F) * rho 2578)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2579)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2572 + (1 : F) * rho 2573) * ((1 : F) + (1 : F) * rho 2575 + (1 : F) * rho 2576 + (1 : F) * rho 2578 + (1 : F) * rho 2579) = ((1 : F) * rho 2580)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2572) * ((1 : F) + (1 : F) * rho 2578 + (1 : F) * rho 2579) = ((1 : F) * rho 2581)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2573) * ((1 : F) * rho 2575 + (1 : F) * rho 2576) = ((1 : F) * rho 2582)

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2581) * ((1 : F) * rho 2582) = ((1 : F) * rho 2583)

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2584) * ((1 : F) + (1 : F) * rho 2583) = ((1 : F) * rho 2581 + (1 : F) * rho 2582)

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2585) * ((1 : F) + (-1 : F) * rho 2583) = ((1 : F) * rho 2580 + (-1 : F) * rho 2581 + (-1 : F) * rho 2582)

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2584) * ((1 : F) * rho 2585) = ((1 : F) * rho 2586)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2584) * ((1 : F) * rho 2584) = ((1 : F) * rho 2587)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2585) * ((1 : F) * rho 2585) = ((1 : F) * rho 2588)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2589) * ((-1 : F) * rho 2587 + (1 : F) * rho 2588) = ((2 : F) * rho 2586)

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2590) * ((2 : F) + (1 : F) * rho 2587 + (-1 : F) * rho 2588) = ((1 : F) * rho 2587 + (1 : F) * rho 2588)

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2589) * ((1 : F) * rho 2590) = ((1 : F) * rho 2591)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2589) * ((1 : F) * rho 2589) = ((1 : F) * rho 2592)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2590) * ((1 : F) * rho 2590) = ((1 : F) * rho 2593)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2594) * ((-1 : F) * rho 2592 + (1 : F) * rho 2593) = ((2 : F) * rho 2591)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * ((2 : F) + (1 : F) * rho 2592 + (-1 : F) * rho 2593) = ((1 : F) * rho 2592 + (1 : F) * rho 2593)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2596)

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * ((1 : F) * rho 1252 + (1 : F) * rho 2596) = ((1 : F) * rho 2597)

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1125) = ((1 : F) * rho 2598)

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2599)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2599) = ((1 : F) * rho 2600)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2601)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2594 + (1 : F) * rho 2595) * ((1 : F) + (1 : F) * rho 2597 + (1 : F) * rho 2598 + (1 : F) * rho 2600 + (1 : F) * rho 2601) = ((1 : F) * rho 2602)

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2594) * ((1 : F) + (1 : F) * rho 2600 + (1 : F) * rho 2601) = ((1 : F) * rho 2603)

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * ((1 : F) * rho 2597 + (1 : F) * rho 2598) = ((1 : F) * rho 2604)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2603) * ((1 : F) * rho 2604) = ((1 : F) * rho 2605)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2606) * ((1 : F) + (1 : F) * rho 2605) = ((1 : F) * rho 2603 + (1 : F) * rho 2604)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2607) * ((1 : F) + (-1 : F) * rho 2605) = ((1 : F) * rho 2602 + (-1 : F) * rho 2603 + (-1 : F) * rho 2604)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2606) * ((1 : F) * rho 2607) = ((1 : F) * rho 2608)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2606) * ((1 : F) * rho 2606) = ((1 : F) * rho 2609)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2607) * ((1 : F) * rho 2607) = ((1 : F) * rho 2610)

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2611) * ((-1 : F) * rho 2609 + (1 : F) * rho 2610) = ((2 : F) * rho 2608)

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2612) * ((2 : F) + (1 : F) * rho 2609 + (-1 : F) * rho 2610) = ((1 : F) * rho 2609 + (1 : F) * rho 2610)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2611) * ((1 : F) * rho 2612) = ((1 : F) * rho 2613)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2611) * ((1 : F) * rho 2611) = ((1 : F) * rho 2614)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2612) * ((1 : F) * rho 2612) = ((1 : F) * rho 2615)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2616) * ((-1 : F) * rho 2614 + (1 : F) * rho 2615) = ((2 : F) * rho 2613)

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2617) * ((2 : F) + (1 : F) * rho 2614 + (-1 : F) * rho 2615) = ((1 : F) * rho 2614 + (1 : F) * rho 2615)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2618)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1124) * ((1 : F) * rho 1252 + (1 : F) * rho 2618) = ((1 : F) * rho 2619)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1123) = ((1 : F) * rho 2620)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2621)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1124) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2621) = ((1 : F) * rho 2622)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2623)

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2616 + (1 : F) * rho 2617) * ((1 : F) + (1 : F) * rho 2619 + (1 : F) * rho 2620 + (1 : F) * rho 2622 + (1 : F) * rho 2623) = ((1 : F) * rho 2624)

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2616) * ((1 : F) + (1 : F) * rho 2622 + (1 : F) * rho 2623) = ((1 : F) * rho 2625)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2617) * ((1 : F) * rho 2619 + (1 : F) * rho 2620) = ((1 : F) * rho 2626)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2625) * ((1 : F) * rho 2626) = ((1 : F) * rho 2627)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2628) * ((1 : F) + (1 : F) * rho 2627) = ((1 : F) * rho 2625 + (1 : F) * rho 2626)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2629) * ((1 : F) + (-1 : F) * rho 2627) = ((1 : F) * rho 2624 + (-1 : F) * rho 2625 + (-1 : F) * rho 2626)

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2628) * ((1 : F) * rho 2629) = ((1 : F) * rho 2630)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2628) * ((1 : F) * rho 2628) = ((1 : F) * rho 2631)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2629) * ((1 : F) * rho 2629) = ((1 : F) * rho 2632)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2633) * ((-1 : F) * rho 2631 + (1 : F) * rho 2632) = ((2 : F) * rho 2630)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * ((2 : F) + (1 : F) * rho 2631 + (-1 : F) * rho 2632) = ((1 : F) * rho 2631 + (1 : F) * rho 2632)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2633) * ((1 : F) * rho 2634) = ((1 : F) * rho 2635)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2633) * ((1 : F) * rho 2633) = ((1 : F) * rho 2636)

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * ((1 : F) * rho 2634) = ((1 : F) * rho 2637)

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2638) * ((-1 : F) * rho 2636 + (1 : F) * rho 2637) = ((2 : F) * rho 2635)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2639) * ((2 : F) + (1 : F) * rho 2636 + (-1 : F) * rho 2637) = ((1 : F) * rho 2636 + (1 : F) * rho 2637)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2640)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1122) * ((1 : F) * rho 1252 + (1 : F) * rho 2640) = ((1 : F) * rho 2641)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1121) = ((1 : F) * rho 2642)

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2643)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1122) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2643) = ((1 : F) * rho 2644)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2645)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2638 + (1 : F) * rho 2639) * ((1 : F) + (1 : F) * rho 2641 + (1 : F) * rho 2642 + (1 : F) * rho 2644 + (1 : F) * rho 2645) = ((1 : F) * rho 2646)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2638) * ((1 : F) + (1 : F) * rho 2644 + (1 : F) * rho 2645) = ((1 : F) * rho 2647)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2639) * ((1 : F) * rho 2641 + (1 : F) * rho 2642) = ((1 : F) * rho 2648)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2647) * ((1 : F) * rho 2648) = ((1 : F) * rho 2649)

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2650) * ((1 : F) + (1 : F) * rho 2649) = ((1 : F) * rho 2647 + (1 : F) * rho 2648)

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2651) * ((1 : F) + (-1 : F) * rho 2649) = ((1 : F) * rho 2646 + (-1 : F) * rho 2647 + (-1 : F) * rho 2648)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2650) * ((1 : F) * rho 2651) = ((1 : F) * rho 2652)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2650) * ((1 : F) * rho 2650) = ((1 : F) * rho 2653)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2651) * ((1 : F) * rho 2651) = ((1 : F) * rho 2654)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2655) * ((-1 : F) * rho 2653 + (1 : F) * rho 2654) = ((2 : F) * rho 2652)

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2656) * ((2 : F) + (1 : F) * rho 2653 + (-1 : F) * rho 2654) = ((1 : F) * rho 2653 + (1 : F) * rho 2654)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2655 + (1 : F) * rho 2656) * ((1 : F) * rho 598 + (1 : F) * rho 600) = ((1 : F) * rho 2657)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) * rho 2655) = ((1 : F) * rho 2658)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2656) = ((1 : F) * rho 2659)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2658) * ((1 : F) * rho 2659) = ((1 : F) * rho 2660)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2661) * ((1 : F) + (1 : F) * rho 2660) = ((1 : F) * rho 2658 + (1 : F) * rho 2659)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2662) * ((1 : F) + (-1 : F) * rho 2660) = ((1 : F) * rho 2657 + (-1 : F) * rho 2658 + (-1 : F) * rho 2659)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * ((-1 : F) * rho 2655 + (1 : F) * rho 2661) = ((1 : F) * rho 2663)

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * ((-1 : F) * rho 2656 + (1 : F) * rho 2662) = ((1 : F) * rho 2664)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2665) * ((1 : F) + (-1 : F) * rho 2665) = ((0 : F))

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2666) * ((1 : F) + (-1 : F) * rho 2666) = ((0 : F))

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2667) * ((1 : F) + (-1 : F) * rho 2667) = ((0 : F))

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2668) * ((1 : F) + (-1 : F) * rho 2668) = ((0 : F))

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2669) * ((1 : F) + (-1 : F) * rho 2669) = ((0 : F))

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2670) * ((1 : F) + (-1 : F) * rho 2670) = ((0 : F))

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2671) * ((1 : F) + (-1 : F) * rho 2671) = ((0 : F))

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2672) * ((1 : F) + (-1 : F) * rho 2672) = ((0 : F))

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * ((1 : F) + (-1 : F) * rho 2673) = ((0 : F))

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((1 : F) + (-1 : F) * rho 2674) = ((0 : F))

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2675) * ((1 : F) + (-1 : F) * rho 2675) = ((0 : F))

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2676) * ((1 : F) + (-1 : F) * rho 2676) = ((0 : F))

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2677) * ((1 : F) + (-1 : F) * rho 2677) = ((0 : F))

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2678) * ((1 : F) + (-1 : F) * rho 2678) = ((0 : F))

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2679) * ((1 : F) + (-1 : F) * rho 2679) = ((0 : F))

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2680) * ((1 : F) + (-1 : F) * rho 2680) = ((0 : F))

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2681) * ((1 : F) + (-1 : F) * rho 2681) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
