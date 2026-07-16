import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs107

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5097) * ((1 : F) * rho 5098) = ((1 : F) * rho 5099)

def relationRow5606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5100) * ((1 : F) + (1 : F) * rho 5099) = ((1 : F) * rho 5097 + (1 : F) * rho 5098)

def relationRow5607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5101) * ((1 : F) + (-1 : F) * rho 5099) = ((1 : F) * rho 5096 + (-1 : F) * rho 5097 + (-1 : F) * rho 5098)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 67⟩], residual := [((-1 : F), 2212), ((1 : F), 5100)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * (relationLc1174 rho) = ((1 : F) * rho 5102)

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 67⟩], residual := [((1 : F), 5101)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * (relationLc1175 rho) = ((1 : F) * rho 5103)

def relationRow5610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5093) * ((1 : F) * rho 5094) = ((1 : F) * rho 5104)

def relationRow5611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5093) * ((1 : F) * rho 5093) = ((1 : F) * rho 5105)

def relationRow5612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5094) * ((1 : F) * rho 5094) = ((1 : F) * rho 5106)

def relationRow5613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5107) * ((-1 : F) * rho 5105 + (1 : F) * rho 5106) = ((2 : F) * rho 5104)

def relationRow5614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5108) * ((2 : F) + (1 : F) * rho 5105 + (-1 : F) * rho 5106) = ((1 : F) * rho 5105 + (1 : F) * rho 5106)

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 68⟩, ⟨(1 : F), 4178, 14, 67⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1176 rho) = ((1 : F) * rho 5109)

def relationRow5616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5109) * ((1 : F) * rho 5107 + (1 : F) * rho 5108) = ((1 : F) * rho 5110)

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 68⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5108) * (relationLc1177 rho) = ((1 : F) * rho 5111)

def relationLc1178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5107) * (relationLc1178 rho) = ((1 : F) * rho 5112)

def relationRow5619 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5111) * ((1 : F) * rho 5112) = ((1 : F) * rho 5113)

def relationRow5620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5114) * ((1 : F) + (1 : F) * rho 5113) = ((1 : F) * rho 5111 + (1 : F) * rho 5112)

def relationRow5621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5115) * ((1 : F) + (-1 : F) * rho 5113) = ((1 : F) * rho 5110 + (-1 : F) * rho 5111 + (-1 : F) * rho 5112)

def relationLc1179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 68⟩], residual := [((-1 : F), 2212), ((1 : F), 5114)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * (relationLc1179 rho) = ((1 : F) * rho 5116)

def relationLc1180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 68⟩], residual := [((1 : F), 5115)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * (relationLc1180 rho) = ((1 : F) * rho 5117)

def relationRow5624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5107) * ((1 : F) * rho 5108) = ((1 : F) * rho 5118)

def relationRow5625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5107) * ((1 : F) * rho 5107) = ((1 : F) * rho 5119)

def relationRow5626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5108) * ((1 : F) * rho 5108) = ((1 : F) * rho 5120)

def relationRow5627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5121) * ((-1 : F) * rho 5119 + (1 : F) * rho 5120) = ((2 : F) * rho 5118)

def relationRow5628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5122) * ((2 : F) + (1 : F) * rho 5119 + (-1 : F) * rho 5120) = ((1 : F) * rho 5119 + (1 : F) * rho 5120)

def relationLc1181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 69⟩, ⟨(1 : F), 4178, 14, 68⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1181 rho) = ((1 : F) * rho 5123)

def relationRow5630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5123) * ((1 : F) * rho 5121 + (1 : F) * rho 5122) = ((1 : F) * rho 5124)

def relationLc1182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 69⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5122) * (relationLc1182 rho) = ((1 : F) * rho 5125)

def relationLc1183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5121) * (relationLc1183 rho) = ((1 : F) * rho 5126)

def relationRow5633 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5125) * ((1 : F) * rho 5126) = ((1 : F) * rho 5127)

def relationRow5634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5128) * ((1 : F) + (1 : F) * rho 5127) = ((1 : F) * rho 5125 + (1 : F) * rho 5126)

def relationRow5635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5129) * ((1 : F) + (-1 : F) * rho 5127) = ((1 : F) * rho 5124 + (-1 : F) * rho 5125 + (-1 : F) * rho 5126)

def relationLc1184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 69⟩], residual := [((-1 : F), 2212), ((1 : F), 5128)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * (relationLc1184 rho) = ((1 : F) * rho 5130)

def relationLc1185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 69⟩], residual := [((1 : F), 5129)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * (relationLc1185 rho) = ((1 : F) * rho 5131)

def relationRow5638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5121) * ((1 : F) * rho 5122) = ((1 : F) * rho 5132)

def relationRow5639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5121) * ((1 : F) * rho 5121) = ((1 : F) * rho 5133)

def relationRow5640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5122) * ((1 : F) * rho 5122) = ((1 : F) * rho 5134)

def relationRow5641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5135) * ((-1 : F) * rho 5133 + (1 : F) * rho 5134) = ((2 : F) * rho 5132)

def relationRow5642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5136) * ((2 : F) + (1 : F) * rho 5133 + (-1 : F) * rho 5134) = ((1 : F) * rho 5133 + (1 : F) * rho 5134)

def relationLc1186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 70⟩, ⟨(1 : F), 4178, 14, 69⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1186 rho) = ((1 : F) * rho 5137)

def relationRow5644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5137) * ((1 : F) * rho 5135 + (1 : F) * rho 5136) = ((1 : F) * rho 5138)

def relationLc1187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 70⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5136) * (relationLc1187 rho) = ((1 : F) * rho 5139)

def relationLc1188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5135) * (relationLc1188 rho) = ((1 : F) * rho 5140)

def relationRow5647 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5139) * ((1 : F) * rho 5140) = ((1 : F) * rho 5141)

def relationRow5648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5142) * ((1 : F) + (1 : F) * rho 5141) = ((1 : F) * rho 5139 + (1 : F) * rho 5140)

def relationRow5649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5143) * ((1 : F) + (-1 : F) * rho 5141) = ((1 : F) * rho 5138 + (-1 : F) * rho 5139 + (-1 : F) * rho 5140)

def relationLc1189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 70⟩], residual := [((-1 : F), 2212), ((1 : F), 5142)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * (relationLc1189 rho) = ((1 : F) * rho 5144)

def relationLc1190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 70⟩], residual := [((1 : F), 5143)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * (relationLc1190 rho) = ((1 : F) * rho 5145)

def relationRow5652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5135) * ((1 : F) * rho 5136) = ((1 : F) * rho 5146)

def relationRow5653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5135) * ((1 : F) * rho 5135) = ((1 : F) * rho 5147)

def relationRow5654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5136) * ((1 : F) * rho 5136) = ((1 : F) * rho 5148)

def relationRow5655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5149) * ((-1 : F) * rho 5147 + (1 : F) * rho 5148) = ((2 : F) * rho 5146)

def relationRow5656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5150) * ((2 : F) + (1 : F) * rho 5147 + (-1 : F) * rho 5148) = ((1 : F) * rho 5147 + (1 : F) * rho 5148)

def relationLc1191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 71⟩, ⟨(1 : F), 4178, 14, 70⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1191 rho) = ((1 : F) * rho 5151)

def relationRow5658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5151) * ((1 : F) * rho 5149 + (1 : F) * rho 5150) = ((1 : F) * rho 5152)

def relationLc1192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 71⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5150) * (relationLc1192 rho) = ((1 : F) * rho 5153)

def relationLc1193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5149) * (relationLc1193 rho) = ((1 : F) * rho 5154)

def relationRow5661 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5153) * ((1 : F) * rho 5154) = ((1 : F) * rho 5155)

def relationRow5662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5156) * ((1 : F) + (1 : F) * rho 5155) = ((1 : F) * rho 5153 + (1 : F) * rho 5154)

def relationRow5663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5157) * ((1 : F) + (-1 : F) * rho 5155) = ((1 : F) * rho 5152 + (-1 : F) * rho 5153 + (-1 : F) * rho 5154)

def relationLc1194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 71⟩], residual := [((-1 : F), 2212), ((1 : F), 5156)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * (relationLc1194 rho) = ((1 : F) * rho 5158)

def relationLc1195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 71⟩], residual := [((1 : F), 5157)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * (relationLc1195 rho) = ((1 : F) * rho 5159)

def relationRow5666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5149) * ((1 : F) * rho 5150) = ((1 : F) * rho 5160)

def relationRow5667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5149) * ((1 : F) * rho 5149) = ((1 : F) * rho 5161)

def relationRow5668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5150) * ((1 : F) * rho 5150) = ((1 : F) * rho 5162)

def relationRow5669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5163) * ((-1 : F) * rho 5161 + (1 : F) * rho 5162) = ((2 : F) * rho 5160)

def relationRow5670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5164) * ((2 : F) + (1 : F) * rho 5161 + (-1 : F) * rho 5162) = ((1 : F) * rho 5161 + (1 : F) * rho 5162)

def relationLc1196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 72⟩, ⟨(1 : F), 4178, 14, 71⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5671 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1196 rho) = ((1 : F) * rho 5165)

def relationRow5672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5165) * ((1 : F) * rho 5163 + (1 : F) * rho 5164) = ((1 : F) * rho 5166)

def relationLc1197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 72⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5164) * (relationLc1197 rho) = ((1 : F) * rho 5167)

def relationLc1198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5163) * (relationLc1198 rho) = ((1 : F) * rho 5168)

def relationRow5675 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5167) * ((1 : F) * rho 5168) = ((1 : F) * rho 5169)

def relationRow5676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5170) * ((1 : F) + (1 : F) * rho 5169) = ((1 : F) * rho 5167 + (1 : F) * rho 5168)

def relationRow5677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5171) * ((1 : F) + (-1 : F) * rho 5169) = ((1 : F) * rho 5166 + (-1 : F) * rho 5167 + (-1 : F) * rho 5168)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
