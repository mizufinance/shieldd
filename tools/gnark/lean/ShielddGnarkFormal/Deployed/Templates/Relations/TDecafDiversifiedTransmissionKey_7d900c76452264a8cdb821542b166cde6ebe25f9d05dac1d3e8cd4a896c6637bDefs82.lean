import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs81

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3246) * (relationLc487 rho) = ((1 : F) * rho 3248)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3245) * (relationLc488 rho) = ((1 : F) * rho 3249)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3248) * ((1 : F) * rho 3249) = ((1 : F) * rho 3250)

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3251) * ((1 : F) + (1 : F) * rho 3250) = ((1 : F) * rho 3248 + (1 : F) * rho 3249)

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3252) * ((1 : F) + (-1 : F) * rho 3250) = ((1 : F) * rho 3247 + (-1 : F) * rho 3248 + (-1 : F) * rho 3249)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 79⟩], residual := [((-1 : F), 2212), ((1 : F), 3251)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1063) * (relationLc489 rho) = ((1 : F) * rho 3253)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 80⟩], residual := [((1 : F), 3252)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1063) * (relationLc490 rho) = ((1 : F) * rho 3254)

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3245) * ((1 : F) * rho 3246) = ((1 : F) * rho 3255)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3245) * ((1 : F) * rho 3245) = ((1 : F) * rho 3256)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3246) * ((1 : F) * rho 3246) = ((1 : F) * rho 3257)

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3258) * ((-1 : F) * rho 3256 + (1 : F) * rho 3257) = ((2 : F) * rho 3255)

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3259) * ((2 : F) + (1 : F) * rho 3256 + (-1 : F) * rho 3257) = ((1 : F) * rho 3256 + (1 : F) * rho 3257)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 81⟩, ⟨(1 : F), 2226, 13, 80⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3258 + (1 : F) * rho 3259) * (relationLc491 rho) = ((1 : F) * rho 3260)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 80⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3259) * (relationLc492 rho) = ((1 : F) * rho 3261)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3258) * (relationLc493 rho) = ((1 : F) * rho 3262)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3261) * ((1 : F) * rho 3262) = ((1 : F) * rho 3263)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3264) * ((1 : F) + (1 : F) * rho 3263) = ((1 : F) * rho 3261 + (1 : F) * rho 3262)

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3265) * ((1 : F) + (-1 : F) * rho 3263) = ((1 : F) * rho 3260 + (-1 : F) * rho 3261 + (-1 : F) * rho 3262)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 80⟩], residual := [((-1 : F), 2212), ((1 : F), 3264)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1064) * (relationLc494 rho) = ((1 : F) * rho 3266)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 81⟩], residual := [((1 : F), 3265)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1064) * (relationLc495 rho) = ((1 : F) * rho 3267)

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3258) * ((1 : F) * rho 3259) = ((1 : F) * rho 3268)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3258) * ((1 : F) * rho 3258) = ((1 : F) * rho 3269)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3259) * ((1 : F) * rho 3259) = ((1 : F) * rho 3270)

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * ((-1 : F) * rho 3269 + (1 : F) * rho 3270) = ((2 : F) * rho 3268)

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3272) * ((2 : F) + (1 : F) * rho 3269 + (-1 : F) * rho 3270) = ((1 : F) * rho 3269 + (1 : F) * rho 3270)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 82⟩, ⟨(1 : F), 2226, 13, 81⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271 + (1 : F) * rho 3272) * (relationLc496 rho) = ((1 : F) * rho 3273)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 81⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3272) * (relationLc497 rho) = ((1 : F) * rho 3274)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * (relationLc498 rho) = ((1 : F) * rho 3275)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3274) * ((1 : F) * rho 3275) = ((1 : F) * rho 3276)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3277) * ((1 : F) + (1 : F) * rho 3276) = ((1 : F) * rho 3274 + (1 : F) * rho 3275)

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3278) * ((1 : F) + (-1 : F) * rho 3276) = ((1 : F) * rho 3273 + (-1 : F) * rho 3274 + (-1 : F) * rho 3275)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 81⟩], residual := [((-1 : F), 2212), ((1 : F), 3277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1065) * (relationLc499 rho) = ((1 : F) * rho 3279)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 82⟩], residual := [((1 : F), 3278)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1065) * (relationLc500 rho) = ((1 : F) * rho 3280)

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * ((1 : F) * rho 3272) = ((1 : F) * rho 3281)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3271) * ((1 : F) * rho 3271) = ((1 : F) * rho 3282)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3272) * ((1 : F) * rho 3272) = ((1 : F) * rho 3283)

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3284) * ((-1 : F) * rho 3282 + (1 : F) * rho 3283) = ((2 : F) * rho 3281)

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3285) * ((2 : F) + (1 : F) * rho 3282 + (-1 : F) * rho 3283) = ((1 : F) * rho 3282 + (1 : F) * rho 3283)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 83⟩, ⟨(1 : F), 2226, 13, 82⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3284 + (1 : F) * rho 3285) * (relationLc501 rho) = ((1 : F) * rho 3286)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 82⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3285) * (relationLc502 rho) = ((1 : F) * rho 3287)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3284) * (relationLc503 rho) = ((1 : F) * rho 3288)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3287) * ((1 : F) * rho 3288) = ((1 : F) * rho 3289)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3290) * ((1 : F) + (1 : F) * rho 3289) = ((1 : F) * rho 3287 + (1 : F) * rho 3288)

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3291) * ((1 : F) + (-1 : F) * rho 3289) = ((1 : F) * rho 3286 + (-1 : F) * rho 3287 + (-1 : F) * rho 3288)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 82⟩], residual := [((-1 : F), 2212), ((1 : F), 3290)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1066) * (relationLc504 rho) = ((1 : F) * rho 3292)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 83⟩], residual := [((1 : F), 3291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1066) * (relationLc505 rho) = ((1 : F) * rho 3293)

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3284) * ((1 : F) * rho 3285) = ((1 : F) * rho 3294)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3284) * ((1 : F) * rho 3284) = ((1 : F) * rho 3295)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3285) * ((1 : F) * rho 3285) = ((1 : F) * rho 3296)

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3297) * ((-1 : F) * rho 3295 + (1 : F) * rho 3296) = ((2 : F) * rho 3294)

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3298) * ((2 : F) + (1 : F) * rho 3295 + (-1 : F) * rho 3296) = ((1 : F) * rho 3295 + (1 : F) * rho 3296)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 84⟩, ⟨(1 : F), 2226, 13, 83⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3297 + (1 : F) * rho 3298) * (relationLc506 rho) = ((1 : F) * rho 3299)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 83⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3298) * (relationLc507 rho) = ((1 : F) * rho 3300)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3297) * (relationLc508 rho) = ((1 : F) * rho 3301)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3300) * ((1 : F) * rho 3301) = ((1 : F) * rho 3302)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3303) * ((1 : F) + (1 : F) * rho 3302) = ((1 : F) * rho 3300 + (1 : F) * rho 3301)

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3304) * ((1 : F) + (-1 : F) * rho 3302) = ((1 : F) * rho 3299 + (-1 : F) * rho 3300 + (-1 : F) * rho 3301)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 83⟩], residual := [((-1 : F), 2212), ((1 : F), 3303)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1067) * (relationLc509 rho) = ((1 : F) * rho 3305)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 84⟩], residual := [((1 : F), 3304)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1067) * (relationLc510 rho) = ((1 : F) * rho 3306)

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3297) * ((1 : F) * rho 3298) = ((1 : F) * rho 3307)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3297) * ((1 : F) * rho 3297) = ((1 : F) * rho 3308)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3298) * ((1 : F) * rho 3298) = ((1 : F) * rho 3309)

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3310) * ((-1 : F) * rho 3308 + (1 : F) * rho 3309) = ((2 : F) * rho 3307)

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3311) * ((2 : F) + (1 : F) * rho 3308 + (-1 : F) * rho 3309) = ((1 : F) * rho 3308 + (1 : F) * rho 3309)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 85⟩, ⟨(1 : F), 2226, 13, 84⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3310 + (1 : F) * rho 3311) * (relationLc511 rho) = ((1 : F) * rho 3312)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 84⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3311) * (relationLc512 rho) = ((1 : F) * rho 3313)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3310) * (relationLc513 rho) = ((1 : F) * rho 3314)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3313) * ((1 : F) * rho 3314) = ((1 : F) * rho 3315)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3316) * ((1 : F) + (1 : F) * rho 3315) = ((1 : F) * rho 3313 + (1 : F) * rho 3314)

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3317) * ((1 : F) + (-1 : F) * rho 3315) = ((1 : F) * rho 3312 + (-1 : F) * rho 3313 + (-1 : F) * rho 3314)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 84⟩], residual := [((-1 : F), 2212), ((1 : F), 3316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1068) * (relationLc514 rho) = ((1 : F) * rho 3318)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 85⟩], residual := [((1 : F), 3317)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1068) * (relationLc515 rho) = ((1 : F) * rho 3319)

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3310) * ((1 : F) * rho 3311) = ((1 : F) * rho 3320)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3310) * ((1 : F) * rho 3310) = ((1 : F) * rho 3321)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3311) * ((1 : F) * rho 3311) = ((1 : F) * rho 3322)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
