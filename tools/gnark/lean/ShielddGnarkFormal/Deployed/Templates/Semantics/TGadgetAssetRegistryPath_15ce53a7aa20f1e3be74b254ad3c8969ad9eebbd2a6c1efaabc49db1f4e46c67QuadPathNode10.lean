import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode10Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node10_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut10 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 3674 + rho 3675) (rho 3676 + rho 3677 + rho 3678) (rho 3676 + rho 3680 + rho 3681) (rho 3679 + rho 3682) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47,
    p48, p49, p50, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 3674 + rho 3675) (rho 3676 + rho 3677 + rho 3678) (rho 3676 + rho 3680 + rho 3681) (rho 3679 + rho 3682)
      (fun w334 w339 w344 w349 w354 => w334 = rho 4012 ∧ w339 = rho 4017 ∧ w344 = rho 4022 ∧ w349 = rho 4027 ∧ w354 = rho 4032) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node10_seg0 rho _ r3687 r3688 r3689 r3690 r3691 (node10_seg1 rho _ r3692 r3693 r3694 r3695 r3696 (node10_seg2 rho _ r3697 r3698 r3699 r3700 r3701 (node10_seg3 rho _ r3702 r3703 r3704 r3705 r3706 (node10_seg4 rho _ r3707 r3708 r3709 r3710 r3711 (node10_seg5 rho _ r3712 r3713 r3714 r3715 r3716 (node10_seg6 rho _ r3717 r3718 r3719 r3720 r3721 (node10_seg7 rho _ r3722 r3723 r3724 r3725 r3726 (node10_seg8 rho _ r3727 r3728 r3729 r3730 r3731 (node10_seg9 rho _ r3732 r3733 r3734 r3735 r3736 (node10_seg10 rho _ r3737 r3738 r3739 r3740 r3741 (node10_seg11 rho _ r3742 r3743 r3744 r3745 r3746 (node10_seg12 rho _ r3747 r3748 r3749 r3750 r3751 (node10_seg13 rho _ r3752 r3753 r3754 r3755 r3756 (node10_seg14 rho _ r3757 r3758 r3759 r3760 r3761 (node10_seg15 rho _ r3762 r3763 r3764 r3765 r3766 (node10_seg16 rho _ r3767 r3768 r3769 r3770 r3771 (node10_seg17 rho _ r3772 r3773 r3774 r3775 r3776 (node10_seg18 rho _ r3777 r3778 r3779 r3780 r3781 (node10_seg19 rho _ r3782 r3783 r3784 r3785 r3786 (node10_seg20 rho _ r3787 r3788 r3789 r3790 r3791 (node10_seg21 rho _ r3792 r3793 r3794 r3795 r3796 (node10_seg22 rho _ r3797 r3798 r3799 r3800 r3801 (node10_seg23 rho _ r3802 r3803 r3804 r3805 r3806 (node10_seg24 rho _ r3807 r3808 r3809 r3810 r3811 (node10_seg25 rho _ r3812 r3813 r3814 r3815 r3816 (node10_seg26 rho _ r3817 r3818 r3819 r3820 r3821 (node10_seg27 rho _ r3822 r3823 r3824 r3825 r3826 (node10_seg28 rho _ r3827 r3828 r3829 r3830 r3831 (node10_seg29 rho _ r3832 r3833 r3834 r3835 r3836 (node10_seg30 rho _ r3837 r3838 r3839 r3840 r3841 (node10_seg31 rho _ r3842 r3843 r3844 r3845 r3846 (node10_seg32 rho _ r3847 r3848 r3849 r3850 r3851 (node10_seg33 rho _ r3852 r3853 r3854 r3855 r3856 (node10_seg34 rho _ r3857 r3858 r3859 r3860 r3861 (node10_seg35 rho _ r3862 r3863 r3864 r3865 r3866 (node10_seg36 rho _ r3867 r3868 r3869 r3870 r3871 (node10_seg37 rho _ r3872 r3873 r3874 r3875 r3876 (node10_seg38 rho _ r3877 r3878 r3879 r3880 r3881 (node10_seg39 rho _ r3882 r3883 r3884 r3885 r3886 (node10_seg40 rho _ r3887 r3888 r3889 r3890 r3891 (node10_seg41 rho _ r3892 r3893 r3894 r3895 r3896 (node10_seg42 rho _ r3897 r3898 r3899 r3900 r3901 (node10_seg43 rho _ r3902 r3903 r3904 r3905 r3906 (node10_seg44 rho _ r3907 r3908 r3909 r3910 r3911 (node10_seg45 rho _ r3912 r3913 r3914 r3915 r3916 (node10_seg46 rho _ r3917 r3918 r3919 r3920 r3921 (node10_seg47 rho _ r3922 r3923 r3924 r3925 r3926 (node10_seg48 rho _ r3927 r3928 r3929 r3930 r3931 (node10_seg49 rho _ r3932 r3933 r3934 r3935 r3936 (node10_seg50 rho _ r3937 r3938 r3939 r3940 r3941 (node10_seg51 rho _ r3942 r3943 r3944 r3945 r3946 (node10_seg52 rho _ r3947 r3948 r3949 r3950 r3951 (node10_seg53 rho _ r3952 r3953 r3954 r3955 r3956 (node10_seg54 rho _ r3957 r3958 r3959 r3960 r3961 (node10_seg55 rho _ r3962 r3963 r3964 r3965 r3966 (node10_seg56 rho _ r3967 r3968 r3969 r3970 r3971 (node10_seg57 rho _ r3972 r3973 r3974 r3975 r3976 (node10_seg58 rho _ r3977 r3978 r3979 r3980 r3981 (node10_seg59 rho _ r3982 r3983 r3984 r3985 r3986 (node10_seg60 rho _ r3987 r3988 r3989 r3990 r3991 (node10_seg61 rho _ r3992 r3993 r3994 r3995 r3996 (node10_seg62 rho _ r3997 r3998 r3999 r4000 r4001 (node10_seg63 rho _ r4002 r4003 r4004 r4005 r4006 (node10_seg64 rho _ r4007 r4008 r4009 r4010 r4011 (node10_seg65 rho _ r4012 r4013 r4014 r4015 r4016 (node10_seg66 rho _ r4017 r4018 r4019 r4020 r4021 (node10_seg67 rho _ r4022 r4023 r4024 r4025 r4026 (node10_seg68 rho _ r4027 r4028 r4029 r4030 r4031 (node10_seg69 rho _ r4032 r4033 r4034 r4035 r4036 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 3674 + rho 3675) (rho 3676 + rho 3677 + rho 3678) (rho 3676 + rho 3680 + rho 3681) (rho 3679 + rho 3682) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut10, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
