import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748) * ((1 : F) * rho 4748) = ((1 : F) * rho 4759)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4749) * ((1 : F) * rho 4749) = ((1 : F) * rho 4760)

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * ((-1 : F) * rho 4759 + (1 : F) * rho 4760) = ((2 : F) * rho 4758)

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4762) * ((2 : F) + (1 : F) * rho 4759 + (-1 : F) * rho 4760) = ((1 : F) * rho 4759 + (1 : F) * rho 4760)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 127⟩, ⟨(1 : F), 3119, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761 + (1 : F) * rho 4762) * (relationLc723 rho) = ((1 : F) * rho 4763)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4762) * (relationLc724 rho) = ((1 : F) * rho 4764)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * (relationLc725 rho) = ((1 : F) * rho 4765)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4764) * ((1 : F) * rho 4765) = ((1 : F) * rho 4766)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4767) * ((1 : F) + (1 : F) * rho 4766) = ((1 : F) * rho 4764 + (1 : F) * rho 4765)

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768) * ((1 : F) + (-1 : F) * rho 4766) = ((1 : F) * rho 4763 + (-1 : F) * rho 4764 + (-1 : F) * rho 4765)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 127⟩], residual := [((1 : F), 4767)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (relationLc726 rho) = ((1 : F) * rho 4769)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 127⟩], residual := [((1 : F), 4768)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (relationLc727 rho) = ((1 : F) * rho 4770)

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

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 128⟩, ⟨(1 : F), 3119, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774 + (1 : F) * rho 4775) * (relationLc728 rho) = ((1 : F) * rho 4776)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4775) * (relationLc729 rho) = ((1 : F) * rho 4777)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * (relationLc730 rho) = ((1 : F) * rho 4778)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4777) * ((1 : F) * rho 4778) = ((1 : F) * rho 4779)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4780) * ((1 : F) + (1 : F) * rho 4779) = ((1 : F) * rho 4777 + (1 : F) * rho 4778)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781) * ((1 : F) + (-1 : F) * rho 4779) = ((1 : F) * rho 4776 + (-1 : F) * rho 4777 + (-1 : F) * rho 4778)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 128⟩], residual := [((1 : F), 4780)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (relationLc731 rho) = ((1 : F) * rho 4782)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 128⟩], residual := [((1 : F), 4781)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (relationLc732 rho) = ((1 : F) * rho 4783)

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

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 129⟩, ⟨(1 : F), 3119, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787 + (1 : F) * rho 4788) * (relationLc733 rho) = ((1 : F) * rho 4789)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4788) * (relationLc734 rho) = ((1 : F) * rho 4790)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * (relationLc735 rho) = ((1 : F) * rho 4791)

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4790) * ((1 : F) * rho 4791) = ((1 : F) * rho 4792)

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4793) * ((1 : F) + (1 : F) * rho 4792) = ((1 : F) * rho 4790 + (1 : F) * rho 4791)

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * ((1 : F) + (-1 : F) * rho 4792) = ((1 : F) * rho 4789 + (-1 : F) * rho 4790 + (-1 : F) * rho 4791)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 129⟩], residual := [((1 : F), 4793)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (relationLc736 rho) = ((1 : F) * rho 4795)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 129⟩], residual := [((1 : F), 4794)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (relationLc737 rho) = ((1 : F) * rho 4796)

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

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 130⟩, ⟨(1 : F), 3119, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800 + (1 : F) * rho 4801) * (relationLc738 rho) = ((1 : F) * rho 4802)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4801) * (relationLc739 rho) = ((1 : F) * rho 4803)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * (relationLc740 rho) = ((1 : F) * rho 4804)

def relationRow4406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4803) * ((1 : F) * rho 4804) = ((1 : F) * rho 4805)

def relationRow4407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4806) * ((1 : F) + (1 : F) * rho 4805) = ((1 : F) * rho 4803 + (1 : F) * rho 4804)

def relationRow4408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * ((1 : F) + (-1 : F) * rho 4805) = ((1 : F) * rho 4802 + (-1 : F) * rho 4803 + (-1 : F) * rho 4804)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 130⟩], residual := [((1 : F), 4806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (relationLc741 rho) = ((1 : F) * rho 4808)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 130⟩], residual := [((1 : F), 4807)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (relationLc742 rho) = ((1 : F) * rho 4809)

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

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 131⟩, ⟨(1 : F), 3119, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813 + (1 : F) * rho 4814) * (relationLc743 rho) = ((1 : F) * rho 4815)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * (relationLc744 rho) = ((1 : F) * rho 4816)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * (relationLc745 rho) = ((1 : F) * rho 4817)

def relationRow4419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4816) * ((1 : F) * rho 4817) = ((1 : F) * rho 4818)

def relationRow4420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4819) * ((1 : F) + (1 : F) * rho 4818) = ((1 : F) * rho 4816 + (1 : F) * rho 4817)

def relationRow4421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((1 : F) + (-1 : F) * rho 4818) = ((1 : F) * rho 4815 + (-1 : F) * rho 4816 + (-1 : F) * rho 4817)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 131⟩], residual := [((1 : F), 4819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * (relationLc746 rho) = ((1 : F) * rho 4821)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 131⟩], residual := [((1 : F), 4820)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * (relationLc747 rho) = ((1 : F) * rho 4822)

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

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 132⟩, ⟨(1 : F), 3119, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826 + (1 : F) * rho 4827) * (relationLc748 rho) = ((1 : F) * rho 4828)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * (relationLc749 rho) = ((1 : F) * rho 4829)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826) * (relationLc750 rho) = ((1 : F) * rho 4830)

def relationRow4432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4829) * ((1 : F) * rho 4830) = ((1 : F) * rho 4831)

def relationRow4433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4832) * ((1 : F) + (1 : F) * rho 4831) = ((1 : F) * rho 4829 + (1 : F) * rho 4830)

def relationRow4434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833) * ((1 : F) + (-1 : F) * rho 4831) = ((1 : F) * rho 4828 + (-1 : F) * rho 4829 + (-1 : F) * rho 4830)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 132⟩], residual := [((1 : F), 4832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * (relationLc751 rho) = ((1 : F) * rho 4834)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 132⟩], residual := [((1 : F), 4833)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * (relationLc752 rho) = ((1 : F) * rho 4835)

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

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 133⟩, ⟨(1 : F), 3119, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839 + (1 : F) * rho 4840) * (relationLc753 rho) = ((1 : F) * rho 4841)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4840) * (relationLc754 rho) = ((1 : F) * rho 4842)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * (relationLc755 rho) = ((1 : F) * rho 4843)

def relationRow4445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4842) * ((1 : F) * rho 4843) = ((1 : F) * rho 4844)

def relationRow4446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4845) * ((1 : F) + (1 : F) * rho 4844) = ((1 : F) * rho 4842 + (1 : F) * rho 4843)

def relationRow4447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846) * ((1 : F) + (-1 : F) * rho 4844) = ((1 : F) * rho 4841 + (-1 : F) * rho 4842 + (-1 : F) * rho 4843)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 133⟩], residual := [((1 : F), 4845)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2023) * (relationLc756 rho) = ((1 : F) * rho 4847)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 133⟩], residual := [((1 : F), 4846)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2023) * (relationLc757 rho) = ((1 : F) * rho 4848)

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

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 134⟩, ⟨(1 : F), 3119, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852 + (1 : F) * rho 4853) * (relationLc758 rho) = ((1 : F) * rho 4854)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4853) * (relationLc759 rho) = ((1 : F) * rho 4855)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852) * (relationLc760 rho) = ((1 : F) * rho 4856)

def relationRow4458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4855) * ((1 : F) * rho 4856) = ((1 : F) * rho 4857)

def relationRow4459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4858) * ((1 : F) + (1 : F) * rho 4857) = ((1 : F) * rho 4855 + (1 : F) * rho 4856)

def relationRow4460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859) * ((1 : F) + (-1 : F) * rho 4857) = ((1 : F) * rho 4854 + (-1 : F) * rho 4855 + (-1 : F) * rho 4856)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 134⟩], residual := [((1 : F), 4858)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (relationLc761 rho) = ((1 : F) * rho 4860)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 134⟩], residual := [((1 : F), 4859)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (relationLc762 rho) = ((1 : F) * rho 4861)

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

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 135⟩, ⟨(1 : F), 3119, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865 + (1 : F) * rho 4866) * (relationLc763 rho) = ((1 : F) * rho 4867)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4866) * (relationLc764 rho) = ((1 : F) * rho 4868)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865) * (relationLc765 rho) = ((1 : F) * rho 4869)

def relationRow4471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4868) * ((1 : F) * rho 4869) = ((1 : F) * rho 4870)

def relationRow4472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4871) * ((1 : F) + (1 : F) * rho 4870) = ((1 : F) * rho 4868 + (1 : F) * rho 4869)

def relationRow4473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872) * ((1 : F) + (-1 : F) * rho 4870) = ((1 : F) * rho 4867 + (-1 : F) * rho 4868 + (-1 : F) * rho 4869)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 135⟩], residual := [((1 : F), 4871)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (relationLc766 rho) = ((1 : F) * rho 4873)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 135⟩], residual := [((1 : F), 4872)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (relationLc767 rho) = ((1 : F) * rho 4874)

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

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 136⟩, ⟨(1 : F), 3119, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878 + (1 : F) * rho 4879) * (relationLc768 rho) = ((1 : F) * rho 4880)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4879) * (relationLc769 rho) = ((1 : F) * rho 4881)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878) * (relationLc770 rho) = ((1 : F) * rho 4882)

def relationRow4484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4881) * ((1 : F) * rho 4882) = ((1 : F) * rho 4883)

def relationRow4485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4884) * ((1 : F) + (1 : F) * rho 4883) = ((1 : F) * rho 4881 + (1 : F) * rho 4882)

def relationRow4486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((1 : F) + (-1 : F) * rho 4883) = ((1 : F) * rho 4880 + (-1 : F) * rho 4881 + (-1 : F) * rho 4882)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 136⟩], residual := [((1 : F), 4884)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (relationLc771 rho) = ((1 : F) * rho 4886)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 136⟩], residual := [((1 : F), 4885)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (relationLc772 rho) = ((1 : F) * rho 4887)

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

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 137⟩, ⟨(1 : F), 3119, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891 + (1 : F) * rho 4892) * (relationLc773 rho) = ((1 : F) * rho 4893)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4892) * (relationLc774 rho) = ((1 : F) * rho 4894)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * (relationLc775 rho) = ((1 : F) * rho 4895)

def relationRow4497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4894) * ((1 : F) * rho 4895) = ((1 : F) * rho 4896)

def relationRow4498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4897) * ((1 : F) + (1 : F) * rho 4896) = ((1 : F) * rho 4894 + (1 : F) * rho 4895)

def relationRow4499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((1 : F) + (-1 : F) * rho 4896) = ((1 : F) * rho 4893 + (-1 : F) * rho 4894 + (-1 : F) * rho 4895)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 137⟩], residual := [((1 : F), 4897)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (relationLc776 rho) = ((1 : F) * rho 4899)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 137⟩], residual := [((1 : F), 4898)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (relationLc777 rho) = ((1 : F) * rho 4900)

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

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 138⟩, ⟨(1 : F), 3119, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904 + (1 : F) * rho 4905) * (relationLc778 rho) = ((1 : F) * rho 4906)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * (relationLc779 rho) = ((1 : F) * rho 4907)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * (relationLc780 rho) = ((1 : F) * rho 4908)

def relationRow4510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4907) * ((1 : F) * rho 4908) = ((1 : F) * rho 4909)

def relationRow4511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4910) * ((1 : F) + (1 : F) * rho 4909) = ((1 : F) * rho 4907 + (1 : F) * rho 4908)

def relationRow4512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((1 : F) + (-1 : F) * rho 4909) = ((1 : F) * rho 4906 + (-1 : F) * rho 4907 + (-1 : F) * rho 4908)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 138⟩], residual := [((1 : F), 4910)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * (relationLc781 rho) = ((1 : F) * rho 4912)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 138⟩], residual := [((1 : F), 4911)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * (relationLc782 rho) = ((1 : F) * rho 4913)

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

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 139⟩, ⟨(1 : F), 3119, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917 + (1 : F) * rho 4918) * (relationLc783 rho) = ((1 : F) * rho 4919)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4918) * (relationLc784 rho) = ((1 : F) * rho 4920)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917) * (relationLc785 rho) = ((1 : F) * rho 4921)

def relationRow4523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4920) * ((1 : F) * rho 4921) = ((1 : F) * rho 4922)

def relationRow4524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4923) * ((1 : F) + (1 : F) * rho 4922) = ((1 : F) * rho 4920 + (1 : F) * rho 4921)

def relationRow4525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * ((1 : F) + (-1 : F) * rho 4922) = ((1 : F) * rho 4919 + (-1 : F) * rho 4920 + (-1 : F) * rho 4921)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 139⟩], residual := [((1 : F), 4923)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2029) * (relationLc786 rho) = ((1 : F) * rho 4925)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 139⟩], residual := [((1 : F), 4924)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2029) * (relationLc787 rho) = ((1 : F) * rho 4926)

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

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 140⟩, ⟨(1 : F), 3119, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930 + (1 : F) * rho 4931) * (relationLc788 rho) = ((1 : F) * rho 4932)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4931) * (relationLc789 rho) = ((1 : F) * rho 4933)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * (relationLc790 rho) = ((1 : F) * rho 4934)

def relationRow4536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4933) * ((1 : F) * rho 4934) = ((1 : F) * rho 4935)

def relationRow4537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4936) * ((1 : F) + (1 : F) * rho 4935) = ((1 : F) * rho 4933 + (1 : F) * rho 4934)

def relationRow4538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937) * ((1 : F) + (-1 : F) * rho 4935) = ((1 : F) * rho 4932 + (-1 : F) * rho 4933 + (-1 : F) * rho 4934)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 140⟩], residual := [((1 : F), 4936)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * (relationLc791 rho) = ((1 : F) * rho 4938)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 140⟩], residual := [((1 : F), 4937)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * (relationLc792 rho) = ((1 : F) * rho 4939)

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

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 141⟩, ⟨(1 : F), 3119, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943 + (1 : F) * rho 4944) * (relationLc793 rho) = ((1 : F) * rho 4945)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4944) * (relationLc794 rho) = ((1 : F) * rho 4946)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943) * (relationLc795 rho) = ((1 : F) * rho 4947)

def relationRow4549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4946) * ((1 : F) * rho 4947) = ((1 : F) * rho 4948)

def relationRow4550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4949) * ((1 : F) + (1 : F) * rho 4948) = ((1 : F) * rho 4946 + (1 : F) * rho 4947)

def relationRow4551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * ((1 : F) + (-1 : F) * rho 4948) = ((1 : F) * rho 4945 + (-1 : F) * rho 4946 + (-1 : F) * rho 4947)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 141⟩], residual := [((1 : F), 4949)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (relationLc796 rho) = ((1 : F) * rho 4951)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 141⟩], residual := [((1 : F), 4950)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (relationLc797 rho) = ((1 : F) * rho 4952)

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

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 142⟩, ⟨(1 : F), 3119, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956 + (1 : F) * rho 4957) * (relationLc798 rho) = ((1 : F) * rho 4958)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4957) * (relationLc799 rho) = ((1 : F) * rho 4959)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956) * (relationLc800 rho) = ((1 : F) * rho 4960)

def relationRow4562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4959) * ((1 : F) * rho 4960) = ((1 : F) * rho 4961)

def relationRow4563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4962) * ((1 : F) + (1 : F) * rho 4961) = ((1 : F) * rho 4959 + (1 : F) * rho 4960)

def relationRow4564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963) * ((1 : F) + (-1 : F) * rho 4961) = ((1 : F) * rho 4958 + (-1 : F) * rho 4959 + (-1 : F) * rho 4960)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 142⟩], residual := [((1 : F), 4962)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (relationLc801 rho) = ((1 : F) * rho 4964)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 142⟩], residual := [((1 : F), 4963)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (relationLc802 rho) = ((1 : F) * rho 4965)

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

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 143⟩, ⟨(1 : F), 3119, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969 + (1 : F) * rho 4970) * (relationLc803 rho) = ((1 : F) * rho 4971)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4970) * (relationLc804 rho) = ((1 : F) * rho 4972)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * (relationLc805 rho) = ((1 : F) * rho 4973)

def relationRow4575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4972) * ((1 : F) * rho 4973) = ((1 : F) * rho 4974)

def relationRow4576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4975) * ((1 : F) + (1 : F) * rho 4974) = ((1 : F) * rho 4972 + (1 : F) * rho 4973)

def relationRow4577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976) * ((1 : F) + (-1 : F) * rho 4974) = ((1 : F) * rho 4971 + (-1 : F) * rho 4972 + (-1 : F) * rho 4973)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 143⟩], residual := [((1 : F), 4975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (relationLc806 rho) = ((1 : F) * rho 4977)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 143⟩], residual := [((1 : F), 4976)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (relationLc807 rho) = ((1 : F) * rho 4978)

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

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 144⟩, ⟨(1 : F), 3119, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982 + (1 : F) * rho 4983) * (relationLc808 rho) = ((1 : F) * rho 4984)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4983) * (relationLc809 rho) = ((1 : F) * rho 4985)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * (relationLc810 rho) = ((1 : F) * rho 4986)

def relationRow4588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4985) * ((1 : F) * rho 4986) = ((1 : F) * rho 4987)

def relationRow4589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4988) * ((1 : F) + (1 : F) * rho 4987) = ((1 : F) * rho 4985 + (1 : F) * rho 4986)

def relationRow4590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((1 : F) + (-1 : F) * rho 4987) = ((1 : F) * rho 4984 + (-1 : F) * rho 4985 + (-1 : F) * rho 4986)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 144⟩], residual := [((1 : F), 4988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (relationLc811 rho) = ((1 : F) * rho 4990)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 144⟩], residual := [((1 : F), 4989)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (relationLc812 rho) = ((1 : F) * rho 4991)

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

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 145⟩, ⟨(1 : F), 3119, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995 + (1 : F) * rho 4996) * (relationLc813 rho) = ((1 : F) * rho 4997)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * (relationLc814 rho) = ((1 : F) * rho 4998)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * (relationLc815 rho) = ((1 : F) * rho 4999)

def relationRow4601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4998) * ((1 : F) * rho 4999) = ((1 : F) * rho 5000)

def relationRow4602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5001) * ((1 : F) + (1 : F) * rho 5000) = ((1 : F) * rho 4998 + (1 : F) * rho 4999)

def relationRow4603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * ((1 : F) + (-1 : F) * rho 5000) = ((1 : F) * rho 4997 + (-1 : F) * rho 4998 + (-1 : F) * rho 4999)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 145⟩], residual := [((1 : F), 5001)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * (relationLc816 rho) = ((1 : F) * rho 5003)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 145⟩], residual := [((1 : F), 5002)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * (relationLc817 rho) = ((1 : F) * rho 5004)

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

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 146⟩, ⟨(1 : F), 3119, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008 + (1 : F) * rho 5009) * (relationLc818 rho) = ((1 : F) * rho 5010)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * (relationLc819 rho) = ((1 : F) * rho 5011)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008) * (relationLc820 rho) = ((1 : F) * rho 5012)

def relationRow4614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5011) * ((1 : F) * rho 5012) = ((1 : F) * rho 5013)

def relationRow4615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5014) * ((1 : F) + (1 : F) * rho 5013) = ((1 : F) * rho 5011 + (1 : F) * rho 5012)

def relationRow4616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * ((1 : F) + (-1 : F) * rho 5013) = ((1 : F) * rho 5010 + (-1 : F) * rho 5011 + (-1 : F) * rho 5012)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 146⟩], residual := [((1 : F), 5014)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * (relationLc821 rho) = ((1 : F) * rho 5016)

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 146⟩], residual := [((1 : F), 5015)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * (relationLc822 rho) = ((1 : F) * rho 5017)

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

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 147⟩, ⟨(1 : F), 3119, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021 + (1 : F) * rho 5022) * (relationLc823 rho) = ((1 : F) * rho 5023)

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5022) * (relationLc824 rho) = ((1 : F) * rho 5024)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021) * (relationLc825 rho) = ((1 : F) * rho 5025)

def relationRow4627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5024) * ((1 : F) * rho 5025) = ((1 : F) * rho 5026)

def relationRow4628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5027) * ((1 : F) + (1 : F) * rho 5026) = ((1 : F) * rho 5024 + (1 : F) * rho 5025)

def relationRow4629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028) * ((1 : F) + (-1 : F) * rho 5026) = ((1 : F) * rho 5023 + (-1 : F) * rho 5024 + (-1 : F) * rho 5025)

def relationLc826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 147⟩], residual := [((1 : F), 5027)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * (relationLc826 rho) = ((1 : F) * rho 5029)

def relationLc827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 147⟩], residual := [((1 : F), 5028)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * (relationLc827 rho) = ((1 : F) * rho 5030)

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

def relationLc828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 148⟩, ⟨(1 : F), 3119, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034 + (1 : F) * rho 5035) * (relationLc828 rho) = ((1 : F) * rho 5036)

def relationLc829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5035) * (relationLc829 rho) = ((1 : F) * rho 5037)

def relationLc830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * (relationLc830 rho) = ((1 : F) * rho 5038)

def relationRow4640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5037) * ((1 : F) * rho 5038) = ((1 : F) * rho 5039)

def relationRow4641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5040) * ((1 : F) + (1 : F) * rho 5039) = ((1 : F) * rho 5037 + (1 : F) * rho 5038)

def relationRow4642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041) * ((1 : F) + (-1 : F) * rho 5039) = ((1 : F) * rho 5036 + (-1 : F) * rho 5037 + (-1 : F) * rho 5038)

def relationLc831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 148⟩], residual := [((1 : F), 5040)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (relationLc831 rho) = ((1 : F) * rho 5042)

def relationLc832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 148⟩], residual := [((1 : F), 5041)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (relationLc832 rho) = ((1 : F) * rho 5043)

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

def relationLc833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 149⟩, ⟨(1 : F), 3119, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047 + (1 : F) * rho 5048) * (relationLc833 rho) = ((1 : F) * rho 5049)

def relationLc834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5048) * (relationLc834 rho) = ((1 : F) * rho 5050)

def relationLc835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047) * (relationLc835 rho) = ((1 : F) * rho 5051)

def relationRow4653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5050) * ((1 : F) * rho 5051) = ((1 : F) * rho 5052)

def relationRow4654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5053) * ((1 : F) + (1 : F) * rho 5052) = ((1 : F) * rho 5050 + (1 : F) * rho 5051)

def relationRow4655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * ((1 : F) + (-1 : F) * rho 5052) = ((1 : F) * rho 5049 + (-1 : F) * rho 5050 + (-1 : F) * rho 5051)

def relationLc836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 149⟩], residual := [((1 : F), 5053)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc836 rho) = ((1 : F) * rho 5055)

def relationLc837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 149⟩], residual := [((1 : F), 5054)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc837 rho) = ((1 : F) * rho 5056)

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

def relationLc838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4663 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc838 rho) = ((1 : F) * rho 5062)

def relationRow4664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5062) * ((1 : F) * rho 5060 + (1 : F) * rho 5061) = ((1 : F) * rho 5063)

def relationLc839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5061) * (relationLc839 rho) = ((1 : F) * rho 5064)

def relationLc840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5060) * (relationLc840 rho) = ((1 : F) * rho 5065)

def relationRow4667 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5064) * ((1 : F) * rho 5065) = ((1 : F) * rho 5066)

def relationRow4668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5067) * ((1 : F) + (1 : F) * rho 5066) = ((1 : F) * rho 5064 + (1 : F) * rho 5065)

def relationRow4669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5068) * ((1 : F) + (-1 : F) * rho 5066) = ((1 : F) * rho 5063 + (-1 : F) * rho 5064 + (-1 : F) * rho 5065)

def relationLc841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5067)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (relationLc841 rho) = ((1 : F) * rho 5069)

def relationLc842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5068)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (relationLc842 rho) = ((1 : F) * rho 5070)

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

def relationLc843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4677 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc843 rho) = ((1 : F) * rho 5076)

def relationRow4678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5076) * ((1 : F) * rho 5074 + (1 : F) * rho 5075) = ((1 : F) * rho 5077)

def relationLc844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5075) * (relationLc844 rho) = ((1 : F) * rho 5078)

def relationLc845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5074) * (relationLc845 rho) = ((1 : F) * rho 5079)

def relationRow4681 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5078) * ((1 : F) * rho 5079) = ((1 : F) * rho 5080)

def relationRow4682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5081) * ((1 : F) + (1 : F) * rho 5080) = ((1 : F) * rho 5078 + (1 : F) * rho 5079)

def relationRow4683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5082) * ((1 : F) + (-1 : F) * rho 5080) = ((1 : F) * rho 5077 + (-1 : F) * rho 5078 + (-1 : F) * rho 5079)

def relationLc846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((1 : F), 5081)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (relationLc846 rho) = ((1 : F) * rho 5083)

def relationLc847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((1 : F), 5082)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (relationLc847 rho) = ((1 : F) * rho 5084)

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

def relationLc848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4691 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc848 rho) = ((1 : F) * rho 5090)

def relationRow4692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5090) * ((1 : F) * rho 5088 + (1 : F) * rho 5089) = ((1 : F) * rho 5091)

def relationLc849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5089) * (relationLc849 rho) = ((1 : F) * rho 5092)

def relationLc850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5088) * (relationLc850 rho) = ((1 : F) * rho 5093)

def relationRow4695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5092) * ((1 : F) * rho 5093) = ((1 : F) * rho 5094)

def relationRow4696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5095) * ((1 : F) + (1 : F) * rho 5094) = ((1 : F) * rho 5092 + (1 : F) * rho 5093)

def relationRow4697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5096) * ((1 : F) + (-1 : F) * rho 5094) = ((1 : F) * rho 5091 + (-1 : F) * rho 5092 + (-1 : F) * rho 5093)

def relationLc851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((1 : F), 5095)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (relationLc851 rho) = ((1 : F) * rho 5097)

def relationLc852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((1 : F), 5096)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (relationLc852 rho) = ((1 : F) * rho 5098)

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

def relationLc853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4705 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc853 rho) = ((1 : F) * rho 5104)

def relationRow4706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5104) * ((1 : F) * rho 5102 + (1 : F) * rho 5103) = ((1 : F) * rho 5105)

def relationLc854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5103) * (relationLc854 rho) = ((1 : F) * rho 5106)

def relationLc855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5102) * (relationLc855 rho) = ((1 : F) * rho 5107)

def relationRow4709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5106) * ((1 : F) * rho 5107) = ((1 : F) * rho 5108)

def relationRow4710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5109) * ((1 : F) + (1 : F) * rho 5108) = ((1 : F) * rho 5106 + (1 : F) * rho 5107)

def relationRow4711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * ((1 : F) + (-1 : F) * rho 5108) = ((1 : F) * rho 5105 + (-1 : F) * rho 5106 + (-1 : F) * rho 5107)

def relationLc856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((1 : F), 5109)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2043) * (relationLc856 rho) = ((1 : F) * rho 5111)

def relationLc857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((1 : F), 5110)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2043) * (relationLc857 rho) = ((1 : F) * rho 5112)

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

def relationLc858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4719 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc858 rho) = ((1 : F) * rho 5118)

def relationRow4720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5118) * ((1 : F) * rho 5116 + (1 : F) * rho 5117) = ((1 : F) * rho 5119)

def relationLc859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5117) * (relationLc859 rho) = ((1 : F) * rho 5120)

def relationLc860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5116) * (relationLc860 rho) = ((1 : F) * rho 5121)

def relationRow4723 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5120) * ((1 : F) * rho 5121) = ((1 : F) * rho 5122)

def relationRow4724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5123) * ((1 : F) + (1 : F) * rho 5122) = ((1 : F) * rho 5120 + (1 : F) * rho 5121)

def relationRow4725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5124) * ((1 : F) + (-1 : F) * rho 5122) = ((1 : F) * rho 5119 + (-1 : F) * rho 5120 + (-1 : F) * rho 5121)

def relationLc861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((1 : F), 5123)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * (relationLc861 rho) = ((1 : F) * rho 5125)

def relationLc862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((1 : F), 5124)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * (relationLc862 rho) = ((1 : F) * rho 5126)

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

def relationLc863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4733 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc863 rho) = ((1 : F) * rho 5132)

def relationRow4734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5132) * ((1 : F) * rho 5130 + (1 : F) * rho 5131) = ((1 : F) * rho 5133)

def relationLc864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5131) * (relationLc864 rho) = ((1 : F) * rho 5134)

def relationLc865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5130) * (relationLc865 rho) = ((1 : F) * rho 5135)

def relationRow4737 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5134) * ((1 : F) * rho 5135) = ((1 : F) * rho 5136)

def relationRow4738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5137) * ((1 : F) + (1 : F) * rho 5136) = ((1 : F) * rho 5134 + (1 : F) * rho 5135)

def relationRow4739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5138) * ((1 : F) + (-1 : F) * rho 5136) = ((1 : F) * rho 5133 + (-1 : F) * rho 5134 + (-1 : F) * rho 5135)

def relationLc866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((1 : F), 5137)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc866 rho) = ((1 : F) * rho 5139)

def relationLc867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((1 : F), 5138)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc867 rho) = ((1 : F) * rho 5140)

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

def relationLc868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4747 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc868 rho) = ((1 : F) * rho 5146)

def relationRow4748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5146) * ((1 : F) * rho 5144 + (1 : F) * rho 5145) = ((1 : F) * rho 5147)

def relationLc869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5145) * (relationLc869 rho) = ((1 : F) * rho 5148)

def relationLc870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5144) * (relationLc870 rho) = ((1 : F) * rho 5149)

def relationRow4751 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5148) * ((1 : F) * rho 5149) = ((1 : F) * rho 5150)

def relationRow4752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5151) * ((1 : F) + (1 : F) * rho 5150) = ((1 : F) * rho 5148 + (1 : F) * rho 5149)

def relationRow4753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5152) * ((1 : F) + (-1 : F) * rho 5150) = ((1 : F) * rho 5147 + (-1 : F) * rho 5148 + (-1 : F) * rho 5149)

def relationLc871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((1 : F), 5151)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (relationLc871 rho) = ((1 : F) * rho 5153)

def relationLc872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((1 : F), 5152)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (relationLc872 rho) = ((1 : F) * rho 5154)

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

def relationLc873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4761 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc873 rho) = ((1 : F) * rho 5160)

def relationRow4762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5160) * ((1 : F) * rho 5158 + (1 : F) * rho 5159) = ((1 : F) * rho 5161)

def relationLc874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5159) * (relationLc874 rho) = ((1 : F) * rho 5162)

def relationLc875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5158) * (relationLc875 rho) = ((1 : F) * rho 5163)

def relationRow4765 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5162) * ((1 : F) * rho 5163) = ((1 : F) * rho 5164)

def relationRow4766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5165) * ((1 : F) + (1 : F) * rho 5164) = ((1 : F) * rho 5162 + (1 : F) * rho 5163)

def relationRow4767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((1 : F) + (-1 : F) * rho 5164) = ((1 : F) * rho 5161 + (-1 : F) * rho 5162 + (-1 : F) * rho 5163)

def relationLc876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((1 : F), 5165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (relationLc876 rho) = ((1 : F) * rho 5167)

def relationLc877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((1 : F), 5166)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (relationLc877 rho) = ((1 : F) * rho 5168)

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

def relationLc878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4775 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc878 rho) = ((1 : F) * rho 5174)

def relationRow4776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5174) * ((1 : F) * rho 5172 + (1 : F) * rho 5173) = ((1 : F) * rho 5175)

def relationLc879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5173) * (relationLc879 rho) = ((1 : F) * rho 5176)

def relationLc880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * (relationLc880 rho) = ((1 : F) * rho 5177)

def relationRow4779 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5176) * ((1 : F) * rho 5177) = ((1 : F) * rho 5178)

def relationRow4780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5179) * ((1 : F) + (1 : F) * rho 5178) = ((1 : F) * rho 5176 + (1 : F) * rho 5177)

def relationRow4781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * ((1 : F) + (-1 : F) * rho 5178) = ((1 : F) * rho 5175 + (-1 : F) * rho 5176 + (-1 : F) * rho 5177)

def relationLc881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((1 : F), 5179)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc881 rho) = ((1 : F) * rho 5181)

def relationLc882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((1 : F), 5180)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc882 rho) = ((1 : F) * rho 5182)

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

def relationLc883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4789 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc883 rho) = ((1 : F) * rho 5188)

def relationRow4790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5188) * ((1 : F) * rho 5186 + (1 : F) * rho 5187) = ((1 : F) * rho 5189)

def relationLc884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5187) * (relationLc884 rho) = ((1 : F) * rho 5190)

def relationLc885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5186) * (relationLc885 rho) = ((1 : F) * rho 5191)

def relationRow4793 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5190) * ((1 : F) * rho 5191) = ((1 : F) * rho 5192)

def relationRow4794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5193) * ((1 : F) + (1 : F) * rho 5192) = ((1 : F) * rho 5190 + (1 : F) * rho 5191)

def relationRow4795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((1 : F) + (-1 : F) * rho 5192) = ((1 : F) * rho 5189 + (-1 : F) * rho 5190 + (-1 : F) * rho 5191)

def relationLc886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((1 : F), 5193)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2049) * (relationLc886 rho) = ((1 : F) * rho 5195)

def relationLc887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((1 : F), 5194)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2049) * (relationLc887 rho) = ((1 : F) * rho 5196)

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

def relationLc888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4803 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc888 rho) = ((1 : F) * rho 5202)

def relationRow4804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5202) * ((1 : F) * rho 5200 + (1 : F) * rho 5201) = ((1 : F) * rho 5203)

def relationLc889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5201) * (relationLc889 rho) = ((1 : F) * rho 5204)

def relationLc890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5200) * (relationLc890 rho) = ((1 : F) * rho 5205)

def relationRow4807 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5204) * ((1 : F) * rho 5205) = ((1 : F) * rho 5206)

def relationRow4808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5207) * ((1 : F) + (1 : F) * rho 5206) = ((1 : F) * rho 5204 + (1 : F) * rho 5205)

def relationRow4809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5208) * ((1 : F) + (-1 : F) * rho 5206) = ((1 : F) * rho 5203 + (-1 : F) * rho 5204 + (-1 : F) * rho 5205)

def relationLc891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((1 : F), 5207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * (relationLc891 rho) = ((1 : F) * rho 5209)

def relationLc892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((1 : F), 5208)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * (relationLc892 rho) = ((1 : F) * rho 5210)

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

def relationLc893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4817 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc893 rho) = ((1 : F) * rho 5216)

def relationRow4818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5216) * ((1 : F) * rho 5214 + (1 : F) * rho 5215) = ((1 : F) * rho 5217)

def relationLc894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * (relationLc894 rho) = ((1 : F) * rho 5218)

def relationLc895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5214) * (relationLc895 rho) = ((1 : F) * rho 5219)

def relationRow4821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5218) * ((1 : F) * rho 5219) = ((1 : F) * rho 5220)

def relationRow4822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5221) * ((1 : F) + (1 : F) * rho 5220) = ((1 : F) * rho 5218 + (1 : F) * rho 5219)

def relationRow4823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5222) * ((1 : F) + (-1 : F) * rho 5220) = ((1 : F) * rho 5217 + (-1 : F) * rho 5218 + (-1 : F) * rho 5219)

def relationLc896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((1 : F), 5221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (relationLc896 rho) = ((1 : F) * rho 5223)

def relationLc897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((1 : F), 5222)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (relationLc897 rho) = ((1 : F) * rho 5224)

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

def relationLc898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4831 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc898 rho) = ((1 : F) * rho 5230)

def relationRow4832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5230) * ((1 : F) * rho 5228 + (1 : F) * rho 5229) = ((1 : F) * rho 5231)

def relationLc899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5229) * (relationLc899 rho) = ((1 : F) * rho 5232)

def relationLc900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * (relationLc900 rho) = ((1 : F) * rho 5233)

def relationRow4835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5232) * ((1 : F) * rho 5233) = ((1 : F) * rho 5234)

def relationRow4836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5235) * ((1 : F) + (1 : F) * rho 5234) = ((1 : F) * rho 5232 + (1 : F) * rho 5233)

def relationRow4837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5236) * ((1 : F) + (-1 : F) * rho 5234) = ((1 : F) * rho 5231 + (-1 : F) * rho 5232 + (-1 : F) * rho 5233)

def relationLc901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((1 : F), 5235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2052) * (relationLc901 rho) = ((1 : F) * rho 5237)

def relationLc902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((1 : F), 5236)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2052) * (relationLc902 rho) = ((1 : F) * rho 5238)

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

def relationLc903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224), ((1 : F), 5237), ((1 : F), 5238)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4845 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc903 rho) = ((1 : F) * rho 5244)

def relationRow4846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5244) * ((1 : F) * rho 5242 + (1 : F) * rho 5243) = ((1 : F) * rho 5245)

def relationLc904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223), ((1 : F), 5237)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5243) * (relationLc904 rho) = ((1 : F) * rho 5246)

def relationLc905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224), ((1 : F), 5238)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5242) * (relationLc905 rho) = ((1 : F) * rho 5247)

def relationRow4849 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5246) * ((1 : F) * rho 5247) = ((1 : F) * rho 5248)

def relationRow4850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5249) * ((1 : F) + (1 : F) * rho 5248) = ((1 : F) * rho 5246 + (1 : F) * rho 5247)

def relationRow4851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((1 : F) + (-1 : F) * rho 5248) = ((1 : F) * rho 5245 + (-1 : F) * rho 5246 + (-1 : F) * rho 5247)

def relationLc906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((-1 : F), 5237), ((1 : F), 5249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * (relationLc906 rho) = ((1 : F) * rho 5251)

def relationLc907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((-1 : F), 5238), ((1 : F), 5250)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * (relationLc907 rho) = ((1 : F) * rho 5252)

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

def relationLc908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224), ((1 : F), 5237), ((1 : F), 5238), ((1 : F), 5251), ((1 : F), 5252)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4859 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc908 rho) = ((1 : F) * rho 5258)

def relationRow4860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5258) * ((1 : F) * rho 5256 + (1 : F) * rho 5257) = ((1 : F) * rho 5259)

def relationLc909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223), ((1 : F), 5237), ((1 : F), 5251)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5257) * (relationLc909 rho) = ((1 : F) * rho 5260)

def relationLc910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224), ((1 : F), 5238), ((1 : F), 5252)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5256) * (relationLc910 rho) = ((1 : F) * rho 5261)

def relationRow4863 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5260) * ((1 : F) * rho 5261) = ((1 : F) * rho 5262)

def relationRow4864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5263) * ((1 : F) + (1 : F) * rho 5262) = ((1 : F) * rho 5260 + (1 : F) * rho 5261)

def relationRow4865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5264) * ((1 : F) + (-1 : F) * rho 5262) = ((1 : F) * rho 5259 + (-1 : F) * rho 5260 + (-1 : F) * rho 5261)

def relationLc911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((-1 : F), 5237), ((-1 : F), 5251), ((1 : F), 5263)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * (relationLc911 rho) = ((1 : F) * rho 5265)

def relationLc912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((-1 : F), 5238), ((-1 : F), 5252), ((1 : F), 5264)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * (relationLc912 rho) = ((1 : F) * rho 5266)

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

def relationLc913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5070), ((1 : F), 5083), ((1 : F), 5084), ((1 : F), 5097), ((1 : F), 5098), ((1 : F), 5111), ((1 : F), 5112), ((1 : F), 5125), ((1 : F), 5126), ((1 : F), 5139), ((1 : F), 5140), ((1 : F), 5153), ((1 : F), 5154), ((1 : F), 5167), ((1 : F), 5168), ((1 : F), 5181), ((1 : F), 5182), ((1 : F), 5195), ((1 : F), 5196), ((1 : F), 5209), ((1 : F), 5210), ((1 : F), 5223), ((1 : F), 5224), ((1 : F), 5237), ((1 : F), 5238), ((1 : F), 5251), ((1 : F), 5252), ((1 : F), 5265), ((1 : F), 5266)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4873 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc913 rho) = ((1 : F) * rho 5272)

def relationRow4874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5272) * ((1 : F) * rho 5270 + (1 : F) * rho 5271) = ((1 : F) * rho 5273)

def relationLc914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩], residual := [((1 : F), 5069), ((1 : F), 5083), ((1 : F), 5097), ((1 : F), 5111), ((1 : F), 5125), ((1 : F), 5139), ((1 : F), 5153), ((1 : F), 5167), ((1 : F), 5181), ((1 : F), 5195), ((1 : F), 5209), ((1 : F), 5223), ((1 : F), 5237), ((1 : F), 5251), ((1 : F), 5265)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5271) * (relationLc914 rho) = ((1 : F) * rho 5274)

def relationLc915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩], residual := [((1 : F), 5070), ((1 : F), 5084), ((1 : F), 5098), ((1 : F), 5112), ((1 : F), 5126), ((1 : F), 5140), ((1 : F), 5154), ((1 : F), 5168), ((1 : F), 5182), ((1 : F), 5196), ((1 : F), 5210), ((1 : F), 5224), ((1 : F), 5238), ((1 : F), 5252), ((1 : F), 5266)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5270) * (relationLc915 rho) = ((1 : F) * rho 5275)

def relationRow4877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5274) * ((1 : F) * rho 5275) = ((1 : F) * rho 5276)

def relationRow4878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5277) * ((1 : F) + (1 : F) * rho 5276) = ((1 : F) * rho 5274 + (1 : F) * rho 5275)

def relationRow4879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5278) * ((1 : F) + (-1 : F) * rho 5276) = ((1 : F) * rho 5273 + (-1 : F) * rho 5274 + (-1 : F) * rho 5275)

def relationLc916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩], residual := [((-1 : F), 5069), ((-1 : F), 5083), ((-1 : F), 5097), ((-1 : F), 5111), ((-1 : F), 5125), ((-1 : F), 5139), ((-1 : F), 5153), ((-1 : F), 5167), ((-1 : F), 5181), ((-1 : F), 5195), ((-1 : F), 5209), ((-1 : F), 5223), ((-1 : F), 5237), ((-1 : F), 5251), ((-1 : F), 5265), ((1 : F), 5277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * (relationLc916 rho) = ((1 : F) * rho 5279)

def relationLc917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩], residual := [((-1 : F), 5070), ((-1 : F), 5084), ((-1 : F), 5098), ((-1 : F), 5112), ((-1 : F), 5126), ((-1 : F), 5140), ((-1 : F), 5154), ((-1 : F), 5168), ((-1 : F), 5182), ((-1 : F), 5196), ((-1 : F), 5210), ((-1 : F), 5224), ((-1 : F), 5238), ((-1 : F), 5252), ((-1 : F), 5266), ((1 : F), 5278)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * (relationLc917 rho) = ((1 : F) * rho 5280)

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

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 16⟩, ⟨(1 : F), 5070, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4887 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc918 rho) = ((1 : F) * rho 5286)

def relationRow4888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5286) * ((1 : F) * rho 5284 + (1 : F) * rho 5285) = ((1 : F) * rho 5287)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5285) * (relationLc919 rho) = ((1 : F) * rho 5288)

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5284) * (relationLc920 rho) = ((1 : F) * rho 5289)

def relationRow4891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5288) * ((1 : F) * rho 5289) = ((1 : F) * rho 5290)

def relationRow4892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5291) * ((1 : F) + (1 : F) * rho 5290) = ((1 : F) * rho 5288 + (1 : F) * rho 5289)

def relationRow4893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5292) * ((1 : F) + (-1 : F) * rho 5290) = ((1 : F) * rho 5287 + (-1 : F) * rho 5288 + (-1 : F) * rho 5289)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 16⟩], residual := [((1 : F), 5291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * (relationLc921 rho) = ((1 : F) * rho 5293)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 16⟩], residual := [((1 : F), 5292)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * (relationLc922 rho) = ((1 : F) * rho 5294)

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

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5069, 14, 17⟩, ⟨(1 : F), 5070, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4901 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc923 rho) = ((1 : F) * rho 5300)

def relationRow4902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5300) * ((1 : F) * rho 5298 + (1 : F) * rho 5299) = ((1 : F) * rho 5301)

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 150⟩, ⟨(1 : F), 5069, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5299) * (relationLc924 rho) = ((1 : F) * rho 5302)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 150⟩, ⟨(1 : F), 5070, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5298) * (relationLc925 rho) = ((1 : F) * rho 5303)

def relationRow4905 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5302) * ((1 : F) * rho 5303) = ((1 : F) * rho 5304)

def relationRow4906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5305) * ((1 : F) + (1 : F) * rho 5304) = ((1 : F) * rho 5302 + (1 : F) * rho 5303)

def relationRow4907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5306) * ((1 : F) + (-1 : F) * rho 5304) = ((1 : F) * rho 5301 + (-1 : F) * rho 5302 + (-1 : F) * rho 5303)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 150⟩, ⟨(-1 : F), 5069, 14, 17⟩], residual := [((1 : F), 5305)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2057) * (relationLc926 rho) = ((1 : F) * rho 5307)

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 150⟩, ⟨(-1 : F), 5070, 14, 17⟩], residual := [((1 : F), 5306)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2057) * (relationLc927 rho) = ((1 : F) * rho 5308)

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

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
