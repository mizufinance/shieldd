import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode8Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node8_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation rho) :
    nodeOut8 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 2949 + rho 2950) (rho 2951 + rho 2952 + rho 2953) (rho 2951 + rho 2955 + rho 2956) (rho 2954 + rho 2957) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, p36, p37, p38, p39,
    p40, p41, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, r3199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 2949 + rho 2950) (rho 2951 + rho 2952 + rho 2953) (rho 2951 + rho 2955 + rho 2956) (rho 2954 + rho 2957)
      (fun w334 w339 w344 w349 w354 => w334 = rho 3287 ∧ w339 = rho 3292 ∧ w344 = rho 3297 ∧ w349 = rho 3302 ∧ w354 = rho 3307) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node8_seg0 rho _ r2959 r2960 r2961 r2962 r2963 (node8_seg1 rho _ r2964 r2965 r2966 r2967 r2968 (node8_seg2 rho _ r2969 r2970 r2971 r2972 r2973 (node8_seg3 rho _ r2974 r2975 r2976 r2977 r2978 (node8_seg4 rho _ r2979 r2980 r2981 r2982 r2983 (node8_seg5 rho _ r2984 r2985 r2986 r2987 r2988 (node8_seg6 rho _ r2989 r2990 r2991 r2992 r2993 (node8_seg7 rho _ r2994 r2995 r2996 r2997 r2998 (node8_seg8 rho _ r2999 r3000 r3001 r3002 r3003 (node8_seg9 rho _ r3004 r3005 r3006 r3007 r3008 (node8_seg10 rho _ r3009 r3010 r3011 r3012 r3013 (node8_seg11 rho _ r3014 r3015 r3016 r3017 r3018 (node8_seg12 rho _ r3019 r3020 r3021 r3022 r3023 (node8_seg13 rho _ r3024 r3025 r3026 r3027 r3028 (node8_seg14 rho _ r3029 r3030 r3031 r3032 r3033 (node8_seg15 rho _ r3034 r3035 r3036 r3037 r3038 (node8_seg16 rho _ r3039 r3040 r3041 r3042 r3043 (node8_seg17 rho _ r3044 r3045 r3046 r3047 r3048 (node8_seg18 rho _ r3049 r3050 r3051 r3052 r3053 (node8_seg19 rho _ r3054 r3055 r3056 r3057 r3058 (node8_seg20 rho _ r3059 r3060 r3061 r3062 r3063 (node8_seg21 rho _ r3064 r3065 r3066 r3067 r3068 (node8_seg22 rho _ r3069 r3070 r3071 r3072 r3073 (node8_seg23 rho _ r3074 r3075 r3076 r3077 r3078 (node8_seg24 rho _ r3079 r3080 r3081 r3082 r3083 (node8_seg25 rho _ r3084 r3085 r3086 r3087 r3088 (node8_seg26 rho _ r3089 r3090 r3091 r3092 r3093 (node8_seg27 rho _ r3094 r3095 r3096 r3097 r3098 (node8_seg28 rho _ r3099 r3100 r3101 r3102 r3103 (node8_seg29 rho _ r3104 r3105 r3106 r3107 r3108 (node8_seg30 rho _ r3109 r3110 r3111 r3112 r3113 (node8_seg31 rho _ r3114 r3115 r3116 r3117 r3118 (node8_seg32 rho _ r3119 r3120 r3121 r3122 r3123 (node8_seg33 rho _ r3124 r3125 r3126 r3127 r3128 (node8_seg34 rho _ r3129 r3130 r3131 r3132 r3133 (node8_seg35 rho _ r3134 r3135 r3136 r3137 r3138 (node8_seg36 rho _ r3139 r3140 r3141 r3142 r3143 (node8_seg37 rho _ r3144 r3145 r3146 r3147 r3148 (node8_seg38 rho _ r3149 r3150 r3151 r3152 r3153 (node8_seg39 rho _ r3154 r3155 r3156 r3157 r3158 (node8_seg40 rho _ r3159 r3160 r3161 r3162 r3163 (node8_seg41 rho _ r3164 r3165 r3166 r3167 r3168 (node8_seg42 rho _ r3169 r3170 r3171 r3172 r3173 (node8_seg43 rho _ r3174 r3175 r3176 r3177 r3178 (node8_seg44 rho _ r3179 r3180 r3181 r3182 r3183 (node8_seg45 rho _ r3184 r3185 r3186 r3187 r3188 (node8_seg46 rho _ r3189 r3190 r3191 r3192 r3193 (node8_seg47 rho _ r3194 r3195 r3196 r3197 r3198 (node8_seg48 rho _ r3199 r3200 r3201 r3202 r3203 (node8_seg49 rho _ r3204 r3205 r3206 r3207 r3208 (node8_seg50 rho _ r3209 r3210 r3211 r3212 r3213 (node8_seg51 rho _ r3214 r3215 r3216 r3217 r3218 (node8_seg52 rho _ r3219 r3220 r3221 r3222 r3223 (node8_seg53 rho _ r3224 r3225 r3226 r3227 r3228 (node8_seg54 rho _ r3229 r3230 r3231 r3232 r3233 (node8_seg55 rho _ r3234 r3235 r3236 r3237 r3238 (node8_seg56 rho _ r3239 r3240 r3241 r3242 r3243 (node8_seg57 rho _ r3244 r3245 r3246 r3247 r3248 (node8_seg58 rho _ r3249 r3250 r3251 r3252 r3253 (node8_seg59 rho _ r3254 r3255 r3256 r3257 r3258 (node8_seg60 rho _ r3259 r3260 r3261 r3262 r3263 (node8_seg61 rho _ r3264 r3265 r3266 r3267 r3268 (node8_seg62 rho _ r3269 r3270 r3271 r3272 r3273 (node8_seg63 rho _ r3274 r3275 r3276 r3277 r3278 (node8_seg64 rho _ r3279 r3280 r3281 r3282 r3283 (node8_seg65 rho _ r3284 r3285 r3286 r3287 r3288 (node8_seg66 rho _ r3289 r3290 r3291 r3292 r3293 (node8_seg67 rho _ r3294 r3295 r3296 r3297 r3298 (node8_seg68 rho _ r3299 r3300 r3301 r3302 r3303 (node8_seg69 rho _ r3304 r3305 r3306 r3307 r3308 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 2949 + rho 2950) (rho 2951 + rho 2952 + rho 2953) (rho 2951 + rho 2955 + rho 2956) (rho 2954 + rho 2957) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut8, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
