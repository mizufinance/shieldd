import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs85

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3544) * ((-1 : F) * rho 3542 + (1 : F) * rho 3543) = ((2 : F) * rho 3541)

def relationRow4051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545) * ((2 : F) + (1 : F) * rho 3542 + (-1 : F) * rho 3543) = ((1 : F) * rho 3542 + (1 : F) * rho 3543)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 103⟩, ⟨(1 : F), 2226, 13, 102⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3544 + (1 : F) * rho 3545) * (relationLc601 rho) = ((1 : F) * rho 3546)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 102⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545) * (relationLc602 rho) = ((1 : F) * rho 3547)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3544) * (relationLc603 rho) = ((1 : F) * rho 3548)

def relationRow4055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3547) * ((1 : F) * rho 3548) = ((1 : F) * rho 3549)

def relationRow4056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3550) * ((1 : F) + (1 : F) * rho 3549) = ((1 : F) * rho 3547 + (1 : F) * rho 3548)

def relationRow4057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3551) * ((1 : F) + (-1 : F) * rho 3549) = ((1 : F) * rho 3546 + (-1 : F) * rho 3547 + (-1 : F) * rho 3548)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 102⟩], residual := [((-1 : F), 2212), ((1 : F), 3550)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1086) * (relationLc604 rho) = ((1 : F) * rho 3552)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 103⟩], residual := [((1 : F), 3551)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1086) * (relationLc605 rho) = ((1 : F) * rho 3553)

def relationRow4060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3544) * ((1 : F) * rho 3545) = ((1 : F) * rho 3554)

def relationRow4061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3544) * ((1 : F) * rho 3544) = ((1 : F) * rho 3555)

def relationRow4062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545) * ((1 : F) * rho 3545) = ((1 : F) * rho 3556)

def relationRow4063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((-1 : F) * rho 3555 + (1 : F) * rho 3556) = ((2 : F) * rho 3554)

def relationRow4064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * ((2 : F) + (1 : F) * rho 3555 + (-1 : F) * rho 3556) = ((1 : F) * rho 3555 + (1 : F) * rho 3556)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 104⟩, ⟨(1 : F), 2226, 13, 103⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557 + (1 : F) * rho 3558) * (relationLc606 rho) = ((1 : F) * rho 3559)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 103⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * (relationLc607 rho) = ((1 : F) * rho 3560)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * (relationLc608 rho) = ((1 : F) * rho 3561)

def relationRow4068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3560) * ((1 : F) * rho 3561) = ((1 : F) * rho 3562)

def relationRow4069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3563) * ((1 : F) + (1 : F) * rho 3562) = ((1 : F) * rho 3560 + (1 : F) * rho 3561)

def relationRow4070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3564) * ((1 : F) + (-1 : F) * rho 3562) = ((1 : F) * rho 3559 + (-1 : F) * rho 3560 + (-1 : F) * rho 3561)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 103⟩], residual := [((-1 : F), 2212), ((1 : F), 3563)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1087) * (relationLc609 rho) = ((1 : F) * rho 3565)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 104⟩], residual := [((1 : F), 3564)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1087) * (relationLc610 rho) = ((1 : F) * rho 3566)

def relationRow4073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((1 : F) * rho 3558) = ((1 : F) * rho 3567)

def relationRow4074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((1 : F) * rho 3557) = ((1 : F) * rho 3568)

def relationRow4075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * ((1 : F) * rho 3558) = ((1 : F) * rho 3569)

def relationRow4076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3570) * ((-1 : F) * rho 3568 + (1 : F) * rho 3569) = ((2 : F) * rho 3567)

def relationRow4077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3571) * ((2 : F) + (1 : F) * rho 3568 + (-1 : F) * rho 3569) = ((1 : F) * rho 3568 + (1 : F) * rho 3569)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 105⟩, ⟨(1 : F), 2226, 13, 104⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3570 + (1 : F) * rho 3571) * (relationLc611 rho) = ((1 : F) * rho 3572)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 104⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3571) * (relationLc612 rho) = ((1 : F) * rho 3573)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3570) * (relationLc613 rho) = ((1 : F) * rho 3574)

def relationRow4081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3573) * ((1 : F) * rho 3574) = ((1 : F) * rho 3575)

def relationRow4082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3576) * ((1 : F) + (1 : F) * rho 3575) = ((1 : F) * rho 3573 + (1 : F) * rho 3574)

def relationRow4083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3577) * ((1 : F) + (-1 : F) * rho 3575) = ((1 : F) * rho 3572 + (-1 : F) * rho 3573 + (-1 : F) * rho 3574)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 104⟩], residual := [((-1 : F), 2212), ((1 : F), 3576)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1088) * (relationLc614 rho) = ((1 : F) * rho 3578)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 105⟩], residual := [((1 : F), 3577)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1088) * (relationLc615 rho) = ((1 : F) * rho 3579)

def relationRow4086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3570) * ((1 : F) * rho 3571) = ((1 : F) * rho 3580)

def relationRow4087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3570) * ((1 : F) * rho 3570) = ((1 : F) * rho 3581)

def relationRow4088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3571) * ((1 : F) * rho 3571) = ((1 : F) * rho 3582)

def relationRow4089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3583) * ((-1 : F) * rho 3581 + (1 : F) * rho 3582) = ((2 : F) * rho 3580)

def relationRow4090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3584) * ((2 : F) + (1 : F) * rho 3581 + (-1 : F) * rho 3582) = ((1 : F) * rho 3581 + (1 : F) * rho 3582)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 106⟩, ⟨(1 : F), 2226, 13, 105⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3583 + (1 : F) * rho 3584) * (relationLc616 rho) = ((1 : F) * rho 3585)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 105⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3584) * (relationLc617 rho) = ((1 : F) * rho 3586)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3583) * (relationLc618 rho) = ((1 : F) * rho 3587)

def relationRow4094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3586) * ((1 : F) * rho 3587) = ((1 : F) * rho 3588)

def relationRow4095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3589) * ((1 : F) + (1 : F) * rho 3588) = ((1 : F) * rho 3586 + (1 : F) * rho 3587)

def relationRow4096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3590) * ((1 : F) + (-1 : F) * rho 3588) = ((1 : F) * rho 3585 + (-1 : F) * rho 3586 + (-1 : F) * rho 3587)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 105⟩], residual := [((-1 : F), 2212), ((1 : F), 3589)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1089) * (relationLc619 rho) = ((1 : F) * rho 3591)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 106⟩], residual := [((1 : F), 3590)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1089) * (relationLc620 rho) = ((1 : F) * rho 3592)

def relationRow4099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3583) * ((1 : F) * rho 3584) = ((1 : F) * rho 3593)

def relationRow4100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3583) * ((1 : F) * rho 3583) = ((1 : F) * rho 3594)

def relationRow4101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3584) * ((1 : F) * rho 3584) = ((1 : F) * rho 3595)

def relationRow4102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3596) * ((-1 : F) * rho 3594 + (1 : F) * rho 3595) = ((2 : F) * rho 3593)

def relationRow4103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3597) * ((2 : F) + (1 : F) * rho 3594 + (-1 : F) * rho 3595) = ((1 : F) * rho 3594 + (1 : F) * rho 3595)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 107⟩, ⟨(1 : F), 2226, 13, 106⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3596 + (1 : F) * rho 3597) * (relationLc621 rho) = ((1 : F) * rho 3598)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 106⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3597) * (relationLc622 rho) = ((1 : F) * rho 3599)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3596) * (relationLc623 rho) = ((1 : F) * rho 3600)

def relationRow4107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3599) * ((1 : F) * rho 3600) = ((1 : F) * rho 3601)

def relationRow4108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3602) * ((1 : F) + (1 : F) * rho 3601) = ((1 : F) * rho 3599 + (1 : F) * rho 3600)

def relationRow4109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3603) * ((1 : F) + (-1 : F) * rho 3601) = ((1 : F) * rho 3598 + (-1 : F) * rho 3599 + (-1 : F) * rho 3600)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 106⟩], residual := [((-1 : F), 2212), ((1 : F), 3602)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1090) * (relationLc624 rho) = ((1 : F) * rho 3604)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 107⟩], residual := [((1 : F), 3603)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1090) * (relationLc625 rho) = ((1 : F) * rho 3605)

def relationRow4112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3596) * ((1 : F) * rho 3597) = ((1 : F) * rho 3606)

def relationRow4113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3596) * ((1 : F) * rho 3596) = ((1 : F) * rho 3607)

def relationRow4114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3597) * ((1 : F) * rho 3597) = ((1 : F) * rho 3608)

def relationRow4115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3609) * ((-1 : F) * rho 3607 + (1 : F) * rho 3608) = ((2 : F) * rho 3606)

def relationRow4116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3610) * ((2 : F) + (1 : F) * rho 3607 + (-1 : F) * rho 3608) = ((1 : F) * rho 3607 + (1 : F) * rho 3608)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 108⟩, ⟨(1 : F), 2226, 13, 107⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3609 + (1 : F) * rho 3610) * (relationLc626 rho) = ((1 : F) * rho 3611)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 107⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3610) * (relationLc627 rho) = ((1 : F) * rho 3612)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3609) * (relationLc628 rho) = ((1 : F) * rho 3613)

def relationRow4120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3612) * ((1 : F) * rho 3613) = ((1 : F) * rho 3614)

def relationRow4121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3615) * ((1 : F) + (1 : F) * rho 3614) = ((1 : F) * rho 3612 + (1 : F) * rho 3613)

def relationRow4122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3616) * ((1 : F) + (-1 : F) * rho 3614) = ((1 : F) * rho 3611 + (-1 : F) * rho 3612 + (-1 : F) * rho 3613)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
