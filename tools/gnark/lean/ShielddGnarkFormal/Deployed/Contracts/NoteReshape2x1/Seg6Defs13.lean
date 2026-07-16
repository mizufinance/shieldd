import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs12

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationLc1138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 60⟩, ⟨(1 : F), 5070, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5503 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1138 rho) = ((1 : F) * rho 5902)

def relationRow5504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5902) * ((1 : F) * rho 5900 + (1 : F) * rho 5901) = ((1 : F) * rho 5903)

def relationLc1139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5901) * (relationLc1139 rho) = ((1 : F) * rho 5904)

def relationLc1140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5900) * (relationLc1140 rho) = ((1 : F) * rho 5905)

def relationRow5507 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5904) * ((1 : F) * rho 5905) = ((1 : F) * rho 5906)

def relationRow5508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5907) * ((1 : F) + (1 : F) * rho 5906) = ((1 : F) * rho 5904 + (1 : F) * rho 5905)

def relationRow5509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5908) * ((1 : F) + (-1 : F) * rho 5906) = ((1 : F) * rho 5903 + (-1 : F) * rho 5904 + (-1 : F) * rho 5905)

def relationLc1141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 60⟩], residual := [((1 : F), 5907)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * (relationLc1141 rho) = ((1 : F) * rho 5909)

def relationLc1142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 60⟩], residual := [((1 : F), 5908)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * (relationLc1142 rho) = ((1 : F) * rho 5910)

def relationRow5512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5900) * ((1 : F) * rho 5901) = ((1 : F) * rho 5911)

def relationRow5513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5900) * ((1 : F) * rho 5900) = ((1 : F) * rho 5912)

def relationRow5514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5901) * ((1 : F) * rho 5901) = ((1 : F) * rho 5913)

def relationRow5515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5914) * ((-1 : F) * rho 5912 + (1 : F) * rho 5913) = ((2 : F) * rho 5911)

def relationRow5516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5915) * ((2 : F) + (1 : F) * rho 5912 + (-1 : F) * rho 5913) = ((1 : F) * rho 5912 + (1 : F) * rho 5913)

def relationLc1143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 61⟩, ⟨(1 : F), 5070, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5517 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1143 rho) = ((1 : F) * rho 5916)

def relationRow5518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5916) * ((1 : F) * rho 5914 + (1 : F) * rho 5915) = ((1 : F) * rho 5917)

def relationLc1144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5915) * (relationLc1144 rho) = ((1 : F) * rho 5918)

def relationLc1145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5914) * (relationLc1145 rho) = ((1 : F) * rho 5919)

def relationRow5521 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5918) * ((1 : F) * rho 5919) = ((1 : F) * rho 5920)

def relationRow5522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5921) * ((1 : F) + (1 : F) * rho 5920) = ((1 : F) * rho 5918 + (1 : F) * rho 5919)

def relationRow5523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5922) * ((1 : F) + (-1 : F) * rho 5920) = ((1 : F) * rho 5917 + (-1 : F) * rho 5918 + (-1 : F) * rho 5919)

def relationLc1146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 61⟩], residual := [((1 : F), 5921)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * (relationLc1146 rho) = ((1 : F) * rho 5923)

def relationLc1147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 61⟩], residual := [((1 : F), 5922)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * (relationLc1147 rho) = ((1 : F) * rho 5924)

def relationRow5526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5914) * ((1 : F) * rho 5915) = ((1 : F) * rho 5925)

def relationRow5527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5914) * ((1 : F) * rho 5914) = ((1 : F) * rho 5926)

def relationRow5528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5915) * ((1 : F) * rho 5915) = ((1 : F) * rho 5927)

def relationRow5529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5928) * ((-1 : F) * rho 5926 + (1 : F) * rho 5927) = ((2 : F) * rho 5925)

def relationRow5530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5929) * ((2 : F) + (1 : F) * rho 5926 + (-1 : F) * rho 5927) = ((1 : F) * rho 5926 + (1 : F) * rho 5927)

def relationLc1148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 62⟩, ⟨(1 : F), 5070, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5531 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1148 rho) = ((1 : F) * rho 5930)

def relationRow5532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5930) * ((1 : F) * rho 5928 + (1 : F) * rho 5929) = ((1 : F) * rho 5931)

def relationLc1149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5929) * (relationLc1149 rho) = ((1 : F) * rho 5932)

def relationLc1150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5928) * (relationLc1150 rho) = ((1 : F) * rho 5933)

def relationRow5535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5932) * ((1 : F) * rho 5933) = ((1 : F) * rho 5934)

def relationRow5536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5935) * ((1 : F) + (1 : F) * rho 5934) = ((1 : F) * rho 5932 + (1 : F) * rho 5933)

def relationRow5537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5936) * ((1 : F) + (-1 : F) * rho 5934) = ((1 : F) * rho 5931 + (-1 : F) * rho 5932 + (-1 : F) * rho 5933)

def relationLc1151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 62⟩], residual := [((1 : F), 5935)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * (relationLc1151 rho) = ((1 : F) * rho 5937)

def relationLc1152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 62⟩], residual := [((1 : F), 5936)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * (relationLc1152 rho) = ((1 : F) * rho 5938)

def relationRow5540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5928) * ((1 : F) * rho 5929) = ((1 : F) * rho 5939)

def relationRow5541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5928) * ((1 : F) * rho 5928) = ((1 : F) * rho 5940)

def relationRow5542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5929) * ((1 : F) * rho 5929) = ((1 : F) * rho 5941)

def relationRow5543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5942) * ((-1 : F) * rho 5940 + (1 : F) * rho 5941) = ((2 : F) * rho 5939)

def relationRow5544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5943) * ((2 : F) + (1 : F) * rho 5940 + (-1 : F) * rho 5941) = ((1 : F) * rho 5940 + (1 : F) * rho 5941)

def relationLc1153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 63⟩, ⟨(1 : F), 5070, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5545 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1153 rho) = ((1 : F) * rho 5944)

def relationRow5546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5944) * ((1 : F) * rho 5942 + (1 : F) * rho 5943) = ((1 : F) * rho 5945)

def relationLc1154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5943) * (relationLc1154 rho) = ((1 : F) * rho 5946)

def relationLc1155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5942) * (relationLc1155 rho) = ((1 : F) * rho 5947)

def relationRow5549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5946) * ((1 : F) * rho 5947) = ((1 : F) * rho 5948)

def relationRow5550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5949) * ((1 : F) + (1 : F) * rho 5948) = ((1 : F) * rho 5946 + (1 : F) * rho 5947)

def relationRow5551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5950) * ((1 : F) + (-1 : F) * rho 5948) = ((1 : F) * rho 5945 + (-1 : F) * rho 5946 + (-1 : F) * rho 5947)

def relationLc1156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 63⟩], residual := [((1 : F), 5949)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2103) * (relationLc1156 rho) = ((1 : F) * rho 5951)

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 63⟩], residual := [((1 : F), 5950)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2103) * (relationLc1157 rho) = ((1 : F) * rho 5952)

def relationRow5554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5942) * ((1 : F) * rho 5943) = ((1 : F) * rho 5953)

def relationRow5555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5942) * ((1 : F) * rho 5942) = ((1 : F) * rho 5954)

def relationRow5556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5943) * ((1 : F) * rho 5943) = ((1 : F) * rho 5955)

def relationRow5557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5956) * ((-1 : F) * rho 5954 + (1 : F) * rho 5955) = ((2 : F) * rho 5953)

def relationRow5558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5957) * ((2 : F) + (1 : F) * rho 5954 + (-1 : F) * rho 5955) = ((1 : F) * rho 5954 + (1 : F) * rho 5955)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 64⟩, ⟨(1 : F), 5070, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5559 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1158 rho) = ((1 : F) * rho 5958)

def relationRow5560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5958) * ((1 : F) * rho 5956 + (1 : F) * rho 5957) = ((1 : F) * rho 5959)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5957) * (relationLc1159 rho) = ((1 : F) * rho 5960)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5956) * (relationLc1160 rho) = ((1 : F) * rho 5961)

def relationRow5563 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5960) * ((1 : F) * rho 5961) = ((1 : F) * rho 5962)

def relationRow5564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5963) * ((1 : F) + (1 : F) * rho 5962) = ((1 : F) * rho 5960 + (1 : F) * rho 5961)

def relationRow5565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5964) * ((1 : F) + (-1 : F) * rho 5962) = ((1 : F) * rho 5959 + (-1 : F) * rho 5960 + (-1 : F) * rho 5961)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 64⟩], residual := [((1 : F), 5963)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2104) * (relationLc1161 rho) = ((1 : F) * rho 5965)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 64⟩], residual := [((1 : F), 5964)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2104) * (relationLc1162 rho) = ((1 : F) * rho 5966)

def relationRow5568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5956) * ((1 : F) * rho 5957) = ((1 : F) * rho 5967)

def relationRow5569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5956) * ((1 : F) * rho 5956) = ((1 : F) * rho 5968)

def relationRow5570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5957) * ((1 : F) * rho 5957) = ((1 : F) * rho 5969)

def relationRow5571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5970) * ((-1 : F) * rho 5968 + (1 : F) * rho 5969) = ((2 : F) * rho 5967)

def relationRow5572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5971) * ((2 : F) + (1 : F) * rho 5968 + (-1 : F) * rho 5969) = ((1 : F) * rho 5968 + (1 : F) * rho 5969)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 65⟩, ⟨(1 : F), 5070, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5573 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1163 rho) = ((1 : F) * rho 5972)

def relationRow5574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5972) * ((1 : F) * rho 5970 + (1 : F) * rho 5971) = ((1 : F) * rho 5973)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5971) * (relationLc1164 rho) = ((1 : F) * rho 5974)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5970) * (relationLc1165 rho) = ((1 : F) * rho 5975)

def relationRow5577 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5974) * ((1 : F) * rho 5975) = ((1 : F) * rho 5976)

def relationRow5578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5977) * ((1 : F) + (1 : F) * rho 5976) = ((1 : F) * rho 5974 + (1 : F) * rho 5975)

def relationRow5579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5978) * ((1 : F) + (-1 : F) * rho 5976) = ((1 : F) * rho 5973 + (-1 : F) * rho 5974 + (-1 : F) * rho 5975)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 65⟩], residual := [((1 : F), 5977)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2105) * (relationLc1166 rho) = ((1 : F) * rho 5979)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 65⟩], residual := [((1 : F), 5978)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2105) * (relationLc1167 rho) = ((1 : F) * rho 5980)

def relationRow5582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5970) * ((1 : F) * rho 5971) = ((1 : F) * rho 5981)

def relationRow5583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5970) * ((1 : F) * rho 5970) = ((1 : F) * rho 5982)

def relationRow5584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5971) * ((1 : F) * rho 5971) = ((1 : F) * rho 5983)

def relationRow5585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5984) * ((-1 : F) * rho 5982 + (1 : F) * rho 5983) = ((2 : F) * rho 5981)

def relationRow5586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5985) * ((2 : F) + (1 : F) * rho 5982 + (-1 : F) * rho 5983) = ((1 : F) * rho 5982 + (1 : F) * rho 5983)

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 66⟩, ⟨(1 : F), 5070, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5587 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1168 rho) = ((1 : F) * rho 5986)

def relationRow5588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5986) * ((1 : F) * rho 5984 + (1 : F) * rho 5985) = ((1 : F) * rho 5987)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5985) * (relationLc1169 rho) = ((1 : F) * rho 5988)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5984) * (relationLc1170 rho) = ((1 : F) * rho 5989)

def relationRow5591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5988) * ((1 : F) * rho 5989) = ((1 : F) * rho 5990)

def relationRow5592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5991) * ((1 : F) + (1 : F) * rho 5990) = ((1 : F) * rho 5988 + (1 : F) * rho 5989)

def relationRow5593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5992) * ((1 : F) + (-1 : F) * rho 5990) = ((1 : F) * rho 5987 + (-1 : F) * rho 5988 + (-1 : F) * rho 5989)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 66⟩], residual := [((1 : F), 5991)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2106) * (relationLc1171 rho) = ((1 : F) * rho 5993)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 66⟩], residual := [((1 : F), 5992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2106) * (relationLc1172 rho) = ((1 : F) * rho 5994)

def relationRow5596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5984) * ((1 : F) * rho 5985) = ((1 : F) * rho 5995)

def relationRow5597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5984) * ((1 : F) * rho 5984) = ((1 : F) * rho 5996)

def relationRow5598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5985) * ((1 : F) * rho 5985) = ((1 : F) * rho 5997)

def relationRow5599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5998) * ((-1 : F) * rho 5996 + (1 : F) * rho 5997) = ((2 : F) * rho 5995)

def relationRow5600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5999) * ((2 : F) + (1 : F) * rho 5996 + (-1 : F) * rho 5997) = ((1 : F) * rho 5996 + (1 : F) * rho 5997)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 67⟩, ⟨(1 : F), 5070, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5601 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1173 rho) = ((1 : F) * rho 6000)

def relationRow5602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6000) * ((1 : F) * rho 5998 + (1 : F) * rho 5999) = ((1 : F) * rho 6001)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5999) * (relationLc1174 rho) = ((1 : F) * rho 6002)

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5998) * (relationLc1175 rho) = ((1 : F) * rho 6003)

def relationRow5605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6002) * ((1 : F) * rho 6003) = ((1 : F) * rho 6004)

def relationRow5606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6005) * ((1 : F) + (1 : F) * rho 6004) = ((1 : F) * rho 6002 + (1 : F) * rho 6003)

def relationRow5607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6006) * ((1 : F) + (-1 : F) * rho 6004) = ((1 : F) * rho 6001 + (-1 : F) * rho 6002 + (-1 : F) * rho 6003)

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 67⟩], residual := [((1 : F), 6005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2107) * (relationLc1176 rho) = ((1 : F) * rho 6007)

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 67⟩], residual := [((1 : F), 6006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2107) * (relationLc1177 rho) = ((1 : F) * rho 6008)

def relationRow5610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5998) * ((1 : F) * rho 5999) = ((1 : F) * rho 6009)

def relationRow5611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5998) * ((1 : F) * rho 5998) = ((1 : F) * rho 6010)

def relationRow5612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5999) * ((1 : F) * rho 5999) = ((1 : F) * rho 6011)

def relationRow5613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6012) * ((-1 : F) * rho 6010 + (1 : F) * rho 6011) = ((2 : F) * rho 6009)

def relationRow5614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6013) * ((2 : F) + (1 : F) * rho 6010 + (-1 : F) * rho 6011) = ((1 : F) * rho 6010 + (1 : F) * rho 6011)

def relationLc1178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 68⟩, ⟨(1 : F), 5070, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1178 rho) = ((1 : F) * rho 6014)

def relationRow5616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6014) * ((1 : F) * rho 6012 + (1 : F) * rho 6013) = ((1 : F) * rho 6015)

def relationLc1179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6013) * (relationLc1179 rho) = ((1 : F) * rho 6016)

def relationLc1180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6012) * (relationLc1180 rho) = ((1 : F) * rho 6017)

def relationRow5619 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6016) * ((1 : F) * rho 6017) = ((1 : F) * rho 6018)

def relationRow5620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6019) * ((1 : F) + (1 : F) * rho 6018) = ((1 : F) * rho 6016 + (1 : F) * rho 6017)

def relationRow5621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6020) * ((1 : F) + (-1 : F) * rho 6018) = ((1 : F) * rho 6015 + (-1 : F) * rho 6016 + (-1 : F) * rho 6017)

def relationLc1181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 68⟩], residual := [((1 : F), 6019)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2108) * (relationLc1181 rho) = ((1 : F) * rho 6021)

def relationLc1182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 68⟩], residual := [((1 : F), 6020)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2108) * (relationLc1182 rho) = ((1 : F) * rho 6022)

def relationRow5624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6012) * ((1 : F) * rho 6013) = ((1 : F) * rho 6023)

def relationRow5625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6012) * ((1 : F) * rho 6012) = ((1 : F) * rho 6024)

def relationRow5626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6013) * ((1 : F) * rho 6013) = ((1 : F) * rho 6025)

def relationRow5627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * ((-1 : F) * rho 6024 + (1 : F) * rho 6025) = ((2 : F) * rho 6023)

def relationRow5628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6027) * ((2 : F) + (1 : F) * rho 6024 + (-1 : F) * rho 6025) = ((1 : F) * rho 6024 + (1 : F) * rho 6025)

def relationLc1183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 69⟩, ⟨(1 : F), 5070, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1183 rho) = ((1 : F) * rho 6028)

def relationRow5630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6028) * ((1 : F) * rho 6026 + (1 : F) * rho 6027) = ((1 : F) * rho 6029)

def relationLc1184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6027) * (relationLc1184 rho) = ((1 : F) * rho 6030)

def relationLc1185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * (relationLc1185 rho) = ((1 : F) * rho 6031)

def relationRow5633 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6030) * ((1 : F) * rho 6031) = ((1 : F) * rho 6032)

def relationRow5634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6033) * ((1 : F) + (1 : F) * rho 6032) = ((1 : F) * rho 6030 + (1 : F) * rho 6031)

def relationRow5635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6034) * ((1 : F) + (-1 : F) * rho 6032) = ((1 : F) * rho 6029 + (-1 : F) * rho 6030 + (-1 : F) * rho 6031)

def relationLc1186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 69⟩], residual := [((1 : F), 6033)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2109) * (relationLc1186 rho) = ((1 : F) * rho 6035)

def relationLc1187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 69⟩], residual := [((1 : F), 6034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2109) * (relationLc1187 rho) = ((1 : F) * rho 6036)

def relationRow5638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * ((1 : F) * rho 6027) = ((1 : F) * rho 6037)

def relationRow5639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * ((1 : F) * rho 6026) = ((1 : F) * rho 6038)

def relationRow5640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6027) * ((1 : F) * rho 6027) = ((1 : F) * rho 6039)

def relationRow5641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6040) * ((-1 : F) * rho 6038 + (1 : F) * rho 6039) = ((2 : F) * rho 6037)

def relationRow5642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6041) * ((2 : F) + (1 : F) * rho 6038 + (-1 : F) * rho 6039) = ((1 : F) * rho 6038 + (1 : F) * rho 6039)

def relationLc1188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 70⟩, ⟨(1 : F), 5070, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1188 rho) = ((1 : F) * rho 6042)

def relationRow5644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6042) * ((1 : F) * rho 6040 + (1 : F) * rho 6041) = ((1 : F) * rho 6043)

def relationLc1189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6041) * (relationLc1189 rho) = ((1 : F) * rho 6044)

def relationLc1190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6040) * (relationLc1190 rho) = ((1 : F) * rho 6045)

def relationRow5647 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6044) * ((1 : F) * rho 6045) = ((1 : F) * rho 6046)

def relationRow5648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6047) * ((1 : F) + (1 : F) * rho 6046) = ((1 : F) * rho 6044 + (1 : F) * rho 6045)

def relationRow5649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6048) * ((1 : F) + (-1 : F) * rho 6046) = ((1 : F) * rho 6043 + (-1 : F) * rho 6044 + (-1 : F) * rho 6045)

def relationLc1191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 70⟩], residual := [((1 : F), 6047)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2110) * (relationLc1191 rho) = ((1 : F) * rho 6049)

def relationLc1192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 70⟩], residual := [((1 : F), 6048)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2110) * (relationLc1192 rho) = ((1 : F) * rho 6050)

def relationRow5652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6040) * ((1 : F) * rho 6041) = ((1 : F) * rho 6051)

def relationRow5653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6040) * ((1 : F) * rho 6040) = ((1 : F) * rho 6052)

def relationRow5654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6041) * ((1 : F) * rho 6041) = ((1 : F) * rho 6053)

def relationRow5655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6054) * ((-1 : F) * rho 6052 + (1 : F) * rho 6053) = ((2 : F) * rho 6051)

def relationRow5656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6055) * ((2 : F) + (1 : F) * rho 6052 + (-1 : F) * rho 6053) = ((1 : F) * rho 6052 + (1 : F) * rho 6053)

def relationLc1193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 71⟩, ⟨(1 : F), 5070, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1193 rho) = ((1 : F) * rho 6056)

def relationRow5658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6056) * ((1 : F) * rho 6054 + (1 : F) * rho 6055) = ((1 : F) * rho 6057)

def relationLc1194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6055) * (relationLc1194 rho) = ((1 : F) * rho 6058)

def relationLc1195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6054) * (relationLc1195 rho) = ((1 : F) * rho 6059)

def relationRow5661 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6058) * ((1 : F) * rho 6059) = ((1 : F) * rho 6060)

def relationRow5662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6061) * ((1 : F) + (1 : F) * rho 6060) = ((1 : F) * rho 6058 + (1 : F) * rho 6059)

def relationRow5663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6062) * ((1 : F) + (-1 : F) * rho 6060) = ((1 : F) * rho 6057 + (-1 : F) * rho 6058 + (-1 : F) * rho 6059)

def relationLc1196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 71⟩], residual := [((1 : F), 6061)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2111) * (relationLc1196 rho) = ((1 : F) * rho 6063)

def relationLc1197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 71⟩], residual := [((1 : F), 6062)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2111) * (relationLc1197 rho) = ((1 : F) * rho 6064)

def relationRow5666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6054) * ((1 : F) * rho 6055) = ((1 : F) * rho 6065)

def relationRow5667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6054) * ((1 : F) * rho 6054) = ((1 : F) * rho 6066)

def relationRow5668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6055) * ((1 : F) * rho 6055) = ((1 : F) * rho 6067)

def relationRow5669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6068) * ((-1 : F) * rho 6066 + (1 : F) * rho 6067) = ((2 : F) * rho 6065)

def relationRow5670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6069) * ((2 : F) + (1 : F) * rho 6066 + (-1 : F) * rho 6067) = ((1 : F) * rho 6066 + (1 : F) * rho 6067)

def relationLc1198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 72⟩, ⟨(1 : F), 5070, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5671 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1198 rho) = ((1 : F) * rho 6070)

def relationRow5672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6070) * ((1 : F) * rho 6068 + (1 : F) * rho 6069) = ((1 : F) * rho 6071)

def relationLc1199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6069) * (relationLc1199 rho) = ((1 : F) * rho 6072)

def relationLc1200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6068) * (relationLc1200 rho) = ((1 : F) * rho 6073)

def relationRow5675 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6072) * ((1 : F) * rho 6073) = ((1 : F) * rho 6074)

def relationRow5676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6075) * ((1 : F) + (1 : F) * rho 6074) = ((1 : F) * rho 6072 + (1 : F) * rho 6073)

def relationRow5677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6076) * ((1 : F) + (-1 : F) * rho 6074) = ((1 : F) * rho 6071 + (-1 : F) * rho 6072 + (-1 : F) * rho 6073)

def relationLc1201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 72⟩], residual := [((1 : F), 6075)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2112) * (relationLc1201 rho) = ((1 : F) * rho 6077)

def relationLc1202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 72⟩], residual := [((1 : F), 6076)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2112) * (relationLc1202 rho) = ((1 : F) * rho 6078)

def relationRow5680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6068) * ((1 : F) * rho 6069) = ((1 : F) * rho 6079)

def relationRow5681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6068) * ((1 : F) * rho 6068) = ((1 : F) * rho 6080)

def relationRow5682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6069) * ((1 : F) * rho 6069) = ((1 : F) * rho 6081)

def relationRow5683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6082) * ((-1 : F) * rho 6080 + (1 : F) * rho 6081) = ((2 : F) * rho 6079)

def relationRow5684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6083) * ((2 : F) + (1 : F) * rho 6080 + (-1 : F) * rho 6081) = ((1 : F) * rho 6080 + (1 : F) * rho 6081)

def relationLc1203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 73⟩, ⟨(1 : F), 5070, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5685 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1203 rho) = ((1 : F) * rho 6084)

def relationRow5686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6084) * ((1 : F) * rho 6082 + (1 : F) * rho 6083) = ((1 : F) * rho 6085)

def relationLc1204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6083) * (relationLc1204 rho) = ((1 : F) * rho 6086)

def relationLc1205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6082) * (relationLc1205 rho) = ((1 : F) * rho 6087)

def relationRow5689 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6086) * ((1 : F) * rho 6087) = ((1 : F) * rho 6088)

def relationRow5690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6089) * ((1 : F) + (1 : F) * rho 6088) = ((1 : F) * rho 6086 + (1 : F) * rho 6087)

def relationRow5691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6090) * ((1 : F) + (-1 : F) * rho 6088) = ((1 : F) * rho 6085 + (-1 : F) * rho 6086 + (-1 : F) * rho 6087)

def relationLc1206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 73⟩], residual := [((1 : F), 6089)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2113) * (relationLc1206 rho) = ((1 : F) * rho 6091)

def relationLc1207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 73⟩], residual := [((1 : F), 6090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2113) * (relationLc1207 rho) = ((1 : F) * rho 6092)

def relationRow5694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6082) * ((1 : F) * rho 6083) = ((1 : F) * rho 6093)

def relationRow5695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6082) * ((1 : F) * rho 6082) = ((1 : F) * rho 6094)

def relationRow5696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6083) * ((1 : F) * rho 6083) = ((1 : F) * rho 6095)

def relationRow5697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6096) * ((-1 : F) * rho 6094 + (1 : F) * rho 6095) = ((2 : F) * rho 6093)

def relationRow5698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6097) * ((2 : F) + (1 : F) * rho 6094 + (-1 : F) * rho 6095) = ((1 : F) * rho 6094 + (1 : F) * rho 6095)

def relationLc1208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 74⟩, ⟨(1 : F), 5070, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5699 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1208 rho) = ((1 : F) * rho 6098)

def relationRow5700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6098) * ((1 : F) * rho 6096 + (1 : F) * rho 6097) = ((1 : F) * rho 6099)

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6097) * (relationLc1209 rho) = ((1 : F) * rho 6100)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6096) * (relationLc1210 rho) = ((1 : F) * rho 6101)

def relationRow5703 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6100) * ((1 : F) * rho 6101) = ((1 : F) * rho 6102)

def relationRow5704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6103) * ((1 : F) + (1 : F) * rho 6102) = ((1 : F) * rho 6100 + (1 : F) * rho 6101)

def relationRow5705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6104) * ((1 : F) + (-1 : F) * rho 6102) = ((1 : F) * rho 6099 + (-1 : F) * rho 6100 + (-1 : F) * rho 6101)

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 74⟩], residual := [((1 : F), 6103)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2114) * (relationLc1211 rho) = ((1 : F) * rho 6105)

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 74⟩], residual := [((1 : F), 6104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2114) * (relationLc1212 rho) = ((1 : F) * rho 6106)

def relationRow5708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6096) * ((1 : F) * rho 6097) = ((1 : F) * rho 6107)

def relationRow5709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6096) * ((1 : F) * rho 6096) = ((1 : F) * rho 6108)

def relationRow5710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6097) * ((1 : F) * rho 6097) = ((1 : F) * rho 6109)

def relationRow5711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6110) * ((-1 : F) * rho 6108 + (1 : F) * rho 6109) = ((2 : F) * rho 6107)

def relationRow5712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6111) * ((2 : F) + (1 : F) * rho 6108 + (-1 : F) * rho 6109) = ((1 : F) * rho 6108 + (1 : F) * rho 6109)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 75⟩, ⟨(1 : F), 5070, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5713 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1213 rho) = ((1 : F) * rho 6112)

def relationRow5714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6112) * ((1 : F) * rho 6110 + (1 : F) * rho 6111) = ((1 : F) * rho 6113)

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6111) * (relationLc1214 rho) = ((1 : F) * rho 6114)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6110) * (relationLc1215 rho) = ((1 : F) * rho 6115)

def relationRow5717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6114) * ((1 : F) * rho 6115) = ((1 : F) * rho 6116)

def relationRow5718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6117) * ((1 : F) + (1 : F) * rho 6116) = ((1 : F) * rho 6114 + (1 : F) * rho 6115)

def relationRow5719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6118) * ((1 : F) + (-1 : F) * rho 6116) = ((1 : F) * rho 6113 + (-1 : F) * rho 6114 + (-1 : F) * rho 6115)

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 75⟩], residual := [((1 : F), 6117)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2115) * (relationLc1216 rho) = ((1 : F) * rho 6119)

def relationLc1217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 75⟩], residual := [((1 : F), 6118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2115) * (relationLc1217 rho) = ((1 : F) * rho 6120)

def relationRow5722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6110) * ((1 : F) * rho 6111) = ((1 : F) * rho 6121)

def relationRow5723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6110) * ((1 : F) * rho 6110) = ((1 : F) * rho 6122)

def relationRow5724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6111) * ((1 : F) * rho 6111) = ((1 : F) * rho 6123)

def relationRow5725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6124) * ((-1 : F) * rho 6122 + (1 : F) * rho 6123) = ((2 : F) * rho 6121)

def relationRow5726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6125) * ((2 : F) + (1 : F) * rho 6122 + (-1 : F) * rho 6123) = ((1 : F) * rho 6122 + (1 : F) * rho 6123)

def relationLc1218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 76⟩, ⟨(1 : F), 5070, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5727 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1218 rho) = ((1 : F) * rho 6126)

def relationRow5728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6126) * ((1 : F) * rho 6124 + (1 : F) * rho 6125) = ((1 : F) * rho 6127)

def relationLc1219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6125) * (relationLc1219 rho) = ((1 : F) * rho 6128)

def relationLc1220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6124) * (relationLc1220 rho) = ((1 : F) * rho 6129)

def relationRow5731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6128) * ((1 : F) * rho 6129) = ((1 : F) * rho 6130)

def relationRow5732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6131) * ((1 : F) + (1 : F) * rho 6130) = ((1 : F) * rho 6128 + (1 : F) * rho 6129)

def relationRow5733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6132) * ((1 : F) + (-1 : F) * rho 6130) = ((1 : F) * rho 6127 + (-1 : F) * rho 6128 + (-1 : F) * rho 6129)

def relationLc1221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 76⟩], residual := [((1 : F), 6131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2116) * (relationLc1221 rho) = ((1 : F) * rho 6133)

def relationLc1222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 76⟩], residual := [((1 : F), 6132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2116) * (relationLc1222 rho) = ((1 : F) * rho 6134)

def relationRow5736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6124) * ((1 : F) * rho 6125) = ((1 : F) * rho 6135)

def relationRow5737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6124) * ((1 : F) * rho 6124) = ((1 : F) * rho 6136)

def relationRow5738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6125) * ((1 : F) * rho 6125) = ((1 : F) * rho 6137)

def relationRow5739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6138) * ((-1 : F) * rho 6136 + (1 : F) * rho 6137) = ((2 : F) * rho 6135)

def relationRow5740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6139) * ((2 : F) + (1 : F) * rho 6136 + (-1 : F) * rho 6137) = ((1 : F) * rho 6136 + (1 : F) * rho 6137)

def relationLc1223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 77⟩, ⟨(1 : F), 5070, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1223 rho) = ((1 : F) * rho 6140)

def relationRow5742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6140) * ((1 : F) * rho 6138 + (1 : F) * rho 6139) = ((1 : F) * rho 6141)

def relationLc1224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6139) * (relationLc1224 rho) = ((1 : F) * rho 6142)

def relationLc1225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6138) * (relationLc1225 rho) = ((1 : F) * rho 6143)

def relationRow5745 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6142) * ((1 : F) * rho 6143) = ((1 : F) * rho 6144)

def relationRow5746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6145) * ((1 : F) + (1 : F) * rho 6144) = ((1 : F) * rho 6142 + (1 : F) * rho 6143)

def relationRow5747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6146) * ((1 : F) + (-1 : F) * rho 6144) = ((1 : F) * rho 6141 + (-1 : F) * rho 6142 + (-1 : F) * rho 6143)

def relationLc1226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 77⟩], residual := [((1 : F), 6145)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2117) * (relationLc1226 rho) = ((1 : F) * rho 6147)

def relationLc1227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 77⟩], residual := [((1 : F), 6146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2117) * (relationLc1227 rho) = ((1 : F) * rho 6148)

def relationRow5750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6138) * ((1 : F) * rho 6139) = ((1 : F) * rho 6149)

def relationRow5751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6138) * ((1 : F) * rho 6138) = ((1 : F) * rho 6150)

def relationRow5752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6139) * ((1 : F) * rho 6139) = ((1 : F) * rho 6151)

def relationRow5753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6152) * ((-1 : F) * rho 6150 + (1 : F) * rho 6151) = ((2 : F) * rho 6149)

def relationRow5754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6153) * ((2 : F) + (1 : F) * rho 6150 + (-1 : F) * rho 6151) = ((1 : F) * rho 6150 + (1 : F) * rho 6151)

def relationLc1228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 78⟩, ⟨(1 : F), 5070, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5755 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1228 rho) = ((1 : F) * rho 6154)

def relationRow5756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6154) * ((1 : F) * rho 6152 + (1 : F) * rho 6153) = ((1 : F) * rho 6155)

def relationLc1229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6153) * (relationLc1229 rho) = ((1 : F) * rho 6156)

def relationLc1230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6152) * (relationLc1230 rho) = ((1 : F) * rho 6157)

def relationRow5759 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6156) * ((1 : F) * rho 6157) = ((1 : F) * rho 6158)

def relationRow5760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6159) * ((1 : F) + (1 : F) * rho 6158) = ((1 : F) * rho 6156 + (1 : F) * rho 6157)

def relationRow5761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6160) * ((1 : F) + (-1 : F) * rho 6158) = ((1 : F) * rho 6155 + (-1 : F) * rho 6156 + (-1 : F) * rho 6157)

def relationLc1231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 78⟩], residual := [((1 : F), 6159)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2118) * (relationLc1231 rho) = ((1 : F) * rho 6161)

def relationLc1232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 78⟩], residual := [((1 : F), 6160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2118) * (relationLc1232 rho) = ((1 : F) * rho 6162)

def relationRow5764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6152) * ((1 : F) * rho 6153) = ((1 : F) * rho 6163)

def relationRow5765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6152) * ((1 : F) * rho 6152) = ((1 : F) * rho 6164)

def relationRow5766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6153) * ((1 : F) * rho 6153) = ((1 : F) * rho 6165)

def relationRow5767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6166) * ((-1 : F) * rho 6164 + (1 : F) * rho 6165) = ((2 : F) * rho 6163)

def relationRow5768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6167) * ((2 : F) + (1 : F) * rho 6164 + (-1 : F) * rho 6165) = ((1 : F) * rho 6164 + (1 : F) * rho 6165)

def relationLc1233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 79⟩, ⟨(1 : F), 5070, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1233 rho) = ((1 : F) * rho 6168)

def relationRow5770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6168) * ((1 : F) * rho 6166 + (1 : F) * rho 6167) = ((1 : F) * rho 6169)

def relationLc1234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6167) * (relationLc1234 rho) = ((1 : F) * rho 6170)

def relationLc1235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6166) * (relationLc1235 rho) = ((1 : F) * rho 6171)

def relationRow5773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6170) * ((1 : F) * rho 6171) = ((1 : F) * rho 6172)

def relationRow5774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6173) * ((1 : F) + (1 : F) * rho 6172) = ((1 : F) * rho 6170 + (1 : F) * rho 6171)

def relationRow5775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6174) * ((1 : F) + (-1 : F) * rho 6172) = ((1 : F) * rho 6169 + (-1 : F) * rho 6170 + (-1 : F) * rho 6171)

def relationLc1236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 79⟩], residual := [((1 : F), 6173)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2119) * (relationLc1236 rho) = ((1 : F) * rho 6175)

def relationLc1237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 79⟩], residual := [((1 : F), 6174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2119) * (relationLc1237 rho) = ((1 : F) * rho 6176)

def relationRow5778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6166) * ((1 : F) * rho 6167) = ((1 : F) * rho 6177)

def relationRow5779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6166) * ((1 : F) * rho 6166) = ((1 : F) * rho 6178)

def relationRow5780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6167) * ((1 : F) * rho 6167) = ((1 : F) * rho 6179)

def relationRow5781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6180) * ((-1 : F) * rho 6178 + (1 : F) * rho 6179) = ((2 : F) * rho 6177)

def relationRow5782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6181) * ((2 : F) + (1 : F) * rho 6178 + (-1 : F) * rho 6179) = ((1 : F) * rho 6178 + (1 : F) * rho 6179)

def relationLc1238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 80⟩, ⟨(1 : F), 5070, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5783 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1238 rho) = ((1 : F) * rho 6182)

def relationRow5784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6182) * ((1 : F) * rho 6180 + (1 : F) * rho 6181) = ((1 : F) * rho 6183)

def relationLc1239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6181) * (relationLc1239 rho) = ((1 : F) * rho 6184)

def relationLc1240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6180) * (relationLc1240 rho) = ((1 : F) * rho 6185)

def relationRow5787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6184) * ((1 : F) * rho 6185) = ((1 : F) * rho 6186)

def relationRow5788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6187) * ((1 : F) + (1 : F) * rho 6186) = ((1 : F) * rho 6184 + (1 : F) * rho 6185)

def relationRow5789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6188) * ((1 : F) + (-1 : F) * rho 6186) = ((1 : F) * rho 6183 + (-1 : F) * rho 6184 + (-1 : F) * rho 6185)

def relationLc1241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 80⟩], residual := [((1 : F), 6187)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2120) * (relationLc1241 rho) = ((1 : F) * rho 6189)

def relationLc1242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 80⟩], residual := [((1 : F), 6188)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2120) * (relationLc1242 rho) = ((1 : F) * rho 6190)

def relationRow5792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6180) * ((1 : F) * rho 6181) = ((1 : F) * rho 6191)

def relationRow5793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6180) * ((1 : F) * rho 6180) = ((1 : F) * rho 6192)

def relationRow5794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6181) * ((1 : F) * rho 6181) = ((1 : F) * rho 6193)

def relationRow5795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6194) * ((-1 : F) * rho 6192 + (1 : F) * rho 6193) = ((2 : F) * rho 6191)

def relationRow5796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6195) * ((2 : F) + (1 : F) * rho 6192 + (-1 : F) * rho 6193) = ((1 : F) * rho 6192 + (1 : F) * rho 6193)

def relationLc1243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 81⟩, ⟨(1 : F), 5070, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1243 rho) = ((1 : F) * rho 6196)

def relationRow5798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6196) * ((1 : F) * rho 6194 + (1 : F) * rho 6195) = ((1 : F) * rho 6197)

def relationLc1244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6195) * (relationLc1244 rho) = ((1 : F) * rho 6198)

def relationLc1245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6194) * (relationLc1245 rho) = ((1 : F) * rho 6199)

def relationRow5801 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6198) * ((1 : F) * rho 6199) = ((1 : F) * rho 6200)

def relationRow5802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6201) * ((1 : F) + (1 : F) * rho 6200) = ((1 : F) * rho 6198 + (1 : F) * rho 6199)

def relationRow5803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6202) * ((1 : F) + (-1 : F) * rho 6200) = ((1 : F) * rho 6197 + (-1 : F) * rho 6198 + (-1 : F) * rho 6199)

def relationLc1246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 81⟩], residual := [((1 : F), 6201)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2121) * (relationLc1246 rho) = ((1 : F) * rho 6203)

def relationLc1247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 81⟩], residual := [((1 : F), 6202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2121) * (relationLc1247 rho) = ((1 : F) * rho 6204)

def relationRow5806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6194) * ((1 : F) * rho 6195) = ((1 : F) * rho 6205)

def relationRow5807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6194) * ((1 : F) * rho 6194) = ((1 : F) * rho 6206)

def relationRow5808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6195) * ((1 : F) * rho 6195) = ((1 : F) * rho 6207)

def relationRow5809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6208) * ((-1 : F) * rho 6206 + (1 : F) * rho 6207) = ((2 : F) * rho 6205)

def relationRow5810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6209) * ((2 : F) + (1 : F) * rho 6206 + (-1 : F) * rho 6207) = ((1 : F) * rho 6206 + (1 : F) * rho 6207)

def relationLc1248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 82⟩, ⟨(1 : F), 5070, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5811 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1248 rho) = ((1 : F) * rho 6210)

def relationRow5812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6210) * ((1 : F) * rho 6208 + (1 : F) * rho 6209) = ((1 : F) * rho 6211)

def relationLc1249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6209) * (relationLc1249 rho) = ((1 : F) * rho 6212)

def relationLc1250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6208) * (relationLc1250 rho) = ((1 : F) * rho 6213)

def relationRow5815 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6212) * ((1 : F) * rho 6213) = ((1 : F) * rho 6214)

def relationRow5816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6215) * ((1 : F) + (1 : F) * rho 6214) = ((1 : F) * rho 6212 + (1 : F) * rho 6213)

def relationRow5817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6216) * ((1 : F) + (-1 : F) * rho 6214) = ((1 : F) * rho 6211 + (-1 : F) * rho 6212 + (-1 : F) * rho 6213)

def relationLc1251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 82⟩], residual := [((1 : F), 6215)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2122) * (relationLc1251 rho) = ((1 : F) * rho 6217)

def relationLc1252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 82⟩], residual := [((1 : F), 6216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2122) * (relationLc1252 rho) = ((1 : F) * rho 6218)

def relationRow5820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6208) * ((1 : F) * rho 6209) = ((1 : F) * rho 6219)

def relationRow5821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6208) * ((1 : F) * rho 6208) = ((1 : F) * rho 6220)

def relationRow5822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6209) * ((1 : F) * rho 6209) = ((1 : F) * rho 6221)

def relationRow5823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6222) * ((-1 : F) * rho 6220 + (1 : F) * rho 6221) = ((2 : F) * rho 6219)

def relationRow5824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6223) * ((2 : F) + (1 : F) * rho 6220 + (-1 : F) * rho 6221) = ((1 : F) * rho 6220 + (1 : F) * rho 6221)

def relationLc1253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 83⟩, ⟨(1 : F), 5070, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5825 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1253 rho) = ((1 : F) * rho 6224)

def relationRow5826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6224) * ((1 : F) * rho 6222 + (1 : F) * rho 6223) = ((1 : F) * rho 6225)

def relationLc1254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6223) * (relationLc1254 rho) = ((1 : F) * rho 6226)

def relationLc1255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6222) * (relationLc1255 rho) = ((1 : F) * rho 6227)

def relationRow5829 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6226) * ((1 : F) * rho 6227) = ((1 : F) * rho 6228)

def relationRow5830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6229) * ((1 : F) + (1 : F) * rho 6228) = ((1 : F) * rho 6226 + (1 : F) * rho 6227)

def relationRow5831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6230) * ((1 : F) + (-1 : F) * rho 6228) = ((1 : F) * rho 6225 + (-1 : F) * rho 6226 + (-1 : F) * rho 6227)

def relationLc1256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 83⟩], residual := [((1 : F), 6229)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2123) * (relationLc1256 rho) = ((1 : F) * rho 6231)

def relationLc1257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 83⟩], residual := [((1 : F), 6230)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2123) * (relationLc1257 rho) = ((1 : F) * rho 6232)

def relationRow5834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6222) * ((1 : F) * rho 6223) = ((1 : F) * rho 6233)

def relationRow5835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6222) * ((1 : F) * rho 6222) = ((1 : F) * rho 6234)

def relationRow5836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6223) * ((1 : F) * rho 6223) = ((1 : F) * rho 6235)

def relationRow5837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6236) * ((-1 : F) * rho 6234 + (1 : F) * rho 6235) = ((2 : F) * rho 6233)

def relationRow5838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6237) * ((2 : F) + (1 : F) * rho 6234 + (-1 : F) * rho 6235) = ((1 : F) * rho 6234 + (1 : F) * rho 6235)

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 84⟩, ⟨(1 : F), 5070, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5839 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1258 rho) = ((1 : F) * rho 6238)

def relationRow5840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6238) * ((1 : F) * rho 6236 + (1 : F) * rho 6237) = ((1 : F) * rho 6239)

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6237) * (relationLc1259 rho) = ((1 : F) * rho 6240)

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6236) * (relationLc1260 rho) = ((1 : F) * rho 6241)

def relationRow5843 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6240) * ((1 : F) * rho 6241) = ((1 : F) * rho 6242)

def relationRow5844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6243) * ((1 : F) + (1 : F) * rho 6242) = ((1 : F) * rho 6240 + (1 : F) * rho 6241)

def relationRow5845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6244) * ((1 : F) + (-1 : F) * rho 6242) = ((1 : F) * rho 6239 + (-1 : F) * rho 6240 + (-1 : F) * rho 6241)

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 84⟩], residual := [((1 : F), 6243)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2124) * (relationLc1261 rho) = ((1 : F) * rho 6245)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 84⟩], residual := [((1 : F), 6244)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2124) * (relationLc1262 rho) = ((1 : F) * rho 6246)

def relationRow5848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6236) * ((1 : F) * rho 6237) = ((1 : F) * rho 6247)

def relationRow5849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6236) * ((1 : F) * rho 6236) = ((1 : F) * rho 6248)

def relationRow5850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6237) * ((1 : F) * rho 6237) = ((1 : F) * rho 6249)

def relationRow5851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6250) * ((-1 : F) * rho 6248 + (1 : F) * rho 6249) = ((2 : F) * rho 6247)

def relationRow5852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6251) * ((2 : F) + (1 : F) * rho 6248 + (-1 : F) * rho 6249) = ((1 : F) * rho 6248 + (1 : F) * rho 6249)

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 85⟩, ⟨(1 : F), 5070, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5853 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1263 rho) = ((1 : F) * rho 6252)

def relationRow5854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6252) * ((1 : F) * rho 6250 + (1 : F) * rho 6251) = ((1 : F) * rho 6253)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6251) * (relationLc1264 rho) = ((1 : F) * rho 6254)

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6250) * (relationLc1265 rho) = ((1 : F) * rho 6255)

def relationRow5857 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6254) * ((1 : F) * rho 6255) = ((1 : F) * rho 6256)

def relationRow5858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6257) * ((1 : F) + (1 : F) * rho 6256) = ((1 : F) * rho 6254 + (1 : F) * rho 6255)

def relationRow5859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6258) * ((1 : F) + (-1 : F) * rho 6256) = ((1 : F) * rho 6253 + (-1 : F) * rho 6254 + (-1 : F) * rho 6255)

def relationLc1266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 85⟩], residual := [((1 : F), 6257)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2125) * (relationLc1266 rho) = ((1 : F) * rho 6259)

def relationLc1267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 85⟩], residual := [((1 : F), 6258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2125) * (relationLc1267 rho) = ((1 : F) * rho 6260)

def relationRow5862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6250) * ((1 : F) * rho 6251) = ((1 : F) * rho 6261)

def relationRow5863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6250) * ((1 : F) * rho 6250) = ((1 : F) * rho 6262)

def relationRow5864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6251) * ((1 : F) * rho 6251) = ((1 : F) * rho 6263)

def relationRow5865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6264) * ((-1 : F) * rho 6262 + (1 : F) * rho 6263) = ((2 : F) * rho 6261)

def relationRow5866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6265) * ((2 : F) + (1 : F) * rho 6262 + (-1 : F) * rho 6263) = ((1 : F) * rho 6262 + (1 : F) * rho 6263)

def relationLc1268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 86⟩, ⟨(1 : F), 5070, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5867 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1268 rho) = ((1 : F) * rho 6266)

def relationRow5868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6266) * ((1 : F) * rho 6264 + (1 : F) * rho 6265) = ((1 : F) * rho 6267)

def relationLc1269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6265) * (relationLc1269 rho) = ((1 : F) * rho 6268)

def relationLc1270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6264) * (relationLc1270 rho) = ((1 : F) * rho 6269)

def relationRow5871 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6268) * ((1 : F) * rho 6269) = ((1 : F) * rho 6270)

def relationRow5872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6271) * ((1 : F) + (1 : F) * rho 6270) = ((1 : F) * rho 6268 + (1 : F) * rho 6269)

def relationRow5873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6272) * ((1 : F) + (-1 : F) * rho 6270) = ((1 : F) * rho 6267 + (-1 : F) * rho 6268 + (-1 : F) * rho 6269)

def relationLc1271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 86⟩], residual := [((1 : F), 6271)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2126) * (relationLc1271 rho) = ((1 : F) * rho 6273)

def relationLc1272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 86⟩], residual := [((1 : F), 6272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2126) * (relationLc1272 rho) = ((1 : F) * rho 6274)

def relationRow5876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6264) * ((1 : F) * rho 6265) = ((1 : F) * rho 6275)

def relationRow5877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6264) * ((1 : F) * rho 6264) = ((1 : F) * rho 6276)

def relationRow5878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6265) * ((1 : F) * rho 6265) = ((1 : F) * rho 6277)

def relationRow5879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6278) * ((-1 : F) * rho 6276 + (1 : F) * rho 6277) = ((2 : F) * rho 6275)

def relationRow5880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6279) * ((2 : F) + (1 : F) * rho 6276 + (-1 : F) * rho 6277) = ((1 : F) * rho 6276 + (1 : F) * rho 6277)

def relationLc1273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 87⟩, ⟨(1 : F), 5070, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1273 rho) = ((1 : F) * rho 6280)

def relationRow5882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6280) * ((1 : F) * rho 6278 + (1 : F) * rho 6279) = ((1 : F) * rho 6281)

def relationLc1274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6279) * (relationLc1274 rho) = ((1 : F) * rho 6282)

def relationLc1275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6278) * (relationLc1275 rho) = ((1 : F) * rho 6283)

def relationRow5885 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6282) * ((1 : F) * rho 6283) = ((1 : F) * rho 6284)

def relationRow5886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6285) * ((1 : F) + (1 : F) * rho 6284) = ((1 : F) * rho 6282 + (1 : F) * rho 6283)

def relationRow5887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6286) * ((1 : F) + (-1 : F) * rho 6284) = ((1 : F) * rho 6281 + (-1 : F) * rho 6282 + (-1 : F) * rho 6283)

def relationLc1276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 87⟩], residual := [((1 : F), 6285)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2127) * (relationLc1276 rho) = ((1 : F) * rho 6287)

def relationLc1277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 87⟩], residual := [((1 : F), 6286)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2127) * (relationLc1277 rho) = ((1 : F) * rho 6288)

def relationRow5890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6278) * ((1 : F) * rho 6279) = ((1 : F) * rho 6289)

def relationRow5891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6278) * ((1 : F) * rho 6278) = ((1 : F) * rho 6290)

def relationRow5892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6279) * ((1 : F) * rho 6279) = ((1 : F) * rho 6291)

def relationRow5893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6292) * ((-1 : F) * rho 6290 + (1 : F) * rho 6291) = ((2 : F) * rho 6289)

def relationRow5894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6293) * ((2 : F) + (1 : F) * rho 6290 + (-1 : F) * rho 6291) = ((1 : F) * rho 6290 + (1 : F) * rho 6291)

def relationLc1278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 88⟩, ⟨(1 : F), 5070, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1278 rho) = ((1 : F) * rho 6294)

def relationRow5896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6294) * ((1 : F) * rho 6292 + (1 : F) * rho 6293) = ((1 : F) * rho 6295)

def relationLc1279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6293) * (relationLc1279 rho) = ((1 : F) * rho 6296)

def relationLc1280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6292) * (relationLc1280 rho) = ((1 : F) * rho 6297)

def relationRow5899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6296) * ((1 : F) * rho 6297) = ((1 : F) * rho 6298)

def relationRow5900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6299) * ((1 : F) + (1 : F) * rho 6298) = ((1 : F) * rho 6296 + (1 : F) * rho 6297)

def relationRow5901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6300) * ((1 : F) + (-1 : F) * rho 6298) = ((1 : F) * rho 6295 + (-1 : F) * rho 6296 + (-1 : F) * rho 6297)

def relationLc1281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 88⟩], residual := [((1 : F), 6299)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2128) * (relationLc1281 rho) = ((1 : F) * rho 6301)

def relationLc1282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 88⟩], residual := [((1 : F), 6300)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2128) * (relationLc1282 rho) = ((1 : F) * rho 6302)

def relationRow5904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6292) * ((1 : F) * rho 6293) = ((1 : F) * rho 6303)

def relationRow5905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6292) * ((1 : F) * rho 6292) = ((1 : F) * rho 6304)

def relationRow5906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6293) * ((1 : F) * rho 6293) = ((1 : F) * rho 6305)

def relationRow5907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6306) * ((-1 : F) * rho 6304 + (1 : F) * rho 6305) = ((2 : F) * rho 6303)

def relationRow5908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6307) * ((2 : F) + (1 : F) * rho 6304 + (-1 : F) * rho 6305) = ((1 : F) * rho 6304 + (1 : F) * rho 6305)

def relationLc1283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 89⟩, ⟨(1 : F), 5070, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1283 rho) = ((1 : F) * rho 6308)

def relationRow5910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6308) * ((1 : F) * rho 6306 + (1 : F) * rho 6307) = ((1 : F) * rho 6309)

def relationLc1284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6307) * (relationLc1284 rho) = ((1 : F) * rho 6310)

def relationLc1285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6306) * (relationLc1285 rho) = ((1 : F) * rho 6311)

def relationRow5913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6310) * ((1 : F) * rho 6311) = ((1 : F) * rho 6312)

def relationRow5914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6313) * ((1 : F) + (1 : F) * rho 6312) = ((1 : F) * rho 6310 + (1 : F) * rho 6311)

def relationRow5915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6314) * ((1 : F) + (-1 : F) * rho 6312) = ((1 : F) * rho 6309 + (-1 : F) * rho 6310 + (-1 : F) * rho 6311)

def relationLc1286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 89⟩], residual := [((1 : F), 6313)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2129) * (relationLc1286 rho) = ((1 : F) * rho 6315)

def relationLc1287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 89⟩], residual := [((1 : F), 6314)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2129) * (relationLc1287 rho) = ((1 : F) * rho 6316)

def relationRow5918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6306) * ((1 : F) * rho 6307) = ((1 : F) * rho 6317)

def relationRow5919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6306) * ((1 : F) * rho 6306) = ((1 : F) * rho 6318)

def relationRow5920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6307) * ((1 : F) * rho 6307) = ((1 : F) * rho 6319)

def relationRow5921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6320) * ((-1 : F) * rho 6318 + (1 : F) * rho 6319) = ((2 : F) * rho 6317)

def relationRow5922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6321) * ((2 : F) + (1 : F) * rho 6318 + (-1 : F) * rho 6319) = ((1 : F) * rho 6318 + (1 : F) * rho 6319)

def relationLc1288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 90⟩, ⟨(1 : F), 5070, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1288 rho) = ((1 : F) * rho 6322)

def relationRow5924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6322) * ((1 : F) * rho 6320 + (1 : F) * rho 6321) = ((1 : F) * rho 6323)

def relationLc1289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6321) * (relationLc1289 rho) = ((1 : F) * rho 6324)

def relationLc1290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6320) * (relationLc1290 rho) = ((1 : F) * rho 6325)

def relationRow5927 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6324) * ((1 : F) * rho 6325) = ((1 : F) * rho 6326)

def relationRow5928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6327) * ((1 : F) + (1 : F) * rho 6326) = ((1 : F) * rho 6324 + (1 : F) * rho 6325)

def relationRow5929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6328) * ((1 : F) + (-1 : F) * rho 6326) = ((1 : F) * rho 6323 + (-1 : F) * rho 6324 + (-1 : F) * rho 6325)

def relationLc1291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 90⟩], residual := [((1 : F), 6327)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2130) * (relationLc1291 rho) = ((1 : F) * rho 6329)

def relationLc1292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 90⟩], residual := [((1 : F), 6328)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2130) * (relationLc1292 rho) = ((1 : F) * rho 6330)

def relationRow5932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6320) * ((1 : F) * rho 6321) = ((1 : F) * rho 6331)

def relationRow5933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6320) * ((1 : F) * rho 6320) = ((1 : F) * rho 6332)

def relationRow5934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6321) * ((1 : F) * rho 6321) = ((1 : F) * rho 6333)

def relationRow5935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6334) * ((-1 : F) * rho 6332 + (1 : F) * rho 6333) = ((2 : F) * rho 6331)

def relationRow5936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6335) * ((2 : F) + (1 : F) * rho 6332 + (-1 : F) * rho 6333) = ((1 : F) * rho 6332 + (1 : F) * rho 6333)

def relationLc1293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 91⟩, ⟨(1 : F), 5070, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1293 rho) = ((1 : F) * rho 6336)

def relationRow5938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6336) * ((1 : F) * rho 6334 + (1 : F) * rho 6335) = ((1 : F) * rho 6337)

def relationLc1294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6335) * (relationLc1294 rho) = ((1 : F) * rho 6338)

def relationLc1295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6334) * (relationLc1295 rho) = ((1 : F) * rho 6339)

def relationRow5941 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6338) * ((1 : F) * rho 6339) = ((1 : F) * rho 6340)

def relationRow5942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6341) * ((1 : F) + (1 : F) * rho 6340) = ((1 : F) * rho 6338 + (1 : F) * rho 6339)

def relationRow5943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6342) * ((1 : F) + (-1 : F) * rho 6340) = ((1 : F) * rho 6337 + (-1 : F) * rho 6338 + (-1 : F) * rho 6339)

def relationLc1296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 91⟩], residual := [((1 : F), 6341)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2131) * (relationLc1296 rho) = ((1 : F) * rho 6343)

def relationLc1297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 91⟩], residual := [((1 : F), 6342)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2131) * (relationLc1297 rho) = ((1 : F) * rho 6344)

def relationRow5946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6334) * ((1 : F) * rho 6335) = ((1 : F) * rho 6345)

def relationRow5947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6334) * ((1 : F) * rho 6334) = ((1 : F) * rho 6346)

def relationRow5948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6335) * ((1 : F) * rho 6335) = ((1 : F) * rho 6347)

def relationRow5949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6348) * ((-1 : F) * rho 6346 + (1 : F) * rho 6347) = ((2 : F) * rho 6345)

def relationRow5950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6349) * ((2 : F) + (1 : F) * rho 6346 + (-1 : F) * rho 6347) = ((1 : F) * rho 6346 + (1 : F) * rho 6347)

def relationLc1298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 92⟩, ⟨(1 : F), 5070, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1298 rho) = ((1 : F) * rho 6350)

def relationRow5952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6350) * ((1 : F) * rho 6348 + (1 : F) * rho 6349) = ((1 : F) * rho 6351)

def relationLc1299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6349) * (relationLc1299 rho) = ((1 : F) * rho 6352)

def relationLc1300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6348) * (relationLc1300 rho) = ((1 : F) * rho 6353)

def relationRow5955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6352) * ((1 : F) * rho 6353) = ((1 : F) * rho 6354)

def relationRow5956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6355) * ((1 : F) + (1 : F) * rho 6354) = ((1 : F) * rho 6352 + (1 : F) * rho 6353)

def relationRow5957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6356) * ((1 : F) + (-1 : F) * rho 6354) = ((1 : F) * rho 6351 + (-1 : F) * rho 6352 + (-1 : F) * rho 6353)

def relationLc1301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 92⟩], residual := [((1 : F), 6355)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2132) * (relationLc1301 rho) = ((1 : F) * rho 6357)

def relationLc1302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 92⟩], residual := [((1 : F), 6356)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2132) * (relationLc1302 rho) = ((1 : F) * rho 6358)

def relationRow5960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6348) * ((1 : F) * rho 6349) = ((1 : F) * rho 6359)

def relationRow5961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6348) * ((1 : F) * rho 6348) = ((1 : F) * rho 6360)

def relationRow5962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6349) * ((1 : F) * rho 6349) = ((1 : F) * rho 6361)

def relationRow5963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6362) * ((-1 : F) * rho 6360 + (1 : F) * rho 6361) = ((2 : F) * rho 6359)

def relationRow5964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6363) * ((2 : F) + (1 : F) * rho 6360 + (-1 : F) * rho 6361) = ((1 : F) * rho 6360 + (1 : F) * rho 6361)

def relationLc1303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 93⟩, ⟨(1 : F), 5070, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1303 rho) = ((1 : F) * rho 6364)

def relationRow5966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6364) * ((1 : F) * rho 6362 + (1 : F) * rho 6363) = ((1 : F) * rho 6365)

def relationLc1304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6363) * (relationLc1304 rho) = ((1 : F) * rho 6366)

def relationLc1305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6362) * (relationLc1305 rho) = ((1 : F) * rho 6367)

def relationRow5969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6366) * ((1 : F) * rho 6367) = ((1 : F) * rho 6368)

def relationRow5970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6369) * ((1 : F) + (1 : F) * rho 6368) = ((1 : F) * rho 6366 + (1 : F) * rho 6367)

def relationRow5971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6370) * ((1 : F) + (-1 : F) * rho 6368) = ((1 : F) * rho 6365 + (-1 : F) * rho 6366 + (-1 : F) * rho 6367)

def relationLc1306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 93⟩], residual := [((1 : F), 6369)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2133) * (relationLc1306 rho) = ((1 : F) * rho 6371)

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 93⟩], residual := [((1 : F), 6370)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2133) * (relationLc1307 rho) = ((1 : F) * rho 6372)

def relationRow5974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6362) * ((1 : F) * rho 6363) = ((1 : F) * rho 6373)

def relationRow5975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6362) * ((1 : F) * rho 6362) = ((1 : F) * rho 6374)

def relationRow5976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6363) * ((1 : F) * rho 6363) = ((1 : F) * rho 6375)

def relationRow5977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6376) * ((-1 : F) * rho 6374 + (1 : F) * rho 6375) = ((2 : F) * rho 6373)

def relationRow5978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6377) * ((2 : F) + (1 : F) * rho 6374 + (-1 : F) * rho 6375) = ((1 : F) * rho 6374 + (1 : F) * rho 6375)

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 94⟩, ⟨(1 : F), 5070, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1308 rho) = ((1 : F) * rho 6378)

def relationRow5980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6378) * ((1 : F) * rho 6376 + (1 : F) * rho 6377) = ((1 : F) * rho 6379)

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6377) * (relationLc1309 rho) = ((1 : F) * rho 6380)

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6376) * (relationLc1310 rho) = ((1 : F) * rho 6381)

def relationRow5983 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6380) * ((1 : F) * rho 6381) = ((1 : F) * rho 6382)

def relationRow5984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6383) * ((1 : F) + (1 : F) * rho 6382) = ((1 : F) * rho 6380 + (1 : F) * rho 6381)

def relationRow5985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6384) * ((1 : F) + (-1 : F) * rho 6382) = ((1 : F) * rho 6379 + (-1 : F) * rho 6380 + (-1 : F) * rho 6381)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 94⟩], residual := [((1 : F), 6383)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2134) * (relationLc1311 rho) = ((1 : F) * rho 6385)

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 94⟩], residual := [((1 : F), 6384)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2134) * (relationLc1312 rho) = ((1 : F) * rho 6386)

def relationRow5988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6376) * ((1 : F) * rho 6377) = ((1 : F) * rho 6387)

def relationRow5989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6376) * ((1 : F) * rho 6376) = ((1 : F) * rho 6388)

def relationRow5990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6377) * ((1 : F) * rho 6377) = ((1 : F) * rho 6389)

def relationRow5991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6390) * ((-1 : F) * rho 6388 + (1 : F) * rho 6389) = ((2 : F) * rho 6387)

def relationRow5992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6391) * ((2 : F) + (1 : F) * rho 6388 + (-1 : F) * rho 6389) = ((1 : F) * rho 6388 + (1 : F) * rho 6389)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 95⟩, ⟨(1 : F), 5070, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5993 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1313 rho) = ((1 : F) * rho 6392)

def relationRow5994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6392) * ((1 : F) * rho 6390 + (1 : F) * rho 6391) = ((1 : F) * rho 6393)

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6391) * (relationLc1314 rho) = ((1 : F) * rho 6394)

def relationLc1315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6390) * (relationLc1315 rho) = ((1 : F) * rho 6395)

def relationRow5997 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6394) * ((1 : F) * rho 6395) = ((1 : F) * rho 6396)

def relationRow5998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6397) * ((1 : F) + (1 : F) * rho 6396) = ((1 : F) * rho 6394 + (1 : F) * rho 6395)

def relationRow5999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6398) * ((1 : F) + (-1 : F) * rho 6396) = ((1 : F) * rho 6393 + (-1 : F) * rho 6394 + (-1 : F) * rho 6395)

def relationLc1316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 95⟩], residual := [((1 : F), 6397)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2135) * (relationLc1316 rho) = ((1 : F) * rho 6399)

def relationLc1317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 95⟩], residual := [((1 : F), 6398)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2135) * (relationLc1317 rho) = ((1 : F) * rho 6400)

def relationRow6002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6390) * ((1 : F) * rho 6391) = ((1 : F) * rho 6401)

def relationRow6003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6390) * ((1 : F) * rho 6390) = ((1 : F) * rho 6402)

def relationRow6004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6391) * ((1 : F) * rho 6391) = ((1 : F) * rho 6403)

def relationRow6005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6404) * ((-1 : F) * rho 6402 + (1 : F) * rho 6403) = ((2 : F) * rho 6401)

def relationRow6006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6405) * ((2 : F) + (1 : F) * rho 6402 + (-1 : F) * rho 6403) = ((1 : F) * rho 6402 + (1 : F) * rho 6403)

def relationLc1318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 96⟩, ⟨(1 : F), 5070, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1318 rho) = ((1 : F) * rho 6406)

def relationRow6008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6406) * ((1 : F) * rho 6404 + (1 : F) * rho 6405) = ((1 : F) * rho 6407)

def relationLc1319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6405) * (relationLc1319 rho) = ((1 : F) * rho 6408)

def relationLc1320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6404) * (relationLc1320 rho) = ((1 : F) * rho 6409)

def relationRow6011 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6408) * ((1 : F) * rho 6409) = ((1 : F) * rho 6410)

def relationRow6012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6411) * ((1 : F) + (1 : F) * rho 6410) = ((1 : F) * rho 6408 + (1 : F) * rho 6409)

def relationRow6013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6412) * ((1 : F) + (-1 : F) * rho 6410) = ((1 : F) * rho 6407 + (-1 : F) * rho 6408 + (-1 : F) * rho 6409)

def relationLc1321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 96⟩], residual := [((1 : F), 6411)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2136) * (relationLc1321 rho) = ((1 : F) * rho 6413)

def relationLc1322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 96⟩], residual := [((1 : F), 6412)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2136) * (relationLc1322 rho) = ((1 : F) * rho 6414)

def relationRow6016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6404) * ((1 : F) * rho 6405) = ((1 : F) * rho 6415)

def relationRow6017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6404) * ((1 : F) * rho 6404) = ((1 : F) * rho 6416)

def relationRow6018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6405) * ((1 : F) * rho 6405) = ((1 : F) * rho 6417)

def relationRow6019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6418) * ((-1 : F) * rho 6416 + (1 : F) * rho 6417) = ((2 : F) * rho 6415)

def relationRow6020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6419) * ((2 : F) + (1 : F) * rho 6416 + (-1 : F) * rho 6417) = ((1 : F) * rho 6416 + (1 : F) * rho 6417)

def relationLc1323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 97⟩, ⟨(1 : F), 5070, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1323 rho) = ((1 : F) * rho 6420)

def relationRow6022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6420) * ((1 : F) * rho 6418 + (1 : F) * rho 6419) = ((1 : F) * rho 6421)

def relationLc1324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6419) * (relationLc1324 rho) = ((1 : F) * rho 6422)

def relationLc1325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6418) * (relationLc1325 rho) = ((1 : F) * rho 6423)

def relationRow6025 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6422) * ((1 : F) * rho 6423) = ((1 : F) * rho 6424)

def relationRow6026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6425) * ((1 : F) + (1 : F) * rho 6424) = ((1 : F) * rho 6422 + (1 : F) * rho 6423)

def relationRow6027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6426) * ((1 : F) + (-1 : F) * rho 6424) = ((1 : F) * rho 6421 + (-1 : F) * rho 6422 + (-1 : F) * rho 6423)

def relationLc1326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 97⟩], residual := [((1 : F), 6425)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2137) * (relationLc1326 rho) = ((1 : F) * rho 6427)

def relationLc1327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 97⟩], residual := [((1 : F), 6426)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2137) * (relationLc1327 rho) = ((1 : F) * rho 6428)

def relationRow6030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6418) * ((1 : F) * rho 6419) = ((1 : F) * rho 6429)

def relationRow6031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6418) * ((1 : F) * rho 6418) = ((1 : F) * rho 6430)

def relationRow6032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6419) * ((1 : F) * rho 6419) = ((1 : F) * rho 6431)

def relationRow6033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6432) * ((-1 : F) * rho 6430 + (1 : F) * rho 6431) = ((2 : F) * rho 6429)

def relationRow6034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6433) * ((2 : F) + (1 : F) * rho 6430 + (-1 : F) * rho 6431) = ((1 : F) * rho 6430 + (1 : F) * rho 6431)

def relationLc1328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 98⟩, ⟨(1 : F), 5070, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6035 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1328 rho) = ((1 : F) * rho 6434)

def relationRow6036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6434) * ((1 : F) * rho 6432 + (1 : F) * rho 6433) = ((1 : F) * rho 6435)

def relationLc1329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6433) * (relationLc1329 rho) = ((1 : F) * rho 6436)

def relationLc1330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6432) * (relationLc1330 rho) = ((1 : F) * rho 6437)

def relationRow6039 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6436) * ((1 : F) * rho 6437) = ((1 : F) * rho 6438)

def relationRow6040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6439) * ((1 : F) + (1 : F) * rho 6438) = ((1 : F) * rho 6436 + (1 : F) * rho 6437)

def relationRow6041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6440) * ((1 : F) + (-1 : F) * rho 6438) = ((1 : F) * rho 6435 + (-1 : F) * rho 6436 + (-1 : F) * rho 6437)

def relationLc1331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 98⟩], residual := [((1 : F), 6439)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2138) * (relationLc1331 rho) = ((1 : F) * rho 6441)

def relationLc1332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 98⟩], residual := [((1 : F), 6440)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2138) * (relationLc1332 rho) = ((1 : F) * rho 6442)

def relationRow6044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6432) * ((1 : F) * rho 6433) = ((1 : F) * rho 6443)

def relationRow6045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6432) * ((1 : F) * rho 6432) = ((1 : F) * rho 6444)

def relationRow6046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6433) * ((1 : F) * rho 6433) = ((1 : F) * rho 6445)

def relationRow6047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6446) * ((-1 : F) * rho 6444 + (1 : F) * rho 6445) = ((2 : F) * rho 6443)

def relationRow6048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6447) * ((2 : F) + (1 : F) * rho 6444 + (-1 : F) * rho 6445) = ((1 : F) * rho 6444 + (1 : F) * rho 6445)

def relationLc1333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 99⟩, ⟨(1 : F), 5070, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1333 rho) = ((1 : F) * rho 6448)

def relationRow6050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6448) * ((1 : F) * rho 6446 + (1 : F) * rho 6447) = ((1 : F) * rho 6449)

def relationLc1334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6447) * (relationLc1334 rho) = ((1 : F) * rho 6450)

def relationLc1335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6446) * (relationLc1335 rho) = ((1 : F) * rho 6451)

def relationRow6053 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6450) * ((1 : F) * rho 6451) = ((1 : F) * rho 6452)

def relationRow6054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6453) * ((1 : F) + (1 : F) * rho 6452) = ((1 : F) * rho 6450 + (1 : F) * rho 6451)

def relationRow6055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6454) * ((1 : F) + (-1 : F) * rho 6452) = ((1 : F) * rho 6449 + (-1 : F) * rho 6450 + (-1 : F) * rho 6451)

def relationLc1336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 99⟩], residual := [((1 : F), 6453)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2139) * (relationLc1336 rho) = ((1 : F) * rho 6455)

def relationLc1337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 99⟩], residual := [((1 : F), 6454)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2139) * (relationLc1337 rho) = ((1 : F) * rho 6456)

def relationRow6058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6446) * ((1 : F) * rho 6447) = ((1 : F) * rho 6457)

def relationRow6059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6446) * ((1 : F) * rho 6446) = ((1 : F) * rho 6458)

def relationRow6060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6447) * ((1 : F) * rho 6447) = ((1 : F) * rho 6459)

def relationRow6061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6460) * ((-1 : F) * rho 6458 + (1 : F) * rho 6459) = ((2 : F) * rho 6457)

def relationRow6062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6461) * ((2 : F) + (1 : F) * rho 6458 + (-1 : F) * rho 6459) = ((1 : F) * rho 6458 + (1 : F) * rho 6459)

def relationLc1338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 100⟩, ⟨(1 : F), 5070, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1338 rho) = ((1 : F) * rho 6462)

def relationRow6064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6462) * ((1 : F) * rho 6460 + (1 : F) * rho 6461) = ((1 : F) * rho 6463)

def relationLc1339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6461) * (relationLc1339 rho) = ((1 : F) * rho 6464)

def relationLc1340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6460) * (relationLc1340 rho) = ((1 : F) * rho 6465)

def relationRow6067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6464) * ((1 : F) * rho 6465) = ((1 : F) * rho 6466)

def relationRow6068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6467) * ((1 : F) + (1 : F) * rho 6466) = ((1 : F) * rho 6464 + (1 : F) * rho 6465)

def relationRow6069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6468) * ((1 : F) + (-1 : F) * rho 6466) = ((1 : F) * rho 6463 + (-1 : F) * rho 6464 + (-1 : F) * rho 6465)

def relationLc1341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 100⟩], residual := [((1 : F), 6467)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2140) * (relationLc1341 rho) = ((1 : F) * rho 6469)

def relationLc1342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 100⟩], residual := [((1 : F), 6468)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2140) * (relationLc1342 rho) = ((1 : F) * rho 6470)

def relationRow6072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6460) * ((1 : F) * rho 6461) = ((1 : F) * rho 6471)

def relationRow6073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6460) * ((1 : F) * rho 6460) = ((1 : F) * rho 6472)

def relationRow6074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6461) * ((1 : F) * rho 6461) = ((1 : F) * rho 6473)

def relationRow6075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6474) * ((-1 : F) * rho 6472 + (1 : F) * rho 6473) = ((2 : F) * rho 6471)

def relationRow6076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6475) * ((2 : F) + (1 : F) * rho 6472 + (-1 : F) * rho 6473) = ((1 : F) * rho 6472 + (1 : F) * rho 6473)

def relationPart0 (rho : Nat -> F) : Prop :=
    relationRow0 rho ∧
    relationRow1 rho ∧
    relationRow2 rho ∧
    relationRow3 rho ∧
    relationRow4 rho ∧
    relationRow5 rho ∧
    relationRow6 rho ∧
    relationRow7 rho ∧
    relationRow8 rho ∧
    relationRow9 rho ∧
    relationRow10 rho ∧
    relationRow11 rho ∧
    relationRow12 rho ∧
    relationRow13 rho ∧
    relationRow14 rho ∧
    relationRow15 rho ∧
    relationRow16 rho ∧
    relationRow17 rho ∧
    relationRow18 rho ∧
    relationRow19 rho ∧
    relationRow20 rho ∧
    relationRow21 rho ∧
    relationRow22 rho ∧
    relationRow23 rho ∧
    relationRow24 rho ∧
    relationRow25 rho ∧
    relationRow26 rho ∧
    relationRow27 rho ∧
    relationRow28 rho ∧
    relationRow29 rho ∧
    relationRow30 rho ∧
    relationRow31 rho ∧
    relationRow32 rho ∧
    relationRow33 rho ∧
    relationRow34 rho ∧
    relationRow35 rho ∧
    relationRow36 rho ∧
    relationRow37 rho ∧
    relationRow38 rho ∧
    relationRow39 rho ∧
    relationRow40 rho ∧
    relationRow41 rho ∧
    relationRow42 rho ∧
    relationRow43 rho ∧
    relationRow44 rho ∧
    relationRow45 rho ∧
    relationRow46 rho ∧
    relationRow47 rho ∧
    relationRow48 rho ∧
    relationRow49 rho ∧
    relationRow50 rho ∧
    relationRow51 rho ∧
    relationRow52 rho ∧
    relationRow53 rho ∧
    relationRow54 rho ∧
    relationRow55 rho ∧
    relationRow56 rho ∧
    relationRow57 rho ∧
    relationRow58 rho ∧
    relationRow59 rho ∧
    relationRow60 rho ∧
    relationRow61 rho ∧
    relationRow62 rho ∧
    relationRow63 rho ∧
    relationRow64 rho ∧
    relationRow65 rho ∧
    relationRow66 rho ∧
    relationRow67 rho ∧
    relationRow68 rho ∧
    relationRow69 rho ∧
    relationRow70 rho ∧
    relationRow71 rho ∧
    relationRow72 rho ∧
    relationRow73 rho ∧
    relationRow74 rho ∧
    relationRow75 rho ∧
    relationRow76 rho ∧
    relationRow77 rho ∧
    relationRow78 rho ∧
    relationRow79 rho

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
