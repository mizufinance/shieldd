import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs90

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * (relationLc742 rho) = ((1 : F) * rho 3911)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3908) * (relationLc743 rho) = ((1 : F) * rho 3912)

def relationRow4419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3911) * ((1 : F) * rho 3912) = ((1 : F) * rho 3913)

def relationRow4420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3914) * ((1 : F) + (1 : F) * rho 3913) = ((1 : F) * rho 3911 + (1 : F) * rho 3912)

def relationRow4421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3915) * ((1 : F) + (-1 : F) * rho 3913) = ((1 : F) * rho 3910 + (-1 : F) * rho 3911 + (-1 : F) * rho 3912)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 130⟩], residual := [((-1 : F), 2212), ((1 : F), 3914)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1114) * (relationLc744 rho) = ((1 : F) * rho 3916)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 131⟩], residual := [((1 : F), 3915)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1114) * (relationLc745 rho) = ((1 : F) * rho 3917)

def relationRow4424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3908) * ((1 : F) * rho 3909) = ((1 : F) * rho 3918)

def relationRow4425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3908) * ((1 : F) * rho 3908) = ((1 : F) * rho 3919)

def relationRow4426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((1 : F) * rho 3909) = ((1 : F) * rho 3920)

def relationRow4427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3921) * ((-1 : F) * rho 3919 + (1 : F) * rho 3920) = ((2 : F) * rho 3918)

def relationRow4428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3922) * ((2 : F) + (1 : F) * rho 3919 + (-1 : F) * rho 3920) = ((1 : F) * rho 3919 + (1 : F) * rho 3920)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 132⟩, ⟨(1 : F), 2226, 13, 131⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3921 + (1 : F) * rho 3922) * (relationLc746 rho) = ((1 : F) * rho 3923)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 131⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3922) * (relationLc747 rho) = ((1 : F) * rho 3924)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3921) * (relationLc748 rho) = ((1 : F) * rho 3925)

def relationRow4432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3924) * ((1 : F) * rho 3925) = ((1 : F) * rho 3926)

def relationRow4433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3927) * ((1 : F) + (1 : F) * rho 3926) = ((1 : F) * rho 3924 + (1 : F) * rho 3925)

def relationRow4434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3928) * ((1 : F) + (-1 : F) * rho 3926) = ((1 : F) * rho 3923 + (-1 : F) * rho 3924 + (-1 : F) * rho 3925)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 131⟩], residual := [((-1 : F), 2212), ((1 : F), 3927)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1115) * (relationLc749 rho) = ((1 : F) * rho 3929)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 132⟩], residual := [((1 : F), 3928)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1115) * (relationLc750 rho) = ((1 : F) * rho 3930)

def relationRow4437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3921) * ((1 : F) * rho 3922) = ((1 : F) * rho 3931)

def relationRow4438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3921) * ((1 : F) * rho 3921) = ((1 : F) * rho 3932)

def relationRow4439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3922) * ((1 : F) * rho 3922) = ((1 : F) * rho 3933)

def relationRow4440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3934) * ((-1 : F) * rho 3932 + (1 : F) * rho 3933) = ((2 : F) * rho 3931)

def relationRow4441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3935) * ((2 : F) + (1 : F) * rho 3932 + (-1 : F) * rho 3933) = ((1 : F) * rho 3932 + (1 : F) * rho 3933)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 133⟩, ⟨(1 : F), 2226, 13, 132⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3934 + (1 : F) * rho 3935) * (relationLc751 rho) = ((1 : F) * rho 3936)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 132⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3935) * (relationLc752 rho) = ((1 : F) * rho 3937)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3934) * (relationLc753 rho) = ((1 : F) * rho 3938)

def relationRow4445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3937) * ((1 : F) * rho 3938) = ((1 : F) * rho 3939)

def relationRow4446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3940) * ((1 : F) + (1 : F) * rho 3939) = ((1 : F) * rho 3937 + (1 : F) * rho 3938)

def relationRow4447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3941) * ((1 : F) + (-1 : F) * rho 3939) = ((1 : F) * rho 3936 + (-1 : F) * rho 3937 + (-1 : F) * rho 3938)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 132⟩], residual := [((-1 : F), 2212), ((1 : F), 3940)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1116) * (relationLc754 rho) = ((1 : F) * rho 3942)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 133⟩], residual := [((1 : F), 3941)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1116) * (relationLc755 rho) = ((1 : F) * rho 3943)

def relationRow4450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3934) * ((1 : F) * rho 3935) = ((1 : F) * rho 3944)

def relationRow4451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3934) * ((1 : F) * rho 3934) = ((1 : F) * rho 3945)

def relationRow4452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3935) * ((1 : F) * rho 3935) = ((1 : F) * rho 3946)

def relationRow4453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3947) * ((-1 : F) * rho 3945 + (1 : F) * rho 3946) = ((2 : F) * rho 3944)

def relationRow4454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3948) * ((2 : F) + (1 : F) * rho 3945 + (-1 : F) * rho 3946) = ((1 : F) * rho 3945 + (1 : F) * rho 3946)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 134⟩, ⟨(1 : F), 2226, 13, 133⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3947 + (1 : F) * rho 3948) * (relationLc756 rho) = ((1 : F) * rho 3949)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 133⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3948) * (relationLc757 rho) = ((1 : F) * rho 3950)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3947) * (relationLc758 rho) = ((1 : F) * rho 3951)

def relationRow4458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3950) * ((1 : F) * rho 3951) = ((1 : F) * rho 3952)

def relationRow4459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3953) * ((1 : F) + (1 : F) * rho 3952) = ((1 : F) * rho 3950 + (1 : F) * rho 3951)

def relationRow4460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3954) * ((1 : F) + (-1 : F) * rho 3952) = ((1 : F) * rho 3949 + (-1 : F) * rho 3950 + (-1 : F) * rho 3951)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 133⟩], residual := [((-1 : F), 2212), ((1 : F), 3953)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1117) * (relationLc759 rho) = ((1 : F) * rho 3955)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 134⟩], residual := [((1 : F), 3954)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1117) * (relationLc760 rho) = ((1 : F) * rho 3956)

def relationRow4463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3947) * ((1 : F) * rho 3948) = ((1 : F) * rho 3957)

def relationRow4464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3947) * ((1 : F) * rho 3947) = ((1 : F) * rho 3958)

def relationRow4465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3948) * ((1 : F) * rho 3948) = ((1 : F) * rho 3959)

def relationRow4466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3960) * ((-1 : F) * rho 3958 + (1 : F) * rho 3959) = ((2 : F) * rho 3957)

def relationRow4467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3961) * ((2 : F) + (1 : F) * rho 3958 + (-1 : F) * rho 3959) = ((1 : F) * rho 3958 + (1 : F) * rho 3959)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 135⟩, ⟨(1 : F), 2226, 13, 134⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3960 + (1 : F) * rho 3961) * (relationLc761 rho) = ((1 : F) * rho 3962)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 134⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3961) * (relationLc762 rho) = ((1 : F) * rho 3963)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3960) * (relationLc763 rho) = ((1 : F) * rho 3964)

def relationRow4471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3963) * ((1 : F) * rho 3964) = ((1 : F) * rho 3965)

def relationRow4472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3966) * ((1 : F) + (1 : F) * rho 3965) = ((1 : F) * rho 3963 + (1 : F) * rho 3964)

def relationRow4473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3967) * ((1 : F) + (-1 : F) * rho 3965) = ((1 : F) * rho 3962 + (-1 : F) * rho 3963 + (-1 : F) * rho 3964)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 134⟩], residual := [((-1 : F), 2212), ((1 : F), 3966)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1118) * (relationLc764 rho) = ((1 : F) * rho 3968)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 135⟩], residual := [((1 : F), 3967)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1118) * (relationLc765 rho) = ((1 : F) * rho 3969)

def relationRow4476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3960) * ((1 : F) * rho 3961) = ((1 : F) * rho 3970)

def relationRow4477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3960) * ((1 : F) * rho 3960) = ((1 : F) * rho 3971)

def relationRow4478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3961) * ((1 : F) * rho 3961) = ((1 : F) * rho 3972)

def relationRow4479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3973) * ((-1 : F) * rho 3971 + (1 : F) * rho 3972) = ((2 : F) * rho 3970)

def relationRow4480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3974) * ((2 : F) + (1 : F) * rho 3971 + (-1 : F) * rho 3972) = ((1 : F) * rho 3971 + (1 : F) * rho 3972)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 136⟩, ⟨(1 : F), 2226, 13, 135⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3973 + (1 : F) * rho 3974) * (relationLc766 rho) = ((1 : F) * rho 3975)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 135⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3974) * (relationLc767 rho) = ((1 : F) * rho 3976)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3973) * (relationLc768 rho) = ((1 : F) * rho 3977)

def relationRow4484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3976) * ((1 : F) * rho 3977) = ((1 : F) * rho 3978)

def relationRow4485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3979) * ((1 : F) + (1 : F) * rho 3978) = ((1 : F) * rho 3976 + (1 : F) * rho 3977)

def relationRow4486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3980) * ((1 : F) + (-1 : F) * rho 3978) = ((1 : F) * rho 3975 + (-1 : F) * rho 3976 + (-1 : F) * rho 3977)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 135⟩], residual := [((-1 : F), 2212), ((1 : F), 3979)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1119) * (relationLc769 rho) = ((1 : F) * rho 3981)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 136⟩], residual := [((1 : F), 3980)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1119) * (relationLc770 rho) = ((1 : F) * rho 3982)

def relationRow4489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3973) * ((1 : F) * rho 3974) = ((1 : F) * rho 3983)

def relationRow4490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3973) * ((1 : F) * rho 3973) = ((1 : F) * rho 3984)

def relationRow4491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3974) * ((1 : F) * rho 3974) = ((1 : F) * rho 3985)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
