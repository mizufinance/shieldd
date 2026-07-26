import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs84

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3467) * (relationLc572 rho) = ((1 : F) * rho 3469)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3466) * (relationLc573 rho) = ((1 : F) * rho 3470)

def relationRow3977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3469) * ((1 : F) * rho 3470) = ((1 : F) * rho 3471)

def relationRow3978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3472) * ((1 : F) + (1 : F) * rho 3471) = ((1 : F) * rho 3469 + (1 : F) * rho 3470)

def relationRow3979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3473) * ((1 : F) + (-1 : F) * rho 3471) = ((1 : F) * rho 3468 + (-1 : F) * rho 3469 + (-1 : F) * rho 3470)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 96⟩], residual := [((-1 : F), 2212), ((1 : F), 3472)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1080) * (relationLc574 rho) = ((1 : F) * rho 3474)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 97⟩], residual := [((1 : F), 3473)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1080) * (relationLc575 rho) = ((1 : F) * rho 3475)

def relationRow3982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3466) * ((1 : F) * rho 3467) = ((1 : F) * rho 3476)

def relationRow3983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3466) * ((1 : F) * rho 3466) = ((1 : F) * rho 3477)

def relationRow3984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3467) * ((1 : F) * rho 3467) = ((1 : F) * rho 3478)

def relationRow3985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479) * ((-1 : F) * rho 3477 + (1 : F) * rho 3478) = ((2 : F) * rho 3476)

def relationRow3986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((2 : F) + (1 : F) * rho 3477 + (-1 : F) * rho 3478) = ((1 : F) * rho 3477 + (1 : F) * rho 3478)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 98⟩, ⟨(1 : F), 2226, 13, 97⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479 + (1 : F) * rho 3480) * (relationLc576 rho) = ((1 : F) * rho 3481)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 97⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * (relationLc577 rho) = ((1 : F) * rho 3482)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479) * (relationLc578 rho) = ((1 : F) * rho 3483)

def relationRow3990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3482) * ((1 : F) * rho 3483) = ((1 : F) * rho 3484)

def relationRow3991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3485) * ((1 : F) + (1 : F) * rho 3484) = ((1 : F) * rho 3482 + (1 : F) * rho 3483)

def relationRow3992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3486) * ((1 : F) + (-1 : F) * rho 3484) = ((1 : F) * rho 3481 + (-1 : F) * rho 3482 + (-1 : F) * rho 3483)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 97⟩], residual := [((-1 : F), 2212), ((1 : F), 3485)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1081) * (relationLc579 rho) = ((1 : F) * rho 3487)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 98⟩], residual := [((1 : F), 3486)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1081) * (relationLc580 rho) = ((1 : F) * rho 3488)

def relationRow3995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479) * ((1 : F) * rho 3480) = ((1 : F) * rho 3489)

def relationRow3996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3479) * ((1 : F) * rho 3479) = ((1 : F) * rho 3490)

def relationRow3997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) * rho 3480) = ((1 : F) * rho 3491)

def relationRow3998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492) * ((-1 : F) * rho 3490 + (1 : F) * rho 3491) = ((2 : F) * rho 3489)

def relationRow3999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3493) * ((2 : F) + (1 : F) * rho 3490 + (-1 : F) * rho 3491) = ((1 : F) * rho 3490 + (1 : F) * rho 3491)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 99⟩, ⟨(1 : F), 2226, 13, 98⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492 + (1 : F) * rho 3493) * (relationLc581 rho) = ((1 : F) * rho 3494)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 98⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3493) * (relationLc582 rho) = ((1 : F) * rho 3495)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492) * (relationLc583 rho) = ((1 : F) * rho 3496)

def relationRow4003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3495) * ((1 : F) * rho 3496) = ((1 : F) * rho 3497)

def relationRow4004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3498) * ((1 : F) + (1 : F) * rho 3497) = ((1 : F) * rho 3495 + (1 : F) * rho 3496)

def relationRow4005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3499) * ((1 : F) + (-1 : F) * rho 3497) = ((1 : F) * rho 3494 + (-1 : F) * rho 3495 + (-1 : F) * rho 3496)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 98⟩], residual := [((-1 : F), 2212), ((1 : F), 3498)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1082) * (relationLc584 rho) = ((1 : F) * rho 3500)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 99⟩], residual := [((1 : F), 3499)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1082) * (relationLc585 rho) = ((1 : F) * rho 3501)

def relationRow4008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492) * ((1 : F) * rho 3493) = ((1 : F) * rho 3502)

def relationRow4009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3492) * ((1 : F) * rho 3492) = ((1 : F) * rho 3503)

def relationRow4010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3493) * ((1 : F) * rho 3493) = ((1 : F) * rho 3504)

def relationRow4011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3505) * ((-1 : F) * rho 3503 + (1 : F) * rho 3504) = ((2 : F) * rho 3502)

def relationRow4012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3506) * ((2 : F) + (1 : F) * rho 3503 + (-1 : F) * rho 3504) = ((1 : F) * rho 3503 + (1 : F) * rho 3504)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 100⟩, ⟨(1 : F), 2226, 13, 99⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3505 + (1 : F) * rho 3506) * (relationLc586 rho) = ((1 : F) * rho 3507)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 99⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3506) * (relationLc587 rho) = ((1 : F) * rho 3508)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3505) * (relationLc588 rho) = ((1 : F) * rho 3509)

def relationRow4016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3508) * ((1 : F) * rho 3509) = ((1 : F) * rho 3510)

def relationRow4017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3511) * ((1 : F) + (1 : F) * rho 3510) = ((1 : F) * rho 3508 + (1 : F) * rho 3509)

def relationRow4018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3512) * ((1 : F) + (-1 : F) * rho 3510) = ((1 : F) * rho 3507 + (-1 : F) * rho 3508 + (-1 : F) * rho 3509)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 99⟩], residual := [((-1 : F), 2212), ((1 : F), 3511)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1083) * (relationLc589 rho) = ((1 : F) * rho 3513)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 100⟩], residual := [((1 : F), 3512)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1083) * (relationLc590 rho) = ((1 : F) * rho 3514)

def relationRow4021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3505) * ((1 : F) * rho 3506) = ((1 : F) * rho 3515)

def relationRow4022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3505) * ((1 : F) * rho 3505) = ((1 : F) * rho 3516)

def relationRow4023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3506) * ((1 : F) * rho 3506) = ((1 : F) * rho 3517)

def relationRow4024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * ((-1 : F) * rho 3516 + (1 : F) * rho 3517) = ((2 : F) * rho 3515)

def relationRow4025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3519) * ((2 : F) + (1 : F) * rho 3516 + (-1 : F) * rho 3517) = ((1 : F) * rho 3516 + (1 : F) * rho 3517)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 101⟩, ⟨(1 : F), 2226, 13, 100⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518 + (1 : F) * rho 3519) * (relationLc591 rho) = ((1 : F) * rho 3520)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 100⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3519) * (relationLc592 rho) = ((1 : F) * rho 3521)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * (relationLc593 rho) = ((1 : F) * rho 3522)

def relationRow4029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3521) * ((1 : F) * rho 3522) = ((1 : F) * rho 3523)

def relationRow4030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3524) * ((1 : F) + (1 : F) * rho 3523) = ((1 : F) * rho 3521 + (1 : F) * rho 3522)

def relationRow4031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3525) * ((1 : F) + (-1 : F) * rho 3523) = ((1 : F) * rho 3520 + (-1 : F) * rho 3521 + (-1 : F) * rho 3522)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 100⟩], residual := [((-1 : F), 2212), ((1 : F), 3524)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1084) * (relationLc594 rho) = ((1 : F) * rho 3526)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 101⟩], residual := [((1 : F), 3525)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1084) * (relationLc595 rho) = ((1 : F) * rho 3527)

def relationRow4034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * ((1 : F) * rho 3519) = ((1 : F) * rho 3528)

def relationRow4035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3518) * ((1 : F) * rho 3518) = ((1 : F) * rho 3529)

def relationRow4036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3519) * ((1 : F) * rho 3519) = ((1 : F) * rho 3530)

def relationRow4037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3531) * ((-1 : F) * rho 3529 + (1 : F) * rho 3530) = ((2 : F) * rho 3528)

def relationRow4038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3532) * ((2 : F) + (1 : F) * rho 3529 + (-1 : F) * rho 3530) = ((1 : F) * rho 3529 + (1 : F) * rho 3530)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 102⟩, ⟨(1 : F), 2226, 13, 101⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3531 + (1 : F) * rho 3532) * (relationLc596 rho) = ((1 : F) * rho 3533)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 101⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3532) * (relationLc597 rho) = ((1 : F) * rho 3534)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3531) * (relationLc598 rho) = ((1 : F) * rho 3535)

def relationRow4042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3534) * ((1 : F) * rho 3535) = ((1 : F) * rho 3536)

def relationRow4043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3537) * ((1 : F) + (1 : F) * rho 3536) = ((1 : F) * rho 3534 + (1 : F) * rho 3535)

def relationRow4044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3538) * ((1 : F) + (-1 : F) * rho 3536) = ((1 : F) * rho 3533 + (-1 : F) * rho 3534 + (-1 : F) * rho 3535)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 101⟩], residual := [((-1 : F), 2212), ((1 : F), 3537)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1085) * (relationLc599 rho) = ((1 : F) * rho 3539)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 102⟩], residual := [((1 : F), 3538)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1085) * (relationLc600 rho) = ((1 : F) * rho 3540)

def relationRow4047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3531) * ((1 : F) * rho 3532) = ((1 : F) * rho 3541)

def relationRow4048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3531) * ((1 : F) * rho 3531) = ((1 : F) * rho 3542)

def relationRow4049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3532) * ((1 : F) * rho 3532) = ((1 : F) * rho 3543)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
