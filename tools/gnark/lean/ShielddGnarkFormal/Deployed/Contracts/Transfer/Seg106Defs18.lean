import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationLc3307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95968) * (relationLc3307 rho) = ((1 : F) * rho 95970)

def relationLc3308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95967) * (relationLc3308 rho) = ((1 : F) * rho 95971)

def relationRow7476 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95970) * ((1 : F) * rho 95971) = ((1 : F) * rho 95972)

def relationRow7477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95973) * ((1 : F) + (1 : F) * rho 95972) = ((1 : F) * rho 95970 + (1 : F) * rho 95971)

def relationRow7478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95974) * ((1 : F) + (-1 : F) * rho 95972) = ((1 : F) * rho 95969 + (-1 : F) * rho 95970 + (-1 : F) * rho 95971)

def relationLc3309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 139⟩], residual := [((1 : F), 95973)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94056) * (relationLc3309 rho) = ((1 : F) * rho 95975)

def relationLc3310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 139⟩], residual := [((1 : F), 95974)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94056) * (relationLc3310 rho) = ((1 : F) * rho 95976)

def relationRow7481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95967) * ((1 : F) * rho 95968) = ((1 : F) * rho 95977)

def relationRow7482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95967) * ((1 : F) * rho 95967) = ((1 : F) * rho 95978)

def relationRow7483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95968) * ((1 : F) * rho 95968) = ((1 : F) * rho 95979)

def relationRow7484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95980) * ((-1 : F) * rho 95978 + (1 : F) * rho 95979) = ((2 : F) * rho 95977)

def relationRow7485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95981) * ((2 : F) + (1 : F) * rho 95978 + (-1 : F) * rho 95979) = ((1 : F) * rho 95978 + (1 : F) * rho 95979)

def relationLc3311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 140⟩, ⟨(1 : F), 94169, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95980 + (1 : F) * rho 95981) * (relationLc3311 rho) = ((1 : F) * rho 95982)

def relationLc3312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95981) * (relationLc3312 rho) = ((1 : F) * rho 95983)

def relationLc3313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95980) * (relationLc3313 rho) = ((1 : F) * rho 95984)

def relationRow7489 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95983) * ((1 : F) * rho 95984) = ((1 : F) * rho 95985)

def relationRow7490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95986) * ((1 : F) + (1 : F) * rho 95985) = ((1 : F) * rho 95983 + (1 : F) * rho 95984)

def relationRow7491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95987) * ((1 : F) + (-1 : F) * rho 95985) = ((1 : F) * rho 95982 + (-1 : F) * rho 95983 + (-1 : F) * rho 95984)

def relationLc3314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 140⟩], residual := [((1 : F), 95986)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94057) * (relationLc3314 rho) = ((1 : F) * rho 95988)

def relationLc3315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 140⟩], residual := [((1 : F), 95987)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94057) * (relationLc3315 rho) = ((1 : F) * rho 95989)

def relationRow7494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95980) * ((1 : F) * rho 95981) = ((1 : F) * rho 95990)

def relationRow7495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95980) * ((1 : F) * rho 95980) = ((1 : F) * rho 95991)

def relationRow7496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95981) * ((1 : F) * rho 95981) = ((1 : F) * rho 95992)

def relationRow7497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95993) * ((-1 : F) * rho 95991 + (1 : F) * rho 95992) = ((2 : F) * rho 95990)

def relationRow7498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95994) * ((2 : F) + (1 : F) * rho 95991 + (-1 : F) * rho 95992) = ((1 : F) * rho 95991 + (1 : F) * rho 95992)

def relationLc3316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 141⟩, ⟨(1 : F), 94169, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95993 + (1 : F) * rho 95994) * (relationLc3316 rho) = ((1 : F) * rho 95995)

def relationLc3317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95994) * (relationLc3317 rho) = ((1 : F) * rho 95996)

def relationLc3318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95993) * (relationLc3318 rho) = ((1 : F) * rho 95997)

def relationRow7502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95996) * ((1 : F) * rho 95997) = ((1 : F) * rho 95998)

def relationRow7503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95999) * ((1 : F) + (1 : F) * rho 95998) = ((1 : F) * rho 95996 + (1 : F) * rho 95997)

def relationRow7504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96000) * ((1 : F) + (-1 : F) * rho 95998) = ((1 : F) * rho 95995 + (-1 : F) * rho 95996 + (-1 : F) * rho 95997)

def relationLc3319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 141⟩], residual := [((1 : F), 95999)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94058) * (relationLc3319 rho) = ((1 : F) * rho 96001)

def relationLc3320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 141⟩], residual := [((1 : F), 96000)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94058) * (relationLc3320 rho) = ((1 : F) * rho 96002)

def relationRow7507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95993) * ((1 : F) * rho 95994) = ((1 : F) * rho 96003)

def relationRow7508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95993) * ((1 : F) * rho 95993) = ((1 : F) * rho 96004)

def relationRow7509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95994) * ((1 : F) * rho 95994) = ((1 : F) * rho 96005)

def relationRow7510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96006) * ((-1 : F) * rho 96004 + (1 : F) * rho 96005) = ((2 : F) * rho 96003)

def relationRow7511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96007) * ((2 : F) + (1 : F) * rho 96004 + (-1 : F) * rho 96005) = ((1 : F) * rho 96004 + (1 : F) * rho 96005)

def relationLc3321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 142⟩, ⟨(1 : F), 94169, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96006 + (1 : F) * rho 96007) * (relationLc3321 rho) = ((1 : F) * rho 96008)

def relationLc3322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96007) * (relationLc3322 rho) = ((1 : F) * rho 96009)

def relationLc3323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96006) * (relationLc3323 rho) = ((1 : F) * rho 96010)

def relationRow7515 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96009) * ((1 : F) * rho 96010) = ((1 : F) * rho 96011)

def relationRow7516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96012) * ((1 : F) + (1 : F) * rho 96011) = ((1 : F) * rho 96009 + (1 : F) * rho 96010)

def relationRow7517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96013) * ((1 : F) + (-1 : F) * rho 96011) = ((1 : F) * rho 96008 + (-1 : F) * rho 96009 + (-1 : F) * rho 96010)

def relationLc3324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 142⟩], residual := [((1 : F), 96012)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94059) * (relationLc3324 rho) = ((1 : F) * rho 96014)

def relationLc3325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 142⟩], residual := [((1 : F), 96013)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94059) * (relationLc3325 rho) = ((1 : F) * rho 96015)

def relationRow7520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96006) * ((1 : F) * rho 96007) = ((1 : F) * rho 96016)

def relationRow7521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96006) * ((1 : F) * rho 96006) = ((1 : F) * rho 96017)

def relationRow7522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96007) * ((1 : F) * rho 96007) = ((1 : F) * rho 96018)

def relationRow7523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96019) * ((-1 : F) * rho 96017 + (1 : F) * rho 96018) = ((2 : F) * rho 96016)

def relationRow7524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96020) * ((2 : F) + (1 : F) * rho 96017 + (-1 : F) * rho 96018) = ((1 : F) * rho 96017 + (1 : F) * rho 96018)

def relationLc3326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 143⟩, ⟨(1 : F), 94169, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96019 + (1 : F) * rho 96020) * (relationLc3326 rho) = ((1 : F) * rho 96021)

def relationLc3327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96020) * (relationLc3327 rho) = ((1 : F) * rho 96022)

def relationLc3328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96019) * (relationLc3328 rho) = ((1 : F) * rho 96023)

def relationRow7528 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96022) * ((1 : F) * rho 96023) = ((1 : F) * rho 96024)

def relationRow7529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96025) * ((1 : F) + (1 : F) * rho 96024) = ((1 : F) * rho 96022 + (1 : F) * rho 96023)

def relationRow7530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96026) * ((1 : F) + (-1 : F) * rho 96024) = ((1 : F) * rho 96021 + (-1 : F) * rho 96022 + (-1 : F) * rho 96023)

def relationLc3329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 143⟩], residual := [((1 : F), 96025)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94060) * (relationLc3329 rho) = ((1 : F) * rho 96027)

def relationLc3330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 143⟩], residual := [((1 : F), 96026)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94060) * (relationLc3330 rho) = ((1 : F) * rho 96028)

def relationRow7533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96019) * ((1 : F) * rho 96020) = ((1 : F) * rho 96029)

def relationRow7534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96019) * ((1 : F) * rho 96019) = ((1 : F) * rho 96030)

def relationRow7535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96020) * ((1 : F) * rho 96020) = ((1 : F) * rho 96031)

def relationRow7536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96032) * ((-1 : F) * rho 96030 + (1 : F) * rho 96031) = ((2 : F) * rho 96029)

def relationRow7537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96033) * ((2 : F) + (1 : F) * rho 96030 + (-1 : F) * rho 96031) = ((1 : F) * rho 96030 + (1 : F) * rho 96031)

def relationLc3331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 144⟩, ⟨(1 : F), 94169, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96032 + (1 : F) * rho 96033) * (relationLc3331 rho) = ((1 : F) * rho 96034)

def relationLc3332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96033) * (relationLc3332 rho) = ((1 : F) * rho 96035)

def relationLc3333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96032) * (relationLc3333 rho) = ((1 : F) * rho 96036)

def relationRow7541 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96035) * ((1 : F) * rho 96036) = ((1 : F) * rho 96037)

def relationRow7542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96038) * ((1 : F) + (1 : F) * rho 96037) = ((1 : F) * rho 96035 + (1 : F) * rho 96036)

def relationRow7543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96039) * ((1 : F) + (-1 : F) * rho 96037) = ((1 : F) * rho 96034 + (-1 : F) * rho 96035 + (-1 : F) * rho 96036)

def relationLc3334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 144⟩], residual := [((1 : F), 96038)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94061) * (relationLc3334 rho) = ((1 : F) * rho 96040)

def relationLc3335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 144⟩], residual := [((1 : F), 96039)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94061) * (relationLc3335 rho) = ((1 : F) * rho 96041)

def relationRow7546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96032) * ((1 : F) * rho 96033) = ((1 : F) * rho 96042)

def relationRow7547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96032) * ((1 : F) * rho 96032) = ((1 : F) * rho 96043)

def relationRow7548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96033) * ((1 : F) * rho 96033) = ((1 : F) * rho 96044)

def relationRow7549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96045) * ((-1 : F) * rho 96043 + (1 : F) * rho 96044) = ((2 : F) * rho 96042)

def relationRow7550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96046) * ((2 : F) + (1 : F) * rho 96043 + (-1 : F) * rho 96044) = ((1 : F) * rho 96043 + (1 : F) * rho 96044)

def relationLc3336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 145⟩, ⟨(1 : F), 94169, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96045 + (1 : F) * rho 96046) * (relationLc3336 rho) = ((1 : F) * rho 96047)

def relationLc3337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96046) * (relationLc3337 rho) = ((1 : F) * rho 96048)

def relationLc3338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96045) * (relationLc3338 rho) = ((1 : F) * rho 96049)

def relationRow7554 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96048) * ((1 : F) * rho 96049) = ((1 : F) * rho 96050)

def relationRow7555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96051) * ((1 : F) + (1 : F) * rho 96050) = ((1 : F) * rho 96048 + (1 : F) * rho 96049)

def relationRow7556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96052) * ((1 : F) + (-1 : F) * rho 96050) = ((1 : F) * rho 96047 + (-1 : F) * rho 96048 + (-1 : F) * rho 96049)

def relationLc3339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 145⟩], residual := [((1 : F), 96051)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94062) * (relationLc3339 rho) = ((1 : F) * rho 96053)

def relationLc3340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 145⟩], residual := [((1 : F), 96052)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94062) * (relationLc3340 rho) = ((1 : F) * rho 96054)

def relationRow7559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96045) * ((1 : F) * rho 96046) = ((1 : F) * rho 96055)

def relationRow7560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96045) * ((1 : F) * rho 96045) = ((1 : F) * rho 96056)

def relationRow7561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96046) * ((1 : F) * rho 96046) = ((1 : F) * rho 96057)

def relationRow7562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96058) * ((-1 : F) * rho 96056 + (1 : F) * rho 96057) = ((2 : F) * rho 96055)

def relationRow7563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96059) * ((2 : F) + (1 : F) * rho 96056 + (-1 : F) * rho 96057) = ((1 : F) * rho 96056 + (1 : F) * rho 96057)

def relationLc3341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 146⟩, ⟨(1 : F), 94169, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96058 + (1 : F) * rho 96059) * (relationLc3341 rho) = ((1 : F) * rho 96060)

def relationLc3342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96059) * (relationLc3342 rho) = ((1 : F) * rho 96061)

def relationLc3343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96058) * (relationLc3343 rho) = ((1 : F) * rho 96062)

def relationRow7567 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96061) * ((1 : F) * rho 96062) = ((1 : F) * rho 96063)

def relationRow7568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96064) * ((1 : F) + (1 : F) * rho 96063) = ((1 : F) * rho 96061 + (1 : F) * rho 96062)

def relationRow7569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96065) * ((1 : F) + (-1 : F) * rho 96063) = ((1 : F) * rho 96060 + (-1 : F) * rho 96061 + (-1 : F) * rho 96062)

def relationLc3344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 146⟩], residual := [((1 : F), 96064)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94063) * (relationLc3344 rho) = ((1 : F) * rho 96066)

def relationLc3345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 146⟩], residual := [((1 : F), 96065)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94063) * (relationLc3345 rho) = ((1 : F) * rho 96067)

def relationRow7572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96058) * ((1 : F) * rho 96059) = ((1 : F) * rho 96068)

def relationRow7573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96058) * ((1 : F) * rho 96058) = ((1 : F) * rho 96069)

def relationRow7574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96059) * ((1 : F) * rho 96059) = ((1 : F) * rho 96070)

def relationRow7575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96071) * ((-1 : F) * rho 96069 + (1 : F) * rho 96070) = ((2 : F) * rho 96068)

def relationRow7576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96072) * ((2 : F) + (1 : F) * rho 96069 + (-1 : F) * rho 96070) = ((1 : F) * rho 96069 + (1 : F) * rho 96070)

def relationLc3346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 147⟩, ⟨(1 : F), 94169, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96071 + (1 : F) * rho 96072) * (relationLc3346 rho) = ((1 : F) * rho 96073)

def relationLc3347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96072) * (relationLc3347 rho) = ((1 : F) * rho 96074)

def relationLc3348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96071) * (relationLc3348 rho) = ((1 : F) * rho 96075)

def relationRow7580 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96074) * ((1 : F) * rho 96075) = ((1 : F) * rho 96076)

def relationRow7581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96077) * ((1 : F) + (1 : F) * rho 96076) = ((1 : F) * rho 96074 + (1 : F) * rho 96075)

def relationRow7582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96078) * ((1 : F) + (-1 : F) * rho 96076) = ((1 : F) * rho 96073 + (-1 : F) * rho 96074 + (-1 : F) * rho 96075)

def relationLc3349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 147⟩], residual := [((1 : F), 96077)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94064) * (relationLc3349 rho) = ((1 : F) * rho 96079)

def relationLc3350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 147⟩], residual := [((1 : F), 96078)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94064) * (relationLc3350 rho) = ((1 : F) * rho 96080)

def relationRow7585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96071) * ((1 : F) * rho 96072) = ((1 : F) * rho 96081)

def relationRow7586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96071) * ((1 : F) * rho 96071) = ((1 : F) * rho 96082)

def relationRow7587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96072) * ((1 : F) * rho 96072) = ((1 : F) * rho 96083)

def relationRow7588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96084) * ((-1 : F) * rho 96082 + (1 : F) * rho 96083) = ((2 : F) * rho 96081)

def relationRow7589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96085) * ((2 : F) + (1 : F) * rho 96082 + (-1 : F) * rho 96083) = ((1 : F) * rho 96082 + (1 : F) * rho 96083)

def relationLc3351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 148⟩, ⟨(1 : F), 94169, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96084 + (1 : F) * rho 96085) * (relationLc3351 rho) = ((1 : F) * rho 96086)

def relationLc3352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96085) * (relationLc3352 rho) = ((1 : F) * rho 96087)

def relationLc3353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96084) * (relationLc3353 rho) = ((1 : F) * rho 96088)

def relationRow7593 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96087) * ((1 : F) * rho 96088) = ((1 : F) * rho 96089)

def relationRow7594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96090) * ((1 : F) + (1 : F) * rho 96089) = ((1 : F) * rho 96087 + (1 : F) * rho 96088)

def relationRow7595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96091) * ((1 : F) + (-1 : F) * rho 96089) = ((1 : F) * rho 96086 + (-1 : F) * rho 96087 + (-1 : F) * rho 96088)

def relationLc3354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 148⟩], residual := [((1 : F), 96090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94065) * (relationLc3354 rho) = ((1 : F) * rho 96092)

def relationLc3355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 148⟩], residual := [((1 : F), 96091)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94065) * (relationLc3355 rho) = ((1 : F) * rho 96093)

def relationRow7598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96084) * ((1 : F) * rho 96085) = ((1 : F) * rho 96094)

def relationRow7599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96084) * ((1 : F) * rho 96084) = ((1 : F) * rho 96095)

def relationRow7600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96085) * ((1 : F) * rho 96085) = ((1 : F) * rho 96096)

def relationRow7601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96097) * ((-1 : F) * rho 96095 + (1 : F) * rho 96096) = ((2 : F) * rho 96094)

def relationRow7602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96098) * ((2 : F) + (1 : F) * rho 96095 + (-1 : F) * rho 96096) = ((1 : F) * rho 96095 + (1 : F) * rho 96096)

def relationLc3356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 149⟩, ⟨(1 : F), 94169, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96097 + (1 : F) * rho 96098) * (relationLc3356 rho) = ((1 : F) * rho 96099)

def relationLc3357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96098) * (relationLc3357 rho) = ((1 : F) * rho 96100)

def relationLc3358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96097) * (relationLc3358 rho) = ((1 : F) * rho 96101)

def relationRow7606 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96100) * ((1 : F) * rho 96101) = ((1 : F) * rho 96102)

def relationRow7607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96103) * ((1 : F) + (1 : F) * rho 96102) = ((1 : F) * rho 96100 + (1 : F) * rho 96101)

def relationRow7608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96104) * ((1 : F) + (-1 : F) * rho 96102) = ((1 : F) * rho 96099 + (-1 : F) * rho 96100 + (-1 : F) * rho 96101)

def relationLc3359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 149⟩], residual := [((1 : F), 96103)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94066) * (relationLc3359 rho) = ((1 : F) * rho 96105)

def relationLc3360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 149⟩], residual := [((1 : F), 96104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94066) * (relationLc3360 rho) = ((1 : F) * rho 96106)

def relationRow7611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96097) * ((1 : F) * rho 96098) = ((1 : F) * rho 96107)

def relationRow7612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96097) * ((1 : F) * rho 96097) = ((1 : F) * rho 96108)

def relationRow7613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96098) * ((1 : F) * rho 96098) = ((1 : F) * rho 96109)

def relationRow7614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96110) * ((-1 : F) * rho 96108 + (1 : F) * rho 96109) = ((2 : F) * rho 96107)

def relationRow7615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96111) * ((2 : F) + (1 : F) * rho 96108 + (-1 : F) * rho 96109) = ((1 : F) * rho 96108 + (1 : F) * rho 96109)

def relationLc3361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7616 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3361 rho) = ((1 : F) * rho 96112)

def relationRow7617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96112) * ((1 : F) * rho 96110 + (1 : F) * rho 96111) = ((1 : F) * rho 96113)

def relationLc3362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96111) * (relationLc3362 rho) = ((1 : F) * rho 96114)

def relationLc3363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96110) * (relationLc3363 rho) = ((1 : F) * rho 96115)

def relationRow7620 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96114) * ((1 : F) * rho 96115) = ((1 : F) * rho 96116)

def relationRow7621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96117) * ((1 : F) + (1 : F) * rho 96116) = ((1 : F) * rho 96114 + (1 : F) * rho 96115)

def relationRow7622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96118) * ((1 : F) + (-1 : F) * rho 96116) = ((1 : F) * rho 96113 + (-1 : F) * rho 96114 + (-1 : F) * rho 96115)

def relationLc3364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96117)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94067) * (relationLc3364 rho) = ((1 : F) * rho 96119)

def relationLc3365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94067) * (relationLc3365 rho) = ((1 : F) * rho 96120)

def relationRow7625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96110) * ((1 : F) * rho 96111) = ((1 : F) * rho 96121)

def relationRow7626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96110) * ((1 : F) * rho 96110) = ((1 : F) * rho 96122)

def relationRow7627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96111) * ((1 : F) * rho 96111) = ((1 : F) * rho 96123)

def relationRow7628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96124) * ((-1 : F) * rho 96122 + (1 : F) * rho 96123) = ((2 : F) * rho 96121)

def relationRow7629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96125) * ((2 : F) + (1 : F) * rho 96122 + (-1 : F) * rho 96123) = ((1 : F) * rho 96122 + (1 : F) * rho 96123)

def relationLc3366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7630 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3366 rho) = ((1 : F) * rho 96126)

def relationRow7631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96126) * ((1 : F) * rho 96124 + (1 : F) * rho 96125) = ((1 : F) * rho 96127)

def relationLc3367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96125) * (relationLc3367 rho) = ((1 : F) * rho 96128)

def relationLc3368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96124) * (relationLc3368 rho) = ((1 : F) * rho 96129)

def relationRow7634 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96128) * ((1 : F) * rho 96129) = ((1 : F) * rho 96130)

def relationRow7635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96131) * ((1 : F) + (1 : F) * rho 96130) = ((1 : F) * rho 96128 + (1 : F) * rho 96129)

def relationRow7636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96132) * ((1 : F) + (-1 : F) * rho 96130) = ((1 : F) * rho 96127 + (-1 : F) * rho 96128 + (-1 : F) * rho 96129)

def relationLc3369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((1 : F), 96131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94068) * (relationLc3369 rho) = ((1 : F) * rho 96133)

def relationLc3370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((1 : F), 96132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94068) * (relationLc3370 rho) = ((1 : F) * rho 96134)

def relationRow7639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96124) * ((1 : F) * rho 96125) = ((1 : F) * rho 96135)

def relationRow7640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96124) * ((1 : F) * rho 96124) = ((1 : F) * rho 96136)

def relationRow7641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96125) * ((1 : F) * rho 96125) = ((1 : F) * rho 96137)

def relationRow7642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96138) * ((-1 : F) * rho 96136 + (1 : F) * rho 96137) = ((2 : F) * rho 96135)

def relationRow7643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96139) * ((2 : F) + (1 : F) * rho 96136 + (-1 : F) * rho 96137) = ((1 : F) * rho 96136 + (1 : F) * rho 96137)

def relationLc3371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3371 rho) = ((1 : F) * rho 96140)

def relationRow7645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96140) * ((1 : F) * rho 96138 + (1 : F) * rho 96139) = ((1 : F) * rho 96141)

def relationLc3372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96139) * (relationLc3372 rho) = ((1 : F) * rho 96142)

def relationLc3373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96138) * (relationLc3373 rho) = ((1 : F) * rho 96143)

def relationRow7648 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96142) * ((1 : F) * rho 96143) = ((1 : F) * rho 96144)

def relationRow7649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96145) * ((1 : F) + (1 : F) * rho 96144) = ((1 : F) * rho 96142 + (1 : F) * rho 96143)

def relationRow7650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96146) * ((1 : F) + (-1 : F) * rho 96144) = ((1 : F) * rho 96141 + (-1 : F) * rho 96142 + (-1 : F) * rho 96143)

def relationLc3374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((1 : F), 96145)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94069) * (relationLc3374 rho) = ((1 : F) * rho 96147)

def relationLc3375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((1 : F), 96146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94069) * (relationLc3375 rho) = ((1 : F) * rho 96148)

def relationRow7653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96138) * ((1 : F) * rho 96139) = ((1 : F) * rho 96149)

def relationRow7654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96138) * ((1 : F) * rho 96138) = ((1 : F) * rho 96150)

def relationRow7655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96139) * ((1 : F) * rho 96139) = ((1 : F) * rho 96151)

def relationRow7656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96152) * ((-1 : F) * rho 96150 + (1 : F) * rho 96151) = ((2 : F) * rho 96149)

def relationRow7657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96153) * ((2 : F) + (1 : F) * rho 96150 + (-1 : F) * rho 96151) = ((1 : F) * rho 96150 + (1 : F) * rho 96151)

def relationLc3376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7658 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3376 rho) = ((1 : F) * rho 96154)

def relationRow7659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96154) * ((1 : F) * rho 96152 + (1 : F) * rho 96153) = ((1 : F) * rho 96155)

def relationLc3377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96153) * (relationLc3377 rho) = ((1 : F) * rho 96156)

def relationLc3378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96152) * (relationLc3378 rho) = ((1 : F) * rho 96157)

def relationRow7662 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96156) * ((1 : F) * rho 96157) = ((1 : F) * rho 96158)

def relationRow7663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96159) * ((1 : F) + (1 : F) * rho 96158) = ((1 : F) * rho 96156 + (1 : F) * rho 96157)

def relationRow7664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96160) * ((1 : F) + (-1 : F) * rho 96158) = ((1 : F) * rho 96155 + (-1 : F) * rho 96156 + (-1 : F) * rho 96157)

def relationLc3379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((1 : F), 96159)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94070) * (relationLc3379 rho) = ((1 : F) * rho 96161)

def relationLc3380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((1 : F), 96160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94070) * (relationLc3380 rho) = ((1 : F) * rho 96162)

def relationRow7667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96152) * ((1 : F) * rho 96153) = ((1 : F) * rho 96163)

def relationRow7668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96152) * ((1 : F) * rho 96152) = ((1 : F) * rho 96164)

def relationRow7669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96153) * ((1 : F) * rho 96153) = ((1 : F) * rho 96165)

def relationRow7670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96166) * ((-1 : F) * rho 96164 + (1 : F) * rho 96165) = ((2 : F) * rho 96163)

def relationRow7671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96167) * ((2 : F) + (1 : F) * rho 96164 + (-1 : F) * rho 96165) = ((1 : F) * rho 96164 + (1 : F) * rho 96165)

def relationLc3381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7672 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3381 rho) = ((1 : F) * rho 96168)

def relationRow7673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96168) * ((1 : F) * rho 96166 + (1 : F) * rho 96167) = ((1 : F) * rho 96169)

def relationLc3382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96167) * (relationLc3382 rho) = ((1 : F) * rho 96170)

def relationLc3383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96166) * (relationLc3383 rho) = ((1 : F) * rho 96171)

def relationRow7676 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96170) * ((1 : F) * rho 96171) = ((1 : F) * rho 96172)

def relationRow7677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96173) * ((1 : F) + (1 : F) * rho 96172) = ((1 : F) * rho 96170 + (1 : F) * rho 96171)

def relationRow7678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96174) * ((1 : F) + (-1 : F) * rho 96172) = ((1 : F) * rho 96169 + (-1 : F) * rho 96170 + (-1 : F) * rho 96171)

def relationLc3384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((1 : F), 96173)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94071) * (relationLc3384 rho) = ((1 : F) * rho 96175)

def relationLc3385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((1 : F), 96174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94071) * (relationLc3385 rho) = ((1 : F) * rho 96176)

def relationRow7681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96166) * ((1 : F) * rho 96167) = ((1 : F) * rho 96177)

def relationRow7682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96166) * ((1 : F) * rho 96166) = ((1 : F) * rho 96178)

def relationRow7683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96167) * ((1 : F) * rho 96167) = ((1 : F) * rho 96179)

def relationRow7684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96180) * ((-1 : F) * rho 96178 + (1 : F) * rho 96179) = ((2 : F) * rho 96177)

def relationRow7685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96181) * ((2 : F) + (1 : F) * rho 96178 + (-1 : F) * rho 96179) = ((1 : F) * rho 96178 + (1 : F) * rho 96179)

def relationLc3386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7686 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3386 rho) = ((1 : F) * rho 96182)

def relationRow7687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96182) * ((1 : F) * rho 96180 + (1 : F) * rho 96181) = ((1 : F) * rho 96183)

def relationLc3387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96181) * (relationLc3387 rho) = ((1 : F) * rho 96184)

def relationLc3388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96180) * (relationLc3388 rho) = ((1 : F) * rho 96185)

def relationRow7690 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96184) * ((1 : F) * rho 96185) = ((1 : F) * rho 96186)

def relationRow7691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96187) * ((1 : F) + (1 : F) * rho 96186) = ((1 : F) * rho 96184 + (1 : F) * rho 96185)

def relationRow7692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96188) * ((1 : F) + (-1 : F) * rho 96186) = ((1 : F) * rho 96183 + (-1 : F) * rho 96184 + (-1 : F) * rho 96185)

def relationLc3389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((1 : F), 96187)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94072) * (relationLc3389 rho) = ((1 : F) * rho 96189)

def relationLc3390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((1 : F), 96188)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94072) * (relationLc3390 rho) = ((1 : F) * rho 96190)

def relationRow7695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96180) * ((1 : F) * rho 96181) = ((1 : F) * rho 96191)

def relationRow7696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96180) * ((1 : F) * rho 96180) = ((1 : F) * rho 96192)

def relationRow7697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96181) * ((1 : F) * rho 96181) = ((1 : F) * rho 96193)

def relationRow7698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96194) * ((-1 : F) * rho 96192 + (1 : F) * rho 96193) = ((2 : F) * rho 96191)

def relationRow7699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96195) * ((2 : F) + (1 : F) * rho 96192 + (-1 : F) * rho 96193) = ((1 : F) * rho 96192 + (1 : F) * rho 96193)

def relationLc3391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7700 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3391 rho) = ((1 : F) * rho 96196)

def relationRow7701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96196) * ((1 : F) * rho 96194 + (1 : F) * rho 96195) = ((1 : F) * rho 96197)

def relationLc3392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96195) * (relationLc3392 rho) = ((1 : F) * rho 96198)

def relationLc3393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96194) * (relationLc3393 rho) = ((1 : F) * rho 96199)

def relationRow7704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96198) * ((1 : F) * rho 96199) = ((1 : F) * rho 96200)

def relationRow7705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96201) * ((1 : F) + (1 : F) * rho 96200) = ((1 : F) * rho 96198 + (1 : F) * rho 96199)

def relationRow7706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96202) * ((1 : F) + (-1 : F) * rho 96200) = ((1 : F) * rho 96197 + (-1 : F) * rho 96198 + (-1 : F) * rho 96199)

def relationLc3394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((1 : F), 96201)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94073) * (relationLc3394 rho) = ((1 : F) * rho 96203)

def relationLc3395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((1 : F), 96202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94073) * (relationLc3395 rho) = ((1 : F) * rho 96204)

def relationRow7709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96194) * ((1 : F) * rho 96195) = ((1 : F) * rho 96205)

def relationRow7710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96194) * ((1 : F) * rho 96194) = ((1 : F) * rho 96206)

def relationRow7711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96195) * ((1 : F) * rho 96195) = ((1 : F) * rho 96207)

def relationRow7712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96208) * ((-1 : F) * rho 96206 + (1 : F) * rho 96207) = ((2 : F) * rho 96205)

def relationRow7713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96209) * ((2 : F) + (1 : F) * rho 96206 + (-1 : F) * rho 96207) = ((1 : F) * rho 96206 + (1 : F) * rho 96207)

def relationLc3396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7714 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3396 rho) = ((1 : F) * rho 96210)

def relationRow7715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96210) * ((1 : F) * rho 96208 + (1 : F) * rho 96209) = ((1 : F) * rho 96211)

def relationLc3397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96209) * (relationLc3397 rho) = ((1 : F) * rho 96212)

def relationLc3398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96208) * (relationLc3398 rho) = ((1 : F) * rho 96213)

def relationRow7718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96212) * ((1 : F) * rho 96213) = ((1 : F) * rho 96214)

def relationRow7719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96215) * ((1 : F) + (1 : F) * rho 96214) = ((1 : F) * rho 96212 + (1 : F) * rho 96213)

def relationRow7720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96216) * ((1 : F) + (-1 : F) * rho 96214) = ((1 : F) * rho 96211 + (-1 : F) * rho 96212 + (-1 : F) * rho 96213)

def relationLc3399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((1 : F), 96215)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94074) * (relationLc3399 rho) = ((1 : F) * rho 96217)

def relationLc3400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((1 : F), 96216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94074) * (relationLc3400 rho) = ((1 : F) * rho 96218)

def relationRow7723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96208) * ((1 : F) * rho 96209) = ((1 : F) * rho 96219)

def relationRow7724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96208) * ((1 : F) * rho 96208) = ((1 : F) * rho 96220)

def relationRow7725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96209) * ((1 : F) * rho 96209) = ((1 : F) * rho 96221)

def relationRow7726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96222) * ((-1 : F) * rho 96220 + (1 : F) * rho 96221) = ((2 : F) * rho 96219)

def relationRow7727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96223) * ((2 : F) + (1 : F) * rho 96220 + (-1 : F) * rho 96221) = ((1 : F) * rho 96220 + (1 : F) * rho 96221)

def relationLc3401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7728 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3401 rho) = ((1 : F) * rho 96224)

def relationRow7729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96224) * ((1 : F) * rho 96222 + (1 : F) * rho 96223) = ((1 : F) * rho 96225)

def relationLc3402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96223) * (relationLc3402 rho) = ((1 : F) * rho 96226)

def relationLc3403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96222) * (relationLc3403 rho) = ((1 : F) * rho 96227)

def relationRow7732 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96226) * ((1 : F) * rho 96227) = ((1 : F) * rho 96228)

def relationRow7733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96229) * ((1 : F) + (1 : F) * rho 96228) = ((1 : F) * rho 96226 + (1 : F) * rho 96227)

def relationRow7734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96230) * ((1 : F) + (-1 : F) * rho 96228) = ((1 : F) * rho 96225 + (-1 : F) * rho 96226 + (-1 : F) * rho 96227)

def relationLc3404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((1 : F), 96229)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94075) * (relationLc3404 rho) = ((1 : F) * rho 96231)

def relationLc3405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((1 : F), 96230)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94075) * (relationLc3405 rho) = ((1 : F) * rho 96232)

def relationRow7737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96222) * ((1 : F) * rho 96223) = ((1 : F) * rho 96233)

def relationRow7738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96222) * ((1 : F) * rho 96222) = ((1 : F) * rho 96234)

def relationRow7739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96223) * ((1 : F) * rho 96223) = ((1 : F) * rho 96235)

def relationRow7740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96236) * ((-1 : F) * rho 96234 + (1 : F) * rho 96235) = ((2 : F) * rho 96233)

def relationRow7741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96237) * ((2 : F) + (1 : F) * rho 96234 + (-1 : F) * rho 96235) = ((1 : F) * rho 96234 + (1 : F) * rho 96235)

def relationLc3406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7742 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3406 rho) = ((1 : F) * rho 96238)

def relationRow7743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96238) * ((1 : F) * rho 96236 + (1 : F) * rho 96237) = ((1 : F) * rho 96239)

def relationLc3407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96237) * (relationLc3407 rho) = ((1 : F) * rho 96240)

def relationLc3408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96236) * (relationLc3408 rho) = ((1 : F) * rho 96241)

def relationRow7746 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96240) * ((1 : F) * rho 96241) = ((1 : F) * rho 96242)

def relationRow7747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96243) * ((1 : F) + (1 : F) * rho 96242) = ((1 : F) * rho 96240 + (1 : F) * rho 96241)

def relationRow7748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96244) * ((1 : F) + (-1 : F) * rho 96242) = ((1 : F) * rho 96239 + (-1 : F) * rho 96240 + (-1 : F) * rho 96241)

def relationLc3409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((1 : F), 96243)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94076) * (relationLc3409 rho) = ((1 : F) * rho 96245)

def relationLc3410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((1 : F), 96244)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94076) * (relationLc3410 rho) = ((1 : F) * rho 96246)

def relationRow7751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96236) * ((1 : F) * rho 96237) = ((1 : F) * rho 96247)

def relationRow7752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96236) * ((1 : F) * rho 96236) = ((1 : F) * rho 96248)

def relationRow7753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96237) * ((1 : F) * rho 96237) = ((1 : F) * rho 96249)

def relationRow7754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96250) * ((-1 : F) * rho 96248 + (1 : F) * rho 96249) = ((2 : F) * rho 96247)

def relationRow7755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96251) * ((2 : F) + (1 : F) * rho 96248 + (-1 : F) * rho 96249) = ((1 : F) * rho 96248 + (1 : F) * rho 96249)

def relationLc3411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232), ((1 : F), 96245), ((1 : F), 96246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7756 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3411 rho) = ((1 : F) * rho 96252)

def relationRow7757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96252) * ((1 : F) * rho 96250 + (1 : F) * rho 96251) = ((1 : F) * rho 96253)

def relationLc3412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231), ((1 : F), 96245)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96251) * (relationLc3412 rho) = ((1 : F) * rho 96254)

def relationLc3413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232), ((1 : F), 96246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96250) * (relationLc3413 rho) = ((1 : F) * rho 96255)

def relationRow7760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96254) * ((1 : F) * rho 96255) = ((1 : F) * rho 96256)

def relationRow7761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96257) * ((1 : F) + (1 : F) * rho 96256) = ((1 : F) * rho 96254 + (1 : F) * rho 96255)

def relationRow7762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96258) * ((1 : F) + (-1 : F) * rho 96256) = ((1 : F) * rho 96253 + (-1 : F) * rho 96254 + (-1 : F) * rho 96255)

def relationLc3414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((-1 : F), 96245), ((1 : F), 96257)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94077) * (relationLc3414 rho) = ((1 : F) * rho 96259)

def relationLc3415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((-1 : F), 96246), ((1 : F), 96258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94077) * (relationLc3415 rho) = ((1 : F) * rho 96260)

def relationRow7765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96250) * ((1 : F) * rho 96251) = ((1 : F) * rho 96261)

def relationRow7766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96250) * ((1 : F) * rho 96250) = ((1 : F) * rho 96262)

def relationRow7767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96251) * ((1 : F) * rho 96251) = ((1 : F) * rho 96263)

def relationRow7768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96264) * ((-1 : F) * rho 96262 + (1 : F) * rho 96263) = ((2 : F) * rho 96261)

def relationRow7769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96265) * ((2 : F) + (1 : F) * rho 96262 + (-1 : F) * rho 96263) = ((1 : F) * rho 96262 + (1 : F) * rho 96263)

def relationLc3416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232), ((1 : F), 96245), ((1 : F), 96246), ((1 : F), 96259), ((1 : F), 96260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7770 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3416 rho) = ((1 : F) * rho 96266)

def relationRow7771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96266) * ((1 : F) * rho 96264 + (1 : F) * rho 96265) = ((1 : F) * rho 96267)

def relationLc3417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231), ((1 : F), 96245), ((1 : F), 96259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96265) * (relationLc3417 rho) = ((1 : F) * rho 96268)

def relationLc3418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232), ((1 : F), 96246), ((1 : F), 96260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96264) * (relationLc3418 rho) = ((1 : F) * rho 96269)

def relationRow7774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96268) * ((1 : F) * rho 96269) = ((1 : F) * rho 96270)

def relationRow7775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96271) * ((1 : F) + (1 : F) * rho 96270) = ((1 : F) * rho 96268 + (1 : F) * rho 96269)

def relationRow7776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96272) * ((1 : F) + (-1 : F) * rho 96270) = ((1 : F) * rho 96267 + (-1 : F) * rho 96268 + (-1 : F) * rho 96269)

def relationLc3419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((-1 : F), 96245), ((-1 : F), 96259), ((1 : F), 96271)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94078) * (relationLc3419 rho) = ((1 : F) * rho 96273)

def relationLc3420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((-1 : F), 96246), ((-1 : F), 96260), ((1 : F), 96272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94078) * (relationLc3420 rho) = ((1 : F) * rho 96274)

def relationRow7779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96264) * ((1 : F) * rho 96265) = ((1 : F) * rho 96275)

def relationRow7780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96264) * ((1 : F) * rho 96264) = ((1 : F) * rho 96276)

def relationRow7781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96265) * ((1 : F) * rho 96265) = ((1 : F) * rho 96277)

def relationRow7782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96278) * ((-1 : F) * rho 96276 + (1 : F) * rho 96277) = ((2 : F) * rho 96275)

def relationRow7783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96279) * ((2 : F) + (1 : F) * rho 96276 + (-1 : F) * rho 96277) = ((1 : F) * rho 96276 + (1 : F) * rho 96277)

def relationLc3421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232), ((1 : F), 96245), ((1 : F), 96246), ((1 : F), 96259), ((1 : F), 96260), ((1 : F), 96273), ((1 : F), 96274)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7784 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3421 rho) = ((1 : F) * rho 96280)

def relationRow7785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96280) * ((1 : F) * rho 96278 + (1 : F) * rho 96279) = ((1 : F) * rho 96281)

def relationLc3422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231), ((1 : F), 96245), ((1 : F), 96259), ((1 : F), 96273)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96279) * (relationLc3422 rho) = ((1 : F) * rho 96282)

def relationLc3423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232), ((1 : F), 96246), ((1 : F), 96260), ((1 : F), 96274)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96278) * (relationLc3423 rho) = ((1 : F) * rho 96283)

def relationRow7788 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96282) * ((1 : F) * rho 96283) = ((1 : F) * rho 96284)

def relationRow7789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96285) * ((1 : F) + (1 : F) * rho 96284) = ((1 : F) * rho 96282 + (1 : F) * rho 96283)

def relationRow7790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96286) * ((1 : F) + (-1 : F) * rho 96284) = ((1 : F) * rho 96281 + (-1 : F) * rho 96282 + (-1 : F) * rho 96283)

def relationLc3424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((-1 : F), 96245), ((-1 : F), 96259), ((-1 : F), 96273), ((1 : F), 96285)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94079) * (relationLc3424 rho) = ((1 : F) * rho 96287)

def relationLc3425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((-1 : F), 96246), ((-1 : F), 96260), ((-1 : F), 96274), ((1 : F), 96286)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94079) * (relationLc3425 rho) = ((1 : F) * rho 96288)

def relationRow7793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96278) * ((1 : F) * rho 96279) = ((1 : F) * rho 96289)

def relationRow7794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96278) * ((1 : F) * rho 96278) = ((1 : F) * rho 96290)

def relationRow7795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96279) * ((1 : F) * rho 96279) = ((1 : F) * rho 96291)

def relationRow7796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96292) * ((-1 : F) * rho 96290 + (1 : F) * rho 96291) = ((2 : F) * rho 96289)

def relationRow7797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96293) * ((2 : F) + (1 : F) * rho 96290 + (-1 : F) * rho 96291) = ((1 : F) * rho 96290 + (1 : F) * rho 96291)

def relationLc3426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232), ((1 : F), 96245), ((1 : F), 96246), ((1 : F), 96259), ((1 : F), 96260), ((1 : F), 96273), ((1 : F), 96274), ((1 : F), 96287), ((1 : F), 96288)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7798 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3426 rho) = ((1 : F) * rho 96294)

def relationRow7799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96294) * ((1 : F) * rho 96292 + (1 : F) * rho 96293) = ((1 : F) * rho 96295)

def relationLc3427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231), ((1 : F), 96245), ((1 : F), 96259), ((1 : F), 96273), ((1 : F), 96287)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96293) * (relationLc3427 rho) = ((1 : F) * rho 96296)

def relationLc3428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232), ((1 : F), 96246), ((1 : F), 96260), ((1 : F), 96274), ((1 : F), 96288)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96292) * (relationLc3428 rho) = ((1 : F) * rho 96297)

def relationRow7802 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96296) * ((1 : F) * rho 96297) = ((1 : F) * rho 96298)

def relationRow7803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96299) * ((1 : F) + (1 : F) * rho 96298) = ((1 : F) * rho 96296 + (1 : F) * rho 96297)

def relationRow7804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96300) * ((1 : F) + (-1 : F) * rho 96298) = ((1 : F) * rho 96295 + (-1 : F) * rho 96296 + (-1 : F) * rho 96297)

def relationLc3429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((-1 : F), 96245), ((-1 : F), 96259), ((-1 : F), 96273), ((-1 : F), 96287), ((1 : F), 96299)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94080) * (relationLc3429 rho) = ((1 : F) * rho 96301)

def relationLc3430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((-1 : F), 96246), ((-1 : F), 96260), ((-1 : F), 96274), ((-1 : F), 96288), ((1 : F), 96300)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94080) * (relationLc3430 rho) = ((1 : F) * rho 96302)

def relationRow7807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96292) * ((1 : F) * rho 96293) = ((1 : F) * rho 96303)

def relationRow7808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96292) * ((1 : F) * rho 96292) = ((1 : F) * rho 96304)

def relationRow7809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96293) * ((1 : F) * rho 96293) = ((1 : F) * rho 96305)

def relationRow7810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96306) * ((-1 : F) * rho 96304 + (1 : F) * rho 96305) = ((2 : F) * rho 96303)

def relationRow7811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96307) * ((2 : F) + (1 : F) * rho 96304 + (-1 : F) * rho 96305) = ((1 : F) * rho 96304 + (1 : F) * rho 96305)

def relationLc3431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232), ((1 : F), 96245), ((1 : F), 96246), ((1 : F), 96259), ((1 : F), 96260), ((1 : F), 96273), ((1 : F), 96274), ((1 : F), 96287), ((1 : F), 96288), ((1 : F), 96301), ((1 : F), 96302)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3431 rho) = ((1 : F) * rho 96308)

def relationRow7813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96308) * ((1 : F) * rho 96306 + (1 : F) * rho 96307) = ((1 : F) * rho 96309)

def relationLc3432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231), ((1 : F), 96245), ((1 : F), 96259), ((1 : F), 96273), ((1 : F), 96287), ((1 : F), 96301)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96307) * (relationLc3432 rho) = ((1 : F) * rho 96310)

def relationLc3433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232), ((1 : F), 96246), ((1 : F), 96260), ((1 : F), 96274), ((1 : F), 96288), ((1 : F), 96302)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96306) * (relationLc3433 rho) = ((1 : F) * rho 96311)

def relationRow7816 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96310) * ((1 : F) * rho 96311) = ((1 : F) * rho 96312)

def relationRow7817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96313) * ((1 : F) + (1 : F) * rho 96312) = ((1 : F) * rho 96310 + (1 : F) * rho 96311)

def relationRow7818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96314) * ((1 : F) + (-1 : F) * rho 96312) = ((1 : F) * rho 96309 + (-1 : F) * rho 96310 + (-1 : F) * rho 96311)

def relationLc3434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((-1 : F), 96245), ((-1 : F), 96259), ((-1 : F), 96273), ((-1 : F), 96287), ((-1 : F), 96301), ((1 : F), 96313)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94081) * (relationLc3434 rho) = ((1 : F) * rho 96315)

def relationLc3435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((-1 : F), 96246), ((-1 : F), 96260), ((-1 : F), 96274), ((-1 : F), 96288), ((-1 : F), 96302), ((1 : F), 96314)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94081) * (relationLc3435 rho) = ((1 : F) * rho 96316)

def relationRow7821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96306) * ((1 : F) * rho 96307) = ((1 : F) * rho 96317)

def relationRow7822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96306) * ((1 : F) * rho 96306) = ((1 : F) * rho 96318)

def relationRow7823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96307) * ((1 : F) * rho 96307) = ((1 : F) * rho 96319)

def relationRow7824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96320) * ((-1 : F) * rho 96318 + (1 : F) * rho 96319) = ((2 : F) * rho 96317)

def relationRow7825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96321) * ((2 : F) + (1 : F) * rho 96318 + (-1 : F) * rho 96319) = ((1 : F) * rho 96318 + (1 : F) * rho 96319)

def relationLc3436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96120), ((1 : F), 96133), ((1 : F), 96134), ((1 : F), 96147), ((1 : F), 96148), ((1 : F), 96161), ((1 : F), 96162), ((1 : F), 96175), ((1 : F), 96176), ((1 : F), 96189), ((1 : F), 96190), ((1 : F), 96203), ((1 : F), 96204), ((1 : F), 96217), ((1 : F), 96218), ((1 : F), 96231), ((1 : F), 96232), ((1 : F), 96245), ((1 : F), 96246), ((1 : F), 96259), ((1 : F), 96260), ((1 : F), 96273), ((1 : F), 96274), ((1 : F), 96287), ((1 : F), 96288), ((1 : F), 96301), ((1 : F), 96302), ((1 : F), 96315), ((1 : F), 96316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7826 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3436 rho) = ((1 : F) * rho 96322)

def relationRow7827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96322) * ((1 : F) * rho 96320 + (1 : F) * rho 96321) = ((1 : F) * rho 96323)

def relationLc3437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩], residual := [((1 : F), 96119), ((1 : F), 96133), ((1 : F), 96147), ((1 : F), 96161), ((1 : F), 96175), ((1 : F), 96189), ((1 : F), 96203), ((1 : F), 96217), ((1 : F), 96231), ((1 : F), 96245), ((1 : F), 96259), ((1 : F), 96273), ((1 : F), 96287), ((1 : F), 96301), ((1 : F), 96315)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96321) * (relationLc3437 rho) = ((1 : F) * rho 96324)

def relationLc3438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩], residual := [((1 : F), 96120), ((1 : F), 96134), ((1 : F), 96148), ((1 : F), 96162), ((1 : F), 96176), ((1 : F), 96190), ((1 : F), 96204), ((1 : F), 96218), ((1 : F), 96232), ((1 : F), 96246), ((1 : F), 96260), ((1 : F), 96274), ((1 : F), 96288), ((1 : F), 96302), ((1 : F), 96316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96320) * (relationLc3438 rho) = ((1 : F) * rho 96325)

def relationRow7830 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96324) * ((1 : F) * rho 96325) = ((1 : F) * rho 96326)

def relationRow7831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96327) * ((1 : F) + (1 : F) * rho 96326) = ((1 : F) * rho 96324 + (1 : F) * rho 96325)

def relationRow7832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96328) * ((1 : F) + (-1 : F) * rho 96326) = ((1 : F) * rho 96323 + (-1 : F) * rho 96324 + (-1 : F) * rho 96325)

def relationLc3439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩], residual := [((-1 : F), 96119), ((-1 : F), 96133), ((-1 : F), 96147), ((-1 : F), 96161), ((-1 : F), 96175), ((-1 : F), 96189), ((-1 : F), 96203), ((-1 : F), 96217), ((-1 : F), 96231), ((-1 : F), 96245), ((-1 : F), 96259), ((-1 : F), 96273), ((-1 : F), 96287), ((-1 : F), 96301), ((-1 : F), 96315), ((1 : F), 96327)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94082) * (relationLc3439 rho) = ((1 : F) * rho 96329)

def relationLc3440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩], residual := [((-1 : F), 96120), ((-1 : F), 96134), ((-1 : F), 96148), ((-1 : F), 96162), ((-1 : F), 96176), ((-1 : F), 96190), ((-1 : F), 96204), ((-1 : F), 96218), ((-1 : F), 96232), ((-1 : F), 96246), ((-1 : F), 96260), ((-1 : F), 96274), ((-1 : F), 96288), ((-1 : F), 96302), ((-1 : F), 96316), ((1 : F), 96328)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94082) * (relationLc3440 rho) = ((1 : F) * rho 96330)

def relationRow7835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96320) * ((1 : F) * rho 96321) = ((1 : F) * rho 96331)

def relationRow7836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96320) * ((1 : F) * rho 96320) = ((1 : F) * rho 96332)

def relationRow7837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96321) * ((1 : F) * rho 96321) = ((1 : F) * rho 96333)

def relationRow7838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96334) * ((-1 : F) * rho 96332 + (1 : F) * rho 96333) = ((2 : F) * rho 96331)

def relationRow7839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96335) * ((2 : F) + (1 : F) * rho 96332 + (-1 : F) * rho 96333) = ((1 : F) * rho 96332 + (1 : F) * rho 96333)

def relationLc3441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 16⟩, ⟨(1 : F), 96120, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7840 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3441 rho) = ((1 : F) * rho 96336)

def relationRow7841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96336) * ((1 : F) * rho 96334 + (1 : F) * rho 96335) = ((1 : F) * rho 96337)

def relationLc3442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96335) * (relationLc3442 rho) = ((1 : F) * rho 96338)

def relationLc3443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96334) * (relationLc3443 rho) = ((1 : F) * rho 96339)

def relationRow7844 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96338) * ((1 : F) * rho 96339) = ((1 : F) * rho 96340)

def relationRow7845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96341) * ((1 : F) + (1 : F) * rho 96340) = ((1 : F) * rho 96338 + (1 : F) * rho 96339)

def relationRow7846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96342) * ((1 : F) + (-1 : F) * rho 96340) = ((1 : F) * rho 96337 + (-1 : F) * rho 96338 + (-1 : F) * rho 96339)

def relationLc3444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 16⟩], residual := [((1 : F), 96341)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94083) * (relationLc3444 rho) = ((1 : F) * rho 96343)

def relationLc3445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 16⟩], residual := [((1 : F), 96342)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94083) * (relationLc3445 rho) = ((1 : F) * rho 96344)

def relationRow7849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96334) * ((1 : F) * rho 96335) = ((1 : F) * rho 96345)

def relationRow7850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96334) * ((1 : F) * rho 96334) = ((1 : F) * rho 96346)

def relationRow7851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96335) * ((1 : F) * rho 96335) = ((1 : F) * rho 96347)

def relationRow7852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96348) * ((-1 : F) * rho 96346 + (1 : F) * rho 96347) = ((2 : F) * rho 96345)

def relationRow7853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96349) * ((2 : F) + (1 : F) * rho 96346 + (-1 : F) * rho 96347) = ((1 : F) * rho 96346 + (1 : F) * rho 96347)

def relationLc3446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 17⟩, ⟨(1 : F), 96120, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7854 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3446 rho) = ((1 : F) * rho 96350)

def relationRow7855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96350) * ((1 : F) * rho 96348 + (1 : F) * rho 96349) = ((1 : F) * rho 96351)

def relationLc3447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96349) * (relationLc3447 rho) = ((1 : F) * rho 96352)

def relationLc3448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96348) * (relationLc3448 rho) = ((1 : F) * rho 96353)

def relationRow7858 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96352) * ((1 : F) * rho 96353) = ((1 : F) * rho 96354)

def relationRow7859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96355) * ((1 : F) + (1 : F) * rho 96354) = ((1 : F) * rho 96352 + (1 : F) * rho 96353)

def relationRow7860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96356) * ((1 : F) + (-1 : F) * rho 96354) = ((1 : F) * rho 96351 + (-1 : F) * rho 96352 + (-1 : F) * rho 96353)

def relationLc3449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 17⟩], residual := [((1 : F), 96355)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94084) * (relationLc3449 rho) = ((1 : F) * rho 96357)

def relationLc3450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 17⟩], residual := [((1 : F), 96356)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94084) * (relationLc3450 rho) = ((1 : F) * rho 96358)

def relationRow7863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96348) * ((1 : F) * rho 96349) = ((1 : F) * rho 96359)

def relationRow7864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96348) * ((1 : F) * rho 96348) = ((1 : F) * rho 96360)

def relationRow7865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96349) * ((1 : F) * rho 96349) = ((1 : F) * rho 96361)

def relationRow7866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96362) * ((-1 : F) * rho 96360 + (1 : F) * rho 96361) = ((2 : F) * rho 96359)

def relationRow7867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96363) * ((2 : F) + (1 : F) * rho 96360 + (-1 : F) * rho 96361) = ((1 : F) * rho 96360 + (1 : F) * rho 96361)

def relationLc3451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 18⟩, ⟨(1 : F), 96120, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7868 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3451 rho) = ((1 : F) * rho 96364)

def relationRow7869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96364) * ((1 : F) * rho 96362 + (1 : F) * rho 96363) = ((1 : F) * rho 96365)

def relationLc3452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96363) * (relationLc3452 rho) = ((1 : F) * rho 96366)

def relationLc3453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96362) * (relationLc3453 rho) = ((1 : F) * rho 96367)

def relationRow7872 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96366) * ((1 : F) * rho 96367) = ((1 : F) * rho 96368)

def relationRow7873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96369) * ((1 : F) + (1 : F) * rho 96368) = ((1 : F) * rho 96366 + (1 : F) * rho 96367)

def relationRow7874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96370) * ((1 : F) + (-1 : F) * rho 96368) = ((1 : F) * rho 96365 + (-1 : F) * rho 96366 + (-1 : F) * rho 96367)

def relationLc3454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 18⟩], residual := [((1 : F), 96369)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94085) * (relationLc3454 rho) = ((1 : F) * rho 96371)

def relationLc3455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 18⟩], residual := [((1 : F), 96370)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94085) * (relationLc3455 rho) = ((1 : F) * rho 96372)

def relationRow7877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96362) * ((1 : F) * rho 96363) = ((1 : F) * rho 96373)

def relationRow7878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96362) * ((1 : F) * rho 96362) = ((1 : F) * rho 96374)

def relationRow7879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96363) * ((1 : F) * rho 96363) = ((1 : F) * rho 96375)

def relationRow7880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96376) * ((-1 : F) * rho 96374 + (1 : F) * rho 96375) = ((2 : F) * rho 96373)

def relationRow7881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96377) * ((2 : F) + (1 : F) * rho 96374 + (-1 : F) * rho 96375) = ((1 : F) * rho 96374 + (1 : F) * rho 96375)

def relationLc3456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 19⟩, ⟨(1 : F), 96120, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7882 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3456 rho) = ((1 : F) * rho 96378)

def relationRow7883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96378) * ((1 : F) * rho 96376 + (1 : F) * rho 96377) = ((1 : F) * rho 96379)

def relationLc3457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96377) * (relationLc3457 rho) = ((1 : F) * rho 96380)

def relationLc3458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96376) * (relationLc3458 rho) = ((1 : F) * rho 96381)

def relationRow7886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96380) * ((1 : F) * rho 96381) = ((1 : F) * rho 96382)

def relationRow7887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96383) * ((1 : F) + (1 : F) * rho 96382) = ((1 : F) * rho 96380 + (1 : F) * rho 96381)

def relationRow7888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96384) * ((1 : F) + (-1 : F) * rho 96382) = ((1 : F) * rho 96379 + (-1 : F) * rho 96380 + (-1 : F) * rho 96381)

def relationLc3459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 19⟩], residual := [((1 : F), 96383)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94086) * (relationLc3459 rho) = ((1 : F) * rho 96385)

def relationLc3460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 19⟩], residual := [((1 : F), 96384)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94086) * (relationLc3460 rho) = ((1 : F) * rho 96386)

def relationRow7891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96376) * ((1 : F) * rho 96377) = ((1 : F) * rho 96387)

def relationRow7892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96376) * ((1 : F) * rho 96376) = ((1 : F) * rho 96388)

def relationRow7893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96377) * ((1 : F) * rho 96377) = ((1 : F) * rho 96389)

def relationRow7894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96390) * ((-1 : F) * rho 96388 + (1 : F) * rho 96389) = ((2 : F) * rho 96387)

def relationRow7895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96391) * ((2 : F) + (1 : F) * rho 96388 + (-1 : F) * rho 96389) = ((1 : F) * rho 96388 + (1 : F) * rho 96389)

def relationLc3461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 20⟩, ⟨(1 : F), 96120, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7896 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3461 rho) = ((1 : F) * rho 96392)

def relationRow7897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96392) * ((1 : F) * rho 96390 + (1 : F) * rho 96391) = ((1 : F) * rho 96393)

def relationLc3462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96391) * (relationLc3462 rho) = ((1 : F) * rho 96394)

def relationLc3463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96390) * (relationLc3463 rho) = ((1 : F) * rho 96395)

def relationRow7900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96394) * ((1 : F) * rho 96395) = ((1 : F) * rho 96396)

def relationRow7901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96397) * ((1 : F) + (1 : F) * rho 96396) = ((1 : F) * rho 96394 + (1 : F) * rho 96395)

def relationRow7902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96398) * ((1 : F) + (-1 : F) * rho 96396) = ((1 : F) * rho 96393 + (-1 : F) * rho 96394 + (-1 : F) * rho 96395)

def relationLc3464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 20⟩], residual := [((1 : F), 96397)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94087) * (relationLc3464 rho) = ((1 : F) * rho 96399)

def relationLc3465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 20⟩], residual := [((1 : F), 96398)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94087) * (relationLc3465 rho) = ((1 : F) * rho 96400)

def relationRow7905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96390) * ((1 : F) * rho 96391) = ((1 : F) * rho 96401)

def relationRow7906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96390) * ((1 : F) * rho 96390) = ((1 : F) * rho 96402)

def relationRow7907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96391) * ((1 : F) * rho 96391) = ((1 : F) * rho 96403)

def relationRow7908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96404) * ((-1 : F) * rho 96402 + (1 : F) * rho 96403) = ((2 : F) * rho 96401)

def relationRow7909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96405) * ((2 : F) + (1 : F) * rho 96402 + (-1 : F) * rho 96403) = ((1 : F) * rho 96402 + (1 : F) * rho 96403)

def relationLc3466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 21⟩, ⟨(1 : F), 96120, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7910 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3466 rho) = ((1 : F) * rho 96406)

def relationRow7911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96406) * ((1 : F) * rho 96404 + (1 : F) * rho 96405) = ((1 : F) * rho 96407)

def relationLc3467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96405) * (relationLc3467 rho) = ((1 : F) * rho 96408)

def relationLc3468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96404) * (relationLc3468 rho) = ((1 : F) * rho 96409)

def relationRow7914 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96408) * ((1 : F) * rho 96409) = ((1 : F) * rho 96410)

def relationRow7915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96411) * ((1 : F) + (1 : F) * rho 96410) = ((1 : F) * rho 96408 + (1 : F) * rho 96409)

def relationRow7916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96412) * ((1 : F) + (-1 : F) * rho 96410) = ((1 : F) * rho 96407 + (-1 : F) * rho 96408 + (-1 : F) * rho 96409)

def relationLc3469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 21⟩], residual := [((1 : F), 96411)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94088) * (relationLc3469 rho) = ((1 : F) * rho 96413)

def relationLc3470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 21⟩], residual := [((1 : F), 96412)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94088) * (relationLc3470 rho) = ((1 : F) * rho 96414)

def relationRow7919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96404) * ((1 : F) * rho 96405) = ((1 : F) * rho 96415)

def relationRow7920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96404) * ((1 : F) * rho 96404) = ((1 : F) * rho 96416)

def relationRow7921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96405) * ((1 : F) * rho 96405) = ((1 : F) * rho 96417)

def relationRow7922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96418) * ((-1 : F) * rho 96416 + (1 : F) * rho 96417) = ((2 : F) * rho 96415)

def relationRow7923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96419) * ((2 : F) + (1 : F) * rho 96416 + (-1 : F) * rho 96417) = ((1 : F) * rho 96416 + (1 : F) * rho 96417)

def relationLc3471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 22⟩, ⟨(1 : F), 96120, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7924 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3471 rho) = ((1 : F) * rho 96420)

def relationRow7925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96420) * ((1 : F) * rho 96418 + (1 : F) * rho 96419) = ((1 : F) * rho 96421)

def relationLc3472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96419) * (relationLc3472 rho) = ((1 : F) * rho 96422)

def relationLc3473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96418) * (relationLc3473 rho) = ((1 : F) * rho 96423)

def relationRow7928 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96422) * ((1 : F) * rho 96423) = ((1 : F) * rho 96424)

def relationRow7929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96425) * ((1 : F) + (1 : F) * rho 96424) = ((1 : F) * rho 96422 + (1 : F) * rho 96423)

def relationRow7930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96426) * ((1 : F) + (-1 : F) * rho 96424) = ((1 : F) * rho 96421 + (-1 : F) * rho 96422 + (-1 : F) * rho 96423)

def relationLc3474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 22⟩], residual := [((1 : F), 96425)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94089) * (relationLc3474 rho) = ((1 : F) * rho 96427)

def relationLc3475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 22⟩], residual := [((1 : F), 96426)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94089) * (relationLc3475 rho) = ((1 : F) * rho 96428)

def relationRow7933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96418) * ((1 : F) * rho 96419) = ((1 : F) * rho 96429)

def relationRow7934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96418) * ((1 : F) * rho 96418) = ((1 : F) * rho 96430)

def relationRow7935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96419) * ((1 : F) * rho 96419) = ((1 : F) * rho 96431)

def relationRow7936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96432) * ((-1 : F) * rho 96430 + (1 : F) * rho 96431) = ((2 : F) * rho 96429)

def relationRow7937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96433) * ((2 : F) + (1 : F) * rho 96430 + (-1 : F) * rho 96431) = ((1 : F) * rho 96430 + (1 : F) * rho 96431)

def relationLc3476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 23⟩, ⟨(1 : F), 96120, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7938 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3476 rho) = ((1 : F) * rho 96434)

def relationRow7939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96434) * ((1 : F) * rho 96432 + (1 : F) * rho 96433) = ((1 : F) * rho 96435)

def relationLc3477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96433) * (relationLc3477 rho) = ((1 : F) * rho 96436)

def relationLc3478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96432) * (relationLc3478 rho) = ((1 : F) * rho 96437)

def relationRow7942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96436) * ((1 : F) * rho 96437) = ((1 : F) * rho 96438)

def relationRow7943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96439) * ((1 : F) + (1 : F) * rho 96438) = ((1 : F) * rho 96436 + (1 : F) * rho 96437)

def relationRow7944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96440) * ((1 : F) + (-1 : F) * rho 96438) = ((1 : F) * rho 96435 + (-1 : F) * rho 96436 + (-1 : F) * rho 96437)

def relationLc3479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 23⟩], residual := [((1 : F), 96439)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94090) * (relationLc3479 rho) = ((1 : F) * rho 96441)

def relationLc3480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 23⟩], residual := [((1 : F), 96440)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94090) * (relationLc3480 rho) = ((1 : F) * rho 96442)

def relationRow7947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96432) * ((1 : F) * rho 96433) = ((1 : F) * rho 96443)

def relationRow7948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96432) * ((1 : F) * rho 96432) = ((1 : F) * rho 96444)

def relationRow7949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96433) * ((1 : F) * rho 96433) = ((1 : F) * rho 96445)

def relationRow7950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96446) * ((-1 : F) * rho 96444 + (1 : F) * rho 96445) = ((2 : F) * rho 96443)

def relationRow7951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96447) * ((2 : F) + (1 : F) * rho 96444 + (-1 : F) * rho 96445) = ((1 : F) * rho 96444 + (1 : F) * rho 96445)

def relationLc3481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 24⟩, ⟨(1 : F), 96120, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7952 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3481 rho) = ((1 : F) * rho 96448)

def relationRow7953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96448) * ((1 : F) * rho 96446 + (1 : F) * rho 96447) = ((1 : F) * rho 96449)

def relationLc3482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96447) * (relationLc3482 rho) = ((1 : F) * rho 96450)

def relationLc3483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96446) * (relationLc3483 rho) = ((1 : F) * rho 96451)

def relationRow7956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96450) * ((1 : F) * rho 96451) = ((1 : F) * rho 96452)

def relationRow7957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96453) * ((1 : F) + (1 : F) * rho 96452) = ((1 : F) * rho 96450 + (1 : F) * rho 96451)

def relationRow7958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96454) * ((1 : F) + (-1 : F) * rho 96452) = ((1 : F) * rho 96449 + (-1 : F) * rho 96450 + (-1 : F) * rho 96451)

def relationLc3484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 24⟩], residual := [((1 : F), 96453)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94091) * (relationLc3484 rho) = ((1 : F) * rho 96455)

def relationLc3485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 24⟩], residual := [((1 : F), 96454)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94091) * (relationLc3485 rho) = ((1 : F) * rho 96456)

def relationRow7961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96446) * ((1 : F) * rho 96447) = ((1 : F) * rho 96457)

def relationRow7962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96446) * ((1 : F) * rho 96446) = ((1 : F) * rho 96458)

def relationRow7963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96447) * ((1 : F) * rho 96447) = ((1 : F) * rho 96459)

def relationRow7964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96460) * ((-1 : F) * rho 96458 + (1 : F) * rho 96459) = ((2 : F) * rho 96457)

def relationRow7965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96461) * ((2 : F) + (1 : F) * rho 96458 + (-1 : F) * rho 96459) = ((1 : F) * rho 96458 + (1 : F) * rho 96459)

def relationLc3486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 25⟩, ⟨(1 : F), 96120, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7966 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3486 rho) = ((1 : F) * rho 96462)

def relationRow7967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96462) * ((1 : F) * rho 96460 + (1 : F) * rho 96461) = ((1 : F) * rho 96463)

def relationLc3487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96461) * (relationLc3487 rho) = ((1 : F) * rho 96464)

def relationLc3488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96460) * (relationLc3488 rho) = ((1 : F) * rho 96465)

def relationRow7970 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96464) * ((1 : F) * rho 96465) = ((1 : F) * rho 96466)

def relationRow7971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96467) * ((1 : F) + (1 : F) * rho 96466) = ((1 : F) * rho 96464 + (1 : F) * rho 96465)

def relationRow7972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96468) * ((1 : F) + (-1 : F) * rho 96466) = ((1 : F) * rho 96463 + (-1 : F) * rho 96464 + (-1 : F) * rho 96465)

def relationLc3489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 25⟩], residual := [((1 : F), 96467)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94092) * (relationLc3489 rho) = ((1 : F) * rho 96469)

def relationLc3490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 25⟩], residual := [((1 : F), 96468)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94092) * (relationLc3490 rho) = ((1 : F) * rho 96470)

def relationRow7975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96460) * ((1 : F) * rho 96461) = ((1 : F) * rho 96471)

def relationRow7976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96460) * ((1 : F) * rho 96460) = ((1 : F) * rho 96472)

def relationRow7977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96461) * ((1 : F) * rho 96461) = ((1 : F) * rho 96473)

def relationRow7978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96474) * ((-1 : F) * rho 96472 + (1 : F) * rho 96473) = ((2 : F) * rho 96471)

def relationRow7979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96475) * ((2 : F) + (1 : F) * rho 96472 + (-1 : F) * rho 96473) = ((1 : F) * rho 96472 + (1 : F) * rho 96473)

def relationLc3491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 26⟩, ⟨(1 : F), 96120, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3491 rho) = ((1 : F) * rho 96476)

def relationRow7981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96476) * ((1 : F) * rho 96474 + (1 : F) * rho 96475) = ((1 : F) * rho 96477)

def relationLc3492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96475) * (relationLc3492 rho) = ((1 : F) * rho 96478)

def relationLc3493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96474) * (relationLc3493 rho) = ((1 : F) * rho 96479)

def relationRow7984 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96478) * ((1 : F) * rho 96479) = ((1 : F) * rho 96480)

def relationRow7985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96481) * ((1 : F) + (1 : F) * rho 96480) = ((1 : F) * rho 96478 + (1 : F) * rho 96479)

def relationRow7986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96482) * ((1 : F) + (-1 : F) * rho 96480) = ((1 : F) * rho 96477 + (-1 : F) * rho 96478 + (-1 : F) * rho 96479)

def relationLc3494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 26⟩], residual := [((1 : F), 96481)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94093) * (relationLc3494 rho) = ((1 : F) * rho 96483)

def relationLc3495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 26⟩], residual := [((1 : F), 96482)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94093) * (relationLc3495 rho) = ((1 : F) * rho 96484)

def relationRow7989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96474) * ((1 : F) * rho 96475) = ((1 : F) * rho 96485)

def relationRow7990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96474) * ((1 : F) * rho 96474) = ((1 : F) * rho 96486)

def relationRow7991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96475) * ((1 : F) * rho 96475) = ((1 : F) * rho 96487)

def relationRow7992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96488) * ((-1 : F) * rho 96486 + (1 : F) * rho 96487) = ((2 : F) * rho 96485)

def relationRow7993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96489) * ((2 : F) + (1 : F) * rho 96486 + (-1 : F) * rho 96487) = ((1 : F) * rho 96486 + (1 : F) * rho 96487)

def relationLc3496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 27⟩, ⟨(1 : F), 96120, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7994 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3496 rho) = ((1 : F) * rho 96490)

def relationRow7995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96490) * ((1 : F) * rho 96488 + (1 : F) * rho 96489) = ((1 : F) * rho 96491)

def relationLc3497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96489) * (relationLc3497 rho) = ((1 : F) * rho 96492)

def relationLc3498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96488) * (relationLc3498 rho) = ((1 : F) * rho 96493)

def relationRow7998 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96492) * ((1 : F) * rho 96493) = ((1 : F) * rho 96494)

def relationRow7999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96495) * ((1 : F) + (1 : F) * rho 96494) = ((1 : F) * rho 96492 + (1 : F) * rho 96493)

def relationRow8000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96496) * ((1 : F) + (-1 : F) * rho 96494) = ((1 : F) * rho 96491 + (-1 : F) * rho 96492 + (-1 : F) * rho 96493)

def relationLc3499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 27⟩], residual := [((1 : F), 96495)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94094) * (relationLc3499 rho) = ((1 : F) * rho 96497)

def relationLc3500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 27⟩], residual := [((1 : F), 96496)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94094) * (relationLc3500 rho) = ((1 : F) * rho 96498)

def relationRow8003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96488) * ((1 : F) * rho 96489) = ((1 : F) * rho 96499)

def relationRow8004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96488) * ((1 : F) * rho 96488) = ((1 : F) * rho 96500)

def relationRow8005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96489) * ((1 : F) * rho 96489) = ((1 : F) * rho 96501)

def relationRow8006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96502) * ((-1 : F) * rho 96500 + (1 : F) * rho 96501) = ((2 : F) * rho 96499)

def relationRow8007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96503) * ((2 : F) + (1 : F) * rho 96500 + (-1 : F) * rho 96501) = ((1 : F) * rho 96500 + (1 : F) * rho 96501)

def relationLc3501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 28⟩, ⟨(1 : F), 96120, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8008 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3501 rho) = ((1 : F) * rho 96504)

def relationRow8009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96504) * ((1 : F) * rho 96502 + (1 : F) * rho 96503) = ((1 : F) * rho 96505)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
