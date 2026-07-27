import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationLc3648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 57⟩], residual := [((1 : F), 114974)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112182) * (relationLc3648 rho) = ((1 : F) * rho 114976)

def relationRow8422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114966) * ((1 : F) * rho 114967) = ((1 : F) * rho 114977)

def relationRow8423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114966) * ((1 : F) * rho 114966) = ((1 : F) * rho 114978)

def relationRow8424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114967) * ((1 : F) * rho 114967) = ((1 : F) * rho 114979)

def relationRow8425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114980) * ((-1 : F) * rho 114978 + (1 : F) * rho 114979) = ((2 : F) * rho 114977)

def relationRow8426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114981) * ((2 : F) + (1 : F) * rho 114978 + (-1 : F) * rho 114979) = ((1 : F) * rho 114978 + (1 : F) * rho 114979)

def relationLc3649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 58⟩, ⟨(1 : F), 114178, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8427 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3649 rho) = ((1 : F) * rho 114982)

def relationRow8428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114982) * ((1 : F) * rho 114980 + (1 : F) * rho 114981) = ((1 : F) * rho 114983)

def relationLc3650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114981) * (relationLc3650 rho) = ((1 : F) * rho 114984)

def relationLc3651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114980) * (relationLc3651 rho) = ((1 : F) * rho 114985)

def relationRow8431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114984) * ((1 : F) * rho 114985) = ((1 : F) * rho 114986)

def relationRow8432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114987) * ((1 : F) + (1 : F) * rho 114986) = ((1 : F) * rho 114984 + (1 : F) * rho 114985)

def relationRow8433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114988) * ((1 : F) + (-1 : F) * rho 114986) = ((1 : F) * rho 114983 + (-1 : F) * rho 114984 + (-1 : F) * rho 114985)

def relationLc3652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 58⟩], residual := [((1 : F), 114987)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112183) * (relationLc3652 rho) = ((1 : F) * rho 114989)

def relationLc3653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 58⟩], residual := [((1 : F), 114988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112183) * (relationLc3653 rho) = ((1 : F) * rho 114990)

def relationRow8436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114980) * ((1 : F) * rho 114981) = ((1 : F) * rho 114991)

def relationRow8437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114980) * ((1 : F) * rho 114980) = ((1 : F) * rho 114992)

def relationRow8438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114981) * ((1 : F) * rho 114981) = ((1 : F) * rho 114993)

def relationRow8439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114994) * ((-1 : F) * rho 114992 + (1 : F) * rho 114993) = ((2 : F) * rho 114991)

def relationRow8440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114995) * ((2 : F) + (1 : F) * rho 114992 + (-1 : F) * rho 114993) = ((1 : F) * rho 114992 + (1 : F) * rho 114993)

def relationLc3654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 59⟩, ⟨(1 : F), 114178, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8441 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3654 rho) = ((1 : F) * rho 114996)

def relationRow8442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114996) * ((1 : F) * rho 114994 + (1 : F) * rho 114995) = ((1 : F) * rho 114997)

def relationLc3655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114995) * (relationLc3655 rho) = ((1 : F) * rho 114998)

def relationLc3656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114994) * (relationLc3656 rho) = ((1 : F) * rho 114999)

def relationRow8445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114998) * ((1 : F) * rho 114999) = ((1 : F) * rho 115000)

def relationRow8446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115001) * ((1 : F) + (1 : F) * rho 115000) = ((1 : F) * rho 114998 + (1 : F) * rho 114999)

def relationRow8447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115002) * ((1 : F) + (-1 : F) * rho 115000) = ((1 : F) * rho 114997 + (-1 : F) * rho 114998 + (-1 : F) * rho 114999)

def relationLc3657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 59⟩], residual := [((1 : F), 115001)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112184) * (relationLc3657 rho) = ((1 : F) * rho 115003)

def relationLc3658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 59⟩], residual := [((1 : F), 115002)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112184) * (relationLc3658 rho) = ((1 : F) * rho 115004)

def relationRow8450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114994) * ((1 : F) * rho 114995) = ((1 : F) * rho 115005)

def relationRow8451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114994) * ((1 : F) * rho 114994) = ((1 : F) * rho 115006)

def relationRow8452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114995) * ((1 : F) * rho 114995) = ((1 : F) * rho 115007)

def relationRow8453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115008) * ((-1 : F) * rho 115006 + (1 : F) * rho 115007) = ((2 : F) * rho 115005)

def relationRow8454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115009) * ((2 : F) + (1 : F) * rho 115006 + (-1 : F) * rho 115007) = ((1 : F) * rho 115006 + (1 : F) * rho 115007)

def relationLc3659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 60⟩, ⟨(1 : F), 114178, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8455 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3659 rho) = ((1 : F) * rho 115010)

def relationRow8456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115010) * ((1 : F) * rho 115008 + (1 : F) * rho 115009) = ((1 : F) * rho 115011)

def relationLc3660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115009) * (relationLc3660 rho) = ((1 : F) * rho 115012)

def relationLc3661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115008) * (relationLc3661 rho) = ((1 : F) * rho 115013)

def relationRow8459 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115012) * ((1 : F) * rho 115013) = ((1 : F) * rho 115014)

def relationRow8460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115015) * ((1 : F) + (1 : F) * rho 115014) = ((1 : F) * rho 115012 + (1 : F) * rho 115013)

def relationRow8461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115016) * ((1 : F) + (-1 : F) * rho 115014) = ((1 : F) * rho 115011 + (-1 : F) * rho 115012 + (-1 : F) * rho 115013)

def relationLc3662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 60⟩], residual := [((1 : F), 115015)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112185) * (relationLc3662 rho) = ((1 : F) * rho 115017)

def relationLc3663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 60⟩], residual := [((1 : F), 115016)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112185) * (relationLc3663 rho) = ((1 : F) * rho 115018)

def relationRow8464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115008) * ((1 : F) * rho 115009) = ((1 : F) * rho 115019)

def relationRow8465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115008) * ((1 : F) * rho 115008) = ((1 : F) * rho 115020)

def relationRow8466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115009) * ((1 : F) * rho 115009) = ((1 : F) * rho 115021)

def relationRow8467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115022) * ((-1 : F) * rho 115020 + (1 : F) * rho 115021) = ((2 : F) * rho 115019)

def relationRow8468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115023) * ((2 : F) + (1 : F) * rho 115020 + (-1 : F) * rho 115021) = ((1 : F) * rho 115020 + (1 : F) * rho 115021)

def relationLc3664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 61⟩, ⟨(1 : F), 114178, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8469 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3664 rho) = ((1 : F) * rho 115024)

def relationRow8470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115024) * ((1 : F) * rho 115022 + (1 : F) * rho 115023) = ((1 : F) * rho 115025)

def relationLc3665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115023) * (relationLc3665 rho) = ((1 : F) * rho 115026)

def relationLc3666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115022) * (relationLc3666 rho) = ((1 : F) * rho 115027)

def relationRow8473 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115026) * ((1 : F) * rho 115027) = ((1 : F) * rho 115028)

def relationRow8474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115029) * ((1 : F) + (1 : F) * rho 115028) = ((1 : F) * rho 115026 + (1 : F) * rho 115027)

def relationRow8475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115030) * ((1 : F) + (-1 : F) * rho 115028) = ((1 : F) * rho 115025 + (-1 : F) * rho 115026 + (-1 : F) * rho 115027)

def relationLc3667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 61⟩], residual := [((1 : F), 115029)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112186) * (relationLc3667 rho) = ((1 : F) * rho 115031)

def relationLc3668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 61⟩], residual := [((1 : F), 115030)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112186) * (relationLc3668 rho) = ((1 : F) * rho 115032)

def relationRow8478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115022) * ((1 : F) * rho 115023) = ((1 : F) * rho 115033)

def relationRow8479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115022) * ((1 : F) * rho 115022) = ((1 : F) * rho 115034)

def relationRow8480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115023) * ((1 : F) * rho 115023) = ((1 : F) * rho 115035)

def relationRow8481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115036) * ((-1 : F) * rho 115034 + (1 : F) * rho 115035) = ((2 : F) * rho 115033)

def relationRow8482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115037) * ((2 : F) + (1 : F) * rho 115034 + (-1 : F) * rho 115035) = ((1 : F) * rho 115034 + (1 : F) * rho 115035)

def relationLc3669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 62⟩, ⟨(1 : F), 114178, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8483 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3669 rho) = ((1 : F) * rho 115038)

def relationRow8484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115038) * ((1 : F) * rho 115036 + (1 : F) * rho 115037) = ((1 : F) * rho 115039)

def relationLc3670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115037) * (relationLc3670 rho) = ((1 : F) * rho 115040)

def relationLc3671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115036) * (relationLc3671 rho) = ((1 : F) * rho 115041)

def relationRow8487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115040) * ((1 : F) * rho 115041) = ((1 : F) * rho 115042)

def relationRow8488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115043) * ((1 : F) + (1 : F) * rho 115042) = ((1 : F) * rho 115040 + (1 : F) * rho 115041)

def relationRow8489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115044) * ((1 : F) + (-1 : F) * rho 115042) = ((1 : F) * rho 115039 + (-1 : F) * rho 115040 + (-1 : F) * rho 115041)

def relationLc3672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 62⟩], residual := [((1 : F), 115043)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112187) * (relationLc3672 rho) = ((1 : F) * rho 115045)

def relationLc3673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 62⟩], residual := [((1 : F), 115044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112187) * (relationLc3673 rho) = ((1 : F) * rho 115046)

def relationRow8492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115036) * ((1 : F) * rho 115037) = ((1 : F) * rho 115047)

def relationRow8493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115036) * ((1 : F) * rho 115036) = ((1 : F) * rho 115048)

def relationRow8494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115037) * ((1 : F) * rho 115037) = ((1 : F) * rho 115049)

def relationRow8495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115050) * ((-1 : F) * rho 115048 + (1 : F) * rho 115049) = ((2 : F) * rho 115047)

def relationRow8496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115051) * ((2 : F) + (1 : F) * rho 115048 + (-1 : F) * rho 115049) = ((1 : F) * rho 115048 + (1 : F) * rho 115049)

def relationLc3674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 63⟩, ⟨(1 : F), 114178, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8497 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3674 rho) = ((1 : F) * rho 115052)

def relationRow8498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115052) * ((1 : F) * rho 115050 + (1 : F) * rho 115051) = ((1 : F) * rho 115053)

def relationLc3675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115051) * (relationLc3675 rho) = ((1 : F) * rho 115054)

def relationLc3676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115050) * (relationLc3676 rho) = ((1 : F) * rho 115055)

def relationRow8501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115054) * ((1 : F) * rho 115055) = ((1 : F) * rho 115056)

def relationRow8502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115057) * ((1 : F) + (1 : F) * rho 115056) = ((1 : F) * rho 115054 + (1 : F) * rho 115055)

def relationRow8503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115058) * ((1 : F) + (-1 : F) * rho 115056) = ((1 : F) * rho 115053 + (-1 : F) * rho 115054 + (-1 : F) * rho 115055)

def relationLc3677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 63⟩], residual := [((1 : F), 115057)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112188) * (relationLc3677 rho) = ((1 : F) * rho 115059)

def relationLc3678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 63⟩], residual := [((1 : F), 115058)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112188) * (relationLc3678 rho) = ((1 : F) * rho 115060)

def relationRow8506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115050) * ((1 : F) * rho 115051) = ((1 : F) * rho 115061)

def relationRow8507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115050) * ((1 : F) * rho 115050) = ((1 : F) * rho 115062)

def relationRow8508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115051) * ((1 : F) * rho 115051) = ((1 : F) * rho 115063)

def relationRow8509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115064) * ((-1 : F) * rho 115062 + (1 : F) * rho 115063) = ((2 : F) * rho 115061)

def relationRow8510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115065) * ((2 : F) + (1 : F) * rho 115062 + (-1 : F) * rho 115063) = ((1 : F) * rho 115062 + (1 : F) * rho 115063)

def relationLc3679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 64⟩, ⟨(1 : F), 114178, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8511 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3679 rho) = ((1 : F) * rho 115066)

def relationRow8512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115066) * ((1 : F) * rho 115064 + (1 : F) * rho 115065) = ((1 : F) * rho 115067)

def relationLc3680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115065) * (relationLc3680 rho) = ((1 : F) * rho 115068)

def relationLc3681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115064) * (relationLc3681 rho) = ((1 : F) * rho 115069)

def relationRow8515 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115068) * ((1 : F) * rho 115069) = ((1 : F) * rho 115070)

def relationRow8516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115071) * ((1 : F) + (1 : F) * rho 115070) = ((1 : F) * rho 115068 + (1 : F) * rho 115069)

def relationRow8517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115072) * ((1 : F) + (-1 : F) * rho 115070) = ((1 : F) * rho 115067 + (-1 : F) * rho 115068 + (-1 : F) * rho 115069)

def relationLc3682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 64⟩], residual := [((1 : F), 115071)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112189) * (relationLc3682 rho) = ((1 : F) * rho 115073)

def relationLc3683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 64⟩], residual := [((1 : F), 115072)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112189) * (relationLc3683 rho) = ((1 : F) * rho 115074)

def relationRow8520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115064) * ((1 : F) * rho 115065) = ((1 : F) * rho 115075)

def relationRow8521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115064) * ((1 : F) * rho 115064) = ((1 : F) * rho 115076)

def relationRow8522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115065) * ((1 : F) * rho 115065) = ((1 : F) * rho 115077)

def relationRow8523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115078) * ((-1 : F) * rho 115076 + (1 : F) * rho 115077) = ((2 : F) * rho 115075)

def relationRow8524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115079) * ((2 : F) + (1 : F) * rho 115076 + (-1 : F) * rho 115077) = ((1 : F) * rho 115076 + (1 : F) * rho 115077)

def relationLc3684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 65⟩, ⟨(1 : F), 114178, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8525 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3684 rho) = ((1 : F) * rho 115080)

def relationRow8526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115080) * ((1 : F) * rho 115078 + (1 : F) * rho 115079) = ((1 : F) * rho 115081)

def relationLc3685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115079) * (relationLc3685 rho) = ((1 : F) * rho 115082)

def relationLc3686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115078) * (relationLc3686 rho) = ((1 : F) * rho 115083)

def relationRow8529 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115082) * ((1 : F) * rho 115083) = ((1 : F) * rho 115084)

def relationRow8530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115085) * ((1 : F) + (1 : F) * rho 115084) = ((1 : F) * rho 115082 + (1 : F) * rho 115083)

def relationRow8531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115086) * ((1 : F) + (-1 : F) * rho 115084) = ((1 : F) * rho 115081 + (-1 : F) * rho 115082 + (-1 : F) * rho 115083)

def relationLc3687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 65⟩], residual := [((1 : F), 115085)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112190) * (relationLc3687 rho) = ((1 : F) * rho 115087)

def relationLc3688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 65⟩], residual := [((1 : F), 115086)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112190) * (relationLc3688 rho) = ((1 : F) * rho 115088)

def relationRow8534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115078) * ((1 : F) * rho 115079) = ((1 : F) * rho 115089)

def relationRow8535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115078) * ((1 : F) * rho 115078) = ((1 : F) * rho 115090)

def relationRow8536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115079) * ((1 : F) * rho 115079) = ((1 : F) * rho 115091)

def relationRow8537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115092) * ((-1 : F) * rho 115090 + (1 : F) * rho 115091) = ((2 : F) * rho 115089)

def relationRow8538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115093) * ((2 : F) + (1 : F) * rho 115090 + (-1 : F) * rho 115091) = ((1 : F) * rho 115090 + (1 : F) * rho 115091)

def relationLc3689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 66⟩, ⟨(1 : F), 114178, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8539 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3689 rho) = ((1 : F) * rho 115094)

def relationRow8540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115094) * ((1 : F) * rho 115092 + (1 : F) * rho 115093) = ((1 : F) * rho 115095)

def relationLc3690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115093) * (relationLc3690 rho) = ((1 : F) * rho 115096)

def relationLc3691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115092) * (relationLc3691 rho) = ((1 : F) * rho 115097)

def relationRow8543 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115096) * ((1 : F) * rho 115097) = ((1 : F) * rho 115098)

def relationRow8544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115099) * ((1 : F) + (1 : F) * rho 115098) = ((1 : F) * rho 115096 + (1 : F) * rho 115097)

def relationRow8545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115100) * ((1 : F) + (-1 : F) * rho 115098) = ((1 : F) * rho 115095 + (-1 : F) * rho 115096 + (-1 : F) * rho 115097)

def relationLc3692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 66⟩], residual := [((1 : F), 115099)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112191) * (relationLc3692 rho) = ((1 : F) * rho 115101)

def relationLc3693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 66⟩], residual := [((1 : F), 115100)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112191) * (relationLc3693 rho) = ((1 : F) * rho 115102)

def relationRow8548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115092) * ((1 : F) * rho 115093) = ((1 : F) * rho 115103)

def relationRow8549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115092) * ((1 : F) * rho 115092) = ((1 : F) * rho 115104)

def relationRow8550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115093) * ((1 : F) * rho 115093) = ((1 : F) * rho 115105)

def relationRow8551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115106) * ((-1 : F) * rho 115104 + (1 : F) * rho 115105) = ((2 : F) * rho 115103)

def relationRow8552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115107) * ((2 : F) + (1 : F) * rho 115104 + (-1 : F) * rho 115105) = ((1 : F) * rho 115104 + (1 : F) * rho 115105)

def relationLc3694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 67⟩, ⟨(1 : F), 114178, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8553 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3694 rho) = ((1 : F) * rho 115108)

def relationRow8554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115108) * ((1 : F) * rho 115106 + (1 : F) * rho 115107) = ((1 : F) * rho 115109)

def relationLc3695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115107) * (relationLc3695 rho) = ((1 : F) * rho 115110)

def relationLc3696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115106) * (relationLc3696 rho) = ((1 : F) * rho 115111)

def relationRow8557 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115110) * ((1 : F) * rho 115111) = ((1 : F) * rho 115112)

def relationRow8558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115113) * ((1 : F) + (1 : F) * rho 115112) = ((1 : F) * rho 115110 + (1 : F) * rho 115111)

def relationRow8559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115114) * ((1 : F) + (-1 : F) * rho 115112) = ((1 : F) * rho 115109 + (-1 : F) * rho 115110 + (-1 : F) * rho 115111)

def relationLc3697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 67⟩], residual := [((1 : F), 115113)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112192) * (relationLc3697 rho) = ((1 : F) * rho 115115)

def relationLc3698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 67⟩], residual := [((1 : F), 115114)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112192) * (relationLc3698 rho) = ((1 : F) * rho 115116)

def relationRow8562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115106) * ((1 : F) * rho 115107) = ((1 : F) * rho 115117)

def relationRow8563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115106) * ((1 : F) * rho 115106) = ((1 : F) * rho 115118)

def relationRow8564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115107) * ((1 : F) * rho 115107) = ((1 : F) * rho 115119)

def relationRow8565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115120) * ((-1 : F) * rho 115118 + (1 : F) * rho 115119) = ((2 : F) * rho 115117)

def relationRow8566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115121) * ((2 : F) + (1 : F) * rho 115118 + (-1 : F) * rho 115119) = ((1 : F) * rho 115118 + (1 : F) * rho 115119)

def relationLc3699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 68⟩, ⟨(1 : F), 114178, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8567 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3699 rho) = ((1 : F) * rho 115122)

def relationRow8568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115122) * ((1 : F) * rho 115120 + (1 : F) * rho 115121) = ((1 : F) * rho 115123)

def relationLc3700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115121) * (relationLc3700 rho) = ((1 : F) * rho 115124)

def relationLc3701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115120) * (relationLc3701 rho) = ((1 : F) * rho 115125)

def relationRow8571 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115124) * ((1 : F) * rho 115125) = ((1 : F) * rho 115126)

def relationRow8572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115127) * ((1 : F) + (1 : F) * rho 115126) = ((1 : F) * rho 115124 + (1 : F) * rho 115125)

def relationRow8573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115128) * ((1 : F) + (-1 : F) * rho 115126) = ((1 : F) * rho 115123 + (-1 : F) * rho 115124 + (-1 : F) * rho 115125)

def relationLc3702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 68⟩], residual := [((1 : F), 115127)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112193) * (relationLc3702 rho) = ((1 : F) * rho 115129)

def relationLc3703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 68⟩], residual := [((1 : F), 115128)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112193) * (relationLc3703 rho) = ((1 : F) * rho 115130)

def relationRow8576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115120) * ((1 : F) * rho 115121) = ((1 : F) * rho 115131)

def relationRow8577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115120) * ((1 : F) * rho 115120) = ((1 : F) * rho 115132)

def relationRow8578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115121) * ((1 : F) * rho 115121) = ((1 : F) * rho 115133)

def relationRow8579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115134) * ((-1 : F) * rho 115132 + (1 : F) * rho 115133) = ((2 : F) * rho 115131)

def relationRow8580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115135) * ((2 : F) + (1 : F) * rho 115132 + (-1 : F) * rho 115133) = ((1 : F) * rho 115132 + (1 : F) * rho 115133)

def relationLc3704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 69⟩, ⟨(1 : F), 114178, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3704 rho) = ((1 : F) * rho 115136)

def relationRow8582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115136) * ((1 : F) * rho 115134 + (1 : F) * rho 115135) = ((1 : F) * rho 115137)

def relationLc3705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115135) * (relationLc3705 rho) = ((1 : F) * rho 115138)

def relationLc3706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115134) * (relationLc3706 rho) = ((1 : F) * rho 115139)

def relationRow8585 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115138) * ((1 : F) * rho 115139) = ((1 : F) * rho 115140)

def relationRow8586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115141) * ((1 : F) + (1 : F) * rho 115140) = ((1 : F) * rho 115138 + (1 : F) * rho 115139)

def relationRow8587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115142) * ((1 : F) + (-1 : F) * rho 115140) = ((1 : F) * rho 115137 + (-1 : F) * rho 115138 + (-1 : F) * rho 115139)

def relationLc3707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 69⟩], residual := [((1 : F), 115141)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112194) * (relationLc3707 rho) = ((1 : F) * rho 115143)

def relationLc3708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 69⟩], residual := [((1 : F), 115142)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112194) * (relationLc3708 rho) = ((1 : F) * rho 115144)

def relationRow8590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115134) * ((1 : F) * rho 115135) = ((1 : F) * rho 115145)

def relationRow8591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115134) * ((1 : F) * rho 115134) = ((1 : F) * rho 115146)

def relationRow8592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115135) * ((1 : F) * rho 115135) = ((1 : F) * rho 115147)

def relationRow8593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115148) * ((-1 : F) * rho 115146 + (1 : F) * rho 115147) = ((2 : F) * rho 115145)

def relationRow8594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115149) * ((2 : F) + (1 : F) * rho 115146 + (-1 : F) * rho 115147) = ((1 : F) * rho 115146 + (1 : F) * rho 115147)

def relationLc3709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 70⟩, ⟨(1 : F), 114178, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8595 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3709 rho) = ((1 : F) * rho 115150)

def relationRow8596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115150) * ((1 : F) * rho 115148 + (1 : F) * rho 115149) = ((1 : F) * rho 115151)

def relationLc3710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115149) * (relationLc3710 rho) = ((1 : F) * rho 115152)

def relationLc3711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115148) * (relationLc3711 rho) = ((1 : F) * rho 115153)

def relationRow8599 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115152) * ((1 : F) * rho 115153) = ((1 : F) * rho 115154)

def relationRow8600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115155) * ((1 : F) + (1 : F) * rho 115154) = ((1 : F) * rho 115152 + (1 : F) * rho 115153)

def relationRow8601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115156) * ((1 : F) + (-1 : F) * rho 115154) = ((1 : F) * rho 115151 + (-1 : F) * rho 115152 + (-1 : F) * rho 115153)

def relationLc3712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 70⟩], residual := [((1 : F), 115155)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112195) * (relationLc3712 rho) = ((1 : F) * rho 115157)

def relationLc3713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 70⟩], residual := [((1 : F), 115156)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112195) * (relationLc3713 rho) = ((1 : F) * rho 115158)

def relationRow8604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115148) * ((1 : F) * rho 115149) = ((1 : F) * rho 115159)

def relationRow8605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115148) * ((1 : F) * rho 115148) = ((1 : F) * rho 115160)

def relationRow8606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115149) * ((1 : F) * rho 115149) = ((1 : F) * rho 115161)

def relationRow8607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115162) * ((-1 : F) * rho 115160 + (1 : F) * rho 115161) = ((2 : F) * rho 115159)

def relationRow8608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115163) * ((2 : F) + (1 : F) * rho 115160 + (-1 : F) * rho 115161) = ((1 : F) * rho 115160 + (1 : F) * rho 115161)

def relationLc3714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 71⟩, ⟨(1 : F), 114178, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8609 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3714 rho) = ((1 : F) * rho 115164)

def relationRow8610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115164) * ((1 : F) * rho 115162 + (1 : F) * rho 115163) = ((1 : F) * rho 115165)

def relationLc3715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115163) * (relationLc3715 rho) = ((1 : F) * rho 115166)

def relationLc3716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115162) * (relationLc3716 rho) = ((1 : F) * rho 115167)

def relationRow8613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115166) * ((1 : F) * rho 115167) = ((1 : F) * rho 115168)

def relationRow8614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115169) * ((1 : F) + (1 : F) * rho 115168) = ((1 : F) * rho 115166 + (1 : F) * rho 115167)

def relationRow8615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115170) * ((1 : F) + (-1 : F) * rho 115168) = ((1 : F) * rho 115165 + (-1 : F) * rho 115166 + (-1 : F) * rho 115167)

def relationLc3717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 71⟩], residual := [((1 : F), 115169)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112196) * (relationLc3717 rho) = ((1 : F) * rho 115171)

def relationLc3718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 71⟩], residual := [((1 : F), 115170)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112196) * (relationLc3718 rho) = ((1 : F) * rho 115172)

def relationRow8618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115162) * ((1 : F) * rho 115163) = ((1 : F) * rho 115173)

def relationRow8619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115162) * ((1 : F) * rho 115162) = ((1 : F) * rho 115174)

def relationRow8620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115163) * ((1 : F) * rho 115163) = ((1 : F) * rho 115175)

def relationRow8621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115176) * ((-1 : F) * rho 115174 + (1 : F) * rho 115175) = ((2 : F) * rho 115173)

def relationRow8622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115177) * ((2 : F) + (1 : F) * rho 115174 + (-1 : F) * rho 115175) = ((1 : F) * rho 115174 + (1 : F) * rho 115175)

def relationLc3719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 72⟩, ⟨(1 : F), 114178, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8623 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3719 rho) = ((1 : F) * rho 115178)

def relationRow8624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115178) * ((1 : F) * rho 115176 + (1 : F) * rho 115177) = ((1 : F) * rho 115179)

def relationLc3720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115177) * (relationLc3720 rho) = ((1 : F) * rho 115180)

def relationLc3721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115176) * (relationLc3721 rho) = ((1 : F) * rho 115181)

def relationRow8627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115180) * ((1 : F) * rho 115181) = ((1 : F) * rho 115182)

def relationRow8628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115183) * ((1 : F) + (1 : F) * rho 115182) = ((1 : F) * rho 115180 + (1 : F) * rho 115181)

def relationRow8629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115184) * ((1 : F) + (-1 : F) * rho 115182) = ((1 : F) * rho 115179 + (-1 : F) * rho 115180 + (-1 : F) * rho 115181)

def relationLc3722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 72⟩], residual := [((1 : F), 115183)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112197) * (relationLc3722 rho) = ((1 : F) * rho 115185)

def relationLc3723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 72⟩], residual := [((1 : F), 115184)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112197) * (relationLc3723 rho) = ((1 : F) * rho 115186)

def relationRow8632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115176) * ((1 : F) * rho 115177) = ((1 : F) * rho 115187)

def relationRow8633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115176) * ((1 : F) * rho 115176) = ((1 : F) * rho 115188)

def relationRow8634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115177) * ((1 : F) * rho 115177) = ((1 : F) * rho 115189)

def relationRow8635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115190) * ((-1 : F) * rho 115188 + (1 : F) * rho 115189) = ((2 : F) * rho 115187)

def relationRow8636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115191) * ((2 : F) + (1 : F) * rho 115188 + (-1 : F) * rho 115189) = ((1 : F) * rho 115188 + (1 : F) * rho 115189)

def relationLc3724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 73⟩, ⟨(1 : F), 114178, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3724 rho) = ((1 : F) * rho 115192)

def relationRow8638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115192) * ((1 : F) * rho 115190 + (1 : F) * rho 115191) = ((1 : F) * rho 115193)

def relationLc3725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115191) * (relationLc3725 rho) = ((1 : F) * rho 115194)

def relationLc3726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115190) * (relationLc3726 rho) = ((1 : F) * rho 115195)

def relationRow8641 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115194) * ((1 : F) * rho 115195) = ((1 : F) * rho 115196)

def relationRow8642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115197) * ((1 : F) + (1 : F) * rho 115196) = ((1 : F) * rho 115194 + (1 : F) * rho 115195)

def relationRow8643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115198) * ((1 : F) + (-1 : F) * rho 115196) = ((1 : F) * rho 115193 + (-1 : F) * rho 115194 + (-1 : F) * rho 115195)

def relationLc3727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 73⟩], residual := [((1 : F), 115197)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112198) * (relationLc3727 rho) = ((1 : F) * rho 115199)

def relationLc3728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 73⟩], residual := [((1 : F), 115198)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112198) * (relationLc3728 rho) = ((1 : F) * rho 115200)

def relationRow8646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115190) * ((1 : F) * rho 115191) = ((1 : F) * rho 115201)

def relationRow8647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115190) * ((1 : F) * rho 115190) = ((1 : F) * rho 115202)

def relationRow8648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115191) * ((1 : F) * rho 115191) = ((1 : F) * rho 115203)

def relationRow8649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115204) * ((-1 : F) * rho 115202 + (1 : F) * rho 115203) = ((2 : F) * rho 115201)

def relationRow8650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115205) * ((2 : F) + (1 : F) * rho 115202 + (-1 : F) * rho 115203) = ((1 : F) * rho 115202 + (1 : F) * rho 115203)

def relationLc3729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 74⟩, ⟨(1 : F), 114178, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8651 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3729 rho) = ((1 : F) * rho 115206)

def relationRow8652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115206) * ((1 : F) * rho 115204 + (1 : F) * rho 115205) = ((1 : F) * rho 115207)

def relationLc3730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115205) * (relationLc3730 rho) = ((1 : F) * rho 115208)

def relationLc3731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115204) * (relationLc3731 rho) = ((1 : F) * rho 115209)

def relationRow8655 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115208) * ((1 : F) * rho 115209) = ((1 : F) * rho 115210)

def relationRow8656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115211) * ((1 : F) + (1 : F) * rho 115210) = ((1 : F) * rho 115208 + (1 : F) * rho 115209)

def relationRow8657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115212) * ((1 : F) + (-1 : F) * rho 115210) = ((1 : F) * rho 115207 + (-1 : F) * rho 115208 + (-1 : F) * rho 115209)

def relationLc3732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 74⟩], residual := [((1 : F), 115211)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112199) * (relationLc3732 rho) = ((1 : F) * rho 115213)

def relationLc3733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 74⟩], residual := [((1 : F), 115212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112199) * (relationLc3733 rho) = ((1 : F) * rho 115214)

def relationRow8660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115204) * ((1 : F) * rho 115205) = ((1 : F) * rho 115215)

def relationRow8661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115204) * ((1 : F) * rho 115204) = ((1 : F) * rho 115216)

def relationRow8662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115205) * ((1 : F) * rho 115205) = ((1 : F) * rho 115217)

def relationRow8663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115218) * ((-1 : F) * rho 115216 + (1 : F) * rho 115217) = ((2 : F) * rho 115215)

def relationRow8664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115219) * ((2 : F) + (1 : F) * rho 115216 + (-1 : F) * rho 115217) = ((1 : F) * rho 115216 + (1 : F) * rho 115217)

def relationLc3734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 75⟩, ⟨(1 : F), 114178, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8665 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3734 rho) = ((1 : F) * rho 115220)

def relationRow8666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115220) * ((1 : F) * rho 115218 + (1 : F) * rho 115219) = ((1 : F) * rho 115221)

def relationLc3735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115219) * (relationLc3735 rho) = ((1 : F) * rho 115222)

def relationLc3736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115218) * (relationLc3736 rho) = ((1 : F) * rho 115223)

def relationRow8669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115222) * ((1 : F) * rho 115223) = ((1 : F) * rho 115224)

def relationRow8670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115225) * ((1 : F) + (1 : F) * rho 115224) = ((1 : F) * rho 115222 + (1 : F) * rho 115223)

def relationRow8671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115226) * ((1 : F) + (-1 : F) * rho 115224) = ((1 : F) * rho 115221 + (-1 : F) * rho 115222 + (-1 : F) * rho 115223)

def relationLc3737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 75⟩], residual := [((1 : F), 115225)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112200) * (relationLc3737 rho) = ((1 : F) * rho 115227)

def relationLc3738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 75⟩], residual := [((1 : F), 115226)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112200) * (relationLc3738 rho) = ((1 : F) * rho 115228)

def relationRow8674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115218) * ((1 : F) * rho 115219) = ((1 : F) * rho 115229)

def relationRow8675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115218) * ((1 : F) * rho 115218) = ((1 : F) * rho 115230)

def relationRow8676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115219) * ((1 : F) * rho 115219) = ((1 : F) * rho 115231)

def relationRow8677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115232) * ((-1 : F) * rho 115230 + (1 : F) * rho 115231) = ((2 : F) * rho 115229)

def relationRow8678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115233) * ((2 : F) + (1 : F) * rho 115230 + (-1 : F) * rho 115231) = ((1 : F) * rho 115230 + (1 : F) * rho 115231)

def relationLc3739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 76⟩, ⟨(1 : F), 114178, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8679 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3739 rho) = ((1 : F) * rho 115234)

def relationRow8680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115234) * ((1 : F) * rho 115232 + (1 : F) * rho 115233) = ((1 : F) * rho 115235)

def relationLc3740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115233) * (relationLc3740 rho) = ((1 : F) * rho 115236)

def relationLc3741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115232) * (relationLc3741 rho) = ((1 : F) * rho 115237)

def relationRow8683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115236) * ((1 : F) * rho 115237) = ((1 : F) * rho 115238)

def relationRow8684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115239) * ((1 : F) + (1 : F) * rho 115238) = ((1 : F) * rho 115236 + (1 : F) * rho 115237)

def relationRow8685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115240) * ((1 : F) + (-1 : F) * rho 115238) = ((1 : F) * rho 115235 + (-1 : F) * rho 115236 + (-1 : F) * rho 115237)

def relationLc3742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 76⟩], residual := [((1 : F), 115239)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112201) * (relationLc3742 rho) = ((1 : F) * rho 115241)

def relationLc3743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 76⟩], residual := [((1 : F), 115240)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112201) * (relationLc3743 rho) = ((1 : F) * rho 115242)

def relationRow8688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115232) * ((1 : F) * rho 115233) = ((1 : F) * rho 115243)

def relationRow8689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115232) * ((1 : F) * rho 115232) = ((1 : F) * rho 115244)

def relationRow8690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115233) * ((1 : F) * rho 115233) = ((1 : F) * rho 115245)

def relationRow8691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115246) * ((-1 : F) * rho 115244 + (1 : F) * rho 115245) = ((2 : F) * rho 115243)

def relationRow8692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115247) * ((2 : F) + (1 : F) * rho 115244 + (-1 : F) * rho 115245) = ((1 : F) * rho 115244 + (1 : F) * rho 115245)

def relationLc3744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 77⟩, ⟨(1 : F), 114178, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8693 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3744 rho) = ((1 : F) * rho 115248)

def relationRow8694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115248) * ((1 : F) * rho 115246 + (1 : F) * rho 115247) = ((1 : F) * rho 115249)

def relationLc3745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115247) * (relationLc3745 rho) = ((1 : F) * rho 115250)

def relationLc3746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115246) * (relationLc3746 rho) = ((1 : F) * rho 115251)

def relationRow8697 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115250) * ((1 : F) * rho 115251) = ((1 : F) * rho 115252)

def relationRow8698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115253) * ((1 : F) + (1 : F) * rho 115252) = ((1 : F) * rho 115250 + (1 : F) * rho 115251)

def relationRow8699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115254) * ((1 : F) + (-1 : F) * rho 115252) = ((1 : F) * rho 115249 + (-1 : F) * rho 115250 + (-1 : F) * rho 115251)

def relationLc3747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 77⟩], residual := [((1 : F), 115253)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112202) * (relationLc3747 rho) = ((1 : F) * rho 115255)

def relationLc3748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 77⟩], residual := [((1 : F), 115254)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112202) * (relationLc3748 rho) = ((1 : F) * rho 115256)

def relationRow8702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115246) * ((1 : F) * rho 115247) = ((1 : F) * rho 115257)

def relationRow8703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115246) * ((1 : F) * rho 115246) = ((1 : F) * rho 115258)

def relationRow8704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115247) * ((1 : F) * rho 115247) = ((1 : F) * rho 115259)

def relationRow8705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115260) * ((-1 : F) * rho 115258 + (1 : F) * rho 115259) = ((2 : F) * rho 115257)

def relationRow8706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115261) * ((2 : F) + (1 : F) * rho 115258 + (-1 : F) * rho 115259) = ((1 : F) * rho 115258 + (1 : F) * rho 115259)

def relationLc3749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 78⟩, ⟨(1 : F), 114178, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8707 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3749 rho) = ((1 : F) * rho 115262)

def relationRow8708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115262) * ((1 : F) * rho 115260 + (1 : F) * rho 115261) = ((1 : F) * rho 115263)

def relationLc3750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115261) * (relationLc3750 rho) = ((1 : F) * rho 115264)

def relationLc3751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115260) * (relationLc3751 rho) = ((1 : F) * rho 115265)

def relationRow8711 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115264) * ((1 : F) * rho 115265) = ((1 : F) * rho 115266)

def relationRow8712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115267) * ((1 : F) + (1 : F) * rho 115266) = ((1 : F) * rho 115264 + (1 : F) * rho 115265)

def relationRow8713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115268) * ((1 : F) + (-1 : F) * rho 115266) = ((1 : F) * rho 115263 + (-1 : F) * rho 115264 + (-1 : F) * rho 115265)

def relationLc3752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 78⟩], residual := [((1 : F), 115267)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112203) * (relationLc3752 rho) = ((1 : F) * rho 115269)

def relationLc3753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 78⟩], residual := [((1 : F), 115268)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112203) * (relationLc3753 rho) = ((1 : F) * rho 115270)

def relationRow8716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115260) * ((1 : F) * rho 115261) = ((1 : F) * rho 115271)

def relationRow8717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115260) * ((1 : F) * rho 115260) = ((1 : F) * rho 115272)

def relationRow8718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115261) * ((1 : F) * rho 115261) = ((1 : F) * rho 115273)

def relationRow8719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115274) * ((-1 : F) * rho 115272 + (1 : F) * rho 115273) = ((2 : F) * rho 115271)

def relationRow8720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115275) * ((2 : F) + (1 : F) * rho 115272 + (-1 : F) * rho 115273) = ((1 : F) * rho 115272 + (1 : F) * rho 115273)

def relationLc3754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 79⟩, ⟨(1 : F), 114178, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8721 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3754 rho) = ((1 : F) * rho 115276)

def relationRow8722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115276) * ((1 : F) * rho 115274 + (1 : F) * rho 115275) = ((1 : F) * rho 115277)

def relationLc3755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115275) * (relationLc3755 rho) = ((1 : F) * rho 115278)

def relationLc3756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115274) * (relationLc3756 rho) = ((1 : F) * rho 115279)

def relationRow8725 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115278) * ((1 : F) * rho 115279) = ((1 : F) * rho 115280)

def relationRow8726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115281) * ((1 : F) + (1 : F) * rho 115280) = ((1 : F) * rho 115278 + (1 : F) * rho 115279)

def relationRow8727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115282) * ((1 : F) + (-1 : F) * rho 115280) = ((1 : F) * rho 115277 + (-1 : F) * rho 115278 + (-1 : F) * rho 115279)

def relationLc3757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 79⟩], residual := [((1 : F), 115281)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112204) * (relationLc3757 rho) = ((1 : F) * rho 115283)

def relationLc3758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 79⟩], residual := [((1 : F), 115282)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112204) * (relationLc3758 rho) = ((1 : F) * rho 115284)

def relationRow8730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115274) * ((1 : F) * rho 115275) = ((1 : F) * rho 115285)

def relationRow8731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115274) * ((1 : F) * rho 115274) = ((1 : F) * rho 115286)

def relationRow8732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115275) * ((1 : F) * rho 115275) = ((1 : F) * rho 115287)

def relationRow8733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115288) * ((-1 : F) * rho 115286 + (1 : F) * rho 115287) = ((2 : F) * rho 115285)

def relationRow8734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115289) * ((2 : F) + (1 : F) * rho 115286 + (-1 : F) * rho 115287) = ((1 : F) * rho 115286 + (1 : F) * rho 115287)

def relationLc3759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 80⟩, ⟨(1 : F), 114178, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8735 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3759 rho) = ((1 : F) * rho 115290)

def relationRow8736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115290) * ((1 : F) * rho 115288 + (1 : F) * rho 115289) = ((1 : F) * rho 115291)

def relationLc3760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115289) * (relationLc3760 rho) = ((1 : F) * rho 115292)

def relationLc3761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115288) * (relationLc3761 rho) = ((1 : F) * rho 115293)

def relationRow8739 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115292) * ((1 : F) * rho 115293) = ((1 : F) * rho 115294)

def relationRow8740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115295) * ((1 : F) + (1 : F) * rho 115294) = ((1 : F) * rho 115292 + (1 : F) * rho 115293)

def relationRow8741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115296) * ((1 : F) + (-1 : F) * rho 115294) = ((1 : F) * rho 115291 + (-1 : F) * rho 115292 + (-1 : F) * rho 115293)

def relationLc3762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 80⟩], residual := [((1 : F), 115295)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112205) * (relationLc3762 rho) = ((1 : F) * rho 115297)

def relationLc3763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 80⟩], residual := [((1 : F), 115296)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112205) * (relationLc3763 rho) = ((1 : F) * rho 115298)

def relationRow8744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115288) * ((1 : F) * rho 115289) = ((1 : F) * rho 115299)

def relationRow8745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115288) * ((1 : F) * rho 115288) = ((1 : F) * rho 115300)

def relationRow8746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115289) * ((1 : F) * rho 115289) = ((1 : F) * rho 115301)

def relationRow8747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115302) * ((-1 : F) * rho 115300 + (1 : F) * rho 115301) = ((2 : F) * rho 115299)

def relationRow8748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115303) * ((2 : F) + (1 : F) * rho 115300 + (-1 : F) * rho 115301) = ((1 : F) * rho 115300 + (1 : F) * rho 115301)

def relationLc3764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 81⟩, ⟨(1 : F), 114178, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3764 rho) = ((1 : F) * rho 115304)

def relationRow8750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115304) * ((1 : F) * rho 115302 + (1 : F) * rho 115303) = ((1 : F) * rho 115305)

def relationLc3765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115303) * (relationLc3765 rho) = ((1 : F) * rho 115306)

def relationLc3766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115302) * (relationLc3766 rho) = ((1 : F) * rho 115307)

def relationRow8753 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115306) * ((1 : F) * rho 115307) = ((1 : F) * rho 115308)

def relationRow8754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115309) * ((1 : F) + (1 : F) * rho 115308) = ((1 : F) * rho 115306 + (1 : F) * rho 115307)

def relationRow8755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115310) * ((1 : F) + (-1 : F) * rho 115308) = ((1 : F) * rho 115305 + (-1 : F) * rho 115306 + (-1 : F) * rho 115307)

def relationLc3767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 81⟩], residual := [((1 : F), 115309)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112206) * (relationLc3767 rho) = ((1 : F) * rho 115311)

def relationLc3768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 81⟩], residual := [((1 : F), 115310)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112206) * (relationLc3768 rho) = ((1 : F) * rho 115312)

def relationRow8758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115302) * ((1 : F) * rho 115303) = ((1 : F) * rho 115313)

def relationRow8759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115302) * ((1 : F) * rho 115302) = ((1 : F) * rho 115314)

def relationRow8760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115303) * ((1 : F) * rho 115303) = ((1 : F) * rho 115315)

def relationRow8761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115316) * ((-1 : F) * rho 115314 + (1 : F) * rho 115315) = ((2 : F) * rho 115313)

def relationRow8762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115317) * ((2 : F) + (1 : F) * rho 115314 + (-1 : F) * rho 115315) = ((1 : F) * rho 115314 + (1 : F) * rho 115315)

def relationLc3769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 82⟩, ⟨(1 : F), 114178, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8763 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3769 rho) = ((1 : F) * rho 115318)

def relationRow8764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115318) * ((1 : F) * rho 115316 + (1 : F) * rho 115317) = ((1 : F) * rho 115319)

def relationLc3770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115317) * (relationLc3770 rho) = ((1 : F) * rho 115320)

def relationLc3771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115316) * (relationLc3771 rho) = ((1 : F) * rho 115321)

def relationRow8767 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115320) * ((1 : F) * rho 115321) = ((1 : F) * rho 115322)

def relationRow8768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115323) * ((1 : F) + (1 : F) * rho 115322) = ((1 : F) * rho 115320 + (1 : F) * rho 115321)

def relationRow8769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115324) * ((1 : F) + (-1 : F) * rho 115322) = ((1 : F) * rho 115319 + (-1 : F) * rho 115320 + (-1 : F) * rho 115321)

def relationLc3772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 82⟩], residual := [((1 : F), 115323)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112207) * (relationLc3772 rho) = ((1 : F) * rho 115325)

def relationLc3773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 82⟩], residual := [((1 : F), 115324)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112207) * (relationLc3773 rho) = ((1 : F) * rho 115326)

def relationRow8772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115316) * ((1 : F) * rho 115317) = ((1 : F) * rho 115327)

def relationRow8773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115316) * ((1 : F) * rho 115316) = ((1 : F) * rho 115328)

def relationRow8774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115317) * ((1 : F) * rho 115317) = ((1 : F) * rho 115329)

def relationRow8775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115330) * ((-1 : F) * rho 115328 + (1 : F) * rho 115329) = ((2 : F) * rho 115327)

def relationRow8776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115331) * ((2 : F) + (1 : F) * rho 115328 + (-1 : F) * rho 115329) = ((1 : F) * rho 115328 + (1 : F) * rho 115329)

def relationLc3774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 83⟩, ⟨(1 : F), 114178, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8777 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3774 rho) = ((1 : F) * rho 115332)

def relationRow8778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115332) * ((1 : F) * rho 115330 + (1 : F) * rho 115331) = ((1 : F) * rho 115333)

def relationLc3775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115331) * (relationLc3775 rho) = ((1 : F) * rho 115334)

def relationLc3776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115330) * (relationLc3776 rho) = ((1 : F) * rho 115335)

def relationRow8781 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115334) * ((1 : F) * rho 115335) = ((1 : F) * rho 115336)

def relationRow8782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115337) * ((1 : F) + (1 : F) * rho 115336) = ((1 : F) * rho 115334 + (1 : F) * rho 115335)

def relationRow8783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115338) * ((1 : F) + (-1 : F) * rho 115336) = ((1 : F) * rho 115333 + (-1 : F) * rho 115334 + (-1 : F) * rho 115335)

def relationLc3777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 83⟩], residual := [((1 : F), 115337)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112208) * (relationLc3777 rho) = ((1 : F) * rho 115339)

def relationLc3778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 83⟩], residual := [((1 : F), 115338)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112208) * (relationLc3778 rho) = ((1 : F) * rho 115340)

def relationRow8786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115330) * ((1 : F) * rho 115331) = ((1 : F) * rho 115341)

def relationRow8787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115330) * ((1 : F) * rho 115330) = ((1 : F) * rho 115342)

def relationRow8788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115331) * ((1 : F) * rho 115331) = ((1 : F) * rho 115343)

def relationRow8789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115344) * ((-1 : F) * rho 115342 + (1 : F) * rho 115343) = ((2 : F) * rho 115341)

def relationRow8790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115345) * ((2 : F) + (1 : F) * rho 115342 + (-1 : F) * rho 115343) = ((1 : F) * rho 115342 + (1 : F) * rho 115343)

def relationLc3779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 84⟩, ⟨(1 : F), 114178, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8791 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3779 rho) = ((1 : F) * rho 115346)

def relationRow8792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115346) * ((1 : F) * rho 115344 + (1 : F) * rho 115345) = ((1 : F) * rho 115347)

def relationLc3780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115345) * (relationLc3780 rho) = ((1 : F) * rho 115348)

def relationLc3781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115344) * (relationLc3781 rho) = ((1 : F) * rho 115349)

def relationRow8795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115348) * ((1 : F) * rho 115349) = ((1 : F) * rho 115350)

def relationRow8796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115351) * ((1 : F) + (1 : F) * rho 115350) = ((1 : F) * rho 115348 + (1 : F) * rho 115349)

def relationRow8797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115352) * ((1 : F) + (-1 : F) * rho 115350) = ((1 : F) * rho 115347 + (-1 : F) * rho 115348 + (-1 : F) * rho 115349)

def relationLc3782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 84⟩], residual := [((1 : F), 115351)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112209) * (relationLc3782 rho) = ((1 : F) * rho 115353)

def relationLc3783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 84⟩], residual := [((1 : F), 115352)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112209) * (relationLc3783 rho) = ((1 : F) * rho 115354)

def relationRow8800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115344) * ((1 : F) * rho 115345) = ((1 : F) * rho 115355)

def relationRow8801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115344) * ((1 : F) * rho 115344) = ((1 : F) * rho 115356)

def relationRow8802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115345) * ((1 : F) * rho 115345) = ((1 : F) * rho 115357)

def relationRow8803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115358) * ((-1 : F) * rho 115356 + (1 : F) * rho 115357) = ((2 : F) * rho 115355)

def relationRow8804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115359) * ((2 : F) + (1 : F) * rho 115356 + (-1 : F) * rho 115357) = ((1 : F) * rho 115356 + (1 : F) * rho 115357)

def relationLc3784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 85⟩, ⟨(1 : F), 114178, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8805 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3784 rho) = ((1 : F) * rho 115360)

def relationRow8806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115360) * ((1 : F) * rho 115358 + (1 : F) * rho 115359) = ((1 : F) * rho 115361)

def relationLc3785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115359) * (relationLc3785 rho) = ((1 : F) * rho 115362)

def relationLc3786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115358) * (relationLc3786 rho) = ((1 : F) * rho 115363)

def relationRow8809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115362) * ((1 : F) * rho 115363) = ((1 : F) * rho 115364)

def relationRow8810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115365) * ((1 : F) + (1 : F) * rho 115364) = ((1 : F) * rho 115362 + (1 : F) * rho 115363)

def relationRow8811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115366) * ((1 : F) + (-1 : F) * rho 115364) = ((1 : F) * rho 115361 + (-1 : F) * rho 115362 + (-1 : F) * rho 115363)

def relationLc3787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 85⟩], residual := [((1 : F), 115365)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112210) * (relationLc3787 rho) = ((1 : F) * rho 115367)

def relationLc3788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 85⟩], residual := [((1 : F), 115366)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112210) * (relationLc3788 rho) = ((1 : F) * rho 115368)

def relationRow8814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115358) * ((1 : F) * rho 115359) = ((1 : F) * rho 115369)

def relationRow8815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115358) * ((1 : F) * rho 115358) = ((1 : F) * rho 115370)

def relationRow8816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115359) * ((1 : F) * rho 115359) = ((1 : F) * rho 115371)

def relationRow8817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115372) * ((-1 : F) * rho 115370 + (1 : F) * rho 115371) = ((2 : F) * rho 115369)

def relationRow8818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115373) * ((2 : F) + (1 : F) * rho 115370 + (-1 : F) * rho 115371) = ((1 : F) * rho 115370 + (1 : F) * rho 115371)

def relationLc3789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 86⟩, ⟨(1 : F), 114178, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8819 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3789 rho) = ((1 : F) * rho 115374)

def relationRow8820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115374) * ((1 : F) * rho 115372 + (1 : F) * rho 115373) = ((1 : F) * rho 115375)

def relationLc3790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115373) * (relationLc3790 rho) = ((1 : F) * rho 115376)

def relationLc3791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115372) * (relationLc3791 rho) = ((1 : F) * rho 115377)

def relationRow8823 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115376) * ((1 : F) * rho 115377) = ((1 : F) * rho 115378)

def relationRow8824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115379) * ((1 : F) + (1 : F) * rho 115378) = ((1 : F) * rho 115376 + (1 : F) * rho 115377)

def relationRow8825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115380) * ((1 : F) + (-1 : F) * rho 115378) = ((1 : F) * rho 115375 + (-1 : F) * rho 115376 + (-1 : F) * rho 115377)

def relationLc3792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 86⟩], residual := [((1 : F), 115379)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112211) * (relationLc3792 rho) = ((1 : F) * rho 115381)

def relationLc3793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 86⟩], residual := [((1 : F), 115380)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112211) * (relationLc3793 rho) = ((1 : F) * rho 115382)

def relationRow8828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115372) * ((1 : F) * rho 115373) = ((1 : F) * rho 115383)

def relationRow8829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115372) * ((1 : F) * rho 115372) = ((1 : F) * rho 115384)

def relationRow8830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115373) * ((1 : F) * rho 115373) = ((1 : F) * rho 115385)

def relationRow8831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115386) * ((-1 : F) * rho 115384 + (1 : F) * rho 115385) = ((2 : F) * rho 115383)

def relationRow8832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115387) * ((2 : F) + (1 : F) * rho 115384 + (-1 : F) * rho 115385) = ((1 : F) * rho 115384 + (1 : F) * rho 115385)

def relationLc3794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 87⟩, ⟨(1 : F), 114178, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8833 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3794 rho) = ((1 : F) * rho 115388)

def relationRow8834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115388) * ((1 : F) * rho 115386 + (1 : F) * rho 115387) = ((1 : F) * rho 115389)

def relationLc3795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115387) * (relationLc3795 rho) = ((1 : F) * rho 115390)

def relationLc3796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115386) * (relationLc3796 rho) = ((1 : F) * rho 115391)

def relationRow8837 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115390) * ((1 : F) * rho 115391) = ((1 : F) * rho 115392)

def relationRow8838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115393) * ((1 : F) + (1 : F) * rho 115392) = ((1 : F) * rho 115390 + (1 : F) * rho 115391)

def relationRow8839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115394) * ((1 : F) + (-1 : F) * rho 115392) = ((1 : F) * rho 115389 + (-1 : F) * rho 115390 + (-1 : F) * rho 115391)

def relationLc3797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 87⟩], residual := [((1 : F), 115393)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112212) * (relationLc3797 rho) = ((1 : F) * rho 115395)

def relationLc3798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 87⟩], residual := [((1 : F), 115394)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112212) * (relationLc3798 rho) = ((1 : F) * rho 115396)

def relationRow8842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115386) * ((1 : F) * rho 115387) = ((1 : F) * rho 115397)

def relationRow8843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115386) * ((1 : F) * rho 115386) = ((1 : F) * rho 115398)

def relationRow8844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115387) * ((1 : F) * rho 115387) = ((1 : F) * rho 115399)

def relationRow8845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115400) * ((-1 : F) * rho 115398 + (1 : F) * rho 115399) = ((2 : F) * rho 115397)

def relationRow8846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115401) * ((2 : F) + (1 : F) * rho 115398 + (-1 : F) * rho 115399) = ((1 : F) * rho 115398 + (1 : F) * rho 115399)

def relationLc3799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 88⟩, ⟨(1 : F), 114178, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8847 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3799 rho) = ((1 : F) * rho 115402)

def relationRow8848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115402) * ((1 : F) * rho 115400 + (1 : F) * rho 115401) = ((1 : F) * rho 115403)

def relationLc3800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115401) * (relationLc3800 rho) = ((1 : F) * rho 115404)

def relationLc3801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115400) * (relationLc3801 rho) = ((1 : F) * rho 115405)

def relationRow8851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115404) * ((1 : F) * rho 115405) = ((1 : F) * rho 115406)

def relationRow8852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115407) * ((1 : F) + (1 : F) * rho 115406) = ((1 : F) * rho 115404 + (1 : F) * rho 115405)

def relationRow8853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115408) * ((1 : F) + (-1 : F) * rho 115406) = ((1 : F) * rho 115403 + (-1 : F) * rho 115404 + (-1 : F) * rho 115405)

def relationLc3802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 88⟩], residual := [((1 : F), 115407)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112213) * (relationLc3802 rho) = ((1 : F) * rho 115409)

def relationLc3803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 88⟩], residual := [((1 : F), 115408)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112213) * (relationLc3803 rho) = ((1 : F) * rho 115410)

def relationRow8856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115400) * ((1 : F) * rho 115401) = ((1 : F) * rho 115411)

def relationRow8857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115400) * ((1 : F) * rho 115400) = ((1 : F) * rho 115412)

def relationRow8858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115401) * ((1 : F) * rho 115401) = ((1 : F) * rho 115413)

def relationRow8859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115414) * ((-1 : F) * rho 115412 + (1 : F) * rho 115413) = ((2 : F) * rho 115411)

def relationRow8860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115415) * ((2 : F) + (1 : F) * rho 115412 + (-1 : F) * rho 115413) = ((1 : F) * rho 115412 + (1 : F) * rho 115413)

def relationLc3804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 89⟩, ⟨(1 : F), 114178, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8861 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3804 rho) = ((1 : F) * rho 115416)

def relationRow8862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115416) * ((1 : F) * rho 115414 + (1 : F) * rho 115415) = ((1 : F) * rho 115417)

def relationLc3805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115415) * (relationLc3805 rho) = ((1 : F) * rho 115418)

def relationLc3806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115414) * (relationLc3806 rho) = ((1 : F) * rho 115419)

def relationRow8865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115418) * ((1 : F) * rho 115419) = ((1 : F) * rho 115420)

def relationRow8866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115421) * ((1 : F) + (1 : F) * rho 115420) = ((1 : F) * rho 115418 + (1 : F) * rho 115419)

def relationRow8867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115422) * ((1 : F) + (-1 : F) * rho 115420) = ((1 : F) * rho 115417 + (-1 : F) * rho 115418 + (-1 : F) * rho 115419)

def relationLc3807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 89⟩], residual := [((1 : F), 115421)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112214) * (relationLc3807 rho) = ((1 : F) * rho 115423)

def relationLc3808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 89⟩], residual := [((1 : F), 115422)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112214) * (relationLc3808 rho) = ((1 : F) * rho 115424)

def relationRow8870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115414) * ((1 : F) * rho 115415) = ((1 : F) * rho 115425)

def relationRow8871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115414) * ((1 : F) * rho 115414) = ((1 : F) * rho 115426)

def relationRow8872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115415) * ((1 : F) * rho 115415) = ((1 : F) * rho 115427)

def relationRow8873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115428) * ((-1 : F) * rho 115426 + (1 : F) * rho 115427) = ((2 : F) * rho 115425)

def relationRow8874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115429) * ((2 : F) + (1 : F) * rho 115426 + (-1 : F) * rho 115427) = ((1 : F) * rho 115426 + (1 : F) * rho 115427)

def relationLc3809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 90⟩, ⟨(1 : F), 114178, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8875 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3809 rho) = ((1 : F) * rho 115430)

def relationRow8876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115430) * ((1 : F) * rho 115428 + (1 : F) * rho 115429) = ((1 : F) * rho 115431)

def relationLc3810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115429) * (relationLc3810 rho) = ((1 : F) * rho 115432)

def relationLc3811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115428) * (relationLc3811 rho) = ((1 : F) * rho 115433)

def relationRow8879 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115432) * ((1 : F) * rho 115433) = ((1 : F) * rho 115434)

def relationRow8880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115435) * ((1 : F) + (1 : F) * rho 115434) = ((1 : F) * rho 115432 + (1 : F) * rho 115433)

def relationRow8881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115436) * ((1 : F) + (-1 : F) * rho 115434) = ((1 : F) * rho 115431 + (-1 : F) * rho 115432 + (-1 : F) * rho 115433)

def relationLc3812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 90⟩], residual := [((1 : F), 115435)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112215) * (relationLc3812 rho) = ((1 : F) * rho 115437)

def relationLc3813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 90⟩], residual := [((1 : F), 115436)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112215) * (relationLc3813 rho) = ((1 : F) * rho 115438)

def relationRow8884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115428) * ((1 : F) * rho 115429) = ((1 : F) * rho 115439)

def relationRow8885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115428) * ((1 : F) * rho 115428) = ((1 : F) * rho 115440)

def relationRow8886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115429) * ((1 : F) * rho 115429) = ((1 : F) * rho 115441)

def relationRow8887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115442) * ((-1 : F) * rho 115440 + (1 : F) * rho 115441) = ((2 : F) * rho 115439)

def relationRow8888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115443) * ((2 : F) + (1 : F) * rho 115440 + (-1 : F) * rho 115441) = ((1 : F) * rho 115440 + (1 : F) * rho 115441)

def relationLc3814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 91⟩, ⟨(1 : F), 114178, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8889 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3814 rho) = ((1 : F) * rho 115444)

def relationRow8890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115444) * ((1 : F) * rho 115442 + (1 : F) * rho 115443) = ((1 : F) * rho 115445)

def relationLc3815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115443) * (relationLc3815 rho) = ((1 : F) * rho 115446)

def relationLc3816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115442) * (relationLc3816 rho) = ((1 : F) * rho 115447)

def relationRow8893 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115446) * ((1 : F) * rho 115447) = ((1 : F) * rho 115448)

def relationRow8894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115449) * ((1 : F) + (1 : F) * rho 115448) = ((1 : F) * rho 115446 + (1 : F) * rho 115447)

def relationRow8895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115450) * ((1 : F) + (-1 : F) * rho 115448) = ((1 : F) * rho 115445 + (-1 : F) * rho 115446 + (-1 : F) * rho 115447)

def relationLc3817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 91⟩], residual := [((1 : F), 115449)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112216) * (relationLc3817 rho) = ((1 : F) * rho 115451)

def relationLc3818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 91⟩], residual := [((1 : F), 115450)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112216) * (relationLc3818 rho) = ((1 : F) * rho 115452)

def relationRow8898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115442) * ((1 : F) * rho 115443) = ((1 : F) * rho 115453)

def relationRow8899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115442) * ((1 : F) * rho 115442) = ((1 : F) * rho 115454)

def relationRow8900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115443) * ((1 : F) * rho 115443) = ((1 : F) * rho 115455)

def relationRow8901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115456) * ((-1 : F) * rho 115454 + (1 : F) * rho 115455) = ((2 : F) * rho 115453)

def relationRow8902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115457) * ((2 : F) + (1 : F) * rho 115454 + (-1 : F) * rho 115455) = ((1 : F) * rho 115454 + (1 : F) * rho 115455)

def relationLc3819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 92⟩, ⟨(1 : F), 114178, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8903 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3819 rho) = ((1 : F) * rho 115458)

def relationRow8904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115458) * ((1 : F) * rho 115456 + (1 : F) * rho 115457) = ((1 : F) * rho 115459)

def relationLc3820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115457) * (relationLc3820 rho) = ((1 : F) * rho 115460)

def relationLc3821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115456) * (relationLc3821 rho) = ((1 : F) * rho 115461)

def relationRow8907 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115460) * ((1 : F) * rho 115461) = ((1 : F) * rho 115462)

def relationRow8908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115463) * ((1 : F) + (1 : F) * rho 115462) = ((1 : F) * rho 115460 + (1 : F) * rho 115461)

def relationRow8909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115464) * ((1 : F) + (-1 : F) * rho 115462) = ((1 : F) * rho 115459 + (-1 : F) * rho 115460 + (-1 : F) * rho 115461)

def relationLc3822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 92⟩], residual := [((1 : F), 115463)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112217) * (relationLc3822 rho) = ((1 : F) * rho 115465)

def relationLc3823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 92⟩], residual := [((1 : F), 115464)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112217) * (relationLc3823 rho) = ((1 : F) * rho 115466)

def relationRow8912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115456) * ((1 : F) * rho 115457) = ((1 : F) * rho 115467)

def relationRow8913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115456) * ((1 : F) * rho 115456) = ((1 : F) * rho 115468)

def relationRow8914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115457) * ((1 : F) * rho 115457) = ((1 : F) * rho 115469)

def relationRow8915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115470) * ((-1 : F) * rho 115468 + (1 : F) * rho 115469) = ((2 : F) * rho 115467)

def relationRow8916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115471) * ((2 : F) + (1 : F) * rho 115468 + (-1 : F) * rho 115469) = ((1 : F) * rho 115468 + (1 : F) * rho 115469)

def relationLc3824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 93⟩, ⟨(1 : F), 114178, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8917 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3824 rho) = ((1 : F) * rho 115472)

def relationRow8918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115472) * ((1 : F) * rho 115470 + (1 : F) * rho 115471) = ((1 : F) * rho 115473)

def relationLc3825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115471) * (relationLc3825 rho) = ((1 : F) * rho 115474)

def relationLc3826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115470) * (relationLc3826 rho) = ((1 : F) * rho 115475)

def relationRow8921 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115474) * ((1 : F) * rho 115475) = ((1 : F) * rho 115476)

def relationRow8922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115477) * ((1 : F) + (1 : F) * rho 115476) = ((1 : F) * rho 115474 + (1 : F) * rho 115475)

def relationRow8923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115478) * ((1 : F) + (-1 : F) * rho 115476) = ((1 : F) * rho 115473 + (-1 : F) * rho 115474 + (-1 : F) * rho 115475)

def relationLc3827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 93⟩], residual := [((1 : F), 115477)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112218) * (relationLc3827 rho) = ((1 : F) * rho 115479)

def relationLc3828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 93⟩], residual := [((1 : F), 115478)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112218) * (relationLc3828 rho) = ((1 : F) * rho 115480)

def relationRow8926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115470) * ((1 : F) * rho 115471) = ((1 : F) * rho 115481)

def relationRow8927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115470) * ((1 : F) * rho 115470) = ((1 : F) * rho 115482)

def relationRow8928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115471) * ((1 : F) * rho 115471) = ((1 : F) * rho 115483)

def relationRow8929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115484) * ((-1 : F) * rho 115482 + (1 : F) * rho 115483) = ((2 : F) * rho 115481)

def relationRow8930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115485) * ((2 : F) + (1 : F) * rho 115482 + (-1 : F) * rho 115483) = ((1 : F) * rho 115482 + (1 : F) * rho 115483)

def relationLc3829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 94⟩, ⟨(1 : F), 114178, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8931 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3829 rho) = ((1 : F) * rho 115486)

def relationRow8932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115486) * ((1 : F) * rho 115484 + (1 : F) * rho 115485) = ((1 : F) * rho 115487)

def relationLc3830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115485) * (relationLc3830 rho) = ((1 : F) * rho 115488)

def relationLc3831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115484) * (relationLc3831 rho) = ((1 : F) * rho 115489)

def relationRow8935 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115488) * ((1 : F) * rho 115489) = ((1 : F) * rho 115490)

def relationRow8936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115491) * ((1 : F) + (1 : F) * rho 115490) = ((1 : F) * rho 115488 + (1 : F) * rho 115489)

def relationRow8937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115492) * ((1 : F) + (-1 : F) * rho 115490) = ((1 : F) * rho 115487 + (-1 : F) * rho 115488 + (-1 : F) * rho 115489)

def relationLc3832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 94⟩], residual := [((1 : F), 115491)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112219) * (relationLc3832 rho) = ((1 : F) * rho 115493)

def relationLc3833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 94⟩], residual := [((1 : F), 115492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112219) * (relationLc3833 rho) = ((1 : F) * rho 115494)

def relationRow8940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115484) * ((1 : F) * rho 115485) = ((1 : F) * rho 115495)

def relationRow8941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115484) * ((1 : F) * rho 115484) = ((1 : F) * rho 115496)

def relationRow8942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115485) * ((1 : F) * rho 115485) = ((1 : F) * rho 115497)

def relationRow8943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115498) * ((-1 : F) * rho 115496 + (1 : F) * rho 115497) = ((2 : F) * rho 115495)

def relationRow8944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115499) * ((2 : F) + (1 : F) * rho 115496 + (-1 : F) * rho 115497) = ((1 : F) * rho 115496 + (1 : F) * rho 115497)

def relationLc3834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 95⟩, ⟨(1 : F), 114178, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8945 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3834 rho) = ((1 : F) * rho 115500)

def relationRow8946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115500) * ((1 : F) * rho 115498 + (1 : F) * rho 115499) = ((1 : F) * rho 115501)

def relationLc3835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115499) * (relationLc3835 rho) = ((1 : F) * rho 115502)

def relationLc3836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115498) * (relationLc3836 rho) = ((1 : F) * rho 115503)

def relationRow8949 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115502) * ((1 : F) * rho 115503) = ((1 : F) * rho 115504)

def relationRow8950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115505) * ((1 : F) + (1 : F) * rho 115504) = ((1 : F) * rho 115502 + (1 : F) * rho 115503)

def relationRow8951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115506) * ((1 : F) + (-1 : F) * rho 115504) = ((1 : F) * rho 115501 + (-1 : F) * rho 115502 + (-1 : F) * rho 115503)

def relationLc3837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 95⟩], residual := [((1 : F), 115505)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112220) * (relationLc3837 rho) = ((1 : F) * rho 115507)

def relationLc3838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 95⟩], residual := [((1 : F), 115506)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112220) * (relationLc3838 rho) = ((1 : F) * rho 115508)

def relationRow8954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115498) * ((1 : F) * rho 115499) = ((1 : F) * rho 115509)

def relationRow8955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115498) * ((1 : F) * rho 115498) = ((1 : F) * rho 115510)

def relationRow8956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115499) * ((1 : F) * rho 115499) = ((1 : F) * rho 115511)

def relationRow8957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115512) * ((-1 : F) * rho 115510 + (1 : F) * rho 115511) = ((2 : F) * rho 115509)

def relationRow8958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115513) * ((2 : F) + (1 : F) * rho 115510 + (-1 : F) * rho 115511) = ((1 : F) * rho 115510 + (1 : F) * rho 115511)

def relationLc3839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 96⟩, ⟨(1 : F), 114178, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8959 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3839 rho) = ((1 : F) * rho 115514)

def relationRow8960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115514) * ((1 : F) * rho 115512 + (1 : F) * rho 115513) = ((1 : F) * rho 115515)

def relationLc3840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115513) * (relationLc3840 rho) = ((1 : F) * rho 115516)

def relationLc3841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115512) * (relationLc3841 rho) = ((1 : F) * rho 115517)

def relationRow8963 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115516) * ((1 : F) * rho 115517) = ((1 : F) * rho 115518)

def relationRow8964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115519) * ((1 : F) + (1 : F) * rho 115518) = ((1 : F) * rho 115516 + (1 : F) * rho 115517)

def relationRow8965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115520) * ((1 : F) + (-1 : F) * rho 115518) = ((1 : F) * rho 115515 + (-1 : F) * rho 115516 + (-1 : F) * rho 115517)

def relationLc3842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 96⟩], residual := [((1 : F), 115519)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112221) * (relationLc3842 rho) = ((1 : F) * rho 115521)

def relationLc3843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 96⟩], residual := [((1 : F), 115520)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112221) * (relationLc3843 rho) = ((1 : F) * rho 115522)

def relationRow8968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115512) * ((1 : F) * rho 115513) = ((1 : F) * rho 115523)

def relationRow8969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115512) * ((1 : F) * rho 115512) = ((1 : F) * rho 115524)

def relationRow8970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115513) * ((1 : F) * rho 115513) = ((1 : F) * rho 115525)

def relationRow8971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115526) * ((-1 : F) * rho 115524 + (1 : F) * rho 115525) = ((2 : F) * rho 115523)

def relationRow8972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115527) * ((2 : F) + (1 : F) * rho 115524 + (-1 : F) * rho 115525) = ((1 : F) * rho 115524 + (1 : F) * rho 115525)

def relationLc3844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 97⟩, ⟨(1 : F), 114178, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8973 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3844 rho) = ((1 : F) * rho 115528)

def relationRow8974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115528) * ((1 : F) * rho 115526 + (1 : F) * rho 115527) = ((1 : F) * rho 115529)

def relationLc3845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115527) * (relationLc3845 rho) = ((1 : F) * rho 115530)

def relationLc3846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115526) * (relationLc3846 rho) = ((1 : F) * rho 115531)

def relationRow8977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 115530) * ((1 : F) * rho 115531) = ((1 : F) * rho 115532)

def relationRow8978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115533) * ((1 : F) + (1 : F) * rho 115532) = ((1 : F) * rho 115530 + (1 : F) * rho 115531)

def relationRow8979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115534) * ((1 : F) + (-1 : F) * rho 115532) = ((1 : F) * rho 115529 + (-1 : F) * rho 115530 + (-1 : F) * rho 115531)

def relationLc3847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 97⟩], residual := [((1 : F), 115533)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112222) * (relationLc3847 rho) = ((1 : F) * rho 115535)

def relationLc3848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 97⟩], residual := [((1 : F), 115534)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112222) * (relationLc3848 rho) = ((1 : F) * rho 115536)

def relationRow8982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115526) * ((1 : F) * rho 115527) = ((1 : F) * rho 115537)

def relationRow8983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115526) * ((1 : F) * rho 115526) = ((1 : F) * rho 115538)

def relationRow8984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115527) * ((1 : F) * rho 115527) = ((1 : F) * rho 115539)

def relationRow8985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115540) * ((-1 : F) * rho 115538 + (1 : F) * rho 115539) = ((2 : F) * rho 115537)

def relationRow8986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115541) * ((2 : F) + (1 : F) * rho 115538 + (-1 : F) * rho 115539) = ((1 : F) * rho 115538 + (1 : F) * rho 115539)

def relationLc3849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 98⟩, ⟨(1 : F), 114178, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8987 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3849 rho) = ((1 : F) * rho 115542)

def relationRow8988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115542) * ((1 : F) * rho 115540 + (1 : F) * rho 115541) = ((1 : F) * rho 115543)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
