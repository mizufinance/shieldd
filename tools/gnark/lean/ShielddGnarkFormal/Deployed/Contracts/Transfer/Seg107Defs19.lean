import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationRow7916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103117) * (relationLc3467 rho) = ((1 : F) * rho 105442)

def relationLc3468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 21⟩], residual := [((1 : F), 105441)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103117) * (relationLc3468 rho) = ((1 : F) * rho 105443)

def relationRow7918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105433) * ((1 : F) * rho 105434) = ((1 : F) * rho 105444)

def relationRow7919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105433) * ((1 : F) * rho 105433) = ((1 : F) * rho 105445)

def relationRow7920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105434) * ((1 : F) * rho 105434) = ((1 : F) * rho 105446)

def relationRow7921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105447) * ((-1 : F) * rho 105445 + (1 : F) * rho 105446) = ((2 : F) * rho 105444)

def relationRow7922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105448) * ((2 : F) + (1 : F) * rho 105445 + (-1 : F) * rho 105446) = ((1 : F) * rho 105445 + (1 : F) * rho 105446)

def relationLc3469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 22⟩, ⟨(1 : F), 105149, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3469 rho) = ((1 : F) * rho 105449)

def relationRow7924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105449) * ((1 : F) * rho 105447 + (1 : F) * rho 105448) = ((1 : F) * rho 105450)

def relationLc3470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105448) * (relationLc3470 rho) = ((1 : F) * rho 105451)

def relationLc3471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105447) * (relationLc3471 rho) = ((1 : F) * rho 105452)

def relationRow7927 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105451) * ((1 : F) * rho 105452) = ((1 : F) * rho 105453)

def relationRow7928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105454) * ((1 : F) + (1 : F) * rho 105453) = ((1 : F) * rho 105451 + (1 : F) * rho 105452)

def relationRow7929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105455) * ((1 : F) + (-1 : F) * rho 105453) = ((1 : F) * rho 105450 + (-1 : F) * rho 105451 + (-1 : F) * rho 105452)

def relationLc3472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 22⟩], residual := [((1 : F), 105454)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103118) * (relationLc3472 rho) = ((1 : F) * rho 105456)

def relationLc3473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 22⟩], residual := [((1 : F), 105455)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103118) * (relationLc3473 rho) = ((1 : F) * rho 105457)

def relationRow7932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105447) * ((1 : F) * rho 105448) = ((1 : F) * rho 105458)

def relationRow7933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105447) * ((1 : F) * rho 105447) = ((1 : F) * rho 105459)

def relationRow7934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105448) * ((1 : F) * rho 105448) = ((1 : F) * rho 105460)

def relationRow7935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105461) * ((-1 : F) * rho 105459 + (1 : F) * rho 105460) = ((2 : F) * rho 105458)

def relationRow7936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105462) * ((2 : F) + (1 : F) * rho 105459 + (-1 : F) * rho 105460) = ((1 : F) * rho 105459 + (1 : F) * rho 105460)

def relationLc3474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 23⟩, ⟨(1 : F), 105149, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3474 rho) = ((1 : F) * rho 105463)

def relationRow7938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105463) * ((1 : F) * rho 105461 + (1 : F) * rho 105462) = ((1 : F) * rho 105464)

def relationLc3475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105462) * (relationLc3475 rho) = ((1 : F) * rho 105465)

def relationLc3476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105461) * (relationLc3476 rho) = ((1 : F) * rho 105466)

def relationRow7941 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105465) * ((1 : F) * rho 105466) = ((1 : F) * rho 105467)

def relationRow7942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105468) * ((1 : F) + (1 : F) * rho 105467) = ((1 : F) * rho 105465 + (1 : F) * rho 105466)

def relationRow7943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105469) * ((1 : F) + (-1 : F) * rho 105467) = ((1 : F) * rho 105464 + (-1 : F) * rho 105465 + (-1 : F) * rho 105466)

def relationLc3477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 23⟩], residual := [((1 : F), 105468)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103119) * (relationLc3477 rho) = ((1 : F) * rho 105470)

def relationLc3478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 23⟩], residual := [((1 : F), 105469)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103119) * (relationLc3478 rho) = ((1 : F) * rho 105471)

def relationRow7946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105461) * ((1 : F) * rho 105462) = ((1 : F) * rho 105472)

def relationRow7947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105461) * ((1 : F) * rho 105461) = ((1 : F) * rho 105473)

def relationRow7948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105462) * ((1 : F) * rho 105462) = ((1 : F) * rho 105474)

def relationRow7949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105475) * ((-1 : F) * rho 105473 + (1 : F) * rho 105474) = ((2 : F) * rho 105472)

def relationRow7950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105476) * ((2 : F) + (1 : F) * rho 105473 + (-1 : F) * rho 105474) = ((1 : F) * rho 105473 + (1 : F) * rho 105474)

def relationLc3479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 24⟩, ⟨(1 : F), 105149, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3479 rho) = ((1 : F) * rho 105477)

def relationRow7952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105477) * ((1 : F) * rho 105475 + (1 : F) * rho 105476) = ((1 : F) * rho 105478)

def relationLc3480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105476) * (relationLc3480 rho) = ((1 : F) * rho 105479)

def relationLc3481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105475) * (relationLc3481 rho) = ((1 : F) * rho 105480)

def relationRow7955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105479) * ((1 : F) * rho 105480) = ((1 : F) * rho 105481)

def relationRow7956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105482) * ((1 : F) + (1 : F) * rho 105481) = ((1 : F) * rho 105479 + (1 : F) * rho 105480)

def relationRow7957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105483) * ((1 : F) + (-1 : F) * rho 105481) = ((1 : F) * rho 105478 + (-1 : F) * rho 105479 + (-1 : F) * rho 105480)

def relationLc3482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 24⟩], residual := [((1 : F), 105482)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103120) * (relationLc3482 rho) = ((1 : F) * rho 105484)

def relationLc3483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 24⟩], residual := [((1 : F), 105483)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103120) * (relationLc3483 rho) = ((1 : F) * rho 105485)

def relationRow7960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105475) * ((1 : F) * rho 105476) = ((1 : F) * rho 105486)

def relationRow7961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105475) * ((1 : F) * rho 105475) = ((1 : F) * rho 105487)

def relationRow7962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105476) * ((1 : F) * rho 105476) = ((1 : F) * rho 105488)

def relationRow7963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105489) * ((-1 : F) * rho 105487 + (1 : F) * rho 105488) = ((2 : F) * rho 105486)

def relationRow7964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105490) * ((2 : F) + (1 : F) * rho 105487 + (-1 : F) * rho 105488) = ((1 : F) * rho 105487 + (1 : F) * rho 105488)

def relationLc3484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 25⟩, ⟨(1 : F), 105149, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3484 rho) = ((1 : F) * rho 105491)

def relationRow7966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105491) * ((1 : F) * rho 105489 + (1 : F) * rho 105490) = ((1 : F) * rho 105492)

def relationLc3485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105490) * (relationLc3485 rho) = ((1 : F) * rho 105493)

def relationLc3486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105489) * (relationLc3486 rho) = ((1 : F) * rho 105494)

def relationRow7969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105493) * ((1 : F) * rho 105494) = ((1 : F) * rho 105495)

def relationRow7970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105496) * ((1 : F) + (1 : F) * rho 105495) = ((1 : F) * rho 105493 + (1 : F) * rho 105494)

def relationRow7971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105497) * ((1 : F) + (-1 : F) * rho 105495) = ((1 : F) * rho 105492 + (-1 : F) * rho 105493 + (-1 : F) * rho 105494)

def relationLc3487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 25⟩], residual := [((1 : F), 105496)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103121) * (relationLc3487 rho) = ((1 : F) * rho 105498)

def relationLc3488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 25⟩], residual := [((1 : F), 105497)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103121) * (relationLc3488 rho) = ((1 : F) * rho 105499)

def relationRow7974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105489) * ((1 : F) * rho 105490) = ((1 : F) * rho 105500)

def relationRow7975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105489) * ((1 : F) * rho 105489) = ((1 : F) * rho 105501)

def relationRow7976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105490) * ((1 : F) * rho 105490) = ((1 : F) * rho 105502)

def relationRow7977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105503) * ((-1 : F) * rho 105501 + (1 : F) * rho 105502) = ((2 : F) * rho 105500)

def relationRow7978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105504) * ((2 : F) + (1 : F) * rho 105501 + (-1 : F) * rho 105502) = ((1 : F) * rho 105501 + (1 : F) * rho 105502)

def relationLc3489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 26⟩, ⟨(1 : F), 105149, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3489 rho) = ((1 : F) * rho 105505)

def relationRow7980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105505) * ((1 : F) * rho 105503 + (1 : F) * rho 105504) = ((1 : F) * rho 105506)

def relationLc3490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105504) * (relationLc3490 rho) = ((1 : F) * rho 105507)

def relationLc3491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105503) * (relationLc3491 rho) = ((1 : F) * rho 105508)

def relationRow7983 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105507) * ((1 : F) * rho 105508) = ((1 : F) * rho 105509)

def relationRow7984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105510) * ((1 : F) + (1 : F) * rho 105509) = ((1 : F) * rho 105507 + (1 : F) * rho 105508)

def relationRow7985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105511) * ((1 : F) + (-1 : F) * rho 105509) = ((1 : F) * rho 105506 + (-1 : F) * rho 105507 + (-1 : F) * rho 105508)

def relationLc3492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 26⟩], residual := [((1 : F), 105510)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103122) * (relationLc3492 rho) = ((1 : F) * rho 105512)

def relationLc3493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 26⟩], residual := [((1 : F), 105511)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103122) * (relationLc3493 rho) = ((1 : F) * rho 105513)

def relationRow7988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105503) * ((1 : F) * rho 105504) = ((1 : F) * rho 105514)

def relationRow7989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105503) * ((1 : F) * rho 105503) = ((1 : F) * rho 105515)

def relationRow7990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105504) * ((1 : F) * rho 105504) = ((1 : F) * rho 105516)

def relationRow7991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105517) * ((-1 : F) * rho 105515 + (1 : F) * rho 105516) = ((2 : F) * rho 105514)

def relationRow7992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105518) * ((2 : F) + (1 : F) * rho 105515 + (-1 : F) * rho 105516) = ((1 : F) * rho 105515 + (1 : F) * rho 105516)

def relationLc3494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 27⟩, ⟨(1 : F), 105149, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7993 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3494 rho) = ((1 : F) * rho 105519)

def relationRow7994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105519) * ((1 : F) * rho 105517 + (1 : F) * rho 105518) = ((1 : F) * rho 105520)

def relationLc3495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105518) * (relationLc3495 rho) = ((1 : F) * rho 105521)

def relationLc3496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105517) * (relationLc3496 rho) = ((1 : F) * rho 105522)

def relationRow7997 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105521) * ((1 : F) * rho 105522) = ((1 : F) * rho 105523)

def relationRow7998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105524) * ((1 : F) + (1 : F) * rho 105523) = ((1 : F) * rho 105521 + (1 : F) * rho 105522)

def relationRow7999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105525) * ((1 : F) + (-1 : F) * rho 105523) = ((1 : F) * rho 105520 + (-1 : F) * rho 105521 + (-1 : F) * rho 105522)

def relationLc3497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 27⟩], residual := [((1 : F), 105524)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103123) * (relationLc3497 rho) = ((1 : F) * rho 105526)

def relationLc3498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 27⟩], residual := [((1 : F), 105525)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103123) * (relationLc3498 rho) = ((1 : F) * rho 105527)

def relationRow8002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105517) * ((1 : F) * rho 105518) = ((1 : F) * rho 105528)

def relationRow8003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105517) * ((1 : F) * rho 105517) = ((1 : F) * rho 105529)

def relationRow8004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105518) * ((1 : F) * rho 105518) = ((1 : F) * rho 105530)

def relationRow8005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105531) * ((-1 : F) * rho 105529 + (1 : F) * rho 105530) = ((2 : F) * rho 105528)

def relationRow8006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105532) * ((2 : F) + (1 : F) * rho 105529 + (-1 : F) * rho 105530) = ((1 : F) * rho 105529 + (1 : F) * rho 105530)

def relationLc3499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 28⟩, ⟨(1 : F), 105149, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3499 rho) = ((1 : F) * rho 105533)

def relationRow8008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105533) * ((1 : F) * rho 105531 + (1 : F) * rho 105532) = ((1 : F) * rho 105534)

def relationLc3500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105532) * (relationLc3500 rho) = ((1 : F) * rho 105535)

def relationLc3501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105531) * (relationLc3501 rho) = ((1 : F) * rho 105536)

def relationRow8011 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105535) * ((1 : F) * rho 105536) = ((1 : F) * rho 105537)

def relationRow8012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105538) * ((1 : F) + (1 : F) * rho 105537) = ((1 : F) * rho 105535 + (1 : F) * rho 105536)

def relationRow8013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105539) * ((1 : F) + (-1 : F) * rho 105537) = ((1 : F) * rho 105534 + (-1 : F) * rho 105535 + (-1 : F) * rho 105536)

def relationLc3502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 28⟩], residual := [((1 : F), 105538)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103124) * (relationLc3502 rho) = ((1 : F) * rho 105540)

def relationLc3503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 28⟩], residual := [((1 : F), 105539)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103124) * (relationLc3503 rho) = ((1 : F) * rho 105541)

def relationRow8016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105531) * ((1 : F) * rho 105532) = ((1 : F) * rho 105542)

def relationRow8017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105531) * ((1 : F) * rho 105531) = ((1 : F) * rho 105543)

def relationRow8018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105532) * ((1 : F) * rho 105532) = ((1 : F) * rho 105544)

def relationRow8019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105545) * ((-1 : F) * rho 105543 + (1 : F) * rho 105544) = ((2 : F) * rho 105542)

def relationRow8020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105546) * ((2 : F) + (1 : F) * rho 105543 + (-1 : F) * rho 105544) = ((1 : F) * rho 105543 + (1 : F) * rho 105544)

def relationLc3504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 29⟩, ⟨(1 : F), 105149, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3504 rho) = ((1 : F) * rho 105547)

def relationRow8022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105547) * ((1 : F) * rho 105545 + (1 : F) * rho 105546) = ((1 : F) * rho 105548)

def relationLc3505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105546) * (relationLc3505 rho) = ((1 : F) * rho 105549)

def relationLc3506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105545) * (relationLc3506 rho) = ((1 : F) * rho 105550)

def relationRow8025 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105549) * ((1 : F) * rho 105550) = ((1 : F) * rho 105551)

def relationRow8026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105552) * ((1 : F) + (1 : F) * rho 105551) = ((1 : F) * rho 105549 + (1 : F) * rho 105550)

def relationRow8027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105553) * ((1 : F) + (-1 : F) * rho 105551) = ((1 : F) * rho 105548 + (-1 : F) * rho 105549 + (-1 : F) * rho 105550)

def relationLc3507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 29⟩], residual := [((1 : F), 105552)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103125) * (relationLc3507 rho) = ((1 : F) * rho 105554)

def relationLc3508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 29⟩], residual := [((1 : F), 105553)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103125) * (relationLc3508 rho) = ((1 : F) * rho 105555)

def relationRow8030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105545) * ((1 : F) * rho 105546) = ((1 : F) * rho 105556)

def relationRow8031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105545) * ((1 : F) * rho 105545) = ((1 : F) * rho 105557)

def relationRow8032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105546) * ((1 : F) * rho 105546) = ((1 : F) * rho 105558)

def relationRow8033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105559) * ((-1 : F) * rho 105557 + (1 : F) * rho 105558) = ((2 : F) * rho 105556)

def relationRow8034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105560) * ((2 : F) + (1 : F) * rho 105557 + (-1 : F) * rho 105558) = ((1 : F) * rho 105557 + (1 : F) * rho 105558)

def relationLc3509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 30⟩, ⟨(1 : F), 105149, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8035 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3509 rho) = ((1 : F) * rho 105561)

def relationRow8036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105561) * ((1 : F) * rho 105559 + (1 : F) * rho 105560) = ((1 : F) * rho 105562)

def relationLc3510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105560) * (relationLc3510 rho) = ((1 : F) * rho 105563)

def relationLc3511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105559) * (relationLc3511 rho) = ((1 : F) * rho 105564)

def relationRow8039 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105563) * ((1 : F) * rho 105564) = ((1 : F) * rho 105565)

def relationRow8040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105566) * ((1 : F) + (1 : F) * rho 105565) = ((1 : F) * rho 105563 + (1 : F) * rho 105564)

def relationRow8041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105567) * ((1 : F) + (-1 : F) * rho 105565) = ((1 : F) * rho 105562 + (-1 : F) * rho 105563 + (-1 : F) * rho 105564)

def relationLc3512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 30⟩], residual := [((1 : F), 105566)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103126) * (relationLc3512 rho) = ((1 : F) * rho 105568)

def relationLc3513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 30⟩], residual := [((1 : F), 105567)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103126) * (relationLc3513 rho) = ((1 : F) * rho 105569)

def relationRow8044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105559) * ((1 : F) * rho 105560) = ((1 : F) * rho 105570)

def relationRow8045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105559) * ((1 : F) * rho 105559) = ((1 : F) * rho 105571)

def relationRow8046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105560) * ((1 : F) * rho 105560) = ((1 : F) * rho 105572)

def relationRow8047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105573) * ((-1 : F) * rho 105571 + (1 : F) * rho 105572) = ((2 : F) * rho 105570)

def relationRow8048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105574) * ((2 : F) + (1 : F) * rho 105571 + (-1 : F) * rho 105572) = ((1 : F) * rho 105571 + (1 : F) * rho 105572)

def relationLc3514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 31⟩, ⟨(1 : F), 105149, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3514 rho) = ((1 : F) * rho 105575)

def relationRow8050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105575) * ((1 : F) * rho 105573 + (1 : F) * rho 105574) = ((1 : F) * rho 105576)

def relationLc3515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105574) * (relationLc3515 rho) = ((1 : F) * rho 105577)

def relationLc3516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105573) * (relationLc3516 rho) = ((1 : F) * rho 105578)

def relationRow8053 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105577) * ((1 : F) * rho 105578) = ((1 : F) * rho 105579)

def relationRow8054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105580) * ((1 : F) + (1 : F) * rho 105579) = ((1 : F) * rho 105577 + (1 : F) * rho 105578)

def relationRow8055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105581) * ((1 : F) + (-1 : F) * rho 105579) = ((1 : F) * rho 105576 + (-1 : F) * rho 105577 + (-1 : F) * rho 105578)

def relationLc3517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 31⟩], residual := [((1 : F), 105580)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103127) * (relationLc3517 rho) = ((1 : F) * rho 105582)

def relationLc3518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 31⟩], residual := [((1 : F), 105581)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103127) * (relationLc3518 rho) = ((1 : F) * rho 105583)

def relationRow8058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105573) * ((1 : F) * rho 105574) = ((1 : F) * rho 105584)

def relationRow8059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105573) * ((1 : F) * rho 105573) = ((1 : F) * rho 105585)

def relationRow8060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105574) * ((1 : F) * rho 105574) = ((1 : F) * rho 105586)

def relationRow8061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105587) * ((-1 : F) * rho 105585 + (1 : F) * rho 105586) = ((2 : F) * rho 105584)

def relationRow8062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105588) * ((2 : F) + (1 : F) * rho 105585 + (-1 : F) * rho 105586) = ((1 : F) * rho 105585 + (1 : F) * rho 105586)

def relationLc3519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 32⟩, ⟨(1 : F), 105149, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3519 rho) = ((1 : F) * rho 105589)

def relationRow8064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105589) * ((1 : F) * rho 105587 + (1 : F) * rho 105588) = ((1 : F) * rho 105590)

def relationLc3520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105588) * (relationLc3520 rho) = ((1 : F) * rho 105591)

def relationLc3521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105587) * (relationLc3521 rho) = ((1 : F) * rho 105592)

def relationRow8067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105591) * ((1 : F) * rho 105592) = ((1 : F) * rho 105593)

def relationRow8068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105594) * ((1 : F) + (1 : F) * rho 105593) = ((1 : F) * rho 105591 + (1 : F) * rho 105592)

def relationRow8069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105595) * ((1 : F) + (-1 : F) * rho 105593) = ((1 : F) * rho 105590 + (-1 : F) * rho 105591 + (-1 : F) * rho 105592)

def relationLc3522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 32⟩], residual := [((1 : F), 105594)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103128) * (relationLc3522 rho) = ((1 : F) * rho 105596)

def relationLc3523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 32⟩], residual := [((1 : F), 105595)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103128) * (relationLc3523 rho) = ((1 : F) * rho 105597)

def relationRow8072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105587) * ((1 : F) * rho 105588) = ((1 : F) * rho 105598)

def relationRow8073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105587) * ((1 : F) * rho 105587) = ((1 : F) * rho 105599)

def relationRow8074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105588) * ((1 : F) * rho 105588) = ((1 : F) * rho 105600)

def relationRow8075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105601) * ((-1 : F) * rho 105599 + (1 : F) * rho 105600) = ((2 : F) * rho 105598)

def relationRow8076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105602) * ((2 : F) + (1 : F) * rho 105599 + (-1 : F) * rho 105600) = ((1 : F) * rho 105599 + (1 : F) * rho 105600)

def relationLc3524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 33⟩, ⟨(1 : F), 105149, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8077 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3524 rho) = ((1 : F) * rho 105603)

def relationRow8078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105603) * ((1 : F) * rho 105601 + (1 : F) * rho 105602) = ((1 : F) * rho 105604)

def relationLc3525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105602) * (relationLc3525 rho) = ((1 : F) * rho 105605)

def relationLc3526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105601) * (relationLc3526 rho) = ((1 : F) * rho 105606)

def relationRow8081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105605) * ((1 : F) * rho 105606) = ((1 : F) * rho 105607)

def relationRow8082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105608) * ((1 : F) + (1 : F) * rho 105607) = ((1 : F) * rho 105605 + (1 : F) * rho 105606)

def relationRow8083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105609) * ((1 : F) + (-1 : F) * rho 105607) = ((1 : F) * rho 105604 + (-1 : F) * rho 105605 + (-1 : F) * rho 105606)

def relationLc3527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 33⟩], residual := [((1 : F), 105608)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103129) * (relationLc3527 rho) = ((1 : F) * rho 105610)

def relationLc3528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 33⟩], residual := [((1 : F), 105609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103129) * (relationLc3528 rho) = ((1 : F) * rho 105611)

def relationRow8086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105601) * ((1 : F) * rho 105602) = ((1 : F) * rho 105612)

def relationRow8087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105601) * ((1 : F) * rho 105601) = ((1 : F) * rho 105613)

def relationRow8088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105602) * ((1 : F) * rho 105602) = ((1 : F) * rho 105614)

def relationRow8089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105615) * ((-1 : F) * rho 105613 + (1 : F) * rho 105614) = ((2 : F) * rho 105612)

def relationRow8090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105616) * ((2 : F) + (1 : F) * rho 105613 + (-1 : F) * rho 105614) = ((1 : F) * rho 105613 + (1 : F) * rho 105614)

def relationLc3529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 34⟩, ⟨(1 : F), 105149, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8091 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3529 rho) = ((1 : F) * rho 105617)

def relationRow8092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105617) * ((1 : F) * rho 105615 + (1 : F) * rho 105616) = ((1 : F) * rho 105618)

def relationLc3530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105616) * (relationLc3530 rho) = ((1 : F) * rho 105619)

def relationLc3531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105615) * (relationLc3531 rho) = ((1 : F) * rho 105620)

def relationRow8095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105619) * ((1 : F) * rho 105620) = ((1 : F) * rho 105621)

def relationRow8096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105622) * ((1 : F) + (1 : F) * rho 105621) = ((1 : F) * rho 105619 + (1 : F) * rho 105620)

def relationRow8097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105623) * ((1 : F) + (-1 : F) * rho 105621) = ((1 : F) * rho 105618 + (-1 : F) * rho 105619 + (-1 : F) * rho 105620)

def relationLc3532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 34⟩], residual := [((1 : F), 105622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103130) * (relationLc3532 rho) = ((1 : F) * rho 105624)

def relationLc3533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 34⟩], residual := [((1 : F), 105623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103130) * (relationLc3533 rho) = ((1 : F) * rho 105625)

def relationRow8100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105615) * ((1 : F) * rho 105616) = ((1 : F) * rho 105626)

def relationRow8101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105615) * ((1 : F) * rho 105615) = ((1 : F) * rho 105627)

def relationRow8102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105616) * ((1 : F) * rho 105616) = ((1 : F) * rho 105628)

def relationRow8103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105629) * ((-1 : F) * rho 105627 + (1 : F) * rho 105628) = ((2 : F) * rho 105626)

def relationRow8104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105630) * ((2 : F) + (1 : F) * rho 105627 + (-1 : F) * rho 105628) = ((1 : F) * rho 105627 + (1 : F) * rho 105628)

def relationLc3534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 35⟩, ⟨(1 : F), 105149, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8105 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3534 rho) = ((1 : F) * rho 105631)

def relationRow8106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105631) * ((1 : F) * rho 105629 + (1 : F) * rho 105630) = ((1 : F) * rho 105632)

def relationLc3535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105630) * (relationLc3535 rho) = ((1 : F) * rho 105633)

def relationLc3536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105629) * (relationLc3536 rho) = ((1 : F) * rho 105634)

def relationRow8109 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105633) * ((1 : F) * rho 105634) = ((1 : F) * rho 105635)

def relationRow8110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105636) * ((1 : F) + (1 : F) * rho 105635) = ((1 : F) * rho 105633 + (1 : F) * rho 105634)

def relationRow8111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105637) * ((1 : F) + (-1 : F) * rho 105635) = ((1 : F) * rho 105632 + (-1 : F) * rho 105633 + (-1 : F) * rho 105634)

def relationLc3537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 35⟩], residual := [((1 : F), 105636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103131) * (relationLc3537 rho) = ((1 : F) * rho 105638)

def relationLc3538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 35⟩], residual := [((1 : F), 105637)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103131) * (relationLc3538 rho) = ((1 : F) * rho 105639)

def relationRow8114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105629) * ((1 : F) * rho 105630) = ((1 : F) * rho 105640)

def relationRow8115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105629) * ((1 : F) * rho 105629) = ((1 : F) * rho 105641)

def relationRow8116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105630) * ((1 : F) * rho 105630) = ((1 : F) * rho 105642)

def relationRow8117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105643) * ((-1 : F) * rho 105641 + (1 : F) * rho 105642) = ((2 : F) * rho 105640)

def relationRow8118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105644) * ((2 : F) + (1 : F) * rho 105641 + (-1 : F) * rho 105642) = ((1 : F) * rho 105641 + (1 : F) * rho 105642)

def relationLc3539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 36⟩, ⟨(1 : F), 105149, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8119 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3539 rho) = ((1 : F) * rho 105645)

def relationRow8120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105645) * ((1 : F) * rho 105643 + (1 : F) * rho 105644) = ((1 : F) * rho 105646)

def relationLc3540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105644) * (relationLc3540 rho) = ((1 : F) * rho 105647)

def relationLc3541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105643) * (relationLc3541 rho) = ((1 : F) * rho 105648)

def relationRow8123 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105647) * ((1 : F) * rho 105648) = ((1 : F) * rho 105649)

def relationRow8124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105650) * ((1 : F) + (1 : F) * rho 105649) = ((1 : F) * rho 105647 + (1 : F) * rho 105648)

def relationRow8125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105651) * ((1 : F) + (-1 : F) * rho 105649) = ((1 : F) * rho 105646 + (-1 : F) * rho 105647 + (-1 : F) * rho 105648)

def relationLc3542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 36⟩], residual := [((1 : F), 105650)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103132) * (relationLc3542 rho) = ((1 : F) * rho 105652)

def relationLc3543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 36⟩], residual := [((1 : F), 105651)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103132) * (relationLc3543 rho) = ((1 : F) * rho 105653)

def relationRow8128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105643) * ((1 : F) * rho 105644) = ((1 : F) * rho 105654)

def relationRow8129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105643) * ((1 : F) * rho 105643) = ((1 : F) * rho 105655)

def relationRow8130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105644) * ((1 : F) * rho 105644) = ((1 : F) * rho 105656)

def relationRow8131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105657) * ((-1 : F) * rho 105655 + (1 : F) * rho 105656) = ((2 : F) * rho 105654)

def relationRow8132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105658) * ((2 : F) + (1 : F) * rho 105655 + (-1 : F) * rho 105656) = ((1 : F) * rho 105655 + (1 : F) * rho 105656)

def relationLc3544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 37⟩, ⟨(1 : F), 105149, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3544 rho) = ((1 : F) * rho 105659)

def relationRow8134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105659) * ((1 : F) * rho 105657 + (1 : F) * rho 105658) = ((1 : F) * rho 105660)

def relationLc3545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105658) * (relationLc3545 rho) = ((1 : F) * rho 105661)

def relationLc3546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105657) * (relationLc3546 rho) = ((1 : F) * rho 105662)

def relationRow8137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105661) * ((1 : F) * rho 105662) = ((1 : F) * rho 105663)

def relationRow8138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105664) * ((1 : F) + (1 : F) * rho 105663) = ((1 : F) * rho 105661 + (1 : F) * rho 105662)

def relationRow8139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105665) * ((1 : F) + (-1 : F) * rho 105663) = ((1 : F) * rho 105660 + (-1 : F) * rho 105661 + (-1 : F) * rho 105662)

def relationLc3547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 37⟩], residual := [((1 : F), 105664)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103133) * (relationLc3547 rho) = ((1 : F) * rho 105666)

def relationLc3548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 37⟩], residual := [((1 : F), 105665)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103133) * (relationLc3548 rho) = ((1 : F) * rho 105667)

def relationRow8142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105657) * ((1 : F) * rho 105658) = ((1 : F) * rho 105668)

def relationRow8143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105657) * ((1 : F) * rho 105657) = ((1 : F) * rho 105669)

def relationRow8144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105658) * ((1 : F) * rho 105658) = ((1 : F) * rho 105670)

def relationRow8145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105671) * ((-1 : F) * rho 105669 + (1 : F) * rho 105670) = ((2 : F) * rho 105668)

def relationRow8146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105672) * ((2 : F) + (1 : F) * rho 105669 + (-1 : F) * rho 105670) = ((1 : F) * rho 105669 + (1 : F) * rho 105670)

def relationLc3549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 38⟩, ⟨(1 : F), 105149, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8147 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3549 rho) = ((1 : F) * rho 105673)

def relationRow8148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105673) * ((1 : F) * rho 105671 + (1 : F) * rho 105672) = ((1 : F) * rho 105674)

def relationLc3550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105672) * (relationLc3550 rho) = ((1 : F) * rho 105675)

def relationLc3551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105671) * (relationLc3551 rho) = ((1 : F) * rho 105676)

def relationRow8151 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105675) * ((1 : F) * rho 105676) = ((1 : F) * rho 105677)

def relationRow8152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105678) * ((1 : F) + (1 : F) * rho 105677) = ((1 : F) * rho 105675 + (1 : F) * rho 105676)

def relationRow8153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105679) * ((1 : F) + (-1 : F) * rho 105677) = ((1 : F) * rho 105674 + (-1 : F) * rho 105675 + (-1 : F) * rho 105676)

def relationLc3552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 38⟩], residual := [((1 : F), 105678)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103134) * (relationLc3552 rho) = ((1 : F) * rho 105680)

def relationLc3553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 38⟩], residual := [((1 : F), 105679)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103134) * (relationLc3553 rho) = ((1 : F) * rho 105681)

def relationRow8156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105671) * ((1 : F) * rho 105672) = ((1 : F) * rho 105682)

def relationRow8157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105671) * ((1 : F) * rho 105671) = ((1 : F) * rho 105683)

def relationRow8158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105672) * ((1 : F) * rho 105672) = ((1 : F) * rho 105684)

def relationRow8159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105685) * ((-1 : F) * rho 105683 + (1 : F) * rho 105684) = ((2 : F) * rho 105682)

def relationRow8160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105686) * ((2 : F) + (1 : F) * rho 105683 + (-1 : F) * rho 105684) = ((1 : F) * rho 105683 + (1 : F) * rho 105684)

def relationLc3554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 39⟩, ⟨(1 : F), 105149, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3554 rho) = ((1 : F) * rho 105687)

def relationRow8162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105687) * ((1 : F) * rho 105685 + (1 : F) * rho 105686) = ((1 : F) * rho 105688)

def relationLc3555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105686) * (relationLc3555 rho) = ((1 : F) * rho 105689)

def relationLc3556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105685) * (relationLc3556 rho) = ((1 : F) * rho 105690)

def relationRow8165 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105689) * ((1 : F) * rho 105690) = ((1 : F) * rho 105691)

def relationRow8166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105692) * ((1 : F) + (1 : F) * rho 105691) = ((1 : F) * rho 105689 + (1 : F) * rho 105690)

def relationRow8167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105693) * ((1 : F) + (-1 : F) * rho 105691) = ((1 : F) * rho 105688 + (-1 : F) * rho 105689 + (-1 : F) * rho 105690)

def relationLc3557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 39⟩], residual := [((1 : F), 105692)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103135) * (relationLc3557 rho) = ((1 : F) * rho 105694)

def relationLc3558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 39⟩], residual := [((1 : F), 105693)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103135) * (relationLc3558 rho) = ((1 : F) * rho 105695)

def relationRow8170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105685) * ((1 : F) * rho 105686) = ((1 : F) * rho 105696)

def relationRow8171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105685) * ((1 : F) * rho 105685) = ((1 : F) * rho 105697)

def relationRow8172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105686) * ((1 : F) * rho 105686) = ((1 : F) * rho 105698)

def relationRow8173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105699) * ((-1 : F) * rho 105697 + (1 : F) * rho 105698) = ((2 : F) * rho 105696)

def relationRow8174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105700) * ((2 : F) + (1 : F) * rho 105697 + (-1 : F) * rho 105698) = ((1 : F) * rho 105697 + (1 : F) * rho 105698)

def relationLc3559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 40⟩, ⟨(1 : F), 105149, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8175 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3559 rho) = ((1 : F) * rho 105701)

def relationRow8176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105701) * ((1 : F) * rho 105699 + (1 : F) * rho 105700) = ((1 : F) * rho 105702)

def relationLc3560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105700) * (relationLc3560 rho) = ((1 : F) * rho 105703)

def relationLc3561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105699) * (relationLc3561 rho) = ((1 : F) * rho 105704)

def relationRow8179 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105703) * ((1 : F) * rho 105704) = ((1 : F) * rho 105705)

def relationRow8180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105706) * ((1 : F) + (1 : F) * rho 105705) = ((1 : F) * rho 105703 + (1 : F) * rho 105704)

def relationRow8181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105707) * ((1 : F) + (-1 : F) * rho 105705) = ((1 : F) * rho 105702 + (-1 : F) * rho 105703 + (-1 : F) * rho 105704)

def relationLc3562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 40⟩], residual := [((1 : F), 105706)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103136) * (relationLc3562 rho) = ((1 : F) * rho 105708)

def relationLc3563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 40⟩], residual := [((1 : F), 105707)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103136) * (relationLc3563 rho) = ((1 : F) * rho 105709)

def relationRow8184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105699) * ((1 : F) * rho 105700) = ((1 : F) * rho 105710)

def relationRow8185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105699) * ((1 : F) * rho 105699) = ((1 : F) * rho 105711)

def relationRow8186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105700) * ((1 : F) * rho 105700) = ((1 : F) * rho 105712)

def relationRow8187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105713) * ((-1 : F) * rho 105711 + (1 : F) * rho 105712) = ((2 : F) * rho 105710)

def relationRow8188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105714) * ((2 : F) + (1 : F) * rho 105711 + (-1 : F) * rho 105712) = ((1 : F) * rho 105711 + (1 : F) * rho 105712)

def relationLc3564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 41⟩, ⟨(1 : F), 105149, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8189 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3564 rho) = ((1 : F) * rho 105715)

def relationRow8190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105715) * ((1 : F) * rho 105713 + (1 : F) * rho 105714) = ((1 : F) * rho 105716)

def relationLc3565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105714) * (relationLc3565 rho) = ((1 : F) * rho 105717)

def relationLc3566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105713) * (relationLc3566 rho) = ((1 : F) * rho 105718)

def relationRow8193 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105717) * ((1 : F) * rho 105718) = ((1 : F) * rho 105719)

def relationRow8194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105720) * ((1 : F) + (1 : F) * rho 105719) = ((1 : F) * rho 105717 + (1 : F) * rho 105718)

def relationRow8195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105721) * ((1 : F) + (-1 : F) * rho 105719) = ((1 : F) * rho 105716 + (-1 : F) * rho 105717 + (-1 : F) * rho 105718)

def relationLc3567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 41⟩], residual := [((1 : F), 105720)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103137) * (relationLc3567 rho) = ((1 : F) * rho 105722)

def relationLc3568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 41⟩], residual := [((1 : F), 105721)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103137) * (relationLc3568 rho) = ((1 : F) * rho 105723)

def relationRow8198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105713) * ((1 : F) * rho 105714) = ((1 : F) * rho 105724)

def relationRow8199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105713) * ((1 : F) * rho 105713) = ((1 : F) * rho 105725)

def relationRow8200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105714) * ((1 : F) * rho 105714) = ((1 : F) * rho 105726)

def relationRow8201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105727) * ((-1 : F) * rho 105725 + (1 : F) * rho 105726) = ((2 : F) * rho 105724)

def relationRow8202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105728) * ((2 : F) + (1 : F) * rho 105725 + (-1 : F) * rho 105726) = ((1 : F) * rho 105725 + (1 : F) * rho 105726)

def relationLc3569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 42⟩, ⟨(1 : F), 105149, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8203 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3569 rho) = ((1 : F) * rho 105729)

def relationRow8204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105729) * ((1 : F) * rho 105727 + (1 : F) * rho 105728) = ((1 : F) * rho 105730)

def relationLc3570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105728) * (relationLc3570 rho) = ((1 : F) * rho 105731)

def relationLc3571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105727) * (relationLc3571 rho) = ((1 : F) * rho 105732)

def relationRow8207 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105731) * ((1 : F) * rho 105732) = ((1 : F) * rho 105733)

def relationRow8208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105734) * ((1 : F) + (1 : F) * rho 105733) = ((1 : F) * rho 105731 + (1 : F) * rho 105732)

def relationRow8209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105735) * ((1 : F) + (-1 : F) * rho 105733) = ((1 : F) * rho 105730 + (-1 : F) * rho 105731 + (-1 : F) * rho 105732)

def relationLc3572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 42⟩], residual := [((1 : F), 105734)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103138) * (relationLc3572 rho) = ((1 : F) * rho 105736)

def relationLc3573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 42⟩], residual := [((1 : F), 105735)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103138) * (relationLc3573 rho) = ((1 : F) * rho 105737)

def relationRow8212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105727) * ((1 : F) * rho 105728) = ((1 : F) * rho 105738)

def relationRow8213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105727) * ((1 : F) * rho 105727) = ((1 : F) * rho 105739)

def relationRow8214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105728) * ((1 : F) * rho 105728) = ((1 : F) * rho 105740)

def relationRow8215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105741) * ((-1 : F) * rho 105739 + (1 : F) * rho 105740) = ((2 : F) * rho 105738)

def relationRow8216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105742) * ((2 : F) + (1 : F) * rho 105739 + (-1 : F) * rho 105740) = ((1 : F) * rho 105739 + (1 : F) * rho 105740)

def relationLc3574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 43⟩, ⟨(1 : F), 105149, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8217 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3574 rho) = ((1 : F) * rho 105743)

def relationRow8218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105743) * ((1 : F) * rho 105741 + (1 : F) * rho 105742) = ((1 : F) * rho 105744)

def relationLc3575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105742) * (relationLc3575 rho) = ((1 : F) * rho 105745)

def relationLc3576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105741) * (relationLc3576 rho) = ((1 : F) * rho 105746)

def relationRow8221 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105745) * ((1 : F) * rho 105746) = ((1 : F) * rho 105747)

def relationRow8222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105748) * ((1 : F) + (1 : F) * rho 105747) = ((1 : F) * rho 105745 + (1 : F) * rho 105746)

def relationRow8223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105749) * ((1 : F) + (-1 : F) * rho 105747) = ((1 : F) * rho 105744 + (-1 : F) * rho 105745 + (-1 : F) * rho 105746)

def relationLc3577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 43⟩], residual := [((1 : F), 105748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103139) * (relationLc3577 rho) = ((1 : F) * rho 105750)

def relationLc3578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 43⟩], residual := [((1 : F), 105749)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103139) * (relationLc3578 rho) = ((1 : F) * rho 105751)

def relationRow8226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105741) * ((1 : F) * rho 105742) = ((1 : F) * rho 105752)

def relationRow8227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105741) * ((1 : F) * rho 105741) = ((1 : F) * rho 105753)

def relationRow8228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105742) * ((1 : F) * rho 105742) = ((1 : F) * rho 105754)

def relationRow8229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105755) * ((-1 : F) * rho 105753 + (1 : F) * rho 105754) = ((2 : F) * rho 105752)

def relationRow8230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105756) * ((2 : F) + (1 : F) * rho 105753 + (-1 : F) * rho 105754) = ((1 : F) * rho 105753 + (1 : F) * rho 105754)

def relationLc3579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 44⟩, ⟨(1 : F), 105149, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8231 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3579 rho) = ((1 : F) * rho 105757)

def relationRow8232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105757) * ((1 : F) * rho 105755 + (1 : F) * rho 105756) = ((1 : F) * rho 105758)

def relationLc3580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105756) * (relationLc3580 rho) = ((1 : F) * rho 105759)

def relationLc3581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105755) * (relationLc3581 rho) = ((1 : F) * rho 105760)

def relationRow8235 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105759) * ((1 : F) * rho 105760) = ((1 : F) * rho 105761)

def relationRow8236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105762) * ((1 : F) + (1 : F) * rho 105761) = ((1 : F) * rho 105759 + (1 : F) * rho 105760)

def relationRow8237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105763) * ((1 : F) + (-1 : F) * rho 105761) = ((1 : F) * rho 105758 + (-1 : F) * rho 105759 + (-1 : F) * rho 105760)

def relationLc3582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 44⟩], residual := [((1 : F), 105762)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103140) * (relationLc3582 rho) = ((1 : F) * rho 105764)

def relationLc3583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 44⟩], residual := [((1 : F), 105763)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103140) * (relationLc3583 rho) = ((1 : F) * rho 105765)

def relationRow8240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105755) * ((1 : F) * rho 105756) = ((1 : F) * rho 105766)

def relationRow8241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105755) * ((1 : F) * rho 105755) = ((1 : F) * rho 105767)

def relationRow8242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105756) * ((1 : F) * rho 105756) = ((1 : F) * rho 105768)

def relationRow8243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105769) * ((-1 : F) * rho 105767 + (1 : F) * rho 105768) = ((2 : F) * rho 105766)

def relationRow8244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105770) * ((2 : F) + (1 : F) * rho 105767 + (-1 : F) * rho 105768) = ((1 : F) * rho 105767 + (1 : F) * rho 105768)

def relationLc3584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 45⟩, ⟨(1 : F), 105149, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8245 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3584 rho) = ((1 : F) * rho 105771)

def relationRow8246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105771) * ((1 : F) * rho 105769 + (1 : F) * rho 105770) = ((1 : F) * rho 105772)

def relationLc3585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105770) * (relationLc3585 rho) = ((1 : F) * rho 105773)

def relationLc3586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105769) * (relationLc3586 rho) = ((1 : F) * rho 105774)

def relationRow8249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105773) * ((1 : F) * rho 105774) = ((1 : F) * rho 105775)

def relationRow8250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105776) * ((1 : F) + (1 : F) * rho 105775) = ((1 : F) * rho 105773 + (1 : F) * rho 105774)

def relationRow8251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105777) * ((1 : F) + (-1 : F) * rho 105775) = ((1 : F) * rho 105772 + (-1 : F) * rho 105773 + (-1 : F) * rho 105774)

def relationLc3587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 45⟩], residual := [((1 : F), 105776)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103141) * (relationLc3587 rho) = ((1 : F) * rho 105778)

def relationLc3588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 45⟩], residual := [((1 : F), 105777)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103141) * (relationLc3588 rho) = ((1 : F) * rho 105779)

def relationRow8254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105769) * ((1 : F) * rho 105770) = ((1 : F) * rho 105780)

def relationRow8255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105769) * ((1 : F) * rho 105769) = ((1 : F) * rho 105781)

def relationRow8256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105770) * ((1 : F) * rho 105770) = ((1 : F) * rho 105782)

def relationRow8257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105783) * ((-1 : F) * rho 105781 + (1 : F) * rho 105782) = ((2 : F) * rho 105780)

def relationRow8258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105784) * ((2 : F) + (1 : F) * rho 105781 + (-1 : F) * rho 105782) = ((1 : F) * rho 105781 + (1 : F) * rho 105782)

def relationLc3589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 46⟩, ⟨(1 : F), 105149, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8259 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3589 rho) = ((1 : F) * rho 105785)

def relationRow8260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105785) * ((1 : F) * rho 105783 + (1 : F) * rho 105784) = ((1 : F) * rho 105786)

def relationLc3590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105784) * (relationLc3590 rho) = ((1 : F) * rho 105787)

def relationLc3591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105783) * (relationLc3591 rho) = ((1 : F) * rho 105788)

def relationRow8263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105787) * ((1 : F) * rho 105788) = ((1 : F) * rho 105789)

def relationRow8264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105790) * ((1 : F) + (1 : F) * rho 105789) = ((1 : F) * rho 105787 + (1 : F) * rho 105788)

def relationRow8265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105791) * ((1 : F) + (-1 : F) * rho 105789) = ((1 : F) * rho 105786 + (-1 : F) * rho 105787 + (-1 : F) * rho 105788)

def relationLc3592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 46⟩], residual := [((1 : F), 105790)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103142) * (relationLc3592 rho) = ((1 : F) * rho 105792)

def relationLc3593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 46⟩], residual := [((1 : F), 105791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103142) * (relationLc3593 rho) = ((1 : F) * rho 105793)

def relationRow8268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105783) * ((1 : F) * rho 105784) = ((1 : F) * rho 105794)

def relationRow8269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105783) * ((1 : F) * rho 105783) = ((1 : F) * rho 105795)

def relationRow8270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105784) * ((1 : F) * rho 105784) = ((1 : F) * rho 105796)

def relationRow8271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105797) * ((-1 : F) * rho 105795 + (1 : F) * rho 105796) = ((2 : F) * rho 105794)

def relationRow8272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105798) * ((2 : F) + (1 : F) * rho 105795 + (-1 : F) * rho 105796) = ((1 : F) * rho 105795 + (1 : F) * rho 105796)

def relationLc3594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 47⟩, ⟨(1 : F), 105149, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8273 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3594 rho) = ((1 : F) * rho 105799)

def relationRow8274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105799) * ((1 : F) * rho 105797 + (1 : F) * rho 105798) = ((1 : F) * rho 105800)

def relationLc3595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105798) * (relationLc3595 rho) = ((1 : F) * rho 105801)

def relationLc3596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105797) * (relationLc3596 rho) = ((1 : F) * rho 105802)

def relationRow8277 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105801) * ((1 : F) * rho 105802) = ((1 : F) * rho 105803)

def relationRow8278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105804) * ((1 : F) + (1 : F) * rho 105803) = ((1 : F) * rho 105801 + (1 : F) * rho 105802)

def relationRow8279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105805) * ((1 : F) + (-1 : F) * rho 105803) = ((1 : F) * rho 105800 + (-1 : F) * rho 105801 + (-1 : F) * rho 105802)

def relationLc3597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 47⟩], residual := [((1 : F), 105804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103143) * (relationLc3597 rho) = ((1 : F) * rho 105806)

def relationLc3598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 47⟩], residual := [((1 : F), 105805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103143) * (relationLc3598 rho) = ((1 : F) * rho 105807)

def relationRow8282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105797) * ((1 : F) * rho 105798) = ((1 : F) * rho 105808)

def relationRow8283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105797) * ((1 : F) * rho 105797) = ((1 : F) * rho 105809)

def relationRow8284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105798) * ((1 : F) * rho 105798) = ((1 : F) * rho 105810)

def relationRow8285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105811) * ((-1 : F) * rho 105809 + (1 : F) * rho 105810) = ((2 : F) * rho 105808)

def relationRow8286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105812) * ((2 : F) + (1 : F) * rho 105809 + (-1 : F) * rho 105810) = ((1 : F) * rho 105809 + (1 : F) * rho 105810)

def relationLc3599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 48⟩, ⟨(1 : F), 105149, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8287 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3599 rho) = ((1 : F) * rho 105813)

def relationRow8288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105813) * ((1 : F) * rho 105811 + (1 : F) * rho 105812) = ((1 : F) * rho 105814)

def relationLc3600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105812) * (relationLc3600 rho) = ((1 : F) * rho 105815)

def relationLc3601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105811) * (relationLc3601 rho) = ((1 : F) * rho 105816)

def relationRow8291 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105815) * ((1 : F) * rho 105816) = ((1 : F) * rho 105817)

def relationRow8292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105818) * ((1 : F) + (1 : F) * rho 105817) = ((1 : F) * rho 105815 + (1 : F) * rho 105816)

def relationRow8293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105819) * ((1 : F) + (-1 : F) * rho 105817) = ((1 : F) * rho 105814 + (-1 : F) * rho 105815 + (-1 : F) * rho 105816)

def relationLc3602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 48⟩], residual := [((1 : F), 105818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103144) * (relationLc3602 rho) = ((1 : F) * rho 105820)

def relationLc3603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 48⟩], residual := [((1 : F), 105819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103144) * (relationLc3603 rho) = ((1 : F) * rho 105821)

def relationRow8296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105811) * ((1 : F) * rho 105812) = ((1 : F) * rho 105822)

def relationRow8297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105811) * ((1 : F) * rho 105811) = ((1 : F) * rho 105823)

def relationRow8298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105812) * ((1 : F) * rho 105812) = ((1 : F) * rho 105824)

def relationRow8299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105825) * ((-1 : F) * rho 105823 + (1 : F) * rho 105824) = ((2 : F) * rho 105822)

def relationRow8300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105826) * ((2 : F) + (1 : F) * rho 105823 + (-1 : F) * rho 105824) = ((1 : F) * rho 105823 + (1 : F) * rho 105824)

def relationLc3604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 49⟩, ⟨(1 : F), 105149, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8301 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3604 rho) = ((1 : F) * rho 105827)

def relationRow8302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105827) * ((1 : F) * rho 105825 + (1 : F) * rho 105826) = ((1 : F) * rho 105828)

def relationLc3605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105826) * (relationLc3605 rho) = ((1 : F) * rho 105829)

def relationLc3606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105825) * (relationLc3606 rho) = ((1 : F) * rho 105830)

def relationRow8305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105829) * ((1 : F) * rho 105830) = ((1 : F) * rho 105831)

def relationRow8306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105832) * ((1 : F) + (1 : F) * rho 105831) = ((1 : F) * rho 105829 + (1 : F) * rho 105830)

def relationRow8307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105833) * ((1 : F) + (-1 : F) * rho 105831) = ((1 : F) * rho 105828 + (-1 : F) * rho 105829 + (-1 : F) * rho 105830)

def relationLc3607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 49⟩], residual := [((1 : F), 105832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103145) * (relationLc3607 rho) = ((1 : F) * rho 105834)

def relationLc3608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 49⟩], residual := [((1 : F), 105833)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103145) * (relationLc3608 rho) = ((1 : F) * rho 105835)

def relationRow8310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105825) * ((1 : F) * rho 105826) = ((1 : F) * rho 105836)

def relationRow8311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105825) * ((1 : F) * rho 105825) = ((1 : F) * rho 105837)

def relationRow8312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105826) * ((1 : F) * rho 105826) = ((1 : F) * rho 105838)

def relationRow8313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105839) * ((-1 : F) * rho 105837 + (1 : F) * rho 105838) = ((2 : F) * rho 105836)

def relationRow8314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105840) * ((2 : F) + (1 : F) * rho 105837 + (-1 : F) * rho 105838) = ((1 : F) * rho 105837 + (1 : F) * rho 105838)

def relationLc3609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 50⟩, ⟨(1 : F), 105149, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8315 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3609 rho) = ((1 : F) * rho 105841)

def relationRow8316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105841) * ((1 : F) * rho 105839 + (1 : F) * rho 105840) = ((1 : F) * rho 105842)

def relationLc3610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105840) * (relationLc3610 rho) = ((1 : F) * rho 105843)

def relationLc3611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105839) * (relationLc3611 rho) = ((1 : F) * rho 105844)

def relationRow8319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105843) * ((1 : F) * rho 105844) = ((1 : F) * rho 105845)

def relationRow8320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105846) * ((1 : F) + (1 : F) * rho 105845) = ((1 : F) * rho 105843 + (1 : F) * rho 105844)

def relationRow8321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105847) * ((1 : F) + (-1 : F) * rho 105845) = ((1 : F) * rho 105842 + (-1 : F) * rho 105843 + (-1 : F) * rho 105844)

def relationLc3612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 50⟩], residual := [((1 : F), 105846)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103146) * (relationLc3612 rho) = ((1 : F) * rho 105848)

def relationLc3613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 50⟩], residual := [((1 : F), 105847)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103146) * (relationLc3613 rho) = ((1 : F) * rho 105849)

def relationRow8324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105839) * ((1 : F) * rho 105840) = ((1 : F) * rho 105850)

def relationRow8325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105839) * ((1 : F) * rho 105839) = ((1 : F) * rho 105851)

def relationRow8326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105840) * ((1 : F) * rho 105840) = ((1 : F) * rho 105852)

def relationRow8327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105853) * ((-1 : F) * rho 105851 + (1 : F) * rho 105852) = ((2 : F) * rho 105850)

def relationRow8328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105854) * ((2 : F) + (1 : F) * rho 105851 + (-1 : F) * rho 105852) = ((1 : F) * rho 105851 + (1 : F) * rho 105852)

def relationLc3614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 51⟩, ⟨(1 : F), 105149, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8329 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3614 rho) = ((1 : F) * rho 105855)

def relationRow8330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105855) * ((1 : F) * rho 105853 + (1 : F) * rho 105854) = ((1 : F) * rho 105856)

def relationLc3615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105854) * (relationLc3615 rho) = ((1 : F) * rho 105857)

def relationLc3616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105853) * (relationLc3616 rho) = ((1 : F) * rho 105858)

def relationRow8333 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105857) * ((1 : F) * rho 105858) = ((1 : F) * rho 105859)

def relationRow8334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105860) * ((1 : F) + (1 : F) * rho 105859) = ((1 : F) * rho 105857 + (1 : F) * rho 105858)

def relationRow8335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105861) * ((1 : F) + (-1 : F) * rho 105859) = ((1 : F) * rho 105856 + (-1 : F) * rho 105857 + (-1 : F) * rho 105858)

def relationLc3617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 51⟩], residual := [((1 : F), 105860)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103147) * (relationLc3617 rho) = ((1 : F) * rho 105862)

def relationLc3618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 51⟩], residual := [((1 : F), 105861)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103147) * (relationLc3618 rho) = ((1 : F) * rho 105863)

def relationRow8338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105853) * ((1 : F) * rho 105854) = ((1 : F) * rho 105864)

def relationRow8339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105853) * ((1 : F) * rho 105853) = ((1 : F) * rho 105865)

def relationRow8340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105854) * ((1 : F) * rho 105854) = ((1 : F) * rho 105866)

def relationRow8341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105867) * ((-1 : F) * rho 105865 + (1 : F) * rho 105866) = ((2 : F) * rho 105864)

def relationRow8342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105868) * ((2 : F) + (1 : F) * rho 105865 + (-1 : F) * rho 105866) = ((1 : F) * rho 105865 + (1 : F) * rho 105866)

def relationLc3619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 52⟩, ⟨(1 : F), 105149, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8343 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3619 rho) = ((1 : F) * rho 105869)

def relationRow8344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105869) * ((1 : F) * rho 105867 + (1 : F) * rho 105868) = ((1 : F) * rho 105870)

def relationLc3620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105868) * (relationLc3620 rho) = ((1 : F) * rho 105871)

def relationLc3621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105867) * (relationLc3621 rho) = ((1 : F) * rho 105872)

def relationRow8347 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105871) * ((1 : F) * rho 105872) = ((1 : F) * rho 105873)

def relationRow8348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105874) * ((1 : F) + (1 : F) * rho 105873) = ((1 : F) * rho 105871 + (1 : F) * rho 105872)

def relationRow8349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105875) * ((1 : F) + (-1 : F) * rho 105873) = ((1 : F) * rho 105870 + (-1 : F) * rho 105871 + (-1 : F) * rho 105872)

def relationLc3622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 52⟩], residual := [((1 : F), 105874)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103148) * (relationLc3622 rho) = ((1 : F) * rho 105876)

def relationLc3623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 52⟩], residual := [((1 : F), 105875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103148) * (relationLc3623 rho) = ((1 : F) * rho 105877)

def relationRow8352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105867) * ((1 : F) * rho 105868) = ((1 : F) * rho 105878)

def relationRow8353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105867) * ((1 : F) * rho 105867) = ((1 : F) * rho 105879)

def relationRow8354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105868) * ((1 : F) * rho 105868) = ((1 : F) * rho 105880)

def relationRow8355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105881) * ((-1 : F) * rho 105879 + (1 : F) * rho 105880) = ((2 : F) * rho 105878)

def relationRow8356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105882) * ((2 : F) + (1 : F) * rho 105879 + (-1 : F) * rho 105880) = ((1 : F) * rho 105879 + (1 : F) * rho 105880)

def relationLc3624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 53⟩, ⟨(1 : F), 105149, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8357 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3624 rho) = ((1 : F) * rho 105883)

def relationRow8358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105883) * ((1 : F) * rho 105881 + (1 : F) * rho 105882) = ((1 : F) * rho 105884)

def relationLc3625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105882) * (relationLc3625 rho) = ((1 : F) * rho 105885)

def relationLc3626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105881) * (relationLc3626 rho) = ((1 : F) * rho 105886)

def relationRow8361 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105885) * ((1 : F) * rho 105886) = ((1 : F) * rho 105887)

def relationRow8362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105888) * ((1 : F) + (1 : F) * rho 105887) = ((1 : F) * rho 105885 + (1 : F) * rho 105886)

def relationRow8363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105889) * ((1 : F) + (-1 : F) * rho 105887) = ((1 : F) * rho 105884 + (-1 : F) * rho 105885 + (-1 : F) * rho 105886)

def relationLc3627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 53⟩], residual := [((1 : F), 105888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103149) * (relationLc3627 rho) = ((1 : F) * rho 105890)

def relationLc3628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 53⟩], residual := [((1 : F), 105889)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103149) * (relationLc3628 rho) = ((1 : F) * rho 105891)

def relationRow8366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105881) * ((1 : F) * rho 105882) = ((1 : F) * rho 105892)

def relationRow8367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105881) * ((1 : F) * rho 105881) = ((1 : F) * rho 105893)

def relationRow8368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105882) * ((1 : F) * rho 105882) = ((1 : F) * rho 105894)

def relationRow8369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105895) * ((-1 : F) * rho 105893 + (1 : F) * rho 105894) = ((2 : F) * rho 105892)

def relationRow8370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105896) * ((2 : F) + (1 : F) * rho 105893 + (-1 : F) * rho 105894) = ((1 : F) * rho 105893 + (1 : F) * rho 105894)

def relationLc3629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 54⟩, ⟨(1 : F), 105149, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8371 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3629 rho) = ((1 : F) * rho 105897)

def relationRow8372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105897) * ((1 : F) * rho 105895 + (1 : F) * rho 105896) = ((1 : F) * rho 105898)

def relationLc3630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105896) * (relationLc3630 rho) = ((1 : F) * rho 105899)

def relationLc3631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105895) * (relationLc3631 rho) = ((1 : F) * rho 105900)

def relationRow8375 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105899) * ((1 : F) * rho 105900) = ((1 : F) * rho 105901)

def relationRow8376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105902) * ((1 : F) + (1 : F) * rho 105901) = ((1 : F) * rho 105899 + (1 : F) * rho 105900)

def relationRow8377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105903) * ((1 : F) + (-1 : F) * rho 105901) = ((1 : F) * rho 105898 + (-1 : F) * rho 105899 + (-1 : F) * rho 105900)

def relationLc3632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 54⟩], residual := [((1 : F), 105902)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103150) * (relationLc3632 rho) = ((1 : F) * rho 105904)

def relationLc3633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 54⟩], residual := [((1 : F), 105903)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103150) * (relationLc3633 rho) = ((1 : F) * rho 105905)

def relationRow8380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105895) * ((1 : F) * rho 105896) = ((1 : F) * rho 105906)

def relationRow8381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105895) * ((1 : F) * rho 105895) = ((1 : F) * rho 105907)

def relationRow8382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105896) * ((1 : F) * rho 105896) = ((1 : F) * rho 105908)

def relationRow8383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105909) * ((-1 : F) * rho 105907 + (1 : F) * rho 105908) = ((2 : F) * rho 105906)

def relationRow8384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105910) * ((2 : F) + (1 : F) * rho 105907 + (-1 : F) * rho 105908) = ((1 : F) * rho 105907 + (1 : F) * rho 105908)

def relationLc3634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 55⟩, ⟨(1 : F), 105149, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8385 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3634 rho) = ((1 : F) * rho 105911)

def relationRow8386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105911) * ((1 : F) * rho 105909 + (1 : F) * rho 105910) = ((1 : F) * rho 105912)

def relationLc3635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105910) * (relationLc3635 rho) = ((1 : F) * rho 105913)

def relationLc3636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105909) * (relationLc3636 rho) = ((1 : F) * rho 105914)

def relationRow8389 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105913) * ((1 : F) * rho 105914) = ((1 : F) * rho 105915)

def relationRow8390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105916) * ((1 : F) + (1 : F) * rho 105915) = ((1 : F) * rho 105913 + (1 : F) * rho 105914)

def relationRow8391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105917) * ((1 : F) + (-1 : F) * rho 105915) = ((1 : F) * rho 105912 + (-1 : F) * rho 105913 + (-1 : F) * rho 105914)

def relationLc3637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 55⟩], residual := [((1 : F), 105916)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103151) * (relationLc3637 rho) = ((1 : F) * rho 105918)

def relationLc3638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 55⟩], residual := [((1 : F), 105917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103151) * (relationLc3638 rho) = ((1 : F) * rho 105919)

def relationRow8394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105909) * ((1 : F) * rho 105910) = ((1 : F) * rho 105920)

def relationRow8395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105909) * ((1 : F) * rho 105909) = ((1 : F) * rho 105921)

def relationRow8396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105910) * ((1 : F) * rho 105910) = ((1 : F) * rho 105922)

def relationRow8397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105923) * ((-1 : F) * rho 105921 + (1 : F) * rho 105922) = ((2 : F) * rho 105920)

def relationRow8398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105924) * ((2 : F) + (1 : F) * rho 105921 + (-1 : F) * rho 105922) = ((1 : F) * rho 105921 + (1 : F) * rho 105922)

def relationLc3639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 56⟩, ⟨(1 : F), 105149, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8399 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3639 rho) = ((1 : F) * rho 105925)

def relationRow8400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105925) * ((1 : F) * rho 105923 + (1 : F) * rho 105924) = ((1 : F) * rho 105926)

def relationLc3640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105924) * (relationLc3640 rho) = ((1 : F) * rho 105927)

def relationLc3641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105923) * (relationLc3641 rho) = ((1 : F) * rho 105928)

def relationRow8403 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105927) * ((1 : F) * rho 105928) = ((1 : F) * rho 105929)

def relationRow8404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105930) * ((1 : F) + (1 : F) * rho 105929) = ((1 : F) * rho 105927 + (1 : F) * rho 105928)

def relationRow8405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105931) * ((1 : F) + (-1 : F) * rho 105929) = ((1 : F) * rho 105926 + (-1 : F) * rho 105927 + (-1 : F) * rho 105928)

def relationLc3642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 56⟩], residual := [((1 : F), 105930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103152) * (relationLc3642 rho) = ((1 : F) * rho 105932)

def relationLc3643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 56⟩], residual := [((1 : F), 105931)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103152) * (relationLc3643 rho) = ((1 : F) * rho 105933)

def relationRow8408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105923) * ((1 : F) * rho 105924) = ((1 : F) * rho 105934)

def relationRow8409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105923) * ((1 : F) * rho 105923) = ((1 : F) * rho 105935)

def relationRow8410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105924) * ((1 : F) * rho 105924) = ((1 : F) * rho 105936)

def relationRow8411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105937) * ((-1 : F) * rho 105935 + (1 : F) * rho 105936) = ((2 : F) * rho 105934)

def relationRow8412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105938) * ((2 : F) + (1 : F) * rho 105935 + (-1 : F) * rho 105936) = ((1 : F) * rho 105935 + (1 : F) * rho 105936)

def relationLc3644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 57⟩, ⟨(1 : F), 105149, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8413 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3644 rho) = ((1 : F) * rho 105939)

def relationRow8414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105939) * ((1 : F) * rho 105937 + (1 : F) * rho 105938) = ((1 : F) * rho 105940)

def relationLc3645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105938) * (relationLc3645 rho) = ((1 : F) * rho 105941)

def relationLc3646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105937) * (relationLc3646 rho) = ((1 : F) * rho 105942)

def relationRow8417 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105941) * ((1 : F) * rho 105942) = ((1 : F) * rho 105943)

def relationRow8418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105944) * ((1 : F) + (1 : F) * rho 105943) = ((1 : F) * rho 105941 + (1 : F) * rho 105942)

def relationRow8419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105945) * ((1 : F) + (-1 : F) * rho 105943) = ((1 : F) * rho 105940 + (-1 : F) * rho 105941 + (-1 : F) * rho 105942)

def relationLc3647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 57⟩], residual := [((1 : F), 105944)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103153) * (relationLc3647 rho) = ((1 : F) * rho 105946)

def relationLc3648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 57⟩], residual := [((1 : F), 105945)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103153) * (relationLc3648 rho) = ((1 : F) * rho 105947)

def relationRow8422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105937) * ((1 : F) * rho 105938) = ((1 : F) * rho 105948)

def relationRow8423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105937) * ((1 : F) * rho 105937) = ((1 : F) * rho 105949)

def relationRow8424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105938) * ((1 : F) * rho 105938) = ((1 : F) * rho 105950)

def relationRow8425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105951) * ((-1 : F) * rho 105949 + (1 : F) * rho 105950) = ((2 : F) * rho 105948)

def relationRow8426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105952) * ((2 : F) + (1 : F) * rho 105949 + (-1 : F) * rho 105950) = ((1 : F) * rho 105949 + (1 : F) * rho 105950)

def relationLc3649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 58⟩, ⟨(1 : F), 105149, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8427 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3649 rho) = ((1 : F) * rho 105953)

def relationRow8428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105953) * ((1 : F) * rho 105951 + (1 : F) * rho 105952) = ((1 : F) * rho 105954)

def relationLc3650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105952) * (relationLc3650 rho) = ((1 : F) * rho 105955)

def relationLc3651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105951) * (relationLc3651 rho) = ((1 : F) * rho 105956)

def relationRow8431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105955) * ((1 : F) * rho 105956) = ((1 : F) * rho 105957)

def relationRow8432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105958) * ((1 : F) + (1 : F) * rho 105957) = ((1 : F) * rho 105955 + (1 : F) * rho 105956)

def relationRow8433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105959) * ((1 : F) + (-1 : F) * rho 105957) = ((1 : F) * rho 105954 + (-1 : F) * rho 105955 + (-1 : F) * rho 105956)

def relationLc3652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 58⟩], residual := [((1 : F), 105958)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103154) * (relationLc3652 rho) = ((1 : F) * rho 105960)

def relationLc3653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 58⟩], residual := [((1 : F), 105959)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103154) * (relationLc3653 rho) = ((1 : F) * rho 105961)

def relationRow8436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105951) * ((1 : F) * rho 105952) = ((1 : F) * rho 105962)

def relationRow8437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105951) * ((1 : F) * rho 105951) = ((1 : F) * rho 105963)

def relationRow8438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105952) * ((1 : F) * rho 105952) = ((1 : F) * rho 105964)

def relationRow8439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105965) * ((-1 : F) * rho 105963 + (1 : F) * rho 105964) = ((2 : F) * rho 105962)

def relationRow8440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105966) * ((2 : F) + (1 : F) * rho 105963 + (-1 : F) * rho 105964) = ((1 : F) * rho 105963 + (1 : F) * rho 105964)

def relationLc3654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 59⟩, ⟨(1 : F), 105149, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8441 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3654 rho) = ((1 : F) * rho 105967)

def relationRow8442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105967) * ((1 : F) * rho 105965 + (1 : F) * rho 105966) = ((1 : F) * rho 105968)

def relationLc3655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105966) * (relationLc3655 rho) = ((1 : F) * rho 105969)

def relationLc3656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105965) * (relationLc3656 rho) = ((1 : F) * rho 105970)

def relationRow8445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105969) * ((1 : F) * rho 105970) = ((1 : F) * rho 105971)

def relationRow8446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105972) * ((1 : F) + (1 : F) * rho 105971) = ((1 : F) * rho 105969 + (1 : F) * rho 105970)

def relationRow8447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105973) * ((1 : F) + (-1 : F) * rho 105971) = ((1 : F) * rho 105968 + (-1 : F) * rho 105969 + (-1 : F) * rho 105970)

def relationLc3657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 59⟩], residual := [((1 : F), 105972)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103155) * (relationLc3657 rho) = ((1 : F) * rho 105974)

def relationLc3658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 59⟩], residual := [((1 : F), 105973)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103155) * (relationLc3658 rho) = ((1 : F) * rho 105975)

def relationRow8450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105965) * ((1 : F) * rho 105966) = ((1 : F) * rho 105976)

def relationRow8451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105965) * ((1 : F) * rho 105965) = ((1 : F) * rho 105977)

def relationRow8452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105966) * ((1 : F) * rho 105966) = ((1 : F) * rho 105978)

def relationRow8453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105979) * ((-1 : F) * rho 105977 + (1 : F) * rho 105978) = ((2 : F) * rho 105976)

def relationRow8454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105980) * ((2 : F) + (1 : F) * rho 105977 + (-1 : F) * rho 105978) = ((1 : F) * rho 105977 + (1 : F) * rho 105978)

def relationLc3659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 60⟩, ⟨(1 : F), 105149, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8455 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3659 rho) = ((1 : F) * rho 105981)

def relationRow8456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105981) * ((1 : F) * rho 105979 + (1 : F) * rho 105980) = ((1 : F) * rho 105982)

def relationLc3660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105980) * (relationLc3660 rho) = ((1 : F) * rho 105983)

def relationLc3661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105979) * (relationLc3661 rho) = ((1 : F) * rho 105984)

def relationRow8459 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105983) * ((1 : F) * rho 105984) = ((1 : F) * rho 105985)

def relationRow8460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105986) * ((1 : F) + (1 : F) * rho 105985) = ((1 : F) * rho 105983 + (1 : F) * rho 105984)

def relationRow8461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105987) * ((1 : F) + (-1 : F) * rho 105985) = ((1 : F) * rho 105982 + (-1 : F) * rho 105983 + (-1 : F) * rho 105984)

def relationLc3662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 60⟩], residual := [((1 : F), 105986)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103156) * (relationLc3662 rho) = ((1 : F) * rho 105988)

def relationLc3663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 60⟩], residual := [((1 : F), 105987)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103156) * (relationLc3663 rho) = ((1 : F) * rho 105989)

def relationRow8464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105979) * ((1 : F) * rho 105980) = ((1 : F) * rho 105990)

def relationRow8465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105979) * ((1 : F) * rho 105979) = ((1 : F) * rho 105991)

def relationRow8466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105980) * ((1 : F) * rho 105980) = ((1 : F) * rho 105992)

def relationRow8467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105993) * ((-1 : F) * rho 105991 + (1 : F) * rho 105992) = ((2 : F) * rho 105990)

def relationRow8468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105994) * ((2 : F) + (1 : F) * rho 105991 + (-1 : F) * rho 105992) = ((1 : F) * rho 105991 + (1 : F) * rho 105992)

def relationLc3664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 61⟩, ⟨(1 : F), 105149, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8469 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3664 rho) = ((1 : F) * rho 105995)

def relationRow8470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105995) * ((1 : F) * rho 105993 + (1 : F) * rho 105994) = ((1 : F) * rho 105996)

def relationLc3665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 105148, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105994) * (relationLc3665 rho) = ((1 : F) * rho 105997)

def relationLc3666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105149, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105993) * (relationLc3666 rho) = ((1 : F) * rho 105998)

def relationRow8473 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 105997) * ((1 : F) * rho 105998) = ((1 : F) * rho 105999)

def relationRow8474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106000) * ((1 : F) + (1 : F) * rho 105999) = ((1 : F) * rho 105997 + (1 : F) * rho 105998)

def relationRow8475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106001) * ((1 : F) + (-1 : F) * rho 105999) = ((1 : F) * rho 105996 + (-1 : F) * rho 105997 + (-1 : F) * rho 105998)

def relationLc3667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 150⟩, ⟨(-1 : F), 105148, 14, 61⟩], residual := [((1 : F), 106000)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103157) * (relationLc3667 rho) = ((1 : F) * rho 106002)

def relationLc3668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 150⟩, ⟨(-1 : F), 105149, 14, 61⟩], residual := [((1 : F), 106001)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103157) * (relationLc3668 rho) = ((1 : F) * rho 106003)

def relationRow8478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105993) * ((1 : F) * rho 105994) = ((1 : F) * rho 106004)

def relationRow8479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105993) * ((1 : F) * rho 105993) = ((1 : F) * rho 106005)

def relationRow8480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105994) * ((1 : F) * rho 105994) = ((1 : F) * rho 106006)

def relationRow8481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106007) * ((-1 : F) * rho 106005 + (1 : F) * rho 106006) = ((2 : F) * rho 106004)

def relationRow8482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106008) * ((2 : F) + (1 : F) * rho 106005 + (-1 : F) * rho 106006) = ((1 : F) * rho 106005 + (1 : F) * rho 106006)

def relationLc3669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 150⟩, ⟨(1 : F), 103198, 13, 150⟩, ⟨(1 : F), 105148, 14, 62⟩, ⟨(1 : F), 105149, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8483 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3669 rho) = ((1 : F) * rho 106009)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
