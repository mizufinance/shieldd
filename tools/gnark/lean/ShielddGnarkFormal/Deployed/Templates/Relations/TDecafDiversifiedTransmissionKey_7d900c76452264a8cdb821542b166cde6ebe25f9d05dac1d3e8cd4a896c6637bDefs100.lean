import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs99

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4520) * (relationLc967 rho) = ((1 : F) * rho 4523)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4519) * (relationLc968 rho) = ((1 : F) * rho 4524)

def relationRow5031 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4523) * ((1 : F) * rho 4524) = ((1 : F) * rho 4525)

def relationRow5032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4526) * ((1 : F) + (1 : F) * rho 4525) = ((1 : F) * rho 4523 + (1 : F) * rho 4524)

def relationRow5033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527) * ((1 : F) + (-1 : F) * rho 4525) = ((1 : F) * rho 4522 + (-1 : F) * rho 4523 + (-1 : F) * rho 4524)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 26⟩], residual := [((-1 : F), 2212), ((1 : F), 4526)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1159) * (relationLc969 rho) = ((1 : F) * rho 4528)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 26⟩], residual := [((1 : F), 4527)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1159) * (relationLc970 rho) = ((1 : F) * rho 4529)

def relationRow5036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4519) * ((1 : F) * rho 4520) = ((1 : F) * rho 4530)

def relationRow5037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4519) * ((1 : F) * rho 4519) = ((1 : F) * rho 4531)

def relationRow5038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4520) * ((1 : F) * rho 4520) = ((1 : F) * rho 4532)

def relationRow5039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4533) * ((-1 : F) * rho 4531 + (1 : F) * rho 4532) = ((2 : F) * rho 4530)

def relationRow5040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * ((2 : F) + (1 : F) * rho 4531 + (-1 : F) * rho 4532) = ((1 : F) * rho 4531 + (1 : F) * rho 4532)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 27⟩, ⟨(1 : F), 4178, 14, 26⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5041 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc971 rho) = ((1 : F) * rho 4535)

def relationRow5042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4535) * ((1 : F) * rho 4533 + (1 : F) * rho 4534) = ((1 : F) * rho 4536)

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 27⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * (relationLc972 rho) = ((1 : F) * rho 4537)

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4533) * (relationLc973 rho) = ((1 : F) * rho 4538)

def relationRow5045 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4537) * ((1 : F) * rho 4538) = ((1 : F) * rho 4539)

def relationRow5046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540) * ((1 : F) + (1 : F) * rho 4539) = ((1 : F) * rho 4537 + (1 : F) * rho 4538)

def relationRow5047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4541) * ((1 : F) + (-1 : F) * rho 4539) = ((1 : F) * rho 4536 + (-1 : F) * rho 4537 + (-1 : F) * rho 4538)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 27⟩], residual := [((-1 : F), 2212), ((1 : F), 4540)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1160) * (relationLc974 rho) = ((1 : F) * rho 4542)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 27⟩], residual := [((1 : F), 4541)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1160) * (relationLc975 rho) = ((1 : F) * rho 4543)

def relationRow5050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4533) * ((1 : F) * rho 4534) = ((1 : F) * rho 4544)

def relationRow5051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4533) * ((1 : F) * rho 4533) = ((1 : F) * rho 4545)

def relationRow5052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * ((1 : F) * rho 4534) = ((1 : F) * rho 4546)

def relationRow5053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((-1 : F) * rho 4545 + (1 : F) * rho 4546) = ((2 : F) * rho 4544)

def relationRow5054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4548) * ((2 : F) + (1 : F) * rho 4545 + (-1 : F) * rho 4546) = ((1 : F) * rho 4545 + (1 : F) * rho 4546)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 28⟩, ⟨(1 : F), 4178, 14, 27⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5055 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc976 rho) = ((1 : F) * rho 4549)

def relationRow5056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4549) * ((1 : F) * rho 4547 + (1 : F) * rho 4548) = ((1 : F) * rho 4550)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 28⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4548) * (relationLc977 rho) = ((1 : F) * rho 4551)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * (relationLc978 rho) = ((1 : F) * rho 4552)

def relationRow5059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4551) * ((1 : F) * rho 4552) = ((1 : F) * rho 4553)

def relationRow5060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4554) * ((1 : F) + (1 : F) * rho 4553) = ((1 : F) * rho 4551 + (1 : F) * rho 4552)

def relationRow5061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4555) * ((1 : F) + (-1 : F) * rho 4553) = ((1 : F) * rho 4550 + (-1 : F) * rho 4551 + (-1 : F) * rho 4552)

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 28⟩], residual := [((-1 : F), 2212), ((1 : F), 4554)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1161) * (relationLc979 rho) = ((1 : F) * rho 4556)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 28⟩], residual := [((1 : F), 4555)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1161) * (relationLc980 rho) = ((1 : F) * rho 4557)

def relationRow5064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((1 : F) * rho 4548) = ((1 : F) * rho 4558)

def relationRow5065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((1 : F) * rho 4547) = ((1 : F) * rho 4559)

def relationRow5066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4548) * ((1 : F) * rho 4548) = ((1 : F) * rho 4560)

def relationRow5067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * ((-1 : F) * rho 4559 + (1 : F) * rho 4560) = ((2 : F) * rho 4558)

def relationRow5068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4562) * ((2 : F) + (1 : F) * rho 4559 + (-1 : F) * rho 4560) = ((1 : F) * rho 4559 + (1 : F) * rho 4560)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 29⟩, ⟨(1 : F), 4178, 14, 28⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5069 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc981 rho) = ((1 : F) * rho 4563)

def relationRow5070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4563) * ((1 : F) * rho 4561 + (1 : F) * rho 4562) = ((1 : F) * rho 4564)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 29⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4562) * (relationLc982 rho) = ((1 : F) * rho 4565)

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * (relationLc983 rho) = ((1 : F) * rho 4566)

def relationRow5073 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4565) * ((1 : F) * rho 4566) = ((1 : F) * rho 4567)

def relationRow5074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4568) * ((1 : F) + (1 : F) * rho 4567) = ((1 : F) * rho 4565 + (1 : F) * rho 4566)

def relationRow5075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4569) * ((1 : F) + (-1 : F) * rho 4567) = ((1 : F) * rho 4564 + (-1 : F) * rho 4565 + (-1 : F) * rho 4566)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 29⟩], residual := [((-1 : F), 2212), ((1 : F), 4568)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1162) * (relationLc984 rho) = ((1 : F) * rho 4570)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 29⟩], residual := [((1 : F), 4569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1162) * (relationLc985 rho) = ((1 : F) * rho 4571)

def relationRow5078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * ((1 : F) * rho 4562) = ((1 : F) * rho 4572)

def relationRow5079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * ((1 : F) * rho 4561) = ((1 : F) * rho 4573)

def relationRow5080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4562) * ((1 : F) * rho 4562) = ((1 : F) * rho 4574)

def relationRow5081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4575) * ((-1 : F) * rho 4573 + (1 : F) * rho 4574) = ((2 : F) * rho 4572)

def relationRow5082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4576) * ((2 : F) + (1 : F) * rho 4573 + (-1 : F) * rho 4574) = ((1 : F) * rho 4573 + (1 : F) * rho 4574)

def relationLc986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 30⟩, ⟨(1 : F), 4178, 14, 29⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5083 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc986 rho) = ((1 : F) * rho 4577)

def relationRow5084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4577) * ((1 : F) * rho 4575 + (1 : F) * rho 4576) = ((1 : F) * rho 4578)

def relationLc987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 30⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4576) * (relationLc987 rho) = ((1 : F) * rho 4579)

def relationLc988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4575) * (relationLc988 rho) = ((1 : F) * rho 4580)

def relationRow5087 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4579) * ((1 : F) * rho 4580) = ((1 : F) * rho 4581)

def relationRow5088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4582) * ((1 : F) + (1 : F) * rho 4581) = ((1 : F) * rho 4579 + (1 : F) * rho 4580)

def relationRow5089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4583) * ((1 : F) + (-1 : F) * rho 4581) = ((1 : F) * rho 4578 + (-1 : F) * rho 4579 + (-1 : F) * rho 4580)

def relationLc989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 30⟩], residual := [((-1 : F), 2212), ((1 : F), 4582)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1163) * (relationLc989 rho) = ((1 : F) * rho 4584)

def relationLc990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 30⟩], residual := [((1 : F), 4583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1163) * (relationLc990 rho) = ((1 : F) * rho 4585)

def relationRow5092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4575) * ((1 : F) * rho 4576) = ((1 : F) * rho 4586)

def relationRow5093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4575) * ((1 : F) * rho 4575) = ((1 : F) * rho 4587)

def relationRow5094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4576) * ((1 : F) * rho 4576) = ((1 : F) * rho 4588)

def relationRow5095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4589) * ((-1 : F) * rho 4587 + (1 : F) * rho 4588) = ((2 : F) * rho 4586)

def relationRow5096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4590) * ((2 : F) + (1 : F) * rho 4587 + (-1 : F) * rho 4588) = ((1 : F) * rho 4587 + (1 : F) * rho 4588)

def relationLc991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 31⟩, ⟨(1 : F), 4178, 14, 30⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5097 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc991 rho) = ((1 : F) * rho 4591)

def relationRow5098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4591) * ((1 : F) * rho 4589 + (1 : F) * rho 4590) = ((1 : F) * rho 4592)

def relationLc992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 31⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4590) * (relationLc992 rho) = ((1 : F) * rho 4593)

def relationLc993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4589) * (relationLc993 rho) = ((1 : F) * rho 4594)

def relationRow5101 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4593) * ((1 : F) * rho 4594) = ((1 : F) * rho 4595)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
