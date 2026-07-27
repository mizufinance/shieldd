import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs82

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3323) * ((-1 : F) * rho 3321 + (1 : F) * rho 3322) = ((2 : F) * rho 3320)

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3324) * ((2 : F) + (1 : F) * rho 3321 + (-1 : F) * rho 3322) = ((1 : F) * rho 3321 + (1 : F) * rho 3322)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 86⟩, ⟨(1 : F), 2226, 13, 85⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3323 + (1 : F) * rho 3324) * (relationLc516 rho) = ((1 : F) * rho 3325)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 85⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3324) * (relationLc517 rho) = ((1 : F) * rho 3326)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3323) * (relationLc518 rho) = ((1 : F) * rho 3327)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3326) * ((1 : F) * rho 3327) = ((1 : F) * rho 3328)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3329) * ((1 : F) + (1 : F) * rho 3328) = ((1 : F) * rho 3326 + (1 : F) * rho 3327)

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3330) * ((1 : F) + (-1 : F) * rho 3328) = ((1 : F) * rho 3325 + (-1 : F) * rho 3326 + (-1 : F) * rho 3327)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 85⟩], residual := [((-1 : F), 2212), ((1 : F), 3329)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1069) * (relationLc519 rho) = ((1 : F) * rho 3331)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 86⟩], residual := [((1 : F), 3330)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1069) * (relationLc520 rho) = ((1 : F) * rho 3332)

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3323) * ((1 : F) * rho 3324) = ((1 : F) * rho 3333)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3323) * ((1 : F) * rho 3323) = ((1 : F) * rho 3334)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3324) * ((1 : F) * rho 3324) = ((1 : F) * rho 3335)

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3336) * ((-1 : F) * rho 3334 + (1 : F) * rho 3335) = ((2 : F) * rho 3333)

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3337) * ((2 : F) + (1 : F) * rho 3334 + (-1 : F) * rho 3335) = ((1 : F) * rho 3334 + (1 : F) * rho 3335)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 87⟩, ⟨(1 : F), 2226, 13, 86⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3336 + (1 : F) * rho 3337) * (relationLc521 rho) = ((1 : F) * rho 3338)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 86⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3337) * (relationLc522 rho) = ((1 : F) * rho 3339)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3336) * (relationLc523 rho) = ((1 : F) * rho 3340)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3339) * ((1 : F) * rho 3340) = ((1 : F) * rho 3341)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3342) * ((1 : F) + (1 : F) * rho 3341) = ((1 : F) * rho 3339 + (1 : F) * rho 3340)

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3343) * ((1 : F) + (-1 : F) * rho 3341) = ((1 : F) * rho 3338 + (-1 : F) * rho 3339 + (-1 : F) * rho 3340)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 86⟩], residual := [((-1 : F), 2212), ((1 : F), 3342)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1070) * (relationLc524 rho) = ((1 : F) * rho 3344)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 87⟩], residual := [((1 : F), 3343)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1070) * (relationLc525 rho) = ((1 : F) * rho 3345)

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3336) * ((1 : F) * rho 3337) = ((1 : F) * rho 3346)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3336) * ((1 : F) * rho 3336) = ((1 : F) * rho 3347)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3337) * ((1 : F) * rho 3337) = ((1 : F) * rho 3348)

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3349) * ((-1 : F) * rho 3347 + (1 : F) * rho 3348) = ((2 : F) * rho 3346)

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3350) * ((2 : F) + (1 : F) * rho 3347 + (-1 : F) * rho 3348) = ((1 : F) * rho 3347 + (1 : F) * rho 3348)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 88⟩, ⟨(1 : F), 2226, 13, 87⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3349 + (1 : F) * rho 3350) * (relationLc526 rho) = ((1 : F) * rho 3351)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 87⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3350) * (relationLc527 rho) = ((1 : F) * rho 3352)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3349) * (relationLc528 rho) = ((1 : F) * rho 3353)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3352) * ((1 : F) * rho 3353) = ((1 : F) * rho 3354)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3355) * ((1 : F) + (1 : F) * rho 3354) = ((1 : F) * rho 3352 + (1 : F) * rho 3353)

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3356) * ((1 : F) + (-1 : F) * rho 3354) = ((1 : F) * rho 3351 + (-1 : F) * rho 3352 + (-1 : F) * rho 3353)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 87⟩], residual := [((-1 : F), 2212), ((1 : F), 3355)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1071) * (relationLc529 rho) = ((1 : F) * rho 3357)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 88⟩], residual := [((1 : F), 3356)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1071) * (relationLc530 rho) = ((1 : F) * rho 3358)

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3349) * ((1 : F) * rho 3350) = ((1 : F) * rho 3359)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3349) * ((1 : F) * rho 3349) = ((1 : F) * rho 3360)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3350) * ((1 : F) * rho 3350) = ((1 : F) * rho 3361)

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3362) * ((-1 : F) * rho 3360 + (1 : F) * rho 3361) = ((2 : F) * rho 3359)

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3363) * ((2 : F) + (1 : F) * rho 3360 + (-1 : F) * rho 3361) = ((1 : F) * rho 3360 + (1 : F) * rho 3361)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 89⟩, ⟨(1 : F), 2226, 13, 88⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3362 + (1 : F) * rho 3363) * (relationLc531 rho) = ((1 : F) * rho 3364)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 88⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3363) * (relationLc532 rho) = ((1 : F) * rho 3365)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3362) * (relationLc533 rho) = ((1 : F) * rho 3366)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3365) * ((1 : F) * rho 3366) = ((1 : F) * rho 3367)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3368) * ((1 : F) + (1 : F) * rho 3367) = ((1 : F) * rho 3365 + (1 : F) * rho 3366)

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3369) * ((1 : F) + (-1 : F) * rho 3367) = ((1 : F) * rho 3364 + (-1 : F) * rho 3365 + (-1 : F) * rho 3366)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 88⟩], residual := [((-1 : F), 2212), ((1 : F), 3368)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1072) * (relationLc534 rho) = ((1 : F) * rho 3370)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 89⟩], residual := [((1 : F), 3369)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1072) * (relationLc535 rho) = ((1 : F) * rho 3371)

def relationRow3878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3362) * ((1 : F) * rho 3363) = ((1 : F) * rho 3372)

def relationRow3879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3362) * ((1 : F) * rho 3362) = ((1 : F) * rho 3373)

def relationRow3880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3363) * ((1 : F) * rho 3363) = ((1 : F) * rho 3374)

def relationRow3881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3375) * ((-1 : F) * rho 3373 + (1 : F) * rho 3374) = ((2 : F) * rho 3372)

def relationRow3882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3376) * ((2 : F) + (1 : F) * rho 3373 + (-1 : F) * rho 3374) = ((1 : F) * rho 3373 + (1 : F) * rho 3374)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 90⟩, ⟨(1 : F), 2226, 13, 89⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3375 + (1 : F) * rho 3376) * (relationLc536 rho) = ((1 : F) * rho 3377)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 89⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3376) * (relationLc537 rho) = ((1 : F) * rho 3378)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3375) * (relationLc538 rho) = ((1 : F) * rho 3379)

def relationRow3886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3378) * ((1 : F) * rho 3379) = ((1 : F) * rho 3380)

def relationRow3887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3381) * ((1 : F) + (1 : F) * rho 3380) = ((1 : F) * rho 3378 + (1 : F) * rho 3379)

def relationRow3888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3382) * ((1 : F) + (-1 : F) * rho 3380) = ((1 : F) * rho 3377 + (-1 : F) * rho 3378 + (-1 : F) * rho 3379)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 89⟩], residual := [((-1 : F), 2212), ((1 : F), 3381)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1073) * (relationLc539 rho) = ((1 : F) * rho 3383)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 90⟩], residual := [((1 : F), 3382)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1073) * (relationLc540 rho) = ((1 : F) * rho 3384)

def relationRow3891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3375) * ((1 : F) * rho 3376) = ((1 : F) * rho 3385)

def relationRow3892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3375) * ((1 : F) * rho 3375) = ((1 : F) * rho 3386)

def relationRow3893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3376) * ((1 : F) * rho 3376) = ((1 : F) * rho 3387)

def relationRow3894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3388) * ((-1 : F) * rho 3386 + (1 : F) * rho 3387) = ((2 : F) * rho 3385)

def relationRow3895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3389) * ((2 : F) + (1 : F) * rho 3386 + (-1 : F) * rho 3387) = ((1 : F) * rho 3386 + (1 : F) * rho 3387)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 91⟩, ⟨(1 : F), 2226, 13, 90⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3388 + (1 : F) * rho 3389) * (relationLc541 rho) = ((1 : F) * rho 3390)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 90⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3389) * (relationLc542 rho) = ((1 : F) * rho 3391)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3388) * (relationLc543 rho) = ((1 : F) * rho 3392)

def relationRow3899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3391) * ((1 : F) * rho 3392) = ((1 : F) * rho 3393)

def relationRow3900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3394) * ((1 : F) + (1 : F) * rho 3393) = ((1 : F) * rho 3391 + (1 : F) * rho 3392)

def relationRow3901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3395) * ((1 : F) + (-1 : F) * rho 3393) = ((1 : F) * rho 3390 + (-1 : F) * rho 3391 + (-1 : F) * rho 3392)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
