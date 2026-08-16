import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs40

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2764) = ((1 : F) * rho 3109)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3110)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2765) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3110) = ((1 : F) * rho 3111)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3112)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3105 + (1 : F) * rho 3106) * ((1 : F) + (1 : F) * rho 3108 + (1 : F) * rho 3109 + (1 : F) * rho 3111 + (1 : F) * rho 3112) = ((1 : F) * rho 3113)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3105) * ((1 : F) + (1 : F) * rho 3111 + (1 : F) * rho 3112) = ((1 : F) * rho 3114)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3106) * ((1 : F) * rho 3108 + (1 : F) * rho 3109) = ((1 : F) * rho 3115)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3114) * ((1 : F) * rho 3115) = ((1 : F) * rho 3116)

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3117) * ((1 : F) + (1 : F) * rho 3116) = ((1 : F) * rho 3114 + (1 : F) * rho 3115)

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3118) * ((1 : F) + (-1 : F) * rho 3116) = ((1 : F) * rho 3113 + (-1 : F) * rho 3114 + (-1 : F) * rho 3115)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3117) * ((1 : F) * rho 3118) = ((1 : F) * rho 3119)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3117) * ((1 : F) * rho 3117) = ((1 : F) * rho 3120)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3118) * ((1 : F) * rho 3118) = ((1 : F) * rho 3121)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3122) * ((-1 : F) * rho 3120 + (1 : F) * rho 3121) = ((2 : F) * rho 3119)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3123) * ((2 : F) + (1 : F) * rho 3120 + (-1 : F) * rho 3121) = ((1 : F) * rho 3120 + (1 : F) * rho 3121)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3122) * ((1 : F) * rho 3123) = ((1 : F) * rho 3124)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3122) * ((1 : F) * rho 3122) = ((1 : F) * rho 3125)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3123) * ((1 : F) * rho 3123) = ((1 : F) * rho 3126)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3127) * ((-1 : F) * rho 3125 + (1 : F) * rho 3126) = ((2 : F) * rho 3124)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128) * ((2 : F) + (1 : F) * rho 3125 + (-1 : F) * rho 3126) = ((1 : F) * rho 3125 + (1 : F) * rho 3126)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2762) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3129)

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2763) * ((1 : F) * rho 2797 + (1 : F) * rho 3129) = ((1 : F) * rho 3130)

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2762) = ((1 : F) * rho 3131)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2762) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3132)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2763) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3132) = ((1 : F) * rho 3133)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2762) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3134)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3127 + (1 : F) * rho 3128) * ((1 : F) + (1 : F) * rho 3130 + (1 : F) * rho 3131 + (1 : F) * rho 3133 + (1 : F) * rho 3134) = ((1 : F) * rho 3135)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3127) * ((1 : F) + (1 : F) * rho 3133 + (1 : F) * rho 3134) = ((1 : F) * rho 3136)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128) * ((1 : F) * rho 3130 + (1 : F) * rho 3131) = ((1 : F) * rho 3137)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3136) * ((1 : F) * rho 3137) = ((1 : F) * rho 3138)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3139) * ((1 : F) + (1 : F) * rho 3138) = ((1 : F) * rho 3136 + (1 : F) * rho 3137)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3140) * ((1 : F) + (-1 : F) * rho 3138) = ((1 : F) * rho 3135 + (-1 : F) * rho 3136 + (-1 : F) * rho 3137)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3139) * ((1 : F) * rho 3140) = ((1 : F) * rho 3141)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3139) * ((1 : F) * rho 3139) = ((1 : F) * rho 3142)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3140) * ((1 : F) * rho 3140) = ((1 : F) * rho 3143)

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3144) * ((-1 : F) * rho 3142 + (1 : F) * rho 3143) = ((2 : F) * rho 3141)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3145) * ((2 : F) + (1 : F) * rho 3142 + (-1 : F) * rho 3143) = ((1 : F) * rho 3142 + (1 : F) * rho 3143)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3144) * ((1 : F) * rho 3145) = ((1 : F) * rho 3146)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3144) * ((1 : F) * rho 3144) = ((1 : F) * rho 3147)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3145) * ((1 : F) * rho 3145) = ((1 : F) * rho 3148)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3149) * ((-1 : F) * rho 3147 + (1 : F) * rho 3148) = ((2 : F) * rho 3146)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3150) * ((2 : F) + (1 : F) * rho 3147 + (-1 : F) * rho 3148) = ((1 : F) * rho 3147 + (1 : F) * rho 3148)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2760) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3151)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2761) * ((1 : F) * rho 2797 + (1 : F) * rho 3151) = ((1 : F) * rho 3152)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2760) = ((1 : F) * rho 3153)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2760) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3154)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2761) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3154) = ((1 : F) * rho 3155)

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2760) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3156)

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3149 + (1 : F) * rho 3150) * ((1 : F) + (1 : F) * rho 3152 + (1 : F) * rho 3153 + (1 : F) * rho 3155 + (1 : F) * rho 3156) = ((1 : F) * rho 3157)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3149) * ((1 : F) + (1 : F) * rho 3155 + (1 : F) * rho 3156) = ((1 : F) * rho 3158)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3150) * ((1 : F) * rho 3152 + (1 : F) * rho 3153) = ((1 : F) * rho 3159)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3158) * ((1 : F) * rho 3159) = ((1 : F) * rho 3160)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3161) * ((1 : F) + (1 : F) * rho 3160) = ((1 : F) * rho 3158 + (1 : F) * rho 3159)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3162) * ((1 : F) + (-1 : F) * rho 3160) = ((1 : F) * rho 3157 + (-1 : F) * rho 3158 + (-1 : F) * rho 3159)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3161) * ((1 : F) * rho 3162) = ((1 : F) * rho 3163)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3161) * ((1 : F) * rho 3161) = ((1 : F) * rho 3164)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3162) * ((1 : F) * rho 3162) = ((1 : F) * rho 3165)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3166) * ((-1 : F) * rho 3164 + (1 : F) * rho 3165) = ((2 : F) * rho 3163)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167) * ((2 : F) + (1 : F) * rho 3164 + (-1 : F) * rho 3165) = ((1 : F) * rho 3164 + (1 : F) * rho 3165)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3166) * ((1 : F) * rho 3167) = ((1 : F) * rho 3168)

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3166) * ((1 : F) * rho 3166) = ((1 : F) * rho 3169)

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167) * ((1 : F) * rho 3167) = ((1 : F) * rho 3170)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3171) * ((-1 : F) * rho 3169 + (1 : F) * rho 3170) = ((2 : F) * rho 3168)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3172) * ((2 : F) + (1 : F) * rho 3169 + (-1 : F) * rho 3170) = ((1 : F) * rho 3169 + (1 : F) * rho 3170)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2758) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3173)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2759) * ((1 : F) * rho 2797 + (1 : F) * rho 3173) = ((1 : F) * rho 3174)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2758) = ((1 : F) * rho 3175)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2758) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3176)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2759) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3176) = ((1 : F) * rho 3177)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2758) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3178)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3171 + (1 : F) * rho 3172) * ((1 : F) + (1 : F) * rho 3174 + (1 : F) * rho 3175 + (1 : F) * rho 3177 + (1 : F) * rho 3178) = ((1 : F) * rho 3179)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3171) * ((1 : F) + (1 : F) * rho 3177 + (1 : F) * rho 3178) = ((1 : F) * rho 3180)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3172) * ((1 : F) * rho 3174 + (1 : F) * rho 3175) = ((1 : F) * rho 3181)

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3180) * ((1 : F) * rho 3181) = ((1 : F) * rho 3182)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3183) * ((1 : F) + (1 : F) * rho 3182) = ((1 : F) * rho 3180 + (1 : F) * rho 3181)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3184) * ((1 : F) + (-1 : F) * rho 3182) = ((1 : F) * rho 3179 + (-1 : F) * rho 3180 + (-1 : F) * rho 3181)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3183) * ((1 : F) * rho 3184) = ((1 : F) * rho 3185)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3183) * ((1 : F) * rho 3183) = ((1 : F) * rho 3186)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3184) * ((1 : F) * rho 3184) = ((1 : F) * rho 3187)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3188) * ((-1 : F) * rho 3186 + (1 : F) * rho 3187) = ((2 : F) * rho 3185)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3189) * ((2 : F) + (1 : F) * rho 3186 + (-1 : F) * rho 3187) = ((1 : F) * rho 3186 + (1 : F) * rho 3187)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3188) * ((1 : F) * rho 3189) = ((1 : F) * rho 3190)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3188) * ((1 : F) * rho 3188) = ((1 : F) * rho 3191)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3189) * ((1 : F) * rho 3189) = ((1 : F) * rho 3192)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193) * ((-1 : F) * rho 3191 + (1 : F) * rho 3192) = ((2 : F) * rho 3190)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3194) * ((2 : F) + (1 : F) * rho 3191 + (-1 : F) * rho 3192) = ((1 : F) * rho 3191 + (1 : F) * rho 3192)

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2756) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3195)

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2757) * ((1 : F) * rho 2797 + (1 : F) * rho 3195) = ((1 : F) * rho 3196)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2756) = ((1 : F) * rho 3197)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2756) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3198)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2757) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3198) = ((1 : F) * rho 3199)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2756) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3200)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193 + (1 : F) * rho 3194) * ((1 : F) + (1 : F) * rho 3196 + (1 : F) * rho 3197 + (1 : F) * rho 3199 + (1 : F) * rho 3200) = ((1 : F) * rho 3201)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193) * ((1 : F) + (1 : F) * rho 3199 + (1 : F) * rho 3200) = ((1 : F) * rho 3202)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3194) * ((1 : F) * rho 3196 + (1 : F) * rho 3197) = ((1 : F) * rho 3203)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3202) * ((1 : F) * rho 3203) = ((1 : F) * rho 3204)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3205) * ((1 : F) + (1 : F) * rho 3204) = ((1 : F) * rho 3202 + (1 : F) * rho 3203)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * ((1 : F) + (-1 : F) * rho 3204) = ((1 : F) * rho 3201 + (-1 : F) * rho 3202 + (-1 : F) * rho 3203)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3205) * ((1 : F) * rho 3206) = ((1 : F) * rho 3207)

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3205) * ((1 : F) * rho 3205) = ((1 : F) * rho 3208)

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * ((1 : F) * rho 3206) = ((1 : F) * rho 3209)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3210) * ((-1 : F) * rho 3208 + (1 : F) * rho 3209) = ((2 : F) * rho 3207)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3211) * ((2 : F) + (1 : F) * rho 3208 + (-1 : F) * rho 3209) = ((1 : F) * rho 3208 + (1 : F) * rho 3209)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3210) * ((1 : F) * rho 3211) = ((1 : F) * rho 3212)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3210) * ((1 : F) * rho 3210) = ((1 : F) * rho 3213)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3211) * ((1 : F) * rho 3211) = ((1 : F) * rho 3214)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3215) * ((-1 : F) * rho 3213 + (1 : F) * rho 3214) = ((2 : F) * rho 3212)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3216) * ((2 : F) + (1 : F) * rho 3213 + (-1 : F) * rho 3214) = ((1 : F) * rho 3213 + (1 : F) * rho 3214)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2754) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3217)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2755) * ((1 : F) * rho 2797 + (1 : F) * rho 3217) = ((1 : F) * rho 3218)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2754) = ((1 : F) * rho 3219)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2754) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3220)

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2755) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3220) = ((1 : F) * rho 3221)

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2754) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3222)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
