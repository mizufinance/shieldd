import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs88

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3765) * ((-1 : F) * rho 3763 + (1 : F) * rho 3764) = ((2 : F) * rho 3762)

def relationRow4272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3766) * ((2 : F) + (1 : F) * rho 3763 + (-1 : F) * rho 3764) = ((1 : F) * rho 3763 + (1 : F) * rho 3764)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 120⟩, ⟨(1 : F), 2226, 13, 119⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3765 + (1 : F) * rho 3766) * (relationLc686 rho) = ((1 : F) * rho 3767)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 119⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3766) * (relationLc687 rho) = ((1 : F) * rho 3768)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3765) * (relationLc688 rho) = ((1 : F) * rho 3769)

def relationRow4276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3768) * ((1 : F) * rho 3769) = ((1 : F) * rho 3770)

def relationRow4277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3771) * ((1 : F) + (1 : F) * rho 3770) = ((1 : F) * rho 3768 + (1 : F) * rho 3769)

def relationRow4278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3772) * ((1 : F) + (-1 : F) * rho 3770) = ((1 : F) * rho 3767 + (-1 : F) * rho 3768 + (-1 : F) * rho 3769)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 119⟩], residual := [((-1 : F), 2212), ((1 : F), 3771)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1103) * (relationLc689 rho) = ((1 : F) * rho 3773)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 120⟩], residual := [((1 : F), 3772)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1103) * (relationLc690 rho) = ((1 : F) * rho 3774)

def relationRow4281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3765) * ((1 : F) * rho 3766) = ((1 : F) * rho 3775)

def relationRow4282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3765) * ((1 : F) * rho 3765) = ((1 : F) * rho 3776)

def relationRow4283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3766) * ((1 : F) * rho 3766) = ((1 : F) * rho 3777)

def relationRow4284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3778) * ((-1 : F) * rho 3776 + (1 : F) * rho 3777) = ((2 : F) * rho 3775)

def relationRow4285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3779) * ((2 : F) + (1 : F) * rho 3776 + (-1 : F) * rho 3777) = ((1 : F) * rho 3776 + (1 : F) * rho 3777)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 121⟩, ⟨(1 : F), 2226, 13, 120⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3778 + (1 : F) * rho 3779) * (relationLc691 rho) = ((1 : F) * rho 3780)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 120⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3779) * (relationLc692 rho) = ((1 : F) * rho 3781)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3778) * (relationLc693 rho) = ((1 : F) * rho 3782)

def relationRow4289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3781) * ((1 : F) * rho 3782) = ((1 : F) * rho 3783)

def relationRow4290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3784) * ((1 : F) + (1 : F) * rho 3783) = ((1 : F) * rho 3781 + (1 : F) * rho 3782)

def relationRow4291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3785) * ((1 : F) + (-1 : F) * rho 3783) = ((1 : F) * rho 3780 + (-1 : F) * rho 3781 + (-1 : F) * rho 3782)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 120⟩], residual := [((-1 : F), 2212), ((1 : F), 3784)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1104) * (relationLc694 rho) = ((1 : F) * rho 3786)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 121⟩], residual := [((1 : F), 3785)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1104) * (relationLc695 rho) = ((1 : F) * rho 3787)

def relationRow4294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3778) * ((1 : F) * rho 3779) = ((1 : F) * rho 3788)

def relationRow4295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3778) * ((1 : F) * rho 3778) = ((1 : F) * rho 3789)

def relationRow4296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3779) * ((1 : F) * rho 3779) = ((1 : F) * rho 3790)

def relationRow4297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3791) * ((-1 : F) * rho 3789 + (1 : F) * rho 3790) = ((2 : F) * rho 3788)

def relationRow4298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3792) * ((2 : F) + (1 : F) * rho 3789 + (-1 : F) * rho 3790) = ((1 : F) * rho 3789 + (1 : F) * rho 3790)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 122⟩, ⟨(1 : F), 2226, 13, 121⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3791 + (1 : F) * rho 3792) * (relationLc696 rho) = ((1 : F) * rho 3793)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 121⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3792) * (relationLc697 rho) = ((1 : F) * rho 3794)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3791) * (relationLc698 rho) = ((1 : F) * rho 3795)

def relationRow4302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3794) * ((1 : F) * rho 3795) = ((1 : F) * rho 3796)

def relationRow4303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3797) * ((1 : F) + (1 : F) * rho 3796) = ((1 : F) * rho 3794 + (1 : F) * rho 3795)

def relationRow4304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3798) * ((1 : F) + (-1 : F) * rho 3796) = ((1 : F) * rho 3793 + (-1 : F) * rho 3794 + (-1 : F) * rho 3795)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 121⟩], residual := [((-1 : F), 2212), ((1 : F), 3797)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1105) * (relationLc699 rho) = ((1 : F) * rho 3799)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 122⟩], residual := [((1 : F), 3798)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1105) * (relationLc700 rho) = ((1 : F) * rho 3800)

def relationRow4307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3791) * ((1 : F) * rho 3792) = ((1 : F) * rho 3801)

def relationRow4308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3791) * ((1 : F) * rho 3791) = ((1 : F) * rho 3802)

def relationRow4309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3792) * ((1 : F) * rho 3792) = ((1 : F) * rho 3803)

def relationRow4310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * ((-1 : F) * rho 3802 + (1 : F) * rho 3803) = ((2 : F) * rho 3801)

def relationRow4311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * ((2 : F) + (1 : F) * rho 3802 + (-1 : F) * rho 3803) = ((1 : F) * rho 3802 + (1 : F) * rho 3803)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 123⟩, ⟨(1 : F), 2226, 13, 122⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804 + (1 : F) * rho 3805) * (relationLc701 rho) = ((1 : F) * rho 3806)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 122⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * (relationLc702 rho) = ((1 : F) * rho 3807)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * (relationLc703 rho) = ((1 : F) * rho 3808)

def relationRow4315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3807) * ((1 : F) * rho 3808) = ((1 : F) * rho 3809)

def relationRow4316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3810) * ((1 : F) + (1 : F) * rho 3809) = ((1 : F) * rho 3807 + (1 : F) * rho 3808)

def relationRow4317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3811) * ((1 : F) + (-1 : F) * rho 3809) = ((1 : F) * rho 3806 + (-1 : F) * rho 3807 + (-1 : F) * rho 3808)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 122⟩], residual := [((-1 : F), 2212), ((1 : F), 3810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1106) * (relationLc704 rho) = ((1 : F) * rho 3812)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 123⟩], residual := [((1 : F), 3811)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1106) * (relationLc705 rho) = ((1 : F) * rho 3813)

def relationRow4320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * ((1 : F) * rho 3805) = ((1 : F) * rho 3814)

def relationRow4321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3804) * ((1 : F) * rho 3804) = ((1 : F) * rho 3815)

def relationRow4322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * ((1 : F) * rho 3805) = ((1 : F) * rho 3816)

def relationRow4323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3817) * ((-1 : F) * rho 3815 + (1 : F) * rho 3816) = ((2 : F) * rho 3814)

def relationRow4324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3818) * ((2 : F) + (1 : F) * rho 3815 + (-1 : F) * rho 3816) = ((1 : F) * rho 3815 + (1 : F) * rho 3816)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 124⟩, ⟨(1 : F), 2226, 13, 123⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3817 + (1 : F) * rho 3818) * (relationLc706 rho) = ((1 : F) * rho 3819)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 123⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3818) * (relationLc707 rho) = ((1 : F) * rho 3820)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3817) * (relationLc708 rho) = ((1 : F) * rho 3821)

def relationRow4328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3820) * ((1 : F) * rho 3821) = ((1 : F) * rho 3822)

def relationRow4329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3823) * ((1 : F) + (1 : F) * rho 3822) = ((1 : F) * rho 3820 + (1 : F) * rho 3821)

def relationRow4330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3824) * ((1 : F) + (-1 : F) * rho 3822) = ((1 : F) * rho 3819 + (-1 : F) * rho 3820 + (-1 : F) * rho 3821)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 123⟩], residual := [((-1 : F), 2212), ((1 : F), 3823)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1107) * (relationLc709 rho) = ((1 : F) * rho 3825)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 124⟩], residual := [((1 : F), 3824)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1107) * (relationLc710 rho) = ((1 : F) * rho 3826)

def relationRow4333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3817) * ((1 : F) * rho 3818) = ((1 : F) * rho 3827)

def relationRow4334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3817) * ((1 : F) * rho 3817) = ((1 : F) * rho 3828)

def relationRow4335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3818) * ((1 : F) * rho 3818) = ((1 : F) * rho 3829)

def relationRow4336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3830) * ((-1 : F) * rho 3828 + (1 : F) * rho 3829) = ((2 : F) * rho 3827)

def relationRow4337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * ((2 : F) + (1 : F) * rho 3828 + (-1 : F) * rho 3829) = ((1 : F) * rho 3828 + (1 : F) * rho 3829)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 125⟩, ⟨(1 : F), 2226, 13, 124⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3830 + (1 : F) * rho 3831) * (relationLc711 rho) = ((1 : F) * rho 3832)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 124⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * (relationLc712 rho) = ((1 : F) * rho 3833)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3830) * (relationLc713 rho) = ((1 : F) * rho 3834)

def relationRow4341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3833) * ((1 : F) * rho 3834) = ((1 : F) * rho 3835)

def relationRow4342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3836) * ((1 : F) + (1 : F) * rho 3835) = ((1 : F) * rho 3833 + (1 : F) * rho 3834)

def relationRow4343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3837) * ((1 : F) + (-1 : F) * rho 3835) = ((1 : F) * rho 3832 + (-1 : F) * rho 3833 + (-1 : F) * rho 3834)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
