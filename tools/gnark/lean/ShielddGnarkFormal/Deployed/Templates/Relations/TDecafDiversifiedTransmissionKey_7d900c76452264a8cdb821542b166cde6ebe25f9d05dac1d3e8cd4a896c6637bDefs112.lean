import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs111

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5388) * ((2 : F) + (1 : F) * rho 5385 + (-1 : F) * rho 5386) = ((1 : F) * rho 5385 + (1 : F) * rho 5386)

def relationLc1276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 88⟩, ⟨(1 : F), 4178, 14, 87⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1276 rho) = ((1 : F) * rho 5389)

def relationRow5896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5389) * ((1 : F) * rho 5387 + (1 : F) * rho 5388) = ((1 : F) * rho 5390)

def relationLc1277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 88⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5388) * (relationLc1277 rho) = ((1 : F) * rho 5391)

def relationLc1278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5387) * (relationLc1278 rho) = ((1 : F) * rho 5392)

def relationRow5899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5391) * ((1 : F) * rho 5392) = ((1 : F) * rho 5393)

def relationRow5900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5394) * ((1 : F) + (1 : F) * rho 5393) = ((1 : F) * rho 5391 + (1 : F) * rho 5392)

def relationRow5901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5395) * ((1 : F) + (-1 : F) * rho 5393) = ((1 : F) * rho 5390 + (-1 : F) * rho 5391 + (-1 : F) * rho 5392)

def relationLc1279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 88⟩], residual := [((-1 : F), 2212), ((1 : F), 5394)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * (relationLc1279 rho) = ((1 : F) * rho 5396)

def relationLc1280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 88⟩], residual := [((1 : F), 5395)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * (relationLc1280 rho) = ((1 : F) * rho 5397)

def relationRow5904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5387) * ((1 : F) * rho 5388) = ((1 : F) * rho 5398)

def relationRow5905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5387) * ((1 : F) * rho 5387) = ((1 : F) * rho 5399)

def relationRow5906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5388) * ((1 : F) * rho 5388) = ((1 : F) * rho 5400)

def relationRow5907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5401) * ((-1 : F) * rho 5399 + (1 : F) * rho 5400) = ((2 : F) * rho 5398)

def relationRow5908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5402) * ((2 : F) + (1 : F) * rho 5399 + (-1 : F) * rho 5400) = ((1 : F) * rho 5399 + (1 : F) * rho 5400)

def relationLc1281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 89⟩, ⟨(1 : F), 4178, 14, 88⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1281 rho) = ((1 : F) * rho 5403)

def relationRow5910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5403) * ((1 : F) * rho 5401 + (1 : F) * rho 5402) = ((1 : F) * rho 5404)

def relationLc1282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 89⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5402) * (relationLc1282 rho) = ((1 : F) * rho 5405)

def relationLc1283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5401) * (relationLc1283 rho) = ((1 : F) * rho 5406)

def relationRow5913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5405) * ((1 : F) * rho 5406) = ((1 : F) * rho 5407)

def relationRow5914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5408) * ((1 : F) + (1 : F) * rho 5407) = ((1 : F) * rho 5405 + (1 : F) * rho 5406)

def relationRow5915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5409) * ((1 : F) + (-1 : F) * rho 5407) = ((1 : F) * rho 5404 + (-1 : F) * rho 5405 + (-1 : F) * rho 5406)

def relationLc1284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 89⟩], residual := [((-1 : F), 2212), ((1 : F), 5408)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1222) * (relationLc1284 rho) = ((1 : F) * rho 5410)

def relationLc1285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 89⟩], residual := [((1 : F), 5409)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1222) * (relationLc1285 rho) = ((1 : F) * rho 5411)

def relationRow5918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5401) * ((1 : F) * rho 5402) = ((1 : F) * rho 5412)

def relationRow5919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5401) * ((1 : F) * rho 5401) = ((1 : F) * rho 5413)

def relationRow5920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5402) * ((1 : F) * rho 5402) = ((1 : F) * rho 5414)

def relationRow5921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5415) * ((-1 : F) * rho 5413 + (1 : F) * rho 5414) = ((2 : F) * rho 5412)

def relationRow5922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5416) * ((2 : F) + (1 : F) * rho 5413 + (-1 : F) * rho 5414) = ((1 : F) * rho 5413 + (1 : F) * rho 5414)

def relationLc1286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 90⟩, ⟨(1 : F), 4178, 14, 89⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1286 rho) = ((1 : F) * rho 5417)

def relationRow5924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5417) * ((1 : F) * rho 5415 + (1 : F) * rho 5416) = ((1 : F) * rho 5418)

def relationLc1287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 90⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5416) * (relationLc1287 rho) = ((1 : F) * rho 5419)

def relationLc1288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5415) * (relationLc1288 rho) = ((1 : F) * rho 5420)

def relationRow5927 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5419) * ((1 : F) * rho 5420) = ((1 : F) * rho 5421)

def relationRow5928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5422) * ((1 : F) + (1 : F) * rho 5421) = ((1 : F) * rho 5419 + (1 : F) * rho 5420)

def relationRow5929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5423) * ((1 : F) + (-1 : F) * rho 5421) = ((1 : F) * rho 5418 + (-1 : F) * rho 5419 + (-1 : F) * rho 5420)

def relationLc1289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 90⟩], residual := [((-1 : F), 2212), ((1 : F), 5422)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1223) * (relationLc1289 rho) = ((1 : F) * rho 5424)

def relationLc1290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 90⟩], residual := [((1 : F), 5423)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1223) * (relationLc1290 rho) = ((1 : F) * rho 5425)

def relationRow5932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5415) * ((1 : F) * rho 5416) = ((1 : F) * rho 5426)

def relationRow5933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5415) * ((1 : F) * rho 5415) = ((1 : F) * rho 5427)

def relationRow5934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5416) * ((1 : F) * rho 5416) = ((1 : F) * rho 5428)

def relationRow5935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5429) * ((-1 : F) * rho 5427 + (1 : F) * rho 5428) = ((2 : F) * rho 5426)

def relationRow5936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5430) * ((2 : F) + (1 : F) * rho 5427 + (-1 : F) * rho 5428) = ((1 : F) * rho 5427 + (1 : F) * rho 5428)

def relationLc1291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 91⟩, ⟨(1 : F), 4178, 14, 90⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1291 rho) = ((1 : F) * rho 5431)

def relationRow5938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5431) * ((1 : F) * rho 5429 + (1 : F) * rho 5430) = ((1 : F) * rho 5432)

def relationLc1292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 91⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5430) * (relationLc1292 rho) = ((1 : F) * rho 5433)

def relationLc1293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5429) * (relationLc1293 rho) = ((1 : F) * rho 5434)

def relationRow5941 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5433) * ((1 : F) * rho 5434) = ((1 : F) * rho 5435)

def relationRow5942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5436) * ((1 : F) + (1 : F) * rho 5435) = ((1 : F) * rho 5433 + (1 : F) * rho 5434)

def relationRow5943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5437) * ((1 : F) + (-1 : F) * rho 5435) = ((1 : F) * rho 5432 + (-1 : F) * rho 5433 + (-1 : F) * rho 5434)

def relationLc1294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 91⟩], residual := [((-1 : F), 2212), ((1 : F), 5436)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1224) * (relationLc1294 rho) = ((1 : F) * rho 5438)

def relationLc1295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 91⟩], residual := [((1 : F), 5437)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1224) * (relationLc1295 rho) = ((1 : F) * rho 5439)

def relationRow5946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5429) * ((1 : F) * rho 5430) = ((1 : F) * rho 5440)

def relationRow5947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5429) * ((1 : F) * rho 5429) = ((1 : F) * rho 5441)

def relationRow5948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5430) * ((1 : F) * rho 5430) = ((1 : F) * rho 5442)

def relationRow5949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5443) * ((-1 : F) * rho 5441 + (1 : F) * rho 5442) = ((2 : F) * rho 5440)

def relationRow5950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5444) * ((2 : F) + (1 : F) * rho 5441 + (-1 : F) * rho 5442) = ((1 : F) * rho 5441 + (1 : F) * rho 5442)

def relationLc1296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 92⟩, ⟨(1 : F), 4178, 14, 91⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1296 rho) = ((1 : F) * rho 5445)

def relationRow5952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5445) * ((1 : F) * rho 5443 + (1 : F) * rho 5444) = ((1 : F) * rho 5446)

def relationLc1297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 92⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5444) * (relationLc1297 rho) = ((1 : F) * rho 5447)

def relationLc1298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5443) * (relationLc1298 rho) = ((1 : F) * rho 5448)

def relationRow5955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5447) * ((1 : F) * rho 5448) = ((1 : F) * rho 5449)

def relationRow5956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5450) * ((1 : F) + (1 : F) * rho 5449) = ((1 : F) * rho 5447 + (1 : F) * rho 5448)

def relationRow5957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5451) * ((1 : F) + (-1 : F) * rho 5449) = ((1 : F) * rho 5446 + (-1 : F) * rho 5447 + (-1 : F) * rho 5448)

def relationLc1299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 92⟩], residual := [((-1 : F), 2212), ((1 : F), 5450)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * (relationLc1299 rho) = ((1 : F) * rho 5452)

def relationLc1300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 92⟩], residual := [((1 : F), 5451)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * (relationLc1300 rho) = ((1 : F) * rho 5453)

def relationRow5960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5443) * ((1 : F) * rho 5444) = ((1 : F) * rho 5454)

def relationRow5961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5443) * ((1 : F) * rho 5443) = ((1 : F) * rho 5455)

def relationRow5962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5444) * ((1 : F) * rho 5444) = ((1 : F) * rho 5456)

def relationRow5963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5457) * ((-1 : F) * rho 5455 + (1 : F) * rho 5456) = ((2 : F) * rho 5454)

def relationRow5964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5458) * ((2 : F) + (1 : F) * rho 5455 + (-1 : F) * rho 5456) = ((1 : F) * rho 5455 + (1 : F) * rho 5456)

def relationLc1301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 93⟩, ⟨(1 : F), 4178, 14, 92⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
