import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4742) * ((1 : F) * rho 4742) = ((1 : F) * rho 4753)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * ((1 : F) * rho 4743) = ((1 : F) * rho 4754)

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755) * ((-1 : F) * rho 4753 + (1 : F) * rho 4754) = ((2 : F) * rho 4752)

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4756) * ((2 : F) + (1 : F) * rho 4753 + (-1 : F) * rho 4754) = ((1 : F) * rho 4753 + (1 : F) * rho 4754)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 127⟩, ⟨(1 : F), 3113, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755 + (1 : F) * rho 4756) * (relationLc723 rho) = ((1 : F) * rho 4757)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4756) * (relationLc724 rho) = ((1 : F) * rho 4758)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755) * (relationLc725 rho) = ((1 : F) * rho 4759)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4758) * ((1 : F) * rho 4759) = ((1 : F) * rho 4760)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4761) * ((1 : F) + (1 : F) * rho 4760) = ((1 : F) * rho 4758 + (1 : F) * rho 4759)

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4762) * ((1 : F) + (-1 : F) * rho 4760) = ((1 : F) * rho 4757 + (-1 : F) * rho 4758 + (-1 : F) * rho 4759)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 127⟩], residual := [((1 : F), 4761)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * (relationLc726 rho) = ((1 : F) * rho 4763)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 127⟩], residual := [((1 : F), 4762)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * (relationLc727 rho) = ((1 : F) * rho 4764)

def relationRow4372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755) * ((1 : F) * rho 4756) = ((1 : F) * rho 4765)

def relationRow4373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755) * ((1 : F) * rho 4755) = ((1 : F) * rho 4766)

def relationRow4374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4756) * ((1 : F) * rho 4756) = ((1 : F) * rho 4767)

def relationRow4375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768) * ((-1 : F) * rho 4766 + (1 : F) * rho 4767) = ((2 : F) * rho 4765)

def relationRow4376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4769) * ((2 : F) + (1 : F) * rho 4766 + (-1 : F) * rho 4767) = ((1 : F) * rho 4766 + (1 : F) * rho 4767)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 128⟩, ⟨(1 : F), 3113, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768 + (1 : F) * rho 4769) * (relationLc728 rho) = ((1 : F) * rho 4770)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4769) * (relationLc729 rho) = ((1 : F) * rho 4771)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768) * (relationLc730 rho) = ((1 : F) * rho 4772)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4771) * ((1 : F) * rho 4772) = ((1 : F) * rho 4773)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * ((1 : F) + (1 : F) * rho 4773) = ((1 : F) * rho 4771 + (1 : F) * rho 4772)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4775) * ((1 : F) + (-1 : F) * rho 4773) = ((1 : F) * rho 4770 + (-1 : F) * rho 4771 + (-1 : F) * rho 4772)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 128⟩], residual := [((1 : F), 4774)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2012) * (relationLc731 rho) = ((1 : F) * rho 4776)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 128⟩], residual := [((1 : F), 4775)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2012) * (relationLc732 rho) = ((1 : F) * rho 4777)

def relationRow4385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768) * ((1 : F) * rho 4769) = ((1 : F) * rho 4778)

def relationRow4386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4768) * ((1 : F) * rho 4768) = ((1 : F) * rho 4779)

def relationRow4387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4769) * ((1 : F) * rho 4769) = ((1 : F) * rho 4780)

def relationRow4388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781) * ((-1 : F) * rho 4779 + (1 : F) * rho 4780) = ((2 : F) * rho 4778)

def relationRow4389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4782) * ((2 : F) + (1 : F) * rho 4779 + (-1 : F) * rho 4780) = ((1 : F) * rho 4779 + (1 : F) * rho 4780)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 129⟩, ⟨(1 : F), 3113, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781 + (1 : F) * rho 4782) * (relationLc733 rho) = ((1 : F) * rho 4783)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4782) * (relationLc734 rho) = ((1 : F) * rho 4784)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781) * (relationLc735 rho) = ((1 : F) * rho 4785)

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4784) * ((1 : F) * rho 4785) = ((1 : F) * rho 4786)

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4787) * ((1 : F) + (1 : F) * rho 4786) = ((1 : F) * rho 4784 + (1 : F) * rho 4785)

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4788) * ((1 : F) + (-1 : F) * rho 4786) = ((1 : F) * rho 4783 + (-1 : F) * rho 4784 + (-1 : F) * rho 4785)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 129⟩], residual := [((1 : F), 4787)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2013) * (relationLc736 rho) = ((1 : F) * rho 4789)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 129⟩], residual := [((1 : F), 4788)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2013) * (relationLc737 rho) = ((1 : F) * rho 4790)

def relationRow4398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781) * ((1 : F) * rho 4782) = ((1 : F) * rho 4791)

def relationRow4399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4781) * ((1 : F) * rho 4781) = ((1 : F) * rho 4792)

def relationRow4400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4782) * ((1 : F) * rho 4782) = ((1 : F) * rho 4793)

def relationRow4401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * ((-1 : F) * rho 4792 + (1 : F) * rho 4793) = ((2 : F) * rho 4791)

def relationRow4402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4795) * ((2 : F) + (1 : F) * rho 4792 + (-1 : F) * rho 4793) = ((1 : F) * rho 4792 + (1 : F) * rho 4793)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 130⟩, ⟨(1 : F), 3113, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794 + (1 : F) * rho 4795) * (relationLc738 rho) = ((1 : F) * rho 4796)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4795) * (relationLc739 rho) = ((1 : F) * rho 4797)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * (relationLc740 rho) = ((1 : F) * rho 4798)

def relationRow4406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4797) * ((1 : F) * rho 4798) = ((1 : F) * rho 4799)

def relationRow4407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((1 : F) + (1 : F) * rho 4799) = ((1 : F) * rho 4797 + (1 : F) * rho 4798)

def relationRow4408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4801) * ((1 : F) + (-1 : F) * rho 4799) = ((1 : F) * rho 4796 + (-1 : F) * rho 4797 + (-1 : F) * rho 4798)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 130⟩], residual := [((1 : F), 4800)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2014) * (relationLc741 rho) = ((1 : F) * rho 4802)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 130⟩], residual := [((1 : F), 4801)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2014) * (relationLc742 rho) = ((1 : F) * rho 4803)

def relationRow4411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * ((1 : F) * rho 4795) = ((1 : F) * rho 4804)

def relationRow4412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * ((1 : F) * rho 4794) = ((1 : F) * rho 4805)

def relationRow4413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4795) * ((1 : F) * rho 4795) = ((1 : F) * rho 4806)

def relationRow4414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * ((-1 : F) * rho 4805 + (1 : F) * rho 4806) = ((2 : F) * rho 4804)

def relationRow4415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4808) * ((2 : F) + (1 : F) * rho 4805 + (-1 : F) * rho 4806) = ((1 : F) * rho 4805 + (1 : F) * rho 4806)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 131⟩, ⟨(1 : F), 3113, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807 + (1 : F) * rho 4808) * (relationLc743 rho) = ((1 : F) * rho 4809)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4808) * (relationLc744 rho) = ((1 : F) * rho 4810)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * (relationLc745 rho) = ((1 : F) * rho 4811)

def relationRow4419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4810) * ((1 : F) * rho 4811) = ((1 : F) * rho 4812)

def relationRow4420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4813) * ((1 : F) + (1 : F) * rho 4812) = ((1 : F) * rho 4810 + (1 : F) * rho 4811)

def relationRow4421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * ((1 : F) + (-1 : F) * rho 4812) = ((1 : F) * rho 4809 + (-1 : F) * rho 4810 + (-1 : F) * rho 4811)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 131⟩], residual := [((1 : F), 4813)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2015) * (relationLc746 rho) = ((1 : F) * rho 4815)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 131⟩], residual := [((1 : F), 4814)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2015) * (relationLc747 rho) = ((1 : F) * rho 4816)

def relationRow4424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * ((1 : F) * rho 4808) = ((1 : F) * rho 4817)

def relationRow4425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4807) * ((1 : F) * rho 4807) = ((1 : F) * rho 4818)

def relationRow4426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4808) * ((1 : F) * rho 4808) = ((1 : F) * rho 4819)

def relationRow4427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((-1 : F) * rho 4818 + (1 : F) * rho 4819) = ((2 : F) * rho 4817)

def relationRow4428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4821) * ((2 : F) + (1 : F) * rho 4818 + (-1 : F) * rho 4819) = ((1 : F) * rho 4818 + (1 : F) * rho 4819)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 132⟩, ⟨(1 : F), 3113, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820 + (1 : F) * rho 4821) * (relationLc748 rho) = ((1 : F) * rho 4822)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4821) * (relationLc749 rho) = ((1 : F) * rho 4823)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * (relationLc750 rho) = ((1 : F) * rho 4824)

def relationRow4432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4823) * ((1 : F) * rho 4824) = ((1 : F) * rho 4825)

def relationRow4433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4826) * ((1 : F) + (1 : F) * rho 4825) = ((1 : F) * rho 4823 + (1 : F) * rho 4824)

def relationRow4434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4827) * ((1 : F) + (-1 : F) * rho 4825) = ((1 : F) * rho 4822 + (-1 : F) * rho 4823 + (-1 : F) * rho 4824)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 132⟩], residual := [((1 : F), 4826)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2016) * (relationLc751 rho) = ((1 : F) * rho 4828)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 132⟩], residual := [((1 : F), 4827)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2016) * (relationLc752 rho) = ((1 : F) * rho 4829)

def relationRow4437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((1 : F) * rho 4821) = ((1 : F) * rho 4830)

def relationRow4438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((1 : F) * rho 4820) = ((1 : F) * rho 4831)

def relationRow4439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4821) * ((1 : F) * rho 4821) = ((1 : F) * rho 4832)

def relationRow4440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833) * ((-1 : F) * rho 4831 + (1 : F) * rho 4832) = ((2 : F) * rho 4830)

def relationRow4441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4834) * ((2 : F) + (1 : F) * rho 4831 + (-1 : F) * rho 4832) = ((1 : F) * rho 4831 + (1 : F) * rho 4832)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 133⟩, ⟨(1 : F), 3113, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833 + (1 : F) * rho 4834) * (relationLc753 rho) = ((1 : F) * rho 4835)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4834) * (relationLc754 rho) = ((1 : F) * rho 4836)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833) * (relationLc755 rho) = ((1 : F) * rho 4837)

def relationRow4445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4836) * ((1 : F) * rho 4837) = ((1 : F) * rho 4838)

def relationRow4446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * ((1 : F) + (1 : F) * rho 4838) = ((1 : F) * rho 4836 + (1 : F) * rho 4837)

def relationRow4447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4840) * ((1 : F) + (-1 : F) * rho 4838) = ((1 : F) * rho 4835 + (-1 : F) * rho 4836 + (-1 : F) * rho 4837)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 133⟩], residual := [((1 : F), 4839)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (relationLc756 rho) = ((1 : F) * rho 4841)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 133⟩], residual := [((1 : F), 4840)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (relationLc757 rho) = ((1 : F) * rho 4842)

def relationRow4450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833) * ((1 : F) * rho 4834) = ((1 : F) * rho 4843)

def relationRow4451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4833) * ((1 : F) * rho 4833) = ((1 : F) * rho 4844)

def relationRow4452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4834) * ((1 : F) * rho 4834) = ((1 : F) * rho 4845)

def relationRow4453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846) * ((-1 : F) * rho 4844 + (1 : F) * rho 4845) = ((2 : F) * rho 4843)

def relationRow4454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4847) * ((2 : F) + (1 : F) * rho 4844 + (-1 : F) * rho 4845) = ((1 : F) * rho 4844 + (1 : F) * rho 4845)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 134⟩, ⟨(1 : F), 3113, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846 + (1 : F) * rho 4847) * (relationLc758 rho) = ((1 : F) * rho 4848)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4847) * (relationLc759 rho) = ((1 : F) * rho 4849)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846) * (relationLc760 rho) = ((1 : F) * rho 4850)

def relationRow4458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4849) * ((1 : F) * rho 4850) = ((1 : F) * rho 4851)

def relationRow4459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4852) * ((1 : F) + (1 : F) * rho 4851) = ((1 : F) * rho 4849 + (1 : F) * rho 4850)

def relationRow4460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4853) * ((1 : F) + (-1 : F) * rho 4851) = ((1 : F) * rho 4848 + (-1 : F) * rho 4849 + (-1 : F) * rho 4850)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 134⟩], residual := [((1 : F), 4852)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (relationLc761 rho) = ((1 : F) * rho 4854)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 134⟩], residual := [((1 : F), 4853)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (relationLc762 rho) = ((1 : F) * rho 4855)

def relationRow4463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846) * ((1 : F) * rho 4847) = ((1 : F) * rho 4856)

def relationRow4464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4846) * ((1 : F) * rho 4846) = ((1 : F) * rho 4857)

def relationRow4465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4847) * ((1 : F) * rho 4847) = ((1 : F) * rho 4858)

def relationRow4466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859) * ((-1 : F) * rho 4857 + (1 : F) * rho 4858) = ((2 : F) * rho 4856)

def relationRow4467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4860) * ((2 : F) + (1 : F) * rho 4857 + (-1 : F) * rho 4858) = ((1 : F) * rho 4857 + (1 : F) * rho 4858)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 135⟩, ⟨(1 : F), 3113, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859 + (1 : F) * rho 4860) * (relationLc763 rho) = ((1 : F) * rho 4861)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4860) * (relationLc764 rho) = ((1 : F) * rho 4862)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859) * (relationLc765 rho) = ((1 : F) * rho 4863)

def relationRow4471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4862) * ((1 : F) * rho 4863) = ((1 : F) * rho 4864)

def relationRow4472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4865) * ((1 : F) + (1 : F) * rho 4864) = ((1 : F) * rho 4862 + (1 : F) * rho 4863)

def relationRow4473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4866) * ((1 : F) + (-1 : F) * rho 4864) = ((1 : F) * rho 4861 + (-1 : F) * rho 4862 + (-1 : F) * rho 4863)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 135⟩], residual := [((1 : F), 4865)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (relationLc766 rho) = ((1 : F) * rho 4867)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 135⟩], residual := [((1 : F), 4866)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (relationLc767 rho) = ((1 : F) * rho 4868)

def relationRow4476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859) * ((1 : F) * rho 4860) = ((1 : F) * rho 4869)

def relationRow4477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4859) * ((1 : F) * rho 4859) = ((1 : F) * rho 4870)

def relationRow4478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4860) * ((1 : F) * rho 4860) = ((1 : F) * rho 4871)

def relationRow4479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872) * ((-1 : F) * rho 4870 + (1 : F) * rho 4871) = ((2 : F) * rho 4869)

def relationRow4480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4873) * ((2 : F) + (1 : F) * rho 4870 + (-1 : F) * rho 4871) = ((1 : F) * rho 4870 + (1 : F) * rho 4871)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 136⟩, ⟨(1 : F), 3113, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872 + (1 : F) * rho 4873) * (relationLc768 rho) = ((1 : F) * rho 4874)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4873) * (relationLc769 rho) = ((1 : F) * rho 4875)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872) * (relationLc770 rho) = ((1 : F) * rho 4876)

def relationRow4484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4875) * ((1 : F) * rho 4876) = ((1 : F) * rho 4877)

def relationRow4485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4878) * ((1 : F) + (1 : F) * rho 4877) = ((1 : F) * rho 4875 + (1 : F) * rho 4876)

def relationRow4486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4879) * ((1 : F) + (-1 : F) * rho 4877) = ((1 : F) * rho 4874 + (-1 : F) * rho 4875 + (-1 : F) * rho 4876)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 136⟩], residual := [((1 : F), 4878)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (relationLc771 rho) = ((1 : F) * rho 4880)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 136⟩], residual := [((1 : F), 4879)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (relationLc772 rho) = ((1 : F) * rho 4881)

def relationRow4489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872) * ((1 : F) * rho 4873) = ((1 : F) * rho 4882)

def relationRow4490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4872) * ((1 : F) * rho 4872) = ((1 : F) * rho 4883)

def relationRow4491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4873) * ((1 : F) * rho 4873) = ((1 : F) * rho 4884)

def relationRow4492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((-1 : F) * rho 4883 + (1 : F) * rho 4884) = ((2 : F) * rho 4882)

def relationRow4493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4886) * ((2 : F) + (1 : F) * rho 4883 + (-1 : F) * rho 4884) = ((1 : F) * rho 4883 + (1 : F) * rho 4884)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 137⟩, ⟨(1 : F), 3113, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885 + (1 : F) * rho 4886) * (relationLc773 rho) = ((1 : F) * rho 4887)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4886) * (relationLc774 rho) = ((1 : F) * rho 4888)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * (relationLc775 rho) = ((1 : F) * rho 4889)

def relationRow4497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4888) * ((1 : F) * rho 4889) = ((1 : F) * rho 4890)

def relationRow4498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4891) * ((1 : F) + (1 : F) * rho 4890) = ((1 : F) * rho 4888 + (1 : F) * rho 4889)

def relationRow4499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4892) * ((1 : F) + (-1 : F) * rho 4890) = ((1 : F) * rho 4887 + (-1 : F) * rho 4888 + (-1 : F) * rho 4889)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 137⟩], residual := [((1 : F), 4891)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * (relationLc776 rho) = ((1 : F) * rho 4893)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 137⟩], residual := [((1 : F), 4892)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * (relationLc777 rho) = ((1 : F) * rho 4894)

def relationRow4502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((1 : F) * rho 4886) = ((1 : F) * rho 4895)

def relationRow4503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((1 : F) * rho 4885) = ((1 : F) * rho 4896)

def relationRow4504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4886) * ((1 : F) * rho 4886) = ((1 : F) * rho 4897)

def relationRow4505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((-1 : F) * rho 4896 + (1 : F) * rho 4897) = ((2 : F) * rho 4895)

def relationRow4506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4899) * ((2 : F) + (1 : F) * rho 4896 + (-1 : F) * rho 4897) = ((1 : F) * rho 4896 + (1 : F) * rho 4897)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 138⟩, ⟨(1 : F), 3113, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898 + (1 : F) * rho 4899) * (relationLc778 rho) = ((1 : F) * rho 4900)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4899) * (relationLc779 rho) = ((1 : F) * rho 4901)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * (relationLc780 rho) = ((1 : F) * rho 4902)

def relationRow4510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4901) * ((1 : F) * rho 4902) = ((1 : F) * rho 4903)

def relationRow4511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * ((1 : F) + (1 : F) * rho 4903) = ((1 : F) * rho 4901 + (1 : F) * rho 4902)

def relationRow4512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * ((1 : F) + (-1 : F) * rho 4903) = ((1 : F) * rho 4900 + (-1 : F) * rho 4901 + (-1 : F) * rho 4902)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 138⟩], residual := [((1 : F), 4904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * (relationLc781 rho) = ((1 : F) * rho 4906)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 138⟩], residual := [((1 : F), 4905)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * (relationLc782 rho) = ((1 : F) * rho 4907)

def relationRow4515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((1 : F) * rho 4899) = ((1 : F) * rho 4908)

def relationRow4516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4898) * ((1 : F) * rho 4898) = ((1 : F) * rho 4909)

def relationRow4517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4899) * ((1 : F) * rho 4899) = ((1 : F) * rho 4910)

def relationRow4518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((-1 : F) * rho 4909 + (1 : F) * rho 4910) = ((2 : F) * rho 4908)

def relationRow4519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4912) * ((2 : F) + (1 : F) * rho 4909 + (-1 : F) * rho 4910) = ((1 : F) * rho 4909 + (1 : F) * rho 4910)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 139⟩, ⟨(1 : F), 3113, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911 + (1 : F) * rho 4912) * (relationLc783 rho) = ((1 : F) * rho 4913)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4912) * (relationLc784 rho) = ((1 : F) * rho 4914)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * (relationLc785 rho) = ((1 : F) * rho 4915)

def relationRow4523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4914) * ((1 : F) * rho 4915) = ((1 : F) * rho 4916)

def relationRow4524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4917) * ((1 : F) + (1 : F) * rho 4916) = ((1 : F) * rho 4914 + (1 : F) * rho 4915)

def relationRow4525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4918) * ((1 : F) + (-1 : F) * rho 4916) = ((1 : F) * rho 4913 + (-1 : F) * rho 4914 + (-1 : F) * rho 4915)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 139⟩], residual := [((1 : F), 4917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2023) * (relationLc786 rho) = ((1 : F) * rho 4919)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 139⟩], residual := [((1 : F), 4918)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2023) * (relationLc787 rho) = ((1 : F) * rho 4920)

def relationRow4528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((1 : F) * rho 4912) = ((1 : F) * rho 4921)

def relationRow4529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4911) * ((1 : F) * rho 4911) = ((1 : F) * rho 4922)

def relationRow4530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4912) * ((1 : F) * rho 4912) = ((1 : F) * rho 4923)

def relationRow4531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * ((-1 : F) * rho 4922 + (1 : F) * rho 4923) = ((2 : F) * rho 4921)

def relationRow4532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * ((2 : F) + (1 : F) * rho 4922 + (-1 : F) * rho 4923) = ((1 : F) * rho 4922 + (1 : F) * rho 4923)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 140⟩, ⟨(1 : F), 3113, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924 + (1 : F) * rho 4925) * (relationLc788 rho) = ((1 : F) * rho 4926)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * (relationLc789 rho) = ((1 : F) * rho 4927)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * (relationLc790 rho) = ((1 : F) * rho 4928)

def relationRow4536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4927) * ((1 : F) * rho 4928) = ((1 : F) * rho 4929)

def relationRow4537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * ((1 : F) + (1 : F) * rho 4929) = ((1 : F) * rho 4927 + (1 : F) * rho 4928)

def relationRow4538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4931) * ((1 : F) + (-1 : F) * rho 4929) = ((1 : F) * rho 4926 + (-1 : F) * rho 4927 + (-1 : F) * rho 4928)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 140⟩], residual := [((1 : F), 4930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (relationLc791 rho) = ((1 : F) * rho 4932)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 140⟩], residual := [((1 : F), 4931)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (relationLc792 rho) = ((1 : F) * rho 4933)

def relationRow4541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * ((1 : F) * rho 4925) = ((1 : F) * rho 4934)

def relationRow4542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * ((1 : F) * rho 4924) = ((1 : F) * rho 4935)

def relationRow4543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * ((1 : F) * rho 4925) = ((1 : F) * rho 4936)

def relationRow4544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937) * ((-1 : F) * rho 4935 + (1 : F) * rho 4936) = ((2 : F) * rho 4934)

def relationRow4545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4938) * ((2 : F) + (1 : F) * rho 4935 + (-1 : F) * rho 4936) = ((1 : F) * rho 4935 + (1 : F) * rho 4936)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 141⟩, ⟨(1 : F), 3113, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937 + (1 : F) * rho 4938) * (relationLc793 rho) = ((1 : F) * rho 4939)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4938) * (relationLc794 rho) = ((1 : F) * rho 4940)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937) * (relationLc795 rho) = ((1 : F) * rho 4941)

def relationRow4549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4940) * ((1 : F) * rho 4941) = ((1 : F) * rho 4942)

def relationRow4550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4943) * ((1 : F) + (1 : F) * rho 4942) = ((1 : F) * rho 4940 + (1 : F) * rho 4941)

def relationRow4551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4944) * ((1 : F) + (-1 : F) * rho 4942) = ((1 : F) * rho 4939 + (-1 : F) * rho 4940 + (-1 : F) * rho 4941)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 141⟩], residual := [((1 : F), 4943)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (relationLc796 rho) = ((1 : F) * rho 4945)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 141⟩], residual := [((1 : F), 4944)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (relationLc797 rho) = ((1 : F) * rho 4946)

def relationRow4554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937) * ((1 : F) * rho 4938) = ((1 : F) * rho 4947)

def relationRow4555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4937) * ((1 : F) * rho 4937) = ((1 : F) * rho 4948)

def relationRow4556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4938) * ((1 : F) * rho 4938) = ((1 : F) * rho 4949)

def relationRow4557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * ((-1 : F) * rho 4948 + (1 : F) * rho 4949) = ((2 : F) * rho 4947)

def relationRow4558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4951) * ((2 : F) + (1 : F) * rho 4948 + (-1 : F) * rho 4949) = ((1 : F) * rho 4948 + (1 : F) * rho 4949)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 142⟩, ⟨(1 : F), 3113, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950 + (1 : F) * rho 4951) * (relationLc798 rho) = ((1 : F) * rho 4952)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4951) * (relationLc799 rho) = ((1 : F) * rho 4953)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * (relationLc800 rho) = ((1 : F) * rho 4954)

def relationRow4562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4953) * ((1 : F) * rho 4954) = ((1 : F) * rho 4955)

def relationRow4563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4956) * ((1 : F) + (1 : F) * rho 4955) = ((1 : F) * rho 4953 + (1 : F) * rho 4954)

def relationRow4564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4957) * ((1 : F) + (-1 : F) * rho 4955) = ((1 : F) * rho 4952 + (-1 : F) * rho 4953 + (-1 : F) * rho 4954)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 142⟩], residual := [((1 : F), 4956)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (relationLc801 rho) = ((1 : F) * rho 4958)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 142⟩], residual := [((1 : F), 4957)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (relationLc802 rho) = ((1 : F) * rho 4959)

def relationRow4567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * ((1 : F) * rho 4951) = ((1 : F) * rho 4960)

def relationRow4568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * ((1 : F) * rho 4950) = ((1 : F) * rho 4961)

def relationRow4569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4951) * ((1 : F) * rho 4951) = ((1 : F) * rho 4962)

def relationRow4570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963) * ((-1 : F) * rho 4961 + (1 : F) * rho 4962) = ((2 : F) * rho 4960)

def relationRow4571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4964) * ((2 : F) + (1 : F) * rho 4961 + (-1 : F) * rho 4962) = ((1 : F) * rho 4961 + (1 : F) * rho 4962)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 143⟩, ⟨(1 : F), 3113, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963 + (1 : F) * rho 4964) * (relationLc803 rho) = ((1 : F) * rho 4965)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4964) * (relationLc804 rho) = ((1 : F) * rho 4966)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963) * (relationLc805 rho) = ((1 : F) * rho 4967)

def relationRow4575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4966) * ((1 : F) * rho 4967) = ((1 : F) * rho 4968)

def relationRow4576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * ((1 : F) + (1 : F) * rho 4968) = ((1 : F) * rho 4966 + (1 : F) * rho 4967)

def relationRow4577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4970) * ((1 : F) + (-1 : F) * rho 4968) = ((1 : F) * rho 4965 + (-1 : F) * rho 4966 + (-1 : F) * rho 4967)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 143⟩], residual := [((1 : F), 4969)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (relationLc806 rho) = ((1 : F) * rho 4971)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 143⟩], residual := [((1 : F), 4970)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (relationLc807 rho) = ((1 : F) * rho 4972)

def relationRow4580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963) * ((1 : F) * rho 4964) = ((1 : F) * rho 4973)

def relationRow4581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4963) * ((1 : F) * rho 4963) = ((1 : F) * rho 4974)

def relationRow4582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4964) * ((1 : F) * rho 4964) = ((1 : F) * rho 4975)

def relationRow4583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976) * ((-1 : F) * rho 4974 + (1 : F) * rho 4975) = ((2 : F) * rho 4973)

def relationRow4584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4977) * ((2 : F) + (1 : F) * rho 4974 + (-1 : F) * rho 4975) = ((1 : F) * rho 4974 + (1 : F) * rho 4975)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 144⟩, ⟨(1 : F), 3113, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976 + (1 : F) * rho 4977) * (relationLc808 rho) = ((1 : F) * rho 4978)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4977) * (relationLc809 rho) = ((1 : F) * rho 4979)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976) * (relationLc810 rho) = ((1 : F) * rho 4980)

def relationRow4588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4979) * ((1 : F) * rho 4980) = ((1 : F) * rho 4981)

def relationRow4589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4982) * ((1 : F) + (1 : F) * rho 4981) = ((1 : F) * rho 4979 + (1 : F) * rho 4980)

def relationRow4590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4983) * ((1 : F) + (-1 : F) * rho 4981) = ((1 : F) * rho 4978 + (-1 : F) * rho 4979 + (-1 : F) * rho 4980)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 144⟩], residual := [((1 : F), 4982)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * (relationLc811 rho) = ((1 : F) * rho 4984)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 144⟩], residual := [((1 : F), 4983)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * (relationLc812 rho) = ((1 : F) * rho 4985)

def relationRow4593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976) * ((1 : F) * rho 4977) = ((1 : F) * rho 4986)

def relationRow4594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4976) * ((1 : F) * rho 4976) = ((1 : F) * rho 4987)

def relationRow4595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4977) * ((1 : F) * rho 4977) = ((1 : F) * rho 4988)

def relationRow4596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((-1 : F) * rho 4987 + (1 : F) * rho 4988) = ((2 : F) * rho 4986)

def relationRow4597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4990) * ((2 : F) + (1 : F) * rho 4987 + (-1 : F) * rho 4988) = ((1 : F) * rho 4987 + (1 : F) * rho 4988)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 145⟩, ⟨(1 : F), 3113, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989 + (1 : F) * rho 4990) * (relationLc813 rho) = ((1 : F) * rho 4991)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4990) * (relationLc814 rho) = ((1 : F) * rho 4992)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * (relationLc815 rho) = ((1 : F) * rho 4993)

def relationRow4601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4992) * ((1 : F) * rho 4993) = ((1 : F) * rho 4994)

def relationRow4602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((1 : F) + (1 : F) * rho 4994) = ((1 : F) * rho 4992 + (1 : F) * rho 4993)

def relationRow4603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4996) * ((1 : F) + (-1 : F) * rho 4994) = ((1 : F) * rho 4991 + (-1 : F) * rho 4992 + (-1 : F) * rho 4993)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 145⟩], residual := [((1 : F), 4995)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2029) * (relationLc816 rho) = ((1 : F) * rho 4997)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 145⟩], residual := [((1 : F), 4996)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2029) * (relationLc817 rho) = ((1 : F) * rho 4998)

def relationRow4606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((1 : F) * rho 4990) = ((1 : F) * rho 4999)

def relationRow4607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((1 : F) * rho 4989) = ((1 : F) * rho 5000)

def relationRow4608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4990) * ((1 : F) * rho 4990) = ((1 : F) * rho 5001)

def relationRow4609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * ((-1 : F) * rho 5000 + (1 : F) * rho 5001) = ((2 : F) * rho 4999)

def relationRow4610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5003) * ((2 : F) + (1 : F) * rho 5000 + (-1 : F) * rho 5001) = ((1 : F) * rho 5000 + (1 : F) * rho 5001)

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 146⟩, ⟨(1 : F), 3113, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002 + (1 : F) * rho 5003) * (relationLc818 rho) = ((1 : F) * rho 5004)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5003) * (relationLc819 rho) = ((1 : F) * rho 5005)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * (relationLc820 rho) = ((1 : F) * rho 5006)

def relationRow4614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5005) * ((1 : F) * rho 5006) = ((1 : F) * rho 5007)

def relationRow4615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5008) * ((1 : F) + (1 : F) * rho 5007) = ((1 : F) * rho 5005 + (1 : F) * rho 5006)

def relationRow4616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((1 : F) + (-1 : F) * rho 5007) = ((1 : F) * rho 5004 + (-1 : F) * rho 5005 + (-1 : F) * rho 5006)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 146⟩], residual := [((1 : F), 5008)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * (relationLc821 rho) = ((1 : F) * rho 5010)

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 146⟩], residual := [((1 : F), 5009)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * (relationLc822 rho) = ((1 : F) * rho 5011)

def relationRow4619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * ((1 : F) * rho 5003) = ((1 : F) * rho 5012)

def relationRow4620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5002) * ((1 : F) * rho 5002) = ((1 : F) * rho 5013)

def relationRow4621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5003) * ((1 : F) * rho 5003) = ((1 : F) * rho 5014)

def relationRow4622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * ((-1 : F) * rho 5013 + (1 : F) * rho 5014) = ((2 : F) * rho 5012)

def relationRow4623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5016) * ((2 : F) + (1 : F) * rho 5013 + (-1 : F) * rho 5014) = ((1 : F) * rho 5013 + (1 : F) * rho 5014)

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 147⟩, ⟨(1 : F), 3113, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015 + (1 : F) * rho 5016) * (relationLc823 rho) = ((1 : F) * rho 5017)

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5016) * (relationLc824 rho) = ((1 : F) * rho 5018)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * (relationLc825 rho) = ((1 : F) * rho 5019)

def relationRow4627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5018) * ((1 : F) * rho 5019) = ((1 : F) * rho 5020)

def relationRow4628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5021) * ((1 : F) + (1 : F) * rho 5020) = ((1 : F) * rho 5018 + (1 : F) * rho 5019)

def relationRow4629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5022) * ((1 : F) + (-1 : F) * rho 5020) = ((1 : F) * rho 5017 + (-1 : F) * rho 5018 + (-1 : F) * rho 5019)

def relationLc826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 147⟩], residual := [((1 : F), 5021)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (relationLc826 rho) = ((1 : F) * rho 5023)

def relationLc827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 147⟩], residual := [((1 : F), 5022)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (relationLc827 rho) = ((1 : F) * rho 5024)

def relationRow4632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * ((1 : F) * rho 5016) = ((1 : F) * rho 5025)

def relationRow4633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * ((1 : F) * rho 5015) = ((1 : F) * rho 5026)

def relationRow4634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5016) * ((1 : F) * rho 5016) = ((1 : F) * rho 5027)

def relationRow4635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028) * ((-1 : F) * rho 5026 + (1 : F) * rho 5027) = ((2 : F) * rho 5025)

def relationRow4636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5029) * ((2 : F) + (1 : F) * rho 5026 + (-1 : F) * rho 5027) = ((1 : F) * rho 5026 + (1 : F) * rho 5027)

def relationLc828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 148⟩, ⟨(1 : F), 3113, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028 + (1 : F) * rho 5029) * (relationLc828 rho) = ((1 : F) * rho 5030)

def relationLc829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5029) * (relationLc829 rho) = ((1 : F) * rho 5031)

def relationLc830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028) * (relationLc830 rho) = ((1 : F) * rho 5032)

def relationRow4640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5031) * ((1 : F) * rho 5032) = ((1 : F) * rho 5033)

def relationRow4641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * ((1 : F) + (1 : F) * rho 5033) = ((1 : F) * rho 5031 + (1 : F) * rho 5032)

def relationRow4642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5035) * ((1 : F) + (-1 : F) * rho 5033) = ((1 : F) * rho 5030 + (-1 : F) * rho 5031 + (-1 : F) * rho 5032)

def relationLc831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 148⟩], residual := [((1 : F), 5034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (relationLc831 rho) = ((1 : F) * rho 5036)

def relationLc832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 148⟩], residual := [((1 : F), 5035)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (relationLc832 rho) = ((1 : F) * rho 5037)

def relationRow4645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028) * ((1 : F) * rho 5029) = ((1 : F) * rho 5038)

def relationRow4646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5028) * ((1 : F) * rho 5028) = ((1 : F) * rho 5039)

def relationRow4647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5029) * ((1 : F) * rho 5029) = ((1 : F) * rho 5040)

def relationRow4648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041) * ((-1 : F) * rho 5039 + (1 : F) * rho 5040) = ((2 : F) * rho 5038)

def relationRow4649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5042) * ((2 : F) + (1 : F) * rho 5039 + (-1 : F) * rho 5040) = ((1 : F) * rho 5039 + (1 : F) * rho 5040)

def relationLc833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 149⟩, ⟨(1 : F), 3113, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041 + (1 : F) * rho 5042) * (relationLc833 rho) = ((1 : F) * rho 5043)

def relationLc834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5042) * (relationLc834 rho) = ((1 : F) * rho 5044)

def relationLc835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041) * (relationLc835 rho) = ((1 : F) * rho 5045)

def relationRow4653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5044) * ((1 : F) * rho 5045) = ((1 : F) * rho 5046)

def relationRow4654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5047) * ((1 : F) + (1 : F) * rho 5046) = ((1 : F) * rho 5044 + (1 : F) * rho 5045)

def relationRow4655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5048) * ((1 : F) + (-1 : F) * rho 5046) = ((1 : F) * rho 5043 + (-1 : F) * rho 5044 + (-1 : F) * rho 5045)

def relationLc836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 149⟩], residual := [((1 : F), 5047)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (relationLc836 rho) = ((1 : F) * rho 5049)

def relationLc837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 149⟩], residual := [((1 : F), 5048)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (relationLc837 rho) = ((1 : F) * rho 5050)

def relationRow4658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041) * ((1 : F) * rho 5042) = ((1 : F) * rho 5051)

def relationRow4659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5041) * ((1 : F) * rho 5041) = ((1 : F) * rho 5052)

def relationRow4660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5042) * ((1 : F) * rho 5042) = ((1 : F) * rho 5053)

def relationRow4661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * ((-1 : F) * rho 5052 + (1 : F) * rho 5053) = ((2 : F) * rho 5051)

def relationRow4662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5055) * ((2 : F) + (1 : F) * rho 5052 + (-1 : F) * rho 5053) = ((1 : F) * rho 5052 + (1 : F) * rho 5053)

def relationLc838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4663 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc838 rho) = ((1 : F) * rho 5056)

def relationRow4664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5056) * ((1 : F) * rho 5054 + (1 : F) * rho 5055) = ((1 : F) * rho 5057)

def relationLc839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5055) * (relationLc839 rho) = ((1 : F) * rho 5058)

def relationLc840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * (relationLc840 rho) = ((1 : F) * rho 5059)

def relationRow4667 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5058) * ((1 : F) * rho 5059) = ((1 : F) * rho 5060)

def relationRow4668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5061) * ((1 : F) + (1 : F) * rho 5060) = ((1 : F) * rho 5058 + (1 : F) * rho 5059)

def relationRow4669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5062) * ((1 : F) + (-1 : F) * rho 5060) = ((1 : F) * rho 5057 + (-1 : F) * rho 5058 + (-1 : F) * rho 5059)

def relationLc841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5061)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (relationLc841 rho) = ((1 : F) * rho 5063)

def relationLc842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5062)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (relationLc842 rho) = ((1 : F) * rho 5064)

def relationRow4672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * ((1 : F) * rho 5055) = ((1 : F) * rho 5065)

def relationRow4673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * ((1 : F) * rho 5054) = ((1 : F) * rho 5066)

def relationRow4674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5055) * ((1 : F) * rho 5055) = ((1 : F) * rho 5067)

def relationRow4675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5068) * ((-1 : F) * rho 5066 + (1 : F) * rho 5067) = ((2 : F) * rho 5065)

def relationRow4676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5069) * ((2 : F) + (1 : F) * rho 5066 + (-1 : F) * rho 5067) = ((1 : F) * rho 5066 + (1 : F) * rho 5067)

def relationLc843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4677 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc843 rho) = ((1 : F) * rho 5070)

def relationRow4678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5070) * ((1 : F) * rho 5068 + (1 : F) * rho 5069) = ((1 : F) * rho 5071)

def relationLc844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5069) * (relationLc844 rho) = ((1 : F) * rho 5072)

def relationLc845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5068) * (relationLc845 rho) = ((1 : F) * rho 5073)

def relationRow4681 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5072) * ((1 : F) * rho 5073) = ((1 : F) * rho 5074)

def relationRow4682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5075) * ((1 : F) + (1 : F) * rho 5074) = ((1 : F) * rho 5072 + (1 : F) * rho 5073)

def relationRow4683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5076) * ((1 : F) + (-1 : F) * rho 5074) = ((1 : F) * rho 5071 + (-1 : F) * rho 5072 + (-1 : F) * rho 5073)

def relationLc846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((1 : F), 5075)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * (relationLc846 rho) = ((1 : F) * rho 5077)

def relationLc847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((1 : F), 5076)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * (relationLc847 rho) = ((1 : F) * rho 5078)

def relationRow4686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5068) * ((1 : F) * rho 5069) = ((1 : F) * rho 5079)

def relationRow4687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5068) * ((1 : F) * rho 5068) = ((1 : F) * rho 5080)

def relationRow4688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5069) * ((1 : F) * rho 5069) = ((1 : F) * rho 5081)

def relationRow4689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5082) * ((-1 : F) * rho 5080 + (1 : F) * rho 5081) = ((2 : F) * rho 5079)

def relationRow4690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5083) * ((2 : F) + (1 : F) * rho 5080 + (-1 : F) * rho 5081) = ((1 : F) * rho 5080 + (1 : F) * rho 5081)

def relationLc848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4691 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc848 rho) = ((1 : F) * rho 5084)

def relationRow4692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5084) * ((1 : F) * rho 5082 + (1 : F) * rho 5083) = ((1 : F) * rho 5085)

def relationLc849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5083) * (relationLc849 rho) = ((1 : F) * rho 5086)

def relationLc850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5082) * (relationLc850 rho) = ((1 : F) * rho 5087)

def relationRow4695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5086) * ((1 : F) * rho 5087) = ((1 : F) * rho 5088)

def relationRow4696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5089) * ((1 : F) + (1 : F) * rho 5088) = ((1 : F) * rho 5086 + (1 : F) * rho 5087)

def relationRow4697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5090) * ((1 : F) + (-1 : F) * rho 5088) = ((1 : F) * rho 5085 + (-1 : F) * rho 5086 + (-1 : F) * rho 5087)

def relationLc851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((1 : F), 5089)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * (relationLc851 rho) = ((1 : F) * rho 5091)

def relationLc852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((1 : F), 5090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * (relationLc852 rho) = ((1 : F) * rho 5092)

def relationRow4700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5082) * ((1 : F) * rho 5083) = ((1 : F) * rho 5093)

def relationRow4701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5082) * ((1 : F) * rho 5082) = ((1 : F) * rho 5094)

def relationRow4702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5083) * ((1 : F) * rho 5083) = ((1 : F) * rho 5095)

def relationRow4703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5096) * ((-1 : F) * rho 5094 + (1 : F) * rho 5095) = ((2 : F) * rho 5093)

def relationRow4704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5097) * ((2 : F) + (1 : F) * rho 5094 + (-1 : F) * rho 5095) = ((1 : F) * rho 5094 + (1 : F) * rho 5095)

def relationLc853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4705 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc853 rho) = ((1 : F) * rho 5098)

def relationRow4706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5098) * ((1 : F) * rho 5096 + (1 : F) * rho 5097) = ((1 : F) * rho 5099)

def relationLc854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5097) * (relationLc854 rho) = ((1 : F) * rho 5100)

def relationLc855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5096) * (relationLc855 rho) = ((1 : F) * rho 5101)

def relationRow4709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5100) * ((1 : F) * rho 5101) = ((1 : F) * rho 5102)

def relationRow4710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5103) * ((1 : F) + (1 : F) * rho 5102) = ((1 : F) * rho 5100 + (1 : F) * rho 5101)

def relationRow4711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5104) * ((1 : F) + (-1 : F) * rho 5102) = ((1 : F) * rho 5099 + (-1 : F) * rho 5100 + (-1 : F) * rho 5101)

def relationLc856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((1 : F), 5103)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * (relationLc856 rho) = ((1 : F) * rho 5105)

def relationLc857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((1 : F), 5104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * (relationLc857 rho) = ((1 : F) * rho 5106)

def relationRow4714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5096) * ((1 : F) * rho 5097) = ((1 : F) * rho 5107)

def relationRow4715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5096) * ((1 : F) * rho 5096) = ((1 : F) * rho 5108)

def relationRow4716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5097) * ((1 : F) * rho 5097) = ((1 : F) * rho 5109)

def relationRow4717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * ((-1 : F) * rho 5108 + (1 : F) * rho 5109) = ((2 : F) * rho 5107)

def relationRow4718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5111) * ((2 : F) + (1 : F) * rho 5108 + (-1 : F) * rho 5109) = ((1 : F) * rho 5108 + (1 : F) * rho 5109)

def relationLc858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4719 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc858 rho) = ((1 : F) * rho 5112)

def relationRow4720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5112) * ((1 : F) * rho 5110 + (1 : F) * rho 5111) = ((1 : F) * rho 5113)

def relationLc859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5111) * (relationLc859 rho) = ((1 : F) * rho 5114)

def relationLc860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * (relationLc860 rho) = ((1 : F) * rho 5115)

def relationRow4723 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5114) * ((1 : F) * rho 5115) = ((1 : F) * rho 5116)

def relationRow4724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5117) * ((1 : F) + (1 : F) * rho 5116) = ((1 : F) * rho 5114 + (1 : F) * rho 5115)

def relationRow4725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5118) * ((1 : F) + (-1 : F) * rho 5116) = ((1 : F) * rho 5113 + (-1 : F) * rho 5114 + (-1 : F) * rho 5115)

def relationLc861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((1 : F), 5117)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (relationLc861 rho) = ((1 : F) * rho 5119)

def relationLc862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((1 : F), 5118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (relationLc862 rho) = ((1 : F) * rho 5120)

def relationRow4728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * ((1 : F) * rho 5111) = ((1 : F) * rho 5121)

def relationRow4729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * ((1 : F) * rho 5110) = ((1 : F) * rho 5122)

def relationRow4730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5111) * ((1 : F) * rho 5111) = ((1 : F) * rho 5123)

def relationRow4731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5124) * ((-1 : F) * rho 5122 + (1 : F) * rho 5123) = ((2 : F) * rho 5121)

def relationRow4732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5125) * ((2 : F) + (1 : F) * rho 5122 + (-1 : F) * rho 5123) = ((1 : F) * rho 5122 + (1 : F) * rho 5123)

def relationLc863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4733 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc863 rho) = ((1 : F) * rho 5126)

def relationRow4734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5126) * ((1 : F) * rho 5124 + (1 : F) * rho 5125) = ((1 : F) * rho 5127)

def relationLc864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5125) * (relationLc864 rho) = ((1 : F) * rho 5128)

def relationLc865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5124) * (relationLc865 rho) = ((1 : F) * rho 5129)

def relationRow4737 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5128) * ((1 : F) * rho 5129) = ((1 : F) * rho 5130)

def relationRow4738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5131) * ((1 : F) + (1 : F) * rho 5130) = ((1 : F) * rho 5128 + (1 : F) * rho 5129)

def relationRow4739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5132) * ((1 : F) + (-1 : F) * rho 5130) = ((1 : F) * rho 5127 + (-1 : F) * rho 5128 + (-1 : F) * rho 5129)

def relationLc866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((1 : F), 5131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc866 rho) = ((1 : F) * rho 5133)

def relationLc867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((1 : F), 5132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc867 rho) = ((1 : F) * rho 5134)

def relationRow4742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5124) * ((1 : F) * rho 5125) = ((1 : F) * rho 5135)

def relationRow4743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5124) * ((1 : F) * rho 5124) = ((1 : F) * rho 5136)

def relationRow4744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5125) * ((1 : F) * rho 5125) = ((1 : F) * rho 5137)

def relationRow4745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5138) * ((-1 : F) * rho 5136 + (1 : F) * rho 5137) = ((2 : F) * rho 5135)

def relationRow4746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5139) * ((2 : F) + (1 : F) * rho 5136 + (-1 : F) * rho 5137) = ((1 : F) * rho 5136 + (1 : F) * rho 5137)

def relationLc868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4747 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc868 rho) = ((1 : F) * rho 5140)

def relationRow4748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5140) * ((1 : F) * rho 5138 + (1 : F) * rho 5139) = ((1 : F) * rho 5141)

def relationLc869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5139) * (relationLc869 rho) = ((1 : F) * rho 5142)

def relationLc870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5138) * (relationLc870 rho) = ((1 : F) * rho 5143)

def relationRow4751 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5142) * ((1 : F) * rho 5143) = ((1 : F) * rho 5144)

def relationRow4752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5145) * ((1 : F) + (1 : F) * rho 5144) = ((1 : F) * rho 5142 + (1 : F) * rho 5143)

def relationRow4753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5146) * ((1 : F) + (-1 : F) * rho 5144) = ((1 : F) * rho 5141 + (-1 : F) * rho 5142 + (-1 : F) * rho 5143)

def relationLc871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((1 : F), 5145)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (relationLc871 rho) = ((1 : F) * rho 5147)

def relationLc872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((1 : F), 5146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (relationLc872 rho) = ((1 : F) * rho 5148)

def relationRow4756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5138) * ((1 : F) * rho 5139) = ((1 : F) * rho 5149)

def relationRow4757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5138) * ((1 : F) * rho 5138) = ((1 : F) * rho 5150)

def relationRow4758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5139) * ((1 : F) * rho 5139) = ((1 : F) * rho 5151)

def relationRow4759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5152) * ((-1 : F) * rho 5150 + (1 : F) * rho 5151) = ((2 : F) * rho 5149)

def relationRow4760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5153) * ((2 : F) + (1 : F) * rho 5150 + (-1 : F) * rho 5151) = ((1 : F) * rho 5150 + (1 : F) * rho 5151)

def relationLc873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4761 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc873 rho) = ((1 : F) * rho 5154)

def relationRow4762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5154) * ((1 : F) * rho 5152 + (1 : F) * rho 5153) = ((1 : F) * rho 5155)

def relationLc874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5153) * (relationLc874 rho) = ((1 : F) * rho 5156)

def relationLc875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5152) * (relationLc875 rho) = ((1 : F) * rho 5157)

def relationRow4765 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5156) * ((1 : F) * rho 5157) = ((1 : F) * rho 5158)

def relationRow4766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5159) * ((1 : F) + (1 : F) * rho 5158) = ((1 : F) * rho 5156 + (1 : F) * rho 5157)

def relationRow4767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5160) * ((1 : F) + (-1 : F) * rho 5158) = ((1 : F) * rho 5155 + (-1 : F) * rho 5156 + (-1 : F) * rho 5157)

def relationLc876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((1 : F), 5159)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (relationLc876 rho) = ((1 : F) * rho 5161)

def relationLc877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((1 : F), 5160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (relationLc877 rho) = ((1 : F) * rho 5162)

def relationRow4770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5152) * ((1 : F) * rho 5153) = ((1 : F) * rho 5163)

def relationRow4771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5152) * ((1 : F) * rho 5152) = ((1 : F) * rho 5164)

def relationRow4772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5153) * ((1 : F) * rho 5153) = ((1 : F) * rho 5165)

def relationRow4773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((-1 : F) * rho 5164 + (1 : F) * rho 5165) = ((2 : F) * rho 5163)

def relationRow4774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5167) * ((2 : F) + (1 : F) * rho 5164 + (-1 : F) * rho 5165) = ((1 : F) * rho 5164 + (1 : F) * rho 5165)

def relationLc878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4775 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc878 rho) = ((1 : F) * rho 5168)

def relationRow4776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5168) * ((1 : F) * rho 5166 + (1 : F) * rho 5167) = ((1 : F) * rho 5169)

def relationLc879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5167) * (relationLc879 rho) = ((1 : F) * rho 5170)

def relationLc880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * (relationLc880 rho) = ((1 : F) * rho 5171)

def relationRow4779 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5170) * ((1 : F) * rho 5171) = ((1 : F) * rho 5172)

def relationRow4780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5173) * ((1 : F) + (1 : F) * rho 5172) = ((1 : F) * rho 5170 + (1 : F) * rho 5171)

def relationRow4781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5174) * ((1 : F) + (-1 : F) * rho 5172) = ((1 : F) * rho 5169 + (-1 : F) * rho 5170 + (-1 : F) * rho 5171)

def relationLc881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((1 : F), 5173)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (relationLc881 rho) = ((1 : F) * rho 5175)

def relationLc882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((1 : F), 5174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (relationLc882 rho) = ((1 : F) * rho 5176)

def relationRow4784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((1 : F) * rho 5167) = ((1 : F) * rho 5177)

def relationRow4785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((1 : F) * rho 5166) = ((1 : F) * rho 5178)

def relationRow4786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5167) * ((1 : F) * rho 5167) = ((1 : F) * rho 5179)

def relationRow4787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * ((-1 : F) * rho 5178 + (1 : F) * rho 5179) = ((2 : F) * rho 5177)

def relationRow4788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5181) * ((2 : F) + (1 : F) * rho 5178 + (-1 : F) * rho 5179) = ((1 : F) * rho 5178 + (1 : F) * rho 5179)

def relationLc883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4789 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc883 rho) = ((1 : F) * rho 5182)

def relationRow4790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5182) * ((1 : F) * rho 5180 + (1 : F) * rho 5181) = ((1 : F) * rho 5183)

def relationLc884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5181) * (relationLc884 rho) = ((1 : F) * rho 5184)

def relationLc885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * (relationLc885 rho) = ((1 : F) * rho 5185)

def relationRow4793 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5184) * ((1 : F) * rho 5185) = ((1 : F) * rho 5186)

def relationRow4794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5187) * ((1 : F) + (1 : F) * rho 5186) = ((1 : F) * rho 5184 + (1 : F) * rho 5185)

def relationRow4795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5188) * ((1 : F) + (-1 : F) * rho 5186) = ((1 : F) * rho 5183 + (-1 : F) * rho 5184 + (-1 : F) * rho 5185)

def relationLc886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((1 : F), 5187)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2043) * (relationLc886 rho) = ((1 : F) * rho 5189)

def relationLc887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((1 : F), 5188)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2043) * (relationLc887 rho) = ((1 : F) * rho 5190)

def relationRow4798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * ((1 : F) * rho 5181) = ((1 : F) * rho 5191)

def relationRow4799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * ((1 : F) * rho 5180) = ((1 : F) * rho 5192)

def relationRow4800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5181) * ((1 : F) * rho 5181) = ((1 : F) * rho 5193)

def relationRow4801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((-1 : F) * rho 5192 + (1 : F) * rho 5193) = ((2 : F) * rho 5191)

def relationRow4802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5195) * ((2 : F) + (1 : F) * rho 5192 + (-1 : F) * rho 5193) = ((1 : F) * rho 5192 + (1 : F) * rho 5193)

def relationLc888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176), ((1 : F), 5189), ((1 : F), 5190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4803 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc888 rho) = ((1 : F) * rho 5196)

def relationRow4804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5196) * ((1 : F) * rho 5194 + (1 : F) * rho 5195) = ((1 : F) * rho 5197)

def relationLc889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175), ((1 : F), 5189)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5195) * (relationLc889 rho) = ((1 : F) * rho 5198)

def relationLc890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176), ((1 : F), 5190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * (relationLc890 rho) = ((1 : F) * rho 5199)

def relationRow4807 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5198) * ((1 : F) * rho 5199) = ((1 : F) * rho 5200)

def relationRow4808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5201) * ((1 : F) + (1 : F) * rho 5200) = ((1 : F) * rho 5198 + (1 : F) * rho 5199)

def relationRow4809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5202) * ((1 : F) + (-1 : F) * rho 5200) = ((1 : F) * rho 5197 + (-1 : F) * rho 5198 + (-1 : F) * rho 5199)

def relationLc891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((-1 : F), 5189), ((1 : F), 5201)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * (relationLc891 rho) = ((1 : F) * rho 5203)

def relationLc892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((-1 : F), 5190), ((1 : F), 5202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * (relationLc892 rho) = ((1 : F) * rho 5204)

def relationRow4812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((1 : F) * rho 5195) = ((1 : F) * rho 5205)

def relationRow4813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((1 : F) * rho 5194) = ((1 : F) * rho 5206)

def relationRow4814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5195) * ((1 : F) * rho 5195) = ((1 : F) * rho 5207)

def relationRow4815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5208) * ((-1 : F) * rho 5206 + (1 : F) * rho 5207) = ((2 : F) * rho 5205)

def relationRow4816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5209) * ((2 : F) + (1 : F) * rho 5206 + (-1 : F) * rho 5207) = ((1 : F) * rho 5206 + (1 : F) * rho 5207)

def relationLc893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176), ((1 : F), 5189), ((1 : F), 5190), ((1 : F), 5203), ((1 : F), 5204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4817 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc893 rho) = ((1 : F) * rho 5210)

def relationRow4818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5210) * ((1 : F) * rho 5208 + (1 : F) * rho 5209) = ((1 : F) * rho 5211)

def relationLc894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175), ((1 : F), 5189), ((1 : F), 5203)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5209) * (relationLc894 rho) = ((1 : F) * rho 5212)

def relationLc895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176), ((1 : F), 5190), ((1 : F), 5204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5208) * (relationLc895 rho) = ((1 : F) * rho 5213)

def relationRow4821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5212) * ((1 : F) * rho 5213) = ((1 : F) * rho 5214)

def relationRow4822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * ((1 : F) + (1 : F) * rho 5214) = ((1 : F) * rho 5212 + (1 : F) * rho 5213)

def relationRow4823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5216) * ((1 : F) + (-1 : F) * rho 5214) = ((1 : F) * rho 5211 + (-1 : F) * rho 5212 + (-1 : F) * rho 5213)

def relationLc896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((-1 : F), 5189), ((-1 : F), 5203), ((1 : F), 5215)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc896 rho) = ((1 : F) * rho 5217)

def relationLc897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((-1 : F), 5190), ((-1 : F), 5204), ((1 : F), 5216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc897 rho) = ((1 : F) * rho 5218)

def relationRow4826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5208) * ((1 : F) * rho 5209) = ((1 : F) * rho 5219)

def relationRow4827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5208) * ((1 : F) * rho 5208) = ((1 : F) * rho 5220)

def relationRow4828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5209) * ((1 : F) * rho 5209) = ((1 : F) * rho 5221)

def relationRow4829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5222) * ((-1 : F) * rho 5220 + (1 : F) * rho 5221) = ((2 : F) * rho 5219)

def relationRow4830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5223) * ((2 : F) + (1 : F) * rho 5220 + (-1 : F) * rho 5221) = ((1 : F) * rho 5220 + (1 : F) * rho 5221)

def relationLc898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176), ((1 : F), 5189), ((1 : F), 5190), ((1 : F), 5203), ((1 : F), 5204), ((1 : F), 5217), ((1 : F), 5218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4831 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc898 rho) = ((1 : F) * rho 5224)

def relationRow4832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5224) * ((1 : F) * rho 5222 + (1 : F) * rho 5223) = ((1 : F) * rho 5225)

def relationLc899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175), ((1 : F), 5189), ((1 : F), 5203), ((1 : F), 5217)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5223) * (relationLc899 rho) = ((1 : F) * rho 5226)

def relationLc900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176), ((1 : F), 5190), ((1 : F), 5204), ((1 : F), 5218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5222) * (relationLc900 rho) = ((1 : F) * rho 5227)

def relationRow4835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5226) * ((1 : F) * rho 5227) = ((1 : F) * rho 5228)

def relationRow4836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5229) * ((1 : F) + (1 : F) * rho 5228) = ((1 : F) * rho 5226 + (1 : F) * rho 5227)

def relationRow4837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5230) * ((1 : F) + (-1 : F) * rho 5228) = ((1 : F) * rho 5225 + (-1 : F) * rho 5226 + (-1 : F) * rho 5227)

def relationLc901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((-1 : F), 5189), ((-1 : F), 5203), ((-1 : F), 5217), ((1 : F), 5229)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (relationLc901 rho) = ((1 : F) * rho 5231)

def relationLc902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((-1 : F), 5190), ((-1 : F), 5204), ((-1 : F), 5218), ((1 : F), 5230)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (relationLc902 rho) = ((1 : F) * rho 5232)

def relationRow4840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5222) * ((1 : F) * rho 5223) = ((1 : F) * rho 5233)

def relationRow4841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5222) * ((1 : F) * rho 5222) = ((1 : F) * rho 5234)

def relationRow4842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5223) * ((1 : F) * rho 5223) = ((1 : F) * rho 5235)

def relationRow4843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5236) * ((-1 : F) * rho 5234 + (1 : F) * rho 5235) = ((2 : F) * rho 5233)

def relationRow4844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5237) * ((2 : F) + (1 : F) * rho 5234 + (-1 : F) * rho 5235) = ((1 : F) * rho 5234 + (1 : F) * rho 5235)

def relationLc903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176), ((1 : F), 5189), ((1 : F), 5190), ((1 : F), 5203), ((1 : F), 5204), ((1 : F), 5217), ((1 : F), 5218), ((1 : F), 5231), ((1 : F), 5232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4845 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc903 rho) = ((1 : F) * rho 5238)

def relationRow4846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5238) * ((1 : F) * rho 5236 + (1 : F) * rho 5237) = ((1 : F) * rho 5239)

def relationLc904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175), ((1 : F), 5189), ((1 : F), 5203), ((1 : F), 5217), ((1 : F), 5231)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5237) * (relationLc904 rho) = ((1 : F) * rho 5240)

def relationLc905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176), ((1 : F), 5190), ((1 : F), 5204), ((1 : F), 5218), ((1 : F), 5232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5236) * (relationLc905 rho) = ((1 : F) * rho 5241)

def relationRow4849 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5240) * ((1 : F) * rho 5241) = ((1 : F) * rho 5242)

def relationRow4850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5243) * ((1 : F) + (1 : F) * rho 5242) = ((1 : F) * rho 5240 + (1 : F) * rho 5241)

def relationRow4851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5244) * ((1 : F) + (-1 : F) * rho 5242) = ((1 : F) * rho 5239 + (-1 : F) * rho 5240 + (-1 : F) * rho 5241)

def relationLc906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((-1 : F), 5189), ((-1 : F), 5203), ((-1 : F), 5217), ((-1 : F), 5231), ((1 : F), 5243)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (relationLc906 rho) = ((1 : F) * rho 5245)

def relationLc907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((-1 : F), 5190), ((-1 : F), 5204), ((-1 : F), 5218), ((-1 : F), 5232), ((1 : F), 5244)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (relationLc907 rho) = ((1 : F) * rho 5246)

def relationRow4854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5236) * ((1 : F) * rho 5237) = ((1 : F) * rho 5247)

def relationRow4855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5236) * ((1 : F) * rho 5236) = ((1 : F) * rho 5248)

def relationRow4856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5237) * ((1 : F) * rho 5237) = ((1 : F) * rho 5249)

def relationRow4857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((-1 : F) * rho 5248 + (1 : F) * rho 5249) = ((2 : F) * rho 5247)

def relationRow4858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5251) * ((2 : F) + (1 : F) * rho 5248 + (-1 : F) * rho 5249) = ((1 : F) * rho 5248 + (1 : F) * rho 5249)

def relationLc908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176), ((1 : F), 5189), ((1 : F), 5190), ((1 : F), 5203), ((1 : F), 5204), ((1 : F), 5217), ((1 : F), 5218), ((1 : F), 5231), ((1 : F), 5232), ((1 : F), 5245), ((1 : F), 5246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4859 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc908 rho) = ((1 : F) * rho 5252)

def relationRow4860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5252) * ((1 : F) * rho 5250 + (1 : F) * rho 5251) = ((1 : F) * rho 5253)

def relationLc909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175), ((1 : F), 5189), ((1 : F), 5203), ((1 : F), 5217), ((1 : F), 5231), ((1 : F), 5245)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5251) * (relationLc909 rho) = ((1 : F) * rho 5254)

def relationLc910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176), ((1 : F), 5190), ((1 : F), 5204), ((1 : F), 5218), ((1 : F), 5232), ((1 : F), 5246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * (relationLc910 rho) = ((1 : F) * rho 5255)

def relationRow4863 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5254) * ((1 : F) * rho 5255) = ((1 : F) * rho 5256)

def relationRow4864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5257) * ((1 : F) + (1 : F) * rho 5256) = ((1 : F) * rho 5254 + (1 : F) * rho 5255)

def relationRow4865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5258) * ((1 : F) + (-1 : F) * rho 5256) = ((1 : F) * rho 5253 + (-1 : F) * rho 5254 + (-1 : F) * rho 5255)

def relationLc911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((-1 : F), 5189), ((-1 : F), 5203), ((-1 : F), 5217), ((-1 : F), 5231), ((-1 : F), 5245), ((1 : F), 5257)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc911 rho) = ((1 : F) * rho 5259)

def relationLc912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((-1 : F), 5190), ((-1 : F), 5204), ((-1 : F), 5218), ((-1 : F), 5232), ((-1 : F), 5246), ((1 : F), 5258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc912 rho) = ((1 : F) * rho 5260)

def relationRow4868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((1 : F) * rho 5251) = ((1 : F) * rho 5261)

def relationRow4869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((1 : F) * rho 5250) = ((1 : F) * rho 5262)

def relationRow4870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5251) * ((1 : F) * rho 5251) = ((1 : F) * rho 5263)

def relationRow4871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5264) * ((-1 : F) * rho 5262 + (1 : F) * rho 5263) = ((2 : F) * rho 5261)

def relationRow4872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5265) * ((2 : F) + (1 : F) * rho 5262 + (-1 : F) * rho 5263) = ((1 : F) * rho 5262 + (1 : F) * rho 5263)

def relationLc913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5064), ((1 : F), 5077), ((1 : F), 5078), ((1 : F), 5091), ((1 : F), 5092), ((1 : F), 5105), ((1 : F), 5106), ((1 : F), 5119), ((1 : F), 5120), ((1 : F), 5133), ((1 : F), 5134), ((1 : F), 5147), ((1 : F), 5148), ((1 : F), 5161), ((1 : F), 5162), ((1 : F), 5175), ((1 : F), 5176), ((1 : F), 5189), ((1 : F), 5190), ((1 : F), 5203), ((1 : F), 5204), ((1 : F), 5217), ((1 : F), 5218), ((1 : F), 5231), ((1 : F), 5232), ((1 : F), 5245), ((1 : F), 5246), ((1 : F), 5259), ((1 : F), 5260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4873 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc913 rho) = ((1 : F) * rho 5266)

def relationRow4874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5266) * ((1 : F) * rho 5264 + (1 : F) * rho 5265) = ((1 : F) * rho 5267)

def relationLc914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩], residual := [((1 : F), 5063), ((1 : F), 5077), ((1 : F), 5091), ((1 : F), 5105), ((1 : F), 5119), ((1 : F), 5133), ((1 : F), 5147), ((1 : F), 5161), ((1 : F), 5175), ((1 : F), 5189), ((1 : F), 5203), ((1 : F), 5217), ((1 : F), 5231), ((1 : F), 5245), ((1 : F), 5259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5265) * (relationLc914 rho) = ((1 : F) * rho 5268)

def relationLc915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩], residual := [((1 : F), 5064), ((1 : F), 5078), ((1 : F), 5092), ((1 : F), 5106), ((1 : F), 5120), ((1 : F), 5134), ((1 : F), 5148), ((1 : F), 5162), ((1 : F), 5176), ((1 : F), 5190), ((1 : F), 5204), ((1 : F), 5218), ((1 : F), 5232), ((1 : F), 5246), ((1 : F), 5260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5264) * (relationLc915 rho) = ((1 : F) * rho 5269)

def relationRow4877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5268) * ((1 : F) * rho 5269) = ((1 : F) * rho 5270)

def relationRow4878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5271) * ((1 : F) + (1 : F) * rho 5270) = ((1 : F) * rho 5268 + (1 : F) * rho 5269)

def relationRow4879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5272) * ((1 : F) + (-1 : F) * rho 5270) = ((1 : F) * rho 5267 + (-1 : F) * rho 5268 + (-1 : F) * rho 5269)

def relationLc916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩], residual := [((-1 : F), 5063), ((-1 : F), 5077), ((-1 : F), 5091), ((-1 : F), 5105), ((-1 : F), 5119), ((-1 : F), 5133), ((-1 : F), 5147), ((-1 : F), 5161), ((-1 : F), 5175), ((-1 : F), 5189), ((-1 : F), 5203), ((-1 : F), 5217), ((-1 : F), 5231), ((-1 : F), 5245), ((-1 : F), 5259), ((1 : F), 5271)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2049) * (relationLc916 rho) = ((1 : F) * rho 5273)

def relationLc917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩], residual := [((-1 : F), 5064), ((-1 : F), 5078), ((-1 : F), 5092), ((-1 : F), 5106), ((-1 : F), 5120), ((-1 : F), 5134), ((-1 : F), 5148), ((-1 : F), 5162), ((-1 : F), 5176), ((-1 : F), 5190), ((-1 : F), 5204), ((-1 : F), 5218), ((-1 : F), 5232), ((-1 : F), 5246), ((-1 : F), 5260), ((1 : F), 5272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2049) * (relationLc917 rho) = ((1 : F) * rho 5274)

def relationRow4882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5264) * ((1 : F) * rho 5265) = ((1 : F) * rho 5275)

def relationRow4883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5264) * ((1 : F) * rho 5264) = ((1 : F) * rho 5276)

def relationRow4884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5265) * ((1 : F) * rho 5265) = ((1 : F) * rho 5277)

def relationRow4885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5278) * ((-1 : F) * rho 5276 + (1 : F) * rho 5277) = ((2 : F) * rho 5275)

def relationRow4886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5279) * ((2 : F) + (1 : F) * rho 5276 + (-1 : F) * rho 5277) = ((1 : F) * rho 5276 + (1 : F) * rho 5277)

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩, ⟨(1 : F), 5063, 14, 16⟩, ⟨(1 : F), 5064, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4887 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc918 rho) = ((1 : F) * rho 5280)

def relationRow4888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5280) * ((1 : F) * rho 5278 + (1 : F) * rho 5279) = ((1 : F) * rho 5281)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 5063, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5279) * (relationLc919 rho) = ((1 : F) * rho 5282)

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩, ⟨(1 : F), 5064, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5278) * (relationLc920 rho) = ((1 : F) * rho 5283)

def relationRow4891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5282) * ((1 : F) * rho 5283) = ((1 : F) * rho 5284)

def relationRow4892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5285) * ((1 : F) + (1 : F) * rho 5284) = ((1 : F) * rho 5282 + (1 : F) * rho 5283)

def relationRow4893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5286) * ((1 : F) + (-1 : F) * rho 5284) = ((1 : F) * rho 5281 + (-1 : F) * rho 5282 + (-1 : F) * rho 5283)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩, ⟨(-1 : F), 5063, 14, 16⟩], residual := [((1 : F), 5285)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * (relationLc921 rho) = ((1 : F) * rho 5287)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩, ⟨(-1 : F), 5064, 14, 16⟩], residual := [((1 : F), 5286)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * (relationLc922 rho) = ((1 : F) * rho 5288)

def relationRow4896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5278) * ((1 : F) * rho 5279) = ((1 : F) * rho 5289)

def relationRow4897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5278) * ((1 : F) * rho 5278) = ((1 : F) * rho 5290)

def relationRow4898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5279) * ((1 : F) * rho 5279) = ((1 : F) * rho 5291)

def relationRow4899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5292) * ((-1 : F) * rho 5290 + (1 : F) * rho 5291) = ((2 : F) * rho 5289)

def relationRow4900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5293) * ((2 : F) + (1 : F) * rho 5290 + (-1 : F) * rho 5291) = ((1 : F) * rho 5290 + (1 : F) * rho 5291)

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 3113, 13, 150⟩, ⟨(1 : F), 5063, 14, 17⟩, ⟨(1 : F), 5064, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4901 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc923 rho) = ((1 : F) * rho 5294)

def relationRow4902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5294) * ((1 : F) * rho 5292 + (1 : F) * rho 5293) = ((1 : F) * rho 5295)

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 150⟩, ⟨(1 : F), 5063, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5293) * (relationLc924 rho) = ((1 : F) * rho 5296)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 150⟩, ⟨(1 : F), 5064, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5292) * (relationLc925 rho) = ((1 : F) * rho 5297)

def relationRow4905 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5296) * ((1 : F) * rho 5297) = ((1 : F) * rho 5298)

def relationRow4906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5299) * ((1 : F) + (1 : F) * rho 5298) = ((1 : F) * rho 5296 + (1 : F) * rho 5297)

def relationRow4907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5300) * ((1 : F) + (-1 : F) * rho 5298) = ((1 : F) * rho 5295 + (-1 : F) * rho 5296 + (-1 : F) * rho 5297)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 150⟩, ⟨(-1 : F), 5063, 14, 17⟩], residual := [((1 : F), 5299)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (relationLc926 rho) = ((1 : F) * rho 5301)

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 150⟩, ⟨(-1 : F), 5064, 14, 17⟩], residual := [((1 : F), 5300)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (relationLc927 rho) = ((1 : F) * rho 5302)

def relationRow4910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5292) * ((1 : F) * rho 5293) = ((1 : F) * rho 5303)

def relationRow4911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5292) * ((1 : F) * rho 5292) = ((1 : F) * rho 5304)

def relationRow4912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5293) * ((1 : F) * rho 5293) = ((1 : F) * rho 5305)

def relationRow4913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5306) * ((-1 : F) * rho 5304 + (1 : F) * rho 5305) = ((2 : F) * rho 5303)

def relationRow4914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5307) * ((2 : F) + (1 : F) * rho 5304 + (-1 : F) * rho 5305) = ((1 : F) * rho 5304 + (1 : F) * rho 5305)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
