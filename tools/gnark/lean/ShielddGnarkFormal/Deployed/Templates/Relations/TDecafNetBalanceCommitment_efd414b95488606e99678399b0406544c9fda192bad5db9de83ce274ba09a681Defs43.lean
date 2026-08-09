import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs42

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3334) * ((1 : F) * rho 3335) = ((1 : F) * rho 3336)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3337) * ((1 : F) + (1 : F) * rho 3336) = ((1 : F) * rho 3334 + (1 : F) * rho 3335)

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3338) * ((1 : F) + (-1 : F) * rho 3336) = ((1 : F) * rho 3333 + (-1 : F) * rho 3334 + (-1 : F) * rho 3335)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3337) * ((1 : F) * rho 3338) = ((1 : F) * rho 3339)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3337) * ((1 : F) * rho 3337) = ((1 : F) * rho 3340)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3338) * ((1 : F) * rho 3338) = ((1 : F) * rho 3341)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3342) * ((-1 : F) * rho 3340 + (1 : F) * rho 3341) = ((2 : F) * rho 3339)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3343) * ((2 : F) + (1 : F) * rho 3340 + (-1 : F) * rho 3341) = ((1 : F) * rho 3340 + (1 : F) * rho 3341)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3342) * ((1 : F) * rho 3343) = ((1 : F) * rho 3344)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3342) * ((1 : F) * rho 3342) = ((1 : F) * rho 3345)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3343) * ((1 : F) * rho 3343) = ((1 : F) * rho 3346)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3347) * ((-1 : F) * rho 3345 + (1 : F) * rho 3346) = ((2 : F) * rho 3344)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3348) * ((2 : F) + (1 : F) * rho 3345 + (-1 : F) * rho 3346) = ((1 : F) * rho 3345 + (1 : F) * rho 3346)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2742) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3349)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2743) * ((1 : F) * rho 2797 + (1 : F) * rho 3349) = ((1 : F) * rho 3350)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2742) = ((1 : F) * rho 3351)

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2742) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3352)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2743) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3352) = ((1 : F) * rho 3353)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2742) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3354)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3347 + (1 : F) * rho 3348) * ((1 : F) + (1 : F) * rho 3350 + (1 : F) * rho 3351 + (1 : F) * rho 3353 + (1 : F) * rho 3354) = ((1 : F) * rho 3355)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3347) * ((1 : F) + (1 : F) * rho 3353 + (1 : F) * rho 3354) = ((1 : F) * rho 3356)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3348) * ((1 : F) * rho 3350 + (1 : F) * rho 3351) = ((1 : F) * rho 3357)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3356) * ((1 : F) * rho 3357) = ((1 : F) * rho 3358)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3359) * ((1 : F) + (1 : F) * rho 3358) = ((1 : F) * rho 3356 + (1 : F) * rho 3357)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3360) * ((1 : F) + (-1 : F) * rho 3358) = ((1 : F) * rho 3355 + (-1 : F) * rho 3356 + (-1 : F) * rho 3357)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3359) * ((1 : F) * rho 3360) = ((1 : F) * rho 3361)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3359) * ((1 : F) * rho 3359) = ((1 : F) * rho 3362)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3360) * ((1 : F) * rho 3360) = ((1 : F) * rho 3363)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3364) * ((-1 : F) * rho 3362 + (1 : F) * rho 3363) = ((2 : F) * rho 3361)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3365) * ((2 : F) + (1 : F) * rho 3362 + (-1 : F) * rho 3363) = ((1 : F) * rho 3362 + (1 : F) * rho 3363)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3364) * ((1 : F) * rho 3365) = ((1 : F) * rho 3366)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3364) * ((1 : F) * rho 3364) = ((1 : F) * rho 3367)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3365) * ((1 : F) * rho 3365) = ((1 : F) * rho 3368)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3369) * ((-1 : F) * rho 3367 + (1 : F) * rho 3368) = ((2 : F) * rho 3366)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3370) * ((2 : F) + (1 : F) * rho 3367 + (-1 : F) * rho 3368) = ((1 : F) * rho 3367 + (1 : F) * rho 3368)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2740) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3371)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2741) * ((1 : F) * rho 2797 + (1 : F) * rho 3371) = ((1 : F) * rho 3372)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2740) = ((1 : F) * rho 3373)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2740) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3374)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2741) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3374) = ((1 : F) * rho 3375)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2740) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3376)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3369 + (1 : F) * rho 3370) * ((1 : F) + (1 : F) * rho 3372 + (1 : F) * rho 3373 + (1 : F) * rho 3375 + (1 : F) * rho 3376) = ((1 : F) * rho 3377)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3369) * ((1 : F) + (1 : F) * rho 3375 + (1 : F) * rho 3376) = ((1 : F) * rho 3378)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3370) * ((1 : F) * rho 3372 + (1 : F) * rho 3373) = ((1 : F) * rho 3379)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3378) * ((1 : F) * rho 3379) = ((1 : F) * rho 3380)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3381) * ((1 : F) + (1 : F) * rho 3380) = ((1 : F) * rho 3378 + (1 : F) * rho 3379)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3382) * ((1 : F) + (-1 : F) * rho 3380) = ((1 : F) * rho 3377 + (-1 : F) * rho 3378 + (-1 : F) * rho 3379)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3381) * ((1 : F) * rho 3382) = ((1 : F) * rho 3383)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3381) * ((1 : F) * rho 3381) = ((1 : F) * rho 3384)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3382) * ((1 : F) * rho 3382) = ((1 : F) * rho 3385)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3386) * ((-1 : F) * rho 3384 + (1 : F) * rho 3385) = ((2 : F) * rho 3383)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3387) * ((2 : F) + (1 : F) * rho 3384 + (-1 : F) * rho 3385) = ((1 : F) * rho 3384 + (1 : F) * rho 3385)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3386) * ((1 : F) * rho 3387) = ((1 : F) * rho 3388)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3386) * ((1 : F) * rho 3386) = ((1 : F) * rho 3389)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3387) * ((1 : F) * rho 3387) = ((1 : F) * rho 3390)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3391) * ((-1 : F) * rho 3389 + (1 : F) * rho 3390) = ((2 : F) * rho 3388)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3392) * ((2 : F) + (1 : F) * rho 3389 + (-1 : F) * rho 3390) = ((1 : F) * rho 3389 + (1 : F) * rho 3390)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3393)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2739) * ((1 : F) * rho 2797 + (1 : F) * rho 3393) = ((1 : F) * rho 3394)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2738) = ((1 : F) * rho 3395)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3396)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2739) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3396) = ((1 : F) * rho 3397)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3398)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3391 + (1 : F) * rho 3392) * ((1 : F) + (1 : F) * rho 3394 + (1 : F) * rho 3395 + (1 : F) * rho 3397 + (1 : F) * rho 3398) = ((1 : F) * rho 3399)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3391) * ((1 : F) + (1 : F) * rho 3397 + (1 : F) * rho 3398) = ((1 : F) * rho 3400)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3392) * ((1 : F) * rho 3394 + (1 : F) * rho 3395) = ((1 : F) * rho 3401)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3400) * ((1 : F) * rho 3401) = ((1 : F) * rho 3402)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3403) * ((1 : F) + (1 : F) * rho 3402) = ((1 : F) * rho 3400 + (1 : F) * rho 3401)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3404) * ((1 : F) + (-1 : F) * rho 3402) = ((1 : F) * rho 3399 + (-1 : F) * rho 3400 + (-1 : F) * rho 3401)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3403) * ((1 : F) * rho 3404) = ((1 : F) * rho 3405)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3403) * ((1 : F) * rho 3403) = ((1 : F) * rho 3406)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3404) * ((1 : F) * rho 3404) = ((1 : F) * rho 3407)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3408) * ((-1 : F) * rho 3406 + (1 : F) * rho 3407) = ((2 : F) * rho 3405)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409) * ((2 : F) + (1 : F) * rho 3406 + (-1 : F) * rho 3407) = ((1 : F) * rho 3406 + (1 : F) * rho 3407)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3408) * ((1 : F) * rho 3409) = ((1 : F) * rho 3410)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3408) * ((1 : F) * rho 3408) = ((1 : F) * rho 3411)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409) * ((1 : F) * rho 3409) = ((1 : F) * rho 3412)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3413) * ((-1 : F) * rho 3411 + (1 : F) * rho 3412) = ((2 : F) * rho 3410)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * ((2 : F) + (1 : F) * rho 3411 + (-1 : F) * rho 3412) = ((1 : F) * rho 3411 + (1 : F) * rho 3412)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2736) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3415)

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2737) * ((1 : F) * rho 2797 + (1 : F) * rho 3415) = ((1 : F) * rho 3416)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2736) = ((1 : F) * rho 3417)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2736) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3418)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2737) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3418) = ((1 : F) * rho 3419)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2736) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3420)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3413 + (1 : F) * rho 3414) * ((1 : F) + (1 : F) * rho 3416 + (1 : F) * rho 3417 + (1 : F) * rho 3419 + (1 : F) * rho 3420) = ((1 : F) * rho 3421)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3413) * ((1 : F) + (1 : F) * rho 3419 + (1 : F) * rho 3420) = ((1 : F) * rho 3422)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * ((1 : F) * rho 3416 + (1 : F) * rho 3417) = ((1 : F) * rho 3423)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3422) * ((1 : F) * rho 3423) = ((1 : F) * rho 3424)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3425) * ((1 : F) + (1 : F) * rho 3424) = ((1 : F) * rho 3422 + (1 : F) * rho 3423)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3426) * ((1 : F) + (-1 : F) * rho 3424) = ((1 : F) * rho 3421 + (-1 : F) * rho 3422 + (-1 : F) * rho 3423)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3425) * ((1 : F) * rho 3426) = ((1 : F) * rho 3427)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3425) * ((1 : F) * rho 3425) = ((1 : F) * rho 3428)

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3426) * ((1 : F) * rho 3426) = ((1 : F) * rho 3429)

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3430) * ((-1 : F) * rho 3428 + (1 : F) * rho 3429) = ((2 : F) * rho 3427)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3431) * ((2 : F) + (1 : F) * rho 3428 + (-1 : F) * rho 3429) = ((1 : F) * rho 3428 + (1 : F) * rho 3429)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3430) * ((1 : F) * rho 3431) = ((1 : F) * rho 3432)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3430) * ((1 : F) * rho 3430) = ((1 : F) * rho 3433)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3431) * ((1 : F) * rho 3431) = ((1 : F) * rho 3434)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435) * ((-1 : F) * rho 3433 + (1 : F) * rho 3434) = ((2 : F) * rho 3432)

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3436) * ((2 : F) + (1 : F) * rho 3433 + (-1 : F) * rho 3434) = ((1 : F) * rho 3433 + (1 : F) * rho 3434)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2734) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3437)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2735) * ((1 : F) * rho 2797 + (1 : F) * rho 3437) = ((1 : F) * rho 3438)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2734) = ((1 : F) * rho 3439)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2734) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3440)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2735) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3440) = ((1 : F) * rho 3441)

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2734) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3442)

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435 + (1 : F) * rho 3436) * ((1 : F) + (1 : F) * rho 3438 + (1 : F) * rho 3439 + (1 : F) * rho 3441 + (1 : F) * rho 3442) = ((1 : F) * rho 3443)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435) * ((1 : F) + (1 : F) * rho 3441 + (1 : F) * rho 3442) = ((1 : F) * rho 3444)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3436) * ((1 : F) * rho 3438 + (1 : F) * rho 3439) = ((1 : F) * rho 3445)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3444) * ((1 : F) * rho 3445) = ((1 : F) * rho 3446)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3447) * ((1 : F) + (1 : F) * rho 3446) = ((1 : F) * rho 3444 + (1 : F) * rho 3445)

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448) * ((1 : F) + (-1 : F) * rho 3446) = ((1 : F) * rho 3443 + (-1 : F) * rho 3444 + (-1 : F) * rho 3445)

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3447) * ((1 : F) * rho 3448) = ((1 : F) * rho 3449)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
