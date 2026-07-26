import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs97

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 16⟩], residual := [((1 : F), 2212), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220), ((1 : F), 4234), ((1 : F), 4248), ((1 : F), 4262), ((1 : F), 4276), ((1 : F), 4290), ((1 : F), 4304), ((1 : F), 4318), ((1 : F), 4332), ((1 : F), 4346), ((1 : F), 4360), ((1 : F), 4374)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4887 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc916 rho) = ((1 : F) * rho 4381)

def relationRow4888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4381) * ((1 : F) * rho 4379 + (1 : F) * rho 4380) = ((1 : F) * rho 4382)

def relationLc917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 16⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4380) * (relationLc917 rho) = ((1 : F) * rho 4383)

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * (relationLc918 rho) = ((1 : F) * rho 4384)

def relationRow4891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4383) * ((1 : F) * rho 4384) = ((1 : F) * rho 4385)

def relationRow4892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4386) * ((1 : F) + (1 : F) * rho 4385) = ((1 : F) * rho 4383 + (1 : F) * rho 4384)

def relationRow4893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4387) * ((1 : F) + (-1 : F) * rho 4385) = ((1 : F) * rho 4382 + (-1 : F) * rho 4383 + (-1 : F) * rho 4384)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 16⟩], residual := [((-1 : F), 2212), ((1 : F), 4386)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * (relationLc919 rho) = ((1 : F) * rho 4388)

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 16⟩], residual := [((1 : F), 4387)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * (relationLc920 rho) = ((1 : F) * rho 4389)

def relationRow4896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * ((1 : F) * rho 4380) = ((1 : F) * rho 4390)

def relationRow4897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * ((1 : F) * rho 4379) = ((1 : F) * rho 4391)

def relationRow4898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4380) * ((1 : F) * rho 4380) = ((1 : F) * rho 4392)

def relationRow4899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4393) * ((-1 : F) * rho 4391 + (1 : F) * rho 4392) = ((2 : F) * rho 4390)

def relationRow4900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4394) * ((2 : F) + (1 : F) * rho 4391 + (-1 : F) * rho 4392) = ((1 : F) * rho 4391 + (1 : F) * rho 4392)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 17⟩, ⟨(1 : F), 4178, 14, 16⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4901 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc921 rho) = ((1 : F) * rho 4395)

def relationRow4902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4395) * ((1 : F) * rho 4393 + (1 : F) * rho 4394) = ((1 : F) * rho 4396)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 17⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4394) * (relationLc922 rho) = ((1 : F) * rho 4397)

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4393) * (relationLc923 rho) = ((1 : F) * rho 4398)

def relationRow4905 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4397) * ((1 : F) * rho 4398) = ((1 : F) * rho 4399)

def relationRow4906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4400) * ((1 : F) + (1 : F) * rho 4399) = ((1 : F) * rho 4397 + (1 : F) * rho 4398)

def relationRow4907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4401) * ((1 : F) + (-1 : F) * rho 4399) = ((1 : F) * rho 4396 + (-1 : F) * rho 4397 + (-1 : F) * rho 4398)

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 17⟩], residual := [((-1 : F), 2212), ((1 : F), 4400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * (relationLc924 rho) = ((1 : F) * rho 4402)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 17⟩], residual := [((1 : F), 4401)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * (relationLc925 rho) = ((1 : F) * rho 4403)

def relationRow4910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4393) * ((1 : F) * rho 4394) = ((1 : F) * rho 4404)

def relationRow4911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4393) * ((1 : F) * rho 4393) = ((1 : F) * rho 4405)

def relationRow4912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4394) * ((1 : F) * rho 4394) = ((1 : F) * rho 4406)

def relationRow4913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4407) * ((-1 : F) * rho 4405 + (1 : F) * rho 4406) = ((2 : F) * rho 4404)

def relationRow4914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4408) * ((2 : F) + (1 : F) * rho 4405 + (-1 : F) * rho 4406) = ((1 : F) * rho 4405 + (1 : F) * rho 4406)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 18⟩, ⟨(1 : F), 4178, 14, 17⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4915 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc926 rho) = ((1 : F) * rho 4409)

def relationRow4916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4409) * ((1 : F) * rho 4407 + (1 : F) * rho 4408) = ((1 : F) * rho 4410)

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 18⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4408) * (relationLc927 rho) = ((1 : F) * rho 4411)

def relationLc928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4407) * (relationLc928 rho) = ((1 : F) * rho 4412)

def relationRow4919 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4411) * ((1 : F) * rho 4412) = ((1 : F) * rho 4413)

def relationRow4920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4414) * ((1 : F) + (1 : F) * rho 4413) = ((1 : F) * rho 4411 + (1 : F) * rho 4412)

def relationRow4921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4415) * ((1 : F) + (-1 : F) * rho 4413) = ((1 : F) * rho 4410 + (-1 : F) * rho 4411 + (-1 : F) * rho 4412)

def relationLc929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 18⟩], residual := [((-1 : F), 2212), ((1 : F), 4414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * (relationLc929 rho) = ((1 : F) * rho 4416)

def relationLc930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 18⟩], residual := [((1 : F), 4415)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * (relationLc930 rho) = ((1 : F) * rho 4417)

def relationRow4924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4407) * ((1 : F) * rho 4408) = ((1 : F) * rho 4418)

def relationRow4925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4407) * ((1 : F) * rho 4407) = ((1 : F) * rho 4419)

def relationRow4926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4408) * ((1 : F) * rho 4408) = ((1 : F) * rho 4420)

def relationRow4927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4421) * ((-1 : F) * rho 4419 + (1 : F) * rho 4420) = ((2 : F) * rho 4418)

def relationRow4928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4422) * ((2 : F) + (1 : F) * rho 4419 + (-1 : F) * rho 4420) = ((1 : F) * rho 4419 + (1 : F) * rho 4420)

def relationLc931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 19⟩, ⟨(1 : F), 4178, 14, 18⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4929 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc931 rho) = ((1 : F) * rho 4423)

def relationRow4930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423) * ((1 : F) * rho 4421 + (1 : F) * rho 4422) = ((1 : F) * rho 4424)

def relationLc932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 19⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4422) * (relationLc932 rho) = ((1 : F) * rho 4425)

def relationLc933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4421) * (relationLc933 rho) = ((1 : F) * rho 4426)

def relationRow4933 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4425) * ((1 : F) * rho 4426) = ((1 : F) * rho 4427)

def relationRow4934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4428) * ((1 : F) + (1 : F) * rho 4427) = ((1 : F) * rho 4425 + (1 : F) * rho 4426)

def relationRow4935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4429) * ((1 : F) + (-1 : F) * rho 4427) = ((1 : F) * rho 4424 + (-1 : F) * rho 4425 + (-1 : F) * rho 4426)

def relationLc934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 19⟩], residual := [((-1 : F), 2212), ((1 : F), 4428)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1152) * (relationLc934 rho) = ((1 : F) * rho 4430)

def relationLc935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 19⟩], residual := [((1 : F), 4429)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1152) * (relationLc935 rho) = ((1 : F) * rho 4431)

def relationRow4938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4421) * ((1 : F) * rho 4422) = ((1 : F) * rho 4432)

def relationRow4939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4421) * ((1 : F) * rho 4421) = ((1 : F) * rho 4433)

def relationRow4940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4422) * ((1 : F) * rho 4422) = ((1 : F) * rho 4434)

def relationRow4941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4435) * ((-1 : F) * rho 4433 + (1 : F) * rho 4434) = ((2 : F) * rho 4432)

def relationRow4942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((2 : F) + (1 : F) * rho 4433 + (-1 : F) * rho 4434) = ((1 : F) * rho 4433 + (1 : F) * rho 4434)

def relationLc936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 20⟩, ⟨(1 : F), 4178, 14, 19⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4943 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc936 rho) = ((1 : F) * rho 4437)

def relationRow4944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * ((1 : F) * rho 4435 + (1 : F) * rho 4436) = ((1 : F) * rho 4438)

def relationLc937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 20⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * (relationLc937 rho) = ((1 : F) * rho 4439)

def relationLc938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4435) * (relationLc938 rho) = ((1 : F) * rho 4440)

def relationRow4947 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4439) * ((1 : F) * rho 4440) = ((1 : F) * rho 4441)

def relationRow4948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4442) * ((1 : F) + (1 : F) * rho 4441) = ((1 : F) * rho 4439 + (1 : F) * rho 4440)

def relationRow4949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443) * ((1 : F) + (-1 : F) * rho 4441) = ((1 : F) * rho 4438 + (-1 : F) * rho 4439 + (-1 : F) * rho 4440)

def relationLc939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 20⟩], residual := [((-1 : F), 2212), ((1 : F), 4442)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * (relationLc939 rho) = ((1 : F) * rho 4444)

def relationLc940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 20⟩], residual := [((1 : F), 4443)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * (relationLc940 rho) = ((1 : F) * rho 4445)

def relationRow4952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4435) * ((1 : F) * rho 4436) = ((1 : F) * rho 4446)

def relationRow4953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4435) * ((1 : F) * rho 4435) = ((1 : F) * rho 4447)

def relationRow4954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((1 : F) * rho 4436) = ((1 : F) * rho 4448)

def relationRow4955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((-1 : F) * rho 4447 + (1 : F) * rho 4448) = ((2 : F) * rho 4446)

def relationRow4956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * ((2 : F) + (1 : F) * rho 4447 + (-1 : F) * rho 4448) = ((1 : F) * rho 4447 + (1 : F) * rho 4448)

def relationLc941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 21⟩, ⟨(1 : F), 4178, 14, 20⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
