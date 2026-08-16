import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs39

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2996) * ((2 : F) + (1 : F) * rho 2993 + (-1 : F) * rho 2994) = ((1 : F) * rho 2993 + (1 : F) * rho 2994)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2774) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 2997)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2775) * ((1 : F) * rho 2797 + (1 : F) * rho 2997) = ((1 : F) * rho 2998)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2774) = ((1 : F) * rho 2999)

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2774) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3000)

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2775) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3000) = ((1 : F) * rho 3001)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2774) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3002)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2995 + (1 : F) * rho 2996) * ((1 : F) + (1 : F) * rho 2998 + (1 : F) * rho 2999 + (1 : F) * rho 3001 + (1 : F) * rho 3002) = ((1 : F) * rho 3003)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2995) * ((1 : F) + (1 : F) * rho 3001 + (1 : F) * rho 3002) = ((1 : F) * rho 3004)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2996) * ((1 : F) * rho 2998 + (1 : F) * rho 2999) = ((1 : F) * rho 3005)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3004) * ((1 : F) * rho 3005) = ((1 : F) * rho 3006)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3007) * ((1 : F) + (1 : F) * rho 3006) = ((1 : F) * rho 3004 + (1 : F) * rho 3005)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3008) * ((1 : F) + (-1 : F) * rho 3006) = ((1 : F) * rho 3003 + (-1 : F) * rho 3004 + (-1 : F) * rho 3005)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3007) * ((1 : F) * rho 3008) = ((1 : F) * rho 3009)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3007) * ((1 : F) * rho 3007) = ((1 : F) * rho 3010)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3008) * ((1 : F) * rho 3008) = ((1 : F) * rho 3011)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3012) * ((-1 : F) * rho 3010 + (1 : F) * rho 3011) = ((2 : F) * rho 3009)

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3013) * ((2 : F) + (1 : F) * rho 3010 + (-1 : F) * rho 3011) = ((1 : F) * rho 3010 + (1 : F) * rho 3011)

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3012) * ((1 : F) * rho 3013) = ((1 : F) * rho 3014)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3012) * ((1 : F) * rho 3012) = ((1 : F) * rho 3015)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3013) * ((1 : F) * rho 3013) = ((1 : F) * rho 3016)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3017) * ((-1 : F) * rho 3015 + (1 : F) * rho 3016) = ((2 : F) * rho 3014)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3018) * ((2 : F) + (1 : F) * rho 3015 + (-1 : F) * rho 3016) = ((1 : F) * rho 3015 + (1 : F) * rho 3016)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2772) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3019)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2773) * ((1 : F) * rho 2797 + (1 : F) * rho 3019) = ((1 : F) * rho 3020)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2772) = ((1 : F) * rho 3021)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2772) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3022)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2773) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3022) = ((1 : F) * rho 3023)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2772) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3024)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3017 + (1 : F) * rho 3018) * ((1 : F) + (1 : F) * rho 3020 + (1 : F) * rho 3021 + (1 : F) * rho 3023 + (1 : F) * rho 3024) = ((1 : F) * rho 3025)

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3017) * ((1 : F) + (1 : F) * rho 3023 + (1 : F) * rho 3024) = ((1 : F) * rho 3026)

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3018) * ((1 : F) * rho 3020 + (1 : F) * rho 3021) = ((1 : F) * rho 3027)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3026) * ((1 : F) * rho 3027) = ((1 : F) * rho 3028)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3029) * ((1 : F) + (1 : F) * rho 3028) = ((1 : F) * rho 3026 + (1 : F) * rho 3027)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3030) * ((1 : F) + (-1 : F) * rho 3028) = ((1 : F) * rho 3025 + (-1 : F) * rho 3026 + (-1 : F) * rho 3027)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3029) * ((1 : F) * rho 3030) = ((1 : F) * rho 3031)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3029) * ((1 : F) * rho 3029) = ((1 : F) * rho 3032)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3030) * ((1 : F) * rho 3030) = ((1 : F) * rho 3033)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3034) * ((-1 : F) * rho 3032 + (1 : F) * rho 3033) = ((2 : F) * rho 3031)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3035) * ((2 : F) + (1 : F) * rho 3032 + (-1 : F) * rho 3033) = ((1 : F) * rho 3032 + (1 : F) * rho 3033)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3034) * ((1 : F) * rho 3035) = ((1 : F) * rho 3036)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3034) * ((1 : F) * rho 3034) = ((1 : F) * rho 3037)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3035) * ((1 : F) * rho 3035) = ((1 : F) * rho 3038)

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3039) * ((-1 : F) * rho 3037 + (1 : F) * rho 3038) = ((2 : F) * rho 3036)

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3040) * ((2 : F) + (1 : F) * rho 3037 + (-1 : F) * rho 3038) = ((1 : F) * rho 3037 + (1 : F) * rho 3038)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2770) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3041)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2771) * ((1 : F) * rho 2797 + (1 : F) * rho 3041) = ((1 : F) * rho 3042)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2770) = ((1 : F) * rho 3043)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2770) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3044)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2771) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3044) = ((1 : F) * rho 3045)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2770) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3046)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3039 + (1 : F) * rho 3040) * ((1 : F) + (1 : F) * rho 3042 + (1 : F) * rho 3043 + (1 : F) * rho 3045 + (1 : F) * rho 3046) = ((1 : F) * rho 3047)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3039) * ((1 : F) + (1 : F) * rho 3045 + (1 : F) * rho 3046) = ((1 : F) * rho 3048)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3040) * ((1 : F) * rho 3042 + (1 : F) * rho 3043) = ((1 : F) * rho 3049)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3048) * ((1 : F) * rho 3049) = ((1 : F) * rho 3050)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3051) * ((1 : F) + (1 : F) * rho 3050) = ((1 : F) * rho 3048 + (1 : F) * rho 3049)

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3052) * ((1 : F) + (-1 : F) * rho 3050) = ((1 : F) * rho 3047 + (-1 : F) * rho 3048 + (-1 : F) * rho 3049)

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3051) * ((1 : F) * rho 3052) = ((1 : F) * rho 3053)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3051) * ((1 : F) * rho 3051) = ((1 : F) * rho 3054)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3052) * ((1 : F) * rho 3052) = ((1 : F) * rho 3055)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3056) * ((-1 : F) * rho 3054 + (1 : F) * rho 3055) = ((2 : F) * rho 3053)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3057) * ((2 : F) + (1 : F) * rho 3054 + (-1 : F) * rho 3055) = ((1 : F) * rho 3054 + (1 : F) * rho 3055)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3056) * ((1 : F) * rho 3057) = ((1 : F) * rho 3058)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3056) * ((1 : F) * rho 3056) = ((1 : F) * rho 3059)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3057) * ((1 : F) * rho 3057) = ((1 : F) * rho 3060)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3061) * ((-1 : F) * rho 3059 + (1 : F) * rho 3060) = ((2 : F) * rho 3058)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3062) * ((2 : F) + (1 : F) * rho 3059 + (-1 : F) * rho 3060) = ((1 : F) * rho 3059 + (1 : F) * rho 3060)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2768) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3063)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2769) * ((1 : F) * rho 2797 + (1 : F) * rho 3063) = ((1 : F) * rho 3064)

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2768) = ((1 : F) * rho 3065)

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2768) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3066)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2769) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3066) = ((1 : F) * rho 3067)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2768) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3068)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3061 + (1 : F) * rho 3062) * ((1 : F) + (1 : F) * rho 3064 + (1 : F) * rho 3065 + (1 : F) * rho 3067 + (1 : F) * rho 3068) = ((1 : F) * rho 3069)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3061) * ((1 : F) + (1 : F) * rho 3067 + (1 : F) * rho 3068) = ((1 : F) * rho 3070)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3062) * ((1 : F) * rho 3064 + (1 : F) * rho 3065) = ((1 : F) * rho 3071)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3070) * ((1 : F) * rho 3071) = ((1 : F) * rho 3072)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3073) * ((1 : F) + (1 : F) * rho 3072) = ((1 : F) * rho 3070 + (1 : F) * rho 3071)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3074) * ((1 : F) + (-1 : F) * rho 3072) = ((1 : F) * rho 3069 + (-1 : F) * rho 3070 + (-1 : F) * rho 3071)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3073) * ((1 : F) * rho 3074) = ((1 : F) * rho 3075)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3073) * ((1 : F) * rho 3073) = ((1 : F) * rho 3076)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3074) * ((1 : F) * rho 3074) = ((1 : F) * rho 3077)

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3078) * ((-1 : F) * rho 3076 + (1 : F) * rho 3077) = ((2 : F) * rho 3075)

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3079) * ((2 : F) + (1 : F) * rho 3076 + (-1 : F) * rho 3077) = ((1 : F) * rho 3076 + (1 : F) * rho 3077)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3078) * ((1 : F) * rho 3079) = ((1 : F) * rho 3080)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3078) * ((1 : F) * rho 3078) = ((1 : F) * rho 3081)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3079) * ((1 : F) * rho 3079) = ((1 : F) * rho 3082)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3083) * ((-1 : F) * rho 3081 + (1 : F) * rho 3082) = ((2 : F) * rho 3080)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3084) * ((2 : F) + (1 : F) * rho 3081 + (-1 : F) * rho 3082) = ((1 : F) * rho 3081 + (1 : F) * rho 3082)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2766) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3085)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2767) * ((1 : F) * rho 2797 + (1 : F) * rho 3085) = ((1 : F) * rho 3086)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2766) = ((1 : F) * rho 3087)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2766) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3088)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2767) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3088) = ((1 : F) * rho 3089)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2766) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3090)

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3083 + (1 : F) * rho 3084) * ((1 : F) + (1 : F) * rho 3086 + (1 : F) * rho 3087 + (1 : F) * rho 3089 + (1 : F) * rho 3090) = ((1 : F) * rho 3091)

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3083) * ((1 : F) + (1 : F) * rho 3089 + (1 : F) * rho 3090) = ((1 : F) * rho 3092)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3084) * ((1 : F) * rho 3086 + (1 : F) * rho 3087) = ((1 : F) * rho 3093)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3092) * ((1 : F) * rho 3093) = ((1 : F) * rho 3094)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3095) * ((1 : F) + (1 : F) * rho 3094) = ((1 : F) * rho 3092 + (1 : F) * rho 3093)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3096) * ((1 : F) + (-1 : F) * rho 3094) = ((1 : F) * rho 3091 + (-1 : F) * rho 3092 + (-1 : F) * rho 3093)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3095) * ((1 : F) * rho 3096) = ((1 : F) * rho 3097)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3095) * ((1 : F) * rho 3095) = ((1 : F) * rho 3098)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3096) * ((1 : F) * rho 3096) = ((1 : F) * rho 3099)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3100) * ((-1 : F) * rho 3098 + (1 : F) * rho 3099) = ((2 : F) * rho 3097)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3101) * ((2 : F) + (1 : F) * rho 3098 + (-1 : F) * rho 3099) = ((1 : F) * rho 3098 + (1 : F) * rho 3099)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3100) * ((1 : F) * rho 3101) = ((1 : F) * rho 3102)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3100) * ((1 : F) * rho 3100) = ((1 : F) * rho 3103)

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3101) * ((1 : F) * rho 3101) = ((1 : F) * rho 3104)

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3105) * ((-1 : F) * rho 3103 + (1 : F) * rho 3104) = ((2 : F) * rho 3102)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3106) * ((2 : F) + (1 : F) * rho 3103 + (-1 : F) * rho 3104) = ((1 : F) * rho 3103 + (1 : F) * rho 3104)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3107)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2765) * ((1 : F) * rho 2797 + (1 : F) * rho 3107) = ((1 : F) * rho 3108)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
