import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationRow8484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106009) * ((1 : F) * rho 106007 + (1 : F) * rho 106008) = ((1 : F) * rho 106010)

def relationLc3670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106008) * (relationLc3670 rho) = ((1 : F) * rho 106011)

def relationLc3671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106007) * (relationLc3671 rho) = ((1 : F) * rho 106012)

def relationRow8487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106011) * ((1 : F) * rho 106012) = ((1 : F) * rho 106013)

def relationRow8488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106014) * ((1 : F) + (1 : F) * rho 106013) = ((1 : F) * rho 106011 + (1 : F) * rho 106012)

def relationRow8489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106015) * ((1 : F) + (-1 : F) * rho 106013) = ((1 : F) * rho 106010 + (-1 : F) * rho 106011 + (-1 : F) * rho 106012)

def relationLc3672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 62⟩], residual := [((1 : F), 106014)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103158) * (relationLc3672 rho) = ((1 : F) * rho 106016)

def relationLc3673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 62⟩], residual := [((1 : F), 106015)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103158) * (relationLc3673 rho) = ((1 : F) * rho 106017)

def relationRow8492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106007) * ((1 : F) * rho 106008) = ((1 : F) * rho 106018)

def relationRow8493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106007) * ((1 : F) * rho 106007) = ((1 : F) * rho 106019)

def relationRow8494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106008) * ((1 : F) * rho 106008) = ((1 : F) * rho 106020)

def relationRow8495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106021) * ((-1 : F) * rho 106019 + (1 : F) * rho 106020) = ((2 : F) * rho 106018)

def relationRow8496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106022) * ((2 : F) + (1 : F) * rho 106019 + (-1 : F) * rho 106020) = ((1 : F) * rho 106019 + (1 : F) * rho 106020)

def relationLc3674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 63⟩, ⟨(1 : F), 105149, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8497 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3674 rho) = ((1 : F) * rho 106023)

def relationRow8498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106023) * ((1 : F) * rho 106021 + (1 : F) * rho 106022) = ((1 : F) * rho 106024)

def relationLc3675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106022) * (relationLc3675 rho) = ((1 : F) * rho 106025)

def relationLc3676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106021) * (relationLc3676 rho) = ((1 : F) * rho 106026)

def relationRow8501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106025) * ((1 : F) * rho 106026) = ((1 : F) * rho 106027)

def relationRow8502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106028) * ((1 : F) + (1 : F) * rho 106027) = ((1 : F) * rho 106025 + (1 : F) * rho 106026)

def relationRow8503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106029) * ((1 : F) + (-1 : F) * rho 106027) = ((1 : F) * rho 106024 + (-1 : F) * rho 106025 + (-1 : F) * rho 106026)

def relationLc3677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 63⟩], residual := [((1 : F), 106028)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103159) * (relationLc3677 rho) = ((1 : F) * rho 106030)

def relationLc3678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 63⟩], residual := [((1 : F), 106029)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103159) * (relationLc3678 rho) = ((1 : F) * rho 106031)

def relationRow8506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106021) * ((1 : F) * rho 106022) = ((1 : F) * rho 106032)

def relationRow8507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106021) * ((1 : F) * rho 106021) = ((1 : F) * rho 106033)

def relationRow8508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106022) * ((1 : F) * rho 106022) = ((1 : F) * rho 106034)

def relationRow8509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106035) * ((-1 : F) * rho 106033 + (1 : F) * rho 106034) = ((2 : F) * rho 106032)

def relationRow8510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106036) * ((2 : F) + (1 : F) * rho 106033 + (-1 : F) * rho 106034) = ((1 : F) * rho 106033 + (1 : F) * rho 106034)

def relationLc3679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 64⟩, ⟨(1 : F), 105149, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8511 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3679 rho) = ((1 : F) * rho 106037)

def relationRow8512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106037) * ((1 : F) * rho 106035 + (1 : F) * rho 106036) = ((1 : F) * rho 106038)

def relationLc3680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106036) * (relationLc3680 rho) = ((1 : F) * rho 106039)

def relationLc3681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106035) * (relationLc3681 rho) = ((1 : F) * rho 106040)

def relationRow8515 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106039) * ((1 : F) * rho 106040) = ((1 : F) * rho 106041)

def relationRow8516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106042) * ((1 : F) + (1 : F) * rho 106041) = ((1 : F) * rho 106039 + (1 : F) * rho 106040)

def relationRow8517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106043) * ((1 : F) + (-1 : F) * rho 106041) = ((1 : F) * rho 106038 + (-1 : F) * rho 106039 + (-1 : F) * rho 106040)

def relationLc3682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 64⟩], residual := [((1 : F), 106042)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103160) * (relationLc3682 rho) = ((1 : F) * rho 106044)

def relationLc3683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 64⟩], residual := [((1 : F), 106043)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103160) * (relationLc3683 rho) = ((1 : F) * rho 106045)

def relationRow8520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106035) * ((1 : F) * rho 106036) = ((1 : F) * rho 106046)

def relationRow8521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106035) * ((1 : F) * rho 106035) = ((1 : F) * rho 106047)

def relationRow8522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106036) * ((1 : F) * rho 106036) = ((1 : F) * rho 106048)

def relationRow8523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106049) * ((-1 : F) * rho 106047 + (1 : F) * rho 106048) = ((2 : F) * rho 106046)

def relationRow8524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106050) * ((2 : F) + (1 : F) * rho 106047 + (-1 : F) * rho 106048) = ((1 : F) * rho 106047 + (1 : F) * rho 106048)

def relationLc3684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 65⟩, ⟨(1 : F), 105149, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8525 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3684 rho) = ((1 : F) * rho 106051)

def relationRow8526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106051) * ((1 : F) * rho 106049 + (1 : F) * rho 106050) = ((1 : F) * rho 106052)

def relationLc3685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106050) * (relationLc3685 rho) = ((1 : F) * rho 106053)

def relationLc3686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106049) * (relationLc3686 rho) = ((1 : F) * rho 106054)

def relationRow8529 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106053) * ((1 : F) * rho 106054) = ((1 : F) * rho 106055)

def relationRow8530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106056) * ((1 : F) + (1 : F) * rho 106055) = ((1 : F) * rho 106053 + (1 : F) * rho 106054)

def relationRow8531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106057) * ((1 : F) + (-1 : F) * rho 106055) = ((1 : F) * rho 106052 + (-1 : F) * rho 106053 + (-1 : F) * rho 106054)

def relationLc3687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 65⟩], residual := [((1 : F), 106056)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103161) * (relationLc3687 rho) = ((1 : F) * rho 106058)

def relationLc3688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 65⟩], residual := [((1 : F), 106057)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103161) * (relationLc3688 rho) = ((1 : F) * rho 106059)

def relationRow8534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106049) * ((1 : F) * rho 106050) = ((1 : F) * rho 106060)

def relationRow8535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106049) * ((1 : F) * rho 106049) = ((1 : F) * rho 106061)

def relationRow8536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106050) * ((1 : F) * rho 106050) = ((1 : F) * rho 106062)

def relationRow8537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106063) * ((-1 : F) * rho 106061 + (1 : F) * rho 106062) = ((2 : F) * rho 106060)

def relationRow8538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106064) * ((2 : F) + (1 : F) * rho 106061 + (-1 : F) * rho 106062) = ((1 : F) * rho 106061 + (1 : F) * rho 106062)

def relationLc3689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 66⟩, ⟨(1 : F), 105149, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8539 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3689 rho) = ((1 : F) * rho 106065)

def relationRow8540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106065) * ((1 : F) * rho 106063 + (1 : F) * rho 106064) = ((1 : F) * rho 106066)

def relationLc3690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106064) * (relationLc3690 rho) = ((1 : F) * rho 106067)

def relationLc3691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106063) * (relationLc3691 rho) = ((1 : F) * rho 106068)

def relationRow8543 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106067) * ((1 : F) * rho 106068) = ((1 : F) * rho 106069)

def relationRow8544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106070) * ((1 : F) + (1 : F) * rho 106069) = ((1 : F) * rho 106067 + (1 : F) * rho 106068)

def relationRow8545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106071) * ((1 : F) + (-1 : F) * rho 106069) = ((1 : F) * rho 106066 + (-1 : F) * rho 106067 + (-1 : F) * rho 106068)

def relationLc3692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 66⟩], residual := [((1 : F), 106070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103162) * (relationLc3692 rho) = ((1 : F) * rho 106072)

def relationLc3693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 66⟩], residual := [((1 : F), 106071)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103162) * (relationLc3693 rho) = ((1 : F) * rho 106073)

def relationRow8548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106063) * ((1 : F) * rho 106064) = ((1 : F) * rho 106074)

def relationRow8549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106063) * ((1 : F) * rho 106063) = ((1 : F) * rho 106075)

def relationRow8550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106064) * ((1 : F) * rho 106064) = ((1 : F) * rho 106076)

def relationRow8551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106077) * ((-1 : F) * rho 106075 + (1 : F) * rho 106076) = ((2 : F) * rho 106074)

def relationRow8552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106078) * ((2 : F) + (1 : F) * rho 106075 + (-1 : F) * rho 106076) = ((1 : F) * rho 106075 + (1 : F) * rho 106076)

def relationLc3694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 67⟩, ⟨(1 : F), 105149, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8553 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3694 rho) = ((1 : F) * rho 106079)

def relationRow8554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106079) * ((1 : F) * rho 106077 + (1 : F) * rho 106078) = ((1 : F) * rho 106080)

def relationLc3695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106078) * (relationLc3695 rho) = ((1 : F) * rho 106081)

def relationLc3696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106077) * (relationLc3696 rho) = ((1 : F) * rho 106082)

def relationRow8557 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106081) * ((1 : F) * rho 106082) = ((1 : F) * rho 106083)

def relationRow8558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106084) * ((1 : F) + (1 : F) * rho 106083) = ((1 : F) * rho 106081 + (1 : F) * rho 106082)

def relationRow8559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106085) * ((1 : F) + (-1 : F) * rho 106083) = ((1 : F) * rho 106080 + (-1 : F) * rho 106081 + (-1 : F) * rho 106082)

def relationLc3697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 67⟩], residual := [((1 : F), 106084)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103163) * (relationLc3697 rho) = ((1 : F) * rho 106086)

def relationLc3698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 67⟩], residual := [((1 : F), 106085)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103163) * (relationLc3698 rho) = ((1 : F) * rho 106087)

def relationRow8562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106077) * ((1 : F) * rho 106078) = ((1 : F) * rho 106088)

def relationRow8563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106077) * ((1 : F) * rho 106077) = ((1 : F) * rho 106089)

def relationRow8564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106078) * ((1 : F) * rho 106078) = ((1 : F) * rho 106090)

def relationRow8565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106091) * ((-1 : F) * rho 106089 + (1 : F) * rho 106090) = ((2 : F) * rho 106088)

def relationRow8566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106092) * ((2 : F) + (1 : F) * rho 106089 + (-1 : F) * rho 106090) = ((1 : F) * rho 106089 + (1 : F) * rho 106090)

def relationLc3699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 68⟩, ⟨(1 : F), 105149, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8567 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3699 rho) = ((1 : F) * rho 106093)

def relationRow8568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106093) * ((1 : F) * rho 106091 + (1 : F) * rho 106092) = ((1 : F) * rho 106094)

def relationLc3700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106092) * (relationLc3700 rho) = ((1 : F) * rho 106095)

def relationLc3701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106091) * (relationLc3701 rho) = ((1 : F) * rho 106096)

def relationRow8571 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106095) * ((1 : F) * rho 106096) = ((1 : F) * rho 106097)

def relationRow8572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106098) * ((1 : F) + (1 : F) * rho 106097) = ((1 : F) * rho 106095 + (1 : F) * rho 106096)

def relationRow8573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106099) * ((1 : F) + (-1 : F) * rho 106097) = ((1 : F) * rho 106094 + (-1 : F) * rho 106095 + (-1 : F) * rho 106096)

def relationLc3702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 68⟩], residual := [((1 : F), 106098)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103164) * (relationLc3702 rho) = ((1 : F) * rho 106100)

def relationLc3703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 68⟩], residual := [((1 : F), 106099)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103164) * (relationLc3703 rho) = ((1 : F) * rho 106101)

def relationRow8576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106091) * ((1 : F) * rho 106092) = ((1 : F) * rho 106102)

def relationRow8577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106091) * ((1 : F) * rho 106091) = ((1 : F) * rho 106103)

def relationRow8578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106092) * ((1 : F) * rho 106092) = ((1 : F) * rho 106104)

def relationRow8579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106105) * ((-1 : F) * rho 106103 + (1 : F) * rho 106104) = ((2 : F) * rho 106102)

def relationRow8580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106106) * ((2 : F) + (1 : F) * rho 106103 + (-1 : F) * rho 106104) = ((1 : F) * rho 106103 + (1 : F) * rho 106104)

def relationLc3704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 69⟩, ⟨(1 : F), 105149, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3704 rho) = ((1 : F) * rho 106107)

def relationRow8582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106107) * ((1 : F) * rho 106105 + (1 : F) * rho 106106) = ((1 : F) * rho 106108)

def relationLc3705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106106) * (relationLc3705 rho) = ((1 : F) * rho 106109)

def relationLc3706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106105) * (relationLc3706 rho) = ((1 : F) * rho 106110)

def relationRow8585 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106109) * ((1 : F) * rho 106110) = ((1 : F) * rho 106111)

def relationRow8586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106112) * ((1 : F) + (1 : F) * rho 106111) = ((1 : F) * rho 106109 + (1 : F) * rho 106110)

def relationRow8587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106113) * ((1 : F) + (-1 : F) * rho 106111) = ((1 : F) * rho 106108 + (-1 : F) * rho 106109 + (-1 : F) * rho 106110)

def relationLc3707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 69⟩], residual := [((1 : F), 106112)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103165) * (relationLc3707 rho) = ((1 : F) * rho 106114)

def relationLc3708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 69⟩], residual := [((1 : F), 106113)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103165) * (relationLc3708 rho) = ((1 : F) * rho 106115)

def relationRow8590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106105) * ((1 : F) * rho 106106) = ((1 : F) * rho 106116)

def relationRow8591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106105) * ((1 : F) * rho 106105) = ((1 : F) * rho 106117)

def relationRow8592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106106) * ((1 : F) * rho 106106) = ((1 : F) * rho 106118)

def relationRow8593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106119) * ((-1 : F) * rho 106117 + (1 : F) * rho 106118) = ((2 : F) * rho 106116)

def relationRow8594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106120) * ((2 : F) + (1 : F) * rho 106117 + (-1 : F) * rho 106118) = ((1 : F) * rho 106117 + (1 : F) * rho 106118)

def relationLc3709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 70⟩, ⟨(1 : F), 105149, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8595 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3709 rho) = ((1 : F) * rho 106121)

def relationRow8596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106121) * ((1 : F) * rho 106119 + (1 : F) * rho 106120) = ((1 : F) * rho 106122)

def relationLc3710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106120) * (relationLc3710 rho) = ((1 : F) * rho 106123)

def relationLc3711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106119) * (relationLc3711 rho) = ((1 : F) * rho 106124)

def relationRow8599 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106123) * ((1 : F) * rho 106124) = ((1 : F) * rho 106125)

def relationRow8600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106126) * ((1 : F) + (1 : F) * rho 106125) = ((1 : F) * rho 106123 + (1 : F) * rho 106124)

def relationRow8601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106127) * ((1 : F) + (-1 : F) * rho 106125) = ((1 : F) * rho 106122 + (-1 : F) * rho 106123 + (-1 : F) * rho 106124)

def relationLc3712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 70⟩], residual := [((1 : F), 106126)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103166) * (relationLc3712 rho) = ((1 : F) * rho 106128)

def relationLc3713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 70⟩], residual := [((1 : F), 106127)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103166) * (relationLc3713 rho) = ((1 : F) * rho 106129)

def relationRow8604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106119) * ((1 : F) * rho 106120) = ((1 : F) * rho 106130)

def relationRow8605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106119) * ((1 : F) * rho 106119) = ((1 : F) * rho 106131)

def relationRow8606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106120) * ((1 : F) * rho 106120) = ((1 : F) * rho 106132)

def relationRow8607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106133) * ((-1 : F) * rho 106131 + (1 : F) * rho 106132) = ((2 : F) * rho 106130)

def relationRow8608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106134) * ((2 : F) + (1 : F) * rho 106131 + (-1 : F) * rho 106132) = ((1 : F) * rho 106131 + (1 : F) * rho 106132)

def relationLc3714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 71⟩, ⟨(1 : F), 105149, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8609 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3714 rho) = ((1 : F) * rho 106135)

def relationRow8610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106135) * ((1 : F) * rho 106133 + (1 : F) * rho 106134) = ((1 : F) * rho 106136)

def relationLc3715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106134) * (relationLc3715 rho) = ((1 : F) * rho 106137)

def relationLc3716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106133) * (relationLc3716 rho) = ((1 : F) * rho 106138)

def relationRow8613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106137) * ((1 : F) * rho 106138) = ((1 : F) * rho 106139)

def relationRow8614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106140) * ((1 : F) + (1 : F) * rho 106139) = ((1 : F) * rho 106137 + (1 : F) * rho 106138)

def relationRow8615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106141) * ((1 : F) + (-1 : F) * rho 106139) = ((1 : F) * rho 106136 + (-1 : F) * rho 106137 + (-1 : F) * rho 106138)

def relationLc3717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 71⟩], residual := [((1 : F), 106140)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103167) * (relationLc3717 rho) = ((1 : F) * rho 106142)

def relationLc3718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 71⟩], residual := [((1 : F), 106141)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103167) * (relationLc3718 rho) = ((1 : F) * rho 106143)

def relationRow8618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106133) * ((1 : F) * rho 106134) = ((1 : F) * rho 106144)

def relationRow8619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106133) * ((1 : F) * rho 106133) = ((1 : F) * rho 106145)

def relationRow8620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106134) * ((1 : F) * rho 106134) = ((1 : F) * rho 106146)

def relationRow8621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106147) * ((-1 : F) * rho 106145 + (1 : F) * rho 106146) = ((2 : F) * rho 106144)

def relationRow8622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106148) * ((2 : F) + (1 : F) * rho 106145 + (-1 : F) * rho 106146) = ((1 : F) * rho 106145 + (1 : F) * rho 106146)

def relationLc3719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 72⟩, ⟨(1 : F), 105149, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8623 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3719 rho) = ((1 : F) * rho 106149)

def relationRow8624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106149) * ((1 : F) * rho 106147 + (1 : F) * rho 106148) = ((1 : F) * rho 106150)

def relationLc3720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106148) * (relationLc3720 rho) = ((1 : F) * rho 106151)

def relationLc3721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106147) * (relationLc3721 rho) = ((1 : F) * rho 106152)

def relationRow8627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106151) * ((1 : F) * rho 106152) = ((1 : F) * rho 106153)

def relationRow8628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106154) * ((1 : F) + (1 : F) * rho 106153) = ((1 : F) * rho 106151 + (1 : F) * rho 106152)

def relationRow8629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106155) * ((1 : F) + (-1 : F) * rho 106153) = ((1 : F) * rho 106150 + (-1 : F) * rho 106151 + (-1 : F) * rho 106152)

def relationLc3722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 72⟩], residual := [((1 : F), 106154)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103168) * (relationLc3722 rho) = ((1 : F) * rho 106156)

def relationLc3723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 72⟩], residual := [((1 : F), 106155)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103168) * (relationLc3723 rho) = ((1 : F) * rho 106157)

def relationRow8632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106147) * ((1 : F) * rho 106148) = ((1 : F) * rho 106158)

def relationRow8633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106147) * ((1 : F) * rho 106147) = ((1 : F) * rho 106159)

def relationRow8634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106148) * ((1 : F) * rho 106148) = ((1 : F) * rho 106160)

def relationRow8635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106161) * ((-1 : F) * rho 106159 + (1 : F) * rho 106160) = ((2 : F) * rho 106158)

def relationRow8636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106162) * ((2 : F) + (1 : F) * rho 106159 + (-1 : F) * rho 106160) = ((1 : F) * rho 106159 + (1 : F) * rho 106160)

def relationLc3724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 73⟩, ⟨(1 : F), 105149, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3724 rho) = ((1 : F) * rho 106163)

def relationRow8638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106163) * ((1 : F) * rho 106161 + (1 : F) * rho 106162) = ((1 : F) * rho 106164)

def relationLc3725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106162) * (relationLc3725 rho) = ((1 : F) * rho 106165)

def relationLc3726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106161) * (relationLc3726 rho) = ((1 : F) * rho 106166)

def relationRow8641 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106165) * ((1 : F) * rho 106166) = ((1 : F) * rho 106167)

def relationRow8642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106168) * ((1 : F) + (1 : F) * rho 106167) = ((1 : F) * rho 106165 + (1 : F) * rho 106166)

def relationRow8643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106169) * ((1 : F) + (-1 : F) * rho 106167) = ((1 : F) * rho 106164 + (-1 : F) * rho 106165 + (-1 : F) * rho 106166)

def relationLc3727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 73⟩], residual := [((1 : F), 106168)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103169) * (relationLc3727 rho) = ((1 : F) * rho 106170)

def relationLc3728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 73⟩], residual := [((1 : F), 106169)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103169) * (relationLc3728 rho) = ((1 : F) * rho 106171)

def relationRow8646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106161) * ((1 : F) * rho 106162) = ((1 : F) * rho 106172)

def relationRow8647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106161) * ((1 : F) * rho 106161) = ((1 : F) * rho 106173)

def relationRow8648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106162) * ((1 : F) * rho 106162) = ((1 : F) * rho 106174)

def relationRow8649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106175) * ((-1 : F) * rho 106173 + (1 : F) * rho 106174) = ((2 : F) * rho 106172)

def relationRow8650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106176) * ((2 : F) + (1 : F) * rho 106173 + (-1 : F) * rho 106174) = ((1 : F) * rho 106173 + (1 : F) * rho 106174)

def relationLc3729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 74⟩, ⟨(1 : F), 105149, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8651 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3729 rho) = ((1 : F) * rho 106177)

def relationRow8652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106177) * ((1 : F) * rho 106175 + (1 : F) * rho 106176) = ((1 : F) * rho 106178)

def relationLc3730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106176) * (relationLc3730 rho) = ((1 : F) * rho 106179)

def relationLc3731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106175) * (relationLc3731 rho) = ((1 : F) * rho 106180)

def relationRow8655 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106179) * ((1 : F) * rho 106180) = ((1 : F) * rho 106181)

def relationRow8656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106182) * ((1 : F) + (1 : F) * rho 106181) = ((1 : F) * rho 106179 + (1 : F) * rho 106180)

def relationRow8657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106183) * ((1 : F) + (-1 : F) * rho 106181) = ((1 : F) * rho 106178 + (-1 : F) * rho 106179 + (-1 : F) * rho 106180)

def relationLc3732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 74⟩], residual := [((1 : F), 106182)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103170) * (relationLc3732 rho) = ((1 : F) * rho 106184)

def relationLc3733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 74⟩], residual := [((1 : F), 106183)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103170) * (relationLc3733 rho) = ((1 : F) * rho 106185)

def relationRow8660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106175) * ((1 : F) * rho 106176) = ((1 : F) * rho 106186)

def relationRow8661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106175) * ((1 : F) * rho 106175) = ((1 : F) * rho 106187)

def relationRow8662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106176) * ((1 : F) * rho 106176) = ((1 : F) * rho 106188)

def relationRow8663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106189) * ((-1 : F) * rho 106187 + (1 : F) * rho 106188) = ((2 : F) * rho 106186)

def relationRow8664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106190) * ((2 : F) + (1 : F) * rho 106187 + (-1 : F) * rho 106188) = ((1 : F) * rho 106187 + (1 : F) * rho 106188)

def relationLc3734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 75⟩, ⟨(1 : F), 105149, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8665 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3734 rho) = ((1 : F) * rho 106191)

def relationRow8666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106191) * ((1 : F) * rho 106189 + (1 : F) * rho 106190) = ((1 : F) * rho 106192)

def relationLc3735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106190) * (relationLc3735 rho) = ((1 : F) * rho 106193)

def relationLc3736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106189) * (relationLc3736 rho) = ((1 : F) * rho 106194)

def relationRow8669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106193) * ((1 : F) * rho 106194) = ((1 : F) * rho 106195)

def relationRow8670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106196) * ((1 : F) + (1 : F) * rho 106195) = ((1 : F) * rho 106193 + (1 : F) * rho 106194)

def relationRow8671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106197) * ((1 : F) + (-1 : F) * rho 106195) = ((1 : F) * rho 106192 + (-1 : F) * rho 106193 + (-1 : F) * rho 106194)

def relationLc3737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 75⟩], residual := [((1 : F), 106196)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103171) * (relationLc3737 rho) = ((1 : F) * rho 106198)

def relationLc3738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 75⟩], residual := [((1 : F), 106197)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103171) * (relationLc3738 rho) = ((1 : F) * rho 106199)

def relationRow8674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106189) * ((1 : F) * rho 106190) = ((1 : F) * rho 106200)

def relationRow8675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106189) * ((1 : F) * rho 106189) = ((1 : F) * rho 106201)

def relationRow8676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106190) * ((1 : F) * rho 106190) = ((1 : F) * rho 106202)

def relationRow8677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106203) * ((-1 : F) * rho 106201 + (1 : F) * rho 106202) = ((2 : F) * rho 106200)

def relationRow8678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106204) * ((2 : F) + (1 : F) * rho 106201 + (-1 : F) * rho 106202) = ((1 : F) * rho 106201 + (1 : F) * rho 106202)

def relationLc3739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 76⟩, ⟨(1 : F), 105149, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8679 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3739 rho) = ((1 : F) * rho 106205)

def relationRow8680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106205) * ((1 : F) * rho 106203 + (1 : F) * rho 106204) = ((1 : F) * rho 106206)

def relationLc3740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106204) * (relationLc3740 rho) = ((1 : F) * rho 106207)

def relationLc3741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106203) * (relationLc3741 rho) = ((1 : F) * rho 106208)

def relationRow8683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106207) * ((1 : F) * rho 106208) = ((1 : F) * rho 106209)

def relationRow8684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106210) * ((1 : F) + (1 : F) * rho 106209) = ((1 : F) * rho 106207 + (1 : F) * rho 106208)

def relationRow8685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106211) * ((1 : F) + (-1 : F) * rho 106209) = ((1 : F) * rho 106206 + (-1 : F) * rho 106207 + (-1 : F) * rho 106208)

def relationLc3742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 76⟩], residual := [((1 : F), 106210)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103172) * (relationLc3742 rho) = ((1 : F) * rho 106212)

def relationLc3743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 76⟩], residual := [((1 : F), 106211)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103172) * (relationLc3743 rho) = ((1 : F) * rho 106213)

def relationRow8688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106203) * ((1 : F) * rho 106204) = ((1 : F) * rho 106214)

def relationRow8689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106203) * ((1 : F) * rho 106203) = ((1 : F) * rho 106215)

def relationRow8690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106204) * ((1 : F) * rho 106204) = ((1 : F) * rho 106216)

def relationRow8691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106217) * ((-1 : F) * rho 106215 + (1 : F) * rho 106216) = ((2 : F) * rho 106214)

def relationRow8692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106218) * ((2 : F) + (1 : F) * rho 106215 + (-1 : F) * rho 106216) = ((1 : F) * rho 106215 + (1 : F) * rho 106216)

def relationLc3744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 77⟩, ⟨(1 : F), 105149, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8693 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3744 rho) = ((1 : F) * rho 106219)

def relationRow8694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106219) * ((1 : F) * rho 106217 + (1 : F) * rho 106218) = ((1 : F) * rho 106220)

def relationLc3745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106218) * (relationLc3745 rho) = ((1 : F) * rho 106221)

def relationLc3746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106217) * (relationLc3746 rho) = ((1 : F) * rho 106222)

def relationRow8697 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106221) * ((1 : F) * rho 106222) = ((1 : F) * rho 106223)

def relationRow8698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106224) * ((1 : F) + (1 : F) * rho 106223) = ((1 : F) * rho 106221 + (1 : F) * rho 106222)

def relationRow8699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106225) * ((1 : F) + (-1 : F) * rho 106223) = ((1 : F) * rho 106220 + (-1 : F) * rho 106221 + (-1 : F) * rho 106222)

def relationLc3747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 77⟩], residual := [((1 : F), 106224)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103173) * (relationLc3747 rho) = ((1 : F) * rho 106226)

def relationLc3748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 77⟩], residual := [((1 : F), 106225)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103173) * (relationLc3748 rho) = ((1 : F) * rho 106227)

def relationRow8702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106217) * ((1 : F) * rho 106218) = ((1 : F) * rho 106228)

def relationRow8703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106217) * ((1 : F) * rho 106217) = ((1 : F) * rho 106229)

def relationRow8704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106218) * ((1 : F) * rho 106218) = ((1 : F) * rho 106230)

def relationRow8705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106231) * ((-1 : F) * rho 106229 + (1 : F) * rho 106230) = ((2 : F) * rho 106228)

def relationRow8706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106232) * ((2 : F) + (1 : F) * rho 106229 + (-1 : F) * rho 106230) = ((1 : F) * rho 106229 + (1 : F) * rho 106230)

def relationLc3749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 78⟩, ⟨(1 : F), 105149, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8707 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3749 rho) = ((1 : F) * rho 106233)

def relationRow8708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106233) * ((1 : F) * rho 106231 + (1 : F) * rho 106232) = ((1 : F) * rho 106234)

def relationLc3750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106232) * (relationLc3750 rho) = ((1 : F) * rho 106235)

def relationLc3751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106231) * (relationLc3751 rho) = ((1 : F) * rho 106236)

def relationRow8711 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106235) * ((1 : F) * rho 106236) = ((1 : F) * rho 106237)

def relationRow8712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106238) * ((1 : F) + (1 : F) * rho 106237) = ((1 : F) * rho 106235 + (1 : F) * rho 106236)

def relationRow8713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106239) * ((1 : F) + (-1 : F) * rho 106237) = ((1 : F) * rho 106234 + (-1 : F) * rho 106235 + (-1 : F) * rho 106236)

def relationLc3752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 78⟩], residual := [((1 : F), 106238)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103174) * (relationLc3752 rho) = ((1 : F) * rho 106240)

def relationLc3753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 78⟩], residual := [((1 : F), 106239)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103174) * (relationLc3753 rho) = ((1 : F) * rho 106241)

def relationRow8716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106231) * ((1 : F) * rho 106232) = ((1 : F) * rho 106242)

def relationRow8717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106231) * ((1 : F) * rho 106231) = ((1 : F) * rho 106243)

def relationRow8718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106232) * ((1 : F) * rho 106232) = ((1 : F) * rho 106244)

def relationRow8719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106245) * ((-1 : F) * rho 106243 + (1 : F) * rho 106244) = ((2 : F) * rho 106242)

def relationRow8720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106246) * ((2 : F) + (1 : F) * rho 106243 + (-1 : F) * rho 106244) = ((1 : F) * rho 106243 + (1 : F) * rho 106244)

def relationLc3754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 79⟩, ⟨(1 : F), 105149, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8721 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3754 rho) = ((1 : F) * rho 106247)

def relationRow8722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106247) * ((1 : F) * rho 106245 + (1 : F) * rho 106246) = ((1 : F) * rho 106248)

def relationLc3755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106246) * (relationLc3755 rho) = ((1 : F) * rho 106249)

def relationLc3756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106245) * (relationLc3756 rho) = ((1 : F) * rho 106250)

def relationRow8725 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106249) * ((1 : F) * rho 106250) = ((1 : F) * rho 106251)

def relationRow8726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106252) * ((1 : F) + (1 : F) * rho 106251) = ((1 : F) * rho 106249 + (1 : F) * rho 106250)

def relationRow8727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106253) * ((1 : F) + (-1 : F) * rho 106251) = ((1 : F) * rho 106248 + (-1 : F) * rho 106249 + (-1 : F) * rho 106250)

def relationLc3757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 79⟩], residual := [((1 : F), 106252)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103175) * (relationLc3757 rho) = ((1 : F) * rho 106254)

def relationLc3758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 79⟩], residual := [((1 : F), 106253)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103175) * (relationLc3758 rho) = ((1 : F) * rho 106255)

def relationRow8730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106245) * ((1 : F) * rho 106246) = ((1 : F) * rho 106256)

def relationRow8731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106245) * ((1 : F) * rho 106245) = ((1 : F) * rho 106257)

def relationRow8732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106246) * ((1 : F) * rho 106246) = ((1 : F) * rho 106258)

def relationRow8733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106259) * ((-1 : F) * rho 106257 + (1 : F) * rho 106258) = ((2 : F) * rho 106256)

def relationRow8734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106260) * ((2 : F) + (1 : F) * rho 106257 + (-1 : F) * rho 106258) = ((1 : F) * rho 106257 + (1 : F) * rho 106258)

def relationLc3759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 80⟩, ⟨(1 : F), 105149, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8735 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3759 rho) = ((1 : F) * rho 106261)

def relationRow8736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106261) * ((1 : F) * rho 106259 + (1 : F) * rho 106260) = ((1 : F) * rho 106262)

def relationLc3760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106260) * (relationLc3760 rho) = ((1 : F) * rho 106263)

def relationLc3761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106259) * (relationLc3761 rho) = ((1 : F) * rho 106264)

def relationRow8739 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106263) * ((1 : F) * rho 106264) = ((1 : F) * rho 106265)

def relationRow8740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106266) * ((1 : F) + (1 : F) * rho 106265) = ((1 : F) * rho 106263 + (1 : F) * rho 106264)

def relationRow8741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106267) * ((1 : F) + (-1 : F) * rho 106265) = ((1 : F) * rho 106262 + (-1 : F) * rho 106263 + (-1 : F) * rho 106264)

def relationLc3762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 80⟩], residual := [((1 : F), 106266)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103176) * (relationLc3762 rho) = ((1 : F) * rho 106268)

def relationLc3763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 80⟩], residual := [((1 : F), 106267)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103176) * (relationLc3763 rho) = ((1 : F) * rho 106269)

def relationRow8744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106259) * ((1 : F) * rho 106260) = ((1 : F) * rho 106270)

def relationRow8745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106259) * ((1 : F) * rho 106259) = ((1 : F) * rho 106271)

def relationRow8746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106260) * ((1 : F) * rho 106260) = ((1 : F) * rho 106272)

def relationRow8747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106273) * ((-1 : F) * rho 106271 + (1 : F) * rho 106272) = ((2 : F) * rho 106270)

def relationRow8748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106274) * ((2 : F) + (1 : F) * rho 106271 + (-1 : F) * rho 106272) = ((1 : F) * rho 106271 + (1 : F) * rho 106272)

def relationLc3764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 81⟩, ⟨(1 : F), 105149, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3764 rho) = ((1 : F) * rho 106275)

def relationRow8750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106275) * ((1 : F) * rho 106273 + (1 : F) * rho 106274) = ((1 : F) * rho 106276)

def relationLc3765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106274) * (relationLc3765 rho) = ((1 : F) * rho 106277)

def relationLc3766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106273) * (relationLc3766 rho) = ((1 : F) * rho 106278)

def relationRow8753 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106277) * ((1 : F) * rho 106278) = ((1 : F) * rho 106279)

def relationRow8754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106280) * ((1 : F) + (1 : F) * rho 106279) = ((1 : F) * rho 106277 + (1 : F) * rho 106278)

def relationRow8755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106281) * ((1 : F) + (-1 : F) * rho 106279) = ((1 : F) * rho 106276 + (-1 : F) * rho 106277 + (-1 : F) * rho 106278)

def relationLc3767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 81⟩], residual := [((1 : F), 106280)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103177) * (relationLc3767 rho) = ((1 : F) * rho 106282)

def relationLc3768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 81⟩], residual := [((1 : F), 106281)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103177) * (relationLc3768 rho) = ((1 : F) * rho 106283)

def relationRow8758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106273) * ((1 : F) * rho 106274) = ((1 : F) * rho 106284)

def relationRow8759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106273) * ((1 : F) * rho 106273) = ((1 : F) * rho 106285)

def relationRow8760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106274) * ((1 : F) * rho 106274) = ((1 : F) * rho 106286)

def relationRow8761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106287) * ((-1 : F) * rho 106285 + (1 : F) * rho 106286) = ((2 : F) * rho 106284)

def relationRow8762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106288) * ((2 : F) + (1 : F) * rho 106285 + (-1 : F) * rho 106286) = ((1 : F) * rho 106285 + (1 : F) * rho 106286)

def relationLc3769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 82⟩, ⟨(1 : F), 105149, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8763 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3769 rho) = ((1 : F) * rho 106289)

def relationRow8764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106289) * ((1 : F) * rho 106287 + (1 : F) * rho 106288) = ((1 : F) * rho 106290)

def relationLc3770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106288) * (relationLc3770 rho) = ((1 : F) * rho 106291)

def relationLc3771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106287) * (relationLc3771 rho) = ((1 : F) * rho 106292)

def relationRow8767 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106291) * ((1 : F) * rho 106292) = ((1 : F) * rho 106293)

def relationRow8768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106294) * ((1 : F) + (1 : F) * rho 106293) = ((1 : F) * rho 106291 + (1 : F) * rho 106292)

def relationRow8769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106295) * ((1 : F) + (-1 : F) * rho 106293) = ((1 : F) * rho 106290 + (-1 : F) * rho 106291 + (-1 : F) * rho 106292)

def relationLc3772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 82⟩], residual := [((1 : F), 106294)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103178) * (relationLc3772 rho) = ((1 : F) * rho 106296)

def relationLc3773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 82⟩], residual := [((1 : F), 106295)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103178) * (relationLc3773 rho) = ((1 : F) * rho 106297)

def relationRow8772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106287) * ((1 : F) * rho 106288) = ((1 : F) * rho 106298)

def relationRow8773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106287) * ((1 : F) * rho 106287) = ((1 : F) * rho 106299)

def relationRow8774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106288) * ((1 : F) * rho 106288) = ((1 : F) * rho 106300)

def relationRow8775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106301) * ((-1 : F) * rho 106299 + (1 : F) * rho 106300) = ((2 : F) * rho 106298)

def relationRow8776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106302) * ((2 : F) + (1 : F) * rho 106299 + (-1 : F) * rho 106300) = ((1 : F) * rho 106299 + (1 : F) * rho 106300)

def relationLc3774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 83⟩, ⟨(1 : F), 105149, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8777 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3774 rho) = ((1 : F) * rho 106303)

def relationRow8778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106303) * ((1 : F) * rho 106301 + (1 : F) * rho 106302) = ((1 : F) * rho 106304)

def relationLc3775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106302) * (relationLc3775 rho) = ((1 : F) * rho 106305)

def relationLc3776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106301) * (relationLc3776 rho) = ((1 : F) * rho 106306)

def relationRow8781 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106305) * ((1 : F) * rho 106306) = ((1 : F) * rho 106307)

def relationRow8782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106308) * ((1 : F) + (1 : F) * rho 106307) = ((1 : F) * rho 106305 + (1 : F) * rho 106306)

def relationRow8783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106309) * ((1 : F) + (-1 : F) * rho 106307) = ((1 : F) * rho 106304 + (-1 : F) * rho 106305 + (-1 : F) * rho 106306)

def relationLc3777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 83⟩], residual := [((1 : F), 106308)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103179) * (relationLc3777 rho) = ((1 : F) * rho 106310)

def relationLc3778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 83⟩], residual := [((1 : F), 106309)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103179) * (relationLc3778 rho) = ((1 : F) * rho 106311)

def relationRow8786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106301) * ((1 : F) * rho 106302) = ((1 : F) * rho 106312)

def relationRow8787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106301) * ((1 : F) * rho 106301) = ((1 : F) * rho 106313)

def relationRow8788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106302) * ((1 : F) * rho 106302) = ((1 : F) * rho 106314)

def relationRow8789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106315) * ((-1 : F) * rho 106313 + (1 : F) * rho 106314) = ((2 : F) * rho 106312)

def relationRow8790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106316) * ((2 : F) + (1 : F) * rho 106313 + (-1 : F) * rho 106314) = ((1 : F) * rho 106313 + (1 : F) * rho 106314)

def relationLc3779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 84⟩, ⟨(1 : F), 105149, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8791 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3779 rho) = ((1 : F) * rho 106317)

def relationRow8792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106317) * ((1 : F) * rho 106315 + (1 : F) * rho 106316) = ((1 : F) * rho 106318)

def relationLc3780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106316) * (relationLc3780 rho) = ((1 : F) * rho 106319)

def relationLc3781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106315) * (relationLc3781 rho) = ((1 : F) * rho 106320)

def relationRow8795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106319) * ((1 : F) * rho 106320) = ((1 : F) * rho 106321)

def relationRow8796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106322) * ((1 : F) + (1 : F) * rho 106321) = ((1 : F) * rho 106319 + (1 : F) * rho 106320)

def relationRow8797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106323) * ((1 : F) + (-1 : F) * rho 106321) = ((1 : F) * rho 106318 + (-1 : F) * rho 106319 + (-1 : F) * rho 106320)

def relationLc3782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 84⟩], residual := [((1 : F), 106322)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103180) * (relationLc3782 rho) = ((1 : F) * rho 106324)

def relationLc3783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 84⟩], residual := [((1 : F), 106323)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103180) * (relationLc3783 rho) = ((1 : F) * rho 106325)

def relationRow8800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106315) * ((1 : F) * rho 106316) = ((1 : F) * rho 106326)

def relationRow8801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106315) * ((1 : F) * rho 106315) = ((1 : F) * rho 106327)

def relationRow8802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106316) * ((1 : F) * rho 106316) = ((1 : F) * rho 106328)

def relationRow8803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106329) * ((-1 : F) * rho 106327 + (1 : F) * rho 106328) = ((2 : F) * rho 106326)

def relationRow8804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106330) * ((2 : F) + (1 : F) * rho 106327 + (-1 : F) * rho 106328) = ((1 : F) * rho 106327 + (1 : F) * rho 106328)

def relationLc3784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 85⟩, ⟨(1 : F), 105149, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8805 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3784 rho) = ((1 : F) * rho 106331)

def relationRow8806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106331) * ((1 : F) * rho 106329 + (1 : F) * rho 106330) = ((1 : F) * rho 106332)

def relationLc3785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106330) * (relationLc3785 rho) = ((1 : F) * rho 106333)

def relationLc3786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106329) * (relationLc3786 rho) = ((1 : F) * rho 106334)

def relationRow8809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106333) * ((1 : F) * rho 106334) = ((1 : F) * rho 106335)

def relationRow8810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106336) * ((1 : F) + (1 : F) * rho 106335) = ((1 : F) * rho 106333 + (1 : F) * rho 106334)

def relationRow8811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106337) * ((1 : F) + (-1 : F) * rho 106335) = ((1 : F) * rho 106332 + (-1 : F) * rho 106333 + (-1 : F) * rho 106334)

def relationLc3787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 85⟩], residual := [((1 : F), 106336)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103181) * (relationLc3787 rho) = ((1 : F) * rho 106338)

def relationLc3788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 85⟩], residual := [((1 : F), 106337)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103181) * (relationLc3788 rho) = ((1 : F) * rho 106339)

def relationRow8814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106329) * ((1 : F) * rho 106330) = ((1 : F) * rho 106340)

def relationRow8815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106329) * ((1 : F) * rho 106329) = ((1 : F) * rho 106341)

def relationRow8816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106330) * ((1 : F) * rho 106330) = ((1 : F) * rho 106342)

def relationRow8817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106343) * ((-1 : F) * rho 106341 + (1 : F) * rho 106342) = ((2 : F) * rho 106340)

def relationRow8818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106344) * ((2 : F) + (1 : F) * rho 106341 + (-1 : F) * rho 106342) = ((1 : F) * rho 106341 + (1 : F) * rho 106342)

def relationLc3789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 86⟩, ⟨(1 : F), 105149, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8819 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3789 rho) = ((1 : F) * rho 106345)

def relationRow8820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106345) * ((1 : F) * rho 106343 + (1 : F) * rho 106344) = ((1 : F) * rho 106346)

def relationLc3790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106344) * (relationLc3790 rho) = ((1 : F) * rho 106347)

def relationLc3791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106343) * (relationLc3791 rho) = ((1 : F) * rho 106348)

def relationRow8823 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106347) * ((1 : F) * rho 106348) = ((1 : F) * rho 106349)

def relationRow8824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106350) * ((1 : F) + (1 : F) * rho 106349) = ((1 : F) * rho 106347 + (1 : F) * rho 106348)

def relationRow8825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106351) * ((1 : F) + (-1 : F) * rho 106349) = ((1 : F) * rho 106346 + (-1 : F) * rho 106347 + (-1 : F) * rho 106348)

def relationLc3792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 86⟩], residual := [((1 : F), 106350)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103182) * (relationLc3792 rho) = ((1 : F) * rho 106352)

def relationLc3793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 86⟩], residual := [((1 : F), 106351)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103182) * (relationLc3793 rho) = ((1 : F) * rho 106353)

def relationRow8828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106343) * ((1 : F) * rho 106344) = ((1 : F) * rho 106354)

def relationRow8829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106343) * ((1 : F) * rho 106343) = ((1 : F) * rho 106355)

def relationRow8830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106344) * ((1 : F) * rho 106344) = ((1 : F) * rho 106356)

def relationRow8831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106357) * ((-1 : F) * rho 106355 + (1 : F) * rho 106356) = ((2 : F) * rho 106354)

def relationRow8832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106358) * ((2 : F) + (1 : F) * rho 106355 + (-1 : F) * rho 106356) = ((1 : F) * rho 106355 + (1 : F) * rho 106356)

def relationLc3794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 87⟩, ⟨(1 : F), 105149, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8833 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3794 rho) = ((1 : F) * rho 106359)

def relationRow8834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106359) * ((1 : F) * rho 106357 + (1 : F) * rho 106358) = ((1 : F) * rho 106360)

def relationLc3795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106358) * (relationLc3795 rho) = ((1 : F) * rho 106361)

def relationLc3796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106357) * (relationLc3796 rho) = ((1 : F) * rho 106362)

def relationRow8837 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106361) * ((1 : F) * rho 106362) = ((1 : F) * rho 106363)

def relationRow8838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106364) * ((1 : F) + (1 : F) * rho 106363) = ((1 : F) * rho 106361 + (1 : F) * rho 106362)

def relationRow8839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106365) * ((1 : F) + (-1 : F) * rho 106363) = ((1 : F) * rho 106360 + (-1 : F) * rho 106361 + (-1 : F) * rho 106362)

def relationLc3797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 87⟩], residual := [((1 : F), 106364)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103183) * (relationLc3797 rho) = ((1 : F) * rho 106366)

def relationLc3798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 87⟩], residual := [((1 : F), 106365)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103183) * (relationLc3798 rho) = ((1 : F) * rho 106367)

def relationRow8842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106357) * ((1 : F) * rho 106358) = ((1 : F) * rho 106368)

def relationRow8843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106357) * ((1 : F) * rho 106357) = ((1 : F) * rho 106369)

def relationRow8844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106358) * ((1 : F) * rho 106358) = ((1 : F) * rho 106370)

def relationRow8845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106371) * ((-1 : F) * rho 106369 + (1 : F) * rho 106370) = ((2 : F) * rho 106368)

def relationRow8846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106372) * ((2 : F) + (1 : F) * rho 106369 + (-1 : F) * rho 106370) = ((1 : F) * rho 106369 + (1 : F) * rho 106370)

def relationLc3799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 88⟩, ⟨(1 : F), 105149, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8847 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3799 rho) = ((1 : F) * rho 106373)

def relationRow8848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106373) * ((1 : F) * rho 106371 + (1 : F) * rho 106372) = ((1 : F) * rho 106374)

def relationLc3800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106372) * (relationLc3800 rho) = ((1 : F) * rho 106375)

def relationLc3801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106371) * (relationLc3801 rho) = ((1 : F) * rho 106376)

def relationRow8851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106375) * ((1 : F) * rho 106376) = ((1 : F) * rho 106377)

def relationRow8852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106378) * ((1 : F) + (1 : F) * rho 106377) = ((1 : F) * rho 106375 + (1 : F) * rho 106376)

def relationRow8853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106379) * ((1 : F) + (-1 : F) * rho 106377) = ((1 : F) * rho 106374 + (-1 : F) * rho 106375 + (-1 : F) * rho 106376)

def relationLc3802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 88⟩], residual := [((1 : F), 106378)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103184) * (relationLc3802 rho) = ((1 : F) * rho 106380)

def relationLc3803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 88⟩], residual := [((1 : F), 106379)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103184) * (relationLc3803 rho) = ((1 : F) * rho 106381)

def relationRow8856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106371) * ((1 : F) * rho 106372) = ((1 : F) * rho 106382)

def relationRow8857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106371) * ((1 : F) * rho 106371) = ((1 : F) * rho 106383)

def relationRow8858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106372) * ((1 : F) * rho 106372) = ((1 : F) * rho 106384)

def relationRow8859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106385) * ((-1 : F) * rho 106383 + (1 : F) * rho 106384) = ((2 : F) * rho 106382)

def relationRow8860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106386) * ((2 : F) + (1 : F) * rho 106383 + (-1 : F) * rho 106384) = ((1 : F) * rho 106383 + (1 : F) * rho 106384)

def relationLc3804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 89⟩, ⟨(1 : F), 105149, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8861 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3804 rho) = ((1 : F) * rho 106387)

def relationRow8862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106387) * ((1 : F) * rho 106385 + (1 : F) * rho 106386) = ((1 : F) * rho 106388)

def relationLc3805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106386) * (relationLc3805 rho) = ((1 : F) * rho 106389)

def relationLc3806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106385) * (relationLc3806 rho) = ((1 : F) * rho 106390)

def relationRow8865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106389) * ((1 : F) * rho 106390) = ((1 : F) * rho 106391)

def relationRow8866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106392) * ((1 : F) + (1 : F) * rho 106391) = ((1 : F) * rho 106389 + (1 : F) * rho 106390)

def relationRow8867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106393) * ((1 : F) + (-1 : F) * rho 106391) = ((1 : F) * rho 106388 + (-1 : F) * rho 106389 + (-1 : F) * rho 106390)

def relationLc3807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 89⟩], residual := [((1 : F), 106392)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103185) * (relationLc3807 rho) = ((1 : F) * rho 106394)

def relationLc3808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 89⟩], residual := [((1 : F), 106393)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103185) * (relationLc3808 rho) = ((1 : F) * rho 106395)

def relationRow8870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106385) * ((1 : F) * rho 106386) = ((1 : F) * rho 106396)

def relationRow8871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106385) * ((1 : F) * rho 106385) = ((1 : F) * rho 106397)

def relationRow8872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106386) * ((1 : F) * rho 106386) = ((1 : F) * rho 106398)

def relationRow8873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106399) * ((-1 : F) * rho 106397 + (1 : F) * rho 106398) = ((2 : F) * rho 106396)

def relationRow8874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106400) * ((2 : F) + (1 : F) * rho 106397 + (-1 : F) * rho 106398) = ((1 : F) * rho 106397 + (1 : F) * rho 106398)

def relationLc3809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 90⟩, ⟨(1 : F), 105149, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8875 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3809 rho) = ((1 : F) * rho 106401)

def relationRow8876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106401) * ((1 : F) * rho 106399 + (1 : F) * rho 106400) = ((1 : F) * rho 106402)

def relationLc3810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106400) * (relationLc3810 rho) = ((1 : F) * rho 106403)

def relationLc3811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106399) * (relationLc3811 rho) = ((1 : F) * rho 106404)

def relationRow8879 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106403) * ((1 : F) * rho 106404) = ((1 : F) * rho 106405)

def relationRow8880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106406) * ((1 : F) + (1 : F) * rho 106405) = ((1 : F) * rho 106403 + (1 : F) * rho 106404)

def relationRow8881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106407) * ((1 : F) + (-1 : F) * rho 106405) = ((1 : F) * rho 106402 + (-1 : F) * rho 106403 + (-1 : F) * rho 106404)

def relationLc3812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 90⟩], residual := [((1 : F), 106406)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103186) * (relationLc3812 rho) = ((1 : F) * rho 106408)

def relationLc3813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 90⟩], residual := [((1 : F), 106407)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103186) * (relationLc3813 rho) = ((1 : F) * rho 106409)

def relationRow8884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106399) * ((1 : F) * rho 106400) = ((1 : F) * rho 106410)

def relationRow8885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106399) * ((1 : F) * rho 106399) = ((1 : F) * rho 106411)

def relationRow8886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106400) * ((1 : F) * rho 106400) = ((1 : F) * rho 106412)

def relationRow8887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106413) * ((-1 : F) * rho 106411 + (1 : F) * rho 106412) = ((2 : F) * rho 106410)

def relationRow8888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106414) * ((2 : F) + (1 : F) * rho 106411 + (-1 : F) * rho 106412) = ((1 : F) * rho 106411 + (1 : F) * rho 106412)

def relationLc3814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 91⟩, ⟨(1 : F), 105149, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8889 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3814 rho) = ((1 : F) * rho 106415)

def relationRow8890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106415) * ((1 : F) * rho 106413 + (1 : F) * rho 106414) = ((1 : F) * rho 106416)

def relationLc3815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106414) * (relationLc3815 rho) = ((1 : F) * rho 106417)

def relationLc3816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106413) * (relationLc3816 rho) = ((1 : F) * rho 106418)

def relationRow8893 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106417) * ((1 : F) * rho 106418) = ((1 : F) * rho 106419)

def relationRow8894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106420) * ((1 : F) + (1 : F) * rho 106419) = ((1 : F) * rho 106417 + (1 : F) * rho 106418)

def relationRow8895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106421) * ((1 : F) + (-1 : F) * rho 106419) = ((1 : F) * rho 106416 + (-1 : F) * rho 106417 + (-1 : F) * rho 106418)

def relationLc3817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 91⟩], residual := [((1 : F), 106420)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103187) * (relationLc3817 rho) = ((1 : F) * rho 106422)

def relationLc3818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 91⟩], residual := [((1 : F), 106421)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103187) * (relationLc3818 rho) = ((1 : F) * rho 106423)

def relationRow8898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106413) * ((1 : F) * rho 106414) = ((1 : F) * rho 106424)

def relationRow8899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106413) * ((1 : F) * rho 106413) = ((1 : F) * rho 106425)

def relationRow8900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106414) * ((1 : F) * rho 106414) = ((1 : F) * rho 106426)

def relationRow8901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106427) * ((-1 : F) * rho 106425 + (1 : F) * rho 106426) = ((2 : F) * rho 106424)

def relationRow8902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106428) * ((2 : F) + (1 : F) * rho 106425 + (-1 : F) * rho 106426) = ((1 : F) * rho 106425 + (1 : F) * rho 106426)

def relationLc3819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 92⟩, ⟨(1 : F), 105149, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8903 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3819 rho) = ((1 : F) * rho 106429)

def relationRow8904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106429) * ((1 : F) * rho 106427 + (1 : F) * rho 106428) = ((1 : F) * rho 106430)

def relationLc3820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106428) * (relationLc3820 rho) = ((1 : F) * rho 106431)

def relationLc3821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106427) * (relationLc3821 rho) = ((1 : F) * rho 106432)

def relationRow8907 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106431) * ((1 : F) * rho 106432) = ((1 : F) * rho 106433)

def relationRow8908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106434) * ((1 : F) + (1 : F) * rho 106433) = ((1 : F) * rho 106431 + (1 : F) * rho 106432)

def relationRow8909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106435) * ((1 : F) + (-1 : F) * rho 106433) = ((1 : F) * rho 106430 + (-1 : F) * rho 106431 + (-1 : F) * rho 106432)

def relationLc3822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 92⟩], residual := [((1 : F), 106434)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103188) * (relationLc3822 rho) = ((1 : F) * rho 106436)

def relationLc3823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 92⟩], residual := [((1 : F), 106435)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103188) * (relationLc3823 rho) = ((1 : F) * rho 106437)

def relationRow8912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106427) * ((1 : F) * rho 106428) = ((1 : F) * rho 106438)

def relationRow8913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106427) * ((1 : F) * rho 106427) = ((1 : F) * rho 106439)

def relationRow8914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106428) * ((1 : F) * rho 106428) = ((1 : F) * rho 106440)

def relationRow8915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106441) * ((-1 : F) * rho 106439 + (1 : F) * rho 106440) = ((2 : F) * rho 106438)

def relationRow8916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106442) * ((2 : F) + (1 : F) * rho 106439 + (-1 : F) * rho 106440) = ((1 : F) * rho 106439 + (1 : F) * rho 106440)

def relationLc3824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 93⟩, ⟨(1 : F), 105149, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8917 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3824 rho) = ((1 : F) * rho 106443)

def relationRow8918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106443) * ((1 : F) * rho 106441 + (1 : F) * rho 106442) = ((1 : F) * rho 106444)

def relationLc3825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106442) * (relationLc3825 rho) = ((1 : F) * rho 106445)

def relationLc3826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106441) * (relationLc3826 rho) = ((1 : F) * rho 106446)

def relationRow8921 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106445) * ((1 : F) * rho 106446) = ((1 : F) * rho 106447)

def relationRow8922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106448) * ((1 : F) + (1 : F) * rho 106447) = ((1 : F) * rho 106445 + (1 : F) * rho 106446)

def relationRow8923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106449) * ((1 : F) + (-1 : F) * rho 106447) = ((1 : F) * rho 106444 + (-1 : F) * rho 106445 + (-1 : F) * rho 106446)

def relationLc3827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 93⟩], residual := [((1 : F), 106448)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103189) * (relationLc3827 rho) = ((1 : F) * rho 106450)

def relationLc3828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 93⟩], residual := [((1 : F), 106449)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103189) * (relationLc3828 rho) = ((1 : F) * rho 106451)

def relationRow8926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106441) * ((1 : F) * rho 106442) = ((1 : F) * rho 106452)

def relationRow8927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106441) * ((1 : F) * rho 106441) = ((1 : F) * rho 106453)

def relationRow8928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106442) * ((1 : F) * rho 106442) = ((1 : F) * rho 106454)

def relationRow8929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106455) * ((-1 : F) * rho 106453 + (1 : F) * rho 106454) = ((2 : F) * rho 106452)

def relationRow8930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106456) * ((2 : F) + (1 : F) * rho 106453 + (-1 : F) * rho 106454) = ((1 : F) * rho 106453 + (1 : F) * rho 106454)

def relationLc3829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 94⟩, ⟨(1 : F), 105149, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8931 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3829 rho) = ((1 : F) * rho 106457)

def relationRow8932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106457) * ((1 : F) * rho 106455 + (1 : F) * rho 106456) = ((1 : F) * rho 106458)

def relationLc3830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106456) * (relationLc3830 rho) = ((1 : F) * rho 106459)

def relationLc3831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106455) * (relationLc3831 rho) = ((1 : F) * rho 106460)

def relationRow8935 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106459) * ((1 : F) * rho 106460) = ((1 : F) * rho 106461)

def relationRow8936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106462) * ((1 : F) + (1 : F) * rho 106461) = ((1 : F) * rho 106459 + (1 : F) * rho 106460)

def relationRow8937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106463) * ((1 : F) + (-1 : F) * rho 106461) = ((1 : F) * rho 106458 + (-1 : F) * rho 106459 + (-1 : F) * rho 106460)

def relationLc3832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 94⟩], residual := [((1 : F), 106462)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103190) * (relationLc3832 rho) = ((1 : F) * rho 106464)

def relationLc3833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 94⟩], residual := [((1 : F), 106463)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103190) * (relationLc3833 rho) = ((1 : F) * rho 106465)

def relationRow8940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106455) * ((1 : F) * rho 106456) = ((1 : F) * rho 106466)

def relationRow8941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106455) * ((1 : F) * rho 106455) = ((1 : F) * rho 106467)

def relationRow8942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106456) * ((1 : F) * rho 106456) = ((1 : F) * rho 106468)

def relationRow8943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106469) * ((-1 : F) * rho 106467 + (1 : F) * rho 106468) = ((2 : F) * rho 106466)

def relationRow8944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106470) * ((2 : F) + (1 : F) * rho 106467 + (-1 : F) * rho 106468) = ((1 : F) * rho 106467 + (1 : F) * rho 106468)

def relationLc3834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 95⟩, ⟨(1 : F), 105149, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8945 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3834 rho) = ((1 : F) * rho 106471)

def relationRow8946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106471) * ((1 : F) * rho 106469 + (1 : F) * rho 106470) = ((1 : F) * rho 106472)

def relationLc3835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106470) * (relationLc3835 rho) = ((1 : F) * rho 106473)

def relationLc3836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106469) * (relationLc3836 rho) = ((1 : F) * rho 106474)

def relationRow8949 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106473) * ((1 : F) * rho 106474) = ((1 : F) * rho 106475)

def relationRow8950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106476) * ((1 : F) + (1 : F) * rho 106475) = ((1 : F) * rho 106473 + (1 : F) * rho 106474)

def relationRow8951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106477) * ((1 : F) + (-1 : F) * rho 106475) = ((1 : F) * rho 106472 + (-1 : F) * rho 106473 + (-1 : F) * rho 106474)

def relationLc3837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 95⟩], residual := [((1 : F), 106476)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103191) * (relationLc3837 rho) = ((1 : F) * rho 106478)

def relationLc3838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 95⟩], residual := [((1 : F), 106477)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103191) * (relationLc3838 rho) = ((1 : F) * rho 106479)

def relationRow8954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106469) * ((1 : F) * rho 106470) = ((1 : F) * rho 106480)

def relationRow8955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106469) * ((1 : F) * rho 106469) = ((1 : F) * rho 106481)

def relationRow8956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106470) * ((1 : F) * rho 106470) = ((1 : F) * rho 106482)

def relationRow8957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106483) * ((-1 : F) * rho 106481 + (1 : F) * rho 106482) = ((2 : F) * rho 106480)

def relationRow8958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106484) * ((2 : F) + (1 : F) * rho 106481 + (-1 : F) * rho 106482) = ((1 : F) * rho 106481 + (1 : F) * rho 106482)

def relationLc3839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 96⟩, ⟨(1 : F), 105149, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8959 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3839 rho) = ((1 : F) * rho 106485)

def relationRow8960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106485) * ((1 : F) * rho 106483 + (1 : F) * rho 106484) = ((1 : F) * rho 106486)

def relationLc3840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106484) * (relationLc3840 rho) = ((1 : F) * rho 106487)

def relationLc3841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106483) * (relationLc3841 rho) = ((1 : F) * rho 106488)

def relationRow8963 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106487) * ((1 : F) * rho 106488) = ((1 : F) * rho 106489)

def relationRow8964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106490) * ((1 : F) + (1 : F) * rho 106489) = ((1 : F) * rho 106487 + (1 : F) * rho 106488)

def relationRow8965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106491) * ((1 : F) + (-1 : F) * rho 106489) = ((1 : F) * rho 106486 + (-1 : F) * rho 106487 + (-1 : F) * rho 106488)

def relationLc3842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 96⟩], residual := [((1 : F), 106490)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103192) * (relationLc3842 rho) = ((1 : F) * rho 106492)

def relationLc3843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 96⟩], residual := [((1 : F), 106491)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103192) * (relationLc3843 rho) = ((1 : F) * rho 106493)

def relationRow8968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106483) * ((1 : F) * rho 106484) = ((1 : F) * rho 106494)

def relationRow8969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106483) * ((1 : F) * rho 106483) = ((1 : F) * rho 106495)

def relationRow8970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106484) * ((1 : F) * rho 106484) = ((1 : F) * rho 106496)

def relationRow8971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106497) * ((-1 : F) * rho 106495 + (1 : F) * rho 106496) = ((2 : F) * rho 106494)

def relationRow8972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106498) * ((2 : F) + (1 : F) * rho 106495 + (-1 : F) * rho 106496) = ((1 : F) * rho 106495 + (1 : F) * rho 106496)

def relationLc3844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 97⟩, ⟨(1 : F), 105149, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8973 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3844 rho) = ((1 : F) * rho 106499)

def relationRow8974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106499) * ((1 : F) * rho 106497 + (1 : F) * rho 106498) = ((1 : F) * rho 106500)

def relationLc3845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106498) * (relationLc3845 rho) = ((1 : F) * rho 106501)

def relationLc3846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106497) * (relationLc3846 rho) = ((1 : F) * rho 106502)

def relationRow8977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106501) * ((1 : F) * rho 106502) = ((1 : F) * rho 106503)

def relationRow8978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106504) * ((1 : F) + (1 : F) * rho 106503) = ((1 : F) * rho 106501 + (1 : F) * rho 106502)

def relationRow8979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106505) * ((1 : F) + (-1 : F) * rho 106503) = ((1 : F) * rho 106500 + (-1 : F) * rho 106501 + (-1 : F) * rho 106502)

def relationLc3847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 97⟩], residual := [((1 : F), 106504)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103193) * (relationLc3847 rho) = ((1 : F) * rho 106506)

def relationLc3848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 97⟩], residual := [((1 : F), 106505)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103193) * (relationLc3848 rho) = ((1 : F) * rho 106507)

def relationRow8982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106497) * ((1 : F) * rho 106498) = ((1 : F) * rho 106508)

def relationRow8983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106497) * ((1 : F) * rho 106497) = ((1 : F) * rho 106509)

def relationRow8984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106498) * ((1 : F) * rho 106498) = ((1 : F) * rho 106510)

def relationRow8985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106511) * ((-1 : F) * rho 106509 + (1 : F) * rho 106510) = ((2 : F) * rho 106508)

def relationRow8986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106512) * ((2 : F) + (1 : F) * rho 106509 + (-1 : F) * rho 106510) = ((1 : F) * rho 106509 + (1 : F) * rho 106510)

def relationLc3849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 98⟩, ⟨(1 : F), 105149, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8987 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3849 rho) = ((1 : F) * rho 106513)

def relationRow8988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106513) * ((1 : F) * rho 106511 + (1 : F) * rho 106512) = ((1 : F) * rho 106514)

def relationLc3850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106512) * (relationLc3850 rho) = ((1 : F) * rho 106515)

def relationLc3851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106511) * (relationLc3851 rho) = ((1 : F) * rho 106516)

def relationRow8991 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106515) * ((1 : F) * rho 106516) = ((1 : F) * rho 106517)

def relationRow8992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106518) * ((1 : F) + (1 : F) * rho 106517) = ((1 : F) * rho 106515 + (1 : F) * rho 106516)

def relationRow8993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106519) * ((1 : F) + (-1 : F) * rho 106517) = ((1 : F) * rho 106514 + (-1 : F) * rho 106515 + (-1 : F) * rho 106516)

def relationLc3852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 98⟩], residual := [((1 : F), 106518)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103194) * (relationLc3852 rho) = ((1 : F) * rho 106520)

def relationLc3853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 98⟩], residual := [((1 : F), 106519)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103194) * (relationLc3853 rho) = ((1 : F) * rho 106521)

def relationRow8996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106511) * ((1 : F) * rho 106512) = ((1 : F) * rho 106522)

def relationRow8997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106511) * ((1 : F) * rho 106511) = ((1 : F) * rho 106523)

def relationRow8998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106512) * ((1 : F) * rho 106512) = ((1 : F) * rho 106524)

def relationRow8999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106525) * ((-1 : F) * rho 106523 + (1 : F) * rho 106524) = ((2 : F) * rho 106522)

def relationRow9000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106526) * ((2 : F) + (1 : F) * rho 106523 + (-1 : F) * rho 106524) = ((1 : F) * rho 106523 + (1 : F) * rho 106524)

def relationLc3854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 99⟩, ⟨(1 : F), 105149, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9001 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3854 rho) = ((1 : F) * rho 106527)

def relationRow9002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106527) * ((1 : F) * rho 106525 + (1 : F) * rho 106526) = ((1 : F) * rho 106528)

def relationLc3855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106526) * (relationLc3855 rho) = ((1 : F) * rho 106529)

def relationLc3856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106525) * (relationLc3856 rho) = ((1 : F) * rho 106530)

def relationRow9005 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106529) * ((1 : F) * rho 106530) = ((1 : F) * rho 106531)

def relationRow9006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106532) * ((1 : F) + (1 : F) * rho 106531) = ((1 : F) * rho 106529 + (1 : F) * rho 106530)

def relationRow9007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106533) * ((1 : F) + (-1 : F) * rho 106531) = ((1 : F) * rho 106528 + (-1 : F) * rho 106529 + (-1 : F) * rho 106530)

def relationLc3857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 99⟩], residual := [((1 : F), 106532)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103195) * (relationLc3857 rho) = ((1 : F) * rho 106534)

def relationLc3858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 99⟩], residual := [((1 : F), 106533)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103195) * (relationLc3858 rho) = ((1 : F) * rho 106535)

def relationRow9010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106525) * ((1 : F) * rho 106526) = ((1 : F) * rho 106536)

def relationRow9011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106525) * ((1 : F) * rho 106525) = ((1 : F) * rho 106537)

def relationRow9012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106526) * ((1 : F) * rho 106526) = ((1 : F) * rho 106538)

def relationRow9013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106539) * ((-1 : F) * rho 106537 + (1 : F) * rho 106538) = ((2 : F) * rho 106536)

def relationRow9014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106540) * ((2 : F) + (1 : F) * rho 106537 + (-1 : F) * rho 106538) = ((1 : F) * rho 106537 + (1 : F) * rho 106538)

def relationLc3859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 100⟩, ⟨(1 : F), 105149, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9015 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3859 rho) = ((1 : F) * rho 106541)

def relationRow9016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106541) * ((1 : F) * rho 106539 + (1 : F) * rho 106540) = ((1 : F) * rho 106542)

def relationLc3860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106540) * (relationLc3860 rho) = ((1 : F) * rho 106543)

def relationLc3861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106539) * (relationLc3861 rho) = ((1 : F) * rho 106544)

def relationRow9019 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 106543) * ((1 : F) * rho 106544) = ((1 : F) * rho 106545)

def relationRow9020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106546) * ((1 : F) + (1 : F) * rho 106545) = ((1 : F) * rho 106543 + (1 : F) * rho 106544)

def relationRow9021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106547) * ((1 : F) + (-1 : F) * rho 106545) = ((1 : F) * rho 106542 + (-1 : F) * rho 106543 + (-1 : F) * rho 106544)

def relationLc3862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 100⟩], residual := [((1 : F), 106546)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103196) * (relationLc3862 rho) = ((1 : F) * rho 106548)

def relationLc3863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 100⟩], residual := [((1 : F), 106547)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103196) * (relationLc3863 rho) = ((1 : F) * rho 106549)

def relationRow9024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106539) * ((1 : F) * rho 106540) = ((1 : F) * rho 106550)

def relationRow9025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106539) * ((1 : F) * rho 106539) = ((1 : F) * rho 106551)

def relationRow9026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106540) * ((1 : F) * rho 106540) = ((1 : F) * rho 106552)

def relationRow9027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106553) * ((-1 : F) * rho 106551 + (1 : F) * rho 106552) = ((2 : F) * rho 106550)

def relationRow9028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106554) * ((2 : F) + (1 : F) * rho 106551 + (-1 : F) * rho 106552) = ((1 : F) * rho 106551 + (1 : F) * rho 106552)

def relationLc3864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 150⟩, ⟨(-1 : F), 101539, 14, 101⟩, ⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9029 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3864 rho) = ((1 : F) * rho 106555)

def relationLc3865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(-1 : F), 83730, 5, 127⟩, ⟨(1 : F), 83731, 5, 127⟩], residual := [((-1 : F), 83727)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106555) * (relationLc3865 rho) = ((1 : F) * rho 106556)

def relationLc3866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99589, 13, 150⟩, ⟨(-1 : F), 101540, 14, 101⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow9031 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3866 rho) = ((1 : F) * rho 106557)

def relationRow9032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106557) * (relationLc3865 rho) = ((1 : F) * rho 106558)

def relationPart0 (rho : Nat -> F) : Prop :=
    relationRow0 rho ∧
    relationRow1 rho ∧
    relationRow2 rho ∧
    relationRow3 rho ∧
    relationRow4 rho ∧
    relationRow5 rho ∧
    relationRow6 rho ∧
    relationRow7 rho ∧
    relationRow8 rho ∧
    relationRow9 rho ∧
    relationRow10 rho ∧
    relationRow11 rho ∧
    relationRow12 rho ∧
    relationRow13 rho ∧
    relationRow14 rho ∧
    relationRow15 rho ∧
    relationRow16 rho ∧
    relationRow17 rho ∧
    relationRow18 rho ∧
    relationRow19 rho ∧
    relationRow20 rho ∧
    relationRow21 rho ∧
    relationRow22 rho ∧
    relationRow23 rho ∧
    relationRow24 rho ∧
    relationRow25 rho ∧
    relationRow26 rho ∧
    relationRow27 rho ∧
    relationRow28 rho ∧
    relationRow29 rho ∧
    relationRow30 rho ∧
    relationRow31 rho ∧
    relationRow32 rho ∧
    relationRow33 rho ∧
    relationRow34 rho ∧
    relationRow35 rho ∧
    relationRow36 rho ∧
    relationRow37 rho ∧
    relationRow38 rho ∧
    relationRow39 rho ∧
    relationRow40 rho ∧
    relationRow41 rho ∧
    relationRow42 rho ∧
    relationRow43 rho ∧
    relationRow44 rho ∧
    relationRow45 rho ∧
    relationRow46 rho ∧
    relationRow47 rho ∧
    relationRow48 rho ∧
    relationRow49 rho ∧
    relationRow50 rho ∧
    relationRow51 rho ∧
    relationRow52 rho ∧
    relationRow53 rho ∧
    relationRow54 rho ∧
    relationRow55 rho ∧
    relationRow56 rho ∧
    relationRow57 rho ∧
    relationRow58 rho ∧
    relationRow59 rho ∧
    relationRow60 rho ∧
    relationRow61 rho ∧
    relationRow62 rho ∧
    relationRow63 rho ∧
    relationRow64 rho ∧
    relationRow65 rho ∧
    relationRow66 rho ∧
    relationRow67 rho ∧
    relationRow68 rho ∧
    relationRow69 rho ∧
    relationRow70 rho ∧
    relationRow71 rho ∧
    relationRow72 rho ∧
    relationRow73 rho ∧
    relationRow74 rho ∧
    relationRow75 rho ∧
    relationRow76 rho ∧
    relationRow77 rho ∧
    relationRow78 rho ∧
    relationRow79 rho

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
