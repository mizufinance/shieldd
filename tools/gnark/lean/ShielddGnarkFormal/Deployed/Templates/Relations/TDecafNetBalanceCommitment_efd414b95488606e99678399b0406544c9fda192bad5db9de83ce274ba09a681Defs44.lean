import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs43

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3447) * ((1 : F) * rho 3447) = ((1 : F) * rho 3450)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448) * ((1 : F) * rho 3448) = ((1 : F) * rho 3451)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3452) * ((-1 : F) * rho 3450 + (1 : F) * rho 3451) = ((2 : F) * rho 3449)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453) * ((2 : F) + (1 : F) * rho 3450 + (-1 : F) * rho 3451) = ((1 : F) * rho 3450 + (1 : F) * rho 3451)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3452) * ((1 : F) * rho 3453) = ((1 : F) * rho 3454)

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3452) * ((1 : F) * rho 3452) = ((1 : F) * rho 3455)

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453) * ((1 : F) * rho 3453) = ((1 : F) * rho 3456)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3457) * ((-1 : F) * rho 3455 + (1 : F) * rho 3456) = ((2 : F) * rho 3454)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3458) * ((2 : F) + (1 : F) * rho 3455 + (-1 : F) * rho 3456) = ((1 : F) * rho 3455 + (1 : F) * rho 3456)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2732) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3459)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2733) * ((1 : F) * rho 2797 + (1 : F) * rho 3459) = ((1 : F) * rho 3460)

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2732) = ((1 : F) * rho 3461)

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2732) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3462)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2733) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3462) = ((1 : F) * rho 3463)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2732) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3464)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3457 + (1 : F) * rho 3458) * ((1 : F) + (1 : F) * rho 3460 + (1 : F) * rho 3461 + (1 : F) * rho 3463 + (1 : F) * rho 3464) = ((1 : F) * rho 3465)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3457) * ((1 : F) + (1 : F) * rho 3463 + (1 : F) * rho 3464) = ((1 : F) * rho 3466)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3458) * ((1 : F) * rho 3460 + (1 : F) * rho 3461) = ((1 : F) * rho 3467)

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3466) * ((1 : F) * rho 3467) = ((1 : F) * rho 3468)

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3469) * ((1 : F) + (1 : F) * rho 3468) = ((1 : F) * rho 3466 + (1 : F) * rho 3467)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3470) * ((1 : F) + (-1 : F) * rho 3468) = ((1 : F) * rho 3465 + (-1 : F) * rho 3466 + (-1 : F) * rho 3467)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3469) * ((1 : F) * rho 3470) = ((1 : F) * rho 3471)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3469) * ((1 : F) * rho 3469) = ((1 : F) * rho 3472)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3470) * ((1 : F) * rho 3470) = ((1 : F) * rho 3473)

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * ((-1 : F) * rho 3472 + (1 : F) * rho 3473) = ((2 : F) * rho 3471)

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3475) * ((2 : F) + (1 : F) * rho 3472 + (-1 : F) * rho 3473) = ((1 : F) * rho 3472 + (1 : F) * rho 3473)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * ((1 : F) * rho 3475) = ((1 : F) * rho 3476)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * ((1 : F) * rho 3474) = ((1 : F) * rho 3477)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3475) * ((1 : F) * rho 3475) = ((1 : F) * rho 3478)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479) * ((-1 : F) * rho 3477 + (1 : F) * rho 3478) = ((2 : F) * rho 3476)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((2 : F) + (1 : F) * rho 3477 + (-1 : F) * rho 3478) = ((1 : F) * rho 3477 + (1 : F) * rho 3478)

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2730) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3481)

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2731) * ((1 : F) * rho 2797 + (1 : F) * rho 3481) = ((1 : F) * rho 3482)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2730) = ((1 : F) * rho 3483)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2730) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3484)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2731) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3484) = ((1 : F) * rho 3485)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2730) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3486)

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479 + (1 : F) * rho 3480) * ((1 : F) + (1 : F) * rho 3482 + (1 : F) * rho 3483 + (1 : F) * rho 3485 + (1 : F) * rho 3486) = ((1 : F) * rho 3487)

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479) * ((1 : F) + (1 : F) * rho 3485 + (1 : F) * rho 3486) = ((1 : F) * rho 3488)

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) * rho 3482 + (1 : F) * rho 3483) = ((1 : F) * rho 3489)

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3488) * ((1 : F) * rho 3489) = ((1 : F) * rho 3490)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3491) * ((1 : F) + (1 : F) * rho 3490) = ((1 : F) * rho 3488 + (1 : F) * rho 3489)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492) * ((1 : F) + (-1 : F) * rho 3490) = ((1 : F) * rho 3487 + (-1 : F) * rho 3488 + (-1 : F) * rho 3489)

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3491) * ((1 : F) * rho 3492) = ((1 : F) * rho 3493)

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3491) * ((1 : F) * rho 3491) = ((1 : F) * rho 3494)

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492) * ((1 : F) * rho 3492) = ((1 : F) * rho 3495)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3496) * ((-1 : F) * rho 3494 + (1 : F) * rho 3495) = ((2 : F) * rho 3493)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3497) * ((2 : F) + (1 : F) * rho 3494 + (-1 : F) * rho 3495) = ((1 : F) * rho 3494 + (1 : F) * rho 3495)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3496) * ((1 : F) * rho 3497) = ((1 : F) * rho 3498)

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3496) * ((1 : F) * rho 3496) = ((1 : F) * rho 3499)

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3497) * ((1 : F) * rho 3497) = ((1 : F) * rho 3500)

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3501) * ((-1 : F) * rho 3499 + (1 : F) * rho 3500) = ((2 : F) * rho 3498)

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3502) * ((2 : F) + (1 : F) * rho 3499 + (-1 : F) * rho 3500) = ((1 : F) * rho 3499 + (1 : F) * rho 3500)

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2728) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3503)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2729) * ((1 : F) * rho 2797 + (1 : F) * rho 3503) = ((1 : F) * rho 3504)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2728) = ((1 : F) * rho 3505)

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2728) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3506)

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2729) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3506) = ((1 : F) * rho 3507)

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2728) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3508)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3501 + (1 : F) * rho 3502) * ((1 : F) + (1 : F) * rho 3504 + (1 : F) * rho 3505 + (1 : F) * rho 3507 + (1 : F) * rho 3508) = ((1 : F) * rho 3509)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3501) * ((1 : F) + (1 : F) * rho 3507 + (1 : F) * rho 3508) = ((1 : F) * rho 3510)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3502) * ((1 : F) * rho 3504 + (1 : F) * rho 3505) = ((1 : F) * rho 3511)

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3510) * ((1 : F) * rho 3511) = ((1 : F) * rho 3512)

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((1 : F) + (1 : F) * rho 3512) = ((1 : F) * rho 3510 + (1 : F) * rho 3511)

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3514) * ((1 : F) + (-1 : F) * rho 3512) = ((1 : F) * rho 3509 + (-1 : F) * rho 3510 + (-1 : F) * rho 3511)

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((1 : F) * rho 3514) = ((1 : F) * rho 3515)

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((1 : F) * rho 3513) = ((1 : F) * rho 3516)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3514) * ((1 : F) * rho 3514) = ((1 : F) * rho 3517)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * ((-1 : F) * rho 3516 + (1 : F) * rho 3517) = ((2 : F) * rho 3515)

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3519) * ((2 : F) + (1 : F) * rho 3516 + (-1 : F) * rho 3517) = ((1 : F) * rho 3516 + (1 : F) * rho 3517)

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * ((1 : F) * rho 3519) = ((1 : F) * rho 3520)

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * ((1 : F) * rho 3518) = ((1 : F) * rho 3521)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3519) * ((1 : F) * rho 3519) = ((1 : F) * rho 3522)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3523) * ((-1 : F) * rho 3521 + (1 : F) * rho 3522) = ((2 : F) * rho 3520)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3524) * ((2 : F) + (1 : F) * rho 3521 + (-1 : F) * rho 3522) = ((1 : F) * rho 3521 + (1 : F) * rho 3522)

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2726) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3525)

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2727) * ((1 : F) * rho 2797 + (1 : F) * rho 3525) = ((1 : F) * rho 3526)

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2726) = ((1 : F) * rho 3527)

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2726) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3528)

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2727) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3528) = ((1 : F) * rho 3529)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2726) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3530)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3523 + (1 : F) * rho 3524) * ((1 : F) + (1 : F) * rho 3526 + (1 : F) * rho 3527 + (1 : F) * rho 3529 + (1 : F) * rho 3530) = ((1 : F) * rho 3531)

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3523) * ((1 : F) + (1 : F) * rho 3529 + (1 : F) * rho 3530) = ((1 : F) * rho 3532)

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3524) * ((1 : F) * rho 3526 + (1 : F) * rho 3527) = ((1 : F) * rho 3533)

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3532) * ((1 : F) * rho 3533) = ((1 : F) * rho 3534)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3535) * ((1 : F) + (1 : F) * rho 3534) = ((1 : F) * rho 3532 + (1 : F) * rho 3533)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3536) * ((1 : F) + (-1 : F) * rho 3534) = ((1 : F) * rho 3531 + (-1 : F) * rho 3532 + (-1 : F) * rho 3533)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3535) * ((1 : F) * rho 3536) = ((1 : F) * rho 3537)

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3535) * ((1 : F) * rho 3535) = ((1 : F) * rho 3538)

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3536) * ((1 : F) * rho 3536) = ((1 : F) * rho 3539)

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3540) * ((-1 : F) * rho 3538 + (1 : F) * rho 3539) = ((2 : F) * rho 3537)

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3541) * ((2 : F) + (1 : F) * rho 3538 + (-1 : F) * rho 3539) = ((1 : F) * rho 3538 + (1 : F) * rho 3539)

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3540) * ((1 : F) * rho 3541) = ((1 : F) * rho 3542)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3540) * ((1 : F) * rho 3540) = ((1 : F) * rho 3543)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3541) * ((1 : F) * rho 3541) = ((1 : F) * rho 3544)

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545) * ((-1 : F) * rho 3543 + (1 : F) * rho 3544) = ((2 : F) * rho 3542)

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((2 : F) + (1 : F) * rho 3543 + (-1 : F) * rho 3544) = ((1 : F) * rho 3543 + (1 : F) * rho 3544)

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2724) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3547)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * ((1 : F) * rho 2797 + (1 : F) * rho 3547) = ((1 : F) * rho 3548)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2724) = ((1 : F) * rho 3549)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2724) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3550)

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3550) = ((1 : F) * rho 3551)

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2724) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3552)

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545 + (1 : F) * rho 3546) * ((1 : F) + (1 : F) * rho 3548 + (1 : F) * rho 3549 + (1 : F) * rho 3551 + (1 : F) * rho 3552) = ((1 : F) * rho 3553)

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545) * ((1 : F) + (1 : F) * rho 3551 + (1 : F) * rho 3552) = ((1 : F) * rho 3554)

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) * rho 3548 + (1 : F) * rho 3549) = ((1 : F) * rho 3555)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3554) * ((1 : F) * rho 3555) = ((1 : F) * rho 3556)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((1 : F) + (1 : F) * rho 3556) = ((1 : F) * rho 3554 + (1 : F) * rho 3555)

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * ((1 : F) + (-1 : F) * rho 3556) = ((1 : F) * rho 3553 + (-1 : F) * rho 3554 + (-1 : F) * rho 3555)

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((1 : F) * rho 3558) = ((1 : F) * rho 3559)

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((1 : F) * rho 3557) = ((1 : F) * rho 3560)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * ((1 : F) * rho 3558) = ((1 : F) * rho 3561)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3562) * ((-1 : F) * rho 3560 + (1 : F) * rho 3561) = ((2 : F) * rho 3559)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3563) * ((2 : F) + (1 : F) * rho 3560 + (-1 : F) * rho 3561) = ((1 : F) * rho 3560 + (1 : F) * rho 3561)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
