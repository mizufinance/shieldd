import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6Defs8

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3397) * ((2 : F) + (1 : F) * rho 3394 + (-1 : F) * rho 3395) = ((1 : F) * rho 3394 + (1 : F) * rho 3395)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3396 + (1 : F) * rho 3397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 22⟩, ⟨(1 : F), 3119, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3398)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3399)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3396) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3400)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3399) * ((1 : F) * rho 3400) = ((1 : F) * rho 3401)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3402) * ((1 : F) + (1 : F) * rho 3401) = ((1 : F) * rho 3399 + (1 : F) * rho 3400)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3403) * ((1 : F) + (-1 : F) * rho 3401) = ((1 : F) * rho 3398 + (-1 : F) * rho 3399 + (-1 : F) * rho 3400)

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 22⟩], residual := [((1 : F), 3402)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3404)

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 22⟩], residual := [((1 : F), 3403)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3405)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3396) * ((1 : F) * rho 3397) = ((1 : F) * rho 3406)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3396) * ((1 : F) * rho 3396) = ((1 : F) * rho 3407)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3397) * ((1 : F) * rho 3397) = ((1 : F) * rho 3408)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409) * ((-1 : F) * rho 3407 + (1 : F) * rho 3408) = ((2 : F) * rho 3406)

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3410) * ((2 : F) + (1 : F) * rho 3407 + (-1 : F) * rho 3408) = ((1 : F) * rho 3407 + (1 : F) * rho 3408)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409 + (1 : F) * rho 3410) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 23⟩, ⟨(1 : F), 3119, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3411)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3410) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3412)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3413)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3412) * ((1 : F) * rho 3413) = ((1 : F) * rho 3414)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3415) * ((1 : F) + (1 : F) * rho 3414) = ((1 : F) * rho 3412 + (1 : F) * rho 3413)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3416) * ((1 : F) + (-1 : F) * rho 3414) = ((1 : F) * rho 3411 + (-1 : F) * rho 3412 + (-1 : F) * rho 3413)

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 23⟩], residual := [((1 : F), 3415)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3417)

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 23⟩], residual := [((1 : F), 3416)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3418)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409) * ((1 : F) * rho 3410) = ((1 : F) * rho 3419)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3409) * ((1 : F) * rho 3409) = ((1 : F) * rho 3420)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3410) * ((1 : F) * rho 3410) = ((1 : F) * rho 3421)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3422) * ((-1 : F) * rho 3420 + (1 : F) * rho 3421) = ((2 : F) * rho 3419)

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3423) * ((2 : F) + (1 : F) * rho 3420 + (-1 : F) * rho 3421) = ((1 : F) * rho 3420 + (1 : F) * rho 3421)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3422 + (1 : F) * rho 3423) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 24⟩, ⟨(1 : F), 3119, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3424)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3423) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3425)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3422) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3426)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3425) * ((1 : F) * rho 3426) = ((1 : F) * rho 3427)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3428) * ((1 : F) + (1 : F) * rho 3427) = ((1 : F) * rho 3425 + (1 : F) * rho 3426)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3429) * ((1 : F) + (-1 : F) * rho 3427) = ((1 : F) * rho 3424 + (-1 : F) * rho 3425 + (-1 : F) * rho 3426)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 24⟩], residual := [((1 : F), 3428)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3430)

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 24⟩], residual := [((1 : F), 3429)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3431)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3422) * ((1 : F) * rho 3423) = ((1 : F) * rho 3432)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3422) * ((1 : F) * rho 3422) = ((1 : F) * rho 3433)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3423) * ((1 : F) * rho 3423) = ((1 : F) * rho 3434)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435) * ((-1 : F) * rho 3433 + (1 : F) * rho 3434) = ((2 : F) * rho 3432)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3436) * ((2 : F) + (1 : F) * rho 3433 + (-1 : F) * rho 3434) = ((1 : F) * rho 3433 + (1 : F) * rho 3434)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435 + (1 : F) * rho 3436) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 25⟩, ⟨(1 : F), 3119, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3437)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3436) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3438)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3439)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3438) * ((1 : F) * rho 3439) = ((1 : F) * rho 3440)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3441) * ((1 : F) + (1 : F) * rho 3440) = ((1 : F) * rho 3438 + (1 : F) * rho 3439)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3442) * ((1 : F) + (-1 : F) * rho 3440) = ((1 : F) * rho 3437 + (-1 : F) * rho 3438 + (-1 : F) * rho 3439)

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 25⟩], residual := [((1 : F), 3441)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3443)

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 25⟩], residual := [((1 : F), 3442)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3444)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435) * ((1 : F) * rho 3436) = ((1 : F) * rho 3445)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3435) * ((1 : F) * rho 3435) = ((1 : F) * rho 3446)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3436) * ((1 : F) * rho 3436) = ((1 : F) * rho 3447)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448) * ((-1 : F) * rho 3446 + (1 : F) * rho 3447) = ((2 : F) * rho 3445)

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3449) * ((2 : F) + (1 : F) * rho 3446 + (-1 : F) * rho 3447) = ((1 : F) * rho 3446 + (1 : F) * rho 3447)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448 + (1 : F) * rho 3449) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 26⟩, ⟨(1 : F), 3119, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3450)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3449) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3451)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3452)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3451) * ((1 : F) * rho 3452) = ((1 : F) * rho 3453)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3454) * ((1 : F) + (1 : F) * rho 3453) = ((1 : F) * rho 3451 + (1 : F) * rho 3452)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3455) * ((1 : F) + (-1 : F) * rho 3453) = ((1 : F) * rho 3450 + (-1 : F) * rho 3451 + (-1 : F) * rho 3452)

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 26⟩], residual := [((1 : F), 3454)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3456)

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 26⟩], residual := [((1 : F), 3455)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3457)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448) * ((1 : F) * rho 3449) = ((1 : F) * rho 3458)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3448) * ((1 : F) * rho 3448) = ((1 : F) * rho 3459)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3449) * ((1 : F) * rho 3449) = ((1 : F) * rho 3460)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3461) * ((-1 : F) * rho 3459 + (1 : F) * rho 3460) = ((2 : F) * rho 3458)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3462) * ((2 : F) + (1 : F) * rho 3459 + (-1 : F) * rho 3460) = ((1 : F) * rho 3459 + (1 : F) * rho 3460)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3461 + (1 : F) * rho 3462) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 27⟩, ⟨(1 : F), 3119, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3463)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3462) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3464)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3461) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3465)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3464) * ((1 : F) * rho 3465) = ((1 : F) * rho 3466)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3467) * ((1 : F) + (1 : F) * rho 3466) = ((1 : F) * rho 3464 + (1 : F) * rho 3465)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3468) * ((1 : F) + (-1 : F) * rho 3466) = ((1 : F) * rho 3463 + (-1 : F) * rho 3464 + (-1 : F) * rho 3465)

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 27⟩], residual := [((1 : F), 3467)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3469)

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 27⟩], residual := [((1 : F), 3468)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3470)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3461) * ((1 : F) * rho 3462) = ((1 : F) * rho 3471)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3461) * ((1 : F) * rho 3461) = ((1 : F) * rho 3472)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3462) * ((1 : F) * rho 3462) = ((1 : F) * rho 3473)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * ((-1 : F) * rho 3472 + (1 : F) * rho 3473) = ((2 : F) * rho 3471)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3475) * ((2 : F) + (1 : F) * rho 3472 + (-1 : F) * rho 3473) = ((1 : F) * rho 3472 + (1 : F) * rho 3473)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474 + (1 : F) * rho 3475) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 28⟩, ⟨(1 : F), 3119, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3476)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3475) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3477)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3478)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3477) * ((1 : F) * rho 3478) = ((1 : F) * rho 3479)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) + (1 : F) * rho 3479) = ((1 : F) * rho 3477 + (1 : F) * rho 3478)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3481) * ((1 : F) + (-1 : F) * rho 3479) = ((1 : F) * rho 3476 + (-1 : F) * rho 3477 + (-1 : F) * rho 3478)

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 28⟩], residual := [((1 : F), 3480)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3482)

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 28⟩], residual := [((1 : F), 3481)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3483)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * ((1 : F) * rho 3475) = ((1 : F) * rho 3484)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3474) * ((1 : F) * rho 3474) = ((1 : F) * rho 3485)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3475) * ((1 : F) * rho 3475) = ((1 : F) * rho 3486)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3487) * ((-1 : F) * rho 3485 + (1 : F) * rho 3486) = ((2 : F) * rho 3484)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3488) * ((2 : F) + (1 : F) * rho 3485 + (-1 : F) * rho 3486) = ((1 : F) * rho 3485 + (1 : F) * rho 3486)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3487 + (1 : F) * rho 3488) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 29⟩, ⟨(1 : F), 3119, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3489)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3488) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3490)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3487) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3491)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3490) * ((1 : F) * rho 3491) = ((1 : F) * rho 3492)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3493) * ((1 : F) + (1 : F) * rho 3492) = ((1 : F) * rho 3490 + (1 : F) * rho 3491)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3494) * ((1 : F) + (-1 : F) * rho 3492) = ((1 : F) * rho 3489 + (-1 : F) * rho 3490 + (-1 : F) * rho 3491)

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 29⟩], residual := [((1 : F), 3493)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3495)

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 29⟩], residual := [((1 : F), 3494)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3496)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3487) * ((1 : F) * rho 3488) = ((1 : F) * rho 3497)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3487) * ((1 : F) * rho 3487) = ((1 : F) * rho 3498)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3488) * ((1 : F) * rho 3488) = ((1 : F) * rho 3499)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3500) * ((-1 : F) * rho 3498 + (1 : F) * rho 3499) = ((2 : F) * rho 3497)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3501) * ((2 : F) + (1 : F) * rho 3498 + (-1 : F) * rho 3499) = ((1 : F) * rho 3498 + (1 : F) * rho 3499)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3500 + (1 : F) * rho 3501) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 30⟩, ⟨(1 : F), 3119, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3502)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3501) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3503)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3500) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3504)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3503) * ((1 : F) * rho 3504) = ((1 : F) * rho 3505)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3506) * ((1 : F) + (1 : F) * rho 3505) = ((1 : F) * rho 3503 + (1 : F) * rho 3504)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3507) * ((1 : F) + (-1 : F) * rho 3505) = ((1 : F) * rho 3502 + (-1 : F) * rho 3503 + (-1 : F) * rho 3504)

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 30⟩], residual := [((1 : F), 3506)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3508)

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 30⟩], residual := [((1 : F), 3507)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3509)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3500) * ((1 : F) * rho 3501) = ((1 : F) * rho 3510)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3500) * ((1 : F) * rho 3500) = ((1 : F) * rho 3511)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3501) * ((1 : F) * rho 3501) = ((1 : F) * rho 3512)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((-1 : F) * rho 3511 + (1 : F) * rho 3512) = ((2 : F) * rho 3510)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3514) * ((2 : F) + (1 : F) * rho 3511 + (-1 : F) * rho 3512) = ((1 : F) * rho 3511 + (1 : F) * rho 3512)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513 + (1 : F) * rho 3514) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 31⟩, ⟨(1 : F), 3119, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3515)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3514) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3516)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3517)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3516) * ((1 : F) * rho 3517) = ((1 : F) * rho 3518)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3519) * ((1 : F) + (1 : F) * rho 3518) = ((1 : F) * rho 3516 + (1 : F) * rho 3517)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3520) * ((1 : F) + (-1 : F) * rho 3518) = ((1 : F) * rho 3515 + (-1 : F) * rho 3516 + (-1 : F) * rho 3517)

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 31⟩], residual := [((1 : F), 3519)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3521)

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 31⟩], residual := [((1 : F), 3520)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3522)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((1 : F) * rho 3514) = ((1 : F) * rho 3523)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((1 : F) * rho 3513) = ((1 : F) * rho 3524)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3514) * ((1 : F) * rho 3514) = ((1 : F) * rho 3525)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3526) * ((-1 : F) * rho 3524 + (1 : F) * rho 3525) = ((2 : F) * rho 3523)

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3527) * ((2 : F) + (1 : F) * rho 3524 + (-1 : F) * rho 3525) = ((1 : F) * rho 3524 + (1 : F) * rho 3525)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3526 + (1 : F) * rho 3527) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 32⟩, ⟨(1 : F), 3119, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3528)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3527) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3529)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3526) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3530)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3529) * ((1 : F) * rho 3530) = ((1 : F) * rho 3531)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3532) * ((1 : F) + (1 : F) * rho 3531) = ((1 : F) * rho 3529 + (1 : F) * rho 3530)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3533) * ((1 : F) + (-1 : F) * rho 3531) = ((1 : F) * rho 3528 + (-1 : F) * rho 3529 + (-1 : F) * rho 3530)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 32⟩], residual := [((1 : F), 3532)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3534)

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 32⟩], residual := [((1 : F), 3533)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3535)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3526) * ((1 : F) * rho 3527) = ((1 : F) * rho 3536)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3526) * ((1 : F) * rho 3526) = ((1 : F) * rho 3537)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3527) * ((1 : F) * rho 3527) = ((1 : F) * rho 3538)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3539) * ((-1 : F) * rho 3537 + (1 : F) * rho 3538) = ((2 : F) * rho 3536)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3540) * ((2 : F) + (1 : F) * rho 3537 + (-1 : F) * rho 3538) = ((1 : F) * rho 3537 + (1 : F) * rho 3538)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3539 + (1 : F) * rho 3540) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 33⟩, ⟨(1 : F), 3119, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3541)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3540) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3542)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3539) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3543)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3542) * ((1 : F) * rho 3543) = ((1 : F) * rho 3544)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3545) * ((1 : F) + (1 : F) * rho 3544) = ((1 : F) * rho 3542 + (1 : F) * rho 3543)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) + (-1 : F) * rho 3544) = ((1 : F) * rho 3541 + (-1 : F) * rho 3542 + (-1 : F) * rho 3543)

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 33⟩], residual := [((1 : F), 3545)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3547)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 33⟩], residual := [((1 : F), 3546)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3548)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3539) * ((1 : F) * rho 3540) = ((1 : F) * rho 3549)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3539) * ((1 : F) * rho 3539) = ((1 : F) * rho 3550)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3540) * ((1 : F) * rho 3540) = ((1 : F) * rho 3551)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((-1 : F) * rho 3550 + (1 : F) * rho 3551) = ((2 : F) * rho 3549)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * ((2 : F) + (1 : F) * rho 3550 + (-1 : F) * rho 3551) = ((1 : F) * rho 3550 + (1 : F) * rho 3551)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552 + (1 : F) * rho 3553) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 34⟩, ⟨(1 : F), 3119, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3554)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3555)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3556)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3555) * ((1 : F) * rho 3556) = ((1 : F) * rho 3557)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * ((1 : F) + (1 : F) * rho 3557) = ((1 : F) * rho 3555 + (1 : F) * rho 3556)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559) * ((1 : F) + (-1 : F) * rho 3557) = ((1 : F) * rho 3554 + (-1 : F) * rho 3555 + (-1 : F) * rho 3556)

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 34⟩], residual := [((1 : F), 3558)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3560)

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 34⟩], residual := [((1 : F), 3559)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3561)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((1 : F) * rho 3553) = ((1 : F) * rho 3562)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((1 : F) * rho 3552) = ((1 : F) * rho 3563)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * ((1 : F) * rho 3553) = ((1 : F) * rho 3564)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((-1 : F) * rho 3563 + (1 : F) * rho 3564) = ((2 : F) * rho 3562)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * ((2 : F) + (1 : F) * rho 3563 + (-1 : F) * rho 3564) = ((1 : F) * rho 3563 + (1 : F) * rho 3564)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565 + (1 : F) * rho 3566) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 35⟩, ⟨(1 : F), 3119, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3567)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3568)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3569)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3568) * ((1 : F) * rho 3569) = ((1 : F) * rho 3570)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3571) * ((1 : F) + (1 : F) * rho 3570) = ((1 : F) * rho 3568 + (1 : F) * rho 3569)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((1 : F) + (-1 : F) * rho 3570) = ((1 : F) * rho 3567 + (-1 : F) * rho 3568 + (-1 : F) * rho 3569)

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 35⟩], residual := [((1 : F), 3571)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3573)

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 35⟩], residual := [((1 : F), 3572)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3574)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((1 : F) * rho 3566) = ((1 : F) * rho 3575)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((1 : F) * rho 3565) = ((1 : F) * rho 3576)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * ((1 : F) * rho 3566) = ((1 : F) * rho 3577)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((-1 : F) * rho 3576 + (1 : F) * rho 3577) = ((2 : F) * rho 3575)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * ((2 : F) + (1 : F) * rho 3576 + (-1 : F) * rho 3577) = ((1 : F) * rho 3576 + (1 : F) * rho 3577)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578 + (1 : F) * rho 3579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 36⟩, ⟨(1 : F), 3119, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3580)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3581)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3582)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3581) * ((1 : F) * rho 3582) = ((1 : F) * rho 3583)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3584) * ((1 : F) + (1 : F) * rho 3583) = ((1 : F) * rho 3581 + (1 : F) * rho 3582)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585) * ((1 : F) + (-1 : F) * rho 3583) = ((1 : F) * rho 3580 + (-1 : F) * rho 3581 + (-1 : F) * rho 3582)

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 36⟩], residual := [((1 : F), 3584)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3586)

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 36⟩], residual := [((1 : F), 3585)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3587)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((1 : F) * rho 3579) = ((1 : F) * rho 3588)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((1 : F) * rho 3578) = ((1 : F) * rho 3589)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * ((1 : F) * rho 3579) = ((1 : F) * rho 3590)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((-1 : F) * rho 3589 + (1 : F) * rho 3590) = ((2 : F) * rho 3588)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * ((2 : F) + (1 : F) * rho 3589 + (-1 : F) * rho 3590) = ((1 : F) * rho 3589 + (1 : F) * rho 3590)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591 + (1 : F) * rho 3592) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 37⟩, ⟨(1 : F), 3119, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3593)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3594)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3595)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3594) * ((1 : F) * rho 3595) = ((1 : F) * rho 3596)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3597) * ((1 : F) + (1 : F) * rho 3596) = ((1 : F) * rho 3594 + (1 : F) * rho 3595)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * ((1 : F) + (-1 : F) * rho 3596) = ((1 : F) * rho 3593 + (-1 : F) * rho 3594 + (-1 : F) * rho 3595)

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 37⟩], residual := [((1 : F), 3597)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3599)

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 37⟩], residual := [((1 : F), 3598)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3600)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((1 : F) * rho 3592) = ((1 : F) * rho 3601)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((1 : F) * rho 3591) = ((1 : F) * rho 3602)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * ((1 : F) * rho 3592) = ((1 : F) * rho 3603)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((-1 : F) * rho 3602 + (1 : F) * rho 3603) = ((2 : F) * rho 3601)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * ((2 : F) + (1 : F) * rho 3602 + (-1 : F) * rho 3603) = ((1 : F) * rho 3602 + (1 : F) * rho 3603)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604 + (1 : F) * rho 3605) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 38⟩, ⟨(1 : F), 3119, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3606)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3607)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3608)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3607) * ((1 : F) * rho 3608) = ((1 : F) * rho 3609)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3610) * ((1 : F) + (1 : F) * rho 3609) = ((1 : F) * rho 3607 + (1 : F) * rho 3608)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) + (-1 : F) * rho 3609) = ((1 : F) * rho 3606 + (-1 : F) * rho 3607 + (-1 : F) * rho 3608)

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 38⟩], residual := [((1 : F), 3610)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3612)

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 38⟩], residual := [((1 : F), 3611)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3613)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((1 : F) * rho 3605) = ((1 : F) * rho 3614)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((1 : F) * rho 3604) = ((1 : F) * rho 3615)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * ((1 : F) * rho 3605) = ((1 : F) * rho 3616)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((-1 : F) * rho 3615 + (1 : F) * rho 3616) = ((2 : F) * rho 3614)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * ((2 : F) + (1 : F) * rho 3615 + (-1 : F) * rho 3616) = ((1 : F) * rho 3615 + (1 : F) * rho 3616)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617 + (1 : F) * rho 3618) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 39⟩, ⟨(1 : F), 3119, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3619)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3620)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3621)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3620) * ((1 : F) * rho 3621) = ((1 : F) * rho 3622)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3623) * ((1 : F) + (1 : F) * rho 3622) = ((1 : F) * rho 3620 + (1 : F) * rho 3621)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624) * ((1 : F) + (-1 : F) * rho 3622) = ((1 : F) * rho 3619 + (-1 : F) * rho 3620 + (-1 : F) * rho 3621)

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 39⟩], residual := [((1 : F), 3623)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3625)

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 39⟩], residual := [((1 : F), 3624)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3626)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) * rho 3618) = ((1 : F) * rho 3627)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) * rho 3617) = ((1 : F) * rho 3628)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * ((1 : F) * rho 3618) = ((1 : F) * rho 3629)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((-1 : F) * rho 3628 + (1 : F) * rho 3629) = ((2 : F) * rho 3627)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * ((2 : F) + (1 : F) * rho 3628 + (-1 : F) * rho 3629) = ((1 : F) * rho 3628 + (1 : F) * rho 3629)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630 + (1 : F) * rho 3631) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 40⟩, ⟨(1 : F), 3119, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3632)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3633)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3634)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3633) * ((1 : F) * rho 3634) = ((1 : F) * rho 3635)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3636) * ((1 : F) + (1 : F) * rho 3635) = ((1 : F) * rho 3633 + (1 : F) * rho 3634)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637) * ((1 : F) + (-1 : F) * rho 3635) = ((1 : F) * rho 3632 + (-1 : F) * rho 3633 + (-1 : F) * rho 3634)

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 40⟩], residual := [((1 : F), 3636)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3638)

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 40⟩], residual := [((1 : F), 3637)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3639)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((1 : F) * rho 3631) = ((1 : F) * rho 3640)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((1 : F) * rho 3630) = ((1 : F) * rho 3641)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * ((1 : F) * rho 3631) = ((1 : F) * rho 3642)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((-1 : F) * rho 3641 + (1 : F) * rho 3642) = ((2 : F) * rho 3640)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((2 : F) + (1 : F) * rho 3641 + (-1 : F) * rho 3642) = ((1 : F) * rho 3641 + (1 : F) * rho 3642)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643 + (1 : F) * rho 3644) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 41⟩, ⟨(1 : F), 3119, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3645)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3646)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3647)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3646) * ((1 : F) * rho 3647) = ((1 : F) * rho 3648)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3649) * ((1 : F) + (1 : F) * rho 3648) = ((1 : F) * rho 3646 + (1 : F) * rho 3647)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650) * ((1 : F) + (-1 : F) * rho 3648) = ((1 : F) * rho 3645 + (-1 : F) * rho 3646 + (-1 : F) * rho 3647)

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 41⟩], residual := [((1 : F), 3649)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3651)

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 41⟩], residual := [((1 : F), 3650)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3652)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((1 : F) * rho 3644) = ((1 : F) * rho 3653)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((1 : F) * rho 3643) = ((1 : F) * rho 3654)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((1 : F) * rho 3644) = ((1 : F) * rho 3655)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((-1 : F) * rho 3654 + (1 : F) * rho 3655) = ((2 : F) * rho 3653)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * ((2 : F) + (1 : F) * rho 3654 + (-1 : F) * rho 3655) = ((1 : F) * rho 3654 + (1 : F) * rho 3655)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656 + (1 : F) * rho 3657) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 42⟩, ⟨(1 : F), 3119, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3658)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3659)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3660)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3659) * ((1 : F) * rho 3660) = ((1 : F) * rho 3661)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3662) * ((1 : F) + (1 : F) * rho 3661) = ((1 : F) * rho 3659 + (1 : F) * rho 3660)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663) * ((1 : F) + (-1 : F) * rho 3661) = ((1 : F) * rho 3658 + (-1 : F) * rho 3659 + (-1 : F) * rho 3660)

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 42⟩], residual := [((1 : F), 3662)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3664)

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 42⟩], residual := [((1 : F), 3663)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3665)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) * rho 3657) = ((1 : F) * rho 3666)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) * rho 3656) = ((1 : F) * rho 3667)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * ((1 : F) * rho 3657) = ((1 : F) * rho 3668)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((-1 : F) * rho 3667 + (1 : F) * rho 3668) = ((2 : F) * rho 3666)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * ((2 : F) + (1 : F) * rho 3667 + (-1 : F) * rho 3668) = ((1 : F) * rho 3667 + (1 : F) * rho 3668)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669 + (1 : F) * rho 3670) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 43⟩, ⟨(1 : F), 3119, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3671)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3672)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3673)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3672) * ((1 : F) * rho 3673) = ((1 : F) * rho 3674)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3675) * ((1 : F) + (1 : F) * rho 3674) = ((1 : F) * rho 3672 + (1 : F) * rho 3673)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676) * ((1 : F) + (-1 : F) * rho 3674) = ((1 : F) * rho 3671 + (-1 : F) * rho 3672 + (-1 : F) * rho 3673)

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 43⟩], residual := [((1 : F), 3675)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3677)

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 43⟩], residual := [((1 : F), 3676)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3678)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((1 : F) * rho 3670) = ((1 : F) * rho 3679)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((1 : F) * rho 3669) = ((1 : F) * rho 3680)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * ((1 : F) * rho 3670) = ((1 : F) * rho 3681)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((-1 : F) * rho 3680 + (1 : F) * rho 3681) = ((2 : F) * rho 3679)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * ((2 : F) + (1 : F) * rho 3680 + (-1 : F) * rho 3681) = ((1 : F) * rho 3680 + (1 : F) * rho 3681)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682 + (1 : F) * rho 3683) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 44⟩, ⟨(1 : F), 3119, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3684)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3685)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3686)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3685) * ((1 : F) * rho 3686) = ((1 : F) * rho 3687)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3688) * ((1 : F) + (1 : F) * rho 3687) = ((1 : F) * rho 3685 + (1 : F) * rho 3686)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689) * ((1 : F) + (-1 : F) * rho 3687) = ((1 : F) * rho 3684 + (-1 : F) * rho 3685 + (-1 : F) * rho 3686)

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 44⟩], residual := [((1 : F), 3688)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3690)

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 44⟩], residual := [((1 : F), 3689)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3691)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((1 : F) * rho 3683) = ((1 : F) * rho 3692)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((1 : F) * rho 3682) = ((1 : F) * rho 3693)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * ((1 : F) * rho 3683) = ((1 : F) * rho 3694)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((-1 : F) * rho 3693 + (1 : F) * rho 3694) = ((2 : F) * rho 3692)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * ((2 : F) + (1 : F) * rho 3693 + (-1 : F) * rho 3694) = ((1 : F) * rho 3693 + (1 : F) * rho 3694)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695 + (1 : F) * rho 3696) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 45⟩, ⟨(1 : F), 3119, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3697)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3698)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3699)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3698) * ((1 : F) * rho 3699) = ((1 : F) * rho 3700)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3701) * ((1 : F) + (1 : F) * rho 3700) = ((1 : F) * rho 3698 + (1 : F) * rho 3699)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702) * ((1 : F) + (-1 : F) * rho 3700) = ((1 : F) * rho 3697 + (-1 : F) * rho 3698 + (-1 : F) * rho 3699)

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 45⟩], residual := [((1 : F), 3701)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3703)

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 45⟩], residual := [((1 : F), 3702)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3704)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((1 : F) * rho 3696) = ((1 : F) * rho 3705)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((1 : F) * rho 3695) = ((1 : F) * rho 3706)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * ((1 : F) * rho 3696) = ((1 : F) * rho 3707)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((-1 : F) * rho 3706 + (1 : F) * rho 3707) = ((2 : F) * rho 3705)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * ((2 : F) + (1 : F) * rho 3706 + (-1 : F) * rho 3707) = ((1 : F) * rho 3706 + (1 : F) * rho 3707)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708 + (1 : F) * rho 3709) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 46⟩, ⟨(1 : F), 3119, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3710)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3711)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3712)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3711) * ((1 : F) * rho 3712) = ((1 : F) * rho 3713)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3714) * ((1 : F) + (1 : F) * rho 3713) = ((1 : F) * rho 3711 + (1 : F) * rho 3712)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715) * ((1 : F) + (-1 : F) * rho 3713) = ((1 : F) * rho 3710 + (-1 : F) * rho 3711 + (-1 : F) * rho 3712)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 46⟩], residual := [((1 : F), 3714)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3716)

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 46⟩], residual := [((1 : F), 3715)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3717)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((1 : F) * rho 3709) = ((1 : F) * rho 3718)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((1 : F) * rho 3708) = ((1 : F) * rho 3719)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * ((1 : F) * rho 3709) = ((1 : F) * rho 3720)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((-1 : F) * rho 3719 + (1 : F) * rho 3720) = ((2 : F) * rho 3718)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * ((2 : F) + (1 : F) * rho 3719 + (-1 : F) * rho 3720) = ((1 : F) * rho 3719 + (1 : F) * rho 3720)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721 + (1 : F) * rho 3722) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 47⟩, ⟨(1 : F), 3119, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3723)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3724)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3725)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3724) * ((1 : F) * rho 3725) = ((1 : F) * rho 3726)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3727) * ((1 : F) + (1 : F) * rho 3726) = ((1 : F) * rho 3724 + (1 : F) * rho 3725)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728) * ((1 : F) + (-1 : F) * rho 3726) = ((1 : F) * rho 3723 + (-1 : F) * rho 3724 + (-1 : F) * rho 3725)

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 47⟩], residual := [((1 : F), 3727)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3729)

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 47⟩], residual := [((1 : F), 3728)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3730)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((1 : F) * rho 3722) = ((1 : F) * rho 3731)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((1 : F) * rho 3721) = ((1 : F) * rho 3732)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * ((1 : F) * rho 3722) = ((1 : F) * rho 3733)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((-1 : F) * rho 3732 + (1 : F) * rho 3733) = ((2 : F) * rho 3731)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * ((2 : F) + (1 : F) * rho 3732 + (-1 : F) * rho 3733) = ((1 : F) * rho 3732 + (1 : F) * rho 3733)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734 + (1 : F) * rho 3735) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 48⟩, ⟨(1 : F), 3119, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3736)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3737)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3738)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3737) * ((1 : F) * rho 3738) = ((1 : F) * rho 3739)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3740) * ((1 : F) + (1 : F) * rho 3739) = ((1 : F) * rho 3737 + (1 : F) * rho 3738)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741) * ((1 : F) + (-1 : F) * rho 3739) = ((1 : F) * rho 3736 + (-1 : F) * rho 3737 + (-1 : F) * rho 3738)

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 48⟩], residual := [((1 : F), 3740)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3742)

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 48⟩], residual := [((1 : F), 3741)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3743)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((1 : F) * rho 3735) = ((1 : F) * rho 3744)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((1 : F) * rho 3734) = ((1 : F) * rho 3745)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * ((1 : F) * rho 3735) = ((1 : F) * rho 3746)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((-1 : F) * rho 3745 + (1 : F) * rho 3746) = ((2 : F) * rho 3744)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * ((2 : F) + (1 : F) * rho 3745 + (-1 : F) * rho 3746) = ((1 : F) * rho 3745 + (1 : F) * rho 3746)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747 + (1 : F) * rho 3748) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 49⟩, ⟨(1 : F), 3119, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3749)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3750)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3751)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3750) * ((1 : F) * rho 3751) = ((1 : F) * rho 3752)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3753) * ((1 : F) + (1 : F) * rho 3752) = ((1 : F) * rho 3750 + (1 : F) * rho 3751)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754) * ((1 : F) + (-1 : F) * rho 3752) = ((1 : F) * rho 3749 + (-1 : F) * rho 3750 + (-1 : F) * rho 3751)

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 49⟩], residual := [((1 : F), 3753)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3755)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 49⟩], residual := [((1 : F), 3754)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3756)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((1 : F) * rho 3748) = ((1 : F) * rho 3757)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((1 : F) * rho 3747) = ((1 : F) * rho 3758)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * ((1 : F) * rho 3748) = ((1 : F) * rho 3759)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((-1 : F) * rho 3758 + (1 : F) * rho 3759) = ((2 : F) * rho 3757)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * ((2 : F) + (1 : F) * rho 3758 + (-1 : F) * rho 3759) = ((1 : F) * rho 3758 + (1 : F) * rho 3759)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760 + (1 : F) * rho 3761) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 50⟩, ⟨(1 : F), 3119, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3762)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3763)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3764)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3763) * ((1 : F) * rho 3764) = ((1 : F) * rho 3765)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3766) * ((1 : F) + (1 : F) * rho 3765) = ((1 : F) * rho 3763 + (1 : F) * rho 3764)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767) * ((1 : F) + (-1 : F) * rho 3765) = ((1 : F) * rho 3762 + (-1 : F) * rho 3763 + (-1 : F) * rho 3764)

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 50⟩], residual := [((1 : F), 3766)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3768)

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 50⟩], residual := [((1 : F), 3767)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3769)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((1 : F) * rho 3761) = ((1 : F) * rho 3770)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((1 : F) * rho 3760) = ((1 : F) * rho 3771)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * ((1 : F) * rho 3761) = ((1 : F) * rho 3772)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((-1 : F) * rho 3771 + (1 : F) * rho 3772) = ((2 : F) * rho 3770)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * ((2 : F) + (1 : F) * rho 3771 + (-1 : F) * rho 3772) = ((1 : F) * rho 3771 + (1 : F) * rho 3772)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773 + (1 : F) * rho 3774) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 51⟩, ⟨(1 : F), 3119, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3775)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3776)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3777)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3776) * ((1 : F) * rho 3777) = ((1 : F) * rho 3778)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3779) * ((1 : F) + (1 : F) * rho 3778) = ((1 : F) * rho 3776 + (1 : F) * rho 3777)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780) * ((1 : F) + (-1 : F) * rho 3778) = ((1 : F) * rho 3775 + (-1 : F) * rho 3776 + (-1 : F) * rho 3777)

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 51⟩], residual := [((1 : F), 3779)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3781)

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 51⟩], residual := [((1 : F), 3780)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3782)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((1 : F) * rho 3774) = ((1 : F) * rho 3783)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((1 : F) * rho 3773) = ((1 : F) * rho 3784)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * ((1 : F) * rho 3774) = ((1 : F) * rho 3785)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((-1 : F) * rho 3784 + (1 : F) * rho 3785) = ((2 : F) * rho 3783)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * ((2 : F) + (1 : F) * rho 3784 + (-1 : F) * rho 3785) = ((1 : F) * rho 3784 + (1 : F) * rho 3785)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786 + (1 : F) * rho 3787) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 52⟩, ⟨(1 : F), 3119, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3788)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3789)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3790)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3789) * ((1 : F) * rho 3790) = ((1 : F) * rho 3791)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3792) * ((1 : F) + (1 : F) * rho 3791) = ((1 : F) * rho 3789 + (1 : F) * rho 3790)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793) * ((1 : F) + (-1 : F) * rho 3791) = ((1 : F) * rho 3788 + (-1 : F) * rho 3789 + (-1 : F) * rho 3790)

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 52⟩], residual := [((1 : F), 3792)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3794)

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 52⟩], residual := [((1 : F), 3793)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3795)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((1 : F) * rho 3787) = ((1 : F) * rho 3796)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((1 : F) * rho 3786) = ((1 : F) * rho 3797)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * ((1 : F) * rho 3787) = ((1 : F) * rho 3798)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((-1 : F) * rho 3797 + (1 : F) * rho 3798) = ((2 : F) * rho 3796)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((2 : F) + (1 : F) * rho 3797 + (-1 : F) * rho 3798) = ((1 : F) * rho 3797 + (1 : F) * rho 3798)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799 + (1 : F) * rho 3800) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 53⟩, ⟨(1 : F), 3119, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3801)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3802)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3803)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3802) * ((1 : F) * rho 3803) = ((1 : F) * rho 3804)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * ((1 : F) + (1 : F) * rho 3804) = ((1 : F) * rho 3802 + (1 : F) * rho 3803)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806) * ((1 : F) + (-1 : F) * rho 3804) = ((1 : F) * rho 3801 + (-1 : F) * rho 3802 + (-1 : F) * rho 3803)

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 53⟩], residual := [((1 : F), 3805)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3807)

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 53⟩], residual := [((1 : F), 3806)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3808)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) * rho 3800) = ((1 : F) * rho 3809)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) * rho 3799) = ((1 : F) * rho 3810)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((1 : F) * rho 3800) = ((1 : F) * rho 3811)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((-1 : F) * rho 3810 + (1 : F) * rho 3811) = ((2 : F) * rho 3809)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * ((2 : F) + (1 : F) * rho 3810 + (-1 : F) * rho 3811) = ((1 : F) * rho 3810 + (1 : F) * rho 3811)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812 + (1 : F) * rho 3813) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 54⟩, ⟨(1 : F), 3119, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3814)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3815)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3816)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3815) * ((1 : F) * rho 3816) = ((1 : F) * rho 3817)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3818) * ((1 : F) + (1 : F) * rho 3817) = ((1 : F) * rho 3815 + (1 : F) * rho 3816)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819) * ((1 : F) + (-1 : F) * rho 3817) = ((1 : F) * rho 3814 + (-1 : F) * rho 3815 + (-1 : F) * rho 3816)

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 54⟩], residual := [((1 : F), 3818)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3820)

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 54⟩], residual := [((1 : F), 3819)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3821)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((1 : F) * rho 3813) = ((1 : F) * rho 3822)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((1 : F) * rho 3812) = ((1 : F) * rho 3823)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * ((1 : F) * rho 3813) = ((1 : F) * rho 3824)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((-1 : F) * rho 3823 + (1 : F) * rho 3824) = ((2 : F) * rho 3822)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((2 : F) + (1 : F) * rho 3823 + (-1 : F) * rho 3824) = ((1 : F) * rho 3823 + (1 : F) * rho 3824)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825 + (1 : F) * rho 3826) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 55⟩, ⟨(1 : F), 3119, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3827)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3828)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3829)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3828) * ((1 : F) * rho 3829) = ((1 : F) * rho 3830)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * ((1 : F) + (1 : F) * rho 3830) = ((1 : F) * rho 3828 + (1 : F) * rho 3829)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((1 : F) + (-1 : F) * rho 3830) = ((1 : F) * rho 3827 + (-1 : F) * rho 3828 + (-1 : F) * rho 3829)

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 55⟩], residual := [((1 : F), 3831)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3833)

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 55⟩], residual := [((1 : F), 3832)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3834)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((1 : F) * rho 3826) = ((1 : F) * rho 3835)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((1 : F) * rho 3825) = ((1 : F) * rho 3836)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((1 : F) * rho 3826) = ((1 : F) * rho 3837)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((-1 : F) * rho 3836 + (1 : F) * rho 3837) = ((2 : F) * rho 3835)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * ((2 : F) + (1 : F) * rho 3836 + (-1 : F) * rho 3837) = ((1 : F) * rho 3836 + (1 : F) * rho 3837)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838 + (1 : F) * rho 3839) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 56⟩, ⟨(1 : F), 3119, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3840)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3841)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3842)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3841) * ((1 : F) * rho 3842) = ((1 : F) * rho 3843)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * ((1 : F) + (1 : F) * rho 3843) = ((1 : F) * rho 3841 + (1 : F) * rho 3842)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845) * ((1 : F) + (-1 : F) * rho 3843) = ((1 : F) * rho 3840 + (-1 : F) * rho 3841 + (-1 : F) * rho 3842)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 56⟩], residual := [((1 : F), 3844)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3846)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 56⟩], residual := [((1 : F), 3845)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3847)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((1 : F) * rho 3839) = ((1 : F) * rho 3848)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((1 : F) * rho 3838) = ((1 : F) * rho 3849)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * ((1 : F) * rho 3839) = ((1 : F) * rho 3850)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((-1 : F) * rho 3849 + (1 : F) * rho 3850) = ((2 : F) * rho 3848)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * ((2 : F) + (1 : F) * rho 3849 + (-1 : F) * rho 3850) = ((1 : F) * rho 3849 + (1 : F) * rho 3850)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851 + (1 : F) * rho 3852) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 57⟩, ⟨(1 : F), 3119, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3853)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3854)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3855)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3854) * ((1 : F) * rho 3855) = ((1 : F) * rho 3856)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3857) * ((1 : F) + (1 : F) * rho 3856) = ((1 : F) * rho 3854 + (1 : F) * rho 3855)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858) * ((1 : F) + (-1 : F) * rho 3856) = ((1 : F) * rho 3853 + (-1 : F) * rho 3854 + (-1 : F) * rho 3855)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 57⟩], residual := [((1 : F), 3857)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3859)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 57⟩], residual := [((1 : F), 3858)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3860)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((1 : F) * rho 3852) = ((1 : F) * rho 3861)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((1 : F) * rho 3851) = ((1 : F) * rho 3862)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * ((1 : F) * rho 3852) = ((1 : F) * rho 3863)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((-1 : F) * rho 3862 + (1 : F) * rho 3863) = ((2 : F) * rho 3861)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((2 : F) + (1 : F) * rho 3862 + (-1 : F) * rho 3863) = ((1 : F) * rho 3862 + (1 : F) * rho 3863)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864 + (1 : F) * rho 3865) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 58⟩, ⟨(1 : F), 3119, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3866)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3867)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3868)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3867) * ((1 : F) * rho 3868) = ((1 : F) * rho 3869)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((1 : F) + (1 : F) * rho 3869) = ((1 : F) * rho 3867 + (1 : F) * rho 3868)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((1 : F) + (-1 : F) * rho 3869) = ((1 : F) * rho 3866 + (-1 : F) * rho 3867 + (-1 : F) * rho 3868)

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 58⟩], residual := [((1 : F), 3870)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3872)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 58⟩], residual := [((1 : F), 3871)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3873)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((1 : F) * rho 3865) = ((1 : F) * rho 3874)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((1 : F) * rho 3864) = ((1 : F) * rho 3875)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((1 : F) * rho 3865) = ((1 : F) * rho 3876)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((-1 : F) * rho 3875 + (1 : F) * rho 3876) = ((2 : F) * rho 3874)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * ((2 : F) + (1 : F) * rho 3875 + (-1 : F) * rho 3876) = ((1 : F) * rho 3875 + (1 : F) * rho 3876)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877 + (1 : F) * rho 3878) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 59⟩, ⟨(1 : F), 3119, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3879)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3880)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3881)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3880) * ((1 : F) * rho 3881) = ((1 : F) * rho 3882)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3883) * ((1 : F) + (1 : F) * rho 3882) = ((1 : F) * rho 3880 + (1 : F) * rho 3881)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884) * ((1 : F) + (-1 : F) * rho 3882) = ((1 : F) * rho 3879 + (-1 : F) * rho 3880 + (-1 : F) * rho 3881)

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 59⟩], residual := [((1 : F), 3883)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3885)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 59⟩], residual := [((1 : F), 3884)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3886)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((1 : F) * rho 3878) = ((1 : F) * rho 3887)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((1 : F) * rho 3877) = ((1 : F) * rho 3888)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * ((1 : F) * rho 3878) = ((1 : F) * rho 3889)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((-1 : F) * rho 3888 + (1 : F) * rho 3889) = ((2 : F) * rho 3887)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * ((2 : F) + (1 : F) * rho 3888 + (-1 : F) * rho 3889) = ((1 : F) * rho 3888 + (1 : F) * rho 3889)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890 + (1 : F) * rho 3891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 60⟩, ⟨(1 : F), 3119, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3892)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3893)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3894)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3893) * ((1 : F) * rho 3894) = ((1 : F) * rho 3895)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3896) * ((1 : F) + (1 : F) * rho 3895) = ((1 : F) * rho 3893 + (1 : F) * rho 3894)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((1 : F) + (-1 : F) * rho 3895) = ((1 : F) * rho 3892 + (-1 : F) * rho 3893 + (-1 : F) * rho 3894)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 60⟩], residual := [((1 : F), 3896)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3898)

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 60⟩], residual := [((1 : F), 3897)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3899)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((1 : F) * rho 3891) = ((1 : F) * rho 3900)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((1 : F) * rho 3890) = ((1 : F) * rho 3901)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * ((1 : F) * rho 3891) = ((1 : F) * rho 3902)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((-1 : F) * rho 3901 + (1 : F) * rho 3902) = ((2 : F) * rho 3900)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * ((2 : F) + (1 : F) * rho 3901 + (-1 : F) * rho 3902) = ((1 : F) * rho 3901 + (1 : F) * rho 3902)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903 + (1 : F) * rho 3904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 61⟩, ⟨(1 : F), 3119, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3905)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3906)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3907)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3906) * ((1 : F) * rho 3907) = ((1 : F) * rho 3908)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((1 : F) + (1 : F) * rho 3908) = ((1 : F) * rho 3906 + (1 : F) * rho 3907)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((1 : F) + (-1 : F) * rho 3908) = ((1 : F) * rho 3905 + (-1 : F) * rho 3906 + (-1 : F) * rho 3907)

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 61⟩], residual := [((1 : F), 3909)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3911)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 61⟩], residual := [((1 : F), 3910)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3912)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((1 : F) * rho 3904) = ((1 : F) * rho 3913)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((1 : F) * rho 3903) = ((1 : F) * rho 3914)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * ((1 : F) * rho 3904) = ((1 : F) * rho 3915)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((-1 : F) * rho 3914 + (1 : F) * rho 3915) = ((2 : F) * rho 3913)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * ((2 : F) + (1 : F) * rho 3914 + (-1 : F) * rho 3915) = ((1 : F) * rho 3914 + (1 : F) * rho 3915)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916 + (1 : F) * rho 3917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 62⟩, ⟨(1 : F), 3119, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3918)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3919)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3920)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3919) * ((1 : F) * rho 3920) = ((1 : F) * rho 3921)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3922) * ((1 : F) + (1 : F) * rho 3921) = ((1 : F) * rho 3919 + (1 : F) * rho 3920)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923) * ((1 : F) + (-1 : F) * rho 3921) = ((1 : F) * rho 3918 + (-1 : F) * rho 3919 + (-1 : F) * rho 3920)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 62⟩], residual := [((1 : F), 3922)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3924)

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 62⟩], residual := [((1 : F), 3923)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3925)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((1 : F) * rho 3917) = ((1 : F) * rho 3926)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((1 : F) * rho 3916) = ((1 : F) * rho 3927)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * ((1 : F) * rho 3917) = ((1 : F) * rho 3928)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((-1 : F) * rho 3927 + (1 : F) * rho 3928) = ((2 : F) * rho 3926)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * ((2 : F) + (1 : F) * rho 3927 + (-1 : F) * rho 3928) = ((1 : F) * rho 3927 + (1 : F) * rho 3928)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929 + (1 : F) * rho 3930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 63⟩, ⟨(1 : F), 3119, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3931)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3932)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3933)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3932) * ((1 : F) * rho 3933) = ((1 : F) * rho 3934)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3935) * ((1 : F) + (1 : F) * rho 3934) = ((1 : F) * rho 3932 + (1 : F) * rho 3933)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((1 : F) + (-1 : F) * rho 3934) = ((1 : F) * rho 3931 + (-1 : F) * rho 3932 + (-1 : F) * rho 3933)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 63⟩], residual := [((1 : F), 3935)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3937)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 63⟩], residual := [((1 : F), 3936)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3938)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((1 : F) * rho 3930) = ((1 : F) * rho 3939)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((1 : F) * rho 3929) = ((1 : F) * rho 3940)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * ((1 : F) * rho 3930) = ((1 : F) * rho 3941)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((-1 : F) * rho 3940 + (1 : F) * rho 3941) = ((2 : F) * rho 3939)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * ((2 : F) + (1 : F) * rho 3940 + (-1 : F) * rho 3941) = ((1 : F) * rho 3940 + (1 : F) * rho 3941)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942 + (1 : F) * rho 3943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 64⟩, ⟨(1 : F), 3119, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3944)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3945)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3946)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3945) * ((1 : F) * rho 3946) = ((1 : F) * rho 3947)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3948) * ((1 : F) + (1 : F) * rho 3947) = ((1 : F) * rho 3945 + (1 : F) * rho 3946)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949) * ((1 : F) + (-1 : F) * rho 3947) = ((1 : F) * rho 3944 + (-1 : F) * rho 3945 + (-1 : F) * rho 3946)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 64⟩], residual := [((1 : F), 3948)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3950)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 64⟩], residual := [((1 : F), 3949)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3951)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((1 : F) * rho 3943) = ((1 : F) * rho 3952)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((1 : F) * rho 3942) = ((1 : F) * rho 3953)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * ((1 : F) * rho 3943) = ((1 : F) * rho 3954)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((-1 : F) * rho 3953 + (1 : F) * rho 3954) = ((2 : F) * rho 3952)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * ((2 : F) + (1 : F) * rho 3953 + (-1 : F) * rho 3954) = ((1 : F) * rho 3953 + (1 : F) * rho 3954)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955 + (1 : F) * rho 3956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 65⟩, ⟨(1 : F), 3119, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3957)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3958)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3959)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3958) * ((1 : F) * rho 3959) = ((1 : F) * rho 3960)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3961) * ((1 : F) + (1 : F) * rho 3960) = ((1 : F) * rho 3958 + (1 : F) * rho 3959)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962) * ((1 : F) + (-1 : F) * rho 3960) = ((1 : F) * rho 3957 + (-1 : F) * rho 3958 + (-1 : F) * rho 3959)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 65⟩], residual := [((1 : F), 3961)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3963)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 65⟩], residual := [((1 : F), 3962)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3964)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((1 : F) * rho 3956) = ((1 : F) * rho 3965)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((1 : F) * rho 3955) = ((1 : F) * rho 3966)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * ((1 : F) * rho 3956) = ((1 : F) * rho 3967)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((-1 : F) * rho 3966 + (1 : F) * rho 3967) = ((2 : F) * rho 3965)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * ((2 : F) + (1 : F) * rho 3966 + (-1 : F) * rho 3967) = ((1 : F) * rho 3966 + (1 : F) * rho 3967)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968 + (1 : F) * rho 3969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 66⟩, ⟨(1 : F), 3119, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3970)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3971)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3972)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3971) * ((1 : F) * rho 3972) = ((1 : F) * rho 3973)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3974) * ((1 : F) + (1 : F) * rho 3973) = ((1 : F) * rho 3971 + (1 : F) * rho 3972)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) + (-1 : F) * rho 3973) = ((1 : F) * rho 3970 + (-1 : F) * rho 3971 + (-1 : F) * rho 3972)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 66⟩], residual := [((1 : F), 3974)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3976)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 66⟩], residual := [((1 : F), 3975)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3977)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((1 : F) * rho 3969) = ((1 : F) * rho 3978)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((1 : F) * rho 3968) = ((1 : F) * rho 3979)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * ((1 : F) * rho 3969) = ((1 : F) * rho 3980)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((-1 : F) * rho 3979 + (1 : F) * rho 3980) = ((2 : F) * rho 3978)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * ((2 : F) + (1 : F) * rho 3979 + (-1 : F) * rho 3980) = ((1 : F) * rho 3979 + (1 : F) * rho 3980)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981 + (1 : F) * rho 3982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 67⟩, ⟨(1 : F), 3119, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3983)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3984)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3985)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3984) * ((1 : F) * rho 3985) = ((1 : F) * rho 3986)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3987) * ((1 : F) + (1 : F) * rho 3986) = ((1 : F) * rho 3984 + (1 : F) * rho 3985)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988) * ((1 : F) + (-1 : F) * rho 3986) = ((1 : F) * rho 3983 + (-1 : F) * rho 3984 + (-1 : F) * rho 3985)

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 67⟩], residual := [((1 : F), 3987)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3989)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 67⟩], residual := [((1 : F), 3988)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3990)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((1 : F) * rho 3982) = ((1 : F) * rho 3991)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((1 : F) * rho 3981) = ((1 : F) * rho 3992)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * ((1 : F) * rho 3982) = ((1 : F) * rho 3993)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((-1 : F) * rho 3992 + (1 : F) * rho 3993) = ((2 : F) * rho 3991)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * ((2 : F) + (1 : F) * rho 3992 + (-1 : F) * rho 3993) = ((1 : F) * rho 3992 + (1 : F) * rho 3993)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994 + (1 : F) * rho 3995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 68⟩, ⟨(1 : F), 3119, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3996)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3997)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 3998)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3997) * ((1 : F) * rho 3998) = ((1 : F) * rho 3999)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4000) * ((1 : F) + (1 : F) * rho 3999) = ((1 : F) * rho 3997 + (1 : F) * rho 3998)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001) * ((1 : F) + (-1 : F) * rho 3999) = ((1 : F) * rho 3996 + (-1 : F) * rho 3997 + (-1 : F) * rho 3998)

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 68⟩], residual := [((1 : F), 4000)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4002)

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 68⟩], residual := [((1 : F), 4001)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4003)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((1 : F) * rho 3995) = ((1 : F) * rho 4004)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((1 : F) * rho 3994) = ((1 : F) * rho 4005)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * ((1 : F) * rho 3995) = ((1 : F) * rho 4006)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((-1 : F) * rho 4005 + (1 : F) * rho 4006) = ((2 : F) * rho 4004)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((2 : F) + (1 : F) * rho 4005 + (-1 : F) * rho 4006) = ((1 : F) * rho 4005 + (1 : F) * rho 4006)

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007 + (1 : F) * rho 4008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 69⟩, ⟨(1 : F), 3119, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4009)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4010)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4011)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4010) * ((1 : F) * rho 4011) = ((1 : F) * rho 4012)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((1 : F) + (1 : F) * rho 4012) = ((1 : F) * rho 4010 + (1 : F) * rho 4011)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((1 : F) + (-1 : F) * rho 4012) = ((1 : F) * rho 4009 + (-1 : F) * rho 4010 + (-1 : F) * rho 4011)

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 69⟩], residual := [((1 : F), 4013)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4015)

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 69⟩], residual := [((1 : F), 4014)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4016)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((1 : F) * rho 4008) = ((1 : F) * rho 4017)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((1 : F) * rho 4007) = ((1 : F) * rho 4018)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) * rho 4008) = ((1 : F) * rho 4019)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((-1 : F) * rho 4018 + (1 : F) * rho 4019) = ((2 : F) * rho 4017)

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * ((2 : F) + (1 : F) * rho 4018 + (-1 : F) * rho 4019) = ((1 : F) * rho 4018 + (1 : F) * rho 4019)

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020 + (1 : F) * rho 4021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 70⟩, ⟨(1 : F), 3119, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4022)

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4023)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4024)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4023) * ((1 : F) * rho 4024) = ((1 : F) * rho 4025)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4026) * ((1 : F) + (1 : F) * rho 4025) = ((1 : F) * rho 4023 + (1 : F) * rho 4024)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027) * ((1 : F) + (-1 : F) * rho 4025) = ((1 : F) * rho 4022 + (-1 : F) * rho 4023 + (-1 : F) * rho 4024)

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 70⟩], residual := [((1 : F), 4026)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4028)

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 70⟩], residual := [((1 : F), 4027)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4029)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) * rho 4021) = ((1 : F) * rho 4030)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) * rho 4020) = ((1 : F) * rho 4031)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * ((1 : F) * rho 4021) = ((1 : F) * rho 4032)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((-1 : F) * rho 4031 + (1 : F) * rho 4032) = ((2 : F) * rho 4030)

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * ((2 : F) + (1 : F) * rho 4031 + (-1 : F) * rho 4032) = ((1 : F) * rho 4031 + (1 : F) * rho 4032)

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033 + (1 : F) * rho 4034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 71⟩, ⟨(1 : F), 3119, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4035)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4036)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4037)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4036) * ((1 : F) * rho 4037) = ((1 : F) * rho 4038)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4039) * ((1 : F) + (1 : F) * rho 4038) = ((1 : F) * rho 4036 + (1 : F) * rho 4037)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((1 : F) + (-1 : F) * rho 4038) = ((1 : F) * rho 4035 + (-1 : F) * rho 4036 + (-1 : F) * rho 4037)

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 71⟩], residual := [((1 : F), 4039)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4041)

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 71⟩], residual := [((1 : F), 4040)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4042)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((1 : F) * rho 4034) = ((1 : F) * rho 4043)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((1 : F) * rho 4033) = ((1 : F) * rho 4044)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * ((1 : F) * rho 4034) = ((1 : F) * rho 4045)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((-1 : F) * rho 4044 + (1 : F) * rho 4045) = ((2 : F) * rho 4043)

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((2 : F) + (1 : F) * rho 4044 + (-1 : F) * rho 4045) = ((1 : F) * rho 4044 + (1 : F) * rho 4045)

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046 + (1 : F) * rho 4047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 72⟩, ⟨(1 : F), 3119, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4048)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4049)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4050)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4049) * ((1 : F) * rho 4050) = ((1 : F) * rho 4051)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) + (1 : F) * rho 4051) = ((1 : F) * rho 4049 + (1 : F) * rho 4050)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((1 : F) + (-1 : F) * rho 4051) = ((1 : F) * rho 4048 + (-1 : F) * rho 4049 + (-1 : F) * rho 4050)

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1962) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 72⟩], residual := [((1 : F), 4052)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4054)

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1962) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 72⟩], residual := [((1 : F), 4053)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4055)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) * rho 4047) = ((1 : F) * rho 4056)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) * rho 4046) = ((1 : F) * rho 4057)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((1 : F) * rho 4047) = ((1 : F) * rho 4058)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((-1 : F) * rho 4057 + (1 : F) * rho 4058) = ((2 : F) * rho 4056)

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * ((2 : F) + (1 : F) * rho 4057 + (-1 : F) * rho 4058) = ((1 : F) * rho 4057 + (1 : F) * rho 4058)

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059 + (1 : F) * rho 4060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 73⟩, ⟨(1 : F), 3119, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4061)

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4062)

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4063)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4062) * ((1 : F) * rho 4063) = ((1 : F) * rho 4064)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4065) * ((1 : F) + (1 : F) * rho 4064) = ((1 : F) * rho 4062 + (1 : F) * rho 4063)

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066) * ((1 : F) + (-1 : F) * rho 4064) = ((1 : F) * rho 4061 + (-1 : F) * rho 4062 + (-1 : F) * rho 4063)

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 73⟩], residual := [((1 : F), 4065)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4067)

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 73⟩], residual := [((1 : F), 4066)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4068)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((1 : F) * rho 4060) = ((1 : F) * rho 4069)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((1 : F) * rho 4059) = ((1 : F) * rho 4070)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * ((1 : F) * rho 4060) = ((1 : F) * rho 4071)

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((-1 : F) * rho 4070 + (1 : F) * rho 4071) = ((2 : F) * rho 4069)

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((2 : F) + (1 : F) * rho 4070 + (-1 : F) * rho 4071) = ((1 : F) * rho 4070 + (1 : F) * rho 4071)

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072 + (1 : F) * rho 4073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 74⟩, ⟨(1 : F), 3119, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4074)

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4075)

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 4076)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4075) * ((1 : F) * rho 4076) = ((1 : F) * rho 4077)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4078) * ((1 : F) + (1 : F) * rho 4077) = ((1 : F) * rho 4075 + (1 : F) * rho 4076)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6
