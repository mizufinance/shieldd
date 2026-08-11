import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs37

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc9Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 2729 + (36893488147419103232 : F) * rho 2730 + (73786976294838206464 : F) * rho 2731 + (147573952589676412928 : F) * rho 2732 + (295147905179352825856 : F) * rho 2733 + (590295810358705651712 : F) * rho 2734 + (1180591620717411303424 : F) * rho 2735 + (2361183241434822606848 : F) * rho 2736 + (4722366482869645213696 : F) * rho 2737 + (9444732965739290427392 : F) * rho 2738 + (18889465931478580854784 : F) * rho 2739 + (37778931862957161709568 : F) * rho 2740 + (75557863725914323419136 : F) * rho 2741 + (151115727451828646838272 : F) * rho 2742 + (302231454903657293676544 : F) * rho 2743 + (604462909807314587353088 : F) * rho 2744 + (1208925819614629174706176 : F) * rho 2745 + (2417851639229258349412352 : F) * rho 2746 + (4835703278458516698824704 : F) * rho 2747 + (9671406556917033397649408 : F) * rho 2748 + (19342813113834066795298816 : F) * rho 2749 + (38685626227668133590597632 : F) * rho 2750 + (77371252455336267181195264 : F) * rho 2751 + (154742504910672534362390528 : F) * rho 2752 + (309485009821345068724781056 : F) * rho 2753 + (618970019642690137449562112 : F) * rho 2754 + (1237940039285380274899124224 : F) * rho 2755 + (2475880078570760549798248448 : F) * rho 2756 + (4951760157141521099596496896 : F) * rho 2757 + (9903520314283042199192993792 : F) * rho 2758 + (19807040628566084398385987584 : F) * rho 2759 + (39614081257132168796771975168 : F) * rho 2760

def relationLc9Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 2761 + (158456325028528675187087900672 : F) * rho 2762 + (316912650057057350374175801344 : F) * rho 2763 + (633825300114114700748351602688 : F) * rho 2764 + (1267650600228229401496703205376 : F) * rho 2765 + (2535301200456458802993406410752 : F) * rho 2766 + (5070602400912917605986812821504 : F) * rho 2767 + (10141204801825835211973625643008 : F) * rho 2768 + (20282409603651670423947251286016 : F) * rho 2769 + (40564819207303340847894502572032 : F) * rho 2770 + (81129638414606681695789005144064 : F) * rho 2771 + (162259276829213363391578010288128 : F) * rho 2772 + (324518553658426726783156020576256 : F) * rho 2773 + (649037107316853453566312041152512 : F) * rho 2774 + (1298074214633706907132624082305024 : F) * rho 2775 + (2596148429267413814265248164610048 : F) * rho 2776 + (5192296858534827628530496329220096 : F) * rho 2777 + (10384593717069655257060992658440192 : F) * rho 2778 + (20769187434139310514121985316880384 : F) * rho 2779 + (41538374868278621028243970633760768 : F) * rho 2780 + (83076749736557242056487941267521536 : F) * rho 2781 + (166153499473114484112975882535043072 : F) * rho 2782 + (332306998946228968225951765070086144 : F) * rho 2783 + (664613997892457936451903530140172288 : F) * rho 2784 + (1329227995784915872903807060280344576 : F) * rho 2785 + (2658455991569831745807614120560689152 : F) * rho 2786 + (5316911983139663491615228241121378304 : F) * rho 2787 + (10633823966279326983230456482242756608 : F) * rho 2788 + (21267647932558653966460912964485513216 : F) * rho 2789 + (42535295865117307932921825928971026432 : F) * rho 2790 + (85070591730234615865843651857942052864 : F) * rho 2791 + (170141183460469231731687303715884105728 : F) * rho 2792

def relationLc9Part4 (rho : Nat -> F) : F :=
    (340282366920938463463374607431768211456 : F) * rho 2793

def relationLc9 (rho : Nat -> F) : F :=
    relationLc9Part0 rho +
    relationLc9Part1 rho +
    relationLc9Part2 rho +
    relationLc9Part3 rho +
    relationLc9Part4 rho

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc9 rho) = ((1 : F) * rho 990 + (1 : F) * rho 1119)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 600) = ((1 : F) * rho 2794)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 598) = ((1 : F) * rho 2795)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) * rho 600) = ((1 : F) * rho 2796)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2797) * ((-1 : F) * rho 2795 + (1 : F) * rho 2796) = ((2 : F) * rho 2794)

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2798) * ((2 : F) + (1 : F) * rho 2795 + (-1 : F) * rho 2796) = ((1 : F) * rho 2795 + (1 : F) * rho 2796)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2797 + (1 : F) * rho 2798) * ((1 : F) * rho 598 + (1 : F) * rho 600) = ((1 : F) * rho 2799)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) * rho 2797) = ((1 : F) * rho 2800)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2798) = ((1 : F) * rho 2801)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2800) * ((1 : F) * rho 2801) = ((1 : F) * rho 2802)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2803) * ((1 : F) + (1 : F) * rho 2802) = ((1 : F) * rho 2800 + (1 : F) * rho 2801)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2804) * ((1 : F) + (-1 : F) * rho 2802) = ((1 : F) * rho 2799 + (-1 : F) * rho 2800 + (-1 : F) * rho 2801)

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2792) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2805)

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2793) * ((1 : F) * rho 2797 + (1 : F) * rho 2805) = ((1 : F) * rho 2806)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2792) = ((1 : F) * rho 2807)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2792) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2808)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2793) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2808) = ((1 : F) * rho 2809)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2792) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2810)

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2806 + (1 : F) * rho 2807) * ((1 : F) + (1 : F) * rho 2809 + (1 : F) * rho 2810) = ((1 : F) * rho 2811)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2806 + (1 : F) * rho 2807) * ((1 : F) * rho 2806 + (1 : F) * rho 2807) = ((1 : F) * rho 2812)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) + (1 : F) * rho 2809 + (1 : F) * rho 2810) * ((1 : F) + (1 : F) * rho 2809 + (1 : F) * rho 2810) = ((1 : F) * rho 2813)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2814) * ((-1 : F) * rho 2812 + (1 : F) * rho 2813) = ((2 : F) * rho 2811)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2815) * ((2 : F) + (1 : F) * rho 2812 + (-1 : F) * rho 2813) = ((1 : F) * rho 2812 + (1 : F) * rho 2813)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2814) * ((1 : F) * rho 2815) = ((1 : F) * rho 2816)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2814) * ((1 : F) * rho 2814) = ((1 : F) * rho 2817)

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2815) * ((1 : F) * rho 2815) = ((1 : F) * rho 2818)

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2819) * ((-1 : F) * rho 2817 + (1 : F) * rho 2818) = ((2 : F) * rho 2816)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2820) * ((2 : F) + (1 : F) * rho 2817 + (-1 : F) * rho 2818) = ((1 : F) * rho 2817 + (1 : F) * rho 2818)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2821)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2791) * ((1 : F) * rho 2797 + (1 : F) * rho 2821) = ((1 : F) * rho 2822)

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2790) = ((1 : F) * rho 2823)

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2824)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2791) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2824) = ((1 : F) * rho 2825)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2826)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2819 + (1 : F) * rho 2820) * ((1 : F) + (1 : F) * rho 2822 + (1 : F) * rho 2823 + (1 : F) * rho 2825 + (1 : F) * rho 2826) = ((1 : F) * rho 2827)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2819) * ((1 : F) + (1 : F) * rho 2825 + (1 : F) * rho 2826) = ((1 : F) * rho 2828)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2820) * ((1 : F) * rho 2822 + (1 : F) * rho 2823) = ((1 : F) * rho 2829)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2828) * ((1 : F) * rho 2829) = ((1 : F) * rho 2830)

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2831) * ((1 : F) + (1 : F) * rho 2830) = ((1 : F) * rho 2828 + (1 : F) * rho 2829)

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2832) * ((1 : F) + (-1 : F) * rho 2830) = ((1 : F) * rho 2827 + (-1 : F) * rho 2828 + (-1 : F) * rho 2829)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2831) * ((1 : F) * rho 2832) = ((1 : F) * rho 2833)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2831) * ((1 : F) * rho 2831) = ((1 : F) * rho 2834)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2832) * ((1 : F) * rho 2832) = ((1 : F) * rho 2835)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2836) * ((-1 : F) * rho 2834 + (1 : F) * rho 2835) = ((2 : F) * rho 2833)

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2837) * ((2 : F) + (1 : F) * rho 2834 + (-1 : F) * rho 2835) = ((1 : F) * rho 2834 + (1 : F) * rho 2835)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2836) * ((1 : F) * rho 2837) = ((1 : F) * rho 2838)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2836) * ((1 : F) * rho 2836) = ((1 : F) * rho 2839)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2837) * ((1 : F) * rho 2837) = ((1 : F) * rho 2840)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2841) * ((-1 : F) * rho 2839 + (1 : F) * rho 2840) = ((2 : F) * rho 2838)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * ((2 : F) + (1 : F) * rho 2839 + (-1 : F) * rho 2840) = ((1 : F) * rho 2839 + (1 : F) * rho 2840)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2843)

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2789) * ((1 : F) * rho 2797 + (1 : F) * rho 2843) = ((1 : F) * rho 2844)

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2788) = ((1 : F) * rho 2845)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2846)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2789) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2846) = ((1 : F) * rho 2847)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2848)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2841 + (1 : F) * rho 2842) * ((1 : F) + (1 : F) * rho 2844 + (1 : F) * rho 2845 + (1 : F) * rho 2847 + (1 : F) * rho 2848) = ((1 : F) * rho 2849)

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2841) * ((1 : F) + (1 : F) * rho 2847 + (1 : F) * rho 2848) = ((1 : F) * rho 2850)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * ((1 : F) * rho 2844 + (1 : F) * rho 2845) = ((1 : F) * rho 2851)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2850) * ((1 : F) * rho 2851) = ((1 : F) * rho 2852)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2853) * ((1 : F) + (1 : F) * rho 2852) = ((1 : F) * rho 2850 + (1 : F) * rho 2851)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2854) * ((1 : F) + (-1 : F) * rho 2852) = ((1 : F) * rho 2849 + (-1 : F) * rho 2850 + (-1 : F) * rho 2851)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2853) * ((1 : F) * rho 2854) = ((1 : F) * rho 2855)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2853) * ((1 : F) * rho 2853) = ((1 : F) * rho 2856)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2854) * ((1 : F) * rho 2854) = ((1 : F) * rho 2857)

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2858) * ((-1 : F) * rho 2856 + (1 : F) * rho 2857) = ((2 : F) * rho 2855)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2859) * ((2 : F) + (1 : F) * rho 2856 + (-1 : F) * rho 2857) = ((1 : F) * rho 2856 + (1 : F) * rho 2857)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2858) * ((1 : F) * rho 2859) = ((1 : F) * rho 2860)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2858) * ((1 : F) * rho 2858) = ((1 : F) * rho 2861)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2859) * ((1 : F) * rho 2859) = ((1 : F) * rho 2862)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2863) * ((-1 : F) * rho 2861 + (1 : F) * rho 2862) = ((2 : F) * rho 2860)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2864) * ((2 : F) + (1 : F) * rho 2861 + (-1 : F) * rho 2862) = ((1 : F) * rho 2861 + (1 : F) * rho 2862)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2786) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2865)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2787) * ((1 : F) * rho 2797 + (1 : F) * rho 2865) = ((1 : F) * rho 2866)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2786) = ((1 : F) * rho 2867)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2786) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2868)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2787) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2868) = ((1 : F) * rho 2869)

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2786) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2870)

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2863 + (1 : F) * rho 2864) * ((1 : F) + (1 : F) * rho 2866 + (1 : F) * rho 2867 + (1 : F) * rho 2869 + (1 : F) * rho 2870) = ((1 : F) * rho 2871)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2863) * ((1 : F) + (1 : F) * rho 2869 + (1 : F) * rho 2870) = ((1 : F) * rho 2872)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2864) * ((1 : F) * rho 2866 + (1 : F) * rho 2867) = ((1 : F) * rho 2873)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2872) * ((1 : F) * rho 2873) = ((1 : F) * rho 2874)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2875) * ((1 : F) + (1 : F) * rho 2874) = ((1 : F) * rho 2872 + (1 : F) * rho 2873)

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2876) * ((1 : F) + (-1 : F) * rho 2874) = ((1 : F) * rho 2871 + (-1 : F) * rho 2872 + (-1 : F) * rho 2873)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2875) * ((1 : F) * rho 2876) = ((1 : F) * rho 2877)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2875) * ((1 : F) * rho 2875) = ((1 : F) * rho 2878)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2876) * ((1 : F) * rho 2876) = ((1 : F) * rho 2879)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2880) * ((-1 : F) * rho 2878 + (1 : F) * rho 2879) = ((2 : F) * rho 2877)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881) * ((2 : F) + (1 : F) * rho 2878 + (-1 : F) * rho 2879) = ((1 : F) * rho 2878 + (1 : F) * rho 2879)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
