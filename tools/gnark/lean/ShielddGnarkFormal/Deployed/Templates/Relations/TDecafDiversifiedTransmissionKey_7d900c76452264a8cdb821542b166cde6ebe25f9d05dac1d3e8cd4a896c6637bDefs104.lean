import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs103

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4799) * ((1 : F) * rho 4799) = ((1 : F) * rho 4811)

def relationRow5318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((1 : F) * rho 4800) = ((1 : F) * rho 4812)

def relationRow5319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((-1 : F) * rho 4811 + (1 : F) * rho 4812) = ((2 : F) * rho 4810)

def relationRow5320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * ((2 : F) + (1 : F) * rho 4811 + (-1 : F) * rho 4812) = ((1 : F) * rho 4811 + (1 : F) * rho 4812)

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 47⟩, ⟨(1 : F), 4178, 14, 46⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5321 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1071 rho) = ((1 : F) * rho 4815)

def relationRow5322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4815) * ((1 : F) * rho 4813 + (1 : F) * rho 4814) = ((1 : F) * rho 4816)

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 47⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * (relationLc1072 rho) = ((1 : F) * rho 4817)

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * (relationLc1073 rho) = ((1 : F) * rho 4818)

def relationRow5325 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4817) * ((1 : F) * rho 4818) = ((1 : F) * rho 4819)

def relationRow5326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((1 : F) + (1 : F) * rho 4819) = ((1 : F) * rho 4817 + (1 : F) * rho 4818)

def relationRow5327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4821) * ((1 : F) + (-1 : F) * rho 4819) = ((1 : F) * rho 4816 + (-1 : F) * rho 4817 + (-1 : F) * rho 4818)

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 47⟩], residual := [((-1 : F), 2212), ((1 : F), 4820)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1180) * (relationLc1074 rho) = ((1 : F) * rho 4822)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 47⟩], residual := [((1 : F), 4821)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1180) * (relationLc1075 rho) = ((1 : F) * rho 4823)

def relationRow5330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((1 : F) * rho 4814) = ((1 : F) * rho 4824)

def relationRow5331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((1 : F) * rho 4813) = ((1 : F) * rho 4825)

def relationRow5332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * ((1 : F) * rho 4814) = ((1 : F) * rho 4826)

def relationRow5333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * ((-1 : F) * rho 4825 + (1 : F) * rho 4826) = ((2 : F) * rho 4824)

def relationRow5334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4828) * ((2 : F) + (1 : F) * rho 4825 + (-1 : F) * rho 4826) = ((1 : F) * rho 4825 + (1 : F) * rho 4826)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 48⟩, ⟨(1 : F), 4178, 14, 47⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5335 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1076 rho) = ((1 : F) * rho 4829)

def relationRow5336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4829) * ((1 : F) * rho 4827 + (1 : F) * rho 4828) = ((1 : F) * rho 4830)

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 48⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4828) * (relationLc1077 rho) = ((1 : F) * rho 4831)

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * (relationLc1078 rho) = ((1 : F) * rho 4832)

def relationRow5339 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4831) * ((1 : F) * rho 4832) = ((1 : F) * rho 4833)

def relationRow5340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4834) * ((1 : F) + (1 : F) * rho 4833) = ((1 : F) * rho 4831 + (1 : F) * rho 4832)

def relationRow5341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4835) * ((1 : F) + (-1 : F) * rho 4833) = ((1 : F) * rho 4830 + (-1 : F) * rho 4831 + (-1 : F) * rho 4832)

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 48⟩], residual := [((-1 : F), 2212), ((1 : F), 4834)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * (relationLc1079 rho) = ((1 : F) * rho 4836)

def relationLc1080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 48⟩], residual := [((1 : F), 4835)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * (relationLc1080 rho) = ((1 : F) * rho 4837)

def relationRow5344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * ((1 : F) * rho 4828) = ((1 : F) * rho 4838)

def relationRow5345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * ((1 : F) * rho 4827) = ((1 : F) * rho 4839)

def relationRow5346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4828) * ((1 : F) * rho 4828) = ((1 : F) * rho 4840)

def relationRow5347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4841) * ((-1 : F) * rho 4839 + (1 : F) * rho 4840) = ((2 : F) * rho 4838)

def relationRow5348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4842) * ((2 : F) + (1 : F) * rho 4839 + (-1 : F) * rho 4840) = ((1 : F) * rho 4839 + (1 : F) * rho 4840)

def relationLc1081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 49⟩, ⟨(1 : F), 4178, 14, 48⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5349 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1081 rho) = ((1 : F) * rho 4843)

def relationRow5350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4843) * ((1 : F) * rho 4841 + (1 : F) * rho 4842) = ((1 : F) * rho 4844)

def relationLc1082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 49⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4842) * (relationLc1082 rho) = ((1 : F) * rho 4845)

def relationLc1083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4841) * (relationLc1083 rho) = ((1 : F) * rho 4846)

def relationRow5353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4845) * ((1 : F) * rho 4846) = ((1 : F) * rho 4847)

def relationRow5354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4848) * ((1 : F) + (1 : F) * rho 4847) = ((1 : F) * rho 4845 + (1 : F) * rho 4846)

def relationRow5355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4849) * ((1 : F) + (-1 : F) * rho 4847) = ((1 : F) * rho 4844 + (-1 : F) * rho 4845 + (-1 : F) * rho 4846)

def relationLc1084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 49⟩], residual := [((-1 : F), 2212), ((1 : F), 4848)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * (relationLc1084 rho) = ((1 : F) * rho 4850)

def relationLc1085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 49⟩], residual := [((1 : F), 4849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * (relationLc1085 rho) = ((1 : F) * rho 4851)

def relationRow5358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4841) * ((1 : F) * rho 4842) = ((1 : F) * rho 4852)

def relationRow5359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4841) * ((1 : F) * rho 4841) = ((1 : F) * rho 4853)

def relationRow5360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4842) * ((1 : F) * rho 4842) = ((1 : F) * rho 4854)

def relationRow5361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4855) * ((-1 : F) * rho 4853 + (1 : F) * rho 4854) = ((2 : F) * rho 4852)

def relationRow5362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4856) * ((2 : F) + (1 : F) * rho 4853 + (-1 : F) * rho 4854) = ((1 : F) * rho 4853 + (1 : F) * rho 4854)

def relationLc1086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 50⟩, ⟨(1 : F), 4178, 14, 49⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5363 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1086 rho) = ((1 : F) * rho 4857)

def relationRow5364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4857) * ((1 : F) * rho 4855 + (1 : F) * rho 4856) = ((1 : F) * rho 4858)

def relationLc1087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 50⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4856) * (relationLc1087 rho) = ((1 : F) * rho 4859)

def relationLc1088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4855) * (relationLc1088 rho) = ((1 : F) * rho 4860)

def relationRow5367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4859) * ((1 : F) * rho 4860) = ((1 : F) * rho 4861)

def relationRow5368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4862) * ((1 : F) + (1 : F) * rho 4861) = ((1 : F) * rho 4859 + (1 : F) * rho 4860)

def relationRow5369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4863) * ((1 : F) + (-1 : F) * rho 4861) = ((1 : F) * rho 4858 + (-1 : F) * rho 4859 + (-1 : F) * rho 4860)

def relationLc1089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 50⟩], residual := [((-1 : F), 2212), ((1 : F), 4862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1183) * (relationLc1089 rho) = ((1 : F) * rho 4864)

def relationLc1090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 50⟩], residual := [((1 : F), 4863)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1183) * (relationLc1090 rho) = ((1 : F) * rho 4865)

def relationRow5372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4855) * ((1 : F) * rho 4856) = ((1 : F) * rho 4866)

def relationRow5373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4855) * ((1 : F) * rho 4855) = ((1 : F) * rho 4867)

def relationRow5374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4856) * ((1 : F) * rho 4856) = ((1 : F) * rho 4868)

def relationRow5375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4869) * ((-1 : F) * rho 4867 + (1 : F) * rho 4868) = ((2 : F) * rho 4866)

def relationRow5376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4870) * ((2 : F) + (1 : F) * rho 4867 + (-1 : F) * rho 4868) = ((1 : F) * rho 4867 + (1 : F) * rho 4868)

def relationLc1091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 51⟩, ⟨(1 : F), 4178, 14, 50⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5377 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1091 rho) = ((1 : F) * rho 4871)

def relationRow5378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4871) * ((1 : F) * rho 4869 + (1 : F) * rho 4870) = ((1 : F) * rho 4872)

def relationLc1092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 51⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4870) * (relationLc1092 rho) = ((1 : F) * rho 4873)

def relationLc1093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4869) * (relationLc1093 rho) = ((1 : F) * rho 4874)

def relationRow5381 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4873) * ((1 : F) * rho 4874) = ((1 : F) * rho 4875)

def relationRow5382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4876) * ((1 : F) + (1 : F) * rho 4875) = ((1 : F) * rho 4873 + (1 : F) * rho 4874)

def relationRow5383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4877) * ((1 : F) + (-1 : F) * rho 4875) = ((1 : F) * rho 4872 + (-1 : F) * rho 4873 + (-1 : F) * rho 4874)

def relationLc1094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 51⟩], residual := [((-1 : F), 2212), ((1 : F), 4876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * (relationLc1094 rho) = ((1 : F) * rho 4878)

def relationLc1095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 51⟩], residual := [((1 : F), 4877)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * (relationLc1095 rho) = ((1 : F) * rho 4879)

def relationRow5386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4869) * ((1 : F) * rho 4870) = ((1 : F) * rho 4880)

def relationRow5387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4869) * ((1 : F) * rho 4869) = ((1 : F) * rho 4881)

def relationRow5388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4870) * ((1 : F) * rho 4870) = ((1 : F) * rho 4882)

def relationRow5389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4883) * ((-1 : F) * rho 4881 + (1 : F) * rho 4882) = ((2 : F) * rho 4880)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
