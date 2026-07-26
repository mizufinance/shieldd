import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs109

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc1225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 77⟩], residual := [((1 : F), 5241)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * (relationLc1225 rho) = ((1 : F) * rho 5243)

def relationRow5750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5233) * ((1 : F) * rho 5234) = ((1 : F) * rho 5244)

def relationRow5751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5233) * ((1 : F) * rho 5233) = ((1 : F) * rho 5245)

def relationRow5752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5234) * ((1 : F) * rho 5234) = ((1 : F) * rho 5246)

def relationRow5753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5247) * ((-1 : F) * rho 5245 + (1 : F) * rho 5246) = ((2 : F) * rho 5244)

def relationRow5754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5248) * ((2 : F) + (1 : F) * rho 5245 + (-1 : F) * rho 5246) = ((1 : F) * rho 5245 + (1 : F) * rho 5246)

def relationLc1226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 78⟩, ⟨(1 : F), 4178, 14, 77⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5755 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1226 rho) = ((1 : F) * rho 5249)

def relationRow5756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5249) * ((1 : F) * rho 5247 + (1 : F) * rho 5248) = ((1 : F) * rho 5250)

def relationLc1227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 78⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5248) * (relationLc1227 rho) = ((1 : F) * rho 5251)

def relationLc1228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5247) * (relationLc1228 rho) = ((1 : F) * rho 5252)

def relationRow5759 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5251) * ((1 : F) * rho 5252) = ((1 : F) * rho 5253)

def relationRow5760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5254) * ((1 : F) + (1 : F) * rho 5253) = ((1 : F) * rho 5251 + (1 : F) * rho 5252)

def relationRow5761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5255) * ((1 : F) + (-1 : F) * rho 5253) = ((1 : F) * rho 5250 + (-1 : F) * rho 5251 + (-1 : F) * rho 5252)

def relationLc1229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 78⟩], residual := [((-1 : F), 2212), ((1 : F), 5254)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * (relationLc1229 rho) = ((1 : F) * rho 5256)

def relationLc1230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 78⟩], residual := [((1 : F), 5255)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * (relationLc1230 rho) = ((1 : F) * rho 5257)

def relationRow5764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5247) * ((1 : F) * rho 5248) = ((1 : F) * rho 5258)

def relationRow5765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5247) * ((1 : F) * rho 5247) = ((1 : F) * rho 5259)

def relationRow5766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5248) * ((1 : F) * rho 5248) = ((1 : F) * rho 5260)

def relationRow5767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5261) * ((-1 : F) * rho 5259 + (1 : F) * rho 5260) = ((2 : F) * rho 5258)

def relationRow5768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5262) * ((2 : F) + (1 : F) * rho 5259 + (-1 : F) * rho 5260) = ((1 : F) * rho 5259 + (1 : F) * rho 5260)

def relationLc1231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 79⟩, ⟨(1 : F), 4178, 14, 78⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1231 rho) = ((1 : F) * rho 5263)

def relationRow5770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5263) * ((1 : F) * rho 5261 + (1 : F) * rho 5262) = ((1 : F) * rho 5264)

def relationLc1232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 79⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5262) * (relationLc1232 rho) = ((1 : F) * rho 5265)

def relationLc1233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5261) * (relationLc1233 rho) = ((1 : F) * rho 5266)

def relationRow5773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5265) * ((1 : F) * rho 5266) = ((1 : F) * rho 5267)

def relationRow5774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5268) * ((1 : F) + (1 : F) * rho 5267) = ((1 : F) * rho 5265 + (1 : F) * rho 5266)

def relationRow5775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5269) * ((1 : F) + (-1 : F) * rho 5267) = ((1 : F) * rho 5264 + (-1 : F) * rho 5265 + (-1 : F) * rho 5266)

def relationLc1234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 79⟩], residual := [((-1 : F), 2212), ((1 : F), 5268)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1212) * (relationLc1234 rho) = ((1 : F) * rho 5270)

def relationLc1235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 79⟩], residual := [((1 : F), 5269)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1212) * (relationLc1235 rho) = ((1 : F) * rho 5271)

def relationRow5778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5261) * ((1 : F) * rho 5262) = ((1 : F) * rho 5272)

def relationRow5779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5261) * ((1 : F) * rho 5261) = ((1 : F) * rho 5273)

def relationRow5780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5262) * ((1 : F) * rho 5262) = ((1 : F) * rho 5274)

def relationRow5781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5275) * ((-1 : F) * rho 5273 + (1 : F) * rho 5274) = ((2 : F) * rho 5272)

def relationRow5782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5276) * ((2 : F) + (1 : F) * rho 5273 + (-1 : F) * rho 5274) = ((1 : F) * rho 5273 + (1 : F) * rho 5274)

def relationLc1236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 80⟩, ⟨(1 : F), 4178, 14, 79⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5783 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1236 rho) = ((1 : F) * rho 5277)

def relationRow5784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5277) * ((1 : F) * rho 5275 + (1 : F) * rho 5276) = ((1 : F) * rho 5278)

def relationLc1237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 80⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5276) * (relationLc1237 rho) = ((1 : F) * rho 5279)

def relationLc1238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5275) * (relationLc1238 rho) = ((1 : F) * rho 5280)

def relationRow5787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5279) * ((1 : F) * rho 5280) = ((1 : F) * rho 5281)

def relationRow5788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5282) * ((1 : F) + (1 : F) * rho 5281) = ((1 : F) * rho 5279 + (1 : F) * rho 5280)

def relationRow5789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5283) * ((1 : F) + (-1 : F) * rho 5281) = ((1 : F) * rho 5278 + (-1 : F) * rho 5279 + (-1 : F) * rho 5280)

def relationLc1239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 80⟩], residual := [((-1 : F), 2212), ((1 : F), 5282)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1213) * (relationLc1239 rho) = ((1 : F) * rho 5284)

def relationLc1240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 80⟩], residual := [((1 : F), 5283)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1213) * (relationLc1240 rho) = ((1 : F) * rho 5285)

def relationRow5792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5275) * ((1 : F) * rho 5276) = ((1 : F) * rho 5286)

def relationRow5793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5275) * ((1 : F) * rho 5275) = ((1 : F) * rho 5287)

def relationRow5794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5276) * ((1 : F) * rho 5276) = ((1 : F) * rho 5288)

def relationRow5795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5289) * ((-1 : F) * rho 5287 + (1 : F) * rho 5288) = ((2 : F) * rho 5286)

def relationRow5796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5290) * ((2 : F) + (1 : F) * rho 5287 + (-1 : F) * rho 5288) = ((1 : F) * rho 5287 + (1 : F) * rho 5288)

def relationLc1241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 81⟩, ⟨(1 : F), 4178, 14, 80⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1241 rho) = ((1 : F) * rho 5291)

def relationRow5798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5291) * ((1 : F) * rho 5289 + (1 : F) * rho 5290) = ((1 : F) * rho 5292)

def relationLc1242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 81⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5290) * (relationLc1242 rho) = ((1 : F) * rho 5293)

def relationLc1243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5289) * (relationLc1243 rho) = ((1 : F) * rho 5294)

def relationRow5801 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5293) * ((1 : F) * rho 5294) = ((1 : F) * rho 5295)

def relationRow5802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5296) * ((1 : F) + (1 : F) * rho 5295) = ((1 : F) * rho 5293 + (1 : F) * rho 5294)

def relationRow5803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5297) * ((1 : F) + (-1 : F) * rho 5295) = ((1 : F) * rho 5292 + (-1 : F) * rho 5293 + (-1 : F) * rho 5294)

def relationLc1244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 81⟩], residual := [((-1 : F), 2212), ((1 : F), 5296)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * (relationLc1244 rho) = ((1 : F) * rho 5298)

def relationLc1245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 81⟩], residual := [((1 : F), 5297)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * (relationLc1245 rho) = ((1 : F) * rho 5299)

def relationRow5806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5289) * ((1 : F) * rho 5290) = ((1 : F) * rho 5300)

def relationRow5807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5289) * ((1 : F) * rho 5289) = ((1 : F) * rho 5301)

def relationRow5808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5290) * ((1 : F) * rho 5290) = ((1 : F) * rho 5302)

def relationRow5809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5303) * ((-1 : F) * rho 5301 + (1 : F) * rho 5302) = ((2 : F) * rho 5300)

def relationRow5810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5304) * ((2 : F) + (1 : F) * rho 5301 + (-1 : F) * rho 5302) = ((1 : F) * rho 5301 + (1 : F) * rho 5302)

def relationLc1246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 82⟩, ⟨(1 : F), 4178, 14, 81⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5811 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1246 rho) = ((1 : F) * rho 5305)

def relationRow5812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5305) * ((1 : F) * rho 5303 + (1 : F) * rho 5304) = ((1 : F) * rho 5306)

def relationLc1247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 82⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5304) * (relationLc1247 rho) = ((1 : F) * rho 5307)

def relationLc1248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5303) * (relationLc1248 rho) = ((1 : F) * rho 5308)

def relationRow5815 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5307) * ((1 : F) * rho 5308) = ((1 : F) * rho 5309)

def relationRow5816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5310) * ((1 : F) + (1 : F) * rho 5309) = ((1 : F) * rho 5307 + (1 : F) * rho 5308)

def relationRow5817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5311) * ((1 : F) + (-1 : F) * rho 5309) = ((1 : F) * rho 5306 + (-1 : F) * rho 5307 + (-1 : F) * rho 5308)

def relationLc1249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 82⟩], residual := [((-1 : F), 2212), ((1 : F), 5310)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * (relationLc1249 rho) = ((1 : F) * rho 5312)

def relationLc1250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 82⟩], residual := [((1 : F), 5311)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * (relationLc1250 rho) = ((1 : F) * rho 5313)

def relationRow5820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5303) * ((1 : F) * rho 5304) = ((1 : F) * rho 5314)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
