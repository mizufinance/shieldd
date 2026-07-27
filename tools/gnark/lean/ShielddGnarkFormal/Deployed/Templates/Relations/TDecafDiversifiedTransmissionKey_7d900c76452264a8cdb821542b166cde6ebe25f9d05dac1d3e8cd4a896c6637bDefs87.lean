import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs86

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 107⟩], residual := [((-1 : F), 2212), ((1 : F), 3615)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1091) * (relationLc629 rho) = ((1 : F) * rho 3617)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 108⟩], residual := [((1 : F), 3616)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1091) * (relationLc630 rho) = ((1 : F) * rho 3618)

def relationRow4125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3609) * ((1 : F) * rho 3610) = ((1 : F) * rho 3619)

def relationRow4126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3609) * ((1 : F) * rho 3609) = ((1 : F) * rho 3620)

def relationRow4127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3610) * ((1 : F) * rho 3610) = ((1 : F) * rho 3621)

def relationRow4128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622) * ((-1 : F) * rho 3620 + (1 : F) * rho 3621) = ((2 : F) * rho 3619)

def relationRow4129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3623) * ((2 : F) + (1 : F) * rho 3620 + (-1 : F) * rho 3621) = ((1 : F) * rho 3620 + (1 : F) * rho 3621)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 109⟩, ⟨(1 : F), 2226, 13, 108⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622 + (1 : F) * rho 3623) * (relationLc631 rho) = ((1 : F) * rho 3624)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 108⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3623) * (relationLc632 rho) = ((1 : F) * rho 3625)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622) * (relationLc633 rho) = ((1 : F) * rho 3626)

def relationRow4133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3625) * ((1 : F) * rho 3626) = ((1 : F) * rho 3627)

def relationRow4134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3628) * ((1 : F) + (1 : F) * rho 3627) = ((1 : F) * rho 3625 + (1 : F) * rho 3626)

def relationRow4135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3629) * ((1 : F) + (-1 : F) * rho 3627) = ((1 : F) * rho 3624 + (-1 : F) * rho 3625 + (-1 : F) * rho 3626)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 108⟩], residual := [((-1 : F), 2212), ((1 : F), 3628)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1092) * (relationLc634 rho) = ((1 : F) * rho 3630)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 109⟩], residual := [((1 : F), 3629)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1092) * (relationLc635 rho) = ((1 : F) * rho 3631)

def relationRow4138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622) * ((1 : F) * rho 3623) = ((1 : F) * rho 3632)

def relationRow4139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3622) * ((1 : F) * rho 3622) = ((1 : F) * rho 3633)

def relationRow4140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3623) * ((1 : F) * rho 3623) = ((1 : F) * rho 3634)

def relationRow4141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3635) * ((-1 : F) * rho 3633 + (1 : F) * rho 3634) = ((2 : F) * rho 3632)

def relationRow4142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3636) * ((2 : F) + (1 : F) * rho 3633 + (-1 : F) * rho 3634) = ((1 : F) * rho 3633 + (1 : F) * rho 3634)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 110⟩, ⟨(1 : F), 2226, 13, 109⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3635 + (1 : F) * rho 3636) * (relationLc636 rho) = ((1 : F) * rho 3637)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 109⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3636) * (relationLc637 rho) = ((1 : F) * rho 3638)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3635) * (relationLc638 rho) = ((1 : F) * rho 3639)

def relationRow4146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3638) * ((1 : F) * rho 3639) = ((1 : F) * rho 3640)

def relationRow4147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3641) * ((1 : F) + (1 : F) * rho 3640) = ((1 : F) * rho 3638 + (1 : F) * rho 3639)

def relationRow4148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3642) * ((1 : F) + (-1 : F) * rho 3640) = ((1 : F) * rho 3637 + (-1 : F) * rho 3638 + (-1 : F) * rho 3639)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 109⟩], residual := [((-1 : F), 2212), ((1 : F), 3641)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1093) * (relationLc639 rho) = ((1 : F) * rho 3643)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 110⟩], residual := [((1 : F), 3642)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1093) * (relationLc640 rho) = ((1 : F) * rho 3644)

def relationRow4151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3635) * ((1 : F) * rho 3636) = ((1 : F) * rho 3645)

def relationRow4152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3635) * ((1 : F) * rho 3635) = ((1 : F) * rho 3646)

def relationRow4153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3636) * ((1 : F) * rho 3636) = ((1 : F) * rho 3647)

def relationRow4154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3648) * ((-1 : F) * rho 3646 + (1 : F) * rho 3647) = ((2 : F) * rho 3645)

def relationRow4155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3649) * ((2 : F) + (1 : F) * rho 3646 + (-1 : F) * rho 3647) = ((1 : F) * rho 3646 + (1 : F) * rho 3647)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 111⟩, ⟨(1 : F), 2226, 13, 110⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3648 + (1 : F) * rho 3649) * (relationLc641 rho) = ((1 : F) * rho 3650)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 110⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3649) * (relationLc642 rho) = ((1 : F) * rho 3651)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3648) * (relationLc643 rho) = ((1 : F) * rho 3652)

def relationRow4159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3651) * ((1 : F) * rho 3652) = ((1 : F) * rho 3653)

def relationRow4160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3654) * ((1 : F) + (1 : F) * rho 3653) = ((1 : F) * rho 3651 + (1 : F) * rho 3652)

def relationRow4161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3655) * ((1 : F) + (-1 : F) * rho 3653) = ((1 : F) * rho 3650 + (-1 : F) * rho 3651 + (-1 : F) * rho 3652)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 110⟩], residual := [((-1 : F), 2212), ((1 : F), 3654)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1094) * (relationLc644 rho) = ((1 : F) * rho 3656)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 111⟩], residual := [((1 : F), 3655)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1094) * (relationLc645 rho) = ((1 : F) * rho 3657)

def relationRow4164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3648) * ((1 : F) * rho 3649) = ((1 : F) * rho 3658)

def relationRow4165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3648) * ((1 : F) * rho 3648) = ((1 : F) * rho 3659)

def relationRow4166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3649) * ((1 : F) * rho 3649) = ((1 : F) * rho 3660)

def relationRow4167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661) * ((-1 : F) * rho 3659 + (1 : F) * rho 3660) = ((2 : F) * rho 3658)

def relationRow4168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3662) * ((2 : F) + (1 : F) * rho 3659 + (-1 : F) * rho 3660) = ((1 : F) * rho 3659 + (1 : F) * rho 3660)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 112⟩, ⟨(1 : F), 2226, 13, 111⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661 + (1 : F) * rho 3662) * (relationLc646 rho) = ((1 : F) * rho 3663)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 111⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3662) * (relationLc647 rho) = ((1 : F) * rho 3664)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661) * (relationLc648 rho) = ((1 : F) * rho 3665)

def relationRow4172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3664) * ((1 : F) * rho 3665) = ((1 : F) * rho 3666)

def relationRow4173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3667) * ((1 : F) + (1 : F) * rho 3666) = ((1 : F) * rho 3664 + (1 : F) * rho 3665)

def relationRow4174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3668) * ((1 : F) + (-1 : F) * rho 3666) = ((1 : F) * rho 3663 + (-1 : F) * rho 3664 + (-1 : F) * rho 3665)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 111⟩], residual := [((-1 : F), 2212), ((1 : F), 3667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1095) * (relationLc649 rho) = ((1 : F) * rho 3669)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 112⟩], residual := [((1 : F), 3668)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1095) * (relationLc650 rho) = ((1 : F) * rho 3670)

def relationRow4177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661) * ((1 : F) * rho 3662) = ((1 : F) * rho 3671)

def relationRow4178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3661) * ((1 : F) * rho 3661) = ((1 : F) * rho 3672)

def relationRow4179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3662) * ((1 : F) * rho 3662) = ((1 : F) * rho 3673)

def relationRow4180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3674) * ((-1 : F) * rho 3672 + (1 : F) * rho 3673) = ((2 : F) * rho 3671)

def relationRow4181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3675) * ((2 : F) + (1 : F) * rho 3672 + (-1 : F) * rho 3673) = ((1 : F) * rho 3672 + (1 : F) * rho 3673)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 113⟩, ⟨(1 : F), 2226, 13, 112⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3674 + (1 : F) * rho 3675) * (relationLc651 rho) = ((1 : F) * rho 3676)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 112⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3675) * (relationLc652 rho) = ((1 : F) * rho 3677)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3674) * (relationLc653 rho) = ((1 : F) * rho 3678)

def relationRow4185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3677) * ((1 : F) * rho 3678) = ((1 : F) * rho 3679)

def relationRow4186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3680) * ((1 : F) + (1 : F) * rho 3679) = ((1 : F) * rho 3677 + (1 : F) * rho 3678)

def relationRow4187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3681) * ((1 : F) + (-1 : F) * rho 3679) = ((1 : F) * rho 3676 + (-1 : F) * rho 3677 + (-1 : F) * rho 3678)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 112⟩], residual := [((-1 : F), 2212), ((1 : F), 3680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1096) * (relationLc654 rho) = ((1 : F) * rho 3682)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 113⟩], residual := [((1 : F), 3681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1096) * (relationLc655 rho) = ((1 : F) * rho 3683)

def relationRow4190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3674) * ((1 : F) * rho 3675) = ((1 : F) * rho 3684)

def relationRow4191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3674) * ((1 : F) * rho 3674) = ((1 : F) * rho 3685)

def relationRow4192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3675) * ((1 : F) * rho 3675) = ((1 : F) * rho 3686)

def relationRow4193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3687) * ((-1 : F) * rho 3685 + (1 : F) * rho 3686) = ((2 : F) * rho 3684)

def relationRow4194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3688) * ((2 : F) + (1 : F) * rho 3685 + (-1 : F) * rho 3686) = ((1 : F) * rho 3685 + (1 : F) * rho 3686)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 114⟩, ⟨(1 : F), 2226, 13, 113⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3687 + (1 : F) * rho 3688) * (relationLc656 rho) = ((1 : F) * rho 3689)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 113⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
