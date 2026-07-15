import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6Defs11

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6

def relationRow4982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5369) * ((1 : F) * rho 5369) = ((1 : F) * rho 5381)

def relationRow4983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5382) * ((-1 : F) * rho 5380 + (1 : F) * rho 5381) = ((2 : F) * rho 5379)

def relationRow4984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5383) * ((2 : F) + (1 : F) * rho 5380 + (-1 : F) * rho 5381) = ((1 : F) * rho 5380 + (1 : F) * rho 5381)

def relationRow4985 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 23⟩, ⟨(1 : F), 5070, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5384)

def relationRow4986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5384) * ((1 : F) * rho 5382 + (1 : F) * rho 5383) = ((1 : F) * rho 5385)

def relationRow4987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5383) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5386)

def relationRow4988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5382) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5387)

def relationRow4989 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5386) * ((1 : F) * rho 5387) = ((1 : F) * rho 5388)

def relationRow4990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5389) * ((1 : F) + (1 : F) * rho 5388) = ((1 : F) * rho 5386 + (1 : F) * rho 5387)

def relationRow4991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5390) * ((1 : F) + (-1 : F) * rho 5388) = ((1 : F) * rho 5385 + (-1 : F) * rho 5386 + (-1 : F) * rho 5387)

def relationRow4992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 23⟩], residual := [((1 : F), 5389)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5391)

def relationRow4993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 23⟩], residual := [((1 : F), 5390)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5392)

def relationRow4994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5382) * ((1 : F) * rho 5383) = ((1 : F) * rho 5393)

def relationRow4995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5382) * ((1 : F) * rho 5382) = ((1 : F) * rho 5394)

def relationRow4996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5383) * ((1 : F) * rho 5383) = ((1 : F) * rho 5395)

def relationRow4997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5396) * ((-1 : F) * rho 5394 + (1 : F) * rho 5395) = ((2 : F) * rho 5393)

def relationRow4998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5397) * ((2 : F) + (1 : F) * rho 5394 + (-1 : F) * rho 5395) = ((1 : F) * rho 5394 + (1 : F) * rho 5395)

def relationRow4999 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 24⟩, ⟨(1 : F), 5070, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5398)

def relationRow5000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5398) * ((1 : F) * rho 5396 + (1 : F) * rho 5397) = ((1 : F) * rho 5399)

def relationRow5001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5400)

def relationRow5002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5396) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5401)

def relationRow5003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5400) * ((1 : F) * rho 5401) = ((1 : F) * rho 5402)

def relationRow5004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5403) * ((1 : F) + (1 : F) * rho 5402) = ((1 : F) * rho 5400 + (1 : F) * rho 5401)

def relationRow5005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5404) * ((1 : F) + (-1 : F) * rho 5402) = ((1 : F) * rho 5399 + (-1 : F) * rho 5400 + (-1 : F) * rho 5401)

def relationRow5006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 24⟩], residual := [((1 : F), 5403)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5405)

def relationRow5007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 24⟩], residual := [((1 : F), 5404)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5406)

def relationRow5008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5396) * ((1 : F) * rho 5397) = ((1 : F) * rho 5407)

def relationRow5009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5396) * ((1 : F) * rho 5396) = ((1 : F) * rho 5408)

def relationRow5010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5397) * ((1 : F) * rho 5397) = ((1 : F) * rho 5409)

def relationRow5011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5410) * ((-1 : F) * rho 5408 + (1 : F) * rho 5409) = ((2 : F) * rho 5407)

def relationRow5012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5411) * ((2 : F) + (1 : F) * rho 5408 + (-1 : F) * rho 5409) = ((1 : F) * rho 5408 + (1 : F) * rho 5409)

def relationRow5013 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 25⟩, ⟨(1 : F), 5070, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5412)

def relationRow5014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5412) * ((1 : F) * rho 5410 + (1 : F) * rho 5411) = ((1 : F) * rho 5413)

def relationRow5015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5411) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5414)

def relationRow5016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5410) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5415)

def relationRow5017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5414) * ((1 : F) * rho 5415) = ((1 : F) * rho 5416)

def relationRow5018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5417) * ((1 : F) + (1 : F) * rho 5416) = ((1 : F) * rho 5414 + (1 : F) * rho 5415)

def relationRow5019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5418) * ((1 : F) + (-1 : F) * rho 5416) = ((1 : F) * rho 5413 + (-1 : F) * rho 5414 + (-1 : F) * rho 5415)

def relationRow5020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 25⟩], residual := [((1 : F), 5417)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5419)

def relationRow5021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 25⟩], residual := [((1 : F), 5418)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5420)

def relationRow5022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5410) * ((1 : F) * rho 5411) = ((1 : F) * rho 5421)

def relationRow5023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5410) * ((1 : F) * rho 5410) = ((1 : F) * rho 5422)

def relationRow5024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5411) * ((1 : F) * rho 5411) = ((1 : F) * rho 5423)

def relationRow5025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5424) * ((-1 : F) * rho 5422 + (1 : F) * rho 5423) = ((2 : F) * rho 5421)

def relationRow5026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5425) * ((2 : F) + (1 : F) * rho 5422 + (-1 : F) * rho 5423) = ((1 : F) * rho 5422 + (1 : F) * rho 5423)

def relationRow5027 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 26⟩, ⟨(1 : F), 5070, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5426)

def relationRow5028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5426) * ((1 : F) * rho 5424 + (1 : F) * rho 5425) = ((1 : F) * rho 5427)

def relationRow5029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5425) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5428)

def relationRow5030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5424) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5429)

def relationRow5031 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5428) * ((1 : F) * rho 5429) = ((1 : F) * rho 5430)

def relationRow5032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5431) * ((1 : F) + (1 : F) * rho 5430) = ((1 : F) * rho 5428 + (1 : F) * rho 5429)

def relationRow5033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5432) * ((1 : F) + (-1 : F) * rho 5430) = ((1 : F) * rho 5427 + (-1 : F) * rho 5428 + (-1 : F) * rho 5429)

def relationRow5034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 26⟩], residual := [((1 : F), 5431)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5433)

def relationRow5035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 26⟩], residual := [((1 : F), 5432)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5434)

def relationRow5036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5424) * ((1 : F) * rho 5425) = ((1 : F) * rho 5435)

def relationRow5037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5424) * ((1 : F) * rho 5424) = ((1 : F) * rho 5436)

def relationRow5038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5425) * ((1 : F) * rho 5425) = ((1 : F) * rho 5437)

def relationRow5039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5438) * ((-1 : F) * rho 5436 + (1 : F) * rho 5437) = ((2 : F) * rho 5435)

def relationRow5040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5439) * ((2 : F) + (1 : F) * rho 5436 + (-1 : F) * rho 5437) = ((1 : F) * rho 5436 + (1 : F) * rho 5437)

def relationRow5041 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 27⟩, ⟨(1 : F), 5070, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5440)

def relationRow5042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5440) * ((1 : F) * rho 5438 + (1 : F) * rho 5439) = ((1 : F) * rho 5441)

def relationRow5043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5439) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5442)

def relationRow5044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5438) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5443)

def relationRow5045 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5442) * ((1 : F) * rho 5443) = ((1 : F) * rho 5444)

def relationRow5046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5445) * ((1 : F) + (1 : F) * rho 5444) = ((1 : F) * rho 5442 + (1 : F) * rho 5443)

def relationRow5047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5446) * ((1 : F) + (-1 : F) * rho 5444) = ((1 : F) * rho 5441 + (-1 : F) * rho 5442 + (-1 : F) * rho 5443)

def relationRow5048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 27⟩], residual := [((1 : F), 5445)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5447)

def relationRow5049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 27⟩], residual := [((1 : F), 5446)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5448)

def relationRow5050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5438) * ((1 : F) * rho 5439) = ((1 : F) * rho 5449)

def relationRow5051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5438) * ((1 : F) * rho 5438) = ((1 : F) * rho 5450)

def relationRow5052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5439) * ((1 : F) * rho 5439) = ((1 : F) * rho 5451)

def relationRow5053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5452) * ((-1 : F) * rho 5450 + (1 : F) * rho 5451) = ((2 : F) * rho 5449)

def relationRow5054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5453) * ((2 : F) + (1 : F) * rho 5450 + (-1 : F) * rho 5451) = ((1 : F) * rho 5450 + (1 : F) * rho 5451)

def relationRow5055 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 28⟩, ⟨(1 : F), 5070, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5454)

def relationRow5056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5454) * ((1 : F) * rho 5452 + (1 : F) * rho 5453) = ((1 : F) * rho 5455)

def relationRow5057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5453) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5456)

def relationRow5058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5452) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5457)

def relationRow5059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5456) * ((1 : F) * rho 5457) = ((1 : F) * rho 5458)

def relationRow5060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5459) * ((1 : F) + (1 : F) * rho 5458) = ((1 : F) * rho 5456 + (1 : F) * rho 5457)

def relationRow5061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5460) * ((1 : F) + (-1 : F) * rho 5458) = ((1 : F) * rho 5455 + (-1 : F) * rho 5456 + (-1 : F) * rho 5457)

def relationRow5062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 28⟩], residual := [((1 : F), 5459)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5461)

def relationRow5063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 28⟩], residual := [((1 : F), 5460)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5462)

def relationRow5064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5452) * ((1 : F) * rho 5453) = ((1 : F) * rho 5463)

def relationRow5065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5452) * ((1 : F) * rho 5452) = ((1 : F) * rho 5464)

def relationRow5066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5453) * ((1 : F) * rho 5453) = ((1 : F) * rho 5465)

def relationRow5067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5466) * ((-1 : F) * rho 5464 + (1 : F) * rho 5465) = ((2 : F) * rho 5463)

def relationRow5068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5467) * ((2 : F) + (1 : F) * rho 5464 + (-1 : F) * rho 5465) = ((1 : F) * rho 5464 + (1 : F) * rho 5465)

def relationRow5069 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 29⟩, ⟨(1 : F), 5070, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5468)

def relationRow5070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5468) * ((1 : F) * rho 5466 + (1 : F) * rho 5467) = ((1 : F) * rho 5469)

def relationRow5071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5467) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5470)

def relationRow5072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5466) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5471)

def relationRow5073 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5470) * ((1 : F) * rho 5471) = ((1 : F) * rho 5472)

def relationRow5074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5473) * ((1 : F) + (1 : F) * rho 5472) = ((1 : F) * rho 5470 + (1 : F) * rho 5471)

def relationRow5075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5474) * ((1 : F) + (-1 : F) * rho 5472) = ((1 : F) * rho 5469 + (-1 : F) * rho 5470 + (-1 : F) * rho 5471)

def relationRow5076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 29⟩], residual := [((1 : F), 5473)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5475)

def relationRow5077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 29⟩], residual := [((1 : F), 5474)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5476)

def relationRow5078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5466) * ((1 : F) * rho 5467) = ((1 : F) * rho 5477)

def relationRow5079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5466) * ((1 : F) * rho 5466) = ((1 : F) * rho 5478)

def relationRow5080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5467) * ((1 : F) * rho 5467) = ((1 : F) * rho 5479)

def relationRow5081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * ((-1 : F) * rho 5478 + (1 : F) * rho 5479) = ((2 : F) * rho 5477)

def relationRow5082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5481) * ((2 : F) + (1 : F) * rho 5478 + (-1 : F) * rho 5479) = ((1 : F) * rho 5478 + (1 : F) * rho 5479)

def relationRow5083 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 30⟩, ⟨(1 : F), 5070, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5482)

def relationRow5084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5482) * ((1 : F) * rho 5480 + (1 : F) * rho 5481) = ((1 : F) * rho 5483)

def relationRow5085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5481) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5484)

def relationRow5086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5485)

def relationRow5087 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5484) * ((1 : F) * rho 5485) = ((1 : F) * rho 5486)

def relationRow5088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5487) * ((1 : F) + (1 : F) * rho 5486) = ((1 : F) * rho 5484 + (1 : F) * rho 5485)

def relationRow5089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5488) * ((1 : F) + (-1 : F) * rho 5486) = ((1 : F) * rho 5483 + (-1 : F) * rho 5484 + (-1 : F) * rho 5485)

def relationRow5090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 30⟩], residual := [((1 : F), 5487)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5489)

def relationRow5091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 30⟩], residual := [((1 : F), 5488)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5490)

def relationRow5092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * ((1 : F) * rho 5481) = ((1 : F) * rho 5491)

def relationRow5093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * ((1 : F) * rho 5480) = ((1 : F) * rho 5492)

def relationRow5094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5481) * ((1 : F) * rho 5481) = ((1 : F) * rho 5493)

def relationRow5095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5494) * ((-1 : F) * rho 5492 + (1 : F) * rho 5493) = ((2 : F) * rho 5491)

def relationRow5096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5495) * ((2 : F) + (1 : F) * rho 5492 + (-1 : F) * rho 5493) = ((1 : F) * rho 5492 + (1 : F) * rho 5493)

def relationRow5097 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 31⟩, ⟨(1 : F), 5070, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5496)

def relationRow5098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5496) * ((1 : F) * rho 5494 + (1 : F) * rho 5495) = ((1 : F) * rho 5497)

def relationRow5099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5495) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5498)

def relationRow5100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5494) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5499)

def relationRow5101 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5498) * ((1 : F) * rho 5499) = ((1 : F) * rho 5500)

def relationRow5102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5501) * ((1 : F) + (1 : F) * rho 5500) = ((1 : F) * rho 5498 + (1 : F) * rho 5499)

def relationRow5103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5502) * ((1 : F) + (-1 : F) * rho 5500) = ((1 : F) * rho 5497 + (-1 : F) * rho 5498 + (-1 : F) * rho 5499)

def relationRow5104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 31⟩], residual := [((1 : F), 5501)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5503)

def relationRow5105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 31⟩], residual := [((1 : F), 5502)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5504)

def relationRow5106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5494) * ((1 : F) * rho 5495) = ((1 : F) * rho 5505)

def relationRow5107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5494) * ((1 : F) * rho 5494) = ((1 : F) * rho 5506)

def relationRow5108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5495) * ((1 : F) * rho 5495) = ((1 : F) * rho 5507)

def relationRow5109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5508) * ((-1 : F) * rho 5506 + (1 : F) * rho 5507) = ((2 : F) * rho 5505)

def relationRow5110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5509) * ((2 : F) + (1 : F) * rho 5506 + (-1 : F) * rho 5507) = ((1 : F) * rho 5506 + (1 : F) * rho 5507)

def relationRow5111 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 32⟩, ⟨(1 : F), 5070, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5510)

def relationRow5112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5510) * ((1 : F) * rho 5508 + (1 : F) * rho 5509) = ((1 : F) * rho 5511)

def relationRow5113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5509) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5512)

def relationRow5114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5508) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5513)

def relationRow5115 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5512) * ((1 : F) * rho 5513) = ((1 : F) * rho 5514)

def relationRow5116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5515) * ((1 : F) + (1 : F) * rho 5514) = ((1 : F) * rho 5512 + (1 : F) * rho 5513)

def relationRow5117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5516) * ((1 : F) + (-1 : F) * rho 5514) = ((1 : F) * rho 5511 + (-1 : F) * rho 5512 + (-1 : F) * rho 5513)

def relationRow5118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 32⟩], residual := [((1 : F), 5515)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5517)

def relationRow5119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 32⟩], residual := [((1 : F), 5516)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5518)

def relationRow5120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5508) * ((1 : F) * rho 5509) = ((1 : F) * rho 5519)

def relationRow5121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5508) * ((1 : F) * rho 5508) = ((1 : F) * rho 5520)

def relationRow5122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5509) * ((1 : F) * rho 5509) = ((1 : F) * rho 5521)

def relationRow5123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5522) * ((-1 : F) * rho 5520 + (1 : F) * rho 5521) = ((2 : F) * rho 5519)

def relationRow5124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523) * ((2 : F) + (1 : F) * rho 5520 + (-1 : F) * rho 5521) = ((1 : F) * rho 5520 + (1 : F) * rho 5521)

def relationRow5125 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 33⟩, ⟨(1 : F), 5070, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5524)

def relationRow5126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5524) * ((1 : F) * rho 5522 + (1 : F) * rho 5523) = ((1 : F) * rho 5525)

def relationRow5127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5526)

def relationRow5128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5522) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5527)

def relationRow5129 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5526) * ((1 : F) * rho 5527) = ((1 : F) * rho 5528)

def relationRow5130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5529) * ((1 : F) + (1 : F) * rho 5528) = ((1 : F) * rho 5526 + (1 : F) * rho 5527)

def relationRow5131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5530) * ((1 : F) + (-1 : F) * rho 5528) = ((1 : F) * rho 5525 + (-1 : F) * rho 5526 + (-1 : F) * rho 5527)

def relationRow5132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 33⟩], residual := [((1 : F), 5529)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5531)

def relationRow5133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 33⟩], residual := [((1 : F), 5530)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5532)

def relationRow5134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5522) * ((1 : F) * rho 5523) = ((1 : F) * rho 5533)

def relationRow5135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5522) * ((1 : F) * rho 5522) = ((1 : F) * rho 5534)

def relationRow5136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523) * ((1 : F) * rho 5523) = ((1 : F) * rho 5535)

def relationRow5137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * ((-1 : F) * rho 5534 + (1 : F) * rho 5535) = ((2 : F) * rho 5533)

def relationRow5138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5537) * ((2 : F) + (1 : F) * rho 5534 + (-1 : F) * rho 5535) = ((1 : F) * rho 5534 + (1 : F) * rho 5535)

def relationRow5139 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 34⟩, ⟨(1 : F), 5070, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5538)

def relationRow5140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5538) * ((1 : F) * rho 5536 + (1 : F) * rho 5537) = ((1 : F) * rho 5539)

def relationRow5141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5540)

def relationRow5142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5541)

def relationRow5143 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5540) * ((1 : F) * rho 5541) = ((1 : F) * rho 5542)

def relationRow5144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5543) * ((1 : F) + (1 : F) * rho 5542) = ((1 : F) * rho 5540 + (1 : F) * rho 5541)

def relationRow5145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5544) * ((1 : F) + (-1 : F) * rho 5542) = ((1 : F) * rho 5539 + (-1 : F) * rho 5540 + (-1 : F) * rho 5541)

def relationRow5146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 34⟩], residual := [((1 : F), 5543)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5545)

def relationRow5147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 34⟩], residual := [((1 : F), 5544)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5546)

def relationRow5148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * ((1 : F) * rho 5537) = ((1 : F) * rho 5547)

def relationRow5149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * ((1 : F) * rho 5536) = ((1 : F) * rho 5548)

def relationRow5150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5537) * ((1 : F) * rho 5537) = ((1 : F) * rho 5549)

def relationRow5151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5550) * ((-1 : F) * rho 5548 + (1 : F) * rho 5549) = ((2 : F) * rho 5547)

def relationRow5152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5551) * ((2 : F) + (1 : F) * rho 5548 + (-1 : F) * rho 5549) = ((1 : F) * rho 5548 + (1 : F) * rho 5549)

def relationRow5153 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 35⟩, ⟨(1 : F), 5070, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5552)

def relationRow5154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5552) * ((1 : F) * rho 5550 + (1 : F) * rho 5551) = ((1 : F) * rho 5553)

def relationRow5155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5551) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5554)

def relationRow5156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5550) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5555)

def relationRow5157 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5554) * ((1 : F) * rho 5555) = ((1 : F) * rho 5556)

def relationRow5158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5557) * ((1 : F) + (1 : F) * rho 5556) = ((1 : F) * rho 5554 + (1 : F) * rho 5555)

def relationRow5159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5558) * ((1 : F) + (-1 : F) * rho 5556) = ((1 : F) * rho 5553 + (-1 : F) * rho 5554 + (-1 : F) * rho 5555)

def relationRow5160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 35⟩], residual := [((1 : F), 5557)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5559)

def relationRow5161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 35⟩], residual := [((1 : F), 5558)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5560)

def relationRow5162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5550) * ((1 : F) * rho 5551) = ((1 : F) * rho 5561)

def relationRow5163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5550) * ((1 : F) * rho 5550) = ((1 : F) * rho 5562)

def relationRow5164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5551) * ((1 : F) * rho 5551) = ((1 : F) * rho 5563)

def relationRow5165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5564) * ((-1 : F) * rho 5562 + (1 : F) * rho 5563) = ((2 : F) * rho 5561)

def relationRow5166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5565) * ((2 : F) + (1 : F) * rho 5562 + (-1 : F) * rho 5563) = ((1 : F) * rho 5562 + (1 : F) * rho 5563)

def relationRow5167 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 36⟩, ⟨(1 : F), 5070, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5566)

def relationRow5168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5566) * ((1 : F) * rho 5564 + (1 : F) * rho 5565) = ((1 : F) * rho 5567)

def relationRow5169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5565) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5568)

def relationRow5170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5564) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5569)

def relationRow5171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5568) * ((1 : F) * rho 5569) = ((1 : F) * rho 5570)

def relationRow5172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5571) * ((1 : F) + (1 : F) * rho 5570) = ((1 : F) * rho 5568 + (1 : F) * rho 5569)

def relationRow5173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5572) * ((1 : F) + (-1 : F) * rho 5570) = ((1 : F) * rho 5567 + (-1 : F) * rho 5568 + (-1 : F) * rho 5569)

def relationRow5174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 36⟩], residual := [((1 : F), 5571)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5573)

def relationRow5175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 36⟩], residual := [((1 : F), 5572)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5574)

def relationRow5176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5564) * ((1 : F) * rho 5565) = ((1 : F) * rho 5575)

def relationRow5177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5564) * ((1 : F) * rho 5564) = ((1 : F) * rho 5576)

def relationRow5178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5565) * ((1 : F) * rho 5565) = ((1 : F) * rho 5577)

def relationRow5179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5578) * ((-1 : F) * rho 5576 + (1 : F) * rho 5577) = ((2 : F) * rho 5575)

def relationRow5180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * ((2 : F) + (1 : F) * rho 5576 + (-1 : F) * rho 5577) = ((1 : F) * rho 5576 + (1 : F) * rho 5577)

def relationRow5181 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 37⟩, ⟨(1 : F), 5070, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5580)

def relationRow5182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5580) * ((1 : F) * rho 5578 + (1 : F) * rho 5579) = ((1 : F) * rho 5581)

def relationRow5183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5582)

def relationRow5184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5578) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5583)

def relationRow5185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5582) * ((1 : F) * rho 5583) = ((1 : F) * rho 5584)

def relationRow5186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5585) * ((1 : F) + (1 : F) * rho 5584) = ((1 : F) * rho 5582 + (1 : F) * rho 5583)

def relationRow5187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5586) * ((1 : F) + (-1 : F) * rho 5584) = ((1 : F) * rho 5581 + (-1 : F) * rho 5582 + (-1 : F) * rho 5583)

def relationRow5188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 37⟩], residual := [((1 : F), 5585)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5587)

def relationRow5189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 37⟩], residual := [((1 : F), 5586)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5588)

def relationRow5190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5578) * ((1 : F) * rho 5579) = ((1 : F) * rho 5589)

def relationRow5191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5578) * ((1 : F) * rho 5578) = ((1 : F) * rho 5590)

def relationRow5192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * ((1 : F) * rho 5579) = ((1 : F) * rho 5591)

def relationRow5193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5592) * ((-1 : F) * rho 5590 + (1 : F) * rho 5591) = ((2 : F) * rho 5589)

def relationRow5194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5593) * ((2 : F) + (1 : F) * rho 5590 + (-1 : F) * rho 5591) = ((1 : F) * rho 5590 + (1 : F) * rho 5591)

def relationRow5195 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 38⟩, ⟨(1 : F), 5070, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5594)

def relationRow5196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5594) * ((1 : F) * rho 5592 + (1 : F) * rho 5593) = ((1 : F) * rho 5595)

def relationRow5197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5593) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5596)

def relationRow5198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5592) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5597)

def relationRow5199 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5596) * ((1 : F) * rho 5597) = ((1 : F) * rho 5598)

def relationRow5200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5599) * ((1 : F) + (1 : F) * rho 5598) = ((1 : F) * rho 5596 + (1 : F) * rho 5597)

def relationRow5201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5600) * ((1 : F) + (-1 : F) * rho 5598) = ((1 : F) * rho 5595 + (-1 : F) * rho 5596 + (-1 : F) * rho 5597)

def relationRow5202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 38⟩], residual := [((1 : F), 5599)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5601)

def relationRow5203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 38⟩], residual := [((1 : F), 5600)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5602)

def relationRow5204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5592) * ((1 : F) * rho 5593) = ((1 : F) * rho 5603)

def relationRow5205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5592) * ((1 : F) * rho 5592) = ((1 : F) * rho 5604)

def relationRow5206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5593) * ((1 : F) * rho 5593) = ((1 : F) * rho 5605)

def relationRow5207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * ((-1 : F) * rho 5604 + (1 : F) * rho 5605) = ((2 : F) * rho 5603)

def relationRow5208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5607) * ((2 : F) + (1 : F) * rho 5604 + (-1 : F) * rho 5605) = ((1 : F) * rho 5604 + (1 : F) * rho 5605)

def relationRow5209 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 39⟩, ⟨(1 : F), 5070, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5608)

def relationRow5210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5608) * ((1 : F) * rho 5606 + (1 : F) * rho 5607) = ((1 : F) * rho 5609)

def relationRow5211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5607) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5610)

def relationRow5212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5611)

def relationRow5213 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5610) * ((1 : F) * rho 5611) = ((1 : F) * rho 5612)

def relationRow5214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5613) * ((1 : F) + (1 : F) * rho 5612) = ((1 : F) * rho 5610 + (1 : F) * rho 5611)

def relationRow5215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5614) * ((1 : F) + (-1 : F) * rho 5612) = ((1 : F) * rho 5609 + (-1 : F) * rho 5610 + (-1 : F) * rho 5611)

def relationRow5216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 39⟩], residual := [((1 : F), 5613)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5615)

def relationRow5217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 39⟩], residual := [((1 : F), 5614)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5616)

def relationRow5218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * ((1 : F) * rho 5607) = ((1 : F) * rho 5617)

def relationRow5219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * ((1 : F) * rho 5606) = ((1 : F) * rho 5618)

def relationRow5220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5607) * ((1 : F) * rho 5607) = ((1 : F) * rho 5619)

def relationRow5221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5620) * ((-1 : F) * rho 5618 + (1 : F) * rho 5619) = ((2 : F) * rho 5617)

def relationRow5222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5621) * ((2 : F) + (1 : F) * rho 5618 + (-1 : F) * rho 5619) = ((1 : F) * rho 5618 + (1 : F) * rho 5619)

def relationRow5223 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 40⟩, ⟨(1 : F), 5070, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5622)

def relationRow5224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5622) * ((1 : F) * rho 5620 + (1 : F) * rho 5621) = ((1 : F) * rho 5623)

def relationRow5225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5621) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5624)

def relationRow5226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5620) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5625)

def relationRow5227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5624) * ((1 : F) * rho 5625) = ((1 : F) * rho 5626)

def relationRow5228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5627) * ((1 : F) + (1 : F) * rho 5626) = ((1 : F) * rho 5624 + (1 : F) * rho 5625)

def relationRow5229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5628) * ((1 : F) + (-1 : F) * rho 5626) = ((1 : F) * rho 5623 + (-1 : F) * rho 5624 + (-1 : F) * rho 5625)

def relationRow5230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 40⟩], residual := [((1 : F), 5627)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5629)

def relationRow5231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 40⟩], residual := [((1 : F), 5628)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5630)

def relationRow5232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5620) * ((1 : F) * rho 5621) = ((1 : F) * rho 5631)

def relationRow5233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5620) * ((1 : F) * rho 5620) = ((1 : F) * rho 5632)

def relationRow5234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5621) * ((1 : F) * rho 5621) = ((1 : F) * rho 5633)

def relationRow5235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * ((-1 : F) * rho 5632 + (1 : F) * rho 5633) = ((2 : F) * rho 5631)

def relationRow5236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5635) * ((2 : F) + (1 : F) * rho 5632 + (-1 : F) * rho 5633) = ((1 : F) * rho 5632 + (1 : F) * rho 5633)

def relationRow5237 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 41⟩, ⟨(1 : F), 5070, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5636)

def relationRow5238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5636) * ((1 : F) * rho 5634 + (1 : F) * rho 5635) = ((1 : F) * rho 5637)

def relationRow5239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5635) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5638)

def relationRow5240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5639)

def relationRow5241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5638) * ((1 : F) * rho 5639) = ((1 : F) * rho 5640)

def relationRow5242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5641) * ((1 : F) + (1 : F) * rho 5640) = ((1 : F) * rho 5638 + (1 : F) * rho 5639)

def relationRow5243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5642) * ((1 : F) + (-1 : F) * rho 5640) = ((1 : F) * rho 5637 + (-1 : F) * rho 5638 + (-1 : F) * rho 5639)

def relationRow5244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 41⟩], residual := [((1 : F), 5641)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5643)

def relationRow5245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 41⟩], residual := [((1 : F), 5642)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5644)

def relationRow5246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * ((1 : F) * rho 5635) = ((1 : F) * rho 5645)

def relationRow5247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * ((1 : F) * rho 5634) = ((1 : F) * rho 5646)

def relationRow5248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5635) * ((1 : F) * rho 5635) = ((1 : F) * rho 5647)

def relationRow5249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5648) * ((-1 : F) * rho 5646 + (1 : F) * rho 5647) = ((2 : F) * rho 5645)

def relationRow5250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5649) * ((2 : F) + (1 : F) * rho 5646 + (-1 : F) * rho 5647) = ((1 : F) * rho 5646 + (1 : F) * rho 5647)

def relationRow5251 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 42⟩, ⟨(1 : F), 5070, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5650)

def relationRow5252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5650) * ((1 : F) * rho 5648 + (1 : F) * rho 5649) = ((1 : F) * rho 5651)

def relationRow5253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5649) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5652)

def relationRow5254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5648) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5653)

def relationRow5255 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5652) * ((1 : F) * rho 5653) = ((1 : F) * rho 5654)

def relationRow5256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5655) * ((1 : F) + (1 : F) * rho 5654) = ((1 : F) * rho 5652 + (1 : F) * rho 5653)

def relationRow5257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5656) * ((1 : F) + (-1 : F) * rho 5654) = ((1 : F) * rho 5651 + (-1 : F) * rho 5652 + (-1 : F) * rho 5653)

def relationRow5258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 42⟩], residual := [((1 : F), 5655)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5657)

def relationRow5259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 42⟩], residual := [((1 : F), 5656)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5658)

def relationRow5260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5648) * ((1 : F) * rho 5649) = ((1 : F) * rho 5659)

def relationRow5261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5648) * ((1 : F) * rho 5648) = ((1 : F) * rho 5660)

def relationRow5262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5649) * ((1 : F) * rho 5649) = ((1 : F) * rho 5661)

def relationRow5263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5662) * ((-1 : F) * rho 5660 + (1 : F) * rho 5661) = ((2 : F) * rho 5659)

def relationRow5264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5663) * ((2 : F) + (1 : F) * rho 5660 + (-1 : F) * rho 5661) = ((1 : F) * rho 5660 + (1 : F) * rho 5661)

def relationRow5265 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 43⟩, ⟨(1 : F), 5070, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5664)

def relationRow5266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5664) * ((1 : F) * rho 5662 + (1 : F) * rho 5663) = ((1 : F) * rho 5665)

def relationRow5267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5663) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5666)

def relationRow5268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5662) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5667)

def relationRow5269 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5666) * ((1 : F) * rho 5667) = ((1 : F) * rho 5668)

def relationRow5270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5669) * ((1 : F) + (1 : F) * rho 5668) = ((1 : F) * rho 5666 + (1 : F) * rho 5667)

def relationRow5271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5670) * ((1 : F) + (-1 : F) * rho 5668) = ((1 : F) * rho 5665 + (-1 : F) * rho 5666 + (-1 : F) * rho 5667)

def relationRow5272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 43⟩], residual := [((1 : F), 5669)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5671)

def relationRow5273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 43⟩], residual := [((1 : F), 5670)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5672)

def relationRow5274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5662) * ((1 : F) * rho 5663) = ((1 : F) * rho 5673)

def relationRow5275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5662) * ((1 : F) * rho 5662) = ((1 : F) * rho 5674)

def relationRow5276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5663) * ((1 : F) * rho 5663) = ((1 : F) * rho 5675)

def relationRow5277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5676) * ((-1 : F) * rho 5674 + (1 : F) * rho 5675) = ((2 : F) * rho 5673)

def relationRow5278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5677) * ((2 : F) + (1 : F) * rho 5674 + (-1 : F) * rho 5675) = ((1 : F) * rho 5674 + (1 : F) * rho 5675)

def relationRow5279 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 44⟩, ⟨(1 : F), 5070, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5678)

def relationRow5280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5678) * ((1 : F) * rho 5676 + (1 : F) * rho 5677) = ((1 : F) * rho 5679)

def relationRow5281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5677) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5680)

def relationRow5282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5676) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5681)

def relationRow5283 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5680) * ((1 : F) * rho 5681) = ((1 : F) * rho 5682)

def relationRow5284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5683) * ((1 : F) + (1 : F) * rho 5682) = ((1 : F) * rho 5680 + (1 : F) * rho 5681)

def relationRow5285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5684) * ((1 : F) + (-1 : F) * rho 5682) = ((1 : F) * rho 5679 + (-1 : F) * rho 5680 + (-1 : F) * rho 5681)

def relationRow5286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2084) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 44⟩], residual := [((1 : F), 5683)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5685)

def relationRow5287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2084) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 44⟩], residual := [((1 : F), 5684)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5686)

def relationRow5288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5676) * ((1 : F) * rho 5677) = ((1 : F) * rho 5687)

def relationRow5289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5676) * ((1 : F) * rho 5676) = ((1 : F) * rho 5688)

def relationRow5290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5677) * ((1 : F) * rho 5677) = ((1 : F) * rho 5689)

def relationRow5291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5690) * ((-1 : F) * rho 5688 + (1 : F) * rho 5689) = ((2 : F) * rho 5687)

def relationRow5292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5691) * ((2 : F) + (1 : F) * rho 5688 + (-1 : F) * rho 5689) = ((1 : F) * rho 5688 + (1 : F) * rho 5689)

def relationRow5293 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 45⟩, ⟨(1 : F), 5070, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5692)

def relationRow5294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5692) * ((1 : F) * rho 5690 + (1 : F) * rho 5691) = ((1 : F) * rho 5693)

def relationRow5295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5691) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5694)

def relationRow5296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5690) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5695)

def relationRow5297 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5694) * ((1 : F) * rho 5695) = ((1 : F) * rho 5696)

def relationRow5298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5697) * ((1 : F) + (1 : F) * rho 5696) = ((1 : F) * rho 5694 + (1 : F) * rho 5695)

def relationRow5299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5698) * ((1 : F) + (-1 : F) * rho 5696) = ((1 : F) * rho 5693 + (-1 : F) * rho 5694 + (-1 : F) * rho 5695)

def relationRow5300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2085) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 45⟩], residual := [((1 : F), 5697)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5699)

def relationRow5301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2085) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 45⟩], residual := [((1 : F), 5698)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5700)

def relationRow5302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5690) * ((1 : F) * rho 5691) = ((1 : F) * rho 5701)

def relationRow5303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5690) * ((1 : F) * rho 5690) = ((1 : F) * rho 5702)

def relationRow5304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5691) * ((1 : F) * rho 5691) = ((1 : F) * rho 5703)

def relationRow5305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5704) * ((-1 : F) * rho 5702 + (1 : F) * rho 5703) = ((2 : F) * rho 5701)

def relationRow5306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5705) * ((2 : F) + (1 : F) * rho 5702 + (-1 : F) * rho 5703) = ((1 : F) * rho 5702 + (1 : F) * rho 5703)

def relationRow5307 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 46⟩, ⟨(1 : F), 5070, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5706)

def relationRow5308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5706) * ((1 : F) * rho 5704 + (1 : F) * rho 5705) = ((1 : F) * rho 5707)

def relationRow5309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5705) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5708)

def relationRow5310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5704) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5709)

def relationRow5311 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5708) * ((1 : F) * rho 5709) = ((1 : F) * rho 5710)

def relationRow5312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5711) * ((1 : F) + (1 : F) * rho 5710) = ((1 : F) * rho 5708 + (1 : F) * rho 5709)

def relationRow5313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5712) * ((1 : F) + (-1 : F) * rho 5710) = ((1 : F) * rho 5707 + (-1 : F) * rho 5708 + (-1 : F) * rho 5709)

def relationRow5314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 46⟩], residual := [((1 : F), 5711)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5713)

def relationRow5315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 46⟩], residual := [((1 : F), 5712)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5714)

def relationRow5316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5704) * ((1 : F) * rho 5705) = ((1 : F) * rho 5715)

def relationRow5317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5704) * ((1 : F) * rho 5704) = ((1 : F) * rho 5716)

def relationRow5318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5705) * ((1 : F) * rho 5705) = ((1 : F) * rho 5717)

def relationRow5319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5718) * ((-1 : F) * rho 5716 + (1 : F) * rho 5717) = ((2 : F) * rho 5715)

def relationRow5320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5719) * ((2 : F) + (1 : F) * rho 5716 + (-1 : F) * rho 5717) = ((1 : F) * rho 5716 + (1 : F) * rho 5717)

def relationRow5321 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 47⟩, ⟨(1 : F), 5070, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5720)

def relationRow5322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5720) * ((1 : F) * rho 5718 + (1 : F) * rho 5719) = ((1 : F) * rho 5721)

def relationRow5323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5719) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5722)

def relationRow5324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5718) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5723)

def relationRow5325 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5722) * ((1 : F) * rho 5723) = ((1 : F) * rho 5724)

def relationRow5326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5725) * ((1 : F) + (1 : F) * rho 5724) = ((1 : F) * rho 5722 + (1 : F) * rho 5723)

def relationRow5327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5726) * ((1 : F) + (-1 : F) * rho 5724) = ((1 : F) * rho 5721 + (-1 : F) * rho 5722 + (-1 : F) * rho 5723)

def relationRow5328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2087) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 47⟩], residual := [((1 : F), 5725)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5727)

def relationRow5329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2087) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 47⟩], residual := [((1 : F), 5726)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5728)

def relationRow5330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5718) * ((1 : F) * rho 5719) = ((1 : F) * rho 5729)

def relationRow5331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5718) * ((1 : F) * rho 5718) = ((1 : F) * rho 5730)

def relationRow5332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5719) * ((1 : F) * rho 5719) = ((1 : F) * rho 5731)

def relationRow5333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5732) * ((-1 : F) * rho 5730 + (1 : F) * rho 5731) = ((2 : F) * rho 5729)

def relationRow5334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5733) * ((2 : F) + (1 : F) * rho 5730 + (-1 : F) * rho 5731) = ((1 : F) * rho 5730 + (1 : F) * rho 5731)

def relationRow5335 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 48⟩, ⟨(1 : F), 5070, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5734)

def relationRow5336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5734) * ((1 : F) * rho 5732 + (1 : F) * rho 5733) = ((1 : F) * rho 5735)

def relationRow5337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5733) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5736)

def relationRow5338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5732) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5737)

def relationRow5339 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5736) * ((1 : F) * rho 5737) = ((1 : F) * rho 5738)

def relationRow5340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5739) * ((1 : F) + (1 : F) * rho 5738) = ((1 : F) * rho 5736 + (1 : F) * rho 5737)

def relationRow5341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5740) * ((1 : F) + (-1 : F) * rho 5738) = ((1 : F) * rho 5735 + (-1 : F) * rho 5736 + (-1 : F) * rho 5737)

def relationRow5342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2088) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 48⟩], residual := [((1 : F), 5739)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5741)

def relationRow5343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2088) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 48⟩], residual := [((1 : F), 5740)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5742)

def relationRow5344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5732) * ((1 : F) * rho 5733) = ((1 : F) * rho 5743)

def relationRow5345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5732) * ((1 : F) * rho 5732) = ((1 : F) * rho 5744)

def relationRow5346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5733) * ((1 : F) * rho 5733) = ((1 : F) * rho 5745)

def relationRow5347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5746) * ((-1 : F) * rho 5744 + (1 : F) * rho 5745) = ((2 : F) * rho 5743)

def relationRow5348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5747) * ((2 : F) + (1 : F) * rho 5744 + (-1 : F) * rho 5745) = ((1 : F) * rho 5744 + (1 : F) * rho 5745)

def relationRow5349 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 49⟩, ⟨(1 : F), 5070, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5748)

def relationRow5350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5748) * ((1 : F) * rho 5746 + (1 : F) * rho 5747) = ((1 : F) * rho 5749)

def relationRow5351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5747) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5750)

def relationRow5352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5746) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5751)

def relationRow5353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5750) * ((1 : F) * rho 5751) = ((1 : F) * rho 5752)

def relationRow5354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5753) * ((1 : F) + (1 : F) * rho 5752) = ((1 : F) * rho 5750 + (1 : F) * rho 5751)

def relationRow5355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5754) * ((1 : F) + (-1 : F) * rho 5752) = ((1 : F) * rho 5749 + (-1 : F) * rho 5750 + (-1 : F) * rho 5751)

def relationRow5356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 49⟩], residual := [((1 : F), 5753)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5755)

def relationRow5357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 49⟩], residual := [((1 : F), 5754)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5756)

def relationRow5358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5746) * ((1 : F) * rho 5747) = ((1 : F) * rho 5757)

def relationRow5359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5746) * ((1 : F) * rho 5746) = ((1 : F) * rho 5758)

def relationRow5360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5747) * ((1 : F) * rho 5747) = ((1 : F) * rho 5759)

def relationRow5361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5760) * ((-1 : F) * rho 5758 + (1 : F) * rho 5759) = ((2 : F) * rho 5757)

def relationRow5362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5761) * ((2 : F) + (1 : F) * rho 5758 + (-1 : F) * rho 5759) = ((1 : F) * rho 5758 + (1 : F) * rho 5759)

def relationRow5363 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 50⟩, ⟨(1 : F), 5070, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5762)

def relationRow5364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5762) * ((1 : F) * rho 5760 + (1 : F) * rho 5761) = ((1 : F) * rho 5763)

def relationRow5365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5761) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5764)

def relationRow5366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5760) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5765)

def relationRow5367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5764) * ((1 : F) * rho 5765) = ((1 : F) * rho 5766)

def relationRow5368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5767) * ((1 : F) + (1 : F) * rho 5766) = ((1 : F) * rho 5764 + (1 : F) * rho 5765)

def relationRow5369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5768) * ((1 : F) + (-1 : F) * rho 5766) = ((1 : F) * rho 5763 + (-1 : F) * rho 5764 + (-1 : F) * rho 5765)

def relationRow5370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 50⟩], residual := [((1 : F), 5767)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5769)

def relationRow5371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 50⟩], residual := [((1 : F), 5768)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5770)

def relationRow5372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5760) * ((1 : F) * rho 5761) = ((1 : F) * rho 5771)

def relationRow5373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5760) * ((1 : F) * rho 5760) = ((1 : F) * rho 5772)

def relationRow5374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5761) * ((1 : F) * rho 5761) = ((1 : F) * rho 5773)

def relationRow5375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5774) * ((-1 : F) * rho 5772 + (1 : F) * rho 5773) = ((2 : F) * rho 5771)

def relationRow5376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5775) * ((2 : F) + (1 : F) * rho 5772 + (-1 : F) * rho 5773) = ((1 : F) * rho 5772 + (1 : F) * rho 5773)

def relationRow5377 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 51⟩, ⟨(1 : F), 5070, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5776)

def relationRow5378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5776) * ((1 : F) * rho 5774 + (1 : F) * rho 5775) = ((1 : F) * rho 5777)

def relationRow5379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5775) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5778)

def relationRow5380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5774) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5779)

def relationRow5381 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5778) * ((1 : F) * rho 5779) = ((1 : F) * rho 5780)

def relationRow5382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5781) * ((1 : F) + (1 : F) * rho 5780) = ((1 : F) * rho 5778 + (1 : F) * rho 5779)

def relationRow5383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5782) * ((1 : F) + (-1 : F) * rho 5780) = ((1 : F) * rho 5777 + (-1 : F) * rho 5778 + (-1 : F) * rho 5779)

def relationRow5384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 51⟩], residual := [((1 : F), 5781)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5783)

def relationRow5385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 51⟩], residual := [((1 : F), 5782)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5784)

def relationRow5386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5774) * ((1 : F) * rho 5775) = ((1 : F) * rho 5785)

def relationRow5387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5774) * ((1 : F) * rho 5774) = ((1 : F) * rho 5786)

def relationRow5388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5775) * ((1 : F) * rho 5775) = ((1 : F) * rho 5787)

def relationRow5389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * ((-1 : F) * rho 5786 + (1 : F) * rho 5787) = ((2 : F) * rho 5785)

def relationRow5390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5789) * ((2 : F) + (1 : F) * rho 5786 + (-1 : F) * rho 5787) = ((1 : F) * rho 5786 + (1 : F) * rho 5787)

def relationRow5391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 52⟩, ⟨(1 : F), 5070, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5790)

def relationRow5392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5790) * ((1 : F) * rho 5788 + (1 : F) * rho 5789) = ((1 : F) * rho 5791)

def relationRow5393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5789) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5792)

def relationRow5394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5793)

def relationRow5395 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5792) * ((1 : F) * rho 5793) = ((1 : F) * rho 5794)

def relationRow5396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5795) * ((1 : F) + (1 : F) * rho 5794) = ((1 : F) * rho 5792 + (1 : F) * rho 5793)

def relationRow5397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5796) * ((1 : F) + (-1 : F) * rho 5794) = ((1 : F) * rho 5791 + (-1 : F) * rho 5792 + (-1 : F) * rho 5793)

def relationRow5398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2092) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 52⟩], residual := [((1 : F), 5795)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5797)

def relationRow5399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2092) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 52⟩], residual := [((1 : F), 5796)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5798)

def relationRow5400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * ((1 : F) * rho 5789) = ((1 : F) * rho 5799)

def relationRow5401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * ((1 : F) * rho 5788) = ((1 : F) * rho 5800)

def relationRow5402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5789) * ((1 : F) * rho 5789) = ((1 : F) * rho 5801)

def relationRow5403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5802) * ((-1 : F) * rho 5800 + (1 : F) * rho 5801) = ((2 : F) * rho 5799)

def relationRow5404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5803) * ((2 : F) + (1 : F) * rho 5800 + (-1 : F) * rho 5801) = ((1 : F) * rho 5800 + (1 : F) * rho 5801)

def relationRow5405 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 53⟩, ⟨(1 : F), 5070, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5804)

def relationRow5406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5804) * ((1 : F) * rho 5802 + (1 : F) * rho 5803) = ((1 : F) * rho 5805)

def relationRow5407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5803) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5806)

def relationRow5408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5802) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5807)

def relationRow5409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5806) * ((1 : F) * rho 5807) = ((1 : F) * rho 5808)

def relationRow5410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5809) * ((1 : F) + (1 : F) * rho 5808) = ((1 : F) * rho 5806 + (1 : F) * rho 5807)

def relationRow5411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5810) * ((1 : F) + (-1 : F) * rho 5808) = ((1 : F) * rho 5805 + (-1 : F) * rho 5806 + (-1 : F) * rho 5807)

def relationRow5412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2093) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 53⟩], residual := [((1 : F), 5809)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5811)

def relationRow5413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2093) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 53⟩], residual := [((1 : F), 5810)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5812)

def relationRow5414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5802) * ((1 : F) * rho 5803) = ((1 : F) * rho 5813)

def relationRow5415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5802) * ((1 : F) * rho 5802) = ((1 : F) * rho 5814)

def relationRow5416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5803) * ((1 : F) * rho 5803) = ((1 : F) * rho 5815)

def relationRow5417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5816) * ((-1 : F) * rho 5814 + (1 : F) * rho 5815) = ((2 : F) * rho 5813)

def relationRow5418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5817) * ((2 : F) + (1 : F) * rho 5814 + (-1 : F) * rho 5815) = ((1 : F) * rho 5814 + (1 : F) * rho 5815)

def relationRow5419 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 54⟩, ⟨(1 : F), 5070, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5818)

def relationRow5420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5818) * ((1 : F) * rho 5816 + (1 : F) * rho 5817) = ((1 : F) * rho 5819)

def relationRow5421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5817) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5820)

def relationRow5422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5816) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5821)

def relationRow5423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5820) * ((1 : F) * rho 5821) = ((1 : F) * rho 5822)

def relationRow5424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5823) * ((1 : F) + (1 : F) * rho 5822) = ((1 : F) * rho 5820 + (1 : F) * rho 5821)

def relationRow5425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5824) * ((1 : F) + (-1 : F) * rho 5822) = ((1 : F) * rho 5819 + (-1 : F) * rho 5820 + (-1 : F) * rho 5821)

def relationRow5426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 54⟩], residual := [((1 : F), 5823)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5825)

def relationRow5427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 54⟩], residual := [((1 : F), 5824)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5826)

def relationRow5428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5816) * ((1 : F) * rho 5817) = ((1 : F) * rho 5827)

def relationRow5429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5816) * ((1 : F) * rho 5816) = ((1 : F) * rho 5828)

def relationRow5430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5817) * ((1 : F) * rho 5817) = ((1 : F) * rho 5829)

def relationRow5431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5830) * ((-1 : F) * rho 5828 + (1 : F) * rho 5829) = ((2 : F) * rho 5827)

def relationRow5432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831) * ((2 : F) + (1 : F) * rho 5828 + (-1 : F) * rho 5829) = ((1 : F) * rho 5828 + (1 : F) * rho 5829)

def relationRow5433 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 55⟩, ⟨(1 : F), 5070, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5832)

def relationRow5434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5832) * ((1 : F) * rho 5830 + (1 : F) * rho 5831) = ((1 : F) * rho 5833)

def relationRow5435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5834)

def relationRow5436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5830) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5835)

def relationRow5437 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5834) * ((1 : F) * rho 5835) = ((1 : F) * rho 5836)

def relationRow5438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5837) * ((1 : F) + (1 : F) * rho 5836) = ((1 : F) * rho 5834 + (1 : F) * rho 5835)

def relationRow5439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5838) * ((1 : F) + (-1 : F) * rho 5836) = ((1 : F) * rho 5833 + (-1 : F) * rho 5834 + (-1 : F) * rho 5835)

def relationRow5440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 55⟩], residual := [((1 : F), 5837)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5839)

def relationRow5441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 55⟩], residual := [((1 : F), 5838)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5840)

def relationRow5442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5830) * ((1 : F) * rho 5831) = ((1 : F) * rho 5841)

def relationRow5443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5830) * ((1 : F) * rho 5830) = ((1 : F) * rho 5842)

def relationRow5444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831) * ((1 : F) * rho 5831) = ((1 : F) * rho 5843)

def relationRow5445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * ((-1 : F) * rho 5842 + (1 : F) * rho 5843) = ((2 : F) * rho 5841)

def relationRow5446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5845) * ((2 : F) + (1 : F) * rho 5842 + (-1 : F) * rho 5843) = ((1 : F) * rho 5842 + (1 : F) * rho 5843)

def relationRow5447 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 56⟩, ⟨(1 : F), 5070, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5846)

def relationRow5448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5846) * ((1 : F) * rho 5844 + (1 : F) * rho 5845) = ((1 : F) * rho 5847)

def relationRow5449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5845) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5848)

def relationRow5450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5849)

def relationRow5451 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5848) * ((1 : F) * rho 5849) = ((1 : F) * rho 5850)

def relationRow5452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5851) * ((1 : F) + (1 : F) * rho 5850) = ((1 : F) * rho 5848 + (1 : F) * rho 5849)

def relationRow5453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5852) * ((1 : F) + (-1 : F) * rho 5850) = ((1 : F) * rho 5847 + (-1 : F) * rho 5848 + (-1 : F) * rho 5849)

def relationRow5454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 56⟩], residual := [((1 : F), 5851)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5853)

def relationRow5455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 56⟩], residual := [((1 : F), 5852)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5854)

def relationRow5456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * ((1 : F) * rho 5845) = ((1 : F) * rho 5855)

def relationRow5457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * ((1 : F) * rho 5844) = ((1 : F) * rho 5856)

def relationRow5458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5845) * ((1 : F) * rho 5845) = ((1 : F) * rho 5857)

def relationRow5459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5858) * ((-1 : F) * rho 5856 + (1 : F) * rho 5857) = ((2 : F) * rho 5855)

def relationRow5460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5859) * ((2 : F) + (1 : F) * rho 5856 + (-1 : F) * rho 5857) = ((1 : F) * rho 5856 + (1 : F) * rho 5857)

def relationRow5461 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 57⟩, ⟨(1 : F), 5070, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5860)

def relationRow5462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5860) * ((1 : F) * rho 5858 + (1 : F) * rho 5859) = ((1 : F) * rho 5861)

def relationRow5463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5859) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5862)

def relationRow5464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5858) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5863)

def relationRow5465 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5862) * ((1 : F) * rho 5863) = ((1 : F) * rho 5864)

def relationRow5466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5865) * ((1 : F) + (1 : F) * rho 5864) = ((1 : F) * rho 5862 + (1 : F) * rho 5863)

def relationRow5467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5866) * ((1 : F) + (-1 : F) * rho 5864) = ((1 : F) * rho 5861 + (-1 : F) * rho 5862 + (-1 : F) * rho 5863)

def relationRow5468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2097) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 57⟩], residual := [((1 : F), 5865)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5867)

def relationRow5469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2097) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 57⟩], residual := [((1 : F), 5866)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5868)

def relationRow5470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5858) * ((1 : F) * rho 5859) = ((1 : F) * rho 5869)

def relationRow5471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5858) * ((1 : F) * rho 5858) = ((1 : F) * rho 5870)

def relationRow5472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5859) * ((1 : F) * rho 5859) = ((1 : F) * rho 5871)

def relationRow5473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5872) * ((-1 : F) * rho 5870 + (1 : F) * rho 5871) = ((2 : F) * rho 5869)

def relationRow5474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5873) * ((2 : F) + (1 : F) * rho 5870 + (-1 : F) * rho 5871) = ((1 : F) * rho 5870 + (1 : F) * rho 5871)

def relationRow5475 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 58⟩, ⟨(1 : F), 5070, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5874)

def relationRow5476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5874) * ((1 : F) * rho 5872 + (1 : F) * rho 5873) = ((1 : F) * rho 5875)

def relationRow5477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5876)

def relationRow5478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5872) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5877)

def relationRow5479 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5876) * ((1 : F) * rho 5877) = ((1 : F) * rho 5878)

def relationRow5480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5879) * ((1 : F) + (1 : F) * rho 5878) = ((1 : F) * rho 5876 + (1 : F) * rho 5877)

def relationRow5481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5880) * ((1 : F) + (-1 : F) * rho 5878) = ((1 : F) * rho 5875 + (-1 : F) * rho 5876 + (-1 : F) * rho 5877)

def relationRow5482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2098) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 58⟩], residual := [((1 : F), 5879)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5881)

def relationRow5483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2098) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 58⟩], residual := [((1 : F), 5880)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5882)

def relationRow5484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5872) * ((1 : F) * rho 5873) = ((1 : F) * rho 5883)

def relationRow5485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5872) * ((1 : F) * rho 5872) = ((1 : F) * rho 5884)

def relationRow5486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5873) * ((1 : F) * rho 5873) = ((1 : F) * rho 5885)

def relationRow5487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5886) * ((-1 : F) * rho 5884 + (1 : F) * rho 5885) = ((2 : F) * rho 5883)

def relationRow5488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5887) * ((2 : F) + (1 : F) * rho 5884 + (-1 : F) * rho 5885) = ((1 : F) * rho 5884 + (1 : F) * rho 5885)

def relationRow5489 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 59⟩, ⟨(1 : F), 5070, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5888)

def relationRow5490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5888) * ((1 : F) * rho 5886 + (1 : F) * rho 5887) = ((1 : F) * rho 5889)

def relationRow5491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5890)

def relationRow5492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5891)

def relationRow5493 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5890) * ((1 : F) * rho 5891) = ((1 : F) * rho 5892)

def relationRow5494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5893) * ((1 : F) + (1 : F) * rho 5892) = ((1 : F) * rho 5890 + (1 : F) * rho 5891)

def relationRow5495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5894) * ((1 : F) + (-1 : F) * rho 5892) = ((1 : F) * rho 5889 + (-1 : F) * rho 5890 + (-1 : F) * rho 5891)

def relationRow5496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 59⟩], residual := [((1 : F), 5893)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5895)

def relationRow5497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 59⟩], residual := [((1 : F), 5894)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5896)

def relationRow5498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5886) * ((1 : F) * rho 5887) = ((1 : F) * rho 5897)

def relationRow5499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5886) * ((1 : F) * rho 5886) = ((1 : F) * rho 5898)

def relationRow5500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5887) * ((1 : F) * rho 5887) = ((1 : F) * rho 5899)

def relationRow5501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5900) * ((-1 : F) * rho 5898 + (1 : F) * rho 5899) = ((2 : F) * rho 5897)

def relationRow5502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5901) * ((2 : F) + (1 : F) * rho 5898 + (-1 : F) * rho 5899) = ((1 : F) * rho 5898 + (1 : F) * rho 5899)

def relationRow5503 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 60⟩, ⟨(1 : F), 5070, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5902)

def relationRow5504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5902) * ((1 : F) * rho 5900 + (1 : F) * rho 5901) = ((1 : F) * rho 5903)

def relationRow5505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5904)

def relationRow5506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5905)

def relationRow5507 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5904) * ((1 : F) * rho 5905) = ((1 : F) * rho 5906)

def relationRow5508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5907) * ((1 : F) + (1 : F) * rho 5906) = ((1 : F) * rho 5904 + (1 : F) * rho 5905)

def relationRow5509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5908) * ((1 : F) + (-1 : F) * rho 5906) = ((1 : F) * rho 5903 + (-1 : F) * rho 5904 + (-1 : F) * rho 5905)

def relationRow5510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 60⟩], residual := [((1 : F), 5907)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5909)

def relationRow5511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 60⟩], residual := [((1 : F), 5908)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5910)

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

def relationRow5517 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 61⟩, ⟨(1 : F), 5070, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5916)

def relationRow5518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5916) * ((1 : F) * rho 5914 + (1 : F) * rho 5915) = ((1 : F) * rho 5917)

def relationRow5519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5918)

def relationRow5520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5919)

def relationRow5521 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5918) * ((1 : F) * rho 5919) = ((1 : F) * rho 5920)

def relationRow5522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5921) * ((1 : F) + (1 : F) * rho 5920) = ((1 : F) * rho 5918 + (1 : F) * rho 5919)

def relationRow5523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5922) * ((1 : F) + (-1 : F) * rho 5920) = ((1 : F) * rho 5917 + (-1 : F) * rho 5918 + (-1 : F) * rho 5919)

def relationRow5524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 61⟩], residual := [((1 : F), 5921)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5923)

def relationRow5525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 61⟩], residual := [((1 : F), 5922)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5924)

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

def relationRow5531 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 62⟩, ⟨(1 : F), 5070, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5930)

def relationRow5532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5930) * ((1 : F) * rho 5928 + (1 : F) * rho 5929) = ((1 : F) * rho 5931)

def relationRow5533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5932)

def relationRow5534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5933)

def relationRow5535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5932) * ((1 : F) * rho 5933) = ((1 : F) * rho 5934)

def relationRow5536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5935) * ((1 : F) + (1 : F) * rho 5934) = ((1 : F) * rho 5932 + (1 : F) * rho 5933)

def relationRow5537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5936) * ((1 : F) + (-1 : F) * rho 5934) = ((1 : F) * rho 5931 + (-1 : F) * rho 5932 + (-1 : F) * rho 5933)

def relationRow5538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 62⟩], residual := [((1 : F), 5935)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5937)

def relationRow5539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 62⟩], residual := [((1 : F), 5936)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5938)

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

def relationRow5545 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 63⟩, ⟨(1 : F), 5070, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5944)

def relationRow5546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5944) * ((1 : F) * rho 5942 + (1 : F) * rho 5943) = ((1 : F) * rho 5945)

def relationRow5547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5946)

def relationRow5548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5947)

def relationRow5549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5946) * ((1 : F) * rho 5947) = ((1 : F) * rho 5948)

def relationRow5550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5949) * ((1 : F) + (1 : F) * rho 5948) = ((1 : F) * rho 5946 + (1 : F) * rho 5947)

def relationRow5551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5950) * ((1 : F) + (-1 : F) * rho 5948) = ((1 : F) * rho 5945 + (-1 : F) * rho 5946 + (-1 : F) * rho 5947)

def relationRow5552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 63⟩], residual := [((1 : F), 5949)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5951)

def relationRow5553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 63⟩], residual := [((1 : F), 5950)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5952)

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

def relationRow5559 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 64⟩, ⟨(1 : F), 5070, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5958)

def relationRow5560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5958) * ((1 : F) * rho 5956 + (1 : F) * rho 5957) = ((1 : F) * rho 5959)

def relationRow5561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5960)

def relationRow5562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5961)

def relationRow5563 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5960) * ((1 : F) * rho 5961) = ((1 : F) * rho 5962)

def relationRow5564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5963) * ((1 : F) + (1 : F) * rho 5962) = ((1 : F) * rho 5960 + (1 : F) * rho 5961)

def relationRow5565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5964) * ((1 : F) + (-1 : F) * rho 5962) = ((1 : F) * rho 5959 + (-1 : F) * rho 5960 + (-1 : F) * rho 5961)

def relationRow5566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2104) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 64⟩], residual := [((1 : F), 5963)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5965)

def relationRow5567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2104) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 64⟩], residual := [((1 : F), 5964)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5966)

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

def relationRow5573 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 65⟩, ⟨(1 : F), 5070, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5972)

def relationRow5574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5972) * ((1 : F) * rho 5970 + (1 : F) * rho 5971) = ((1 : F) * rho 5973)

def relationRow5575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5974)

def relationRow5576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5975)

def relationRow5577 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5974) * ((1 : F) * rho 5975) = ((1 : F) * rho 5976)

def relationRow5578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5977) * ((1 : F) + (1 : F) * rho 5976) = ((1 : F) * rho 5974 + (1 : F) * rho 5975)

def relationRow5579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5978) * ((1 : F) + (-1 : F) * rho 5976) = ((1 : F) * rho 5973 + (-1 : F) * rho 5974 + (-1 : F) * rho 5975)

def relationRow5580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2105) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 65⟩], residual := [((1 : F), 5977)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5979)

def relationRow5581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2105) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 65⟩], residual := [((1 : F), 5978)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5980)

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

def relationRow5587 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 66⟩, ⟨(1 : F), 5070, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5986)

def relationRow5588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5986) * ((1 : F) * rho 5984 + (1 : F) * rho 5985) = ((1 : F) * rho 5987)

def relationRow5589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5988)

def relationRow5590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5989)

def relationRow5591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5988) * ((1 : F) * rho 5989) = ((1 : F) * rho 5990)

def relationRow5592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5991) * ((1 : F) + (1 : F) * rho 5990) = ((1 : F) * rho 5988 + (1 : F) * rho 5989)

def relationRow5593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5992) * ((1 : F) + (-1 : F) * rho 5990) = ((1 : F) * rho 5987 + (-1 : F) * rho 5988 + (-1 : F) * rho 5989)

def relationRow5594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2106) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 66⟩], residual := [((1 : F), 5991)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5993)

def relationRow5595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2106) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 66⟩], residual := [((1 : F), 5992)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5994)

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

def relationRow5601 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 67⟩, ⟨(1 : F), 5070, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6000)

def relationRow5602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6000) * ((1 : F) * rho 5998 + (1 : F) * rho 5999) = ((1 : F) * rho 6001)

def relationRow5603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6002)

def relationRow5604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6003)

def relationRow5605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6002) * ((1 : F) * rho 6003) = ((1 : F) * rho 6004)

def relationRow5606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6005) * ((1 : F) + (1 : F) * rho 6004) = ((1 : F) * rho 6002 + (1 : F) * rho 6003)

def relationRow5607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6006) * ((1 : F) + (-1 : F) * rho 6004) = ((1 : F) * rho 6001 + (-1 : F) * rho 6002 + (-1 : F) * rho 6003)

def relationRow5608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 67⟩], residual := [((1 : F), 6005)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6007)

def relationRow5609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 67⟩], residual := [((1 : F), 6006)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6008)

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

def relationRow5615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 68⟩, ⟨(1 : F), 5070, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6014)

def relationRow5616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6014) * ((1 : F) * rho 6012 + (1 : F) * rho 6013) = ((1 : F) * rho 6015)

def relationRow5617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6016)

def relationRow5618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6017)

def relationRow5619 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6016) * ((1 : F) * rho 6017) = ((1 : F) * rho 6018)

def relationRow5620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6019) * ((1 : F) + (1 : F) * rho 6018) = ((1 : F) * rho 6016 + (1 : F) * rho 6017)

def relationRow5621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6020) * ((1 : F) + (-1 : F) * rho 6018) = ((1 : F) * rho 6015 + (-1 : F) * rho 6016 + (-1 : F) * rho 6017)

def relationRow5622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 68⟩], residual := [((1 : F), 6019)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6021)

def relationRow5623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 68⟩], residual := [((1 : F), 6020)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6022)

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

def relationRow5629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 69⟩, ⟨(1 : F), 5070, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6028)

def relationRow5630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6028) * ((1 : F) * rho 6026 + (1 : F) * rho 6027) = ((1 : F) * rho 6029)

def relationRow5631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6030)

def relationRow5632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6031)

def relationRow5633 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6030) * ((1 : F) * rho 6031) = ((1 : F) * rho 6032)

def relationRow5634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6033) * ((1 : F) + (1 : F) * rho 6032) = ((1 : F) * rho 6030 + (1 : F) * rho 6031)

def relationRow5635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6034) * ((1 : F) + (-1 : F) * rho 6032) = ((1 : F) * rho 6029 + (-1 : F) * rho 6030 + (-1 : F) * rho 6031)

def relationRow5636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 69⟩], residual := [((1 : F), 6033)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6035)

def relationRow5637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 69⟩], residual := [((1 : F), 6034)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 6036)

def relationRow5638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * ((1 : F) * rho 6027) = ((1 : F) * rho 6037)

def relationRow5639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * ((1 : F) * rho 6026) = ((1 : F) * rho 6038)

def relationRow5640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6027) * ((1 : F) * rho 6027) = ((1 : F) * rho 6039)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6
