import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs104

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4884) * ((2 : F) + (1 : F) * rho 4881 + (-1 : F) * rho 4882) = ((1 : F) * rho 4881 + (1 : F) * rho 4882)

def relationLc1096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 52⟩, ⟨(1 : F), 4178, 14, 51⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1096 rho) = ((1 : F) * rho 4885)

def relationRow5392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((1 : F) * rho 4883 + (1 : F) * rho 4884) = ((1 : F) * rho 4886)

def relationLc1097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 52⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4884) * (relationLc1097 rho) = ((1 : F) * rho 4887)

def relationLc1098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4883) * (relationLc1098 rho) = ((1 : F) * rho 4888)

def relationRow5395 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4887) * ((1 : F) * rho 4888) = ((1 : F) * rho 4889)

def relationRow5396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4890) * ((1 : F) + (1 : F) * rho 4889) = ((1 : F) * rho 4887 + (1 : F) * rho 4888)

def relationRow5397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * ((1 : F) + (-1 : F) * rho 4889) = ((1 : F) * rho 4886 + (-1 : F) * rho 4887 + (-1 : F) * rho 4888)

def relationLc1099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 52⟩], residual := [((-1 : F), 2212), ((1 : F), 4890)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * (relationLc1099 rho) = ((1 : F) * rho 4892)

def relationLc1100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 52⟩], residual := [((1 : F), 4891)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * (relationLc1100 rho) = ((1 : F) * rho 4893)

def relationRow5400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4883) * ((1 : F) * rho 4884) = ((1 : F) * rho 4894)

def relationRow5401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4883) * ((1 : F) * rho 4883) = ((1 : F) * rho 4895)

def relationRow5402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4884) * ((1 : F) * rho 4884) = ((1 : F) * rho 4896)

def relationRow5403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4897) * ((-1 : F) * rho 4895 + (1 : F) * rho 4896) = ((2 : F) * rho 4894)

def relationRow5404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((2 : F) + (1 : F) * rho 4895 + (-1 : F) * rho 4896) = ((1 : F) * rho 4895 + (1 : F) * rho 4896)

def relationLc1101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 53⟩, ⟨(1 : F), 4178, 14, 52⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5405 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1101 rho) = ((1 : F) * rho 4899)

def relationRow5406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4899) * ((1 : F) * rho 4897 + (1 : F) * rho 4898) = ((1 : F) * rho 4900)

def relationLc1102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 53⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * (relationLc1102 rho) = ((1 : F) * rho 4901)

def relationLc1103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4897) * (relationLc1103 rho) = ((1 : F) * rho 4902)

def relationRow5409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4901) * ((1 : F) * rho 4902) = ((1 : F) * rho 4903)

def relationRow5410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * ((1 : F) + (1 : F) * rho 4903) = ((1 : F) * rho 4901 + (1 : F) * rho 4902)

def relationRow5411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * ((1 : F) + (-1 : F) * rho 4903) = ((1 : F) * rho 4900 + (-1 : F) * rho 4901 + (-1 : F) * rho 4902)

def relationLc1104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 53⟩], residual := [((-1 : F), 2212), ((1 : F), 4904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * (relationLc1104 rho) = ((1 : F) * rho 4906)

def relationLc1105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 53⟩], residual := [((1 : F), 4905)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * (relationLc1105 rho) = ((1 : F) * rho 4907)

def relationRow5414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4897) * ((1 : F) * rho 4898) = ((1 : F) * rho 4908)

def relationRow5415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4897) * ((1 : F) * rho 4897) = ((1 : F) * rho 4909)

def relationRow5416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((1 : F) * rho 4898) = ((1 : F) * rho 4910)

def relationRow5417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((-1 : F) * rho 4909 + (1 : F) * rho 4910) = ((2 : F) * rho 4908)

def relationRow5418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4912) * ((2 : F) + (1 : F) * rho 4909 + (-1 : F) * rho 4910) = ((1 : F) * rho 4909 + (1 : F) * rho 4910)

def relationLc1106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 54⟩, ⟨(1 : F), 4178, 14, 53⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5419 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1106 rho) = ((1 : F) * rho 4913)

def relationRow5420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4913) * ((1 : F) * rho 4911 + (1 : F) * rho 4912) = ((1 : F) * rho 4914)

def relationLc1107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 54⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4912) * (relationLc1107 rho) = ((1 : F) * rho 4915)

def relationLc1108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * (relationLc1108 rho) = ((1 : F) * rho 4916)

def relationRow5423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4915) * ((1 : F) * rho 4916) = ((1 : F) * rho 4917)

def relationRow5424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4918) * ((1 : F) + (1 : F) * rho 4917) = ((1 : F) * rho 4915 + (1 : F) * rho 4916)

def relationRow5425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4919) * ((1 : F) + (-1 : F) * rho 4917) = ((1 : F) * rho 4914 + (-1 : F) * rho 4915 + (-1 : F) * rho 4916)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 54⟩], residual := [((-1 : F), 2212), ((1 : F), 4918)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * (relationLc1109 rho) = ((1 : F) * rho 4920)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 54⟩], residual := [((1 : F), 4919)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * (relationLc1110 rho) = ((1 : F) * rho 4921)

def relationRow5428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((1 : F) * rho 4912) = ((1 : F) * rho 4922)

def relationRow5429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((1 : F) * rho 4911) = ((1 : F) * rho 4923)

def relationRow5430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4912) * ((1 : F) * rho 4912) = ((1 : F) * rho 4924)

def relationRow5431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * ((-1 : F) * rho 4923 + (1 : F) * rho 4924) = ((2 : F) * rho 4922)

def relationRow5432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4926) * ((2 : F) + (1 : F) * rho 4923 + (-1 : F) * rho 4924) = ((1 : F) * rho 4923 + (1 : F) * rho 4924)

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 55⟩, ⟨(1 : F), 4178, 14, 54⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5433 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1111 rho) = ((1 : F) * rho 4927)

def relationRow5434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4927) * ((1 : F) * rho 4925 + (1 : F) * rho 4926) = ((1 : F) * rho 4928)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 55⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4926) * (relationLc1112 rho) = ((1 : F) * rho 4929)

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * (relationLc1113 rho) = ((1 : F) * rho 4930)

def relationRow5437 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4929) * ((1 : F) * rho 4930) = ((1 : F) * rho 4931)

def relationRow5438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4932) * ((1 : F) + (1 : F) * rho 4931) = ((1 : F) * rho 4929 + (1 : F) * rho 4930)

def relationRow5439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4933) * ((1 : F) + (-1 : F) * rho 4931) = ((1 : F) * rho 4928 + (-1 : F) * rho 4929 + (-1 : F) * rho 4930)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 55⟩], residual := [((-1 : F), 2212), ((1 : F), 4932)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1188) * (relationLc1114 rho) = ((1 : F) * rho 4934)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 55⟩], residual := [((1 : F), 4933)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1188) * (relationLc1115 rho) = ((1 : F) * rho 4935)

def relationRow5442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * ((1 : F) * rho 4926) = ((1 : F) * rho 4936)

def relationRow5443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * ((1 : F) * rho 4925) = ((1 : F) * rho 4937)

def relationRow5444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4926) * ((1 : F) * rho 4926) = ((1 : F) * rho 4938)

def relationRow5445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4939) * ((-1 : F) * rho 4937 + (1 : F) * rho 4938) = ((2 : F) * rho 4936)

def relationRow5446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4940) * ((2 : F) + (1 : F) * rho 4937 + (-1 : F) * rho 4938) = ((1 : F) * rho 4937 + (1 : F) * rho 4938)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 56⟩, ⟨(1 : F), 4178, 14, 55⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5447 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1116 rho) = ((1 : F) * rho 4941)

def relationRow5448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4941) * ((1 : F) * rho 4939 + (1 : F) * rho 4940) = ((1 : F) * rho 4942)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 56⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4940) * (relationLc1117 rho) = ((1 : F) * rho 4943)

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4939) * (relationLc1118 rho) = ((1 : F) * rho 4944)

def relationRow5451 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4943) * ((1 : F) * rho 4944) = ((1 : F) * rho 4945)

def relationRow5452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4946) * ((1 : F) + (1 : F) * rho 4945) = ((1 : F) * rho 4943 + (1 : F) * rho 4944)

def relationRow5453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4947) * ((1 : F) + (-1 : F) * rho 4945) = ((1 : F) * rho 4942 + (-1 : F) * rho 4943 + (-1 : F) * rho 4944)

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 56⟩], residual := [((-1 : F), 2212), ((1 : F), 4946)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * (relationLc1119 rho) = ((1 : F) * rho 4948)

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 56⟩], residual := [((1 : F), 4947)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * (relationLc1120 rho) = ((1 : F) * rho 4949)

def relationRow5456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4939) * ((1 : F) * rho 4940) = ((1 : F) * rho 4950)

def relationRow5457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4939) * ((1 : F) * rho 4939) = ((1 : F) * rho 4951)

def relationRow5458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4940) * ((1 : F) * rho 4940) = ((1 : F) * rho 4952)

def relationRow5459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4953) * ((-1 : F) * rho 4951 + (1 : F) * rho 4952) = ((2 : F) * rho 4950)

def relationRow5460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4954) * ((2 : F) + (1 : F) * rho 4951 + (-1 : F) * rho 4952) = ((1 : F) * rho 4951 + (1 : F) * rho 4952)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 57⟩, ⟨(1 : F), 4178, 14, 56⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
