import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs11

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationLc928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 18⟩, ⟨(1 : F), 5070, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4915 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc928 rho) = ((1 : F) * rho 5314)

def relationRow4916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5314) * ((1 : F) * rho 5312 + (1 : F) * rho 5313) = ((1 : F) * rho 5315)

def relationLc929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5313) * (relationLc929 rho) = ((1 : F) * rho 5316)

def relationLc930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5312) * (relationLc930 rho) = ((1 : F) * rho 5317)

def relationRow4919 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5316) * ((1 : F) * rho 5317) = ((1 : F) * rho 5318)

def relationRow4920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5319) * ((1 : F) + (1 : F) * rho 5318) = ((1 : F) * rho 5316 + (1 : F) * rho 5317)

def relationRow4921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5320) * ((1 : F) + (-1 : F) * rho 5318) = ((1 : F) * rho 5315 + (-1 : F) * rho 5316 + (-1 : F) * rho 5317)

def relationLc931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 18⟩], residual := [((1 : F), 5319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2058) * (relationLc931 rho) = ((1 : F) * rho 5321)

def relationLc932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 18⟩], residual := [((1 : F), 5320)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2058) * (relationLc932 rho) = ((1 : F) * rho 5322)

def relationRow4924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5312) * ((1 : F) * rho 5313) = ((1 : F) * rho 5323)

def relationRow4925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5312) * ((1 : F) * rho 5312) = ((1 : F) * rho 5324)

def relationRow4926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5313) * ((1 : F) * rho 5313) = ((1 : F) * rho 5325)

def relationRow4927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5326) * ((-1 : F) * rho 5324 + (1 : F) * rho 5325) = ((2 : F) * rho 5323)

def relationRow4928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5327) * ((2 : F) + (1 : F) * rho 5324 + (-1 : F) * rho 5325) = ((1 : F) * rho 5324 + (1 : F) * rho 5325)

def relationLc933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 19⟩, ⟨(1 : F), 5070, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4929 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc933 rho) = ((1 : F) * rho 5328)

def relationRow4930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5328) * ((1 : F) * rho 5326 + (1 : F) * rho 5327) = ((1 : F) * rho 5329)

def relationLc934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5327) * (relationLc934 rho) = ((1 : F) * rho 5330)

def relationLc935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5326) * (relationLc935 rho) = ((1 : F) * rho 5331)

def relationRow4933 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5330) * ((1 : F) * rho 5331) = ((1 : F) * rho 5332)

def relationRow4934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5333) * ((1 : F) + (1 : F) * rho 5332) = ((1 : F) * rho 5330 + (1 : F) * rho 5331)

def relationRow4935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5334) * ((1 : F) + (-1 : F) * rho 5332) = ((1 : F) * rho 5329 + (-1 : F) * rho 5330 + (-1 : F) * rho 5331)

def relationLc936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 19⟩], residual := [((1 : F), 5333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2059) * (relationLc936 rho) = ((1 : F) * rho 5335)

def relationLc937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 19⟩], residual := [((1 : F), 5334)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2059) * (relationLc937 rho) = ((1 : F) * rho 5336)

def relationRow4938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5326) * ((1 : F) * rho 5327) = ((1 : F) * rho 5337)

def relationRow4939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5326) * ((1 : F) * rho 5326) = ((1 : F) * rho 5338)

def relationRow4940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5327) * ((1 : F) * rho 5327) = ((1 : F) * rho 5339)

def relationRow4941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5340) * ((-1 : F) * rho 5338 + (1 : F) * rho 5339) = ((2 : F) * rho 5337)

def relationRow4942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5341) * ((2 : F) + (1 : F) * rho 5338 + (-1 : F) * rho 5339) = ((1 : F) * rho 5338 + (1 : F) * rho 5339)

def relationLc938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 20⟩, ⟨(1 : F), 5070, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4943 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc938 rho) = ((1 : F) * rho 5342)

def relationRow4944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5342) * ((1 : F) * rho 5340 + (1 : F) * rho 5341) = ((1 : F) * rho 5343)

def relationLc939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5341) * (relationLc939 rho) = ((1 : F) * rho 5344)

def relationLc940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5340) * (relationLc940 rho) = ((1 : F) * rho 5345)

def relationRow4947 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5344) * ((1 : F) * rho 5345) = ((1 : F) * rho 5346)

def relationRow4948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5347) * ((1 : F) + (1 : F) * rho 5346) = ((1 : F) * rho 5344 + (1 : F) * rho 5345)

def relationRow4949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5348) * ((1 : F) + (-1 : F) * rho 5346) = ((1 : F) * rho 5343 + (-1 : F) * rho 5344 + (-1 : F) * rho 5345)

def relationLc941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 20⟩], residual := [((1 : F), 5347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * (relationLc941 rho) = ((1 : F) * rho 5349)

def relationLc942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 20⟩], residual := [((1 : F), 5348)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * (relationLc942 rho) = ((1 : F) * rho 5350)

def relationRow4952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5340) * ((1 : F) * rho 5341) = ((1 : F) * rho 5351)

def relationRow4953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5340) * ((1 : F) * rho 5340) = ((1 : F) * rho 5352)

def relationRow4954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5341) * ((1 : F) * rho 5341) = ((1 : F) * rho 5353)

def relationRow4955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5354) * ((-1 : F) * rho 5352 + (1 : F) * rho 5353) = ((2 : F) * rho 5351)

def relationRow4956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5355) * ((2 : F) + (1 : F) * rho 5352 + (-1 : F) * rho 5353) = ((1 : F) * rho 5352 + (1 : F) * rho 5353)

def relationLc943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 21⟩, ⟨(1 : F), 5070, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4957 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc943 rho) = ((1 : F) * rho 5356)

def relationRow4958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5356) * ((1 : F) * rho 5354 + (1 : F) * rho 5355) = ((1 : F) * rho 5357)

def relationLc944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5355) * (relationLc944 rho) = ((1 : F) * rho 5358)

def relationLc945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5354) * (relationLc945 rho) = ((1 : F) * rho 5359)

def relationRow4961 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5358) * ((1 : F) * rho 5359) = ((1 : F) * rho 5360)

def relationRow4962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5361) * ((1 : F) + (1 : F) * rho 5360) = ((1 : F) * rho 5358 + (1 : F) * rho 5359)

def relationRow4963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5362) * ((1 : F) + (-1 : F) * rho 5360) = ((1 : F) * rho 5357 + (-1 : F) * rho 5358 + (-1 : F) * rho 5359)

def relationLc946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 21⟩], residual := [((1 : F), 5361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2061) * (relationLc946 rho) = ((1 : F) * rho 5363)

def relationLc947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 21⟩], residual := [((1 : F), 5362)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2061) * (relationLc947 rho) = ((1 : F) * rho 5364)

def relationRow4966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5354) * ((1 : F) * rho 5355) = ((1 : F) * rho 5365)

def relationRow4967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5354) * ((1 : F) * rho 5354) = ((1 : F) * rho 5366)

def relationRow4968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5355) * ((1 : F) * rho 5355) = ((1 : F) * rho 5367)

def relationRow4969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * ((-1 : F) * rho 5366 + (1 : F) * rho 5367) = ((2 : F) * rho 5365)

def relationRow4970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5369) * ((2 : F) + (1 : F) * rho 5366 + (-1 : F) * rho 5367) = ((1 : F) * rho 5366 + (1 : F) * rho 5367)

def relationLc948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 22⟩, ⟨(1 : F), 5070, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4971 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc948 rho) = ((1 : F) * rho 5370)

def relationRow4972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5370) * ((1 : F) * rho 5368 + (1 : F) * rho 5369) = ((1 : F) * rho 5371)

def relationLc949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5369) * (relationLc949 rho) = ((1 : F) * rho 5372)

def relationLc950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * (relationLc950 rho) = ((1 : F) * rho 5373)

def relationRow4975 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5372) * ((1 : F) * rho 5373) = ((1 : F) * rho 5374)

def relationRow4976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5375) * ((1 : F) + (1 : F) * rho 5374) = ((1 : F) * rho 5372 + (1 : F) * rho 5373)

def relationRow4977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5376) * ((1 : F) + (-1 : F) * rho 5374) = ((1 : F) * rho 5371 + (-1 : F) * rho 5372 + (-1 : F) * rho 5373)

def relationLc951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 22⟩], residual := [((1 : F), 5375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2062) * (relationLc951 rho) = ((1 : F) * rho 5377)

def relationLc952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 22⟩], residual := [((1 : F), 5376)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2062) * (relationLc952 rho) = ((1 : F) * rho 5378)

def relationRow4980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * ((1 : F) * rho 5369) = ((1 : F) * rho 5379)

def relationRow4981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * ((1 : F) * rho 5368) = ((1 : F) * rho 5380)

def relationRow4982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5369) * ((1 : F) * rho 5369) = ((1 : F) * rho 5381)

def relationRow4983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5382) * ((-1 : F) * rho 5380 + (1 : F) * rho 5381) = ((2 : F) * rho 5379)

def relationRow4984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5383) * ((2 : F) + (1 : F) * rho 5380 + (-1 : F) * rho 5381) = ((1 : F) * rho 5380 + (1 : F) * rho 5381)

def relationLc953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 23⟩, ⟨(1 : F), 5070, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4985 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc953 rho) = ((1 : F) * rho 5384)

def relationRow4986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5384) * ((1 : F) * rho 5382 + (1 : F) * rho 5383) = ((1 : F) * rho 5385)

def relationLc954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5383) * (relationLc954 rho) = ((1 : F) * rho 5386)

def relationLc955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5382) * (relationLc955 rho) = ((1 : F) * rho 5387)

def relationRow4989 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5386) * ((1 : F) * rho 5387) = ((1 : F) * rho 5388)

def relationRow4990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5389) * ((1 : F) + (1 : F) * rho 5388) = ((1 : F) * rho 5386 + (1 : F) * rho 5387)

def relationRow4991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5390) * ((1 : F) + (-1 : F) * rho 5388) = ((1 : F) * rho 5385 + (-1 : F) * rho 5386 + (-1 : F) * rho 5387)

def relationLc956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 23⟩], residual := [((1 : F), 5389)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2063) * (relationLc956 rho) = ((1 : F) * rho 5391)

def relationLc957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 23⟩], residual := [((1 : F), 5390)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2063) * (relationLc957 rho) = ((1 : F) * rho 5392)

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

def relationLc958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 24⟩, ⟨(1 : F), 5070, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4999 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc958 rho) = ((1 : F) * rho 5398)

def relationRow5000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5398) * ((1 : F) * rho 5396 + (1 : F) * rho 5397) = ((1 : F) * rho 5399)

def relationLc959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5397) * (relationLc959 rho) = ((1 : F) * rho 5400)

def relationLc960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5396) * (relationLc960 rho) = ((1 : F) * rho 5401)

def relationRow5003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5400) * ((1 : F) * rho 5401) = ((1 : F) * rho 5402)

def relationRow5004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5403) * ((1 : F) + (1 : F) * rho 5402) = ((1 : F) * rho 5400 + (1 : F) * rho 5401)

def relationRow5005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5404) * ((1 : F) + (-1 : F) * rho 5402) = ((1 : F) * rho 5399 + (-1 : F) * rho 5400 + (-1 : F) * rho 5401)

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 24⟩], residual := [((1 : F), 5403)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * (relationLc961 rho) = ((1 : F) * rho 5405)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 24⟩], residual := [((1 : F), 5404)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * (relationLc962 rho) = ((1 : F) * rho 5406)

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

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 25⟩, ⟨(1 : F), 5070, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5013 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc963 rho) = ((1 : F) * rho 5412)

def relationRow5014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5412) * ((1 : F) * rho 5410 + (1 : F) * rho 5411) = ((1 : F) * rho 5413)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5411) * (relationLc964 rho) = ((1 : F) * rho 5414)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5410) * (relationLc965 rho) = ((1 : F) * rho 5415)

def relationRow5017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5414) * ((1 : F) * rho 5415) = ((1 : F) * rho 5416)

def relationRow5018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5417) * ((1 : F) + (1 : F) * rho 5416) = ((1 : F) * rho 5414 + (1 : F) * rho 5415)

def relationRow5019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5418) * ((1 : F) + (-1 : F) * rho 5416) = ((1 : F) * rho 5413 + (-1 : F) * rho 5414 + (-1 : F) * rho 5415)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 25⟩], residual := [((1 : F), 5417)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2065) * (relationLc966 rho) = ((1 : F) * rho 5419)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 25⟩], residual := [((1 : F), 5418)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2065) * (relationLc967 rho) = ((1 : F) * rho 5420)

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

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 26⟩, ⟨(1 : F), 5070, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5027 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc968 rho) = ((1 : F) * rho 5426)

def relationRow5028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5426) * ((1 : F) * rho 5424 + (1 : F) * rho 5425) = ((1 : F) * rho 5427)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5425) * (relationLc969 rho) = ((1 : F) * rho 5428)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5424) * (relationLc970 rho) = ((1 : F) * rho 5429)

def relationRow5031 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5428) * ((1 : F) * rho 5429) = ((1 : F) * rho 5430)

def relationRow5032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5431) * ((1 : F) + (1 : F) * rho 5430) = ((1 : F) * rho 5428 + (1 : F) * rho 5429)

def relationRow5033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5432) * ((1 : F) + (-1 : F) * rho 5430) = ((1 : F) * rho 5427 + (-1 : F) * rho 5428 + (-1 : F) * rho 5429)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 26⟩], residual := [((1 : F), 5431)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2066) * (relationLc971 rho) = ((1 : F) * rho 5433)

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 26⟩], residual := [((1 : F), 5432)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2066) * (relationLc972 rho) = ((1 : F) * rho 5434)

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

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 27⟩, ⟨(1 : F), 5070, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5041 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc973 rho) = ((1 : F) * rho 5440)

def relationRow5042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5440) * ((1 : F) * rho 5438 + (1 : F) * rho 5439) = ((1 : F) * rho 5441)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5439) * (relationLc974 rho) = ((1 : F) * rho 5442)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5438) * (relationLc975 rho) = ((1 : F) * rho 5443)

def relationRow5045 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5442) * ((1 : F) * rho 5443) = ((1 : F) * rho 5444)

def relationRow5046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5445) * ((1 : F) + (1 : F) * rho 5444) = ((1 : F) * rho 5442 + (1 : F) * rho 5443)

def relationRow5047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5446) * ((1 : F) + (-1 : F) * rho 5444) = ((1 : F) * rho 5441 + (-1 : F) * rho 5442 + (-1 : F) * rho 5443)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 27⟩], residual := [((1 : F), 5445)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2067) * (relationLc976 rho) = ((1 : F) * rho 5447)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 27⟩], residual := [((1 : F), 5446)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2067) * (relationLc977 rho) = ((1 : F) * rho 5448)

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

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 28⟩, ⟨(1 : F), 5070, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5055 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc978 rho) = ((1 : F) * rho 5454)

def relationRow5056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5454) * ((1 : F) * rho 5452 + (1 : F) * rho 5453) = ((1 : F) * rho 5455)

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5453) * (relationLc979 rho) = ((1 : F) * rho 5456)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5452) * (relationLc980 rho) = ((1 : F) * rho 5457)

def relationRow5059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5456) * ((1 : F) * rho 5457) = ((1 : F) * rho 5458)

def relationRow5060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5459) * ((1 : F) + (1 : F) * rho 5458) = ((1 : F) * rho 5456 + (1 : F) * rho 5457)

def relationRow5061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5460) * ((1 : F) + (-1 : F) * rho 5458) = ((1 : F) * rho 5455 + (-1 : F) * rho 5456 + (-1 : F) * rho 5457)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 28⟩], residual := [((1 : F), 5459)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2068) * (relationLc981 rho) = ((1 : F) * rho 5461)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 28⟩], residual := [((1 : F), 5460)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2068) * (relationLc982 rho) = ((1 : F) * rho 5462)

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

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 29⟩, ⟨(1 : F), 5070, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5069 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc983 rho) = ((1 : F) * rho 5468)

def relationRow5070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5468) * ((1 : F) * rho 5466 + (1 : F) * rho 5467) = ((1 : F) * rho 5469)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5467) * (relationLc984 rho) = ((1 : F) * rho 5470)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5466) * (relationLc985 rho) = ((1 : F) * rho 5471)

def relationRow5073 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5470) * ((1 : F) * rho 5471) = ((1 : F) * rho 5472)

def relationRow5074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5473) * ((1 : F) + (1 : F) * rho 5472) = ((1 : F) * rho 5470 + (1 : F) * rho 5471)

def relationRow5075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5474) * ((1 : F) + (-1 : F) * rho 5472) = ((1 : F) * rho 5469 + (-1 : F) * rho 5470 + (-1 : F) * rho 5471)

def relationLc986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 29⟩], residual := [((1 : F), 5473)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2069) * (relationLc986 rho) = ((1 : F) * rho 5475)

def relationLc987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 29⟩], residual := [((1 : F), 5474)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2069) * (relationLc987 rho) = ((1 : F) * rho 5476)

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

def relationLc988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 30⟩, ⟨(1 : F), 5070, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5083 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc988 rho) = ((1 : F) * rho 5482)

def relationRow5084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5482) * ((1 : F) * rho 5480 + (1 : F) * rho 5481) = ((1 : F) * rho 5483)

def relationLc989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5481) * (relationLc989 rho) = ((1 : F) * rho 5484)

def relationLc990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * (relationLc990 rho) = ((1 : F) * rho 5485)

def relationRow5087 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5484) * ((1 : F) * rho 5485) = ((1 : F) * rho 5486)

def relationRow5088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5487) * ((1 : F) + (1 : F) * rho 5486) = ((1 : F) * rho 5484 + (1 : F) * rho 5485)

def relationRow5089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5488) * ((1 : F) + (-1 : F) * rho 5486) = ((1 : F) * rho 5483 + (-1 : F) * rho 5484 + (-1 : F) * rho 5485)

def relationLc991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 30⟩], residual := [((1 : F), 5487)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * (relationLc991 rho) = ((1 : F) * rho 5489)

def relationLc992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 30⟩], residual := [((1 : F), 5488)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * (relationLc992 rho) = ((1 : F) * rho 5490)

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

def relationLc993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 31⟩, ⟨(1 : F), 5070, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5097 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc993 rho) = ((1 : F) * rho 5496)

def relationRow5098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5496) * ((1 : F) * rho 5494 + (1 : F) * rho 5495) = ((1 : F) * rho 5497)

def relationLc994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5495) * (relationLc994 rho) = ((1 : F) * rho 5498)

def relationLc995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5494) * (relationLc995 rho) = ((1 : F) * rho 5499)

def relationRow5101 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5498) * ((1 : F) * rho 5499) = ((1 : F) * rho 5500)

def relationRow5102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5501) * ((1 : F) + (1 : F) * rho 5500) = ((1 : F) * rho 5498 + (1 : F) * rho 5499)

def relationRow5103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5502) * ((1 : F) + (-1 : F) * rho 5500) = ((1 : F) * rho 5497 + (-1 : F) * rho 5498 + (-1 : F) * rho 5499)

def relationLc996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 31⟩], residual := [((1 : F), 5501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2071) * (relationLc996 rho) = ((1 : F) * rho 5503)

def relationLc997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 31⟩], residual := [((1 : F), 5502)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2071) * (relationLc997 rho) = ((1 : F) * rho 5504)

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

def relationLc998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 32⟩, ⟨(1 : F), 5070, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5111 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc998 rho) = ((1 : F) * rho 5510)

def relationRow5112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5510) * ((1 : F) * rho 5508 + (1 : F) * rho 5509) = ((1 : F) * rho 5511)

def relationLc999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5509) * (relationLc999 rho) = ((1 : F) * rho 5512)

def relationLc1000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5508) * (relationLc1000 rho) = ((1 : F) * rho 5513)

def relationRow5115 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5512) * ((1 : F) * rho 5513) = ((1 : F) * rho 5514)

def relationRow5116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5515) * ((1 : F) + (1 : F) * rho 5514) = ((1 : F) * rho 5512 + (1 : F) * rho 5513)

def relationRow5117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5516) * ((1 : F) + (-1 : F) * rho 5514) = ((1 : F) * rho 5511 + (-1 : F) * rho 5512 + (-1 : F) * rho 5513)

def relationLc1001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 32⟩], residual := [((1 : F), 5515)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2072) * (relationLc1001 rho) = ((1 : F) * rho 5517)

def relationLc1002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 32⟩], residual := [((1 : F), 5516)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2072) * (relationLc1002 rho) = ((1 : F) * rho 5518)

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

def relationLc1003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 33⟩, ⟨(1 : F), 5070, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5125 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1003 rho) = ((1 : F) * rho 5524)

def relationRow5126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5524) * ((1 : F) * rho 5522 + (1 : F) * rho 5523) = ((1 : F) * rho 5525)

def relationLc1004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523) * (relationLc1004 rho) = ((1 : F) * rho 5526)

def relationLc1005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5522) * (relationLc1005 rho) = ((1 : F) * rho 5527)

def relationRow5129 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5526) * ((1 : F) * rho 5527) = ((1 : F) * rho 5528)

def relationRow5130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5529) * ((1 : F) + (1 : F) * rho 5528) = ((1 : F) * rho 5526 + (1 : F) * rho 5527)

def relationRow5131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5530) * ((1 : F) + (-1 : F) * rho 5528) = ((1 : F) * rho 5525 + (-1 : F) * rho 5526 + (-1 : F) * rho 5527)

def relationLc1006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 33⟩], residual := [((1 : F), 5529)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2073) * (relationLc1006 rho) = ((1 : F) * rho 5531)

def relationLc1007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 33⟩], residual := [((1 : F), 5530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2073) * (relationLc1007 rho) = ((1 : F) * rho 5532)

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

def relationLc1008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 34⟩, ⟨(1 : F), 5070, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5139 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1008 rho) = ((1 : F) * rho 5538)

def relationRow5140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5538) * ((1 : F) * rho 5536 + (1 : F) * rho 5537) = ((1 : F) * rho 5539)

def relationLc1009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5537) * (relationLc1009 rho) = ((1 : F) * rho 5540)

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * (relationLc1010 rho) = ((1 : F) * rho 5541)

def relationRow5143 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5540) * ((1 : F) * rho 5541) = ((1 : F) * rho 5542)

def relationRow5144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5543) * ((1 : F) + (1 : F) * rho 5542) = ((1 : F) * rho 5540 + (1 : F) * rho 5541)

def relationRow5145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5544) * ((1 : F) + (-1 : F) * rho 5542) = ((1 : F) * rho 5539 + (-1 : F) * rho 5540 + (-1 : F) * rho 5541)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 34⟩], residual := [((1 : F), 5543)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2074) * (relationLc1011 rho) = ((1 : F) * rho 5545)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 34⟩], residual := [((1 : F), 5544)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2074) * (relationLc1012 rho) = ((1 : F) * rho 5546)

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

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 35⟩, ⟨(1 : F), 5070, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5153 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1013 rho) = ((1 : F) * rho 5552)

def relationRow5154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5552) * ((1 : F) * rho 5550 + (1 : F) * rho 5551) = ((1 : F) * rho 5553)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5551) * (relationLc1014 rho) = ((1 : F) * rho 5554)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5550) * (relationLc1015 rho) = ((1 : F) * rho 5555)

def relationRow5157 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5554) * ((1 : F) * rho 5555) = ((1 : F) * rho 5556)

def relationRow5158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5557) * ((1 : F) + (1 : F) * rho 5556) = ((1 : F) * rho 5554 + (1 : F) * rho 5555)

def relationRow5159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5558) * ((1 : F) + (-1 : F) * rho 5556) = ((1 : F) * rho 5553 + (-1 : F) * rho 5554 + (-1 : F) * rho 5555)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 35⟩], residual := [((1 : F), 5557)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2075) * (relationLc1016 rho) = ((1 : F) * rho 5559)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 35⟩], residual := [((1 : F), 5558)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2075) * (relationLc1017 rho) = ((1 : F) * rho 5560)

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

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 36⟩, ⟨(1 : F), 5070, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5167 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1018 rho) = ((1 : F) * rho 5566)

def relationRow5168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5566) * ((1 : F) * rho 5564 + (1 : F) * rho 5565) = ((1 : F) * rho 5567)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5565) * (relationLc1019 rho) = ((1 : F) * rho 5568)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5564) * (relationLc1020 rho) = ((1 : F) * rho 5569)

def relationRow5171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5568) * ((1 : F) * rho 5569) = ((1 : F) * rho 5570)

def relationRow5172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5571) * ((1 : F) + (1 : F) * rho 5570) = ((1 : F) * rho 5568 + (1 : F) * rho 5569)

def relationRow5173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5572) * ((1 : F) + (-1 : F) * rho 5570) = ((1 : F) * rho 5567 + (-1 : F) * rho 5568 + (-1 : F) * rho 5569)

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 36⟩], residual := [((1 : F), 5571)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2076) * (relationLc1021 rho) = ((1 : F) * rho 5573)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 36⟩], residual := [((1 : F), 5572)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2076) * (relationLc1022 rho) = ((1 : F) * rho 5574)

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

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 37⟩, ⟨(1 : F), 5070, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5181 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1023 rho) = ((1 : F) * rho 5580)

def relationRow5182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5580) * ((1 : F) * rho 5578 + (1 : F) * rho 5579) = ((1 : F) * rho 5581)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * (relationLc1024 rho) = ((1 : F) * rho 5582)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5578) * (relationLc1025 rho) = ((1 : F) * rho 5583)

def relationRow5185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5582) * ((1 : F) * rho 5583) = ((1 : F) * rho 5584)

def relationRow5186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5585) * ((1 : F) + (1 : F) * rho 5584) = ((1 : F) * rho 5582 + (1 : F) * rho 5583)

def relationRow5187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5586) * ((1 : F) + (-1 : F) * rho 5584) = ((1 : F) * rho 5581 + (-1 : F) * rho 5582 + (-1 : F) * rho 5583)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 37⟩], residual := [((1 : F), 5585)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2077) * (relationLc1026 rho) = ((1 : F) * rho 5587)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 37⟩], residual := [((1 : F), 5586)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2077) * (relationLc1027 rho) = ((1 : F) * rho 5588)

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

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 38⟩, ⟨(1 : F), 5070, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5195 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1028 rho) = ((1 : F) * rho 5594)

def relationRow5196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5594) * ((1 : F) * rho 5592 + (1 : F) * rho 5593) = ((1 : F) * rho 5595)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5593) * (relationLc1029 rho) = ((1 : F) * rho 5596)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5592) * (relationLc1030 rho) = ((1 : F) * rho 5597)

def relationRow5199 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5596) * ((1 : F) * rho 5597) = ((1 : F) * rho 5598)

def relationRow5200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5599) * ((1 : F) + (1 : F) * rho 5598) = ((1 : F) * rho 5596 + (1 : F) * rho 5597)

def relationRow5201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5600) * ((1 : F) + (-1 : F) * rho 5598) = ((1 : F) * rho 5595 + (-1 : F) * rho 5596 + (-1 : F) * rho 5597)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 38⟩], residual := [((1 : F), 5599)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * (relationLc1031 rho) = ((1 : F) * rho 5601)

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 38⟩], residual := [((1 : F), 5600)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * (relationLc1032 rho) = ((1 : F) * rho 5602)

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

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 39⟩, ⟨(1 : F), 5070, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5209 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1033 rho) = ((1 : F) * rho 5608)

def relationRow5210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5608) * ((1 : F) * rho 5606 + (1 : F) * rho 5607) = ((1 : F) * rho 5609)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5607) * (relationLc1034 rho) = ((1 : F) * rho 5610)

def relationLc1035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * (relationLc1035 rho) = ((1 : F) * rho 5611)

def relationRow5213 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5610) * ((1 : F) * rho 5611) = ((1 : F) * rho 5612)

def relationRow5214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5613) * ((1 : F) + (1 : F) * rho 5612) = ((1 : F) * rho 5610 + (1 : F) * rho 5611)

def relationRow5215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5614) * ((1 : F) + (-1 : F) * rho 5612) = ((1 : F) * rho 5609 + (-1 : F) * rho 5610 + (-1 : F) * rho 5611)

def relationLc1036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 39⟩], residual := [((1 : F), 5613)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2079) * (relationLc1036 rho) = ((1 : F) * rho 5615)

def relationLc1037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 39⟩], residual := [((1 : F), 5614)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2079) * (relationLc1037 rho) = ((1 : F) * rho 5616)

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

def relationLc1038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 40⟩, ⟨(1 : F), 5070, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5223 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1038 rho) = ((1 : F) * rho 5622)

def relationRow5224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5622) * ((1 : F) * rho 5620 + (1 : F) * rho 5621) = ((1 : F) * rho 5623)

def relationLc1039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5621) * (relationLc1039 rho) = ((1 : F) * rho 5624)

def relationLc1040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5620) * (relationLc1040 rho) = ((1 : F) * rho 5625)

def relationRow5227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5624) * ((1 : F) * rho 5625) = ((1 : F) * rho 5626)

def relationRow5228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5627) * ((1 : F) + (1 : F) * rho 5626) = ((1 : F) * rho 5624 + (1 : F) * rho 5625)

def relationRow5229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5628) * ((1 : F) + (-1 : F) * rho 5626) = ((1 : F) * rho 5623 + (-1 : F) * rho 5624 + (-1 : F) * rho 5625)

def relationLc1041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 40⟩], residual := [((1 : F), 5627)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2080) * (relationLc1041 rho) = ((1 : F) * rho 5629)

def relationLc1042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 40⟩], residual := [((1 : F), 5628)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2080) * (relationLc1042 rho) = ((1 : F) * rho 5630)

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

def relationLc1043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 41⟩, ⟨(1 : F), 5070, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5237 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1043 rho) = ((1 : F) * rho 5636)

def relationRow5238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5636) * ((1 : F) * rho 5634 + (1 : F) * rho 5635) = ((1 : F) * rho 5637)

def relationLc1044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5635) * (relationLc1044 rho) = ((1 : F) * rho 5638)

def relationLc1045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * (relationLc1045 rho) = ((1 : F) * rho 5639)

def relationRow5241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5638) * ((1 : F) * rho 5639) = ((1 : F) * rho 5640)

def relationRow5242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5641) * ((1 : F) + (1 : F) * rho 5640) = ((1 : F) * rho 5638 + (1 : F) * rho 5639)

def relationRow5243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5642) * ((1 : F) + (-1 : F) * rho 5640) = ((1 : F) * rho 5637 + (-1 : F) * rho 5638 + (-1 : F) * rho 5639)

def relationLc1046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 41⟩], residual := [((1 : F), 5641)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2081) * (relationLc1046 rho) = ((1 : F) * rho 5643)

def relationLc1047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 41⟩], residual := [((1 : F), 5642)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2081) * (relationLc1047 rho) = ((1 : F) * rho 5644)

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

def relationLc1048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 42⟩, ⟨(1 : F), 5070, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5251 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1048 rho) = ((1 : F) * rho 5650)

def relationRow5252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5650) * ((1 : F) * rho 5648 + (1 : F) * rho 5649) = ((1 : F) * rho 5651)

def relationLc1049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5649) * (relationLc1049 rho) = ((1 : F) * rho 5652)

def relationLc1050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5648) * (relationLc1050 rho) = ((1 : F) * rho 5653)

def relationRow5255 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5652) * ((1 : F) * rho 5653) = ((1 : F) * rho 5654)

def relationRow5256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5655) * ((1 : F) + (1 : F) * rho 5654) = ((1 : F) * rho 5652 + (1 : F) * rho 5653)

def relationRow5257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5656) * ((1 : F) + (-1 : F) * rho 5654) = ((1 : F) * rho 5651 + (-1 : F) * rho 5652 + (-1 : F) * rho 5653)

def relationLc1051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 42⟩], residual := [((1 : F), 5655)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2082) * (relationLc1051 rho) = ((1 : F) * rho 5657)

def relationLc1052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 42⟩], residual := [((1 : F), 5656)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2082) * (relationLc1052 rho) = ((1 : F) * rho 5658)

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

def relationLc1053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 43⟩, ⟨(1 : F), 5070, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5265 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1053 rho) = ((1 : F) * rho 5664)

def relationRow5266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5664) * ((1 : F) * rho 5662 + (1 : F) * rho 5663) = ((1 : F) * rho 5665)

def relationLc1054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5663) * (relationLc1054 rho) = ((1 : F) * rho 5666)

def relationLc1055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5662) * (relationLc1055 rho) = ((1 : F) * rho 5667)

def relationRow5269 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5666) * ((1 : F) * rho 5667) = ((1 : F) * rho 5668)

def relationRow5270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5669) * ((1 : F) + (1 : F) * rho 5668) = ((1 : F) * rho 5666 + (1 : F) * rho 5667)

def relationRow5271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5670) * ((1 : F) + (-1 : F) * rho 5668) = ((1 : F) * rho 5665 + (-1 : F) * rho 5666 + (-1 : F) * rho 5667)

def relationLc1056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 43⟩], residual := [((1 : F), 5669)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2083) * (relationLc1056 rho) = ((1 : F) * rho 5671)

def relationLc1057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 43⟩], residual := [((1 : F), 5670)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2083) * (relationLc1057 rho) = ((1 : F) * rho 5672)

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

def relationLc1058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 44⟩, ⟨(1 : F), 5070, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5279 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1058 rho) = ((1 : F) * rho 5678)

def relationRow5280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5678) * ((1 : F) * rho 5676 + (1 : F) * rho 5677) = ((1 : F) * rho 5679)

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5677) * (relationLc1059 rho) = ((1 : F) * rho 5680)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5676) * (relationLc1060 rho) = ((1 : F) * rho 5681)

def relationRow5283 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5680) * ((1 : F) * rho 5681) = ((1 : F) * rho 5682)

def relationRow5284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5683) * ((1 : F) + (1 : F) * rho 5682) = ((1 : F) * rho 5680 + (1 : F) * rho 5681)

def relationRow5285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5684) * ((1 : F) + (-1 : F) * rho 5682) = ((1 : F) * rho 5679 + (-1 : F) * rho 5680 + (-1 : F) * rho 5681)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 44⟩], residual := [((1 : F), 5683)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2084) * (relationLc1061 rho) = ((1 : F) * rho 5685)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 44⟩], residual := [((1 : F), 5684)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2084) * (relationLc1062 rho) = ((1 : F) * rho 5686)

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

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 45⟩, ⟨(1 : F), 5070, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5293 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1063 rho) = ((1 : F) * rho 5692)

def relationRow5294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5692) * ((1 : F) * rho 5690 + (1 : F) * rho 5691) = ((1 : F) * rho 5693)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5691) * (relationLc1064 rho) = ((1 : F) * rho 5694)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5690) * (relationLc1065 rho) = ((1 : F) * rho 5695)

def relationRow5297 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5694) * ((1 : F) * rho 5695) = ((1 : F) * rho 5696)

def relationRow5298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5697) * ((1 : F) + (1 : F) * rho 5696) = ((1 : F) * rho 5694 + (1 : F) * rho 5695)

def relationRow5299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5698) * ((1 : F) + (-1 : F) * rho 5696) = ((1 : F) * rho 5693 + (-1 : F) * rho 5694 + (-1 : F) * rho 5695)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 45⟩], residual := [((1 : F), 5697)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2085) * (relationLc1066 rho) = ((1 : F) * rho 5699)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 45⟩], residual := [((1 : F), 5698)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2085) * (relationLc1067 rho) = ((1 : F) * rho 5700)

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

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 46⟩, ⟨(1 : F), 5070, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5307 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1068 rho) = ((1 : F) * rho 5706)

def relationRow5308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5706) * ((1 : F) * rho 5704 + (1 : F) * rho 5705) = ((1 : F) * rho 5707)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5705) * (relationLc1069 rho) = ((1 : F) * rho 5708)

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5704) * (relationLc1070 rho) = ((1 : F) * rho 5709)

def relationRow5311 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5708) * ((1 : F) * rho 5709) = ((1 : F) * rho 5710)

def relationRow5312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5711) * ((1 : F) + (1 : F) * rho 5710) = ((1 : F) * rho 5708 + (1 : F) * rho 5709)

def relationRow5313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5712) * ((1 : F) + (-1 : F) * rho 5710) = ((1 : F) * rho 5707 + (-1 : F) * rho 5708 + (-1 : F) * rho 5709)

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 46⟩], residual := [((1 : F), 5711)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * (relationLc1071 rho) = ((1 : F) * rho 5713)

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 46⟩], residual := [((1 : F), 5712)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * (relationLc1072 rho) = ((1 : F) * rho 5714)

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

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 47⟩, ⟨(1 : F), 5070, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5321 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1073 rho) = ((1 : F) * rho 5720)

def relationRow5322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5720) * ((1 : F) * rho 5718 + (1 : F) * rho 5719) = ((1 : F) * rho 5721)

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5719) * (relationLc1074 rho) = ((1 : F) * rho 5722)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5718) * (relationLc1075 rho) = ((1 : F) * rho 5723)

def relationRow5325 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5722) * ((1 : F) * rho 5723) = ((1 : F) * rho 5724)

def relationRow5326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5725) * ((1 : F) + (1 : F) * rho 5724) = ((1 : F) * rho 5722 + (1 : F) * rho 5723)

def relationRow5327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5726) * ((1 : F) + (-1 : F) * rho 5724) = ((1 : F) * rho 5721 + (-1 : F) * rho 5722 + (-1 : F) * rho 5723)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 47⟩], residual := [((1 : F), 5725)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2087) * (relationLc1076 rho) = ((1 : F) * rho 5727)

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 47⟩], residual := [((1 : F), 5726)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2087) * (relationLc1077 rho) = ((1 : F) * rho 5728)

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

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 48⟩, ⟨(1 : F), 5070, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5335 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1078 rho) = ((1 : F) * rho 5734)

def relationRow5336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5734) * ((1 : F) * rho 5732 + (1 : F) * rho 5733) = ((1 : F) * rho 5735)

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5733) * (relationLc1079 rho) = ((1 : F) * rho 5736)

def relationLc1080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5732) * (relationLc1080 rho) = ((1 : F) * rho 5737)

def relationRow5339 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5736) * ((1 : F) * rho 5737) = ((1 : F) * rho 5738)

def relationRow5340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5739) * ((1 : F) + (1 : F) * rho 5738) = ((1 : F) * rho 5736 + (1 : F) * rho 5737)

def relationRow5341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5740) * ((1 : F) + (-1 : F) * rho 5738) = ((1 : F) * rho 5735 + (-1 : F) * rho 5736 + (-1 : F) * rho 5737)

def relationLc1081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 48⟩], residual := [((1 : F), 5739)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2088) * (relationLc1081 rho) = ((1 : F) * rho 5741)

def relationLc1082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 48⟩], residual := [((1 : F), 5740)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2088) * (relationLc1082 rho) = ((1 : F) * rho 5742)

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

def relationLc1083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 49⟩, ⟨(1 : F), 5070, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5349 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1083 rho) = ((1 : F) * rho 5748)

def relationRow5350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5748) * ((1 : F) * rho 5746 + (1 : F) * rho 5747) = ((1 : F) * rho 5749)

def relationLc1084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5747) * (relationLc1084 rho) = ((1 : F) * rho 5750)

def relationLc1085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5746) * (relationLc1085 rho) = ((1 : F) * rho 5751)

def relationRow5353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5750) * ((1 : F) * rho 5751) = ((1 : F) * rho 5752)

def relationRow5354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5753) * ((1 : F) + (1 : F) * rho 5752) = ((1 : F) * rho 5750 + (1 : F) * rho 5751)

def relationRow5355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5754) * ((1 : F) + (-1 : F) * rho 5752) = ((1 : F) * rho 5749 + (-1 : F) * rho 5750 + (-1 : F) * rho 5751)

def relationLc1086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 49⟩], residual := [((1 : F), 5753)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2089) * (relationLc1086 rho) = ((1 : F) * rho 5755)

def relationLc1087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 49⟩], residual := [((1 : F), 5754)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2089) * (relationLc1087 rho) = ((1 : F) * rho 5756)

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

def relationLc1088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 50⟩, ⟨(1 : F), 5070, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5363 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1088 rho) = ((1 : F) * rho 5762)

def relationRow5364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5762) * ((1 : F) * rho 5760 + (1 : F) * rho 5761) = ((1 : F) * rho 5763)

def relationLc1089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5761) * (relationLc1089 rho) = ((1 : F) * rho 5764)

def relationLc1090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5760) * (relationLc1090 rho) = ((1 : F) * rho 5765)

def relationRow5367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5764) * ((1 : F) * rho 5765) = ((1 : F) * rho 5766)

def relationRow5368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5767) * ((1 : F) + (1 : F) * rho 5766) = ((1 : F) * rho 5764 + (1 : F) * rho 5765)

def relationRow5369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5768) * ((1 : F) + (-1 : F) * rho 5766) = ((1 : F) * rho 5763 + (-1 : F) * rho 5764 + (-1 : F) * rho 5765)

def relationLc1091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 50⟩], residual := [((1 : F), 5767)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2090) * (relationLc1091 rho) = ((1 : F) * rho 5769)

def relationLc1092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 50⟩], residual := [((1 : F), 5768)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2090) * (relationLc1092 rho) = ((1 : F) * rho 5770)

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

def relationLc1093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 51⟩, ⟨(1 : F), 5070, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5377 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1093 rho) = ((1 : F) * rho 5776)

def relationRow5378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5776) * ((1 : F) * rho 5774 + (1 : F) * rho 5775) = ((1 : F) * rho 5777)

def relationLc1094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5775) * (relationLc1094 rho) = ((1 : F) * rho 5778)

def relationLc1095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5774) * (relationLc1095 rho) = ((1 : F) * rho 5779)

def relationRow5381 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5778) * ((1 : F) * rho 5779) = ((1 : F) * rho 5780)

def relationRow5382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5781) * ((1 : F) + (1 : F) * rho 5780) = ((1 : F) * rho 5778 + (1 : F) * rho 5779)

def relationRow5383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5782) * ((1 : F) + (-1 : F) * rho 5780) = ((1 : F) * rho 5777 + (-1 : F) * rho 5778 + (-1 : F) * rho 5779)

def relationLc1096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 51⟩], residual := [((1 : F), 5781)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * (relationLc1096 rho) = ((1 : F) * rho 5783)

def relationLc1097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 51⟩], residual := [((1 : F), 5782)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * (relationLc1097 rho) = ((1 : F) * rho 5784)

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

def relationLc1098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 52⟩, ⟨(1 : F), 5070, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1098 rho) = ((1 : F) * rho 5790)

def relationRow5392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5790) * ((1 : F) * rho 5788 + (1 : F) * rho 5789) = ((1 : F) * rho 5791)

def relationLc1099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5789) * (relationLc1099 rho) = ((1 : F) * rho 5792)

def relationLc1100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * (relationLc1100 rho) = ((1 : F) * rho 5793)

def relationRow5395 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5792) * ((1 : F) * rho 5793) = ((1 : F) * rho 5794)

def relationRow5396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5795) * ((1 : F) + (1 : F) * rho 5794) = ((1 : F) * rho 5792 + (1 : F) * rho 5793)

def relationRow5397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5796) * ((1 : F) + (-1 : F) * rho 5794) = ((1 : F) * rho 5791 + (-1 : F) * rho 5792 + (-1 : F) * rho 5793)

def relationLc1101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 52⟩], residual := [((1 : F), 5795)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2092) * (relationLc1101 rho) = ((1 : F) * rho 5797)

def relationLc1102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 52⟩], residual := [((1 : F), 5796)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2092) * (relationLc1102 rho) = ((1 : F) * rho 5798)

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

def relationLc1103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 53⟩, ⟨(1 : F), 5070, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5405 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1103 rho) = ((1 : F) * rho 5804)

def relationRow5406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5804) * ((1 : F) * rho 5802 + (1 : F) * rho 5803) = ((1 : F) * rho 5805)

def relationLc1104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5803) * (relationLc1104 rho) = ((1 : F) * rho 5806)

def relationLc1105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5802) * (relationLc1105 rho) = ((1 : F) * rho 5807)

def relationRow5409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5806) * ((1 : F) * rho 5807) = ((1 : F) * rho 5808)

def relationRow5410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5809) * ((1 : F) + (1 : F) * rho 5808) = ((1 : F) * rho 5806 + (1 : F) * rho 5807)

def relationRow5411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5810) * ((1 : F) + (-1 : F) * rho 5808) = ((1 : F) * rho 5805 + (-1 : F) * rho 5806 + (-1 : F) * rho 5807)

def relationLc1106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 53⟩], residual := [((1 : F), 5809)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2093) * (relationLc1106 rho) = ((1 : F) * rho 5811)

def relationLc1107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 53⟩], residual := [((1 : F), 5810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2093) * (relationLc1107 rho) = ((1 : F) * rho 5812)

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

def relationLc1108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 54⟩, ⟨(1 : F), 5070, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5419 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1108 rho) = ((1 : F) * rho 5818)

def relationRow5420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5818) * ((1 : F) * rho 5816 + (1 : F) * rho 5817) = ((1 : F) * rho 5819)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5817) * (relationLc1109 rho) = ((1 : F) * rho 5820)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5816) * (relationLc1110 rho) = ((1 : F) * rho 5821)

def relationRow5423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5820) * ((1 : F) * rho 5821) = ((1 : F) * rho 5822)

def relationRow5424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5823) * ((1 : F) + (1 : F) * rho 5822) = ((1 : F) * rho 5820 + (1 : F) * rho 5821)

def relationRow5425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5824) * ((1 : F) + (-1 : F) * rho 5822) = ((1 : F) * rho 5819 + (-1 : F) * rho 5820 + (-1 : F) * rho 5821)

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 54⟩], residual := [((1 : F), 5823)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2094) * (relationLc1111 rho) = ((1 : F) * rho 5825)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 54⟩], residual := [((1 : F), 5824)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2094) * (relationLc1112 rho) = ((1 : F) * rho 5826)

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

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 55⟩, ⟨(1 : F), 5070, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5433 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1113 rho) = ((1 : F) * rho 5832)

def relationRow5434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5832) * ((1 : F) * rho 5830 + (1 : F) * rho 5831) = ((1 : F) * rho 5833)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831) * (relationLc1114 rho) = ((1 : F) * rho 5834)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5830) * (relationLc1115 rho) = ((1 : F) * rho 5835)

def relationRow5437 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5834) * ((1 : F) * rho 5835) = ((1 : F) * rho 5836)

def relationRow5438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5837) * ((1 : F) + (1 : F) * rho 5836) = ((1 : F) * rho 5834 + (1 : F) * rho 5835)

def relationRow5439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5838) * ((1 : F) + (-1 : F) * rho 5836) = ((1 : F) * rho 5833 + (-1 : F) * rho 5834 + (-1 : F) * rho 5835)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 55⟩], residual := [((1 : F), 5837)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * (relationLc1116 rho) = ((1 : F) * rho 5839)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 55⟩], residual := [((1 : F), 5838)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * (relationLc1117 rho) = ((1 : F) * rho 5840)

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

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 56⟩, ⟨(1 : F), 5070, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5447 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1118 rho) = ((1 : F) * rho 5846)

def relationRow5448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5846) * ((1 : F) * rho 5844 + (1 : F) * rho 5845) = ((1 : F) * rho 5847)

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5845) * (relationLc1119 rho) = ((1 : F) * rho 5848)

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * (relationLc1120 rho) = ((1 : F) * rho 5849)

def relationRow5451 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5848) * ((1 : F) * rho 5849) = ((1 : F) * rho 5850)

def relationRow5452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5851) * ((1 : F) + (1 : F) * rho 5850) = ((1 : F) * rho 5848 + (1 : F) * rho 5849)

def relationRow5453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5852) * ((1 : F) + (-1 : F) * rho 5850) = ((1 : F) * rho 5847 + (-1 : F) * rho 5848 + (-1 : F) * rho 5849)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 56⟩], residual := [((1 : F), 5851)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2096) * (relationLc1121 rho) = ((1 : F) * rho 5853)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 56⟩], residual := [((1 : F), 5852)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2096) * (relationLc1122 rho) = ((1 : F) * rho 5854)

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

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 57⟩, ⟨(1 : F), 5070, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5461 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1123 rho) = ((1 : F) * rho 5860)

def relationRow5462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5860) * ((1 : F) * rho 5858 + (1 : F) * rho 5859) = ((1 : F) * rho 5861)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5859) * (relationLc1124 rho) = ((1 : F) * rho 5862)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5858) * (relationLc1125 rho) = ((1 : F) * rho 5863)

def relationRow5465 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5862) * ((1 : F) * rho 5863) = ((1 : F) * rho 5864)

def relationRow5466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5865) * ((1 : F) + (1 : F) * rho 5864) = ((1 : F) * rho 5862 + (1 : F) * rho 5863)

def relationRow5467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5866) * ((1 : F) + (-1 : F) * rho 5864) = ((1 : F) * rho 5861 + (-1 : F) * rho 5862 + (-1 : F) * rho 5863)

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 57⟩], residual := [((1 : F), 5865)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2097) * (relationLc1126 rho) = ((1 : F) * rho 5867)

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 57⟩], residual := [((1 : F), 5866)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2097) * (relationLc1127 rho) = ((1 : F) * rho 5868)

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

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 58⟩, ⟨(1 : F), 5070, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5475 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1128 rho) = ((1 : F) * rho 5874)

def relationRow5476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5874) * ((1 : F) * rho 5872 + (1 : F) * rho 5873) = ((1 : F) * rho 5875)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5873) * (relationLc1129 rho) = ((1 : F) * rho 5876)

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5872) * (relationLc1130 rho) = ((1 : F) * rho 5877)

def relationRow5479 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5876) * ((1 : F) * rho 5877) = ((1 : F) * rho 5878)

def relationRow5480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5879) * ((1 : F) + (1 : F) * rho 5878) = ((1 : F) * rho 5876 + (1 : F) * rho 5877)

def relationRow5481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5880) * ((1 : F) + (-1 : F) * rho 5878) = ((1 : F) * rho 5875 + (-1 : F) * rho 5876 + (-1 : F) * rho 5877)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 58⟩], residual := [((1 : F), 5879)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2098) * (relationLc1131 rho) = ((1 : F) * rho 5881)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 58⟩], residual := [((1 : F), 5880)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2098) * (relationLc1132 rho) = ((1 : F) * rho 5882)

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

def relationLc1133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 59⟩, ⟨(1 : F), 5070, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5489 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1133 rho) = ((1 : F) * rho 5888)

def relationRow5490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5888) * ((1 : F) * rho 5886 + (1 : F) * rho 5887) = ((1 : F) * rho 5889)

def relationLc1134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5887) * (relationLc1134 rho) = ((1 : F) * rho 5890)

def relationLc1135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5886) * (relationLc1135 rho) = ((1 : F) * rho 5891)

def relationRow5493 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5890) * ((1 : F) * rho 5891) = ((1 : F) * rho 5892)

def relationRow5494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5893) * ((1 : F) + (1 : F) * rho 5892) = ((1 : F) * rho 5890 + (1 : F) * rho 5891)

def relationRow5495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5894) * ((1 : F) + (-1 : F) * rho 5892) = ((1 : F) * rho 5889 + (-1 : F) * rho 5890 + (-1 : F) * rho 5891)

def relationLc1136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 59⟩], residual := [((1 : F), 5893)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2099) * (relationLc1136 rho) = ((1 : F) * rho 5895)

def relationLc1137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 59⟩], residual := [((1 : F), 5894)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2099) * (relationLc1137 rho) = ((1 : F) * rho 5896)

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

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
