import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs112

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1301 rho) = ((1 : F) * rho 5459)

def relationRow5966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5459) * ((1 : F) * rho 5457 + (1 : F) * rho 5458) = ((1 : F) * rho 5460)

def relationLc1302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 93⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5458) * (relationLc1302 rho) = ((1 : F) * rho 5461)

def relationLc1303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5457) * (relationLc1303 rho) = ((1 : F) * rho 5462)

def relationRow5969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5461) * ((1 : F) * rho 5462) = ((1 : F) * rho 5463)

def relationRow5970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5464) * ((1 : F) + (1 : F) * rho 5463) = ((1 : F) * rho 5461 + (1 : F) * rho 5462)

def relationRow5971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5465) * ((1 : F) + (-1 : F) * rho 5463) = ((1 : F) * rho 5460 + (-1 : F) * rho 5461 + (-1 : F) * rho 5462)

def relationLc1304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 93⟩], residual := [((-1 : F), 2212), ((1 : F), 5464)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1226) * (relationLc1304 rho) = ((1 : F) * rho 5466)

def relationLc1305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 93⟩], residual := [((1 : F), 5465)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1226) * (relationLc1305 rho) = ((1 : F) * rho 5467)

def relationRow5974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5457) * ((1 : F) * rho 5458) = ((1 : F) * rho 5468)

def relationRow5975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5457) * ((1 : F) * rho 5457) = ((1 : F) * rho 5469)

def relationRow5976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5458) * ((1 : F) * rho 5458) = ((1 : F) * rho 5470)

def relationRow5977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5471) * ((-1 : F) * rho 5469 + (1 : F) * rho 5470) = ((2 : F) * rho 5468)

def relationRow5978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5472) * ((2 : F) + (1 : F) * rho 5469 + (-1 : F) * rho 5470) = ((1 : F) * rho 5469 + (1 : F) * rho 5470)

def relationLc1306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 94⟩, ⟨(1 : F), 4178, 14, 93⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1306 rho) = ((1 : F) * rho 5473)

def relationRow5980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5473) * ((1 : F) * rho 5471 + (1 : F) * rho 5472) = ((1 : F) * rho 5474)

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 94⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5472) * (relationLc1307 rho) = ((1 : F) * rho 5475)

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5471) * (relationLc1308 rho) = ((1 : F) * rho 5476)

def relationRow5983 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5475) * ((1 : F) * rho 5476) = ((1 : F) * rho 5477)

def relationRow5984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5478) * ((1 : F) + (1 : F) * rho 5477) = ((1 : F) * rho 5475 + (1 : F) * rho 5476)

def relationRow5985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5479) * ((1 : F) + (-1 : F) * rho 5477) = ((1 : F) * rho 5474 + (-1 : F) * rho 5475 + (-1 : F) * rho 5476)

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 94⟩], residual := [((-1 : F), 2212), ((1 : F), 5478)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1227) * (relationLc1309 rho) = ((1 : F) * rho 5480)

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 94⟩], residual := [((1 : F), 5479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1227) * (relationLc1310 rho) = ((1 : F) * rho 5481)

def relationRow5988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5471) * ((1 : F) * rho 5472) = ((1 : F) * rho 5482)

def relationRow5989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5471) * ((1 : F) * rho 5471) = ((1 : F) * rho 5483)

def relationRow5990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5472) * ((1 : F) * rho 5472) = ((1 : F) * rho 5484)

def relationRow5991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5485) * ((-1 : F) * rho 5483 + (1 : F) * rho 5484) = ((2 : F) * rho 5482)

def relationRow5992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5486) * ((2 : F) + (1 : F) * rho 5483 + (-1 : F) * rho 5484) = ((1 : F) * rho 5483 + (1 : F) * rho 5484)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 95⟩, ⟨(1 : F), 4178, 14, 94⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5993 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1311 rho) = ((1 : F) * rho 5487)

def relationRow5994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5487) * ((1 : F) * rho 5485 + (1 : F) * rho 5486) = ((1 : F) * rho 5488)

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 95⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5486) * (relationLc1312 rho) = ((1 : F) * rho 5489)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5485) * (relationLc1313 rho) = ((1 : F) * rho 5490)

def relationRow5997 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5489) * ((1 : F) * rho 5490) = ((1 : F) * rho 5491)

def relationRow5998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5492) * ((1 : F) + (1 : F) * rho 5491) = ((1 : F) * rho 5489 + (1 : F) * rho 5490)

def relationRow5999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5493) * ((1 : F) + (-1 : F) * rho 5491) = ((1 : F) * rho 5488 + (-1 : F) * rho 5489 + (-1 : F) * rho 5490)

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 95⟩], residual := [((-1 : F), 2212), ((1 : F), 5492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1228) * (relationLc1314 rho) = ((1 : F) * rho 5494)

def relationLc1315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 95⟩], residual := [((1 : F), 5493)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1228) * (relationLc1315 rho) = ((1 : F) * rho 5495)

def relationRow6002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5485) * ((1 : F) * rho 5486) = ((1 : F) * rho 5496)

def relationRow6003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5485) * ((1 : F) * rho 5485) = ((1 : F) * rho 5497)

def relationRow6004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5486) * ((1 : F) * rho 5486) = ((1 : F) * rho 5498)

def relationRow6005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5499) * ((-1 : F) * rho 5497 + (1 : F) * rho 5498) = ((2 : F) * rho 5496)

def relationRow6006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5500) * ((2 : F) + (1 : F) * rho 5497 + (-1 : F) * rho 5498) = ((1 : F) * rho 5497 + (1 : F) * rho 5498)

def relationLc1316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 96⟩, ⟨(1 : F), 4178, 14, 95⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1316 rho) = ((1 : F) * rho 5501)

def relationRow6008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5501) * ((1 : F) * rho 5499 + (1 : F) * rho 5500) = ((1 : F) * rho 5502)

def relationLc1317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 96⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5500) * (relationLc1317 rho) = ((1 : F) * rho 5503)

def relationLc1318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5499) * (relationLc1318 rho) = ((1 : F) * rho 5504)

def relationRow6011 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5503) * ((1 : F) * rho 5504) = ((1 : F) * rho 5505)

def relationRow6012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5506) * ((1 : F) + (1 : F) * rho 5505) = ((1 : F) * rho 5503 + (1 : F) * rho 5504)

def relationRow6013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5507) * ((1 : F) + (-1 : F) * rho 5505) = ((1 : F) * rho 5502 + (-1 : F) * rho 5503 + (-1 : F) * rho 5504)

def relationLc1319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 96⟩], residual := [((-1 : F), 2212), ((1 : F), 5506)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * (relationLc1319 rho) = ((1 : F) * rho 5508)

def relationLc1320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 96⟩], residual := [((1 : F), 5507)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * (relationLc1320 rho) = ((1 : F) * rho 5509)

def relationRow6016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5499) * ((1 : F) * rho 5500) = ((1 : F) * rho 5510)

def relationRow6017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5499) * ((1 : F) * rho 5499) = ((1 : F) * rho 5511)

def relationRow6018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5500) * ((1 : F) * rho 5500) = ((1 : F) * rho 5512)

def relationRow6019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * ((-1 : F) * rho 5511 + (1 : F) * rho 5512) = ((2 : F) * rho 5510)

def relationRow6020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5514) * ((2 : F) + (1 : F) * rho 5511 + (-1 : F) * rho 5512) = ((1 : F) * rho 5511 + (1 : F) * rho 5512)

def relationLc1321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 97⟩, ⟨(1 : F), 4178, 14, 96⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1321 rho) = ((1 : F) * rho 5515)

def relationRow6022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5515) * ((1 : F) * rho 5513 + (1 : F) * rho 5514) = ((1 : F) * rho 5516)

def relationLc1322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 97⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5514) * (relationLc1322 rho) = ((1 : F) * rho 5517)

def relationLc1323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * (relationLc1323 rho) = ((1 : F) * rho 5518)

def relationRow6025 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5517) * ((1 : F) * rho 5518) = ((1 : F) * rho 5519)

def relationRow6026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5520) * ((1 : F) + (1 : F) * rho 5519) = ((1 : F) * rho 5517 + (1 : F) * rho 5518)

def relationRow6027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5521) * ((1 : F) + (-1 : F) * rho 5519) = ((1 : F) * rho 5516 + (-1 : F) * rho 5517 + (-1 : F) * rho 5518)

def relationLc1324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 97⟩], residual := [((-1 : F), 2212), ((1 : F), 5520)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * (relationLc1324 rho) = ((1 : F) * rho 5522)

def relationLc1325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 97⟩], residual := [((1 : F), 5521)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * (relationLc1325 rho) = ((1 : F) * rho 5523)

def relationRow6030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * ((1 : F) * rho 5514) = ((1 : F) * rho 5524)

def relationRow6031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * ((1 : F) * rho 5513) = ((1 : F) * rho 5525)

def relationRow6032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5514) * ((1 : F) * rho 5514) = ((1 : F) * rho 5526)

def relationRow6033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5527) * ((-1 : F) * rho 5525 + (1 : F) * rho 5526) = ((2 : F) * rho 5524)

def relationRow6034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5528) * ((2 : F) + (1 : F) * rho 5525 + (-1 : F) * rho 5526) = ((1 : F) * rho 5525 + (1 : F) * rho 5526)

def relationLc1326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 98⟩, ⟨(1 : F), 4178, 14, 97⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6035 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1326 rho) = ((1 : F) * rho 5529)

def relationRow6036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5529) * ((1 : F) * rho 5527 + (1 : F) * rho 5528) = ((1 : F) * rho 5530)

def relationLc1327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 98⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
