import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs105

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5461 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1121 rho) = ((1 : F) * rho 4955)

def relationRow5462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4955) * ((1 : F) * rho 4953 + (1 : F) * rho 4954) = ((1 : F) * rho 4956)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 57⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4954) * (relationLc1122 rho) = ((1 : F) * rho 4957)

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4953) * (relationLc1123 rho) = ((1 : F) * rho 4958)

def relationRow5465 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4957) * ((1 : F) * rho 4958) = ((1 : F) * rho 4959)

def relationRow5466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4960) * ((1 : F) + (1 : F) * rho 4959) = ((1 : F) * rho 4957 + (1 : F) * rho 4958)

def relationRow5467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4961) * ((1 : F) + (-1 : F) * rho 4959) = ((1 : F) * rho 4956 + (-1 : F) * rho 4957 + (-1 : F) * rho 4958)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 57⟩], residual := [((-1 : F), 2212), ((1 : F), 4960)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * (relationLc1124 rho) = ((1 : F) * rho 4962)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 57⟩], residual := [((1 : F), 4961)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * (relationLc1125 rho) = ((1 : F) * rho 4963)

def relationRow5470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4953) * ((1 : F) * rho 4954) = ((1 : F) * rho 4964)

def relationRow5471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4953) * ((1 : F) * rho 4953) = ((1 : F) * rho 4965)

def relationRow5472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4954) * ((1 : F) * rho 4954) = ((1 : F) * rho 4966)

def relationRow5473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4967) * ((-1 : F) * rho 4965 + (1 : F) * rho 4966) = ((2 : F) * rho 4964)

def relationRow5474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4968) * ((2 : F) + (1 : F) * rho 4965 + (-1 : F) * rho 4966) = ((1 : F) * rho 4965 + (1 : F) * rho 4966)

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 58⟩, ⟨(1 : F), 4178, 14, 57⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5475 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1126 rho) = ((1 : F) * rho 4969)

def relationRow5476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * ((1 : F) * rho 4967 + (1 : F) * rho 4968) = ((1 : F) * rho 4970)

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 58⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4968) * (relationLc1127 rho) = ((1 : F) * rho 4971)

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4967) * (relationLc1128 rho) = ((1 : F) * rho 4972)

def relationRow5479 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4971) * ((1 : F) * rho 4972) = ((1 : F) * rho 4973)

def relationRow5480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4974) * ((1 : F) + (1 : F) * rho 4973) = ((1 : F) * rho 4971 + (1 : F) * rho 4972)

def relationRow5481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4975) * ((1 : F) + (-1 : F) * rho 4973) = ((1 : F) * rho 4970 + (-1 : F) * rho 4971 + (-1 : F) * rho 4972)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 58⟩], residual := [((-1 : F), 2212), ((1 : F), 4974)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * (relationLc1129 rho) = ((1 : F) * rho 4976)

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 58⟩], residual := [((1 : F), 4975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * (relationLc1130 rho) = ((1 : F) * rho 4977)

def relationRow5484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4967) * ((1 : F) * rho 4968) = ((1 : F) * rho 4978)

def relationRow5485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4967) * ((1 : F) * rho 4967) = ((1 : F) * rho 4979)

def relationRow5486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4968) * ((1 : F) * rho 4968) = ((1 : F) * rho 4980)

def relationRow5487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4981) * ((-1 : F) * rho 4979 + (1 : F) * rho 4980) = ((2 : F) * rho 4978)

def relationRow5488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * ((2 : F) + (1 : F) * rho 4979 + (-1 : F) * rho 4980) = ((1 : F) * rho 4979 + (1 : F) * rho 4980)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 59⟩, ⟨(1 : F), 4178, 14, 58⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5489 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1131 rho) = ((1 : F) * rho 4983)

def relationRow5490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4983) * ((1 : F) * rho 4981 + (1 : F) * rho 4982) = ((1 : F) * rho 4984)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 59⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * (relationLc1132 rho) = ((1 : F) * rho 4985)

def relationLc1133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4981) * (relationLc1133 rho) = ((1 : F) * rho 4986)

def relationRow5493 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4985) * ((1 : F) * rho 4986) = ((1 : F) * rho 4987)

def relationRow5494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4988) * ((1 : F) + (1 : F) * rho 4987) = ((1 : F) * rho 4985 + (1 : F) * rho 4986)

def relationRow5495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((1 : F) + (-1 : F) * rho 4987) = ((1 : F) * rho 4984 + (-1 : F) * rho 4985 + (-1 : F) * rho 4986)

def relationLc1134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 59⟩], residual := [((-1 : F), 2212), ((1 : F), 4988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * (relationLc1134 rho) = ((1 : F) * rho 4990)

def relationLc1135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 59⟩], residual := [((1 : F), 4989)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * (relationLc1135 rho) = ((1 : F) * rho 4991)

def relationRow5498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4981) * ((1 : F) * rho 4982) = ((1 : F) * rho 4992)

def relationRow5499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4981) * ((1 : F) * rho 4981) = ((1 : F) * rho 4993)

def relationRow5500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * ((1 : F) * rho 4982) = ((1 : F) * rho 4994)

def relationRow5501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((-1 : F) * rho 4993 + (1 : F) * rho 4994) = ((2 : F) * rho 4992)

def relationRow5502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * ((2 : F) + (1 : F) * rho 4993 + (-1 : F) * rho 4994) = ((1 : F) * rho 4993 + (1 : F) * rho 4994)

def relationLc1136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 60⟩, ⟨(1 : F), 4178, 14, 59⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5503 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1136 rho) = ((1 : F) * rho 4997)

def relationRow5504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4997) * ((1 : F) * rho 4995 + (1 : F) * rho 4996) = ((1 : F) * rho 4998)

def relationLc1137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 60⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * (relationLc1137 rho) = ((1 : F) * rho 4999)

def relationLc1138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * (relationLc1138 rho) = ((1 : F) * rho 5000)

def relationRow5507 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4999) * ((1 : F) * rho 5000) = ((1 : F) * rho 5001)

def relationRow5508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * ((1 : F) + (1 : F) * rho 5001) = ((1 : F) * rho 4999 + (1 : F) * rho 5000)

def relationRow5509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5003) * ((1 : F) + (-1 : F) * rho 5001) = ((1 : F) * rho 4998 + (-1 : F) * rho 4999 + (-1 : F) * rho 5000)

def relationLc1139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 60⟩], residual := [((-1 : F), 2212), ((1 : F), 5002)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * (relationLc1139 rho) = ((1 : F) * rho 5004)

def relationLc1140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 60⟩], residual := [((1 : F), 5003)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * (relationLc1140 rho) = ((1 : F) * rho 5005)

def relationRow5512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((1 : F) * rho 4996) = ((1 : F) * rho 5006)

def relationRow5513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((1 : F) * rho 4995) = ((1 : F) * rho 5007)

def relationRow5514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * ((1 : F) * rho 4996) = ((1 : F) * rho 5008)

def relationRow5515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((-1 : F) * rho 5007 + (1 : F) * rho 5008) = ((2 : F) * rho 5006)

def relationRow5516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5010) * ((2 : F) + (1 : F) * rho 5007 + (-1 : F) * rho 5008) = ((1 : F) * rho 5007 + (1 : F) * rho 5008)

def relationLc1141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 61⟩, ⟨(1 : F), 4178, 14, 60⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5517 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1141 rho) = ((1 : F) * rho 5011)

def relationRow5518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5011) * ((1 : F) * rho 5009 + (1 : F) * rho 5010) = ((1 : F) * rho 5012)

def relationLc1142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 61⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5010) * (relationLc1142 rho) = ((1 : F) * rho 5013)

def relationLc1143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * (relationLc1143 rho) = ((1 : F) * rho 5014)

def relationRow5521 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5013) * ((1 : F) * rho 5014) = ((1 : F) * rho 5015)

def relationRow5522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5016) * ((1 : F) + (1 : F) * rho 5015) = ((1 : F) * rho 5013 + (1 : F) * rho 5014)

def relationRow5523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5017) * ((1 : F) + (-1 : F) * rho 5015) = ((1 : F) * rho 5012 + (-1 : F) * rho 5013 + (-1 : F) * rho 5014)

def relationLc1144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 61⟩], residual := [((-1 : F), 2212), ((1 : F), 5016)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * (relationLc1144 rho) = ((1 : F) * rho 5018)

def relationLc1145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 61⟩], residual := [((1 : F), 5017)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * (relationLc1145 rho) = ((1 : F) * rho 5019)

def relationRow5526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((1 : F) * rho 5010) = ((1 : F) * rho 5020)

def relationRow5527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((1 : F) * rho 5009) = ((1 : F) * rho 5021)

def relationRow5528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5010) * ((1 : F) * rho 5010) = ((1 : F) * rho 5022)

def relationRow5529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5023) * ((-1 : F) * rho 5021 + (1 : F) * rho 5022) = ((2 : F) * rho 5020)

def relationRow5530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5024) * ((2 : F) + (1 : F) * rho 5021 + (-1 : F) * rho 5022) = ((1 : F) * rho 5021 + (1 : F) * rho 5022)

def relationLc1146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 62⟩, ⟨(1 : F), 4178, 14, 61⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5531 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1146 rho) = ((1 : F) * rho 5025)

def relationRow5532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5025) * ((1 : F) * rho 5023 + (1 : F) * rho 5024) = ((1 : F) * rho 5026)

def relationLc1147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 62⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
