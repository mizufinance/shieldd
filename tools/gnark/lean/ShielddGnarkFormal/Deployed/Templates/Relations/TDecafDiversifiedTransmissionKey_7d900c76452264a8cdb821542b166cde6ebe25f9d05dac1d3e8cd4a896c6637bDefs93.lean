import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs92

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 141⟩], residual := [((-1 : F), 2212), ((1 : F), 4057)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * (relationLc799 rho) = ((1 : F) * rho 4059)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 142⟩], residual := [((1 : F), 4058)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * (relationLc800 rho) = ((1 : F) * rho 4060)

def relationRow4567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051) * ((1 : F) * rho 4052) = ((1 : F) * rho 4061)

def relationRow4568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051) * ((1 : F) * rho 4051) = ((1 : F) * rho 4062)

def relationRow4569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) * rho 4052) = ((1 : F) * rho 4063)

def relationRow4570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064) * ((-1 : F) * rho 4062 + (1 : F) * rho 4063) = ((2 : F) * rho 4061)

def relationRow4571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4065) * ((2 : F) + (1 : F) * rho 4062 + (-1 : F) * rho 4063) = ((1 : F) * rho 4062 + (1 : F) * rho 4063)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 143⟩, ⟨(1 : F), 2226, 13, 142⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064 + (1 : F) * rho 4065) * (relationLc801 rho) = ((1 : F) * rho 4066)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 142⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4065) * (relationLc802 rho) = ((1 : F) * rho 4067)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064) * (relationLc803 rho) = ((1 : F) * rho 4068)

def relationRow4575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4067) * ((1 : F) * rho 4068) = ((1 : F) * rho 4069)

def relationRow4576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4070) * ((1 : F) + (1 : F) * rho 4069) = ((1 : F) * rho 4067 + (1 : F) * rho 4068)

def relationRow4577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4071) * ((1 : F) + (-1 : F) * rho 4069) = ((1 : F) * rho 4066 + (-1 : F) * rho 4067 + (-1 : F) * rho 4068)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 142⟩], residual := [((-1 : F), 2212), ((1 : F), 4070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * (relationLc804 rho) = ((1 : F) * rho 4072)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 143⟩], residual := [((1 : F), 4071)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * (relationLc805 rho) = ((1 : F) * rho 4073)

def relationRow4580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064) * ((1 : F) * rho 4065) = ((1 : F) * rho 4074)

def relationRow4581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064) * ((1 : F) * rho 4064) = ((1 : F) * rho 4075)

def relationRow4582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4065) * ((1 : F) * rho 4065) = ((1 : F) * rho 4076)

def relationRow4583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4077) * ((-1 : F) * rho 4075 + (1 : F) * rho 4076) = ((2 : F) * rho 4074)

def relationRow4584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4078) * ((2 : F) + (1 : F) * rho 4075 + (-1 : F) * rho 4076) = ((1 : F) * rho 4075 + (1 : F) * rho 4076)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 144⟩, ⟨(1 : F), 2226, 13, 143⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4077 + (1 : F) * rho 4078) * (relationLc806 rho) = ((1 : F) * rho 4079)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 143⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4078) * (relationLc807 rho) = ((1 : F) * rho 4080)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4077) * (relationLc808 rho) = ((1 : F) * rho 4081)

def relationRow4588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4080) * ((1 : F) * rho 4081) = ((1 : F) * rho 4082)

def relationRow4589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4083) * ((1 : F) + (1 : F) * rho 4082) = ((1 : F) * rho 4080 + (1 : F) * rho 4081)

def relationRow4590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4084) * ((1 : F) + (-1 : F) * rho 4082) = ((1 : F) * rho 4079 + (-1 : F) * rho 4080 + (-1 : F) * rho 4081)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 143⟩], residual := [((-1 : F), 2212), ((1 : F), 4083)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * (relationLc809 rho) = ((1 : F) * rho 4085)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 144⟩], residual := [((1 : F), 4084)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * (relationLc810 rho) = ((1 : F) * rho 4086)

def relationRow4593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4077) * ((1 : F) * rho 4078) = ((1 : F) * rho 4087)

def relationRow4594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4077) * ((1 : F) * rho 4077) = ((1 : F) * rho 4088)

def relationRow4595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4078) * ((1 : F) * rho 4078) = ((1 : F) * rho 4089)

def relationRow4596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * ((-1 : F) * rho 4088 + (1 : F) * rho 4089) = ((2 : F) * rho 4087)

def relationRow4597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * ((2 : F) + (1 : F) * rho 4088 + (-1 : F) * rho 4089) = ((1 : F) * rho 4088 + (1 : F) * rho 4089)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 145⟩, ⟨(1 : F), 2226, 13, 144⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090 + (1 : F) * rho 4091) * (relationLc811 rho) = ((1 : F) * rho 4092)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 144⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * (relationLc812 rho) = ((1 : F) * rho 4093)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * (relationLc813 rho) = ((1 : F) * rho 4094)

def relationRow4601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4093) * ((1 : F) * rho 4094) = ((1 : F) * rho 4095)

def relationRow4602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4096) * ((1 : F) + (1 : F) * rho 4095) = ((1 : F) * rho 4093 + (1 : F) * rho 4094)

def relationRow4603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4097) * ((1 : F) + (-1 : F) * rho 4095) = ((1 : F) * rho 4092 + (-1 : F) * rho 4093 + (-1 : F) * rho 4094)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 144⟩], residual := [((-1 : F), 2212), ((1 : F), 4096)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1128) * (relationLc814 rho) = ((1 : F) * rho 4098)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 145⟩], residual := [((1 : F), 4097)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1128) * (relationLc815 rho) = ((1 : F) * rho 4099)

def relationRow4606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * ((1 : F) * rho 4091) = ((1 : F) * rho 4100)

def relationRow4607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * ((1 : F) * rho 4090) = ((1 : F) * rho 4101)

def relationRow4608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * ((1 : F) * rho 4091) = ((1 : F) * rho 4102)

def relationRow4609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4103) * ((-1 : F) * rho 4101 + (1 : F) * rho 4102) = ((2 : F) * rho 4100)

def relationRow4610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4104) * ((2 : F) + (1 : F) * rho 4101 + (-1 : F) * rho 4102) = ((1 : F) * rho 4101 + (1 : F) * rho 4102)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 146⟩, ⟨(1 : F), 2226, 13, 145⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4103 + (1 : F) * rho 4104) * (relationLc816 rho) = ((1 : F) * rho 4105)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 145⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4104) * (relationLc817 rho) = ((1 : F) * rho 4106)

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4103) * (relationLc818 rho) = ((1 : F) * rho 4107)

def relationRow4614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4106) * ((1 : F) * rho 4107) = ((1 : F) * rho 4108)

def relationRow4615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4109) * ((1 : F) + (1 : F) * rho 4108) = ((1 : F) * rho 4106 + (1 : F) * rho 4107)

def relationRow4616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4110) * ((1 : F) + (-1 : F) * rho 4108) = ((1 : F) * rho 4105 + (-1 : F) * rho 4106 + (-1 : F) * rho 4107)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 145⟩], residual := [((-1 : F), 2212), ((1 : F), 4109)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1129) * (relationLc819 rho) = ((1 : F) * rho 4111)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 146⟩], residual := [((1 : F), 4110)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1129) * (relationLc820 rho) = ((1 : F) * rho 4112)

def relationRow4619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4103) * ((1 : F) * rho 4104) = ((1 : F) * rho 4113)

def relationRow4620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4103) * ((1 : F) * rho 4103) = ((1 : F) * rho 4114)

def relationRow4621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4104) * ((1 : F) * rho 4104) = ((1 : F) * rho 4115)

def relationRow4622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4116) * ((-1 : F) * rho 4114 + (1 : F) * rho 4115) = ((2 : F) * rho 4113)

def relationRow4623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * ((2 : F) + (1 : F) * rho 4114 + (-1 : F) * rho 4115) = ((1 : F) * rho 4114 + (1 : F) * rho 4115)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 147⟩, ⟨(1 : F), 2226, 13, 146⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4116 + (1 : F) * rho 4117) * (relationLc821 rho) = ((1 : F) * rho 4118)

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 146⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * (relationLc822 rho) = ((1 : F) * rho 4119)

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4116) * (relationLc823 rho) = ((1 : F) * rho 4120)

def relationRow4627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4119) * ((1 : F) * rho 4120) = ((1 : F) * rho 4121)

def relationRow4628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4122) * ((1 : F) + (1 : F) * rho 4121) = ((1 : F) * rho 4119 + (1 : F) * rho 4120)

def relationRow4629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4123) * ((1 : F) + (-1 : F) * rho 4121) = ((1 : F) * rho 4118 + (-1 : F) * rho 4119 + (-1 : F) * rho 4120)

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 146⟩], residual := [((-1 : F), 2212), ((1 : F), 4122)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1130) * (relationLc824 rho) = ((1 : F) * rho 4124)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 147⟩], residual := [((1 : F), 4123)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1130) * (relationLc825 rho) = ((1 : F) * rho 4125)

def relationRow4632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4116) * ((1 : F) * rho 4117) = ((1 : F) * rho 4126)

def relationRow4633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4116) * ((1 : F) * rho 4116) = ((1 : F) * rho 4127)

def relationRow4634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * ((1 : F) * rho 4117) = ((1 : F) * rho 4128)

def relationRow4635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * ((-1 : F) * rho 4127 + (1 : F) * rho 4128) = ((2 : F) * rho 4126)

def relationRow4636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * ((2 : F) + (1 : F) * rho 4127 + (-1 : F) * rho 4128) = ((1 : F) * rho 4127 + (1 : F) * rho 4128)

def relationLc826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 148⟩, ⟨(1 : F), 2226, 13, 147⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129 + (1 : F) * rho 4130) * (relationLc826 rho) = ((1 : F) * rho 4131)

def relationLc827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 147⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
