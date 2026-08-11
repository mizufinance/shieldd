import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs82

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92) * ((-1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1817 + (1 : F) * rho 1823) = ((1 : F) * rho 3557)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93) * ((1 : F) * rho 1817 + (1 : F) * rho 3557) = ((1 : F) * rho 3558)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92) * ((1 : F) * rho 1810 + (1 : F) * rho 1811) = ((1 : F) * rho 3559)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92) * ((1 : F) + (-1 : F) * rho 1812 + (-1 : F) * rho 1813 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3560)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93) * ((-1 : F) + (1 : F) * rho 1818 + (1 : F) * rho 3560) = ((1 : F) * rho 3561)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92) * ((-1 : F) + (1 : F) * rho 1812 + (1 : F) * rho 1813) = ((1 : F) * rho 3562)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3555 + (1 : F) * rho 3556) * ((1 : F) + (1 : F) * rho 3558 + (1 : F) * rho 3559 + (1 : F) * rho 3561 + (1 : F) * rho 3562) = ((1 : F) * rho 3563)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3555) * ((1 : F) + (1 : F) * rho 3561 + (1 : F) * rho 3562) = ((1 : F) * rho 3564)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3556) * ((1 : F) * rho 3558 + (1 : F) * rho 3559) = ((1 : F) * rho 3565)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3564) * ((1 : F) * rho 3565) = ((1 : F) * rho 3566)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3567) * ((1 : F) + (1 : F) * rho 3566) = ((1 : F) * rho 3564 + (1 : F) * rho 3565)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3568) * ((1 : F) + (-1 : F) * rho 3566) = ((1 : F) * rho 3563 + (-1 : F) * rho 3564 + (-1 : F) * rho 3565)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3567) * ((1 : F) * rho 3568) = ((1 : F) * rho 3569)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3567) * ((1 : F) * rho 3567) = ((1 : F) * rho 3570)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3568) * ((1 : F) * rho 3568) = ((1 : F) * rho 3571)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((-1 : F) * rho 3570 + (1 : F) * rho 3571) = ((2 : F) * rho 3569)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3573) * ((2 : F) + (1 : F) * rho 3570 + (-1 : F) * rho 3571) = ((1 : F) * rho 3570 + (1 : F) * rho 3571)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((1 : F) * rho 3573) = ((1 : F) * rho 3574)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((1 : F) * rho 3572) = ((1 : F) * rho 3575)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3573) * ((1 : F) * rho 3573) = ((1 : F) * rho 3576)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3577) * ((-1 : F) * rho 3575 + (1 : F) * rho 3576) = ((2 : F) * rho 3574)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((2 : F) + (1 : F) * rho 3575 + (-1 : F) * rho 3576) = ((1 : F) * rho 3575 + (1 : F) * rho 3576)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90) * ((-1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1817 + (1 : F) * rho 1823) = ((1 : F) * rho 3579)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91) * ((1 : F) * rho 1817 + (1 : F) * rho 3579) = ((1 : F) * rho 3580)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90) * ((1 : F) * rho 1810 + (1 : F) * rho 1811) = ((1 : F) * rho 3581)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90) * ((1 : F) + (-1 : F) * rho 1812 + (-1 : F) * rho 1813 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3582)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91) * ((-1 : F) + (1 : F) * rho 1818 + (1 : F) * rho 3582) = ((1 : F) * rho 3583)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90) * ((-1 : F) + (1 : F) * rho 1812 + (1 : F) * rho 1813) = ((1 : F) * rho 3584)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3577 + (1 : F) * rho 3578) * ((1 : F) + (1 : F) * rho 3580 + (1 : F) * rho 3581 + (1 : F) * rho 3583 + (1 : F) * rho 3584) = ((1 : F) * rho 3585)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3577) * ((1 : F) + (1 : F) * rho 3583 + (1 : F) * rho 3584) = ((1 : F) * rho 3586)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((1 : F) * rho 3580 + (1 : F) * rho 3581) = ((1 : F) * rho 3587)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3586) * ((1 : F) * rho 3587) = ((1 : F) * rho 3588)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3589) * ((1 : F) + (1 : F) * rho 3588) = ((1 : F) * rho 3586 + (1 : F) * rho 3587)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3590) * ((1 : F) + (-1 : F) * rho 3588) = ((1 : F) * rho 3585 + (-1 : F) * rho 3586 + (-1 : F) * rho 3587)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3589) * ((1 : F) * rho 3590) = ((1 : F) * rho 3591)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3589) * ((1 : F) * rho 3589) = ((1 : F) * rho 3592)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3590) * ((1 : F) * rho 3590) = ((1 : F) * rho 3593)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3594) * ((-1 : F) * rho 3592 + (1 : F) * rho 3593) = ((2 : F) * rho 3591)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3595) * ((2 : F) + (1 : F) * rho 3592 + (-1 : F) * rho 3593) = ((1 : F) * rho 3592 + (1 : F) * rho 3593)

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3594) * ((1 : F) * rho 3595) = ((1 : F) * rho 3596)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3594) * ((1 : F) * rho 3594) = ((1 : F) * rho 3597)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3595) * ((1 : F) * rho 3595) = ((1 : F) * rho 3598)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3599) * ((-1 : F) * rho 3597 + (1 : F) * rho 3598) = ((2 : F) * rho 3596)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3600) * ((2 : F) + (1 : F) * rho 3597 + (-1 : F) * rho 3598) = ((1 : F) * rho 3597 + (1 : F) * rho 3598)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88) * ((-1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1817 + (1 : F) * rho 1823) = ((1 : F) * rho 3601)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89) * ((1 : F) * rho 1817 + (1 : F) * rho 3601) = ((1 : F) * rho 3602)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88) * ((1 : F) * rho 1810 + (1 : F) * rho 1811) = ((1 : F) * rho 3603)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88) * ((1 : F) + (-1 : F) * rho 1812 + (-1 : F) * rho 1813 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3604)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89) * ((-1 : F) + (1 : F) * rho 1818 + (1 : F) * rho 3604) = ((1 : F) * rho 3605)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88) * ((-1 : F) + (1 : F) * rho 1812 + (1 : F) * rho 1813) = ((1 : F) * rho 3606)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3599 + (1 : F) * rho 3600) * ((1 : F) + (1 : F) * rho 3602 + (1 : F) * rho 3603 + (1 : F) * rho 3605 + (1 : F) * rho 3606) = ((1 : F) * rho 3607)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3599) * ((1 : F) + (1 : F) * rho 3605 + (1 : F) * rho 3606) = ((1 : F) * rho 3608)

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3600) * ((1 : F) * rho 3602 + (1 : F) * rho 3603) = ((1 : F) * rho 3609)

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3608) * ((1 : F) * rho 3609) = ((1 : F) * rho 3610)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) + (1 : F) * rho 3610) = ((1 : F) * rho 3608 + (1 : F) * rho 3609)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3612) * ((1 : F) + (-1 : F) * rho 3610) = ((1 : F) * rho 3607 + (-1 : F) * rho 3608 + (-1 : F) * rho 3609)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) * rho 3612) = ((1 : F) * rho 3613)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) * rho 3611) = ((1 : F) * rho 3614)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3612) * ((1 : F) * rho 3612) = ((1 : F) * rho 3615)

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3616) * ((-1 : F) * rho 3614 + (1 : F) * rho 3615) = ((2 : F) * rho 3613)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((2 : F) + (1 : F) * rho 3614 + (-1 : F) * rho 3615) = ((1 : F) * rho 3614 + (1 : F) * rho 3615)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3616) * ((1 : F) * rho 3617) = ((1 : F) * rho 3618)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3616) * ((1 : F) * rho 3616) = ((1 : F) * rho 3619)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) * rho 3617) = ((1 : F) * rho 3620)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3621) * ((-1 : F) * rho 3619 + (1 : F) * rho 3620) = ((2 : F) * rho 3618)

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622) * ((2 : F) + (1 : F) * rho 3619 + (-1 : F) * rho 3620) = ((1 : F) * rho 3619 + (1 : F) * rho 3620)

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 86) * ((-1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1817 + (1 : F) * rho 1823) = ((1 : F) * rho 3623)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 87) * ((1 : F) * rho 1817 + (1 : F) * rho 3623) = ((1 : F) * rho 3624)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 86) * ((1 : F) * rho 1810 + (1 : F) * rho 1811) = ((1 : F) * rho 3625)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 86) * ((1 : F) + (-1 : F) * rho 1812 + (-1 : F) * rho 1813 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3626)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 87) * ((-1 : F) + (1 : F) * rho 1818 + (1 : F) * rho 3626) = ((1 : F) * rho 3627)

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 86) * ((-1 : F) + (1 : F) * rho 1812 + (1 : F) * rho 1813) = ((1 : F) * rho 3628)

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3621 + (1 : F) * rho 3622) * ((1 : F) + (1 : F) * rho 3624 + (1 : F) * rho 3625 + (1 : F) * rho 3627 + (1 : F) * rho 3628) = ((1 : F) * rho 3629)

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3621) * ((1 : F) + (1 : F) * rho 3627 + (1 : F) * rho 3628) = ((1 : F) * rho 3630)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622) * ((1 : F) * rho 3624 + (1 : F) * rho 3625) = ((1 : F) * rho 3631)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3630) * ((1 : F) * rho 3631) = ((1 : F) * rho 3632)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3633) * ((1 : F) + (1 : F) * rho 3632) = ((1 : F) * rho 3630 + (1 : F) * rho 3631)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3634) * ((1 : F) + (-1 : F) * rho 3632) = ((1 : F) * rho 3629 + (-1 : F) * rho 3630 + (-1 : F) * rho 3631)

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3633) * ((1 : F) * rho 3634) = ((1 : F) * rho 3635)

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3633) * ((1 : F) * rho 3633) = ((1 : F) * rho 3636)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3634) * ((1 : F) * rho 3634) = ((1 : F) * rho 3637)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3638) * ((-1 : F) * rho 3636 + (1 : F) * rho 3637) = ((2 : F) * rho 3635)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3639) * ((2 : F) + (1 : F) * rho 3636 + (-1 : F) * rho 3637) = ((1 : F) * rho 3636 + (1 : F) * rho 3637)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3638) * ((1 : F) * rho 3639) = ((1 : F) * rho 3640)

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3638) * ((1 : F) * rho 3638) = ((1 : F) * rho 3641)

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3639) * ((1 : F) * rho 3639) = ((1 : F) * rho 3642)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((-1 : F) * rho 3641 + (1 : F) * rho 3642) = ((2 : F) * rho 3640)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((2 : F) + (1 : F) * rho 3641 + (-1 : F) * rho 3642) = ((1 : F) * rho 3641 + (1 : F) * rho 3642)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((-1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1817 + (1 : F) * rho 1823) = ((1 : F) * rho 3645)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 85) * ((1 : F) * rho 1817 + (1 : F) * rho 3645) = ((1 : F) * rho 3646)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((1 : F) * rho 1810 + (1 : F) * rho 1811) = ((1 : F) * rho 3647)

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((1 : F) + (-1 : F) * rho 1812 + (-1 : F) * rho 1813 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3648)

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 85) * ((-1 : F) + (1 : F) * rho 1818 + (1 : F) * rho 3648) = ((1 : F) * rho 3649)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((-1 : F) + (1 : F) * rho 1812 + (1 : F) * rho 1813) = ((1 : F) * rho 3650)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643 + (1 : F) * rho 3644) * ((1 : F) + (1 : F) * rho 3646 + (1 : F) * rho 3647 + (1 : F) * rho 3649 + (1 : F) * rho 3650) = ((1 : F) * rho 3651)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((1 : F) + (1 : F) * rho 3649 + (1 : F) * rho 3650) = ((1 : F) * rho 3652)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((1 : F) * rho 3646 + (1 : F) * rho 3647) = ((1 : F) * rho 3653)

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3652) * ((1 : F) * rho 3653) = ((1 : F) * rho 3654)

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3655) * ((1 : F) + (1 : F) * rho 3654) = ((1 : F) * rho 3652 + (1 : F) * rho 3653)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) + (-1 : F) * rho 3654) = ((1 : F) * rho 3651 + (-1 : F) * rho 3652 + (-1 : F) * rho 3653)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3655) * ((1 : F) * rho 3656) = ((1 : F) * rho 3657)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3655) * ((1 : F) * rho 3655) = ((1 : F) * rho 3658)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) * rho 3656) = ((1 : F) * rho 3659)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3660) * ((-1 : F) * rho 3658 + (1 : F) * rho 3659) = ((2 : F) * rho 3657)

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661) * ((2 : F) + (1 : F) * rho 3658 + (-1 : F) * rho 3659) = ((1 : F) * rho 3658 + (1 : F) * rho 3659)

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3660) * ((1 : F) * rho 3661) = ((1 : F) * rho 3662)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3660) * ((1 : F) * rho 3660) = ((1 : F) * rho 3663)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661) * ((1 : F) * rho 3661) = ((1 : F) * rho 3664)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3665) * ((-1 : F) * rho 3663 + (1 : F) * rho 3664) = ((2 : F) * rho 3662)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3666) * ((2 : F) + (1 : F) * rho 3663 + (-1 : F) * rho 3664) = ((1 : F) * rho 3663 + (1 : F) * rho 3664)

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * ((-1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1817 + (1 : F) * rho 1823) = ((1 : F) * rho 3667)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
