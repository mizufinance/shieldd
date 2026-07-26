import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs98

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4957 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc941 rho) = ((1 : F) * rho 4451)

def relationRow4958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4451) * ((1 : F) * rho 4449 + (1 : F) * rho 4450) = ((1 : F) * rho 4452)

def relationLc942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 21⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * (relationLc942 rho) = ((1 : F) * rho 4453)

def relationLc943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * (relationLc943 rho) = ((1 : F) * rho 4454)

def relationRow4961 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4453) * ((1 : F) * rho 4454) = ((1 : F) * rho 4455)

def relationRow4962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456) * ((1 : F) + (1 : F) * rho 4455) = ((1 : F) * rho 4453 + (1 : F) * rho 4454)

def relationRow4963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4457) * ((1 : F) + (-1 : F) * rho 4455) = ((1 : F) * rho 4452 + (-1 : F) * rho 4453 + (-1 : F) * rho 4454)

def relationLc944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 21⟩], residual := [((-1 : F), 2212), ((1 : F), 4456)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1154) * (relationLc944 rho) = ((1 : F) * rho 4458)

def relationLc945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 21⟩], residual := [((1 : F), 4457)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1154) * (relationLc945 rho) = ((1 : F) * rho 4459)

def relationRow4966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((1 : F) * rho 4450) = ((1 : F) * rho 4460)

def relationRow4967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((1 : F) * rho 4449) = ((1 : F) * rho 4461)

def relationRow4968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * ((1 : F) * rho 4450) = ((1 : F) * rho 4462)

def relationRow4969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * ((-1 : F) * rho 4461 + (1 : F) * rho 4462) = ((2 : F) * rho 4460)

def relationRow4970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4464) * ((2 : F) + (1 : F) * rho 4461 + (-1 : F) * rho 4462) = ((1 : F) * rho 4461 + (1 : F) * rho 4462)

def relationLc946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 22⟩, ⟨(1 : F), 4178, 14, 21⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4971 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc946 rho) = ((1 : F) * rho 4465)

def relationRow4972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4465) * ((1 : F) * rho 4463 + (1 : F) * rho 4464) = ((1 : F) * rho 4466)

def relationLc947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 22⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4464) * (relationLc947 rho) = ((1 : F) * rho 4467)

def relationLc948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * (relationLc948 rho) = ((1 : F) * rho 4468)

def relationRow4975 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4467) * ((1 : F) * rho 4468) = ((1 : F) * rho 4469)

def relationRow4976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4470) * ((1 : F) + (1 : F) * rho 4469) = ((1 : F) * rho 4467 + (1 : F) * rho 4468)

def relationRow4977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4471) * ((1 : F) + (-1 : F) * rho 4469) = ((1 : F) * rho 4466 + (-1 : F) * rho 4467 + (-1 : F) * rho 4468)

def relationLc949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 22⟩], residual := [((-1 : F), 2212), ((1 : F), 4470)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * (relationLc949 rho) = ((1 : F) * rho 4472)

def relationLc950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 22⟩], residual := [((1 : F), 4471)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * (relationLc950 rho) = ((1 : F) * rho 4473)

def relationRow4980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * ((1 : F) * rho 4464) = ((1 : F) * rho 4474)

def relationRow4981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * ((1 : F) * rho 4463) = ((1 : F) * rho 4475)

def relationRow4982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4464) * ((1 : F) * rho 4464) = ((1 : F) * rho 4476)

def relationRow4983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4477) * ((-1 : F) * rho 4475 + (1 : F) * rho 4476) = ((2 : F) * rho 4474)

def relationRow4984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4478) * ((2 : F) + (1 : F) * rho 4475 + (-1 : F) * rho 4476) = ((1 : F) * rho 4475 + (1 : F) * rho 4476)

def relationLc951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 23⟩, ⟨(1 : F), 4178, 14, 22⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4985 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc951 rho) = ((1 : F) * rho 4479)

def relationRow4986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4479) * ((1 : F) * rho 4477 + (1 : F) * rho 4478) = ((1 : F) * rho 4480)

def relationLc952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 23⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4478) * (relationLc952 rho) = ((1 : F) * rho 4481)

def relationLc953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4477) * (relationLc953 rho) = ((1 : F) * rho 4482)

def relationRow4989 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4481) * ((1 : F) * rho 4482) = ((1 : F) * rho 4483)

def relationRow4990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4484) * ((1 : F) + (1 : F) * rho 4483) = ((1 : F) * rho 4481 + (1 : F) * rho 4482)

def relationRow4991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4485) * ((1 : F) + (-1 : F) * rho 4483) = ((1 : F) * rho 4480 + (-1 : F) * rho 4481 + (-1 : F) * rho 4482)

def relationLc954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 23⟩], residual := [((-1 : F), 2212), ((1 : F), 4484)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * (relationLc954 rho) = ((1 : F) * rho 4486)

def relationLc955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 23⟩], residual := [((1 : F), 4485)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * (relationLc955 rho) = ((1 : F) * rho 4487)

def relationRow4994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4477) * ((1 : F) * rho 4478) = ((1 : F) * rho 4488)

def relationRow4995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4477) * ((1 : F) * rho 4477) = ((1 : F) * rho 4489)

def relationRow4996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4478) * ((1 : F) * rho 4478) = ((1 : F) * rho 4490)

def relationRow4997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4491) * ((-1 : F) * rho 4489 + (1 : F) * rho 4490) = ((2 : F) * rho 4488)

def relationRow4998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4492) * ((2 : F) + (1 : F) * rho 4489 + (-1 : F) * rho 4490) = ((1 : F) * rho 4489 + (1 : F) * rho 4490)

def relationLc956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 24⟩, ⟨(1 : F), 4178, 14, 23⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4999 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc956 rho) = ((1 : F) * rho 4493)

def relationRow5000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4493) * ((1 : F) * rho 4491 + (1 : F) * rho 4492) = ((1 : F) * rho 4494)

def relationLc957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 24⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4492) * (relationLc957 rho) = ((1 : F) * rho 4495)

def relationLc958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4491) * (relationLc958 rho) = ((1 : F) * rho 4496)

def relationRow5003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4495) * ((1 : F) * rho 4496) = ((1 : F) * rho 4497)

def relationRow5004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4498) * ((1 : F) + (1 : F) * rho 4497) = ((1 : F) * rho 4495 + (1 : F) * rho 4496)

def relationRow5005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4499) * ((1 : F) + (-1 : F) * rho 4497) = ((1 : F) * rho 4494 + (-1 : F) * rho 4495 + (-1 : F) * rho 4496)

def relationLc959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 24⟩], residual := [((-1 : F), 2212), ((1 : F), 4498)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * (relationLc959 rho) = ((1 : F) * rho 4500)

def relationLc960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 24⟩], residual := [((1 : F), 4499)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * (relationLc960 rho) = ((1 : F) * rho 4501)

def relationRow5008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4491) * ((1 : F) * rho 4492) = ((1 : F) * rho 4502)

def relationRow5009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4491) * ((1 : F) * rho 4491) = ((1 : F) * rho 4503)

def relationRow5010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4492) * ((1 : F) * rho 4492) = ((1 : F) * rho 4504)

def relationRow5011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4505) * ((-1 : F) * rho 4503 + (1 : F) * rho 4504) = ((2 : F) * rho 4502)

def relationRow5012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4506) * ((2 : F) + (1 : F) * rho 4503 + (-1 : F) * rho 4504) = ((1 : F) * rho 4503 + (1 : F) * rho 4504)

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 25⟩, ⟨(1 : F), 4178, 14, 24⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5013 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc961 rho) = ((1 : F) * rho 4507)

def relationRow5014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4507) * ((1 : F) * rho 4505 + (1 : F) * rho 4506) = ((1 : F) * rho 4508)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 25⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4506) * (relationLc962 rho) = ((1 : F) * rho 4509)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4505) * (relationLc963 rho) = ((1 : F) * rho 4510)

def relationRow5017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4509) * ((1 : F) * rho 4510) = ((1 : F) * rho 4511)

def relationRow5018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4512) * ((1 : F) + (1 : F) * rho 4511) = ((1 : F) * rho 4509 + (1 : F) * rho 4510)

def relationRow5019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4513) * ((1 : F) + (-1 : F) * rho 4511) = ((1 : F) * rho 4508 + (-1 : F) * rho 4509 + (-1 : F) * rho 4510)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 25⟩], residual := [((-1 : F), 2212), ((1 : F), 4512)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1158) * (relationLc964 rho) = ((1 : F) * rho 4514)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 25⟩], residual := [((1 : F), 4513)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1158) * (relationLc965 rho) = ((1 : F) * rho 4515)

def relationRow5022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4505) * ((1 : F) * rho 4506) = ((1 : F) * rho 4516)

def relationRow5023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4505) * ((1 : F) * rho 4505) = ((1 : F) * rho 4517)

def relationRow5024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4506) * ((1 : F) * rho 4506) = ((1 : F) * rho 4518)

def relationRow5025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4519) * ((-1 : F) * rho 4517 + (1 : F) * rho 4518) = ((2 : F) * rho 4516)

def relationRow5026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4520) * ((2 : F) + (1 : F) * rho 4517 + (-1 : F) * rho 4518) = ((1 : F) * rho 4517 + (1 : F) * rho 4518)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 26⟩, ⟨(1 : F), 4178, 14, 25⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5027 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc966 rho) = ((1 : F) * rho 4521)

def relationRow5028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521) * ((1 : F) * rho 4519 + (1 : F) * rho 4520) = ((1 : F) * rho 4522)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 26⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
