import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationLc3445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114407) * (relationLc3445 rho) = ((1 : F) * rho 114410)

def relationLc3446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114406) * (relationLc3446 rho) = ((1 : F) * rho 114411)

def relationRow7857 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114410) * ((1 : F) * rho 114411) = ((1 : F) * rho 114412)

def relationRow7858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114413) * ((1 : F) + (1 : F) * rho 114412) = ((1 : F) * rho 114410 + (1 : F) * rho 114411)

def relationRow7859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114414) * ((1 : F) + (-1 : F) * rho 114412) = ((1 : F) * rho 114409 + (-1 : F) * rho 114410 + (-1 : F) * rho 114411)

def relationLc3447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 17⟩], residual := [((1 : F), 114413)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112142) * (relationLc3447 rho) = ((1 : F) * rho 114415)

def relationLc3448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 17⟩], residual := [((1 : F), 114414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112142) * (relationLc3448 rho) = ((1 : F) * rho 114416)

def relationRow7862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114406) * ((1 : F) * rho 114407) = ((1 : F) * rho 114417)

def relationRow7863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114406) * ((1 : F) * rho 114406) = ((1 : F) * rho 114418)

def relationRow7864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114407) * ((1 : F) * rho 114407) = ((1 : F) * rho 114419)

def relationRow7865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114420) * ((-1 : F) * rho 114418 + (1 : F) * rho 114419) = ((2 : F) * rho 114417)

def relationRow7866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114421) * ((2 : F) + (1 : F) * rho 114418 + (-1 : F) * rho 114419) = ((1 : F) * rho 114418 + (1 : F) * rho 114419)

def relationLc3449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 18⟩, ⟨(1 : F), 114178, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7867 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3449 rho) = ((1 : F) * rho 114422)

def relationRow7868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114422) * ((1 : F) * rho 114420 + (1 : F) * rho 114421) = ((1 : F) * rho 114423)

def relationLc3450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114421) * (relationLc3450 rho) = ((1 : F) * rho 114424)

def relationLc3451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114420) * (relationLc3451 rho) = ((1 : F) * rho 114425)

def relationRow7871 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114424) * ((1 : F) * rho 114425) = ((1 : F) * rho 114426)

def relationRow7872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114427) * ((1 : F) + (1 : F) * rho 114426) = ((1 : F) * rho 114424 + (1 : F) * rho 114425)

def relationRow7873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114428) * ((1 : F) + (-1 : F) * rho 114426) = ((1 : F) * rho 114423 + (-1 : F) * rho 114424 + (-1 : F) * rho 114425)

def relationLc3452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 18⟩], residual := [((1 : F), 114427)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112143) * (relationLc3452 rho) = ((1 : F) * rho 114429)

def relationLc3453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 18⟩], residual := [((1 : F), 114428)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112143) * (relationLc3453 rho) = ((1 : F) * rho 114430)

def relationRow7876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114420) * ((1 : F) * rho 114421) = ((1 : F) * rho 114431)

def relationRow7877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114420) * ((1 : F) * rho 114420) = ((1 : F) * rho 114432)

def relationRow7878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114421) * ((1 : F) * rho 114421) = ((1 : F) * rho 114433)

def relationRow7879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114434) * ((-1 : F) * rho 114432 + (1 : F) * rho 114433) = ((2 : F) * rho 114431)

def relationRow7880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114435) * ((2 : F) + (1 : F) * rho 114432 + (-1 : F) * rho 114433) = ((1 : F) * rho 114432 + (1 : F) * rho 114433)

def relationLc3454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 19⟩, ⟨(1 : F), 114178, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3454 rho) = ((1 : F) * rho 114436)

def relationRow7882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114436) * ((1 : F) * rho 114434 + (1 : F) * rho 114435) = ((1 : F) * rho 114437)

def relationLc3455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114435) * (relationLc3455 rho) = ((1 : F) * rho 114438)

def relationLc3456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114434) * (relationLc3456 rho) = ((1 : F) * rho 114439)

def relationRow7885 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114438) * ((1 : F) * rho 114439) = ((1 : F) * rho 114440)

def relationRow7886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114441) * ((1 : F) + (1 : F) * rho 114440) = ((1 : F) * rho 114438 + (1 : F) * rho 114439)

def relationRow7887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114442) * ((1 : F) + (-1 : F) * rho 114440) = ((1 : F) * rho 114437 + (-1 : F) * rho 114438 + (-1 : F) * rho 114439)

def relationLc3457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 19⟩], residual := [((1 : F), 114441)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112144) * (relationLc3457 rho) = ((1 : F) * rho 114443)

def relationLc3458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 19⟩], residual := [((1 : F), 114442)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112144) * (relationLc3458 rho) = ((1 : F) * rho 114444)

def relationRow7890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114434) * ((1 : F) * rho 114435) = ((1 : F) * rho 114445)

def relationRow7891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114434) * ((1 : F) * rho 114434) = ((1 : F) * rho 114446)

def relationRow7892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114435) * ((1 : F) * rho 114435) = ((1 : F) * rho 114447)

def relationRow7893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114448) * ((-1 : F) * rho 114446 + (1 : F) * rho 114447) = ((2 : F) * rho 114445)

def relationRow7894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114449) * ((2 : F) + (1 : F) * rho 114446 + (-1 : F) * rho 114447) = ((1 : F) * rho 114446 + (1 : F) * rho 114447)

def relationLc3459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 20⟩, ⟨(1 : F), 114178, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3459 rho) = ((1 : F) * rho 114450)

def relationRow7896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114450) * ((1 : F) * rho 114448 + (1 : F) * rho 114449) = ((1 : F) * rho 114451)

def relationLc3460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114449) * (relationLc3460 rho) = ((1 : F) * rho 114452)

def relationLc3461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114448) * (relationLc3461 rho) = ((1 : F) * rho 114453)

def relationRow7899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114452) * ((1 : F) * rho 114453) = ((1 : F) * rho 114454)

def relationRow7900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114455) * ((1 : F) + (1 : F) * rho 114454) = ((1 : F) * rho 114452 + (1 : F) * rho 114453)

def relationRow7901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114456) * ((1 : F) + (-1 : F) * rho 114454) = ((1 : F) * rho 114451 + (-1 : F) * rho 114452 + (-1 : F) * rho 114453)

def relationLc3462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 20⟩], residual := [((1 : F), 114455)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112145) * (relationLc3462 rho) = ((1 : F) * rho 114457)

def relationLc3463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 20⟩], residual := [((1 : F), 114456)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112145) * (relationLc3463 rho) = ((1 : F) * rho 114458)

def relationRow7904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114448) * ((1 : F) * rho 114449) = ((1 : F) * rho 114459)

def relationRow7905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114448) * ((1 : F) * rho 114448) = ((1 : F) * rho 114460)

def relationRow7906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114449) * ((1 : F) * rho 114449) = ((1 : F) * rho 114461)

def relationRow7907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114462) * ((-1 : F) * rho 114460 + (1 : F) * rho 114461) = ((2 : F) * rho 114459)

def relationRow7908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114463) * ((2 : F) + (1 : F) * rho 114460 + (-1 : F) * rho 114461) = ((1 : F) * rho 114460 + (1 : F) * rho 114461)

def relationLc3464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 21⟩, ⟨(1 : F), 114178, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3464 rho) = ((1 : F) * rho 114464)

def relationRow7910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114464) * ((1 : F) * rho 114462 + (1 : F) * rho 114463) = ((1 : F) * rho 114465)

def relationLc3465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114463) * (relationLc3465 rho) = ((1 : F) * rho 114466)

def relationLc3466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114462) * (relationLc3466 rho) = ((1 : F) * rho 114467)

def relationRow7913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114466) * ((1 : F) * rho 114467) = ((1 : F) * rho 114468)

def relationRow7914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114469) * ((1 : F) + (1 : F) * rho 114468) = ((1 : F) * rho 114466 + (1 : F) * rho 114467)

def relationRow7915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114470) * ((1 : F) + (-1 : F) * rho 114468) = ((1 : F) * rho 114465 + (-1 : F) * rho 114466 + (-1 : F) * rho 114467)

def relationLc3467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 21⟩], residual := [((1 : F), 114469)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112146) * (relationLc3467 rho) = ((1 : F) * rho 114471)

def relationLc3468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 21⟩], residual := [((1 : F), 114470)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112146) * (relationLc3468 rho) = ((1 : F) * rho 114472)

def relationRow7918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114462) * ((1 : F) * rho 114463) = ((1 : F) * rho 114473)

def relationRow7919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114462) * ((1 : F) * rho 114462) = ((1 : F) * rho 114474)

def relationRow7920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114463) * ((1 : F) * rho 114463) = ((1 : F) * rho 114475)

def relationRow7921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114476) * ((-1 : F) * rho 114474 + (1 : F) * rho 114475) = ((2 : F) * rho 114473)

def relationRow7922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114477) * ((2 : F) + (1 : F) * rho 114474 + (-1 : F) * rho 114475) = ((1 : F) * rho 114474 + (1 : F) * rho 114475)

def relationLc3469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 22⟩, ⟨(1 : F), 114178, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3469 rho) = ((1 : F) * rho 114478)

def relationRow7924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114478) * ((1 : F) * rho 114476 + (1 : F) * rho 114477) = ((1 : F) * rho 114479)

def relationLc3470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114477) * (relationLc3470 rho) = ((1 : F) * rho 114480)

def relationLc3471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114476) * (relationLc3471 rho) = ((1 : F) * rho 114481)

def relationRow7927 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114480) * ((1 : F) * rho 114481) = ((1 : F) * rho 114482)

def relationRow7928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114483) * ((1 : F) + (1 : F) * rho 114482) = ((1 : F) * rho 114480 + (1 : F) * rho 114481)

def relationRow7929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114484) * ((1 : F) + (-1 : F) * rho 114482) = ((1 : F) * rho 114479 + (-1 : F) * rho 114480 + (-1 : F) * rho 114481)

def relationLc3472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 22⟩], residual := [((1 : F), 114483)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112147) * (relationLc3472 rho) = ((1 : F) * rho 114485)

def relationLc3473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 22⟩], residual := [((1 : F), 114484)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112147) * (relationLc3473 rho) = ((1 : F) * rho 114486)

def relationRow7932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114476) * ((1 : F) * rho 114477) = ((1 : F) * rho 114487)

def relationRow7933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114476) * ((1 : F) * rho 114476) = ((1 : F) * rho 114488)

def relationRow7934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114477) * ((1 : F) * rho 114477) = ((1 : F) * rho 114489)

def relationRow7935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114490) * ((-1 : F) * rho 114488 + (1 : F) * rho 114489) = ((2 : F) * rho 114487)

def relationRow7936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114491) * ((2 : F) + (1 : F) * rho 114488 + (-1 : F) * rho 114489) = ((1 : F) * rho 114488 + (1 : F) * rho 114489)

def relationLc3474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 23⟩, ⟨(1 : F), 114178, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3474 rho) = ((1 : F) * rho 114492)

def relationRow7938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114492) * ((1 : F) * rho 114490 + (1 : F) * rho 114491) = ((1 : F) * rho 114493)

def relationLc3475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114491) * (relationLc3475 rho) = ((1 : F) * rho 114494)

def relationLc3476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114490) * (relationLc3476 rho) = ((1 : F) * rho 114495)

def relationRow7941 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114494) * ((1 : F) * rho 114495) = ((1 : F) * rho 114496)

def relationRow7942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114497) * ((1 : F) + (1 : F) * rho 114496) = ((1 : F) * rho 114494 + (1 : F) * rho 114495)

def relationRow7943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114498) * ((1 : F) + (-1 : F) * rho 114496) = ((1 : F) * rho 114493 + (-1 : F) * rho 114494 + (-1 : F) * rho 114495)

def relationLc3477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 23⟩], residual := [((1 : F), 114497)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112148) * (relationLc3477 rho) = ((1 : F) * rho 114499)

def relationLc3478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 23⟩], residual := [((1 : F), 114498)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112148) * (relationLc3478 rho) = ((1 : F) * rho 114500)

def relationRow7946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114490) * ((1 : F) * rho 114491) = ((1 : F) * rho 114501)

def relationRow7947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114490) * ((1 : F) * rho 114490) = ((1 : F) * rho 114502)

def relationRow7948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114491) * ((1 : F) * rho 114491) = ((1 : F) * rho 114503)

def relationRow7949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114504) * ((-1 : F) * rho 114502 + (1 : F) * rho 114503) = ((2 : F) * rho 114501)

def relationRow7950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114505) * ((2 : F) + (1 : F) * rho 114502 + (-1 : F) * rho 114503) = ((1 : F) * rho 114502 + (1 : F) * rho 114503)

def relationLc3479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 24⟩, ⟨(1 : F), 114178, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3479 rho) = ((1 : F) * rho 114506)

def relationRow7952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114506) * ((1 : F) * rho 114504 + (1 : F) * rho 114505) = ((1 : F) * rho 114507)

def relationLc3480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114505) * (relationLc3480 rho) = ((1 : F) * rho 114508)

def relationLc3481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114504) * (relationLc3481 rho) = ((1 : F) * rho 114509)

def relationRow7955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114508) * ((1 : F) * rho 114509) = ((1 : F) * rho 114510)

def relationRow7956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114511) * ((1 : F) + (1 : F) * rho 114510) = ((1 : F) * rho 114508 + (1 : F) * rho 114509)

def relationRow7957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114512) * ((1 : F) + (-1 : F) * rho 114510) = ((1 : F) * rho 114507 + (-1 : F) * rho 114508 + (-1 : F) * rho 114509)

def relationLc3482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 24⟩], residual := [((1 : F), 114511)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112149) * (relationLc3482 rho) = ((1 : F) * rho 114513)

def relationLc3483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 24⟩], residual := [((1 : F), 114512)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112149) * (relationLc3483 rho) = ((1 : F) * rho 114514)

def relationRow7960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114504) * ((1 : F) * rho 114505) = ((1 : F) * rho 114515)

def relationRow7961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114504) * ((1 : F) * rho 114504) = ((1 : F) * rho 114516)

def relationRow7962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114505) * ((1 : F) * rho 114505) = ((1 : F) * rho 114517)

def relationRow7963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114518) * ((-1 : F) * rho 114516 + (1 : F) * rho 114517) = ((2 : F) * rho 114515)

def relationRow7964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114519) * ((2 : F) + (1 : F) * rho 114516 + (-1 : F) * rho 114517) = ((1 : F) * rho 114516 + (1 : F) * rho 114517)

def relationLc3484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 25⟩, ⟨(1 : F), 114178, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3484 rho) = ((1 : F) * rho 114520)

def relationRow7966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114520) * ((1 : F) * rho 114518 + (1 : F) * rho 114519) = ((1 : F) * rho 114521)

def relationLc3485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114519) * (relationLc3485 rho) = ((1 : F) * rho 114522)

def relationLc3486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114518) * (relationLc3486 rho) = ((1 : F) * rho 114523)

def relationRow7969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114522) * ((1 : F) * rho 114523) = ((1 : F) * rho 114524)

def relationRow7970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114525) * ((1 : F) + (1 : F) * rho 114524) = ((1 : F) * rho 114522 + (1 : F) * rho 114523)

def relationRow7971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114526) * ((1 : F) + (-1 : F) * rho 114524) = ((1 : F) * rho 114521 + (-1 : F) * rho 114522 + (-1 : F) * rho 114523)

def relationLc3487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 25⟩], residual := [((1 : F), 114525)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112150) * (relationLc3487 rho) = ((1 : F) * rho 114527)

def relationLc3488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 25⟩], residual := [((1 : F), 114526)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112150) * (relationLc3488 rho) = ((1 : F) * rho 114528)

def relationRow7974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114518) * ((1 : F) * rho 114519) = ((1 : F) * rho 114529)

def relationRow7975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114518) * ((1 : F) * rho 114518) = ((1 : F) * rho 114530)

def relationRow7976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114519) * ((1 : F) * rho 114519) = ((1 : F) * rho 114531)

def relationRow7977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114532) * ((-1 : F) * rho 114530 + (1 : F) * rho 114531) = ((2 : F) * rho 114529)

def relationRow7978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114533) * ((2 : F) + (1 : F) * rho 114530 + (-1 : F) * rho 114531) = ((1 : F) * rho 114530 + (1 : F) * rho 114531)

def relationLc3489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 26⟩, ⟨(1 : F), 114178, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3489 rho) = ((1 : F) * rho 114534)

def relationRow7980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114534) * ((1 : F) * rho 114532 + (1 : F) * rho 114533) = ((1 : F) * rho 114535)

def relationLc3490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114533) * (relationLc3490 rho) = ((1 : F) * rho 114536)

def relationLc3491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114532) * (relationLc3491 rho) = ((1 : F) * rho 114537)

def relationRow7983 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114536) * ((1 : F) * rho 114537) = ((1 : F) * rho 114538)

def relationRow7984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114539) * ((1 : F) + (1 : F) * rho 114538) = ((1 : F) * rho 114536 + (1 : F) * rho 114537)

def relationRow7985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114540) * ((1 : F) + (-1 : F) * rho 114538) = ((1 : F) * rho 114535 + (-1 : F) * rho 114536 + (-1 : F) * rho 114537)

def relationLc3492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 26⟩], residual := [((1 : F), 114539)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112151) * (relationLc3492 rho) = ((1 : F) * rho 114541)

def relationLc3493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 26⟩], residual := [((1 : F), 114540)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112151) * (relationLc3493 rho) = ((1 : F) * rho 114542)

def relationRow7988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114532) * ((1 : F) * rho 114533) = ((1 : F) * rho 114543)

def relationRow7989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114532) * ((1 : F) * rho 114532) = ((1 : F) * rho 114544)

def relationRow7990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114533) * ((1 : F) * rho 114533) = ((1 : F) * rho 114545)

def relationRow7991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114546) * ((-1 : F) * rho 114544 + (1 : F) * rho 114545) = ((2 : F) * rho 114543)

def relationRow7992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114547) * ((2 : F) + (1 : F) * rho 114544 + (-1 : F) * rho 114545) = ((1 : F) * rho 114544 + (1 : F) * rho 114545)

def relationLc3494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 27⟩, ⟨(1 : F), 114178, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7993 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3494 rho) = ((1 : F) * rho 114548)

def relationRow7994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114548) * ((1 : F) * rho 114546 + (1 : F) * rho 114547) = ((1 : F) * rho 114549)

def relationLc3495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114547) * (relationLc3495 rho) = ((1 : F) * rho 114550)

def relationLc3496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114546) * (relationLc3496 rho) = ((1 : F) * rho 114551)

def relationRow7997 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114550) * ((1 : F) * rho 114551) = ((1 : F) * rho 114552)

def relationRow7998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114553) * ((1 : F) + (1 : F) * rho 114552) = ((1 : F) * rho 114550 + (1 : F) * rho 114551)

def relationRow7999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114554) * ((1 : F) + (-1 : F) * rho 114552) = ((1 : F) * rho 114549 + (-1 : F) * rho 114550 + (-1 : F) * rho 114551)

def relationLc3497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 27⟩], residual := [((1 : F), 114553)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112152) * (relationLc3497 rho) = ((1 : F) * rho 114555)

def relationLc3498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 27⟩], residual := [((1 : F), 114554)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112152) * (relationLc3498 rho) = ((1 : F) * rho 114556)

def relationRow8002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114546) * ((1 : F) * rho 114547) = ((1 : F) * rho 114557)

def relationRow8003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114546) * ((1 : F) * rho 114546) = ((1 : F) * rho 114558)

def relationRow8004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114547) * ((1 : F) * rho 114547) = ((1 : F) * rho 114559)

def relationRow8005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114560) * ((-1 : F) * rho 114558 + (1 : F) * rho 114559) = ((2 : F) * rho 114557)

def relationRow8006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114561) * ((2 : F) + (1 : F) * rho 114558 + (-1 : F) * rho 114559) = ((1 : F) * rho 114558 + (1 : F) * rho 114559)

def relationLc3499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 28⟩, ⟨(1 : F), 114178, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3499 rho) = ((1 : F) * rho 114562)

def relationRow8008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114562) * ((1 : F) * rho 114560 + (1 : F) * rho 114561) = ((1 : F) * rho 114563)

def relationLc3500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114561) * (relationLc3500 rho) = ((1 : F) * rho 114564)

def relationLc3501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114560) * (relationLc3501 rho) = ((1 : F) * rho 114565)

def relationRow8011 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114564) * ((1 : F) * rho 114565) = ((1 : F) * rho 114566)

def relationRow8012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114567) * ((1 : F) + (1 : F) * rho 114566) = ((1 : F) * rho 114564 + (1 : F) * rho 114565)

def relationRow8013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114568) * ((1 : F) + (-1 : F) * rho 114566) = ((1 : F) * rho 114563 + (-1 : F) * rho 114564 + (-1 : F) * rho 114565)

def relationLc3502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 28⟩], residual := [((1 : F), 114567)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112153) * (relationLc3502 rho) = ((1 : F) * rho 114569)

def relationLc3503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 28⟩], residual := [((1 : F), 114568)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112153) * (relationLc3503 rho) = ((1 : F) * rho 114570)

def relationRow8016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114560) * ((1 : F) * rho 114561) = ((1 : F) * rho 114571)

def relationRow8017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114560) * ((1 : F) * rho 114560) = ((1 : F) * rho 114572)

def relationRow8018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114561) * ((1 : F) * rho 114561) = ((1 : F) * rho 114573)

def relationRow8019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114574) * ((-1 : F) * rho 114572 + (1 : F) * rho 114573) = ((2 : F) * rho 114571)

def relationRow8020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114575) * ((2 : F) + (1 : F) * rho 114572 + (-1 : F) * rho 114573) = ((1 : F) * rho 114572 + (1 : F) * rho 114573)

def relationLc3504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 29⟩, ⟨(1 : F), 114178, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3504 rho) = ((1 : F) * rho 114576)

def relationRow8022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114576) * ((1 : F) * rho 114574 + (1 : F) * rho 114575) = ((1 : F) * rho 114577)

def relationLc3505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114575) * (relationLc3505 rho) = ((1 : F) * rho 114578)

def relationLc3506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114574) * (relationLc3506 rho) = ((1 : F) * rho 114579)

def relationRow8025 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114578) * ((1 : F) * rho 114579) = ((1 : F) * rho 114580)

def relationRow8026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114581) * ((1 : F) + (1 : F) * rho 114580) = ((1 : F) * rho 114578 + (1 : F) * rho 114579)

def relationRow8027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114582) * ((1 : F) + (-1 : F) * rho 114580) = ((1 : F) * rho 114577 + (-1 : F) * rho 114578 + (-1 : F) * rho 114579)

def relationLc3507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 29⟩], residual := [((1 : F), 114581)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112154) * (relationLc3507 rho) = ((1 : F) * rho 114583)

def relationLc3508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 29⟩], residual := [((1 : F), 114582)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112154) * (relationLc3508 rho) = ((1 : F) * rho 114584)

def relationRow8030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114574) * ((1 : F) * rho 114575) = ((1 : F) * rho 114585)

def relationRow8031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114574) * ((1 : F) * rho 114574) = ((1 : F) * rho 114586)

def relationRow8032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114575) * ((1 : F) * rho 114575) = ((1 : F) * rho 114587)

def relationRow8033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114588) * ((-1 : F) * rho 114586 + (1 : F) * rho 114587) = ((2 : F) * rho 114585)

def relationRow8034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114589) * ((2 : F) + (1 : F) * rho 114586 + (-1 : F) * rho 114587) = ((1 : F) * rho 114586 + (1 : F) * rho 114587)

def relationLc3509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 30⟩, ⟨(1 : F), 114178, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8035 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3509 rho) = ((1 : F) * rho 114590)

def relationRow8036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114590) * ((1 : F) * rho 114588 + (1 : F) * rho 114589) = ((1 : F) * rho 114591)

def relationLc3510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114589) * (relationLc3510 rho) = ((1 : F) * rho 114592)

def relationLc3511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114588) * (relationLc3511 rho) = ((1 : F) * rho 114593)

def relationRow8039 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114592) * ((1 : F) * rho 114593) = ((1 : F) * rho 114594)

def relationRow8040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114595) * ((1 : F) + (1 : F) * rho 114594) = ((1 : F) * rho 114592 + (1 : F) * rho 114593)

def relationRow8041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114596) * ((1 : F) + (-1 : F) * rho 114594) = ((1 : F) * rho 114591 + (-1 : F) * rho 114592 + (-1 : F) * rho 114593)

def relationLc3512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 30⟩], residual := [((1 : F), 114595)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112155) * (relationLc3512 rho) = ((1 : F) * rho 114597)

def relationLc3513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 30⟩], residual := [((1 : F), 114596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112155) * (relationLc3513 rho) = ((1 : F) * rho 114598)

def relationRow8044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114588) * ((1 : F) * rho 114589) = ((1 : F) * rho 114599)

def relationRow8045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114588) * ((1 : F) * rho 114588) = ((1 : F) * rho 114600)

def relationRow8046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114589) * ((1 : F) * rho 114589) = ((1 : F) * rho 114601)

def relationRow8047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114602) * ((-1 : F) * rho 114600 + (1 : F) * rho 114601) = ((2 : F) * rho 114599)

def relationRow8048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114603) * ((2 : F) + (1 : F) * rho 114600 + (-1 : F) * rho 114601) = ((1 : F) * rho 114600 + (1 : F) * rho 114601)

def relationLc3514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 31⟩, ⟨(1 : F), 114178, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3514 rho) = ((1 : F) * rho 114604)

def relationRow8050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114604) * ((1 : F) * rho 114602 + (1 : F) * rho 114603) = ((1 : F) * rho 114605)

def relationLc3515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114603) * (relationLc3515 rho) = ((1 : F) * rho 114606)

def relationLc3516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114602) * (relationLc3516 rho) = ((1 : F) * rho 114607)

def relationRow8053 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114606) * ((1 : F) * rho 114607) = ((1 : F) * rho 114608)

def relationRow8054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114609) * ((1 : F) + (1 : F) * rho 114608) = ((1 : F) * rho 114606 + (1 : F) * rho 114607)

def relationRow8055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114610) * ((1 : F) + (-1 : F) * rho 114608) = ((1 : F) * rho 114605 + (-1 : F) * rho 114606 + (-1 : F) * rho 114607)

def relationLc3517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 31⟩], residual := [((1 : F), 114609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112156) * (relationLc3517 rho) = ((1 : F) * rho 114611)

def relationLc3518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 31⟩], residual := [((1 : F), 114610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112156) * (relationLc3518 rho) = ((1 : F) * rho 114612)

def relationRow8058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114602) * ((1 : F) * rho 114603) = ((1 : F) * rho 114613)

def relationRow8059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114602) * ((1 : F) * rho 114602) = ((1 : F) * rho 114614)

def relationRow8060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114603) * ((1 : F) * rho 114603) = ((1 : F) * rho 114615)

def relationRow8061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114616) * ((-1 : F) * rho 114614 + (1 : F) * rho 114615) = ((2 : F) * rho 114613)

def relationRow8062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114617) * ((2 : F) + (1 : F) * rho 114614 + (-1 : F) * rho 114615) = ((1 : F) * rho 114614 + (1 : F) * rho 114615)

def relationLc3519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 32⟩, ⟨(1 : F), 114178, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3519 rho) = ((1 : F) * rho 114618)

def relationRow8064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114618) * ((1 : F) * rho 114616 + (1 : F) * rho 114617) = ((1 : F) * rho 114619)

def relationLc3520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114617) * (relationLc3520 rho) = ((1 : F) * rho 114620)

def relationLc3521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114616) * (relationLc3521 rho) = ((1 : F) * rho 114621)

def relationRow8067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114620) * ((1 : F) * rho 114621) = ((1 : F) * rho 114622)

def relationRow8068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114623) * ((1 : F) + (1 : F) * rho 114622) = ((1 : F) * rho 114620 + (1 : F) * rho 114621)

def relationRow8069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114624) * ((1 : F) + (-1 : F) * rho 114622) = ((1 : F) * rho 114619 + (-1 : F) * rho 114620 + (-1 : F) * rho 114621)

def relationLc3522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 32⟩], residual := [((1 : F), 114623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112157) * (relationLc3522 rho) = ((1 : F) * rho 114625)

def relationLc3523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 32⟩], residual := [((1 : F), 114624)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112157) * (relationLc3523 rho) = ((1 : F) * rho 114626)

def relationRow8072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114616) * ((1 : F) * rho 114617) = ((1 : F) * rho 114627)

def relationRow8073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114616) * ((1 : F) * rho 114616) = ((1 : F) * rho 114628)

def relationRow8074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114617) * ((1 : F) * rho 114617) = ((1 : F) * rho 114629)

def relationRow8075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114630) * ((-1 : F) * rho 114628 + (1 : F) * rho 114629) = ((2 : F) * rho 114627)

def relationRow8076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114631) * ((2 : F) + (1 : F) * rho 114628 + (-1 : F) * rho 114629) = ((1 : F) * rho 114628 + (1 : F) * rho 114629)

def relationLc3524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 33⟩, ⟨(1 : F), 114178, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8077 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3524 rho) = ((1 : F) * rho 114632)

def relationRow8078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114632) * ((1 : F) * rho 114630 + (1 : F) * rho 114631) = ((1 : F) * rho 114633)

def relationLc3525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114631) * (relationLc3525 rho) = ((1 : F) * rho 114634)

def relationLc3526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114630) * (relationLc3526 rho) = ((1 : F) * rho 114635)

def relationRow8081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114634) * ((1 : F) * rho 114635) = ((1 : F) * rho 114636)

def relationRow8082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114637) * ((1 : F) + (1 : F) * rho 114636) = ((1 : F) * rho 114634 + (1 : F) * rho 114635)

def relationRow8083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114638) * ((1 : F) + (-1 : F) * rho 114636) = ((1 : F) * rho 114633 + (-1 : F) * rho 114634 + (-1 : F) * rho 114635)

def relationLc3527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 33⟩], residual := [((1 : F), 114637)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112158) * (relationLc3527 rho) = ((1 : F) * rho 114639)

def relationLc3528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 33⟩], residual := [((1 : F), 114638)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112158) * (relationLc3528 rho) = ((1 : F) * rho 114640)

def relationRow8086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114630) * ((1 : F) * rho 114631) = ((1 : F) * rho 114641)

def relationRow8087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114630) * ((1 : F) * rho 114630) = ((1 : F) * rho 114642)

def relationRow8088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114631) * ((1 : F) * rho 114631) = ((1 : F) * rho 114643)

def relationRow8089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114644) * ((-1 : F) * rho 114642 + (1 : F) * rho 114643) = ((2 : F) * rho 114641)

def relationRow8090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114645) * ((2 : F) + (1 : F) * rho 114642 + (-1 : F) * rho 114643) = ((1 : F) * rho 114642 + (1 : F) * rho 114643)

def relationLc3529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 34⟩, ⟨(1 : F), 114178, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8091 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3529 rho) = ((1 : F) * rho 114646)

def relationRow8092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114646) * ((1 : F) * rho 114644 + (1 : F) * rho 114645) = ((1 : F) * rho 114647)

def relationLc3530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114645) * (relationLc3530 rho) = ((1 : F) * rho 114648)

def relationLc3531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114644) * (relationLc3531 rho) = ((1 : F) * rho 114649)

def relationRow8095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114648) * ((1 : F) * rho 114649) = ((1 : F) * rho 114650)

def relationRow8096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114651) * ((1 : F) + (1 : F) * rho 114650) = ((1 : F) * rho 114648 + (1 : F) * rho 114649)

def relationRow8097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114652) * ((1 : F) + (-1 : F) * rho 114650) = ((1 : F) * rho 114647 + (-1 : F) * rho 114648 + (-1 : F) * rho 114649)

def relationLc3532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 34⟩], residual := [((1 : F), 114651)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112159) * (relationLc3532 rho) = ((1 : F) * rho 114653)

def relationLc3533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 34⟩], residual := [((1 : F), 114652)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112159) * (relationLc3533 rho) = ((1 : F) * rho 114654)

def relationRow8100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114644) * ((1 : F) * rho 114645) = ((1 : F) * rho 114655)

def relationRow8101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114644) * ((1 : F) * rho 114644) = ((1 : F) * rho 114656)

def relationRow8102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114645) * ((1 : F) * rho 114645) = ((1 : F) * rho 114657)

def relationRow8103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114658) * ((-1 : F) * rho 114656 + (1 : F) * rho 114657) = ((2 : F) * rho 114655)

def relationRow8104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114659) * ((2 : F) + (1 : F) * rho 114656 + (-1 : F) * rho 114657) = ((1 : F) * rho 114656 + (1 : F) * rho 114657)

def relationLc3534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 35⟩, ⟨(1 : F), 114178, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8105 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3534 rho) = ((1 : F) * rho 114660)

def relationRow8106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114660) * ((1 : F) * rho 114658 + (1 : F) * rho 114659) = ((1 : F) * rho 114661)

def relationLc3535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114659) * (relationLc3535 rho) = ((1 : F) * rho 114662)

def relationLc3536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114658) * (relationLc3536 rho) = ((1 : F) * rho 114663)

def relationRow8109 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114662) * ((1 : F) * rho 114663) = ((1 : F) * rho 114664)

def relationRow8110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114665) * ((1 : F) + (1 : F) * rho 114664) = ((1 : F) * rho 114662 + (1 : F) * rho 114663)

def relationRow8111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114666) * ((1 : F) + (-1 : F) * rho 114664) = ((1 : F) * rho 114661 + (-1 : F) * rho 114662 + (-1 : F) * rho 114663)

def relationLc3537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 35⟩], residual := [((1 : F), 114665)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112160) * (relationLc3537 rho) = ((1 : F) * rho 114667)

def relationLc3538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 35⟩], residual := [((1 : F), 114666)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112160) * (relationLc3538 rho) = ((1 : F) * rho 114668)

def relationRow8114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114658) * ((1 : F) * rho 114659) = ((1 : F) * rho 114669)

def relationRow8115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114658) * ((1 : F) * rho 114658) = ((1 : F) * rho 114670)

def relationRow8116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114659) * ((1 : F) * rho 114659) = ((1 : F) * rho 114671)

def relationRow8117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114672) * ((-1 : F) * rho 114670 + (1 : F) * rho 114671) = ((2 : F) * rho 114669)

def relationRow8118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114673) * ((2 : F) + (1 : F) * rho 114670 + (-1 : F) * rho 114671) = ((1 : F) * rho 114670 + (1 : F) * rho 114671)

def relationLc3539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 36⟩, ⟨(1 : F), 114178, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8119 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3539 rho) = ((1 : F) * rho 114674)

def relationRow8120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114674) * ((1 : F) * rho 114672 + (1 : F) * rho 114673) = ((1 : F) * rho 114675)

def relationLc3540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114673) * (relationLc3540 rho) = ((1 : F) * rho 114676)

def relationLc3541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114672) * (relationLc3541 rho) = ((1 : F) * rho 114677)

def relationRow8123 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114676) * ((1 : F) * rho 114677) = ((1 : F) * rho 114678)

def relationRow8124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114679) * ((1 : F) + (1 : F) * rho 114678) = ((1 : F) * rho 114676 + (1 : F) * rho 114677)

def relationRow8125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114680) * ((1 : F) + (-1 : F) * rho 114678) = ((1 : F) * rho 114675 + (-1 : F) * rho 114676 + (-1 : F) * rho 114677)

def relationLc3542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 36⟩], residual := [((1 : F), 114679)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112161) * (relationLc3542 rho) = ((1 : F) * rho 114681)

def relationLc3543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 36⟩], residual := [((1 : F), 114680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112161) * (relationLc3543 rho) = ((1 : F) * rho 114682)

def relationRow8128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114672) * ((1 : F) * rho 114673) = ((1 : F) * rho 114683)

def relationRow8129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114672) * ((1 : F) * rho 114672) = ((1 : F) * rho 114684)

def relationRow8130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114673) * ((1 : F) * rho 114673) = ((1 : F) * rho 114685)

def relationRow8131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114686) * ((-1 : F) * rho 114684 + (1 : F) * rho 114685) = ((2 : F) * rho 114683)

def relationRow8132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114687) * ((2 : F) + (1 : F) * rho 114684 + (-1 : F) * rho 114685) = ((1 : F) * rho 114684 + (1 : F) * rho 114685)

def relationLc3544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 37⟩, ⟨(1 : F), 114178, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3544 rho) = ((1 : F) * rho 114688)

def relationRow8134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114688) * ((1 : F) * rho 114686 + (1 : F) * rho 114687) = ((1 : F) * rho 114689)

def relationLc3545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114687) * (relationLc3545 rho) = ((1 : F) * rho 114690)

def relationLc3546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114686) * (relationLc3546 rho) = ((1 : F) * rho 114691)

def relationRow8137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114690) * ((1 : F) * rho 114691) = ((1 : F) * rho 114692)

def relationRow8138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114693) * ((1 : F) + (1 : F) * rho 114692) = ((1 : F) * rho 114690 + (1 : F) * rho 114691)

def relationRow8139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114694) * ((1 : F) + (-1 : F) * rho 114692) = ((1 : F) * rho 114689 + (-1 : F) * rho 114690 + (-1 : F) * rho 114691)

def relationLc3547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 37⟩], residual := [((1 : F), 114693)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112162) * (relationLc3547 rho) = ((1 : F) * rho 114695)

def relationLc3548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 37⟩], residual := [((1 : F), 114694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112162) * (relationLc3548 rho) = ((1 : F) * rho 114696)

def relationRow8142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114686) * ((1 : F) * rho 114687) = ((1 : F) * rho 114697)

def relationRow8143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114686) * ((1 : F) * rho 114686) = ((1 : F) * rho 114698)

def relationRow8144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114687) * ((1 : F) * rho 114687) = ((1 : F) * rho 114699)

def relationRow8145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114700) * ((-1 : F) * rho 114698 + (1 : F) * rho 114699) = ((2 : F) * rho 114697)

def relationRow8146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114701) * ((2 : F) + (1 : F) * rho 114698 + (-1 : F) * rho 114699) = ((1 : F) * rho 114698 + (1 : F) * rho 114699)

def relationLc3549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 38⟩, ⟨(1 : F), 114178, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8147 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3549 rho) = ((1 : F) * rho 114702)

def relationRow8148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114702) * ((1 : F) * rho 114700 + (1 : F) * rho 114701) = ((1 : F) * rho 114703)

def relationLc3550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114701) * (relationLc3550 rho) = ((1 : F) * rho 114704)

def relationLc3551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114700) * (relationLc3551 rho) = ((1 : F) * rho 114705)

def relationRow8151 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114704) * ((1 : F) * rho 114705) = ((1 : F) * rho 114706)

def relationRow8152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114707) * ((1 : F) + (1 : F) * rho 114706) = ((1 : F) * rho 114704 + (1 : F) * rho 114705)

def relationRow8153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114708) * ((1 : F) + (-1 : F) * rho 114706) = ((1 : F) * rho 114703 + (-1 : F) * rho 114704 + (-1 : F) * rho 114705)

def relationLc3552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 38⟩], residual := [((1 : F), 114707)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112163) * (relationLc3552 rho) = ((1 : F) * rho 114709)

def relationLc3553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 38⟩], residual := [((1 : F), 114708)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112163) * (relationLc3553 rho) = ((1 : F) * rho 114710)

def relationRow8156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114700) * ((1 : F) * rho 114701) = ((1 : F) * rho 114711)

def relationRow8157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114700) * ((1 : F) * rho 114700) = ((1 : F) * rho 114712)

def relationRow8158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114701) * ((1 : F) * rho 114701) = ((1 : F) * rho 114713)

def relationRow8159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114714) * ((-1 : F) * rho 114712 + (1 : F) * rho 114713) = ((2 : F) * rho 114711)

def relationRow8160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114715) * ((2 : F) + (1 : F) * rho 114712 + (-1 : F) * rho 114713) = ((1 : F) * rho 114712 + (1 : F) * rho 114713)

def relationLc3554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 39⟩, ⟨(1 : F), 114178, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3554 rho) = ((1 : F) * rho 114716)

def relationRow8162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114716) * ((1 : F) * rho 114714 + (1 : F) * rho 114715) = ((1 : F) * rho 114717)

def relationLc3555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114715) * (relationLc3555 rho) = ((1 : F) * rho 114718)

def relationLc3556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114714) * (relationLc3556 rho) = ((1 : F) * rho 114719)

def relationRow8165 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114718) * ((1 : F) * rho 114719) = ((1 : F) * rho 114720)

def relationRow8166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114721) * ((1 : F) + (1 : F) * rho 114720) = ((1 : F) * rho 114718 + (1 : F) * rho 114719)

def relationRow8167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114722) * ((1 : F) + (-1 : F) * rho 114720) = ((1 : F) * rho 114717 + (-1 : F) * rho 114718 + (-1 : F) * rho 114719)

def relationLc3557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 39⟩], residual := [((1 : F), 114721)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112164) * (relationLc3557 rho) = ((1 : F) * rho 114723)

def relationLc3558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 39⟩], residual := [((1 : F), 114722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112164) * (relationLc3558 rho) = ((1 : F) * rho 114724)

def relationRow8170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114714) * ((1 : F) * rho 114715) = ((1 : F) * rho 114725)

def relationRow8171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114714) * ((1 : F) * rho 114714) = ((1 : F) * rho 114726)

def relationRow8172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114715) * ((1 : F) * rho 114715) = ((1 : F) * rho 114727)

def relationRow8173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114728) * ((-1 : F) * rho 114726 + (1 : F) * rho 114727) = ((2 : F) * rho 114725)

def relationRow8174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114729) * ((2 : F) + (1 : F) * rho 114726 + (-1 : F) * rho 114727) = ((1 : F) * rho 114726 + (1 : F) * rho 114727)

def relationLc3559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 40⟩, ⟨(1 : F), 114178, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8175 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3559 rho) = ((1 : F) * rho 114730)

def relationRow8176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114730) * ((1 : F) * rho 114728 + (1 : F) * rho 114729) = ((1 : F) * rho 114731)

def relationLc3560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114729) * (relationLc3560 rho) = ((1 : F) * rho 114732)

def relationLc3561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114728) * (relationLc3561 rho) = ((1 : F) * rho 114733)

def relationRow8179 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114732) * ((1 : F) * rho 114733) = ((1 : F) * rho 114734)

def relationRow8180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114735) * ((1 : F) + (1 : F) * rho 114734) = ((1 : F) * rho 114732 + (1 : F) * rho 114733)

def relationRow8181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114736) * ((1 : F) + (-1 : F) * rho 114734) = ((1 : F) * rho 114731 + (-1 : F) * rho 114732 + (-1 : F) * rho 114733)

def relationLc3562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 40⟩], residual := [((1 : F), 114735)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112165) * (relationLc3562 rho) = ((1 : F) * rho 114737)

def relationLc3563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 40⟩], residual := [((1 : F), 114736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112165) * (relationLc3563 rho) = ((1 : F) * rho 114738)

def relationRow8184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114728) * ((1 : F) * rho 114729) = ((1 : F) * rho 114739)

def relationRow8185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114728) * ((1 : F) * rho 114728) = ((1 : F) * rho 114740)

def relationRow8186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114729) * ((1 : F) * rho 114729) = ((1 : F) * rho 114741)

def relationRow8187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114742) * ((-1 : F) * rho 114740 + (1 : F) * rho 114741) = ((2 : F) * rho 114739)

def relationRow8188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114743) * ((2 : F) + (1 : F) * rho 114740 + (-1 : F) * rho 114741) = ((1 : F) * rho 114740 + (1 : F) * rho 114741)

def relationLc3564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 41⟩, ⟨(1 : F), 114178, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8189 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3564 rho) = ((1 : F) * rho 114744)

def relationRow8190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114744) * ((1 : F) * rho 114742 + (1 : F) * rho 114743) = ((1 : F) * rho 114745)

def relationLc3565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114743) * (relationLc3565 rho) = ((1 : F) * rho 114746)

def relationLc3566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114742) * (relationLc3566 rho) = ((1 : F) * rho 114747)

def relationRow8193 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114746) * ((1 : F) * rho 114747) = ((1 : F) * rho 114748)

def relationRow8194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114749) * ((1 : F) + (1 : F) * rho 114748) = ((1 : F) * rho 114746 + (1 : F) * rho 114747)

def relationRow8195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114750) * ((1 : F) + (-1 : F) * rho 114748) = ((1 : F) * rho 114745 + (-1 : F) * rho 114746 + (-1 : F) * rho 114747)

def relationLc3567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 41⟩], residual := [((1 : F), 114749)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112166) * (relationLc3567 rho) = ((1 : F) * rho 114751)

def relationLc3568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 41⟩], residual := [((1 : F), 114750)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112166) * (relationLc3568 rho) = ((1 : F) * rho 114752)

def relationRow8198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114742) * ((1 : F) * rho 114743) = ((1 : F) * rho 114753)

def relationRow8199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114742) * ((1 : F) * rho 114742) = ((1 : F) * rho 114754)

def relationRow8200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114743) * ((1 : F) * rho 114743) = ((1 : F) * rho 114755)

def relationRow8201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114756) * ((-1 : F) * rho 114754 + (1 : F) * rho 114755) = ((2 : F) * rho 114753)

def relationRow8202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114757) * ((2 : F) + (1 : F) * rho 114754 + (-1 : F) * rho 114755) = ((1 : F) * rho 114754 + (1 : F) * rho 114755)

def relationLc3569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 42⟩, ⟨(1 : F), 114178, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8203 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3569 rho) = ((1 : F) * rho 114758)

def relationRow8204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114758) * ((1 : F) * rho 114756 + (1 : F) * rho 114757) = ((1 : F) * rho 114759)

def relationLc3570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114757) * (relationLc3570 rho) = ((1 : F) * rho 114760)

def relationLc3571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114756) * (relationLc3571 rho) = ((1 : F) * rho 114761)

def relationRow8207 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114760) * ((1 : F) * rho 114761) = ((1 : F) * rho 114762)

def relationRow8208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114763) * ((1 : F) + (1 : F) * rho 114762) = ((1 : F) * rho 114760 + (1 : F) * rho 114761)

def relationRow8209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114764) * ((1 : F) + (-1 : F) * rho 114762) = ((1 : F) * rho 114759 + (-1 : F) * rho 114760 + (-1 : F) * rho 114761)

def relationLc3572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 42⟩], residual := [((1 : F), 114763)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112167) * (relationLc3572 rho) = ((1 : F) * rho 114765)

def relationLc3573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 42⟩], residual := [((1 : F), 114764)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112167) * (relationLc3573 rho) = ((1 : F) * rho 114766)

def relationRow8212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114756) * ((1 : F) * rho 114757) = ((1 : F) * rho 114767)

def relationRow8213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114756) * ((1 : F) * rho 114756) = ((1 : F) * rho 114768)

def relationRow8214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114757) * ((1 : F) * rho 114757) = ((1 : F) * rho 114769)

def relationRow8215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114770) * ((-1 : F) * rho 114768 + (1 : F) * rho 114769) = ((2 : F) * rho 114767)

def relationRow8216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114771) * ((2 : F) + (1 : F) * rho 114768 + (-1 : F) * rho 114769) = ((1 : F) * rho 114768 + (1 : F) * rho 114769)

def relationLc3574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 43⟩, ⟨(1 : F), 114178, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8217 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3574 rho) = ((1 : F) * rho 114772)

def relationRow8218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114772) * ((1 : F) * rho 114770 + (1 : F) * rho 114771) = ((1 : F) * rho 114773)

def relationLc3575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114771) * (relationLc3575 rho) = ((1 : F) * rho 114774)

def relationLc3576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114770) * (relationLc3576 rho) = ((1 : F) * rho 114775)

def relationRow8221 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114774) * ((1 : F) * rho 114775) = ((1 : F) * rho 114776)

def relationRow8222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114777) * ((1 : F) + (1 : F) * rho 114776) = ((1 : F) * rho 114774 + (1 : F) * rho 114775)

def relationRow8223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114778) * ((1 : F) + (-1 : F) * rho 114776) = ((1 : F) * rho 114773 + (-1 : F) * rho 114774 + (-1 : F) * rho 114775)

def relationLc3577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 43⟩], residual := [((1 : F), 114777)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112168) * (relationLc3577 rho) = ((1 : F) * rho 114779)

def relationLc3578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 43⟩], residual := [((1 : F), 114778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112168) * (relationLc3578 rho) = ((1 : F) * rho 114780)

def relationRow8226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114770) * ((1 : F) * rho 114771) = ((1 : F) * rho 114781)

def relationRow8227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114770) * ((1 : F) * rho 114770) = ((1 : F) * rho 114782)

def relationRow8228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114771) * ((1 : F) * rho 114771) = ((1 : F) * rho 114783)

def relationRow8229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114784) * ((-1 : F) * rho 114782 + (1 : F) * rho 114783) = ((2 : F) * rho 114781)

def relationRow8230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114785) * ((2 : F) + (1 : F) * rho 114782 + (-1 : F) * rho 114783) = ((1 : F) * rho 114782 + (1 : F) * rho 114783)

def relationLc3579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 44⟩, ⟨(1 : F), 114178, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8231 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3579 rho) = ((1 : F) * rho 114786)

def relationRow8232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114786) * ((1 : F) * rho 114784 + (1 : F) * rho 114785) = ((1 : F) * rho 114787)

def relationLc3580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114785) * (relationLc3580 rho) = ((1 : F) * rho 114788)

def relationLc3581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114784) * (relationLc3581 rho) = ((1 : F) * rho 114789)

def relationRow8235 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114788) * ((1 : F) * rho 114789) = ((1 : F) * rho 114790)

def relationRow8236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114791) * ((1 : F) + (1 : F) * rho 114790) = ((1 : F) * rho 114788 + (1 : F) * rho 114789)

def relationRow8237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114792) * ((1 : F) + (-1 : F) * rho 114790) = ((1 : F) * rho 114787 + (-1 : F) * rho 114788 + (-1 : F) * rho 114789)

def relationLc3582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 44⟩], residual := [((1 : F), 114791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112169) * (relationLc3582 rho) = ((1 : F) * rho 114793)

def relationLc3583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 44⟩], residual := [((1 : F), 114792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112169) * (relationLc3583 rho) = ((1 : F) * rho 114794)

def relationRow8240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114784) * ((1 : F) * rho 114785) = ((1 : F) * rho 114795)

def relationRow8241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114784) * ((1 : F) * rho 114784) = ((1 : F) * rho 114796)

def relationRow8242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114785) * ((1 : F) * rho 114785) = ((1 : F) * rho 114797)

def relationRow8243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114798) * ((-1 : F) * rho 114796 + (1 : F) * rho 114797) = ((2 : F) * rho 114795)

def relationRow8244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114799) * ((2 : F) + (1 : F) * rho 114796 + (-1 : F) * rho 114797) = ((1 : F) * rho 114796 + (1 : F) * rho 114797)

def relationLc3584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 45⟩, ⟨(1 : F), 114178, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8245 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3584 rho) = ((1 : F) * rho 114800)

def relationRow8246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114800) * ((1 : F) * rho 114798 + (1 : F) * rho 114799) = ((1 : F) * rho 114801)

def relationLc3585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114799) * (relationLc3585 rho) = ((1 : F) * rho 114802)

def relationLc3586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114798) * (relationLc3586 rho) = ((1 : F) * rho 114803)

def relationRow8249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114802) * ((1 : F) * rho 114803) = ((1 : F) * rho 114804)

def relationRow8250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114805) * ((1 : F) + (1 : F) * rho 114804) = ((1 : F) * rho 114802 + (1 : F) * rho 114803)

def relationRow8251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114806) * ((1 : F) + (-1 : F) * rho 114804) = ((1 : F) * rho 114801 + (-1 : F) * rho 114802 + (-1 : F) * rho 114803)

def relationLc3587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 45⟩], residual := [((1 : F), 114805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112170) * (relationLc3587 rho) = ((1 : F) * rho 114807)

def relationLc3588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 45⟩], residual := [((1 : F), 114806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112170) * (relationLc3588 rho) = ((1 : F) * rho 114808)

def relationRow8254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114798) * ((1 : F) * rho 114799) = ((1 : F) * rho 114809)

def relationRow8255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114798) * ((1 : F) * rho 114798) = ((1 : F) * rho 114810)

def relationRow8256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114799) * ((1 : F) * rho 114799) = ((1 : F) * rho 114811)

def relationRow8257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114812) * ((-1 : F) * rho 114810 + (1 : F) * rho 114811) = ((2 : F) * rho 114809)

def relationRow8258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114813) * ((2 : F) + (1 : F) * rho 114810 + (-1 : F) * rho 114811) = ((1 : F) * rho 114810 + (1 : F) * rho 114811)

def relationLc3589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 46⟩, ⟨(1 : F), 114178, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8259 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3589 rho) = ((1 : F) * rho 114814)

def relationRow8260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114814) * ((1 : F) * rho 114812 + (1 : F) * rho 114813) = ((1 : F) * rho 114815)

def relationLc3590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114813) * (relationLc3590 rho) = ((1 : F) * rho 114816)

def relationLc3591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114812) * (relationLc3591 rho) = ((1 : F) * rho 114817)

def relationRow8263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114816) * ((1 : F) * rho 114817) = ((1 : F) * rho 114818)

def relationRow8264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114819) * ((1 : F) + (1 : F) * rho 114818) = ((1 : F) * rho 114816 + (1 : F) * rho 114817)

def relationRow8265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114820) * ((1 : F) + (-1 : F) * rho 114818) = ((1 : F) * rho 114815 + (-1 : F) * rho 114816 + (-1 : F) * rho 114817)

def relationLc3592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 46⟩], residual := [((1 : F), 114819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112171) * (relationLc3592 rho) = ((1 : F) * rho 114821)

def relationLc3593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 46⟩], residual := [((1 : F), 114820)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112171) * (relationLc3593 rho) = ((1 : F) * rho 114822)

def relationRow8268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114812) * ((1 : F) * rho 114813) = ((1 : F) * rho 114823)

def relationRow8269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114812) * ((1 : F) * rho 114812) = ((1 : F) * rho 114824)

def relationRow8270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114813) * ((1 : F) * rho 114813) = ((1 : F) * rho 114825)

def relationRow8271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114826) * ((-1 : F) * rho 114824 + (1 : F) * rho 114825) = ((2 : F) * rho 114823)

def relationRow8272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114827) * ((2 : F) + (1 : F) * rho 114824 + (-1 : F) * rho 114825) = ((1 : F) * rho 114824 + (1 : F) * rho 114825)

def relationLc3594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 47⟩, ⟨(1 : F), 114178, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8273 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3594 rho) = ((1 : F) * rho 114828)

def relationRow8274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114828) * ((1 : F) * rho 114826 + (1 : F) * rho 114827) = ((1 : F) * rho 114829)

def relationLc3595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114827) * (relationLc3595 rho) = ((1 : F) * rho 114830)

def relationLc3596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114826) * (relationLc3596 rho) = ((1 : F) * rho 114831)

def relationRow8277 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114830) * ((1 : F) * rho 114831) = ((1 : F) * rho 114832)

def relationRow8278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114833) * ((1 : F) + (1 : F) * rho 114832) = ((1 : F) * rho 114830 + (1 : F) * rho 114831)

def relationRow8279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114834) * ((1 : F) + (-1 : F) * rho 114832) = ((1 : F) * rho 114829 + (-1 : F) * rho 114830 + (-1 : F) * rho 114831)

def relationLc3597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 47⟩], residual := [((1 : F), 114833)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112172) * (relationLc3597 rho) = ((1 : F) * rho 114835)

def relationLc3598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 47⟩], residual := [((1 : F), 114834)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112172) * (relationLc3598 rho) = ((1 : F) * rho 114836)

def relationRow8282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114826) * ((1 : F) * rho 114827) = ((1 : F) * rho 114837)

def relationRow8283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114826) * ((1 : F) * rho 114826) = ((1 : F) * rho 114838)

def relationRow8284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114827) * ((1 : F) * rho 114827) = ((1 : F) * rho 114839)

def relationRow8285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114840) * ((-1 : F) * rho 114838 + (1 : F) * rho 114839) = ((2 : F) * rho 114837)

def relationRow8286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114841) * ((2 : F) + (1 : F) * rho 114838 + (-1 : F) * rho 114839) = ((1 : F) * rho 114838 + (1 : F) * rho 114839)

def relationLc3599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 48⟩, ⟨(1 : F), 114178, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8287 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3599 rho) = ((1 : F) * rho 114842)

def relationRow8288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114842) * ((1 : F) * rho 114840 + (1 : F) * rho 114841) = ((1 : F) * rho 114843)

def relationLc3600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114841) * (relationLc3600 rho) = ((1 : F) * rho 114844)

def relationLc3601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114840) * (relationLc3601 rho) = ((1 : F) * rho 114845)

def relationRow8291 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114844) * ((1 : F) * rho 114845) = ((1 : F) * rho 114846)

def relationRow8292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114847) * ((1 : F) + (1 : F) * rho 114846) = ((1 : F) * rho 114844 + (1 : F) * rho 114845)

def relationRow8293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114848) * ((1 : F) + (-1 : F) * rho 114846) = ((1 : F) * rho 114843 + (-1 : F) * rho 114844 + (-1 : F) * rho 114845)

def relationLc3602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 48⟩], residual := [((1 : F), 114847)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112173) * (relationLc3602 rho) = ((1 : F) * rho 114849)

def relationLc3603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 48⟩], residual := [((1 : F), 114848)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112173) * (relationLc3603 rho) = ((1 : F) * rho 114850)

def relationRow8296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114840) * ((1 : F) * rho 114841) = ((1 : F) * rho 114851)

def relationRow8297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114840) * ((1 : F) * rho 114840) = ((1 : F) * rho 114852)

def relationRow8298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114841) * ((1 : F) * rho 114841) = ((1 : F) * rho 114853)

def relationRow8299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114854) * ((-1 : F) * rho 114852 + (1 : F) * rho 114853) = ((2 : F) * rho 114851)

def relationRow8300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114855) * ((2 : F) + (1 : F) * rho 114852 + (-1 : F) * rho 114853) = ((1 : F) * rho 114852 + (1 : F) * rho 114853)

def relationLc3604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 49⟩, ⟨(1 : F), 114178, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8301 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3604 rho) = ((1 : F) * rho 114856)

def relationRow8302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114856) * ((1 : F) * rho 114854 + (1 : F) * rho 114855) = ((1 : F) * rho 114857)

def relationLc3605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114855) * (relationLc3605 rho) = ((1 : F) * rho 114858)

def relationLc3606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114854) * (relationLc3606 rho) = ((1 : F) * rho 114859)

def relationRow8305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114858) * ((1 : F) * rho 114859) = ((1 : F) * rho 114860)

def relationRow8306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114861) * ((1 : F) + (1 : F) * rho 114860) = ((1 : F) * rho 114858 + (1 : F) * rho 114859)

def relationRow8307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114862) * ((1 : F) + (-1 : F) * rho 114860) = ((1 : F) * rho 114857 + (-1 : F) * rho 114858 + (-1 : F) * rho 114859)

def relationLc3607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 49⟩], residual := [((1 : F), 114861)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112174) * (relationLc3607 rho) = ((1 : F) * rho 114863)

def relationLc3608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 49⟩], residual := [((1 : F), 114862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112174) * (relationLc3608 rho) = ((1 : F) * rho 114864)

def relationRow8310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114854) * ((1 : F) * rho 114855) = ((1 : F) * rho 114865)

def relationRow8311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114854) * ((1 : F) * rho 114854) = ((1 : F) * rho 114866)

def relationRow8312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114855) * ((1 : F) * rho 114855) = ((1 : F) * rho 114867)

def relationRow8313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114868) * ((-1 : F) * rho 114866 + (1 : F) * rho 114867) = ((2 : F) * rho 114865)

def relationRow8314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114869) * ((2 : F) + (1 : F) * rho 114866 + (-1 : F) * rho 114867) = ((1 : F) * rho 114866 + (1 : F) * rho 114867)

def relationLc3609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 50⟩, ⟨(1 : F), 114178, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8315 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3609 rho) = ((1 : F) * rho 114870)

def relationRow8316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114870) * ((1 : F) * rho 114868 + (1 : F) * rho 114869) = ((1 : F) * rho 114871)

def relationLc3610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114869) * (relationLc3610 rho) = ((1 : F) * rho 114872)

def relationLc3611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114868) * (relationLc3611 rho) = ((1 : F) * rho 114873)

def relationRow8319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114872) * ((1 : F) * rho 114873) = ((1 : F) * rho 114874)

def relationRow8320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114875) * ((1 : F) + (1 : F) * rho 114874) = ((1 : F) * rho 114872 + (1 : F) * rho 114873)

def relationRow8321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114876) * ((1 : F) + (-1 : F) * rho 114874) = ((1 : F) * rho 114871 + (-1 : F) * rho 114872 + (-1 : F) * rho 114873)

def relationLc3612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 50⟩], residual := [((1 : F), 114875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112175) * (relationLc3612 rho) = ((1 : F) * rho 114877)

def relationLc3613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 50⟩], residual := [((1 : F), 114876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112175) * (relationLc3613 rho) = ((1 : F) * rho 114878)

def relationRow8324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114868) * ((1 : F) * rho 114869) = ((1 : F) * rho 114879)

def relationRow8325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114868) * ((1 : F) * rho 114868) = ((1 : F) * rho 114880)

def relationRow8326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114869) * ((1 : F) * rho 114869) = ((1 : F) * rho 114881)

def relationRow8327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114882) * ((-1 : F) * rho 114880 + (1 : F) * rho 114881) = ((2 : F) * rho 114879)

def relationRow8328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114883) * ((2 : F) + (1 : F) * rho 114880 + (-1 : F) * rho 114881) = ((1 : F) * rho 114880 + (1 : F) * rho 114881)

def relationLc3614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 51⟩, ⟨(1 : F), 114178, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8329 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3614 rho) = ((1 : F) * rho 114884)

def relationRow8330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114884) * ((1 : F) * rho 114882 + (1 : F) * rho 114883) = ((1 : F) * rho 114885)

def relationLc3615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114883) * (relationLc3615 rho) = ((1 : F) * rho 114886)

def relationLc3616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114882) * (relationLc3616 rho) = ((1 : F) * rho 114887)

def relationRow8333 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114886) * ((1 : F) * rho 114887) = ((1 : F) * rho 114888)

def relationRow8334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114889) * ((1 : F) + (1 : F) * rho 114888) = ((1 : F) * rho 114886 + (1 : F) * rho 114887)

def relationRow8335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114890) * ((1 : F) + (-1 : F) * rho 114888) = ((1 : F) * rho 114885 + (-1 : F) * rho 114886 + (-1 : F) * rho 114887)

def relationLc3617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 51⟩], residual := [((1 : F), 114889)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112176) * (relationLc3617 rho) = ((1 : F) * rho 114891)

def relationLc3618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 51⟩], residual := [((1 : F), 114890)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112176) * (relationLc3618 rho) = ((1 : F) * rho 114892)

def relationRow8338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114882) * ((1 : F) * rho 114883) = ((1 : F) * rho 114893)

def relationRow8339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114882) * ((1 : F) * rho 114882) = ((1 : F) * rho 114894)

def relationRow8340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114883) * ((1 : F) * rho 114883) = ((1 : F) * rho 114895)

def relationRow8341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114896) * ((-1 : F) * rho 114894 + (1 : F) * rho 114895) = ((2 : F) * rho 114893)

def relationRow8342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114897) * ((2 : F) + (1 : F) * rho 114894 + (-1 : F) * rho 114895) = ((1 : F) * rho 114894 + (1 : F) * rho 114895)

def relationLc3619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 52⟩, ⟨(1 : F), 114178, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8343 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3619 rho) = ((1 : F) * rho 114898)

def relationRow8344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114898) * ((1 : F) * rho 114896 + (1 : F) * rho 114897) = ((1 : F) * rho 114899)

def relationLc3620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114897) * (relationLc3620 rho) = ((1 : F) * rho 114900)

def relationLc3621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114896) * (relationLc3621 rho) = ((1 : F) * rho 114901)

def relationRow8347 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114900) * ((1 : F) * rho 114901) = ((1 : F) * rho 114902)

def relationRow8348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114903) * ((1 : F) + (1 : F) * rho 114902) = ((1 : F) * rho 114900 + (1 : F) * rho 114901)

def relationRow8349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114904) * ((1 : F) + (-1 : F) * rho 114902) = ((1 : F) * rho 114899 + (-1 : F) * rho 114900 + (-1 : F) * rho 114901)

def relationLc3622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 52⟩], residual := [((1 : F), 114903)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112177) * (relationLc3622 rho) = ((1 : F) * rho 114905)

def relationLc3623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 52⟩], residual := [((1 : F), 114904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112177) * (relationLc3623 rho) = ((1 : F) * rho 114906)

def relationRow8352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114896) * ((1 : F) * rho 114897) = ((1 : F) * rho 114907)

def relationRow8353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114896) * ((1 : F) * rho 114896) = ((1 : F) * rho 114908)

def relationRow8354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114897) * ((1 : F) * rho 114897) = ((1 : F) * rho 114909)

def relationRow8355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114910) * ((-1 : F) * rho 114908 + (1 : F) * rho 114909) = ((2 : F) * rho 114907)

def relationRow8356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114911) * ((2 : F) + (1 : F) * rho 114908 + (-1 : F) * rho 114909) = ((1 : F) * rho 114908 + (1 : F) * rho 114909)

def relationLc3624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 53⟩, ⟨(1 : F), 114178, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8357 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3624 rho) = ((1 : F) * rho 114912)

def relationRow8358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114912) * ((1 : F) * rho 114910 + (1 : F) * rho 114911) = ((1 : F) * rho 114913)

def relationLc3625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114911) * (relationLc3625 rho) = ((1 : F) * rho 114914)

def relationLc3626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114910) * (relationLc3626 rho) = ((1 : F) * rho 114915)

def relationRow8361 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114914) * ((1 : F) * rho 114915) = ((1 : F) * rho 114916)

def relationRow8362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114917) * ((1 : F) + (1 : F) * rho 114916) = ((1 : F) * rho 114914 + (1 : F) * rho 114915)

def relationRow8363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114918) * ((1 : F) + (-1 : F) * rho 114916) = ((1 : F) * rho 114913 + (-1 : F) * rho 114914 + (-1 : F) * rho 114915)

def relationLc3627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 53⟩], residual := [((1 : F), 114917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112178) * (relationLc3627 rho) = ((1 : F) * rho 114919)

def relationLc3628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 53⟩], residual := [((1 : F), 114918)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112178) * (relationLc3628 rho) = ((1 : F) * rho 114920)

def relationRow8366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114910) * ((1 : F) * rho 114911) = ((1 : F) * rho 114921)

def relationRow8367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114910) * ((1 : F) * rho 114910) = ((1 : F) * rho 114922)

def relationRow8368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114911) * ((1 : F) * rho 114911) = ((1 : F) * rho 114923)

def relationRow8369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114924) * ((-1 : F) * rho 114922 + (1 : F) * rho 114923) = ((2 : F) * rho 114921)

def relationRow8370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114925) * ((2 : F) + (1 : F) * rho 114922 + (-1 : F) * rho 114923) = ((1 : F) * rho 114922 + (1 : F) * rho 114923)

def relationLc3629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 54⟩, ⟨(1 : F), 114178, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8371 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3629 rho) = ((1 : F) * rho 114926)

def relationRow8372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114926) * ((1 : F) * rho 114924 + (1 : F) * rho 114925) = ((1 : F) * rho 114927)

def relationLc3630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114925) * (relationLc3630 rho) = ((1 : F) * rho 114928)

def relationLc3631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114924) * (relationLc3631 rho) = ((1 : F) * rho 114929)

def relationRow8375 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114928) * ((1 : F) * rho 114929) = ((1 : F) * rho 114930)

def relationRow8376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114931) * ((1 : F) + (1 : F) * rho 114930) = ((1 : F) * rho 114928 + (1 : F) * rho 114929)

def relationRow8377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114932) * ((1 : F) + (-1 : F) * rho 114930) = ((1 : F) * rho 114927 + (-1 : F) * rho 114928 + (-1 : F) * rho 114929)

def relationLc3632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 54⟩], residual := [((1 : F), 114931)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112179) * (relationLc3632 rho) = ((1 : F) * rho 114933)

def relationLc3633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 54⟩], residual := [((1 : F), 114932)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112179) * (relationLc3633 rho) = ((1 : F) * rho 114934)

def relationRow8380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114924) * ((1 : F) * rho 114925) = ((1 : F) * rho 114935)

def relationRow8381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114924) * ((1 : F) * rho 114924) = ((1 : F) * rho 114936)

def relationRow8382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114925) * ((1 : F) * rho 114925) = ((1 : F) * rho 114937)

def relationRow8383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114938) * ((-1 : F) * rho 114936 + (1 : F) * rho 114937) = ((2 : F) * rho 114935)

def relationRow8384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114939) * ((2 : F) + (1 : F) * rho 114936 + (-1 : F) * rho 114937) = ((1 : F) * rho 114936 + (1 : F) * rho 114937)

def relationLc3634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 55⟩, ⟨(1 : F), 114178, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8385 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3634 rho) = ((1 : F) * rho 114940)

def relationRow8386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114940) * ((1 : F) * rho 114938 + (1 : F) * rho 114939) = ((1 : F) * rho 114941)

def relationLc3635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114939) * (relationLc3635 rho) = ((1 : F) * rho 114942)

def relationLc3636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114938) * (relationLc3636 rho) = ((1 : F) * rho 114943)

def relationRow8389 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114942) * ((1 : F) * rho 114943) = ((1 : F) * rho 114944)

def relationRow8390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114945) * ((1 : F) + (1 : F) * rho 114944) = ((1 : F) * rho 114942 + (1 : F) * rho 114943)

def relationRow8391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114946) * ((1 : F) + (-1 : F) * rho 114944) = ((1 : F) * rho 114941 + (-1 : F) * rho 114942 + (-1 : F) * rho 114943)

def relationLc3637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 55⟩], residual := [((1 : F), 114945)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112180) * (relationLc3637 rho) = ((1 : F) * rho 114947)

def relationLc3638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 55⟩], residual := [((1 : F), 114946)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112180) * (relationLc3638 rho) = ((1 : F) * rho 114948)

def relationRow8394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114938) * ((1 : F) * rho 114939) = ((1 : F) * rho 114949)

def relationRow8395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114938) * ((1 : F) * rho 114938) = ((1 : F) * rho 114950)

def relationRow8396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114939) * ((1 : F) * rho 114939) = ((1 : F) * rho 114951)

def relationRow8397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114952) * ((-1 : F) * rho 114950 + (1 : F) * rho 114951) = ((2 : F) * rho 114949)

def relationRow8398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114953) * ((2 : F) + (1 : F) * rho 114950 + (-1 : F) * rho 114951) = ((1 : F) * rho 114950 + (1 : F) * rho 114951)

def relationLc3639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 56⟩, ⟨(1 : F), 114178, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8399 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3639 rho) = ((1 : F) * rho 114954)

def relationRow8400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114954) * ((1 : F) * rho 114952 + (1 : F) * rho 114953) = ((1 : F) * rho 114955)

def relationLc3640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114953) * (relationLc3640 rho) = ((1 : F) * rho 114956)

def relationLc3641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114952) * (relationLc3641 rho) = ((1 : F) * rho 114957)

def relationRow8403 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114956) * ((1 : F) * rho 114957) = ((1 : F) * rho 114958)

def relationRow8404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114959) * ((1 : F) + (1 : F) * rho 114958) = ((1 : F) * rho 114956 + (1 : F) * rho 114957)

def relationRow8405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114960) * ((1 : F) + (-1 : F) * rho 114958) = ((1 : F) * rho 114955 + (-1 : F) * rho 114956 + (-1 : F) * rho 114957)

def relationLc3642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 56⟩], residual := [((1 : F), 114959)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112181) * (relationLc3642 rho) = ((1 : F) * rho 114961)

def relationLc3643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 150⟩, ⟨(-1 : F), 114178, 14, 56⟩], residual := [((1 : F), 114960)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112181) * (relationLc3643 rho) = ((1 : F) * rho 114962)

def relationRow8408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114952) * ((1 : F) * rho 114953) = ((1 : F) * rho 114963)

def relationRow8409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114952) * ((1 : F) * rho 114952) = ((1 : F) * rho 114964)

def relationRow8410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114953) * ((1 : F) * rho 114953) = ((1 : F) * rho 114965)

def relationRow8411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114966) * ((-1 : F) * rho 114964 + (1 : F) * rho 114965) = ((2 : F) * rho 114963)

def relationRow8412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114967) * ((2 : F) + (1 : F) * rho 114964 + (-1 : F) * rho 114965) = ((1 : F) * rho 114964 + (1 : F) * rho 114965)

def relationLc3644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114177, 14, 57⟩, ⟨(1 : F), 114178, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8413 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3644 rho) = ((1 : F) * rho 114968)

def relationRow8414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114968) * ((1 : F) * rho 114966 + (1 : F) * rho 114967) = ((1 : F) * rho 114969)

def relationLc3645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 150⟩, ⟨(1 : F), 114177, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114967) * (relationLc3645 rho) = ((1 : F) * rho 114970)

def relationLc3646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 150⟩, ⟨(1 : F), 114178, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114966) * (relationLc3646 rho) = ((1 : F) * rho 114971)

def relationRow8417 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 114970) * ((1 : F) * rho 114971) = ((1 : F) * rho 114972)

def relationRow8418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114973) * ((1 : F) + (1 : F) * rho 114972) = ((1 : F) * rho 114970 + (1 : F) * rho 114971)

def relationRow8419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114974) * ((1 : F) + (-1 : F) * rho 114972) = ((1 : F) * rho 114969 + (-1 : F) * rho 114970 + (-1 : F) * rho 114971)

def relationLc3647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 150⟩, ⟨(-1 : F), 114177, 14, 57⟩], residual := [((1 : F), 114973)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112182) * (relationLc3647 rho) = ((1 : F) * rho 114975)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
