import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs108

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc1199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 72⟩], residual := [((-1 : F), 2212), ((1 : F), 5170)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * (relationLc1199 rho) = ((1 : F) * rho 5172)

def relationLc1200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 72⟩], residual := [((1 : F), 5171)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * (relationLc1200 rho) = ((1 : F) * rho 5173)

def relationRow5680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5163) * ((1 : F) * rho 5164) = ((1 : F) * rho 5174)

def relationRow5681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5163) * ((1 : F) * rho 5163) = ((1 : F) * rho 5175)

def relationRow5682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5164) * ((1 : F) * rho 5164) = ((1 : F) * rho 5176)

def relationRow5683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5177) * ((-1 : F) * rho 5175 + (1 : F) * rho 5176) = ((2 : F) * rho 5174)

def relationRow5684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5178) * ((2 : F) + (1 : F) * rho 5175 + (-1 : F) * rho 5176) = ((1 : F) * rho 5175 + (1 : F) * rho 5176)

def relationLc1201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 73⟩, ⟨(1 : F), 4178, 14, 72⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5685 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1201 rho) = ((1 : F) * rho 5179)

def relationRow5686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5179) * ((1 : F) * rho 5177 + (1 : F) * rho 5178) = ((1 : F) * rho 5180)

def relationLc1202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 73⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5178) * (relationLc1202 rho) = ((1 : F) * rho 5181)

def relationLc1203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5177) * (relationLc1203 rho) = ((1 : F) * rho 5182)

def relationRow5689 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5181) * ((1 : F) * rho 5182) = ((1 : F) * rho 5183)

def relationRow5690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5184) * ((1 : F) + (1 : F) * rho 5183) = ((1 : F) * rho 5181 + (1 : F) * rho 5182)

def relationRow5691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5185) * ((1 : F) + (-1 : F) * rho 5183) = ((1 : F) * rho 5180 + (-1 : F) * rho 5181 + (-1 : F) * rho 5182)

def relationLc1204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 73⟩], residual := [((-1 : F), 2212), ((1 : F), 5184)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * (relationLc1204 rho) = ((1 : F) * rho 5186)

def relationLc1205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 73⟩], residual := [((1 : F), 5185)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * (relationLc1205 rho) = ((1 : F) * rho 5187)

def relationRow5694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5177) * ((1 : F) * rho 5178) = ((1 : F) * rho 5188)

def relationRow5695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5177) * ((1 : F) * rho 5177) = ((1 : F) * rho 5189)

def relationRow5696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5178) * ((1 : F) * rho 5178) = ((1 : F) * rho 5190)

def relationRow5697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5191) * ((-1 : F) * rho 5189 + (1 : F) * rho 5190) = ((2 : F) * rho 5188)

def relationRow5698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5192) * ((2 : F) + (1 : F) * rho 5189 + (-1 : F) * rho 5190) = ((1 : F) * rho 5189 + (1 : F) * rho 5190)

def relationLc1206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 74⟩, ⟨(1 : F), 4178, 14, 73⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5699 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1206 rho) = ((1 : F) * rho 5193)

def relationRow5700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5193) * ((1 : F) * rho 5191 + (1 : F) * rho 5192) = ((1 : F) * rho 5194)

def relationLc1207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 74⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5192) * (relationLc1207 rho) = ((1 : F) * rho 5195)

def relationLc1208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5191) * (relationLc1208 rho) = ((1 : F) * rho 5196)

def relationRow5703 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5195) * ((1 : F) * rho 5196) = ((1 : F) * rho 5197)

def relationRow5704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5198) * ((1 : F) + (1 : F) * rho 5197) = ((1 : F) * rho 5195 + (1 : F) * rho 5196)

def relationRow5705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5199) * ((1 : F) + (-1 : F) * rho 5197) = ((1 : F) * rho 5194 + (-1 : F) * rho 5195 + (-1 : F) * rho 5196)

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 74⟩], residual := [((-1 : F), 2212), ((1 : F), 5198)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * (relationLc1209 rho) = ((1 : F) * rho 5200)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 74⟩], residual := [((1 : F), 5199)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * (relationLc1210 rho) = ((1 : F) * rho 5201)

def relationRow5708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5191) * ((1 : F) * rho 5192) = ((1 : F) * rho 5202)

def relationRow5709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5191) * ((1 : F) * rho 5191) = ((1 : F) * rho 5203)

def relationRow5710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5192) * ((1 : F) * rho 5192) = ((1 : F) * rho 5204)

def relationRow5711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((-1 : F) * rho 5203 + (1 : F) * rho 5204) = ((2 : F) * rho 5202)

def relationRow5712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5206) * ((2 : F) + (1 : F) * rho 5203 + (-1 : F) * rho 5204) = ((1 : F) * rho 5203 + (1 : F) * rho 5204)

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 75⟩, ⟨(1 : F), 4178, 14, 74⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5713 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1211 rho) = ((1 : F) * rho 5207)

def relationRow5714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5207) * ((1 : F) * rho 5205 + (1 : F) * rho 5206) = ((1 : F) * rho 5208)

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 75⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5206) * (relationLc1212 rho) = ((1 : F) * rho 5209)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * (relationLc1213 rho) = ((1 : F) * rho 5210)

def relationRow5717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5209) * ((1 : F) * rho 5210) = ((1 : F) * rho 5211)

def relationRow5718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5212) * ((1 : F) + (1 : F) * rho 5211) = ((1 : F) * rho 5209 + (1 : F) * rho 5210)

def relationRow5719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5213) * ((1 : F) + (-1 : F) * rho 5211) = ((1 : F) * rho 5208 + (-1 : F) * rho 5209 + (-1 : F) * rho 5210)

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 75⟩], residual := [((-1 : F), 2212), ((1 : F), 5212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * (relationLc1214 rho) = ((1 : F) * rho 5214)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 75⟩], residual := [((1 : F), 5213)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * (relationLc1215 rho) = ((1 : F) * rho 5215)

def relationRow5722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((1 : F) * rho 5206) = ((1 : F) * rho 5216)

def relationRow5723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((1 : F) * rho 5205) = ((1 : F) * rho 5217)

def relationRow5724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5206) * ((1 : F) * rho 5206) = ((1 : F) * rho 5218)

def relationRow5725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5219) * ((-1 : F) * rho 5217 + (1 : F) * rho 5218) = ((2 : F) * rho 5216)

def relationRow5726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5220) * ((2 : F) + (1 : F) * rho 5217 + (-1 : F) * rho 5218) = ((1 : F) * rho 5217 + (1 : F) * rho 5218)

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 76⟩, ⟨(1 : F), 4178, 14, 75⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5727 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1216 rho) = ((1 : F) * rho 5221)

def relationRow5728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5221) * ((1 : F) * rho 5219 + (1 : F) * rho 5220) = ((1 : F) * rho 5222)

def relationLc1217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 76⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5220) * (relationLc1217 rho) = ((1 : F) * rho 5223)

def relationLc1218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5219) * (relationLc1218 rho) = ((1 : F) * rho 5224)

def relationRow5731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5223) * ((1 : F) * rho 5224) = ((1 : F) * rho 5225)

def relationRow5732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5226) * ((1 : F) + (1 : F) * rho 5225) = ((1 : F) * rho 5223 + (1 : F) * rho 5224)

def relationRow5733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5227) * ((1 : F) + (-1 : F) * rho 5225) = ((1 : F) * rho 5222 + (-1 : F) * rho 5223 + (-1 : F) * rho 5224)

def relationLc1219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 76⟩], residual := [((-1 : F), 2212), ((1 : F), 5226)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * (relationLc1219 rho) = ((1 : F) * rho 5228)

def relationLc1220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 76⟩], residual := [((1 : F), 5227)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * (relationLc1220 rho) = ((1 : F) * rho 5229)

def relationRow5736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5219) * ((1 : F) * rho 5220) = ((1 : F) * rho 5230)

def relationRow5737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5219) * ((1 : F) * rho 5219) = ((1 : F) * rho 5231)

def relationRow5738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5220) * ((1 : F) * rho 5220) = ((1 : F) * rho 5232)

def relationRow5739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5233) * ((-1 : F) * rho 5231 + (1 : F) * rho 5232) = ((2 : F) * rho 5230)

def relationRow5740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5234) * ((2 : F) + (1 : F) * rho 5231 + (-1 : F) * rho 5232) = ((1 : F) * rho 5231 + (1 : F) * rho 5232)

def relationLc1221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 77⟩, ⟨(1 : F), 4178, 14, 76⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1221 rho) = ((1 : F) * rho 5235)

def relationRow5742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5235) * ((1 : F) * rho 5233 + (1 : F) * rho 5234) = ((1 : F) * rho 5236)

def relationLc1222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 77⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5234) * (relationLc1222 rho) = ((1 : F) * rho 5237)

def relationLc1223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5233) * (relationLc1223 rho) = ((1 : F) * rho 5238)

def relationRow5745 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5237) * ((1 : F) * rho 5238) = ((1 : F) * rho 5239)

def relationRow5746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5240) * ((1 : F) + (1 : F) * rho 5239) = ((1 : F) * rho 5237 + (1 : F) * rho 5238)

def relationRow5747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5241) * ((1 : F) + (-1 : F) * rho 5239) = ((1 : F) * rho 5236 + (-1 : F) * rho 5237 + (-1 : F) * rho 5238)

def relationLc1224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 77⟩], residual := [((-1 : F), 2212), ((1 : F), 5240)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * (relationLc1224 rho) = ((1 : F) * rho 5242)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
