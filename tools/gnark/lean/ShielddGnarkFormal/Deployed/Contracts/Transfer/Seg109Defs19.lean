import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationLc3445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123436) * (relationLc3445 rho) = ((1 : F) * rho 123439)

def relationLc3446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123435) * (relationLc3446 rho) = ((1 : F) * rho 123440)

def relationRow7857 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123439) * ((1 : F) * rho 123440) = ((1 : F) * rho 123441)

def relationRow7858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123442) * ((1 : F) + (1 : F) * rho 123441) = ((1 : F) * rho 123439 + (1 : F) * rho 123440)

def relationRow7859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123443) * ((1 : F) + (-1 : F) * rho 123441) = ((1 : F) * rho 123438 + (-1 : F) * rho 123439 + (-1 : F) * rho 123440)

def relationLc3447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 17⟩], residual := [((1 : F), 123442)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121171) * (relationLc3447 rho) = ((1 : F) * rho 123444)

def relationLc3448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 17⟩], residual := [((1 : F), 123443)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121171) * (relationLc3448 rho) = ((1 : F) * rho 123445)

def relationRow7862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123435) * ((1 : F) * rho 123436) = ((1 : F) * rho 123446)

def relationRow7863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123435) * ((1 : F) * rho 123435) = ((1 : F) * rho 123447)

def relationRow7864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123436) * ((1 : F) * rho 123436) = ((1 : F) * rho 123448)

def relationRow7865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123449) * ((-1 : F) * rho 123447 + (1 : F) * rho 123448) = ((2 : F) * rho 123446)

def relationRow7866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123450) * ((2 : F) + (1 : F) * rho 123447 + (-1 : F) * rho 123448) = ((1 : F) * rho 123447 + (1 : F) * rho 123448)

def relationLc3449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 18⟩, ⟨(1 : F), 123207, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7867 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3449 rho) = ((1 : F) * rho 123451)

def relationRow7868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123451) * ((1 : F) * rho 123449 + (1 : F) * rho 123450) = ((1 : F) * rho 123452)

def relationLc3450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123450) * (relationLc3450 rho) = ((1 : F) * rho 123453)

def relationLc3451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123449) * (relationLc3451 rho) = ((1 : F) * rho 123454)

def relationRow7871 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123453) * ((1 : F) * rho 123454) = ((1 : F) * rho 123455)

def relationRow7872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123456) * ((1 : F) + (1 : F) * rho 123455) = ((1 : F) * rho 123453 + (1 : F) * rho 123454)

def relationRow7873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123457) * ((1 : F) + (-1 : F) * rho 123455) = ((1 : F) * rho 123452 + (-1 : F) * rho 123453 + (-1 : F) * rho 123454)

def relationLc3452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 18⟩], residual := [((1 : F), 123456)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121172) * (relationLc3452 rho) = ((1 : F) * rho 123458)

def relationLc3453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 18⟩], residual := [((1 : F), 123457)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121172) * (relationLc3453 rho) = ((1 : F) * rho 123459)

def relationRow7876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123449) * ((1 : F) * rho 123450) = ((1 : F) * rho 123460)

def relationRow7877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123449) * ((1 : F) * rho 123449) = ((1 : F) * rho 123461)

def relationRow7878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123450) * ((1 : F) * rho 123450) = ((1 : F) * rho 123462)

def relationRow7879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123463) * ((-1 : F) * rho 123461 + (1 : F) * rho 123462) = ((2 : F) * rho 123460)

def relationRow7880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123464) * ((2 : F) + (1 : F) * rho 123461 + (-1 : F) * rho 123462) = ((1 : F) * rho 123461 + (1 : F) * rho 123462)

def relationLc3454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 19⟩, ⟨(1 : F), 123207, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3454 rho) = ((1 : F) * rho 123465)

def relationRow7882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123465) * ((1 : F) * rho 123463 + (1 : F) * rho 123464) = ((1 : F) * rho 123466)

def relationLc3455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123464) * (relationLc3455 rho) = ((1 : F) * rho 123467)

def relationLc3456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123463) * (relationLc3456 rho) = ((1 : F) * rho 123468)

def relationRow7885 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123467) * ((1 : F) * rho 123468) = ((1 : F) * rho 123469)

def relationRow7886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123470) * ((1 : F) + (1 : F) * rho 123469) = ((1 : F) * rho 123467 + (1 : F) * rho 123468)

def relationRow7887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123471) * ((1 : F) + (-1 : F) * rho 123469) = ((1 : F) * rho 123466 + (-1 : F) * rho 123467 + (-1 : F) * rho 123468)

def relationLc3457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 19⟩], residual := [((1 : F), 123470)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121173) * (relationLc3457 rho) = ((1 : F) * rho 123472)

def relationLc3458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 19⟩], residual := [((1 : F), 123471)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121173) * (relationLc3458 rho) = ((1 : F) * rho 123473)

def relationRow7890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123463) * ((1 : F) * rho 123464) = ((1 : F) * rho 123474)

def relationRow7891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123463) * ((1 : F) * rho 123463) = ((1 : F) * rho 123475)

def relationRow7892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123464) * ((1 : F) * rho 123464) = ((1 : F) * rho 123476)

def relationRow7893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123477) * ((-1 : F) * rho 123475 + (1 : F) * rho 123476) = ((2 : F) * rho 123474)

def relationRow7894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123478) * ((2 : F) + (1 : F) * rho 123475 + (-1 : F) * rho 123476) = ((1 : F) * rho 123475 + (1 : F) * rho 123476)

def relationLc3459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 20⟩, ⟨(1 : F), 123207, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3459 rho) = ((1 : F) * rho 123479)

def relationRow7896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123479) * ((1 : F) * rho 123477 + (1 : F) * rho 123478) = ((1 : F) * rho 123480)

def relationLc3460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123478) * (relationLc3460 rho) = ((1 : F) * rho 123481)

def relationLc3461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123477) * (relationLc3461 rho) = ((1 : F) * rho 123482)

def relationRow7899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123481) * ((1 : F) * rho 123482) = ((1 : F) * rho 123483)

def relationRow7900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123484) * ((1 : F) + (1 : F) * rho 123483) = ((1 : F) * rho 123481 + (1 : F) * rho 123482)

def relationRow7901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123485) * ((1 : F) + (-1 : F) * rho 123483) = ((1 : F) * rho 123480 + (-1 : F) * rho 123481 + (-1 : F) * rho 123482)

def relationLc3462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 20⟩], residual := [((1 : F), 123484)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121174) * (relationLc3462 rho) = ((1 : F) * rho 123486)

def relationLc3463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 20⟩], residual := [((1 : F), 123485)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121174) * (relationLc3463 rho) = ((1 : F) * rho 123487)

def relationRow7904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123477) * ((1 : F) * rho 123478) = ((1 : F) * rho 123488)

def relationRow7905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123477) * ((1 : F) * rho 123477) = ((1 : F) * rho 123489)

def relationRow7906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123478) * ((1 : F) * rho 123478) = ((1 : F) * rho 123490)

def relationRow7907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123491) * ((-1 : F) * rho 123489 + (1 : F) * rho 123490) = ((2 : F) * rho 123488)

def relationRow7908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123492) * ((2 : F) + (1 : F) * rho 123489 + (-1 : F) * rho 123490) = ((1 : F) * rho 123489 + (1 : F) * rho 123490)

def relationLc3464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 21⟩, ⟨(1 : F), 123207, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3464 rho) = ((1 : F) * rho 123493)

def relationRow7910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123493) * ((1 : F) * rho 123491 + (1 : F) * rho 123492) = ((1 : F) * rho 123494)

def relationLc3465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123492) * (relationLc3465 rho) = ((1 : F) * rho 123495)

def relationLc3466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123491) * (relationLc3466 rho) = ((1 : F) * rho 123496)

def relationRow7913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123495) * ((1 : F) * rho 123496) = ((1 : F) * rho 123497)

def relationRow7914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123498) * ((1 : F) + (1 : F) * rho 123497) = ((1 : F) * rho 123495 + (1 : F) * rho 123496)

def relationRow7915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123499) * ((1 : F) + (-1 : F) * rho 123497) = ((1 : F) * rho 123494 + (-1 : F) * rho 123495 + (-1 : F) * rho 123496)

def relationLc3467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 21⟩], residual := [((1 : F), 123498)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121175) * (relationLc3467 rho) = ((1 : F) * rho 123500)

def relationLc3468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 21⟩], residual := [((1 : F), 123499)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121175) * (relationLc3468 rho) = ((1 : F) * rho 123501)

def relationRow7918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123491) * ((1 : F) * rho 123492) = ((1 : F) * rho 123502)

def relationRow7919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123491) * ((1 : F) * rho 123491) = ((1 : F) * rho 123503)

def relationRow7920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123492) * ((1 : F) * rho 123492) = ((1 : F) * rho 123504)

def relationRow7921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123505) * ((-1 : F) * rho 123503 + (1 : F) * rho 123504) = ((2 : F) * rho 123502)

def relationRow7922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123506) * ((2 : F) + (1 : F) * rho 123503 + (-1 : F) * rho 123504) = ((1 : F) * rho 123503 + (1 : F) * rho 123504)

def relationLc3469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 22⟩, ⟨(1 : F), 123207, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3469 rho) = ((1 : F) * rho 123507)

def relationRow7924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123507) * ((1 : F) * rho 123505 + (1 : F) * rho 123506) = ((1 : F) * rho 123508)

def relationLc3470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123506) * (relationLc3470 rho) = ((1 : F) * rho 123509)

def relationLc3471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123505) * (relationLc3471 rho) = ((1 : F) * rho 123510)

def relationRow7927 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123509) * ((1 : F) * rho 123510) = ((1 : F) * rho 123511)

def relationRow7928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123512) * ((1 : F) + (1 : F) * rho 123511) = ((1 : F) * rho 123509 + (1 : F) * rho 123510)

def relationRow7929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123513) * ((1 : F) + (-1 : F) * rho 123511) = ((1 : F) * rho 123508 + (-1 : F) * rho 123509 + (-1 : F) * rho 123510)

def relationLc3472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 22⟩], residual := [((1 : F), 123512)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121176) * (relationLc3472 rho) = ((1 : F) * rho 123514)

def relationLc3473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 22⟩], residual := [((1 : F), 123513)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121176) * (relationLc3473 rho) = ((1 : F) * rho 123515)

def relationRow7932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123505) * ((1 : F) * rho 123506) = ((1 : F) * rho 123516)

def relationRow7933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123505) * ((1 : F) * rho 123505) = ((1 : F) * rho 123517)

def relationRow7934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123506) * ((1 : F) * rho 123506) = ((1 : F) * rho 123518)

def relationRow7935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123519) * ((-1 : F) * rho 123517 + (1 : F) * rho 123518) = ((2 : F) * rho 123516)

def relationRow7936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123520) * ((2 : F) + (1 : F) * rho 123517 + (-1 : F) * rho 123518) = ((1 : F) * rho 123517 + (1 : F) * rho 123518)

def relationLc3474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 23⟩, ⟨(1 : F), 123207, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3474 rho) = ((1 : F) * rho 123521)

def relationRow7938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123521) * ((1 : F) * rho 123519 + (1 : F) * rho 123520) = ((1 : F) * rho 123522)

def relationLc3475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123520) * (relationLc3475 rho) = ((1 : F) * rho 123523)

def relationLc3476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123519) * (relationLc3476 rho) = ((1 : F) * rho 123524)

def relationRow7941 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123523) * ((1 : F) * rho 123524) = ((1 : F) * rho 123525)

def relationRow7942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123526) * ((1 : F) + (1 : F) * rho 123525) = ((1 : F) * rho 123523 + (1 : F) * rho 123524)

def relationRow7943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123527) * ((1 : F) + (-1 : F) * rho 123525) = ((1 : F) * rho 123522 + (-1 : F) * rho 123523 + (-1 : F) * rho 123524)

def relationLc3477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 23⟩], residual := [((1 : F), 123526)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121177) * (relationLc3477 rho) = ((1 : F) * rho 123528)

def relationLc3478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 23⟩], residual := [((1 : F), 123527)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121177) * (relationLc3478 rho) = ((1 : F) * rho 123529)

def relationRow7946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123519) * ((1 : F) * rho 123520) = ((1 : F) * rho 123530)

def relationRow7947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123519) * ((1 : F) * rho 123519) = ((1 : F) * rho 123531)

def relationRow7948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123520) * ((1 : F) * rho 123520) = ((1 : F) * rho 123532)

def relationRow7949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123533) * ((-1 : F) * rho 123531 + (1 : F) * rho 123532) = ((2 : F) * rho 123530)

def relationRow7950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123534) * ((2 : F) + (1 : F) * rho 123531 + (-1 : F) * rho 123532) = ((1 : F) * rho 123531 + (1 : F) * rho 123532)

def relationLc3479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 24⟩, ⟨(1 : F), 123207, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3479 rho) = ((1 : F) * rho 123535)

def relationRow7952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123535) * ((1 : F) * rho 123533 + (1 : F) * rho 123534) = ((1 : F) * rho 123536)

def relationLc3480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123534) * (relationLc3480 rho) = ((1 : F) * rho 123537)

def relationLc3481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123533) * (relationLc3481 rho) = ((1 : F) * rho 123538)

def relationRow7955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123537) * ((1 : F) * rho 123538) = ((1 : F) * rho 123539)

def relationRow7956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123540) * ((1 : F) + (1 : F) * rho 123539) = ((1 : F) * rho 123537 + (1 : F) * rho 123538)

def relationRow7957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123541) * ((1 : F) + (-1 : F) * rho 123539) = ((1 : F) * rho 123536 + (-1 : F) * rho 123537 + (-1 : F) * rho 123538)

def relationLc3482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 24⟩], residual := [((1 : F), 123540)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121178) * (relationLc3482 rho) = ((1 : F) * rho 123542)

def relationLc3483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 24⟩], residual := [((1 : F), 123541)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121178) * (relationLc3483 rho) = ((1 : F) * rho 123543)

def relationRow7960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123533) * ((1 : F) * rho 123534) = ((1 : F) * rho 123544)

def relationRow7961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123533) * ((1 : F) * rho 123533) = ((1 : F) * rho 123545)

def relationRow7962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123534) * ((1 : F) * rho 123534) = ((1 : F) * rho 123546)

def relationRow7963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123547) * ((-1 : F) * rho 123545 + (1 : F) * rho 123546) = ((2 : F) * rho 123544)

def relationRow7964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123548) * ((2 : F) + (1 : F) * rho 123545 + (-1 : F) * rho 123546) = ((1 : F) * rho 123545 + (1 : F) * rho 123546)

def relationLc3484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 25⟩, ⟨(1 : F), 123207, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3484 rho) = ((1 : F) * rho 123549)

def relationRow7966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123549) * ((1 : F) * rho 123547 + (1 : F) * rho 123548) = ((1 : F) * rho 123550)

def relationLc3485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123548) * (relationLc3485 rho) = ((1 : F) * rho 123551)

def relationLc3486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123547) * (relationLc3486 rho) = ((1 : F) * rho 123552)

def relationRow7969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123551) * ((1 : F) * rho 123552) = ((1 : F) * rho 123553)

def relationRow7970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123554) * ((1 : F) + (1 : F) * rho 123553) = ((1 : F) * rho 123551 + (1 : F) * rho 123552)

def relationRow7971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123555) * ((1 : F) + (-1 : F) * rho 123553) = ((1 : F) * rho 123550 + (-1 : F) * rho 123551 + (-1 : F) * rho 123552)

def relationLc3487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 25⟩], residual := [((1 : F), 123554)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121179) * (relationLc3487 rho) = ((1 : F) * rho 123556)

def relationLc3488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 25⟩], residual := [((1 : F), 123555)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121179) * (relationLc3488 rho) = ((1 : F) * rho 123557)

def relationRow7974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123547) * ((1 : F) * rho 123548) = ((1 : F) * rho 123558)

def relationRow7975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123547) * ((1 : F) * rho 123547) = ((1 : F) * rho 123559)

def relationRow7976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123548) * ((1 : F) * rho 123548) = ((1 : F) * rho 123560)

def relationRow7977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123561) * ((-1 : F) * rho 123559 + (1 : F) * rho 123560) = ((2 : F) * rho 123558)

def relationRow7978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123562) * ((2 : F) + (1 : F) * rho 123559 + (-1 : F) * rho 123560) = ((1 : F) * rho 123559 + (1 : F) * rho 123560)

def relationLc3489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 26⟩, ⟨(1 : F), 123207, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3489 rho) = ((1 : F) * rho 123563)

def relationRow7980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123563) * ((1 : F) * rho 123561 + (1 : F) * rho 123562) = ((1 : F) * rho 123564)

def relationLc3490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123562) * (relationLc3490 rho) = ((1 : F) * rho 123565)

def relationLc3491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123561) * (relationLc3491 rho) = ((1 : F) * rho 123566)

def relationRow7983 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123565) * ((1 : F) * rho 123566) = ((1 : F) * rho 123567)

def relationRow7984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123568) * ((1 : F) + (1 : F) * rho 123567) = ((1 : F) * rho 123565 + (1 : F) * rho 123566)

def relationRow7985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123569) * ((1 : F) + (-1 : F) * rho 123567) = ((1 : F) * rho 123564 + (-1 : F) * rho 123565 + (-1 : F) * rho 123566)

def relationLc3492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 26⟩], residual := [((1 : F), 123568)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121180) * (relationLc3492 rho) = ((1 : F) * rho 123570)

def relationLc3493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 26⟩], residual := [((1 : F), 123569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121180) * (relationLc3493 rho) = ((1 : F) * rho 123571)

def relationRow7988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123561) * ((1 : F) * rho 123562) = ((1 : F) * rho 123572)

def relationRow7989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123561) * ((1 : F) * rho 123561) = ((1 : F) * rho 123573)

def relationRow7990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123562) * ((1 : F) * rho 123562) = ((1 : F) * rho 123574)

def relationRow7991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123575) * ((-1 : F) * rho 123573 + (1 : F) * rho 123574) = ((2 : F) * rho 123572)

def relationRow7992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123576) * ((2 : F) + (1 : F) * rho 123573 + (-1 : F) * rho 123574) = ((1 : F) * rho 123573 + (1 : F) * rho 123574)

def relationLc3494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 27⟩, ⟨(1 : F), 123207, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7993 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3494 rho) = ((1 : F) * rho 123577)

def relationRow7994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123577) * ((1 : F) * rho 123575 + (1 : F) * rho 123576) = ((1 : F) * rho 123578)

def relationLc3495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123576) * (relationLc3495 rho) = ((1 : F) * rho 123579)

def relationLc3496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123575) * (relationLc3496 rho) = ((1 : F) * rho 123580)

def relationRow7997 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123579) * ((1 : F) * rho 123580) = ((1 : F) * rho 123581)

def relationRow7998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123582) * ((1 : F) + (1 : F) * rho 123581) = ((1 : F) * rho 123579 + (1 : F) * rho 123580)

def relationRow7999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123583) * ((1 : F) + (-1 : F) * rho 123581) = ((1 : F) * rho 123578 + (-1 : F) * rho 123579 + (-1 : F) * rho 123580)

def relationLc3497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 27⟩], residual := [((1 : F), 123582)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121181) * (relationLc3497 rho) = ((1 : F) * rho 123584)

def relationLc3498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 27⟩], residual := [((1 : F), 123583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121181) * (relationLc3498 rho) = ((1 : F) * rho 123585)

def relationRow8002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123575) * ((1 : F) * rho 123576) = ((1 : F) * rho 123586)

def relationRow8003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123575) * ((1 : F) * rho 123575) = ((1 : F) * rho 123587)

def relationRow8004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123576) * ((1 : F) * rho 123576) = ((1 : F) * rho 123588)

def relationRow8005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123589) * ((-1 : F) * rho 123587 + (1 : F) * rho 123588) = ((2 : F) * rho 123586)

def relationRow8006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123590) * ((2 : F) + (1 : F) * rho 123587 + (-1 : F) * rho 123588) = ((1 : F) * rho 123587 + (1 : F) * rho 123588)

def relationLc3499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 28⟩, ⟨(1 : F), 123207, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3499 rho) = ((1 : F) * rho 123591)

def relationRow8008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123591) * ((1 : F) * rho 123589 + (1 : F) * rho 123590) = ((1 : F) * rho 123592)

def relationLc3500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123590) * (relationLc3500 rho) = ((1 : F) * rho 123593)

def relationLc3501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123589) * (relationLc3501 rho) = ((1 : F) * rho 123594)

def relationRow8011 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123593) * ((1 : F) * rho 123594) = ((1 : F) * rho 123595)

def relationRow8012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123596) * ((1 : F) + (1 : F) * rho 123595) = ((1 : F) * rho 123593 + (1 : F) * rho 123594)

def relationRow8013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123597) * ((1 : F) + (-1 : F) * rho 123595) = ((1 : F) * rho 123592 + (-1 : F) * rho 123593 + (-1 : F) * rho 123594)

def relationLc3502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 28⟩], residual := [((1 : F), 123596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121182) * (relationLc3502 rho) = ((1 : F) * rho 123598)

def relationLc3503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 28⟩], residual := [((1 : F), 123597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121182) * (relationLc3503 rho) = ((1 : F) * rho 123599)

def relationRow8016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123589) * ((1 : F) * rho 123590) = ((1 : F) * rho 123600)

def relationRow8017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123589) * ((1 : F) * rho 123589) = ((1 : F) * rho 123601)

def relationRow8018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123590) * ((1 : F) * rho 123590) = ((1 : F) * rho 123602)

def relationRow8019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123603) * ((-1 : F) * rho 123601 + (1 : F) * rho 123602) = ((2 : F) * rho 123600)

def relationRow8020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123604) * ((2 : F) + (1 : F) * rho 123601 + (-1 : F) * rho 123602) = ((1 : F) * rho 123601 + (1 : F) * rho 123602)

def relationLc3504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 29⟩, ⟨(1 : F), 123207, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3504 rho) = ((1 : F) * rho 123605)

def relationRow8022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123605) * ((1 : F) * rho 123603 + (1 : F) * rho 123604) = ((1 : F) * rho 123606)

def relationLc3505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123604) * (relationLc3505 rho) = ((1 : F) * rho 123607)

def relationLc3506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123603) * (relationLc3506 rho) = ((1 : F) * rho 123608)

def relationRow8025 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123607) * ((1 : F) * rho 123608) = ((1 : F) * rho 123609)

def relationRow8026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123610) * ((1 : F) + (1 : F) * rho 123609) = ((1 : F) * rho 123607 + (1 : F) * rho 123608)

def relationRow8027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123611) * ((1 : F) + (-1 : F) * rho 123609) = ((1 : F) * rho 123606 + (-1 : F) * rho 123607 + (-1 : F) * rho 123608)

def relationLc3507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 29⟩], residual := [((1 : F), 123610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121183) * (relationLc3507 rho) = ((1 : F) * rho 123612)

def relationLc3508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 29⟩], residual := [((1 : F), 123611)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121183) * (relationLc3508 rho) = ((1 : F) * rho 123613)

def relationRow8030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123603) * ((1 : F) * rho 123604) = ((1 : F) * rho 123614)

def relationRow8031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123603) * ((1 : F) * rho 123603) = ((1 : F) * rho 123615)

def relationRow8032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123604) * ((1 : F) * rho 123604) = ((1 : F) * rho 123616)

def relationRow8033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123617) * ((-1 : F) * rho 123615 + (1 : F) * rho 123616) = ((2 : F) * rho 123614)

def relationRow8034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123618) * ((2 : F) + (1 : F) * rho 123615 + (-1 : F) * rho 123616) = ((1 : F) * rho 123615 + (1 : F) * rho 123616)

def relationLc3509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 30⟩, ⟨(1 : F), 123207, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8035 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3509 rho) = ((1 : F) * rho 123619)

def relationRow8036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123619) * ((1 : F) * rho 123617 + (1 : F) * rho 123618) = ((1 : F) * rho 123620)

def relationLc3510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123618) * (relationLc3510 rho) = ((1 : F) * rho 123621)

def relationLc3511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123617) * (relationLc3511 rho) = ((1 : F) * rho 123622)

def relationRow8039 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123621) * ((1 : F) * rho 123622) = ((1 : F) * rho 123623)

def relationRow8040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123624) * ((1 : F) + (1 : F) * rho 123623) = ((1 : F) * rho 123621 + (1 : F) * rho 123622)

def relationRow8041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123625) * ((1 : F) + (-1 : F) * rho 123623) = ((1 : F) * rho 123620 + (-1 : F) * rho 123621 + (-1 : F) * rho 123622)

def relationLc3512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 30⟩], residual := [((1 : F), 123624)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121184) * (relationLc3512 rho) = ((1 : F) * rho 123626)

def relationLc3513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 30⟩], residual := [((1 : F), 123625)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121184) * (relationLc3513 rho) = ((1 : F) * rho 123627)

def relationRow8044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123617) * ((1 : F) * rho 123618) = ((1 : F) * rho 123628)

def relationRow8045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123617) * ((1 : F) * rho 123617) = ((1 : F) * rho 123629)

def relationRow8046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123618) * ((1 : F) * rho 123618) = ((1 : F) * rho 123630)

def relationRow8047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123631) * ((-1 : F) * rho 123629 + (1 : F) * rho 123630) = ((2 : F) * rho 123628)

def relationRow8048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123632) * ((2 : F) + (1 : F) * rho 123629 + (-1 : F) * rho 123630) = ((1 : F) * rho 123629 + (1 : F) * rho 123630)

def relationLc3514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 31⟩, ⟨(1 : F), 123207, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3514 rho) = ((1 : F) * rho 123633)

def relationRow8050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123633) * ((1 : F) * rho 123631 + (1 : F) * rho 123632) = ((1 : F) * rho 123634)

def relationLc3515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123632) * (relationLc3515 rho) = ((1 : F) * rho 123635)

def relationLc3516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123631) * (relationLc3516 rho) = ((1 : F) * rho 123636)

def relationRow8053 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123635) * ((1 : F) * rho 123636) = ((1 : F) * rho 123637)

def relationRow8054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123638) * ((1 : F) + (1 : F) * rho 123637) = ((1 : F) * rho 123635 + (1 : F) * rho 123636)

def relationRow8055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123639) * ((1 : F) + (-1 : F) * rho 123637) = ((1 : F) * rho 123634 + (-1 : F) * rho 123635 + (-1 : F) * rho 123636)

def relationLc3517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 31⟩], residual := [((1 : F), 123638)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121185) * (relationLc3517 rho) = ((1 : F) * rho 123640)

def relationLc3518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 31⟩], residual := [((1 : F), 123639)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121185) * (relationLc3518 rho) = ((1 : F) * rho 123641)

def relationRow8058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123631) * ((1 : F) * rho 123632) = ((1 : F) * rho 123642)

def relationRow8059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123631) * ((1 : F) * rho 123631) = ((1 : F) * rho 123643)

def relationRow8060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123632) * ((1 : F) * rho 123632) = ((1 : F) * rho 123644)

def relationRow8061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123645) * ((-1 : F) * rho 123643 + (1 : F) * rho 123644) = ((2 : F) * rho 123642)

def relationRow8062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123646) * ((2 : F) + (1 : F) * rho 123643 + (-1 : F) * rho 123644) = ((1 : F) * rho 123643 + (1 : F) * rho 123644)

def relationLc3519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 32⟩, ⟨(1 : F), 123207, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3519 rho) = ((1 : F) * rho 123647)

def relationRow8064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123647) * ((1 : F) * rho 123645 + (1 : F) * rho 123646) = ((1 : F) * rho 123648)

def relationLc3520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123646) * (relationLc3520 rho) = ((1 : F) * rho 123649)

def relationLc3521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123645) * (relationLc3521 rho) = ((1 : F) * rho 123650)

def relationRow8067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123649) * ((1 : F) * rho 123650) = ((1 : F) * rho 123651)

def relationRow8068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123652) * ((1 : F) + (1 : F) * rho 123651) = ((1 : F) * rho 123649 + (1 : F) * rho 123650)

def relationRow8069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123653) * ((1 : F) + (-1 : F) * rho 123651) = ((1 : F) * rho 123648 + (-1 : F) * rho 123649 + (-1 : F) * rho 123650)

def relationLc3522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 32⟩], residual := [((1 : F), 123652)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121186) * (relationLc3522 rho) = ((1 : F) * rho 123654)

def relationLc3523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 32⟩], residual := [((1 : F), 123653)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121186) * (relationLc3523 rho) = ((1 : F) * rho 123655)

def relationRow8072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123645) * ((1 : F) * rho 123646) = ((1 : F) * rho 123656)

def relationRow8073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123645) * ((1 : F) * rho 123645) = ((1 : F) * rho 123657)

def relationRow8074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123646) * ((1 : F) * rho 123646) = ((1 : F) * rho 123658)

def relationRow8075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123659) * ((-1 : F) * rho 123657 + (1 : F) * rho 123658) = ((2 : F) * rho 123656)

def relationRow8076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123660) * ((2 : F) + (1 : F) * rho 123657 + (-1 : F) * rho 123658) = ((1 : F) * rho 123657 + (1 : F) * rho 123658)

def relationLc3524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 33⟩, ⟨(1 : F), 123207, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8077 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3524 rho) = ((1 : F) * rho 123661)

def relationRow8078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123661) * ((1 : F) * rho 123659 + (1 : F) * rho 123660) = ((1 : F) * rho 123662)

def relationLc3525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123660) * (relationLc3525 rho) = ((1 : F) * rho 123663)

def relationLc3526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123659) * (relationLc3526 rho) = ((1 : F) * rho 123664)

def relationRow8081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123663) * ((1 : F) * rho 123664) = ((1 : F) * rho 123665)

def relationRow8082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123666) * ((1 : F) + (1 : F) * rho 123665) = ((1 : F) * rho 123663 + (1 : F) * rho 123664)

def relationRow8083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123667) * ((1 : F) + (-1 : F) * rho 123665) = ((1 : F) * rho 123662 + (-1 : F) * rho 123663 + (-1 : F) * rho 123664)

def relationLc3527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 33⟩], residual := [((1 : F), 123666)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121187) * (relationLc3527 rho) = ((1 : F) * rho 123668)

def relationLc3528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 33⟩], residual := [((1 : F), 123667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121187) * (relationLc3528 rho) = ((1 : F) * rho 123669)

def relationRow8086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123659) * ((1 : F) * rho 123660) = ((1 : F) * rho 123670)

def relationRow8087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123659) * ((1 : F) * rho 123659) = ((1 : F) * rho 123671)

def relationRow8088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123660) * ((1 : F) * rho 123660) = ((1 : F) * rho 123672)

def relationRow8089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123673) * ((-1 : F) * rho 123671 + (1 : F) * rho 123672) = ((2 : F) * rho 123670)

def relationRow8090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123674) * ((2 : F) + (1 : F) * rho 123671 + (-1 : F) * rho 123672) = ((1 : F) * rho 123671 + (1 : F) * rho 123672)

def relationLc3529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 34⟩, ⟨(1 : F), 123207, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8091 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3529 rho) = ((1 : F) * rho 123675)

def relationRow8092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123675) * ((1 : F) * rho 123673 + (1 : F) * rho 123674) = ((1 : F) * rho 123676)

def relationLc3530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123674) * (relationLc3530 rho) = ((1 : F) * rho 123677)

def relationLc3531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123673) * (relationLc3531 rho) = ((1 : F) * rho 123678)

def relationRow8095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123677) * ((1 : F) * rho 123678) = ((1 : F) * rho 123679)

def relationRow8096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123680) * ((1 : F) + (1 : F) * rho 123679) = ((1 : F) * rho 123677 + (1 : F) * rho 123678)

def relationRow8097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123681) * ((1 : F) + (-1 : F) * rho 123679) = ((1 : F) * rho 123676 + (-1 : F) * rho 123677 + (-1 : F) * rho 123678)

def relationLc3532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 34⟩], residual := [((1 : F), 123680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121188) * (relationLc3532 rho) = ((1 : F) * rho 123682)

def relationLc3533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 34⟩], residual := [((1 : F), 123681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121188) * (relationLc3533 rho) = ((1 : F) * rho 123683)

def relationRow8100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123673) * ((1 : F) * rho 123674) = ((1 : F) * rho 123684)

def relationRow8101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123673) * ((1 : F) * rho 123673) = ((1 : F) * rho 123685)

def relationRow8102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123674) * ((1 : F) * rho 123674) = ((1 : F) * rho 123686)

def relationRow8103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123687) * ((-1 : F) * rho 123685 + (1 : F) * rho 123686) = ((2 : F) * rho 123684)

def relationRow8104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123688) * ((2 : F) + (1 : F) * rho 123685 + (-1 : F) * rho 123686) = ((1 : F) * rho 123685 + (1 : F) * rho 123686)

def relationLc3534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 35⟩, ⟨(1 : F), 123207, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8105 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3534 rho) = ((1 : F) * rho 123689)

def relationRow8106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123689) * ((1 : F) * rho 123687 + (1 : F) * rho 123688) = ((1 : F) * rho 123690)

def relationLc3535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123688) * (relationLc3535 rho) = ((1 : F) * rho 123691)

def relationLc3536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123687) * (relationLc3536 rho) = ((1 : F) * rho 123692)

def relationRow8109 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123691) * ((1 : F) * rho 123692) = ((1 : F) * rho 123693)

def relationRow8110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123694) * ((1 : F) + (1 : F) * rho 123693) = ((1 : F) * rho 123691 + (1 : F) * rho 123692)

def relationRow8111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123695) * ((1 : F) + (-1 : F) * rho 123693) = ((1 : F) * rho 123690 + (-1 : F) * rho 123691 + (-1 : F) * rho 123692)

def relationLc3537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 35⟩], residual := [((1 : F), 123694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121189) * (relationLc3537 rho) = ((1 : F) * rho 123696)

def relationLc3538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 35⟩], residual := [((1 : F), 123695)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121189) * (relationLc3538 rho) = ((1 : F) * rho 123697)

def relationRow8114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123687) * ((1 : F) * rho 123688) = ((1 : F) * rho 123698)

def relationRow8115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123687) * ((1 : F) * rho 123687) = ((1 : F) * rho 123699)

def relationRow8116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123688) * ((1 : F) * rho 123688) = ((1 : F) * rho 123700)

def relationRow8117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123701) * ((-1 : F) * rho 123699 + (1 : F) * rho 123700) = ((2 : F) * rho 123698)

def relationRow8118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123702) * ((2 : F) + (1 : F) * rho 123699 + (-1 : F) * rho 123700) = ((1 : F) * rho 123699 + (1 : F) * rho 123700)

def relationLc3539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 36⟩, ⟨(1 : F), 123207, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8119 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3539 rho) = ((1 : F) * rho 123703)

def relationRow8120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123703) * ((1 : F) * rho 123701 + (1 : F) * rho 123702) = ((1 : F) * rho 123704)

def relationLc3540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123702) * (relationLc3540 rho) = ((1 : F) * rho 123705)

def relationLc3541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123701) * (relationLc3541 rho) = ((1 : F) * rho 123706)

def relationRow8123 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123705) * ((1 : F) * rho 123706) = ((1 : F) * rho 123707)

def relationRow8124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123708) * ((1 : F) + (1 : F) * rho 123707) = ((1 : F) * rho 123705 + (1 : F) * rho 123706)

def relationRow8125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123709) * ((1 : F) + (-1 : F) * rho 123707) = ((1 : F) * rho 123704 + (-1 : F) * rho 123705 + (-1 : F) * rho 123706)

def relationLc3542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 36⟩], residual := [((1 : F), 123708)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121190) * (relationLc3542 rho) = ((1 : F) * rho 123710)

def relationLc3543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 36⟩], residual := [((1 : F), 123709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121190) * (relationLc3543 rho) = ((1 : F) * rho 123711)

def relationRow8128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123701) * ((1 : F) * rho 123702) = ((1 : F) * rho 123712)

def relationRow8129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123701) * ((1 : F) * rho 123701) = ((1 : F) * rho 123713)

def relationRow8130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123702) * ((1 : F) * rho 123702) = ((1 : F) * rho 123714)

def relationRow8131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123715) * ((-1 : F) * rho 123713 + (1 : F) * rho 123714) = ((2 : F) * rho 123712)

def relationRow8132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123716) * ((2 : F) + (1 : F) * rho 123713 + (-1 : F) * rho 123714) = ((1 : F) * rho 123713 + (1 : F) * rho 123714)

def relationLc3544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 37⟩, ⟨(1 : F), 123207, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3544 rho) = ((1 : F) * rho 123717)

def relationRow8134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123717) * ((1 : F) * rho 123715 + (1 : F) * rho 123716) = ((1 : F) * rho 123718)

def relationLc3545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123716) * (relationLc3545 rho) = ((1 : F) * rho 123719)

def relationLc3546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123715) * (relationLc3546 rho) = ((1 : F) * rho 123720)

def relationRow8137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123719) * ((1 : F) * rho 123720) = ((1 : F) * rho 123721)

def relationRow8138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123722) * ((1 : F) + (1 : F) * rho 123721) = ((1 : F) * rho 123719 + (1 : F) * rho 123720)

def relationRow8139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123723) * ((1 : F) + (-1 : F) * rho 123721) = ((1 : F) * rho 123718 + (-1 : F) * rho 123719 + (-1 : F) * rho 123720)

def relationLc3547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 37⟩], residual := [((1 : F), 123722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121191) * (relationLc3547 rho) = ((1 : F) * rho 123724)

def relationLc3548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 37⟩], residual := [((1 : F), 123723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121191) * (relationLc3548 rho) = ((1 : F) * rho 123725)

def relationRow8142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123715) * ((1 : F) * rho 123716) = ((1 : F) * rho 123726)

def relationRow8143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123715) * ((1 : F) * rho 123715) = ((1 : F) * rho 123727)

def relationRow8144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123716) * ((1 : F) * rho 123716) = ((1 : F) * rho 123728)

def relationRow8145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123729) * ((-1 : F) * rho 123727 + (1 : F) * rho 123728) = ((2 : F) * rho 123726)

def relationRow8146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123730) * ((2 : F) + (1 : F) * rho 123727 + (-1 : F) * rho 123728) = ((1 : F) * rho 123727 + (1 : F) * rho 123728)

def relationLc3549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 38⟩, ⟨(1 : F), 123207, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8147 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3549 rho) = ((1 : F) * rho 123731)

def relationRow8148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123731) * ((1 : F) * rho 123729 + (1 : F) * rho 123730) = ((1 : F) * rho 123732)

def relationLc3550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123730) * (relationLc3550 rho) = ((1 : F) * rho 123733)

def relationLc3551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123729) * (relationLc3551 rho) = ((1 : F) * rho 123734)

def relationRow8151 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123733) * ((1 : F) * rho 123734) = ((1 : F) * rho 123735)

def relationRow8152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123736) * ((1 : F) + (1 : F) * rho 123735) = ((1 : F) * rho 123733 + (1 : F) * rho 123734)

def relationRow8153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123737) * ((1 : F) + (-1 : F) * rho 123735) = ((1 : F) * rho 123732 + (-1 : F) * rho 123733 + (-1 : F) * rho 123734)

def relationLc3552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 38⟩], residual := [((1 : F), 123736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121192) * (relationLc3552 rho) = ((1 : F) * rho 123738)

def relationLc3553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 38⟩], residual := [((1 : F), 123737)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121192) * (relationLc3553 rho) = ((1 : F) * rho 123739)

def relationRow8156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123729) * ((1 : F) * rho 123730) = ((1 : F) * rho 123740)

def relationRow8157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123729) * ((1 : F) * rho 123729) = ((1 : F) * rho 123741)

def relationRow8158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123730) * ((1 : F) * rho 123730) = ((1 : F) * rho 123742)

def relationRow8159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123743) * ((-1 : F) * rho 123741 + (1 : F) * rho 123742) = ((2 : F) * rho 123740)

def relationRow8160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123744) * ((2 : F) + (1 : F) * rho 123741 + (-1 : F) * rho 123742) = ((1 : F) * rho 123741 + (1 : F) * rho 123742)

def relationLc3554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 39⟩, ⟨(1 : F), 123207, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3554 rho) = ((1 : F) * rho 123745)

def relationRow8162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123745) * ((1 : F) * rho 123743 + (1 : F) * rho 123744) = ((1 : F) * rho 123746)

def relationLc3555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123744) * (relationLc3555 rho) = ((1 : F) * rho 123747)

def relationLc3556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123743) * (relationLc3556 rho) = ((1 : F) * rho 123748)

def relationRow8165 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123747) * ((1 : F) * rho 123748) = ((1 : F) * rho 123749)

def relationRow8166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123750) * ((1 : F) + (1 : F) * rho 123749) = ((1 : F) * rho 123747 + (1 : F) * rho 123748)

def relationRow8167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123751) * ((1 : F) + (-1 : F) * rho 123749) = ((1 : F) * rho 123746 + (-1 : F) * rho 123747 + (-1 : F) * rho 123748)

def relationLc3557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 39⟩], residual := [((1 : F), 123750)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121193) * (relationLc3557 rho) = ((1 : F) * rho 123752)

def relationLc3558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 39⟩], residual := [((1 : F), 123751)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121193) * (relationLc3558 rho) = ((1 : F) * rho 123753)

def relationRow8170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123743) * ((1 : F) * rho 123744) = ((1 : F) * rho 123754)

def relationRow8171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123743) * ((1 : F) * rho 123743) = ((1 : F) * rho 123755)

def relationRow8172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123744) * ((1 : F) * rho 123744) = ((1 : F) * rho 123756)

def relationRow8173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123757) * ((-1 : F) * rho 123755 + (1 : F) * rho 123756) = ((2 : F) * rho 123754)

def relationRow8174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123758) * ((2 : F) + (1 : F) * rho 123755 + (-1 : F) * rho 123756) = ((1 : F) * rho 123755 + (1 : F) * rho 123756)

def relationLc3559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 40⟩, ⟨(1 : F), 123207, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8175 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3559 rho) = ((1 : F) * rho 123759)

def relationRow8176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123759) * ((1 : F) * rho 123757 + (1 : F) * rho 123758) = ((1 : F) * rho 123760)

def relationLc3560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123758) * (relationLc3560 rho) = ((1 : F) * rho 123761)

def relationLc3561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123757) * (relationLc3561 rho) = ((1 : F) * rho 123762)

def relationRow8179 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123761) * ((1 : F) * rho 123762) = ((1 : F) * rho 123763)

def relationRow8180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123764) * ((1 : F) + (1 : F) * rho 123763) = ((1 : F) * rho 123761 + (1 : F) * rho 123762)

def relationRow8181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123765) * ((1 : F) + (-1 : F) * rho 123763) = ((1 : F) * rho 123760 + (-1 : F) * rho 123761 + (-1 : F) * rho 123762)

def relationLc3562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 40⟩], residual := [((1 : F), 123764)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121194) * (relationLc3562 rho) = ((1 : F) * rho 123766)

def relationLc3563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 40⟩], residual := [((1 : F), 123765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121194) * (relationLc3563 rho) = ((1 : F) * rho 123767)

def relationRow8184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123757) * ((1 : F) * rho 123758) = ((1 : F) * rho 123768)

def relationRow8185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123757) * ((1 : F) * rho 123757) = ((1 : F) * rho 123769)

def relationRow8186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123758) * ((1 : F) * rho 123758) = ((1 : F) * rho 123770)

def relationRow8187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123771) * ((-1 : F) * rho 123769 + (1 : F) * rho 123770) = ((2 : F) * rho 123768)

def relationRow8188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123772) * ((2 : F) + (1 : F) * rho 123769 + (-1 : F) * rho 123770) = ((1 : F) * rho 123769 + (1 : F) * rho 123770)

def relationLc3564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 41⟩, ⟨(1 : F), 123207, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8189 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3564 rho) = ((1 : F) * rho 123773)

def relationRow8190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123773) * ((1 : F) * rho 123771 + (1 : F) * rho 123772) = ((1 : F) * rho 123774)

def relationLc3565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123772) * (relationLc3565 rho) = ((1 : F) * rho 123775)

def relationLc3566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123771) * (relationLc3566 rho) = ((1 : F) * rho 123776)

def relationRow8193 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123775) * ((1 : F) * rho 123776) = ((1 : F) * rho 123777)

def relationRow8194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123778) * ((1 : F) + (1 : F) * rho 123777) = ((1 : F) * rho 123775 + (1 : F) * rho 123776)

def relationRow8195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123779) * ((1 : F) + (-1 : F) * rho 123777) = ((1 : F) * rho 123774 + (-1 : F) * rho 123775 + (-1 : F) * rho 123776)

def relationLc3567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 41⟩], residual := [((1 : F), 123778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121195) * (relationLc3567 rho) = ((1 : F) * rho 123780)

def relationLc3568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 41⟩], residual := [((1 : F), 123779)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121195) * (relationLc3568 rho) = ((1 : F) * rho 123781)

def relationRow8198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123771) * ((1 : F) * rho 123772) = ((1 : F) * rho 123782)

def relationRow8199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123771) * ((1 : F) * rho 123771) = ((1 : F) * rho 123783)

def relationRow8200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123772) * ((1 : F) * rho 123772) = ((1 : F) * rho 123784)

def relationRow8201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123785) * ((-1 : F) * rho 123783 + (1 : F) * rho 123784) = ((2 : F) * rho 123782)

def relationRow8202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123786) * ((2 : F) + (1 : F) * rho 123783 + (-1 : F) * rho 123784) = ((1 : F) * rho 123783 + (1 : F) * rho 123784)

def relationLc3569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 42⟩, ⟨(1 : F), 123207, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8203 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3569 rho) = ((1 : F) * rho 123787)

def relationRow8204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123787) * ((1 : F) * rho 123785 + (1 : F) * rho 123786) = ((1 : F) * rho 123788)

def relationLc3570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123786) * (relationLc3570 rho) = ((1 : F) * rho 123789)

def relationLc3571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123785) * (relationLc3571 rho) = ((1 : F) * rho 123790)

def relationRow8207 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123789) * ((1 : F) * rho 123790) = ((1 : F) * rho 123791)

def relationRow8208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123792) * ((1 : F) + (1 : F) * rho 123791) = ((1 : F) * rho 123789 + (1 : F) * rho 123790)

def relationRow8209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123793) * ((1 : F) + (-1 : F) * rho 123791) = ((1 : F) * rho 123788 + (-1 : F) * rho 123789 + (-1 : F) * rho 123790)

def relationLc3572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 42⟩], residual := [((1 : F), 123792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121196) * (relationLc3572 rho) = ((1 : F) * rho 123794)

def relationLc3573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 42⟩], residual := [((1 : F), 123793)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121196) * (relationLc3573 rho) = ((1 : F) * rho 123795)

def relationRow8212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123785) * ((1 : F) * rho 123786) = ((1 : F) * rho 123796)

def relationRow8213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123785) * ((1 : F) * rho 123785) = ((1 : F) * rho 123797)

def relationRow8214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123786) * ((1 : F) * rho 123786) = ((1 : F) * rho 123798)

def relationRow8215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123799) * ((-1 : F) * rho 123797 + (1 : F) * rho 123798) = ((2 : F) * rho 123796)

def relationRow8216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123800) * ((2 : F) + (1 : F) * rho 123797 + (-1 : F) * rho 123798) = ((1 : F) * rho 123797 + (1 : F) * rho 123798)

def relationLc3574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 43⟩, ⟨(1 : F), 123207, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8217 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3574 rho) = ((1 : F) * rho 123801)

def relationRow8218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123801) * ((1 : F) * rho 123799 + (1 : F) * rho 123800) = ((1 : F) * rho 123802)

def relationLc3575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123800) * (relationLc3575 rho) = ((1 : F) * rho 123803)

def relationLc3576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123799) * (relationLc3576 rho) = ((1 : F) * rho 123804)

def relationRow8221 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123803) * ((1 : F) * rho 123804) = ((1 : F) * rho 123805)

def relationRow8222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123806) * ((1 : F) + (1 : F) * rho 123805) = ((1 : F) * rho 123803 + (1 : F) * rho 123804)

def relationRow8223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123807) * ((1 : F) + (-1 : F) * rho 123805) = ((1 : F) * rho 123802 + (-1 : F) * rho 123803 + (-1 : F) * rho 123804)

def relationLc3577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 43⟩], residual := [((1 : F), 123806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121197) * (relationLc3577 rho) = ((1 : F) * rho 123808)

def relationLc3578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 43⟩], residual := [((1 : F), 123807)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121197) * (relationLc3578 rho) = ((1 : F) * rho 123809)

def relationRow8226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123799) * ((1 : F) * rho 123800) = ((1 : F) * rho 123810)

def relationRow8227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123799) * ((1 : F) * rho 123799) = ((1 : F) * rho 123811)

def relationRow8228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123800) * ((1 : F) * rho 123800) = ((1 : F) * rho 123812)

def relationRow8229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123813) * ((-1 : F) * rho 123811 + (1 : F) * rho 123812) = ((2 : F) * rho 123810)

def relationRow8230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123814) * ((2 : F) + (1 : F) * rho 123811 + (-1 : F) * rho 123812) = ((1 : F) * rho 123811 + (1 : F) * rho 123812)

def relationLc3579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 44⟩, ⟨(1 : F), 123207, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8231 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3579 rho) = ((1 : F) * rho 123815)

def relationRow8232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123815) * ((1 : F) * rho 123813 + (1 : F) * rho 123814) = ((1 : F) * rho 123816)

def relationLc3580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123814) * (relationLc3580 rho) = ((1 : F) * rho 123817)

def relationLc3581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123813) * (relationLc3581 rho) = ((1 : F) * rho 123818)

def relationRow8235 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123817) * ((1 : F) * rho 123818) = ((1 : F) * rho 123819)

def relationRow8236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123820) * ((1 : F) + (1 : F) * rho 123819) = ((1 : F) * rho 123817 + (1 : F) * rho 123818)

def relationRow8237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123821) * ((1 : F) + (-1 : F) * rho 123819) = ((1 : F) * rho 123816 + (-1 : F) * rho 123817 + (-1 : F) * rho 123818)

def relationLc3582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 44⟩], residual := [((1 : F), 123820)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121198) * (relationLc3582 rho) = ((1 : F) * rho 123822)

def relationLc3583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 44⟩], residual := [((1 : F), 123821)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121198) * (relationLc3583 rho) = ((1 : F) * rho 123823)

def relationRow8240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123813) * ((1 : F) * rho 123814) = ((1 : F) * rho 123824)

def relationRow8241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123813) * ((1 : F) * rho 123813) = ((1 : F) * rho 123825)

def relationRow8242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123814) * ((1 : F) * rho 123814) = ((1 : F) * rho 123826)

def relationRow8243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123827) * ((-1 : F) * rho 123825 + (1 : F) * rho 123826) = ((2 : F) * rho 123824)

def relationRow8244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123828) * ((2 : F) + (1 : F) * rho 123825 + (-1 : F) * rho 123826) = ((1 : F) * rho 123825 + (1 : F) * rho 123826)

def relationLc3584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 45⟩, ⟨(1 : F), 123207, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8245 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3584 rho) = ((1 : F) * rho 123829)

def relationRow8246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123829) * ((1 : F) * rho 123827 + (1 : F) * rho 123828) = ((1 : F) * rho 123830)

def relationLc3585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123828) * (relationLc3585 rho) = ((1 : F) * rho 123831)

def relationLc3586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123827) * (relationLc3586 rho) = ((1 : F) * rho 123832)

def relationRow8249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123831) * ((1 : F) * rho 123832) = ((1 : F) * rho 123833)

def relationRow8250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123834) * ((1 : F) + (1 : F) * rho 123833) = ((1 : F) * rho 123831 + (1 : F) * rho 123832)

def relationRow8251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123835) * ((1 : F) + (-1 : F) * rho 123833) = ((1 : F) * rho 123830 + (-1 : F) * rho 123831 + (-1 : F) * rho 123832)

def relationLc3587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 45⟩], residual := [((1 : F), 123834)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121199) * (relationLc3587 rho) = ((1 : F) * rho 123836)

def relationLc3588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 45⟩], residual := [((1 : F), 123835)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121199) * (relationLc3588 rho) = ((1 : F) * rho 123837)

def relationRow8254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123827) * ((1 : F) * rho 123828) = ((1 : F) * rho 123838)

def relationRow8255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123827) * ((1 : F) * rho 123827) = ((1 : F) * rho 123839)

def relationRow8256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123828) * ((1 : F) * rho 123828) = ((1 : F) * rho 123840)

def relationRow8257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123841) * ((-1 : F) * rho 123839 + (1 : F) * rho 123840) = ((2 : F) * rho 123838)

def relationRow8258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123842) * ((2 : F) + (1 : F) * rho 123839 + (-1 : F) * rho 123840) = ((1 : F) * rho 123839 + (1 : F) * rho 123840)

def relationLc3589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 46⟩, ⟨(1 : F), 123207, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8259 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3589 rho) = ((1 : F) * rho 123843)

def relationRow8260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123843) * ((1 : F) * rho 123841 + (1 : F) * rho 123842) = ((1 : F) * rho 123844)

def relationLc3590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123842) * (relationLc3590 rho) = ((1 : F) * rho 123845)

def relationLc3591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123841) * (relationLc3591 rho) = ((1 : F) * rho 123846)

def relationRow8263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123845) * ((1 : F) * rho 123846) = ((1 : F) * rho 123847)

def relationRow8264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123848) * ((1 : F) + (1 : F) * rho 123847) = ((1 : F) * rho 123845 + (1 : F) * rho 123846)

def relationRow8265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123849) * ((1 : F) + (-1 : F) * rho 123847) = ((1 : F) * rho 123844 + (-1 : F) * rho 123845 + (-1 : F) * rho 123846)

def relationLc3592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 46⟩], residual := [((1 : F), 123848)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121200) * (relationLc3592 rho) = ((1 : F) * rho 123850)

def relationLc3593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 46⟩], residual := [((1 : F), 123849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121200) * (relationLc3593 rho) = ((1 : F) * rho 123851)

def relationRow8268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123841) * ((1 : F) * rho 123842) = ((1 : F) * rho 123852)

def relationRow8269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123841) * ((1 : F) * rho 123841) = ((1 : F) * rho 123853)

def relationRow8270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123842) * ((1 : F) * rho 123842) = ((1 : F) * rho 123854)

def relationRow8271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123855) * ((-1 : F) * rho 123853 + (1 : F) * rho 123854) = ((2 : F) * rho 123852)

def relationRow8272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123856) * ((2 : F) + (1 : F) * rho 123853 + (-1 : F) * rho 123854) = ((1 : F) * rho 123853 + (1 : F) * rho 123854)

def relationLc3594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 47⟩, ⟨(1 : F), 123207, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8273 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3594 rho) = ((1 : F) * rho 123857)

def relationRow8274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123857) * ((1 : F) * rho 123855 + (1 : F) * rho 123856) = ((1 : F) * rho 123858)

def relationLc3595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123856) * (relationLc3595 rho) = ((1 : F) * rho 123859)

def relationLc3596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123855) * (relationLc3596 rho) = ((1 : F) * rho 123860)

def relationRow8277 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123859) * ((1 : F) * rho 123860) = ((1 : F) * rho 123861)

def relationRow8278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123862) * ((1 : F) + (1 : F) * rho 123861) = ((1 : F) * rho 123859 + (1 : F) * rho 123860)

def relationRow8279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123863) * ((1 : F) + (-1 : F) * rho 123861) = ((1 : F) * rho 123858 + (-1 : F) * rho 123859 + (-1 : F) * rho 123860)

def relationLc3597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 47⟩], residual := [((1 : F), 123862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121201) * (relationLc3597 rho) = ((1 : F) * rho 123864)

def relationLc3598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 47⟩], residual := [((1 : F), 123863)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121201) * (relationLc3598 rho) = ((1 : F) * rho 123865)

def relationRow8282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123855) * ((1 : F) * rho 123856) = ((1 : F) * rho 123866)

def relationRow8283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123855) * ((1 : F) * rho 123855) = ((1 : F) * rho 123867)

def relationRow8284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123856) * ((1 : F) * rho 123856) = ((1 : F) * rho 123868)

def relationRow8285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123869) * ((-1 : F) * rho 123867 + (1 : F) * rho 123868) = ((2 : F) * rho 123866)

def relationRow8286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123870) * ((2 : F) + (1 : F) * rho 123867 + (-1 : F) * rho 123868) = ((1 : F) * rho 123867 + (1 : F) * rho 123868)

def relationLc3599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 48⟩, ⟨(1 : F), 123207, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8287 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3599 rho) = ((1 : F) * rho 123871)

def relationRow8288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123871) * ((1 : F) * rho 123869 + (1 : F) * rho 123870) = ((1 : F) * rho 123872)

def relationLc3600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123870) * (relationLc3600 rho) = ((1 : F) * rho 123873)

def relationLc3601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123869) * (relationLc3601 rho) = ((1 : F) * rho 123874)

def relationRow8291 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123873) * ((1 : F) * rho 123874) = ((1 : F) * rho 123875)

def relationRow8292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123876) * ((1 : F) + (1 : F) * rho 123875) = ((1 : F) * rho 123873 + (1 : F) * rho 123874)

def relationRow8293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123877) * ((1 : F) + (-1 : F) * rho 123875) = ((1 : F) * rho 123872 + (-1 : F) * rho 123873 + (-1 : F) * rho 123874)

def relationLc3602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 48⟩], residual := [((1 : F), 123876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121202) * (relationLc3602 rho) = ((1 : F) * rho 123878)

def relationLc3603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 48⟩], residual := [((1 : F), 123877)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121202) * (relationLc3603 rho) = ((1 : F) * rho 123879)

def relationRow8296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123869) * ((1 : F) * rho 123870) = ((1 : F) * rho 123880)

def relationRow8297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123869) * ((1 : F) * rho 123869) = ((1 : F) * rho 123881)

def relationRow8298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123870) * ((1 : F) * rho 123870) = ((1 : F) * rho 123882)

def relationRow8299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123883) * ((-1 : F) * rho 123881 + (1 : F) * rho 123882) = ((2 : F) * rho 123880)

def relationRow8300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123884) * ((2 : F) + (1 : F) * rho 123881 + (-1 : F) * rho 123882) = ((1 : F) * rho 123881 + (1 : F) * rho 123882)

def relationLc3604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 49⟩, ⟨(1 : F), 123207, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8301 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3604 rho) = ((1 : F) * rho 123885)

def relationRow8302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123885) * ((1 : F) * rho 123883 + (1 : F) * rho 123884) = ((1 : F) * rho 123886)

def relationLc3605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123884) * (relationLc3605 rho) = ((1 : F) * rho 123887)

def relationLc3606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123883) * (relationLc3606 rho) = ((1 : F) * rho 123888)

def relationRow8305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123887) * ((1 : F) * rho 123888) = ((1 : F) * rho 123889)

def relationRow8306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123890) * ((1 : F) + (1 : F) * rho 123889) = ((1 : F) * rho 123887 + (1 : F) * rho 123888)

def relationRow8307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123891) * ((1 : F) + (-1 : F) * rho 123889) = ((1 : F) * rho 123886 + (-1 : F) * rho 123887 + (-1 : F) * rho 123888)

def relationLc3607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 49⟩], residual := [((1 : F), 123890)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121203) * (relationLc3607 rho) = ((1 : F) * rho 123892)

def relationLc3608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 49⟩], residual := [((1 : F), 123891)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121203) * (relationLc3608 rho) = ((1 : F) * rho 123893)

def relationRow8310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123883) * ((1 : F) * rho 123884) = ((1 : F) * rho 123894)

def relationRow8311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123883) * ((1 : F) * rho 123883) = ((1 : F) * rho 123895)

def relationRow8312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123884) * ((1 : F) * rho 123884) = ((1 : F) * rho 123896)

def relationRow8313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123897) * ((-1 : F) * rho 123895 + (1 : F) * rho 123896) = ((2 : F) * rho 123894)

def relationRow8314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123898) * ((2 : F) + (1 : F) * rho 123895 + (-1 : F) * rho 123896) = ((1 : F) * rho 123895 + (1 : F) * rho 123896)

def relationLc3609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 50⟩, ⟨(1 : F), 123207, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8315 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3609 rho) = ((1 : F) * rho 123899)

def relationRow8316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123899) * ((1 : F) * rho 123897 + (1 : F) * rho 123898) = ((1 : F) * rho 123900)

def relationLc3610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123898) * (relationLc3610 rho) = ((1 : F) * rho 123901)

def relationLc3611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123897) * (relationLc3611 rho) = ((1 : F) * rho 123902)

def relationRow8319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123901) * ((1 : F) * rho 123902) = ((1 : F) * rho 123903)

def relationRow8320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123904) * ((1 : F) + (1 : F) * rho 123903) = ((1 : F) * rho 123901 + (1 : F) * rho 123902)

def relationRow8321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123905) * ((1 : F) + (-1 : F) * rho 123903) = ((1 : F) * rho 123900 + (-1 : F) * rho 123901 + (-1 : F) * rho 123902)

def relationLc3612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 50⟩], residual := [((1 : F), 123904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121204) * (relationLc3612 rho) = ((1 : F) * rho 123906)

def relationLc3613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 50⟩], residual := [((1 : F), 123905)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121204) * (relationLc3613 rho) = ((1 : F) * rho 123907)

def relationRow8324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123897) * ((1 : F) * rho 123898) = ((1 : F) * rho 123908)

def relationRow8325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123897) * ((1 : F) * rho 123897) = ((1 : F) * rho 123909)

def relationRow8326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123898) * ((1 : F) * rho 123898) = ((1 : F) * rho 123910)

def relationRow8327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123911) * ((-1 : F) * rho 123909 + (1 : F) * rho 123910) = ((2 : F) * rho 123908)

def relationRow8328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123912) * ((2 : F) + (1 : F) * rho 123909 + (-1 : F) * rho 123910) = ((1 : F) * rho 123909 + (1 : F) * rho 123910)

def relationLc3614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 51⟩, ⟨(1 : F), 123207, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8329 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3614 rho) = ((1 : F) * rho 123913)

def relationRow8330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123913) * ((1 : F) * rho 123911 + (1 : F) * rho 123912) = ((1 : F) * rho 123914)

def relationLc3615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123912) * (relationLc3615 rho) = ((1 : F) * rho 123915)

def relationLc3616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123911) * (relationLc3616 rho) = ((1 : F) * rho 123916)

def relationRow8333 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123915) * ((1 : F) * rho 123916) = ((1 : F) * rho 123917)

def relationRow8334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123918) * ((1 : F) + (1 : F) * rho 123917) = ((1 : F) * rho 123915 + (1 : F) * rho 123916)

def relationRow8335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123919) * ((1 : F) + (-1 : F) * rho 123917) = ((1 : F) * rho 123914 + (-1 : F) * rho 123915 + (-1 : F) * rho 123916)

def relationLc3617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 51⟩], residual := [((1 : F), 123918)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121205) * (relationLc3617 rho) = ((1 : F) * rho 123920)

def relationLc3618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 51⟩], residual := [((1 : F), 123919)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121205) * (relationLc3618 rho) = ((1 : F) * rho 123921)

def relationRow8338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123911) * ((1 : F) * rho 123912) = ((1 : F) * rho 123922)

def relationRow8339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123911) * ((1 : F) * rho 123911) = ((1 : F) * rho 123923)

def relationRow8340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123912) * ((1 : F) * rho 123912) = ((1 : F) * rho 123924)

def relationRow8341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123925) * ((-1 : F) * rho 123923 + (1 : F) * rho 123924) = ((2 : F) * rho 123922)

def relationRow8342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123926) * ((2 : F) + (1 : F) * rho 123923 + (-1 : F) * rho 123924) = ((1 : F) * rho 123923 + (1 : F) * rho 123924)

def relationLc3619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 52⟩, ⟨(1 : F), 123207, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8343 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3619 rho) = ((1 : F) * rho 123927)

def relationRow8344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123927) * ((1 : F) * rho 123925 + (1 : F) * rho 123926) = ((1 : F) * rho 123928)

def relationLc3620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123926) * (relationLc3620 rho) = ((1 : F) * rho 123929)

def relationLc3621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123925) * (relationLc3621 rho) = ((1 : F) * rho 123930)

def relationRow8347 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123929) * ((1 : F) * rho 123930) = ((1 : F) * rho 123931)

def relationRow8348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123932) * ((1 : F) + (1 : F) * rho 123931) = ((1 : F) * rho 123929 + (1 : F) * rho 123930)

def relationRow8349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123933) * ((1 : F) + (-1 : F) * rho 123931) = ((1 : F) * rho 123928 + (-1 : F) * rho 123929 + (-1 : F) * rho 123930)

def relationLc3622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 52⟩], residual := [((1 : F), 123932)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121206) * (relationLc3622 rho) = ((1 : F) * rho 123934)

def relationLc3623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 52⟩], residual := [((1 : F), 123933)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121206) * (relationLc3623 rho) = ((1 : F) * rho 123935)

def relationRow8352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123925) * ((1 : F) * rho 123926) = ((1 : F) * rho 123936)

def relationRow8353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123925) * ((1 : F) * rho 123925) = ((1 : F) * rho 123937)

def relationRow8354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123926) * ((1 : F) * rho 123926) = ((1 : F) * rho 123938)

def relationRow8355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123939) * ((-1 : F) * rho 123937 + (1 : F) * rho 123938) = ((2 : F) * rho 123936)

def relationRow8356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123940) * ((2 : F) + (1 : F) * rho 123937 + (-1 : F) * rho 123938) = ((1 : F) * rho 123937 + (1 : F) * rho 123938)

def relationLc3624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 53⟩, ⟨(1 : F), 123207, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8357 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3624 rho) = ((1 : F) * rho 123941)

def relationRow8358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123941) * ((1 : F) * rho 123939 + (1 : F) * rho 123940) = ((1 : F) * rho 123942)

def relationLc3625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123940) * (relationLc3625 rho) = ((1 : F) * rho 123943)

def relationLc3626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123939) * (relationLc3626 rho) = ((1 : F) * rho 123944)

def relationRow8361 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123943) * ((1 : F) * rho 123944) = ((1 : F) * rho 123945)

def relationRow8362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123946) * ((1 : F) + (1 : F) * rho 123945) = ((1 : F) * rho 123943 + (1 : F) * rho 123944)

def relationRow8363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123947) * ((1 : F) + (-1 : F) * rho 123945) = ((1 : F) * rho 123942 + (-1 : F) * rho 123943 + (-1 : F) * rho 123944)

def relationLc3627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 53⟩], residual := [((1 : F), 123946)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121207) * (relationLc3627 rho) = ((1 : F) * rho 123948)

def relationLc3628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 53⟩], residual := [((1 : F), 123947)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121207) * (relationLc3628 rho) = ((1 : F) * rho 123949)

def relationRow8366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123939) * ((1 : F) * rho 123940) = ((1 : F) * rho 123950)

def relationRow8367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123939) * ((1 : F) * rho 123939) = ((1 : F) * rho 123951)

def relationRow8368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123940) * ((1 : F) * rho 123940) = ((1 : F) * rho 123952)

def relationRow8369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123953) * ((-1 : F) * rho 123951 + (1 : F) * rho 123952) = ((2 : F) * rho 123950)

def relationRow8370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123954) * ((2 : F) + (1 : F) * rho 123951 + (-1 : F) * rho 123952) = ((1 : F) * rho 123951 + (1 : F) * rho 123952)

def relationLc3629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 54⟩, ⟨(1 : F), 123207, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8371 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3629 rho) = ((1 : F) * rho 123955)

def relationRow8372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123955) * ((1 : F) * rho 123953 + (1 : F) * rho 123954) = ((1 : F) * rho 123956)

def relationLc3630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123954) * (relationLc3630 rho) = ((1 : F) * rho 123957)

def relationLc3631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123953) * (relationLc3631 rho) = ((1 : F) * rho 123958)

def relationRow8375 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123957) * ((1 : F) * rho 123958) = ((1 : F) * rho 123959)

def relationRow8376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123960) * ((1 : F) + (1 : F) * rho 123959) = ((1 : F) * rho 123957 + (1 : F) * rho 123958)

def relationRow8377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123961) * ((1 : F) + (-1 : F) * rho 123959) = ((1 : F) * rho 123956 + (-1 : F) * rho 123957 + (-1 : F) * rho 123958)

def relationLc3632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 54⟩], residual := [((1 : F), 123960)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121208) * (relationLc3632 rho) = ((1 : F) * rho 123962)

def relationLc3633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 54⟩], residual := [((1 : F), 123961)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121208) * (relationLc3633 rho) = ((1 : F) * rho 123963)

def relationRow8380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123953) * ((1 : F) * rho 123954) = ((1 : F) * rho 123964)

def relationRow8381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123953) * ((1 : F) * rho 123953) = ((1 : F) * rho 123965)

def relationRow8382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123954) * ((1 : F) * rho 123954) = ((1 : F) * rho 123966)

def relationRow8383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123967) * ((-1 : F) * rho 123965 + (1 : F) * rho 123966) = ((2 : F) * rho 123964)

def relationRow8384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123968) * ((2 : F) + (1 : F) * rho 123965 + (-1 : F) * rho 123966) = ((1 : F) * rho 123965 + (1 : F) * rho 123966)

def relationLc3634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 55⟩, ⟨(1 : F), 123207, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8385 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3634 rho) = ((1 : F) * rho 123969)

def relationRow8386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123969) * ((1 : F) * rho 123967 + (1 : F) * rho 123968) = ((1 : F) * rho 123970)

def relationLc3635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123968) * (relationLc3635 rho) = ((1 : F) * rho 123971)

def relationLc3636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123967) * (relationLc3636 rho) = ((1 : F) * rho 123972)

def relationRow8389 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123971) * ((1 : F) * rho 123972) = ((1 : F) * rho 123973)

def relationRow8390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123974) * ((1 : F) + (1 : F) * rho 123973) = ((1 : F) * rho 123971 + (1 : F) * rho 123972)

def relationRow8391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123975) * ((1 : F) + (-1 : F) * rho 123973) = ((1 : F) * rho 123970 + (-1 : F) * rho 123971 + (-1 : F) * rho 123972)

def relationLc3637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 55⟩], residual := [((1 : F), 123974)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121209) * (relationLc3637 rho) = ((1 : F) * rho 123976)

def relationLc3638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 55⟩], residual := [((1 : F), 123975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121209) * (relationLc3638 rho) = ((1 : F) * rho 123977)

def relationRow8394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123967) * ((1 : F) * rho 123968) = ((1 : F) * rho 123978)

def relationRow8395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123967) * ((1 : F) * rho 123967) = ((1 : F) * rho 123979)

def relationRow8396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123968) * ((1 : F) * rho 123968) = ((1 : F) * rho 123980)

def relationRow8397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123981) * ((-1 : F) * rho 123979 + (1 : F) * rho 123980) = ((2 : F) * rho 123978)

def relationRow8398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123982) * ((2 : F) + (1 : F) * rho 123979 + (-1 : F) * rho 123980) = ((1 : F) * rho 123979 + (1 : F) * rho 123980)

def relationLc3639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 56⟩, ⟨(1 : F), 123207, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8399 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3639 rho) = ((1 : F) * rho 123983)

def relationRow8400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123983) * ((1 : F) * rho 123981 + (1 : F) * rho 123982) = ((1 : F) * rho 123984)

def relationLc3640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123982) * (relationLc3640 rho) = ((1 : F) * rho 123985)

def relationLc3641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123981) * (relationLc3641 rho) = ((1 : F) * rho 123986)

def relationRow8403 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123985) * ((1 : F) * rho 123986) = ((1 : F) * rho 123987)

def relationRow8404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123988) * ((1 : F) + (1 : F) * rho 123987) = ((1 : F) * rho 123985 + (1 : F) * rho 123986)

def relationRow8405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123989) * ((1 : F) + (-1 : F) * rho 123987) = ((1 : F) * rho 123984 + (-1 : F) * rho 123985 + (-1 : F) * rho 123986)

def relationLc3642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 56⟩], residual := [((1 : F), 123988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121210) * (relationLc3642 rho) = ((1 : F) * rho 123990)

def relationLc3643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 56⟩], residual := [((1 : F), 123989)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121210) * (relationLc3643 rho) = ((1 : F) * rho 123991)

def relationRow8408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123981) * ((1 : F) * rho 123982) = ((1 : F) * rho 123992)

def relationRow8409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123981) * ((1 : F) * rho 123981) = ((1 : F) * rho 123993)

def relationRow8410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123982) * ((1 : F) * rho 123982) = ((1 : F) * rho 123994)

def relationRow8411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123995) * ((-1 : F) * rho 123993 + (1 : F) * rho 123994) = ((2 : F) * rho 123992)

def relationRow8412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123996) * ((2 : F) + (1 : F) * rho 123993 + (-1 : F) * rho 123994) = ((1 : F) * rho 123993 + (1 : F) * rho 123994)

def relationLc3644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 57⟩, ⟨(1 : F), 123207, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8413 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3644 rho) = ((1 : F) * rho 123997)

def relationRow8414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123997) * ((1 : F) * rho 123995 + (1 : F) * rho 123996) = ((1 : F) * rho 123998)

def relationLc3645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123996) * (relationLc3645 rho) = ((1 : F) * rho 123999)

def relationLc3646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123995) * (relationLc3646 rho) = ((1 : F) * rho 124000)

def relationRow8417 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123999) * ((1 : F) * rho 124000) = ((1 : F) * rho 124001)

def relationRow8418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124002) * ((1 : F) + (1 : F) * rho 124001) = ((1 : F) * rho 123999 + (1 : F) * rho 124000)

def relationRow8419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124003) * ((1 : F) + (-1 : F) * rho 124001) = ((1 : F) * rho 123998 + (-1 : F) * rho 123999 + (-1 : F) * rho 124000)

def relationLc3647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 57⟩], residual := [((1 : F), 124002)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow8420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121211) * (relationLc3647 rho) = ((1 : F) * rho 124004)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
