import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs80

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 73⟩], residual := [((-1 : F), 2212), ((1 : F), 3173)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1057) * (relationLc459 rho) = ((1 : F) * rho 3175)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 74⟩], residual := [((1 : F), 3174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1057) * (relationLc460 rho) = ((1 : F) * rho 3176)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167) * ((1 : F) * rho 3168) = ((1 : F) * rho 3177)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167) * ((1 : F) * rho 3167) = ((1 : F) * rho 3178)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3168) * ((1 : F) * rho 3168) = ((1 : F) * rho 3179)

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3180) * ((-1 : F) * rho 3178 + (1 : F) * rho 3179) = ((2 : F) * rho 3177)

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3181) * ((2 : F) + (1 : F) * rho 3178 + (-1 : F) * rho 3179) = ((1 : F) * rho 3178 + (1 : F) * rho 3179)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 75⟩, ⟨(1 : F), 2226, 13, 74⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3180 + (1 : F) * rho 3181) * (relationLc461 rho) = ((1 : F) * rho 3182)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 74⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3181) * (relationLc462 rho) = ((1 : F) * rho 3183)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3180) * (relationLc463 rho) = ((1 : F) * rho 3184)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3183) * ((1 : F) * rho 3184) = ((1 : F) * rho 3185)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3186) * ((1 : F) + (1 : F) * rho 3185) = ((1 : F) * rho 3183 + (1 : F) * rho 3184)

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3187) * ((1 : F) + (-1 : F) * rho 3185) = ((1 : F) * rho 3182 + (-1 : F) * rho 3183 + (-1 : F) * rho 3184)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 74⟩], residual := [((-1 : F), 2212), ((1 : F), 3186)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1058) * (relationLc464 rho) = ((1 : F) * rho 3188)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 75⟩], residual := [((1 : F), 3187)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1058) * (relationLc465 rho) = ((1 : F) * rho 3189)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3180) * ((1 : F) * rho 3181) = ((1 : F) * rho 3190)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3180) * ((1 : F) * rho 3180) = ((1 : F) * rho 3191)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3181) * ((1 : F) * rho 3181) = ((1 : F) * rho 3192)

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193) * ((-1 : F) * rho 3191 + (1 : F) * rho 3192) = ((2 : F) * rho 3190)

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3194) * ((2 : F) + (1 : F) * rho 3191 + (-1 : F) * rho 3192) = ((1 : F) * rho 3191 + (1 : F) * rho 3192)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 76⟩, ⟨(1 : F), 2226, 13, 75⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193 + (1 : F) * rho 3194) * (relationLc466 rho) = ((1 : F) * rho 3195)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 75⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3194) * (relationLc467 rho) = ((1 : F) * rho 3196)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193) * (relationLc468 rho) = ((1 : F) * rho 3197)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3196) * ((1 : F) * rho 3197) = ((1 : F) * rho 3198)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3199) * ((1 : F) + (1 : F) * rho 3198) = ((1 : F) * rho 3196 + (1 : F) * rho 3197)

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3200) * ((1 : F) + (-1 : F) * rho 3198) = ((1 : F) * rho 3195 + (-1 : F) * rho 3196 + (-1 : F) * rho 3197)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 75⟩], residual := [((-1 : F), 2212), ((1 : F), 3199)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1059) * (relationLc469 rho) = ((1 : F) * rho 3201)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 76⟩], residual := [((1 : F), 3200)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1059) * (relationLc470 rho) = ((1 : F) * rho 3202)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193) * ((1 : F) * rho 3194) = ((1 : F) * rho 3203)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3193) * ((1 : F) * rho 3193) = ((1 : F) * rho 3204)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3194) * ((1 : F) * rho 3194) = ((1 : F) * rho 3205)

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * ((-1 : F) * rho 3204 + (1 : F) * rho 3205) = ((2 : F) * rho 3203)

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3207) * ((2 : F) + (1 : F) * rho 3204 + (-1 : F) * rho 3205) = ((1 : F) * rho 3204 + (1 : F) * rho 3205)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 77⟩, ⟨(1 : F), 2226, 13, 76⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206 + (1 : F) * rho 3207) * (relationLc471 rho) = ((1 : F) * rho 3208)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 76⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3207) * (relationLc472 rho) = ((1 : F) * rho 3209)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * (relationLc473 rho) = ((1 : F) * rho 3210)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3209) * ((1 : F) * rho 3210) = ((1 : F) * rho 3211)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3212) * ((1 : F) + (1 : F) * rho 3211) = ((1 : F) * rho 3209 + (1 : F) * rho 3210)

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3213) * ((1 : F) + (-1 : F) * rho 3211) = ((1 : F) * rho 3208 + (-1 : F) * rho 3209 + (-1 : F) * rho 3210)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 76⟩], residual := [((-1 : F), 2212), ((1 : F), 3212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1060) * (relationLc474 rho) = ((1 : F) * rho 3214)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 77⟩], residual := [((1 : F), 3213)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1060) * (relationLc475 rho) = ((1 : F) * rho 3215)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * ((1 : F) * rho 3207) = ((1 : F) * rho 3216)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * ((1 : F) * rho 3206) = ((1 : F) * rho 3217)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3207) * ((1 : F) * rho 3207) = ((1 : F) * rho 3218)

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3219) * ((-1 : F) * rho 3217 + (1 : F) * rho 3218) = ((2 : F) * rho 3216)

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3220) * ((2 : F) + (1 : F) * rho 3217 + (-1 : F) * rho 3218) = ((1 : F) * rho 3217 + (1 : F) * rho 3218)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 78⟩, ⟨(1 : F), 2226, 13, 77⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3219 + (1 : F) * rho 3220) * (relationLc476 rho) = ((1 : F) * rho 3221)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 77⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3220) * (relationLc477 rho) = ((1 : F) * rho 3222)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3219) * (relationLc478 rho) = ((1 : F) * rho 3223)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3222) * ((1 : F) * rho 3223) = ((1 : F) * rho 3224)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3225) * ((1 : F) + (1 : F) * rho 3224) = ((1 : F) * rho 3222 + (1 : F) * rho 3223)

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3226) * ((1 : F) + (-1 : F) * rho 3224) = ((1 : F) * rho 3221 + (-1 : F) * rho 3222 + (-1 : F) * rho 3223)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 77⟩], residual := [((-1 : F), 2212), ((1 : F), 3225)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1061) * (relationLc479 rho) = ((1 : F) * rho 3227)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 78⟩], residual := [((1 : F), 3226)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1061) * (relationLc480 rho) = ((1 : F) * rho 3228)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3219) * ((1 : F) * rho 3220) = ((1 : F) * rho 3229)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3219) * ((1 : F) * rho 3219) = ((1 : F) * rho 3230)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3220) * ((1 : F) * rho 3220) = ((1 : F) * rho 3231)

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * ((-1 : F) * rho 3230 + (1 : F) * rho 3231) = ((2 : F) * rho 3229)

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3233) * ((2 : F) + (1 : F) * rho 3230 + (-1 : F) * rho 3231) = ((1 : F) * rho 3230 + (1 : F) * rho 3231)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 79⟩, ⟨(1 : F), 2226, 13, 78⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232 + (1 : F) * rho 3233) * (relationLc481 rho) = ((1 : F) * rho 3234)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 78⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3233) * (relationLc482 rho) = ((1 : F) * rho 3235)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * (relationLc483 rho) = ((1 : F) * rho 3236)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3235) * ((1 : F) * rho 3236) = ((1 : F) * rho 3237)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3238) * ((1 : F) + (1 : F) * rho 3237) = ((1 : F) * rho 3235 + (1 : F) * rho 3236)

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3239) * ((1 : F) + (-1 : F) * rho 3237) = ((1 : F) * rho 3234 + (-1 : F) * rho 3235 + (-1 : F) * rho 3236)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 78⟩], residual := [((-1 : F), 2212), ((1 : F), 3238)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1062) * (relationLc484 rho) = ((1 : F) * rho 3240)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 79⟩], residual := [((1 : F), 3239)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1062) * (relationLc485 rho) = ((1 : F) * rho 3241)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * ((1 : F) * rho 3233) = ((1 : F) * rho 3242)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3232) * ((1 : F) * rho 3232) = ((1 : F) * rho 3243)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3233) * ((1 : F) * rho 3233) = ((1 : F) * rho 3244)

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3245) * ((-1 : F) * rho 3243 + (1 : F) * rho 3244) = ((2 : F) * rho 3242)

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3246) * ((2 : F) + (1 : F) * rho 3243 + (-1 : F) * rho 3244) = ((1 : F) * rho 3243 + (1 : F) * rho 3244)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 80⟩, ⟨(1 : F), 2226, 13, 79⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3245 + (1 : F) * rho 3246) * (relationLc486 rho) = ((1 : F) * rho 3247)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 79⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
