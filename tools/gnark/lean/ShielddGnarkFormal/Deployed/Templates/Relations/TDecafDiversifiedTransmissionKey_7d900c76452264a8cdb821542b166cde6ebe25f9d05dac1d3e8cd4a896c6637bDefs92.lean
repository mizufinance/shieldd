import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs91

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow4492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986) * ((-1 : F) * rho 3984 + (1 : F) * rho 3985) = ((2 : F) * rho 3983)

def relationRow4493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3987) * ((2 : F) + (1 : F) * rho 3984 + (-1 : F) * rho 3985) = ((1 : F) * rho 3984 + (1 : F) * rho 3985)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 137⟩, ⟨(1 : F), 2226, 13, 136⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986 + (1 : F) * rho 3987) * (relationLc771 rho) = ((1 : F) * rho 3988)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 136⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3987) * (relationLc772 rho) = ((1 : F) * rho 3989)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986) * (relationLc773 rho) = ((1 : F) * rho 3990)

def relationRow4497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3989) * ((1 : F) * rho 3990) = ((1 : F) * rho 3991)

def relationRow4498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3992) * ((1 : F) + (1 : F) * rho 3991) = ((1 : F) * rho 3989 + (1 : F) * rho 3990)

def relationRow4499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3993) * ((1 : F) + (-1 : F) * rho 3991) = ((1 : F) * rho 3988 + (-1 : F) * rho 3989 + (-1 : F) * rho 3990)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 136⟩], residual := [((-1 : F), 2212), ((1 : F), 3992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * (relationLc774 rho) = ((1 : F) * rho 3994)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 137⟩], residual := [((1 : F), 3993)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * (relationLc775 rho) = ((1 : F) * rho 3995)

def relationRow4502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986) * ((1 : F) * rho 3987) = ((1 : F) * rho 3996)

def relationRow4503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986) * ((1 : F) * rho 3986) = ((1 : F) * rho 3997)

def relationRow4504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3987) * ((1 : F) * rho 3987) = ((1 : F) * rho 3998)

def relationRow4505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3999) * ((-1 : F) * rho 3997 + (1 : F) * rho 3998) = ((2 : F) * rho 3996)

def relationRow4506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4000) * ((2 : F) + (1 : F) * rho 3997 + (-1 : F) * rho 3998) = ((1 : F) * rho 3997 + (1 : F) * rho 3998)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 138⟩, ⟨(1 : F), 2226, 13, 137⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3999 + (1 : F) * rho 4000) * (relationLc776 rho) = ((1 : F) * rho 4001)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 137⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4000) * (relationLc777 rho) = ((1 : F) * rho 4002)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3999) * (relationLc778 rho) = ((1 : F) * rho 4003)

def relationRow4510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4002) * ((1 : F) * rho 4003) = ((1 : F) * rho 4004)

def relationRow4511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4005) * ((1 : F) + (1 : F) * rho 4004) = ((1 : F) * rho 4002 + (1 : F) * rho 4003)

def relationRow4512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4006) * ((1 : F) + (-1 : F) * rho 4004) = ((1 : F) * rho 4001 + (-1 : F) * rho 4002 + (-1 : F) * rho 4003)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 137⟩], residual := [((-1 : F), 2212), ((1 : F), 4005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * (relationLc779 rho) = ((1 : F) * rho 4007)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 138⟩], residual := [((1 : F), 4006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * (relationLc780 rho) = ((1 : F) * rho 4008)

def relationRow4515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3999) * ((1 : F) * rho 4000) = ((1 : F) * rho 4009)

def relationRow4516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3999) * ((1 : F) * rho 3999) = ((1 : F) * rho 4010)

def relationRow4517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4000) * ((1 : F) * rho 4000) = ((1 : F) * rho 4011)

def relationRow4518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4012) * ((-1 : F) * rho 4010 + (1 : F) * rho 4011) = ((2 : F) * rho 4009)

def relationRow4519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((2 : F) + (1 : F) * rho 4010 + (-1 : F) * rho 4011) = ((1 : F) * rho 4010 + (1 : F) * rho 4011)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 139⟩, ⟨(1 : F), 2226, 13, 138⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4012 + (1 : F) * rho 4013) * (relationLc781 rho) = ((1 : F) * rho 4014)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 138⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * (relationLc782 rho) = ((1 : F) * rho 4015)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4012) * (relationLc783 rho) = ((1 : F) * rho 4016)

def relationRow4523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4015) * ((1 : F) * rho 4016) = ((1 : F) * rho 4017)

def relationRow4524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4018) * ((1 : F) + (1 : F) * rho 4017) = ((1 : F) * rho 4015 + (1 : F) * rho 4016)

def relationRow4525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4019) * ((1 : F) + (-1 : F) * rho 4017) = ((1 : F) * rho 4014 + (-1 : F) * rho 4015 + (-1 : F) * rho 4016)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 138⟩], residual := [((-1 : F), 2212), ((1 : F), 4018)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1122) * (relationLc784 rho) = ((1 : F) * rho 4020)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 139⟩], residual := [((1 : F), 4019)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1122) * (relationLc785 rho) = ((1 : F) * rho 4021)

def relationRow4528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4012) * ((1 : F) * rho 4013) = ((1 : F) * rho 4022)

def relationRow4529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4012) * ((1 : F) * rho 4012) = ((1 : F) * rho 4023)

def relationRow4530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((1 : F) * rho 4013) = ((1 : F) * rho 4024)

def relationRow4531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025) * ((-1 : F) * rho 4023 + (1 : F) * rho 4024) = ((2 : F) * rho 4022)

def relationRow4532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4026) * ((2 : F) + (1 : F) * rho 4023 + (-1 : F) * rho 4024) = ((1 : F) * rho 4023 + (1 : F) * rho 4024)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 140⟩, ⟨(1 : F), 2226, 13, 139⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025 + (1 : F) * rho 4026) * (relationLc786 rho) = ((1 : F) * rho 4027)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 139⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4026) * (relationLc787 rho) = ((1 : F) * rho 4028)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025) * (relationLc788 rho) = ((1 : F) * rho 4029)

def relationRow4536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4028) * ((1 : F) * rho 4029) = ((1 : F) * rho 4030)

def relationRow4537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4031) * ((1 : F) + (1 : F) * rho 4030) = ((1 : F) * rho 4028 + (1 : F) * rho 4029)

def relationRow4538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4032) * ((1 : F) + (-1 : F) * rho 4030) = ((1 : F) * rho 4027 + (-1 : F) * rho 4028 + (-1 : F) * rho 4029)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 139⟩], residual := [((-1 : F), 2212), ((1 : F), 4031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * (relationLc789 rho) = ((1 : F) * rho 4033)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 140⟩], residual := [((1 : F), 4032)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * (relationLc790 rho) = ((1 : F) * rho 4034)

def relationRow4541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025) * ((1 : F) * rho 4026) = ((1 : F) * rho 4035)

def relationRow4542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025) * ((1 : F) * rho 4025) = ((1 : F) * rho 4036)

def relationRow4543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4026) * ((1 : F) * rho 4026) = ((1 : F) * rho 4037)

def relationRow4544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4038) * ((-1 : F) * rho 4036 + (1 : F) * rho 4037) = ((2 : F) * rho 4035)

def relationRow4545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4039) * ((2 : F) + (1 : F) * rho 4036 + (-1 : F) * rho 4037) = ((1 : F) * rho 4036 + (1 : F) * rho 4037)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 141⟩, ⟨(1 : F), 2226, 13, 140⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4038 + (1 : F) * rho 4039) * (relationLc791 rho) = ((1 : F) * rho 4040)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 140⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4039) * (relationLc792 rho) = ((1 : F) * rho 4041)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4038) * (relationLc793 rho) = ((1 : F) * rho 4042)

def relationRow4549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4041) * ((1 : F) * rho 4042) = ((1 : F) * rho 4043)

def relationRow4550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4044) * ((1 : F) + (1 : F) * rho 4043) = ((1 : F) * rho 4041 + (1 : F) * rho 4042)

def relationRow4551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4045) * ((1 : F) + (-1 : F) * rho 4043) = ((1 : F) * rho 4040 + (-1 : F) * rho 4041 + (-1 : F) * rho 4042)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 140⟩], residual := [((-1 : F), 2212), ((1 : F), 4044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1124) * (relationLc794 rho) = ((1 : F) * rho 4046)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 141⟩], residual := [((1 : F), 4045)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1124) * (relationLc795 rho) = ((1 : F) * rho 4047)

def relationRow4554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4038) * ((1 : F) * rho 4039) = ((1 : F) * rho 4048)

def relationRow4555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4038) * ((1 : F) * rho 4038) = ((1 : F) * rho 4049)

def relationRow4556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4039) * ((1 : F) * rho 4039) = ((1 : F) * rho 4050)

def relationRow4557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051) * ((-1 : F) * rho 4049 + (1 : F) * rho 4050) = ((2 : F) * rho 4048)

def relationRow4558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((2 : F) + (1 : F) * rho 4049 + (-1 : F) * rho 4050) = ((1 : F) * rho 4049 + (1 : F) * rho 4050)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 142⟩, ⟨(1 : F), 2226, 13, 141⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051 + (1 : F) * rho 4052) * (relationLc796 rho) = ((1 : F) * rho 4053)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 141⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * (relationLc797 rho) = ((1 : F) * rho 4054)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051) * (relationLc798 rho) = ((1 : F) * rho 4055)

def relationRow4562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4054) * ((1 : F) * rho 4055) = ((1 : F) * rho 4056)

def relationRow4563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4057) * ((1 : F) + (1 : F) * rho 4056) = ((1 : F) * rho 4054 + (1 : F) * rho 4055)

def relationRow4564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4058) * ((1 : F) + (-1 : F) * rho 4056) = ((1 : F) * rho 4053 + (-1 : F) * rho 4054 + (-1 : F) * rho 4055)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
