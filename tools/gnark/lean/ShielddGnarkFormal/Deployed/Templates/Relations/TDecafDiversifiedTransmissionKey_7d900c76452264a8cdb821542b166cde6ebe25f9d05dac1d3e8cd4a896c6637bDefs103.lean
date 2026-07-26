import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs102

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc1045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 41⟩], residual := [((1 : F), 4737)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1174) * (relationLc1045 rho) = ((1 : F) * rho 4739)

def relationRow5246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((1 : F) * rho 4730) = ((1 : F) * rho 4740)

def relationRow5247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((1 : F) * rho 4729) = ((1 : F) * rho 4741)

def relationRow5248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * ((1 : F) * rho 4730) = ((1 : F) * rho 4742)

def relationRow5249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * ((-1 : F) * rho 4741 + (1 : F) * rho 4742) = ((2 : F) * rho 4740)

def relationRow5250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4744) * ((2 : F) + (1 : F) * rho 4741 + (-1 : F) * rho 4742) = ((1 : F) * rho 4741 + (1 : F) * rho 4742)

def relationLc1046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 42⟩, ⟨(1 : F), 4178, 14, 41⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5251 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1046 rho) = ((1 : F) * rho 4745)

def relationRow5252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4745) * ((1 : F) * rho 4743 + (1 : F) * rho 4744) = ((1 : F) * rho 4746)

def relationLc1047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 42⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4744) * (relationLc1047 rho) = ((1 : F) * rho 4747)

def relationLc1048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * (relationLc1048 rho) = ((1 : F) * rho 4748)

def relationRow5255 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4747) * ((1 : F) * rho 4748) = ((1 : F) * rho 4749)

def relationRow5256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4750) * ((1 : F) + (1 : F) * rho 4749) = ((1 : F) * rho 4747 + (1 : F) * rho 4748)

def relationRow5257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4751) * ((1 : F) + (-1 : F) * rho 4749) = ((1 : F) * rho 4746 + (-1 : F) * rho 4747 + (-1 : F) * rho 4748)

def relationLc1049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 42⟩], residual := [((-1 : F), 2212), ((1 : F), 4750)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1175) * (relationLc1049 rho) = ((1 : F) * rho 4752)

def relationLc1050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 42⟩], residual := [((1 : F), 4751)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1175) * (relationLc1050 rho) = ((1 : F) * rho 4753)

def relationRow5260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * ((1 : F) * rho 4744) = ((1 : F) * rho 4754)

def relationRow5261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * ((1 : F) * rho 4743) = ((1 : F) * rho 4755)

def relationRow5262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4744) * ((1 : F) * rho 4744) = ((1 : F) * rho 4756)

def relationRow5263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4757) * ((-1 : F) * rho 4755 + (1 : F) * rho 4756) = ((2 : F) * rho 4754)

def relationRow5264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4758) * ((2 : F) + (1 : F) * rho 4755 + (-1 : F) * rho 4756) = ((1 : F) * rho 4755 + (1 : F) * rho 4756)

def relationLc1051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 43⟩, ⟨(1 : F), 4178, 14, 42⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5265 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1051 rho) = ((1 : F) * rho 4759)

def relationRow5266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4759) * ((1 : F) * rho 4757 + (1 : F) * rho 4758) = ((1 : F) * rho 4760)

def relationLc1052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 43⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4758) * (relationLc1052 rho) = ((1 : F) * rho 4761)

def relationLc1053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4757) * (relationLc1053 rho) = ((1 : F) * rho 4762)

def relationRow5269 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4761) * ((1 : F) * rho 4762) = ((1 : F) * rho 4763)

def relationRow5270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4764) * ((1 : F) + (1 : F) * rho 4763) = ((1 : F) * rho 4761 + (1 : F) * rho 4762)

def relationRow5271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4765) * ((1 : F) + (-1 : F) * rho 4763) = ((1 : F) * rho 4760 + (-1 : F) * rho 4761 + (-1 : F) * rho 4762)

def relationLc1054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 43⟩], residual := [((-1 : F), 2212), ((1 : F), 4764)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1176) * (relationLc1054 rho) = ((1 : F) * rho 4766)

def relationLc1055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 43⟩], residual := [((1 : F), 4765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1176) * (relationLc1055 rho) = ((1 : F) * rho 4767)

def relationRow5274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4757) * ((1 : F) * rho 4758) = ((1 : F) * rho 4768)

def relationRow5275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4757) * ((1 : F) * rho 4757) = ((1 : F) * rho 4769)

def relationRow5276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4758) * ((1 : F) * rho 4758) = ((1 : F) * rho 4770)

def relationRow5277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4771) * ((-1 : F) * rho 4769 + (1 : F) * rho 4770) = ((2 : F) * rho 4768)

def relationRow5278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4772) * ((2 : F) + (1 : F) * rho 4769 + (-1 : F) * rho 4770) = ((1 : F) * rho 4769 + (1 : F) * rho 4770)

def relationLc1056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 44⟩, ⟨(1 : F), 4178, 14, 43⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5279 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1056 rho) = ((1 : F) * rho 4773)

def relationRow5280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4773) * ((1 : F) * rho 4771 + (1 : F) * rho 4772) = ((1 : F) * rho 4774)

def relationLc1057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 44⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4772) * (relationLc1057 rho) = ((1 : F) * rho 4775)

def relationLc1058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4771) * (relationLc1058 rho) = ((1 : F) * rho 4776)

def relationRow5283 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4775) * ((1 : F) * rho 4776) = ((1 : F) * rho 4777)

def relationRow5284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4778) * ((1 : F) + (1 : F) * rho 4777) = ((1 : F) * rho 4775 + (1 : F) * rho 4776)

def relationRow5285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4779) * ((1 : F) + (-1 : F) * rho 4777) = ((1 : F) * rho 4774 + (-1 : F) * rho 4775 + (-1 : F) * rho 4776)

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 44⟩], residual := [((-1 : F), 2212), ((1 : F), 4778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1177) * (relationLc1059 rho) = ((1 : F) * rho 4780)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 44⟩], residual := [((1 : F), 4779)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1177) * (relationLc1060 rho) = ((1 : F) * rho 4781)

def relationRow5288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4771) * ((1 : F) * rho 4772) = ((1 : F) * rho 4782)

def relationRow5289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4771) * ((1 : F) * rho 4771) = ((1 : F) * rho 4783)

def relationRow5290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4772) * ((1 : F) * rho 4772) = ((1 : F) * rho 4784)

def relationRow5291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4785) * ((-1 : F) * rho 4783 + (1 : F) * rho 4784) = ((2 : F) * rho 4782)

def relationRow5292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4786) * ((2 : F) + (1 : F) * rho 4783 + (-1 : F) * rho 4784) = ((1 : F) * rho 4783 + (1 : F) * rho 4784)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 45⟩, ⟨(1 : F), 4178, 14, 44⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5293 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1061 rho) = ((1 : F) * rho 4787)

def relationRow5294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * ((1 : F) * rho 4785 + (1 : F) * rho 4786) = ((1 : F) * rho 4788)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 45⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4786) * (relationLc1062 rho) = ((1 : F) * rho 4789)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4785) * (relationLc1063 rho) = ((1 : F) * rho 4790)

def relationRow5297 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4789) * ((1 : F) * rho 4790) = ((1 : F) * rho 4791)

def relationRow5298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4792) * ((1 : F) + (1 : F) * rho 4791) = ((1 : F) * rho 4789 + (1 : F) * rho 4790)

def relationRow5299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4793) * ((1 : F) + (-1 : F) * rho 4791) = ((1 : F) * rho 4788 + (-1 : F) * rho 4789 + (-1 : F) * rho 4790)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 45⟩], residual := [((-1 : F), 2212), ((1 : F), 4792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1178) * (relationLc1064 rho) = ((1 : F) * rho 4794)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 45⟩], residual := [((1 : F), 4793)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1178) * (relationLc1065 rho) = ((1 : F) * rho 4795)

def relationRow5302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4785) * ((1 : F) * rho 4786) = ((1 : F) * rho 4796)

def relationRow5303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4785) * ((1 : F) * rho 4785) = ((1 : F) * rho 4797)

def relationRow5304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4786) * ((1 : F) * rho 4786) = ((1 : F) * rho 4798)

def relationRow5305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4799) * ((-1 : F) * rho 4797 + (1 : F) * rho 4798) = ((2 : F) * rho 4796)

def relationRow5306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((2 : F) + (1 : F) * rho 4797 + (-1 : F) * rho 4798) = ((1 : F) * rho 4797 + (1 : F) * rho 4798)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 46⟩, ⟨(1 : F), 4178, 14, 45⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5307 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1066 rho) = ((1 : F) * rho 4801)

def relationRow5308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4801) * ((1 : F) * rho 4799 + (1 : F) * rho 4800) = ((1 : F) * rho 4802)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 46⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * (relationLc1067 rho) = ((1 : F) * rho 4803)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4799) * (relationLc1068 rho) = ((1 : F) * rho 4804)

def relationRow5311 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4803) * ((1 : F) * rho 4804) = ((1 : F) * rho 4805)

def relationRow5312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4806) * ((1 : F) + (1 : F) * rho 4805) = ((1 : F) * rho 4803 + (1 : F) * rho 4804)

def relationRow5313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * ((1 : F) + (-1 : F) * rho 4805) = ((1 : F) * rho 4802 + (-1 : F) * rho 4803 + (-1 : F) * rho 4804)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 46⟩], residual := [((-1 : F), 2212), ((1 : F), 4806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1179) * (relationLc1069 rho) = ((1 : F) * rho 4808)

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 46⟩], residual := [((1 : F), 4807)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1179) * (relationLc1070 rho) = ((1 : F) * rho 4809)

def relationRow5316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4799) * ((1 : F) * rho 4800) = ((1 : F) * rho 4810)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
