import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs41

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3215 + (1 : F) * rho 3216) * ((1 : F) + (1 : F) * rho 3218 + (1 : F) * rho 3219 + (1 : F) * rho 3221 + (1 : F) * rho 3222) = ((1 : F) * rho 3223)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3215) * ((1 : F) + (1 : F) * rho 3221 + (1 : F) * rho 3222) = ((1 : F) * rho 3224)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3216) * ((1 : F) * rho 3218 + (1 : F) * rho 3219) = ((1 : F) * rho 3225)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3224) * ((1 : F) * rho 3225) = ((1 : F) * rho 3226)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3227) * ((1 : F) + (1 : F) * rho 3226) = ((1 : F) * rho 3224 + (1 : F) * rho 3225)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3228) * ((1 : F) + (-1 : F) * rho 3226) = ((1 : F) * rho 3223 + (-1 : F) * rho 3224 + (-1 : F) * rho 3225)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3227) * ((1 : F) * rho 3228) = ((1 : F) * rho 3229)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3227) * ((1 : F) * rho 3227) = ((1 : F) * rho 3230)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3228) * ((1 : F) * rho 3228) = ((1 : F) * rho 3231)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * ((-1 : F) * rho 3230 + (1 : F) * rho 3231) = ((2 : F) * rho 3229)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3233) * ((2 : F) + (1 : F) * rho 3230 + (-1 : F) * rho 3231) = ((1 : F) * rho 3230 + (1 : F) * rho 3231)

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * ((1 : F) * rho 3233) = ((1 : F) * rho 3234)

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * ((1 : F) * rho 3232) = ((1 : F) * rho 3235)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3233) * ((1 : F) * rho 3233) = ((1 : F) * rho 3236)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3237) * ((-1 : F) * rho 3235 + (1 : F) * rho 3236) = ((2 : F) * rho 3234)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3238) * ((2 : F) + (1 : F) * rho 3235 + (-1 : F) * rho 3236) = ((1 : F) * rho 3235 + (1 : F) * rho 3236)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2752) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3239)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2753) * ((1 : F) * rho 2797 + (1 : F) * rho 3239) = ((1 : F) * rho 3240)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2752) = ((1 : F) * rho 3241)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2752) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3242)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2753) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3242) = ((1 : F) * rho 3243)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2752) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3244)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3237 + (1 : F) * rho 3238) * ((1 : F) + (1 : F) * rho 3240 + (1 : F) * rho 3241 + (1 : F) * rho 3243 + (1 : F) * rho 3244) = ((1 : F) * rho 3245)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3237) * ((1 : F) + (1 : F) * rho 3243 + (1 : F) * rho 3244) = ((1 : F) * rho 3246)

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3238) * ((1 : F) * rho 3240 + (1 : F) * rho 3241) = ((1 : F) * rho 3247)

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3246) * ((1 : F) * rho 3247) = ((1 : F) * rho 3248)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3249) * ((1 : F) + (1 : F) * rho 3248) = ((1 : F) * rho 3246 + (1 : F) * rho 3247)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3250) * ((1 : F) + (-1 : F) * rho 3248) = ((1 : F) * rho 3245 + (-1 : F) * rho 3246 + (-1 : F) * rho 3247)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3249) * ((1 : F) * rho 3250) = ((1 : F) * rho 3251)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3249) * ((1 : F) * rho 3249) = ((1 : F) * rho 3252)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3250) * ((1 : F) * rho 3250) = ((1 : F) * rho 3253)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3254) * ((-1 : F) * rho 3252 + (1 : F) * rho 3253) = ((2 : F) * rho 3251)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3255) * ((2 : F) + (1 : F) * rho 3252 + (-1 : F) * rho 3253) = ((1 : F) * rho 3252 + (1 : F) * rho 3253)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3254) * ((1 : F) * rho 3255) = ((1 : F) * rho 3256)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3254) * ((1 : F) * rho 3254) = ((1 : F) * rho 3257)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3255) * ((1 : F) * rho 3255) = ((1 : F) * rho 3258)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3259) * ((-1 : F) * rho 3257 + (1 : F) * rho 3258) = ((2 : F) * rho 3256)

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3260) * ((2 : F) + (1 : F) * rho 3257 + (-1 : F) * rho 3258) = ((1 : F) * rho 3257 + (1 : F) * rho 3258)

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2750) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3261)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751) * ((1 : F) * rho 2797 + (1 : F) * rho 3261) = ((1 : F) * rho 3262)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2750) = ((1 : F) * rho 3263)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2750) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3264)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3264) = ((1 : F) * rho 3265)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2750) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3266)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3259 + (1 : F) * rho 3260) * ((1 : F) + (1 : F) * rho 3262 + (1 : F) * rho 3263 + (1 : F) * rho 3265 + (1 : F) * rho 3266) = ((1 : F) * rho 3267)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3259) * ((1 : F) + (1 : F) * rho 3265 + (1 : F) * rho 3266) = ((1 : F) * rho 3268)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3260) * ((1 : F) * rho 3262 + (1 : F) * rho 3263) = ((1 : F) * rho 3269)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3268) * ((1 : F) * rho 3269) = ((1 : F) * rho 3270)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * ((1 : F) + (1 : F) * rho 3270) = ((1 : F) * rho 3268 + (1 : F) * rho 3269)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3272) * ((1 : F) + (-1 : F) * rho 3270) = ((1 : F) * rho 3267 + (-1 : F) * rho 3268 + (-1 : F) * rho 3269)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * ((1 : F) * rho 3272) = ((1 : F) * rho 3273)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * ((1 : F) * rho 3271) = ((1 : F) * rho 3274)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3272) * ((1 : F) * rho 3272) = ((1 : F) * rho 3275)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3276) * ((-1 : F) * rho 3274 + (1 : F) * rho 3275) = ((2 : F) * rho 3273)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3277) * ((2 : F) + (1 : F) * rho 3274 + (-1 : F) * rho 3275) = ((1 : F) * rho 3274 + (1 : F) * rho 3275)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3276) * ((1 : F) * rho 3277) = ((1 : F) * rho 3278)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3276) * ((1 : F) * rho 3276) = ((1 : F) * rho 3279)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3277) * ((1 : F) * rho 3277) = ((1 : F) * rho 3280)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3281) * ((-1 : F) * rho 3279 + (1 : F) * rho 3280) = ((2 : F) * rho 3278)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3282) * ((2 : F) + (1 : F) * rho 3279 + (-1 : F) * rho 3280) = ((1 : F) * rho 3279 + (1 : F) * rho 3280)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2748) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3283)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2749) * ((1 : F) * rho 2797 + (1 : F) * rho 3283) = ((1 : F) * rho 3284)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2748) = ((1 : F) * rho 3285)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2748) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3286)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2749) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3286) = ((1 : F) * rho 3287)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2748) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3288)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3281 + (1 : F) * rho 3282) * ((1 : F) + (1 : F) * rho 3284 + (1 : F) * rho 3285 + (1 : F) * rho 3287 + (1 : F) * rho 3288) = ((1 : F) * rho 3289)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3281) * ((1 : F) + (1 : F) * rho 3287 + (1 : F) * rho 3288) = ((1 : F) * rho 3290)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3282) * ((1 : F) * rho 3284 + (1 : F) * rho 3285) = ((1 : F) * rho 3291)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3290) * ((1 : F) * rho 3291) = ((1 : F) * rho 3292)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3293) * ((1 : F) + (1 : F) * rho 3292) = ((1 : F) * rho 3290 + (1 : F) * rho 3291)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3294) * ((1 : F) + (-1 : F) * rho 3292) = ((1 : F) * rho 3289 + (-1 : F) * rho 3290 + (-1 : F) * rho 3291)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3293) * ((1 : F) * rho 3294) = ((1 : F) * rho 3295)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3293) * ((1 : F) * rho 3293) = ((1 : F) * rho 3296)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3294) * ((1 : F) * rho 3294) = ((1 : F) * rho 3297)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3298) * ((-1 : F) * rho 3296 + (1 : F) * rho 3297) = ((2 : F) * rho 3295)

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3299) * ((2 : F) + (1 : F) * rho 3296 + (-1 : F) * rho 3297) = ((1 : F) * rho 3296 + (1 : F) * rho 3297)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3298) * ((1 : F) * rho 3299) = ((1 : F) * rho 3300)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3298) * ((1 : F) * rho 3298) = ((1 : F) * rho 3301)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3299) * ((1 : F) * rho 3299) = ((1 : F) * rho 3302)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3303) * ((-1 : F) * rho 3301 + (1 : F) * rho 3302) = ((2 : F) * rho 3300)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3304) * ((2 : F) + (1 : F) * rho 3301 + (-1 : F) * rho 3302) = ((1 : F) * rho 3301 + (1 : F) * rho 3302)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2746) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3305)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2747) * ((1 : F) * rho 2797 + (1 : F) * rho 3305) = ((1 : F) * rho 3306)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2746) = ((1 : F) * rho 3307)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2746) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3308)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2747) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3308) = ((1 : F) * rho 3309)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2746) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3310)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3303 + (1 : F) * rho 3304) * ((1 : F) + (1 : F) * rho 3306 + (1 : F) * rho 3307 + (1 : F) * rho 3309 + (1 : F) * rho 3310) = ((1 : F) * rho 3311)

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3303) * ((1 : F) + (1 : F) * rho 3309 + (1 : F) * rho 3310) = ((1 : F) * rho 3312)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3304) * ((1 : F) * rho 3306 + (1 : F) * rho 3307) = ((1 : F) * rho 3313)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3312) * ((1 : F) * rho 3313) = ((1 : F) * rho 3314)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3315) * ((1 : F) + (1 : F) * rho 3314) = ((1 : F) * rho 3312 + (1 : F) * rho 3313)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3316) * ((1 : F) + (-1 : F) * rho 3314) = ((1 : F) * rho 3311 + (-1 : F) * rho 3312 + (-1 : F) * rho 3313)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3315) * ((1 : F) * rho 3316) = ((1 : F) * rho 3317)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3315) * ((1 : F) * rho 3315) = ((1 : F) * rho 3318)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3316) * ((1 : F) * rho 3316) = ((1 : F) * rho 3319)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3320) * ((-1 : F) * rho 3318 + (1 : F) * rho 3319) = ((2 : F) * rho 3317)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3321) * ((2 : F) + (1 : F) * rho 3318 + (-1 : F) * rho 3319) = ((1 : F) * rho 3318 + (1 : F) * rho 3319)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3320) * ((1 : F) * rho 3321) = ((1 : F) * rho 3322)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3320) * ((1 : F) * rho 3320) = ((1 : F) * rho 3323)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3321) * ((1 : F) * rho 3321) = ((1 : F) * rho 3324)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3325) * ((-1 : F) * rho 3323 + (1 : F) * rho 3324) = ((2 : F) * rho 3322)

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3326) * ((2 : F) + (1 : F) * rho 3323 + (-1 : F) * rho 3324) = ((1 : F) * rho 3323 + (1 : F) * rho 3324)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2744) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3327)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2745) * ((1 : F) * rho 2797 + (1 : F) * rho 3327) = ((1 : F) * rho 3328)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2744) = ((1 : F) * rho 3329)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2744) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3330)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2745) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3330) = ((1 : F) * rho 3331)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2744) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3332)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3325 + (1 : F) * rho 3326) * ((1 : F) + (1 : F) * rho 3328 + (1 : F) * rho 3329 + (1 : F) * rho 3331 + (1 : F) * rho 3332) = ((1 : F) * rho 3333)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3325) * ((1 : F) + (1 : F) * rho 3331 + (1 : F) * rho 3332) = ((1 : F) * rho 3334)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3326) * ((1 : F) * rho 3328 + (1 : F) * rho 3329) = ((1 : F) * rho 3335)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
