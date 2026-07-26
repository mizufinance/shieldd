import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs101

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 36⟩], residual := [((-1 : F), 2212), ((1 : F), 4666)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1169) * (relationLc1019 rho) = ((1 : F) * rho 4668)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 36⟩], residual := [((1 : F), 4667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1169) * (relationLc1020 rho) = ((1 : F) * rho 4669)

def relationRow5176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4659) * ((1 : F) * rho 4660) = ((1 : F) * rho 4670)

def relationRow5177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4659) * ((1 : F) * rho 4659) = ((1 : F) * rho 4671)

def relationRow5178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4660) * ((1 : F) * rho 4660) = ((1 : F) * rho 4672)

def relationRow5179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4673) * ((-1 : F) * rho 4671 + (1 : F) * rho 4672) = ((2 : F) * rho 4670)

def relationRow5180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4674) * ((2 : F) + (1 : F) * rho 4671 + (-1 : F) * rho 4672) = ((1 : F) * rho 4671 + (1 : F) * rho 4672)

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 37⟩, ⟨(1 : F), 4178, 14, 36⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5181 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1021 rho) = ((1 : F) * rho 4675)

def relationRow5182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4675) * ((1 : F) * rho 4673 + (1 : F) * rho 4674) = ((1 : F) * rho 4676)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 37⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4674) * (relationLc1022 rho) = ((1 : F) * rho 4677)

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4673) * (relationLc1023 rho) = ((1 : F) * rho 4678)

def relationRow5185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4677) * ((1 : F) * rho 4678) = ((1 : F) * rho 4679)

def relationRow5186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4680) * ((1 : F) + (1 : F) * rho 4679) = ((1 : F) * rho 4677 + (1 : F) * rho 4678)

def relationRow5187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4681) * ((1 : F) + (-1 : F) * rho 4679) = ((1 : F) * rho 4676 + (-1 : F) * rho 4677 + (-1 : F) * rho 4678)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 37⟩], residual := [((-1 : F), 2212), ((1 : F), 4680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1170) * (relationLc1024 rho) = ((1 : F) * rho 4682)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 37⟩], residual := [((1 : F), 4681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1170) * (relationLc1025 rho) = ((1 : F) * rho 4683)

def relationRow5190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4673) * ((1 : F) * rho 4674) = ((1 : F) * rho 4684)

def relationRow5191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4673) * ((1 : F) * rho 4673) = ((1 : F) * rho 4685)

def relationRow5192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4674) * ((1 : F) * rho 4674) = ((1 : F) * rho 4686)

def relationRow5193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4687) * ((-1 : F) * rho 4685 + (1 : F) * rho 4686) = ((2 : F) * rho 4684)

def relationRow5194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4688) * ((2 : F) + (1 : F) * rho 4685 + (-1 : F) * rho 4686) = ((1 : F) * rho 4685 + (1 : F) * rho 4686)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 38⟩, ⟨(1 : F), 4178, 14, 37⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5195 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1026 rho) = ((1 : F) * rho 4689)

def relationRow5196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4689) * ((1 : F) * rho 4687 + (1 : F) * rho 4688) = ((1 : F) * rho 4690)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 38⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4688) * (relationLc1027 rho) = ((1 : F) * rho 4691)

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4687) * (relationLc1028 rho) = ((1 : F) * rho 4692)

def relationRow5199 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4691) * ((1 : F) * rho 4692) = ((1 : F) * rho 4693)

def relationRow5200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4694) * ((1 : F) + (1 : F) * rho 4693) = ((1 : F) * rho 4691 + (1 : F) * rho 4692)

def relationRow5201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4695) * ((1 : F) + (-1 : F) * rho 4693) = ((1 : F) * rho 4690 + (-1 : F) * rho 4691 + (-1 : F) * rho 4692)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 38⟩], residual := [((-1 : F), 2212), ((1 : F), 4694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * (relationLc1029 rho) = ((1 : F) * rho 4696)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 38⟩], residual := [((1 : F), 4695)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * (relationLc1030 rho) = ((1 : F) * rho 4697)

def relationRow5204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4687) * ((1 : F) * rho 4688) = ((1 : F) * rho 4698)

def relationRow5205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4687) * ((1 : F) * rho 4687) = ((1 : F) * rho 4699)

def relationRow5206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4688) * ((1 : F) * rho 4688) = ((1 : F) * rho 4700)

def relationRow5207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4701) * ((-1 : F) * rho 4699 + (1 : F) * rho 4700) = ((2 : F) * rho 4698)

def relationRow5208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4702) * ((2 : F) + (1 : F) * rho 4699 + (-1 : F) * rho 4700) = ((1 : F) * rho 4699 + (1 : F) * rho 4700)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 39⟩, ⟨(1 : F), 4178, 14, 38⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5209 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1031 rho) = ((1 : F) * rho 4703)

def relationRow5210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703) * ((1 : F) * rho 4701 + (1 : F) * rho 4702) = ((1 : F) * rho 4704)

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 39⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4702) * (relationLc1032 rho) = ((1 : F) * rho 4705)

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4701) * (relationLc1033 rho) = ((1 : F) * rho 4706)

def relationRow5213 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4705) * ((1 : F) * rho 4706) = ((1 : F) * rho 4707)

def relationRow5214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4708) * ((1 : F) + (1 : F) * rho 4707) = ((1 : F) * rho 4705 + (1 : F) * rho 4706)

def relationRow5215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * ((1 : F) + (-1 : F) * rho 4707) = ((1 : F) * rho 4704 + (-1 : F) * rho 4705 + (-1 : F) * rho 4706)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 39⟩], residual := [((-1 : F), 2212), ((1 : F), 4708)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1172) * (relationLc1034 rho) = ((1 : F) * rho 4710)

def relationLc1035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 39⟩], residual := [((1 : F), 4709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1172) * (relationLc1035 rho) = ((1 : F) * rho 4711)

def relationRow5218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4701) * ((1 : F) * rho 4702) = ((1 : F) * rho 4712)

def relationRow5219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4701) * ((1 : F) * rho 4701) = ((1 : F) * rho 4713)

def relationRow5220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4702) * ((1 : F) * rho 4702) = ((1 : F) * rho 4714)

def relationRow5221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4715) * ((-1 : F) * rho 4713 + (1 : F) * rho 4714) = ((2 : F) * rho 4712)

def relationRow5222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * ((2 : F) + (1 : F) * rho 4713 + (-1 : F) * rho 4714) = ((1 : F) * rho 4713 + (1 : F) * rho 4714)

def relationLc1036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 40⟩, ⟨(1 : F), 4178, 14, 39⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5223 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1036 rho) = ((1 : F) * rho 4717)

def relationRow5224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4717) * ((1 : F) * rho 4715 + (1 : F) * rho 4716) = ((1 : F) * rho 4718)

def relationLc1037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 40⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * (relationLc1037 rho) = ((1 : F) * rho 4719)

def relationLc1038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4715) * (relationLc1038 rho) = ((1 : F) * rho 4720)

def relationRow5227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4719) * ((1 : F) * rho 4720) = ((1 : F) * rho 4721)

def relationRow5228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722) * ((1 : F) + (1 : F) * rho 4721) = ((1 : F) * rho 4719 + (1 : F) * rho 4720)

def relationRow5229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4723) * ((1 : F) + (-1 : F) * rho 4721) = ((1 : F) * rho 4718 + (-1 : F) * rho 4719 + (-1 : F) * rho 4720)

def relationLc1039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 40⟩], residual := [((-1 : F), 2212), ((1 : F), 4722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1173) * (relationLc1039 rho) = ((1 : F) * rho 4724)

def relationLc1040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 40⟩], residual := [((1 : F), 4723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1173) * (relationLc1040 rho) = ((1 : F) * rho 4725)

def relationRow5232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4715) * ((1 : F) * rho 4716) = ((1 : F) * rho 4726)

def relationRow5233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4715) * ((1 : F) * rho 4715) = ((1 : F) * rho 4727)

def relationRow5234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * ((1 : F) * rho 4716) = ((1 : F) * rho 4728)

def relationRow5235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((-1 : F) * rho 4727 + (1 : F) * rho 4728) = ((2 : F) * rho 4726)

def relationRow5236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * ((2 : F) + (1 : F) * rho 4727 + (-1 : F) * rho 4728) = ((1 : F) * rho 4727 + (1 : F) * rho 4728)

def relationLc1041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 41⟩, ⟨(1 : F), 4178, 14, 40⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5237 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1041 rho) = ((1 : F) * rho 4731)

def relationRow5238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4731) * ((1 : F) * rho 4729 + (1 : F) * rho 4730) = ((1 : F) * rho 4732)

def relationLc1042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 41⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * (relationLc1042 rho) = ((1 : F) * rho 4733)

def relationLc1043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * (relationLc1043 rho) = ((1 : F) * rho 4734)

def relationRow5241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4733) * ((1 : F) * rho 4734) = ((1 : F) * rho 4735)

def relationRow5242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4736) * ((1 : F) + (1 : F) * rho 4735) = ((1 : F) * rho 4733 + (1 : F) * rho 4734)

def relationRow5243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4737) * ((1 : F) + (-1 : F) * rho 4735) = ((1 : F) * rho 4732 + (-1 : F) * rho 4733 + (-1 : F) * rho 4734)

def relationLc1044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 41⟩], residual := [((-1 : F), 2212), ((1 : F), 4736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1174) * (relationLc1044 rho) = ((1 : F) * rho 4738)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
