import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs89

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 124⟩], residual := [((-1 : F), 2212), ((1 : F), 3836)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1108) * (relationLc714 rho) = ((1 : F) * rho 3838)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 125⟩], residual := [((1 : F), 3837)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1108) * (relationLc715 rho) = ((1 : F) * rho 3839)

def relationRow4346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3830) * ((1 : F) * rho 3831) = ((1 : F) * rho 3840)

def relationRow4347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3830) * ((1 : F) * rho 3830) = ((1 : F) * rho 3841)

def relationRow4348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * ((1 : F) * rho 3831) = ((1 : F) * rho 3842)

def relationRow4349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * ((-1 : F) * rho 3841 + (1 : F) * rho 3842) = ((2 : F) * rho 3840)

def relationRow4350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * ((2 : F) + (1 : F) * rho 3841 + (-1 : F) * rho 3842) = ((1 : F) * rho 3841 + (1 : F) * rho 3842)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 126⟩, ⟨(1 : F), 2226, 13, 125⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843 + (1 : F) * rho 3844) * (relationLc716 rho) = ((1 : F) * rho 3845)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 125⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * (relationLc717 rho) = ((1 : F) * rho 3846)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * (relationLc718 rho) = ((1 : F) * rho 3847)

def relationRow4354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3846) * ((1 : F) * rho 3847) = ((1 : F) * rho 3848)

def relationRow4355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3849) * ((1 : F) + (1 : F) * rho 3848) = ((1 : F) * rho 3846 + (1 : F) * rho 3847)

def relationRow4356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3850) * ((1 : F) + (-1 : F) * rho 3848) = ((1 : F) * rho 3845 + (-1 : F) * rho 3846 + (-1 : F) * rho 3847)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 125⟩], residual := [((-1 : F), 2212), ((1 : F), 3849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1109) * (relationLc719 rho) = ((1 : F) * rho 3851)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 126⟩], residual := [((1 : F), 3850)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1109) * (relationLc720 rho) = ((1 : F) * rho 3852)

def relationRow4359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * ((1 : F) * rho 3844) = ((1 : F) * rho 3853)

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3843) * ((1 : F) * rho 3843) = ((1 : F) * rho 3854)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * ((1 : F) * rho 3844) = ((1 : F) * rho 3855)

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3856) * ((-1 : F) * rho 3854 + (1 : F) * rho 3855) = ((2 : F) * rho 3853)

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3857) * ((2 : F) + (1 : F) * rho 3854 + (-1 : F) * rho 3855) = ((1 : F) * rho 3854 + (1 : F) * rho 3855)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 127⟩, ⟨(1 : F), 2226, 13, 126⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3856 + (1 : F) * rho 3857) * (relationLc721 rho) = ((1 : F) * rho 3858)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 126⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3857) * (relationLc722 rho) = ((1 : F) * rho 3859)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3856) * (relationLc723 rho) = ((1 : F) * rho 3860)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3859) * ((1 : F) * rho 3860) = ((1 : F) * rho 3861)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3862) * ((1 : F) + (1 : F) * rho 3861) = ((1 : F) * rho 3859 + (1 : F) * rho 3860)

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3863) * ((1 : F) + (-1 : F) * rho 3861) = ((1 : F) * rho 3858 + (-1 : F) * rho 3859 + (-1 : F) * rho 3860)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 126⟩], residual := [((-1 : F), 2212), ((1 : F), 3862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1110) * (relationLc724 rho) = ((1 : F) * rho 3864)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 127⟩], residual := [((1 : F), 3863)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1110) * (relationLc725 rho) = ((1 : F) * rho 3865)

def relationRow4372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3856) * ((1 : F) * rho 3857) = ((1 : F) * rho 3866)

def relationRow4373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3856) * ((1 : F) * rho 3856) = ((1 : F) * rho 3867)

def relationRow4374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3857) * ((1 : F) * rho 3857) = ((1 : F) * rho 3868)

def relationRow4375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3869) * ((-1 : F) * rho 3867 + (1 : F) * rho 3868) = ((2 : F) * rho 3866)

def relationRow4376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((2 : F) + (1 : F) * rho 3867 + (-1 : F) * rho 3868) = ((1 : F) * rho 3867 + (1 : F) * rho 3868)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 128⟩, ⟨(1 : F), 2226, 13, 127⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3869 + (1 : F) * rho 3870) * (relationLc726 rho) = ((1 : F) * rho 3871)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 127⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * (relationLc727 rho) = ((1 : F) * rho 3872)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3869) * (relationLc728 rho) = ((1 : F) * rho 3873)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3872) * ((1 : F) * rho 3873) = ((1 : F) * rho 3874)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3875) * ((1 : F) + (1 : F) * rho 3874) = ((1 : F) * rho 3872 + (1 : F) * rho 3873)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3876) * ((1 : F) + (-1 : F) * rho 3874) = ((1 : F) * rho 3871 + (-1 : F) * rho 3872 + (-1 : F) * rho 3873)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 127⟩], residual := [((-1 : F), 2212), ((1 : F), 3875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1111) * (relationLc729 rho) = ((1 : F) * rho 3877)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 128⟩], residual := [((1 : F), 3876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1111) * (relationLc730 rho) = ((1 : F) * rho 3878)

def relationRow4385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3869) * ((1 : F) * rho 3870) = ((1 : F) * rho 3879)

def relationRow4386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3869) * ((1 : F) * rho 3869) = ((1 : F) * rho 3880)

def relationRow4387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((1 : F) * rho 3870) = ((1 : F) * rho 3881)

def relationRow4388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3882) * ((-1 : F) * rho 3880 + (1 : F) * rho 3881) = ((2 : F) * rho 3879)

def relationRow4389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3883) * ((2 : F) + (1 : F) * rho 3880 + (-1 : F) * rho 3881) = ((1 : F) * rho 3880 + (1 : F) * rho 3881)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 129⟩, ⟨(1 : F), 2226, 13, 128⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3882 + (1 : F) * rho 3883) * (relationLc731 rho) = ((1 : F) * rho 3884)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 128⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3883) * (relationLc732 rho) = ((1 : F) * rho 3885)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3882) * (relationLc733 rho) = ((1 : F) * rho 3886)

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3885) * ((1 : F) * rho 3886) = ((1 : F) * rho 3887)

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3888) * ((1 : F) + (1 : F) * rho 3887) = ((1 : F) * rho 3885 + (1 : F) * rho 3886)

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3889) * ((1 : F) + (-1 : F) * rho 3887) = ((1 : F) * rho 3884 + (-1 : F) * rho 3885 + (-1 : F) * rho 3886)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 128⟩], residual := [((-1 : F), 2212), ((1 : F), 3888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1112) * (relationLc734 rho) = ((1 : F) * rho 3890)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 129⟩], residual := [((1 : F), 3889)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1112) * (relationLc735 rho) = ((1 : F) * rho 3891)

def relationRow4398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3882) * ((1 : F) * rho 3883) = ((1 : F) * rho 3892)

def relationRow4399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3882) * ((1 : F) * rho 3882) = ((1 : F) * rho 3893)

def relationRow4400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3883) * ((1 : F) * rho 3883) = ((1 : F) * rho 3894)

def relationRow4401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3895) * ((-1 : F) * rho 3893 + (1 : F) * rho 3894) = ((2 : F) * rho 3892)

def relationRow4402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3896) * ((2 : F) + (1 : F) * rho 3893 + (-1 : F) * rho 3894) = ((1 : F) * rho 3893 + (1 : F) * rho 3894)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 130⟩, ⟨(1 : F), 2226, 13, 129⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3895 + (1 : F) * rho 3896) * (relationLc736 rho) = ((1 : F) * rho 3897)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 129⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3896) * (relationLc737 rho) = ((1 : F) * rho 3898)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3895) * (relationLc738 rho) = ((1 : F) * rho 3899)

def relationRow4406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3898) * ((1 : F) * rho 3899) = ((1 : F) * rho 3900)

def relationRow4407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3901) * ((1 : F) + (1 : F) * rho 3900) = ((1 : F) * rho 3898 + (1 : F) * rho 3899)

def relationRow4408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3902) * ((1 : F) + (-1 : F) * rho 3900) = ((1 : F) * rho 3897 + (-1 : F) * rho 3898 + (-1 : F) * rho 3899)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 129⟩], residual := [((-1 : F), 2212), ((1 : F), 3901)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1113) * (relationLc739 rho) = ((1 : F) * rho 3903)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 130⟩], residual := [((1 : F), 3902)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1113) * (relationLc740 rho) = ((1 : F) * rho 3904)

def relationRow4411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3895) * ((1 : F) * rho 3896) = ((1 : F) * rho 3905)

def relationRow4412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3895) * ((1 : F) * rho 3895) = ((1 : F) * rho 3906)

def relationRow4413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3896) * ((1 : F) * rho 3896) = ((1 : F) * rho 3907)

def relationRow4414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3908) * ((-1 : F) * rho 3906 + (1 : F) * rho 3907) = ((2 : F) * rho 3905)

def relationRow4415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((2 : F) + (1 : F) * rho 3906 + (-1 : F) * rho 3907) = ((1 : F) * rho 3906 + (1 : F) * rho 3907)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 131⟩, ⟨(1 : F), 2226, 13, 130⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3908 + (1 : F) * rho 3909) * (relationLc741 rho) = ((1 : F) * rho 3910)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 130⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
