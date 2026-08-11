import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs46

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow3965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2702) = ((1 : F) * rho 3791)

def relationRow3966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2702) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3792)

def relationRow3967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2703) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3792) = ((1 : F) * rho 3793)

def relationRow3968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2702) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3794)

def relationRow3969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787 + (1 : F) * rho 3788) * ((1 : F) + (1 : F) * rho 3790 + (1 : F) * rho 3791 + (1 : F) * rho 3793 + (1 : F) * rho 3794) = ((1 : F) * rho 3795)

def relationRow3970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * ((1 : F) + (1 : F) * rho 3793 + (1 : F) * rho 3794) = ((1 : F) * rho 3796)

def relationRow3971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3788) * ((1 : F) * rho 3790 + (1 : F) * rho 3791) = ((1 : F) * rho 3797)

def relationRow3972 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3796) * ((1 : F) * rho 3797) = ((1 : F) * rho 3798)

def relationRow3973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) + (1 : F) * rho 3798) = ((1 : F) * rho 3796 + (1 : F) * rho 3797)

def relationRow3974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((1 : F) + (-1 : F) * rho 3798) = ((1 : F) * rho 3795 + (-1 : F) * rho 3796 + (-1 : F) * rho 3797)

def relationRow3975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) * rho 3800) = ((1 : F) * rho 3801)

def relationRow3976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) * rho 3799) = ((1 : F) * rho 3802)

def relationRow3977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((1 : F) * rho 3800) = ((1 : F) * rho 3803)

def relationRow3978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * ((-1 : F) * rho 3802 + (1 : F) * rho 3803) = ((2 : F) * rho 3801)

def relationRow3979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * ((2 : F) + (1 : F) * rho 3802 + (-1 : F) * rho 3803) = ((1 : F) * rho 3802 + (1 : F) * rho 3803)

def relationRow3980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * ((1 : F) * rho 3805) = ((1 : F) * rho 3806)

def relationRow3981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * ((1 : F) * rho 3804) = ((1 : F) * rho 3807)

def relationRow3982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * ((1 : F) * rho 3805) = ((1 : F) * rho 3808)

def relationRow3983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3809) * ((-1 : F) * rho 3807 + (1 : F) * rho 3808) = ((2 : F) * rho 3806)

def relationRow3984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3810) * ((2 : F) + (1 : F) * rho 3807 + (-1 : F) * rho 3808) = ((1 : F) * rho 3807 + (1 : F) * rho 3808)

def relationRow3985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3811)

def relationRow3986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2701) * ((1 : F) * rho 2797 + (1 : F) * rho 3811) = ((1 : F) * rho 3812)

def relationRow3987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2700) = ((1 : F) * rho 3813)

def relationRow3988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3814)

def relationRow3989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2701) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3814) = ((1 : F) * rho 3815)

def relationRow3990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3816)

def relationRow3991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3809 + (1 : F) * rho 3810) * ((1 : F) + (1 : F) * rho 3812 + (1 : F) * rho 3813 + (1 : F) * rho 3815 + (1 : F) * rho 3816) = ((1 : F) * rho 3817)

def relationRow3992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3809) * ((1 : F) + (1 : F) * rho 3815 + (1 : F) * rho 3816) = ((1 : F) * rho 3818)

def relationRow3993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3810) * ((1 : F) * rho 3812 + (1 : F) * rho 3813) = ((1 : F) * rho 3819)

def relationRow3994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3818) * ((1 : F) * rho 3819) = ((1 : F) * rho 3820)

def relationRow3995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3821) * ((1 : F) + (1 : F) * rho 3820) = ((1 : F) * rho 3818 + (1 : F) * rho 3819)

def relationRow3996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3822) * ((1 : F) + (-1 : F) * rho 3820) = ((1 : F) * rho 3817 + (-1 : F) * rho 3818 + (-1 : F) * rho 3819)

def relationRow3997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3821) * ((1 : F) * rho 3822) = ((1 : F) * rho 3823)

def relationRow3998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3821) * ((1 : F) * rho 3821) = ((1 : F) * rho 3824)

def relationRow3999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3822) * ((1 : F) * rho 3822) = ((1 : F) * rho 3825)

def relationRow4000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((-1 : F) * rho 3824 + (1 : F) * rho 3825) = ((2 : F) * rho 3823)

def relationRow4001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3827) * ((2 : F) + (1 : F) * rho 3824 + (-1 : F) * rho 3825) = ((1 : F) * rho 3824 + (1 : F) * rho 3825)

def relationRow4002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((1 : F) * rho 3827) = ((1 : F) * rho 3828)

def relationRow4003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((1 : F) * rho 3826) = ((1 : F) * rho 3829)

def relationRow4004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3827) * ((1 : F) * rho 3827) = ((1 : F) * rho 3830)

def relationRow4005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * ((-1 : F) * rho 3829 + (1 : F) * rho 3830) = ((2 : F) * rho 3828)

def relationRow4006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((2 : F) + (1 : F) * rho 3829 + (-1 : F) * rho 3830) = ((1 : F) * rho 3829 + (1 : F) * rho 3830)

def relationRow4007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2698) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3833)

def relationRow4008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * ((1 : F) * rho 2797 + (1 : F) * rho 3833) = ((1 : F) * rho 3834)

def relationRow4009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2698) = ((1 : F) * rho 3835)

def relationRow4010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2698) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3836)

def relationRow4011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3836) = ((1 : F) * rho 3837)

def relationRow4012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2698) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3838)

def relationRow4013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831 + (1 : F) * rho 3832) * ((1 : F) + (1 : F) * rho 3834 + (1 : F) * rho 3835 + (1 : F) * rho 3837 + (1 : F) * rho 3838) = ((1 : F) * rho 3839)

def relationRow4014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * ((1 : F) + (1 : F) * rho 3837 + (1 : F) * rho 3838) = ((1 : F) * rho 3840)

def relationRow4015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((1 : F) * rho 3834 + (1 : F) * rho 3835) = ((1 : F) * rho 3841)

def relationRow4016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3840) * ((1 : F) * rho 3841) = ((1 : F) * rho 3842)

def relationRow4017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * ((1 : F) + (1 : F) * rho 3842) = ((1 : F) * rho 3840 + (1 : F) * rho 3841)

def relationRow4018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * ((1 : F) + (-1 : F) * rho 3842) = ((1 : F) * rho 3839 + (-1 : F) * rho 3840 + (-1 : F) * rho 3841)

def relationRow4019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * ((1 : F) * rho 3844) = ((1 : F) * rho 3845)

def relationRow4020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * ((1 : F) * rho 3843) = ((1 : F) * rho 3846)

def relationRow4021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * ((1 : F) * rho 3844) = ((1 : F) * rho 3847)

def relationRow4022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3848) * ((-1 : F) * rho 3846 + (1 : F) * rho 3847) = ((2 : F) * rho 3845)

def relationRow4023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3849) * ((2 : F) + (1 : F) * rho 3846 + (-1 : F) * rho 3847) = ((1 : F) * rho 3846 + (1 : F) * rho 3847)

def relationRow4024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3848) * ((1 : F) * rho 3849) = ((1 : F) * rho 3850)

def relationRow4025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3848) * ((1 : F) * rho 3848) = ((1 : F) * rho 3851)

def relationRow4026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3849) * ((1 : F) * rho 3849) = ((1 : F) * rho 3852)

def relationRow4027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3853) * ((-1 : F) * rho 3851 + (1 : F) * rho 3852) = ((2 : F) * rho 3850)

def relationRow4028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3854) * ((2 : F) + (1 : F) * rho 3851 + (-1 : F) * rho 3852) = ((1 : F) * rho 3851 + (1 : F) * rho 3852)

def relationRow4029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2696) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3855)

def relationRow4030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2697) * ((1 : F) * rho 2797 + (1 : F) * rho 3855) = ((1 : F) * rho 3856)

def relationRow4031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2696) = ((1 : F) * rho 3857)

def relationRow4032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2696) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3858)

def relationRow4033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2697) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3858) = ((1 : F) * rho 3859)

def relationRow4034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2696) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3860)

def relationRow4035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3853 + (1 : F) * rho 3854) * ((1 : F) + (1 : F) * rho 3856 + (1 : F) * rho 3857 + (1 : F) * rho 3859 + (1 : F) * rho 3860) = ((1 : F) * rho 3861)

def relationRow4036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3853) * ((1 : F) + (1 : F) * rho 3859 + (1 : F) * rho 3860) = ((1 : F) * rho 3862)

def relationRow4037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3854) * ((1 : F) * rho 3856 + (1 : F) * rho 3857) = ((1 : F) * rho 3863)

def relationRow4038 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3862) * ((1 : F) * rho 3863) = ((1 : F) * rho 3864)

def relationRow4039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((1 : F) + (1 : F) * rho 3864) = ((1 : F) * rho 3862 + (1 : F) * rho 3863)

def relationRow4040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3866) * ((1 : F) + (-1 : F) * rho 3864) = ((1 : F) * rho 3861 + (-1 : F) * rho 3862 + (-1 : F) * rho 3863)

def relationRow4041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((1 : F) * rho 3866) = ((1 : F) * rho 3867)

def relationRow4042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((1 : F) * rho 3865) = ((1 : F) * rho 3868)

def relationRow4043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3866) * ((1 : F) * rho 3866) = ((1 : F) * rho 3869)

def relationRow4044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((-1 : F) * rho 3868 + (1 : F) * rho 3869) = ((2 : F) * rho 3867)

def relationRow4045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((2 : F) + (1 : F) * rho 3868 + (-1 : F) * rho 3869) = ((1 : F) * rho 3868 + (1 : F) * rho 3869)

def relationRow4046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((1 : F) * rho 3871) = ((1 : F) * rho 3872)

def relationRow4047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((1 : F) * rho 3870) = ((1 : F) * rho 3873)

def relationRow4048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((1 : F) * rho 3871) = ((1 : F) * rho 3874)

def relationRow4049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3875) * ((-1 : F) * rho 3873 + (1 : F) * rho 3874) = ((2 : F) * rho 3872)

def relationRow4050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3876) * ((2 : F) + (1 : F) * rho 3873 + (-1 : F) * rho 3874) = ((1 : F) * rho 3873 + (1 : F) * rho 3874)

def relationRow4051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2694) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3877)

def relationRow4052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2695) * ((1 : F) * rho 2797 + (1 : F) * rho 3877) = ((1 : F) * rho 3878)

def relationRow4053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2694) = ((1 : F) * rho 3879)

def relationRow4054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2694) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3880)

def relationRow4055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2695) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3880) = ((1 : F) * rho 3881)

def relationRow4056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2694) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3882)

def relationRow4057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3875 + (1 : F) * rho 3876) * ((1 : F) + (1 : F) * rho 3878 + (1 : F) * rho 3879 + (1 : F) * rho 3881 + (1 : F) * rho 3882) = ((1 : F) * rho 3883)

def relationRow4058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3875) * ((1 : F) + (1 : F) * rho 3881 + (1 : F) * rho 3882) = ((1 : F) * rho 3884)

def relationRow4059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3876) * ((1 : F) * rho 3878 + (1 : F) * rho 3879) = ((1 : F) * rho 3885)

def relationRow4060 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3884) * ((1 : F) * rho 3885) = ((1 : F) * rho 3886)

def relationRow4061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3887) * ((1 : F) + (1 : F) * rho 3886) = ((1 : F) * rho 3884 + (1 : F) * rho 3885)

def relationRow4062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3888) * ((1 : F) + (-1 : F) * rho 3886) = ((1 : F) * rho 3883 + (-1 : F) * rho 3884 + (-1 : F) * rho 3885)

def relationRow4063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3887) * ((1 : F) * rho 3888) = ((1 : F) * rho 3889)

def relationRow4064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3887) * ((1 : F) * rho 3887) = ((1 : F) * rho 3890)

def relationRow4065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3888) * ((1 : F) * rho 3888) = ((1 : F) * rho 3891)

def relationRow4066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3892) * ((-1 : F) * rho 3890 + (1 : F) * rho 3891) = ((2 : F) * rho 3889)

def relationRow4067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3893) * ((2 : F) + (1 : F) * rho 3890 + (-1 : F) * rho 3891) = ((1 : F) * rho 3890 + (1 : F) * rho 3891)

def relationRow4068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3892) * ((1 : F) * rho 3893) = ((1 : F) * rho 3894)

def relationRow4069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3892) * ((1 : F) * rho 3892) = ((1 : F) * rho 3895)

def relationRow4070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3893) * ((1 : F) * rho 3893) = ((1 : F) * rho 3896)

def relationRow4071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((-1 : F) * rho 3895 + (1 : F) * rho 3896) = ((2 : F) * rho 3894)

def relationRow4072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3898) * ((2 : F) + (1 : F) * rho 3895 + (-1 : F) * rho 3896) = ((1 : F) * rho 3895 + (1 : F) * rho 3896)

def relationRow4073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2692) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3899)

def relationRow4074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2693) * ((1 : F) * rho 2797 + (1 : F) * rho 3899) = ((1 : F) * rho 3900)

def relationRow4075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2692) = ((1 : F) * rho 3901)

def relationRow4076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2692) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3902)

def relationRow4077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2693) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3902) = ((1 : F) * rho 3903)

def relationRow4078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2692) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3904)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
