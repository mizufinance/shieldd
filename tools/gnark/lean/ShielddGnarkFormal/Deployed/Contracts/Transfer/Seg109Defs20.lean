import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationLc3648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 57⟩], residual := [((1 : F), 124003)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121211) * (relationLc3648 rho) = ((1 : F) * rho 124005)

def relationRow8422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123995) * ((1 : F) * rho 123996) = ((1 : F) * rho 124006)

def relationRow8423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123995) * ((1 : F) * rho 123995) = ((1 : F) * rho 124007)

def relationRow8424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123996) * ((1 : F) * rho 123996) = ((1 : F) * rho 124008)

def relationRow8425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124009) * ((-1 : F) * rho 124007 + (1 : F) * rho 124008) = ((2 : F) * rho 124006)

def relationRow8426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124010) * ((2 : F) + (1 : F) * rho 124007 + (-1 : F) * rho 124008) = ((1 : F) * rho 124007 + (1 : F) * rho 124008)

def relationLc3649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 58⟩, ⟨(1 : F), 123207, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8427 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3649 rho) = ((1 : F) * rho 124011)

def relationRow8428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124011) * ((1 : F) * rho 124009 + (1 : F) * rho 124010) = ((1 : F) * rho 124012)

def relationLc3650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124010) * (relationLc3650 rho) = ((1 : F) * rho 124013)

def relationLc3651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124009) * (relationLc3651 rho) = ((1 : F) * rho 124014)

def relationRow8431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124013) * ((1 : F) * rho 124014) = ((1 : F) * rho 124015)

def relationRow8432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124016) * ((1 : F) + (1 : F) * rho 124015) = ((1 : F) * rho 124013 + (1 : F) * rho 124014)

def relationRow8433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124017) * ((1 : F) + (-1 : F) * rho 124015) = ((1 : F) * rho 124012 + (-1 : F) * rho 124013 + (-1 : F) * rho 124014)

def relationLc3652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 58⟩], residual := [((1 : F), 124016)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121212) * (relationLc3652 rho) = ((1 : F) * rho 124018)

def relationLc3653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 58⟩], residual := [((1 : F), 124017)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121212) * (relationLc3653 rho) = ((1 : F) * rho 124019)

def relationRow8436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124009) * ((1 : F) * rho 124010) = ((1 : F) * rho 124020)

def relationRow8437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124009) * ((1 : F) * rho 124009) = ((1 : F) * rho 124021)

def relationRow8438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124010) * ((1 : F) * rho 124010) = ((1 : F) * rho 124022)

def relationRow8439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124023) * ((-1 : F) * rho 124021 + (1 : F) * rho 124022) = ((2 : F) * rho 124020)

def relationRow8440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124024) * ((2 : F) + (1 : F) * rho 124021 + (-1 : F) * rho 124022) = ((1 : F) * rho 124021 + (1 : F) * rho 124022)

def relationLc3654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 59⟩, ⟨(1 : F), 123207, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8441 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3654 rho) = ((1 : F) * rho 124025)

def relationRow8442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124025) * ((1 : F) * rho 124023 + (1 : F) * rho 124024) = ((1 : F) * rho 124026)

def relationLc3655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124024) * (relationLc3655 rho) = ((1 : F) * rho 124027)

def relationLc3656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124023) * (relationLc3656 rho) = ((1 : F) * rho 124028)

def relationRow8445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124027) * ((1 : F) * rho 124028) = ((1 : F) * rho 124029)

def relationRow8446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124030) * ((1 : F) + (1 : F) * rho 124029) = ((1 : F) * rho 124027 + (1 : F) * rho 124028)

def relationRow8447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124031) * ((1 : F) + (-1 : F) * rho 124029) = ((1 : F) * rho 124026 + (-1 : F) * rho 124027 + (-1 : F) * rho 124028)

def relationLc3657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 59⟩], residual := [((1 : F), 124030)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121213) * (relationLc3657 rho) = ((1 : F) * rho 124032)

def relationLc3658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 59⟩], residual := [((1 : F), 124031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121213) * (relationLc3658 rho) = ((1 : F) * rho 124033)

def relationRow8450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124023) * ((1 : F) * rho 124024) = ((1 : F) * rho 124034)

def relationRow8451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124023) * ((1 : F) * rho 124023) = ((1 : F) * rho 124035)

def relationRow8452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124024) * ((1 : F) * rho 124024) = ((1 : F) * rho 124036)

def relationRow8453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124037) * ((-1 : F) * rho 124035 + (1 : F) * rho 124036) = ((2 : F) * rho 124034)

def relationRow8454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124038) * ((2 : F) + (1 : F) * rho 124035 + (-1 : F) * rho 124036) = ((1 : F) * rho 124035 + (1 : F) * rho 124036)

def relationLc3659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 60⟩, ⟨(1 : F), 123207, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8455 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3659 rho) = ((1 : F) * rho 124039)

def relationRow8456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124039) * ((1 : F) * rho 124037 + (1 : F) * rho 124038) = ((1 : F) * rho 124040)

def relationLc3660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124038) * (relationLc3660 rho) = ((1 : F) * rho 124041)

def relationLc3661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124037) * (relationLc3661 rho) = ((1 : F) * rho 124042)

def relationRow8459 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124041) * ((1 : F) * rho 124042) = ((1 : F) * rho 124043)

def relationRow8460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124044) * ((1 : F) + (1 : F) * rho 124043) = ((1 : F) * rho 124041 + (1 : F) * rho 124042)

def relationRow8461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124045) * ((1 : F) + (-1 : F) * rho 124043) = ((1 : F) * rho 124040 + (-1 : F) * rho 124041 + (-1 : F) * rho 124042)

def relationLc3662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 60⟩], residual := [((1 : F), 124044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121214) * (relationLc3662 rho) = ((1 : F) * rho 124046)

def relationLc3663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 60⟩], residual := [((1 : F), 124045)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121214) * (relationLc3663 rho) = ((1 : F) * rho 124047)

def relationRow8464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124037) * ((1 : F) * rho 124038) = ((1 : F) * rho 124048)

def relationRow8465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124037) * ((1 : F) * rho 124037) = ((1 : F) * rho 124049)

def relationRow8466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124038) * ((1 : F) * rho 124038) = ((1 : F) * rho 124050)

def relationRow8467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124051) * ((-1 : F) * rho 124049 + (1 : F) * rho 124050) = ((2 : F) * rho 124048)

def relationRow8468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124052) * ((2 : F) + (1 : F) * rho 124049 + (-1 : F) * rho 124050) = ((1 : F) * rho 124049 + (1 : F) * rho 124050)

def relationLc3664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 61⟩, ⟨(1 : F), 123207, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8469 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3664 rho) = ((1 : F) * rho 124053)

def relationRow8470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124053) * ((1 : F) * rho 124051 + (1 : F) * rho 124052) = ((1 : F) * rho 124054)

def relationLc3665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124052) * (relationLc3665 rho) = ((1 : F) * rho 124055)

def relationLc3666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124051) * (relationLc3666 rho) = ((1 : F) * rho 124056)

def relationRow8473 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124055) * ((1 : F) * rho 124056) = ((1 : F) * rho 124057)

def relationRow8474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124058) * ((1 : F) + (1 : F) * rho 124057) = ((1 : F) * rho 124055 + (1 : F) * rho 124056)

def relationRow8475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124059) * ((1 : F) + (-1 : F) * rho 124057) = ((1 : F) * rho 124054 + (-1 : F) * rho 124055 + (-1 : F) * rho 124056)

def relationLc3667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 61⟩], residual := [((1 : F), 124058)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121215) * (relationLc3667 rho) = ((1 : F) * rho 124060)

def relationLc3668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 61⟩], residual := [((1 : F), 124059)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121215) * (relationLc3668 rho) = ((1 : F) * rho 124061)

def relationRow8478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124051) * ((1 : F) * rho 124052) = ((1 : F) * rho 124062)

def relationRow8479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124051) * ((1 : F) * rho 124051) = ((1 : F) * rho 124063)

def relationRow8480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124052) * ((1 : F) * rho 124052) = ((1 : F) * rho 124064)

def relationRow8481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124065) * ((-1 : F) * rho 124063 + (1 : F) * rho 124064) = ((2 : F) * rho 124062)

def relationRow8482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124066) * ((2 : F) + (1 : F) * rho 124063 + (-1 : F) * rho 124064) = ((1 : F) * rho 124063 + (1 : F) * rho 124064)

def relationLc3669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 62⟩, ⟨(1 : F), 123207, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8483 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3669 rho) = ((1 : F) * rho 124067)

def relationRow8484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124067) * ((1 : F) * rho 124065 + (1 : F) * rho 124066) = ((1 : F) * rho 124068)

def relationLc3670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124066) * (relationLc3670 rho) = ((1 : F) * rho 124069)

def relationLc3671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124065) * (relationLc3671 rho) = ((1 : F) * rho 124070)

def relationRow8487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124069) * ((1 : F) * rho 124070) = ((1 : F) * rho 124071)

def relationRow8488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124072) * ((1 : F) + (1 : F) * rho 124071) = ((1 : F) * rho 124069 + (1 : F) * rho 124070)

def relationRow8489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124073) * ((1 : F) + (-1 : F) * rho 124071) = ((1 : F) * rho 124068 + (-1 : F) * rho 124069 + (-1 : F) * rho 124070)

def relationLc3672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 62⟩], residual := [((1 : F), 124072)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121216) * (relationLc3672 rho) = ((1 : F) * rho 124074)

def relationLc3673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 62⟩], residual := [((1 : F), 124073)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121216) * (relationLc3673 rho) = ((1 : F) * rho 124075)

def relationRow8492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124065) * ((1 : F) * rho 124066) = ((1 : F) * rho 124076)

def relationRow8493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124065) * ((1 : F) * rho 124065) = ((1 : F) * rho 124077)

def relationRow8494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124066) * ((1 : F) * rho 124066) = ((1 : F) * rho 124078)

def relationRow8495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124079) * ((-1 : F) * rho 124077 + (1 : F) * rho 124078) = ((2 : F) * rho 124076)

def relationRow8496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124080) * ((2 : F) + (1 : F) * rho 124077 + (-1 : F) * rho 124078) = ((1 : F) * rho 124077 + (1 : F) * rho 124078)

def relationLc3674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 63⟩, ⟨(1 : F), 123207, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8497 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3674 rho) = ((1 : F) * rho 124081)

def relationRow8498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124081) * ((1 : F) * rho 124079 + (1 : F) * rho 124080) = ((1 : F) * rho 124082)

def relationLc3675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124080) * (relationLc3675 rho) = ((1 : F) * rho 124083)

def relationLc3676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124079) * (relationLc3676 rho) = ((1 : F) * rho 124084)

def relationRow8501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124083) * ((1 : F) * rho 124084) = ((1 : F) * rho 124085)

def relationRow8502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124086) * ((1 : F) + (1 : F) * rho 124085) = ((1 : F) * rho 124083 + (1 : F) * rho 124084)

def relationRow8503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124087) * ((1 : F) + (-1 : F) * rho 124085) = ((1 : F) * rho 124082 + (-1 : F) * rho 124083 + (-1 : F) * rho 124084)

def relationLc3677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 63⟩], residual := [((1 : F), 124086)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121217) * (relationLc3677 rho) = ((1 : F) * rho 124088)

def relationLc3678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 63⟩], residual := [((1 : F), 124087)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121217) * (relationLc3678 rho) = ((1 : F) * rho 124089)

def relationRow8506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124079) * ((1 : F) * rho 124080) = ((1 : F) * rho 124090)

def relationRow8507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124079) * ((1 : F) * rho 124079) = ((1 : F) * rho 124091)

def relationRow8508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124080) * ((1 : F) * rho 124080) = ((1 : F) * rho 124092)

def relationRow8509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124093) * ((-1 : F) * rho 124091 + (1 : F) * rho 124092) = ((2 : F) * rho 124090)

def relationRow8510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124094) * ((2 : F) + (1 : F) * rho 124091 + (-1 : F) * rho 124092) = ((1 : F) * rho 124091 + (1 : F) * rho 124092)

def relationLc3679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 64⟩, ⟨(1 : F), 123207, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8511 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3679 rho) = ((1 : F) * rho 124095)

def relationRow8512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124095) * ((1 : F) * rho 124093 + (1 : F) * rho 124094) = ((1 : F) * rho 124096)

def relationLc3680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124094) * (relationLc3680 rho) = ((1 : F) * rho 124097)

def relationLc3681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124093) * (relationLc3681 rho) = ((1 : F) * rho 124098)

def relationRow8515 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124097) * ((1 : F) * rho 124098) = ((1 : F) * rho 124099)

def relationRow8516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124100) * ((1 : F) + (1 : F) * rho 124099) = ((1 : F) * rho 124097 + (1 : F) * rho 124098)

def relationRow8517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124101) * ((1 : F) + (-1 : F) * rho 124099) = ((1 : F) * rho 124096 + (-1 : F) * rho 124097 + (-1 : F) * rho 124098)

def relationLc3682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 64⟩], residual := [((1 : F), 124100)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121218) * (relationLc3682 rho) = ((1 : F) * rho 124102)

def relationLc3683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 64⟩], residual := [((1 : F), 124101)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121218) * (relationLc3683 rho) = ((1 : F) * rho 124103)

def relationRow8520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124093) * ((1 : F) * rho 124094) = ((1 : F) * rho 124104)

def relationRow8521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124093) * ((1 : F) * rho 124093) = ((1 : F) * rho 124105)

def relationRow8522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124094) * ((1 : F) * rho 124094) = ((1 : F) * rho 124106)

def relationRow8523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124107) * ((-1 : F) * rho 124105 + (1 : F) * rho 124106) = ((2 : F) * rho 124104)

def relationRow8524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124108) * ((2 : F) + (1 : F) * rho 124105 + (-1 : F) * rho 124106) = ((1 : F) * rho 124105 + (1 : F) * rho 124106)

def relationLc3684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 65⟩, ⟨(1 : F), 123207, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8525 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3684 rho) = ((1 : F) * rho 124109)

def relationRow8526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124109) * ((1 : F) * rho 124107 + (1 : F) * rho 124108) = ((1 : F) * rho 124110)

def relationLc3685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124108) * (relationLc3685 rho) = ((1 : F) * rho 124111)

def relationLc3686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124107) * (relationLc3686 rho) = ((1 : F) * rho 124112)

def relationRow8529 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124111) * ((1 : F) * rho 124112) = ((1 : F) * rho 124113)

def relationRow8530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124114) * ((1 : F) + (1 : F) * rho 124113) = ((1 : F) * rho 124111 + (1 : F) * rho 124112)

def relationRow8531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124115) * ((1 : F) + (-1 : F) * rho 124113) = ((1 : F) * rho 124110 + (-1 : F) * rho 124111 + (-1 : F) * rho 124112)

def relationLc3687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 65⟩], residual := [((1 : F), 124114)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121219) * (relationLc3687 rho) = ((1 : F) * rho 124116)

def relationLc3688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 65⟩], residual := [((1 : F), 124115)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121219) * (relationLc3688 rho) = ((1 : F) * rho 124117)

def relationRow8534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124107) * ((1 : F) * rho 124108) = ((1 : F) * rho 124118)

def relationRow8535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124107) * ((1 : F) * rho 124107) = ((1 : F) * rho 124119)

def relationRow8536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124108) * ((1 : F) * rho 124108) = ((1 : F) * rho 124120)

def relationRow8537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124121) * ((-1 : F) * rho 124119 + (1 : F) * rho 124120) = ((2 : F) * rho 124118)

def relationRow8538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124122) * ((2 : F) + (1 : F) * rho 124119 + (-1 : F) * rho 124120) = ((1 : F) * rho 124119 + (1 : F) * rho 124120)

def relationLc3689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 66⟩, ⟨(1 : F), 123207, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8539 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3689 rho) = ((1 : F) * rho 124123)

def relationRow8540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124123) * ((1 : F) * rho 124121 + (1 : F) * rho 124122) = ((1 : F) * rho 124124)

def relationLc3690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124122) * (relationLc3690 rho) = ((1 : F) * rho 124125)

def relationLc3691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124121) * (relationLc3691 rho) = ((1 : F) * rho 124126)

def relationRow8543 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124125) * ((1 : F) * rho 124126) = ((1 : F) * rho 124127)

def relationRow8544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124128) * ((1 : F) + (1 : F) * rho 124127) = ((1 : F) * rho 124125 + (1 : F) * rho 124126)

def relationRow8545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124129) * ((1 : F) + (-1 : F) * rho 124127) = ((1 : F) * rho 124124 + (-1 : F) * rho 124125 + (-1 : F) * rho 124126)

def relationLc3692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 66⟩], residual := [((1 : F), 124128)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121220) * (relationLc3692 rho) = ((1 : F) * rho 124130)

def relationLc3693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 66⟩], residual := [((1 : F), 124129)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121220) * (relationLc3693 rho) = ((1 : F) * rho 124131)

def relationRow8548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124121) * ((1 : F) * rho 124122) = ((1 : F) * rho 124132)

def relationRow8549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124121) * ((1 : F) * rho 124121) = ((1 : F) * rho 124133)

def relationRow8550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124122) * ((1 : F) * rho 124122) = ((1 : F) * rho 124134)

def relationRow8551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124135) * ((-1 : F) * rho 124133 + (1 : F) * rho 124134) = ((2 : F) * rho 124132)

def relationRow8552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124136) * ((2 : F) + (1 : F) * rho 124133 + (-1 : F) * rho 124134) = ((1 : F) * rho 124133 + (1 : F) * rho 124134)

def relationLc3694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 67⟩, ⟨(1 : F), 123207, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8553 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3694 rho) = ((1 : F) * rho 124137)

def relationRow8554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124137) * ((1 : F) * rho 124135 + (1 : F) * rho 124136) = ((1 : F) * rho 124138)

def relationLc3695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124136) * (relationLc3695 rho) = ((1 : F) * rho 124139)

def relationLc3696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124135) * (relationLc3696 rho) = ((1 : F) * rho 124140)

def relationRow8557 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124139) * ((1 : F) * rho 124140) = ((1 : F) * rho 124141)

def relationRow8558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124142) * ((1 : F) + (1 : F) * rho 124141) = ((1 : F) * rho 124139 + (1 : F) * rho 124140)

def relationRow8559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124143) * ((1 : F) + (-1 : F) * rho 124141) = ((1 : F) * rho 124138 + (-1 : F) * rho 124139 + (-1 : F) * rho 124140)

def relationLc3697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 67⟩], residual := [((1 : F), 124142)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121221) * (relationLc3697 rho) = ((1 : F) * rho 124144)

def relationLc3698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 67⟩], residual := [((1 : F), 124143)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121221) * (relationLc3698 rho) = ((1 : F) * rho 124145)

def relationRow8562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124135) * ((1 : F) * rho 124136) = ((1 : F) * rho 124146)

def relationRow8563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124135) * ((1 : F) * rho 124135) = ((1 : F) * rho 124147)

def relationRow8564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124136) * ((1 : F) * rho 124136) = ((1 : F) * rho 124148)

def relationRow8565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124149) * ((-1 : F) * rho 124147 + (1 : F) * rho 124148) = ((2 : F) * rho 124146)

def relationRow8566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124150) * ((2 : F) + (1 : F) * rho 124147 + (-1 : F) * rho 124148) = ((1 : F) * rho 124147 + (1 : F) * rho 124148)

def relationLc3699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 68⟩, ⟨(1 : F), 123207, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8567 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3699 rho) = ((1 : F) * rho 124151)

def relationRow8568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124151) * ((1 : F) * rho 124149 + (1 : F) * rho 124150) = ((1 : F) * rho 124152)

def relationLc3700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124150) * (relationLc3700 rho) = ((1 : F) * rho 124153)

def relationLc3701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124149) * (relationLc3701 rho) = ((1 : F) * rho 124154)

def relationRow8571 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124153) * ((1 : F) * rho 124154) = ((1 : F) * rho 124155)

def relationRow8572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124156) * ((1 : F) + (1 : F) * rho 124155) = ((1 : F) * rho 124153 + (1 : F) * rho 124154)

def relationRow8573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124157) * ((1 : F) + (-1 : F) * rho 124155) = ((1 : F) * rho 124152 + (-1 : F) * rho 124153 + (-1 : F) * rho 124154)

def relationLc3702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 68⟩], residual := [((1 : F), 124156)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121222) * (relationLc3702 rho) = ((1 : F) * rho 124158)

def relationLc3703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 68⟩], residual := [((1 : F), 124157)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121222) * (relationLc3703 rho) = ((1 : F) * rho 124159)

def relationRow8576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124149) * ((1 : F) * rho 124150) = ((1 : F) * rho 124160)

def relationRow8577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124149) * ((1 : F) * rho 124149) = ((1 : F) * rho 124161)

def relationRow8578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124150) * ((1 : F) * rho 124150) = ((1 : F) * rho 124162)

def relationRow8579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124163) * ((-1 : F) * rho 124161 + (1 : F) * rho 124162) = ((2 : F) * rho 124160)

def relationRow8580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124164) * ((2 : F) + (1 : F) * rho 124161 + (-1 : F) * rho 124162) = ((1 : F) * rho 124161 + (1 : F) * rho 124162)

def relationLc3704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 69⟩, ⟨(1 : F), 123207, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3704 rho) = ((1 : F) * rho 124165)

def relationRow8582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124165) * ((1 : F) * rho 124163 + (1 : F) * rho 124164) = ((1 : F) * rho 124166)

def relationLc3705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124164) * (relationLc3705 rho) = ((1 : F) * rho 124167)

def relationLc3706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124163) * (relationLc3706 rho) = ((1 : F) * rho 124168)

def relationRow8585 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124167) * ((1 : F) * rho 124168) = ((1 : F) * rho 124169)

def relationRow8586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124170) * ((1 : F) + (1 : F) * rho 124169) = ((1 : F) * rho 124167 + (1 : F) * rho 124168)

def relationRow8587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124171) * ((1 : F) + (-1 : F) * rho 124169) = ((1 : F) * rho 124166 + (-1 : F) * rho 124167 + (-1 : F) * rho 124168)

def relationLc3707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 69⟩], residual := [((1 : F), 124170)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121223) * (relationLc3707 rho) = ((1 : F) * rho 124172)

def relationLc3708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 69⟩], residual := [((1 : F), 124171)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121223) * (relationLc3708 rho) = ((1 : F) * rho 124173)

def relationRow8590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124163) * ((1 : F) * rho 124164) = ((1 : F) * rho 124174)

def relationRow8591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124163) * ((1 : F) * rho 124163) = ((1 : F) * rho 124175)

def relationRow8592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124164) * ((1 : F) * rho 124164) = ((1 : F) * rho 124176)

def relationRow8593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124177) * ((-1 : F) * rho 124175 + (1 : F) * rho 124176) = ((2 : F) * rho 124174)

def relationRow8594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124178) * ((2 : F) + (1 : F) * rho 124175 + (-1 : F) * rho 124176) = ((1 : F) * rho 124175 + (1 : F) * rho 124176)

def relationLc3709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 70⟩, ⟨(1 : F), 123207, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8595 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3709 rho) = ((1 : F) * rho 124179)

def relationRow8596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124179) * ((1 : F) * rho 124177 + (1 : F) * rho 124178) = ((1 : F) * rho 124180)

def relationLc3710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124178) * (relationLc3710 rho) = ((1 : F) * rho 124181)

def relationLc3711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124177) * (relationLc3711 rho) = ((1 : F) * rho 124182)

def relationRow8599 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124181) * ((1 : F) * rho 124182) = ((1 : F) * rho 124183)

def relationRow8600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124184) * ((1 : F) + (1 : F) * rho 124183) = ((1 : F) * rho 124181 + (1 : F) * rho 124182)

def relationRow8601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124185) * ((1 : F) + (-1 : F) * rho 124183) = ((1 : F) * rho 124180 + (-1 : F) * rho 124181 + (-1 : F) * rho 124182)

def relationLc3712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 70⟩], residual := [((1 : F), 124184)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121224) * (relationLc3712 rho) = ((1 : F) * rho 124186)

def relationLc3713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 70⟩], residual := [((1 : F), 124185)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121224) * (relationLc3713 rho) = ((1 : F) * rho 124187)

def relationRow8604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124177) * ((1 : F) * rho 124178) = ((1 : F) * rho 124188)

def relationRow8605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124177) * ((1 : F) * rho 124177) = ((1 : F) * rho 124189)

def relationRow8606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124178) * ((1 : F) * rho 124178) = ((1 : F) * rho 124190)

def relationRow8607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124191) * ((-1 : F) * rho 124189 + (1 : F) * rho 124190) = ((2 : F) * rho 124188)

def relationRow8608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124192) * ((2 : F) + (1 : F) * rho 124189 + (-1 : F) * rho 124190) = ((1 : F) * rho 124189 + (1 : F) * rho 124190)

def relationLc3714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 71⟩, ⟨(1 : F), 123207, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8609 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3714 rho) = ((1 : F) * rho 124193)

def relationRow8610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124193) * ((1 : F) * rho 124191 + (1 : F) * rho 124192) = ((1 : F) * rho 124194)

def relationLc3715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124192) * (relationLc3715 rho) = ((1 : F) * rho 124195)

def relationLc3716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124191) * (relationLc3716 rho) = ((1 : F) * rho 124196)

def relationRow8613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124195) * ((1 : F) * rho 124196) = ((1 : F) * rho 124197)

def relationRow8614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124198) * ((1 : F) + (1 : F) * rho 124197) = ((1 : F) * rho 124195 + (1 : F) * rho 124196)

def relationRow8615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124199) * ((1 : F) + (-1 : F) * rho 124197) = ((1 : F) * rho 124194 + (-1 : F) * rho 124195 + (-1 : F) * rho 124196)

def relationLc3717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 71⟩], residual := [((1 : F), 124198)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121225) * (relationLc3717 rho) = ((1 : F) * rho 124200)

def relationLc3718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 71⟩], residual := [((1 : F), 124199)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121225) * (relationLc3718 rho) = ((1 : F) * rho 124201)

def relationRow8618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124191) * ((1 : F) * rho 124192) = ((1 : F) * rho 124202)

def relationRow8619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124191) * ((1 : F) * rho 124191) = ((1 : F) * rho 124203)

def relationRow8620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124192) * ((1 : F) * rho 124192) = ((1 : F) * rho 124204)

def relationRow8621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124205) * ((-1 : F) * rho 124203 + (1 : F) * rho 124204) = ((2 : F) * rho 124202)

def relationRow8622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124206) * ((2 : F) + (1 : F) * rho 124203 + (-1 : F) * rho 124204) = ((1 : F) * rho 124203 + (1 : F) * rho 124204)

def relationLc3719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 72⟩, ⟨(1 : F), 123207, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8623 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3719 rho) = ((1 : F) * rho 124207)

def relationRow8624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124207) * ((1 : F) * rho 124205 + (1 : F) * rho 124206) = ((1 : F) * rho 124208)

def relationLc3720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124206) * (relationLc3720 rho) = ((1 : F) * rho 124209)

def relationLc3721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124205) * (relationLc3721 rho) = ((1 : F) * rho 124210)

def relationRow8627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124209) * ((1 : F) * rho 124210) = ((1 : F) * rho 124211)

def relationRow8628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124212) * ((1 : F) + (1 : F) * rho 124211) = ((1 : F) * rho 124209 + (1 : F) * rho 124210)

def relationRow8629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124213) * ((1 : F) + (-1 : F) * rho 124211) = ((1 : F) * rho 124208 + (-1 : F) * rho 124209 + (-1 : F) * rho 124210)

def relationLc3722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 72⟩], residual := [((1 : F), 124212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121226) * (relationLc3722 rho) = ((1 : F) * rho 124214)

def relationLc3723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 72⟩], residual := [((1 : F), 124213)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121226) * (relationLc3723 rho) = ((1 : F) * rho 124215)

def relationRow8632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124205) * ((1 : F) * rho 124206) = ((1 : F) * rho 124216)

def relationRow8633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124205) * ((1 : F) * rho 124205) = ((1 : F) * rho 124217)

def relationRow8634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124206) * ((1 : F) * rho 124206) = ((1 : F) * rho 124218)

def relationRow8635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124219) * ((-1 : F) * rho 124217 + (1 : F) * rho 124218) = ((2 : F) * rho 124216)

def relationRow8636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124220) * ((2 : F) + (1 : F) * rho 124217 + (-1 : F) * rho 124218) = ((1 : F) * rho 124217 + (1 : F) * rho 124218)

def relationLc3724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 73⟩, ⟨(1 : F), 123207, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3724 rho) = ((1 : F) * rho 124221)

def relationRow8638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124221) * ((1 : F) * rho 124219 + (1 : F) * rho 124220) = ((1 : F) * rho 124222)

def relationLc3725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124220) * (relationLc3725 rho) = ((1 : F) * rho 124223)

def relationLc3726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124219) * (relationLc3726 rho) = ((1 : F) * rho 124224)

def relationRow8641 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124223) * ((1 : F) * rho 124224) = ((1 : F) * rho 124225)

def relationRow8642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124226) * ((1 : F) + (1 : F) * rho 124225) = ((1 : F) * rho 124223 + (1 : F) * rho 124224)

def relationRow8643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124227) * ((1 : F) + (-1 : F) * rho 124225) = ((1 : F) * rho 124222 + (-1 : F) * rho 124223 + (-1 : F) * rho 124224)

def relationLc3727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 73⟩], residual := [((1 : F), 124226)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121227) * (relationLc3727 rho) = ((1 : F) * rho 124228)

def relationLc3728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 73⟩], residual := [((1 : F), 124227)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121227) * (relationLc3728 rho) = ((1 : F) * rho 124229)

def relationRow8646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124219) * ((1 : F) * rho 124220) = ((1 : F) * rho 124230)

def relationRow8647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124219) * ((1 : F) * rho 124219) = ((1 : F) * rho 124231)

def relationRow8648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124220) * ((1 : F) * rho 124220) = ((1 : F) * rho 124232)

def relationRow8649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124233) * ((-1 : F) * rho 124231 + (1 : F) * rho 124232) = ((2 : F) * rho 124230)

def relationRow8650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124234) * ((2 : F) + (1 : F) * rho 124231 + (-1 : F) * rho 124232) = ((1 : F) * rho 124231 + (1 : F) * rho 124232)

def relationLc3729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 74⟩, ⟨(1 : F), 123207, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8651 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3729 rho) = ((1 : F) * rho 124235)

def relationRow8652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124235) * ((1 : F) * rho 124233 + (1 : F) * rho 124234) = ((1 : F) * rho 124236)

def relationLc3730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124234) * (relationLc3730 rho) = ((1 : F) * rho 124237)

def relationLc3731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124233) * (relationLc3731 rho) = ((1 : F) * rho 124238)

def relationRow8655 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124237) * ((1 : F) * rho 124238) = ((1 : F) * rho 124239)

def relationRow8656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124240) * ((1 : F) + (1 : F) * rho 124239) = ((1 : F) * rho 124237 + (1 : F) * rho 124238)

def relationRow8657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124241) * ((1 : F) + (-1 : F) * rho 124239) = ((1 : F) * rho 124236 + (-1 : F) * rho 124237 + (-1 : F) * rho 124238)

def relationLc3732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 74⟩], residual := [((1 : F), 124240)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121228) * (relationLc3732 rho) = ((1 : F) * rho 124242)

def relationLc3733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 74⟩], residual := [((1 : F), 124241)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121228) * (relationLc3733 rho) = ((1 : F) * rho 124243)

def relationRow8660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124233) * ((1 : F) * rho 124234) = ((1 : F) * rho 124244)

def relationRow8661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124233) * ((1 : F) * rho 124233) = ((1 : F) * rho 124245)

def relationRow8662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124234) * ((1 : F) * rho 124234) = ((1 : F) * rho 124246)

def relationRow8663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124247) * ((-1 : F) * rho 124245 + (1 : F) * rho 124246) = ((2 : F) * rho 124244)

def relationRow8664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124248) * ((2 : F) + (1 : F) * rho 124245 + (-1 : F) * rho 124246) = ((1 : F) * rho 124245 + (1 : F) * rho 124246)

def relationLc3734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 75⟩, ⟨(1 : F), 123207, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8665 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3734 rho) = ((1 : F) * rho 124249)

def relationRow8666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124249) * ((1 : F) * rho 124247 + (1 : F) * rho 124248) = ((1 : F) * rho 124250)

def relationLc3735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124248) * (relationLc3735 rho) = ((1 : F) * rho 124251)

def relationLc3736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124247) * (relationLc3736 rho) = ((1 : F) * rho 124252)

def relationRow8669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124251) * ((1 : F) * rho 124252) = ((1 : F) * rho 124253)

def relationRow8670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124254) * ((1 : F) + (1 : F) * rho 124253) = ((1 : F) * rho 124251 + (1 : F) * rho 124252)

def relationRow8671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124255) * ((1 : F) + (-1 : F) * rho 124253) = ((1 : F) * rho 124250 + (-1 : F) * rho 124251 + (-1 : F) * rho 124252)

def relationLc3737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 75⟩], residual := [((1 : F), 124254)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121229) * (relationLc3737 rho) = ((1 : F) * rho 124256)

def relationLc3738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 75⟩], residual := [((1 : F), 124255)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121229) * (relationLc3738 rho) = ((1 : F) * rho 124257)

def relationRow8674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124247) * ((1 : F) * rho 124248) = ((1 : F) * rho 124258)

def relationRow8675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124247) * ((1 : F) * rho 124247) = ((1 : F) * rho 124259)

def relationRow8676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124248) * ((1 : F) * rho 124248) = ((1 : F) * rho 124260)

def relationRow8677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124261) * ((-1 : F) * rho 124259 + (1 : F) * rho 124260) = ((2 : F) * rho 124258)

def relationRow8678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124262) * ((2 : F) + (1 : F) * rho 124259 + (-1 : F) * rho 124260) = ((1 : F) * rho 124259 + (1 : F) * rho 124260)

def relationLc3739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 76⟩, ⟨(1 : F), 123207, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8679 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3739 rho) = ((1 : F) * rho 124263)

def relationRow8680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124263) * ((1 : F) * rho 124261 + (1 : F) * rho 124262) = ((1 : F) * rho 124264)

def relationLc3740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124262) * (relationLc3740 rho) = ((1 : F) * rho 124265)

def relationLc3741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124261) * (relationLc3741 rho) = ((1 : F) * rho 124266)

def relationRow8683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124265) * ((1 : F) * rho 124266) = ((1 : F) * rho 124267)

def relationRow8684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124268) * ((1 : F) + (1 : F) * rho 124267) = ((1 : F) * rho 124265 + (1 : F) * rho 124266)

def relationRow8685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124269) * ((1 : F) + (-1 : F) * rho 124267) = ((1 : F) * rho 124264 + (-1 : F) * rho 124265 + (-1 : F) * rho 124266)

def relationLc3742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 76⟩], residual := [((1 : F), 124268)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121230) * (relationLc3742 rho) = ((1 : F) * rho 124270)

def relationLc3743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 76⟩], residual := [((1 : F), 124269)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121230) * (relationLc3743 rho) = ((1 : F) * rho 124271)

def relationRow8688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124261) * ((1 : F) * rho 124262) = ((1 : F) * rho 124272)

def relationRow8689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124261) * ((1 : F) * rho 124261) = ((1 : F) * rho 124273)

def relationRow8690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124262) * ((1 : F) * rho 124262) = ((1 : F) * rho 124274)

def relationRow8691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124275) * ((-1 : F) * rho 124273 + (1 : F) * rho 124274) = ((2 : F) * rho 124272)

def relationRow8692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124276) * ((2 : F) + (1 : F) * rho 124273 + (-1 : F) * rho 124274) = ((1 : F) * rho 124273 + (1 : F) * rho 124274)

def relationLc3744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 77⟩, ⟨(1 : F), 123207, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8693 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3744 rho) = ((1 : F) * rho 124277)

def relationRow8694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124277) * ((1 : F) * rho 124275 + (1 : F) * rho 124276) = ((1 : F) * rho 124278)

def relationLc3745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124276) * (relationLc3745 rho) = ((1 : F) * rho 124279)

def relationLc3746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124275) * (relationLc3746 rho) = ((1 : F) * rho 124280)

def relationRow8697 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124279) * ((1 : F) * rho 124280) = ((1 : F) * rho 124281)

def relationRow8698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124282) * ((1 : F) + (1 : F) * rho 124281) = ((1 : F) * rho 124279 + (1 : F) * rho 124280)

def relationRow8699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124283) * ((1 : F) + (-1 : F) * rho 124281) = ((1 : F) * rho 124278 + (-1 : F) * rho 124279 + (-1 : F) * rho 124280)

def relationLc3747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 77⟩], residual := [((1 : F), 124282)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121231) * (relationLc3747 rho) = ((1 : F) * rho 124284)

def relationLc3748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 77⟩], residual := [((1 : F), 124283)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121231) * (relationLc3748 rho) = ((1 : F) * rho 124285)

def relationRow8702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124275) * ((1 : F) * rho 124276) = ((1 : F) * rho 124286)

def relationRow8703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124275) * ((1 : F) * rho 124275) = ((1 : F) * rho 124287)

def relationRow8704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124276) * ((1 : F) * rho 124276) = ((1 : F) * rho 124288)

def relationRow8705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124289) * ((-1 : F) * rho 124287 + (1 : F) * rho 124288) = ((2 : F) * rho 124286)

def relationRow8706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124290) * ((2 : F) + (1 : F) * rho 124287 + (-1 : F) * rho 124288) = ((1 : F) * rho 124287 + (1 : F) * rho 124288)

def relationLc3749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 78⟩, ⟨(1 : F), 123207, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8707 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3749 rho) = ((1 : F) * rho 124291)

def relationRow8708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124291) * ((1 : F) * rho 124289 + (1 : F) * rho 124290) = ((1 : F) * rho 124292)

def relationLc3750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124290) * (relationLc3750 rho) = ((1 : F) * rho 124293)

def relationLc3751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124289) * (relationLc3751 rho) = ((1 : F) * rho 124294)

def relationRow8711 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124293) * ((1 : F) * rho 124294) = ((1 : F) * rho 124295)

def relationRow8712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124296) * ((1 : F) + (1 : F) * rho 124295) = ((1 : F) * rho 124293 + (1 : F) * rho 124294)

def relationRow8713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124297) * ((1 : F) + (-1 : F) * rho 124295) = ((1 : F) * rho 124292 + (-1 : F) * rho 124293 + (-1 : F) * rho 124294)

def relationLc3752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 78⟩], residual := [((1 : F), 124296)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121232) * (relationLc3752 rho) = ((1 : F) * rho 124298)

def relationLc3753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 78⟩], residual := [((1 : F), 124297)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121232) * (relationLc3753 rho) = ((1 : F) * rho 124299)

def relationRow8716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124289) * ((1 : F) * rho 124290) = ((1 : F) * rho 124300)

def relationRow8717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124289) * ((1 : F) * rho 124289) = ((1 : F) * rho 124301)

def relationRow8718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124290) * ((1 : F) * rho 124290) = ((1 : F) * rho 124302)

def relationRow8719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124303) * ((-1 : F) * rho 124301 + (1 : F) * rho 124302) = ((2 : F) * rho 124300)

def relationRow8720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124304) * ((2 : F) + (1 : F) * rho 124301 + (-1 : F) * rho 124302) = ((1 : F) * rho 124301 + (1 : F) * rho 124302)

def relationLc3754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 79⟩, ⟨(1 : F), 123207, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8721 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3754 rho) = ((1 : F) * rho 124305)

def relationRow8722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124305) * ((1 : F) * rho 124303 + (1 : F) * rho 124304) = ((1 : F) * rho 124306)

def relationLc3755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124304) * (relationLc3755 rho) = ((1 : F) * rho 124307)

def relationLc3756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124303) * (relationLc3756 rho) = ((1 : F) * rho 124308)

def relationRow8725 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124307) * ((1 : F) * rho 124308) = ((1 : F) * rho 124309)

def relationRow8726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124310) * ((1 : F) + (1 : F) * rho 124309) = ((1 : F) * rho 124307 + (1 : F) * rho 124308)

def relationRow8727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124311) * ((1 : F) + (-1 : F) * rho 124309) = ((1 : F) * rho 124306 + (-1 : F) * rho 124307 + (-1 : F) * rho 124308)

def relationLc3757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 79⟩], residual := [((1 : F), 124310)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121233) * (relationLc3757 rho) = ((1 : F) * rho 124312)

def relationLc3758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 79⟩], residual := [((1 : F), 124311)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121233) * (relationLc3758 rho) = ((1 : F) * rho 124313)

def relationRow8730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124303) * ((1 : F) * rho 124304) = ((1 : F) * rho 124314)

def relationRow8731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124303) * ((1 : F) * rho 124303) = ((1 : F) * rho 124315)

def relationRow8732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124304) * ((1 : F) * rho 124304) = ((1 : F) * rho 124316)

def relationRow8733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124317) * ((-1 : F) * rho 124315 + (1 : F) * rho 124316) = ((2 : F) * rho 124314)

def relationRow8734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124318) * ((2 : F) + (1 : F) * rho 124315 + (-1 : F) * rho 124316) = ((1 : F) * rho 124315 + (1 : F) * rho 124316)

def relationLc3759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 80⟩, ⟨(1 : F), 123207, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8735 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3759 rho) = ((1 : F) * rho 124319)

def relationRow8736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124319) * ((1 : F) * rho 124317 + (1 : F) * rho 124318) = ((1 : F) * rho 124320)

def relationLc3760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124318) * (relationLc3760 rho) = ((1 : F) * rho 124321)

def relationLc3761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124317) * (relationLc3761 rho) = ((1 : F) * rho 124322)

def relationRow8739 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124321) * ((1 : F) * rho 124322) = ((1 : F) * rho 124323)

def relationRow8740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124324) * ((1 : F) + (1 : F) * rho 124323) = ((1 : F) * rho 124321 + (1 : F) * rho 124322)

def relationRow8741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124325) * ((1 : F) + (-1 : F) * rho 124323) = ((1 : F) * rho 124320 + (-1 : F) * rho 124321 + (-1 : F) * rho 124322)

def relationLc3762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 80⟩], residual := [((1 : F), 124324)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121234) * (relationLc3762 rho) = ((1 : F) * rho 124326)

def relationLc3763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 80⟩], residual := [((1 : F), 124325)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121234) * (relationLc3763 rho) = ((1 : F) * rho 124327)

def relationRow8744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124317) * ((1 : F) * rho 124318) = ((1 : F) * rho 124328)

def relationRow8745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124317) * ((1 : F) * rho 124317) = ((1 : F) * rho 124329)

def relationRow8746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124318) * ((1 : F) * rho 124318) = ((1 : F) * rho 124330)

def relationRow8747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124331) * ((-1 : F) * rho 124329 + (1 : F) * rho 124330) = ((2 : F) * rho 124328)

def relationRow8748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124332) * ((2 : F) + (1 : F) * rho 124329 + (-1 : F) * rho 124330) = ((1 : F) * rho 124329 + (1 : F) * rho 124330)

def relationLc3764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 81⟩, ⟨(1 : F), 123207, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3764 rho) = ((1 : F) * rho 124333)

def relationRow8750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124333) * ((1 : F) * rho 124331 + (1 : F) * rho 124332) = ((1 : F) * rho 124334)

def relationLc3765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124332) * (relationLc3765 rho) = ((1 : F) * rho 124335)

def relationLc3766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124331) * (relationLc3766 rho) = ((1 : F) * rho 124336)

def relationRow8753 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124335) * ((1 : F) * rho 124336) = ((1 : F) * rho 124337)

def relationRow8754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124338) * ((1 : F) + (1 : F) * rho 124337) = ((1 : F) * rho 124335 + (1 : F) * rho 124336)

def relationRow8755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124339) * ((1 : F) + (-1 : F) * rho 124337) = ((1 : F) * rho 124334 + (-1 : F) * rho 124335 + (-1 : F) * rho 124336)

def relationLc3767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 81⟩], residual := [((1 : F), 124338)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121235) * (relationLc3767 rho) = ((1 : F) * rho 124340)

def relationLc3768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 81⟩], residual := [((1 : F), 124339)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121235) * (relationLc3768 rho) = ((1 : F) * rho 124341)

def relationRow8758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124331) * ((1 : F) * rho 124332) = ((1 : F) * rho 124342)

def relationRow8759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124331) * ((1 : F) * rho 124331) = ((1 : F) * rho 124343)

def relationRow8760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124332) * ((1 : F) * rho 124332) = ((1 : F) * rho 124344)

def relationRow8761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124345) * ((-1 : F) * rho 124343 + (1 : F) * rho 124344) = ((2 : F) * rho 124342)

def relationRow8762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124346) * ((2 : F) + (1 : F) * rho 124343 + (-1 : F) * rho 124344) = ((1 : F) * rho 124343 + (1 : F) * rho 124344)

def relationLc3769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 82⟩, ⟨(1 : F), 123207, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8763 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3769 rho) = ((1 : F) * rho 124347)

def relationRow8764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124347) * ((1 : F) * rho 124345 + (1 : F) * rho 124346) = ((1 : F) * rho 124348)

def relationLc3770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124346) * (relationLc3770 rho) = ((1 : F) * rho 124349)

def relationLc3771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124345) * (relationLc3771 rho) = ((1 : F) * rho 124350)

def relationRow8767 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124349) * ((1 : F) * rho 124350) = ((1 : F) * rho 124351)

def relationRow8768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124352) * ((1 : F) + (1 : F) * rho 124351) = ((1 : F) * rho 124349 + (1 : F) * rho 124350)

def relationRow8769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124353) * ((1 : F) + (-1 : F) * rho 124351) = ((1 : F) * rho 124348 + (-1 : F) * rho 124349 + (-1 : F) * rho 124350)

def relationLc3772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 82⟩], residual := [((1 : F), 124352)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121236) * (relationLc3772 rho) = ((1 : F) * rho 124354)

def relationLc3773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 82⟩], residual := [((1 : F), 124353)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121236) * (relationLc3773 rho) = ((1 : F) * rho 124355)

def relationRow8772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124345) * ((1 : F) * rho 124346) = ((1 : F) * rho 124356)

def relationRow8773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124345) * ((1 : F) * rho 124345) = ((1 : F) * rho 124357)

def relationRow8774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124346) * ((1 : F) * rho 124346) = ((1 : F) * rho 124358)

def relationRow8775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124359) * ((-1 : F) * rho 124357 + (1 : F) * rho 124358) = ((2 : F) * rho 124356)

def relationRow8776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124360) * ((2 : F) + (1 : F) * rho 124357 + (-1 : F) * rho 124358) = ((1 : F) * rho 124357 + (1 : F) * rho 124358)

def relationLc3774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 83⟩, ⟨(1 : F), 123207, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8777 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3774 rho) = ((1 : F) * rho 124361)

def relationRow8778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124361) * ((1 : F) * rho 124359 + (1 : F) * rho 124360) = ((1 : F) * rho 124362)

def relationLc3775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124360) * (relationLc3775 rho) = ((1 : F) * rho 124363)

def relationLc3776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124359) * (relationLc3776 rho) = ((1 : F) * rho 124364)

def relationRow8781 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124363) * ((1 : F) * rho 124364) = ((1 : F) * rho 124365)

def relationRow8782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124366) * ((1 : F) + (1 : F) * rho 124365) = ((1 : F) * rho 124363 + (1 : F) * rho 124364)

def relationRow8783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124367) * ((1 : F) + (-1 : F) * rho 124365) = ((1 : F) * rho 124362 + (-1 : F) * rho 124363 + (-1 : F) * rho 124364)

def relationLc3777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 83⟩], residual := [((1 : F), 124366)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121237) * (relationLc3777 rho) = ((1 : F) * rho 124368)

def relationLc3778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 83⟩], residual := [((1 : F), 124367)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121237) * (relationLc3778 rho) = ((1 : F) * rho 124369)

def relationRow8786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124359) * ((1 : F) * rho 124360) = ((1 : F) * rho 124370)

def relationRow8787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124359) * ((1 : F) * rho 124359) = ((1 : F) * rho 124371)

def relationRow8788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124360) * ((1 : F) * rho 124360) = ((1 : F) * rho 124372)

def relationRow8789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124373) * ((-1 : F) * rho 124371 + (1 : F) * rho 124372) = ((2 : F) * rho 124370)

def relationRow8790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124374) * ((2 : F) + (1 : F) * rho 124371 + (-1 : F) * rho 124372) = ((1 : F) * rho 124371 + (1 : F) * rho 124372)

def relationLc3779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 84⟩, ⟨(1 : F), 123207, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8791 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3779 rho) = ((1 : F) * rho 124375)

def relationRow8792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124375) * ((1 : F) * rho 124373 + (1 : F) * rho 124374) = ((1 : F) * rho 124376)

def relationLc3780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124374) * (relationLc3780 rho) = ((1 : F) * rho 124377)

def relationLc3781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124373) * (relationLc3781 rho) = ((1 : F) * rho 124378)

def relationRow8795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124377) * ((1 : F) * rho 124378) = ((1 : F) * rho 124379)

def relationRow8796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124380) * ((1 : F) + (1 : F) * rho 124379) = ((1 : F) * rho 124377 + (1 : F) * rho 124378)

def relationRow8797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124381) * ((1 : F) + (-1 : F) * rho 124379) = ((1 : F) * rho 124376 + (-1 : F) * rho 124377 + (-1 : F) * rho 124378)

def relationLc3782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 84⟩], residual := [((1 : F), 124380)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121238) * (relationLc3782 rho) = ((1 : F) * rho 124382)

def relationLc3783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 84⟩], residual := [((1 : F), 124381)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121238) * (relationLc3783 rho) = ((1 : F) * rho 124383)

def relationRow8800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124373) * ((1 : F) * rho 124374) = ((1 : F) * rho 124384)

def relationRow8801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124373) * ((1 : F) * rho 124373) = ((1 : F) * rho 124385)

def relationRow8802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124374) * ((1 : F) * rho 124374) = ((1 : F) * rho 124386)

def relationRow8803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124387) * ((-1 : F) * rho 124385 + (1 : F) * rho 124386) = ((2 : F) * rho 124384)

def relationRow8804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124388) * ((2 : F) + (1 : F) * rho 124385 + (-1 : F) * rho 124386) = ((1 : F) * rho 124385 + (1 : F) * rho 124386)

def relationLc3784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 85⟩, ⟨(1 : F), 123207, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8805 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3784 rho) = ((1 : F) * rho 124389)

def relationRow8806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124389) * ((1 : F) * rho 124387 + (1 : F) * rho 124388) = ((1 : F) * rho 124390)

def relationLc3785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124388) * (relationLc3785 rho) = ((1 : F) * rho 124391)

def relationLc3786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124387) * (relationLc3786 rho) = ((1 : F) * rho 124392)

def relationRow8809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124391) * ((1 : F) * rho 124392) = ((1 : F) * rho 124393)

def relationRow8810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124394) * ((1 : F) + (1 : F) * rho 124393) = ((1 : F) * rho 124391 + (1 : F) * rho 124392)

def relationRow8811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124395) * ((1 : F) + (-1 : F) * rho 124393) = ((1 : F) * rho 124390 + (-1 : F) * rho 124391 + (-1 : F) * rho 124392)

def relationLc3787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 85⟩], residual := [((1 : F), 124394)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121239) * (relationLc3787 rho) = ((1 : F) * rho 124396)

def relationLc3788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 85⟩], residual := [((1 : F), 124395)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121239) * (relationLc3788 rho) = ((1 : F) * rho 124397)

def relationRow8814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124387) * ((1 : F) * rho 124388) = ((1 : F) * rho 124398)

def relationRow8815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124387) * ((1 : F) * rho 124387) = ((1 : F) * rho 124399)

def relationRow8816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124388) * ((1 : F) * rho 124388) = ((1 : F) * rho 124400)

def relationRow8817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124401) * ((-1 : F) * rho 124399 + (1 : F) * rho 124400) = ((2 : F) * rho 124398)

def relationRow8818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124402) * ((2 : F) + (1 : F) * rho 124399 + (-1 : F) * rho 124400) = ((1 : F) * rho 124399 + (1 : F) * rho 124400)

def relationLc3789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 86⟩, ⟨(1 : F), 123207, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8819 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3789 rho) = ((1 : F) * rho 124403)

def relationRow8820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124403) * ((1 : F) * rho 124401 + (1 : F) * rho 124402) = ((1 : F) * rho 124404)

def relationLc3790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124402) * (relationLc3790 rho) = ((1 : F) * rho 124405)

def relationLc3791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124401) * (relationLc3791 rho) = ((1 : F) * rho 124406)

def relationRow8823 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124405) * ((1 : F) * rho 124406) = ((1 : F) * rho 124407)

def relationRow8824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124408) * ((1 : F) + (1 : F) * rho 124407) = ((1 : F) * rho 124405 + (1 : F) * rho 124406)

def relationRow8825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124409) * ((1 : F) + (-1 : F) * rho 124407) = ((1 : F) * rho 124404 + (-1 : F) * rho 124405 + (-1 : F) * rho 124406)

def relationLc3792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 86⟩], residual := [((1 : F), 124408)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121240) * (relationLc3792 rho) = ((1 : F) * rho 124410)

def relationLc3793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 86⟩], residual := [((1 : F), 124409)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121240) * (relationLc3793 rho) = ((1 : F) * rho 124411)

def relationRow8828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124401) * ((1 : F) * rho 124402) = ((1 : F) * rho 124412)

def relationRow8829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124401) * ((1 : F) * rho 124401) = ((1 : F) * rho 124413)

def relationRow8830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124402) * ((1 : F) * rho 124402) = ((1 : F) * rho 124414)

def relationRow8831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124415) * ((-1 : F) * rho 124413 + (1 : F) * rho 124414) = ((2 : F) * rho 124412)

def relationRow8832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124416) * ((2 : F) + (1 : F) * rho 124413 + (-1 : F) * rho 124414) = ((1 : F) * rho 124413 + (1 : F) * rho 124414)

def relationLc3794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 87⟩, ⟨(1 : F), 123207, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8833 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3794 rho) = ((1 : F) * rho 124417)

def relationRow8834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124417) * ((1 : F) * rho 124415 + (1 : F) * rho 124416) = ((1 : F) * rho 124418)

def relationLc3795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124416) * (relationLc3795 rho) = ((1 : F) * rho 124419)

def relationLc3796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124415) * (relationLc3796 rho) = ((1 : F) * rho 124420)

def relationRow8837 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124419) * ((1 : F) * rho 124420) = ((1 : F) * rho 124421)

def relationRow8838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124422) * ((1 : F) + (1 : F) * rho 124421) = ((1 : F) * rho 124419 + (1 : F) * rho 124420)

def relationRow8839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124423) * ((1 : F) + (-1 : F) * rho 124421) = ((1 : F) * rho 124418 + (-1 : F) * rho 124419 + (-1 : F) * rho 124420)

def relationLc3797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 87⟩], residual := [((1 : F), 124422)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121241) * (relationLc3797 rho) = ((1 : F) * rho 124424)

def relationLc3798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 87⟩], residual := [((1 : F), 124423)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121241) * (relationLc3798 rho) = ((1 : F) * rho 124425)

def relationRow8842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124415) * ((1 : F) * rho 124416) = ((1 : F) * rho 124426)

def relationRow8843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124415) * ((1 : F) * rho 124415) = ((1 : F) * rho 124427)

def relationRow8844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124416) * ((1 : F) * rho 124416) = ((1 : F) * rho 124428)

def relationRow8845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124429) * ((-1 : F) * rho 124427 + (1 : F) * rho 124428) = ((2 : F) * rho 124426)

def relationRow8846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124430) * ((2 : F) + (1 : F) * rho 124427 + (-1 : F) * rho 124428) = ((1 : F) * rho 124427 + (1 : F) * rho 124428)

def relationLc3799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 88⟩, ⟨(1 : F), 123207, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8847 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3799 rho) = ((1 : F) * rho 124431)

def relationRow8848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124431) * ((1 : F) * rho 124429 + (1 : F) * rho 124430) = ((1 : F) * rho 124432)

def relationLc3800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124430) * (relationLc3800 rho) = ((1 : F) * rho 124433)

def relationLc3801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124429) * (relationLc3801 rho) = ((1 : F) * rho 124434)

def relationRow8851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124433) * ((1 : F) * rho 124434) = ((1 : F) * rho 124435)

def relationRow8852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124436) * ((1 : F) + (1 : F) * rho 124435) = ((1 : F) * rho 124433 + (1 : F) * rho 124434)

def relationRow8853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124437) * ((1 : F) + (-1 : F) * rho 124435) = ((1 : F) * rho 124432 + (-1 : F) * rho 124433 + (-1 : F) * rho 124434)

def relationLc3802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 88⟩], residual := [((1 : F), 124436)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121242) * (relationLc3802 rho) = ((1 : F) * rho 124438)

def relationLc3803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 88⟩], residual := [((1 : F), 124437)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121242) * (relationLc3803 rho) = ((1 : F) * rho 124439)

def relationRow8856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124429) * ((1 : F) * rho 124430) = ((1 : F) * rho 124440)

def relationRow8857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124429) * ((1 : F) * rho 124429) = ((1 : F) * rho 124441)

def relationRow8858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124430) * ((1 : F) * rho 124430) = ((1 : F) * rho 124442)

def relationRow8859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124443) * ((-1 : F) * rho 124441 + (1 : F) * rho 124442) = ((2 : F) * rho 124440)

def relationRow8860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124444) * ((2 : F) + (1 : F) * rho 124441 + (-1 : F) * rho 124442) = ((1 : F) * rho 124441 + (1 : F) * rho 124442)

def relationLc3804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 89⟩, ⟨(1 : F), 123207, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8861 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3804 rho) = ((1 : F) * rho 124445)

def relationRow8862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124445) * ((1 : F) * rho 124443 + (1 : F) * rho 124444) = ((1 : F) * rho 124446)

def relationLc3805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124444) * (relationLc3805 rho) = ((1 : F) * rho 124447)

def relationLc3806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124443) * (relationLc3806 rho) = ((1 : F) * rho 124448)

def relationRow8865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124447) * ((1 : F) * rho 124448) = ((1 : F) * rho 124449)

def relationRow8866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124450) * ((1 : F) + (1 : F) * rho 124449) = ((1 : F) * rho 124447 + (1 : F) * rho 124448)

def relationRow8867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124451) * ((1 : F) + (-1 : F) * rho 124449) = ((1 : F) * rho 124446 + (-1 : F) * rho 124447 + (-1 : F) * rho 124448)

def relationLc3807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 89⟩], residual := [((1 : F), 124450)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121243) * (relationLc3807 rho) = ((1 : F) * rho 124452)

def relationLc3808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 89⟩], residual := [((1 : F), 124451)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121243) * (relationLc3808 rho) = ((1 : F) * rho 124453)

def relationRow8870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124443) * ((1 : F) * rho 124444) = ((1 : F) * rho 124454)

def relationRow8871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124443) * ((1 : F) * rho 124443) = ((1 : F) * rho 124455)

def relationRow8872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124444) * ((1 : F) * rho 124444) = ((1 : F) * rho 124456)

def relationRow8873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124457) * ((-1 : F) * rho 124455 + (1 : F) * rho 124456) = ((2 : F) * rho 124454)

def relationRow8874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124458) * ((2 : F) + (1 : F) * rho 124455 + (-1 : F) * rho 124456) = ((1 : F) * rho 124455 + (1 : F) * rho 124456)

def relationLc3809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 90⟩, ⟨(1 : F), 123207, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8875 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3809 rho) = ((1 : F) * rho 124459)

def relationRow8876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124459) * ((1 : F) * rho 124457 + (1 : F) * rho 124458) = ((1 : F) * rho 124460)

def relationLc3810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124458) * (relationLc3810 rho) = ((1 : F) * rho 124461)

def relationLc3811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124457) * (relationLc3811 rho) = ((1 : F) * rho 124462)

def relationRow8879 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124461) * ((1 : F) * rho 124462) = ((1 : F) * rho 124463)

def relationRow8880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124464) * ((1 : F) + (1 : F) * rho 124463) = ((1 : F) * rho 124461 + (1 : F) * rho 124462)

def relationRow8881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124465) * ((1 : F) + (-1 : F) * rho 124463) = ((1 : F) * rho 124460 + (-1 : F) * rho 124461 + (-1 : F) * rho 124462)

def relationLc3812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 90⟩], residual := [((1 : F), 124464)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121244) * (relationLc3812 rho) = ((1 : F) * rho 124466)

def relationLc3813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 90⟩], residual := [((1 : F), 124465)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121244) * (relationLc3813 rho) = ((1 : F) * rho 124467)

def relationRow8884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124457) * ((1 : F) * rho 124458) = ((1 : F) * rho 124468)

def relationRow8885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124457) * ((1 : F) * rho 124457) = ((1 : F) * rho 124469)

def relationRow8886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124458) * ((1 : F) * rho 124458) = ((1 : F) * rho 124470)

def relationRow8887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124471) * ((-1 : F) * rho 124469 + (1 : F) * rho 124470) = ((2 : F) * rho 124468)

def relationRow8888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124472) * ((2 : F) + (1 : F) * rho 124469 + (-1 : F) * rho 124470) = ((1 : F) * rho 124469 + (1 : F) * rho 124470)

def relationLc3814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 91⟩, ⟨(1 : F), 123207, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8889 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3814 rho) = ((1 : F) * rho 124473)

def relationRow8890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124473) * ((1 : F) * rho 124471 + (1 : F) * rho 124472) = ((1 : F) * rho 124474)

def relationLc3815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124472) * (relationLc3815 rho) = ((1 : F) * rho 124475)

def relationLc3816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124471) * (relationLc3816 rho) = ((1 : F) * rho 124476)

def relationRow8893 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124475) * ((1 : F) * rho 124476) = ((1 : F) * rho 124477)

def relationRow8894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124478) * ((1 : F) + (1 : F) * rho 124477) = ((1 : F) * rho 124475 + (1 : F) * rho 124476)

def relationRow8895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124479) * ((1 : F) + (-1 : F) * rho 124477) = ((1 : F) * rho 124474 + (-1 : F) * rho 124475 + (-1 : F) * rho 124476)

def relationLc3817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 91⟩], residual := [((1 : F), 124478)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121245) * (relationLc3817 rho) = ((1 : F) * rho 124480)

def relationLc3818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 91⟩], residual := [((1 : F), 124479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121245) * (relationLc3818 rho) = ((1 : F) * rho 124481)

def relationRow8898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124471) * ((1 : F) * rho 124472) = ((1 : F) * rho 124482)

def relationRow8899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124471) * ((1 : F) * rho 124471) = ((1 : F) * rho 124483)

def relationRow8900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124472) * ((1 : F) * rho 124472) = ((1 : F) * rho 124484)

def relationRow8901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124485) * ((-1 : F) * rho 124483 + (1 : F) * rho 124484) = ((2 : F) * rho 124482)

def relationRow8902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124486) * ((2 : F) + (1 : F) * rho 124483 + (-1 : F) * rho 124484) = ((1 : F) * rho 124483 + (1 : F) * rho 124484)

def relationLc3819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 92⟩, ⟨(1 : F), 123207, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8903 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3819 rho) = ((1 : F) * rho 124487)

def relationRow8904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124487) * ((1 : F) * rho 124485 + (1 : F) * rho 124486) = ((1 : F) * rho 124488)

def relationLc3820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124486) * (relationLc3820 rho) = ((1 : F) * rho 124489)

def relationLc3821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124485) * (relationLc3821 rho) = ((1 : F) * rho 124490)

def relationRow8907 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124489) * ((1 : F) * rho 124490) = ((1 : F) * rho 124491)

def relationRow8908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124492) * ((1 : F) + (1 : F) * rho 124491) = ((1 : F) * rho 124489 + (1 : F) * rho 124490)

def relationRow8909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124493) * ((1 : F) + (-1 : F) * rho 124491) = ((1 : F) * rho 124488 + (-1 : F) * rho 124489 + (-1 : F) * rho 124490)

def relationLc3822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 92⟩], residual := [((1 : F), 124492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121246) * (relationLc3822 rho) = ((1 : F) * rho 124494)

def relationLc3823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 92⟩], residual := [((1 : F), 124493)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121246) * (relationLc3823 rho) = ((1 : F) * rho 124495)

def relationRow8912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124485) * ((1 : F) * rho 124486) = ((1 : F) * rho 124496)

def relationRow8913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124485) * ((1 : F) * rho 124485) = ((1 : F) * rho 124497)

def relationRow8914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124486) * ((1 : F) * rho 124486) = ((1 : F) * rho 124498)

def relationRow8915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124499) * ((-1 : F) * rho 124497 + (1 : F) * rho 124498) = ((2 : F) * rho 124496)

def relationRow8916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124500) * ((2 : F) + (1 : F) * rho 124497 + (-1 : F) * rho 124498) = ((1 : F) * rho 124497 + (1 : F) * rho 124498)

def relationLc3824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 93⟩, ⟨(1 : F), 123207, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8917 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3824 rho) = ((1 : F) * rho 124501)

def relationRow8918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124501) * ((1 : F) * rho 124499 + (1 : F) * rho 124500) = ((1 : F) * rho 124502)

def relationLc3825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124500) * (relationLc3825 rho) = ((1 : F) * rho 124503)

def relationLc3826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124499) * (relationLc3826 rho) = ((1 : F) * rho 124504)

def relationRow8921 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124503) * ((1 : F) * rho 124504) = ((1 : F) * rho 124505)

def relationRow8922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124506) * ((1 : F) + (1 : F) * rho 124505) = ((1 : F) * rho 124503 + (1 : F) * rho 124504)

def relationRow8923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124507) * ((1 : F) + (-1 : F) * rho 124505) = ((1 : F) * rho 124502 + (-1 : F) * rho 124503 + (-1 : F) * rho 124504)

def relationLc3827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 93⟩], residual := [((1 : F), 124506)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121247) * (relationLc3827 rho) = ((1 : F) * rho 124508)

def relationLc3828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 93⟩], residual := [((1 : F), 124507)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121247) * (relationLc3828 rho) = ((1 : F) * rho 124509)

def relationRow8926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124499) * ((1 : F) * rho 124500) = ((1 : F) * rho 124510)

def relationRow8927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124499) * ((1 : F) * rho 124499) = ((1 : F) * rho 124511)

def relationRow8928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124500) * ((1 : F) * rho 124500) = ((1 : F) * rho 124512)

def relationRow8929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124513) * ((-1 : F) * rho 124511 + (1 : F) * rho 124512) = ((2 : F) * rho 124510)

def relationRow8930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124514) * ((2 : F) + (1 : F) * rho 124511 + (-1 : F) * rho 124512) = ((1 : F) * rho 124511 + (1 : F) * rho 124512)

def relationLc3829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 94⟩, ⟨(1 : F), 123207, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8931 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3829 rho) = ((1 : F) * rho 124515)

def relationRow8932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124515) * ((1 : F) * rho 124513 + (1 : F) * rho 124514) = ((1 : F) * rho 124516)

def relationLc3830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124514) * (relationLc3830 rho) = ((1 : F) * rho 124517)

def relationLc3831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124513) * (relationLc3831 rho) = ((1 : F) * rho 124518)

def relationRow8935 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124517) * ((1 : F) * rho 124518) = ((1 : F) * rho 124519)

def relationRow8936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124520) * ((1 : F) + (1 : F) * rho 124519) = ((1 : F) * rho 124517 + (1 : F) * rho 124518)

def relationRow8937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124521) * ((1 : F) + (-1 : F) * rho 124519) = ((1 : F) * rho 124516 + (-1 : F) * rho 124517 + (-1 : F) * rho 124518)

def relationLc3832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 94⟩], residual := [((1 : F), 124520)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121248) * (relationLc3832 rho) = ((1 : F) * rho 124522)

def relationLc3833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 94⟩], residual := [((1 : F), 124521)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121248) * (relationLc3833 rho) = ((1 : F) * rho 124523)

def relationRow8940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124513) * ((1 : F) * rho 124514) = ((1 : F) * rho 124524)

def relationRow8941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124513) * ((1 : F) * rho 124513) = ((1 : F) * rho 124525)

def relationRow8942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124514) * ((1 : F) * rho 124514) = ((1 : F) * rho 124526)

def relationRow8943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124527) * ((-1 : F) * rho 124525 + (1 : F) * rho 124526) = ((2 : F) * rho 124524)

def relationRow8944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124528) * ((2 : F) + (1 : F) * rho 124525 + (-1 : F) * rho 124526) = ((1 : F) * rho 124525 + (1 : F) * rho 124526)

def relationLc3834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 95⟩, ⟨(1 : F), 123207, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8945 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3834 rho) = ((1 : F) * rho 124529)

def relationRow8946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124529) * ((1 : F) * rho 124527 + (1 : F) * rho 124528) = ((1 : F) * rho 124530)

def relationLc3835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124528) * (relationLc3835 rho) = ((1 : F) * rho 124531)

def relationLc3836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124527) * (relationLc3836 rho) = ((1 : F) * rho 124532)

def relationRow8949 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124531) * ((1 : F) * rho 124532) = ((1 : F) * rho 124533)

def relationRow8950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124534) * ((1 : F) + (1 : F) * rho 124533) = ((1 : F) * rho 124531 + (1 : F) * rho 124532)

def relationRow8951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124535) * ((1 : F) + (-1 : F) * rho 124533) = ((1 : F) * rho 124530 + (-1 : F) * rho 124531 + (-1 : F) * rho 124532)

def relationLc3837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 95⟩], residual := [((1 : F), 124534)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121249) * (relationLc3837 rho) = ((1 : F) * rho 124536)

def relationLc3838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 95⟩], residual := [((1 : F), 124535)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121249) * (relationLc3838 rho) = ((1 : F) * rho 124537)

def relationRow8954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124527) * ((1 : F) * rho 124528) = ((1 : F) * rho 124538)

def relationRow8955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124527) * ((1 : F) * rho 124527) = ((1 : F) * rho 124539)

def relationRow8956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124528) * ((1 : F) * rho 124528) = ((1 : F) * rho 124540)

def relationRow8957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124541) * ((-1 : F) * rho 124539 + (1 : F) * rho 124540) = ((2 : F) * rho 124538)

def relationRow8958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124542) * ((2 : F) + (1 : F) * rho 124539 + (-1 : F) * rho 124540) = ((1 : F) * rho 124539 + (1 : F) * rho 124540)

def relationLc3839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 96⟩, ⟨(1 : F), 123207, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8959 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3839 rho) = ((1 : F) * rho 124543)

def relationRow8960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124543) * ((1 : F) * rho 124541 + (1 : F) * rho 124542) = ((1 : F) * rho 124544)

def relationLc3840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124542) * (relationLc3840 rho) = ((1 : F) * rho 124545)

def relationLc3841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124541) * (relationLc3841 rho) = ((1 : F) * rho 124546)

def relationRow8963 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124545) * ((1 : F) * rho 124546) = ((1 : F) * rho 124547)

def relationRow8964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124548) * ((1 : F) + (1 : F) * rho 124547) = ((1 : F) * rho 124545 + (1 : F) * rho 124546)

def relationRow8965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124549) * ((1 : F) + (-1 : F) * rho 124547) = ((1 : F) * rho 124544 + (-1 : F) * rho 124545 + (-1 : F) * rho 124546)

def relationLc3842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 96⟩], residual := [((1 : F), 124548)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121250) * (relationLc3842 rho) = ((1 : F) * rho 124550)

def relationLc3843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 96⟩], residual := [((1 : F), 124549)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121250) * (relationLc3843 rho) = ((1 : F) * rho 124551)

def relationRow8968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124541) * ((1 : F) * rho 124542) = ((1 : F) * rho 124552)

def relationRow8969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124541) * ((1 : F) * rho 124541) = ((1 : F) * rho 124553)

def relationRow8970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124542) * ((1 : F) * rho 124542) = ((1 : F) * rho 124554)

def relationRow8971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124555) * ((-1 : F) * rho 124553 + (1 : F) * rho 124554) = ((2 : F) * rho 124552)

def relationRow8972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124556) * ((2 : F) + (1 : F) * rho 124553 + (-1 : F) * rho 124554) = ((1 : F) * rho 124553 + (1 : F) * rho 124554)

def relationLc3844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 97⟩, ⟨(1 : F), 123207, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8973 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3844 rho) = ((1 : F) * rho 124557)

def relationRow8974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124557) * ((1 : F) * rho 124555 + (1 : F) * rho 124556) = ((1 : F) * rho 124558)

def relationLc3845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124556) * (relationLc3845 rho) = ((1 : F) * rho 124559)

def relationLc3846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124555) * (relationLc3846 rho) = ((1 : F) * rho 124560)

def relationRow8977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 124559) * ((1 : F) * rho 124560) = ((1 : F) * rho 124561)

def relationRow8978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124562) * ((1 : F) + (1 : F) * rho 124561) = ((1 : F) * rho 124559 + (1 : F) * rho 124560)

def relationRow8979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124563) * ((1 : F) + (-1 : F) * rho 124561) = ((1 : F) * rho 124558 + (-1 : F) * rho 124559 + (-1 : F) * rho 124560)

def relationLc3847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 97⟩], residual := [((1 : F), 124562)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121251) * (relationLc3847 rho) = ((1 : F) * rho 124564)

def relationLc3848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 97⟩], residual := [((1 : F), 124563)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121251) * (relationLc3848 rho) = ((1 : F) * rho 124565)

def relationRow8982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124555) * ((1 : F) * rho 124556) = ((1 : F) * rho 124566)

def relationRow8983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124555) * ((1 : F) * rho 124555) = ((1 : F) * rho 124567)

def relationRow8984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124556) * ((1 : F) * rho 124556) = ((1 : F) * rho 124568)

def relationRow8985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124569) * ((-1 : F) * rho 124567 + (1 : F) * rho 124568) = ((2 : F) * rho 124566)

def relationRow8986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124570) * ((2 : F) + (1 : F) * rho 124567 + (-1 : F) * rho 124568) = ((1 : F) * rho 124567 + (1 : F) * rho 124568)

def relationLc3849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 98⟩, ⟨(1 : F), 123207, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8987 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3849 rho) = ((1 : F) * rho 124571)

def relationRow8988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124571) * ((1 : F) * rho 124569 + (1 : F) * rho 124570) = ((1 : F) * rho 124572)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
