import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationLc3502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96503) * (relationLc3502 rho) = ((1 : F) * rho 96506)

def relationLc3503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96502) * (relationLc3503 rho) = ((1 : F) * rho 96507)

def relationRow8012 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96506) * ((1 : F) * rho 96507) = ((1 : F) * rho 96508)

def relationRow8013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96509) * ((1 : F) + (1 : F) * rho 96508) = ((1 : F) * rho 96506 + (1 : F) * rho 96507)

def relationRow8014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96510) * ((1 : F) + (-1 : F) * rho 96508) = ((1 : F) * rho 96505 + (-1 : F) * rho 96506 + (-1 : F) * rho 96507)

def relationLc3504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 28⟩], residual := [((1 : F), 96509)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94095) * (relationLc3504 rho) = ((1 : F) * rho 96511)

def relationLc3505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 28⟩], residual := [((1 : F), 96510)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94095) * (relationLc3505 rho) = ((1 : F) * rho 96512)

def relationRow8017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96502) * ((1 : F) * rho 96503) = ((1 : F) * rho 96513)

def relationRow8018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96502) * ((1 : F) * rho 96502) = ((1 : F) * rho 96514)

def relationRow8019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96503) * ((1 : F) * rho 96503) = ((1 : F) * rho 96515)

def relationRow8020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96516) * ((-1 : F) * rho 96514 + (1 : F) * rho 96515) = ((2 : F) * rho 96513)

def relationRow8021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96517) * ((2 : F) + (1 : F) * rho 96514 + (-1 : F) * rho 96515) = ((1 : F) * rho 96514 + (1 : F) * rho 96515)

def relationLc3506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 29⟩, ⟨(1 : F), 96120, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8022 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3506 rho) = ((1 : F) * rho 96518)

def relationRow8023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96518) * ((1 : F) * rho 96516 + (1 : F) * rho 96517) = ((1 : F) * rho 96519)

def relationLc3507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96517) * (relationLc3507 rho) = ((1 : F) * rho 96520)

def relationLc3508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96516) * (relationLc3508 rho) = ((1 : F) * rho 96521)

def relationRow8026 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96520) * ((1 : F) * rho 96521) = ((1 : F) * rho 96522)

def relationRow8027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96523) * ((1 : F) + (1 : F) * rho 96522) = ((1 : F) * rho 96520 + (1 : F) * rho 96521)

def relationRow8028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96524) * ((1 : F) + (-1 : F) * rho 96522) = ((1 : F) * rho 96519 + (-1 : F) * rho 96520 + (-1 : F) * rho 96521)

def relationLc3509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 29⟩], residual := [((1 : F), 96523)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94096) * (relationLc3509 rho) = ((1 : F) * rho 96525)

def relationLc3510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 29⟩], residual := [((1 : F), 96524)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94096) * (relationLc3510 rho) = ((1 : F) * rho 96526)

def relationRow8031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96516) * ((1 : F) * rho 96517) = ((1 : F) * rho 96527)

def relationRow8032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96516) * ((1 : F) * rho 96516) = ((1 : F) * rho 96528)

def relationRow8033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96517) * ((1 : F) * rho 96517) = ((1 : F) * rho 96529)

def relationRow8034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96530) * ((-1 : F) * rho 96528 + (1 : F) * rho 96529) = ((2 : F) * rho 96527)

def relationRow8035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96531) * ((2 : F) + (1 : F) * rho 96528 + (-1 : F) * rho 96529) = ((1 : F) * rho 96528 + (1 : F) * rho 96529)

def relationLc3511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 30⟩, ⟨(1 : F), 96120, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3511 rho) = ((1 : F) * rho 96532)

def relationRow8037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96532) * ((1 : F) * rho 96530 + (1 : F) * rho 96531) = ((1 : F) * rho 96533)

def relationLc3512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96531) * (relationLc3512 rho) = ((1 : F) * rho 96534)

def relationLc3513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96530) * (relationLc3513 rho) = ((1 : F) * rho 96535)

def relationRow8040 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96534) * ((1 : F) * rho 96535) = ((1 : F) * rho 96536)

def relationRow8041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96537) * ((1 : F) + (1 : F) * rho 96536) = ((1 : F) * rho 96534 + (1 : F) * rho 96535)

def relationRow8042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96538) * ((1 : F) + (-1 : F) * rho 96536) = ((1 : F) * rho 96533 + (-1 : F) * rho 96534 + (-1 : F) * rho 96535)

def relationLc3514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 30⟩], residual := [((1 : F), 96537)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94097) * (relationLc3514 rho) = ((1 : F) * rho 96539)

def relationLc3515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 30⟩], residual := [((1 : F), 96538)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94097) * (relationLc3515 rho) = ((1 : F) * rho 96540)

def relationRow8045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96530) * ((1 : F) * rho 96531) = ((1 : F) * rho 96541)

def relationRow8046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96530) * ((1 : F) * rho 96530) = ((1 : F) * rho 96542)

def relationRow8047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96531) * ((1 : F) * rho 96531) = ((1 : F) * rho 96543)

def relationRow8048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96544) * ((-1 : F) * rho 96542 + (1 : F) * rho 96543) = ((2 : F) * rho 96541)

def relationRow8049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96545) * ((2 : F) + (1 : F) * rho 96542 + (-1 : F) * rho 96543) = ((1 : F) * rho 96542 + (1 : F) * rho 96543)

def relationLc3516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 31⟩, ⟨(1 : F), 96120, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8050 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3516 rho) = ((1 : F) * rho 96546)

def relationRow8051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96546) * ((1 : F) * rho 96544 + (1 : F) * rho 96545) = ((1 : F) * rho 96547)

def relationLc3517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96545) * (relationLc3517 rho) = ((1 : F) * rho 96548)

def relationLc3518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96544) * (relationLc3518 rho) = ((1 : F) * rho 96549)

def relationRow8054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96548) * ((1 : F) * rho 96549) = ((1 : F) * rho 96550)

def relationRow8055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96551) * ((1 : F) + (1 : F) * rho 96550) = ((1 : F) * rho 96548 + (1 : F) * rho 96549)

def relationRow8056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96552) * ((1 : F) + (-1 : F) * rho 96550) = ((1 : F) * rho 96547 + (-1 : F) * rho 96548 + (-1 : F) * rho 96549)

def relationLc3519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 31⟩], residual := [((1 : F), 96551)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94098) * (relationLc3519 rho) = ((1 : F) * rho 96553)

def relationLc3520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 31⟩], residual := [((1 : F), 96552)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94098) * (relationLc3520 rho) = ((1 : F) * rho 96554)

def relationRow8059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96544) * ((1 : F) * rho 96545) = ((1 : F) * rho 96555)

def relationRow8060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96544) * ((1 : F) * rho 96544) = ((1 : F) * rho 96556)

def relationRow8061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96545) * ((1 : F) * rho 96545) = ((1 : F) * rho 96557)

def relationRow8062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96558) * ((-1 : F) * rho 96556 + (1 : F) * rho 96557) = ((2 : F) * rho 96555)

def relationRow8063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96559) * ((2 : F) + (1 : F) * rho 96556 + (-1 : F) * rho 96557) = ((1 : F) * rho 96556 + (1 : F) * rho 96557)

def relationLc3521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 32⟩, ⟨(1 : F), 96120, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8064 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3521 rho) = ((1 : F) * rho 96560)

def relationRow8065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96560) * ((1 : F) * rho 96558 + (1 : F) * rho 96559) = ((1 : F) * rho 96561)

def relationLc3522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96559) * (relationLc3522 rho) = ((1 : F) * rho 96562)

def relationLc3523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96558) * (relationLc3523 rho) = ((1 : F) * rho 96563)

def relationRow8068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96562) * ((1 : F) * rho 96563) = ((1 : F) * rho 96564)

def relationRow8069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96565) * ((1 : F) + (1 : F) * rho 96564) = ((1 : F) * rho 96562 + (1 : F) * rho 96563)

def relationRow8070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96566) * ((1 : F) + (-1 : F) * rho 96564) = ((1 : F) * rho 96561 + (-1 : F) * rho 96562 + (-1 : F) * rho 96563)

def relationLc3524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 32⟩], residual := [((1 : F), 96565)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94099) * (relationLc3524 rho) = ((1 : F) * rho 96567)

def relationLc3525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 32⟩], residual := [((1 : F), 96566)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94099) * (relationLc3525 rho) = ((1 : F) * rho 96568)

def relationRow8073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96558) * ((1 : F) * rho 96559) = ((1 : F) * rho 96569)

def relationRow8074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96558) * ((1 : F) * rho 96558) = ((1 : F) * rho 96570)

def relationRow8075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96559) * ((1 : F) * rho 96559) = ((1 : F) * rho 96571)

def relationRow8076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96572) * ((-1 : F) * rho 96570 + (1 : F) * rho 96571) = ((2 : F) * rho 96569)

def relationRow8077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96573) * ((2 : F) + (1 : F) * rho 96570 + (-1 : F) * rho 96571) = ((1 : F) * rho 96570 + (1 : F) * rho 96571)

def relationLc3526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 33⟩, ⟨(1 : F), 96120, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8078 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3526 rho) = ((1 : F) * rho 96574)

def relationRow8079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96574) * ((1 : F) * rho 96572 + (1 : F) * rho 96573) = ((1 : F) * rho 96575)

def relationLc3527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96573) * (relationLc3527 rho) = ((1 : F) * rho 96576)

def relationLc3528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96572) * (relationLc3528 rho) = ((1 : F) * rho 96577)

def relationRow8082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96576) * ((1 : F) * rho 96577) = ((1 : F) * rho 96578)

def relationRow8083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96579) * ((1 : F) + (1 : F) * rho 96578) = ((1 : F) * rho 96576 + (1 : F) * rho 96577)

def relationRow8084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96580) * ((1 : F) + (-1 : F) * rho 96578) = ((1 : F) * rho 96575 + (-1 : F) * rho 96576 + (-1 : F) * rho 96577)

def relationLc3529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 33⟩], residual := [((1 : F), 96579)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94100) * (relationLc3529 rho) = ((1 : F) * rho 96581)

def relationLc3530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 33⟩], residual := [((1 : F), 96580)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94100) * (relationLc3530 rho) = ((1 : F) * rho 96582)

def relationRow8087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96572) * ((1 : F) * rho 96573) = ((1 : F) * rho 96583)

def relationRow8088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96572) * ((1 : F) * rho 96572) = ((1 : F) * rho 96584)

def relationRow8089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96573) * ((1 : F) * rho 96573) = ((1 : F) * rho 96585)

def relationRow8090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96586) * ((-1 : F) * rho 96584 + (1 : F) * rho 96585) = ((2 : F) * rho 96583)

def relationRow8091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96587) * ((2 : F) + (1 : F) * rho 96584 + (-1 : F) * rho 96585) = ((1 : F) * rho 96584 + (1 : F) * rho 96585)

def relationLc3531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 34⟩, ⟨(1 : F), 96120, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3531 rho) = ((1 : F) * rho 96588)

def relationRow8093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96588) * ((1 : F) * rho 96586 + (1 : F) * rho 96587) = ((1 : F) * rho 96589)

def relationLc3532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96587) * (relationLc3532 rho) = ((1 : F) * rho 96590)

def relationLc3533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96586) * (relationLc3533 rho) = ((1 : F) * rho 96591)

def relationRow8096 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96590) * ((1 : F) * rho 96591) = ((1 : F) * rho 96592)

def relationRow8097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96593) * ((1 : F) + (1 : F) * rho 96592) = ((1 : F) * rho 96590 + (1 : F) * rho 96591)

def relationRow8098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96594) * ((1 : F) + (-1 : F) * rho 96592) = ((1 : F) * rho 96589 + (-1 : F) * rho 96590 + (-1 : F) * rho 96591)

def relationLc3534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 34⟩], residual := [((1 : F), 96593)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94101) * (relationLc3534 rho) = ((1 : F) * rho 96595)

def relationLc3535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 34⟩], residual := [((1 : F), 96594)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94101) * (relationLc3535 rho) = ((1 : F) * rho 96596)

def relationRow8101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96586) * ((1 : F) * rho 96587) = ((1 : F) * rho 96597)

def relationRow8102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96586) * ((1 : F) * rho 96586) = ((1 : F) * rho 96598)

def relationRow8103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96587) * ((1 : F) * rho 96587) = ((1 : F) * rho 96599)

def relationRow8104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96600) * ((-1 : F) * rho 96598 + (1 : F) * rho 96599) = ((2 : F) * rho 96597)

def relationRow8105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96601) * ((2 : F) + (1 : F) * rho 96598 + (-1 : F) * rho 96599) = ((1 : F) * rho 96598 + (1 : F) * rho 96599)

def relationLc3536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 35⟩, ⟨(1 : F), 96120, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8106 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3536 rho) = ((1 : F) * rho 96602)

def relationRow8107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96602) * ((1 : F) * rho 96600 + (1 : F) * rho 96601) = ((1 : F) * rho 96603)

def relationLc3537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96601) * (relationLc3537 rho) = ((1 : F) * rho 96604)

def relationLc3538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96600) * (relationLc3538 rho) = ((1 : F) * rho 96605)

def relationRow8110 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96604) * ((1 : F) * rho 96605) = ((1 : F) * rho 96606)

def relationRow8111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96607) * ((1 : F) + (1 : F) * rho 96606) = ((1 : F) * rho 96604 + (1 : F) * rho 96605)

def relationRow8112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96608) * ((1 : F) + (-1 : F) * rho 96606) = ((1 : F) * rho 96603 + (-1 : F) * rho 96604 + (-1 : F) * rho 96605)

def relationLc3539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 35⟩], residual := [((1 : F), 96607)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94102) * (relationLc3539 rho) = ((1 : F) * rho 96609)

def relationLc3540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 35⟩], residual := [((1 : F), 96608)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94102) * (relationLc3540 rho) = ((1 : F) * rho 96610)

def relationRow8115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96600) * ((1 : F) * rho 96601) = ((1 : F) * rho 96611)

def relationRow8116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96600) * ((1 : F) * rho 96600) = ((1 : F) * rho 96612)

def relationRow8117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96601) * ((1 : F) * rho 96601) = ((1 : F) * rho 96613)

def relationRow8118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96614) * ((-1 : F) * rho 96612 + (1 : F) * rho 96613) = ((2 : F) * rho 96611)

def relationRow8119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96615) * ((2 : F) + (1 : F) * rho 96612 + (-1 : F) * rho 96613) = ((1 : F) * rho 96612 + (1 : F) * rho 96613)

def relationLc3541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 36⟩, ⟨(1 : F), 96120, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8120 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3541 rho) = ((1 : F) * rho 96616)

def relationRow8121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96616) * ((1 : F) * rho 96614 + (1 : F) * rho 96615) = ((1 : F) * rho 96617)

def relationLc3542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96615) * (relationLc3542 rho) = ((1 : F) * rho 96618)

def relationLc3543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96614) * (relationLc3543 rho) = ((1 : F) * rho 96619)

def relationRow8124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96618) * ((1 : F) * rho 96619) = ((1 : F) * rho 96620)

def relationRow8125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96621) * ((1 : F) + (1 : F) * rho 96620) = ((1 : F) * rho 96618 + (1 : F) * rho 96619)

def relationRow8126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96622) * ((1 : F) + (-1 : F) * rho 96620) = ((1 : F) * rho 96617 + (-1 : F) * rho 96618 + (-1 : F) * rho 96619)

def relationLc3544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 36⟩], residual := [((1 : F), 96621)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94103) * (relationLc3544 rho) = ((1 : F) * rho 96623)

def relationLc3545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 36⟩], residual := [((1 : F), 96622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94103) * (relationLc3545 rho) = ((1 : F) * rho 96624)

def relationRow8129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96614) * ((1 : F) * rho 96615) = ((1 : F) * rho 96625)

def relationRow8130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96614) * ((1 : F) * rho 96614) = ((1 : F) * rho 96626)

def relationRow8131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96615) * ((1 : F) * rho 96615) = ((1 : F) * rho 96627)

def relationRow8132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96628) * ((-1 : F) * rho 96626 + (1 : F) * rho 96627) = ((2 : F) * rho 96625)

def relationRow8133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96629) * ((2 : F) + (1 : F) * rho 96626 + (-1 : F) * rho 96627) = ((1 : F) * rho 96626 + (1 : F) * rho 96627)

def relationLc3546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 37⟩, ⟨(1 : F), 96120, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8134 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3546 rho) = ((1 : F) * rho 96630)

def relationRow8135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96630) * ((1 : F) * rho 96628 + (1 : F) * rho 96629) = ((1 : F) * rho 96631)

def relationLc3547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96629) * (relationLc3547 rho) = ((1 : F) * rho 96632)

def relationLc3548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96628) * (relationLc3548 rho) = ((1 : F) * rho 96633)

def relationRow8138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96632) * ((1 : F) * rho 96633) = ((1 : F) * rho 96634)

def relationRow8139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96635) * ((1 : F) + (1 : F) * rho 96634) = ((1 : F) * rho 96632 + (1 : F) * rho 96633)

def relationRow8140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96636) * ((1 : F) + (-1 : F) * rho 96634) = ((1 : F) * rho 96631 + (-1 : F) * rho 96632 + (-1 : F) * rho 96633)

def relationLc3549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 37⟩], residual := [((1 : F), 96635)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94104) * (relationLc3549 rho) = ((1 : F) * rho 96637)

def relationLc3550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 37⟩], residual := [((1 : F), 96636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94104) * (relationLc3550 rho) = ((1 : F) * rho 96638)

def relationRow8143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96628) * ((1 : F) * rho 96629) = ((1 : F) * rho 96639)

def relationRow8144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96628) * ((1 : F) * rho 96628) = ((1 : F) * rho 96640)

def relationRow8145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96629) * ((1 : F) * rho 96629) = ((1 : F) * rho 96641)

def relationRow8146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96642) * ((-1 : F) * rho 96640 + (1 : F) * rho 96641) = ((2 : F) * rho 96639)

def relationRow8147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96643) * ((2 : F) + (1 : F) * rho 96640 + (-1 : F) * rho 96641) = ((1 : F) * rho 96640 + (1 : F) * rho 96641)

def relationLc3551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 38⟩, ⟨(1 : F), 96120, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3551 rho) = ((1 : F) * rho 96644)

def relationRow8149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96644) * ((1 : F) * rho 96642 + (1 : F) * rho 96643) = ((1 : F) * rho 96645)

def relationLc3552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96643) * (relationLc3552 rho) = ((1 : F) * rho 96646)

def relationLc3553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96642) * (relationLc3553 rho) = ((1 : F) * rho 96647)

def relationRow8152 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96646) * ((1 : F) * rho 96647) = ((1 : F) * rho 96648)

def relationRow8153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96649) * ((1 : F) + (1 : F) * rho 96648) = ((1 : F) * rho 96646 + (1 : F) * rho 96647)

def relationRow8154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96650) * ((1 : F) + (-1 : F) * rho 96648) = ((1 : F) * rho 96645 + (-1 : F) * rho 96646 + (-1 : F) * rho 96647)

def relationLc3554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 38⟩], residual := [((1 : F), 96649)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94105) * (relationLc3554 rho) = ((1 : F) * rho 96651)

def relationLc3555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 38⟩], residual := [((1 : F), 96650)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94105) * (relationLc3555 rho) = ((1 : F) * rho 96652)

def relationRow8157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96642) * ((1 : F) * rho 96643) = ((1 : F) * rho 96653)

def relationRow8158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96642) * ((1 : F) * rho 96642) = ((1 : F) * rho 96654)

def relationRow8159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96643) * ((1 : F) * rho 96643) = ((1 : F) * rho 96655)

def relationRow8160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96656) * ((-1 : F) * rho 96654 + (1 : F) * rho 96655) = ((2 : F) * rho 96653)

def relationRow8161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96657) * ((2 : F) + (1 : F) * rho 96654 + (-1 : F) * rho 96655) = ((1 : F) * rho 96654 + (1 : F) * rho 96655)

def relationLc3556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 39⟩, ⟨(1 : F), 96120, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8162 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3556 rho) = ((1 : F) * rho 96658)

def relationRow8163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96658) * ((1 : F) * rho 96656 + (1 : F) * rho 96657) = ((1 : F) * rho 96659)

def relationLc3557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96657) * (relationLc3557 rho) = ((1 : F) * rho 96660)

def relationLc3558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96656) * (relationLc3558 rho) = ((1 : F) * rho 96661)

def relationRow8166 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96660) * ((1 : F) * rho 96661) = ((1 : F) * rho 96662)

def relationRow8167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96663) * ((1 : F) + (1 : F) * rho 96662) = ((1 : F) * rho 96660 + (1 : F) * rho 96661)

def relationRow8168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96664) * ((1 : F) + (-1 : F) * rho 96662) = ((1 : F) * rho 96659 + (-1 : F) * rho 96660 + (-1 : F) * rho 96661)

def relationLc3559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 39⟩], residual := [((1 : F), 96663)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94106) * (relationLc3559 rho) = ((1 : F) * rho 96665)

def relationLc3560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 39⟩], residual := [((1 : F), 96664)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94106) * (relationLc3560 rho) = ((1 : F) * rho 96666)

def relationRow8171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96656) * ((1 : F) * rho 96657) = ((1 : F) * rho 96667)

def relationRow8172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96656) * ((1 : F) * rho 96656) = ((1 : F) * rho 96668)

def relationRow8173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96657) * ((1 : F) * rho 96657) = ((1 : F) * rho 96669)

def relationRow8174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96670) * ((-1 : F) * rho 96668 + (1 : F) * rho 96669) = ((2 : F) * rho 96667)

def relationRow8175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96671) * ((2 : F) + (1 : F) * rho 96668 + (-1 : F) * rho 96669) = ((1 : F) * rho 96668 + (1 : F) * rho 96669)

def relationLc3561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 40⟩, ⟨(1 : F), 96120, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8176 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3561 rho) = ((1 : F) * rho 96672)

def relationRow8177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96672) * ((1 : F) * rho 96670 + (1 : F) * rho 96671) = ((1 : F) * rho 96673)

def relationLc3562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96671) * (relationLc3562 rho) = ((1 : F) * rho 96674)

def relationLc3563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96670) * (relationLc3563 rho) = ((1 : F) * rho 96675)

def relationRow8180 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96674) * ((1 : F) * rho 96675) = ((1 : F) * rho 96676)

def relationRow8181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96677) * ((1 : F) + (1 : F) * rho 96676) = ((1 : F) * rho 96674 + (1 : F) * rho 96675)

def relationRow8182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96678) * ((1 : F) + (-1 : F) * rho 96676) = ((1 : F) * rho 96673 + (-1 : F) * rho 96674 + (-1 : F) * rho 96675)

def relationLc3564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 40⟩], residual := [((1 : F), 96677)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94107) * (relationLc3564 rho) = ((1 : F) * rho 96679)

def relationLc3565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 40⟩], residual := [((1 : F), 96678)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94107) * (relationLc3565 rho) = ((1 : F) * rho 96680)

def relationRow8185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96670) * ((1 : F) * rho 96671) = ((1 : F) * rho 96681)

def relationRow8186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96670) * ((1 : F) * rho 96670) = ((1 : F) * rho 96682)

def relationRow8187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96671) * ((1 : F) * rho 96671) = ((1 : F) * rho 96683)

def relationRow8188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96684) * ((-1 : F) * rho 96682 + (1 : F) * rho 96683) = ((2 : F) * rho 96681)

def relationRow8189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96685) * ((2 : F) + (1 : F) * rho 96682 + (-1 : F) * rho 96683) = ((1 : F) * rho 96682 + (1 : F) * rho 96683)

def relationLc3566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 41⟩, ⟨(1 : F), 96120, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8190 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3566 rho) = ((1 : F) * rho 96686)

def relationRow8191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96686) * ((1 : F) * rho 96684 + (1 : F) * rho 96685) = ((1 : F) * rho 96687)

def relationLc3567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96685) * (relationLc3567 rho) = ((1 : F) * rho 96688)

def relationLc3568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96684) * (relationLc3568 rho) = ((1 : F) * rho 96689)

def relationRow8194 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96688) * ((1 : F) * rho 96689) = ((1 : F) * rho 96690)

def relationRow8195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96691) * ((1 : F) + (1 : F) * rho 96690) = ((1 : F) * rho 96688 + (1 : F) * rho 96689)

def relationRow8196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96692) * ((1 : F) + (-1 : F) * rho 96690) = ((1 : F) * rho 96687 + (-1 : F) * rho 96688 + (-1 : F) * rho 96689)

def relationLc3569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 41⟩], residual := [((1 : F), 96691)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94108) * (relationLc3569 rho) = ((1 : F) * rho 96693)

def relationLc3570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 41⟩], residual := [((1 : F), 96692)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94108) * (relationLc3570 rho) = ((1 : F) * rho 96694)

def relationRow8199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96684) * ((1 : F) * rho 96685) = ((1 : F) * rho 96695)

def relationRow8200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96684) * ((1 : F) * rho 96684) = ((1 : F) * rho 96696)

def relationRow8201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96685) * ((1 : F) * rho 96685) = ((1 : F) * rho 96697)

def relationRow8202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96698) * ((-1 : F) * rho 96696 + (1 : F) * rho 96697) = ((2 : F) * rho 96695)

def relationRow8203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96699) * ((2 : F) + (1 : F) * rho 96696 + (-1 : F) * rho 96697) = ((1 : F) * rho 96696 + (1 : F) * rho 96697)

def relationLc3571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 42⟩, ⟨(1 : F), 96120, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3571 rho) = ((1 : F) * rho 96700)

def relationRow8205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96700) * ((1 : F) * rho 96698 + (1 : F) * rho 96699) = ((1 : F) * rho 96701)

def relationLc3572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96699) * (relationLc3572 rho) = ((1 : F) * rho 96702)

def relationLc3573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96698) * (relationLc3573 rho) = ((1 : F) * rho 96703)

def relationRow8208 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96702) * ((1 : F) * rho 96703) = ((1 : F) * rho 96704)

def relationRow8209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96705) * ((1 : F) + (1 : F) * rho 96704) = ((1 : F) * rho 96702 + (1 : F) * rho 96703)

def relationRow8210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96706) * ((1 : F) + (-1 : F) * rho 96704) = ((1 : F) * rho 96701 + (-1 : F) * rho 96702 + (-1 : F) * rho 96703)

def relationLc3574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 42⟩], residual := [((1 : F), 96705)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94109) * (relationLc3574 rho) = ((1 : F) * rho 96707)

def relationLc3575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 42⟩], residual := [((1 : F), 96706)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94109) * (relationLc3575 rho) = ((1 : F) * rho 96708)

def relationRow8213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96698) * ((1 : F) * rho 96699) = ((1 : F) * rho 96709)

def relationRow8214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96698) * ((1 : F) * rho 96698) = ((1 : F) * rho 96710)

def relationRow8215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96699) * ((1 : F) * rho 96699) = ((1 : F) * rho 96711)

def relationRow8216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96712) * ((-1 : F) * rho 96710 + (1 : F) * rho 96711) = ((2 : F) * rho 96709)

def relationRow8217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96713) * ((2 : F) + (1 : F) * rho 96710 + (-1 : F) * rho 96711) = ((1 : F) * rho 96710 + (1 : F) * rho 96711)

def relationLc3576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 43⟩, ⟨(1 : F), 96120, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8218 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3576 rho) = ((1 : F) * rho 96714)

def relationRow8219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96714) * ((1 : F) * rho 96712 + (1 : F) * rho 96713) = ((1 : F) * rho 96715)

def relationLc3577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96713) * (relationLc3577 rho) = ((1 : F) * rho 96716)

def relationLc3578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96712) * (relationLc3578 rho) = ((1 : F) * rho 96717)

def relationRow8222 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96716) * ((1 : F) * rho 96717) = ((1 : F) * rho 96718)

def relationRow8223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96719) * ((1 : F) + (1 : F) * rho 96718) = ((1 : F) * rho 96716 + (1 : F) * rho 96717)

def relationRow8224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96720) * ((1 : F) + (-1 : F) * rho 96718) = ((1 : F) * rho 96715 + (-1 : F) * rho 96716 + (-1 : F) * rho 96717)

def relationLc3579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 43⟩], residual := [((1 : F), 96719)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94110) * (relationLc3579 rho) = ((1 : F) * rho 96721)

def relationLc3580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 43⟩], residual := [((1 : F), 96720)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94110) * (relationLc3580 rho) = ((1 : F) * rho 96722)

def relationRow8227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96712) * ((1 : F) * rho 96713) = ((1 : F) * rho 96723)

def relationRow8228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96712) * ((1 : F) * rho 96712) = ((1 : F) * rho 96724)

def relationRow8229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96713) * ((1 : F) * rho 96713) = ((1 : F) * rho 96725)

def relationRow8230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96726) * ((-1 : F) * rho 96724 + (1 : F) * rho 96725) = ((2 : F) * rho 96723)

def relationRow8231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96727) * ((2 : F) + (1 : F) * rho 96724 + (-1 : F) * rho 96725) = ((1 : F) * rho 96724 + (1 : F) * rho 96725)

def relationLc3581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 44⟩, ⟨(1 : F), 96120, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8232 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3581 rho) = ((1 : F) * rho 96728)

def relationRow8233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96728) * ((1 : F) * rho 96726 + (1 : F) * rho 96727) = ((1 : F) * rho 96729)

def relationLc3582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96727) * (relationLc3582 rho) = ((1 : F) * rho 96730)

def relationLc3583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96726) * (relationLc3583 rho) = ((1 : F) * rho 96731)

def relationRow8236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96730) * ((1 : F) * rho 96731) = ((1 : F) * rho 96732)

def relationRow8237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96733) * ((1 : F) + (1 : F) * rho 96732) = ((1 : F) * rho 96730 + (1 : F) * rho 96731)

def relationRow8238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96734) * ((1 : F) + (-1 : F) * rho 96732) = ((1 : F) * rho 96729 + (-1 : F) * rho 96730 + (-1 : F) * rho 96731)

def relationLc3584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 44⟩], residual := [((1 : F), 96733)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94111) * (relationLc3584 rho) = ((1 : F) * rho 96735)

def relationLc3585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 44⟩], residual := [((1 : F), 96734)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94111) * (relationLc3585 rho) = ((1 : F) * rho 96736)

def relationRow8241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96726) * ((1 : F) * rho 96727) = ((1 : F) * rho 96737)

def relationRow8242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96726) * ((1 : F) * rho 96726) = ((1 : F) * rho 96738)

def relationRow8243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96727) * ((1 : F) * rho 96727) = ((1 : F) * rho 96739)

def relationRow8244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96740) * ((-1 : F) * rho 96738 + (1 : F) * rho 96739) = ((2 : F) * rho 96737)

def relationRow8245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96741) * ((2 : F) + (1 : F) * rho 96738 + (-1 : F) * rho 96739) = ((1 : F) * rho 96738 + (1 : F) * rho 96739)

def relationLc3586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 45⟩, ⟨(1 : F), 96120, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3586 rho) = ((1 : F) * rho 96742)

def relationRow8247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96742) * ((1 : F) * rho 96740 + (1 : F) * rho 96741) = ((1 : F) * rho 96743)

def relationLc3587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96741) * (relationLc3587 rho) = ((1 : F) * rho 96744)

def relationLc3588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96740) * (relationLc3588 rho) = ((1 : F) * rho 96745)

def relationRow8250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96744) * ((1 : F) * rho 96745) = ((1 : F) * rho 96746)

def relationRow8251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96747) * ((1 : F) + (1 : F) * rho 96746) = ((1 : F) * rho 96744 + (1 : F) * rho 96745)

def relationRow8252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96748) * ((1 : F) + (-1 : F) * rho 96746) = ((1 : F) * rho 96743 + (-1 : F) * rho 96744 + (-1 : F) * rho 96745)

def relationLc3589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 45⟩], residual := [((1 : F), 96747)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94112) * (relationLc3589 rho) = ((1 : F) * rho 96749)

def relationLc3590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 45⟩], residual := [((1 : F), 96748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94112) * (relationLc3590 rho) = ((1 : F) * rho 96750)

def relationRow8255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96740) * ((1 : F) * rho 96741) = ((1 : F) * rho 96751)

def relationRow8256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96740) * ((1 : F) * rho 96740) = ((1 : F) * rho 96752)

def relationRow8257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96741) * ((1 : F) * rho 96741) = ((1 : F) * rho 96753)

def relationRow8258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96754) * ((-1 : F) * rho 96752 + (1 : F) * rho 96753) = ((2 : F) * rho 96751)

def relationRow8259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96755) * ((2 : F) + (1 : F) * rho 96752 + (-1 : F) * rho 96753) = ((1 : F) * rho 96752 + (1 : F) * rho 96753)

def relationLc3591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 46⟩, ⟨(1 : F), 96120, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3591 rho) = ((1 : F) * rho 96756)

def relationRow8261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96756) * ((1 : F) * rho 96754 + (1 : F) * rho 96755) = ((1 : F) * rho 96757)

def relationLc3592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96755) * (relationLc3592 rho) = ((1 : F) * rho 96758)

def relationLc3593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96754) * (relationLc3593 rho) = ((1 : F) * rho 96759)

def relationRow8264 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96758) * ((1 : F) * rho 96759) = ((1 : F) * rho 96760)

def relationRow8265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96761) * ((1 : F) + (1 : F) * rho 96760) = ((1 : F) * rho 96758 + (1 : F) * rho 96759)

def relationRow8266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96762) * ((1 : F) + (-1 : F) * rho 96760) = ((1 : F) * rho 96757 + (-1 : F) * rho 96758 + (-1 : F) * rho 96759)

def relationLc3594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 46⟩], residual := [((1 : F), 96761)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94113) * (relationLc3594 rho) = ((1 : F) * rho 96763)

def relationLc3595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 46⟩], residual := [((1 : F), 96762)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94113) * (relationLc3595 rho) = ((1 : F) * rho 96764)

def relationRow8269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96754) * ((1 : F) * rho 96755) = ((1 : F) * rho 96765)

def relationRow8270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96754) * ((1 : F) * rho 96754) = ((1 : F) * rho 96766)

def relationRow8271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96755) * ((1 : F) * rho 96755) = ((1 : F) * rho 96767)

def relationRow8272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96768) * ((-1 : F) * rho 96766 + (1 : F) * rho 96767) = ((2 : F) * rho 96765)

def relationRow8273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96769) * ((2 : F) + (1 : F) * rho 96766 + (-1 : F) * rho 96767) = ((1 : F) * rho 96766 + (1 : F) * rho 96767)

def relationLc3596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 47⟩, ⟨(1 : F), 96120, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8274 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3596 rho) = ((1 : F) * rho 96770)

def relationRow8275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96770) * ((1 : F) * rho 96768 + (1 : F) * rho 96769) = ((1 : F) * rho 96771)

def relationLc3597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96769) * (relationLc3597 rho) = ((1 : F) * rho 96772)

def relationLc3598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96768) * (relationLc3598 rho) = ((1 : F) * rho 96773)

def relationRow8278 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96772) * ((1 : F) * rho 96773) = ((1 : F) * rho 96774)

def relationRow8279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96775) * ((1 : F) + (1 : F) * rho 96774) = ((1 : F) * rho 96772 + (1 : F) * rho 96773)

def relationRow8280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96776) * ((1 : F) + (-1 : F) * rho 96774) = ((1 : F) * rho 96771 + (-1 : F) * rho 96772 + (-1 : F) * rho 96773)

def relationLc3599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 47⟩], residual := [((1 : F), 96775)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94114) * (relationLc3599 rho) = ((1 : F) * rho 96777)

def relationLc3600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 47⟩], residual := [((1 : F), 96776)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94114) * (relationLc3600 rho) = ((1 : F) * rho 96778)

def relationRow8283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96768) * ((1 : F) * rho 96769) = ((1 : F) * rho 96779)

def relationRow8284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96768) * ((1 : F) * rho 96768) = ((1 : F) * rho 96780)

def relationRow8285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96769) * ((1 : F) * rho 96769) = ((1 : F) * rho 96781)

def relationRow8286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96782) * ((-1 : F) * rho 96780 + (1 : F) * rho 96781) = ((2 : F) * rho 96779)

def relationRow8287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96783) * ((2 : F) + (1 : F) * rho 96780 + (-1 : F) * rho 96781) = ((1 : F) * rho 96780 + (1 : F) * rho 96781)

def relationLc3601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 48⟩, ⟨(1 : F), 96120, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8288 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3601 rho) = ((1 : F) * rho 96784)

def relationRow8289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96784) * ((1 : F) * rho 96782 + (1 : F) * rho 96783) = ((1 : F) * rho 96785)

def relationLc3602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96783) * (relationLc3602 rho) = ((1 : F) * rho 96786)

def relationLc3603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96782) * (relationLc3603 rho) = ((1 : F) * rho 96787)

def relationRow8292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96786) * ((1 : F) * rho 96787) = ((1 : F) * rho 96788)

def relationRow8293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96789) * ((1 : F) + (1 : F) * rho 96788) = ((1 : F) * rho 96786 + (1 : F) * rho 96787)

def relationRow8294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96790) * ((1 : F) + (-1 : F) * rho 96788) = ((1 : F) * rho 96785 + (-1 : F) * rho 96786 + (-1 : F) * rho 96787)

def relationLc3604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 48⟩], residual := [((1 : F), 96789)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94115) * (relationLc3604 rho) = ((1 : F) * rho 96791)

def relationLc3605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 48⟩], residual := [((1 : F), 96790)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94115) * (relationLc3605 rho) = ((1 : F) * rho 96792)

def relationRow8297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96782) * ((1 : F) * rho 96783) = ((1 : F) * rho 96793)

def relationRow8298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96782) * ((1 : F) * rho 96782) = ((1 : F) * rho 96794)

def relationRow8299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96783) * ((1 : F) * rho 96783) = ((1 : F) * rho 96795)

def relationRow8300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96796) * ((-1 : F) * rho 96794 + (1 : F) * rho 96795) = ((2 : F) * rho 96793)

def relationRow8301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96797) * ((2 : F) + (1 : F) * rho 96794 + (-1 : F) * rho 96795) = ((1 : F) * rho 96794 + (1 : F) * rho 96795)

def relationLc3606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 49⟩, ⟨(1 : F), 96120, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3606 rho) = ((1 : F) * rho 96798)

def relationRow8303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96798) * ((1 : F) * rho 96796 + (1 : F) * rho 96797) = ((1 : F) * rho 96799)

def relationLc3607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96797) * (relationLc3607 rho) = ((1 : F) * rho 96800)

def relationLc3608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96796) * (relationLc3608 rho) = ((1 : F) * rho 96801)

def relationRow8306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96800) * ((1 : F) * rho 96801) = ((1 : F) * rho 96802)

def relationRow8307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96803) * ((1 : F) + (1 : F) * rho 96802) = ((1 : F) * rho 96800 + (1 : F) * rho 96801)

def relationRow8308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96804) * ((1 : F) + (-1 : F) * rho 96802) = ((1 : F) * rho 96799 + (-1 : F) * rho 96800 + (-1 : F) * rho 96801)

def relationLc3609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 49⟩], residual := [((1 : F), 96803)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94116) * (relationLc3609 rho) = ((1 : F) * rho 96805)

def relationLc3610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 49⟩], residual := [((1 : F), 96804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94116) * (relationLc3610 rho) = ((1 : F) * rho 96806)

def relationRow8311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96796) * ((1 : F) * rho 96797) = ((1 : F) * rho 96807)

def relationRow8312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96796) * ((1 : F) * rho 96796) = ((1 : F) * rho 96808)

def relationRow8313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96797) * ((1 : F) * rho 96797) = ((1 : F) * rho 96809)

def relationRow8314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96810) * ((-1 : F) * rho 96808 + (1 : F) * rho 96809) = ((2 : F) * rho 96807)

def relationRow8315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96811) * ((2 : F) + (1 : F) * rho 96808 + (-1 : F) * rho 96809) = ((1 : F) * rho 96808 + (1 : F) * rho 96809)

def relationLc3611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 50⟩, ⟨(1 : F), 96120, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8316 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3611 rho) = ((1 : F) * rho 96812)

def relationRow8317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96812) * ((1 : F) * rho 96810 + (1 : F) * rho 96811) = ((1 : F) * rho 96813)

def relationLc3612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96811) * (relationLc3612 rho) = ((1 : F) * rho 96814)

def relationLc3613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96810) * (relationLc3613 rho) = ((1 : F) * rho 96815)

def relationRow8320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96814) * ((1 : F) * rho 96815) = ((1 : F) * rho 96816)

def relationRow8321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96817) * ((1 : F) + (1 : F) * rho 96816) = ((1 : F) * rho 96814 + (1 : F) * rho 96815)

def relationRow8322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96818) * ((1 : F) + (-1 : F) * rho 96816) = ((1 : F) * rho 96813 + (-1 : F) * rho 96814 + (-1 : F) * rho 96815)

def relationLc3614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 50⟩], residual := [((1 : F), 96817)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94117) * (relationLc3614 rho) = ((1 : F) * rho 96819)

def relationLc3615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 50⟩], residual := [((1 : F), 96818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94117) * (relationLc3615 rho) = ((1 : F) * rho 96820)

def relationRow8325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96810) * ((1 : F) * rho 96811) = ((1 : F) * rho 96821)

def relationRow8326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96810) * ((1 : F) * rho 96810) = ((1 : F) * rho 96822)

def relationRow8327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96811) * ((1 : F) * rho 96811) = ((1 : F) * rho 96823)

def relationRow8328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96824) * ((-1 : F) * rho 96822 + (1 : F) * rho 96823) = ((2 : F) * rho 96821)

def relationRow8329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96825) * ((2 : F) + (1 : F) * rho 96822 + (-1 : F) * rho 96823) = ((1 : F) * rho 96822 + (1 : F) * rho 96823)

def relationLc3616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 51⟩, ⟨(1 : F), 96120, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8330 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3616 rho) = ((1 : F) * rho 96826)

def relationRow8331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96826) * ((1 : F) * rho 96824 + (1 : F) * rho 96825) = ((1 : F) * rho 96827)

def relationLc3617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96825) * (relationLc3617 rho) = ((1 : F) * rho 96828)

def relationLc3618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96824) * (relationLc3618 rho) = ((1 : F) * rho 96829)

def relationRow8334 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96828) * ((1 : F) * rho 96829) = ((1 : F) * rho 96830)

def relationRow8335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96831) * ((1 : F) + (1 : F) * rho 96830) = ((1 : F) * rho 96828 + (1 : F) * rho 96829)

def relationRow8336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96832) * ((1 : F) + (-1 : F) * rho 96830) = ((1 : F) * rho 96827 + (-1 : F) * rho 96828 + (-1 : F) * rho 96829)

def relationLc3619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 51⟩], residual := [((1 : F), 96831)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94118) * (relationLc3619 rho) = ((1 : F) * rho 96833)

def relationLc3620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 51⟩], residual := [((1 : F), 96832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94118) * (relationLc3620 rho) = ((1 : F) * rho 96834)

def relationRow8339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96824) * ((1 : F) * rho 96825) = ((1 : F) * rho 96835)

def relationRow8340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96824) * ((1 : F) * rho 96824) = ((1 : F) * rho 96836)

def relationRow8341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96825) * ((1 : F) * rho 96825) = ((1 : F) * rho 96837)

def relationRow8342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96838) * ((-1 : F) * rho 96836 + (1 : F) * rho 96837) = ((2 : F) * rho 96835)

def relationRow8343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96839) * ((2 : F) + (1 : F) * rho 96836 + (-1 : F) * rho 96837) = ((1 : F) * rho 96836 + (1 : F) * rho 96837)

def relationLc3621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 52⟩, ⟨(1 : F), 96120, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8344 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3621 rho) = ((1 : F) * rho 96840)

def relationRow8345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96840) * ((1 : F) * rho 96838 + (1 : F) * rho 96839) = ((1 : F) * rho 96841)

def relationLc3622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96839) * (relationLc3622 rho) = ((1 : F) * rho 96842)

def relationLc3623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96838) * (relationLc3623 rho) = ((1 : F) * rho 96843)

def relationRow8348 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96842) * ((1 : F) * rho 96843) = ((1 : F) * rho 96844)

def relationRow8349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96845) * ((1 : F) + (1 : F) * rho 96844) = ((1 : F) * rho 96842 + (1 : F) * rho 96843)

def relationRow8350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96846) * ((1 : F) + (-1 : F) * rho 96844) = ((1 : F) * rho 96841 + (-1 : F) * rho 96842 + (-1 : F) * rho 96843)

def relationLc3624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 52⟩], residual := [((1 : F), 96845)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94119) * (relationLc3624 rho) = ((1 : F) * rho 96847)

def relationLc3625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 52⟩], residual := [((1 : F), 96846)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94119) * (relationLc3625 rho) = ((1 : F) * rho 96848)

def relationRow8353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96838) * ((1 : F) * rho 96839) = ((1 : F) * rho 96849)

def relationRow8354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96838) * ((1 : F) * rho 96838) = ((1 : F) * rho 96850)

def relationRow8355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96839) * ((1 : F) * rho 96839) = ((1 : F) * rho 96851)

def relationRow8356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96852) * ((-1 : F) * rho 96850 + (1 : F) * rho 96851) = ((2 : F) * rho 96849)

def relationRow8357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96853) * ((2 : F) + (1 : F) * rho 96850 + (-1 : F) * rho 96851) = ((1 : F) * rho 96850 + (1 : F) * rho 96851)

def relationLc3626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 53⟩, ⟨(1 : F), 96120, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8358 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3626 rho) = ((1 : F) * rho 96854)

def relationRow8359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96854) * ((1 : F) * rho 96852 + (1 : F) * rho 96853) = ((1 : F) * rho 96855)

def relationLc3627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96853) * (relationLc3627 rho) = ((1 : F) * rho 96856)

def relationLc3628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96852) * (relationLc3628 rho) = ((1 : F) * rho 96857)

def relationRow8362 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96856) * ((1 : F) * rho 96857) = ((1 : F) * rho 96858)

def relationRow8363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96859) * ((1 : F) + (1 : F) * rho 96858) = ((1 : F) * rho 96856 + (1 : F) * rho 96857)

def relationRow8364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96860) * ((1 : F) + (-1 : F) * rho 96858) = ((1 : F) * rho 96855 + (-1 : F) * rho 96856 + (-1 : F) * rho 96857)

def relationLc3629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 53⟩], residual := [((1 : F), 96859)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94120) * (relationLc3629 rho) = ((1 : F) * rho 96861)

def relationLc3630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 53⟩], residual := [((1 : F), 96860)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94120) * (relationLc3630 rho) = ((1 : F) * rho 96862)

def relationRow8367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96852) * ((1 : F) * rho 96853) = ((1 : F) * rho 96863)

def relationRow8368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96852) * ((1 : F) * rho 96852) = ((1 : F) * rho 96864)

def relationRow8369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96853) * ((1 : F) * rho 96853) = ((1 : F) * rho 96865)

def relationRow8370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96866) * ((-1 : F) * rho 96864 + (1 : F) * rho 96865) = ((2 : F) * rho 96863)

def relationRow8371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96867) * ((2 : F) + (1 : F) * rho 96864 + (-1 : F) * rho 96865) = ((1 : F) * rho 96864 + (1 : F) * rho 96865)

def relationLc3631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 54⟩, ⟨(1 : F), 96120, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8372 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3631 rho) = ((1 : F) * rho 96868)

def relationRow8373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96868) * ((1 : F) * rho 96866 + (1 : F) * rho 96867) = ((1 : F) * rho 96869)

def relationLc3632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96867) * (relationLc3632 rho) = ((1 : F) * rho 96870)

def relationLc3633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96866) * (relationLc3633 rho) = ((1 : F) * rho 96871)

def relationRow8376 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96870) * ((1 : F) * rho 96871) = ((1 : F) * rho 96872)

def relationRow8377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96873) * ((1 : F) + (1 : F) * rho 96872) = ((1 : F) * rho 96870 + (1 : F) * rho 96871)

def relationRow8378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96874) * ((1 : F) + (-1 : F) * rho 96872) = ((1 : F) * rho 96869 + (-1 : F) * rho 96870 + (-1 : F) * rho 96871)

def relationLc3634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 54⟩], residual := [((1 : F), 96873)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94121) * (relationLc3634 rho) = ((1 : F) * rho 96875)

def relationLc3635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 54⟩], residual := [((1 : F), 96874)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94121) * (relationLc3635 rho) = ((1 : F) * rho 96876)

def relationRow8381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96866) * ((1 : F) * rho 96867) = ((1 : F) * rho 96877)

def relationRow8382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96866) * ((1 : F) * rho 96866) = ((1 : F) * rho 96878)

def relationRow8383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96867) * ((1 : F) * rho 96867) = ((1 : F) * rho 96879)

def relationRow8384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96880) * ((-1 : F) * rho 96878 + (1 : F) * rho 96879) = ((2 : F) * rho 96877)

def relationRow8385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96881) * ((2 : F) + (1 : F) * rho 96878 + (-1 : F) * rho 96879) = ((1 : F) * rho 96878 + (1 : F) * rho 96879)

def relationLc3636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 55⟩, ⟨(1 : F), 96120, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8386 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3636 rho) = ((1 : F) * rho 96882)

def relationRow8387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96882) * ((1 : F) * rho 96880 + (1 : F) * rho 96881) = ((1 : F) * rho 96883)

def relationLc3637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96881) * (relationLc3637 rho) = ((1 : F) * rho 96884)

def relationLc3638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96880) * (relationLc3638 rho) = ((1 : F) * rho 96885)

def relationRow8390 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96884) * ((1 : F) * rho 96885) = ((1 : F) * rho 96886)

def relationRow8391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96887) * ((1 : F) + (1 : F) * rho 96886) = ((1 : F) * rho 96884 + (1 : F) * rho 96885)

def relationRow8392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96888) * ((1 : F) + (-1 : F) * rho 96886) = ((1 : F) * rho 96883 + (-1 : F) * rho 96884 + (-1 : F) * rho 96885)

def relationLc3639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 55⟩], residual := [((1 : F), 96887)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94122) * (relationLc3639 rho) = ((1 : F) * rho 96889)

def relationLc3640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 55⟩], residual := [((1 : F), 96888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94122) * (relationLc3640 rho) = ((1 : F) * rho 96890)

def relationRow8395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96880) * ((1 : F) * rho 96881) = ((1 : F) * rho 96891)

def relationRow8396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96880) * ((1 : F) * rho 96880) = ((1 : F) * rho 96892)

def relationRow8397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96881) * ((1 : F) * rho 96881) = ((1 : F) * rho 96893)

def relationRow8398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96894) * ((-1 : F) * rho 96892 + (1 : F) * rho 96893) = ((2 : F) * rho 96891)

def relationRow8399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96895) * ((2 : F) + (1 : F) * rho 96892 + (-1 : F) * rho 96893) = ((1 : F) * rho 96892 + (1 : F) * rho 96893)

def relationLc3641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 56⟩, ⟨(1 : F), 96120, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8400 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3641 rho) = ((1 : F) * rho 96896)

def relationRow8401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96896) * ((1 : F) * rho 96894 + (1 : F) * rho 96895) = ((1 : F) * rho 96897)

def relationLc3642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96895) * (relationLc3642 rho) = ((1 : F) * rho 96898)

def relationLc3643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96894) * (relationLc3643 rho) = ((1 : F) * rho 96899)

def relationRow8404 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96898) * ((1 : F) * rho 96899) = ((1 : F) * rho 96900)

def relationRow8405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96901) * ((1 : F) + (1 : F) * rho 96900) = ((1 : F) * rho 96898 + (1 : F) * rho 96899)

def relationRow8406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96902) * ((1 : F) + (-1 : F) * rho 96900) = ((1 : F) * rho 96897 + (-1 : F) * rho 96898 + (-1 : F) * rho 96899)

def relationLc3644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 56⟩], residual := [((1 : F), 96901)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94123) * (relationLc3644 rho) = ((1 : F) * rho 96903)

def relationLc3645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 56⟩], residual := [((1 : F), 96902)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94123) * (relationLc3645 rho) = ((1 : F) * rho 96904)

def relationRow8409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96894) * ((1 : F) * rho 96895) = ((1 : F) * rho 96905)

def relationRow8410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96894) * ((1 : F) * rho 96894) = ((1 : F) * rho 96906)

def relationRow8411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96895) * ((1 : F) * rho 96895) = ((1 : F) * rho 96907)

def relationRow8412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96908) * ((-1 : F) * rho 96906 + (1 : F) * rho 96907) = ((2 : F) * rho 96905)

def relationRow8413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96909) * ((2 : F) + (1 : F) * rho 96906 + (-1 : F) * rho 96907) = ((1 : F) * rho 96906 + (1 : F) * rho 96907)

def relationLc3646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 57⟩, ⟨(1 : F), 96120, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8414 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3646 rho) = ((1 : F) * rho 96910)

def relationRow8415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96910) * ((1 : F) * rho 96908 + (1 : F) * rho 96909) = ((1 : F) * rho 96911)

def relationLc3647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96909) * (relationLc3647 rho) = ((1 : F) * rho 96912)

def relationLc3648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96908) * (relationLc3648 rho) = ((1 : F) * rho 96913)

def relationRow8418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96912) * ((1 : F) * rho 96913) = ((1 : F) * rho 96914)

def relationRow8419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96915) * ((1 : F) + (1 : F) * rho 96914) = ((1 : F) * rho 96912 + (1 : F) * rho 96913)

def relationRow8420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96916) * ((1 : F) + (-1 : F) * rho 96914) = ((1 : F) * rho 96911 + (-1 : F) * rho 96912 + (-1 : F) * rho 96913)

def relationLc3649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 57⟩], residual := [((1 : F), 96915)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94124) * (relationLc3649 rho) = ((1 : F) * rho 96917)

def relationLc3650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 57⟩], residual := [((1 : F), 96916)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94124) * (relationLc3650 rho) = ((1 : F) * rho 96918)

def relationRow8423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96908) * ((1 : F) * rho 96909) = ((1 : F) * rho 96919)

def relationRow8424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96908) * ((1 : F) * rho 96908) = ((1 : F) * rho 96920)

def relationRow8425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96909) * ((1 : F) * rho 96909) = ((1 : F) * rho 96921)

def relationRow8426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96922) * ((-1 : F) * rho 96920 + (1 : F) * rho 96921) = ((2 : F) * rho 96919)

def relationRow8427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96923) * ((2 : F) + (1 : F) * rho 96920 + (-1 : F) * rho 96921) = ((1 : F) * rho 96920 + (1 : F) * rho 96921)

def relationLc3651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 58⟩, ⟨(1 : F), 96120, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8428 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3651 rho) = ((1 : F) * rho 96924)

def relationRow8429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96924) * ((1 : F) * rho 96922 + (1 : F) * rho 96923) = ((1 : F) * rho 96925)

def relationLc3652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96923) * (relationLc3652 rho) = ((1 : F) * rho 96926)

def relationLc3653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96922) * (relationLc3653 rho) = ((1 : F) * rho 96927)

def relationRow8432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96926) * ((1 : F) * rho 96927) = ((1 : F) * rho 96928)

def relationRow8433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96929) * ((1 : F) + (1 : F) * rho 96928) = ((1 : F) * rho 96926 + (1 : F) * rho 96927)

def relationRow8434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96930) * ((1 : F) + (-1 : F) * rho 96928) = ((1 : F) * rho 96925 + (-1 : F) * rho 96926 + (-1 : F) * rho 96927)

def relationLc3654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 58⟩], residual := [((1 : F), 96929)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94125) * (relationLc3654 rho) = ((1 : F) * rho 96931)

def relationLc3655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 58⟩], residual := [((1 : F), 96930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94125) * (relationLc3655 rho) = ((1 : F) * rho 96932)

def relationRow8437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96922) * ((1 : F) * rho 96923) = ((1 : F) * rho 96933)

def relationRow8438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96922) * ((1 : F) * rho 96922) = ((1 : F) * rho 96934)

def relationRow8439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96923) * ((1 : F) * rho 96923) = ((1 : F) * rho 96935)

def relationRow8440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96936) * ((-1 : F) * rho 96934 + (1 : F) * rho 96935) = ((2 : F) * rho 96933)

def relationRow8441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96937) * ((2 : F) + (1 : F) * rho 96934 + (-1 : F) * rho 96935) = ((1 : F) * rho 96934 + (1 : F) * rho 96935)

def relationLc3656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 59⟩, ⟨(1 : F), 96120, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8442 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3656 rho) = ((1 : F) * rho 96938)

def relationRow8443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96938) * ((1 : F) * rho 96936 + (1 : F) * rho 96937) = ((1 : F) * rho 96939)

def relationLc3657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96937) * (relationLc3657 rho) = ((1 : F) * rho 96940)

def relationLc3658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96936) * (relationLc3658 rho) = ((1 : F) * rho 96941)

def relationRow8446 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96940) * ((1 : F) * rho 96941) = ((1 : F) * rho 96942)

def relationRow8447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96943) * ((1 : F) + (1 : F) * rho 96942) = ((1 : F) * rho 96940 + (1 : F) * rho 96941)

def relationRow8448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96944) * ((1 : F) + (-1 : F) * rho 96942) = ((1 : F) * rho 96939 + (-1 : F) * rho 96940 + (-1 : F) * rho 96941)

def relationLc3659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 59⟩], residual := [((1 : F), 96943)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94126) * (relationLc3659 rho) = ((1 : F) * rho 96945)

def relationLc3660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 59⟩], residual := [((1 : F), 96944)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94126) * (relationLc3660 rho) = ((1 : F) * rho 96946)

def relationRow8451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96936) * ((1 : F) * rho 96937) = ((1 : F) * rho 96947)

def relationRow8452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96936) * ((1 : F) * rho 96936) = ((1 : F) * rho 96948)

def relationRow8453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96937) * ((1 : F) * rho 96937) = ((1 : F) * rho 96949)

def relationRow8454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96950) * ((-1 : F) * rho 96948 + (1 : F) * rho 96949) = ((2 : F) * rho 96947)

def relationRow8455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96951) * ((2 : F) + (1 : F) * rho 96948 + (-1 : F) * rho 96949) = ((1 : F) * rho 96948 + (1 : F) * rho 96949)

def relationLc3661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 60⟩, ⟨(1 : F), 96120, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8456 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3661 rho) = ((1 : F) * rho 96952)

def relationRow8457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96952) * ((1 : F) * rho 96950 + (1 : F) * rho 96951) = ((1 : F) * rho 96953)

def relationLc3662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96951) * (relationLc3662 rho) = ((1 : F) * rho 96954)

def relationLc3663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96950) * (relationLc3663 rho) = ((1 : F) * rho 96955)

def relationRow8460 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96954) * ((1 : F) * rho 96955) = ((1 : F) * rho 96956)

def relationRow8461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96957) * ((1 : F) + (1 : F) * rho 96956) = ((1 : F) * rho 96954 + (1 : F) * rho 96955)

def relationRow8462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96958) * ((1 : F) + (-1 : F) * rho 96956) = ((1 : F) * rho 96953 + (-1 : F) * rho 96954 + (-1 : F) * rho 96955)

def relationLc3664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 60⟩], residual := [((1 : F), 96957)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94127) * (relationLc3664 rho) = ((1 : F) * rho 96959)

def relationLc3665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 60⟩], residual := [((1 : F), 96958)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94127) * (relationLc3665 rho) = ((1 : F) * rho 96960)

def relationRow8465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96950) * ((1 : F) * rho 96951) = ((1 : F) * rho 96961)

def relationRow8466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96950) * ((1 : F) * rho 96950) = ((1 : F) * rho 96962)

def relationRow8467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96951) * ((1 : F) * rho 96951) = ((1 : F) * rho 96963)

def relationRow8468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96964) * ((-1 : F) * rho 96962 + (1 : F) * rho 96963) = ((2 : F) * rho 96961)

def relationRow8469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96965) * ((2 : F) + (1 : F) * rho 96962 + (-1 : F) * rho 96963) = ((1 : F) * rho 96962 + (1 : F) * rho 96963)

def relationLc3666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 61⟩, ⟨(1 : F), 96120, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8470 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3666 rho) = ((1 : F) * rho 96966)

def relationRow8471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96966) * ((1 : F) * rho 96964 + (1 : F) * rho 96965) = ((1 : F) * rho 96967)

def relationLc3667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96965) * (relationLc3667 rho) = ((1 : F) * rho 96968)

def relationLc3668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96964) * (relationLc3668 rho) = ((1 : F) * rho 96969)

def relationRow8474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96968) * ((1 : F) * rho 96969) = ((1 : F) * rho 96970)

def relationRow8475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96971) * ((1 : F) + (1 : F) * rho 96970) = ((1 : F) * rho 96968 + (1 : F) * rho 96969)

def relationRow8476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96972) * ((1 : F) + (-1 : F) * rho 96970) = ((1 : F) * rho 96967 + (-1 : F) * rho 96968 + (-1 : F) * rho 96969)

def relationLc3669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 61⟩], residual := [((1 : F), 96971)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94128) * (relationLc3669 rho) = ((1 : F) * rho 96973)

def relationLc3670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 61⟩], residual := [((1 : F), 96972)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94128) * (relationLc3670 rho) = ((1 : F) * rho 96974)

def relationRow8479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96964) * ((1 : F) * rho 96965) = ((1 : F) * rho 96975)

def relationRow8480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96964) * ((1 : F) * rho 96964) = ((1 : F) * rho 96976)

def relationRow8481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96965) * ((1 : F) * rho 96965) = ((1 : F) * rho 96977)

def relationRow8482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96978) * ((-1 : F) * rho 96976 + (1 : F) * rho 96977) = ((2 : F) * rho 96975)

def relationRow8483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96979) * ((2 : F) + (1 : F) * rho 96976 + (-1 : F) * rho 96977) = ((1 : F) * rho 96976 + (1 : F) * rho 96977)

def relationLc3671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 62⟩, ⟨(1 : F), 96120, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8484 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3671 rho) = ((1 : F) * rho 96980)

def relationRow8485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96980) * ((1 : F) * rho 96978 + (1 : F) * rho 96979) = ((1 : F) * rho 96981)

def relationLc3672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96979) * (relationLc3672 rho) = ((1 : F) * rho 96982)

def relationLc3673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96978) * (relationLc3673 rho) = ((1 : F) * rho 96983)

def relationRow8488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96982) * ((1 : F) * rho 96983) = ((1 : F) * rho 96984)

def relationRow8489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96985) * ((1 : F) + (1 : F) * rho 96984) = ((1 : F) * rho 96982 + (1 : F) * rho 96983)

def relationRow8490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96986) * ((1 : F) + (-1 : F) * rho 96984) = ((1 : F) * rho 96981 + (-1 : F) * rho 96982 + (-1 : F) * rho 96983)

def relationLc3674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 62⟩], residual := [((1 : F), 96985)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94129) * (relationLc3674 rho) = ((1 : F) * rho 96987)

def relationLc3675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 62⟩], residual := [((1 : F), 96986)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94129) * (relationLc3675 rho) = ((1 : F) * rho 96988)

def relationRow8493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96978) * ((1 : F) * rho 96979) = ((1 : F) * rho 96989)

def relationRow8494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96978) * ((1 : F) * rho 96978) = ((1 : F) * rho 96990)

def relationRow8495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96979) * ((1 : F) * rho 96979) = ((1 : F) * rho 96991)

def relationRow8496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96992) * ((-1 : F) * rho 96990 + (1 : F) * rho 96991) = ((2 : F) * rho 96989)

def relationRow8497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96993) * ((2 : F) + (1 : F) * rho 96990 + (-1 : F) * rho 96991) = ((1 : F) * rho 96990 + (1 : F) * rho 96991)

def relationLc3676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 63⟩, ⟨(1 : F), 96120, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8498 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3676 rho) = ((1 : F) * rho 96994)

def relationRow8499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96994) * ((1 : F) * rho 96992 + (1 : F) * rho 96993) = ((1 : F) * rho 96995)

def relationLc3677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96993) * (relationLc3677 rho) = ((1 : F) * rho 96996)

def relationLc3678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96992) * (relationLc3678 rho) = ((1 : F) * rho 96997)

def relationRow8502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 96996) * ((1 : F) * rho 96997) = ((1 : F) * rho 96998)

def relationRow8503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96999) * ((1 : F) + (1 : F) * rho 96998) = ((1 : F) * rho 96996 + (1 : F) * rho 96997)

def relationRow8504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97000) * ((1 : F) + (-1 : F) * rho 96998) = ((1 : F) * rho 96995 + (-1 : F) * rho 96996 + (-1 : F) * rho 96997)

def relationLc3679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 63⟩], residual := [((1 : F), 96999)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94130) * (relationLc3679 rho) = ((1 : F) * rho 97001)

def relationLc3680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 63⟩], residual := [((1 : F), 97000)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94130) * (relationLc3680 rho) = ((1 : F) * rho 97002)

def relationRow8507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96992) * ((1 : F) * rho 96993) = ((1 : F) * rho 97003)

def relationRow8508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96992) * ((1 : F) * rho 96992) = ((1 : F) * rho 97004)

def relationRow8509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96993) * ((1 : F) * rho 96993) = ((1 : F) * rho 97005)

def relationRow8510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97006) * ((-1 : F) * rho 97004 + (1 : F) * rho 97005) = ((2 : F) * rho 97003)

def relationRow8511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97007) * ((2 : F) + (1 : F) * rho 97004 + (-1 : F) * rho 97005) = ((1 : F) * rho 97004 + (1 : F) * rho 97005)

def relationLc3681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 64⟩, ⟨(1 : F), 96120, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8512 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3681 rho) = ((1 : F) * rho 97008)

def relationRow8513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97008) * ((1 : F) * rho 97006 + (1 : F) * rho 97007) = ((1 : F) * rho 97009)

def relationLc3682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97007) * (relationLc3682 rho) = ((1 : F) * rho 97010)

def relationLc3683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97006) * (relationLc3683 rho) = ((1 : F) * rho 97011)

def relationRow8516 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 97010) * ((1 : F) * rho 97011) = ((1 : F) * rho 97012)

def relationRow8517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97013) * ((1 : F) + (1 : F) * rho 97012) = ((1 : F) * rho 97010 + (1 : F) * rho 97011)

def relationRow8518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97014) * ((1 : F) + (-1 : F) * rho 97012) = ((1 : F) * rho 97009 + (-1 : F) * rho 97010 + (-1 : F) * rho 97011)

def relationLc3684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 64⟩], residual := [((1 : F), 97013)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94131) * (relationLc3684 rho) = ((1 : F) * rho 97015)

def relationLc3685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 64⟩], residual := [((1 : F), 97014)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94131) * (relationLc3685 rho) = ((1 : F) * rho 97016)

def relationRow8521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97006) * ((1 : F) * rho 97007) = ((1 : F) * rho 97017)

def relationRow8522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97006) * ((1 : F) * rho 97006) = ((1 : F) * rho 97018)

def relationRow8523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97007) * ((1 : F) * rho 97007) = ((1 : F) * rho 97019)

def relationRow8524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97020) * ((-1 : F) * rho 97018 + (1 : F) * rho 97019) = ((2 : F) * rho 97017)

def relationRow8525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97021) * ((2 : F) + (1 : F) * rho 97018 + (-1 : F) * rho 97019) = ((1 : F) * rho 97018 + (1 : F) * rho 97019)

def relationLc3686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 65⟩, ⟨(1 : F), 96120, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3686 rho) = ((1 : F) * rho 97022)

def relationRow8527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97022) * ((1 : F) * rho 97020 + (1 : F) * rho 97021) = ((1 : F) * rho 97023)

def relationLc3687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97021) * (relationLc3687 rho) = ((1 : F) * rho 97024)

def relationLc3688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97020) * (relationLc3688 rho) = ((1 : F) * rho 97025)

def relationRow8530 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 97024) * ((1 : F) * rho 97025) = ((1 : F) * rho 97026)

def relationRow8531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97027) * ((1 : F) + (1 : F) * rho 97026) = ((1 : F) * rho 97024 + (1 : F) * rho 97025)

def relationRow8532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97028) * ((1 : F) + (-1 : F) * rho 97026) = ((1 : F) * rho 97023 + (-1 : F) * rho 97024 + (-1 : F) * rho 97025)

def relationLc3689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 65⟩], residual := [((1 : F), 97027)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94132) * (relationLc3689 rho) = ((1 : F) * rho 97029)

def relationLc3690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 65⟩], residual := [((1 : F), 97028)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94132) * (relationLc3690 rho) = ((1 : F) * rho 97030)

def relationRow8535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97020) * ((1 : F) * rho 97021) = ((1 : F) * rho 97031)

def relationRow8536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97020) * ((1 : F) * rho 97020) = ((1 : F) * rho 97032)

def relationRow8537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97021) * ((1 : F) * rho 97021) = ((1 : F) * rho 97033)

def relationRow8538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97034) * ((-1 : F) * rho 97032 + (1 : F) * rho 97033) = ((2 : F) * rho 97031)

def relationRow8539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97035) * ((2 : F) + (1 : F) * rho 97032 + (-1 : F) * rho 97033) = ((1 : F) * rho 97032 + (1 : F) * rho 97033)

def relationLc3691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 66⟩, ⟨(1 : F), 96120, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8540 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3691 rho) = ((1 : F) * rho 97036)

def relationRow8541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97036) * ((1 : F) * rho 97034 + (1 : F) * rho 97035) = ((1 : F) * rho 97037)

def relationLc3692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97035) * (relationLc3692 rho) = ((1 : F) * rho 97038)

def relationLc3693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97034) * (relationLc3693 rho) = ((1 : F) * rho 97039)

def relationRow8544 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 97038) * ((1 : F) * rho 97039) = ((1 : F) * rho 97040)

def relationRow8545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97041) * ((1 : F) + (1 : F) * rho 97040) = ((1 : F) * rho 97038 + (1 : F) * rho 97039)

def relationRow8546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97042) * ((1 : F) + (-1 : F) * rho 97040) = ((1 : F) * rho 97037 + (-1 : F) * rho 97038 + (-1 : F) * rho 97039)

def relationLc3694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 66⟩], residual := [((1 : F), 97041)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94133) * (relationLc3694 rho) = ((1 : F) * rho 97043)

def relationLc3695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 66⟩], residual := [((1 : F), 97042)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94133) * (relationLc3695 rho) = ((1 : F) * rho 97044)

def relationRow8549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97034) * ((1 : F) * rho 97035) = ((1 : F) * rho 97045)

def relationRow8550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97034) * ((1 : F) * rho 97034) = ((1 : F) * rho 97046)

def relationRow8551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97035) * ((1 : F) * rho 97035) = ((1 : F) * rho 97047)

def relationRow8552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97048) * ((-1 : F) * rho 97046 + (1 : F) * rho 97047) = ((2 : F) * rho 97045)

def relationRow8553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97049) * ((2 : F) + (1 : F) * rho 97046 + (-1 : F) * rho 97047) = ((1 : F) * rho 97046 + (1 : F) * rho 97047)

def relationLc3696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 67⟩, ⟨(1 : F), 96120, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8554 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3696 rho) = ((1 : F) * rho 97050)

def relationRow8555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97050) * ((1 : F) * rho 97048 + (1 : F) * rho 97049) = ((1 : F) * rho 97051)

def relationLc3697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97049) * (relationLc3697 rho) = ((1 : F) * rho 97052)

def relationLc3698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97048) * (relationLc3698 rho) = ((1 : F) * rho 97053)

def relationRow8558 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 97052) * ((1 : F) * rho 97053) = ((1 : F) * rho 97054)

def relationRow8559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97055) * ((1 : F) + (1 : F) * rho 97054) = ((1 : F) * rho 97052 + (1 : F) * rho 97053)

def relationRow8560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97056) * ((1 : F) + (-1 : F) * rho 97054) = ((1 : F) * rho 97051 + (-1 : F) * rho 97052 + (-1 : F) * rho 97053)

def relationLc3699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 67⟩], residual := [((1 : F), 97055)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94134) * (relationLc3699 rho) = ((1 : F) * rho 97057)

def relationLc3700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 67⟩], residual := [((1 : F), 97056)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94134) * (relationLc3700 rho) = ((1 : F) * rho 97058)

def relationRow8563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97048) * ((1 : F) * rho 97049) = ((1 : F) * rho 97059)

def relationRow8564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97048) * ((1 : F) * rho 97048) = ((1 : F) * rho 97060)

def relationRow8565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97049) * ((1 : F) * rho 97049) = ((1 : F) * rho 97061)

def relationRow8566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97062) * ((-1 : F) * rho 97060 + (1 : F) * rho 97061) = ((2 : F) * rho 97059)

def relationRow8567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97063) * ((2 : F) + (1 : F) * rho 97060 + (-1 : F) * rho 97061) = ((1 : F) * rho 97060 + (1 : F) * rho 97061)

def relationLc3701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 68⟩, ⟨(1 : F), 96120, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8568 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3701 rho) = ((1 : F) * rho 97064)

def relationRow8569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97064) * ((1 : F) * rho 97062 + (1 : F) * rho 97063) = ((1 : F) * rho 97065)

def relationLc3702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97063) * (relationLc3702 rho) = ((1 : F) * rho 97066)

def relationLc3703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97062) * (relationLc3703 rho) = ((1 : F) * rho 97067)

def relationRow8572 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 97066) * ((1 : F) * rho 97067) = ((1 : F) * rho 97068)

def relationRow8573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97069) * ((1 : F) + (1 : F) * rho 97068) = ((1 : F) * rho 97066 + (1 : F) * rho 97067)

def relationRow8574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97070) * ((1 : F) + (-1 : F) * rho 97068) = ((1 : F) * rho 97065 + (-1 : F) * rho 97066 + (-1 : F) * rho 97067)

def relationLc3704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 150⟩, ⟨(-1 : F), 96119, 14, 68⟩], residual := [((1 : F), 97069)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94135) * (relationLc3704 rho) = ((1 : F) * rho 97071)

def relationLc3705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 150⟩, ⟨(-1 : F), 96120, 14, 68⟩], residual := [((1 : F), 97070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94135) * (relationLc3705 rho) = ((1 : F) * rho 97072)

def relationRow8577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97062) * ((1 : F) * rho 97063) = ((1 : F) * rho 97073)

def relationRow8578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97062) * ((1 : F) * rho 97062) = ((1 : F) * rho 97074)

def relationRow8579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97063) * ((1 : F) * rho 97063) = ((1 : F) * rho 97075)

def relationRow8580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97076) * ((-1 : F) * rho 97074 + (1 : F) * rho 97075) = ((2 : F) * rho 97073)

def relationRow8581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97077) * ((2 : F) + (1 : F) * rho 97074 + (-1 : F) * rho 97075) = ((1 : F) * rho 97074 + (1 : F) * rho 97075)

def relationLc3706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96119, 14, 69⟩, ⟨(1 : F), 96120, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8582 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3706 rho) = ((1 : F) * rho 97078)

def relationRow8583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97078) * ((1 : F) * rho 97076 + (1 : F) * rho 97077) = ((1 : F) * rho 97079)

def relationLc3707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 150⟩, ⟨(1 : F), 96119, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97077) * (relationLc3707 rho) = ((1 : F) * rho 97080)

def relationLc3708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 150⟩, ⟨(1 : F), 96120, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97076) * (relationLc3708 rho) = ((1 : F) * rho 97081)

def relationRow8586 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 97080) * ((1 : F) * rho 97081) = ((1 : F) * rho 97082)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
