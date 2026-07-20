import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode9Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode9.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node9_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg13ScpNode9Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (10 : F))
        (rho 3552 + rho 3553) (rho 3554 + rho 3555 + rho 3556)
        (rho 3554 + rho 3558 + rho 3559) (rho 3557 + rho 3560) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, p46, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3569, r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.relation (rho 3552) (rho 3554) (rho 3557) (rho 3553) (rho 3555) (rho 3556) (rho 3558) (rho 3559) (rho 3560)
      (fun o0 o1 o2 o3 o4 => o0 = rho 3890 ∧ o1 = rho 3895 ∧ o2 = rho 3900 ∧ o3 = rho 3905 ∧ o4 = rho 3910) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.relation
    exact template_scp_node9_seg0 rho _ r3569 r3570 r3571 r3572 r3573 (template_scp_node9_seg1 rho _ r3574 r3575 r3576 r3577 r3578 (template_scp_node9_seg2 rho _ r3579 r3580 r3581 r3582 r3583 (template_scp_node9_seg3 rho _ r3584 r3585 r3586 r3587 r3588 (template_scp_node9_seg4 rho _ r3589 r3590 r3591 r3592 r3593 (template_scp_node9_seg5 rho _ r3594 r3595 r3596 r3597 r3598 (template_scp_node9_seg6 rho _ r3599 r3600 r3601 r3602 r3603 (template_scp_node9_seg7 rho _ r3604 r3605 r3606 r3607 r3608 (template_scp_node9_seg8 rho _ r3609 r3610 r3611 r3612 r3613 (template_scp_node9_seg9 rho _ r3614 r3615 r3616 r3617 r3618 (template_scp_node9_seg10 rho _ r3619 r3620 r3621 r3622 r3623 (template_scp_node9_seg11 rho _ r3624 r3625 r3626 r3627 r3628 (template_scp_node9_seg12 rho _ r3629 r3630 r3631 r3632 r3633 (template_scp_node9_template rho _ r3634 r3635 r3636 r3637 r3638 (template_scp_node9_seg14 rho _ r3639 r3640 r3641 r3642 r3643 (template_scp_node9_seg15 rho _ r3644 r3645 r3646 r3647 r3648 (template_scp_node9_seg16 rho _ r3649 r3650 r3651 r3652 r3653 (template_scp_node9_seg17 rho _ r3654 r3655 r3656 r3657 r3658 (template_scp_node9_seg18 rho _ r3659 r3660 r3661 r3662 r3663 (template_scp_node9_seg19 rho _ r3664 r3665 r3666 r3667 r3668 (template_scp_node9_seg20 rho _ r3669 r3670 r3671 r3672 r3673 (template_scp_node9_seg21 rho _ r3674 r3675 r3676 r3677 r3678 (template_scp_node9_seg22 rho _ r3679 r3680 r3681 r3682 r3683 (template_scp_node9_seg23 rho _ r3684 r3685 r3686 r3687 r3688 (template_scp_node9_seg24 rho _ r3689 r3690 r3691 r3692 r3693 (template_scp_node9_seg25 rho _ r3694 r3695 r3696 r3697 r3698 (template_scp_node9_seg26 rho _ r3699 r3700 r3701 r3702 r3703 (template_scp_node9_seg27 rho _ r3704 r3705 r3706 r3707 r3708 (template_scp_node9_seg28 rho _ r3709 r3710 r3711 r3712 r3713 (template_scp_node9_seg29 rho _ r3714 r3715 r3716 r3717 r3718 (template_scp_node9_seg30 rho _ r3719 r3720 r3721 r3722 r3723 (template_scp_node9_seg31 rho _ r3724 r3725 r3726 r3727 r3728 (template_scp_node9_seg32 rho _ r3729 r3730 r3731 r3732 r3733 (template_scp_node9_seg33 rho _ r3734 r3735 r3736 r3737 r3738 (template_scp_node9_seg34 rho _ r3739 r3740 r3741 r3742 r3743 (template_scp_node9_seg35 rho _ r3744 r3745 r3746 r3747 r3748 (template_scp_node9_seg36 rho _ r3749 r3750 r3751 r3752 r3753 (template_scp_node9_seg37 rho _ r3754 r3755 r3756 r3757 r3758 (template_scp_node9_seg38 rho _ r3759 r3760 r3761 r3762 r3763 (template_scp_node9_seg39 rho _ r3764 r3765 r3766 r3767 r3768 (template_scp_node9_seg40 rho _ r3769 r3770 r3771 r3772 r3773 (template_scp_node9_seg41 rho _ r3774 r3775 r3776 r3777 r3778 (template_scp_node9_seg42 rho _ r3779 r3780 r3781 r3782 r3783 (template_scp_node9_seg43 rho _ r3784 r3785 r3786 r3787 r3788 (template_scp_node9_seg44 rho _ r3789 r3790 r3791 r3792 r3793 (template_scp_node9_seg45 rho _ r3794 r3795 r3796 r3797 r3798 (template_scp_node9_seg46 rho _ r3799 r3800 r3801 r3802 r3803 (template_scp_node9_seg47 rho _ r3804 r3805 r3806 r3807 r3808 (template_scp_node9_seg48 rho _ r3809 r3810 r3811 r3812 r3813 (template_scp_node9_seg49 rho _ r3814 r3815 r3816 r3817 r3818 (template_scp_node9_seg50 rho _ r3819 r3820 r3821 r3822 r3823 (template_scp_node9_seg51 rho _ r3824 r3825 r3826 r3827 r3828 (template_scp_node9_seg52 rho _ r3829 r3830 r3831 r3832 r3833 (template_scp_node9_seg53 rho _ r3834 r3835 r3836 r3837 r3838 (template_scp_node9_seg54 rho _ r3839 r3840 r3841 r3842 r3843 (template_scp_node9_seg55 rho _ r3844 r3845 r3846 r3847 r3848 (template_scp_node9_seg56 rho _ r3849 r3850 r3851 r3852 r3853 (template_scp_node9_seg57 rho _ r3854 r3855 r3856 r3857 r3858 (template_scp_node9_seg58 rho _ r3859 r3860 r3861 r3862 r3863 (template_scp_node9_seg59 rho _ r3864 r3865 r3866 r3867 r3868 (template_scp_node9_seg60 rho _ r3869 r3870 r3871 r3872 r3873 (template_scp_node9_seg61 rho _ r3874 r3875 r3876 r3877 r3878 (template_scp_node9_seg62 rho _ r3879 r3880 r3881 r3882 r3883 (template_scp_node9_seg63 rho _ r3884 r3885 r3886 r3887 r3888 (template_scp_node9_seg64 rho _ r3889 r3890 r3891 r3892 r3893 (template_scp_node9_seg65 rho _ r3894 r3895 r3896 r3897 r3898 (template_scp_node9_seg66 rho _ r3899 r3900 r3901 r3902 r3903 (template_scp_node9_seg67 rho _ r3904 r3905 r3906 r3907 r3908 (template_scp_node9_seg68 rho _ r3909 r3910 r3911 r3912 r3913 (template_scp_node9_seg69 rho _ r3914 r3915 r3916 r3917 r3918 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.relation_sound_permSpec (rho 3552) (rho 3554) (rho 3557) (rho 3553) (rho 3555) (rho 3556) (rho 3558) (rho 3559) (rho 3560) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.tctNode10DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.F) + (10 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode9Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

