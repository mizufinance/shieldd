import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs77

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 56⟩], residual := [((-1 : F), 2212), ((1 : F), 2952)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1040) * (relationLc374 rho) = ((1 : F) * rho 2954)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 57⟩], residual := [((1 : F), 2953)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1040) * (relationLc375 rho) = ((1 : F) * rho 2955)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((1 : F) * rho 2947) = ((1 : F) * rho 2956)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((1 : F) * rho 2946) = ((1 : F) * rho 2957)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2947) * ((1 : F) * rho 2947) = ((1 : F) * rho 2958)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2959) * ((-1 : F) * rho 2957 + (1 : F) * rho 2958) = ((2 : F) * rho 2956)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2960) * ((2 : F) + (1 : F) * rho 2957 + (-1 : F) * rho 2958) = ((1 : F) * rho 2957 + (1 : F) * rho 2958)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 58⟩, ⟨(1 : F), 2226, 13, 57⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2959 + (1 : F) * rho 2960) * (relationLc376 rho) = ((1 : F) * rho 2961)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 57⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2960) * (relationLc377 rho) = ((1 : F) * rho 2962)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2959) * (relationLc378 rho) = ((1 : F) * rho 2963)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2962) * ((1 : F) * rho 2963) = ((1 : F) * rho 2964)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2965) * ((1 : F) + (1 : F) * rho 2964) = ((1 : F) * rho 2962 + (1 : F) * rho 2963)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2966) * ((1 : F) + (-1 : F) * rho 2964) = ((1 : F) * rho 2961 + (-1 : F) * rho 2962 + (-1 : F) * rho 2963)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 57⟩], residual := [((-1 : F), 2212), ((1 : F), 2965)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1041) * (relationLc379 rho) = ((1 : F) * rho 2967)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 58⟩], residual := [((1 : F), 2966)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1041) * (relationLc380 rho) = ((1 : F) * rho 2968)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2959) * ((1 : F) * rho 2960) = ((1 : F) * rho 2969)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2959) * ((1 : F) * rho 2959) = ((1 : F) * rho 2970)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2960) * ((1 : F) * rho 2960) = ((1 : F) * rho 2971)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2972) * ((-1 : F) * rho 2970 + (1 : F) * rho 2971) = ((2 : F) * rho 2969)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2973) * ((2 : F) + (1 : F) * rho 2970 + (-1 : F) * rho 2971) = ((1 : F) * rho 2970 + (1 : F) * rho 2971)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 59⟩, ⟨(1 : F), 2226, 13, 58⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2972 + (1 : F) * rho 2973) * (relationLc381 rho) = ((1 : F) * rho 2974)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 58⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2973) * (relationLc382 rho) = ((1 : F) * rho 2975)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2972) * (relationLc383 rho) = ((1 : F) * rho 2976)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2975) * ((1 : F) * rho 2976) = ((1 : F) * rho 2977)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2978) * ((1 : F) + (1 : F) * rho 2977) = ((1 : F) * rho 2975 + (1 : F) * rho 2976)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2979) * ((1 : F) + (-1 : F) * rho 2977) = ((1 : F) * rho 2974 + (-1 : F) * rho 2975 + (-1 : F) * rho 2976)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 58⟩], residual := [((-1 : F), 2212), ((1 : F), 2978)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1042) * (relationLc384 rho) = ((1 : F) * rho 2980)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 59⟩], residual := [((1 : F), 2979)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1042) * (relationLc385 rho) = ((1 : F) * rho 2981)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2972) * ((1 : F) * rho 2973) = ((1 : F) * rho 2982)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2972) * ((1 : F) * rho 2972) = ((1 : F) * rho 2983)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2973) * ((1 : F) * rho 2973) = ((1 : F) * rho 2984)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * ((-1 : F) * rho 2983 + (1 : F) * rho 2984) = ((2 : F) * rho 2982)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2986) * ((2 : F) + (1 : F) * rho 2983 + (-1 : F) * rho 2984) = ((1 : F) * rho 2983 + (1 : F) * rho 2984)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 60⟩, ⟨(1 : F), 2226, 13, 59⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985 + (1 : F) * rho 2986) * (relationLc386 rho) = ((1 : F) * rho 2987)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 59⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2986) * (relationLc387 rho) = ((1 : F) * rho 2988)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * (relationLc388 rho) = ((1 : F) * rho 2989)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2988) * ((1 : F) * rho 2989) = ((1 : F) * rho 2990)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2991) * ((1 : F) + (1 : F) * rho 2990) = ((1 : F) * rho 2988 + (1 : F) * rho 2989)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2992) * ((1 : F) + (-1 : F) * rho 2990) = ((1 : F) * rho 2987 + (-1 : F) * rho 2988 + (-1 : F) * rho 2989)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 59⟩], residual := [((-1 : F), 2212), ((1 : F), 2991)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1043) * (relationLc389 rho) = ((1 : F) * rho 2993)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 60⟩], residual := [((1 : F), 2992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1043) * (relationLc390 rho) = ((1 : F) * rho 2994)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * ((1 : F) * rho 2986) = ((1 : F) * rho 2995)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2985) * ((1 : F) * rho 2985) = ((1 : F) * rho 2996)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2986) * ((1 : F) * rho 2986) = ((1 : F) * rho 2997)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2998) * ((-1 : F) * rho 2996 + (1 : F) * rho 2997) = ((2 : F) * rho 2995)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2999) * ((2 : F) + (1 : F) * rho 2996 + (-1 : F) * rho 2997) = ((1 : F) * rho 2996 + (1 : F) * rho 2997)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 61⟩, ⟨(1 : F), 2226, 13, 60⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2998 + (1 : F) * rho 2999) * (relationLc391 rho) = ((1 : F) * rho 3000)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 60⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2999) * (relationLc392 rho) = ((1 : F) * rho 3001)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2998) * (relationLc393 rho) = ((1 : F) * rho 3002)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3001) * ((1 : F) * rho 3002) = ((1 : F) * rho 3003)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3004) * ((1 : F) + (1 : F) * rho 3003) = ((1 : F) * rho 3001 + (1 : F) * rho 3002)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3005) * ((1 : F) + (-1 : F) * rho 3003) = ((1 : F) * rho 3000 + (-1 : F) * rho 3001 + (-1 : F) * rho 3002)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 60⟩], residual := [((-1 : F), 2212), ((1 : F), 3004)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1044) * (relationLc394 rho) = ((1 : F) * rho 3006)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 61⟩], residual := [((1 : F), 3005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1044) * (relationLc395 rho) = ((1 : F) * rho 3007)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2998) * ((1 : F) * rho 2999) = ((1 : F) * rho 3008)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2998) * ((1 : F) * rho 2998) = ((1 : F) * rho 3009)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2999) * ((1 : F) * rho 2999) = ((1 : F) * rho 3010)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3011) * ((-1 : F) * rho 3009 + (1 : F) * rho 3010) = ((2 : F) * rho 3008)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3012) * ((2 : F) + (1 : F) * rho 3009 + (-1 : F) * rho 3010) = ((1 : F) * rho 3009 + (1 : F) * rho 3010)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 62⟩, ⟨(1 : F), 2226, 13, 61⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3011 + (1 : F) * rho 3012) * (relationLc396 rho) = ((1 : F) * rho 3013)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 61⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3012) * (relationLc397 rho) = ((1 : F) * rho 3014)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3011) * (relationLc398 rho) = ((1 : F) * rho 3015)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3014) * ((1 : F) * rho 3015) = ((1 : F) * rho 3016)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3017) * ((1 : F) + (1 : F) * rho 3016) = ((1 : F) * rho 3014 + (1 : F) * rho 3015)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3018) * ((1 : F) + (-1 : F) * rho 3016) = ((1 : F) * rho 3013 + (-1 : F) * rho 3014 + (-1 : F) * rho 3015)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 61⟩], residual := [((-1 : F), 2212), ((1 : F), 3017)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1045) * (relationLc399 rho) = ((1 : F) * rho 3019)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 62⟩], residual := [((1 : F), 3018)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1045) * (relationLc400 rho) = ((1 : F) * rho 3020)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3011) * ((1 : F) * rho 3012) = ((1 : F) * rho 3021)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3011) * ((1 : F) * rho 3011) = ((1 : F) * rho 3022)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3012) * ((1 : F) * rho 3012) = ((1 : F) * rho 3023)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3024) * ((-1 : F) * rho 3022 + (1 : F) * rho 3023) = ((2 : F) * rho 3021)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3025) * ((2 : F) + (1 : F) * rho 3022 + (-1 : F) * rho 3023) = ((1 : F) * rho 3022 + (1 : F) * rho 3023)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 63⟩, ⟨(1 : F), 2226, 13, 62⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3024 + (1 : F) * rho 3025) * (relationLc401 rho) = ((1 : F) * rho 3026)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 62⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
