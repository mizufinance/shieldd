import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationLc3050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104334) * (relationLc3050 rho) = ((1 : F) * rho 104336)

def relationLc3051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104333) * (relationLc3051 rho) = ((1 : F) * rho 104337)

def relationRow6812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104336) * ((1 : F) * rho 104337) = ((1 : F) * rho 104338)

def relationRow6813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104339) * ((1 : F) + (1 : F) * rho 104338) = ((1 : F) * rho 104336 + (1 : F) * rho 104337)

def relationRow6814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104340) * ((1 : F) + (-1 : F) * rho 104338) = ((1 : F) * rho 104335 + (-1 : F) * rho 104336 + (-1 : F) * rho 104337)

def relationLc3052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 88⟩], residual := [((1 : F), 104339)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103034) * (relationLc3052 rho) = ((1 : F) * rho 104341)

def relationLc3053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 88⟩], residual := [((1 : F), 104340)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103034) * (relationLc3053 rho) = ((1 : F) * rho 104342)

def relationRow6817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104333) * ((1 : F) * rho 104334) = ((1 : F) * rho 104343)

def relationRow6818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104333) * ((1 : F) * rho 104333) = ((1 : F) * rho 104344)

def relationRow6819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104334) * ((1 : F) * rho 104334) = ((1 : F) * rho 104345)

def relationRow6820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104346) * ((-1 : F) * rho 104344 + (1 : F) * rho 104345) = ((2 : F) * rho 104343)

def relationRow6821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104347) * ((2 : F) + (1 : F) * rho 104344 + (-1 : F) * rho 104345) = ((1 : F) * rho 104344 + (1 : F) * rho 104345)

def relationLc3054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 89⟩, ⟨(1 : F), 103198, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104346 + (1 : F) * rho 104347) * (relationLc3054 rho) = ((1 : F) * rho 104348)

def relationLc3055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104347) * (relationLc3055 rho) = ((1 : F) * rho 104349)

def relationLc3056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104346) * (relationLc3056 rho) = ((1 : F) * rho 104350)

def relationRow6825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104349) * ((1 : F) * rho 104350) = ((1 : F) * rho 104351)

def relationRow6826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104352) * ((1 : F) + (1 : F) * rho 104351) = ((1 : F) * rho 104349 + (1 : F) * rho 104350)

def relationRow6827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104353) * ((1 : F) + (-1 : F) * rho 104351) = ((1 : F) * rho 104348 + (-1 : F) * rho 104349 + (-1 : F) * rho 104350)

def relationLc3057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 89⟩], residual := [((1 : F), 104352)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103035) * (relationLc3057 rho) = ((1 : F) * rho 104354)

def relationLc3058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 89⟩], residual := [((1 : F), 104353)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103035) * (relationLc3058 rho) = ((1 : F) * rho 104355)

def relationRow6830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104346) * ((1 : F) * rho 104347) = ((1 : F) * rho 104356)

def relationRow6831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104346) * ((1 : F) * rho 104346) = ((1 : F) * rho 104357)

def relationRow6832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104347) * ((1 : F) * rho 104347) = ((1 : F) * rho 104358)

def relationRow6833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104359) * ((-1 : F) * rho 104357 + (1 : F) * rho 104358) = ((2 : F) * rho 104356)

def relationRow6834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104360) * ((2 : F) + (1 : F) * rho 104357 + (-1 : F) * rho 104358) = ((1 : F) * rho 104357 + (1 : F) * rho 104358)

def relationLc3059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 90⟩, ⟨(1 : F), 103198, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104359 + (1 : F) * rho 104360) * (relationLc3059 rho) = ((1 : F) * rho 104361)

def relationLc3060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104360) * (relationLc3060 rho) = ((1 : F) * rho 104362)

def relationLc3061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104359) * (relationLc3061 rho) = ((1 : F) * rho 104363)

def relationRow6838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104362) * ((1 : F) * rho 104363) = ((1 : F) * rho 104364)

def relationRow6839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104365) * ((1 : F) + (1 : F) * rho 104364) = ((1 : F) * rho 104362 + (1 : F) * rho 104363)

def relationRow6840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104366) * ((1 : F) + (-1 : F) * rho 104364) = ((1 : F) * rho 104361 + (-1 : F) * rho 104362 + (-1 : F) * rho 104363)

def relationLc3062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 90⟩], residual := [((1 : F), 104365)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103036) * (relationLc3062 rho) = ((1 : F) * rho 104367)

def relationLc3063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 90⟩], residual := [((1 : F), 104366)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103036) * (relationLc3063 rho) = ((1 : F) * rho 104368)

def relationRow6843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104359) * ((1 : F) * rho 104360) = ((1 : F) * rho 104369)

def relationRow6844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104359) * ((1 : F) * rho 104359) = ((1 : F) * rho 104370)

def relationRow6845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104360) * ((1 : F) * rho 104360) = ((1 : F) * rho 104371)

def relationRow6846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104372) * ((-1 : F) * rho 104370 + (1 : F) * rho 104371) = ((2 : F) * rho 104369)

def relationRow6847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104373) * ((2 : F) + (1 : F) * rho 104370 + (-1 : F) * rho 104371) = ((1 : F) * rho 104370 + (1 : F) * rho 104371)

def relationLc3064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 91⟩, ⟨(1 : F), 103198, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104372 + (1 : F) * rho 104373) * (relationLc3064 rho) = ((1 : F) * rho 104374)

def relationLc3065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104373) * (relationLc3065 rho) = ((1 : F) * rho 104375)

def relationLc3066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104372) * (relationLc3066 rho) = ((1 : F) * rho 104376)

def relationRow6851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104375) * ((1 : F) * rho 104376) = ((1 : F) * rho 104377)

def relationRow6852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104378) * ((1 : F) + (1 : F) * rho 104377) = ((1 : F) * rho 104375 + (1 : F) * rho 104376)

def relationRow6853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104379) * ((1 : F) + (-1 : F) * rho 104377) = ((1 : F) * rho 104374 + (-1 : F) * rho 104375 + (-1 : F) * rho 104376)

def relationLc3067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 91⟩], residual := [((1 : F), 104378)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103037) * (relationLc3067 rho) = ((1 : F) * rho 104380)

def relationLc3068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 91⟩], residual := [((1 : F), 104379)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103037) * (relationLc3068 rho) = ((1 : F) * rho 104381)

def relationRow6856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104372) * ((1 : F) * rho 104373) = ((1 : F) * rho 104382)

def relationRow6857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104372) * ((1 : F) * rho 104372) = ((1 : F) * rho 104383)

def relationRow6858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104373) * ((1 : F) * rho 104373) = ((1 : F) * rho 104384)

def relationRow6859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104385) * ((-1 : F) * rho 104383 + (1 : F) * rho 104384) = ((2 : F) * rho 104382)

def relationRow6860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104386) * ((2 : F) + (1 : F) * rho 104383 + (-1 : F) * rho 104384) = ((1 : F) * rho 104383 + (1 : F) * rho 104384)

def relationLc3069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 92⟩, ⟨(1 : F), 103198, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104385 + (1 : F) * rho 104386) * (relationLc3069 rho) = ((1 : F) * rho 104387)

def relationLc3070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104386) * (relationLc3070 rho) = ((1 : F) * rho 104388)

def relationLc3071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104385) * (relationLc3071 rho) = ((1 : F) * rho 104389)

def relationRow6864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104388) * ((1 : F) * rho 104389) = ((1 : F) * rho 104390)

def relationRow6865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104391) * ((1 : F) + (1 : F) * rho 104390) = ((1 : F) * rho 104388 + (1 : F) * rho 104389)

def relationRow6866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104392) * ((1 : F) + (-1 : F) * rho 104390) = ((1 : F) * rho 104387 + (-1 : F) * rho 104388 + (-1 : F) * rho 104389)

def relationLc3072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 92⟩], residual := [((1 : F), 104391)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103038) * (relationLc3072 rho) = ((1 : F) * rho 104393)

def relationLc3073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 92⟩], residual := [((1 : F), 104392)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103038) * (relationLc3073 rho) = ((1 : F) * rho 104394)

def relationRow6869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104385) * ((1 : F) * rho 104386) = ((1 : F) * rho 104395)

def relationRow6870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104385) * ((1 : F) * rho 104385) = ((1 : F) * rho 104396)

def relationRow6871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104386) * ((1 : F) * rho 104386) = ((1 : F) * rho 104397)

def relationRow6872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104398) * ((-1 : F) * rho 104396 + (1 : F) * rho 104397) = ((2 : F) * rho 104395)

def relationRow6873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104399) * ((2 : F) + (1 : F) * rho 104396 + (-1 : F) * rho 104397) = ((1 : F) * rho 104396 + (1 : F) * rho 104397)

def relationLc3074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 93⟩, ⟨(1 : F), 103198, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104398 + (1 : F) * rho 104399) * (relationLc3074 rho) = ((1 : F) * rho 104400)

def relationLc3075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104399) * (relationLc3075 rho) = ((1 : F) * rho 104401)

def relationLc3076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104398) * (relationLc3076 rho) = ((1 : F) * rho 104402)

def relationRow6877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104401) * ((1 : F) * rho 104402) = ((1 : F) * rho 104403)

def relationRow6878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104404) * ((1 : F) + (1 : F) * rho 104403) = ((1 : F) * rho 104401 + (1 : F) * rho 104402)

def relationRow6879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104405) * ((1 : F) + (-1 : F) * rho 104403) = ((1 : F) * rho 104400 + (-1 : F) * rho 104401 + (-1 : F) * rho 104402)

def relationLc3077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 93⟩], residual := [((1 : F), 104404)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103039) * (relationLc3077 rho) = ((1 : F) * rho 104406)

def relationLc3078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 93⟩], residual := [((1 : F), 104405)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103039) * (relationLc3078 rho) = ((1 : F) * rho 104407)

def relationRow6882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104398) * ((1 : F) * rho 104399) = ((1 : F) * rho 104408)

def relationRow6883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104398) * ((1 : F) * rho 104398) = ((1 : F) * rho 104409)

def relationRow6884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104399) * ((1 : F) * rho 104399) = ((1 : F) * rho 104410)

def relationRow6885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104411) * ((-1 : F) * rho 104409 + (1 : F) * rho 104410) = ((2 : F) * rho 104408)

def relationRow6886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104412) * ((2 : F) + (1 : F) * rho 104409 + (-1 : F) * rho 104410) = ((1 : F) * rho 104409 + (1 : F) * rho 104410)

def relationLc3079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 94⟩, ⟨(1 : F), 103198, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104411 + (1 : F) * rho 104412) * (relationLc3079 rho) = ((1 : F) * rho 104413)

def relationLc3080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104412) * (relationLc3080 rho) = ((1 : F) * rho 104414)

def relationLc3081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104411) * (relationLc3081 rho) = ((1 : F) * rho 104415)

def relationRow6890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104414) * ((1 : F) * rho 104415) = ((1 : F) * rho 104416)

def relationRow6891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104417) * ((1 : F) + (1 : F) * rho 104416) = ((1 : F) * rho 104414 + (1 : F) * rho 104415)

def relationRow6892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104418) * ((1 : F) + (-1 : F) * rho 104416) = ((1 : F) * rho 104413 + (-1 : F) * rho 104414 + (-1 : F) * rho 104415)

def relationLc3082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 94⟩], residual := [((1 : F), 104417)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103040) * (relationLc3082 rho) = ((1 : F) * rho 104419)

def relationLc3083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 94⟩], residual := [((1 : F), 104418)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103040) * (relationLc3083 rho) = ((1 : F) * rho 104420)

def relationRow6895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104411) * ((1 : F) * rho 104412) = ((1 : F) * rho 104421)

def relationRow6896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104411) * ((1 : F) * rho 104411) = ((1 : F) * rho 104422)

def relationRow6897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104412) * ((1 : F) * rho 104412) = ((1 : F) * rho 104423)

def relationRow6898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104424) * ((-1 : F) * rho 104422 + (1 : F) * rho 104423) = ((2 : F) * rho 104421)

def relationRow6899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104425) * ((2 : F) + (1 : F) * rho 104422 + (-1 : F) * rho 104423) = ((1 : F) * rho 104422 + (1 : F) * rho 104423)

def relationLc3084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 95⟩, ⟨(1 : F), 103198, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104424 + (1 : F) * rho 104425) * (relationLc3084 rho) = ((1 : F) * rho 104426)

def relationLc3085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104425) * (relationLc3085 rho) = ((1 : F) * rho 104427)

def relationLc3086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104424) * (relationLc3086 rho) = ((1 : F) * rho 104428)

def relationRow6903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104427) * ((1 : F) * rho 104428) = ((1 : F) * rho 104429)

def relationRow6904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104430) * ((1 : F) + (1 : F) * rho 104429) = ((1 : F) * rho 104427 + (1 : F) * rho 104428)

def relationRow6905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104431) * ((1 : F) + (-1 : F) * rho 104429) = ((1 : F) * rho 104426 + (-1 : F) * rho 104427 + (-1 : F) * rho 104428)

def relationLc3087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 95⟩], residual := [((1 : F), 104430)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103041) * (relationLc3087 rho) = ((1 : F) * rho 104432)

def relationLc3088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 95⟩], residual := [((1 : F), 104431)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103041) * (relationLc3088 rho) = ((1 : F) * rho 104433)

def relationRow6908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104424) * ((1 : F) * rho 104425) = ((1 : F) * rho 104434)

def relationRow6909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104424) * ((1 : F) * rho 104424) = ((1 : F) * rho 104435)

def relationRow6910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104425) * ((1 : F) * rho 104425) = ((1 : F) * rho 104436)

def relationRow6911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104437) * ((-1 : F) * rho 104435 + (1 : F) * rho 104436) = ((2 : F) * rho 104434)

def relationRow6912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104438) * ((2 : F) + (1 : F) * rho 104435 + (-1 : F) * rho 104436) = ((1 : F) * rho 104435 + (1 : F) * rho 104436)

def relationLc3089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 96⟩, ⟨(1 : F), 103198, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104437 + (1 : F) * rho 104438) * (relationLc3089 rho) = ((1 : F) * rho 104439)

def relationLc3090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104438) * (relationLc3090 rho) = ((1 : F) * rho 104440)

def relationLc3091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104437) * (relationLc3091 rho) = ((1 : F) * rho 104441)

def relationRow6916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104440) * ((1 : F) * rho 104441) = ((1 : F) * rho 104442)

def relationRow6917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104443) * ((1 : F) + (1 : F) * rho 104442) = ((1 : F) * rho 104440 + (1 : F) * rho 104441)

def relationRow6918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104444) * ((1 : F) + (-1 : F) * rho 104442) = ((1 : F) * rho 104439 + (-1 : F) * rho 104440 + (-1 : F) * rho 104441)

def relationLc3092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 96⟩], residual := [((1 : F), 104443)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103042) * (relationLc3092 rho) = ((1 : F) * rho 104445)

def relationLc3093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 96⟩], residual := [((1 : F), 104444)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103042) * (relationLc3093 rho) = ((1 : F) * rho 104446)

def relationRow6921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104437) * ((1 : F) * rho 104438) = ((1 : F) * rho 104447)

def relationRow6922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104437) * ((1 : F) * rho 104437) = ((1 : F) * rho 104448)

def relationRow6923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104438) * ((1 : F) * rho 104438) = ((1 : F) * rho 104449)

def relationRow6924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104450) * ((-1 : F) * rho 104448 + (1 : F) * rho 104449) = ((2 : F) * rho 104447)

def relationRow6925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104451) * ((2 : F) + (1 : F) * rho 104448 + (-1 : F) * rho 104449) = ((1 : F) * rho 104448 + (1 : F) * rho 104449)

def relationLc3094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 97⟩, ⟨(1 : F), 103198, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104450 + (1 : F) * rho 104451) * (relationLc3094 rho) = ((1 : F) * rho 104452)

def relationLc3095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104451) * (relationLc3095 rho) = ((1 : F) * rho 104453)

def relationLc3096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104450) * (relationLc3096 rho) = ((1 : F) * rho 104454)

def relationRow6929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104453) * ((1 : F) * rho 104454) = ((1 : F) * rho 104455)

def relationRow6930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104456) * ((1 : F) + (1 : F) * rho 104455) = ((1 : F) * rho 104453 + (1 : F) * rho 104454)

def relationRow6931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104457) * ((1 : F) + (-1 : F) * rho 104455) = ((1 : F) * rho 104452 + (-1 : F) * rho 104453 + (-1 : F) * rho 104454)

def relationLc3097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 97⟩], residual := [((1 : F), 104456)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103043) * (relationLc3097 rho) = ((1 : F) * rho 104458)

def relationLc3098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 97⟩], residual := [((1 : F), 104457)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103043) * (relationLc3098 rho) = ((1 : F) * rho 104459)

def relationRow6934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104450) * ((1 : F) * rho 104451) = ((1 : F) * rho 104460)

def relationRow6935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104450) * ((1 : F) * rho 104450) = ((1 : F) * rho 104461)

def relationRow6936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104451) * ((1 : F) * rho 104451) = ((1 : F) * rho 104462)

def relationRow6937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104463) * ((-1 : F) * rho 104461 + (1 : F) * rho 104462) = ((2 : F) * rho 104460)

def relationRow6938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104464) * ((2 : F) + (1 : F) * rho 104461 + (-1 : F) * rho 104462) = ((1 : F) * rho 104461 + (1 : F) * rho 104462)

def relationLc3099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 98⟩, ⟨(1 : F), 103198, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104463 + (1 : F) * rho 104464) * (relationLc3099 rho) = ((1 : F) * rho 104465)

def relationLc3100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104464) * (relationLc3100 rho) = ((1 : F) * rho 104466)

def relationLc3101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104463) * (relationLc3101 rho) = ((1 : F) * rho 104467)

def relationRow6942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104466) * ((1 : F) * rho 104467) = ((1 : F) * rho 104468)

def relationRow6943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104469) * ((1 : F) + (1 : F) * rho 104468) = ((1 : F) * rho 104466 + (1 : F) * rho 104467)

def relationRow6944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104470) * ((1 : F) + (-1 : F) * rho 104468) = ((1 : F) * rho 104465 + (-1 : F) * rho 104466 + (-1 : F) * rho 104467)

def relationLc3102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 98⟩], residual := [((1 : F), 104469)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103044) * (relationLc3102 rho) = ((1 : F) * rho 104471)

def relationLc3103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 98⟩], residual := [((1 : F), 104470)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103044) * (relationLc3103 rho) = ((1 : F) * rho 104472)

def relationRow6947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104463) * ((1 : F) * rho 104464) = ((1 : F) * rho 104473)

def relationRow6948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104463) * ((1 : F) * rho 104463) = ((1 : F) * rho 104474)

def relationRow6949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104464) * ((1 : F) * rho 104464) = ((1 : F) * rho 104475)

def relationRow6950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104476) * ((-1 : F) * rho 104474 + (1 : F) * rho 104475) = ((2 : F) * rho 104473)

def relationRow6951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104477) * ((2 : F) + (1 : F) * rho 104474 + (-1 : F) * rho 104475) = ((1 : F) * rho 104474 + (1 : F) * rho 104475)

def relationLc3104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 99⟩, ⟨(1 : F), 103198, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104476 + (1 : F) * rho 104477) * (relationLc3104 rho) = ((1 : F) * rho 104478)

def relationLc3105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104477) * (relationLc3105 rho) = ((1 : F) * rho 104479)

def relationLc3106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104476) * (relationLc3106 rho) = ((1 : F) * rho 104480)

def relationRow6955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104479) * ((1 : F) * rho 104480) = ((1 : F) * rho 104481)

def relationRow6956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104482) * ((1 : F) + (1 : F) * rho 104481) = ((1 : F) * rho 104479 + (1 : F) * rho 104480)

def relationRow6957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104483) * ((1 : F) + (-1 : F) * rho 104481) = ((1 : F) * rho 104478 + (-1 : F) * rho 104479 + (-1 : F) * rho 104480)

def relationLc3107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 99⟩], residual := [((1 : F), 104482)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103045) * (relationLc3107 rho) = ((1 : F) * rho 104484)

def relationLc3108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 99⟩], residual := [((1 : F), 104483)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103045) * (relationLc3108 rho) = ((1 : F) * rho 104485)

def relationRow6960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104476) * ((1 : F) * rho 104477) = ((1 : F) * rho 104486)

def relationRow6961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104476) * ((1 : F) * rho 104476) = ((1 : F) * rho 104487)

def relationRow6962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104477) * ((1 : F) * rho 104477) = ((1 : F) * rho 104488)

def relationRow6963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104489) * ((-1 : F) * rho 104487 + (1 : F) * rho 104488) = ((2 : F) * rho 104486)

def relationRow6964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104490) * ((2 : F) + (1 : F) * rho 104487 + (-1 : F) * rho 104488) = ((1 : F) * rho 104487 + (1 : F) * rho 104488)

def relationLc3109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 100⟩, ⟨(1 : F), 103198, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104489 + (1 : F) * rho 104490) * (relationLc3109 rho) = ((1 : F) * rho 104491)

def relationLc3110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104490) * (relationLc3110 rho) = ((1 : F) * rho 104492)

def relationLc3111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104489) * (relationLc3111 rho) = ((1 : F) * rho 104493)

def relationRow6968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104492) * ((1 : F) * rho 104493) = ((1 : F) * rho 104494)

def relationRow6969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104495) * ((1 : F) + (1 : F) * rho 104494) = ((1 : F) * rho 104492 + (1 : F) * rho 104493)

def relationRow6970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104496) * ((1 : F) + (-1 : F) * rho 104494) = ((1 : F) * rho 104491 + (-1 : F) * rho 104492 + (-1 : F) * rho 104493)

def relationLc3112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 100⟩], residual := [((1 : F), 104495)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103046) * (relationLc3112 rho) = ((1 : F) * rho 104497)

def relationLc3113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 100⟩], residual := [((1 : F), 104496)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103046) * (relationLc3113 rho) = ((1 : F) * rho 104498)

def relationRow6973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104489) * ((1 : F) * rho 104490) = ((1 : F) * rho 104499)

def relationRow6974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104489) * ((1 : F) * rho 104489) = ((1 : F) * rho 104500)

def relationRow6975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104490) * ((1 : F) * rho 104490) = ((1 : F) * rho 104501)

def relationRow6976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104502) * ((-1 : F) * rho 104500 + (1 : F) * rho 104501) = ((2 : F) * rho 104499)

def relationRow6977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104503) * ((2 : F) + (1 : F) * rho 104500 + (-1 : F) * rho 104501) = ((1 : F) * rho 104500 + (1 : F) * rho 104501)

def relationLc3114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 101⟩, ⟨(1 : F), 103198, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104502 + (1 : F) * rho 104503) * (relationLc3114 rho) = ((1 : F) * rho 104504)

def relationLc3115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104503) * (relationLc3115 rho) = ((1 : F) * rho 104505)

def relationLc3116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104502) * (relationLc3116 rho) = ((1 : F) * rho 104506)

def relationRow6981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104505) * ((1 : F) * rho 104506) = ((1 : F) * rho 104507)

def relationRow6982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104508) * ((1 : F) + (1 : F) * rho 104507) = ((1 : F) * rho 104505 + (1 : F) * rho 104506)

def relationRow6983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104509) * ((1 : F) + (-1 : F) * rho 104507) = ((1 : F) * rho 104504 + (-1 : F) * rho 104505 + (-1 : F) * rho 104506)

def relationLc3117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 101⟩], residual := [((1 : F), 104508)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103047) * (relationLc3117 rho) = ((1 : F) * rho 104510)

def relationLc3118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 101⟩], residual := [((1 : F), 104509)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103047) * (relationLc3118 rho) = ((1 : F) * rho 104511)

def relationRow6986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104502) * ((1 : F) * rho 104503) = ((1 : F) * rho 104512)

def relationRow6987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104502) * ((1 : F) * rho 104502) = ((1 : F) * rho 104513)

def relationRow6988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104503) * ((1 : F) * rho 104503) = ((1 : F) * rho 104514)

def relationRow6989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104515) * ((-1 : F) * rho 104513 + (1 : F) * rho 104514) = ((2 : F) * rho 104512)

def relationRow6990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104516) * ((2 : F) + (1 : F) * rho 104513 + (-1 : F) * rho 104514) = ((1 : F) * rho 104513 + (1 : F) * rho 104514)

def relationLc3119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 102⟩, ⟨(1 : F), 103198, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104515 + (1 : F) * rho 104516) * (relationLc3119 rho) = ((1 : F) * rho 104517)

def relationLc3120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104516) * (relationLc3120 rho) = ((1 : F) * rho 104518)

def relationLc3121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104515) * (relationLc3121 rho) = ((1 : F) * rho 104519)

def relationRow6994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104518) * ((1 : F) * rho 104519) = ((1 : F) * rho 104520)

def relationRow6995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104521) * ((1 : F) + (1 : F) * rho 104520) = ((1 : F) * rho 104518 + (1 : F) * rho 104519)

def relationRow6996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104522) * ((1 : F) + (-1 : F) * rho 104520) = ((1 : F) * rho 104517 + (-1 : F) * rho 104518 + (-1 : F) * rho 104519)

def relationLc3122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 102⟩], residual := [((1 : F), 104521)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103048) * (relationLc3122 rho) = ((1 : F) * rho 104523)

def relationLc3123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 102⟩], residual := [((1 : F), 104522)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103048) * (relationLc3123 rho) = ((1 : F) * rho 104524)

def relationRow6999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104515) * ((1 : F) * rho 104516) = ((1 : F) * rho 104525)

def relationRow7000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104515) * ((1 : F) * rho 104515) = ((1 : F) * rho 104526)

def relationRow7001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104516) * ((1 : F) * rho 104516) = ((1 : F) * rho 104527)

def relationRow7002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104528) * ((-1 : F) * rho 104526 + (1 : F) * rho 104527) = ((2 : F) * rho 104525)

def relationRow7003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104529) * ((2 : F) + (1 : F) * rho 104526 + (-1 : F) * rho 104527) = ((1 : F) * rho 104526 + (1 : F) * rho 104527)

def relationLc3124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 103⟩, ⟨(1 : F), 103198, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104528 + (1 : F) * rho 104529) * (relationLc3124 rho) = ((1 : F) * rho 104530)

def relationLc3125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104529) * (relationLc3125 rho) = ((1 : F) * rho 104531)

def relationLc3126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104528) * (relationLc3126 rho) = ((1 : F) * rho 104532)

def relationRow7007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104531) * ((1 : F) * rho 104532) = ((1 : F) * rho 104533)

def relationRow7008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104534) * ((1 : F) + (1 : F) * rho 104533) = ((1 : F) * rho 104531 + (1 : F) * rho 104532)

def relationRow7009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104535) * ((1 : F) + (-1 : F) * rho 104533) = ((1 : F) * rho 104530 + (-1 : F) * rho 104531 + (-1 : F) * rho 104532)

def relationLc3127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 103⟩], residual := [((1 : F), 104534)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103049) * (relationLc3127 rho) = ((1 : F) * rho 104536)

def relationLc3128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 103⟩], residual := [((1 : F), 104535)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103049) * (relationLc3128 rho) = ((1 : F) * rho 104537)

def relationRow7012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104528) * ((1 : F) * rho 104529) = ((1 : F) * rho 104538)

def relationRow7013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104528) * ((1 : F) * rho 104528) = ((1 : F) * rho 104539)

def relationRow7014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104529) * ((1 : F) * rho 104529) = ((1 : F) * rho 104540)

def relationRow7015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104541) * ((-1 : F) * rho 104539 + (1 : F) * rho 104540) = ((2 : F) * rho 104538)

def relationRow7016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104542) * ((2 : F) + (1 : F) * rho 104539 + (-1 : F) * rho 104540) = ((1 : F) * rho 104539 + (1 : F) * rho 104540)

def relationLc3129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 104⟩, ⟨(1 : F), 103198, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104541 + (1 : F) * rho 104542) * (relationLc3129 rho) = ((1 : F) * rho 104543)

def relationLc3130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104542) * (relationLc3130 rho) = ((1 : F) * rho 104544)

def relationLc3131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104541) * (relationLc3131 rho) = ((1 : F) * rho 104545)

def relationRow7020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104544) * ((1 : F) * rho 104545) = ((1 : F) * rho 104546)

def relationRow7021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104547) * ((1 : F) + (1 : F) * rho 104546) = ((1 : F) * rho 104544 + (1 : F) * rho 104545)

def relationRow7022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104548) * ((1 : F) + (-1 : F) * rho 104546) = ((1 : F) * rho 104543 + (-1 : F) * rho 104544 + (-1 : F) * rho 104545)

def relationLc3132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 104⟩], residual := [((1 : F), 104547)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103050) * (relationLc3132 rho) = ((1 : F) * rho 104549)

def relationLc3133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 104⟩], residual := [((1 : F), 104548)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103050) * (relationLc3133 rho) = ((1 : F) * rho 104550)

def relationRow7025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104541) * ((1 : F) * rho 104542) = ((1 : F) * rho 104551)

def relationRow7026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104541) * ((1 : F) * rho 104541) = ((1 : F) * rho 104552)

def relationRow7027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104542) * ((1 : F) * rho 104542) = ((1 : F) * rho 104553)

def relationRow7028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104554) * ((-1 : F) * rho 104552 + (1 : F) * rho 104553) = ((2 : F) * rho 104551)

def relationRow7029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104555) * ((2 : F) + (1 : F) * rho 104552 + (-1 : F) * rho 104553) = ((1 : F) * rho 104552 + (1 : F) * rho 104553)

def relationLc3134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 105⟩, ⟨(1 : F), 103198, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104554 + (1 : F) * rho 104555) * (relationLc3134 rho) = ((1 : F) * rho 104556)

def relationLc3135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104555) * (relationLc3135 rho) = ((1 : F) * rho 104557)

def relationLc3136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104554) * (relationLc3136 rho) = ((1 : F) * rho 104558)

def relationRow7033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104557) * ((1 : F) * rho 104558) = ((1 : F) * rho 104559)

def relationRow7034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104560) * ((1 : F) + (1 : F) * rho 104559) = ((1 : F) * rho 104557 + (1 : F) * rho 104558)

def relationRow7035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104561) * ((1 : F) + (-1 : F) * rho 104559) = ((1 : F) * rho 104556 + (-1 : F) * rho 104557 + (-1 : F) * rho 104558)

def relationLc3137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 105⟩], residual := [((1 : F), 104560)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103051) * (relationLc3137 rho) = ((1 : F) * rho 104562)

def relationLc3138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 105⟩], residual := [((1 : F), 104561)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103051) * (relationLc3138 rho) = ((1 : F) * rho 104563)

def relationRow7038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104554) * ((1 : F) * rho 104555) = ((1 : F) * rho 104564)

def relationRow7039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104554) * ((1 : F) * rho 104554) = ((1 : F) * rho 104565)

def relationRow7040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104555) * ((1 : F) * rho 104555) = ((1 : F) * rho 104566)

def relationRow7041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104567) * ((-1 : F) * rho 104565 + (1 : F) * rho 104566) = ((2 : F) * rho 104564)

def relationRow7042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104568) * ((2 : F) + (1 : F) * rho 104565 + (-1 : F) * rho 104566) = ((1 : F) * rho 104565 + (1 : F) * rho 104566)

def relationLc3139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 106⟩, ⟨(1 : F), 103198, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104567 + (1 : F) * rho 104568) * (relationLc3139 rho) = ((1 : F) * rho 104569)

def relationLc3140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104568) * (relationLc3140 rho) = ((1 : F) * rho 104570)

def relationLc3141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104567) * (relationLc3141 rho) = ((1 : F) * rho 104571)

def relationRow7046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104570) * ((1 : F) * rho 104571) = ((1 : F) * rho 104572)

def relationRow7047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104573) * ((1 : F) + (1 : F) * rho 104572) = ((1 : F) * rho 104570 + (1 : F) * rho 104571)

def relationRow7048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104574) * ((1 : F) + (-1 : F) * rho 104572) = ((1 : F) * rho 104569 + (-1 : F) * rho 104570 + (-1 : F) * rho 104571)

def relationLc3142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 106⟩], residual := [((1 : F), 104573)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103052) * (relationLc3142 rho) = ((1 : F) * rho 104575)

def relationLc3143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 106⟩], residual := [((1 : F), 104574)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103052) * (relationLc3143 rho) = ((1 : F) * rho 104576)

def relationRow7051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104567) * ((1 : F) * rho 104568) = ((1 : F) * rho 104577)

def relationRow7052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104567) * ((1 : F) * rho 104567) = ((1 : F) * rho 104578)

def relationRow7053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104568) * ((1 : F) * rho 104568) = ((1 : F) * rho 104579)

def relationRow7054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104580) * ((-1 : F) * rho 104578 + (1 : F) * rho 104579) = ((2 : F) * rho 104577)

def relationRow7055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104581) * ((2 : F) + (1 : F) * rho 104578 + (-1 : F) * rho 104579) = ((1 : F) * rho 104578 + (1 : F) * rho 104579)

def relationLc3144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 107⟩, ⟨(1 : F), 103198, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104580 + (1 : F) * rho 104581) * (relationLc3144 rho) = ((1 : F) * rho 104582)

def relationLc3145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104581) * (relationLc3145 rho) = ((1 : F) * rho 104583)

def relationLc3146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104580) * (relationLc3146 rho) = ((1 : F) * rho 104584)

def relationRow7059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104583) * ((1 : F) * rho 104584) = ((1 : F) * rho 104585)

def relationRow7060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104586) * ((1 : F) + (1 : F) * rho 104585) = ((1 : F) * rho 104583 + (1 : F) * rho 104584)

def relationRow7061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104587) * ((1 : F) + (-1 : F) * rho 104585) = ((1 : F) * rho 104582 + (-1 : F) * rho 104583 + (-1 : F) * rho 104584)

def relationLc3147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 107⟩], residual := [((1 : F), 104586)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103053) * (relationLc3147 rho) = ((1 : F) * rho 104588)

def relationLc3148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 107⟩], residual := [((1 : F), 104587)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103053) * (relationLc3148 rho) = ((1 : F) * rho 104589)

def relationRow7064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104580) * ((1 : F) * rho 104581) = ((1 : F) * rho 104590)

def relationRow7065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104580) * ((1 : F) * rho 104580) = ((1 : F) * rho 104591)

def relationRow7066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104581) * ((1 : F) * rho 104581) = ((1 : F) * rho 104592)

def relationRow7067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104593) * ((-1 : F) * rho 104591 + (1 : F) * rho 104592) = ((2 : F) * rho 104590)

def relationRow7068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104594) * ((2 : F) + (1 : F) * rho 104591 + (-1 : F) * rho 104592) = ((1 : F) * rho 104591 + (1 : F) * rho 104592)

def relationLc3149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 108⟩, ⟨(1 : F), 103198, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104593 + (1 : F) * rho 104594) * (relationLc3149 rho) = ((1 : F) * rho 104595)

def relationLc3150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104594) * (relationLc3150 rho) = ((1 : F) * rho 104596)

def relationLc3151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104593) * (relationLc3151 rho) = ((1 : F) * rho 104597)

def relationRow7072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104596) * ((1 : F) * rho 104597) = ((1 : F) * rho 104598)

def relationRow7073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104599) * ((1 : F) + (1 : F) * rho 104598) = ((1 : F) * rho 104596 + (1 : F) * rho 104597)

def relationRow7074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104600) * ((1 : F) + (-1 : F) * rho 104598) = ((1 : F) * rho 104595 + (-1 : F) * rho 104596 + (-1 : F) * rho 104597)

def relationLc3152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 108⟩], residual := [((1 : F), 104599)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103054) * (relationLc3152 rho) = ((1 : F) * rho 104601)

def relationLc3153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 108⟩], residual := [((1 : F), 104600)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103054) * (relationLc3153 rho) = ((1 : F) * rho 104602)

def relationRow7077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104593) * ((1 : F) * rho 104594) = ((1 : F) * rho 104603)

def relationRow7078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104593) * ((1 : F) * rho 104593) = ((1 : F) * rho 104604)

def relationRow7079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104594) * ((1 : F) * rho 104594) = ((1 : F) * rho 104605)

def relationRow7080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104606) * ((-1 : F) * rho 104604 + (1 : F) * rho 104605) = ((2 : F) * rho 104603)

def relationRow7081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104607) * ((2 : F) + (1 : F) * rho 104604 + (-1 : F) * rho 104605) = ((1 : F) * rho 104604 + (1 : F) * rho 104605)

def relationLc3154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 109⟩, ⟨(1 : F), 103198, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104606 + (1 : F) * rho 104607) * (relationLc3154 rho) = ((1 : F) * rho 104608)

def relationLc3155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104607) * (relationLc3155 rho) = ((1 : F) * rho 104609)

def relationLc3156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104606) * (relationLc3156 rho) = ((1 : F) * rho 104610)

def relationRow7085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104609) * ((1 : F) * rho 104610) = ((1 : F) * rho 104611)

def relationRow7086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104612) * ((1 : F) + (1 : F) * rho 104611) = ((1 : F) * rho 104609 + (1 : F) * rho 104610)

def relationRow7087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104613) * ((1 : F) + (-1 : F) * rho 104611) = ((1 : F) * rho 104608 + (-1 : F) * rho 104609 + (-1 : F) * rho 104610)

def relationLc3157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 109⟩], residual := [((1 : F), 104612)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103055) * (relationLc3157 rho) = ((1 : F) * rho 104614)

def relationLc3158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 109⟩], residual := [((1 : F), 104613)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103055) * (relationLc3158 rho) = ((1 : F) * rho 104615)

def relationRow7090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104606) * ((1 : F) * rho 104607) = ((1 : F) * rho 104616)

def relationRow7091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104606) * ((1 : F) * rho 104606) = ((1 : F) * rho 104617)

def relationRow7092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104607) * ((1 : F) * rho 104607) = ((1 : F) * rho 104618)

def relationRow7093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104619) * ((-1 : F) * rho 104617 + (1 : F) * rho 104618) = ((2 : F) * rho 104616)

def relationRow7094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104620) * ((2 : F) + (1 : F) * rho 104617 + (-1 : F) * rho 104618) = ((1 : F) * rho 104617 + (1 : F) * rho 104618)

def relationLc3159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 110⟩, ⟨(1 : F), 103198, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104619 + (1 : F) * rho 104620) * (relationLc3159 rho) = ((1 : F) * rho 104621)

def relationLc3160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104620) * (relationLc3160 rho) = ((1 : F) * rho 104622)

def relationLc3161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104619) * (relationLc3161 rho) = ((1 : F) * rho 104623)

def relationRow7098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104622) * ((1 : F) * rho 104623) = ((1 : F) * rho 104624)

def relationRow7099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104625) * ((1 : F) + (1 : F) * rho 104624) = ((1 : F) * rho 104622 + (1 : F) * rho 104623)

def relationRow7100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104626) * ((1 : F) + (-1 : F) * rho 104624) = ((1 : F) * rho 104621 + (-1 : F) * rho 104622 + (-1 : F) * rho 104623)

def relationLc3162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 110⟩], residual := [((1 : F), 104625)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103056) * (relationLc3162 rho) = ((1 : F) * rho 104627)

def relationLc3163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 110⟩], residual := [((1 : F), 104626)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103056) * (relationLc3163 rho) = ((1 : F) * rho 104628)

def relationRow7103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104619) * ((1 : F) * rho 104620) = ((1 : F) * rho 104629)

def relationRow7104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104619) * ((1 : F) * rho 104619) = ((1 : F) * rho 104630)

def relationRow7105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104620) * ((1 : F) * rho 104620) = ((1 : F) * rho 104631)

def relationRow7106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104632) * ((-1 : F) * rho 104630 + (1 : F) * rho 104631) = ((2 : F) * rho 104629)

def relationRow7107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104633) * ((2 : F) + (1 : F) * rho 104630 + (-1 : F) * rho 104631) = ((1 : F) * rho 104630 + (1 : F) * rho 104631)

def relationLc3164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 111⟩, ⟨(1 : F), 103198, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104632 + (1 : F) * rho 104633) * (relationLc3164 rho) = ((1 : F) * rho 104634)

def relationLc3165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104633) * (relationLc3165 rho) = ((1 : F) * rho 104635)

def relationLc3166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104632) * (relationLc3166 rho) = ((1 : F) * rho 104636)

def relationRow7111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104635) * ((1 : F) * rho 104636) = ((1 : F) * rho 104637)

def relationRow7112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104638) * ((1 : F) + (1 : F) * rho 104637) = ((1 : F) * rho 104635 + (1 : F) * rho 104636)

def relationRow7113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104639) * ((1 : F) + (-1 : F) * rho 104637) = ((1 : F) * rho 104634 + (-1 : F) * rho 104635 + (-1 : F) * rho 104636)

def relationLc3167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 111⟩], residual := [((1 : F), 104638)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103057) * (relationLc3167 rho) = ((1 : F) * rho 104640)

def relationLc3168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 111⟩], residual := [((1 : F), 104639)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103057) * (relationLc3168 rho) = ((1 : F) * rho 104641)

def relationRow7116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104632) * ((1 : F) * rho 104633) = ((1 : F) * rho 104642)

def relationRow7117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104632) * ((1 : F) * rho 104632) = ((1 : F) * rho 104643)

def relationRow7118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104633) * ((1 : F) * rho 104633) = ((1 : F) * rho 104644)

def relationRow7119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104645) * ((-1 : F) * rho 104643 + (1 : F) * rho 104644) = ((2 : F) * rho 104642)

def relationRow7120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104646) * ((2 : F) + (1 : F) * rho 104643 + (-1 : F) * rho 104644) = ((1 : F) * rho 104643 + (1 : F) * rho 104644)

def relationLc3169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 112⟩, ⟨(1 : F), 103198, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104645 + (1 : F) * rho 104646) * (relationLc3169 rho) = ((1 : F) * rho 104647)

def relationLc3170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104646) * (relationLc3170 rho) = ((1 : F) * rho 104648)

def relationLc3171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104645) * (relationLc3171 rho) = ((1 : F) * rho 104649)

def relationRow7124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104648) * ((1 : F) * rho 104649) = ((1 : F) * rho 104650)

def relationRow7125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104651) * ((1 : F) + (1 : F) * rho 104650) = ((1 : F) * rho 104648 + (1 : F) * rho 104649)

def relationRow7126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104652) * ((1 : F) + (-1 : F) * rho 104650) = ((1 : F) * rho 104647 + (-1 : F) * rho 104648 + (-1 : F) * rho 104649)

def relationLc3172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 112⟩], residual := [((1 : F), 104651)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103058) * (relationLc3172 rho) = ((1 : F) * rho 104653)

def relationLc3173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 112⟩], residual := [((1 : F), 104652)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103058) * (relationLc3173 rho) = ((1 : F) * rho 104654)

def relationRow7129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104645) * ((1 : F) * rho 104646) = ((1 : F) * rho 104655)

def relationRow7130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104645) * ((1 : F) * rho 104645) = ((1 : F) * rho 104656)

def relationRow7131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104646) * ((1 : F) * rho 104646) = ((1 : F) * rho 104657)

def relationRow7132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104658) * ((-1 : F) * rho 104656 + (1 : F) * rho 104657) = ((2 : F) * rho 104655)

def relationRow7133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104659) * ((2 : F) + (1 : F) * rho 104656 + (-1 : F) * rho 104657) = ((1 : F) * rho 104656 + (1 : F) * rho 104657)

def relationLc3174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 113⟩, ⟨(1 : F), 103198, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104658 + (1 : F) * rho 104659) * (relationLc3174 rho) = ((1 : F) * rho 104660)

def relationLc3175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104659) * (relationLc3175 rho) = ((1 : F) * rho 104661)

def relationLc3176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104658) * (relationLc3176 rho) = ((1 : F) * rho 104662)

def relationRow7137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104661) * ((1 : F) * rho 104662) = ((1 : F) * rho 104663)

def relationRow7138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104664) * ((1 : F) + (1 : F) * rho 104663) = ((1 : F) * rho 104661 + (1 : F) * rho 104662)

def relationRow7139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104665) * ((1 : F) + (-1 : F) * rho 104663) = ((1 : F) * rho 104660 + (-1 : F) * rho 104661 + (-1 : F) * rho 104662)

def relationLc3177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 113⟩], residual := [((1 : F), 104664)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103059) * (relationLc3177 rho) = ((1 : F) * rho 104666)

def relationLc3178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 113⟩], residual := [((1 : F), 104665)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103059) * (relationLc3178 rho) = ((1 : F) * rho 104667)

def relationRow7142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104658) * ((1 : F) * rho 104659) = ((1 : F) * rho 104668)

def relationRow7143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104658) * ((1 : F) * rho 104658) = ((1 : F) * rho 104669)

def relationRow7144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104659) * ((1 : F) * rho 104659) = ((1 : F) * rho 104670)

def relationRow7145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104671) * ((-1 : F) * rho 104669 + (1 : F) * rho 104670) = ((2 : F) * rho 104668)

def relationRow7146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104672) * ((2 : F) + (1 : F) * rho 104669 + (-1 : F) * rho 104670) = ((1 : F) * rho 104669 + (1 : F) * rho 104670)

def relationLc3179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 114⟩, ⟨(1 : F), 103198, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104671 + (1 : F) * rho 104672) * (relationLc3179 rho) = ((1 : F) * rho 104673)

def relationLc3180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104672) * (relationLc3180 rho) = ((1 : F) * rho 104674)

def relationLc3181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104671) * (relationLc3181 rho) = ((1 : F) * rho 104675)

def relationRow7150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104674) * ((1 : F) * rho 104675) = ((1 : F) * rho 104676)

def relationRow7151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104677) * ((1 : F) + (1 : F) * rho 104676) = ((1 : F) * rho 104674 + (1 : F) * rho 104675)

def relationRow7152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104678) * ((1 : F) + (-1 : F) * rho 104676) = ((1 : F) * rho 104673 + (-1 : F) * rho 104674 + (-1 : F) * rho 104675)

def relationLc3182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 114⟩], residual := [((1 : F), 104677)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103060) * (relationLc3182 rho) = ((1 : F) * rho 104679)

def relationLc3183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 114⟩], residual := [((1 : F), 104678)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103060) * (relationLc3183 rho) = ((1 : F) * rho 104680)

def relationRow7155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104671) * ((1 : F) * rho 104672) = ((1 : F) * rho 104681)

def relationRow7156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104671) * ((1 : F) * rho 104671) = ((1 : F) * rho 104682)

def relationRow7157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104672) * ((1 : F) * rho 104672) = ((1 : F) * rho 104683)

def relationRow7158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104684) * ((-1 : F) * rho 104682 + (1 : F) * rho 104683) = ((2 : F) * rho 104681)

def relationRow7159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104685) * ((2 : F) + (1 : F) * rho 104682 + (-1 : F) * rho 104683) = ((1 : F) * rho 104682 + (1 : F) * rho 104683)

def relationLc3184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 115⟩, ⟨(1 : F), 103198, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104684 + (1 : F) * rho 104685) * (relationLc3184 rho) = ((1 : F) * rho 104686)

def relationLc3185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104685) * (relationLc3185 rho) = ((1 : F) * rho 104687)

def relationLc3186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104684) * (relationLc3186 rho) = ((1 : F) * rho 104688)

def relationRow7163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104687) * ((1 : F) * rho 104688) = ((1 : F) * rho 104689)

def relationRow7164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104690) * ((1 : F) + (1 : F) * rho 104689) = ((1 : F) * rho 104687 + (1 : F) * rho 104688)

def relationRow7165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104691) * ((1 : F) + (-1 : F) * rho 104689) = ((1 : F) * rho 104686 + (-1 : F) * rho 104687 + (-1 : F) * rho 104688)

def relationLc3187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 115⟩], residual := [((1 : F), 104690)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103061) * (relationLc3187 rho) = ((1 : F) * rho 104692)

def relationLc3188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 115⟩], residual := [((1 : F), 104691)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103061) * (relationLc3188 rho) = ((1 : F) * rho 104693)

def relationRow7168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104684) * ((1 : F) * rho 104685) = ((1 : F) * rho 104694)

def relationRow7169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104684) * ((1 : F) * rho 104684) = ((1 : F) * rho 104695)

def relationRow7170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104685) * ((1 : F) * rho 104685) = ((1 : F) * rho 104696)

def relationRow7171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104697) * ((-1 : F) * rho 104695 + (1 : F) * rho 104696) = ((2 : F) * rho 104694)

def relationRow7172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104698) * ((2 : F) + (1 : F) * rho 104695 + (-1 : F) * rho 104696) = ((1 : F) * rho 104695 + (1 : F) * rho 104696)

def relationLc3189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 116⟩, ⟨(1 : F), 103198, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104697 + (1 : F) * rho 104698) * (relationLc3189 rho) = ((1 : F) * rho 104699)

def relationLc3190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104698) * (relationLc3190 rho) = ((1 : F) * rho 104700)

def relationLc3191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104697) * (relationLc3191 rho) = ((1 : F) * rho 104701)

def relationRow7176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104700) * ((1 : F) * rho 104701) = ((1 : F) * rho 104702)

def relationRow7177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104703) * ((1 : F) + (1 : F) * rho 104702) = ((1 : F) * rho 104700 + (1 : F) * rho 104701)

def relationRow7178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104704) * ((1 : F) + (-1 : F) * rho 104702) = ((1 : F) * rho 104699 + (-1 : F) * rho 104700 + (-1 : F) * rho 104701)

def relationLc3192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 116⟩], residual := [((1 : F), 104703)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103062) * (relationLc3192 rho) = ((1 : F) * rho 104705)

def relationLc3193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 116⟩], residual := [((1 : F), 104704)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103062) * (relationLc3193 rho) = ((1 : F) * rho 104706)

def relationRow7181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104697) * ((1 : F) * rho 104698) = ((1 : F) * rho 104707)

def relationRow7182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104697) * ((1 : F) * rho 104697) = ((1 : F) * rho 104708)

def relationRow7183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104698) * ((1 : F) * rho 104698) = ((1 : F) * rho 104709)

def relationRow7184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104710) * ((-1 : F) * rho 104708 + (1 : F) * rho 104709) = ((2 : F) * rho 104707)

def relationRow7185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104711) * ((2 : F) + (1 : F) * rho 104708 + (-1 : F) * rho 104709) = ((1 : F) * rho 104708 + (1 : F) * rho 104709)

def relationLc3194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 117⟩, ⟨(1 : F), 103198, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104710 + (1 : F) * rho 104711) * (relationLc3194 rho) = ((1 : F) * rho 104712)

def relationLc3195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104711) * (relationLc3195 rho) = ((1 : F) * rho 104713)

def relationLc3196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104710) * (relationLc3196 rho) = ((1 : F) * rho 104714)

def relationRow7189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104713) * ((1 : F) * rho 104714) = ((1 : F) * rho 104715)

def relationRow7190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104716) * ((1 : F) + (1 : F) * rho 104715) = ((1 : F) * rho 104713 + (1 : F) * rho 104714)

def relationRow7191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104717) * ((1 : F) + (-1 : F) * rho 104715) = ((1 : F) * rho 104712 + (-1 : F) * rho 104713 + (-1 : F) * rho 104714)

def relationLc3197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 117⟩], residual := [((1 : F), 104716)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103063) * (relationLc3197 rho) = ((1 : F) * rho 104718)

def relationLc3198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 117⟩], residual := [((1 : F), 104717)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103063) * (relationLc3198 rho) = ((1 : F) * rho 104719)

def relationRow7194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104710) * ((1 : F) * rho 104711) = ((1 : F) * rho 104720)

def relationRow7195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104710) * ((1 : F) * rho 104710) = ((1 : F) * rho 104721)

def relationRow7196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104711) * ((1 : F) * rho 104711) = ((1 : F) * rho 104722)

def relationRow7197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104723) * ((-1 : F) * rho 104721 + (1 : F) * rho 104722) = ((2 : F) * rho 104720)

def relationRow7198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104724) * ((2 : F) + (1 : F) * rho 104721 + (-1 : F) * rho 104722) = ((1 : F) * rho 104721 + (1 : F) * rho 104722)

def relationLc3199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 118⟩, ⟨(1 : F), 103198, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104723 + (1 : F) * rho 104724) * (relationLc3199 rho) = ((1 : F) * rho 104725)

def relationLc3200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104724) * (relationLc3200 rho) = ((1 : F) * rho 104726)

def relationLc3201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104723) * (relationLc3201 rho) = ((1 : F) * rho 104727)

def relationRow7202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104726) * ((1 : F) * rho 104727) = ((1 : F) * rho 104728)

def relationRow7203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104729) * ((1 : F) + (1 : F) * rho 104728) = ((1 : F) * rho 104726 + (1 : F) * rho 104727)

def relationRow7204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104730) * ((1 : F) + (-1 : F) * rho 104728) = ((1 : F) * rho 104725 + (-1 : F) * rho 104726 + (-1 : F) * rho 104727)

def relationLc3202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 118⟩], residual := [((1 : F), 104729)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103064) * (relationLc3202 rho) = ((1 : F) * rho 104731)

def relationLc3203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 118⟩], residual := [((1 : F), 104730)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103064) * (relationLc3203 rho) = ((1 : F) * rho 104732)

def relationRow7207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104723) * ((1 : F) * rho 104724) = ((1 : F) * rho 104733)

def relationRow7208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104723) * ((1 : F) * rho 104723) = ((1 : F) * rho 104734)

def relationRow7209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104724) * ((1 : F) * rho 104724) = ((1 : F) * rho 104735)

def relationRow7210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104736) * ((-1 : F) * rho 104734 + (1 : F) * rho 104735) = ((2 : F) * rho 104733)

def relationRow7211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104737) * ((2 : F) + (1 : F) * rho 104734 + (-1 : F) * rho 104735) = ((1 : F) * rho 104734 + (1 : F) * rho 104735)

def relationLc3204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 119⟩, ⟨(1 : F), 103198, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104736 + (1 : F) * rho 104737) * (relationLc3204 rho) = ((1 : F) * rho 104738)

def relationLc3205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104737) * (relationLc3205 rho) = ((1 : F) * rho 104739)

def relationLc3206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104736) * (relationLc3206 rho) = ((1 : F) * rho 104740)

def relationRow7215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104739) * ((1 : F) * rho 104740) = ((1 : F) * rho 104741)

def relationRow7216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104742) * ((1 : F) + (1 : F) * rho 104741) = ((1 : F) * rho 104739 + (1 : F) * rho 104740)

def relationRow7217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104743) * ((1 : F) + (-1 : F) * rho 104741) = ((1 : F) * rho 104738 + (-1 : F) * rho 104739 + (-1 : F) * rho 104740)

def relationLc3207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 119⟩], residual := [((1 : F), 104742)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103065) * (relationLc3207 rho) = ((1 : F) * rho 104744)

def relationLc3208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 119⟩], residual := [((1 : F), 104743)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103065) * (relationLc3208 rho) = ((1 : F) * rho 104745)

def relationRow7220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104736) * ((1 : F) * rho 104737) = ((1 : F) * rho 104746)

def relationRow7221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104736) * ((1 : F) * rho 104736) = ((1 : F) * rho 104747)

def relationRow7222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104737) * ((1 : F) * rho 104737) = ((1 : F) * rho 104748)

def relationRow7223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104749) * ((-1 : F) * rho 104747 + (1 : F) * rho 104748) = ((2 : F) * rho 104746)

def relationRow7224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104750) * ((2 : F) + (1 : F) * rho 104747 + (-1 : F) * rho 104748) = ((1 : F) * rho 104747 + (1 : F) * rho 104748)

def relationLc3209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 120⟩, ⟨(1 : F), 103198, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104749 + (1 : F) * rho 104750) * (relationLc3209 rho) = ((1 : F) * rho 104751)

def relationLc3210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104750) * (relationLc3210 rho) = ((1 : F) * rho 104752)

def relationLc3211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104749) * (relationLc3211 rho) = ((1 : F) * rho 104753)

def relationRow7228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104752) * ((1 : F) * rho 104753) = ((1 : F) * rho 104754)

def relationRow7229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104755) * ((1 : F) + (1 : F) * rho 104754) = ((1 : F) * rho 104752 + (1 : F) * rho 104753)

def relationRow7230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104756) * ((1 : F) + (-1 : F) * rho 104754) = ((1 : F) * rho 104751 + (-1 : F) * rho 104752 + (-1 : F) * rho 104753)

def relationLc3212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 120⟩], residual := [((1 : F), 104755)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103066) * (relationLc3212 rho) = ((1 : F) * rho 104757)

def relationLc3213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 120⟩], residual := [((1 : F), 104756)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103066) * (relationLc3213 rho) = ((1 : F) * rho 104758)

def relationRow7233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104749) * ((1 : F) * rho 104750) = ((1 : F) * rho 104759)

def relationRow7234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104749) * ((1 : F) * rho 104749) = ((1 : F) * rho 104760)

def relationRow7235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104750) * ((1 : F) * rho 104750) = ((1 : F) * rho 104761)

def relationRow7236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104762) * ((-1 : F) * rho 104760 + (1 : F) * rho 104761) = ((2 : F) * rho 104759)

def relationRow7237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104763) * ((2 : F) + (1 : F) * rho 104760 + (-1 : F) * rho 104761) = ((1 : F) * rho 104760 + (1 : F) * rho 104761)

def relationLc3214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 121⟩, ⟨(1 : F), 103198, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104762 + (1 : F) * rho 104763) * (relationLc3214 rho) = ((1 : F) * rho 104764)

def relationLc3215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104763) * (relationLc3215 rho) = ((1 : F) * rho 104765)

def relationLc3216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104762) * (relationLc3216 rho) = ((1 : F) * rho 104766)

def relationRow7241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104765) * ((1 : F) * rho 104766) = ((1 : F) * rho 104767)

def relationRow7242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104768) * ((1 : F) + (1 : F) * rho 104767) = ((1 : F) * rho 104765 + (1 : F) * rho 104766)

def relationRow7243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104769) * ((1 : F) + (-1 : F) * rho 104767) = ((1 : F) * rho 104764 + (-1 : F) * rho 104765 + (-1 : F) * rho 104766)

def relationLc3217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 121⟩], residual := [((1 : F), 104768)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103067) * (relationLc3217 rho) = ((1 : F) * rho 104770)

def relationLc3218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 121⟩], residual := [((1 : F), 104769)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103067) * (relationLc3218 rho) = ((1 : F) * rho 104771)

def relationRow7246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104762) * ((1 : F) * rho 104763) = ((1 : F) * rho 104772)

def relationRow7247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104762) * ((1 : F) * rho 104762) = ((1 : F) * rho 104773)

def relationRow7248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104763) * ((1 : F) * rho 104763) = ((1 : F) * rho 104774)

def relationRow7249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104775) * ((-1 : F) * rho 104773 + (1 : F) * rho 104774) = ((2 : F) * rho 104772)

def relationRow7250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104776) * ((2 : F) + (1 : F) * rho 104773 + (-1 : F) * rho 104774) = ((1 : F) * rho 104773 + (1 : F) * rho 104774)

def relationLc3219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 122⟩, ⟨(1 : F), 103198, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104775 + (1 : F) * rho 104776) * (relationLc3219 rho) = ((1 : F) * rho 104777)

def relationLc3220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104776) * (relationLc3220 rho) = ((1 : F) * rho 104778)

def relationLc3221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104775) * (relationLc3221 rho) = ((1 : F) * rho 104779)

def relationRow7254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104778) * ((1 : F) * rho 104779) = ((1 : F) * rho 104780)

def relationRow7255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104781) * ((1 : F) + (1 : F) * rho 104780) = ((1 : F) * rho 104778 + (1 : F) * rho 104779)

def relationRow7256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104782) * ((1 : F) + (-1 : F) * rho 104780) = ((1 : F) * rho 104777 + (-1 : F) * rho 104778 + (-1 : F) * rho 104779)

def relationLc3222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 122⟩], residual := [((1 : F), 104781)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103068) * (relationLc3222 rho) = ((1 : F) * rho 104783)

def relationLc3223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 122⟩], residual := [((1 : F), 104782)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103068) * (relationLc3223 rho) = ((1 : F) * rho 104784)

def relationRow7259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104775) * ((1 : F) * rho 104776) = ((1 : F) * rho 104785)

def relationRow7260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104775) * ((1 : F) * rho 104775) = ((1 : F) * rho 104786)

def relationRow7261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104776) * ((1 : F) * rho 104776) = ((1 : F) * rho 104787)

def relationRow7262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104788) * ((-1 : F) * rho 104786 + (1 : F) * rho 104787) = ((2 : F) * rho 104785)

def relationRow7263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104789) * ((2 : F) + (1 : F) * rho 104786 + (-1 : F) * rho 104787) = ((1 : F) * rho 104786 + (1 : F) * rho 104787)

def relationLc3224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 123⟩, ⟨(1 : F), 103198, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104788 + (1 : F) * rho 104789) * (relationLc3224 rho) = ((1 : F) * rho 104790)

def relationLc3225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104789) * (relationLc3225 rho) = ((1 : F) * rho 104791)

def relationLc3226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104788) * (relationLc3226 rho) = ((1 : F) * rho 104792)

def relationRow7267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104791) * ((1 : F) * rho 104792) = ((1 : F) * rho 104793)

def relationRow7268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104794) * ((1 : F) + (1 : F) * rho 104793) = ((1 : F) * rho 104791 + (1 : F) * rho 104792)

def relationRow7269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104795) * ((1 : F) + (-1 : F) * rho 104793) = ((1 : F) * rho 104790 + (-1 : F) * rho 104791 + (-1 : F) * rho 104792)

def relationLc3227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 123⟩], residual := [((1 : F), 104794)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103069) * (relationLc3227 rho) = ((1 : F) * rho 104796)

def relationLc3228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 123⟩], residual := [((1 : F), 104795)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103069) * (relationLc3228 rho) = ((1 : F) * rho 104797)

def relationRow7272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104788) * ((1 : F) * rho 104789) = ((1 : F) * rho 104798)

def relationRow7273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104788) * ((1 : F) * rho 104788) = ((1 : F) * rho 104799)

def relationRow7274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104789) * ((1 : F) * rho 104789) = ((1 : F) * rho 104800)

def relationRow7275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104801) * ((-1 : F) * rho 104799 + (1 : F) * rho 104800) = ((2 : F) * rho 104798)

def relationRow7276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104802) * ((2 : F) + (1 : F) * rho 104799 + (-1 : F) * rho 104800) = ((1 : F) * rho 104799 + (1 : F) * rho 104800)

def relationLc3229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 124⟩, ⟨(1 : F), 103198, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104801 + (1 : F) * rho 104802) * (relationLc3229 rho) = ((1 : F) * rho 104803)

def relationLc3230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104802) * (relationLc3230 rho) = ((1 : F) * rho 104804)

def relationLc3231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104801) * (relationLc3231 rho) = ((1 : F) * rho 104805)

def relationRow7280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104804) * ((1 : F) * rho 104805) = ((1 : F) * rho 104806)

def relationRow7281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104807) * ((1 : F) + (1 : F) * rho 104806) = ((1 : F) * rho 104804 + (1 : F) * rho 104805)

def relationRow7282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104808) * ((1 : F) + (-1 : F) * rho 104806) = ((1 : F) * rho 104803 + (-1 : F) * rho 104804 + (-1 : F) * rho 104805)

def relationLc3232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 124⟩], residual := [((1 : F), 104807)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103070) * (relationLc3232 rho) = ((1 : F) * rho 104809)

def relationLc3233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 124⟩], residual := [((1 : F), 104808)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103070) * (relationLc3233 rho) = ((1 : F) * rho 104810)

def relationRow7285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104801) * ((1 : F) * rho 104802) = ((1 : F) * rho 104811)

def relationRow7286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104801) * ((1 : F) * rho 104801) = ((1 : F) * rho 104812)

def relationRow7287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104802) * ((1 : F) * rho 104802) = ((1 : F) * rho 104813)

def relationRow7288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104814) * ((-1 : F) * rho 104812 + (1 : F) * rho 104813) = ((2 : F) * rho 104811)

def relationRow7289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104815) * ((2 : F) + (1 : F) * rho 104812 + (-1 : F) * rho 104813) = ((1 : F) * rho 104812 + (1 : F) * rho 104813)

def relationLc3234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 125⟩, ⟨(1 : F), 103198, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104814 + (1 : F) * rho 104815) * (relationLc3234 rho) = ((1 : F) * rho 104816)

def relationLc3235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104815) * (relationLc3235 rho) = ((1 : F) * rho 104817)

def relationLc3236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104814) * (relationLc3236 rho) = ((1 : F) * rho 104818)

def relationRow7293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104817) * ((1 : F) * rho 104818) = ((1 : F) * rho 104819)

def relationRow7294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104820) * ((1 : F) + (1 : F) * rho 104819) = ((1 : F) * rho 104817 + (1 : F) * rho 104818)

def relationRow7295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104821) * ((1 : F) + (-1 : F) * rho 104819) = ((1 : F) * rho 104816 + (-1 : F) * rho 104817 + (-1 : F) * rho 104818)

def relationLc3237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 125⟩], residual := [((1 : F), 104820)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103071) * (relationLc3237 rho) = ((1 : F) * rho 104822)

def relationLc3238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 125⟩], residual := [((1 : F), 104821)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103071) * (relationLc3238 rho) = ((1 : F) * rho 104823)

def relationRow7298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104814) * ((1 : F) * rho 104815) = ((1 : F) * rho 104824)

def relationRow7299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104814) * ((1 : F) * rho 104814) = ((1 : F) * rho 104825)

def relationRow7300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104815) * ((1 : F) * rho 104815) = ((1 : F) * rho 104826)

def relationRow7301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104827) * ((-1 : F) * rho 104825 + (1 : F) * rho 104826) = ((2 : F) * rho 104824)

def relationRow7302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104828) * ((2 : F) + (1 : F) * rho 104825 + (-1 : F) * rho 104826) = ((1 : F) * rho 104825 + (1 : F) * rho 104826)

def relationLc3239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 126⟩, ⟨(1 : F), 103198, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104827 + (1 : F) * rho 104828) * (relationLc3239 rho) = ((1 : F) * rho 104829)

def relationLc3240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104828) * (relationLc3240 rho) = ((1 : F) * rho 104830)

def relationLc3241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104827) * (relationLc3241 rho) = ((1 : F) * rho 104831)

def relationRow7306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104830) * ((1 : F) * rho 104831) = ((1 : F) * rho 104832)

def relationRow7307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104833) * ((1 : F) + (1 : F) * rho 104832) = ((1 : F) * rho 104830 + (1 : F) * rho 104831)

def relationRow7308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104834) * ((1 : F) + (-1 : F) * rho 104832) = ((1 : F) * rho 104829 + (-1 : F) * rho 104830 + (-1 : F) * rho 104831)

def relationLc3242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 126⟩], residual := [((1 : F), 104833)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103072) * (relationLc3242 rho) = ((1 : F) * rho 104835)

def relationLc3243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 126⟩], residual := [((1 : F), 104834)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103072) * (relationLc3243 rho) = ((1 : F) * rho 104836)

def relationRow7311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104827) * ((1 : F) * rho 104828) = ((1 : F) * rho 104837)

def relationRow7312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104827) * ((1 : F) * rho 104827) = ((1 : F) * rho 104838)

def relationRow7313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104828) * ((1 : F) * rho 104828) = ((1 : F) * rho 104839)

def relationRow7314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104840) * ((-1 : F) * rho 104838 + (1 : F) * rho 104839) = ((2 : F) * rho 104837)

def relationRow7315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104841) * ((2 : F) + (1 : F) * rho 104838 + (-1 : F) * rho 104839) = ((1 : F) * rho 104838 + (1 : F) * rho 104839)

def relationLc3244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 127⟩, ⟨(1 : F), 103198, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104840 + (1 : F) * rho 104841) * (relationLc3244 rho) = ((1 : F) * rho 104842)

def relationLc3245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104841) * (relationLc3245 rho) = ((1 : F) * rho 104843)

def relationLc3246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104840) * (relationLc3246 rho) = ((1 : F) * rho 104844)

def relationRow7319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104843) * ((1 : F) * rho 104844) = ((1 : F) * rho 104845)

def relationRow7320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104846) * ((1 : F) + (1 : F) * rho 104845) = ((1 : F) * rho 104843 + (1 : F) * rho 104844)

def relationRow7321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104847) * ((1 : F) + (-1 : F) * rho 104845) = ((1 : F) * rho 104842 + (-1 : F) * rho 104843 + (-1 : F) * rho 104844)

def relationLc3247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 127⟩], residual := [((1 : F), 104846)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103073) * (relationLc3247 rho) = ((1 : F) * rho 104848)

def relationLc3248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 127⟩], residual := [((1 : F), 104847)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103073) * (relationLc3248 rho) = ((1 : F) * rho 104849)

def relationRow7324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104840) * ((1 : F) * rho 104841) = ((1 : F) * rho 104850)

def relationRow7325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104840) * ((1 : F) * rho 104840) = ((1 : F) * rho 104851)

def relationRow7326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104841) * ((1 : F) * rho 104841) = ((1 : F) * rho 104852)

def relationRow7327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104853) * ((-1 : F) * rho 104851 + (1 : F) * rho 104852) = ((2 : F) * rho 104850)

def relationRow7328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104854) * ((2 : F) + (1 : F) * rho 104851 + (-1 : F) * rho 104852) = ((1 : F) * rho 104851 + (1 : F) * rho 104852)

def relationLc3249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 128⟩, ⟨(1 : F), 103198, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104853 + (1 : F) * rho 104854) * (relationLc3249 rho) = ((1 : F) * rho 104855)

def relationLc3250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104854) * (relationLc3250 rho) = ((1 : F) * rho 104856)

def relationLc3251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104853) * (relationLc3251 rho) = ((1 : F) * rho 104857)

def relationRow7332 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104856) * ((1 : F) * rho 104857) = ((1 : F) * rho 104858)

def relationRow7333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104859) * ((1 : F) + (1 : F) * rho 104858) = ((1 : F) * rho 104856 + (1 : F) * rho 104857)

def relationRow7334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104860) * ((1 : F) + (-1 : F) * rho 104858) = ((1 : F) * rho 104855 + (-1 : F) * rho 104856 + (-1 : F) * rho 104857)

def relationLc3252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 128⟩], residual := [((1 : F), 104859)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103074) * (relationLc3252 rho) = ((1 : F) * rho 104861)

def relationLc3253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 128⟩], residual := [((1 : F), 104860)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103074) * (relationLc3253 rho) = ((1 : F) * rho 104862)

def relationRow7337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104853) * ((1 : F) * rho 104854) = ((1 : F) * rho 104863)

def relationRow7338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104853) * ((1 : F) * rho 104853) = ((1 : F) * rho 104864)

def relationRow7339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104854) * ((1 : F) * rho 104854) = ((1 : F) * rho 104865)

def relationRow7340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104866) * ((-1 : F) * rho 104864 + (1 : F) * rho 104865) = ((2 : F) * rho 104863)

def relationRow7341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104867) * ((2 : F) + (1 : F) * rho 104864 + (-1 : F) * rho 104865) = ((1 : F) * rho 104864 + (1 : F) * rho 104865)

def relationLc3254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 129⟩, ⟨(1 : F), 103198, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104866 + (1 : F) * rho 104867) * (relationLc3254 rho) = ((1 : F) * rho 104868)

def relationLc3255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104867) * (relationLc3255 rho) = ((1 : F) * rho 104869)

def relationLc3256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104866) * (relationLc3256 rho) = ((1 : F) * rho 104870)

def relationRow7345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104869) * ((1 : F) * rho 104870) = ((1 : F) * rho 104871)

def relationRow7346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104872) * ((1 : F) + (1 : F) * rho 104871) = ((1 : F) * rho 104869 + (1 : F) * rho 104870)

def relationRow7347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104873) * ((1 : F) + (-1 : F) * rho 104871) = ((1 : F) * rho 104868 + (-1 : F) * rho 104869 + (-1 : F) * rho 104870)

def relationLc3257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 129⟩], residual := [((1 : F), 104872)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103075) * (relationLc3257 rho) = ((1 : F) * rho 104874)

def relationLc3258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 129⟩], residual := [((1 : F), 104873)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103075) * (relationLc3258 rho) = ((1 : F) * rho 104875)

def relationRow7350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104866) * ((1 : F) * rho 104867) = ((1 : F) * rho 104876)

def relationRow7351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104866) * ((1 : F) * rho 104866) = ((1 : F) * rho 104877)

def relationRow7352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104867) * ((1 : F) * rho 104867) = ((1 : F) * rho 104878)

def relationRow7353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104879) * ((-1 : F) * rho 104877 + (1 : F) * rho 104878) = ((2 : F) * rho 104876)

def relationRow7354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104880) * ((2 : F) + (1 : F) * rho 104877 + (-1 : F) * rho 104878) = ((1 : F) * rho 104877 + (1 : F) * rho 104878)

def relationLc3259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 130⟩, ⟨(1 : F), 103198, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104879 + (1 : F) * rho 104880) * (relationLc3259 rho) = ((1 : F) * rho 104881)

def relationLc3260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104880) * (relationLc3260 rho) = ((1 : F) * rho 104882)

def relationLc3261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104879) * (relationLc3261 rho) = ((1 : F) * rho 104883)

def relationRow7358 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104882) * ((1 : F) * rho 104883) = ((1 : F) * rho 104884)

def relationRow7359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104885) * ((1 : F) + (1 : F) * rho 104884) = ((1 : F) * rho 104882 + (1 : F) * rho 104883)

def relationRow7360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104886) * ((1 : F) + (-1 : F) * rho 104884) = ((1 : F) * rho 104881 + (-1 : F) * rho 104882 + (-1 : F) * rho 104883)

def relationLc3262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 130⟩], residual := [((1 : F), 104885)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103076) * (relationLc3262 rho) = ((1 : F) * rho 104887)

def relationLc3263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 130⟩], residual := [((1 : F), 104886)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103076) * (relationLc3263 rho) = ((1 : F) * rho 104888)

def relationRow7363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104879) * ((1 : F) * rho 104880) = ((1 : F) * rho 104889)

def relationRow7364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104879) * ((1 : F) * rho 104879) = ((1 : F) * rho 104890)

def relationRow7365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104880) * ((1 : F) * rho 104880) = ((1 : F) * rho 104891)

def relationRow7366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104892) * ((-1 : F) * rho 104890 + (1 : F) * rho 104891) = ((2 : F) * rho 104889)

def relationRow7367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104893) * ((2 : F) + (1 : F) * rho 104890 + (-1 : F) * rho 104891) = ((1 : F) * rho 104890 + (1 : F) * rho 104891)

def relationLc3264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 131⟩, ⟨(1 : F), 103198, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104892 + (1 : F) * rho 104893) * (relationLc3264 rho) = ((1 : F) * rho 104894)

def relationLc3265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104893) * (relationLc3265 rho) = ((1 : F) * rho 104895)

def relationLc3266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104892) * (relationLc3266 rho) = ((1 : F) * rho 104896)

def relationRow7371 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104895) * ((1 : F) * rho 104896) = ((1 : F) * rho 104897)

def relationRow7372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104898) * ((1 : F) + (1 : F) * rho 104897) = ((1 : F) * rho 104895 + (1 : F) * rho 104896)

def relationRow7373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104899) * ((1 : F) + (-1 : F) * rho 104897) = ((1 : F) * rho 104894 + (-1 : F) * rho 104895 + (-1 : F) * rho 104896)

def relationLc3267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 131⟩], residual := [((1 : F), 104898)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103077) * (relationLc3267 rho) = ((1 : F) * rho 104900)

def relationLc3268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 131⟩], residual := [((1 : F), 104899)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103077) * (relationLc3268 rho) = ((1 : F) * rho 104901)

def relationRow7376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104892) * ((1 : F) * rho 104893) = ((1 : F) * rho 104902)

def relationRow7377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104892) * ((1 : F) * rho 104892) = ((1 : F) * rho 104903)

def relationRow7378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104893) * ((1 : F) * rho 104893) = ((1 : F) * rho 104904)

def relationRow7379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104905) * ((-1 : F) * rho 104903 + (1 : F) * rho 104904) = ((2 : F) * rho 104902)

def relationRow7380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104906) * ((2 : F) + (1 : F) * rho 104903 + (-1 : F) * rho 104904) = ((1 : F) * rho 104903 + (1 : F) * rho 104904)

def relationLc3269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 132⟩, ⟨(1 : F), 103198, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104905 + (1 : F) * rho 104906) * (relationLc3269 rho) = ((1 : F) * rho 104907)

def relationLc3270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104906) * (relationLc3270 rho) = ((1 : F) * rho 104908)

def relationLc3271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104905) * (relationLc3271 rho) = ((1 : F) * rho 104909)

def relationRow7384 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104908) * ((1 : F) * rho 104909) = ((1 : F) * rho 104910)

def relationRow7385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104911) * ((1 : F) + (1 : F) * rho 104910) = ((1 : F) * rho 104908 + (1 : F) * rho 104909)

def relationRow7386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104912) * ((1 : F) + (-1 : F) * rho 104910) = ((1 : F) * rho 104907 + (-1 : F) * rho 104908 + (-1 : F) * rho 104909)

def relationLc3272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 132⟩], residual := [((1 : F), 104911)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103078) * (relationLc3272 rho) = ((1 : F) * rho 104913)

def relationLc3273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 132⟩], residual := [((1 : F), 104912)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103078) * (relationLc3273 rho) = ((1 : F) * rho 104914)

def relationRow7389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104905) * ((1 : F) * rho 104906) = ((1 : F) * rho 104915)

def relationRow7390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104905) * ((1 : F) * rho 104905) = ((1 : F) * rho 104916)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
