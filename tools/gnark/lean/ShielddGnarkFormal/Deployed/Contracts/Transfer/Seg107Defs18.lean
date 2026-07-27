import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationRow7391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104906) * ((1 : F) * rho 104906) = ((1 : F) * rho 104917)

def relationRow7392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104918) * ((-1 : F) * rho 104916 + (1 : F) * rho 104917) = ((2 : F) * rho 104915)

def relationRow7393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104919) * ((2 : F) + (1 : F) * rho 104916 + (-1 : F) * rho 104917) = ((1 : F) * rho 104916 + (1 : F) * rho 104917)

def relationLc3274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 133⟩, ⟨(1 : F), 103198, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104918 + (1 : F) * rho 104919) * (relationLc3274 rho) = ((1 : F) * rho 104920)

def relationLc3275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104919) * (relationLc3275 rho) = ((1 : F) * rho 104921)

def relationLc3276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104918) * (relationLc3276 rho) = ((1 : F) * rho 104922)

def relationRow7397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104921) * ((1 : F) * rho 104922) = ((1 : F) * rho 104923)

def relationRow7398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104924) * ((1 : F) + (1 : F) * rho 104923) = ((1 : F) * rho 104921 + (1 : F) * rho 104922)

def relationRow7399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104925) * ((1 : F) + (-1 : F) * rho 104923) = ((1 : F) * rho 104920 + (-1 : F) * rho 104921 + (-1 : F) * rho 104922)

def relationLc3277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 133⟩], residual := [((1 : F), 104924)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103079) * (relationLc3277 rho) = ((1 : F) * rho 104926)

def relationLc3278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 133⟩], residual := [((1 : F), 104925)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103079) * (relationLc3278 rho) = ((1 : F) * rho 104927)

def relationRow7402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104918) * ((1 : F) * rho 104919) = ((1 : F) * rho 104928)

def relationRow7403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104918) * ((1 : F) * rho 104918) = ((1 : F) * rho 104929)

def relationRow7404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104919) * ((1 : F) * rho 104919) = ((1 : F) * rho 104930)

def relationRow7405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104931) * ((-1 : F) * rho 104929 + (1 : F) * rho 104930) = ((2 : F) * rho 104928)

def relationRow7406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104932) * ((2 : F) + (1 : F) * rho 104929 + (-1 : F) * rho 104930) = ((1 : F) * rho 104929 + (1 : F) * rho 104930)

def relationLc3279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 134⟩, ⟨(1 : F), 103198, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104931 + (1 : F) * rho 104932) * (relationLc3279 rho) = ((1 : F) * rho 104933)

def relationLc3280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104932) * (relationLc3280 rho) = ((1 : F) * rho 104934)

def relationLc3281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104931) * (relationLc3281 rho) = ((1 : F) * rho 104935)

def relationRow7410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104934) * ((1 : F) * rho 104935) = ((1 : F) * rho 104936)

def relationRow7411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104937) * ((1 : F) + (1 : F) * rho 104936) = ((1 : F) * rho 104934 + (1 : F) * rho 104935)

def relationRow7412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104938) * ((1 : F) + (-1 : F) * rho 104936) = ((1 : F) * rho 104933 + (-1 : F) * rho 104934 + (-1 : F) * rho 104935)

def relationLc3282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 134⟩], residual := [((1 : F), 104937)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103080) * (relationLc3282 rho) = ((1 : F) * rho 104939)

def relationLc3283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 134⟩], residual := [((1 : F), 104938)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103080) * (relationLc3283 rho) = ((1 : F) * rho 104940)

def relationRow7415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104931) * ((1 : F) * rho 104932) = ((1 : F) * rho 104941)

def relationRow7416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104931) * ((1 : F) * rho 104931) = ((1 : F) * rho 104942)

def relationRow7417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104932) * ((1 : F) * rho 104932) = ((1 : F) * rho 104943)

def relationRow7418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104944) * ((-1 : F) * rho 104942 + (1 : F) * rho 104943) = ((2 : F) * rho 104941)

def relationRow7419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104945) * ((2 : F) + (1 : F) * rho 104942 + (-1 : F) * rho 104943) = ((1 : F) * rho 104942 + (1 : F) * rho 104943)

def relationLc3284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 135⟩, ⟨(1 : F), 103198, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104944 + (1 : F) * rho 104945) * (relationLc3284 rho) = ((1 : F) * rho 104946)

def relationLc3285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104945) * (relationLc3285 rho) = ((1 : F) * rho 104947)

def relationLc3286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104944) * (relationLc3286 rho) = ((1 : F) * rho 104948)

def relationRow7423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104947) * ((1 : F) * rho 104948) = ((1 : F) * rho 104949)

def relationRow7424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104950) * ((1 : F) + (1 : F) * rho 104949) = ((1 : F) * rho 104947 + (1 : F) * rho 104948)

def relationRow7425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104951) * ((1 : F) + (-1 : F) * rho 104949) = ((1 : F) * rho 104946 + (-1 : F) * rho 104947 + (-1 : F) * rho 104948)

def relationLc3287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 135⟩], residual := [((1 : F), 104950)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103081) * (relationLc3287 rho) = ((1 : F) * rho 104952)

def relationLc3288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 135⟩], residual := [((1 : F), 104951)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103081) * (relationLc3288 rho) = ((1 : F) * rho 104953)

def relationRow7428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104944) * ((1 : F) * rho 104945) = ((1 : F) * rho 104954)

def relationRow7429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104944) * ((1 : F) * rho 104944) = ((1 : F) * rho 104955)

def relationRow7430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104945) * ((1 : F) * rho 104945) = ((1 : F) * rho 104956)

def relationRow7431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104957) * ((-1 : F) * rho 104955 + (1 : F) * rho 104956) = ((2 : F) * rho 104954)

def relationRow7432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104958) * ((2 : F) + (1 : F) * rho 104955 + (-1 : F) * rho 104956) = ((1 : F) * rho 104955 + (1 : F) * rho 104956)

def relationLc3289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 136⟩, ⟨(1 : F), 103198, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104957 + (1 : F) * rho 104958) * (relationLc3289 rho) = ((1 : F) * rho 104959)

def relationLc3290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104958) * (relationLc3290 rho) = ((1 : F) * rho 104960)

def relationLc3291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104957) * (relationLc3291 rho) = ((1 : F) * rho 104961)

def relationRow7436 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104960) * ((1 : F) * rho 104961) = ((1 : F) * rho 104962)

def relationRow7437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104963) * ((1 : F) + (1 : F) * rho 104962) = ((1 : F) * rho 104960 + (1 : F) * rho 104961)

def relationRow7438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104964) * ((1 : F) + (-1 : F) * rho 104962) = ((1 : F) * rho 104959 + (-1 : F) * rho 104960 + (-1 : F) * rho 104961)

def relationLc3292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 136⟩], residual := [((1 : F), 104963)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103082) * (relationLc3292 rho) = ((1 : F) * rho 104965)

def relationLc3293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 136⟩], residual := [((1 : F), 104964)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103082) * (relationLc3293 rho) = ((1 : F) * rho 104966)

def relationRow7441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104957) * ((1 : F) * rho 104958) = ((1 : F) * rho 104967)

def relationRow7442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104957) * ((1 : F) * rho 104957) = ((1 : F) * rho 104968)

def relationRow7443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104958) * ((1 : F) * rho 104958) = ((1 : F) * rho 104969)

def relationRow7444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104970) * ((-1 : F) * rho 104968 + (1 : F) * rho 104969) = ((2 : F) * rho 104967)

def relationRow7445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104971) * ((2 : F) + (1 : F) * rho 104968 + (-1 : F) * rho 104969) = ((1 : F) * rho 104968 + (1 : F) * rho 104969)

def relationLc3294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 137⟩, ⟨(1 : F), 103198, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104970 + (1 : F) * rho 104971) * (relationLc3294 rho) = ((1 : F) * rho 104972)

def relationLc3295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104971) * (relationLc3295 rho) = ((1 : F) * rho 104973)

def relationLc3296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104970) * (relationLc3296 rho) = ((1 : F) * rho 104974)

def relationRow7449 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104973) * ((1 : F) * rho 104974) = ((1 : F) * rho 104975)

def relationRow7450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104976) * ((1 : F) + (1 : F) * rho 104975) = ((1 : F) * rho 104973 + (1 : F) * rho 104974)

def relationRow7451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104977) * ((1 : F) + (-1 : F) * rho 104975) = ((1 : F) * rho 104972 + (-1 : F) * rho 104973 + (-1 : F) * rho 104974)

def relationLc3297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 137⟩], residual := [((1 : F), 104976)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103083) * (relationLc3297 rho) = ((1 : F) * rho 104978)

def relationLc3298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 137⟩], residual := [((1 : F), 104977)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103083) * (relationLc3298 rho) = ((1 : F) * rho 104979)

def relationRow7454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104970) * ((1 : F) * rho 104971) = ((1 : F) * rho 104980)

def relationRow7455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104970) * ((1 : F) * rho 104970) = ((1 : F) * rho 104981)

def relationRow7456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104971) * ((1 : F) * rho 104971) = ((1 : F) * rho 104982)

def relationRow7457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104983) * ((-1 : F) * rho 104981 + (1 : F) * rho 104982) = ((2 : F) * rho 104980)

def relationRow7458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104984) * ((2 : F) + (1 : F) * rho 104981 + (-1 : F) * rho 104982) = ((1 : F) * rho 104981 + (1 : F) * rho 104982)

def relationLc3299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 138⟩, ⟨(1 : F), 103198, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104983 + (1 : F) * rho 104984) * (relationLc3299 rho) = ((1 : F) * rho 104985)

def relationLc3300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104984) * (relationLc3300 rho) = ((1 : F) * rho 104986)

def relationLc3301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104983) * (relationLc3301 rho) = ((1 : F) * rho 104987)

def relationRow7462 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104986) * ((1 : F) * rho 104987) = ((1 : F) * rho 104988)

def relationRow7463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104989) * ((1 : F) + (1 : F) * rho 104988) = ((1 : F) * rho 104986 + (1 : F) * rho 104987)

def relationRow7464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104990) * ((1 : F) + (-1 : F) * rho 104988) = ((1 : F) * rho 104985 + (-1 : F) * rho 104986 + (-1 : F) * rho 104987)

def relationLc3302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 138⟩], residual := [((1 : F), 104989)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103084) * (relationLc3302 rho) = ((1 : F) * rho 104991)

def relationLc3303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 138⟩], residual := [((1 : F), 104990)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103084) * (relationLc3303 rho) = ((1 : F) * rho 104992)

def relationRow7467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104983) * ((1 : F) * rho 104984) = ((1 : F) * rho 104993)

def relationRow7468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104983) * ((1 : F) * rho 104983) = ((1 : F) * rho 104994)

def relationRow7469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104984) * ((1 : F) * rho 104984) = ((1 : F) * rho 104995)

def relationRow7470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104996) * ((-1 : F) * rho 104994 + (1 : F) * rho 104995) = ((2 : F) * rho 104993)

def relationRow7471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104997) * ((2 : F) + (1 : F) * rho 104994 + (-1 : F) * rho 104995) = ((1 : F) * rho 104994 + (1 : F) * rho 104995)

def relationLc3304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 139⟩, ⟨(1 : F), 103198, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104996 + (1 : F) * rho 104997) * (relationLc3304 rho) = ((1 : F) * rho 104998)

def relationLc3305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104997) * (relationLc3305 rho) = ((1 : F) * rho 104999)

def relationLc3306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104996) * (relationLc3306 rho) = ((1 : F) * rho 105000)

def relationRow7475 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104999) * ((1 : F) * rho 105000) = ((1 : F) * rho 105001)

def relationRow7476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105002) * ((1 : F) + (1 : F) * rho 105001) = ((1 : F) * rho 104999 + (1 : F) * rho 105000)

def relationRow7477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105003) * ((1 : F) + (-1 : F) * rho 105001) = ((1 : F) * rho 104998 + (-1 : F) * rho 104999 + (-1 : F) * rho 105000)

def relationLc3307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 139⟩], residual := [((1 : F), 105002)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103085) * (relationLc3307 rho) = ((1 : F) * rho 105004)

def relationLc3308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 139⟩], residual := [((1 : F), 105003)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103085) * (relationLc3308 rho) = ((1 : F) * rho 105005)

def relationRow7480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104996) * ((1 : F) * rho 104997) = ((1 : F) * rho 105006)

def relationRow7481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104996) * ((1 : F) * rho 104996) = ((1 : F) * rho 105007)

def relationRow7482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104997) * ((1 : F) * rho 104997) = ((1 : F) * rho 105008)

def relationRow7483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105009) * ((-1 : F) * rho 105007 + (1 : F) * rho 105008) = ((2 : F) * rho 105006)

def relationRow7484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105010) * ((2 : F) + (1 : F) * rho 105007 + (-1 : F) * rho 105008) = ((1 : F) * rho 105007 + (1 : F) * rho 105008)

def relationLc3309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 140⟩, ⟨(1 : F), 103198, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105009 + (1 : F) * rho 105010) * (relationLc3309 rho) = ((1 : F) * rho 105011)

def relationLc3310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105010) * (relationLc3310 rho) = ((1 : F) * rho 105012)

def relationLc3311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105009) * (relationLc3311 rho) = ((1 : F) * rho 105013)

def relationRow7488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105012) * ((1 : F) * rho 105013) = ((1 : F) * rho 105014)

def relationRow7489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105015) * ((1 : F) + (1 : F) * rho 105014) = ((1 : F) * rho 105012 + (1 : F) * rho 105013)

def relationRow7490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105016) * ((1 : F) + (-1 : F) * rho 105014) = ((1 : F) * rho 105011 + (-1 : F) * rho 105012 + (-1 : F) * rho 105013)

def relationLc3312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 140⟩], residual := [((1 : F), 105015)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103086) * (relationLc3312 rho) = ((1 : F) * rho 105017)

def relationLc3313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 140⟩], residual := [((1 : F), 105016)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103086) * (relationLc3313 rho) = ((1 : F) * rho 105018)

def relationRow7493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105009) * ((1 : F) * rho 105010) = ((1 : F) * rho 105019)

def relationRow7494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105009) * ((1 : F) * rho 105009) = ((1 : F) * rho 105020)

def relationRow7495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105010) * ((1 : F) * rho 105010) = ((1 : F) * rho 105021)

def relationRow7496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105022) * ((-1 : F) * rho 105020 + (1 : F) * rho 105021) = ((2 : F) * rho 105019)

def relationRow7497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105023) * ((2 : F) + (1 : F) * rho 105020 + (-1 : F) * rho 105021) = ((1 : F) * rho 105020 + (1 : F) * rho 105021)

def relationLc3314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 141⟩, ⟨(1 : F), 103198, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105022 + (1 : F) * rho 105023) * (relationLc3314 rho) = ((1 : F) * rho 105024)

def relationLc3315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105023) * (relationLc3315 rho) = ((1 : F) * rho 105025)

def relationLc3316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105022) * (relationLc3316 rho) = ((1 : F) * rho 105026)

def relationRow7501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105025) * ((1 : F) * rho 105026) = ((1 : F) * rho 105027)

def relationRow7502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105028) * ((1 : F) + (1 : F) * rho 105027) = ((1 : F) * rho 105025 + (1 : F) * rho 105026)

def relationRow7503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105029) * ((1 : F) + (-1 : F) * rho 105027) = ((1 : F) * rho 105024 + (-1 : F) * rho 105025 + (-1 : F) * rho 105026)

def relationLc3317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 141⟩], residual := [((1 : F), 105028)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103087) * (relationLc3317 rho) = ((1 : F) * rho 105030)

def relationLc3318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 141⟩], residual := [((1 : F), 105029)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103087) * (relationLc3318 rho) = ((1 : F) * rho 105031)

def relationRow7506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105022) * ((1 : F) * rho 105023) = ((1 : F) * rho 105032)

def relationRow7507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105022) * ((1 : F) * rho 105022) = ((1 : F) * rho 105033)

def relationRow7508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105023) * ((1 : F) * rho 105023) = ((1 : F) * rho 105034)

def relationRow7509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105035) * ((-1 : F) * rho 105033 + (1 : F) * rho 105034) = ((2 : F) * rho 105032)

def relationRow7510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105036) * ((2 : F) + (1 : F) * rho 105033 + (-1 : F) * rho 105034) = ((1 : F) * rho 105033 + (1 : F) * rho 105034)

def relationLc3319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 142⟩, ⟨(1 : F), 103198, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105035 + (1 : F) * rho 105036) * (relationLc3319 rho) = ((1 : F) * rho 105037)

def relationLc3320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105036) * (relationLc3320 rho) = ((1 : F) * rho 105038)

def relationLc3321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105035) * (relationLc3321 rho) = ((1 : F) * rho 105039)

def relationRow7514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105038) * ((1 : F) * rho 105039) = ((1 : F) * rho 105040)

def relationRow7515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105041) * ((1 : F) + (1 : F) * rho 105040) = ((1 : F) * rho 105038 + (1 : F) * rho 105039)

def relationRow7516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105042) * ((1 : F) + (-1 : F) * rho 105040) = ((1 : F) * rho 105037 + (-1 : F) * rho 105038 + (-1 : F) * rho 105039)

def relationLc3322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 142⟩], residual := [((1 : F), 105041)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103088) * (relationLc3322 rho) = ((1 : F) * rho 105043)

def relationLc3323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 142⟩], residual := [((1 : F), 105042)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103088) * (relationLc3323 rho) = ((1 : F) * rho 105044)

def relationRow7519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105035) * ((1 : F) * rho 105036) = ((1 : F) * rho 105045)

def relationRow7520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105035) * ((1 : F) * rho 105035) = ((1 : F) * rho 105046)

def relationRow7521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105036) * ((1 : F) * rho 105036) = ((1 : F) * rho 105047)

def relationRow7522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105048) * ((-1 : F) * rho 105046 + (1 : F) * rho 105047) = ((2 : F) * rho 105045)

def relationRow7523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105049) * ((2 : F) + (1 : F) * rho 105046 + (-1 : F) * rho 105047) = ((1 : F) * rho 105046 + (1 : F) * rho 105047)

def relationLc3324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 143⟩, ⟨(1 : F), 103198, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105048 + (1 : F) * rho 105049) * (relationLc3324 rho) = ((1 : F) * rho 105050)

def relationLc3325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105049) * (relationLc3325 rho) = ((1 : F) * rho 105051)

def relationLc3326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105048) * (relationLc3326 rho) = ((1 : F) * rho 105052)

def relationRow7527 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105051) * ((1 : F) * rho 105052) = ((1 : F) * rho 105053)

def relationRow7528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105054) * ((1 : F) + (1 : F) * rho 105053) = ((1 : F) * rho 105051 + (1 : F) * rho 105052)

def relationRow7529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105055) * ((1 : F) + (-1 : F) * rho 105053) = ((1 : F) * rho 105050 + (-1 : F) * rho 105051 + (-1 : F) * rho 105052)

def relationLc3327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 143⟩], residual := [((1 : F), 105054)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103089) * (relationLc3327 rho) = ((1 : F) * rho 105056)

def relationLc3328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 143⟩], residual := [((1 : F), 105055)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103089) * (relationLc3328 rho) = ((1 : F) * rho 105057)

def relationRow7532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105048) * ((1 : F) * rho 105049) = ((1 : F) * rho 105058)

def relationRow7533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105048) * ((1 : F) * rho 105048) = ((1 : F) * rho 105059)

def relationRow7534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105049) * ((1 : F) * rho 105049) = ((1 : F) * rho 105060)

def relationRow7535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105061) * ((-1 : F) * rho 105059 + (1 : F) * rho 105060) = ((2 : F) * rho 105058)

def relationRow7536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105062) * ((2 : F) + (1 : F) * rho 105059 + (-1 : F) * rho 105060) = ((1 : F) * rho 105059 + (1 : F) * rho 105060)

def relationLc3329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 144⟩, ⟨(1 : F), 103198, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105061 + (1 : F) * rho 105062) * (relationLc3329 rho) = ((1 : F) * rho 105063)

def relationLc3330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105062) * (relationLc3330 rho) = ((1 : F) * rho 105064)

def relationLc3331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105061) * (relationLc3331 rho) = ((1 : F) * rho 105065)

def relationRow7540 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105064) * ((1 : F) * rho 105065) = ((1 : F) * rho 105066)

def relationRow7541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105067) * ((1 : F) + (1 : F) * rho 105066) = ((1 : F) * rho 105064 + (1 : F) * rho 105065)

def relationRow7542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105068) * ((1 : F) + (-1 : F) * rho 105066) = ((1 : F) * rho 105063 + (-1 : F) * rho 105064 + (-1 : F) * rho 105065)

def relationLc3332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 144⟩], residual := [((1 : F), 105067)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103090) * (relationLc3332 rho) = ((1 : F) * rho 105069)

def relationLc3333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 144⟩], residual := [((1 : F), 105068)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103090) * (relationLc3333 rho) = ((1 : F) * rho 105070)

def relationRow7545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105061) * ((1 : F) * rho 105062) = ((1 : F) * rho 105071)

def relationRow7546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105061) * ((1 : F) * rho 105061) = ((1 : F) * rho 105072)

def relationRow7547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105062) * ((1 : F) * rho 105062) = ((1 : F) * rho 105073)

def relationRow7548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105074) * ((-1 : F) * rho 105072 + (1 : F) * rho 105073) = ((2 : F) * rho 105071)

def relationRow7549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105075) * ((2 : F) + (1 : F) * rho 105072 + (-1 : F) * rho 105073) = ((1 : F) * rho 105072 + (1 : F) * rho 105073)

def relationLc3334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 145⟩, ⟨(1 : F), 103198, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105074 + (1 : F) * rho 105075) * (relationLc3334 rho) = ((1 : F) * rho 105076)

def relationLc3335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105075) * (relationLc3335 rho) = ((1 : F) * rho 105077)

def relationLc3336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105074) * (relationLc3336 rho) = ((1 : F) * rho 105078)

def relationRow7553 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105077) * ((1 : F) * rho 105078) = ((1 : F) * rho 105079)

def relationRow7554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105080) * ((1 : F) + (1 : F) * rho 105079) = ((1 : F) * rho 105077 + (1 : F) * rho 105078)

def relationRow7555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105081) * ((1 : F) + (-1 : F) * rho 105079) = ((1 : F) * rho 105076 + (-1 : F) * rho 105077 + (-1 : F) * rho 105078)

def relationLc3337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 145⟩], residual := [((1 : F), 105080)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103091) * (relationLc3337 rho) = ((1 : F) * rho 105082)

def relationLc3338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 145⟩], residual := [((1 : F), 105081)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103091) * (relationLc3338 rho) = ((1 : F) * rho 105083)

def relationRow7558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105074) * ((1 : F) * rho 105075) = ((1 : F) * rho 105084)

def relationRow7559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105074) * ((1 : F) * rho 105074) = ((1 : F) * rho 105085)

def relationRow7560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105075) * ((1 : F) * rho 105075) = ((1 : F) * rho 105086)

def relationRow7561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105087) * ((-1 : F) * rho 105085 + (1 : F) * rho 105086) = ((2 : F) * rho 105084)

def relationRow7562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105088) * ((2 : F) + (1 : F) * rho 105085 + (-1 : F) * rho 105086) = ((1 : F) * rho 105085 + (1 : F) * rho 105086)

def relationLc3339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 146⟩, ⟨(1 : F), 103198, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105087 + (1 : F) * rho 105088) * (relationLc3339 rho) = ((1 : F) * rho 105089)

def relationLc3340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105088) * (relationLc3340 rho) = ((1 : F) * rho 105090)

def relationLc3341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105087) * (relationLc3341 rho) = ((1 : F) * rho 105091)

def relationRow7566 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105090) * ((1 : F) * rho 105091) = ((1 : F) * rho 105092)

def relationRow7567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105093) * ((1 : F) + (1 : F) * rho 105092) = ((1 : F) * rho 105090 + (1 : F) * rho 105091)

def relationRow7568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105094) * ((1 : F) + (-1 : F) * rho 105092) = ((1 : F) * rho 105089 + (-1 : F) * rho 105090 + (-1 : F) * rho 105091)

def relationLc3342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 146⟩], residual := [((1 : F), 105093)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103092) * (relationLc3342 rho) = ((1 : F) * rho 105095)

def relationLc3343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 146⟩], residual := [((1 : F), 105094)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103092) * (relationLc3343 rho) = ((1 : F) * rho 105096)

def relationRow7571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105087) * ((1 : F) * rho 105088) = ((1 : F) * rho 105097)

def relationRow7572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105087) * ((1 : F) * rho 105087) = ((1 : F) * rho 105098)

def relationRow7573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105088) * ((1 : F) * rho 105088) = ((1 : F) * rho 105099)

def relationRow7574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105100) * ((-1 : F) * rho 105098 + (1 : F) * rho 105099) = ((2 : F) * rho 105097)

def relationRow7575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105101) * ((2 : F) + (1 : F) * rho 105098 + (-1 : F) * rho 105099) = ((1 : F) * rho 105098 + (1 : F) * rho 105099)

def relationLc3344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 147⟩, ⟨(1 : F), 103198, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105100 + (1 : F) * rho 105101) * (relationLc3344 rho) = ((1 : F) * rho 105102)

def relationLc3345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105101) * (relationLc3345 rho) = ((1 : F) * rho 105103)

def relationLc3346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105100) * (relationLc3346 rho) = ((1 : F) * rho 105104)

def relationRow7579 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105103) * ((1 : F) * rho 105104) = ((1 : F) * rho 105105)

def relationRow7580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105106) * ((1 : F) + (1 : F) * rho 105105) = ((1 : F) * rho 105103 + (1 : F) * rho 105104)

def relationRow7581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105107) * ((1 : F) + (-1 : F) * rho 105105) = ((1 : F) * rho 105102 + (-1 : F) * rho 105103 + (-1 : F) * rho 105104)

def relationLc3347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 147⟩], residual := [((1 : F), 105106)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103093) * (relationLc3347 rho) = ((1 : F) * rho 105108)

def relationLc3348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 147⟩], residual := [((1 : F), 105107)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103093) * (relationLc3348 rho) = ((1 : F) * rho 105109)

def relationRow7584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105100) * ((1 : F) * rho 105101) = ((1 : F) * rho 105110)

def relationRow7585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105100) * ((1 : F) * rho 105100) = ((1 : F) * rho 105111)

def relationRow7586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105101) * ((1 : F) * rho 105101) = ((1 : F) * rho 105112)

def relationRow7587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105113) * ((-1 : F) * rho 105111 + (1 : F) * rho 105112) = ((2 : F) * rho 105110)

def relationRow7588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105114) * ((2 : F) + (1 : F) * rho 105111 + (-1 : F) * rho 105112) = ((1 : F) * rho 105111 + (1 : F) * rho 105112)

def relationLc3349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 148⟩, ⟨(1 : F), 103198, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105113 + (1 : F) * rho 105114) * (relationLc3349 rho) = ((1 : F) * rho 105115)

def relationLc3350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105114) * (relationLc3350 rho) = ((1 : F) * rho 105116)

def relationLc3351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105113) * (relationLc3351 rho) = ((1 : F) * rho 105117)

def relationRow7592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105116) * ((1 : F) * rho 105117) = ((1 : F) * rho 105118)

def relationRow7593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105119) * ((1 : F) + (1 : F) * rho 105118) = ((1 : F) * rho 105116 + (1 : F) * rho 105117)

def relationRow7594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105120) * ((1 : F) + (-1 : F) * rho 105118) = ((1 : F) * rho 105115 + (-1 : F) * rho 105116 + (-1 : F) * rho 105117)

def relationLc3352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 148⟩], residual := [((1 : F), 105119)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103094) * (relationLc3352 rho) = ((1 : F) * rho 105121)

def relationLc3353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 148⟩], residual := [((1 : F), 105120)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103094) * (relationLc3353 rho) = ((1 : F) * rho 105122)

def relationRow7597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105113) * ((1 : F) * rho 105114) = ((1 : F) * rho 105123)

def relationRow7598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105113) * ((1 : F) * rho 105113) = ((1 : F) * rho 105124)

def relationRow7599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105114) * ((1 : F) * rho 105114) = ((1 : F) * rho 105125)

def relationRow7600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105126) * ((-1 : F) * rho 105124 + (1 : F) * rho 105125) = ((2 : F) * rho 105123)

def relationRow7601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105127) * ((2 : F) + (1 : F) * rho 105124 + (-1 : F) * rho 105125) = ((1 : F) * rho 105124 + (1 : F) * rho 105125)

def relationLc3354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 149⟩, ⟨(1 : F), 103198, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105126 + (1 : F) * rho 105127) * (relationLc3354 rho) = ((1 : F) * rho 105128)

def relationLc3355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105127) * (relationLc3355 rho) = ((1 : F) * rho 105129)

def relationLc3356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105126) * (relationLc3356 rho) = ((1 : F) * rho 105130)

def relationRow7605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105129) * ((1 : F) * rho 105130) = ((1 : F) * rho 105131)

def relationRow7606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105132) * ((1 : F) + (1 : F) * rho 105131) = ((1 : F) * rho 105129 + (1 : F) * rho 105130)

def relationRow7607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105133) * ((1 : F) + (-1 : F) * rho 105131) = ((1 : F) * rho 105128 + (-1 : F) * rho 105129 + (-1 : F) * rho 105130)

def relationLc3357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 149⟩], residual := [((1 : F), 105132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103095) * (relationLc3357 rho) = ((1 : F) * rho 105134)

def relationLc3358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 149⟩], residual := [((1 : F), 105133)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103095) * (relationLc3358 rho) = ((1 : F) * rho 105135)

def relationRow7610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105126) * ((1 : F) * rho 105127) = ((1 : F) * rho 105136)

def relationRow7611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105126) * ((1 : F) * rho 105126) = ((1 : F) * rho 105137)

def relationRow7612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105127) * ((1 : F) * rho 105127) = ((1 : F) * rho 105138)

def relationRow7613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105139) * ((-1 : F) * rho 105137 + (1 : F) * rho 105138) = ((2 : F) * rho 105136)

def relationRow7614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105140) * ((2 : F) + (1 : F) * rho 105137 + (-1 : F) * rho 105138) = ((1 : F) * rho 105137 + (1 : F) * rho 105138)

def relationLc3359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3359 rho) = ((1 : F) * rho 105141)

def relationRow7616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105141) * ((1 : F) * rho 105139 + (1 : F) * rho 105140) = ((1 : F) * rho 105142)

def relationLc3360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105140) * (relationLc3360 rho) = ((1 : F) * rho 105143)

def relationLc3361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105139) * (relationLc3361 rho) = ((1 : F) * rho 105144)

def relationRow7619 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105143) * ((1 : F) * rho 105144) = ((1 : F) * rho 105145)

def relationRow7620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105146) * ((1 : F) + (1 : F) * rho 105145) = ((1 : F) * rho 105143 + (1 : F) * rho 105144)

def relationRow7621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105147) * ((1 : F) + (-1 : F) * rho 105145) = ((1 : F) * rho 105142 + (-1 : F) * rho 105143 + (-1 : F) * rho 105144)

def relationLc3362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103096) * (relationLc3362 rho) = ((1 : F) * rho 105148)

def relationLc3363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105147)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103096) * (relationLc3363 rho) = ((1 : F) * rho 105149)

def relationRow7624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105139) * ((1 : F) * rho 105140) = ((1 : F) * rho 105150)

def relationRow7625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105139) * ((1 : F) * rho 105139) = ((1 : F) * rho 105151)

def relationRow7626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105140) * ((1 : F) * rho 105140) = ((1 : F) * rho 105152)

def relationRow7627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105153) * ((-1 : F) * rho 105151 + (1 : F) * rho 105152) = ((2 : F) * rho 105150)

def relationRow7628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105154) * ((2 : F) + (1 : F) * rho 105151 + (-1 : F) * rho 105152) = ((1 : F) * rho 105151 + (1 : F) * rho 105152)

def relationLc3364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3364 rho) = ((1 : F) * rho 105155)

def relationRow7630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105155) * ((1 : F) * rho 105153 + (1 : F) * rho 105154) = ((1 : F) * rho 105156)

def relationLc3365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105154) * (relationLc3365 rho) = ((1 : F) * rho 105157)

def relationLc3366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105153) * (relationLc3366 rho) = ((1 : F) * rho 105158)

def relationRow7633 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105157) * ((1 : F) * rho 105158) = ((1 : F) * rho 105159)

def relationRow7634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105160) * ((1 : F) + (1 : F) * rho 105159) = ((1 : F) * rho 105157 + (1 : F) * rho 105158)

def relationRow7635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105161) * ((1 : F) + (-1 : F) * rho 105159) = ((1 : F) * rho 105156 + (-1 : F) * rho 105157 + (-1 : F) * rho 105158)

def relationLc3367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((1 : F), 105160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103097) * (relationLc3367 rho) = ((1 : F) * rho 105162)

def relationLc3368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((1 : F), 105161)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103097) * (relationLc3368 rho) = ((1 : F) * rho 105163)

def relationRow7638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105153) * ((1 : F) * rho 105154) = ((1 : F) * rho 105164)

def relationRow7639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105153) * ((1 : F) * rho 105153) = ((1 : F) * rho 105165)

def relationRow7640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105154) * ((1 : F) * rho 105154) = ((1 : F) * rho 105166)

def relationRow7641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105167) * ((-1 : F) * rho 105165 + (1 : F) * rho 105166) = ((2 : F) * rho 105164)

def relationRow7642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105168) * ((2 : F) + (1 : F) * rho 105165 + (-1 : F) * rho 105166) = ((1 : F) * rho 105165 + (1 : F) * rho 105166)

def relationLc3369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3369 rho) = ((1 : F) * rho 105169)

def relationRow7644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105169) * ((1 : F) * rho 105167 + (1 : F) * rho 105168) = ((1 : F) * rho 105170)

def relationLc3370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105168) * (relationLc3370 rho) = ((1 : F) * rho 105171)

def relationLc3371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105167) * (relationLc3371 rho) = ((1 : F) * rho 105172)

def relationRow7647 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105171) * ((1 : F) * rho 105172) = ((1 : F) * rho 105173)

def relationRow7648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105174) * ((1 : F) + (1 : F) * rho 105173) = ((1 : F) * rho 105171 + (1 : F) * rho 105172)

def relationRow7649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105175) * ((1 : F) + (-1 : F) * rho 105173) = ((1 : F) * rho 105170 + (-1 : F) * rho 105171 + (-1 : F) * rho 105172)

def relationLc3372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((1 : F), 105174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103098) * (relationLc3372 rho) = ((1 : F) * rho 105176)

def relationLc3373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((1 : F), 105175)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103098) * (relationLc3373 rho) = ((1 : F) * rho 105177)

def relationRow7652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105167) * ((1 : F) * rho 105168) = ((1 : F) * rho 105178)

def relationRow7653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105167) * ((1 : F) * rho 105167) = ((1 : F) * rho 105179)

def relationRow7654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105168) * ((1 : F) * rho 105168) = ((1 : F) * rho 105180)

def relationRow7655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105181) * ((-1 : F) * rho 105179 + (1 : F) * rho 105180) = ((2 : F) * rho 105178)

def relationRow7656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105182) * ((2 : F) + (1 : F) * rho 105179 + (-1 : F) * rho 105180) = ((1 : F) * rho 105179 + (1 : F) * rho 105180)

def relationLc3374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3374 rho) = ((1 : F) * rho 105183)

def relationRow7658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105183) * ((1 : F) * rho 105181 + (1 : F) * rho 105182) = ((1 : F) * rho 105184)

def relationLc3375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105182) * (relationLc3375 rho) = ((1 : F) * rho 105185)

def relationLc3376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105181) * (relationLc3376 rho) = ((1 : F) * rho 105186)

def relationRow7661 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105185) * ((1 : F) * rho 105186) = ((1 : F) * rho 105187)

def relationRow7662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105188) * ((1 : F) + (1 : F) * rho 105187) = ((1 : F) * rho 105185 + (1 : F) * rho 105186)

def relationRow7663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105189) * ((1 : F) + (-1 : F) * rho 105187) = ((1 : F) * rho 105184 + (-1 : F) * rho 105185 + (-1 : F) * rho 105186)

def relationLc3377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((1 : F), 105188)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103099) * (relationLc3377 rho) = ((1 : F) * rho 105190)

def relationLc3378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((1 : F), 105189)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103099) * (relationLc3378 rho) = ((1 : F) * rho 105191)

def relationRow7666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105181) * ((1 : F) * rho 105182) = ((1 : F) * rho 105192)

def relationRow7667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105181) * ((1 : F) * rho 105181) = ((1 : F) * rho 105193)

def relationRow7668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105182) * ((1 : F) * rho 105182) = ((1 : F) * rho 105194)

def relationRow7669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105195) * ((-1 : F) * rho 105193 + (1 : F) * rho 105194) = ((2 : F) * rho 105192)

def relationRow7670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105196) * ((2 : F) + (1 : F) * rho 105193 + (-1 : F) * rho 105194) = ((1 : F) * rho 105193 + (1 : F) * rho 105194)

def relationLc3379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7671 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3379 rho) = ((1 : F) * rho 105197)

def relationRow7672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105197) * ((1 : F) * rho 105195 + (1 : F) * rho 105196) = ((1 : F) * rho 105198)

def relationLc3380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105196) * (relationLc3380 rho) = ((1 : F) * rho 105199)

def relationLc3381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105195) * (relationLc3381 rho) = ((1 : F) * rho 105200)

def relationRow7675 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105199) * ((1 : F) * rho 105200) = ((1 : F) * rho 105201)

def relationRow7676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105202) * ((1 : F) + (1 : F) * rho 105201) = ((1 : F) * rho 105199 + (1 : F) * rho 105200)

def relationRow7677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105203) * ((1 : F) + (-1 : F) * rho 105201) = ((1 : F) * rho 105198 + (-1 : F) * rho 105199 + (-1 : F) * rho 105200)

def relationLc3382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((1 : F), 105202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103100) * (relationLc3382 rho) = ((1 : F) * rho 105204)

def relationLc3383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((1 : F), 105203)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103100) * (relationLc3383 rho) = ((1 : F) * rho 105205)

def relationRow7680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105195) * ((1 : F) * rho 105196) = ((1 : F) * rho 105206)

def relationRow7681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105195) * ((1 : F) * rho 105195) = ((1 : F) * rho 105207)

def relationRow7682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105196) * ((1 : F) * rho 105196) = ((1 : F) * rho 105208)

def relationRow7683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105209) * ((-1 : F) * rho 105207 + (1 : F) * rho 105208) = ((2 : F) * rho 105206)

def relationRow7684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105210) * ((2 : F) + (1 : F) * rho 105207 + (-1 : F) * rho 105208) = ((1 : F) * rho 105207 + (1 : F) * rho 105208)

def relationLc3384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7685 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3384 rho) = ((1 : F) * rho 105211)

def relationRow7686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105211) * ((1 : F) * rho 105209 + (1 : F) * rho 105210) = ((1 : F) * rho 105212)

def relationLc3385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105210) * (relationLc3385 rho) = ((1 : F) * rho 105213)

def relationLc3386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105209) * (relationLc3386 rho) = ((1 : F) * rho 105214)

def relationRow7689 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105213) * ((1 : F) * rho 105214) = ((1 : F) * rho 105215)

def relationRow7690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105216) * ((1 : F) + (1 : F) * rho 105215) = ((1 : F) * rho 105213 + (1 : F) * rho 105214)

def relationRow7691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105217) * ((1 : F) + (-1 : F) * rho 105215) = ((1 : F) * rho 105212 + (-1 : F) * rho 105213 + (-1 : F) * rho 105214)

def relationLc3387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((1 : F), 105216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103101) * (relationLc3387 rho) = ((1 : F) * rho 105218)

def relationLc3388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((1 : F), 105217)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103101) * (relationLc3388 rho) = ((1 : F) * rho 105219)

def relationRow7694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105209) * ((1 : F) * rho 105210) = ((1 : F) * rho 105220)

def relationRow7695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105209) * ((1 : F) * rho 105209) = ((1 : F) * rho 105221)

def relationRow7696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105210) * ((1 : F) * rho 105210) = ((1 : F) * rho 105222)

def relationRow7697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105223) * ((-1 : F) * rho 105221 + (1 : F) * rho 105222) = ((2 : F) * rho 105220)

def relationRow7698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105224) * ((2 : F) + (1 : F) * rho 105221 + (-1 : F) * rho 105222) = ((1 : F) * rho 105221 + (1 : F) * rho 105222)

def relationLc3389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7699 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3389 rho) = ((1 : F) * rho 105225)

def relationRow7700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105225) * ((1 : F) * rho 105223 + (1 : F) * rho 105224) = ((1 : F) * rho 105226)

def relationLc3390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105224) * (relationLc3390 rho) = ((1 : F) * rho 105227)

def relationLc3391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105223) * (relationLc3391 rho) = ((1 : F) * rho 105228)

def relationRow7703 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105227) * ((1 : F) * rho 105228) = ((1 : F) * rho 105229)

def relationRow7704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105230) * ((1 : F) + (1 : F) * rho 105229) = ((1 : F) * rho 105227 + (1 : F) * rho 105228)

def relationRow7705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105231) * ((1 : F) + (-1 : F) * rho 105229) = ((1 : F) * rho 105226 + (-1 : F) * rho 105227 + (-1 : F) * rho 105228)

def relationLc3392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((1 : F), 105230)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103102) * (relationLc3392 rho) = ((1 : F) * rho 105232)

def relationLc3393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((1 : F), 105231)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103102) * (relationLc3393 rho) = ((1 : F) * rho 105233)

def relationRow7708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105223) * ((1 : F) * rho 105224) = ((1 : F) * rho 105234)

def relationRow7709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105223) * ((1 : F) * rho 105223) = ((1 : F) * rho 105235)

def relationRow7710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105224) * ((1 : F) * rho 105224) = ((1 : F) * rho 105236)

def relationRow7711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105237) * ((-1 : F) * rho 105235 + (1 : F) * rho 105236) = ((2 : F) * rho 105234)

def relationRow7712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105238) * ((2 : F) + (1 : F) * rho 105235 + (-1 : F) * rho 105236) = ((1 : F) * rho 105235 + (1 : F) * rho 105236)

def relationLc3394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7713 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3394 rho) = ((1 : F) * rho 105239)

def relationRow7714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105239) * ((1 : F) * rho 105237 + (1 : F) * rho 105238) = ((1 : F) * rho 105240)

def relationLc3395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105238) * (relationLc3395 rho) = ((1 : F) * rho 105241)

def relationLc3396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105237) * (relationLc3396 rho) = ((1 : F) * rho 105242)

def relationRow7717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105241) * ((1 : F) * rho 105242) = ((1 : F) * rho 105243)

def relationRow7718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105244) * ((1 : F) + (1 : F) * rho 105243) = ((1 : F) * rho 105241 + (1 : F) * rho 105242)

def relationRow7719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105245) * ((1 : F) + (-1 : F) * rho 105243) = ((1 : F) * rho 105240 + (-1 : F) * rho 105241 + (-1 : F) * rho 105242)

def relationLc3397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((1 : F), 105244)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103103) * (relationLc3397 rho) = ((1 : F) * rho 105246)

def relationLc3398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((1 : F), 105245)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103103) * (relationLc3398 rho) = ((1 : F) * rho 105247)

def relationRow7722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105237) * ((1 : F) * rho 105238) = ((1 : F) * rho 105248)

def relationRow7723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105237) * ((1 : F) * rho 105237) = ((1 : F) * rho 105249)

def relationRow7724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105238) * ((1 : F) * rho 105238) = ((1 : F) * rho 105250)

def relationRow7725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105251) * ((-1 : F) * rho 105249 + (1 : F) * rho 105250) = ((2 : F) * rho 105248)

def relationRow7726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105252) * ((2 : F) + (1 : F) * rho 105249 + (-1 : F) * rho 105250) = ((1 : F) * rho 105249 + (1 : F) * rho 105250)

def relationLc3399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7727 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3399 rho) = ((1 : F) * rho 105253)

def relationRow7728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105253) * ((1 : F) * rho 105251 + (1 : F) * rho 105252) = ((1 : F) * rho 105254)

def relationLc3400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105252) * (relationLc3400 rho) = ((1 : F) * rho 105255)

def relationLc3401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105251) * (relationLc3401 rho) = ((1 : F) * rho 105256)

def relationRow7731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105255) * ((1 : F) * rho 105256) = ((1 : F) * rho 105257)

def relationRow7732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105258) * ((1 : F) + (1 : F) * rho 105257) = ((1 : F) * rho 105255 + (1 : F) * rho 105256)

def relationRow7733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105259) * ((1 : F) + (-1 : F) * rho 105257) = ((1 : F) * rho 105254 + (-1 : F) * rho 105255 + (-1 : F) * rho 105256)

def relationLc3402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((1 : F), 105258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103104) * (relationLc3402 rho) = ((1 : F) * rho 105260)

def relationLc3403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((1 : F), 105259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103104) * (relationLc3403 rho) = ((1 : F) * rho 105261)

def relationRow7736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105251) * ((1 : F) * rho 105252) = ((1 : F) * rho 105262)

def relationRow7737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105251) * ((1 : F) * rho 105251) = ((1 : F) * rho 105263)

def relationRow7738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105252) * ((1 : F) * rho 105252) = ((1 : F) * rho 105264)

def relationRow7739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105265) * ((-1 : F) * rho 105263 + (1 : F) * rho 105264) = ((2 : F) * rho 105262)

def relationRow7740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105266) * ((2 : F) + (1 : F) * rho 105263 + (-1 : F) * rho 105264) = ((1 : F) * rho 105263 + (1 : F) * rho 105264)

def relationLc3404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3404 rho) = ((1 : F) * rho 105267)

def relationRow7742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105267) * ((1 : F) * rho 105265 + (1 : F) * rho 105266) = ((1 : F) * rho 105268)

def relationLc3405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105266) * (relationLc3405 rho) = ((1 : F) * rho 105269)

def relationLc3406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105265) * (relationLc3406 rho) = ((1 : F) * rho 105270)

def relationRow7745 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105269) * ((1 : F) * rho 105270) = ((1 : F) * rho 105271)

def relationRow7746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105272) * ((1 : F) + (1 : F) * rho 105271) = ((1 : F) * rho 105269 + (1 : F) * rho 105270)

def relationRow7747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105273) * ((1 : F) + (-1 : F) * rho 105271) = ((1 : F) * rho 105268 + (-1 : F) * rho 105269 + (-1 : F) * rho 105270)

def relationLc3407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((1 : F), 105272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103105) * (relationLc3407 rho) = ((1 : F) * rho 105274)

def relationLc3408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((1 : F), 105273)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103105) * (relationLc3408 rho) = ((1 : F) * rho 105275)

def relationRow7750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105265) * ((1 : F) * rho 105266) = ((1 : F) * rho 105276)

def relationRow7751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105265) * ((1 : F) * rho 105265) = ((1 : F) * rho 105277)

def relationRow7752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105266) * ((1 : F) * rho 105266) = ((1 : F) * rho 105278)

def relationRow7753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105279) * ((-1 : F) * rho 105277 + (1 : F) * rho 105278) = ((2 : F) * rho 105276)

def relationRow7754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105280) * ((2 : F) + (1 : F) * rho 105277 + (-1 : F) * rho 105278) = ((1 : F) * rho 105277 + (1 : F) * rho 105278)

def relationLc3409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261), ((1 : F), 105274), ((1 : F), 105275)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7755 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3409 rho) = ((1 : F) * rho 105281)

def relationRow7756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105281) * ((1 : F) * rho 105279 + (1 : F) * rho 105280) = ((1 : F) * rho 105282)

def relationLc3410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260), ((1 : F), 105274)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105280) * (relationLc3410 rho) = ((1 : F) * rho 105283)

def relationLc3411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261), ((1 : F), 105275)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105279) * (relationLc3411 rho) = ((1 : F) * rho 105284)

def relationRow7759 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105283) * ((1 : F) * rho 105284) = ((1 : F) * rho 105285)

def relationRow7760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105286) * ((1 : F) + (1 : F) * rho 105285) = ((1 : F) * rho 105283 + (1 : F) * rho 105284)

def relationRow7761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105287) * ((1 : F) + (-1 : F) * rho 105285) = ((1 : F) * rho 105282 + (-1 : F) * rho 105283 + (-1 : F) * rho 105284)

def relationLc3412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((-1 : F), 105274), ((1 : F), 105286)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103106) * (relationLc3412 rho) = ((1 : F) * rho 105288)

def relationLc3413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((-1 : F), 105275), ((1 : F), 105287)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103106) * (relationLc3413 rho) = ((1 : F) * rho 105289)

def relationRow7764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105279) * ((1 : F) * rho 105280) = ((1 : F) * rho 105290)

def relationRow7765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105279) * ((1 : F) * rho 105279) = ((1 : F) * rho 105291)

def relationRow7766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105280) * ((1 : F) * rho 105280) = ((1 : F) * rho 105292)

def relationRow7767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105293) * ((-1 : F) * rho 105291 + (1 : F) * rho 105292) = ((2 : F) * rho 105290)

def relationRow7768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105294) * ((2 : F) + (1 : F) * rho 105291 + (-1 : F) * rho 105292) = ((1 : F) * rho 105291 + (1 : F) * rho 105292)

def relationLc3414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261), ((1 : F), 105274), ((1 : F), 105275), ((1 : F), 105288), ((1 : F), 105289)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3414 rho) = ((1 : F) * rho 105295)

def relationRow7770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105295) * ((1 : F) * rho 105293 + (1 : F) * rho 105294) = ((1 : F) * rho 105296)

def relationLc3415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260), ((1 : F), 105274), ((1 : F), 105288)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105294) * (relationLc3415 rho) = ((1 : F) * rho 105297)

def relationLc3416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261), ((1 : F), 105275), ((1 : F), 105289)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105293) * (relationLc3416 rho) = ((1 : F) * rho 105298)

def relationRow7773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105297) * ((1 : F) * rho 105298) = ((1 : F) * rho 105299)

def relationRow7774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105300) * ((1 : F) + (1 : F) * rho 105299) = ((1 : F) * rho 105297 + (1 : F) * rho 105298)

def relationRow7775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105301) * ((1 : F) + (-1 : F) * rho 105299) = ((1 : F) * rho 105296 + (-1 : F) * rho 105297 + (-1 : F) * rho 105298)

def relationLc3417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((-1 : F), 105274), ((-1 : F), 105288), ((1 : F), 105300)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103107) * (relationLc3417 rho) = ((1 : F) * rho 105302)

def relationLc3418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((-1 : F), 105275), ((-1 : F), 105289), ((1 : F), 105301)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103107) * (relationLc3418 rho) = ((1 : F) * rho 105303)

def relationRow7778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105293) * ((1 : F) * rho 105294) = ((1 : F) * rho 105304)

def relationRow7779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105293) * ((1 : F) * rho 105293) = ((1 : F) * rho 105305)

def relationRow7780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105294) * ((1 : F) * rho 105294) = ((1 : F) * rho 105306)

def relationRow7781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105307) * ((-1 : F) * rho 105305 + (1 : F) * rho 105306) = ((2 : F) * rho 105304)

def relationRow7782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105308) * ((2 : F) + (1 : F) * rho 105305 + (-1 : F) * rho 105306) = ((1 : F) * rho 105305 + (1 : F) * rho 105306)

def relationLc3419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261), ((1 : F), 105274), ((1 : F), 105275), ((1 : F), 105288), ((1 : F), 105289), ((1 : F), 105302), ((1 : F), 105303)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7783 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3419 rho) = ((1 : F) * rho 105309)

def relationRow7784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105309) * ((1 : F) * rho 105307 + (1 : F) * rho 105308) = ((1 : F) * rho 105310)

def relationLc3420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260), ((1 : F), 105274), ((1 : F), 105288), ((1 : F), 105302)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105308) * (relationLc3420 rho) = ((1 : F) * rho 105311)

def relationLc3421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261), ((1 : F), 105275), ((1 : F), 105289), ((1 : F), 105303)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105307) * (relationLc3421 rho) = ((1 : F) * rho 105312)

def relationRow7787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105311) * ((1 : F) * rho 105312) = ((1 : F) * rho 105313)

def relationRow7788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105314) * ((1 : F) + (1 : F) * rho 105313) = ((1 : F) * rho 105311 + (1 : F) * rho 105312)

def relationRow7789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105315) * ((1 : F) + (-1 : F) * rho 105313) = ((1 : F) * rho 105310 + (-1 : F) * rho 105311 + (-1 : F) * rho 105312)

def relationLc3422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((-1 : F), 105274), ((-1 : F), 105288), ((-1 : F), 105302), ((1 : F), 105314)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103108) * (relationLc3422 rho) = ((1 : F) * rho 105316)

def relationLc3423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((-1 : F), 105275), ((-1 : F), 105289), ((-1 : F), 105303), ((1 : F), 105315)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103108) * (relationLc3423 rho) = ((1 : F) * rho 105317)

def relationRow7792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105307) * ((1 : F) * rho 105308) = ((1 : F) * rho 105318)

def relationRow7793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105307) * ((1 : F) * rho 105307) = ((1 : F) * rho 105319)

def relationRow7794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105308) * ((1 : F) * rho 105308) = ((1 : F) * rho 105320)

def relationRow7795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105321) * ((-1 : F) * rho 105319 + (1 : F) * rho 105320) = ((2 : F) * rho 105318)

def relationRow7796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105322) * ((2 : F) + (1 : F) * rho 105319 + (-1 : F) * rho 105320) = ((1 : F) * rho 105319 + (1 : F) * rho 105320)

def relationLc3424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261), ((1 : F), 105274), ((1 : F), 105275), ((1 : F), 105288), ((1 : F), 105289), ((1 : F), 105302), ((1 : F), 105303), ((1 : F), 105316), ((1 : F), 105317)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3424 rho) = ((1 : F) * rho 105323)

def relationRow7798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105323) * ((1 : F) * rho 105321 + (1 : F) * rho 105322) = ((1 : F) * rho 105324)

def relationLc3425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260), ((1 : F), 105274), ((1 : F), 105288), ((1 : F), 105302), ((1 : F), 105316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105322) * (relationLc3425 rho) = ((1 : F) * rho 105325)

def relationLc3426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261), ((1 : F), 105275), ((1 : F), 105289), ((1 : F), 105303), ((1 : F), 105317)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105321) * (relationLc3426 rho) = ((1 : F) * rho 105326)

def relationRow7801 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105325) * ((1 : F) * rho 105326) = ((1 : F) * rho 105327)

def relationRow7802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105328) * ((1 : F) + (1 : F) * rho 105327) = ((1 : F) * rho 105325 + (1 : F) * rho 105326)

def relationRow7803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105329) * ((1 : F) + (-1 : F) * rho 105327) = ((1 : F) * rho 105324 + (-1 : F) * rho 105325 + (-1 : F) * rho 105326)

def relationLc3427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((-1 : F), 105274), ((-1 : F), 105288), ((-1 : F), 105302), ((-1 : F), 105316), ((1 : F), 105328)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103109) * (relationLc3427 rho) = ((1 : F) * rho 105330)

def relationLc3428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((-1 : F), 105275), ((-1 : F), 105289), ((-1 : F), 105303), ((-1 : F), 105317), ((1 : F), 105329)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103109) * (relationLc3428 rho) = ((1 : F) * rho 105331)

def relationRow7806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105321) * ((1 : F) * rho 105322) = ((1 : F) * rho 105332)

def relationRow7807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105321) * ((1 : F) * rho 105321) = ((1 : F) * rho 105333)

def relationRow7808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105322) * ((1 : F) * rho 105322) = ((1 : F) * rho 105334)

def relationRow7809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105335) * ((-1 : F) * rho 105333 + (1 : F) * rho 105334) = ((2 : F) * rho 105332)

def relationRow7810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105336) * ((2 : F) + (1 : F) * rho 105333 + (-1 : F) * rho 105334) = ((1 : F) * rho 105333 + (1 : F) * rho 105334)

def relationLc3429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261), ((1 : F), 105274), ((1 : F), 105275), ((1 : F), 105288), ((1 : F), 105289), ((1 : F), 105302), ((1 : F), 105303), ((1 : F), 105316), ((1 : F), 105317), ((1 : F), 105330), ((1 : F), 105331)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7811 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3429 rho) = ((1 : F) * rho 105337)

def relationRow7812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105337) * ((1 : F) * rho 105335 + (1 : F) * rho 105336) = ((1 : F) * rho 105338)

def relationLc3430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260), ((1 : F), 105274), ((1 : F), 105288), ((1 : F), 105302), ((1 : F), 105316), ((1 : F), 105330)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105336) * (relationLc3430 rho) = ((1 : F) * rho 105339)

def relationLc3431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261), ((1 : F), 105275), ((1 : F), 105289), ((1 : F), 105303), ((1 : F), 105317), ((1 : F), 105331)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105335) * (relationLc3431 rho) = ((1 : F) * rho 105340)

def relationRow7815 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105339) * ((1 : F) * rho 105340) = ((1 : F) * rho 105341)

def relationRow7816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105342) * ((1 : F) + (1 : F) * rho 105341) = ((1 : F) * rho 105339 + (1 : F) * rho 105340)

def relationRow7817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105343) * ((1 : F) + (-1 : F) * rho 105341) = ((1 : F) * rho 105338 + (-1 : F) * rho 105339 + (-1 : F) * rho 105340)

def relationLc3432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((-1 : F), 105274), ((-1 : F), 105288), ((-1 : F), 105302), ((-1 : F), 105316), ((-1 : F), 105330), ((1 : F), 105342)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103110) * (relationLc3432 rho) = ((1 : F) * rho 105344)

def relationLc3433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((-1 : F), 105275), ((-1 : F), 105289), ((-1 : F), 105303), ((-1 : F), 105317), ((-1 : F), 105331), ((1 : F), 105343)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103110) * (relationLc3433 rho) = ((1 : F) * rho 105345)

def relationRow7820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105335) * ((1 : F) * rho 105336) = ((1 : F) * rho 105346)

def relationRow7821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105335) * ((1 : F) * rho 105335) = ((1 : F) * rho 105347)

def relationRow7822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105336) * ((1 : F) * rho 105336) = ((1 : F) * rho 105348)

def relationRow7823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105349) * ((-1 : F) * rho 105347 + (1 : F) * rho 105348) = ((2 : F) * rho 105346)

def relationRow7824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105350) * ((2 : F) + (1 : F) * rho 105347 + (-1 : F) * rho 105348) = ((1 : F) * rho 105347 + (1 : F) * rho 105348)

def relationLc3434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105149), ((1 : F), 105162), ((1 : F), 105163), ((1 : F), 105176), ((1 : F), 105177), ((1 : F), 105190), ((1 : F), 105191), ((1 : F), 105204), ((1 : F), 105205), ((1 : F), 105218), ((1 : F), 105219), ((1 : F), 105232), ((1 : F), 105233), ((1 : F), 105246), ((1 : F), 105247), ((1 : F), 105260), ((1 : F), 105261), ((1 : F), 105274), ((1 : F), 105275), ((1 : F), 105288), ((1 : F), 105289), ((1 : F), 105302), ((1 : F), 105303), ((1 : F), 105316), ((1 : F), 105317), ((1 : F), 105330), ((1 : F), 105331), ((1 : F), 105344), ((1 : F), 105345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7825 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3434 rho) = ((1 : F) * rho 105351)

def relationRow7826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105351) * ((1 : F) * rho 105349 + (1 : F) * rho 105350) = ((1 : F) * rho 105352)

def relationLc3435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩], residual := [((1 : F), 105148), ((1 : F), 105162), ((1 : F), 105176), ((1 : F), 105190), ((1 : F), 105204), ((1 : F), 105218), ((1 : F), 105232), ((1 : F), 105246), ((1 : F), 105260), ((1 : F), 105274), ((1 : F), 105288), ((1 : F), 105302), ((1 : F), 105316), ((1 : F), 105330), ((1 : F), 105344)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105350) * (relationLc3435 rho) = ((1 : F) * rho 105353)

def relationLc3436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩], residual := [((1 : F), 105149), ((1 : F), 105163), ((1 : F), 105177), ((1 : F), 105191), ((1 : F), 105205), ((1 : F), 105219), ((1 : F), 105233), ((1 : F), 105247), ((1 : F), 105261), ((1 : F), 105275), ((1 : F), 105289), ((1 : F), 105303), ((1 : F), 105317), ((1 : F), 105331), ((1 : F), 105345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105349) * (relationLc3436 rho) = ((1 : F) * rho 105354)

def relationRow7829 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105353) * ((1 : F) * rho 105354) = ((1 : F) * rho 105355)

def relationRow7830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105356) * ((1 : F) + (1 : F) * rho 105355) = ((1 : F) * rho 105353 + (1 : F) * rho 105354)

def relationRow7831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105357) * ((1 : F) + (-1 : F) * rho 105355) = ((1 : F) * rho 105352 + (-1 : F) * rho 105353 + (-1 : F) * rho 105354)

def relationLc3437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩], residual := [((-1 : F), 105148), ((-1 : F), 105162), ((-1 : F), 105176), ((-1 : F), 105190), ((-1 : F), 105204), ((-1 : F), 105218), ((-1 : F), 105232), ((-1 : F), 105246), ((-1 : F), 105260), ((-1 : F), 105274), ((-1 : F), 105288), ((-1 : F), 105302), ((-1 : F), 105316), ((-1 : F), 105330), ((-1 : F), 105344), ((1 : F), 105356)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103111) * (relationLc3437 rho) = ((1 : F) * rho 105358)

def relationLc3438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩], residual := [((-1 : F), 105149), ((-1 : F), 105163), ((-1 : F), 105177), ((-1 : F), 105191), ((-1 : F), 105205), ((-1 : F), 105219), ((-1 : F), 105233), ((-1 : F), 105247), ((-1 : F), 105261), ((-1 : F), 105275), ((-1 : F), 105289), ((-1 : F), 105303), ((-1 : F), 105317), ((-1 : F), 105331), ((-1 : F), 105345), ((1 : F), 105357)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103111) * (relationLc3438 rho) = ((1 : F) * rho 105359)

def relationRow7834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105349) * ((1 : F) * rho 105350) = ((1 : F) * rho 105360)

def relationRow7835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105349) * ((1 : F) * rho 105349) = ((1 : F) * rho 105361)

def relationRow7836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105350) * ((1 : F) * rho 105350) = ((1 : F) * rho 105362)

def relationRow7837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105363) * ((-1 : F) * rho 105361 + (1 : F) * rho 105362) = ((2 : F) * rho 105360)

def relationRow7838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105364) * ((2 : F) + (1 : F) * rho 105361 + (-1 : F) * rho 105362) = ((1 : F) * rho 105361 + (1 : F) * rho 105362)

def relationLc3439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 16⟩, ⟨(1 : F), 105149, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7839 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3439 rho) = ((1 : F) * rho 105365)

def relationRow7840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105365) * ((1 : F) * rho 105363 + (1 : F) * rho 105364) = ((1 : F) * rho 105366)

def relationLc3440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105364) * (relationLc3440 rho) = ((1 : F) * rho 105367)

def relationLc3441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105363) * (relationLc3441 rho) = ((1 : F) * rho 105368)

def relationRow7843 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105367) * ((1 : F) * rho 105368) = ((1 : F) * rho 105369)

def relationRow7844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105370) * ((1 : F) + (1 : F) * rho 105369) = ((1 : F) * rho 105367 + (1 : F) * rho 105368)

def relationRow7845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105371) * ((1 : F) + (-1 : F) * rho 105369) = ((1 : F) * rho 105366 + (-1 : F) * rho 105367 + (-1 : F) * rho 105368)

def relationLc3442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 16⟩], residual := [((1 : F), 105370)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103112) * (relationLc3442 rho) = ((1 : F) * rho 105372)

def relationLc3443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 16⟩], residual := [((1 : F), 105371)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103112) * (relationLc3443 rho) = ((1 : F) * rho 105373)

def relationRow7848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105363) * ((1 : F) * rho 105364) = ((1 : F) * rho 105374)

def relationRow7849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105363) * ((1 : F) * rho 105363) = ((1 : F) * rho 105375)

def relationRow7850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105364) * ((1 : F) * rho 105364) = ((1 : F) * rho 105376)

def relationRow7851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105377) * ((-1 : F) * rho 105375 + (1 : F) * rho 105376) = ((2 : F) * rho 105374)

def relationRow7852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105378) * ((2 : F) + (1 : F) * rho 105375 + (-1 : F) * rho 105376) = ((1 : F) * rho 105375 + (1 : F) * rho 105376)

def relationLc3444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 17⟩, ⟨(1 : F), 105149, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7853 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3444 rho) = ((1 : F) * rho 105379)

def relationRow7854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105379) * ((1 : F) * rho 105377 + (1 : F) * rho 105378) = ((1 : F) * rho 105380)

def relationLc3445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105378) * (relationLc3445 rho) = ((1 : F) * rho 105381)

def relationLc3446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105377) * (relationLc3446 rho) = ((1 : F) * rho 105382)

def relationRow7857 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105381) * ((1 : F) * rho 105382) = ((1 : F) * rho 105383)

def relationRow7858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105384) * ((1 : F) + (1 : F) * rho 105383) = ((1 : F) * rho 105381 + (1 : F) * rho 105382)

def relationRow7859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105385) * ((1 : F) + (-1 : F) * rho 105383) = ((1 : F) * rho 105380 + (-1 : F) * rho 105381 + (-1 : F) * rho 105382)

def relationLc3447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 17⟩], residual := [((1 : F), 105384)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103113) * (relationLc3447 rho) = ((1 : F) * rho 105386)

def relationLc3448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 17⟩], residual := [((1 : F), 105385)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103113) * (relationLc3448 rho) = ((1 : F) * rho 105387)

def relationRow7862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105377) * ((1 : F) * rho 105378) = ((1 : F) * rho 105388)

def relationRow7863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105377) * ((1 : F) * rho 105377) = ((1 : F) * rho 105389)

def relationRow7864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105378) * ((1 : F) * rho 105378) = ((1 : F) * rho 105390)

def relationRow7865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105391) * ((-1 : F) * rho 105389 + (1 : F) * rho 105390) = ((2 : F) * rho 105388)

def relationRow7866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105392) * ((2 : F) + (1 : F) * rho 105389 + (-1 : F) * rho 105390) = ((1 : F) * rho 105389 + (1 : F) * rho 105390)

def relationLc3449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 18⟩, ⟨(1 : F), 105149, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7867 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3449 rho) = ((1 : F) * rho 105393)

def relationRow7868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105393) * ((1 : F) * rho 105391 + (1 : F) * rho 105392) = ((1 : F) * rho 105394)

def relationLc3450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105392) * (relationLc3450 rho) = ((1 : F) * rho 105395)

def relationLc3451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105391) * (relationLc3451 rho) = ((1 : F) * rho 105396)

def relationRow7871 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105395) * ((1 : F) * rho 105396) = ((1 : F) * rho 105397)

def relationRow7872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105398) * ((1 : F) + (1 : F) * rho 105397) = ((1 : F) * rho 105395 + (1 : F) * rho 105396)

def relationRow7873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105399) * ((1 : F) + (-1 : F) * rho 105397) = ((1 : F) * rho 105394 + (-1 : F) * rho 105395 + (-1 : F) * rho 105396)

def relationLc3452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 18⟩], residual := [((1 : F), 105398)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103114) * (relationLc3452 rho) = ((1 : F) * rho 105400)

def relationLc3453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 18⟩], residual := [((1 : F), 105399)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103114) * (relationLc3453 rho) = ((1 : F) * rho 105401)

def relationRow7876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105391) * ((1 : F) * rho 105392) = ((1 : F) * rho 105402)

def relationRow7877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105391) * ((1 : F) * rho 105391) = ((1 : F) * rho 105403)

def relationRow7878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105392) * ((1 : F) * rho 105392) = ((1 : F) * rho 105404)

def relationRow7879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105405) * ((-1 : F) * rho 105403 + (1 : F) * rho 105404) = ((2 : F) * rho 105402)

def relationRow7880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105406) * ((2 : F) + (1 : F) * rho 105403 + (-1 : F) * rho 105404) = ((1 : F) * rho 105403 + (1 : F) * rho 105404)

def relationLc3454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 19⟩, ⟨(1 : F), 105149, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3454 rho) = ((1 : F) * rho 105407)

def relationRow7882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105407) * ((1 : F) * rho 105405 + (1 : F) * rho 105406) = ((1 : F) * rho 105408)

def relationLc3455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105406) * (relationLc3455 rho) = ((1 : F) * rho 105409)

def relationLc3456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105405) * (relationLc3456 rho) = ((1 : F) * rho 105410)

def relationRow7885 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105409) * ((1 : F) * rho 105410) = ((1 : F) * rho 105411)

def relationRow7886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105412) * ((1 : F) + (1 : F) * rho 105411) = ((1 : F) * rho 105409 + (1 : F) * rho 105410)

def relationRow7887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105413) * ((1 : F) + (-1 : F) * rho 105411) = ((1 : F) * rho 105408 + (-1 : F) * rho 105409 + (-1 : F) * rho 105410)

def relationLc3457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 19⟩], residual := [((1 : F), 105412)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103115) * (relationLc3457 rho) = ((1 : F) * rho 105414)

def relationLc3458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 19⟩], residual := [((1 : F), 105413)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103115) * (relationLc3458 rho) = ((1 : F) * rho 105415)

def relationRow7890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105405) * ((1 : F) * rho 105406) = ((1 : F) * rho 105416)

def relationRow7891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105405) * ((1 : F) * rho 105405) = ((1 : F) * rho 105417)

def relationRow7892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105406) * ((1 : F) * rho 105406) = ((1 : F) * rho 105418)

def relationRow7893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105419) * ((-1 : F) * rho 105417 + (1 : F) * rho 105418) = ((2 : F) * rho 105416)

def relationRow7894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105420) * ((2 : F) + (1 : F) * rho 105417 + (-1 : F) * rho 105418) = ((1 : F) * rho 105417 + (1 : F) * rho 105418)

def relationLc3459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 20⟩, ⟨(1 : F), 105149, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3459 rho) = ((1 : F) * rho 105421)

def relationRow7896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105421) * ((1 : F) * rho 105419 + (1 : F) * rho 105420) = ((1 : F) * rho 105422)

def relationLc3460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105420) * (relationLc3460 rho) = ((1 : F) * rho 105423)

def relationLc3461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105419) * (relationLc3461 rho) = ((1 : F) * rho 105424)

def relationRow7899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105423) * ((1 : F) * rho 105424) = ((1 : F) * rho 105425)

def relationRow7900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105426) * ((1 : F) + (1 : F) * rho 105425) = ((1 : F) * rho 105423 + (1 : F) * rho 105424)

def relationRow7901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105427) * ((1 : F) + (-1 : F) * rho 105425) = ((1 : F) * rho 105422 + (-1 : F) * rho 105423 + (-1 : F) * rho 105424)

def relationLc3462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 20⟩], residual := [((1 : F), 105426)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103116) * (relationLc3462 rho) = ((1 : F) * rho 105428)

def relationLc3463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 20⟩], residual := [((1 : F), 105427)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103116) * (relationLc3463 rho) = ((1 : F) * rho 105429)

def relationRow7904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105419) * ((1 : F) * rho 105420) = ((1 : F) * rho 105430)

def relationRow7905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105419) * ((1 : F) * rho 105419) = ((1 : F) * rho 105431)

def relationRow7906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105420) * ((1 : F) * rho 105420) = ((1 : F) * rho 105432)

def relationRow7907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105433) * ((-1 : F) * rho 105431 + (1 : F) * rho 105432) = ((2 : F) * rho 105430)

def relationRow7908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105434) * ((2 : F) + (1 : F) * rho 105431 + (-1 : F) * rho 105432) = ((1 : F) * rho 105431 + (1 : F) * rho 105432)

def relationLc3464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 21⟩, ⟨(1 : F), 105149, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3464 rho) = ((1 : F) * rho 105435)

def relationRow7910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105435) * ((1 : F) * rho 105433 + (1 : F) * rho 105434) = ((1 : F) * rho 105436)

def relationLc3465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105434) * (relationLc3465 rho) = ((1 : F) * rho 105437)

def relationLc3466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105433) * (relationLc3466 rho) = ((1 : F) * rho 105438)

def relationRow7913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105437) * ((1 : F) * rho 105438) = ((1 : F) * rho 105439)

def relationRow7914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105440) * ((1 : F) + (1 : F) * rho 105439) = ((1 : F) * rho 105437 + (1 : F) * rho 105438)

def relationRow7915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105441) * ((1 : F) + (-1 : F) * rho 105439) = ((1 : F) * rho 105436 + (-1 : F) * rho 105437 + (-1 : F) * rho 105438)

def relationLc3467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 21⟩], residual := [((1 : F), 105440)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
