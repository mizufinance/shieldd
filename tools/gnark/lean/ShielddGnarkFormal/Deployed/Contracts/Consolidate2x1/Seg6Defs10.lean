import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((1 : F) + (-1 : F) * rho 4077) = ((1 : F) * rho 4074 + (-1 : F) * rho 4075 + (-1 : F) * rho 4076)

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 74⟩], residual := [((1 : F), 4078)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4080)

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 74⟩], residual := [((1 : F), 4079)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4081)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((1 : F) * rho 4073) = ((1 : F) * rho 4082)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((1 : F) * rho 4072) = ((1 : F) * rho 4083)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((1 : F) * rho 4073) = ((1 : F) * rho 4084)

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((-1 : F) * rho 4083 + (1 : F) * rho 4084) = ((2 : F) * rho 4082)

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((2 : F) + (1 : F) * rho 4083 + (-1 : F) * rho 4084) = ((1 : F) * rho 4083 + (1 : F) * rho 4084)

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085 + (1 : F) * rho 4086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 75⟩, ⟨(1 : F), 3119, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4087)

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4088)

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4089)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4088) * ((1 : F) * rho 4089) = ((1 : F) * rho 4090)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * ((1 : F) + (1 : F) * rho 4090) = ((1 : F) * rho 4088 + (1 : F) * rho 4089)

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092) * ((1 : F) + (-1 : F) * rho 4090) = ((1 : F) * rho 4087 + (-1 : F) * rho 4088 + (-1 : F) * rho 4089)

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 75⟩], residual := [((1 : F), 4091)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4093)

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 75⟩], residual := [((1 : F), 4092)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4094)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4086) = ((1 : F) * rho 4095)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4085) = ((1 : F) * rho 4096)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((1 : F) * rho 4086) = ((1 : F) * rho 4097)

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((-1 : F) * rho 4096 + (1 : F) * rho 4097) = ((2 : F) * rho 4095)

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * ((2 : F) + (1 : F) * rho 4096 + (-1 : F) * rho 4097) = ((1 : F) * rho 4096 + (1 : F) * rho 4097)

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098 + (1 : F) * rho 4099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 76⟩, ⟨(1 : F), 3119, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4100)

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4101)

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4102)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4101) * ((1 : F) * rho 4102) = ((1 : F) * rho 4103)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4104) * ((1 : F) + (1 : F) * rho 4103) = ((1 : F) * rho 4101 + (1 : F) * rho 4102)

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105) * ((1 : F) + (-1 : F) * rho 4103) = ((1 : F) * rho 4100 + (-1 : F) * rho 4101 + (-1 : F) * rho 4102)

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 76⟩], residual := [((1 : F), 4104)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4106)

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 76⟩], residual := [((1 : F), 4105)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4107)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((1 : F) * rho 4099) = ((1 : F) * rho 4108)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((1 : F) * rho 4098) = ((1 : F) * rho 4109)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * ((1 : F) * rho 4099) = ((1 : F) * rho 4110)

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((-1 : F) * rho 4109 + (1 : F) * rho 4110) = ((2 : F) * rho 4108)

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((2 : F) + (1 : F) * rho 4109 + (-1 : F) * rho 4110) = ((1 : F) * rho 4109 + (1 : F) * rho 4110)

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111 + (1 : F) * rho 4112) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 77⟩, ⟨(1 : F), 3119, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4113)

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4114)

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4115)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4114) * ((1 : F) * rho 4115) = ((1 : F) * rho 4116)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * ((1 : F) + (1 : F) * rho 4116) = ((1 : F) * rho 4114 + (1 : F) * rho 4115)

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((1 : F) + (-1 : F) * rho 4116) = ((1 : F) * rho 4113 + (-1 : F) * rho 4114 + (-1 : F) * rho 4115)

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 77⟩], residual := [((1 : F), 4117)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4119)

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 77⟩], residual := [((1 : F), 4118)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4120)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((1 : F) * rho 4112) = ((1 : F) * rho 4121)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((1 : F) * rho 4111) = ((1 : F) * rho 4122)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((1 : F) * rho 4112) = ((1 : F) * rho 4123)

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((-1 : F) * rho 4122 + (1 : F) * rho 4123) = ((2 : F) * rho 4121)

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * ((2 : F) + (1 : F) * rho 4122 + (-1 : F) * rho 4123) = ((1 : F) * rho 4122 + (1 : F) * rho 4123)

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124 + (1 : F) * rho 4125) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 78⟩, ⟨(1 : F), 3119, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4126)

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4127)

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4128)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4127) * ((1 : F) * rho 4128) = ((1 : F) * rho 4129)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * ((1 : F) + (1 : F) * rho 4129) = ((1 : F) * rho 4127 + (1 : F) * rho 4128)

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131) * ((1 : F) + (-1 : F) * rho 4129) = ((1 : F) * rho 4126 + (-1 : F) * rho 4127 + (-1 : F) * rho 4128)

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 78⟩], residual := [((1 : F), 4130)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4132)

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 78⟩], residual := [((1 : F), 4131)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4133)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((1 : F) * rho 4125) = ((1 : F) * rho 4134)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((1 : F) * rho 4124) = ((1 : F) * rho 4135)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * ((1 : F) * rho 4125) = ((1 : F) * rho 4136)

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((-1 : F) * rho 4135 + (1 : F) * rho 4136) = ((2 : F) * rho 4134)

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * ((2 : F) + (1 : F) * rho 4135 + (-1 : F) * rho 4136) = ((1 : F) * rho 4135 + (1 : F) * rho 4136)

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137 + (1 : F) * rho 4138) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 79⟩, ⟨(1 : F), 3119, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4139)

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4140)

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4141)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4140) * ((1 : F) * rho 4141) = ((1 : F) * rho 4142)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4143) * ((1 : F) + (1 : F) * rho 4142) = ((1 : F) * rho 4140 + (1 : F) * rho 4141)

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144) * ((1 : F) + (-1 : F) * rho 4142) = ((1 : F) * rho 4139 + (-1 : F) * rho 4140 + (-1 : F) * rho 4141)

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 79⟩], residual := [((1 : F), 4143)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4145)

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 79⟩], residual := [((1 : F), 4144)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4146)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((1 : F) * rho 4138) = ((1 : F) * rho 4147)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((1 : F) * rho 4137) = ((1 : F) * rho 4148)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * ((1 : F) * rho 4138) = ((1 : F) * rho 4149)

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * ((-1 : F) * rho 4148 + (1 : F) * rho 4149) = ((2 : F) * rho 4147)

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((2 : F) + (1 : F) * rho 4148 + (-1 : F) * rho 4149) = ((1 : F) * rho 4148 + (1 : F) * rho 4149)

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150 + (1 : F) * rho 4151) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 80⟩, ⟨(1 : F), 3119, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4152)

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4153)

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4154)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4153) * ((1 : F) * rho 4154) = ((1 : F) * rho 4155)

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * ((1 : F) + (1 : F) * rho 4155) = ((1 : F) * rho 4153 + (1 : F) * rho 4154)

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((1 : F) + (-1 : F) * rho 4155) = ((1 : F) * rho 4152 + (-1 : F) * rho 4153 + (-1 : F) * rho 4154)

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 80⟩], residual := [((1 : F), 4156)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4158)

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 80⟩], residual := [((1 : F), 4157)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4159)

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * ((1 : F) * rho 4151) = ((1 : F) * rho 4160)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * ((1 : F) * rho 4150) = ((1 : F) * rho 4161)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((1 : F) * rho 4151) = ((1 : F) * rho 4162)

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163) * ((-1 : F) * rho 4161 + (1 : F) * rho 4162) = ((2 : F) * rho 4160)

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4164) * ((2 : F) + (1 : F) * rho 4161 + (-1 : F) * rho 4162) = ((1 : F) * rho 4161 + (1 : F) * rho 4162)

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163 + (1 : F) * rho 4164) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 81⟩, ⟨(1 : F), 3119, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4165)

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4164) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4166)

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4167)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4166) * ((1 : F) * rho 4167) = ((1 : F) * rho 4168)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4169) * ((1 : F) + (1 : F) * rho 4168) = ((1 : F) * rho 4166 + (1 : F) * rho 4167)

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * ((1 : F) + (-1 : F) * rho 4168) = ((1 : F) * rho 4165 + (-1 : F) * rho 4166 + (-1 : F) * rho 4167)

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 81⟩], residual := [((1 : F), 4169)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4171)

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 81⟩], residual := [((1 : F), 4170)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4172)

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163) * ((1 : F) * rho 4164) = ((1 : F) * rho 4173)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163) * ((1 : F) * rho 4163) = ((1 : F) * rho 4174)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4164) * ((1 : F) * rho 4164) = ((1 : F) * rho 4175)

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176) * ((-1 : F) * rho 4174 + (1 : F) * rho 4175) = ((2 : F) * rho 4173)

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4177) * ((2 : F) + (1 : F) * rho 4174 + (-1 : F) * rho 4175) = ((1 : F) * rho 4174 + (1 : F) * rho 4175)

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176 + (1 : F) * rho 4177) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 82⟩, ⟨(1 : F), 3119, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4178)

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4177) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4179)

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4180)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4179) * ((1 : F) * rho 4180) = ((1 : F) * rho 4181)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4182) * ((1 : F) + (1 : F) * rho 4181) = ((1 : F) * rho 4179 + (1 : F) * rho 4180)

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((1 : F) + (-1 : F) * rho 4181) = ((1 : F) * rho 4178 + (-1 : F) * rho 4179 + (-1 : F) * rho 4180)

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 82⟩], residual := [((1 : F), 4182)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4184)

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 82⟩], residual := [((1 : F), 4183)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4185)

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176) * ((1 : F) * rho 4177) = ((1 : F) * rho 4186)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176) * ((1 : F) * rho 4176) = ((1 : F) * rho 4187)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4177) * ((1 : F) * rho 4177) = ((1 : F) * rho 4188)

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4189) * ((-1 : F) * rho 4187 + (1 : F) * rho 4188) = ((2 : F) * rho 4186)

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4190) * ((2 : F) + (1 : F) * rho 4187 + (-1 : F) * rho 4188) = ((1 : F) * rho 4187 + (1 : F) * rho 4188)

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4189 + (1 : F) * rho 4190) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 83⟩, ⟨(1 : F), 3119, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4191)

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4190) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4192)

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4189) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4193)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4192) * ((1 : F) * rho 4193) = ((1 : F) * rho 4194)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4195) * ((1 : F) + (1 : F) * rho 4194) = ((1 : F) * rho 4192 + (1 : F) * rho 4193)

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * ((1 : F) + (-1 : F) * rho 4194) = ((1 : F) * rho 4191 + (-1 : F) * rho 4192 + (-1 : F) * rho 4193)

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 83⟩], residual := [((1 : F), 4195)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4197)

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 83⟩], residual := [((1 : F), 4196)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4198)

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4189) * ((1 : F) * rho 4190) = ((1 : F) * rho 4199)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4189) * ((1 : F) * rho 4189) = ((1 : F) * rho 4200)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4190) * ((1 : F) * rho 4190) = ((1 : F) * rho 4201)

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4202) * ((-1 : F) * rho 4200 + (1 : F) * rho 4201) = ((2 : F) * rho 4199)

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4203) * ((2 : F) + (1 : F) * rho 4200 + (-1 : F) * rho 4201) = ((1 : F) * rho 4200 + (1 : F) * rho 4201)

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4202 + (1 : F) * rho 4203) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 84⟩, ⟨(1 : F), 3119, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4204)

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4203) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4205)

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4202) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4206)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4205) * ((1 : F) * rho 4206) = ((1 : F) * rho 4207)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4208) * ((1 : F) + (1 : F) * rho 4207) = ((1 : F) * rho 4205 + (1 : F) * rho 4206)

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4209) * ((1 : F) + (-1 : F) * rho 4207) = ((1 : F) * rho 4204 + (-1 : F) * rho 4205 + (-1 : F) * rho 4206)

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 84⟩], residual := [((1 : F), 4208)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4210)

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 84⟩], residual := [((1 : F), 4209)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4211)

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4202) * ((1 : F) * rho 4203) = ((1 : F) * rho 4212)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4202) * ((1 : F) * rho 4202) = ((1 : F) * rho 4213)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4203) * ((1 : F) * rho 4203) = ((1 : F) * rho 4214)

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * ((-1 : F) * rho 4213 + (1 : F) * rho 4214) = ((2 : F) * rho 4212)

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4216) * ((2 : F) + (1 : F) * rho 4213 + (-1 : F) * rho 4214) = ((1 : F) * rho 4213 + (1 : F) * rho 4214)

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215 + (1 : F) * rho 4216) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 85⟩, ⟨(1 : F), 3119, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4217)

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4216) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4218)

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4219)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4218) * ((1 : F) * rho 4219) = ((1 : F) * rho 4220)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4221) * ((1 : F) + (1 : F) * rho 4220) = ((1 : F) * rho 4218 + (1 : F) * rho 4219)

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222) * ((1 : F) + (-1 : F) * rho 4220) = ((1 : F) * rho 4217 + (-1 : F) * rho 4218 + (-1 : F) * rho 4219)

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 85⟩], residual := [((1 : F), 4221)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4223)

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 85⟩], residual := [((1 : F), 4222)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4224)

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * ((1 : F) * rho 4216) = ((1 : F) * rho 4225)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * ((1 : F) * rho 4215) = ((1 : F) * rho 4226)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4216) * ((1 : F) * rho 4216) = ((1 : F) * rho 4227)

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228) * ((-1 : F) * rho 4226 + (1 : F) * rho 4227) = ((2 : F) * rho 4225)

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4229) * ((2 : F) + (1 : F) * rho 4226 + (-1 : F) * rho 4227) = ((1 : F) * rho 4226 + (1 : F) * rho 4227)

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228 + (1 : F) * rho 4229) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 86⟩, ⟨(1 : F), 3119, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4230)

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4229) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4231)

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4232)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4231) * ((1 : F) * rho 4232) = ((1 : F) * rho 4233)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4234) * ((1 : F) + (1 : F) * rho 4233) = ((1 : F) * rho 4231 + (1 : F) * rho 4232)

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * ((1 : F) + (-1 : F) * rho 4233) = ((1 : F) * rho 4230 + (-1 : F) * rho 4231 + (-1 : F) * rho 4232)

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 86⟩], residual := [((1 : F), 4234)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4236)

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 86⟩], residual := [((1 : F), 4235)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4237)

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228) * ((1 : F) * rho 4229) = ((1 : F) * rho 4238)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228) * ((1 : F) * rho 4228) = ((1 : F) * rho 4239)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4229) * ((1 : F) * rho 4229) = ((1 : F) * rho 4240)

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * ((-1 : F) * rho 4239 + (1 : F) * rho 4240) = ((2 : F) * rho 4238)

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * ((2 : F) + (1 : F) * rho 4239 + (-1 : F) * rho 4240) = ((1 : F) * rho 4239 + (1 : F) * rho 4240)

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241 + (1 : F) * rho 4242) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 87⟩, ⟨(1 : F), 3119, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4243)

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4244)

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4245)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4244) * ((1 : F) * rho 4245) = ((1 : F) * rho 4246)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4247) * ((1 : F) + (1 : F) * rho 4246) = ((1 : F) * rho 4244 + (1 : F) * rho 4245)

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * ((1 : F) + (-1 : F) * rho 4246) = ((1 : F) * rho 4243 + (-1 : F) * rho 4244 + (-1 : F) * rho 4245)

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 87⟩], residual := [((1 : F), 4247)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4249)

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 87⟩], residual := [((1 : F), 4248)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4250)

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * ((1 : F) * rho 4242) = ((1 : F) * rho 4251)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * ((1 : F) * rho 4241) = ((1 : F) * rho 4252)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * ((1 : F) * rho 4242) = ((1 : F) * rho 4253)

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * ((-1 : F) * rho 4252 + (1 : F) * rho 4253) = ((2 : F) * rho 4251)

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * ((2 : F) + (1 : F) * rho 4252 + (-1 : F) * rho 4253) = ((1 : F) * rho 4252 + (1 : F) * rho 4253)

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254 + (1 : F) * rho 4255) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 88⟩, ⟨(1 : F), 3119, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4256)

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4257)

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4258)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4257) * ((1 : F) * rho 4258) = ((1 : F) * rho 4259)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4260) * ((1 : F) + (1 : F) * rho 4259) = ((1 : F) * rho 4257 + (1 : F) * rho 4258)

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261) * ((1 : F) + (-1 : F) * rho 4259) = ((1 : F) * rho 4256 + (-1 : F) * rho 4257 + (-1 : F) * rho 4258)

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 88⟩], residual := [((1 : F), 4260)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4262)

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 88⟩], residual := [((1 : F), 4261)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4263)

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * ((1 : F) * rho 4255) = ((1 : F) * rho 4264)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * ((1 : F) * rho 4254) = ((1 : F) * rho 4265)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * ((1 : F) * rho 4255) = ((1 : F) * rho 4266)

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * ((-1 : F) * rho 4265 + (1 : F) * rho 4266) = ((2 : F) * rho 4264)

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * ((2 : F) + (1 : F) * rho 4265 + (-1 : F) * rho 4266) = ((1 : F) * rho 4265 + (1 : F) * rho 4266)

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267 + (1 : F) * rho 4268) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 89⟩, ⟨(1 : F), 3119, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4269)

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4270)

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4271)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4270) * ((1 : F) * rho 4271) = ((1 : F) * rho 4272)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4273) * ((1 : F) + (1 : F) * rho 4272) = ((1 : F) * rho 4270 + (1 : F) * rho 4271)

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * ((1 : F) + (-1 : F) * rho 4272) = ((1 : F) * rho 4269 + (-1 : F) * rho 4270 + (-1 : F) * rho 4271)

def relationRow3876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 89⟩], residual := [((1 : F), 4273)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4275)

def relationRow3877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 89⟩], residual := [((1 : F), 4274)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4276)

def relationRow3878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * ((1 : F) * rho 4268) = ((1 : F) * rho 4277)

def relationRow3879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * ((1 : F) * rho 4267) = ((1 : F) * rho 4278)

def relationRow3880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * ((1 : F) * rho 4268) = ((1 : F) * rho 4279)

def relationRow3881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * ((-1 : F) * rho 4278 + (1 : F) * rho 4279) = ((2 : F) * rho 4277)

def relationRow3882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4281) * ((2 : F) + (1 : F) * rho 4278 + (-1 : F) * rho 4279) = ((1 : F) * rho 4278 + (1 : F) * rho 4279)

def relationRow3883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280 + (1 : F) * rho 4281) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 90⟩, ⟨(1 : F), 3119, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4282)

def relationRow3884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4281) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4283)

def relationRow3885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4284)

def relationRow3886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4283) * ((1 : F) * rho 4284) = ((1 : F) * rho 4285)

def relationRow3887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4286) * ((1 : F) + (1 : F) * rho 4285) = ((1 : F) * rho 4283 + (1 : F) * rho 4284)

def relationRow3888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * ((1 : F) + (-1 : F) * rho 4285) = ((1 : F) * rho 4282 + (-1 : F) * rho 4283 + (-1 : F) * rho 4284)

def relationRow3889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 90⟩], residual := [((1 : F), 4286)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4288)

def relationRow3890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 90⟩], residual := [((1 : F), 4287)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4289)

def relationRow3891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * ((1 : F) * rho 4281) = ((1 : F) * rho 4290)

def relationRow3892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * ((1 : F) * rho 4280) = ((1 : F) * rho 4291)

def relationRow3893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4281) * ((1 : F) * rho 4281) = ((1 : F) * rho 4292)

def relationRow3894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * ((-1 : F) * rho 4291 + (1 : F) * rho 4292) = ((2 : F) * rho 4290)

def relationRow3895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4294) * ((2 : F) + (1 : F) * rho 4291 + (-1 : F) * rho 4292) = ((1 : F) * rho 4291 + (1 : F) * rho 4292)

def relationRow3896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293 + (1 : F) * rho 4294) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 91⟩, ⟨(1 : F), 3119, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4295)

def relationRow3897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4294) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4296)

def relationRow3898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4297)

def relationRow3899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4296) * ((1 : F) * rho 4297) = ((1 : F) * rho 4298)

def relationRow3900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4299) * ((1 : F) + (1 : F) * rho 4298) = ((1 : F) * rho 4296 + (1 : F) * rho 4297)

def relationRow3901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * ((1 : F) + (-1 : F) * rho 4298) = ((1 : F) * rho 4295 + (-1 : F) * rho 4296 + (-1 : F) * rho 4297)

def relationRow3902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 91⟩], residual := [((1 : F), 4299)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4301)

def relationRow3903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 91⟩], residual := [((1 : F), 4300)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4302)

def relationRow3904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * ((1 : F) * rho 4294) = ((1 : F) * rho 4303)

def relationRow3905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * ((1 : F) * rho 4293) = ((1 : F) * rho 4304)

def relationRow3906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4294) * ((1 : F) * rho 4294) = ((1 : F) * rho 4305)

def relationRow3907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * ((-1 : F) * rho 4304 + (1 : F) * rho 4305) = ((2 : F) * rho 4303)

def relationRow3908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4307) * ((2 : F) + (1 : F) * rho 4304 + (-1 : F) * rho 4305) = ((1 : F) * rho 4304 + (1 : F) * rho 4305)

def relationRow3909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306 + (1 : F) * rho 4307) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 92⟩, ⟨(1 : F), 3119, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4308)

def relationRow3910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4307) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4309)

def relationRow3911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4310)

def relationRow3912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4309) * ((1 : F) * rho 4310) = ((1 : F) * rho 4311)

def relationRow3913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4312) * ((1 : F) + (1 : F) * rho 4311) = ((1 : F) * rho 4309 + (1 : F) * rho 4310)

def relationRow3914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * ((1 : F) + (-1 : F) * rho 4311) = ((1 : F) * rho 4308 + (-1 : F) * rho 4309 + (-1 : F) * rho 4310)

def relationRow3915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 92⟩], residual := [((1 : F), 4312)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4314)

def relationRow3916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 92⟩], residual := [((1 : F), 4313)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4315)

def relationRow3917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * ((1 : F) * rho 4307) = ((1 : F) * rho 4316)

def relationRow3918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * ((1 : F) * rho 4306) = ((1 : F) * rho 4317)

def relationRow3919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4307) * ((1 : F) * rho 4307) = ((1 : F) * rho 4318)

def relationRow3920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * ((-1 : F) * rho 4317 + (1 : F) * rho 4318) = ((2 : F) * rho 4316)

def relationRow3921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4320) * ((2 : F) + (1 : F) * rho 4317 + (-1 : F) * rho 4318) = ((1 : F) * rho 4317 + (1 : F) * rho 4318)

def relationRow3922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319 + (1 : F) * rho 4320) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 93⟩, ⟨(1 : F), 3119, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4321)

def relationRow3923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4320) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4322)

def relationRow3924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4323)

def relationRow3925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4322) * ((1 : F) * rho 4323) = ((1 : F) * rho 4324)

def relationRow3926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4325) * ((1 : F) + (1 : F) * rho 4324) = ((1 : F) * rho 4322 + (1 : F) * rho 4323)

def relationRow3927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * ((1 : F) + (-1 : F) * rho 4324) = ((1 : F) * rho 4321 + (-1 : F) * rho 4322 + (-1 : F) * rho 4323)

def relationRow3928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 93⟩], residual := [((1 : F), 4325)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4327)

def relationRow3929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 93⟩], residual := [((1 : F), 4326)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4328)

def relationRow3930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * ((1 : F) * rho 4320) = ((1 : F) * rho 4329)

def relationRow3931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * ((1 : F) * rho 4319) = ((1 : F) * rho 4330)

def relationRow3932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4320) * ((1 : F) * rho 4320) = ((1 : F) * rho 4331)

def relationRow3933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * ((-1 : F) * rho 4330 + (1 : F) * rho 4331) = ((2 : F) * rho 4329)

def relationRow3934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4333) * ((2 : F) + (1 : F) * rho 4330 + (-1 : F) * rho 4331) = ((1 : F) * rho 4330 + (1 : F) * rho 4331)

def relationRow3935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332 + (1 : F) * rho 4333) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 94⟩, ⟨(1 : F), 3119, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4334)

def relationRow3936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4333) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4335)

def relationRow3937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4336)

def relationRow3938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4335) * ((1 : F) * rho 4336) = ((1 : F) * rho 4337)

def relationRow3939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * ((1 : F) + (1 : F) * rho 4337) = ((1 : F) * rho 4335 + (1 : F) * rho 4336)

def relationRow3940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((1 : F) + (-1 : F) * rho 4337) = ((1 : F) * rho 4334 + (-1 : F) * rho 4335 + (-1 : F) * rho 4336)

def relationRow3941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 94⟩], residual := [((1 : F), 4338)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4340)

def relationRow3942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 94⟩], residual := [((1 : F), 4339)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4341)

def relationRow3943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * ((1 : F) * rho 4333) = ((1 : F) * rho 4342)

def relationRow3944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * ((1 : F) * rho 4332) = ((1 : F) * rho 4343)

def relationRow3945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4333) * ((1 : F) * rho 4333) = ((1 : F) * rho 4344)

def relationRow3946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * ((-1 : F) * rho 4343 + (1 : F) * rho 4344) = ((2 : F) * rho 4342)

def relationRow3947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4346) * ((2 : F) + (1 : F) * rho 4343 + (-1 : F) * rho 4344) = ((1 : F) * rho 4343 + (1 : F) * rho 4344)

def relationRow3948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345 + (1 : F) * rho 4346) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 95⟩, ⟨(1 : F), 3119, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4347)

def relationRow3949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4346) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4348)

def relationRow3950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4349)

def relationRow3951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4348) * ((1 : F) * rho 4349) = ((1 : F) * rho 4350)

def relationRow3952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4351) * ((1 : F) + (1 : F) * rho 4350) = ((1 : F) * rho 4348 + (1 : F) * rho 4349)

def relationRow3953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * ((1 : F) + (-1 : F) * rho 4350) = ((1 : F) * rho 4347 + (-1 : F) * rho 4348 + (-1 : F) * rho 4349)

def relationRow3954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 95⟩], residual := [((1 : F), 4351)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4353)

def relationRow3955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 95⟩], residual := [((1 : F), 4352)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4354)

def relationRow3956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * ((1 : F) * rho 4346) = ((1 : F) * rho 4355)

def relationRow3957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * ((1 : F) * rho 4345) = ((1 : F) * rho 4356)

def relationRow3958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4346) * ((1 : F) * rho 4346) = ((1 : F) * rho 4357)

def relationRow3959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * ((-1 : F) * rho 4356 + (1 : F) * rho 4357) = ((2 : F) * rho 4355)

def relationRow3960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * ((2 : F) + (1 : F) * rho 4356 + (-1 : F) * rho 4357) = ((1 : F) * rho 4356 + (1 : F) * rho 4357)

def relationRow3961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358 + (1 : F) * rho 4359) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 96⟩, ⟨(1 : F), 3119, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4360)

def relationRow3962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4361)

def relationRow3963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4362)

def relationRow3964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4361) * ((1 : F) * rho 4362) = ((1 : F) * rho 4363)

def relationRow3965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4364) * ((1 : F) + (1 : F) * rho 4363) = ((1 : F) * rho 4361 + (1 : F) * rho 4362)

def relationRow3966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) + (-1 : F) * rho 4363) = ((1 : F) * rho 4360 + (-1 : F) * rho 4361 + (-1 : F) * rho 4362)

def relationRow3967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 96⟩], residual := [((1 : F), 4364)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4366)

def relationRow3968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 96⟩], residual := [((1 : F), 4365)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4367)

def relationRow3969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * ((1 : F) * rho 4359) = ((1 : F) * rho 4368)

def relationRow3970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * ((1 : F) * rho 4358) = ((1 : F) * rho 4369)

def relationRow3971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * ((1 : F) * rho 4359) = ((1 : F) * rho 4370)

def relationRow3972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * ((-1 : F) * rho 4369 + (1 : F) * rho 4370) = ((2 : F) * rho 4368)

def relationRow3973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4372) * ((2 : F) + (1 : F) * rho 4369 + (-1 : F) * rho 4370) = ((1 : F) * rho 4369 + (1 : F) * rho 4370)

def relationRow3974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371 + (1 : F) * rho 4372) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 97⟩, ⟨(1 : F), 3119, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4373)

def relationRow3975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4372) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4374)

def relationRow3976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4375)

def relationRow3977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4374) * ((1 : F) * rho 4375) = ((1 : F) * rho 4376)

def relationRow3978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4377) * ((1 : F) + (1 : F) * rho 4376) = ((1 : F) * rho 4374 + (1 : F) * rho 4375)

def relationRow3979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4378) * ((1 : F) + (-1 : F) * rho 4376) = ((1 : F) * rho 4373 + (-1 : F) * rho 4374 + (-1 : F) * rho 4375)

def relationRow3980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 97⟩], residual := [((1 : F), 4377)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4379)

def relationRow3981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 97⟩], residual := [((1 : F), 4378)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4380)

def relationRow3982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * ((1 : F) * rho 4372) = ((1 : F) * rho 4381)

def relationRow3983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * ((1 : F) * rho 4371) = ((1 : F) * rho 4382)

def relationRow3984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4372) * ((1 : F) * rho 4372) = ((1 : F) * rho 4383)

def relationRow3985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4384) * ((-1 : F) * rho 4382 + (1 : F) * rho 4383) = ((2 : F) * rho 4381)

def relationRow3986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4385) * ((2 : F) + (1 : F) * rho 4382 + (-1 : F) * rho 4383) = ((1 : F) * rho 4382 + (1 : F) * rho 4383)

def relationRow3987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4384 + (1 : F) * rho 4385) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 98⟩, ⟨(1 : F), 3119, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4386)

def relationRow3988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4385) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4387)

def relationRow3989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4384) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4388)

def relationRow3990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4387) * ((1 : F) * rho 4388) = ((1 : F) * rho 4389)

def relationRow3991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4390) * ((1 : F) + (1 : F) * rho 4389) = ((1 : F) * rho 4387 + (1 : F) * rho 4388)

def relationRow3992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4391) * ((1 : F) + (-1 : F) * rho 4389) = ((1 : F) * rho 4386 + (-1 : F) * rho 4387 + (-1 : F) * rho 4388)

def relationRow3993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1988) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 98⟩], residual := [((1 : F), 4390)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4392)

def relationRow3994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1988) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 98⟩], residual := [((1 : F), 4391)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4393)

def relationRow3995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4384) * ((1 : F) * rho 4385) = ((1 : F) * rho 4394)

def relationRow3996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4384) * ((1 : F) * rho 4384) = ((1 : F) * rho 4395)

def relationRow3997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4385) * ((1 : F) * rho 4385) = ((1 : F) * rho 4396)

def relationRow3998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * ((-1 : F) * rho 4395 + (1 : F) * rho 4396) = ((2 : F) * rho 4394)

def relationRow3999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4398) * ((2 : F) + (1 : F) * rho 4395 + (-1 : F) * rho 4396) = ((1 : F) * rho 4395 + (1 : F) * rho 4396)

def relationRow4000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397 + (1 : F) * rho 4398) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 99⟩, ⟨(1 : F), 3119, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4399)

def relationRow4001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4398) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4400)

def relationRow4002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4401)

def relationRow4003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4400) * ((1 : F) * rho 4401) = ((1 : F) * rho 4402)

def relationRow4004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4403) * ((1 : F) + (1 : F) * rho 4402) = ((1 : F) * rho 4400 + (1 : F) * rho 4401)

def relationRow4005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((1 : F) + (-1 : F) * rho 4402) = ((1 : F) * rho 4399 + (-1 : F) * rho 4400 + (-1 : F) * rho 4401)

def relationRow4006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 99⟩], residual := [((1 : F), 4403)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4405)

def relationRow4007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 99⟩], residual := [((1 : F), 4404)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4406)

def relationRow4008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * ((1 : F) * rho 4398) = ((1 : F) * rho 4407)

def relationRow4009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * ((1 : F) * rho 4397) = ((1 : F) * rho 4408)

def relationRow4010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4398) * ((1 : F) * rho 4398) = ((1 : F) * rho 4409)

def relationRow4011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * ((-1 : F) * rho 4408 + (1 : F) * rho 4409) = ((2 : F) * rho 4407)

def relationRow4012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4411) * ((2 : F) + (1 : F) * rho 4408 + (-1 : F) * rho 4409) = ((1 : F) * rho 4408 + (1 : F) * rho 4409)

def relationRow4013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410 + (1 : F) * rho 4411) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 100⟩, ⟨(1 : F), 3119, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4412)

def relationRow4014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4411) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4413)

def relationRow4015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4414)

def relationRow4016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4413) * ((1 : F) * rho 4414) = ((1 : F) * rho 4415)

def relationRow4017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4416) * ((1 : F) + (1 : F) * rho 4415) = ((1 : F) * rho 4413 + (1 : F) * rho 4414)

def relationRow4018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * ((1 : F) + (-1 : F) * rho 4415) = ((1 : F) * rho 4412 + (-1 : F) * rho 4413 + (-1 : F) * rho 4414)

def relationRow4019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 100⟩], residual := [((1 : F), 4416)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4418)

def relationRow4020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 100⟩], residual := [((1 : F), 4417)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4419)

def relationRow4021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * ((1 : F) * rho 4411) = ((1 : F) * rho 4420)

def relationRow4022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * ((1 : F) * rho 4410) = ((1 : F) * rho 4421)

def relationRow4023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4411) * ((1 : F) * rho 4411) = ((1 : F) * rho 4422)

def relationRow4024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423) * ((-1 : F) * rho 4421 + (1 : F) * rho 4422) = ((2 : F) * rho 4420)

def relationRow4025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4424) * ((2 : F) + (1 : F) * rho 4421 + (-1 : F) * rho 4422) = ((1 : F) * rho 4421 + (1 : F) * rho 4422)

def relationRow4026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423 + (1 : F) * rho 4424) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 101⟩, ⟨(1 : F), 3119, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4425)

def relationRow4027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4424) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4426)

def relationRow4028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4427)

def relationRow4029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4426) * ((1 : F) * rho 4427) = ((1 : F) * rho 4428)

def relationRow4030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4429) * ((1 : F) + (1 : F) * rho 4428) = ((1 : F) * rho 4426 + (1 : F) * rho 4427)

def relationRow4031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * ((1 : F) + (-1 : F) * rho 4428) = ((1 : F) * rho 4425 + (-1 : F) * rho 4426 + (-1 : F) * rho 4427)

def relationRow4032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 101⟩], residual := [((1 : F), 4429)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4431)

def relationRow4033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 101⟩], residual := [((1 : F), 4430)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4432)

def relationRow4034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423) * ((1 : F) * rho 4424) = ((1 : F) * rho 4433)

def relationRow4035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423) * ((1 : F) * rho 4423) = ((1 : F) * rho 4434)

def relationRow4036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4424) * ((1 : F) * rho 4424) = ((1 : F) * rho 4435)

def relationRow4037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((-1 : F) * rho 4434 + (1 : F) * rho 4435) = ((2 : F) * rho 4433)

def relationRow4038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * ((2 : F) + (1 : F) * rho 4434 + (-1 : F) * rho 4435) = ((1 : F) * rho 4434 + (1 : F) * rho 4435)

def relationRow4039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436 + (1 : F) * rho 4437) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 102⟩, ⟨(1 : F), 3119, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4438)

def relationRow4040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4439)

def relationRow4041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4440)

def relationRow4042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4439) * ((1 : F) * rho 4440) = ((1 : F) * rho 4441)

def relationRow4043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4442) * ((1 : F) + (1 : F) * rho 4441) = ((1 : F) * rho 4439 + (1 : F) * rho 4440)

def relationRow4044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443) * ((1 : F) + (-1 : F) * rho 4441) = ((1 : F) * rho 4438 + (-1 : F) * rho 4439 + (-1 : F) * rho 4440)

def relationRow4045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 102⟩], residual := [((1 : F), 4442)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4444)

def relationRow4046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 102⟩], residual := [((1 : F), 4443)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4445)

def relationRow4047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((1 : F) * rho 4437) = ((1 : F) * rho 4446)

def relationRow4048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((1 : F) * rho 4436) = ((1 : F) * rho 4447)

def relationRow4049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * ((1 : F) * rho 4437) = ((1 : F) * rho 4448)

def relationRow4050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((-1 : F) * rho 4447 + (1 : F) * rho 4448) = ((2 : F) * rho 4446)

def relationRow4051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * ((2 : F) + (1 : F) * rho 4447 + (-1 : F) * rho 4448) = ((1 : F) * rho 4447 + (1 : F) * rho 4448)

def relationRow4052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449 + (1 : F) * rho 4450) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 103⟩, ⟨(1 : F), 3119, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4451)

def relationRow4053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4452)

def relationRow4054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4453)

def relationRow4055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4452) * ((1 : F) * rho 4453) = ((1 : F) * rho 4454)

def relationRow4056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4455) * ((1 : F) + (1 : F) * rho 4454) = ((1 : F) * rho 4452 + (1 : F) * rho 4453)

def relationRow4057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456) * ((1 : F) + (-1 : F) * rho 4454) = ((1 : F) * rho 4451 + (-1 : F) * rho 4452 + (-1 : F) * rho 4453)

def relationRow4058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 103⟩], residual := [((1 : F), 4455)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4457)

def relationRow4059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 103⟩], residual := [((1 : F), 4456)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4458)

def relationRow4060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((1 : F) * rho 4450) = ((1 : F) * rho 4459)

def relationRow4061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((1 : F) * rho 4449) = ((1 : F) * rho 4460)

def relationRow4062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * ((1 : F) * rho 4450) = ((1 : F) * rho 4461)

def relationRow4063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4462) * ((-1 : F) * rho 4460 + (1 : F) * rho 4461) = ((2 : F) * rho 4459)

def relationRow4064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * ((2 : F) + (1 : F) * rho 4460 + (-1 : F) * rho 4461) = ((1 : F) * rho 4460 + (1 : F) * rho 4461)

def relationRow4065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4462 + (1 : F) * rho 4463) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 104⟩, ⟨(1 : F), 3119, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4464)

def relationRow4066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4465)

def relationRow4067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4462) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4466)

def relationRow4068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4465) * ((1 : F) * rho 4466) = ((1 : F) * rho 4467)

def relationRow4069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4468) * ((1 : F) + (1 : F) * rho 4467) = ((1 : F) * rho 4465 + (1 : F) * rho 4466)

def relationRow4070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4469) * ((1 : F) + (-1 : F) * rho 4467) = ((1 : F) * rho 4464 + (-1 : F) * rho 4465 + (-1 : F) * rho 4466)

def relationRow4071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 104⟩], residual := [((1 : F), 4468)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4470)

def relationRow4072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 104⟩], residual := [((1 : F), 4469)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4471)

def relationRow4073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4462) * ((1 : F) * rho 4463) = ((1 : F) * rho 4472)

def relationRow4074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4462) * ((1 : F) * rho 4462) = ((1 : F) * rho 4473)

def relationRow4075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * ((1 : F) * rho 4463) = ((1 : F) * rho 4474)

def relationRow4076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4475) * ((-1 : F) * rho 4473 + (1 : F) * rho 4474) = ((2 : F) * rho 4472)

def relationRow4077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4476) * ((2 : F) + (1 : F) * rho 4473 + (-1 : F) * rho 4474) = ((1 : F) * rho 4473 + (1 : F) * rho 4474)

def relationRow4078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4475 + (1 : F) * rho 4476) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 105⟩, ⟨(1 : F), 3119, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4477)

def relationRow4079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4476) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4478)

def relationRow4080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4475) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4479)

def relationRow4081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4478) * ((1 : F) * rho 4479) = ((1 : F) * rho 4480)

def relationRow4082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4481) * ((1 : F) + (1 : F) * rho 4480) = ((1 : F) * rho 4478 + (1 : F) * rho 4479)

def relationRow4083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4482) * ((1 : F) + (-1 : F) * rho 4480) = ((1 : F) * rho 4477 + (-1 : F) * rho 4478 + (-1 : F) * rho 4479)

def relationRow4084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 105⟩], residual := [((1 : F), 4481)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4483)

def relationRow4085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 105⟩], residual := [((1 : F), 4482)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4484)

def relationRow4086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4475) * ((1 : F) * rho 4476) = ((1 : F) * rho 4485)

def relationRow4087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4475) * ((1 : F) * rho 4475) = ((1 : F) * rho 4486)

def relationRow4088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4476) * ((1 : F) * rho 4476) = ((1 : F) * rho 4487)

def relationRow4089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4488) * ((-1 : F) * rho 4486 + (1 : F) * rho 4487) = ((2 : F) * rho 4485)

def relationRow4090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4489) * ((2 : F) + (1 : F) * rho 4486 + (-1 : F) * rho 4487) = ((1 : F) * rho 4486 + (1 : F) * rho 4487)

def relationRow4091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4488 + (1 : F) * rho 4489) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 106⟩, ⟨(1 : F), 3119, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4490)

def relationRow4092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4489) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4491)

def relationRow4093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4488) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4492)

def relationRow4094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4491) * ((1 : F) * rho 4492) = ((1 : F) * rho 4493)

def relationRow4095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4494) * ((1 : F) + (1 : F) * rho 4493) = ((1 : F) * rho 4491 + (1 : F) * rho 4492)

def relationRow4096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4495) * ((1 : F) + (-1 : F) * rho 4493) = ((1 : F) * rho 4490 + (-1 : F) * rho 4491 + (-1 : F) * rho 4492)

def relationRow4097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 106⟩], residual := [((1 : F), 4494)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4496)

def relationRow4098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 106⟩], residual := [((1 : F), 4495)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4497)

def relationRow4099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4488) * ((1 : F) * rho 4489) = ((1 : F) * rho 4498)

def relationRow4100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4488) * ((1 : F) * rho 4488) = ((1 : F) * rho 4499)

def relationRow4101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4489) * ((1 : F) * rho 4489) = ((1 : F) * rho 4500)

def relationRow4102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4501) * ((-1 : F) * rho 4499 + (1 : F) * rho 4500) = ((2 : F) * rho 4498)

def relationRow4103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4502) * ((2 : F) + (1 : F) * rho 4499 + (-1 : F) * rho 4500) = ((1 : F) * rho 4499 + (1 : F) * rho 4500)

def relationRow4104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4501 + (1 : F) * rho 4502) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 107⟩, ⟨(1 : F), 3119, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4503)

def relationRow4105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4502) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4504)

def relationRow4106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4501) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4505)

def relationRow4107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4504) * ((1 : F) * rho 4505) = ((1 : F) * rho 4506)

def relationRow4108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4507) * ((1 : F) + (1 : F) * rho 4506) = ((1 : F) * rho 4504 + (1 : F) * rho 4505)

def relationRow4109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4508) * ((1 : F) + (-1 : F) * rho 4506) = ((1 : F) * rho 4503 + (-1 : F) * rho 4504 + (-1 : F) * rho 4505)

def relationRow4110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 107⟩], residual := [((1 : F), 4507)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4509)

def relationRow4111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 107⟩], residual := [((1 : F), 4508)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4510)

def relationRow4112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4501) * ((1 : F) * rho 4502) = ((1 : F) * rho 4511)

def relationRow4113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4501) * ((1 : F) * rho 4501) = ((1 : F) * rho 4512)

def relationRow4114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4502) * ((1 : F) * rho 4502) = ((1 : F) * rho 4513)

def relationRow4115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4514) * ((-1 : F) * rho 4512 + (1 : F) * rho 4513) = ((2 : F) * rho 4511)

def relationRow4116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4515) * ((2 : F) + (1 : F) * rho 4512 + (-1 : F) * rho 4513) = ((1 : F) * rho 4512 + (1 : F) * rho 4513)

def relationRow4117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4514 + (1 : F) * rho 4515) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 108⟩, ⟨(1 : F), 3119, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4516)

def relationRow4118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4515) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4517)

def relationRow4119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4514) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4518)

def relationRow4120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4517) * ((1 : F) * rho 4518) = ((1 : F) * rho 4519)

def relationRow4121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4520) * ((1 : F) + (1 : F) * rho 4519) = ((1 : F) * rho 4517 + (1 : F) * rho 4518)

def relationRow4122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521) * ((1 : F) + (-1 : F) * rho 4519) = ((1 : F) * rho 4516 + (-1 : F) * rho 4517 + (-1 : F) * rho 4518)

def relationRow4123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 108⟩], residual := [((1 : F), 4520)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4522)

def relationRow4124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 108⟩], residual := [((1 : F), 4521)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4523)

def relationRow4125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4514) * ((1 : F) * rho 4515) = ((1 : F) * rho 4524)

def relationRow4126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4514) * ((1 : F) * rho 4514) = ((1 : F) * rho 4525)

def relationRow4127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4515) * ((1 : F) * rho 4515) = ((1 : F) * rho 4526)

def relationRow4128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527) * ((-1 : F) * rho 4525 + (1 : F) * rho 4526) = ((2 : F) * rho 4524)

def relationRow4129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4528) * ((2 : F) + (1 : F) * rho 4525 + (-1 : F) * rho 4526) = ((1 : F) * rho 4525 + (1 : F) * rho 4526)

def relationRow4130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527 + (1 : F) * rho 4528) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 109⟩, ⟨(1 : F), 3119, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4529)

def relationRow4131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4528) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4530)

def relationRow4132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4531)

def relationRow4133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4530) * ((1 : F) * rho 4531) = ((1 : F) * rho 4532)

def relationRow4134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4533) * ((1 : F) + (1 : F) * rho 4532) = ((1 : F) * rho 4530 + (1 : F) * rho 4531)

def relationRow4135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * ((1 : F) + (-1 : F) * rho 4532) = ((1 : F) * rho 4529 + (-1 : F) * rho 4530 + (-1 : F) * rho 4531)

def relationRow4136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 109⟩], residual := [((1 : F), 4533)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4535)

def relationRow4137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 109⟩], residual := [((1 : F), 4534)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4536)

def relationRow4138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527) * ((1 : F) * rho 4528) = ((1 : F) * rho 4537)

def relationRow4139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527) * ((1 : F) * rho 4527) = ((1 : F) * rho 4538)

def relationRow4140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4528) * ((1 : F) * rho 4528) = ((1 : F) * rho 4539)

def relationRow4141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540) * ((-1 : F) * rho 4538 + (1 : F) * rho 4539) = ((2 : F) * rho 4537)

def relationRow4142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4541) * ((2 : F) + (1 : F) * rho 4538 + (-1 : F) * rho 4539) = ((1 : F) * rho 4538 + (1 : F) * rho 4539)

def relationRow4143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540 + (1 : F) * rho 4541) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 110⟩, ⟨(1 : F), 3119, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4542)

def relationRow4144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4541) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4543)

def relationRow4145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4544)

def relationRow4146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4543) * ((1 : F) * rho 4544) = ((1 : F) * rho 4545)

def relationRow4147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4546) * ((1 : F) + (1 : F) * rho 4545) = ((1 : F) * rho 4543 + (1 : F) * rho 4544)

def relationRow4148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((1 : F) + (-1 : F) * rho 4545) = ((1 : F) * rho 4542 + (-1 : F) * rho 4543 + (-1 : F) * rho 4544)

def relationRow4149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 110⟩], residual := [((1 : F), 4546)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4548)

def relationRow4150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 110⟩], residual := [((1 : F), 4547)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4549)

def relationRow4151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540) * ((1 : F) * rho 4541) = ((1 : F) * rho 4550)

def relationRow4152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540) * ((1 : F) * rho 4540) = ((1 : F) * rho 4551)

def relationRow4153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4541) * ((1 : F) * rho 4541) = ((1 : F) * rho 4552)

def relationRow4154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4553) * ((-1 : F) * rho 4551 + (1 : F) * rho 4552) = ((2 : F) * rho 4550)

def relationRow4155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4554) * ((2 : F) + (1 : F) * rho 4551 + (-1 : F) * rho 4552) = ((1 : F) * rho 4551 + (1 : F) * rho 4552)

def relationRow4156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4553 + (1 : F) * rho 4554) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 111⟩, ⟨(1 : F), 3119, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4555)

def relationRow4157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4554) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4556)

def relationRow4158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4553) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4557)

def relationRow4159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4556) * ((1 : F) * rho 4557) = ((1 : F) * rho 4558)

def relationRow4160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4559) * ((1 : F) + (1 : F) * rho 4558) = ((1 : F) * rho 4556 + (1 : F) * rho 4557)

def relationRow4161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560) * ((1 : F) + (-1 : F) * rho 4558) = ((1 : F) * rho 4555 + (-1 : F) * rho 4556 + (-1 : F) * rho 4557)

def relationRow4162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2001) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 111⟩], residual := [((1 : F), 4559)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4561)

def relationRow4163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2001) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 111⟩], residual := [((1 : F), 4560)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4562)

def relationRow4164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4553) * ((1 : F) * rho 4554) = ((1 : F) * rho 4563)

def relationRow4165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4553) * ((1 : F) * rho 4553) = ((1 : F) * rho 4564)

def relationRow4166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4554) * ((1 : F) * rho 4554) = ((1 : F) * rho 4565)

def relationRow4167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4566) * ((-1 : F) * rho 4564 + (1 : F) * rho 4565) = ((2 : F) * rho 4563)

def relationRow4168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4567) * ((2 : F) + (1 : F) * rho 4564 + (-1 : F) * rho 4565) = ((1 : F) * rho 4564 + (1 : F) * rho 4565)

def relationRow4169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4566 + (1 : F) * rho 4567) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 112⟩, ⟨(1 : F), 3119, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4568)

def relationRow4170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4567) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4569)

def relationRow4171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4566) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4570)

def relationRow4172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4569) * ((1 : F) * rho 4570) = ((1 : F) * rho 4571)

def relationRow4173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4572) * ((1 : F) + (1 : F) * rho 4571) = ((1 : F) * rho 4569 + (1 : F) * rho 4570)

def relationRow4174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4573) * ((1 : F) + (-1 : F) * rho 4571) = ((1 : F) * rho 4568 + (-1 : F) * rho 4569 + (-1 : F) * rho 4570)

def relationRow4175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 112⟩], residual := [((1 : F), 4572)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4574)

def relationRow4176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 112⟩], residual := [((1 : F), 4573)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4575)

def relationRow4177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4566) * ((1 : F) * rho 4567) = ((1 : F) * rho 4576)

def relationRow4178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4566) * ((1 : F) * rho 4566) = ((1 : F) * rho 4577)

def relationRow4179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4567) * ((1 : F) * rho 4567) = ((1 : F) * rho 4578)

def relationRow4180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579) * ((-1 : F) * rho 4577 + (1 : F) * rho 4578) = ((2 : F) * rho 4576)

def relationRow4181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4580) * ((2 : F) + (1 : F) * rho 4577 + (-1 : F) * rho 4578) = ((1 : F) * rho 4577 + (1 : F) * rho 4578)

def relationRow4182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579 + (1 : F) * rho 4580) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 113⟩, ⟨(1 : F), 3119, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4581)

def relationRow4183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4580) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4582)

def relationRow4184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4583)

def relationRow4185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4582) * ((1 : F) * rho 4583) = ((1 : F) * rho 4584)

def relationRow4186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4585) * ((1 : F) + (1 : F) * rho 4584) = ((1 : F) * rho 4582 + (1 : F) * rho 4583)

def relationRow4187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4586) * ((1 : F) + (-1 : F) * rho 4584) = ((1 : F) * rho 4581 + (-1 : F) * rho 4582 + (-1 : F) * rho 4583)

def relationRow4188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 113⟩], residual := [((1 : F), 4585)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4587)

def relationRow4189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 113⟩], residual := [((1 : F), 4586)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4588)

def relationRow4190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579) * ((1 : F) * rho 4580) = ((1 : F) * rho 4589)

def relationRow4191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579) * ((1 : F) * rho 4579) = ((1 : F) * rho 4590)

def relationRow4192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4580) * ((1 : F) * rho 4580) = ((1 : F) * rho 4591)

def relationRow4193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4592) * ((-1 : F) * rho 4590 + (1 : F) * rho 4591) = ((2 : F) * rho 4589)

def relationRow4194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4593) * ((2 : F) + (1 : F) * rho 4590 + (-1 : F) * rho 4591) = ((1 : F) * rho 4590 + (1 : F) * rho 4591)

def relationRow4195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4592 + (1 : F) * rho 4593) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 114⟩, ⟨(1 : F), 3119, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4594)

def relationRow4196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4593) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4595)

def relationRow4197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4592) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4596)

def relationRow4198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4595) * ((1 : F) * rho 4596) = ((1 : F) * rho 4597)

def relationRow4199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4598) * ((1 : F) + (1 : F) * rho 4597) = ((1 : F) * rho 4595 + (1 : F) * rho 4596)

def relationRow4200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599) * ((1 : F) + (-1 : F) * rho 4597) = ((1 : F) * rho 4594 + (-1 : F) * rho 4595 + (-1 : F) * rho 4596)

def relationRow4201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 114⟩], residual := [((1 : F), 4598)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4600)

def relationRow4202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 114⟩], residual := [((1 : F), 4599)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4601)

def relationRow4203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4592) * ((1 : F) * rho 4593) = ((1 : F) * rho 4602)

def relationRow4204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4592) * ((1 : F) * rho 4592) = ((1 : F) * rho 4603)

def relationRow4205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4593) * ((1 : F) * rho 4593) = ((1 : F) * rho 4604)

def relationRow4206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * ((-1 : F) * rho 4603 + (1 : F) * rho 4604) = ((2 : F) * rho 4602)

def relationRow4207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4606) * ((2 : F) + (1 : F) * rho 4603 + (-1 : F) * rho 4604) = ((1 : F) * rho 4603 + (1 : F) * rho 4604)

def relationRow4208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605 + (1 : F) * rho 4606) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 115⟩, ⟨(1 : F), 3119, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4607)

def relationRow4209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4606) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4608)

def relationRow4210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4609)

def relationRow4211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4608) * ((1 : F) * rho 4609) = ((1 : F) * rho 4610)

def relationRow4212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4611) * ((1 : F) + (1 : F) * rho 4610) = ((1 : F) * rho 4608 + (1 : F) * rho 4609)

def relationRow4213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4612) * ((1 : F) + (-1 : F) * rho 4610) = ((1 : F) * rho 4607 + (-1 : F) * rho 4608 + (-1 : F) * rho 4609)

def relationRow4214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 115⟩], residual := [((1 : F), 4611)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4613)

def relationRow4215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 115⟩], residual := [((1 : F), 4612)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4614)

def relationRow4216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * ((1 : F) * rho 4606) = ((1 : F) * rho 4615)

def relationRow4217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * ((1 : F) * rho 4605) = ((1 : F) * rho 4616)

def relationRow4218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4606) * ((1 : F) * rho 4606) = ((1 : F) * rho 4617)

def relationRow4219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * ((-1 : F) * rho 4616 + (1 : F) * rho 4617) = ((2 : F) * rho 4615)

def relationRow4220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4619) * ((2 : F) + (1 : F) * rho 4616 + (-1 : F) * rho 4617) = ((1 : F) * rho 4616 + (1 : F) * rho 4617)

def relationRow4221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618 + (1 : F) * rho 4619) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 116⟩, ⟨(1 : F), 3119, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4620)

def relationRow4222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4619) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4621)

def relationRow4223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4622)

def relationRow4224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4621) * ((1 : F) * rho 4622) = ((1 : F) * rho 4623)

def relationRow4225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4624) * ((1 : F) + (1 : F) * rho 4623) = ((1 : F) * rho 4621 + (1 : F) * rho 4622)

def relationRow4226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * ((1 : F) + (-1 : F) * rho 4623) = ((1 : F) * rho 4620 + (-1 : F) * rho 4621 + (-1 : F) * rho 4622)

def relationRow4227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 116⟩], residual := [((1 : F), 4624)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4626)

def relationRow4228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 116⟩], residual := [((1 : F), 4625)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4627)

def relationRow4229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * ((1 : F) * rho 4619) = ((1 : F) * rho 4628)

def relationRow4230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * ((1 : F) * rho 4618) = ((1 : F) * rho 4629)

def relationRow4231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4619) * ((1 : F) * rho 4619) = ((1 : F) * rho 4630)

def relationRow4232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((-1 : F) * rho 4629 + (1 : F) * rho 4630) = ((2 : F) * rho 4628)

def relationRow4233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * ((2 : F) + (1 : F) * rho 4629 + (-1 : F) * rho 4630) = ((1 : F) * rho 4629 + (1 : F) * rho 4630)

def relationRow4234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631 + (1 : F) * rho 4632) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 117⟩, ⟨(1 : F), 3119, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4633)

def relationRow4235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4634)

def relationRow4236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4635)

def relationRow4237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4634) * ((1 : F) * rho 4635) = ((1 : F) * rho 4636)

def relationRow4238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4637) * ((1 : F) + (1 : F) * rho 4636) = ((1 : F) * rho 4634 + (1 : F) * rho 4635)

def relationRow4239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638) * ((1 : F) + (-1 : F) * rho 4636) = ((1 : F) * rho 4633 + (-1 : F) * rho 4634 + (-1 : F) * rho 4635)

def relationRow4240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 117⟩], residual := [((1 : F), 4637)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4639)

def relationRow4241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 117⟩], residual := [((1 : F), 4638)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4640)

def relationRow4242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((1 : F) * rho 4632) = ((1 : F) * rho 4641)

def relationRow4243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((1 : F) * rho 4631) = ((1 : F) * rho 4642)

def relationRow4244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * ((1 : F) * rho 4632) = ((1 : F) * rho 4643)

def relationRow4245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644) * ((-1 : F) * rho 4642 + (1 : F) * rho 4643) = ((2 : F) * rho 4641)

def relationRow4246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((2 : F) + (1 : F) * rho 4642 + (-1 : F) * rho 4643) = ((1 : F) * rho 4642 + (1 : F) * rho 4643)

def relationRow4247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644 + (1 : F) * rho 4645) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 118⟩, ⟨(1 : F), 3119, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4646)

def relationRow4248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4647)

def relationRow4249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4648)

def relationRow4250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4647) * ((1 : F) * rho 4648) = ((1 : F) * rho 4649)

def relationRow4251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4650) * ((1 : F) + (1 : F) * rho 4649) = ((1 : F) * rho 4647 + (1 : F) * rho 4648)

def relationRow4252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4651) * ((1 : F) + (-1 : F) * rho 4649) = ((1 : F) * rho 4646 + (-1 : F) * rho 4647 + (-1 : F) * rho 4648)

def relationRow4253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 118⟩], residual := [((1 : F), 4650)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4652)

def relationRow4254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 118⟩], residual := [((1 : F), 4651)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4653)

def relationRow4255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644) * ((1 : F) * rho 4645) = ((1 : F) * rho 4654)

def relationRow4256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644) * ((1 : F) * rho 4644) = ((1 : F) * rho 4655)

def relationRow4257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((1 : F) * rho 4645) = ((1 : F) * rho 4656)

def relationRow4258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4657) * ((-1 : F) * rho 4655 + (1 : F) * rho 4656) = ((2 : F) * rho 4654)

def relationRow4259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4658) * ((2 : F) + (1 : F) * rho 4655 + (-1 : F) * rho 4656) = ((1 : F) * rho 4655 + (1 : F) * rho 4656)

def relationRow4260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4657 + (1 : F) * rho 4658) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 119⟩, ⟨(1 : F), 3119, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4659)

def relationRow4261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4658) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4660)

def relationRow4262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4657) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4661)

def relationRow4263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4660) * ((1 : F) * rho 4661) = ((1 : F) * rho 4662)

def relationRow4264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4663) * ((1 : F) + (1 : F) * rho 4662) = ((1 : F) * rho 4660 + (1 : F) * rho 4661)

def relationRow4265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664) * ((1 : F) + (-1 : F) * rho 4662) = ((1 : F) * rho 4659 + (-1 : F) * rho 4660 + (-1 : F) * rho 4661)

def relationRow4266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 119⟩], residual := [((1 : F), 4663)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4665)

def relationRow4267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 119⟩], residual := [((1 : F), 4664)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4666)

def relationRow4268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4657) * ((1 : F) * rho 4658) = ((1 : F) * rho 4667)

def relationRow4269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4657) * ((1 : F) * rho 4657) = ((1 : F) * rho 4668)

def relationRow4270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4658) * ((1 : F) * rho 4658) = ((1 : F) * rho 4669)

def relationRow4271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670) * ((-1 : F) * rho 4668 + (1 : F) * rho 4669) = ((2 : F) * rho 4667)

def relationRow4272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4671) * ((2 : F) + (1 : F) * rho 4668 + (-1 : F) * rho 4669) = ((1 : F) * rho 4668 + (1 : F) * rho 4669)

def relationRow4273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670 + (1 : F) * rho 4671) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 120⟩, ⟨(1 : F), 3119, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4672)

def relationRow4274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4671) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4673)

def relationRow4275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4674)

def relationRow4276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4673) * ((1 : F) * rho 4674) = ((1 : F) * rho 4675)

def relationRow4277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4676) * ((1 : F) + (1 : F) * rho 4675) = ((1 : F) * rho 4673 + (1 : F) * rho 4674)

def relationRow4278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4677) * ((1 : F) + (-1 : F) * rho 4675) = ((1 : F) * rho 4672 + (-1 : F) * rho 4673 + (-1 : F) * rho 4674)

def relationRow4279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 120⟩], residual := [((1 : F), 4676)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4678)

def relationRow4280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 120⟩], residual := [((1 : F), 4677)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4679)

def relationRow4281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670) * ((1 : F) * rho 4671) = ((1 : F) * rho 4680)

def relationRow4282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670) * ((1 : F) * rho 4670) = ((1 : F) * rho 4681)

def relationRow4283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4671) * ((1 : F) * rho 4671) = ((1 : F) * rho 4682)

def relationRow4284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4683) * ((-1 : F) * rho 4681 + (1 : F) * rho 4682) = ((2 : F) * rho 4680)

def relationRow4285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4684) * ((2 : F) + (1 : F) * rho 4681 + (-1 : F) * rho 4682) = ((1 : F) * rho 4681 + (1 : F) * rho 4682)

def relationRow4286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4683 + (1 : F) * rho 4684) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 121⟩, ⟨(1 : F), 3119, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4685)

def relationRow4287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4684) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4686)

def relationRow4288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4683) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4687)

def relationRow4289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4686) * ((1 : F) * rho 4687) = ((1 : F) * rho 4688)

def relationRow4290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4689) * ((1 : F) + (1 : F) * rho 4688) = ((1 : F) * rho 4686 + (1 : F) * rho 4687)

def relationRow4291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4690) * ((1 : F) + (-1 : F) * rho 4688) = ((1 : F) * rho 4685 + (-1 : F) * rho 4686 + (-1 : F) * rho 4687)

def relationRow4292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 121⟩], residual := [((1 : F), 4689)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4691)

def relationRow4293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 121⟩], residual := [((1 : F), 4690)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4692)

def relationRow4294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4683) * ((1 : F) * rho 4684) = ((1 : F) * rho 4693)

def relationRow4295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4683) * ((1 : F) * rho 4683) = ((1 : F) * rho 4694)

def relationRow4296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4684) * ((1 : F) * rho 4684) = ((1 : F) * rho 4695)

def relationRow4297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4696) * ((-1 : F) * rho 4694 + (1 : F) * rho 4695) = ((2 : F) * rho 4693)

def relationRow4298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4697) * ((2 : F) + (1 : F) * rho 4694 + (-1 : F) * rho 4695) = ((1 : F) * rho 4694 + (1 : F) * rho 4695)

def relationRow4299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4696 + (1 : F) * rho 4697) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 122⟩, ⟨(1 : F), 3119, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4698)

def relationRow4300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4697) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4699)

def relationRow4301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4696) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4700)

def relationRow4302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4699) * ((1 : F) * rho 4700) = ((1 : F) * rho 4701)

def relationRow4303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4702) * ((1 : F) + (1 : F) * rho 4701) = ((1 : F) * rho 4699 + (1 : F) * rho 4700)

def relationRow4304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703) * ((1 : F) + (-1 : F) * rho 4701) = ((1 : F) * rho 4698 + (-1 : F) * rho 4699 + (-1 : F) * rho 4700)

def relationRow4305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 122⟩], residual := [((1 : F), 4702)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4704)

def relationRow4306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 122⟩], residual := [((1 : F), 4703)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4705)

def relationRow4307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4696) * ((1 : F) * rho 4697) = ((1 : F) * rho 4706)

def relationRow4308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4696) * ((1 : F) * rho 4696) = ((1 : F) * rho 4707)

def relationRow4309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4697) * ((1 : F) * rho 4697) = ((1 : F) * rho 4708)

def relationRow4310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * ((-1 : F) * rho 4707 + (1 : F) * rho 4708) = ((2 : F) * rho 4706)

def relationRow4311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4710) * ((2 : F) + (1 : F) * rho 4707 + (-1 : F) * rho 4708) = ((1 : F) * rho 4707 + (1 : F) * rho 4708)

def relationRow4312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709 + (1 : F) * rho 4710) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 123⟩, ⟨(1 : F), 3119, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4711)

def relationRow4313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4710) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4712)

def relationRow4314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4713)

def relationRow4315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4712) * ((1 : F) * rho 4713) = ((1 : F) * rho 4714)

def relationRow4316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4715) * ((1 : F) + (1 : F) * rho 4714) = ((1 : F) * rho 4712 + (1 : F) * rho 4713)

def relationRow4317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * ((1 : F) + (-1 : F) * rho 4714) = ((1 : F) * rho 4711 + (-1 : F) * rho 4712 + (-1 : F) * rho 4713)

def relationRow4318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 123⟩], residual := [((1 : F), 4715)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4717)

def relationRow4319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 123⟩], residual := [((1 : F), 4716)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4718)

def relationRow4320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * ((1 : F) * rho 4710) = ((1 : F) * rho 4719)

def relationRow4321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * ((1 : F) * rho 4709) = ((1 : F) * rho 4720)

def relationRow4322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4710) * ((1 : F) * rho 4710) = ((1 : F) * rho 4721)

def relationRow4323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722) * ((-1 : F) * rho 4720 + (1 : F) * rho 4721) = ((2 : F) * rho 4719)

def relationRow4324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4723) * ((2 : F) + (1 : F) * rho 4720 + (-1 : F) * rho 4721) = ((1 : F) * rho 4720 + (1 : F) * rho 4721)

def relationRow4325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722 + (1 : F) * rho 4723) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 124⟩, ⟨(1 : F), 3119, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4724)

def relationRow4326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4723) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4725)

def relationRow4327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4726)

def relationRow4328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4725) * ((1 : F) * rho 4726) = ((1 : F) * rho 4727)

def relationRow4329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4728) * ((1 : F) + (1 : F) * rho 4727) = ((1 : F) * rho 4725 + (1 : F) * rho 4726)

def relationRow4330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((1 : F) + (-1 : F) * rho 4727) = ((1 : F) * rho 4724 + (-1 : F) * rho 4725 + (-1 : F) * rho 4726)

def relationRow4331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 124⟩], residual := [((1 : F), 4728)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4730)

def relationRow4332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 124⟩], residual := [((1 : F), 4729)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4731)

def relationRow4333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722) * ((1 : F) * rho 4723) = ((1 : F) * rho 4732)

def relationRow4334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722) * ((1 : F) * rho 4722) = ((1 : F) * rho 4733)

def relationRow4335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4723) * ((1 : F) * rho 4723) = ((1 : F) * rho 4734)

def relationRow4336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735) * ((-1 : F) * rho 4733 + (1 : F) * rho 4734) = ((2 : F) * rho 4732)

def relationRow4337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4736) * ((2 : F) + (1 : F) * rho 4733 + (-1 : F) * rho 4734) = ((1 : F) * rho 4733 + (1 : F) * rho 4734)

def relationRow4338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735 + (1 : F) * rho 4736) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 125⟩, ⟨(1 : F), 3119, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4737)

def relationRow4339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4736) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4738)

def relationRow4340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4739)

def relationRow4341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4738) * ((1 : F) * rho 4739) = ((1 : F) * rho 4740)

def relationRow4342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4741) * ((1 : F) + (1 : F) * rho 4740) = ((1 : F) * rho 4738 + (1 : F) * rho 4739)

def relationRow4343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4742) * ((1 : F) + (-1 : F) * rho 4740) = ((1 : F) * rho 4737 + (-1 : F) * rho 4738 + (-1 : F) * rho 4739)

def relationRow4344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 125⟩], residual := [((1 : F), 4741)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4743)

def relationRow4345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 125⟩], residual := [((1 : F), 4742)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4744)

def relationRow4346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735) * ((1 : F) * rho 4736) = ((1 : F) * rho 4745)

def relationRow4347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735) * ((1 : F) * rho 4735) = ((1 : F) * rho 4746)

def relationRow4348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4736) * ((1 : F) * rho 4736) = ((1 : F) * rho 4747)

def relationRow4349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748) * ((-1 : F) * rho 4746 + (1 : F) * rho 4747) = ((2 : F) * rho 4745)

def relationRow4350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4749) * ((2 : F) + (1 : F) * rho 4746 + (-1 : F) * rho 4747) = ((1 : F) * rho 4746 + (1 : F) * rho 4747)

def relationRow4351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748 + (1 : F) * rho 4749) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 126⟩, ⟨(1 : F), 3119, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4750)

def relationRow4352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4749) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4751)

def relationRow4353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4752)

def relationRow4354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4751) * ((1 : F) * rho 4752) = ((1 : F) * rho 4753)

def relationRow4355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4754) * ((1 : F) + (1 : F) * rho 4753) = ((1 : F) * rho 4751 + (1 : F) * rho 4752)

def relationRow4356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755) * ((1 : F) + (-1 : F) * rho 4753) = ((1 : F) * rho 4750 + (-1 : F) * rho 4751 + (-1 : F) * rho 4752)

def relationRow4357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 126⟩], residual := [((1 : F), 4754)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4756)

def relationRow4358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 126⟩], residual := [((1 : F), 4755)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4757)

def relationRow4359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748) * ((1 : F) * rho 4749) = ((1 : F) * rho 4758)

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748) * ((1 : F) * rho 4748) = ((1 : F) * rho 4759)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4749) * ((1 : F) * rho 4749) = ((1 : F) * rho 4760)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6
