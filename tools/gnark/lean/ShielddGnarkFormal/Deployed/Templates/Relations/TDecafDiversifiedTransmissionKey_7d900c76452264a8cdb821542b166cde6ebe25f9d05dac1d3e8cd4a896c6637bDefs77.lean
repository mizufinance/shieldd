import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs76

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881) * ((-1 : F) * rho 2879 + (1 : F) * rho 2880) = ((2 : F) * rho 2878)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2882) * ((2 : F) + (1 : F) * rho 2879 + (-1 : F) * rho 2880) = ((1 : F) * rho 2879 + (1 : F) * rho 2880)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 52⟩, ⟨(1 : F), 2226, 13, 51⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881 + (1 : F) * rho 2882) * (relationLc346 rho) = ((1 : F) * rho 2883)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 51⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2882) * (relationLc347 rho) = ((1 : F) * rho 2884)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881) * (relationLc348 rho) = ((1 : F) * rho 2885)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2884) * ((1 : F) * rho 2885) = ((1 : F) * rho 2886)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2887) * ((1 : F) + (1 : F) * rho 2886) = ((1 : F) * rho 2884 + (1 : F) * rho 2885)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2888) * ((1 : F) + (-1 : F) * rho 2886) = ((1 : F) * rho 2883 + (-1 : F) * rho 2884 + (-1 : F) * rho 2885)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 51⟩], residual := [((-1 : F), 2212), ((1 : F), 2887)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1035) * (relationLc349 rho) = ((1 : F) * rho 2889)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 52⟩], residual := [((1 : F), 2888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1035) * (relationLc350 rho) = ((1 : F) * rho 2890)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881) * ((1 : F) * rho 2882) = ((1 : F) * rho 2891)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2881) * ((1 : F) * rho 2881) = ((1 : F) * rho 2892)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2882) * ((1 : F) * rho 2882) = ((1 : F) * rho 2893)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2894) * ((-1 : F) * rho 2892 + (1 : F) * rho 2893) = ((2 : F) * rho 2891)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2895) * ((2 : F) + (1 : F) * rho 2892 + (-1 : F) * rho 2893) = ((1 : F) * rho 2892 + (1 : F) * rho 2893)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 53⟩, ⟨(1 : F), 2226, 13, 52⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2894 + (1 : F) * rho 2895) * (relationLc351 rho) = ((1 : F) * rho 2896)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 52⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2895) * (relationLc352 rho) = ((1 : F) * rho 2897)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2894) * (relationLc353 rho) = ((1 : F) * rho 2898)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2897) * ((1 : F) * rho 2898) = ((1 : F) * rho 2899)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2900) * ((1 : F) + (1 : F) * rho 2899) = ((1 : F) * rho 2897 + (1 : F) * rho 2898)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2901) * ((1 : F) + (-1 : F) * rho 2899) = ((1 : F) * rho 2896 + (-1 : F) * rho 2897 + (-1 : F) * rho 2898)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 52⟩], residual := [((-1 : F), 2212), ((1 : F), 2900)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1036) * (relationLc354 rho) = ((1 : F) * rho 2902)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 53⟩], residual := [((1 : F), 2901)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1036) * (relationLc355 rho) = ((1 : F) * rho 2903)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2894) * ((1 : F) * rho 2895) = ((1 : F) * rho 2904)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2894) * ((1 : F) * rho 2894) = ((1 : F) * rho 2905)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2895) * ((1 : F) * rho 2895) = ((1 : F) * rho 2906)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907) * ((-1 : F) * rho 2905 + (1 : F) * rho 2906) = ((2 : F) * rho 2904)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2908) * ((2 : F) + (1 : F) * rho 2905 + (-1 : F) * rho 2906) = ((1 : F) * rho 2905 + (1 : F) * rho 2906)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 54⟩, ⟨(1 : F), 2226, 13, 53⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907 + (1 : F) * rho 2908) * (relationLc356 rho) = ((1 : F) * rho 2909)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 53⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2908) * (relationLc357 rho) = ((1 : F) * rho 2910)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907) * (relationLc358 rho) = ((1 : F) * rho 2911)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2910) * ((1 : F) * rho 2911) = ((1 : F) * rho 2912)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2913) * ((1 : F) + (1 : F) * rho 2912) = ((1 : F) * rho 2910 + (1 : F) * rho 2911)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2914) * ((1 : F) + (-1 : F) * rho 2912) = ((1 : F) * rho 2909 + (-1 : F) * rho 2910 + (-1 : F) * rho 2911)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 53⟩], residual := [((-1 : F), 2212), ((1 : F), 2913)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1037) * (relationLc359 rho) = ((1 : F) * rho 2915)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 54⟩], residual := [((1 : F), 2914)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1037) * (relationLc360 rho) = ((1 : F) * rho 2916)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907) * ((1 : F) * rho 2908) = ((1 : F) * rho 2917)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2907) * ((1 : F) * rho 2907) = ((1 : F) * rho 2918)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2908) * ((1 : F) * rho 2908) = ((1 : F) * rho 2919)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920) * ((-1 : F) * rho 2918 + (1 : F) * rho 2919) = ((2 : F) * rho 2917)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2921) * ((2 : F) + (1 : F) * rho 2918 + (-1 : F) * rho 2919) = ((1 : F) * rho 2918 + (1 : F) * rho 2919)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 55⟩, ⟨(1 : F), 2226, 13, 54⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920 + (1 : F) * rho 2921) * (relationLc361 rho) = ((1 : F) * rho 2922)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 54⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2921) * (relationLc362 rho) = ((1 : F) * rho 2923)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920) * (relationLc363 rho) = ((1 : F) * rho 2924)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2923) * ((1 : F) * rho 2924) = ((1 : F) * rho 2925)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2926) * ((1 : F) + (1 : F) * rho 2925) = ((1 : F) * rho 2923 + (1 : F) * rho 2924)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2927) * ((1 : F) + (-1 : F) * rho 2925) = ((1 : F) * rho 2922 + (-1 : F) * rho 2923 + (-1 : F) * rho 2924)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 54⟩], residual := [((-1 : F), 2212), ((1 : F), 2926)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1038) * (relationLc364 rho) = ((1 : F) * rho 2928)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 55⟩], residual := [((1 : F), 2927)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1038) * (relationLc365 rho) = ((1 : F) * rho 2929)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920) * ((1 : F) * rho 2921) = ((1 : F) * rho 2930)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2920) * ((1 : F) * rho 2920) = ((1 : F) * rho 2931)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2921) * ((1 : F) * rho 2921) = ((1 : F) * rho 2932)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2933) * ((-1 : F) * rho 2931 + (1 : F) * rho 2932) = ((2 : F) * rho 2930)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2934) * ((2 : F) + (1 : F) * rho 2931 + (-1 : F) * rho 2932) = ((1 : F) * rho 2931 + (1 : F) * rho 2932)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 56⟩, ⟨(1 : F), 2226, 13, 55⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2933 + (1 : F) * rho 2934) * (relationLc366 rho) = ((1 : F) * rho 2935)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 55⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2934) * (relationLc367 rho) = ((1 : F) * rho 2936)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2933) * (relationLc368 rho) = ((1 : F) * rho 2937)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2936) * ((1 : F) * rho 2937) = ((1 : F) * rho 2938)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2939) * ((1 : F) + (1 : F) * rho 2938) = ((1 : F) * rho 2936 + (1 : F) * rho 2937)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2940) * ((1 : F) + (-1 : F) * rho 2938) = ((1 : F) * rho 2935 + (-1 : F) * rho 2936 + (-1 : F) * rho 2937)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 55⟩], residual := [((-1 : F), 2212), ((1 : F), 2939)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1039) * (relationLc369 rho) = ((1 : F) * rho 2941)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 56⟩], residual := [((1 : F), 2940)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1039) * (relationLc370 rho) = ((1 : F) * rho 2942)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2933) * ((1 : F) * rho 2934) = ((1 : F) * rho 2943)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2933) * ((1 : F) * rho 2933) = ((1 : F) * rho 2944)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2934) * ((1 : F) * rho 2934) = ((1 : F) * rho 2945)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((-1 : F) * rho 2944 + (1 : F) * rho 2945) = ((2 : F) * rho 2943)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2947) * ((2 : F) + (1 : F) * rho 2944 + (-1 : F) * rho 2945) = ((1 : F) * rho 2944 + (1 : F) * rho 2945)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 57⟩, ⟨(1 : F), 2226, 13, 56⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946 + (1 : F) * rho 2947) * (relationLc371 rho) = ((1 : F) * rho 2948)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 56⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2947) * (relationLc372 rho) = ((1 : F) * rho 2949)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * (relationLc373 rho) = ((1 : F) * rho 2950)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2949) * ((1 : F) * rho 2950) = ((1 : F) * rho 2951)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2952) * ((1 : F) + (1 : F) * rho 2951) = ((1 : F) * rho 2949 + (1 : F) * rho 2950)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2953) * ((1 : F) + (-1 : F) * rho 2951) = ((1 : F) * rho 2948 + (-1 : F) * rho 2949 + (-1 : F) * rho 2950)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
