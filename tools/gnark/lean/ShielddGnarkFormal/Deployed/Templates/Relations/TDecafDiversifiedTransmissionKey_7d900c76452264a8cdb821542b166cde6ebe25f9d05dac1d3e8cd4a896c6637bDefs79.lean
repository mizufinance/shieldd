import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs78

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3025) * (relationLc402 rho) = ((1 : F) * rho 3027)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3024) * (relationLc403 rho) = ((1 : F) * rho 3028)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3027) * ((1 : F) * rho 3028) = ((1 : F) * rho 3029)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3030) * ((1 : F) + (1 : F) * rho 3029) = ((1 : F) * rho 3027 + (1 : F) * rho 3028)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3031) * ((1 : F) + (-1 : F) * rho 3029) = ((1 : F) * rho 3026 + (-1 : F) * rho 3027 + (-1 : F) * rho 3028)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 62⟩], residual := [((-1 : F), 2212), ((1 : F), 3030)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1046) * (relationLc404 rho) = ((1 : F) * rho 3032)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 63⟩], residual := [((1 : F), 3031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1046) * (relationLc405 rho) = ((1 : F) * rho 3033)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3024) * ((1 : F) * rho 3025) = ((1 : F) * rho 3034)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3024) * ((1 : F) * rho 3024) = ((1 : F) * rho 3035)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3025) * ((1 : F) * rho 3025) = ((1 : F) * rho 3036)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3037) * ((-1 : F) * rho 3035 + (1 : F) * rho 3036) = ((2 : F) * rho 3034)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3038) * ((2 : F) + (1 : F) * rho 3035 + (-1 : F) * rho 3036) = ((1 : F) * rho 3035 + (1 : F) * rho 3036)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 64⟩, ⟨(1 : F), 2226, 13, 63⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3037 + (1 : F) * rho 3038) * (relationLc406 rho) = ((1 : F) * rho 3039)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 63⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3038) * (relationLc407 rho) = ((1 : F) * rho 3040)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3037) * (relationLc408 rho) = ((1 : F) * rho 3041)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3040) * ((1 : F) * rho 3041) = ((1 : F) * rho 3042)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3043) * ((1 : F) + (1 : F) * rho 3042) = ((1 : F) * rho 3040 + (1 : F) * rho 3041)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3044) * ((1 : F) + (-1 : F) * rho 3042) = ((1 : F) * rho 3039 + (-1 : F) * rho 3040 + (-1 : F) * rho 3041)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 63⟩], residual := [((-1 : F), 2212), ((1 : F), 3043)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1047) * (relationLc409 rho) = ((1 : F) * rho 3045)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 64⟩], residual := [((1 : F), 3044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1047) * (relationLc410 rho) = ((1 : F) * rho 3046)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3037) * ((1 : F) * rho 3038) = ((1 : F) * rho 3047)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3037) * ((1 : F) * rho 3037) = ((1 : F) * rho 3048)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3038) * ((1 : F) * rho 3038) = ((1 : F) * rho 3049)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3050) * ((-1 : F) * rho 3048 + (1 : F) * rho 3049) = ((2 : F) * rho 3047)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3051) * ((2 : F) + (1 : F) * rho 3048 + (-1 : F) * rho 3049) = ((1 : F) * rho 3048 + (1 : F) * rho 3049)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 65⟩, ⟨(1 : F), 2226, 13, 64⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3050 + (1 : F) * rho 3051) * (relationLc411 rho) = ((1 : F) * rho 3052)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 64⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3051) * (relationLc412 rho) = ((1 : F) * rho 3053)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3050) * (relationLc413 rho) = ((1 : F) * rho 3054)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3053) * ((1 : F) * rho 3054) = ((1 : F) * rho 3055)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3056) * ((1 : F) + (1 : F) * rho 3055) = ((1 : F) * rho 3053 + (1 : F) * rho 3054)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3057) * ((1 : F) + (-1 : F) * rho 3055) = ((1 : F) * rho 3052 + (-1 : F) * rho 3053 + (-1 : F) * rho 3054)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 64⟩], residual := [((-1 : F), 2212), ((1 : F), 3056)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1048) * (relationLc414 rho) = ((1 : F) * rho 3058)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 65⟩], residual := [((1 : F), 3057)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1048) * (relationLc415 rho) = ((1 : F) * rho 3059)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3050) * ((1 : F) * rho 3051) = ((1 : F) * rho 3060)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3050) * ((1 : F) * rho 3050) = ((1 : F) * rho 3061)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3051) * ((1 : F) * rho 3051) = ((1 : F) * rho 3062)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3063) * ((-1 : F) * rho 3061 + (1 : F) * rho 3062) = ((2 : F) * rho 3060)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3064) * ((2 : F) + (1 : F) * rho 3061 + (-1 : F) * rho 3062) = ((1 : F) * rho 3061 + (1 : F) * rho 3062)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 66⟩, ⟨(1 : F), 2226, 13, 65⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3063 + (1 : F) * rho 3064) * (relationLc416 rho) = ((1 : F) * rho 3065)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 65⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3064) * (relationLc417 rho) = ((1 : F) * rho 3066)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3063) * (relationLc418 rho) = ((1 : F) * rho 3067)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3066) * ((1 : F) * rho 3067) = ((1 : F) * rho 3068)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3069) * ((1 : F) + (1 : F) * rho 3068) = ((1 : F) * rho 3066 + (1 : F) * rho 3067)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3070) * ((1 : F) + (-1 : F) * rho 3068) = ((1 : F) * rho 3065 + (-1 : F) * rho 3066 + (-1 : F) * rho 3067)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 65⟩], residual := [((-1 : F), 2212), ((1 : F), 3069)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1049) * (relationLc419 rho) = ((1 : F) * rho 3071)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 66⟩], residual := [((1 : F), 3070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1049) * (relationLc420 rho) = ((1 : F) * rho 3072)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3063) * ((1 : F) * rho 3064) = ((1 : F) * rho 3073)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3063) * ((1 : F) * rho 3063) = ((1 : F) * rho 3074)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3064) * ((1 : F) * rho 3064) = ((1 : F) * rho 3075)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3076) * ((-1 : F) * rho 3074 + (1 : F) * rho 3075) = ((2 : F) * rho 3073)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3077) * ((2 : F) + (1 : F) * rho 3074 + (-1 : F) * rho 3075) = ((1 : F) * rho 3074 + (1 : F) * rho 3075)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 67⟩, ⟨(1 : F), 2226, 13, 66⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3076 + (1 : F) * rho 3077) * (relationLc421 rho) = ((1 : F) * rho 3078)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 66⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3077) * (relationLc422 rho) = ((1 : F) * rho 3079)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3076) * (relationLc423 rho) = ((1 : F) * rho 3080)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3079) * ((1 : F) * rho 3080) = ((1 : F) * rho 3081)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3082) * ((1 : F) + (1 : F) * rho 3081) = ((1 : F) * rho 3079 + (1 : F) * rho 3080)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3083) * ((1 : F) + (-1 : F) * rho 3081) = ((1 : F) * rho 3078 + (-1 : F) * rho 3079 + (-1 : F) * rho 3080)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 66⟩], residual := [((-1 : F), 2212), ((1 : F), 3082)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1050) * (relationLc424 rho) = ((1 : F) * rho 3084)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 67⟩], residual := [((1 : F), 3083)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1050) * (relationLc425 rho) = ((1 : F) * rho 3085)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3076) * ((1 : F) * rho 3077) = ((1 : F) * rho 3086)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3076) * ((1 : F) * rho 3076) = ((1 : F) * rho 3087)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3077) * ((1 : F) * rho 3077) = ((1 : F) * rho 3088)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3089) * ((-1 : F) * rho 3087 + (1 : F) * rho 3088) = ((2 : F) * rho 3086)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3090) * ((2 : F) + (1 : F) * rho 3087 + (-1 : F) * rho 3088) = ((1 : F) * rho 3087 + (1 : F) * rho 3088)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 68⟩, ⟨(1 : F), 2226, 13, 67⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3089 + (1 : F) * rho 3090) * (relationLc426 rho) = ((1 : F) * rho 3091)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 67⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3090) * (relationLc427 rho) = ((1 : F) * rho 3092)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3089) * (relationLc428 rho) = ((1 : F) * rho 3093)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3092) * ((1 : F) * rho 3093) = ((1 : F) * rho 3094)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3095) * ((1 : F) + (1 : F) * rho 3094) = ((1 : F) * rho 3092 + (1 : F) * rho 3093)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3096) * ((1 : F) + (-1 : F) * rho 3094) = ((1 : F) * rho 3091 + (-1 : F) * rho 3092 + (-1 : F) * rho 3093)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 67⟩], residual := [((-1 : F), 2212), ((1 : F), 3095)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1051) * (relationLc429 rho) = ((1 : F) * rho 3097)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 68⟩], residual := [((1 : F), 3096)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1051) * (relationLc430 rho) = ((1 : F) * rho 3098)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3089) * ((1 : F) * rho 3090) = ((1 : F) * rho 3099)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3089) * ((1 : F) * rho 3089) = ((1 : F) * rho 3100)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3090) * ((1 : F) * rho 3090) = ((1 : F) * rho 3101)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
