import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs110

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5303) * ((1 : F) * rho 5303) = ((1 : F) * rho 5315)

def relationRow5822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5304) * ((1 : F) * rho 5304) = ((1 : F) * rho 5316)

def relationRow5823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5317) * ((-1 : F) * rho 5315 + (1 : F) * rho 5316) = ((2 : F) * rho 5314)

def relationRow5824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5318) * ((2 : F) + (1 : F) * rho 5315 + (-1 : F) * rho 5316) = ((1 : F) * rho 5315 + (1 : F) * rho 5316)

def relationLc1251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 83⟩, ⟨(1 : F), 4178, 14, 82⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5825 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1251 rho) = ((1 : F) * rho 5319)

def relationRow5826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5319) * ((1 : F) * rho 5317 + (1 : F) * rho 5318) = ((1 : F) * rho 5320)

def relationLc1252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 83⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5318) * (relationLc1252 rho) = ((1 : F) * rho 5321)

def relationLc1253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5317) * (relationLc1253 rho) = ((1 : F) * rho 5322)

def relationRow5829 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5321) * ((1 : F) * rho 5322) = ((1 : F) * rho 5323)

def relationRow5830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5324) * ((1 : F) + (1 : F) * rho 5323) = ((1 : F) * rho 5321 + (1 : F) * rho 5322)

def relationRow5831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5325) * ((1 : F) + (-1 : F) * rho 5323) = ((1 : F) * rho 5320 + (-1 : F) * rho 5321 + (-1 : F) * rho 5322)

def relationLc1254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 83⟩], residual := [((-1 : F), 2212), ((1 : F), 5324)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * (relationLc1254 rho) = ((1 : F) * rho 5326)

def relationLc1255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 83⟩], residual := [((1 : F), 5325)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * (relationLc1255 rho) = ((1 : F) * rho 5327)

def relationRow5834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5317) * ((1 : F) * rho 5318) = ((1 : F) * rho 5328)

def relationRow5835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5317) * ((1 : F) * rho 5317) = ((1 : F) * rho 5329)

def relationRow5836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5318) * ((1 : F) * rho 5318) = ((1 : F) * rho 5330)

def relationRow5837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5331) * ((-1 : F) * rho 5329 + (1 : F) * rho 5330) = ((2 : F) * rho 5328)

def relationRow5838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5332) * ((2 : F) + (1 : F) * rho 5329 + (-1 : F) * rho 5330) = ((1 : F) * rho 5329 + (1 : F) * rho 5330)

def relationLc1256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 84⟩, ⟨(1 : F), 4178, 14, 83⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5839 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1256 rho) = ((1 : F) * rho 5333)

def relationRow5840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5333) * ((1 : F) * rho 5331 + (1 : F) * rho 5332) = ((1 : F) * rho 5334)

def relationLc1257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 84⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5332) * (relationLc1257 rho) = ((1 : F) * rho 5335)

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5331) * (relationLc1258 rho) = ((1 : F) * rho 5336)

def relationRow5843 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5335) * ((1 : F) * rho 5336) = ((1 : F) * rho 5337)

def relationRow5844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5338) * ((1 : F) + (1 : F) * rho 5337) = ((1 : F) * rho 5335 + (1 : F) * rho 5336)

def relationRow5845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5339) * ((1 : F) + (-1 : F) * rho 5337) = ((1 : F) * rho 5334 + (-1 : F) * rho 5335 + (-1 : F) * rho 5336)

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 84⟩], residual := [((-1 : F), 2212), ((1 : F), 5338)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1217) * (relationLc1259 rho) = ((1 : F) * rho 5340)

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 84⟩], residual := [((1 : F), 5339)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1217) * (relationLc1260 rho) = ((1 : F) * rho 5341)

def relationRow5848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5331) * ((1 : F) * rho 5332) = ((1 : F) * rho 5342)

def relationRow5849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5331) * ((1 : F) * rho 5331) = ((1 : F) * rho 5343)

def relationRow5850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5332) * ((1 : F) * rho 5332) = ((1 : F) * rho 5344)

def relationRow5851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5345) * ((-1 : F) * rho 5343 + (1 : F) * rho 5344) = ((2 : F) * rho 5342)

def relationRow5852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5346) * ((2 : F) + (1 : F) * rho 5343 + (-1 : F) * rho 5344) = ((1 : F) * rho 5343 + (1 : F) * rho 5344)

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 85⟩, ⟨(1 : F), 4178, 14, 84⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5853 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1261 rho) = ((1 : F) * rho 5347)

def relationRow5854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5347) * ((1 : F) * rho 5345 + (1 : F) * rho 5346) = ((1 : F) * rho 5348)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 85⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5346) * (relationLc1262 rho) = ((1 : F) * rho 5349)

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5345) * (relationLc1263 rho) = ((1 : F) * rho 5350)

def relationRow5857 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5349) * ((1 : F) * rho 5350) = ((1 : F) * rho 5351)

def relationRow5858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5352) * ((1 : F) + (1 : F) * rho 5351) = ((1 : F) * rho 5349 + (1 : F) * rho 5350)

def relationRow5859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5353) * ((1 : F) + (-1 : F) * rho 5351) = ((1 : F) * rho 5348 + (-1 : F) * rho 5349 + (-1 : F) * rho 5350)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 85⟩], residual := [((-1 : F), 2212), ((1 : F), 5352)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1218) * (relationLc1264 rho) = ((1 : F) * rho 5354)

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 85⟩], residual := [((1 : F), 5353)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1218) * (relationLc1265 rho) = ((1 : F) * rho 5355)

def relationRow5862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5345) * ((1 : F) * rho 5346) = ((1 : F) * rho 5356)

def relationRow5863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5345) * ((1 : F) * rho 5345) = ((1 : F) * rho 5357)

def relationRow5864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5346) * ((1 : F) * rho 5346) = ((1 : F) * rho 5358)

def relationRow5865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5359) * ((-1 : F) * rho 5357 + (1 : F) * rho 5358) = ((2 : F) * rho 5356)

def relationRow5866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5360) * ((2 : F) + (1 : F) * rho 5357 + (-1 : F) * rho 5358) = ((1 : F) * rho 5357 + (1 : F) * rho 5358)

def relationLc1266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 86⟩, ⟨(1 : F), 4178, 14, 85⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5867 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1266 rho) = ((1 : F) * rho 5361)

def relationRow5868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5361) * ((1 : F) * rho 5359 + (1 : F) * rho 5360) = ((1 : F) * rho 5362)

def relationLc1267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 86⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5360) * (relationLc1267 rho) = ((1 : F) * rho 5363)

def relationLc1268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5359) * (relationLc1268 rho) = ((1 : F) * rho 5364)

def relationRow5871 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5363) * ((1 : F) * rho 5364) = ((1 : F) * rho 5365)

def relationRow5872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5366) * ((1 : F) + (1 : F) * rho 5365) = ((1 : F) * rho 5363 + (1 : F) * rho 5364)

def relationRow5873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5367) * ((1 : F) + (-1 : F) * rho 5365) = ((1 : F) * rho 5362 + (-1 : F) * rho 5363 + (-1 : F) * rho 5364)

def relationLc1269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 86⟩], residual := [((-1 : F), 2212), ((1 : F), 5366)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * (relationLc1269 rho) = ((1 : F) * rho 5368)

def relationLc1270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 86⟩], residual := [((1 : F), 5367)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * (relationLc1270 rho) = ((1 : F) * rho 5369)

def relationRow5876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5359) * ((1 : F) * rho 5360) = ((1 : F) * rho 5370)

def relationRow5877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5359) * ((1 : F) * rho 5359) = ((1 : F) * rho 5371)

def relationRow5878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5360) * ((1 : F) * rho 5360) = ((1 : F) * rho 5372)

def relationRow5879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5373) * ((-1 : F) * rho 5371 + (1 : F) * rho 5372) = ((2 : F) * rho 5370)

def relationRow5880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5374) * ((2 : F) + (1 : F) * rho 5371 + (-1 : F) * rho 5372) = ((1 : F) * rho 5371 + (1 : F) * rho 5372)

def relationLc1271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 87⟩, ⟨(1 : F), 4178, 14, 86⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1271 rho) = ((1 : F) * rho 5375)

def relationRow5882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5375) * ((1 : F) * rho 5373 + (1 : F) * rho 5374) = ((1 : F) * rho 5376)

def relationLc1272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 87⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5374) * (relationLc1272 rho) = ((1 : F) * rho 5377)

def relationLc1273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5373) * (relationLc1273 rho) = ((1 : F) * rho 5378)

def relationRow5885 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5377) * ((1 : F) * rho 5378) = ((1 : F) * rho 5379)

def relationRow5886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5380) * ((1 : F) + (1 : F) * rho 5379) = ((1 : F) * rho 5377 + (1 : F) * rho 5378)

def relationRow5887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5381) * ((1 : F) + (-1 : F) * rho 5379) = ((1 : F) * rho 5376 + (-1 : F) * rho 5377 + (-1 : F) * rho 5378)

def relationLc1274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 87⟩], residual := [((-1 : F), 2212), ((1 : F), 5380)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * (relationLc1274 rho) = ((1 : F) * rho 5382)

def relationLc1275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 87⟩], residual := [((1 : F), 5381)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * (relationLc1275 rho) = ((1 : F) * rho 5383)

def relationRow5890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5373) * ((1 : F) * rho 5374) = ((1 : F) * rho 5384)

def relationRow5891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5373) * ((1 : F) * rho 5373) = ((1 : F) * rho 5385)

def relationRow5892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5374) * ((1 : F) * rho 5374) = ((1 : F) * rho 5386)

def relationRow5893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5387) * ((-1 : F) * rho 5385 + (1 : F) * rho 5386) = ((2 : F) * rho 5384)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
