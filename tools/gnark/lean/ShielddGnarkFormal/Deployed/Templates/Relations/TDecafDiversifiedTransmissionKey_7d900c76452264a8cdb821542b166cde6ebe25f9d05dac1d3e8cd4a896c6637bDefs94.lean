import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs93

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * (relationLc827 rho) = ((1 : F) * rho 4132)

def relationLc828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * (relationLc828 rho) = ((1 : F) * rho 4133)

def relationRow4640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4132) * ((1 : F) * rho 4133) = ((1 : F) * rho 4134)

def relationRow4641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4135) * ((1 : F) + (1 : F) * rho 4134) = ((1 : F) * rho 4132 + (1 : F) * rho 4133)

def relationRow4642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4136) * ((1 : F) + (-1 : F) * rho 4134) = ((1 : F) * rho 4131 + (-1 : F) * rho 4132 + (-1 : F) * rho 4133)

def relationLc829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 147⟩], residual := [((-1 : F), 2212), ((1 : F), 4135)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * (relationLc829 rho) = ((1 : F) * rho 4137)

def relationLc830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 148⟩], residual := [((1 : F), 4136)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * (relationLc830 rho) = ((1 : F) * rho 4138)

def relationRow4645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * ((1 : F) * rho 4130) = ((1 : F) * rho 4139)

def relationRow4646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * ((1 : F) * rho 4129) = ((1 : F) * rho 4140)

def relationRow4647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * ((1 : F) * rho 4130) = ((1 : F) * rho 4141)

def relationRow4648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4142) * ((-1 : F) * rho 4140 + (1 : F) * rho 4141) = ((2 : F) * rho 4139)

def relationRow4649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4143) * ((2 : F) + (1 : F) * rho 4140 + (-1 : F) * rho 4141) = ((1 : F) * rho 4140 + (1 : F) * rho 4141)

def relationLc831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 149⟩, ⟨(1 : F), 2226, 13, 148⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4142 + (1 : F) * rho 4143) * (relationLc831 rho) = ((1 : F) * rho 4144)

def relationLc832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 148⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4143) * (relationLc832 rho) = ((1 : F) * rho 4145)

def relationLc833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4142) * (relationLc833 rho) = ((1 : F) * rho 4146)

def relationRow4653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4145) * ((1 : F) * rho 4146) = ((1 : F) * rho 4147)

def relationRow4654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4148) * ((1 : F) + (1 : F) * rho 4147) = ((1 : F) * rho 4145 + (1 : F) * rho 4146)

def relationRow4655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4149) * ((1 : F) + (-1 : F) * rho 4147) = ((1 : F) * rho 4144 + (-1 : F) * rho 4145 + (-1 : F) * rho 4146)

def relationLc834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 148⟩], residual := [((-1 : F), 2212), ((1 : F), 4148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1132) * (relationLc834 rho) = ((1 : F) * rho 4150)

def relationLc835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 149⟩], residual := [((1 : F), 4149)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1132) * (relationLc835 rho) = ((1 : F) * rho 4151)

def relationRow4658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4142) * ((1 : F) * rho 4143) = ((1 : F) * rho 4152)

def relationRow4659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4142) * ((1 : F) * rho 4142) = ((1 : F) * rho 4153)

def relationRow4660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4143) * ((1 : F) * rho 4143) = ((1 : F) * rho 4154)

def relationRow4661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4155) * ((-1 : F) * rho 4153 + (1 : F) * rho 4154) = ((2 : F) * rho 4152)

def relationRow4662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * ((2 : F) + (1 : F) * rho 4153 + (-1 : F) * rho 4154) = ((1 : F) * rho 4153 + (1 : F) * rho 4154)

def relationLc836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4663 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc836 rho) = ((1 : F) * rho 4157)

def relationRow4664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((1 : F) * rho 4155 + (1 : F) * rho 4156) = ((1 : F) * rho 4158)

def relationLc837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * (relationLc837 rho) = ((1 : F) * rho 4159)

def relationLc838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4155) * (relationLc838 rho) = ((1 : F) * rho 4160)

def relationRow4667 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4159) * ((1 : F) * rho 4160) = ((1 : F) * rho 4161)

def relationRow4668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4162) * ((1 : F) + (1 : F) * rho 4161) = ((1 : F) * rho 4159 + (1 : F) * rho 4160)

def relationRow4669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163) * ((1 : F) + (-1 : F) * rho 4161) = ((1 : F) * rho 4158 + (-1 : F) * rho 4159 + (-1 : F) * rho 4160)

def relationLc839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((1 : F), 4162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1133) * (relationLc839 rho) = ((1 : F) * rho 4164)

def relationLc840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4163)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1133) * (relationLc840 rho) = ((1 : F) * rho 4165)

def relationRow4672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4155) * ((1 : F) * rho 4156) = ((1 : F) * rho 4166)

def relationRow4673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4155) * ((1 : F) * rho 4155) = ((1 : F) * rho 4167)

def relationRow4674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * ((1 : F) * rho 4156) = ((1 : F) * rho 4168)

def relationRow4675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4169) * ((-1 : F) * rho 4167 + (1 : F) * rho 4168) = ((2 : F) * rho 4166)

def relationRow4676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * ((2 : F) + (1 : F) * rho 4167 + (-1 : F) * rho 4168) = ((1 : F) * rho 4167 + (1 : F) * rho 4168)

def relationLc841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4677 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc841 rho) = ((1 : F) * rho 4171)

def relationRow4678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4171) * ((1 : F) * rho 4169 + (1 : F) * rho 4170) = ((1 : F) * rho 4172)

def relationLc842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * (relationLc842 rho) = ((1 : F) * rho 4173)

def relationLc843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4169) * (relationLc843 rho) = ((1 : F) * rho 4174)

def relationRow4681 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4173) * ((1 : F) * rho 4174) = ((1 : F) * rho 4175)

def relationRow4682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176) * ((1 : F) + (1 : F) * rho 4175) = ((1 : F) * rho 4173 + (1 : F) * rho 4174)

def relationRow4683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4177) * ((1 : F) + (-1 : F) * rho 4175) = ((1 : F) * rho 4172 + (-1 : F) * rho 4173 + (-1 : F) * rho 4174)

def relationLc844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((1 : F), 4176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1134) * (relationLc844 rho) = ((1 : F) * rho 4178)

def relationLc845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((1 : F), 4177)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1134) * (relationLc845 rho) = ((1 : F) * rho 4179)

def relationRow4686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4169) * ((1 : F) * rho 4170) = ((1 : F) * rho 4180)

def relationRow4687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4169) * ((1 : F) * rho 4169) = ((1 : F) * rho 4181)

def relationRow4688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * ((1 : F) * rho 4170) = ((1 : F) * rho 4182)

def relationRow4689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((-1 : F) * rho 4181 + (1 : F) * rho 4182) = ((2 : F) * rho 4180)

def relationRow4690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * ((2 : F) + (1 : F) * rho 4181 + (-1 : F) * rho 4182) = ((1 : F) * rho 4181 + (1 : F) * rho 4182)

def relationLc846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4691 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc846 rho) = ((1 : F) * rho 4185)

def relationRow4692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4185) * ((1 : F) * rho 4183 + (1 : F) * rho 4184) = ((1 : F) * rho 4186)

def relationLc847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * (relationLc847 rho) = ((1 : F) * rho 4187)

def relationLc848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * (relationLc848 rho) = ((1 : F) * rho 4188)

def relationRow4695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4187) * ((1 : F) * rho 4188) = ((1 : F) * rho 4189)

def relationRow4696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4190) * ((1 : F) + (1 : F) * rho 4189) = ((1 : F) * rho 4187 + (1 : F) * rho 4188)

def relationRow4697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4191) * ((1 : F) + (-1 : F) * rho 4189) = ((1 : F) * rho 4186 + (-1 : F) * rho 4187 + (-1 : F) * rho 4188)

def relationLc849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((1 : F), 4190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1135) * (relationLc849 rho) = ((1 : F) * rho 4192)

def relationLc850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((1 : F), 4191)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1135) * (relationLc850 rho) = ((1 : F) * rho 4193)

def relationRow4700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((1 : F) * rho 4184) = ((1 : F) * rho 4194)

def relationRow4701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((1 : F) * rho 4183) = ((1 : F) * rho 4195)

def relationRow4702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * ((1 : F) * rho 4184) = ((1 : F) * rho 4196)

def relationRow4703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * ((-1 : F) * rho 4195 + (1 : F) * rho 4196) = ((2 : F) * rho 4194)

def relationRow4704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4198) * ((2 : F) + (1 : F) * rho 4195 + (-1 : F) * rho 4196) = ((1 : F) * rho 4195 + (1 : F) * rho 4196)

def relationLc851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4705 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc851 rho) = ((1 : F) * rho 4199)

def relationRow4706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4199) * ((1 : F) * rho 4197 + (1 : F) * rho 4198) = ((1 : F) * rho 4200)

def relationLc852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4198) * (relationLc852 rho) = ((1 : F) * rho 4201)

def relationLc853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * (relationLc853 rho) = ((1 : F) * rho 4202)

def relationRow4709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4201) * ((1 : F) * rho 4202) = ((1 : F) * rho 4203)

def relationRow4710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4204) * ((1 : F) + (1 : F) * rho 4203) = ((1 : F) * rho 4201 + (1 : F) * rho 4202)

def relationRow4711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4205) * ((1 : F) + (-1 : F) * rho 4203) = ((1 : F) * rho 4200 + (-1 : F) * rho 4201 + (-1 : F) * rho 4202)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
