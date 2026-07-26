import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs79

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3102) * ((-1 : F) * rho 3100 + (1 : F) * rho 3101) = ((2 : F) * rho 3099)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3103) * ((2 : F) + (1 : F) * rho 3100 + (-1 : F) * rho 3101) = ((1 : F) * rho 3100 + (1 : F) * rho 3101)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 69⟩, ⟨(1 : F), 2226, 13, 68⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3102 + (1 : F) * rho 3103) * (relationLc431 rho) = ((1 : F) * rho 3104)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 68⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3103) * (relationLc432 rho) = ((1 : F) * rho 3105)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3102) * (relationLc433 rho) = ((1 : F) * rho 3106)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3105) * ((1 : F) * rho 3106) = ((1 : F) * rho 3107)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3108) * ((1 : F) + (1 : F) * rho 3107) = ((1 : F) * rho 3105 + (1 : F) * rho 3106)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3109) * ((1 : F) + (-1 : F) * rho 3107) = ((1 : F) * rho 3104 + (-1 : F) * rho 3105 + (-1 : F) * rho 3106)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 68⟩], residual := [((-1 : F), 2212), ((1 : F), 3108)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1052) * (relationLc434 rho) = ((1 : F) * rho 3110)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 69⟩], residual := [((1 : F), 3109)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1052) * (relationLc435 rho) = ((1 : F) * rho 3111)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3102) * ((1 : F) * rho 3103) = ((1 : F) * rho 3112)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3102) * ((1 : F) * rho 3102) = ((1 : F) * rho 3113)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3103) * ((1 : F) * rho 3103) = ((1 : F) * rho 3114)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3115) * ((-1 : F) * rho 3113 + (1 : F) * rho 3114) = ((2 : F) * rho 3112)

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3116) * ((2 : F) + (1 : F) * rho 3113 + (-1 : F) * rho 3114) = ((1 : F) * rho 3113 + (1 : F) * rho 3114)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 70⟩, ⟨(1 : F), 2226, 13, 69⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3115 + (1 : F) * rho 3116) * (relationLc436 rho) = ((1 : F) * rho 3117)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 69⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3116) * (relationLc437 rho) = ((1 : F) * rho 3118)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3115) * (relationLc438 rho) = ((1 : F) * rho 3119)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3118) * ((1 : F) * rho 3119) = ((1 : F) * rho 3120)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3121) * ((1 : F) + (1 : F) * rho 3120) = ((1 : F) * rho 3118 + (1 : F) * rho 3119)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3122) * ((1 : F) + (-1 : F) * rho 3120) = ((1 : F) * rho 3117 + (-1 : F) * rho 3118 + (-1 : F) * rho 3119)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 69⟩], residual := [((-1 : F), 2212), ((1 : F), 3121)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1053) * (relationLc439 rho) = ((1 : F) * rho 3123)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 70⟩], residual := [((1 : F), 3122)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1053) * (relationLc440 rho) = ((1 : F) * rho 3124)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3115) * ((1 : F) * rho 3116) = ((1 : F) * rho 3125)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3115) * ((1 : F) * rho 3115) = ((1 : F) * rho 3126)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3116) * ((1 : F) * rho 3116) = ((1 : F) * rho 3127)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128) * ((-1 : F) * rho 3126 + (1 : F) * rho 3127) = ((2 : F) * rho 3125)

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3129) * ((2 : F) + (1 : F) * rho 3126 + (-1 : F) * rho 3127) = ((1 : F) * rho 3126 + (1 : F) * rho 3127)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 71⟩, ⟨(1 : F), 2226, 13, 70⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128 + (1 : F) * rho 3129) * (relationLc441 rho) = ((1 : F) * rho 3130)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 70⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3129) * (relationLc442 rho) = ((1 : F) * rho 3131)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128) * (relationLc443 rho) = ((1 : F) * rho 3132)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3131) * ((1 : F) * rho 3132) = ((1 : F) * rho 3133)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3134) * ((1 : F) + (1 : F) * rho 3133) = ((1 : F) * rho 3131 + (1 : F) * rho 3132)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3135) * ((1 : F) + (-1 : F) * rho 3133) = ((1 : F) * rho 3130 + (-1 : F) * rho 3131 + (-1 : F) * rho 3132)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 70⟩], residual := [((-1 : F), 2212), ((1 : F), 3134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1054) * (relationLc444 rho) = ((1 : F) * rho 3136)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 71⟩], residual := [((1 : F), 3135)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1054) * (relationLc445 rho) = ((1 : F) * rho 3137)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128) * ((1 : F) * rho 3129) = ((1 : F) * rho 3138)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3128) * ((1 : F) * rho 3128) = ((1 : F) * rho 3139)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3129) * ((1 : F) * rho 3129) = ((1 : F) * rho 3140)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3141) * ((-1 : F) * rho 3139 + (1 : F) * rho 3140) = ((2 : F) * rho 3138)

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3142) * ((2 : F) + (1 : F) * rho 3139 + (-1 : F) * rho 3140) = ((1 : F) * rho 3139 + (1 : F) * rho 3140)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 72⟩, ⟨(1 : F), 2226, 13, 71⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3141 + (1 : F) * rho 3142) * (relationLc446 rho) = ((1 : F) * rho 3143)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 71⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3142) * (relationLc447 rho) = ((1 : F) * rho 3144)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3141) * (relationLc448 rho) = ((1 : F) * rho 3145)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3144) * ((1 : F) * rho 3145) = ((1 : F) * rho 3146)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3147) * ((1 : F) + (1 : F) * rho 3146) = ((1 : F) * rho 3144 + (1 : F) * rho 3145)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3148) * ((1 : F) + (-1 : F) * rho 3146) = ((1 : F) * rho 3143 + (-1 : F) * rho 3144 + (-1 : F) * rho 3145)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 71⟩], residual := [((-1 : F), 2212), ((1 : F), 3147)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1055) * (relationLc449 rho) = ((1 : F) * rho 3149)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 72⟩], residual := [((1 : F), 3148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1055) * (relationLc450 rho) = ((1 : F) * rho 3150)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3141) * ((1 : F) * rho 3142) = ((1 : F) * rho 3151)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3141) * ((1 : F) * rho 3141) = ((1 : F) * rho 3152)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3142) * ((1 : F) * rho 3142) = ((1 : F) * rho 3153)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3154) * ((-1 : F) * rho 3152 + (1 : F) * rho 3153) = ((2 : F) * rho 3151)

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3155) * ((2 : F) + (1 : F) * rho 3152 + (-1 : F) * rho 3153) = ((1 : F) * rho 3152 + (1 : F) * rho 3153)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 73⟩, ⟨(1 : F), 2226, 13, 72⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3154 + (1 : F) * rho 3155) * (relationLc451 rho) = ((1 : F) * rho 3156)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 72⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3155) * (relationLc452 rho) = ((1 : F) * rho 3157)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3154) * (relationLc453 rho) = ((1 : F) * rho 3158)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3157) * ((1 : F) * rho 3158) = ((1 : F) * rho 3159)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3160) * ((1 : F) + (1 : F) * rho 3159) = ((1 : F) * rho 3157 + (1 : F) * rho 3158)

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3161) * ((1 : F) + (-1 : F) * rho 3159) = ((1 : F) * rho 3156 + (-1 : F) * rho 3157 + (-1 : F) * rho 3158)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 72⟩], residual := [((-1 : F), 2212), ((1 : F), 3160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1056) * (relationLc454 rho) = ((1 : F) * rho 3162)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 73⟩], residual := [((1 : F), 3161)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1056) * (relationLc455 rho) = ((1 : F) * rho 3163)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3154) * ((1 : F) * rho 3155) = ((1 : F) * rho 3164)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3154) * ((1 : F) * rho 3154) = ((1 : F) * rho 3165)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3155) * ((1 : F) * rho 3155) = ((1 : F) * rho 3166)

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167) * ((-1 : F) * rho 3165 + (1 : F) * rho 3166) = ((2 : F) * rho 3164)

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3168) * ((2 : F) + (1 : F) * rho 3165 + (-1 : F) * rho 3166) = ((1 : F) * rho 3165 + (1 : F) * rho 3166)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 74⟩, ⟨(1 : F), 2226, 13, 73⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167 + (1 : F) * rho 3168) * (relationLc456 rho) = ((1 : F) * rho 3169)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 73⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3168) * (relationLc457 rho) = ((1 : F) * rho 3170)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3167) * (relationLc458 rho) = ((1 : F) * rho 3171)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3170) * ((1 : F) * rho 3171) = ((1 : F) * rho 3172)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3173) * ((1 : F) + (1 : F) * rho 3172) = ((1 : F) * rho 3170 + (1 : F) * rho 3171)

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3174) * ((1 : F) + (-1 : F) * rho 3172) = ((1 : F) * rho 3169 + (-1 : F) * rho 3170 + (-1 : F) * rho 3171)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
