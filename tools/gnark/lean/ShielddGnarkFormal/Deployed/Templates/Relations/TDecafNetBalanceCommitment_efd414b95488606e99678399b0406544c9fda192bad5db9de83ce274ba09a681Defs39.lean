import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs38

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2880) * ((1 : F) * rho 2881) = ((1 : F) * rho 2882)

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2880) * ((1 : F) * rho 2880) = ((1 : F) * rho 2883)

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881) * ((1 : F) * rho 2881) = ((1 : F) * rho 2884)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2885) * ((-1 : F) * rho 2883 + (1 : F) * rho 2884) = ((2 : F) * rho 2882)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2886) * ((2 : F) + (1 : F) * rho 2883 + (-1 : F) * rho 2884) = ((1 : F) * rho 2883 + (1 : F) * rho 2884)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2887)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2785) * ((1 : F) * rho 2797 + (1 : F) * rho 2887) = ((1 : F) * rho 2888)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2784) = ((1 : F) * rho 2889)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2890)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2785) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2890) = ((1 : F) * rho 2891)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2892)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2885 + (1 : F) * rho 2886) * ((1 : F) + (1 : F) * rho 2888 + (1 : F) * rho 2889 + (1 : F) * rho 2891 + (1 : F) * rho 2892) = ((1 : F) * rho 2893)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2885) * ((1 : F) + (1 : F) * rho 2891 + (1 : F) * rho 2892) = ((1 : F) * rho 2894)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2886) * ((1 : F) * rho 2888 + (1 : F) * rho 2889) = ((1 : F) * rho 2895)

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2894) * ((1 : F) * rho 2895) = ((1 : F) * rho 2896)

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2897) * ((1 : F) + (1 : F) * rho 2896) = ((1 : F) * rho 2894 + (1 : F) * rho 2895)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2898) * ((1 : F) + (-1 : F) * rho 2896) = ((1 : F) * rho 2893 + (-1 : F) * rho 2894 + (-1 : F) * rho 2895)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2897) * ((1 : F) * rho 2898) = ((1 : F) * rho 2899)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2897) * ((1 : F) * rho 2897) = ((1 : F) * rho 2900)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2898) * ((1 : F) * rho 2898) = ((1 : F) * rho 2901)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2902) * ((-1 : F) * rho 2900 + (1 : F) * rho 2901) = ((2 : F) * rho 2899)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2903) * ((2 : F) + (1 : F) * rho 2900 + (-1 : F) * rho 2901) = ((1 : F) * rho 2900 + (1 : F) * rho 2901)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2902) * ((1 : F) * rho 2903) = ((1 : F) * rho 2904)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2902) * ((1 : F) * rho 2902) = ((1 : F) * rho 2905)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2903) * ((1 : F) * rho 2903) = ((1 : F) * rho 2906)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907) * ((-1 : F) * rho 2905 + (1 : F) * rho 2906) = ((2 : F) * rho 2904)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2908) * ((2 : F) + (1 : F) * rho 2905 + (-1 : F) * rho 2906) = ((1 : F) * rho 2905 + (1 : F) * rho 2906)

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2782) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2909)

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2783) * ((1 : F) * rho 2797 + (1 : F) * rho 2909) = ((1 : F) * rho 2910)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2782) = ((1 : F) * rho 2911)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2782) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2912)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2783) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2912) = ((1 : F) * rho 2913)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2782) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2914)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907 + (1 : F) * rho 2908) * ((1 : F) + (1 : F) * rho 2910 + (1 : F) * rho 2911 + (1 : F) * rho 2913 + (1 : F) * rho 2914) = ((1 : F) * rho 2915)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907) * ((1 : F) + (1 : F) * rho 2913 + (1 : F) * rho 2914) = ((1 : F) * rho 2916)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2908) * ((1 : F) * rho 2910 + (1 : F) * rho 2911) = ((1 : F) * rho 2917)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2916) * ((1 : F) * rho 2917) = ((1 : F) * rho 2918)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2919) * ((1 : F) + (1 : F) * rho 2918) = ((1 : F) * rho 2916 + (1 : F) * rho 2917)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920) * ((1 : F) + (-1 : F) * rho 2918) = ((1 : F) * rho 2915 + (-1 : F) * rho 2916 + (-1 : F) * rho 2917)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2919) * ((1 : F) * rho 2920) = ((1 : F) * rho 2921)

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2919) * ((1 : F) * rho 2919) = ((1 : F) * rho 2922)

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920) * ((1 : F) * rho 2920) = ((1 : F) * rho 2923)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2924) * ((-1 : F) * rho 2922 + (1 : F) * rho 2923) = ((2 : F) * rho 2921)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2925) * ((2 : F) + (1 : F) * rho 2922 + (-1 : F) * rho 2923) = ((1 : F) * rho 2922 + (1 : F) * rho 2923)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2924) * ((1 : F) * rho 2925) = ((1 : F) * rho 2926)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2924) * ((1 : F) * rho 2924) = ((1 : F) * rho 2927)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2925) * ((1 : F) * rho 2925) = ((1 : F) * rho 2928)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2929) * ((-1 : F) * rho 2927 + (1 : F) * rho 2928) = ((2 : F) * rho 2926)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2930) * ((2 : F) + (1 : F) * rho 2927 + (-1 : F) * rho 2928) = ((1 : F) * rho 2927 + (1 : F) * rho 2928)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2780) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2931)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2781) * ((1 : F) * rho 2797 + (1 : F) * rho 2931) = ((1 : F) * rho 2932)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2780) = ((1 : F) * rho 2933)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2780) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2934)

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2781) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2934) = ((1 : F) * rho 2935)

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2780) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2936)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2929 + (1 : F) * rho 2930) * ((1 : F) + (1 : F) * rho 2932 + (1 : F) * rho 2933 + (1 : F) * rho 2935 + (1 : F) * rho 2936) = ((1 : F) * rho 2937)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2929) * ((1 : F) + (1 : F) * rho 2935 + (1 : F) * rho 2936) = ((1 : F) * rho 2938)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2930) * ((1 : F) * rho 2932 + (1 : F) * rho 2933) = ((1 : F) * rho 2939)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2938) * ((1 : F) * rho 2939) = ((1 : F) * rho 2940)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2941) * ((1 : F) + (1 : F) * rho 2940) = ((1 : F) * rho 2938 + (1 : F) * rho 2939)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2942) * ((1 : F) + (-1 : F) * rho 2940) = ((1 : F) * rho 2937 + (-1 : F) * rho 2938 + (-1 : F) * rho 2939)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2941) * ((1 : F) * rho 2942) = ((1 : F) * rho 2943)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2941) * ((1 : F) * rho 2941) = ((1 : F) * rho 2944)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2942) * ((1 : F) * rho 2942) = ((1 : F) * rho 2945)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((-1 : F) * rho 2944 + (1 : F) * rho 2945) = ((2 : F) * rho 2943)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2947) * ((2 : F) + (1 : F) * rho 2944 + (-1 : F) * rho 2945) = ((1 : F) * rho 2944 + (1 : F) * rho 2945)

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((1 : F) * rho 2947) = ((1 : F) * rho 2948)

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((1 : F) * rho 2946) = ((1 : F) * rho 2949)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2947) * ((1 : F) * rho 2947) = ((1 : F) * rho 2950)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2951) * ((-1 : F) * rho 2949 + (1 : F) * rho 2950) = ((2 : F) * rho 2948)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2952) * ((2 : F) + (1 : F) * rho 2949 + (-1 : F) * rho 2950) = ((1 : F) * rho 2949 + (1 : F) * rho 2950)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2953)

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2779) * ((1 : F) * rho 2797 + (1 : F) * rho 2953) = ((1 : F) * rho 2954)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2778) = ((1 : F) * rho 2955)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2956)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2779) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2956) = ((1 : F) * rho 2957)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2958)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2951 + (1 : F) * rho 2952) * ((1 : F) + (1 : F) * rho 2954 + (1 : F) * rho 2955 + (1 : F) * rho 2957 + (1 : F) * rho 2958) = ((1 : F) * rho 2959)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2951) * ((1 : F) + (1 : F) * rho 2957 + (1 : F) * rho 2958) = ((1 : F) * rho 2960)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2952) * ((1 : F) * rho 2954 + (1 : F) * rho 2955) = ((1 : F) * rho 2961)

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2960) * ((1 : F) * rho 2961) = ((1 : F) * rho 2962)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2963) * ((1 : F) + (1 : F) * rho 2962) = ((1 : F) * rho 2960 + (1 : F) * rho 2961)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2964) * ((1 : F) + (-1 : F) * rho 2962) = ((1 : F) * rho 2959 + (-1 : F) * rho 2960 + (-1 : F) * rho 2961)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2963) * ((1 : F) * rho 2964) = ((1 : F) * rho 2965)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2963) * ((1 : F) * rho 2963) = ((1 : F) * rho 2966)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2964) * ((1 : F) * rho 2964) = ((1 : F) * rho 2967)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2968) * ((-1 : F) * rho 2966 + (1 : F) * rho 2967) = ((2 : F) * rho 2965)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2969) * ((2 : F) + (1 : F) * rho 2966 + (-1 : F) * rho 2967) = ((1 : F) * rho 2966 + (1 : F) * rho 2967)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2968) * ((1 : F) * rho 2969) = ((1 : F) * rho 2970)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2968) * ((1 : F) * rho 2968) = ((1 : F) * rho 2971)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2969) * ((1 : F) * rho 2969) = ((1 : F) * rho 2972)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2973) * ((-1 : F) * rho 2971 + (1 : F) * rho 2972) = ((2 : F) * rho 2970)

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2974) * ((2 : F) + (1 : F) * rho 2971 + (-1 : F) * rho 2972) = ((1 : F) * rho 2971 + (1 : F) * rho 2972)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2776) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2975)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777) * ((1 : F) * rho 2797 + (1 : F) * rho 2975) = ((1 : F) * rho 2976)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2776) = ((1 : F) * rho 2977)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2776) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 2978)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 2978) = ((1 : F) * rho 2979)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2776) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2980)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2973 + (1 : F) * rho 2974) * ((1 : F) + (1 : F) * rho 2976 + (1 : F) * rho 2977 + (1 : F) * rho 2979 + (1 : F) * rho 2980) = ((1 : F) * rho 2981)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2973) * ((1 : F) + (1 : F) * rho 2979 + (1 : F) * rho 2980) = ((1 : F) * rho 2982)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2974) * ((1 : F) * rho 2976 + (1 : F) * rho 2977) = ((1 : F) * rho 2983)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2982) * ((1 : F) * rho 2983) = ((1 : F) * rho 2984)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * ((1 : F) + (1 : F) * rho 2984) = ((1 : F) * rho 2982 + (1 : F) * rho 2983)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2986) * ((1 : F) + (-1 : F) * rho 2984) = ((1 : F) * rho 2981 + (-1 : F) * rho 2982 + (-1 : F) * rho 2983)

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * ((1 : F) * rho 2986) = ((1 : F) * rho 2987)

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * ((1 : F) * rho 2985) = ((1 : F) * rho 2988)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2986) * ((1 : F) * rho 2986) = ((1 : F) * rho 2989)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2990) * ((-1 : F) * rho 2988 + (1 : F) * rho 2989) = ((2 : F) * rho 2987)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2991) * ((2 : F) + (1 : F) * rho 2988 + (-1 : F) * rho 2989) = ((1 : F) * rho 2988 + (1 : F) * rho 2989)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2990) * ((1 : F) * rho 2991) = ((1 : F) * rho 2992)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2990) * ((1 : F) * rho 2990) = ((1 : F) * rho 2993)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2991) * ((1 : F) * rho 2991) = ((1 : F) * rho 2994)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2995) * ((-1 : F) * rho 2993 + (1 : F) * rho 2994) = ((2 : F) * rho 2992)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
