import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs83

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 90⟩], residual := [((-1 : F), 2212), ((1 : F), 3394)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1074) * (relationLc544 rho) = ((1 : F) * rho 3396)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 91⟩], residual := [((1 : F), 3395)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1074) * (relationLc545 rho) = ((1 : F) * rho 3397)

def relationRow3904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3388) * ((1 : F) * rho 3389) = ((1 : F) * rho 3398)

def relationRow3905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3388) * ((1 : F) * rho 3388) = ((1 : F) * rho 3399)

def relationRow3906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3389) * ((1 : F) * rho 3389) = ((1 : F) * rho 3400)

def relationRow3907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3401) * ((-1 : F) * rho 3399 + (1 : F) * rho 3400) = ((2 : F) * rho 3398)

def relationRow3908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3402) * ((2 : F) + (1 : F) * rho 3399 + (-1 : F) * rho 3400) = ((1 : F) * rho 3399 + (1 : F) * rho 3400)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 92⟩, ⟨(1 : F), 2226, 13, 91⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3401 + (1 : F) * rho 3402) * (relationLc546 rho) = ((1 : F) * rho 3403)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 91⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3402) * (relationLc547 rho) = ((1 : F) * rho 3404)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3401) * (relationLc548 rho) = ((1 : F) * rho 3405)

def relationRow3912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3404) * ((1 : F) * rho 3405) = ((1 : F) * rho 3406)

def relationRow3913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3407) * ((1 : F) + (1 : F) * rho 3406) = ((1 : F) * rho 3404 + (1 : F) * rho 3405)

def relationRow3914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3408) * ((1 : F) + (-1 : F) * rho 3406) = ((1 : F) * rho 3403 + (-1 : F) * rho 3404 + (-1 : F) * rho 3405)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 91⟩], residual := [((-1 : F), 2212), ((1 : F), 3407)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1075) * (relationLc549 rho) = ((1 : F) * rho 3409)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 92⟩], residual := [((1 : F), 3408)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1075) * (relationLc550 rho) = ((1 : F) * rho 3410)

def relationRow3917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3401) * ((1 : F) * rho 3402) = ((1 : F) * rho 3411)

def relationRow3918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3401) * ((1 : F) * rho 3401) = ((1 : F) * rho 3412)

def relationRow3919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3402) * ((1 : F) * rho 3402) = ((1 : F) * rho 3413)

def relationRow3920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * ((-1 : F) * rho 3412 + (1 : F) * rho 3413) = ((2 : F) * rho 3411)

def relationRow3921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3415) * ((2 : F) + (1 : F) * rho 3412 + (-1 : F) * rho 3413) = ((1 : F) * rho 3412 + (1 : F) * rho 3413)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 93⟩, ⟨(1 : F), 2226, 13, 92⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414 + (1 : F) * rho 3415) * (relationLc551 rho) = ((1 : F) * rho 3416)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 92⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3415) * (relationLc552 rho) = ((1 : F) * rho 3417)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * (relationLc553 rho) = ((1 : F) * rho 3418)

def relationRow3925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3417) * ((1 : F) * rho 3418) = ((1 : F) * rho 3419)

def relationRow3926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3420) * ((1 : F) + (1 : F) * rho 3419) = ((1 : F) * rho 3417 + (1 : F) * rho 3418)

def relationRow3927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3421) * ((1 : F) + (-1 : F) * rho 3419) = ((1 : F) * rho 3416 + (-1 : F) * rho 3417 + (-1 : F) * rho 3418)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 92⟩], residual := [((-1 : F), 2212), ((1 : F), 3420)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1076) * (relationLc554 rho) = ((1 : F) * rho 3422)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 93⟩], residual := [((1 : F), 3421)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1076) * (relationLc555 rho) = ((1 : F) * rho 3423)

def relationRow3930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * ((1 : F) * rho 3415) = ((1 : F) * rho 3424)

def relationRow3931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * ((1 : F) * rho 3414) = ((1 : F) * rho 3425)

def relationRow3932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3415) * ((1 : F) * rho 3415) = ((1 : F) * rho 3426)

def relationRow3933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3427) * ((-1 : F) * rho 3425 + (1 : F) * rho 3426) = ((2 : F) * rho 3424)

def relationRow3934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3428) * ((2 : F) + (1 : F) * rho 3425 + (-1 : F) * rho 3426) = ((1 : F) * rho 3425 + (1 : F) * rho 3426)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 94⟩, ⟨(1 : F), 2226, 13, 93⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3427 + (1 : F) * rho 3428) * (relationLc556 rho) = ((1 : F) * rho 3429)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 93⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3428) * (relationLc557 rho) = ((1 : F) * rho 3430)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3427) * (relationLc558 rho) = ((1 : F) * rho 3431)

def relationRow3938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3430) * ((1 : F) * rho 3431) = ((1 : F) * rho 3432)

def relationRow3939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3433) * ((1 : F) + (1 : F) * rho 3432) = ((1 : F) * rho 3430 + (1 : F) * rho 3431)

def relationRow3940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3434) * ((1 : F) + (-1 : F) * rho 3432) = ((1 : F) * rho 3429 + (-1 : F) * rho 3430 + (-1 : F) * rho 3431)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 93⟩], residual := [((-1 : F), 2212), ((1 : F), 3433)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1077) * (relationLc559 rho) = ((1 : F) * rho 3435)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 94⟩], residual := [((1 : F), 3434)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1077) * (relationLc560 rho) = ((1 : F) * rho 3436)

def relationRow3943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3427) * ((1 : F) * rho 3428) = ((1 : F) * rho 3437)

def relationRow3944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3427) * ((1 : F) * rho 3427) = ((1 : F) * rho 3438)

def relationRow3945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3428) * ((1 : F) * rho 3428) = ((1 : F) * rho 3439)

def relationRow3946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3440) * ((-1 : F) * rho 3438 + (1 : F) * rho 3439) = ((2 : F) * rho 3437)

def relationRow3947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3441) * ((2 : F) + (1 : F) * rho 3438 + (-1 : F) * rho 3439) = ((1 : F) * rho 3438 + (1 : F) * rho 3439)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 95⟩, ⟨(1 : F), 2226, 13, 94⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3440 + (1 : F) * rho 3441) * (relationLc561 rho) = ((1 : F) * rho 3442)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 94⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3441) * (relationLc562 rho) = ((1 : F) * rho 3443)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3440) * (relationLc563 rho) = ((1 : F) * rho 3444)

def relationRow3951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3443) * ((1 : F) * rho 3444) = ((1 : F) * rho 3445)

def relationRow3952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3446) * ((1 : F) + (1 : F) * rho 3445) = ((1 : F) * rho 3443 + (1 : F) * rho 3444)

def relationRow3953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3447) * ((1 : F) + (-1 : F) * rho 3445) = ((1 : F) * rho 3442 + (-1 : F) * rho 3443 + (-1 : F) * rho 3444)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 94⟩], residual := [((-1 : F), 2212), ((1 : F), 3446)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1078) * (relationLc564 rho) = ((1 : F) * rho 3448)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 95⟩], residual := [((1 : F), 3447)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1078) * (relationLc565 rho) = ((1 : F) * rho 3449)

def relationRow3956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3440) * ((1 : F) * rho 3441) = ((1 : F) * rho 3450)

def relationRow3957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3440) * ((1 : F) * rho 3440) = ((1 : F) * rho 3451)

def relationRow3958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3441) * ((1 : F) * rho 3441) = ((1 : F) * rho 3452)

def relationRow3959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453) * ((-1 : F) * rho 3451 + (1 : F) * rho 3452) = ((2 : F) * rho 3450)

def relationRow3960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3454) * ((2 : F) + (1 : F) * rho 3451 + (-1 : F) * rho 3452) = ((1 : F) * rho 3451 + (1 : F) * rho 3452)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 96⟩, ⟨(1 : F), 2226, 13, 95⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453 + (1 : F) * rho 3454) * (relationLc566 rho) = ((1 : F) * rho 3455)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 95⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3454) * (relationLc567 rho) = ((1 : F) * rho 3456)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453) * (relationLc568 rho) = ((1 : F) * rho 3457)

def relationRow3964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3456) * ((1 : F) * rho 3457) = ((1 : F) * rho 3458)

def relationRow3965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3459) * ((1 : F) + (1 : F) * rho 3458) = ((1 : F) * rho 3456 + (1 : F) * rho 3457)

def relationRow3966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3460) * ((1 : F) + (-1 : F) * rho 3458) = ((1 : F) * rho 3455 + (-1 : F) * rho 3456 + (-1 : F) * rho 3457)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 95⟩], residual := [((-1 : F), 2212), ((1 : F), 3459)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1079) * (relationLc569 rho) = ((1 : F) * rho 3461)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 96⟩], residual := [((1 : F), 3460)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1079) * (relationLc570 rho) = ((1 : F) * rho 3462)

def relationRow3969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453) * ((1 : F) * rho 3454) = ((1 : F) * rho 3463)

def relationRow3970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3453) * ((1 : F) * rho 3453) = ((1 : F) * rho 3464)

def relationRow3971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3454) * ((1 : F) * rho 3454) = ((1 : F) * rho 3465)

def relationRow3972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3466) * ((-1 : F) * rho 3464 + (1 : F) * rho 3465) = ((2 : F) * rho 3463)

def relationRow3973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3467) * ((2 : F) + (1 : F) * rho 3464 + (-1 : F) * rho 3465) = ((1 : F) * rho 3464 + (1 : F) * rho 3465)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 97⟩, ⟨(1 : F), 2226, 13, 96⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3466 + (1 : F) * rho 3467) * (relationLc571 rho) = ((1 : F) * rho 3468)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 96⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
