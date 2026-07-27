import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs96

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4324) * (relationLc897 rho) = ((1 : F) * rho 4327)

def relationLc898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221), ((1 : F), 4235), ((1 : F), 4249), ((1 : F), 4263), ((1 : F), 4277), ((1 : F), 4291), ((1 : F), 4305), ((1 : F), 4319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4323) * (relationLc898 rho) = ((1 : F) * rho 4328)

def relationRow4835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4327) * ((1 : F) * rho 4328) = ((1 : F) * rho 4329)

def relationRow4836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4330) * ((1 : F) + (1 : F) * rho 4329) = ((1 : F) * rho 4327 + (1 : F) * rho 4328)

def relationRow4837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4331) * ((1 : F) + (-1 : F) * rho 4329) = ((1 : F) * rho 4326 + (-1 : F) * rho 4327 + (-1 : F) * rho 4328)

def relationLc899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((-1 : F), 4234), ((-1 : F), 4248), ((-1 : F), 4262), ((-1 : F), 4276), ((-1 : F), 4290), ((-1 : F), 4304), ((-1 : F), 4318), ((1 : F), 4330)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * (relationLc899 rho) = ((1 : F) * rho 4332)

def relationLc900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((-1 : F), 4235), ((-1 : F), 4249), ((-1 : F), 4263), ((-1 : F), 4277), ((-1 : F), 4291), ((-1 : F), 4305), ((-1 : F), 4319), ((1 : F), 4331)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * (relationLc900 rho) = ((1 : F) * rho 4333)

def relationRow4840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4323) * ((1 : F) * rho 4324) = ((1 : F) * rho 4334)

def relationRow4841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4323) * ((1 : F) * rho 4323) = ((1 : F) * rho 4335)

def relationRow4842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4324) * ((1 : F) * rho 4324) = ((1 : F) * rho 4336)

def relationRow4843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4337) * ((-1 : F) * rho 4335 + (1 : F) * rho 4336) = ((2 : F) * rho 4334)

def relationRow4844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * ((2 : F) + (1 : F) * rho 4335 + (-1 : F) * rho 4336) = ((1 : F) * rho 4335 + (1 : F) * rho 4336)

def relationLc901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221), ((1 : F), 4234), ((1 : F), 4235), ((1 : F), 4248), ((1 : F), 4249), ((1 : F), 4262), ((1 : F), 4263), ((1 : F), 4276), ((1 : F), 4277), ((1 : F), 4290), ((1 : F), 4291), ((1 : F), 4304), ((1 : F), 4305), ((1 : F), 4318), ((1 : F), 4319), ((1 : F), 4332), ((1 : F), 4333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4845 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc901 rho) = ((1 : F) * rho 4339)

def relationRow4846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((1 : F) * rho 4337 + (1 : F) * rho 4338) = ((1 : F) * rho 4340)

def relationLc902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220), ((1 : F), 4234), ((1 : F), 4248), ((1 : F), 4262), ((1 : F), 4276), ((1 : F), 4290), ((1 : F), 4304), ((1 : F), 4318), ((1 : F), 4332)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * (relationLc902 rho) = ((1 : F) * rho 4341)

def relationLc903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221), ((1 : F), 4235), ((1 : F), 4249), ((1 : F), 4263), ((1 : F), 4277), ((1 : F), 4291), ((1 : F), 4305), ((1 : F), 4319), ((1 : F), 4333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4337) * (relationLc903 rho) = ((1 : F) * rho 4342)

def relationRow4849 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4341) * ((1 : F) * rho 4342) = ((1 : F) * rho 4343)

def relationRow4850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4344) * ((1 : F) + (1 : F) * rho 4343) = ((1 : F) * rho 4341 + (1 : F) * rho 4342)

def relationRow4851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * ((1 : F) + (-1 : F) * rho 4343) = ((1 : F) * rho 4340 + (-1 : F) * rho 4341 + (-1 : F) * rho 4342)

def relationLc904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((-1 : F), 4234), ((-1 : F), 4248), ((-1 : F), 4262), ((-1 : F), 4276), ((-1 : F), 4290), ((-1 : F), 4304), ((-1 : F), 4318), ((-1 : F), 4332), ((1 : F), 4344)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * (relationLc904 rho) = ((1 : F) * rho 4346)

def relationLc905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((-1 : F), 4235), ((-1 : F), 4249), ((-1 : F), 4263), ((-1 : F), 4277), ((-1 : F), 4291), ((-1 : F), 4305), ((-1 : F), 4319), ((-1 : F), 4333), ((1 : F), 4345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * (relationLc905 rho) = ((1 : F) * rho 4347)

def relationRow4854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4337) * ((1 : F) * rho 4338) = ((1 : F) * rho 4348)

def relationRow4855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4337) * ((1 : F) * rho 4337) = ((1 : F) * rho 4349)

def relationRow4856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * ((1 : F) * rho 4338) = ((1 : F) * rho 4350)

def relationRow4857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4351) * ((-1 : F) * rho 4349 + (1 : F) * rho 4350) = ((2 : F) * rho 4348)

def relationRow4858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * ((2 : F) + (1 : F) * rho 4349 + (-1 : F) * rho 4350) = ((1 : F) * rho 4349 + (1 : F) * rho 4350)

def relationLc906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221), ((1 : F), 4234), ((1 : F), 4235), ((1 : F), 4248), ((1 : F), 4249), ((1 : F), 4262), ((1 : F), 4263), ((1 : F), 4276), ((1 : F), 4277), ((1 : F), 4290), ((1 : F), 4291), ((1 : F), 4304), ((1 : F), 4305), ((1 : F), 4318), ((1 : F), 4319), ((1 : F), 4332), ((1 : F), 4333), ((1 : F), 4346), ((1 : F), 4347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4859 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc906 rho) = ((1 : F) * rho 4353)

def relationRow4860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4353) * ((1 : F) * rho 4351 + (1 : F) * rho 4352) = ((1 : F) * rho 4354)

def relationLc907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220), ((1 : F), 4234), ((1 : F), 4248), ((1 : F), 4262), ((1 : F), 4276), ((1 : F), 4290), ((1 : F), 4304), ((1 : F), 4318), ((1 : F), 4332), ((1 : F), 4346)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * (relationLc907 rho) = ((1 : F) * rho 4355)

def relationLc908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221), ((1 : F), 4235), ((1 : F), 4249), ((1 : F), 4263), ((1 : F), 4277), ((1 : F), 4291), ((1 : F), 4305), ((1 : F), 4319), ((1 : F), 4333), ((1 : F), 4347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4351) * (relationLc908 rho) = ((1 : F) * rho 4356)

def relationRow4863 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4355) * ((1 : F) * rho 4356) = ((1 : F) * rho 4357)

def relationRow4864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * ((1 : F) + (1 : F) * rho 4357) = ((1 : F) * rho 4355 + (1 : F) * rho 4356)

def relationRow4865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * ((1 : F) + (-1 : F) * rho 4357) = ((1 : F) * rho 4354 + (-1 : F) * rho 4355 + (-1 : F) * rho 4356)

def relationLc909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((-1 : F), 4234), ((-1 : F), 4248), ((-1 : F), 4262), ((-1 : F), 4276), ((-1 : F), 4290), ((-1 : F), 4304), ((-1 : F), 4318), ((-1 : F), 4332), ((-1 : F), 4346), ((1 : F), 4358)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * (relationLc909 rho) = ((1 : F) * rho 4360)

def relationLc910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((-1 : F), 4235), ((-1 : F), 4249), ((-1 : F), 4263), ((-1 : F), 4277), ((-1 : F), 4291), ((-1 : F), 4305), ((-1 : F), 4319), ((-1 : F), 4333), ((-1 : F), 4347), ((1 : F), 4359)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * (relationLc910 rho) = ((1 : F) * rho 4361)

def relationRow4868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4351) * ((1 : F) * rho 4352) = ((1 : F) * rho 4362)

def relationRow4869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4351) * ((1 : F) * rho 4351) = ((1 : F) * rho 4363)

def relationRow4870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * ((1 : F) * rho 4352) = ((1 : F) * rho 4364)

def relationRow4871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((-1 : F) * rho 4363 + (1 : F) * rho 4364) = ((2 : F) * rho 4362)

def relationRow4872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * ((2 : F) + (1 : F) * rho 4363 + (-1 : F) * rho 4364) = ((1 : F) * rho 4363 + (1 : F) * rho 4364)

def relationLc911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221), ((1 : F), 4234), ((1 : F), 4235), ((1 : F), 4248), ((1 : F), 4249), ((1 : F), 4262), ((1 : F), 4263), ((1 : F), 4276), ((1 : F), 4277), ((1 : F), 4290), ((1 : F), 4291), ((1 : F), 4304), ((1 : F), 4305), ((1 : F), 4318), ((1 : F), 4319), ((1 : F), 4332), ((1 : F), 4333), ((1 : F), 4346), ((1 : F), 4347), ((1 : F), 4360), ((1 : F), 4361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4873 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc911 rho) = ((1 : F) * rho 4367)

def relationRow4874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4367) * ((1 : F) * rho 4365 + (1 : F) * rho 4366) = ((1 : F) * rho 4368)

def relationLc912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220), ((1 : F), 4234), ((1 : F), 4248), ((1 : F), 4262), ((1 : F), 4276), ((1 : F), 4290), ((1 : F), 4304), ((1 : F), 4318), ((1 : F), 4332), ((1 : F), 4346), ((1 : F), 4360)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * (relationLc912 rho) = ((1 : F) * rho 4369)

def relationLc913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221), ((1 : F), 4235), ((1 : F), 4249), ((1 : F), 4263), ((1 : F), 4277), ((1 : F), 4291), ((1 : F), 4305), ((1 : F), 4319), ((1 : F), 4333), ((1 : F), 4347), ((1 : F), 4361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * (relationLc913 rho) = ((1 : F) * rho 4370)

def relationRow4877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4369) * ((1 : F) * rho 4370) = ((1 : F) * rho 4371)

def relationRow4878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4372) * ((1 : F) + (1 : F) * rho 4371) = ((1 : F) * rho 4369 + (1 : F) * rho 4370)

def relationRow4879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4373) * ((1 : F) + (-1 : F) * rho 4371) = ((1 : F) * rho 4368 + (-1 : F) * rho 4369 + (-1 : F) * rho 4370)

def relationLc914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((-1 : F), 4234), ((-1 : F), 4248), ((-1 : F), 4262), ((-1 : F), 4276), ((-1 : F), 4290), ((-1 : F), 4304), ((-1 : F), 4318), ((-1 : F), 4332), ((-1 : F), 4346), ((-1 : F), 4360), ((1 : F), 4372)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1148) * (relationLc914 rho) = ((1 : F) * rho 4374)

def relationLc915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((-1 : F), 4235), ((-1 : F), 4249), ((-1 : F), 4263), ((-1 : F), 4277), ((-1 : F), 4291), ((-1 : F), 4305), ((-1 : F), 4319), ((-1 : F), 4333), ((-1 : F), 4347), ((-1 : F), 4361), ((1 : F), 4373)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1148) * (relationLc915 rho) = ((1 : F) * rho 4375)

def relationRow4882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) * rho 4366) = ((1 : F) * rho 4376)

def relationRow4883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) * rho 4365) = ((1 : F) * rho 4377)

def relationRow4884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * ((1 : F) * rho 4366) = ((1 : F) * rho 4378)

def relationRow4885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * ((-1 : F) * rho 4377 + (1 : F) * rho 4378) = ((2 : F) * rho 4376)

def relationRow4886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4380) * ((2 : F) + (1 : F) * rho 4377 + (-1 : F) * rho 4378) = ((1 : F) * rho 4377 + (1 : F) * rho 4378)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
