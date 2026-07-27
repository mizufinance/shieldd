import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs106

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5024) * (relationLc1147 rho) = ((1 : F) * rho 5027)

def relationLc1148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5023) * (relationLc1148 rho) = ((1 : F) * rho 5028)

def relationRow5535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5027) * ((1 : F) * rho 5028) = ((1 : F) * rho 5029)

def relationRow5536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5030) * ((1 : F) + (1 : F) * rho 5029) = ((1 : F) * rho 5027 + (1 : F) * rho 5028)

def relationRow5537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5031) * ((1 : F) + (-1 : F) * rho 5029) = ((1 : F) * rho 5026 + (-1 : F) * rho 5027 + (-1 : F) * rho 5028)

def relationLc1149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 62⟩], residual := [((-1 : F), 2212), ((1 : F), 5030)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * (relationLc1149 rho) = ((1 : F) * rho 5032)

def relationLc1150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 62⟩], residual := [((1 : F), 5031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * (relationLc1150 rho) = ((1 : F) * rho 5033)

def relationRow5540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5023) * ((1 : F) * rho 5024) = ((1 : F) * rho 5034)

def relationRow5541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5023) * ((1 : F) * rho 5023) = ((1 : F) * rho 5035)

def relationRow5542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5024) * ((1 : F) * rho 5024) = ((1 : F) * rho 5036)

def relationRow5543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5037) * ((-1 : F) * rho 5035 + (1 : F) * rho 5036) = ((2 : F) * rho 5034)

def relationRow5544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5038) * ((2 : F) + (1 : F) * rho 5035 + (-1 : F) * rho 5036) = ((1 : F) * rho 5035 + (1 : F) * rho 5036)

def relationLc1151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 63⟩, ⟨(1 : F), 4178, 14, 62⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5545 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1151 rho) = ((1 : F) * rho 5039)

def relationRow5546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5039) * ((1 : F) * rho 5037 + (1 : F) * rho 5038) = ((1 : F) * rho 5040)

def relationLc1152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 63⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5038) * (relationLc1152 rho) = ((1 : F) * rho 5041)

def relationLc1153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5037) * (relationLc1153 rho) = ((1 : F) * rho 5042)

def relationRow5549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5041) * ((1 : F) * rho 5042) = ((1 : F) * rho 5043)

def relationRow5550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5044) * ((1 : F) + (1 : F) * rho 5043) = ((1 : F) * rho 5041 + (1 : F) * rho 5042)

def relationRow5551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5045) * ((1 : F) + (-1 : F) * rho 5043) = ((1 : F) * rho 5040 + (-1 : F) * rho 5041 + (-1 : F) * rho 5042)

def relationLc1154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 63⟩], residual := [((-1 : F), 2212), ((1 : F), 5044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * (relationLc1154 rho) = ((1 : F) * rho 5046)

def relationLc1155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 63⟩], residual := [((1 : F), 5045)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * (relationLc1155 rho) = ((1 : F) * rho 5047)

def relationRow5554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5037) * ((1 : F) * rho 5038) = ((1 : F) * rho 5048)

def relationRow5555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5037) * ((1 : F) * rho 5037) = ((1 : F) * rho 5049)

def relationRow5556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5038) * ((1 : F) * rho 5038) = ((1 : F) * rho 5050)

def relationRow5557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5051) * ((-1 : F) * rho 5049 + (1 : F) * rho 5050) = ((2 : F) * rho 5048)

def relationRow5558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5052) * ((2 : F) + (1 : F) * rho 5049 + (-1 : F) * rho 5050) = ((1 : F) * rho 5049 + (1 : F) * rho 5050)

def relationLc1156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 64⟩, ⟨(1 : F), 4178, 14, 63⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5559 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1156 rho) = ((1 : F) * rho 5053)

def relationRow5560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5053) * ((1 : F) * rho 5051 + (1 : F) * rho 5052) = ((1 : F) * rho 5054)

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 64⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5052) * (relationLc1157 rho) = ((1 : F) * rho 5055)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5051) * (relationLc1158 rho) = ((1 : F) * rho 5056)

def relationRow5563 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5055) * ((1 : F) * rho 5056) = ((1 : F) * rho 5057)

def relationRow5564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5058) * ((1 : F) + (1 : F) * rho 5057) = ((1 : F) * rho 5055 + (1 : F) * rho 5056)

def relationRow5565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5059) * ((1 : F) + (-1 : F) * rho 5057) = ((1 : F) * rho 5054 + (-1 : F) * rho 5055 + (-1 : F) * rho 5056)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 64⟩], residual := [((-1 : F), 2212), ((1 : F), 5058)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * (relationLc1159 rho) = ((1 : F) * rho 5060)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 64⟩], residual := [((1 : F), 5059)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * (relationLc1160 rho) = ((1 : F) * rho 5061)

def relationRow5568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5051) * ((1 : F) * rho 5052) = ((1 : F) * rho 5062)

def relationRow5569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5051) * ((1 : F) * rho 5051) = ((1 : F) * rho 5063)

def relationRow5570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5052) * ((1 : F) * rho 5052) = ((1 : F) * rho 5064)

def relationRow5571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5065) * ((-1 : F) * rho 5063 + (1 : F) * rho 5064) = ((2 : F) * rho 5062)

def relationRow5572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5066) * ((2 : F) + (1 : F) * rho 5063 + (-1 : F) * rho 5064) = ((1 : F) * rho 5063 + (1 : F) * rho 5064)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 65⟩, ⟨(1 : F), 4178, 14, 64⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5573 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1161 rho) = ((1 : F) * rho 5067)

def relationRow5574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5067) * ((1 : F) * rho 5065 + (1 : F) * rho 5066) = ((1 : F) * rho 5068)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 65⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5066) * (relationLc1162 rho) = ((1 : F) * rho 5069)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5065) * (relationLc1163 rho) = ((1 : F) * rho 5070)

def relationRow5577 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5069) * ((1 : F) * rho 5070) = ((1 : F) * rho 5071)

def relationRow5578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5072) * ((1 : F) + (1 : F) * rho 5071) = ((1 : F) * rho 5069 + (1 : F) * rho 5070)

def relationRow5579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5073) * ((1 : F) + (-1 : F) * rho 5071) = ((1 : F) * rho 5068 + (-1 : F) * rho 5069 + (-1 : F) * rho 5070)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 65⟩], residual := [((-1 : F), 2212), ((1 : F), 5072)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * (relationLc1164 rho) = ((1 : F) * rho 5074)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 65⟩], residual := [((1 : F), 5073)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * (relationLc1165 rho) = ((1 : F) * rho 5075)

def relationRow5582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5065) * ((1 : F) * rho 5066) = ((1 : F) * rho 5076)

def relationRow5583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5065) * ((1 : F) * rho 5065) = ((1 : F) * rho 5077)

def relationRow5584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5066) * ((1 : F) * rho 5066) = ((1 : F) * rho 5078)

def relationRow5585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5079) * ((-1 : F) * rho 5077 + (1 : F) * rho 5078) = ((2 : F) * rho 5076)

def relationRow5586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5080) * ((2 : F) + (1 : F) * rho 5077 + (-1 : F) * rho 5078) = ((1 : F) * rho 5077 + (1 : F) * rho 5078)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 66⟩, ⟨(1 : F), 4178, 14, 65⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5587 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1166 rho) = ((1 : F) * rho 5081)

def relationRow5588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5081) * ((1 : F) * rho 5079 + (1 : F) * rho 5080) = ((1 : F) * rho 5082)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 66⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5080) * (relationLc1167 rho) = ((1 : F) * rho 5083)

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5079) * (relationLc1168 rho) = ((1 : F) * rho 5084)

def relationRow5591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5083) * ((1 : F) * rho 5084) = ((1 : F) * rho 5085)

def relationRow5592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5086) * ((1 : F) + (1 : F) * rho 5085) = ((1 : F) * rho 5083 + (1 : F) * rho 5084)

def relationRow5593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5087) * ((1 : F) + (-1 : F) * rho 5085) = ((1 : F) * rho 5082 + (-1 : F) * rho 5083 + (-1 : F) * rho 5084)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 66⟩], residual := [((-1 : F), 2212), ((1 : F), 5086)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * (relationLc1169 rho) = ((1 : F) * rho 5088)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 66⟩], residual := [((1 : F), 5087)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * (relationLc1170 rho) = ((1 : F) * rho 5089)

def relationRow5596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5079) * ((1 : F) * rho 5080) = ((1 : F) * rho 5090)

def relationRow5597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5079) * ((1 : F) * rho 5079) = ((1 : F) * rho 5091)

def relationRow5598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5080) * ((1 : F) * rho 5080) = ((1 : F) * rho 5092)

def relationRow5599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5093) * ((-1 : F) * rho 5091 + (1 : F) * rho 5092) = ((2 : F) * rho 5090)

def relationRow5600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5094) * ((2 : F) + (1 : F) * rho 5091 + (-1 : F) * rho 5092) = ((1 : F) * rho 5091 + (1 : F) * rho 5092)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 67⟩, ⟨(1 : F), 4178, 14, 66⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5601 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1171 rho) = ((1 : F) * rho 5095)

def relationRow5602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5095) * ((1 : F) * rho 5093 + (1 : F) * rho 5094) = ((1 : F) * rho 5096)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 67⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5094) * (relationLc1172 rho) = ((1 : F) * rho 5097)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5093) * (relationLc1173 rho) = ((1 : F) * rho 5098)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
