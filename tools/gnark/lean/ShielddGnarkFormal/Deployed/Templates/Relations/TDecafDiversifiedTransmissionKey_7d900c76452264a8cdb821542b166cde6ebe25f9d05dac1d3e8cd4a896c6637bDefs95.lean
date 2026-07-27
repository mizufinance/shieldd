import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs94

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((1 : F), 4204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1136) * (relationLc854 rho) = ((1 : F) * rho 4206)

def relationLc855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((1 : F), 4205)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1136) * (relationLc855 rho) = ((1 : F) * rho 4207)

def relationRow4714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * ((1 : F) * rho 4198) = ((1 : F) * rho 4208)

def relationRow4715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * ((1 : F) * rho 4197) = ((1 : F) * rho 4209)

def relationRow4716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4198) * ((1 : F) * rho 4198) = ((1 : F) * rho 4210)

def relationRow4717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4211) * ((-1 : F) * rho 4209 + (1 : F) * rho 4210) = ((2 : F) * rho 4208)

def relationRow4718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4212) * ((2 : F) + (1 : F) * rho 4209 + (-1 : F) * rho 4210) = ((1 : F) * rho 4209 + (1 : F) * rho 4210)

def relationLc856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4719 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc856 rho) = ((1 : F) * rho 4213)

def relationRow4720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4213) * ((1 : F) * rho 4211 + (1 : F) * rho 4212) = ((1 : F) * rho 4214)

def relationLc857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4212) * (relationLc857 rho) = ((1 : F) * rho 4215)

def relationLc858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4211) * (relationLc858 rho) = ((1 : F) * rho 4216)

def relationRow4723 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4215) * ((1 : F) * rho 4216) = ((1 : F) * rho 4217)

def relationRow4724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4218) * ((1 : F) + (1 : F) * rho 4217) = ((1 : F) * rho 4215 + (1 : F) * rho 4216)

def relationRow4725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4219) * ((1 : F) + (-1 : F) * rho 4217) = ((1 : F) * rho 4214 + (-1 : F) * rho 4215 + (-1 : F) * rho 4216)

def relationLc859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((1 : F), 4218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1137) * (relationLc859 rho) = ((1 : F) * rho 4220)

def relationLc860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((1 : F), 4219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1137) * (relationLc860 rho) = ((1 : F) * rho 4221)

def relationRow4728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4211) * ((1 : F) * rho 4212) = ((1 : F) * rho 4222)

def relationRow4729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4211) * ((1 : F) * rho 4211) = ((1 : F) * rho 4223)

def relationRow4730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4212) * ((1 : F) * rho 4212) = ((1 : F) * rho 4224)

def relationRow4731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4225) * ((-1 : F) * rho 4223 + (1 : F) * rho 4224) = ((2 : F) * rho 4222)

def relationRow4732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4226) * ((2 : F) + (1 : F) * rho 4223 + (-1 : F) * rho 4224) = ((1 : F) * rho 4223 + (1 : F) * rho 4224)

def relationLc861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4733 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc861 rho) = ((1 : F) * rho 4227)

def relationRow4734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4227) * ((1 : F) * rho 4225 + (1 : F) * rho 4226) = ((1 : F) * rho 4228)

def relationLc862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4226) * (relationLc862 rho) = ((1 : F) * rho 4229)

def relationLc863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4225) * (relationLc863 rho) = ((1 : F) * rho 4230)

def relationRow4737 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4229) * ((1 : F) * rho 4230) = ((1 : F) * rho 4231)

def relationRow4738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4232) * ((1 : F) + (1 : F) * rho 4231) = ((1 : F) * rho 4229 + (1 : F) * rho 4230)

def relationRow4739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4233) * ((1 : F) + (-1 : F) * rho 4231) = ((1 : F) * rho 4228 + (-1 : F) * rho 4229 + (-1 : F) * rho 4230)

def relationLc864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((1 : F), 4232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1138) * (relationLc864 rho) = ((1 : F) * rho 4234)

def relationLc865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((1 : F), 4233)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1138) * (relationLc865 rho) = ((1 : F) * rho 4235)

def relationRow4742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4225) * ((1 : F) * rho 4226) = ((1 : F) * rho 4236)

def relationRow4743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4225) * ((1 : F) * rho 4225) = ((1 : F) * rho 4237)

def relationRow4744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4226) * ((1 : F) * rho 4226) = ((1 : F) * rho 4238)

def relationRow4745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * ((-1 : F) * rho 4237 + (1 : F) * rho 4238) = ((2 : F) * rho 4236)

def relationRow4746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4240) * ((2 : F) + (1 : F) * rho 4237 + (-1 : F) * rho 4238) = ((1 : F) * rho 4237 + (1 : F) * rho 4238)

def relationLc866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221), ((1 : F), 4234), ((1 : F), 4235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4747 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc866 rho) = ((1 : F) * rho 4241)

def relationRow4748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * ((1 : F) * rho 4239 + (1 : F) * rho 4240) = ((1 : F) * rho 4242)

def relationLc867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220), ((1 : F), 4234)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4240) * (relationLc867 rho) = ((1 : F) * rho 4243)

def relationLc868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221), ((1 : F), 4235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * (relationLc868 rho) = ((1 : F) * rho 4244)

def relationRow4751 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4243) * ((1 : F) * rho 4244) = ((1 : F) * rho 4245)

def relationRow4752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4246) * ((1 : F) + (1 : F) * rho 4245) = ((1 : F) * rho 4243 + (1 : F) * rho 4244)

def relationRow4753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4247) * ((1 : F) + (-1 : F) * rho 4245) = ((1 : F) * rho 4242 + (-1 : F) * rho 4243 + (-1 : F) * rho 4244)

def relationLc869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((-1 : F), 4234), ((1 : F), 4246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * (relationLc869 rho) = ((1 : F) * rho 4248)

def relationLc870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((-1 : F), 4235), ((1 : F), 4247)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * (relationLc870 rho) = ((1 : F) * rho 4249)

def relationRow4756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * ((1 : F) * rho 4240) = ((1 : F) * rho 4250)

def relationRow4757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * ((1 : F) * rho 4239) = ((1 : F) * rho 4251)

def relationRow4758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4240) * ((1 : F) * rho 4240) = ((1 : F) * rho 4252)

def relationRow4759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4253) * ((-1 : F) * rho 4251 + (1 : F) * rho 4252) = ((2 : F) * rho 4250)

def relationRow4760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * ((2 : F) + (1 : F) * rho 4251 + (-1 : F) * rho 4252) = ((1 : F) * rho 4251 + (1 : F) * rho 4252)

def relationLc871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221), ((1 : F), 4234), ((1 : F), 4235), ((1 : F), 4248), ((1 : F), 4249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4761 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc871 rho) = ((1 : F) * rho 4255)

def relationRow4762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * ((1 : F) * rho 4253 + (1 : F) * rho 4254) = ((1 : F) * rho 4256)

def relationLc872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4164), ((1 : F), 4178), ((1 : F), 4192), ((1 : F), 4206), ((1 : F), 4220), ((1 : F), 4234), ((1 : F), 4248)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * (relationLc872 rho) = ((1 : F) * rho 4257)

def relationLc873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩], residual := [((1 : F), 4165), ((1 : F), 4179), ((1 : F), 4193), ((1 : F), 4207), ((1 : F), 4221), ((1 : F), 4235), ((1 : F), 4249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4253) * (relationLc873 rho) = ((1 : F) * rho 4258)

def relationRow4765 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4257) * ((1 : F) * rho 4258) = ((1 : F) * rho 4259)

def relationRow4766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4260) * ((1 : F) + (1 : F) * rho 4259) = ((1 : F) * rho 4257 + (1 : F) * rho 4258)

def relationRow4767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261) * ((1 : F) + (-1 : F) * rho 4259) = ((1 : F) * rho 4256 + (-1 : F) * rho 4257 + (-1 : F) * rho 4258)

def relationLc874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩], residual := [((-1 : F), 2212), ((-1 : F), 4164), ((-1 : F), 4178), ((-1 : F), 4192), ((-1 : F), 4206), ((-1 : F), 4220), ((-1 : F), 4234), ((-1 : F), 4248), ((1 : F), 4260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * (relationLc874 rho) = ((1 : F) * rho 4262)

def relationLc875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩], residual := [((-1 : F), 4165), ((-1 : F), 4179), ((-1 : F), 4193), ((-1 : F), 4207), ((-1 : F), 4221), ((-1 : F), 4235), ((-1 : F), 4249), ((1 : F), 4261)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * (relationLc875 rho) = ((1 : F) * rho 4263)

def relationRow4770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4253) * ((1 : F) * rho 4254) = ((1 : F) * rho 4264)

def relationRow4771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4253) * ((1 : F) * rho 4253) = ((1 : F) * rho 4265)

def relationRow4772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * ((1 : F) * rho 4254) = ((1 : F) * rho 4266)

def relationRow4773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * ((-1 : F) * rho 4265 + (1 : F) * rho 4266) = ((2 : F) * rho 4264)

def relationRow4774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * ((2 : F) + (1 : F) * rho 4265 + (-1 : F) * rho 4266) = ((1 : F) * rho 4265 + (1 : F) * rho 4266)

def relationLc876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩], residual := [((1 : F), 2212), ((1 : F), 4165), ((1 : F), 4178), ((1 : F), 4179), ((1 : F), 4192), ((1 : F), 4193), ((1 : F), 4206), ((1 : F), 4207), ((1 : F), 4220), ((1 : F), 4221), ((1 : F), 4234), ((1 : F), 4235), ((1 : F), 4248), ((1 : F), 4249), ((1 : F), 4262), ((1 : F), 4263)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4775 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc876 rho) = ((1 : F) * rho 4269)

def relationRow4776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4269) * ((1 : F) * rho 4267 + (1 : F) * rho 4268) = ((1 : F) * rho 4270)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
