import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs87

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3688) * (relationLc657 rho) = ((1 : F) * rho 3690)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3687) * (relationLc658 rho) = ((1 : F) * rho 3691)

def relationRow4198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3690) * ((1 : F) * rho 3691) = ((1 : F) * rho 3692)

def relationRow4199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3693) * ((1 : F) + (1 : F) * rho 3692) = ((1 : F) * rho 3690 + (1 : F) * rho 3691)

def relationRow4200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3694) * ((1 : F) + (-1 : F) * rho 3692) = ((1 : F) * rho 3689 + (-1 : F) * rho 3690 + (-1 : F) * rho 3691)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 113⟩], residual := [((-1 : F), 2212), ((1 : F), 3693)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1097) * (relationLc659 rho) = ((1 : F) * rho 3695)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 114⟩], residual := [((1 : F), 3694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1097) * (relationLc660 rho) = ((1 : F) * rho 3696)

def relationRow4203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3687) * ((1 : F) * rho 3688) = ((1 : F) * rho 3697)

def relationRow4204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3687) * ((1 : F) * rho 3687) = ((1 : F) * rho 3698)

def relationRow4205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3688) * ((1 : F) * rho 3688) = ((1 : F) * rho 3699)

def relationRow4206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3700) * ((-1 : F) * rho 3698 + (1 : F) * rho 3699) = ((2 : F) * rho 3697)

def relationRow4207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3701) * ((2 : F) + (1 : F) * rho 3698 + (-1 : F) * rho 3699) = ((1 : F) * rho 3698 + (1 : F) * rho 3699)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 115⟩, ⟨(1 : F), 2226, 13, 114⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3700 + (1 : F) * rho 3701) * (relationLc661 rho) = ((1 : F) * rho 3702)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 114⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3701) * (relationLc662 rho) = ((1 : F) * rho 3703)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3700) * (relationLc663 rho) = ((1 : F) * rho 3704)

def relationRow4211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3703) * ((1 : F) * rho 3704) = ((1 : F) * rho 3705)

def relationRow4212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3706) * ((1 : F) + (1 : F) * rho 3705) = ((1 : F) * rho 3703 + (1 : F) * rho 3704)

def relationRow4213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3707) * ((1 : F) + (-1 : F) * rho 3705) = ((1 : F) * rho 3702 + (-1 : F) * rho 3703 + (-1 : F) * rho 3704)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 114⟩], residual := [((-1 : F), 2212), ((1 : F), 3706)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1098) * (relationLc664 rho) = ((1 : F) * rho 3708)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 115⟩], residual := [((1 : F), 3707)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1098) * (relationLc665 rho) = ((1 : F) * rho 3709)

def relationRow4216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3700) * ((1 : F) * rho 3701) = ((1 : F) * rho 3710)

def relationRow4217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3700) * ((1 : F) * rho 3700) = ((1 : F) * rho 3711)

def relationRow4218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3701) * ((1 : F) * rho 3701) = ((1 : F) * rho 3712)

def relationRow4219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3713) * ((-1 : F) * rho 3711 + (1 : F) * rho 3712) = ((2 : F) * rho 3710)

def relationRow4220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3714) * ((2 : F) + (1 : F) * rho 3711 + (-1 : F) * rho 3712) = ((1 : F) * rho 3711 + (1 : F) * rho 3712)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 116⟩, ⟨(1 : F), 2226, 13, 115⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3713 + (1 : F) * rho 3714) * (relationLc666 rho) = ((1 : F) * rho 3715)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 115⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3714) * (relationLc667 rho) = ((1 : F) * rho 3716)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3713) * (relationLc668 rho) = ((1 : F) * rho 3717)

def relationRow4224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3716) * ((1 : F) * rho 3717) = ((1 : F) * rho 3718)

def relationRow4225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3719) * ((1 : F) + (1 : F) * rho 3718) = ((1 : F) * rho 3716 + (1 : F) * rho 3717)

def relationRow4226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3720) * ((1 : F) + (-1 : F) * rho 3718) = ((1 : F) * rho 3715 + (-1 : F) * rho 3716 + (-1 : F) * rho 3717)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 115⟩], residual := [((-1 : F), 2212), ((1 : F), 3719)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1099) * (relationLc669 rho) = ((1 : F) * rho 3721)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 116⟩], residual := [((1 : F), 3720)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1099) * (relationLc670 rho) = ((1 : F) * rho 3722)

def relationRow4229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3713) * ((1 : F) * rho 3714) = ((1 : F) * rho 3723)

def relationRow4230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3713) * ((1 : F) * rho 3713) = ((1 : F) * rho 3724)

def relationRow4231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3714) * ((1 : F) * rho 3714) = ((1 : F) * rho 3725)

def relationRow4232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3726) * ((-1 : F) * rho 3724 + (1 : F) * rho 3725) = ((2 : F) * rho 3723)

def relationRow4233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3727) * ((2 : F) + (1 : F) * rho 3724 + (-1 : F) * rho 3725) = ((1 : F) * rho 3724 + (1 : F) * rho 3725)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 117⟩, ⟨(1 : F), 2226, 13, 116⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3726 + (1 : F) * rho 3727) * (relationLc671 rho) = ((1 : F) * rho 3728)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 116⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3727) * (relationLc672 rho) = ((1 : F) * rho 3729)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3726) * (relationLc673 rho) = ((1 : F) * rho 3730)

def relationRow4237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3729) * ((1 : F) * rho 3730) = ((1 : F) * rho 3731)

def relationRow4238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3732) * ((1 : F) + (1 : F) * rho 3731) = ((1 : F) * rho 3729 + (1 : F) * rho 3730)

def relationRow4239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3733) * ((1 : F) + (-1 : F) * rho 3731) = ((1 : F) * rho 3728 + (-1 : F) * rho 3729 + (-1 : F) * rho 3730)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 116⟩], residual := [((-1 : F), 2212), ((1 : F), 3732)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1100) * (relationLc674 rho) = ((1 : F) * rho 3734)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 117⟩], residual := [((1 : F), 3733)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1100) * (relationLc675 rho) = ((1 : F) * rho 3735)

def relationRow4242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3726) * ((1 : F) * rho 3727) = ((1 : F) * rho 3736)

def relationRow4243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3726) * ((1 : F) * rho 3726) = ((1 : F) * rho 3737)

def relationRow4244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3727) * ((1 : F) * rho 3727) = ((1 : F) * rho 3738)

def relationRow4245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3739) * ((-1 : F) * rho 3737 + (1 : F) * rho 3738) = ((2 : F) * rho 3736)

def relationRow4246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3740) * ((2 : F) + (1 : F) * rho 3737 + (-1 : F) * rho 3738) = ((1 : F) * rho 3737 + (1 : F) * rho 3738)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 118⟩, ⟨(1 : F), 2226, 13, 117⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3739 + (1 : F) * rho 3740) * (relationLc676 rho) = ((1 : F) * rho 3741)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 117⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3740) * (relationLc677 rho) = ((1 : F) * rho 3742)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3739) * (relationLc678 rho) = ((1 : F) * rho 3743)

def relationRow4250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3742) * ((1 : F) * rho 3743) = ((1 : F) * rho 3744)

def relationRow4251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3745) * ((1 : F) + (1 : F) * rho 3744) = ((1 : F) * rho 3742 + (1 : F) * rho 3743)

def relationRow4252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3746) * ((1 : F) + (-1 : F) * rho 3744) = ((1 : F) * rho 3741 + (-1 : F) * rho 3742 + (-1 : F) * rho 3743)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 117⟩], residual := [((-1 : F), 2212), ((1 : F), 3745)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1101) * (relationLc679 rho) = ((1 : F) * rho 3747)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 118⟩], residual := [((1 : F), 3746)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1101) * (relationLc680 rho) = ((1 : F) * rho 3748)

def relationRow4255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3739) * ((1 : F) * rho 3740) = ((1 : F) * rho 3749)

def relationRow4256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3739) * ((1 : F) * rho 3739) = ((1 : F) * rho 3750)

def relationRow4257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3740) * ((1 : F) * rho 3740) = ((1 : F) * rho 3751)

def relationRow4258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3752) * ((-1 : F) * rho 3750 + (1 : F) * rho 3751) = ((2 : F) * rho 3749)

def relationRow4259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3753) * ((2 : F) + (1 : F) * rho 3750 + (-1 : F) * rho 3751) = ((1 : F) * rho 3750 + (1 : F) * rho 3751)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 119⟩, ⟨(1 : F), 2226, 13, 118⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3752 + (1 : F) * rho 3753) * (relationLc681 rho) = ((1 : F) * rho 3754)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 118⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3753) * (relationLc682 rho) = ((1 : F) * rho 3755)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3752) * (relationLc683 rho) = ((1 : F) * rho 3756)

def relationRow4263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3755) * ((1 : F) * rho 3756) = ((1 : F) * rho 3757)

def relationRow4264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3758) * ((1 : F) + (1 : F) * rho 3757) = ((1 : F) * rho 3755 + (1 : F) * rho 3756)

def relationRow4265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3759) * ((1 : F) + (-1 : F) * rho 3757) = ((1 : F) * rho 3754 + (-1 : F) * rho 3755 + (-1 : F) * rho 3756)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 118⟩], residual := [((-1 : F), 2212), ((1 : F), 3758)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1102) * (relationLc684 rho) = ((1 : F) * rho 3760)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 119⟩], residual := [((1 : F), 3759)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1102) * (relationLc685 rho) = ((1 : F) * rho 3761)

def relationRow4268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3752) * ((1 : F) * rho 3753) = ((1 : F) * rho 3762)

def relationRow4269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3752) * ((1 : F) * rho 3752) = ((1 : F) * rho 3763)

def relationRow4270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3753) * ((1 : F) * rho 3753) = ((1 : F) * rho 3764)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
