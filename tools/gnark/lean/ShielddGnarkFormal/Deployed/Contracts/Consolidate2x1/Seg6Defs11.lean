import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * ((-1 : F) * rho 4759 + (1 : F) * rho 4760) = ((2 : F) * rho 4758)

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4762) * ((2 : F) + (1 : F) * rho 4759 + (-1 : F) * rho 4760) = ((1 : F) * rho 4759 + (1 : F) * rho 4760)

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761 + (1 : F) * rho 4762) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 127⟩, ⟨(1 : F), 3119, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4763)

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4762) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4764)

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4765)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4764) * ((1 : F) * rho 4765) = ((1 : F) * rho 4766)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4767) * ((1 : F) + (1 : F) * rho 4766) = ((1 : F) * rho 4764 + (1 : F) * rho 4765)

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768) * ((1 : F) + (-1 : F) * rho 4766) = ((1 : F) * rho 4763 + (-1 : F) * rho 4764 + (-1 : F) * rho 4765)

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 127⟩], residual := [((1 : F), 4767)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4769)

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 127⟩], residual := [((1 : F), 4768)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4770)

def relationRow4372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * ((1 : F) * rho 4762) = ((1 : F) * rho 4771)

def relationRow4373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * ((1 : F) * rho 4761) = ((1 : F) * rho 4772)

def relationRow4374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4762) * ((1 : F) * rho 4762) = ((1 : F) * rho 4773)

def relationRow4375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * ((-1 : F) * rho 4772 + (1 : F) * rho 4773) = ((2 : F) * rho 4771)

def relationRow4376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4775) * ((2 : F) + (1 : F) * rho 4772 + (-1 : F) * rho 4773) = ((1 : F) * rho 4772 + (1 : F) * rho 4773)

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774 + (1 : F) * rho 4775) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 128⟩, ⟨(1 : F), 3119, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4776)

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4775) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4777)

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4778)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4777) * ((1 : F) * rho 4778) = ((1 : F) * rho 4779)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4780) * ((1 : F) + (1 : F) * rho 4779) = ((1 : F) * rho 4777 + (1 : F) * rho 4778)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781) * ((1 : F) + (-1 : F) * rho 4779) = ((1 : F) * rho 4776 + (-1 : F) * rho 4777 + (-1 : F) * rho 4778)

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 128⟩], residual := [((1 : F), 4780)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4782)

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 128⟩], residual := [((1 : F), 4781)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4783)

def relationRow4385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * ((1 : F) * rho 4775) = ((1 : F) * rho 4784)

def relationRow4386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * ((1 : F) * rho 4774) = ((1 : F) * rho 4785)

def relationRow4387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4775) * ((1 : F) * rho 4775) = ((1 : F) * rho 4786)

def relationRow4388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * ((-1 : F) * rho 4785 + (1 : F) * rho 4786) = ((2 : F) * rho 4784)

def relationRow4389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4788) * ((2 : F) + (1 : F) * rho 4785 + (-1 : F) * rho 4786) = ((1 : F) * rho 4785 + (1 : F) * rho 4786)

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787 + (1 : F) * rho 4788) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 129⟩, ⟨(1 : F), 3119, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4789)

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4788) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4790)

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4791)

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4790) * ((1 : F) * rho 4791) = ((1 : F) * rho 4792)

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4793) * ((1 : F) + (1 : F) * rho 4792) = ((1 : F) * rho 4790 + (1 : F) * rho 4791)

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * ((1 : F) + (-1 : F) * rho 4792) = ((1 : F) * rho 4789 + (-1 : F) * rho 4790 + (-1 : F) * rho 4791)

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 129⟩], residual := [((1 : F), 4793)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4795)

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 129⟩], residual := [((1 : F), 4794)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4796)

def relationRow4398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * ((1 : F) * rho 4788) = ((1 : F) * rho 4797)

def relationRow4399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * ((1 : F) * rho 4787) = ((1 : F) * rho 4798)

def relationRow4400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4788) * ((1 : F) * rho 4788) = ((1 : F) * rho 4799)

def relationRow4401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((-1 : F) * rho 4798 + (1 : F) * rho 4799) = ((2 : F) * rho 4797)

def relationRow4402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4801) * ((2 : F) + (1 : F) * rho 4798 + (-1 : F) * rho 4799) = ((1 : F) * rho 4798 + (1 : F) * rho 4799)

def relationRow4403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800 + (1 : F) * rho 4801) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 130⟩, ⟨(1 : F), 3119, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4802)

def relationRow4404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4801) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4803)

def relationRow4405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4804)

def relationRow4406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4803) * ((1 : F) * rho 4804) = ((1 : F) * rho 4805)

def relationRow4407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4806) * ((1 : F) + (1 : F) * rho 4805) = ((1 : F) * rho 4803 + (1 : F) * rho 4804)

def relationRow4408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * ((1 : F) + (-1 : F) * rho 4805) = ((1 : F) * rho 4802 + (-1 : F) * rho 4803 + (-1 : F) * rho 4804)

def relationRow4409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 130⟩], residual := [((1 : F), 4806)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4808)

def relationRow4410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 130⟩], residual := [((1 : F), 4807)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4809)

def relationRow4411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((1 : F) * rho 4801) = ((1 : F) * rho 4810)

def relationRow4412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((1 : F) * rho 4800) = ((1 : F) * rho 4811)

def relationRow4413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4801) * ((1 : F) * rho 4801) = ((1 : F) * rho 4812)

def relationRow4414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((-1 : F) * rho 4811 + (1 : F) * rho 4812) = ((2 : F) * rho 4810)

def relationRow4415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * ((2 : F) + (1 : F) * rho 4811 + (-1 : F) * rho 4812) = ((1 : F) * rho 4811 + (1 : F) * rho 4812)

def relationRow4416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813 + (1 : F) * rho 4814) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 131⟩, ⟨(1 : F), 3119, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4815)

def relationRow4417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4816)

def relationRow4418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4817)

def relationRow4419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4816) * ((1 : F) * rho 4817) = ((1 : F) * rho 4818)

def relationRow4420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4819) * ((1 : F) + (1 : F) * rho 4818) = ((1 : F) * rho 4816 + (1 : F) * rho 4817)

def relationRow4421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((1 : F) + (-1 : F) * rho 4818) = ((1 : F) * rho 4815 + (-1 : F) * rho 4816 + (-1 : F) * rho 4817)

def relationRow4422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 131⟩], residual := [((1 : F), 4819)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4821)

def relationRow4423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 131⟩], residual := [((1 : F), 4820)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4822)

def relationRow4424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((1 : F) * rho 4814) = ((1 : F) * rho 4823)

def relationRow4425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((1 : F) * rho 4813) = ((1 : F) * rho 4824)

def relationRow4426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * ((1 : F) * rho 4814) = ((1 : F) * rho 4825)

def relationRow4427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826) * ((-1 : F) * rho 4824 + (1 : F) * rho 4825) = ((2 : F) * rho 4823)

def relationRow4428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * ((2 : F) + (1 : F) * rho 4824 + (-1 : F) * rho 4825) = ((1 : F) * rho 4824 + (1 : F) * rho 4825)

def relationRow4429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826 + (1 : F) * rho 4827) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 132⟩, ⟨(1 : F), 3119, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4828)

def relationRow4430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4829)

def relationRow4431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4830)

def relationRow4432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4829) * ((1 : F) * rho 4830) = ((1 : F) * rho 4831)

def relationRow4433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4832) * ((1 : F) + (1 : F) * rho 4831) = ((1 : F) * rho 4829 + (1 : F) * rho 4830)

def relationRow4434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833) * ((1 : F) + (-1 : F) * rho 4831) = ((1 : F) * rho 4828 + (-1 : F) * rho 4829 + (-1 : F) * rho 4830)

def relationRow4435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 132⟩], residual := [((1 : F), 4832)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4834)

def relationRow4436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 132⟩], residual := [((1 : F), 4833)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4835)

def relationRow4437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826) * ((1 : F) * rho 4827) = ((1 : F) * rho 4836)

def relationRow4438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826) * ((1 : F) * rho 4826) = ((1 : F) * rho 4837)

def relationRow4439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * ((1 : F) * rho 4827) = ((1 : F) * rho 4838)

def relationRow4440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * ((-1 : F) * rho 4837 + (1 : F) * rho 4838) = ((2 : F) * rho 4836)

def relationRow4441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4840) * ((2 : F) + (1 : F) * rho 4837 + (-1 : F) * rho 4838) = ((1 : F) * rho 4837 + (1 : F) * rho 4838)

def relationRow4442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839 + (1 : F) * rho 4840) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 133⟩, ⟨(1 : F), 3119, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4841)

def relationRow4443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4840) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4842)

def relationRow4444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4843)

def relationRow4445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4842) * ((1 : F) * rho 4843) = ((1 : F) * rho 4844)

def relationRow4446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4845) * ((1 : F) + (1 : F) * rho 4844) = ((1 : F) * rho 4842 + (1 : F) * rho 4843)

def relationRow4447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846) * ((1 : F) + (-1 : F) * rho 4844) = ((1 : F) * rho 4841 + (-1 : F) * rho 4842 + (-1 : F) * rho 4843)

def relationRow4448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 133⟩], residual := [((1 : F), 4845)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4847)

def relationRow4449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 133⟩], residual := [((1 : F), 4846)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4848)

def relationRow4450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * ((1 : F) * rho 4840) = ((1 : F) * rho 4849)

def relationRow4451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * ((1 : F) * rho 4839) = ((1 : F) * rho 4850)

def relationRow4452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4840) * ((1 : F) * rho 4840) = ((1 : F) * rho 4851)

def relationRow4453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852) * ((-1 : F) * rho 4850 + (1 : F) * rho 4851) = ((2 : F) * rho 4849)

def relationRow4454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4853) * ((2 : F) + (1 : F) * rho 4850 + (-1 : F) * rho 4851) = ((1 : F) * rho 4850 + (1 : F) * rho 4851)

def relationRow4455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852 + (1 : F) * rho 4853) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 134⟩, ⟨(1 : F), 3119, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4854)

def relationRow4456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4853) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4855)

def relationRow4457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4856)

def relationRow4458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4855) * ((1 : F) * rho 4856) = ((1 : F) * rho 4857)

def relationRow4459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4858) * ((1 : F) + (1 : F) * rho 4857) = ((1 : F) * rho 4855 + (1 : F) * rho 4856)

def relationRow4460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859) * ((1 : F) + (-1 : F) * rho 4857) = ((1 : F) * rho 4854 + (-1 : F) * rho 4855 + (-1 : F) * rho 4856)

def relationRow4461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 134⟩], residual := [((1 : F), 4858)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4860)

def relationRow4462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 134⟩], residual := [((1 : F), 4859)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4861)

def relationRow4463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852) * ((1 : F) * rho 4853) = ((1 : F) * rho 4862)

def relationRow4464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852) * ((1 : F) * rho 4852) = ((1 : F) * rho 4863)

def relationRow4465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4853) * ((1 : F) * rho 4853) = ((1 : F) * rho 4864)

def relationRow4466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865) * ((-1 : F) * rho 4863 + (1 : F) * rho 4864) = ((2 : F) * rho 4862)

def relationRow4467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4866) * ((2 : F) + (1 : F) * rho 4863 + (-1 : F) * rho 4864) = ((1 : F) * rho 4863 + (1 : F) * rho 4864)

def relationRow4468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865 + (1 : F) * rho 4866) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 135⟩, ⟨(1 : F), 3119, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4867)

def relationRow4469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4866) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4868)

def relationRow4470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4869)

def relationRow4471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4868) * ((1 : F) * rho 4869) = ((1 : F) * rho 4870)

def relationRow4472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4871) * ((1 : F) + (1 : F) * rho 4870) = ((1 : F) * rho 4868 + (1 : F) * rho 4869)

def relationRow4473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872) * ((1 : F) + (-1 : F) * rho 4870) = ((1 : F) * rho 4867 + (-1 : F) * rho 4868 + (-1 : F) * rho 4869)

def relationRow4474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 135⟩], residual := [((1 : F), 4871)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4873)

def relationRow4475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 135⟩], residual := [((1 : F), 4872)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4874)

def relationRow4476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865) * ((1 : F) * rho 4866) = ((1 : F) * rho 4875)

def relationRow4477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865) * ((1 : F) * rho 4865) = ((1 : F) * rho 4876)

def relationRow4478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4866) * ((1 : F) * rho 4866) = ((1 : F) * rho 4877)

def relationRow4479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878) * ((-1 : F) * rho 4876 + (1 : F) * rho 4877) = ((2 : F) * rho 4875)

def relationRow4480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4879) * ((2 : F) + (1 : F) * rho 4876 + (-1 : F) * rho 4877) = ((1 : F) * rho 4876 + (1 : F) * rho 4877)

def relationRow4481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878 + (1 : F) * rho 4879) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 136⟩, ⟨(1 : F), 3119, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4880)

def relationRow4482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4879) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4881)

def relationRow4483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4882)

def relationRow4484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4881) * ((1 : F) * rho 4882) = ((1 : F) * rho 4883)

def relationRow4485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4884) * ((1 : F) + (1 : F) * rho 4883) = ((1 : F) * rho 4881 + (1 : F) * rho 4882)

def relationRow4486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((1 : F) + (-1 : F) * rho 4883) = ((1 : F) * rho 4880 + (-1 : F) * rho 4881 + (-1 : F) * rho 4882)

def relationRow4487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 136⟩], residual := [((1 : F), 4884)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4886)

def relationRow4488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 136⟩], residual := [((1 : F), 4885)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4887)

def relationRow4489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878) * ((1 : F) * rho 4879) = ((1 : F) * rho 4888)

def relationRow4490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878) * ((1 : F) * rho 4878) = ((1 : F) * rho 4889)

def relationRow4491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4879) * ((1 : F) * rho 4879) = ((1 : F) * rho 4890)

def relationRow4492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * ((-1 : F) * rho 4889 + (1 : F) * rho 4890) = ((2 : F) * rho 4888)

def relationRow4493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4892) * ((2 : F) + (1 : F) * rho 4889 + (-1 : F) * rho 4890) = ((1 : F) * rho 4889 + (1 : F) * rho 4890)

def relationRow4494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891 + (1 : F) * rho 4892) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 137⟩, ⟨(1 : F), 3119, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4893)

def relationRow4495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4892) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4894)

def relationRow4496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4895)

def relationRow4497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4894) * ((1 : F) * rho 4895) = ((1 : F) * rho 4896)

def relationRow4498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4897) * ((1 : F) + (1 : F) * rho 4896) = ((1 : F) * rho 4894 + (1 : F) * rho 4895)

def relationRow4499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((1 : F) + (-1 : F) * rho 4896) = ((1 : F) * rho 4893 + (-1 : F) * rho 4894 + (-1 : F) * rho 4895)

def relationRow4500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 137⟩], residual := [((1 : F), 4897)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4899)

def relationRow4501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 137⟩], residual := [((1 : F), 4898)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4900)

def relationRow4502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * ((1 : F) * rho 4892) = ((1 : F) * rho 4901)

def relationRow4503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * ((1 : F) * rho 4891) = ((1 : F) * rho 4902)

def relationRow4504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4892) * ((1 : F) * rho 4892) = ((1 : F) * rho 4903)

def relationRow4505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * ((-1 : F) * rho 4902 + (1 : F) * rho 4903) = ((2 : F) * rho 4901)

def relationRow4506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * ((2 : F) + (1 : F) * rho 4902 + (-1 : F) * rho 4903) = ((1 : F) * rho 4902 + (1 : F) * rho 4903)

def relationRow4507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904 + (1 : F) * rho 4905) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 138⟩, ⟨(1 : F), 3119, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4906)

def relationRow4508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4907)

def relationRow4509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4908)

def relationRow4510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4907) * ((1 : F) * rho 4908) = ((1 : F) * rho 4909)

def relationRow4511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4910) * ((1 : F) + (1 : F) * rho 4909) = ((1 : F) * rho 4907 + (1 : F) * rho 4908)

def relationRow4512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((1 : F) + (-1 : F) * rho 4909) = ((1 : F) * rho 4906 + (-1 : F) * rho 4907 + (-1 : F) * rho 4908)

def relationRow4513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 138⟩], residual := [((1 : F), 4910)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4912)

def relationRow4514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 138⟩], residual := [((1 : F), 4911)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4913)

def relationRow4515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * ((1 : F) * rho 4905) = ((1 : F) * rho 4914)

def relationRow4516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * ((1 : F) * rho 4904) = ((1 : F) * rho 4915)

def relationRow4517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * ((1 : F) * rho 4905) = ((1 : F) * rho 4916)

def relationRow4518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917) * ((-1 : F) * rho 4915 + (1 : F) * rho 4916) = ((2 : F) * rho 4914)

def relationRow4519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4918) * ((2 : F) + (1 : F) * rho 4915 + (-1 : F) * rho 4916) = ((1 : F) * rho 4915 + (1 : F) * rho 4916)

def relationRow4520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917 + (1 : F) * rho 4918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 139⟩, ⟨(1 : F), 3119, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4919)

def relationRow4521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4920)

def relationRow4522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4921)

def relationRow4523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4920) * ((1 : F) * rho 4921) = ((1 : F) * rho 4922)

def relationRow4524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4923) * ((1 : F) + (1 : F) * rho 4922) = ((1 : F) * rho 4920 + (1 : F) * rho 4921)

def relationRow4525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * ((1 : F) + (-1 : F) * rho 4922) = ((1 : F) * rho 4919 + (-1 : F) * rho 4920 + (-1 : F) * rho 4921)

def relationRow4526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 139⟩], residual := [((1 : F), 4923)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4925)

def relationRow4527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 139⟩], residual := [((1 : F), 4924)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4926)

def relationRow4528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917) * ((1 : F) * rho 4918) = ((1 : F) * rho 4927)

def relationRow4529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917) * ((1 : F) * rho 4917) = ((1 : F) * rho 4928)

def relationRow4530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4918) * ((1 : F) * rho 4918) = ((1 : F) * rho 4929)

def relationRow4531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * ((-1 : F) * rho 4928 + (1 : F) * rho 4929) = ((2 : F) * rho 4927)

def relationRow4532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4931) * ((2 : F) + (1 : F) * rho 4928 + (-1 : F) * rho 4929) = ((1 : F) * rho 4928 + (1 : F) * rho 4929)

def relationRow4533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930 + (1 : F) * rho 4931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 140⟩, ⟨(1 : F), 3119, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4932)

def relationRow4534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4933)

def relationRow4535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4934)

def relationRow4536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4933) * ((1 : F) * rho 4934) = ((1 : F) * rho 4935)

def relationRow4537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4936) * ((1 : F) + (1 : F) * rho 4935) = ((1 : F) * rho 4933 + (1 : F) * rho 4934)

def relationRow4538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937) * ((1 : F) + (-1 : F) * rho 4935) = ((1 : F) * rho 4932 + (-1 : F) * rho 4933 + (-1 : F) * rho 4934)

def relationRow4539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 140⟩], residual := [((1 : F), 4936)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4938)

def relationRow4540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 140⟩], residual := [((1 : F), 4937)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4939)

def relationRow4541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * ((1 : F) * rho 4931) = ((1 : F) * rho 4940)

def relationRow4542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * ((1 : F) * rho 4930) = ((1 : F) * rho 4941)

def relationRow4543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4931) * ((1 : F) * rho 4931) = ((1 : F) * rho 4942)

def relationRow4544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943) * ((-1 : F) * rho 4941 + (1 : F) * rho 4942) = ((2 : F) * rho 4940)

def relationRow4545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4944) * ((2 : F) + (1 : F) * rho 4941 + (-1 : F) * rho 4942) = ((1 : F) * rho 4941 + (1 : F) * rho 4942)

def relationRow4546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943 + (1 : F) * rho 4944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 141⟩, ⟨(1 : F), 3119, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4945)

def relationRow4547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4946)

def relationRow4548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4947)

def relationRow4549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4946) * ((1 : F) * rho 4947) = ((1 : F) * rho 4948)

def relationRow4550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4949) * ((1 : F) + (1 : F) * rho 4948) = ((1 : F) * rho 4946 + (1 : F) * rho 4947)

def relationRow4551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * ((1 : F) + (-1 : F) * rho 4948) = ((1 : F) * rho 4945 + (-1 : F) * rho 4946 + (-1 : F) * rho 4947)

def relationRow4552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 141⟩], residual := [((1 : F), 4949)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4951)

def relationRow4553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 141⟩], residual := [((1 : F), 4950)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4952)

def relationRow4554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943) * ((1 : F) * rho 4944) = ((1 : F) * rho 4953)

def relationRow4555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943) * ((1 : F) * rho 4943) = ((1 : F) * rho 4954)

def relationRow4556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4944) * ((1 : F) * rho 4944) = ((1 : F) * rho 4955)

def relationRow4557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956) * ((-1 : F) * rho 4954 + (1 : F) * rho 4955) = ((2 : F) * rho 4953)

def relationRow4558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4957) * ((2 : F) + (1 : F) * rho 4954 + (-1 : F) * rho 4955) = ((1 : F) * rho 4954 + (1 : F) * rho 4955)

def relationRow4559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956 + (1 : F) * rho 4957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 142⟩, ⟨(1 : F), 3119, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4958)

def relationRow4560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4959)

def relationRow4561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4960)

def relationRow4562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4959) * ((1 : F) * rho 4960) = ((1 : F) * rho 4961)

def relationRow4563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4962) * ((1 : F) + (1 : F) * rho 4961) = ((1 : F) * rho 4959 + (1 : F) * rho 4960)

def relationRow4564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963) * ((1 : F) + (-1 : F) * rho 4961) = ((1 : F) * rho 4958 + (-1 : F) * rho 4959 + (-1 : F) * rho 4960)

def relationRow4565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 142⟩], residual := [((1 : F), 4962)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4964)

def relationRow4566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 142⟩], residual := [((1 : F), 4963)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4965)

def relationRow4567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956) * ((1 : F) * rho 4957) = ((1 : F) * rho 4966)

def relationRow4568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956) * ((1 : F) * rho 4956) = ((1 : F) * rho 4967)

def relationRow4569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4957) * ((1 : F) * rho 4957) = ((1 : F) * rho 4968)

def relationRow4570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * ((-1 : F) * rho 4967 + (1 : F) * rho 4968) = ((2 : F) * rho 4966)

def relationRow4571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4970) * ((2 : F) + (1 : F) * rho 4967 + (-1 : F) * rho 4968) = ((1 : F) * rho 4967 + (1 : F) * rho 4968)

def relationRow4572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969 + (1 : F) * rho 4970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 143⟩, ⟨(1 : F), 3119, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4971)

def relationRow4573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4972)

def relationRow4574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4973)

def relationRow4575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4972) * ((1 : F) * rho 4973) = ((1 : F) * rho 4974)

def relationRow4576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4975) * ((1 : F) + (1 : F) * rho 4974) = ((1 : F) * rho 4972 + (1 : F) * rho 4973)

def relationRow4577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976) * ((1 : F) + (-1 : F) * rho 4974) = ((1 : F) * rho 4971 + (-1 : F) * rho 4972 + (-1 : F) * rho 4973)

def relationRow4578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 143⟩], residual := [((1 : F), 4975)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4977)

def relationRow4579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 143⟩], residual := [((1 : F), 4976)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4978)

def relationRow4580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * ((1 : F) * rho 4970) = ((1 : F) * rho 4979)

def relationRow4581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * ((1 : F) * rho 4969) = ((1 : F) * rho 4980)

def relationRow4582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4970) * ((1 : F) * rho 4970) = ((1 : F) * rho 4981)

def relationRow4583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * ((-1 : F) * rho 4980 + (1 : F) * rho 4981) = ((2 : F) * rho 4979)

def relationRow4584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4983) * ((2 : F) + (1 : F) * rho 4980 + (-1 : F) * rho 4981) = ((1 : F) * rho 4980 + (1 : F) * rho 4981)

def relationRow4585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982 + (1 : F) * rho 4983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 144⟩, ⟨(1 : F), 3119, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4984)

def relationRow4586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4985)

def relationRow4587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4986)

def relationRow4588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4985) * ((1 : F) * rho 4986) = ((1 : F) * rho 4987)

def relationRow4589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4988) * ((1 : F) + (1 : F) * rho 4987) = ((1 : F) * rho 4985 + (1 : F) * rho 4986)

def relationRow4590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((1 : F) + (-1 : F) * rho 4987) = ((1 : F) * rho 4984 + (-1 : F) * rho 4985 + (-1 : F) * rho 4986)

def relationRow4591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 144⟩], residual := [((1 : F), 4988)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4990)

def relationRow4592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 144⟩], residual := [((1 : F), 4989)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4991)

def relationRow4593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * ((1 : F) * rho 4983) = ((1 : F) * rho 4992)

def relationRow4594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * ((1 : F) * rho 4982) = ((1 : F) * rho 4993)

def relationRow4595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4983) * ((1 : F) * rho 4983) = ((1 : F) * rho 4994)

def relationRow4596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((-1 : F) * rho 4993 + (1 : F) * rho 4994) = ((2 : F) * rho 4992)

def relationRow4597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * ((2 : F) + (1 : F) * rho 4993 + (-1 : F) * rho 4994) = ((1 : F) * rho 4993 + (1 : F) * rho 4994)

def relationRow4598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995 + (1 : F) * rho 4996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 145⟩, ⟨(1 : F), 3119, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4997)

def relationRow4599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4998)

def relationRow4600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4999)

def relationRow4601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4998) * ((1 : F) * rho 4999) = ((1 : F) * rho 5000)

def relationRow4602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5001) * ((1 : F) + (1 : F) * rho 5000) = ((1 : F) * rho 4998 + (1 : F) * rho 4999)

def relationRow4603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * ((1 : F) + (-1 : F) * rho 5000) = ((1 : F) * rho 4997 + (-1 : F) * rho 4998 + (-1 : F) * rho 4999)

def relationRow4604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 145⟩], residual := [((1 : F), 5001)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5003)

def relationRow4605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 145⟩], residual := [((1 : F), 5002)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5004)

def relationRow4606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((1 : F) * rho 4996) = ((1 : F) * rho 5005)

def relationRow4607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((1 : F) * rho 4995) = ((1 : F) * rho 5006)

def relationRow4608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * ((1 : F) * rho 4996) = ((1 : F) * rho 5007)

def relationRow4609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008) * ((-1 : F) * rho 5006 + (1 : F) * rho 5007) = ((2 : F) * rho 5005)

def relationRow4610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((2 : F) + (1 : F) * rho 5006 + (-1 : F) * rho 5007) = ((1 : F) * rho 5006 + (1 : F) * rho 5007)

def relationRow4611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008 + (1 : F) * rho 5009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 146⟩, ⟨(1 : F), 3119, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5010)

def relationRow4612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5011)

def relationRow4613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5012)

def relationRow4614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5011) * ((1 : F) * rho 5012) = ((1 : F) * rho 5013)

def relationRow4615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5014) * ((1 : F) + (1 : F) * rho 5013) = ((1 : F) * rho 5011 + (1 : F) * rho 5012)

def relationRow4616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * ((1 : F) + (-1 : F) * rho 5013) = ((1 : F) * rho 5010 + (-1 : F) * rho 5011 + (-1 : F) * rho 5012)

def relationRow4617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 146⟩], residual := [((1 : F), 5014)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5016)

def relationRow4618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 146⟩], residual := [((1 : F), 5015)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5017)

def relationRow4619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008) * ((1 : F) * rho 5009) = ((1 : F) * rho 5018)

def relationRow4620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008) * ((1 : F) * rho 5008) = ((1 : F) * rho 5019)

def relationRow4621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((1 : F) * rho 5009) = ((1 : F) * rho 5020)

def relationRow4622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021) * ((-1 : F) * rho 5019 + (1 : F) * rho 5020) = ((2 : F) * rho 5018)

def relationRow4623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5022) * ((2 : F) + (1 : F) * rho 5019 + (-1 : F) * rho 5020) = ((1 : F) * rho 5019 + (1 : F) * rho 5020)

def relationRow4624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021 + (1 : F) * rho 5022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 147⟩, ⟨(1 : F), 3119, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5023)

def relationRow4625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5024)

def relationRow4626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5025)

def relationRow4627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5024) * ((1 : F) * rho 5025) = ((1 : F) * rho 5026)

def relationRow4628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5027) * ((1 : F) + (1 : F) * rho 5026) = ((1 : F) * rho 5024 + (1 : F) * rho 5025)

def relationRow4629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028) * ((1 : F) + (-1 : F) * rho 5026) = ((1 : F) * rho 5023 + (-1 : F) * rho 5024 + (-1 : F) * rho 5025)

def relationRow4630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 147⟩], residual := [((1 : F), 5027)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5029)

def relationRow4631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 147⟩], residual := [((1 : F), 5028)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5030)

def relationRow4632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021) * ((1 : F) * rho 5022) = ((1 : F) * rho 5031)

def relationRow4633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021) * ((1 : F) * rho 5021) = ((1 : F) * rho 5032)

def relationRow4634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5022) * ((1 : F) * rho 5022) = ((1 : F) * rho 5033)

def relationRow4635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * ((-1 : F) * rho 5032 + (1 : F) * rho 5033) = ((2 : F) * rho 5031)

def relationRow4636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5035) * ((2 : F) + (1 : F) * rho 5032 + (-1 : F) * rho 5033) = ((1 : F) * rho 5032 + (1 : F) * rho 5033)

def relationRow4637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034 + (1 : F) * rho 5035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 148⟩, ⟨(1 : F), 3119, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5036)

def relationRow4638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5037)

def relationRow4639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5038)

def relationRow4640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5037) * ((1 : F) * rho 5038) = ((1 : F) * rho 5039)

def relationRow4641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5040) * ((1 : F) + (1 : F) * rho 5039) = ((1 : F) * rho 5037 + (1 : F) * rho 5038)

def relationRow4642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041) * ((1 : F) + (-1 : F) * rho 5039) = ((1 : F) * rho 5036 + (-1 : F) * rho 5037 + (-1 : F) * rho 5038)

def relationRow4643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 148⟩], residual := [((1 : F), 5040)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5042)

def relationRow4644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 148⟩], residual := [((1 : F), 5041)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5043)

def relationRow4645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * ((1 : F) * rho 5035) = ((1 : F) * rho 5044)

def relationRow4646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * ((1 : F) * rho 5034) = ((1 : F) * rho 5045)

def relationRow4647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5035) * ((1 : F) * rho 5035) = ((1 : F) * rho 5046)

def relationRow4648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047) * ((-1 : F) * rho 5045 + (1 : F) * rho 5046) = ((2 : F) * rho 5044)

def relationRow4649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5048) * ((2 : F) + (1 : F) * rho 5045 + (-1 : F) * rho 5046) = ((1 : F) * rho 5045 + (1 : F) * rho 5046)

def relationRow4650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047 + (1 : F) * rho 5048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 149⟩, ⟨(1 : F), 3119, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5049)

def relationRow4651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5050)

def relationRow4652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5051)

def relationRow4653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5050) * ((1 : F) * rho 5051) = ((1 : F) * rho 5052)

def relationRow4654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5053) * ((1 : F) + (1 : F) * rho 5052) = ((1 : F) * rho 5050 + (1 : F) * rho 5051)

def relationRow4655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * ((1 : F) + (-1 : F) * rho 5052) = ((1 : F) * rho 5049 + (-1 : F) * rho 5050 + (-1 : F) * rho 5051)

def relationRow4656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 149⟩], residual := [((1 : F), 5053)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5055)

def relationRow4657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 149⟩], residual := [((1 : F), 5054)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5056)

def relationRow4658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047) * ((1 : F) * rho 5048) = ((1 : F) * rho 5057)

def relationRow4659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047) * ((1 : F) * rho 5047) = ((1 : F) * rho 5058)

def relationRow4660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5048) * ((1 : F) * rho 5048) = ((1 : F) * rho 5059)

def relationRow4661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5060) * ((-1 : F) * rho 5058 + (1 : F) * rho 5059) = ((2 : F) * rho 5057)

def relationRow4662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5061) * ((2 : F) + (1 : F) * rho 5058 + (-1 : F) * rho 5059) = ((1 : F) * rho 5058 + (1 : F) * rho 5059)

def relationRow4663 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5062)

def relationRow4664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5062) * ((1 : F) * rho 5060 + (1 : F) * rho 5061) = ((1 : F) * rho 5063)

def relationRow4665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5064)

def relationRow4666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5065)

def relationRow4667 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5064) * ((1 : F) * rho 5065) = ((1 : F) * rho 5066)

def relationRow4668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5067) * ((1 : F) + (1 : F) * rho 5066) = ((1 : F) * rho 5064 + (1 : F) * rho 5065)

def relationRow4669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5068) * ((1 : F) + (-1 : F) * rho 5066) = ((1 : F) * rho 5063 + (-1 : F) * rho 5064 + (-1 : F) * rho 5065)

def relationRow4670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5067)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5069)

def relationRow4671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5068)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5070)

def relationRow4672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5060) * ((1 : F) * rho 5061) = ((1 : F) * rho 5071)

def relationRow4673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5060) * ((1 : F) * rho 5060) = ((1 : F) * rho 5072)

def relationRow4674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5061) * ((1 : F) * rho 5061) = ((1 : F) * rho 5073)

def relationRow4675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5074) * ((-1 : F) * rho 5072 + (1 : F) * rho 5073) = ((2 : F) * rho 5071)

def relationRow4676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5075) * ((2 : F) + (1 : F) * rho 5072 + (-1 : F) * rho 5073) = ((1 : F) * rho 5072 + (1 : F) * rho 5073)

def relationRow4677 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5076)

def relationRow4678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5076) * ((1 : F) * rho 5074 + (1 : F) * rho 5075) = ((1 : F) * rho 5077)

def relationRow4679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5078)

def relationRow4680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5079)

def relationRow4681 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5078) * ((1 : F) * rho 5079) = ((1 : F) * rho 5080)

def relationRow4682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5081) * ((1 : F) + (1 : F) * rho 5080) = ((1 : F) * rho 5078 + (1 : F) * rho 5079)

def relationRow4683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5082) * ((1 : F) + (-1 : F) * rho 5080) = ((1 : F) * rho 5077 + (-1 : F) * rho 5078 + (-1 : F) * rho 5079)

def relationRow4684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((1 : F), 5081)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5083)

def relationRow4685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((1 : F), 5082)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5084)

def relationRow4686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5074) * ((1 : F) * rho 5075) = ((1 : F) * rho 5085)

def relationRow4687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5074) * ((1 : F) * rho 5074) = ((1 : F) * rho 5086)

def relationRow4688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5075) * ((1 : F) * rho 5075) = ((1 : F) * rho 5087)

def relationRow4689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5088) * ((-1 : F) * rho 5086 + (1 : F) * rho 5087) = ((2 : F) * rho 5085)

def relationRow4690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5089) * ((2 : F) + (1 : F) * rho 5086 + (-1 : F) * rho 5087) = ((1 : F) * rho 5086 + (1 : F) * rho 5087)

def relationRow4691 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5090)

def relationRow4692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5090) * ((1 : F) * rho 5088 + (1 : F) * rho 5089) = ((1 : F) * rho 5091)

def relationRow4693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5092)

def relationRow4694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5088) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5093)

def relationRow4695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5092) * ((1 : F) * rho 5093) = ((1 : F) * rho 5094)

def relationRow4696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5095) * ((1 : F) + (1 : F) * rho 5094) = ((1 : F) * rho 5092 + (1 : F) * rho 5093)

def relationRow4697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5096) * ((1 : F) + (-1 : F) * rho 5094) = ((1 : F) * rho 5091 + (-1 : F) * rho 5092 + (-1 : F) * rho 5093)

def relationRow4698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((1 : F), 5095)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5097)

def relationRow4699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((1 : F), 5096)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5098)

def relationRow4700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5088) * ((1 : F) * rho 5089) = ((1 : F) * rho 5099)

def relationRow4701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5088) * ((1 : F) * rho 5088) = ((1 : F) * rho 5100)

def relationRow4702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5089) * ((1 : F) * rho 5089) = ((1 : F) * rho 5101)

def relationRow4703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5102) * ((-1 : F) * rho 5100 + (1 : F) * rho 5101) = ((2 : F) * rho 5099)

def relationRow4704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5103) * ((2 : F) + (1 : F) * rho 5100 + (-1 : F) * rho 5101) = ((1 : F) * rho 5100 + (1 : F) * rho 5101)

def relationRow4705 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5104)

def relationRow4706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5104) * ((1 : F) * rho 5102 + (1 : F) * rho 5103) = ((1 : F) * rho 5105)

def relationRow4707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5106)

def relationRow4708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5102) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5107)

def relationRow4709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5106) * ((1 : F) * rho 5107) = ((1 : F) * rho 5108)

def relationRow4710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5109) * ((1 : F) + (1 : F) * rho 5108) = ((1 : F) * rho 5106 + (1 : F) * rho 5107)

def relationRow4711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * ((1 : F) + (-1 : F) * rho 5108) = ((1 : F) * rho 5105 + (-1 : F) * rho 5106 + (-1 : F) * rho 5107)

def relationRow4712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((1 : F), 5109)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5111)

def relationRow4713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((1 : F), 5110)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5112)

def relationRow4714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5102) * ((1 : F) * rho 5103) = ((1 : F) * rho 5113)

def relationRow4715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5102) * ((1 : F) * rho 5102) = ((1 : F) * rho 5114)

def relationRow4716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5103) * ((1 : F) * rho 5103) = ((1 : F) * rho 5115)

def relationRow4717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5116) * ((-1 : F) * rho 5114 + (1 : F) * rho 5115) = ((2 : F) * rho 5113)

def relationRow4718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5117) * ((2 : F) + (1 : F) * rho 5114 + (-1 : F) * rho 5115) = ((1 : F) * rho 5114 + (1 : F) * rho 5115)

def relationRow4719 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5118)

def relationRow4720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5118) * ((1 : F) * rho 5116 + (1 : F) * rho 5117) = ((1 : F) * rho 5119)

def relationRow4721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5117) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5120)

def relationRow4722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5116) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5121)

def relationRow4723 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5120) * ((1 : F) * rho 5121) = ((1 : F) * rho 5122)

def relationRow4724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5123) * ((1 : F) + (1 : F) * rho 5122) = ((1 : F) * rho 5120 + (1 : F) * rho 5121)

def relationRow4725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5124) * ((1 : F) + (-1 : F) * rho 5122) = ((1 : F) * rho 5119 + (-1 : F) * rho 5120 + (-1 : F) * rho 5121)

def relationRow4726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((1 : F), 5123)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5125)

def relationRow4727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((1 : F), 5124)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5126)

def relationRow4728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5116) * ((1 : F) * rho 5117) = ((1 : F) * rho 5127)

def relationRow4729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5116) * ((1 : F) * rho 5116) = ((1 : F) * rho 5128)

def relationRow4730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5117) * ((1 : F) * rho 5117) = ((1 : F) * rho 5129)

def relationRow4731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5130) * ((-1 : F) * rho 5128 + (1 : F) * rho 5129) = ((2 : F) * rho 5127)

def relationRow4732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5131) * ((2 : F) + (1 : F) * rho 5128 + (-1 : F) * rho 5129) = ((1 : F) * rho 5128 + (1 : F) * rho 5129)

def relationRow4733 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5132)

def relationRow4734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5132) * ((1 : F) * rho 5130 + (1 : F) * rho 5131) = ((1 : F) * rho 5133)

def relationRow4735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5131) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5134)

def relationRow4736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5130) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5135)

def relationRow4737 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5134) * ((1 : F) * rho 5135) = ((1 : F) * rho 5136)

def relationRow4738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5137) * ((1 : F) + (1 : F) * rho 5136) = ((1 : F) * rho 5134 + (1 : F) * rho 5135)

def relationRow4739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5138) * ((1 : F) + (-1 : F) * rho 5136) = ((1 : F) * rho 5133 + (-1 : F) * rho 5134 + (-1 : F) * rho 5135)

def relationRow4740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((1 : F), 5137)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5139)

def relationRow4741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((1 : F), 5138)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5140)

def relationRow4742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5130) * ((1 : F) * rho 5131) = ((1 : F) * rho 5141)

def relationRow4743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5130) * ((1 : F) * rho 5130) = ((1 : F) * rho 5142)

def relationRow4744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5131) * ((1 : F) * rho 5131) = ((1 : F) * rho 5143)

def relationRow4745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5144) * ((-1 : F) * rho 5142 + (1 : F) * rho 5143) = ((2 : F) * rho 5141)

def relationRow4746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5145) * ((2 : F) + (1 : F) * rho 5142 + (-1 : F) * rho 5143) = ((1 : F) * rho 5142 + (1 : F) * rho 5143)

def relationRow4747 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5146)

def relationRow4748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5146) * ((1 : F) * rho 5144 + (1 : F) * rho 5145) = ((1 : F) * rho 5147)

def relationRow4749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5145) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5148)

def relationRow4750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5144) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5149)

def relationRow4751 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5148) * ((1 : F) * rho 5149) = ((1 : F) * rho 5150)

def relationRow4752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5151) * ((1 : F) + (1 : F) * rho 5150) = ((1 : F) * rho 5148 + (1 : F) * rho 5149)

def relationRow4753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5152) * ((1 : F) + (-1 : F) * rho 5150) = ((1 : F) * rho 5147 + (-1 : F) * rho 5148 + (-1 : F) * rho 5149)

def relationRow4754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((1 : F), 5151)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5153)

def relationRow4755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((1 : F), 5152)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5154)

def relationRow4756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5144) * ((1 : F) * rho 5145) = ((1 : F) * rho 5155)

def relationRow4757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5144) * ((1 : F) * rho 5144) = ((1 : F) * rho 5156)

def relationRow4758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5145) * ((1 : F) * rho 5145) = ((1 : F) * rho 5157)

def relationRow4759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5158) * ((-1 : F) * rho 5156 + (1 : F) * rho 5157) = ((2 : F) * rho 5155)

def relationRow4760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5159) * ((2 : F) + (1 : F) * rho 5156 + (-1 : F) * rho 5157) = ((1 : F) * rho 5156 + (1 : F) * rho 5157)

def relationRow4761 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5160)

def relationRow4762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5160) * ((1 : F) * rho 5158 + (1 : F) * rho 5159) = ((1 : F) * rho 5161)

def relationRow4763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5159) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5162)

def relationRow4764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5158) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5163)

def relationRow4765 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5162) * ((1 : F) * rho 5163) = ((1 : F) * rho 5164)

def relationRow4766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5165) * ((1 : F) + (1 : F) * rho 5164) = ((1 : F) * rho 5162 + (1 : F) * rho 5163)

def relationRow4767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((1 : F) + (-1 : F) * rho 5164) = ((1 : F) * rho 5161 + (-1 : F) * rho 5162 + (-1 : F) * rho 5163)

def relationRow4768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((1 : F), 5165)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5167)

def relationRow4769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((1 : F), 5166)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5168)

def relationRow4770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5158) * ((1 : F) * rho 5159) = ((1 : F) * rho 5169)

def relationRow4771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5158) * ((1 : F) * rho 5158) = ((1 : F) * rho 5170)

def relationRow4772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5159) * ((1 : F) * rho 5159) = ((1 : F) * rho 5171)

def relationRow4773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * ((-1 : F) * rho 5170 + (1 : F) * rho 5171) = ((2 : F) * rho 5169)

def relationRow4774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5173) * ((2 : F) + (1 : F) * rho 5170 + (-1 : F) * rho 5171) = ((1 : F) * rho 5170 + (1 : F) * rho 5171)

def relationRow4775 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5174)

def relationRow4776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5174) * ((1 : F) * rho 5172 + (1 : F) * rho 5173) = ((1 : F) * rho 5175)

def relationRow4777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5173) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5176)

def relationRow4778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5177)

def relationRow4779 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5176) * ((1 : F) * rho 5177) = ((1 : F) * rho 5178)

def relationRow4780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5179) * ((1 : F) + (1 : F) * rho 5178) = ((1 : F) * rho 5176 + (1 : F) * rho 5177)

def relationRow4781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * ((1 : F) + (-1 : F) * rho 5178) = ((1 : F) * rho 5175 + (-1 : F) * rho 5176 + (-1 : F) * rho 5177)

def relationRow4782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((1 : F), 5179)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5181)

def relationRow4783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((1 : F), 5180)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5182)

def relationRow4784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * ((1 : F) * rho 5173) = ((1 : F) * rho 5183)

def relationRow4785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * ((1 : F) * rho 5172) = ((1 : F) * rho 5184)

def relationRow4786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5173) * ((1 : F) * rho 5173) = ((1 : F) * rho 5185)

def relationRow4787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5186) * ((-1 : F) * rho 5184 + (1 : F) * rho 5185) = ((2 : F) * rho 5183)

def relationRow4788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5187) * ((2 : F) + (1 : F) * rho 5184 + (-1 : F) * rho 5185) = ((1 : F) * rho 5184 + (1 : F) * rho 5185)

def relationRow4789 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5188)

def relationRow4790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5188) * ((1 : F) * rho 5186 + (1 : F) * rho 5187) = ((1 : F) * rho 5189)

def relationRow4791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5187) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5190)

def relationRow4792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5186) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5191)

def relationRow4793 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5190) * ((1 : F) * rho 5191) = ((1 : F) * rho 5192)

def relationRow4794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5193) * ((1 : F) + (1 : F) * rho 5192) = ((1 : F) * rho 5190 + (1 : F) * rho 5191)

def relationRow4795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((1 : F) + (-1 : F) * rho 5192) = ((1 : F) * rho 5189 + (-1 : F) * rho 5190 + (-1 : F) * rho 5191)

def relationRow4796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2049) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((1 : F), 5193)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5195)

def relationRow4797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2049) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((1 : F), 5194)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5196)

def relationRow4798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5186) * ((1 : F) * rho 5187) = ((1 : F) * rho 5197)

def relationRow4799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5186) * ((1 : F) * rho 5186) = ((1 : F) * rho 5198)

def relationRow4800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5187) * ((1 : F) * rho 5187) = ((1 : F) * rho 5199)

def relationRow4801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5200) * ((-1 : F) * rho 5198 + (1 : F) * rho 5199) = ((2 : F) * rho 5197)

def relationRow4802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5201) * ((2 : F) + (1 : F) * rho 5198 + (-1 : F) * rho 5199) = ((1 : F) * rho 5198 + (1 : F) * rho 5199)

def relationRow4803 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5202)

def relationRow4804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5202) * ((1 : F) * rho 5200 + (1 : F) * rho 5201) = ((1 : F) * rho 5203)

def relationRow4805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5201) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5204)

def relationRow4806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5200) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5205)

def relationRow4807 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5204) * ((1 : F) * rho 5205) = ((1 : F) * rho 5206)

def relationRow4808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5207) * ((1 : F) + (1 : F) * rho 5206) = ((1 : F) * rho 5204 + (1 : F) * rho 5205)

def relationRow4809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5208) * ((1 : F) + (-1 : F) * rho 5206) = ((1 : F) * rho 5203 + (-1 : F) * rho 5204 + (-1 : F) * rho 5205)

def relationRow4810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((1 : F), 5207)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5209)

def relationRow4811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((1 : F), 5208)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5210)

def relationRow4812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5200) * ((1 : F) * rho 5201) = ((1 : F) * rho 5211)

def relationRow4813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5200) * ((1 : F) * rho 5200) = ((1 : F) * rho 5212)

def relationRow4814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5201) * ((1 : F) * rho 5201) = ((1 : F) * rho 5213)

def relationRow4815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5214) * ((-1 : F) * rho 5212 + (1 : F) * rho 5213) = ((2 : F) * rho 5211)

def relationRow4816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * ((2 : F) + (1 : F) * rho 5212 + (-1 : F) * rho 5213) = ((1 : F) * rho 5212 + (1 : F) * rho 5213)

def relationRow4817 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5216)

def relationRow4818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5216) * ((1 : F) * rho 5214 + (1 : F) * rho 5215) = ((1 : F) * rho 5217)

def relationRow4819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5218)

def relationRow4820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5214) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5219)

def relationRow4821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5218) * ((1 : F) * rho 5219) = ((1 : F) * rho 5220)

def relationRow4822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5221) * ((1 : F) + (1 : F) * rho 5220) = ((1 : F) * rho 5218 + (1 : F) * rho 5219)

def relationRow4823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5222) * ((1 : F) + (-1 : F) * rho 5220) = ((1 : F) * rho 5217 + (-1 : F) * rho 5218 + (-1 : F) * rho 5219)

def relationRow4824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((1 : F), 5221)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5223)

def relationRow4825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((1 : F), 5222)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5224)

def relationRow4826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5214) * ((1 : F) * rho 5215) = ((1 : F) * rho 5225)

def relationRow4827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5214) * ((1 : F) * rho 5214) = ((1 : F) * rho 5226)

def relationRow4828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * ((1 : F) * rho 5215) = ((1 : F) * rho 5227)

def relationRow4829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * ((-1 : F) * rho 5226 + (1 : F) * rho 5227) = ((2 : F) * rho 5225)

def relationRow4830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5229) * ((2 : F) + (1 : F) * rho 5226 + (-1 : F) * rho 5227) = ((1 : F) * rho 5226 + (1 : F) * rho 5227)

def relationRow4831 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5230)

def relationRow4832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5230) * ((1 : F) * rho 5228 + (1 : F) * rho 5229) = ((1 : F) * rho 5231)

def relationRow4833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5229) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5232)

def relationRow4834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5233)

def relationRow4835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5232) * ((1 : F) * rho 5233) = ((1 : F) * rho 5234)

def relationRow4836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5235) * ((1 : F) + (1 : F) * rho 5234) = ((1 : F) * rho 5232 + (1 : F) * rho 5233)

def relationRow4837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5236) * ((1 : F) + (-1 : F) * rho 5234) = ((1 : F) * rho 5231 + (-1 : F) * rho 5232 + (-1 : F) * rho 5233)

def relationRow4838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((1 : F), 5235)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5237)

def relationRow4839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((1 : F), 5236)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5238)

def relationRow4840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * ((1 : F) * rho 5229) = ((1 : F) * rho 5239)

def relationRow4841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * ((1 : F) * rho 5228) = ((1 : F) * rho 5240)

def relationRow4842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5229) * ((1 : F) * rho 5229) = ((1 : F) * rho 5241)

def relationRow4843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5242) * ((-1 : F) * rho 5240 + (1 : F) * rho 5241) = ((2 : F) * rho 5239)

def relationRow4844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5243) * ((2 : F) + (1 : F) * rho 5240 + (-1 : F) * rho 5241) = ((1 : F) * rho 5240 + (1 : F) * rho 5241)

def relationRow4845 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224), ((1 : F), 5237), ((1 : F), 5238)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5244)

def relationRow4846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5244) * ((1 : F) * rho 5242 + (1 : F) * rho 5243) = ((1 : F) * rho 5245)

def relationRow4847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5243) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223), ((1 : F), 5237)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5246)

def relationRow4848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5242) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224), ((1 : F), 5238)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5247)

def relationRow4849 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5246) * ((1 : F) * rho 5247) = ((1 : F) * rho 5248)

def relationRow4850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5249) * ((1 : F) + (1 : F) * rho 5248) = ((1 : F) * rho 5246 + (1 : F) * rho 5247)

def relationRow4851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((1 : F) + (-1 : F) * rho 5248) = ((1 : F) * rho 5245 + (-1 : F) * rho 5246 + (-1 : F) * rho 5247)

def relationRow4852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((-1 : F), 5237), ((1 : F), 5249)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5251)

def relationRow4853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((-1 : F), 5238), ((1 : F), 5250)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5252)

def relationRow4854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5242) * ((1 : F) * rho 5243) = ((1 : F) * rho 5253)

def relationRow4855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5242) * ((1 : F) * rho 5242) = ((1 : F) * rho 5254)

def relationRow4856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5243) * ((1 : F) * rho 5243) = ((1 : F) * rho 5255)

def relationRow4857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5256) * ((-1 : F) * rho 5254 + (1 : F) * rho 5255) = ((2 : F) * rho 5253)

def relationRow4858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5257) * ((2 : F) + (1 : F) * rho 5254 + (-1 : F) * rho 5255) = ((1 : F) * rho 5254 + (1 : F) * rho 5255)

def relationRow4859 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224), ((1 : F), 5237), ((1 : F), 5238), ((1 : F), 5251), ((1 : F), 5252)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5258)

def relationRow4860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5258) * ((1 : F) * rho 5256 + (1 : F) * rho 5257) = ((1 : F) * rho 5259)

def relationRow4861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5257) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223), ((1 : F), 5237), ((1 : F), 5251)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5260)

def relationRow4862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5256) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224), ((1 : F), 5238), ((1 : F), 5252)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5261)

def relationRow4863 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5260) * ((1 : F) * rho 5261) = ((1 : F) * rho 5262)

def relationRow4864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5263) * ((1 : F) + (1 : F) * rho 5262) = ((1 : F) * rho 5260 + (1 : F) * rho 5261)

def relationRow4865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5264) * ((1 : F) + (-1 : F) * rho 5262) = ((1 : F) * rho 5259 + (-1 : F) * rho 5260 + (-1 : F) * rho 5261)

def relationRow4866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((-1 : F), 5237), ((-1 : F), 5251), ((1 : F), 5263)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5265)

def relationRow4867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((-1 : F), 5238), ((-1 : F), 5252), ((1 : F), 5264)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5266)

def relationRow4868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5256) * ((1 : F) * rho 5257) = ((1 : F) * rho 5267)

def relationRow4869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5256) * ((1 : F) * rho 5256) = ((1 : F) * rho 5268)

def relationRow4870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5257) * ((1 : F) * rho 5257) = ((1 : F) * rho 5269)

def relationRow4871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5270) * ((-1 : F) * rho 5268 + (1 : F) * rho 5269) = ((2 : F) * rho 5267)

def relationRow4872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5271) * ((2 : F) + (1 : F) * rho 5268 + (-1 : F) * rho 5269) = ((1 : F) * rho 5268 + (1 : F) * rho 5269)

def relationRow4873 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224), ((1 : F), 5237), ((1 : F), 5238), ((1 : F), 5251), ((1 : F), 5252), ((1 : F), 5265), ((1 : F), 5266)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5272)

def relationRow4874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5272) * ((1 : F) * rho 5270 + (1 : F) * rho 5271) = ((1 : F) * rho 5273)

def relationRow4875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5271) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223), ((1 : F), 5237), ((1 : F), 5251), ((1 : F), 5265)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5274)

def relationRow4876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5270) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224), ((1 : F), 5238), ((1 : F), 5252), ((1 : F), 5266)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5275)

def relationRow4877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5274) * ((1 : F) * rho 5275) = ((1 : F) * rho 5276)

def relationRow4878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5277) * ((1 : F) + (1 : F) * rho 5276) = ((1 : F) * rho 5274 + (1 : F) * rho 5275)

def relationRow4879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5278) * ((1 : F) + (-1 : F) * rho 5276) = ((1 : F) * rho 5273 + (-1 : F) * rho 5274 + (-1 : F) * rho 5275)

def relationRow4880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((-1 : F), 5237), ((-1 : F), 5251), ((-1 : F), 5265), ((1 : F), 5277)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5279)

def relationRow4881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((-1 : F), 5238), ((-1 : F), 5252), ((-1 : F), 5266), ((1 : F), 5278)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5280)

def relationRow4882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5270) * ((1 : F) * rho 5271) = ((1 : F) * rho 5281)

def relationRow4883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5270) * ((1 : F) * rho 5270) = ((1 : F) * rho 5282)

def relationRow4884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5271) * ((1 : F) * rho 5271) = ((1 : F) * rho 5283)

def relationRow4885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5284) * ((-1 : F) * rho 5282 + (1 : F) * rho 5283) = ((2 : F) * rho 5281)

def relationRow4886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5285) * ((2 : F) + (1 : F) * rho 5282 + (-1 : F) * rho 5283) = ((1 : F) * rho 5282 + (1 : F) * rho 5283)

def relationRow4887 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 16⟩, ⟨(1 : F), 5070, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5286)

def relationRow4888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5286) * ((1 : F) * rho 5284 + (1 : F) * rho 5285) = ((1 : F) * rho 5287)

def relationRow4889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5285) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5288)

def relationRow4890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5284) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5289)

def relationRow4891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5288) * ((1 : F) * rho 5289) = ((1 : F) * rho 5290)

def relationRow4892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5291) * ((1 : F) + (1 : F) * rho 5290) = ((1 : F) * rho 5288 + (1 : F) * rho 5289)

def relationRow4893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5292) * ((1 : F) + (-1 : F) * rho 5290) = ((1 : F) * rho 5287 + (-1 : F) * rho 5288 + (-1 : F) * rho 5289)

def relationRow4894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 16⟩], residual := [((1 : F), 5291)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5293)

def relationRow4895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 16⟩], residual := [((1 : F), 5292)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5294)

def relationRow4896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5284) * ((1 : F) * rho 5285) = ((1 : F) * rho 5295)

def relationRow4897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5284) * ((1 : F) * rho 5284) = ((1 : F) * rho 5296)

def relationRow4898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5285) * ((1 : F) * rho 5285) = ((1 : F) * rho 5297)

def relationRow4899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5298) * ((-1 : F) * rho 5296 + (1 : F) * rho 5297) = ((2 : F) * rho 5295)

def relationRow4900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5299) * ((2 : F) + (1 : F) * rho 5296 + (-1 : F) * rho 5297) = ((1 : F) * rho 5296 + (1 : F) * rho 5297)

def relationRow4901 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 17⟩, ⟨(1 : F), 5070, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5300)

def relationRow4902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5300) * ((1 : F) * rho 5298 + (1 : F) * rho 5299) = ((1 : F) * rho 5301)

def relationRow4903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5299) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5302)

def relationRow4904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5298) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5303)

def relationRow4905 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5302) * ((1 : F) * rho 5303) = ((1 : F) * rho 5304)

def relationRow4906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5305) * ((1 : F) + (1 : F) * rho 5304) = ((1 : F) * rho 5302 + (1 : F) * rho 5303)

def relationRow4907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5306) * ((1 : F) + (-1 : F) * rho 5304) = ((1 : F) * rho 5301 + (-1 : F) * rho 5302 + (-1 : F) * rho 5303)

def relationRow4908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 17⟩], residual := [((1 : F), 5305)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5307)

def relationRow4909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 17⟩], residual := [((1 : F), 5306)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5308)

def relationRow4910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5298) * ((1 : F) * rho 5299) = ((1 : F) * rho 5309)

def relationRow4911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5298) * ((1 : F) * rho 5298) = ((1 : F) * rho 5310)

def relationRow4912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5299) * ((1 : F) * rho 5299) = ((1 : F) * rho 5311)

def relationRow4913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5312) * ((-1 : F) * rho 5310 + (1 : F) * rho 5311) = ((2 : F) * rho 5309)

def relationRow4914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5313) * ((2 : F) + (1 : F) * rho 5310 + (-1 : F) * rho 5311) = ((1 : F) * rho 5310 + (1 : F) * rho 5311)

def relationRow4915 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 18⟩, ⟨(1 : F), 5070, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5314)

def relationRow4916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5314) * ((1 : F) * rho 5312 + (1 : F) * rho 5313) = ((1 : F) * rho 5315)

def relationRow4917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5313) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5316)

def relationRow4918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5312) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5317)

def relationRow4919 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5316) * ((1 : F) * rho 5317) = ((1 : F) * rho 5318)

def relationRow4920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5319) * ((1 : F) + (1 : F) * rho 5318) = ((1 : F) * rho 5316 + (1 : F) * rho 5317)

def relationRow4921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5320) * ((1 : F) + (-1 : F) * rho 5318) = ((1 : F) * rho 5315 + (-1 : F) * rho 5316 + (-1 : F) * rho 5317)

def relationRow4922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 18⟩], residual := [((1 : F), 5319)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5321)

def relationRow4923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 18⟩], residual := [((1 : F), 5320)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5322)

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

def relationRow4929 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 19⟩, ⟨(1 : F), 5070, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5328)

def relationRow4930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5328) * ((1 : F) * rho 5326 + (1 : F) * rho 5327) = ((1 : F) * rho 5329)

def relationRow4931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5327) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5330)

def relationRow4932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5326) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5331)

def relationRow4933 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5330) * ((1 : F) * rho 5331) = ((1 : F) * rho 5332)

def relationRow4934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5333) * ((1 : F) + (1 : F) * rho 5332) = ((1 : F) * rho 5330 + (1 : F) * rho 5331)

def relationRow4935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5334) * ((1 : F) + (-1 : F) * rho 5332) = ((1 : F) * rho 5329 + (-1 : F) * rho 5330 + (-1 : F) * rho 5331)

def relationRow4936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 19⟩], residual := [((1 : F), 5333)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5335)

def relationRow4937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 19⟩], residual := [((1 : F), 5334)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5336)

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

def relationRow4943 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 20⟩, ⟨(1 : F), 5070, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5342)

def relationRow4944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5342) * ((1 : F) * rho 5340 + (1 : F) * rho 5341) = ((1 : F) * rho 5343)

def relationRow4945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5341) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5344)

def relationRow4946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5340) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5345)

def relationRow4947 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5344) * ((1 : F) * rho 5345) = ((1 : F) * rho 5346)

def relationRow4948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5347) * ((1 : F) + (1 : F) * rho 5346) = ((1 : F) * rho 5344 + (1 : F) * rho 5345)

def relationRow4949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5348) * ((1 : F) + (-1 : F) * rho 5346) = ((1 : F) * rho 5343 + (-1 : F) * rho 5344 + (-1 : F) * rho 5345)

def relationRow4950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 20⟩], residual := [((1 : F), 5347)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5349)

def relationRow4951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 20⟩], residual := [((1 : F), 5348)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5350)

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

def relationRow4957 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 21⟩, ⟨(1 : F), 5070, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5356)

def relationRow4958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5356) * ((1 : F) * rho 5354 + (1 : F) * rho 5355) = ((1 : F) * rho 5357)

def relationRow4959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5358)

def relationRow4960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5359)

def relationRow4961 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5358) * ((1 : F) * rho 5359) = ((1 : F) * rho 5360)

def relationRow4962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5361) * ((1 : F) + (1 : F) * rho 5360) = ((1 : F) * rho 5358 + (1 : F) * rho 5359)

def relationRow4963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5362) * ((1 : F) + (-1 : F) * rho 5360) = ((1 : F) * rho 5357 + (-1 : F) * rho 5358 + (-1 : F) * rho 5359)

def relationRow4964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 21⟩], residual := [((1 : F), 5361)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5363)

def relationRow4965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 21⟩], residual := [((1 : F), 5362)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5364)

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

def relationRow4971 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 22⟩, ⟨(1 : F), 5070, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5370)

def relationRow4972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5370) * ((1 : F) * rho 5368 + (1 : F) * rho 5369) = ((1 : F) * rho 5371)

def relationRow4973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5369) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5372)

def relationRow4974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5373)

def relationRow4975 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5372) * ((1 : F) * rho 5373) = ((1 : F) * rho 5374)

def relationRow4976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5375) * ((1 : F) + (1 : F) * rho 5374) = ((1 : F) * rho 5372 + (1 : F) * rho 5373)

def relationRow4977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5376) * ((1 : F) + (-1 : F) * rho 5374) = ((1 : F) * rho 5371 + (-1 : F) * rho 5372 + (-1 : F) * rho 5373)

def relationRow4978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 22⟩], residual := [((1 : F), 5375)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5377)

def relationRow4979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 22⟩], residual := [((1 : F), 5376)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 5378)

def relationRow4980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * ((1 : F) * rho 5369) = ((1 : F) * rho 5379)

def relationRow4981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5368) * ((1 : F) * rho 5368) = ((1 : F) * rho 5380)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6
