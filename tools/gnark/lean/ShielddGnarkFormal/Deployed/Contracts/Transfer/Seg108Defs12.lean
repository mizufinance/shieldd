import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs11

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationRow3876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110430) * (relationLc2134 rho) = ((1 : F) * rho 110432)

def relationLc2135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110429) * (relationLc2135 rho) = ((1 : F) * rho 110433)

def relationRow3878 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110432) * ((1 : F) * rho 110433) = ((1 : F) * rho 110434)

def relationRow3879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110435) * ((1 : F) + (1 : F) * rho 110434) = ((1 : F) * rho 110432 + (1 : F) * rho 110433)

def relationRow3880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110436) * ((1 : F) + (-1 : F) * rho 110434) = ((1 : F) * rho 110431 + (-1 : F) * rho 110432 + (-1 : F) * rho 110433)

def relationLc2136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 140⟩], residual := [((1 : F), 110435)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108505) * (relationLc2136 rho) = ((1 : F) * rho 110437)

def relationLc2137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 140⟩], residual := [((1 : F), 110436)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108505) * (relationLc2137 rho) = ((1 : F) * rho 110438)

def relationRow3883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110429) * ((1 : F) * rho 110430) = ((1 : F) * rho 110439)

def relationRow3884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110429) * ((1 : F) * rho 110429) = ((1 : F) * rho 110440)

def relationRow3885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110430) * ((1 : F) * rho 110430) = ((1 : F) * rho 110441)

def relationRow3886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110442) * ((-1 : F) * rho 110440 + (1 : F) * rho 110441) = ((2 : F) * rho 110439)

def relationRow3887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110443) * ((2 : F) + (1 : F) * rho 110440 + (-1 : F) * rho 110441) = ((1 : F) * rho 110440 + (1 : F) * rho 110441)

def relationLc2138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 141⟩, ⟨(1 : F), 108618, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110442 + (1 : F) * rho 110443) * (relationLc2138 rho) = ((1 : F) * rho 110444)

def relationLc2139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110443) * (relationLc2139 rho) = ((1 : F) * rho 110445)

def relationLc2140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110442) * (relationLc2140 rho) = ((1 : F) * rho 110446)

def relationRow3891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110445) * ((1 : F) * rho 110446) = ((1 : F) * rho 110447)

def relationRow3892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110448) * ((1 : F) + (1 : F) * rho 110447) = ((1 : F) * rho 110445 + (1 : F) * rho 110446)

def relationRow3893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110449) * ((1 : F) + (-1 : F) * rho 110447) = ((1 : F) * rho 110444 + (-1 : F) * rho 110445 + (-1 : F) * rho 110446)

def relationLc2141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 141⟩], residual := [((1 : F), 110448)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108506) * (relationLc2141 rho) = ((1 : F) * rho 110450)

def relationLc2142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 141⟩], residual := [((1 : F), 110449)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108506) * (relationLc2142 rho) = ((1 : F) * rho 110451)

def relationRow3896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110442) * ((1 : F) * rho 110443) = ((1 : F) * rho 110452)

def relationRow3897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110442) * ((1 : F) * rho 110442) = ((1 : F) * rho 110453)

def relationRow3898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110443) * ((1 : F) * rho 110443) = ((1 : F) * rho 110454)

def relationRow3899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110455) * ((-1 : F) * rho 110453 + (1 : F) * rho 110454) = ((2 : F) * rho 110452)

def relationRow3900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110456) * ((2 : F) + (1 : F) * rho 110453 + (-1 : F) * rho 110454) = ((1 : F) * rho 110453 + (1 : F) * rho 110454)

def relationLc2143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 142⟩, ⟨(1 : F), 108618, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110455 + (1 : F) * rho 110456) * (relationLc2143 rho) = ((1 : F) * rho 110457)

def relationLc2144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110456) * (relationLc2144 rho) = ((1 : F) * rho 110458)

def relationLc2145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110455) * (relationLc2145 rho) = ((1 : F) * rho 110459)

def relationRow3904 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110458) * ((1 : F) * rho 110459) = ((1 : F) * rho 110460)

def relationRow3905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110461) * ((1 : F) + (1 : F) * rho 110460) = ((1 : F) * rho 110458 + (1 : F) * rho 110459)

def relationRow3906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110462) * ((1 : F) + (-1 : F) * rho 110460) = ((1 : F) * rho 110457 + (-1 : F) * rho 110458 + (-1 : F) * rho 110459)

def relationLc2146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 142⟩], residual := [((1 : F), 110461)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108507) * (relationLc2146 rho) = ((1 : F) * rho 110463)

def relationLc2147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 142⟩], residual := [((1 : F), 110462)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108507) * (relationLc2147 rho) = ((1 : F) * rho 110464)

def relationRow3909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110455) * ((1 : F) * rho 110456) = ((1 : F) * rho 110465)

def relationRow3910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110455) * ((1 : F) * rho 110455) = ((1 : F) * rho 110466)

def relationRow3911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110456) * ((1 : F) * rho 110456) = ((1 : F) * rho 110467)

def relationRow3912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110468) * ((-1 : F) * rho 110466 + (1 : F) * rho 110467) = ((2 : F) * rho 110465)

def relationRow3913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110469) * ((2 : F) + (1 : F) * rho 110466 + (-1 : F) * rho 110467) = ((1 : F) * rho 110466 + (1 : F) * rho 110467)

def relationLc2148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 143⟩, ⟨(1 : F), 108618, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110468 + (1 : F) * rho 110469) * (relationLc2148 rho) = ((1 : F) * rho 110470)

def relationLc2149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110469) * (relationLc2149 rho) = ((1 : F) * rho 110471)

def relationLc2150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110468) * (relationLc2150 rho) = ((1 : F) * rho 110472)

def relationRow3917 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110471) * ((1 : F) * rho 110472) = ((1 : F) * rho 110473)

def relationRow3918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110474) * ((1 : F) + (1 : F) * rho 110473) = ((1 : F) * rho 110471 + (1 : F) * rho 110472)

def relationRow3919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110475) * ((1 : F) + (-1 : F) * rho 110473) = ((1 : F) * rho 110470 + (-1 : F) * rho 110471 + (-1 : F) * rho 110472)

def relationLc2151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 143⟩], residual := [((1 : F), 110474)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108508) * (relationLc2151 rho) = ((1 : F) * rho 110476)

def relationLc2152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 143⟩], residual := [((1 : F), 110475)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108508) * (relationLc2152 rho) = ((1 : F) * rho 110477)

def relationRow3922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110468) * ((1 : F) * rho 110469) = ((1 : F) * rho 110478)

def relationRow3923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110468) * ((1 : F) * rho 110468) = ((1 : F) * rho 110479)

def relationRow3924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110469) * ((1 : F) * rho 110469) = ((1 : F) * rho 110480)

def relationRow3925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110481) * ((-1 : F) * rho 110479 + (1 : F) * rho 110480) = ((2 : F) * rho 110478)

def relationRow3926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110482) * ((2 : F) + (1 : F) * rho 110479 + (-1 : F) * rho 110480) = ((1 : F) * rho 110479 + (1 : F) * rho 110480)

def relationLc2153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 144⟩, ⟨(1 : F), 108618, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110481 + (1 : F) * rho 110482) * (relationLc2153 rho) = ((1 : F) * rho 110483)

def relationLc2154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110482) * (relationLc2154 rho) = ((1 : F) * rho 110484)

def relationLc2155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110481) * (relationLc2155 rho) = ((1 : F) * rho 110485)

def relationRow3930 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110484) * ((1 : F) * rho 110485) = ((1 : F) * rho 110486)

def relationRow3931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110487) * ((1 : F) + (1 : F) * rho 110486) = ((1 : F) * rho 110484 + (1 : F) * rho 110485)

def relationRow3932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110488) * ((1 : F) + (-1 : F) * rho 110486) = ((1 : F) * rho 110483 + (-1 : F) * rho 110484 + (-1 : F) * rho 110485)

def relationLc2156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 144⟩], residual := [((1 : F), 110487)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108509) * (relationLc2156 rho) = ((1 : F) * rho 110489)

def relationLc2157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 144⟩], residual := [((1 : F), 110488)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108509) * (relationLc2157 rho) = ((1 : F) * rho 110490)

def relationRow3935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110481) * ((1 : F) * rho 110482) = ((1 : F) * rho 110491)

def relationRow3936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110481) * ((1 : F) * rho 110481) = ((1 : F) * rho 110492)

def relationRow3937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110482) * ((1 : F) * rho 110482) = ((1 : F) * rho 110493)

def relationRow3938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110494) * ((-1 : F) * rho 110492 + (1 : F) * rho 110493) = ((2 : F) * rho 110491)

def relationRow3939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110495) * ((2 : F) + (1 : F) * rho 110492 + (-1 : F) * rho 110493) = ((1 : F) * rho 110492 + (1 : F) * rho 110493)

def relationLc2158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 145⟩, ⟨(1 : F), 108618, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110494 + (1 : F) * rho 110495) * (relationLc2158 rho) = ((1 : F) * rho 110496)

def relationLc2159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110495) * (relationLc2159 rho) = ((1 : F) * rho 110497)

def relationLc2160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110494) * (relationLc2160 rho) = ((1 : F) * rho 110498)

def relationRow3943 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110497) * ((1 : F) * rho 110498) = ((1 : F) * rho 110499)

def relationRow3944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110500) * ((1 : F) + (1 : F) * rho 110499) = ((1 : F) * rho 110497 + (1 : F) * rho 110498)

def relationRow3945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110501) * ((1 : F) + (-1 : F) * rho 110499) = ((1 : F) * rho 110496 + (-1 : F) * rho 110497 + (-1 : F) * rho 110498)

def relationLc2161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 145⟩], residual := [((1 : F), 110500)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108510) * (relationLc2161 rho) = ((1 : F) * rho 110502)

def relationLc2162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 145⟩], residual := [((1 : F), 110501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108510) * (relationLc2162 rho) = ((1 : F) * rho 110503)

def relationRow3948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110494) * ((1 : F) * rho 110495) = ((1 : F) * rho 110504)

def relationRow3949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110494) * ((1 : F) * rho 110494) = ((1 : F) * rho 110505)

def relationRow3950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110495) * ((1 : F) * rho 110495) = ((1 : F) * rho 110506)

def relationRow3951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110507) * ((-1 : F) * rho 110505 + (1 : F) * rho 110506) = ((2 : F) * rho 110504)

def relationRow3952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110508) * ((2 : F) + (1 : F) * rho 110505 + (-1 : F) * rho 110506) = ((1 : F) * rho 110505 + (1 : F) * rho 110506)

def relationLc2163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 146⟩, ⟨(1 : F), 108618, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110507 + (1 : F) * rho 110508) * (relationLc2163 rho) = ((1 : F) * rho 110509)

def relationLc2164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110508) * (relationLc2164 rho) = ((1 : F) * rho 110510)

def relationLc2165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110507) * (relationLc2165 rho) = ((1 : F) * rho 110511)

def relationRow3956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110510) * ((1 : F) * rho 110511) = ((1 : F) * rho 110512)

def relationRow3957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110513) * ((1 : F) + (1 : F) * rho 110512) = ((1 : F) * rho 110510 + (1 : F) * rho 110511)

def relationRow3958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110514) * ((1 : F) + (-1 : F) * rho 110512) = ((1 : F) * rho 110509 + (-1 : F) * rho 110510 + (-1 : F) * rho 110511)

def relationLc2166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 146⟩], residual := [((1 : F), 110513)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108511) * (relationLc2166 rho) = ((1 : F) * rho 110515)

def relationLc2167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 146⟩], residual := [((1 : F), 110514)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108511) * (relationLc2167 rho) = ((1 : F) * rho 110516)

def relationRow3961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110507) * ((1 : F) * rho 110508) = ((1 : F) * rho 110517)

def relationRow3962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110507) * ((1 : F) * rho 110507) = ((1 : F) * rho 110518)

def relationRow3963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110508) * ((1 : F) * rho 110508) = ((1 : F) * rho 110519)

def relationRow3964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110520) * ((-1 : F) * rho 110518 + (1 : F) * rho 110519) = ((2 : F) * rho 110517)

def relationRow3965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110521) * ((2 : F) + (1 : F) * rho 110518 + (-1 : F) * rho 110519) = ((1 : F) * rho 110518 + (1 : F) * rho 110519)

def relationLc2168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 147⟩, ⟨(1 : F), 108618, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110520 + (1 : F) * rho 110521) * (relationLc2168 rho) = ((1 : F) * rho 110522)

def relationLc2169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110521) * (relationLc2169 rho) = ((1 : F) * rho 110523)

def relationLc2170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110520) * (relationLc2170 rho) = ((1 : F) * rho 110524)

def relationRow3969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110523) * ((1 : F) * rho 110524) = ((1 : F) * rho 110525)

def relationRow3970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110526) * ((1 : F) + (1 : F) * rho 110525) = ((1 : F) * rho 110523 + (1 : F) * rho 110524)

def relationRow3971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110527) * ((1 : F) + (-1 : F) * rho 110525) = ((1 : F) * rho 110522 + (-1 : F) * rho 110523 + (-1 : F) * rho 110524)

def relationLc2171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 147⟩], residual := [((1 : F), 110526)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108512) * (relationLc2171 rho) = ((1 : F) * rho 110528)

def relationLc2172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 147⟩], residual := [((1 : F), 110527)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108512) * (relationLc2172 rho) = ((1 : F) * rho 110529)

def relationRow3974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110520) * ((1 : F) * rho 110521) = ((1 : F) * rho 110530)

def relationRow3975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110520) * ((1 : F) * rho 110520) = ((1 : F) * rho 110531)

def relationRow3976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110521) * ((1 : F) * rho 110521) = ((1 : F) * rho 110532)

def relationRow3977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110533) * ((-1 : F) * rho 110531 + (1 : F) * rho 110532) = ((2 : F) * rho 110530)

def relationRow3978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110534) * ((2 : F) + (1 : F) * rho 110531 + (-1 : F) * rho 110532) = ((1 : F) * rho 110531 + (1 : F) * rho 110532)

def relationLc2173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 148⟩, ⟨(1 : F), 108618, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110533 + (1 : F) * rho 110534) * (relationLc2173 rho) = ((1 : F) * rho 110535)

def relationLc2174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110534) * (relationLc2174 rho) = ((1 : F) * rho 110536)

def relationLc2175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110533) * (relationLc2175 rho) = ((1 : F) * rho 110537)

def relationRow3982 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110536) * ((1 : F) * rho 110537) = ((1 : F) * rho 110538)

def relationRow3983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110539) * ((1 : F) + (1 : F) * rho 110538) = ((1 : F) * rho 110536 + (1 : F) * rho 110537)

def relationRow3984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110540) * ((1 : F) + (-1 : F) * rho 110538) = ((1 : F) * rho 110535 + (-1 : F) * rho 110536 + (-1 : F) * rho 110537)

def relationLc2176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 148⟩], residual := [((1 : F), 110539)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108513) * (relationLc2176 rho) = ((1 : F) * rho 110541)

def relationLc2177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 148⟩], residual := [((1 : F), 110540)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108513) * (relationLc2177 rho) = ((1 : F) * rho 110542)

def relationRow3987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110533) * ((1 : F) * rho 110534) = ((1 : F) * rho 110543)

def relationRow3988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110533) * ((1 : F) * rho 110533) = ((1 : F) * rho 110544)

def relationRow3989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110534) * ((1 : F) * rho 110534) = ((1 : F) * rho 110545)

def relationRow3990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110546) * ((-1 : F) * rho 110544 + (1 : F) * rho 110545) = ((2 : F) * rho 110543)

def relationRow3991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110547) * ((2 : F) + (1 : F) * rho 110544 + (-1 : F) * rho 110545) = ((1 : F) * rho 110544 + (1 : F) * rho 110545)

def relationLc2178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 149⟩, ⟨(1 : F), 108618, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110546 + (1 : F) * rho 110547) * (relationLc2178 rho) = ((1 : F) * rho 110548)

def relationLc2179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110547) * (relationLc2179 rho) = ((1 : F) * rho 110549)

def relationLc2180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110546) * (relationLc2180 rho) = ((1 : F) * rho 110550)

def relationRow3995 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110549) * ((1 : F) * rho 110550) = ((1 : F) * rho 110551)

def relationRow3996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110552) * ((1 : F) + (1 : F) * rho 110551) = ((1 : F) * rho 110549 + (1 : F) * rho 110550)

def relationRow3997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110553) * ((1 : F) + (-1 : F) * rho 110551) = ((1 : F) * rho 110548 + (-1 : F) * rho 110549 + (-1 : F) * rho 110550)

def relationLc2181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 149⟩], residual := [((1 : F), 110552)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108514) * (relationLc2181 rho) = ((1 : F) * rho 110554)

def relationLc2182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 149⟩], residual := [((1 : F), 110553)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108514) * (relationLc2182 rho) = ((1 : F) * rho 110555)

def relationRow4000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110546) * ((1 : F) * rho 110547) = ((1 : F) * rho 110556)

def relationRow4001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110546) * ((1 : F) * rho 110546) = ((1 : F) * rho 110557)

def relationRow4002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110547) * ((1 : F) * rho 110547) = ((1 : F) * rho 110558)

def relationRow4003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110559) * ((-1 : F) * rho 110557 + (1 : F) * rho 110558) = ((2 : F) * rho 110556)

def relationRow4004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110560) * ((2 : F) + (1 : F) * rho 110557 + (-1 : F) * rho 110558) = ((1 : F) * rho 110557 + (1 : F) * rho 110558)

def relationLc2183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4005 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2183 rho) = ((1 : F) * rho 110561)

def relationRow4006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110561) * ((1 : F) * rho 110559 + (1 : F) * rho 110560) = ((1 : F) * rho 110562)

def relationLc2184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110560) * (relationLc2184 rho) = ((1 : F) * rho 110563)

def relationLc2185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110559) * (relationLc2185 rho) = ((1 : F) * rho 110564)

def relationRow4009 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110563) * ((1 : F) * rho 110564) = ((1 : F) * rho 110565)

def relationRow4010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110566) * ((1 : F) + (1 : F) * rho 110565) = ((1 : F) * rho 110563 + (1 : F) * rho 110564)

def relationRow4011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110567) * ((1 : F) + (-1 : F) * rho 110565) = ((1 : F) * rho 110562 + (-1 : F) * rho 110563 + (-1 : F) * rho 110564)

def relationLc2186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110566)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108515) * (relationLc2186 rho) = ((1 : F) * rho 110568)

def relationLc2187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110567)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108515) * (relationLc2187 rho) = ((1 : F) * rho 110569)

def relationRow4014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110559) * ((1 : F) * rho 110560) = ((1 : F) * rho 110570)

def relationRow4015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110559) * ((1 : F) * rho 110559) = ((1 : F) * rho 110571)

def relationRow4016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110560) * ((1 : F) * rho 110560) = ((1 : F) * rho 110572)

def relationRow4017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110573) * ((-1 : F) * rho 110571 + (1 : F) * rho 110572) = ((2 : F) * rho 110570)

def relationRow4018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110574) * ((2 : F) + (1 : F) * rho 110571 + (-1 : F) * rho 110572) = ((1 : F) * rho 110571 + (1 : F) * rho 110572)

def relationLc2188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4019 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2188 rho) = ((1 : F) * rho 110575)

def relationRow4020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110575) * ((1 : F) * rho 110573 + (1 : F) * rho 110574) = ((1 : F) * rho 110576)

def relationLc2189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110574) * (relationLc2189 rho) = ((1 : F) * rho 110577)

def relationLc2190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110573) * (relationLc2190 rho) = ((1 : F) * rho 110578)

def relationRow4023 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110577) * ((1 : F) * rho 110578) = ((1 : F) * rho 110579)

def relationRow4024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110580) * ((1 : F) + (1 : F) * rho 110579) = ((1 : F) * rho 110577 + (1 : F) * rho 110578)

def relationRow4025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110581) * ((1 : F) + (-1 : F) * rho 110579) = ((1 : F) * rho 110576 + (-1 : F) * rho 110577 + (-1 : F) * rho 110578)

def relationLc2191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((1 : F), 110580)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108516) * (relationLc2191 rho) = ((1 : F) * rho 110582)

def relationLc2192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((1 : F), 110581)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108516) * (relationLc2192 rho) = ((1 : F) * rho 110583)

def relationRow4028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110573) * ((1 : F) * rho 110574) = ((1 : F) * rho 110584)

def relationRow4029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110573) * ((1 : F) * rho 110573) = ((1 : F) * rho 110585)

def relationRow4030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110574) * ((1 : F) * rho 110574) = ((1 : F) * rho 110586)

def relationRow4031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110587) * ((-1 : F) * rho 110585 + (1 : F) * rho 110586) = ((2 : F) * rho 110584)

def relationRow4032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110588) * ((2 : F) + (1 : F) * rho 110585 + (-1 : F) * rho 110586) = ((1 : F) * rho 110585 + (1 : F) * rho 110586)

def relationLc2193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4033 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2193 rho) = ((1 : F) * rho 110589)

def relationRow4034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110589) * ((1 : F) * rho 110587 + (1 : F) * rho 110588) = ((1 : F) * rho 110590)

def relationLc2194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110588) * (relationLc2194 rho) = ((1 : F) * rho 110591)

def relationLc2195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110587) * (relationLc2195 rho) = ((1 : F) * rho 110592)

def relationRow4037 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110591) * ((1 : F) * rho 110592) = ((1 : F) * rho 110593)

def relationRow4038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110594) * ((1 : F) + (1 : F) * rho 110593) = ((1 : F) * rho 110591 + (1 : F) * rho 110592)

def relationRow4039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110595) * ((1 : F) + (-1 : F) * rho 110593) = ((1 : F) * rho 110590 + (-1 : F) * rho 110591 + (-1 : F) * rho 110592)

def relationLc2196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((1 : F), 110594)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108517) * (relationLc2196 rho) = ((1 : F) * rho 110596)

def relationLc2197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((1 : F), 110595)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108517) * (relationLc2197 rho) = ((1 : F) * rho 110597)

def relationRow4042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110587) * ((1 : F) * rho 110588) = ((1 : F) * rho 110598)

def relationRow4043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110587) * ((1 : F) * rho 110587) = ((1 : F) * rho 110599)

def relationRow4044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110588) * ((1 : F) * rho 110588) = ((1 : F) * rho 110600)

def relationRow4045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110601) * ((-1 : F) * rho 110599 + (1 : F) * rho 110600) = ((2 : F) * rho 110598)

def relationRow4046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110602) * ((2 : F) + (1 : F) * rho 110599 + (-1 : F) * rho 110600) = ((1 : F) * rho 110599 + (1 : F) * rho 110600)

def relationLc2198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4047 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2198 rho) = ((1 : F) * rho 110603)

def relationRow4048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110603) * ((1 : F) * rho 110601 + (1 : F) * rho 110602) = ((1 : F) * rho 110604)

def relationLc2199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110602) * (relationLc2199 rho) = ((1 : F) * rho 110605)

def relationLc2200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110601) * (relationLc2200 rho) = ((1 : F) * rho 110606)

def relationRow4051 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110605) * ((1 : F) * rho 110606) = ((1 : F) * rho 110607)

def relationRow4052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110608) * ((1 : F) + (1 : F) * rho 110607) = ((1 : F) * rho 110605 + (1 : F) * rho 110606)

def relationRow4053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110609) * ((1 : F) + (-1 : F) * rho 110607) = ((1 : F) * rho 110604 + (-1 : F) * rho 110605 + (-1 : F) * rho 110606)

def relationLc2201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((1 : F), 110608)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108518) * (relationLc2201 rho) = ((1 : F) * rho 110610)

def relationLc2202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((1 : F), 110609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108518) * (relationLc2202 rho) = ((1 : F) * rho 110611)

def relationRow4056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110601) * ((1 : F) * rho 110602) = ((1 : F) * rho 110612)

def relationRow4057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110601) * ((1 : F) * rho 110601) = ((1 : F) * rho 110613)

def relationRow4058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110602) * ((1 : F) * rho 110602) = ((1 : F) * rho 110614)

def relationRow4059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110615) * ((-1 : F) * rho 110613 + (1 : F) * rho 110614) = ((2 : F) * rho 110612)

def relationRow4060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110616) * ((2 : F) + (1 : F) * rho 110613 + (-1 : F) * rho 110614) = ((1 : F) * rho 110613 + (1 : F) * rho 110614)

def relationLc2203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4061 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2203 rho) = ((1 : F) * rho 110617)

def relationRow4062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110617) * ((1 : F) * rho 110615 + (1 : F) * rho 110616) = ((1 : F) * rho 110618)

def relationLc2204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110616) * (relationLc2204 rho) = ((1 : F) * rho 110619)

def relationLc2205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110615) * (relationLc2205 rho) = ((1 : F) * rho 110620)

def relationRow4065 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110619) * ((1 : F) * rho 110620) = ((1 : F) * rho 110621)

def relationRow4066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110622) * ((1 : F) + (1 : F) * rho 110621) = ((1 : F) * rho 110619 + (1 : F) * rho 110620)

def relationRow4067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110623) * ((1 : F) + (-1 : F) * rho 110621) = ((1 : F) * rho 110618 + (-1 : F) * rho 110619 + (-1 : F) * rho 110620)

def relationLc2206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((1 : F), 110622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108519) * (relationLc2206 rho) = ((1 : F) * rho 110624)

def relationLc2207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((1 : F), 110623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108519) * (relationLc2207 rho) = ((1 : F) * rho 110625)

def relationRow4070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110615) * ((1 : F) * rho 110616) = ((1 : F) * rho 110626)

def relationRow4071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110615) * ((1 : F) * rho 110615) = ((1 : F) * rho 110627)

def relationRow4072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110616) * ((1 : F) * rho 110616) = ((1 : F) * rho 110628)

def relationRow4073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110629) * ((-1 : F) * rho 110627 + (1 : F) * rho 110628) = ((2 : F) * rho 110626)

def relationRow4074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110630) * ((2 : F) + (1 : F) * rho 110627 + (-1 : F) * rho 110628) = ((1 : F) * rho 110627 + (1 : F) * rho 110628)

def relationLc2208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4075 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2208 rho) = ((1 : F) * rho 110631)

def relationRow4076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110631) * ((1 : F) * rho 110629 + (1 : F) * rho 110630) = ((1 : F) * rho 110632)

def relationLc2209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110630) * (relationLc2209 rho) = ((1 : F) * rho 110633)

def relationLc2210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110629) * (relationLc2210 rho) = ((1 : F) * rho 110634)

def relationRow4079 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110633) * ((1 : F) * rho 110634) = ((1 : F) * rho 110635)

def relationRow4080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110636) * ((1 : F) + (1 : F) * rho 110635) = ((1 : F) * rho 110633 + (1 : F) * rho 110634)

def relationRow4081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110637) * ((1 : F) + (-1 : F) * rho 110635) = ((1 : F) * rho 110632 + (-1 : F) * rho 110633 + (-1 : F) * rho 110634)

def relationLc2211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((1 : F), 110636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108520) * (relationLc2211 rho) = ((1 : F) * rho 110638)

def relationLc2212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((1 : F), 110637)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108520) * (relationLc2212 rho) = ((1 : F) * rho 110639)

def relationRow4084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110629) * ((1 : F) * rho 110630) = ((1 : F) * rho 110640)

def relationRow4085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110629) * ((1 : F) * rho 110629) = ((1 : F) * rho 110641)

def relationRow4086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110630) * ((1 : F) * rho 110630) = ((1 : F) * rho 110642)

def relationRow4087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110643) * ((-1 : F) * rho 110641 + (1 : F) * rho 110642) = ((2 : F) * rho 110640)

def relationRow4088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110644) * ((2 : F) + (1 : F) * rho 110641 + (-1 : F) * rho 110642) = ((1 : F) * rho 110641 + (1 : F) * rho 110642)

def relationLc2213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4089 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2213 rho) = ((1 : F) * rho 110645)

def relationRow4090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110645) * ((1 : F) * rho 110643 + (1 : F) * rho 110644) = ((1 : F) * rho 110646)

def relationLc2214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110644) * (relationLc2214 rho) = ((1 : F) * rho 110647)

def relationLc2215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110643) * (relationLc2215 rho) = ((1 : F) * rho 110648)

def relationRow4093 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110647) * ((1 : F) * rho 110648) = ((1 : F) * rho 110649)

def relationRow4094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110650) * ((1 : F) + (1 : F) * rho 110649) = ((1 : F) * rho 110647 + (1 : F) * rho 110648)

def relationRow4095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110651) * ((1 : F) + (-1 : F) * rho 110649) = ((1 : F) * rho 110646 + (-1 : F) * rho 110647 + (-1 : F) * rho 110648)

def relationLc2216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((1 : F), 110650)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108521) * (relationLc2216 rho) = ((1 : F) * rho 110652)

def relationLc2217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((1 : F), 110651)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108521) * (relationLc2217 rho) = ((1 : F) * rho 110653)

def relationRow4098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110643) * ((1 : F) * rho 110644) = ((1 : F) * rho 110654)

def relationRow4099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110643) * ((1 : F) * rho 110643) = ((1 : F) * rho 110655)

def relationRow4100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110644) * ((1 : F) * rho 110644) = ((1 : F) * rho 110656)

def relationRow4101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110657) * ((-1 : F) * rho 110655 + (1 : F) * rho 110656) = ((2 : F) * rho 110654)

def relationRow4102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110658) * ((2 : F) + (1 : F) * rho 110655 + (-1 : F) * rho 110656) = ((1 : F) * rho 110655 + (1 : F) * rho 110656)

def relationLc2218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4103 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2218 rho) = ((1 : F) * rho 110659)

def relationRow4104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110659) * ((1 : F) * rho 110657 + (1 : F) * rho 110658) = ((1 : F) * rho 110660)

def relationLc2219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110658) * (relationLc2219 rho) = ((1 : F) * rho 110661)

def relationLc2220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110657) * (relationLc2220 rho) = ((1 : F) * rho 110662)

def relationRow4107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110661) * ((1 : F) * rho 110662) = ((1 : F) * rho 110663)

def relationRow4108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110664) * ((1 : F) + (1 : F) * rho 110663) = ((1 : F) * rho 110661 + (1 : F) * rho 110662)

def relationRow4109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110665) * ((1 : F) + (-1 : F) * rho 110663) = ((1 : F) * rho 110660 + (-1 : F) * rho 110661 + (-1 : F) * rho 110662)

def relationLc2221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((1 : F), 110664)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108522) * (relationLc2221 rho) = ((1 : F) * rho 110666)

def relationLc2222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((1 : F), 110665)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108522) * (relationLc2222 rho) = ((1 : F) * rho 110667)

def relationRow4112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110657) * ((1 : F) * rho 110658) = ((1 : F) * rho 110668)

def relationRow4113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110657) * ((1 : F) * rho 110657) = ((1 : F) * rho 110669)

def relationRow4114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110658) * ((1 : F) * rho 110658) = ((1 : F) * rho 110670)

def relationRow4115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110671) * ((-1 : F) * rho 110669 + (1 : F) * rho 110670) = ((2 : F) * rho 110668)

def relationRow4116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110672) * ((2 : F) + (1 : F) * rho 110669 + (-1 : F) * rho 110670) = ((1 : F) * rho 110669 + (1 : F) * rho 110670)

def relationLc2223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4117 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2223 rho) = ((1 : F) * rho 110673)

def relationRow4118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110673) * ((1 : F) * rho 110671 + (1 : F) * rho 110672) = ((1 : F) * rho 110674)

def relationLc2224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110672) * (relationLc2224 rho) = ((1 : F) * rho 110675)

def relationLc2225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110671) * (relationLc2225 rho) = ((1 : F) * rho 110676)

def relationRow4121 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110675) * ((1 : F) * rho 110676) = ((1 : F) * rho 110677)

def relationRow4122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110678) * ((1 : F) + (1 : F) * rho 110677) = ((1 : F) * rho 110675 + (1 : F) * rho 110676)

def relationRow4123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110679) * ((1 : F) + (-1 : F) * rho 110677) = ((1 : F) * rho 110674 + (-1 : F) * rho 110675 + (-1 : F) * rho 110676)

def relationLc2226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((1 : F), 110678)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108523) * (relationLc2226 rho) = ((1 : F) * rho 110680)

def relationLc2227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((1 : F), 110679)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108523) * (relationLc2227 rho) = ((1 : F) * rho 110681)

def relationRow4126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110671) * ((1 : F) * rho 110672) = ((1 : F) * rho 110682)

def relationRow4127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110671) * ((1 : F) * rho 110671) = ((1 : F) * rho 110683)

def relationRow4128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110672) * ((1 : F) * rho 110672) = ((1 : F) * rho 110684)

def relationRow4129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110685) * ((-1 : F) * rho 110683 + (1 : F) * rho 110684) = ((2 : F) * rho 110682)

def relationRow4130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110686) * ((2 : F) + (1 : F) * rho 110683 + (-1 : F) * rho 110684) = ((1 : F) * rho 110683 + (1 : F) * rho 110684)

def relationLc2228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4131 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2228 rho) = ((1 : F) * rho 110687)

def relationRow4132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110687) * ((1 : F) * rho 110685 + (1 : F) * rho 110686) = ((1 : F) * rho 110688)

def relationLc2229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110686) * (relationLc2229 rho) = ((1 : F) * rho 110689)

def relationLc2230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110685) * (relationLc2230 rho) = ((1 : F) * rho 110690)

def relationRow4135 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110689) * ((1 : F) * rho 110690) = ((1 : F) * rho 110691)

def relationRow4136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110692) * ((1 : F) + (1 : F) * rho 110691) = ((1 : F) * rho 110689 + (1 : F) * rho 110690)

def relationRow4137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110693) * ((1 : F) + (-1 : F) * rho 110691) = ((1 : F) * rho 110688 + (-1 : F) * rho 110689 + (-1 : F) * rho 110690)

def relationLc2231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((1 : F), 110692)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108524) * (relationLc2231 rho) = ((1 : F) * rho 110694)

def relationLc2232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((1 : F), 110693)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108524) * (relationLc2232 rho) = ((1 : F) * rho 110695)

def relationRow4140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110685) * ((1 : F) * rho 110686) = ((1 : F) * rho 110696)

def relationRow4141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110685) * ((1 : F) * rho 110685) = ((1 : F) * rho 110697)

def relationRow4142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110686) * ((1 : F) * rho 110686) = ((1 : F) * rho 110698)

def relationRow4143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110699) * ((-1 : F) * rho 110697 + (1 : F) * rho 110698) = ((2 : F) * rho 110696)

def relationRow4144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110700) * ((2 : F) + (1 : F) * rho 110697 + (-1 : F) * rho 110698) = ((1 : F) * rho 110697 + (1 : F) * rho 110698)

def relationLc2233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681), ((1 : F), 110694), ((1 : F), 110695)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4145 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2233 rho) = ((1 : F) * rho 110701)

def relationRow4146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110701) * ((1 : F) * rho 110699 + (1 : F) * rho 110700) = ((1 : F) * rho 110702)

def relationLc2234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680), ((1 : F), 110694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110700) * (relationLc2234 rho) = ((1 : F) * rho 110703)

def relationLc2235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681), ((1 : F), 110695)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110699) * (relationLc2235 rho) = ((1 : F) * rho 110704)

def relationRow4149 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110703) * ((1 : F) * rho 110704) = ((1 : F) * rho 110705)

def relationRow4150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110706) * ((1 : F) + (1 : F) * rho 110705) = ((1 : F) * rho 110703 + (1 : F) * rho 110704)

def relationRow4151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110707) * ((1 : F) + (-1 : F) * rho 110705) = ((1 : F) * rho 110702 + (-1 : F) * rho 110703 + (-1 : F) * rho 110704)

def relationLc2236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((-1 : F), 110694), ((1 : F), 110706)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108525) * (relationLc2236 rho) = ((1 : F) * rho 110708)

def relationLc2237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((-1 : F), 110695), ((1 : F), 110707)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108525) * (relationLc2237 rho) = ((1 : F) * rho 110709)

def relationRow4154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110699) * ((1 : F) * rho 110700) = ((1 : F) * rho 110710)

def relationRow4155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110699) * ((1 : F) * rho 110699) = ((1 : F) * rho 110711)

def relationRow4156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110700) * ((1 : F) * rho 110700) = ((1 : F) * rho 110712)

def relationRow4157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110713) * ((-1 : F) * rho 110711 + (1 : F) * rho 110712) = ((2 : F) * rho 110710)

def relationRow4158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110714) * ((2 : F) + (1 : F) * rho 110711 + (-1 : F) * rho 110712) = ((1 : F) * rho 110711 + (1 : F) * rho 110712)

def relationLc2238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681), ((1 : F), 110694), ((1 : F), 110695), ((1 : F), 110708), ((1 : F), 110709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4159 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2238 rho) = ((1 : F) * rho 110715)

def relationRow4160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110715) * ((1 : F) * rho 110713 + (1 : F) * rho 110714) = ((1 : F) * rho 110716)

def relationLc2239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680), ((1 : F), 110694), ((1 : F), 110708)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110714) * (relationLc2239 rho) = ((1 : F) * rho 110717)

def relationLc2240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681), ((1 : F), 110695), ((1 : F), 110709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110713) * (relationLc2240 rho) = ((1 : F) * rho 110718)

def relationRow4163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110717) * ((1 : F) * rho 110718) = ((1 : F) * rho 110719)

def relationRow4164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110720) * ((1 : F) + (1 : F) * rho 110719) = ((1 : F) * rho 110717 + (1 : F) * rho 110718)

def relationRow4165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110721) * ((1 : F) + (-1 : F) * rho 110719) = ((1 : F) * rho 110716 + (-1 : F) * rho 110717 + (-1 : F) * rho 110718)

def relationLc2241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((-1 : F), 110694), ((-1 : F), 110708), ((1 : F), 110720)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108526) * (relationLc2241 rho) = ((1 : F) * rho 110722)

def relationLc2242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((-1 : F), 110695), ((-1 : F), 110709), ((1 : F), 110721)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108526) * (relationLc2242 rho) = ((1 : F) * rho 110723)

def relationRow4168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110713) * ((1 : F) * rho 110714) = ((1 : F) * rho 110724)

def relationRow4169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110713) * ((1 : F) * rho 110713) = ((1 : F) * rho 110725)

def relationRow4170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110714) * ((1 : F) * rho 110714) = ((1 : F) * rho 110726)

def relationRow4171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110727) * ((-1 : F) * rho 110725 + (1 : F) * rho 110726) = ((2 : F) * rho 110724)

def relationRow4172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110728) * ((2 : F) + (1 : F) * rho 110725 + (-1 : F) * rho 110726) = ((1 : F) * rho 110725 + (1 : F) * rho 110726)

def relationLc2243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681), ((1 : F), 110694), ((1 : F), 110695), ((1 : F), 110708), ((1 : F), 110709), ((1 : F), 110722), ((1 : F), 110723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4173 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2243 rho) = ((1 : F) * rho 110729)

def relationRow4174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110729) * ((1 : F) * rho 110727 + (1 : F) * rho 110728) = ((1 : F) * rho 110730)

def relationLc2244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680), ((1 : F), 110694), ((1 : F), 110708), ((1 : F), 110722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110728) * (relationLc2244 rho) = ((1 : F) * rho 110731)

def relationLc2245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681), ((1 : F), 110695), ((1 : F), 110709), ((1 : F), 110723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110727) * (relationLc2245 rho) = ((1 : F) * rho 110732)

def relationRow4177 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110731) * ((1 : F) * rho 110732) = ((1 : F) * rho 110733)

def relationRow4178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110734) * ((1 : F) + (1 : F) * rho 110733) = ((1 : F) * rho 110731 + (1 : F) * rho 110732)

def relationRow4179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110735) * ((1 : F) + (-1 : F) * rho 110733) = ((1 : F) * rho 110730 + (-1 : F) * rho 110731 + (-1 : F) * rho 110732)

def relationLc2246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((-1 : F), 110694), ((-1 : F), 110708), ((-1 : F), 110722), ((1 : F), 110734)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108527) * (relationLc2246 rho) = ((1 : F) * rho 110736)

def relationLc2247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((-1 : F), 110695), ((-1 : F), 110709), ((-1 : F), 110723), ((1 : F), 110735)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108527) * (relationLc2247 rho) = ((1 : F) * rho 110737)

def relationRow4182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110727) * ((1 : F) * rho 110728) = ((1 : F) * rho 110738)

def relationRow4183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110727) * ((1 : F) * rho 110727) = ((1 : F) * rho 110739)

def relationRow4184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110728) * ((1 : F) * rho 110728) = ((1 : F) * rho 110740)

def relationRow4185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110741) * ((-1 : F) * rho 110739 + (1 : F) * rho 110740) = ((2 : F) * rho 110738)

def relationRow4186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110742) * ((2 : F) + (1 : F) * rho 110739 + (-1 : F) * rho 110740) = ((1 : F) * rho 110739 + (1 : F) * rho 110740)

def relationLc2248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681), ((1 : F), 110694), ((1 : F), 110695), ((1 : F), 110708), ((1 : F), 110709), ((1 : F), 110722), ((1 : F), 110723), ((1 : F), 110736), ((1 : F), 110737)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4187 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2248 rho) = ((1 : F) * rho 110743)

def relationRow4188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110743) * ((1 : F) * rho 110741 + (1 : F) * rho 110742) = ((1 : F) * rho 110744)

def relationLc2249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680), ((1 : F), 110694), ((1 : F), 110708), ((1 : F), 110722), ((1 : F), 110736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110742) * (relationLc2249 rho) = ((1 : F) * rho 110745)

def relationLc2250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681), ((1 : F), 110695), ((1 : F), 110709), ((1 : F), 110723), ((1 : F), 110737)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110741) * (relationLc2250 rho) = ((1 : F) * rho 110746)

def relationRow4191 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110745) * ((1 : F) * rho 110746) = ((1 : F) * rho 110747)

def relationRow4192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110748) * ((1 : F) + (1 : F) * rho 110747) = ((1 : F) * rho 110745 + (1 : F) * rho 110746)

def relationRow4193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110749) * ((1 : F) + (-1 : F) * rho 110747) = ((1 : F) * rho 110744 + (-1 : F) * rho 110745 + (-1 : F) * rho 110746)

def relationLc2251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((-1 : F), 110694), ((-1 : F), 110708), ((-1 : F), 110722), ((-1 : F), 110736), ((1 : F), 110748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108528) * (relationLc2251 rho) = ((1 : F) * rho 110750)

def relationLc2252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((-1 : F), 110695), ((-1 : F), 110709), ((-1 : F), 110723), ((-1 : F), 110737), ((1 : F), 110749)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108528) * (relationLc2252 rho) = ((1 : F) * rho 110751)

def relationRow4196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110741) * ((1 : F) * rho 110742) = ((1 : F) * rho 110752)

def relationRow4197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110741) * ((1 : F) * rho 110741) = ((1 : F) * rho 110753)

def relationRow4198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110742) * ((1 : F) * rho 110742) = ((1 : F) * rho 110754)

def relationRow4199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110755) * ((-1 : F) * rho 110753 + (1 : F) * rho 110754) = ((2 : F) * rho 110752)

def relationRow4200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110756) * ((2 : F) + (1 : F) * rho 110753 + (-1 : F) * rho 110754) = ((1 : F) * rho 110753 + (1 : F) * rho 110754)

def relationLc2253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681), ((1 : F), 110694), ((1 : F), 110695), ((1 : F), 110708), ((1 : F), 110709), ((1 : F), 110722), ((1 : F), 110723), ((1 : F), 110736), ((1 : F), 110737), ((1 : F), 110750), ((1 : F), 110751)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4201 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2253 rho) = ((1 : F) * rho 110757)

def relationRow4202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110757) * ((1 : F) * rho 110755 + (1 : F) * rho 110756) = ((1 : F) * rho 110758)

def relationLc2254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680), ((1 : F), 110694), ((1 : F), 110708), ((1 : F), 110722), ((1 : F), 110736), ((1 : F), 110750)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110756) * (relationLc2254 rho) = ((1 : F) * rho 110759)

def relationLc2255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681), ((1 : F), 110695), ((1 : F), 110709), ((1 : F), 110723), ((1 : F), 110737), ((1 : F), 110751)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110755) * (relationLc2255 rho) = ((1 : F) * rho 110760)

def relationRow4205 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110759) * ((1 : F) * rho 110760) = ((1 : F) * rho 110761)

def relationRow4206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110762) * ((1 : F) + (1 : F) * rho 110761) = ((1 : F) * rho 110759 + (1 : F) * rho 110760)

def relationRow4207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110763) * ((1 : F) + (-1 : F) * rho 110761) = ((1 : F) * rho 110758 + (-1 : F) * rho 110759 + (-1 : F) * rho 110760)

def relationLc2256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((-1 : F), 110694), ((-1 : F), 110708), ((-1 : F), 110722), ((-1 : F), 110736), ((-1 : F), 110750), ((1 : F), 110762)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108529) * (relationLc2256 rho) = ((1 : F) * rho 110764)

def relationLc2257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((-1 : F), 110695), ((-1 : F), 110709), ((-1 : F), 110723), ((-1 : F), 110737), ((-1 : F), 110751), ((1 : F), 110763)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108529) * (relationLc2257 rho) = ((1 : F) * rho 110765)

def relationRow4210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110755) * ((1 : F) * rho 110756) = ((1 : F) * rho 110766)

def relationRow4211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110755) * ((1 : F) * rho 110755) = ((1 : F) * rho 110767)

def relationRow4212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110756) * ((1 : F) * rho 110756) = ((1 : F) * rho 110768)

def relationRow4213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110769) * ((-1 : F) * rho 110767 + (1 : F) * rho 110768) = ((2 : F) * rho 110766)

def relationRow4214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110770) * ((2 : F) + (1 : F) * rho 110767 + (-1 : F) * rho 110768) = ((1 : F) * rho 110767 + (1 : F) * rho 110768)

def relationLc2258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110569), ((1 : F), 110582), ((1 : F), 110583), ((1 : F), 110596), ((1 : F), 110597), ((1 : F), 110610), ((1 : F), 110611), ((1 : F), 110624), ((1 : F), 110625), ((1 : F), 110638), ((1 : F), 110639), ((1 : F), 110652), ((1 : F), 110653), ((1 : F), 110666), ((1 : F), 110667), ((1 : F), 110680), ((1 : F), 110681), ((1 : F), 110694), ((1 : F), 110695), ((1 : F), 110708), ((1 : F), 110709), ((1 : F), 110722), ((1 : F), 110723), ((1 : F), 110736), ((1 : F), 110737), ((1 : F), 110750), ((1 : F), 110751), ((1 : F), 110764), ((1 : F), 110765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4215 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2258 rho) = ((1 : F) * rho 110771)

def relationRow4216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110771) * ((1 : F) * rho 110769 + (1 : F) * rho 110770) = ((1 : F) * rho 110772)

def relationLc2259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩], residual := [((1 : F), 110568), ((1 : F), 110582), ((1 : F), 110596), ((1 : F), 110610), ((1 : F), 110624), ((1 : F), 110638), ((1 : F), 110652), ((1 : F), 110666), ((1 : F), 110680), ((1 : F), 110694), ((1 : F), 110708), ((1 : F), 110722), ((1 : F), 110736), ((1 : F), 110750), ((1 : F), 110764)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110770) * (relationLc2259 rho) = ((1 : F) * rho 110773)

def relationLc2260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩], residual := [((1 : F), 110569), ((1 : F), 110583), ((1 : F), 110597), ((1 : F), 110611), ((1 : F), 110625), ((1 : F), 110639), ((1 : F), 110653), ((1 : F), 110667), ((1 : F), 110681), ((1 : F), 110695), ((1 : F), 110709), ((1 : F), 110723), ((1 : F), 110737), ((1 : F), 110751), ((1 : F), 110765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110769) * (relationLc2260 rho) = ((1 : F) * rho 110774)

def relationRow4219 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110773) * ((1 : F) * rho 110774) = ((1 : F) * rho 110775)

def relationRow4220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110776) * ((1 : F) + (1 : F) * rho 110775) = ((1 : F) * rho 110773 + (1 : F) * rho 110774)

def relationRow4221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110777) * ((1 : F) + (-1 : F) * rho 110775) = ((1 : F) * rho 110772 + (-1 : F) * rho 110773 + (-1 : F) * rho 110774)

def relationLc2261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩], residual := [((-1 : F), 110568), ((-1 : F), 110582), ((-1 : F), 110596), ((-1 : F), 110610), ((-1 : F), 110624), ((-1 : F), 110638), ((-1 : F), 110652), ((-1 : F), 110666), ((-1 : F), 110680), ((-1 : F), 110694), ((-1 : F), 110708), ((-1 : F), 110722), ((-1 : F), 110736), ((-1 : F), 110750), ((-1 : F), 110764), ((1 : F), 110776)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108530) * (relationLc2261 rho) = ((1 : F) * rho 110778)

def relationLc2262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩], residual := [((-1 : F), 110569), ((-1 : F), 110583), ((-1 : F), 110597), ((-1 : F), 110611), ((-1 : F), 110625), ((-1 : F), 110639), ((-1 : F), 110653), ((-1 : F), 110667), ((-1 : F), 110681), ((-1 : F), 110695), ((-1 : F), 110709), ((-1 : F), 110723), ((-1 : F), 110737), ((-1 : F), 110751), ((-1 : F), 110765), ((1 : F), 110777)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108530) * (relationLc2262 rho) = ((1 : F) * rho 110779)

def relationRow4224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110769) * ((1 : F) * rho 110770) = ((1 : F) * rho 110780)

def relationRow4225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110769) * ((1 : F) * rho 110769) = ((1 : F) * rho 110781)

def relationRow4226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110770) * ((1 : F) * rho 110770) = ((1 : F) * rho 110782)

def relationRow4227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110783) * ((-1 : F) * rho 110781 + (1 : F) * rho 110782) = ((2 : F) * rho 110780)

def relationRow4228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110784) * ((2 : F) + (1 : F) * rho 110781 + (-1 : F) * rho 110782) = ((1 : F) * rho 110781 + (1 : F) * rho 110782)

def relationLc2263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 16⟩, ⟨(1 : F), 110569, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4229 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2263 rho) = ((1 : F) * rho 110785)

def relationRow4230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110785) * ((1 : F) * rho 110783 + (1 : F) * rho 110784) = ((1 : F) * rho 110786)

def relationLc2264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110784) * (relationLc2264 rho) = ((1 : F) * rho 110787)

def relationLc2265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110783) * (relationLc2265 rho) = ((1 : F) * rho 110788)

def relationRow4233 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110787) * ((1 : F) * rho 110788) = ((1 : F) * rho 110789)

def relationRow4234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110790) * ((1 : F) + (1 : F) * rho 110789) = ((1 : F) * rho 110787 + (1 : F) * rho 110788)

def relationRow4235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110791) * ((1 : F) + (-1 : F) * rho 110789) = ((1 : F) * rho 110786 + (-1 : F) * rho 110787 + (-1 : F) * rho 110788)

def relationLc2266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 16⟩], residual := [((1 : F), 110790)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108531) * (relationLc2266 rho) = ((1 : F) * rho 110792)

def relationLc2267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 16⟩], residual := [((1 : F), 110791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108531) * (relationLc2267 rho) = ((1 : F) * rho 110793)

def relationRow4238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110783) * ((1 : F) * rho 110784) = ((1 : F) * rho 110794)

def relationRow4239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110783) * ((1 : F) * rho 110783) = ((1 : F) * rho 110795)

def relationRow4240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110784) * ((1 : F) * rho 110784) = ((1 : F) * rho 110796)

def relationRow4241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110797) * ((-1 : F) * rho 110795 + (1 : F) * rho 110796) = ((2 : F) * rho 110794)

def relationRow4242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110798) * ((2 : F) + (1 : F) * rho 110795 + (-1 : F) * rho 110796) = ((1 : F) * rho 110795 + (1 : F) * rho 110796)

def relationLc2268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 17⟩, ⟨(1 : F), 110569, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4243 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2268 rho) = ((1 : F) * rho 110799)

def relationRow4244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110799) * ((1 : F) * rho 110797 + (1 : F) * rho 110798) = ((1 : F) * rho 110800)

def relationLc2269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110798) * (relationLc2269 rho) = ((1 : F) * rho 110801)

def relationLc2270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110797) * (relationLc2270 rho) = ((1 : F) * rho 110802)

def relationRow4247 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110801) * ((1 : F) * rho 110802) = ((1 : F) * rho 110803)

def relationRow4248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110804) * ((1 : F) + (1 : F) * rho 110803) = ((1 : F) * rho 110801 + (1 : F) * rho 110802)

def relationRow4249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110805) * ((1 : F) + (-1 : F) * rho 110803) = ((1 : F) * rho 110800 + (-1 : F) * rho 110801 + (-1 : F) * rho 110802)

def relationLc2271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 17⟩], residual := [((1 : F), 110804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108532) * (relationLc2271 rho) = ((1 : F) * rho 110806)

def relationLc2272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 17⟩], residual := [((1 : F), 110805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108532) * (relationLc2272 rho) = ((1 : F) * rho 110807)

def relationRow4252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110797) * ((1 : F) * rho 110798) = ((1 : F) * rho 110808)

def relationRow4253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110797) * ((1 : F) * rho 110797) = ((1 : F) * rho 110809)

def relationRow4254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110798) * ((1 : F) * rho 110798) = ((1 : F) * rho 110810)

def relationRow4255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110811) * ((-1 : F) * rho 110809 + (1 : F) * rho 110810) = ((2 : F) * rho 110808)

def relationRow4256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110812) * ((2 : F) + (1 : F) * rho 110809 + (-1 : F) * rho 110810) = ((1 : F) * rho 110809 + (1 : F) * rho 110810)

def relationLc2273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 18⟩, ⟨(1 : F), 110569, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4257 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2273 rho) = ((1 : F) * rho 110813)

def relationRow4258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110813) * ((1 : F) * rho 110811 + (1 : F) * rho 110812) = ((1 : F) * rho 110814)

def relationLc2274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110812) * (relationLc2274 rho) = ((1 : F) * rho 110815)

def relationLc2275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110811) * (relationLc2275 rho) = ((1 : F) * rho 110816)

def relationRow4261 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110815) * ((1 : F) * rho 110816) = ((1 : F) * rho 110817)

def relationRow4262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110818) * ((1 : F) + (1 : F) * rho 110817) = ((1 : F) * rho 110815 + (1 : F) * rho 110816)

def relationRow4263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110819) * ((1 : F) + (-1 : F) * rho 110817) = ((1 : F) * rho 110814 + (-1 : F) * rho 110815 + (-1 : F) * rho 110816)

def relationLc2276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 18⟩], residual := [((1 : F), 110818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108533) * (relationLc2276 rho) = ((1 : F) * rho 110820)

def relationLc2277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 18⟩], residual := [((1 : F), 110819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108533) * (relationLc2277 rho) = ((1 : F) * rho 110821)

def relationRow4266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110811) * ((1 : F) * rho 110812) = ((1 : F) * rho 110822)

def relationRow4267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110811) * ((1 : F) * rho 110811) = ((1 : F) * rho 110823)

def relationRow4268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110812) * ((1 : F) * rho 110812) = ((1 : F) * rho 110824)

def relationRow4269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110825) * ((-1 : F) * rho 110823 + (1 : F) * rho 110824) = ((2 : F) * rho 110822)

def relationRow4270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110826) * ((2 : F) + (1 : F) * rho 110823 + (-1 : F) * rho 110824) = ((1 : F) * rho 110823 + (1 : F) * rho 110824)

def relationLc2278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 19⟩, ⟨(1 : F), 110569, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4271 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2278 rho) = ((1 : F) * rho 110827)

def relationRow4272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110827) * ((1 : F) * rho 110825 + (1 : F) * rho 110826) = ((1 : F) * rho 110828)

def relationLc2279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110826) * (relationLc2279 rho) = ((1 : F) * rho 110829)

def relationLc2280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110825) * (relationLc2280 rho) = ((1 : F) * rho 110830)

def relationRow4275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110829) * ((1 : F) * rho 110830) = ((1 : F) * rho 110831)

def relationRow4276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110832) * ((1 : F) + (1 : F) * rho 110831) = ((1 : F) * rho 110829 + (1 : F) * rho 110830)

def relationRow4277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110833) * ((1 : F) + (-1 : F) * rho 110831) = ((1 : F) * rho 110828 + (-1 : F) * rho 110829 + (-1 : F) * rho 110830)

def relationLc2281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 19⟩], residual := [((1 : F), 110832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108534) * (relationLc2281 rho) = ((1 : F) * rho 110834)

def relationLc2282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 19⟩], residual := [((1 : F), 110833)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108534) * (relationLc2282 rho) = ((1 : F) * rho 110835)

def relationRow4280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110825) * ((1 : F) * rho 110826) = ((1 : F) * rho 110836)

def relationRow4281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110825) * ((1 : F) * rho 110825) = ((1 : F) * rho 110837)

def relationRow4282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110826) * ((1 : F) * rho 110826) = ((1 : F) * rho 110838)

def relationRow4283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110839) * ((-1 : F) * rho 110837 + (1 : F) * rho 110838) = ((2 : F) * rho 110836)

def relationRow4284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110840) * ((2 : F) + (1 : F) * rho 110837 + (-1 : F) * rho 110838) = ((1 : F) * rho 110837 + (1 : F) * rho 110838)

def relationLc2283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 20⟩, ⟨(1 : F), 110569, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4285 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2283 rho) = ((1 : F) * rho 110841)

def relationRow4286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110841) * ((1 : F) * rho 110839 + (1 : F) * rho 110840) = ((1 : F) * rho 110842)

def relationLc2284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110840) * (relationLc2284 rho) = ((1 : F) * rho 110843)

def relationLc2285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110839) * (relationLc2285 rho) = ((1 : F) * rho 110844)

def relationRow4289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110843) * ((1 : F) * rho 110844) = ((1 : F) * rho 110845)

def relationRow4290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110846) * ((1 : F) + (1 : F) * rho 110845) = ((1 : F) * rho 110843 + (1 : F) * rho 110844)

def relationRow4291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110847) * ((1 : F) + (-1 : F) * rho 110845) = ((1 : F) * rho 110842 + (-1 : F) * rho 110843 + (-1 : F) * rho 110844)

def relationLc2286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 20⟩], residual := [((1 : F), 110846)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108535) * (relationLc2286 rho) = ((1 : F) * rho 110848)

def relationLc2287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 20⟩], residual := [((1 : F), 110847)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108535) * (relationLc2287 rho) = ((1 : F) * rho 110849)

def relationRow4294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110839) * ((1 : F) * rho 110840) = ((1 : F) * rho 110850)

def relationRow4295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110839) * ((1 : F) * rho 110839) = ((1 : F) * rho 110851)

def relationRow4296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110840) * ((1 : F) * rho 110840) = ((1 : F) * rho 110852)

def relationRow4297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110853) * ((-1 : F) * rho 110851 + (1 : F) * rho 110852) = ((2 : F) * rho 110850)

def relationRow4298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110854) * ((2 : F) + (1 : F) * rho 110851 + (-1 : F) * rho 110852) = ((1 : F) * rho 110851 + (1 : F) * rho 110852)

def relationLc2288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 21⟩, ⟨(1 : F), 110569, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4299 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2288 rho) = ((1 : F) * rho 110855)

def relationRow4300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110855) * ((1 : F) * rho 110853 + (1 : F) * rho 110854) = ((1 : F) * rho 110856)

def relationLc2289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110854) * (relationLc2289 rho) = ((1 : F) * rho 110857)

def relationLc2290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110853) * (relationLc2290 rho) = ((1 : F) * rho 110858)

def relationRow4303 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110857) * ((1 : F) * rho 110858) = ((1 : F) * rho 110859)

def relationRow4304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110860) * ((1 : F) + (1 : F) * rho 110859) = ((1 : F) * rho 110857 + (1 : F) * rho 110858)

def relationRow4305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110861) * ((1 : F) + (-1 : F) * rho 110859) = ((1 : F) * rho 110856 + (-1 : F) * rho 110857 + (-1 : F) * rho 110858)

def relationLc2291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 21⟩], residual := [((1 : F), 110860)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108536) * (relationLc2291 rho) = ((1 : F) * rho 110862)

def relationLc2292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 21⟩], residual := [((1 : F), 110861)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108536) * (relationLc2292 rho) = ((1 : F) * rho 110863)

def relationRow4308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110853) * ((1 : F) * rho 110854) = ((1 : F) * rho 110864)

def relationRow4309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110853) * ((1 : F) * rho 110853) = ((1 : F) * rho 110865)

def relationRow4310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110854) * ((1 : F) * rho 110854) = ((1 : F) * rho 110866)

def relationRow4311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110867) * ((-1 : F) * rho 110865 + (1 : F) * rho 110866) = ((2 : F) * rho 110864)

def relationRow4312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110868) * ((2 : F) + (1 : F) * rho 110865 + (-1 : F) * rho 110866) = ((1 : F) * rho 110865 + (1 : F) * rho 110866)

def relationLc2293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 22⟩, ⟨(1 : F), 110569, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4313 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2293 rho) = ((1 : F) * rho 110869)

def relationRow4314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110869) * ((1 : F) * rho 110867 + (1 : F) * rho 110868) = ((1 : F) * rho 110870)

def relationLc2294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110868) * (relationLc2294 rho) = ((1 : F) * rho 110871)

def relationLc2295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110867) * (relationLc2295 rho) = ((1 : F) * rho 110872)

def relationRow4317 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110871) * ((1 : F) * rho 110872) = ((1 : F) * rho 110873)

def relationRow4318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110874) * ((1 : F) + (1 : F) * rho 110873) = ((1 : F) * rho 110871 + (1 : F) * rho 110872)

def relationRow4319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110875) * ((1 : F) + (-1 : F) * rho 110873) = ((1 : F) * rho 110870 + (-1 : F) * rho 110871 + (-1 : F) * rho 110872)

def relationLc2296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 22⟩], residual := [((1 : F), 110874)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108537) * (relationLc2296 rho) = ((1 : F) * rho 110876)

def relationLc2297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 22⟩], residual := [((1 : F), 110875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108537) * (relationLc2297 rho) = ((1 : F) * rho 110877)

def relationRow4322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110867) * ((1 : F) * rho 110868) = ((1 : F) * rho 110878)

def relationRow4323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110867) * ((1 : F) * rho 110867) = ((1 : F) * rho 110879)

def relationRow4324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110868) * ((1 : F) * rho 110868) = ((1 : F) * rho 110880)

def relationRow4325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110881) * ((-1 : F) * rho 110879 + (1 : F) * rho 110880) = ((2 : F) * rho 110878)

def relationRow4326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110882) * ((2 : F) + (1 : F) * rho 110879 + (-1 : F) * rho 110880) = ((1 : F) * rho 110879 + (1 : F) * rho 110880)

def relationLc2298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 23⟩, ⟨(1 : F), 110569, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4327 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2298 rho) = ((1 : F) * rho 110883)

def relationRow4328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110883) * ((1 : F) * rho 110881 + (1 : F) * rho 110882) = ((1 : F) * rho 110884)

def relationLc2299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110882) * (relationLc2299 rho) = ((1 : F) * rho 110885)

def relationLc2300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110881) * (relationLc2300 rho) = ((1 : F) * rho 110886)

def relationRow4331 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110885) * ((1 : F) * rho 110886) = ((1 : F) * rho 110887)

def relationRow4332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110888) * ((1 : F) + (1 : F) * rho 110887) = ((1 : F) * rho 110885 + (1 : F) * rho 110886)

def relationRow4333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110889) * ((1 : F) + (-1 : F) * rho 110887) = ((1 : F) * rho 110884 + (-1 : F) * rho 110885 + (-1 : F) * rho 110886)

def relationLc2301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 23⟩], residual := [((1 : F), 110888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108538) * (relationLc2301 rho) = ((1 : F) * rho 110890)

def relationLc2302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 23⟩], residual := [((1 : F), 110889)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108538) * (relationLc2302 rho) = ((1 : F) * rho 110891)

def relationRow4336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110881) * ((1 : F) * rho 110882) = ((1 : F) * rho 110892)

def relationRow4337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110881) * ((1 : F) * rho 110881) = ((1 : F) * rho 110893)

def relationRow4338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110882) * ((1 : F) * rho 110882) = ((1 : F) * rho 110894)

def relationRow4339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110895) * ((-1 : F) * rho 110893 + (1 : F) * rho 110894) = ((2 : F) * rho 110892)

def relationRow4340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110896) * ((2 : F) + (1 : F) * rho 110893 + (-1 : F) * rho 110894) = ((1 : F) * rho 110893 + (1 : F) * rho 110894)

def relationLc2303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 24⟩, ⟨(1 : F), 110569, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4341 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2303 rho) = ((1 : F) * rho 110897)

def relationRow4342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110897) * ((1 : F) * rho 110895 + (1 : F) * rho 110896) = ((1 : F) * rho 110898)

def relationLc2304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110896) * (relationLc2304 rho) = ((1 : F) * rho 110899)

def relationLc2305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110895) * (relationLc2305 rho) = ((1 : F) * rho 110900)

def relationRow4345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110899) * ((1 : F) * rho 110900) = ((1 : F) * rho 110901)

def relationRow4346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110902) * ((1 : F) + (1 : F) * rho 110901) = ((1 : F) * rho 110899 + (1 : F) * rho 110900)

def relationRow4347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110903) * ((1 : F) + (-1 : F) * rho 110901) = ((1 : F) * rho 110898 + (-1 : F) * rho 110899 + (-1 : F) * rho 110900)

def relationLc2306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 24⟩], residual := [((1 : F), 110902)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108539) * (relationLc2306 rho) = ((1 : F) * rho 110904)

def relationLc2307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 24⟩], residual := [((1 : F), 110903)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108539) * (relationLc2307 rho) = ((1 : F) * rho 110905)

def relationRow4350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110895) * ((1 : F) * rho 110896) = ((1 : F) * rho 110906)

def relationRow4351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110895) * ((1 : F) * rho 110895) = ((1 : F) * rho 110907)

def relationRow4352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110896) * ((1 : F) * rho 110896) = ((1 : F) * rho 110908)

def relationRow4353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110909) * ((-1 : F) * rho 110907 + (1 : F) * rho 110908) = ((2 : F) * rho 110906)

def relationRow4354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110910) * ((2 : F) + (1 : F) * rho 110907 + (-1 : F) * rho 110908) = ((1 : F) * rho 110907 + (1 : F) * rho 110908)

def relationLc2308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 25⟩, ⟨(1 : F), 110569, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4355 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2308 rho) = ((1 : F) * rho 110911)

def relationRow4356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110911) * ((1 : F) * rho 110909 + (1 : F) * rho 110910) = ((1 : F) * rho 110912)

def relationLc2309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110910) * (relationLc2309 rho) = ((1 : F) * rho 110913)

def relationLc2310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110909) * (relationLc2310 rho) = ((1 : F) * rho 110914)

def relationRow4359 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110913) * ((1 : F) * rho 110914) = ((1 : F) * rho 110915)

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110916) * ((1 : F) + (1 : F) * rho 110915) = ((1 : F) * rho 110913 + (1 : F) * rho 110914)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110917) * ((1 : F) + (-1 : F) * rho 110915) = ((1 : F) * rho 110912 + (-1 : F) * rho 110913 + (-1 : F) * rho 110914)

def relationLc2311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 25⟩], residual := [((1 : F), 110916)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108540) * (relationLc2311 rho) = ((1 : F) * rho 110918)

def relationLc2312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 25⟩], residual := [((1 : F), 110917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108540) * (relationLc2312 rho) = ((1 : F) * rho 110919)

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110909) * ((1 : F) * rho 110910) = ((1 : F) * rho 110920)

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110909) * ((1 : F) * rho 110909) = ((1 : F) * rho 110921)

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110910) * ((1 : F) * rho 110910) = ((1 : F) * rho 110922)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110923) * ((-1 : F) * rho 110921 + (1 : F) * rho 110922) = ((2 : F) * rho 110920)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110924) * ((2 : F) + (1 : F) * rho 110921 + (-1 : F) * rho 110922) = ((1 : F) * rho 110921 + (1 : F) * rho 110922)

def relationLc2313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 26⟩, ⟨(1 : F), 110569, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2313 rho) = ((1 : F) * rho 110925)

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110925) * ((1 : F) * rho 110923 + (1 : F) * rho 110924) = ((1 : F) * rho 110926)

def relationLc2314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110924) * (relationLc2314 rho) = ((1 : F) * rho 110927)

def relationLc2315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110923) * (relationLc2315 rho) = ((1 : F) * rho 110928)

def relationRow4373 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110927) * ((1 : F) * rho 110928) = ((1 : F) * rho 110929)

def relationRow4374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110930) * ((1 : F) + (1 : F) * rho 110929) = ((1 : F) * rho 110927 + (1 : F) * rho 110928)

def relationRow4375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110931) * ((1 : F) + (-1 : F) * rho 110929) = ((1 : F) * rho 110926 + (-1 : F) * rho 110927 + (-1 : F) * rho 110928)

def relationLc2316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 26⟩], residual := [((1 : F), 110930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108541) * (relationLc2316 rho) = ((1 : F) * rho 110932)

def relationLc2317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 26⟩], residual := [((1 : F), 110931)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108541) * (relationLc2317 rho) = ((1 : F) * rho 110933)

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110923) * ((1 : F) * rho 110924) = ((1 : F) * rho 110934)

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110923) * ((1 : F) * rho 110923) = ((1 : F) * rho 110935)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110924) * ((1 : F) * rho 110924) = ((1 : F) * rho 110936)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110937) * ((-1 : F) * rho 110935 + (1 : F) * rho 110936) = ((2 : F) * rho 110934)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110938) * ((2 : F) + (1 : F) * rho 110935 + (-1 : F) * rho 110936) = ((1 : F) * rho 110935 + (1 : F) * rho 110936)

def relationLc2318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 27⟩, ⟨(1 : F), 110569, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2318 rho) = ((1 : F) * rho 110939)

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110939) * ((1 : F) * rho 110937 + (1 : F) * rho 110938) = ((1 : F) * rho 110940)

def relationLc2319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110938) * (relationLc2319 rho) = ((1 : F) * rho 110941)

def relationLc2320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110569, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110937) * (relationLc2320 rho) = ((1 : F) * rho 110942)

def relationRow4387 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110941) * ((1 : F) * rho 110942) = ((1 : F) * rho 110943)

def relationRow4388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110944) * ((1 : F) + (1 : F) * rho 110943) = ((1 : F) * rho 110941 + (1 : F) * rho 110942)

def relationRow4389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110945) * ((1 : F) + (-1 : F) * rho 110943) = ((1 : F) * rho 110940 + (-1 : F) * rho 110941 + (-1 : F) * rho 110942)

def relationLc2321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 150⟩, ⟨(-1 : F), 110568, 14, 27⟩], residual := [((1 : F), 110944)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108542) * (relationLc2321 rho) = ((1 : F) * rho 110946)

def relationLc2322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 150⟩, ⟨(-1 : F), 110569, 14, 27⟩], residual := [((1 : F), 110945)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108542) * (relationLc2322 rho) = ((1 : F) * rho 110947)

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110937) * ((1 : F) * rho 110938) = ((1 : F) * rho 110948)

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110937) * ((1 : F) * rho 110937) = ((1 : F) * rho 110949)

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110938) * ((1 : F) * rho 110938) = ((1 : F) * rho 110950)

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110951) * ((-1 : F) * rho 110949 + (1 : F) * rho 110950) = ((2 : F) * rho 110948)

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110952) * ((2 : F) + (1 : F) * rho 110949 + (-1 : F) * rho 110950) = ((1 : F) * rho 110949 + (1 : F) * rho 110950)

def relationLc2323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 108618, 13, 150⟩, ⟨(1 : F), 110568, 14, 28⟩, ⟨(1 : F), 110569, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2323 rho) = ((1 : F) * rho 110953)

def relationRow4398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110953) * ((1 : F) * rho 110951 + (1 : F) * rho 110952) = ((1 : F) * rho 110954)

def relationLc2324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 150⟩, ⟨(1 : F), 110568, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110952) * (relationLc2324 rho) = ((1 : F) * rho 110955)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
