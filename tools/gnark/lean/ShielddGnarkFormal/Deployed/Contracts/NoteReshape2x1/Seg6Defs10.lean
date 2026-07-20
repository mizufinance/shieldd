import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * ((1 : F) + (1 : F) * rho 4149) = ((1 : F) * rho 4147 + (1 : F) * rho 4148)

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((1 : F) + (-1 : F) * rho 4149) = ((1 : F) * rho 4146 + (-1 : F) * rho 4147 + (-1 : F) * rho 4148)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 80⟩], residual := [((1 : F), 4150)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1964) * (relationLc491 rho) = ((1 : F) * rho 4152)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 80⟩], residual := [((1 : F), 4151)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1964) * (relationLc492 rho) = ((1 : F) * rho 4153)

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144) * ((1 : F) * rho 4145) = ((1 : F) * rho 4154)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144) * ((1 : F) * rho 4144) = ((1 : F) * rho 4155)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4145) * ((1 : F) * rho 4145) = ((1 : F) * rho 4156)

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((-1 : F) * rho 4155 + (1 : F) * rho 4156) = ((2 : F) * rho 4154)

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4158) * ((2 : F) + (1 : F) * rho 4155 + (-1 : F) * rho 4156) = ((1 : F) * rho 4155 + (1 : F) * rho 4156)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 81⟩, ⟨(1 : F), 3113, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157 + (1 : F) * rho 4158) * (relationLc493 rho) = ((1 : F) * rho 4159)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4158) * (relationLc494 rho) = ((1 : F) * rho 4160)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * (relationLc495 rho) = ((1 : F) * rho 4161)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4160) * ((1 : F) * rho 4161) = ((1 : F) * rho 4162)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4163) * ((1 : F) + (1 : F) * rho 4162) = ((1 : F) * rho 4160 + (1 : F) * rho 4161)

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4164) * ((1 : F) + (-1 : F) * rho 4162) = ((1 : F) * rho 4159 + (-1 : F) * rho 4160 + (-1 : F) * rho 4161)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 81⟩], residual := [((1 : F), 4163)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * (relationLc496 rho) = ((1 : F) * rho 4165)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 81⟩], residual := [((1 : F), 4164)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * (relationLc497 rho) = ((1 : F) * rho 4166)

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((1 : F) * rho 4158) = ((1 : F) * rho 4167)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((1 : F) * rho 4157) = ((1 : F) * rho 4168)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4158) * ((1 : F) * rho 4158) = ((1 : F) * rho 4169)

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * ((-1 : F) * rho 4168 + (1 : F) * rho 4169) = ((2 : F) * rho 4167)

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4171) * ((2 : F) + (1 : F) * rho 4168 + (-1 : F) * rho 4169) = ((1 : F) * rho 4168 + (1 : F) * rho 4169)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 82⟩, ⟨(1 : F), 3113, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170 + (1 : F) * rho 4171) * (relationLc498 rho) = ((1 : F) * rho 4172)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4171) * (relationLc499 rho) = ((1 : F) * rho 4173)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * (relationLc500 rho) = ((1 : F) * rho 4174)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4173) * ((1 : F) * rho 4174) = ((1 : F) * rho 4175)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4176) * ((1 : F) + (1 : F) * rho 4175) = ((1 : F) * rho 4173 + (1 : F) * rho 4174)

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4177) * ((1 : F) + (-1 : F) * rho 4175) = ((1 : F) * rho 4172 + (-1 : F) * rho 4173 + (-1 : F) * rho 4174)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 82⟩], residual := [((1 : F), 4176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * (relationLc501 rho) = ((1 : F) * rho 4178)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 82⟩], residual := [((1 : F), 4177)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * (relationLc502 rho) = ((1 : F) * rho 4179)

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * ((1 : F) * rho 4171) = ((1 : F) * rho 4180)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4170) * ((1 : F) * rho 4170) = ((1 : F) * rho 4181)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4171) * ((1 : F) * rho 4171) = ((1 : F) * rho 4182)

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((-1 : F) * rho 4181 + (1 : F) * rho 4182) = ((2 : F) * rho 4180)

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * ((2 : F) + (1 : F) * rho 4181 + (-1 : F) * rho 4182) = ((1 : F) * rho 4181 + (1 : F) * rho 4182)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 83⟩, ⟨(1 : F), 3113, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183 + (1 : F) * rho 4184) * (relationLc503 rho) = ((1 : F) * rho 4185)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * (relationLc504 rho) = ((1 : F) * rho 4186)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * (relationLc505 rho) = ((1 : F) * rho 4187)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4186) * ((1 : F) * rho 4187) = ((1 : F) * rho 4188)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4189) * ((1 : F) + (1 : F) * rho 4188) = ((1 : F) * rho 4186 + (1 : F) * rho 4187)

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4190) * ((1 : F) + (-1 : F) * rho 4188) = ((1 : F) * rho 4185 + (-1 : F) * rho 4186 + (-1 : F) * rho 4187)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 83⟩], residual := [((1 : F), 4189)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1967) * (relationLc506 rho) = ((1 : F) * rho 4191)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 83⟩], residual := [((1 : F), 4190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1967) * (relationLc507 rho) = ((1 : F) * rho 4192)

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((1 : F) * rho 4184) = ((1 : F) * rho 4193)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((1 : F) * rho 4183) = ((1 : F) * rho 4194)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * ((1 : F) * rho 4184) = ((1 : F) * rho 4195)

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * ((-1 : F) * rho 4194 + (1 : F) * rho 4195) = ((2 : F) * rho 4193)

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * ((2 : F) + (1 : F) * rho 4194 + (-1 : F) * rho 4195) = ((1 : F) * rho 4194 + (1 : F) * rho 4195)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 84⟩, ⟨(1 : F), 3113, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196 + (1 : F) * rho 4197) * (relationLc508 rho) = ((1 : F) * rho 4198)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * (relationLc509 rho) = ((1 : F) * rho 4199)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * (relationLc510 rho) = ((1 : F) * rho 4200)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4199) * ((1 : F) * rho 4200) = ((1 : F) * rho 4201)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4202) * ((1 : F) + (1 : F) * rho 4201) = ((1 : F) * rho 4199 + (1 : F) * rho 4200)

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4203) * ((1 : F) + (-1 : F) * rho 4201) = ((1 : F) * rho 4198 + (-1 : F) * rho 4199 + (-1 : F) * rho 4200)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 84⟩], residual := [((1 : F), 4202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1968) * (relationLc511 rho) = ((1 : F) * rho 4204)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 84⟩], residual := [((1 : F), 4203)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1968) * (relationLc512 rho) = ((1 : F) * rho 4205)

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * ((1 : F) * rho 4197) = ((1 : F) * rho 4206)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * ((1 : F) * rho 4196) = ((1 : F) * rho 4207)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4197) * ((1 : F) * rho 4197) = ((1 : F) * rho 4208)

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4209) * ((-1 : F) * rho 4207 + (1 : F) * rho 4208) = ((2 : F) * rho 4206)

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4210) * ((2 : F) + (1 : F) * rho 4207 + (-1 : F) * rho 4208) = ((1 : F) * rho 4207 + (1 : F) * rho 4208)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 85⟩, ⟨(1 : F), 3113, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4209 + (1 : F) * rho 4210) * (relationLc513 rho) = ((1 : F) * rho 4211)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4210) * (relationLc514 rho) = ((1 : F) * rho 4212)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4209) * (relationLc515 rho) = ((1 : F) * rho 4213)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4212) * ((1 : F) * rho 4213) = ((1 : F) * rho 4214)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * ((1 : F) + (1 : F) * rho 4214) = ((1 : F) * rho 4212 + (1 : F) * rho 4213)

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4216) * ((1 : F) + (-1 : F) * rho 4214) = ((1 : F) * rho 4211 + (-1 : F) * rho 4212 + (-1 : F) * rho 4213)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 85⟩], residual := [((1 : F), 4215)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1969) * (relationLc516 rho) = ((1 : F) * rho 4217)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 85⟩], residual := [((1 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1969) * (relationLc517 rho) = ((1 : F) * rho 4218)

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4209) * ((1 : F) * rho 4210) = ((1 : F) * rho 4219)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4209) * ((1 : F) * rho 4209) = ((1 : F) * rho 4220)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4210) * ((1 : F) * rho 4210) = ((1 : F) * rho 4221)

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222) * ((-1 : F) * rho 4220 + (1 : F) * rho 4221) = ((2 : F) * rho 4219)

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4223) * ((2 : F) + (1 : F) * rho 4220 + (-1 : F) * rho 4221) = ((1 : F) * rho 4220 + (1 : F) * rho 4221)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 86⟩, ⟨(1 : F), 3113, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222 + (1 : F) * rho 4223) * (relationLc518 rho) = ((1 : F) * rho 4224)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4223) * (relationLc519 rho) = ((1 : F) * rho 4225)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222) * (relationLc520 rho) = ((1 : F) * rho 4226)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4225) * ((1 : F) * rho 4226) = ((1 : F) * rho 4227)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228) * ((1 : F) + (1 : F) * rho 4227) = ((1 : F) * rho 4225 + (1 : F) * rho 4226)

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4229) * ((1 : F) + (-1 : F) * rho 4227) = ((1 : F) * rho 4224 + (-1 : F) * rho 4225 + (-1 : F) * rho 4226)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 86⟩], residual := [((1 : F), 4228)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1970) * (relationLc521 rho) = ((1 : F) * rho 4230)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 86⟩], residual := [((1 : F), 4229)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1970) * (relationLc522 rho) = ((1 : F) * rho 4231)

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222) * ((1 : F) * rho 4223) = ((1 : F) * rho 4232)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222) * ((1 : F) * rho 4222) = ((1 : F) * rho 4233)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4223) * ((1 : F) * rho 4223) = ((1 : F) * rho 4234)

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * ((-1 : F) * rho 4233 + (1 : F) * rho 4234) = ((2 : F) * rho 4232)

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4236) * ((2 : F) + (1 : F) * rho 4233 + (-1 : F) * rho 4234) = ((1 : F) * rho 4233 + (1 : F) * rho 4234)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 87⟩, ⟨(1 : F), 3113, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235 + (1 : F) * rho 4236) * (relationLc523 rho) = ((1 : F) * rho 4237)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4236) * (relationLc524 rho) = ((1 : F) * rho 4238)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * (relationLc525 rho) = ((1 : F) * rho 4239)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4238) * ((1 : F) * rho 4239) = ((1 : F) * rho 4240)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * ((1 : F) + (1 : F) * rho 4240) = ((1 : F) * rho 4238 + (1 : F) * rho 4239)

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * ((1 : F) + (-1 : F) * rho 4240) = ((1 : F) * rho 4237 + (-1 : F) * rho 4238 + (-1 : F) * rho 4239)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 87⟩], residual := [((1 : F), 4241)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1971) * (relationLc526 rho) = ((1 : F) * rho 4243)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 87⟩], residual := [((1 : F), 4242)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1971) * (relationLc527 rho) = ((1 : F) * rho 4244)

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * ((1 : F) * rho 4236) = ((1 : F) * rho 4245)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * ((1 : F) * rho 4235) = ((1 : F) * rho 4246)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4236) * ((1 : F) * rho 4236) = ((1 : F) * rho 4247)

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * ((-1 : F) * rho 4246 + (1 : F) * rho 4247) = ((2 : F) * rho 4245)

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4249) * ((2 : F) + (1 : F) * rho 4246 + (-1 : F) * rho 4247) = ((1 : F) * rho 4246 + (1 : F) * rho 4247)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 88⟩, ⟨(1 : F), 3113, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248 + (1 : F) * rho 4249) * (relationLc528 rho) = ((1 : F) * rho 4250)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4249) * (relationLc529 rho) = ((1 : F) * rho 4251)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * (relationLc530 rho) = ((1 : F) * rho 4252)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4251) * ((1 : F) * rho 4252) = ((1 : F) * rho 4253)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * ((1 : F) + (1 : F) * rho 4253) = ((1 : F) * rho 4251 + (1 : F) * rho 4252)

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * ((1 : F) + (-1 : F) * rho 4253) = ((1 : F) * rho 4250 + (-1 : F) * rho 4251 + (-1 : F) * rho 4252)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 88⟩], residual := [((1 : F), 4254)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1972) * (relationLc531 rho) = ((1 : F) * rho 4256)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 88⟩], residual := [((1 : F), 4255)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1972) * (relationLc532 rho) = ((1 : F) * rho 4257)

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * ((1 : F) * rho 4249) = ((1 : F) * rho 4258)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * ((1 : F) * rho 4248) = ((1 : F) * rho 4259)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4249) * ((1 : F) * rho 4249) = ((1 : F) * rho 4260)

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261) * ((-1 : F) * rho 4259 + (1 : F) * rho 4260) = ((2 : F) * rho 4258)

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4262) * ((2 : F) + (1 : F) * rho 4259 + (-1 : F) * rho 4260) = ((1 : F) * rho 4259 + (1 : F) * rho 4260)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 89⟩, ⟨(1 : F), 3113, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261 + (1 : F) * rho 4262) * (relationLc533 rho) = ((1 : F) * rho 4263)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4262) * (relationLc534 rho) = ((1 : F) * rho 4264)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261) * (relationLc535 rho) = ((1 : F) * rho 4265)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4264) * ((1 : F) * rho 4265) = ((1 : F) * rho 4266)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * ((1 : F) + (1 : F) * rho 4266) = ((1 : F) * rho 4264 + (1 : F) * rho 4265)

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * ((1 : F) + (-1 : F) * rho 4266) = ((1 : F) * rho 4263 + (-1 : F) * rho 4264 + (-1 : F) * rho 4265)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 89⟩], residual := [((1 : F), 4267)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1973) * (relationLc536 rho) = ((1 : F) * rho 4269)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 89⟩], residual := [((1 : F), 4268)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1973) * (relationLc537 rho) = ((1 : F) * rho 4270)

def relationRow3878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261) * ((1 : F) * rho 4262) = ((1 : F) * rho 4271)

def relationRow3879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4261) * ((1 : F) * rho 4261) = ((1 : F) * rho 4272)

def relationRow3880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4262) * ((1 : F) * rho 4262) = ((1 : F) * rho 4273)

def relationRow3881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * ((-1 : F) * rho 4272 + (1 : F) * rho 4273) = ((2 : F) * rho 4271)

def relationRow3882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4275) * ((2 : F) + (1 : F) * rho 4272 + (-1 : F) * rho 4273) = ((1 : F) * rho 4272 + (1 : F) * rho 4273)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 90⟩, ⟨(1 : F), 3113, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274 + (1 : F) * rho 4275) * (relationLc538 rho) = ((1 : F) * rho 4276)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4275) * (relationLc539 rho) = ((1 : F) * rho 4277)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * (relationLc540 rho) = ((1 : F) * rho 4278)

def relationRow3886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4277) * ((1 : F) * rho 4278) = ((1 : F) * rho 4279)

def relationRow3887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * ((1 : F) + (1 : F) * rho 4279) = ((1 : F) * rho 4277 + (1 : F) * rho 4278)

def relationRow3888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4281) * ((1 : F) + (-1 : F) * rho 4279) = ((1 : F) * rho 4276 + (-1 : F) * rho 4277 + (-1 : F) * rho 4278)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 90⟩], residual := [((1 : F), 4280)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1974) * (relationLc541 rho) = ((1 : F) * rho 4282)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 90⟩], residual := [((1 : F), 4281)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1974) * (relationLc542 rho) = ((1 : F) * rho 4283)

def relationRow3891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * ((1 : F) * rho 4275) = ((1 : F) * rho 4284)

def relationRow3892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * ((1 : F) * rho 4274) = ((1 : F) * rho 4285)

def relationRow3893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4275) * ((1 : F) * rho 4275) = ((1 : F) * rho 4286)

def relationRow3894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * ((-1 : F) * rho 4285 + (1 : F) * rho 4286) = ((2 : F) * rho 4284)

def relationRow3895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4288) * ((2 : F) + (1 : F) * rho 4285 + (-1 : F) * rho 4286) = ((1 : F) * rho 4285 + (1 : F) * rho 4286)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 91⟩, ⟨(1 : F), 3113, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287 + (1 : F) * rho 4288) * (relationLc543 rho) = ((1 : F) * rho 4289)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4288) * (relationLc544 rho) = ((1 : F) * rho 4290)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * (relationLc545 rho) = ((1 : F) * rho 4291)

def relationRow3899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4290) * ((1 : F) * rho 4291) = ((1 : F) * rho 4292)

def relationRow3900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * ((1 : F) + (1 : F) * rho 4292) = ((1 : F) * rho 4290 + (1 : F) * rho 4291)

def relationRow3901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4294) * ((1 : F) + (-1 : F) * rho 4292) = ((1 : F) * rho 4289 + (-1 : F) * rho 4290 + (-1 : F) * rho 4291)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 91⟩], residual := [((1 : F), 4293)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * (relationLc546 rho) = ((1 : F) * rho 4295)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 91⟩], residual := [((1 : F), 4294)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * (relationLc547 rho) = ((1 : F) * rho 4296)

def relationRow3904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * ((1 : F) * rho 4288) = ((1 : F) * rho 4297)

def relationRow3905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * ((1 : F) * rho 4287) = ((1 : F) * rho 4298)

def relationRow3906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4288) * ((1 : F) * rho 4288) = ((1 : F) * rho 4299)

def relationRow3907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * ((-1 : F) * rho 4298 + (1 : F) * rho 4299) = ((2 : F) * rho 4297)

def relationRow3908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4301) * ((2 : F) + (1 : F) * rho 4298 + (-1 : F) * rho 4299) = ((1 : F) * rho 4298 + (1 : F) * rho 4299)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 92⟩, ⟨(1 : F), 3113, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300 + (1 : F) * rho 4301) * (relationLc548 rho) = ((1 : F) * rho 4302)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4301) * (relationLc549 rho) = ((1 : F) * rho 4303)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * (relationLc550 rho) = ((1 : F) * rho 4304)

def relationRow3912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4303) * ((1 : F) * rho 4304) = ((1 : F) * rho 4305)

def relationRow3913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * ((1 : F) + (1 : F) * rho 4305) = ((1 : F) * rho 4303 + (1 : F) * rho 4304)

def relationRow3914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4307) * ((1 : F) + (-1 : F) * rho 4305) = ((1 : F) * rho 4302 + (-1 : F) * rho 4303 + (-1 : F) * rho 4304)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 92⟩], residual := [((1 : F), 4306)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * (relationLc551 rho) = ((1 : F) * rho 4308)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 92⟩], residual := [((1 : F), 4307)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * (relationLc552 rho) = ((1 : F) * rho 4309)

def relationRow3917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * ((1 : F) * rho 4301) = ((1 : F) * rho 4310)

def relationRow3918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * ((1 : F) * rho 4300) = ((1 : F) * rho 4311)

def relationRow3919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4301) * ((1 : F) * rho 4301) = ((1 : F) * rho 4312)

def relationRow3920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * ((-1 : F) * rho 4311 + (1 : F) * rho 4312) = ((2 : F) * rho 4310)

def relationRow3921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4314) * ((2 : F) + (1 : F) * rho 4311 + (-1 : F) * rho 4312) = ((1 : F) * rho 4311 + (1 : F) * rho 4312)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 93⟩, ⟨(1 : F), 3113, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313 + (1 : F) * rho 4314) * (relationLc553 rho) = ((1 : F) * rho 4315)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4314) * (relationLc554 rho) = ((1 : F) * rho 4316)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * (relationLc555 rho) = ((1 : F) * rho 4317)

def relationRow3925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4316) * ((1 : F) * rho 4317) = ((1 : F) * rho 4318)

def relationRow3926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * ((1 : F) + (1 : F) * rho 4318) = ((1 : F) * rho 4316 + (1 : F) * rho 4317)

def relationRow3927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4320) * ((1 : F) + (-1 : F) * rho 4318) = ((1 : F) * rho 4315 + (-1 : F) * rho 4316 + (-1 : F) * rho 4317)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 93⟩], residual := [((1 : F), 4319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1977) * (relationLc556 rho) = ((1 : F) * rho 4321)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 93⟩], residual := [((1 : F), 4320)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1977) * (relationLc557 rho) = ((1 : F) * rho 4322)

def relationRow3930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * ((1 : F) * rho 4314) = ((1 : F) * rho 4323)

def relationRow3931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * ((1 : F) * rho 4313) = ((1 : F) * rho 4324)

def relationRow3932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4314) * ((1 : F) * rho 4314) = ((1 : F) * rho 4325)

def relationRow3933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * ((-1 : F) * rho 4324 + (1 : F) * rho 4325) = ((2 : F) * rho 4323)

def relationRow3934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4327) * ((2 : F) + (1 : F) * rho 4324 + (-1 : F) * rho 4325) = ((1 : F) * rho 4324 + (1 : F) * rho 4325)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 94⟩, ⟨(1 : F), 3113, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326 + (1 : F) * rho 4327) * (relationLc558 rho) = ((1 : F) * rho 4328)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4327) * (relationLc559 rho) = ((1 : F) * rho 4329)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * (relationLc560 rho) = ((1 : F) * rho 4330)

def relationRow3938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4329) * ((1 : F) * rho 4330) = ((1 : F) * rho 4331)

def relationRow3939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * ((1 : F) + (1 : F) * rho 4331) = ((1 : F) * rho 4329 + (1 : F) * rho 4330)

def relationRow3940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4333) * ((1 : F) + (-1 : F) * rho 4331) = ((1 : F) * rho 4328 + (-1 : F) * rho 4329 + (-1 : F) * rho 4330)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 94⟩], residual := [((1 : F), 4332)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1978) * (relationLc561 rho) = ((1 : F) * rho 4334)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 94⟩], residual := [((1 : F), 4333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1978) * (relationLc562 rho) = ((1 : F) * rho 4335)

def relationRow3943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * ((1 : F) * rho 4327) = ((1 : F) * rho 4336)

def relationRow3944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * ((1 : F) * rho 4326) = ((1 : F) * rho 4337)

def relationRow3945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4327) * ((1 : F) * rho 4327) = ((1 : F) * rho 4338)

def relationRow3946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((-1 : F) * rho 4337 + (1 : F) * rho 4338) = ((2 : F) * rho 4336)

def relationRow3947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4340) * ((2 : F) + (1 : F) * rho 4337 + (-1 : F) * rho 4338) = ((1 : F) * rho 4337 + (1 : F) * rho 4338)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 95⟩, ⟨(1 : F), 3113, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339 + (1 : F) * rho 4340) * (relationLc563 rho) = ((1 : F) * rho 4341)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4340) * (relationLc564 rho) = ((1 : F) * rho 4342)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * (relationLc565 rho) = ((1 : F) * rho 4343)

def relationRow3951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4342) * ((1 : F) * rho 4343) = ((1 : F) * rho 4344)

def relationRow3952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * ((1 : F) + (1 : F) * rho 4344) = ((1 : F) * rho 4342 + (1 : F) * rho 4343)

def relationRow3953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4346) * ((1 : F) + (-1 : F) * rho 4344) = ((1 : F) * rho 4341 + (-1 : F) * rho 4342 + (-1 : F) * rho 4343)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 95⟩], residual := [((1 : F), 4345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1979) * (relationLc566 rho) = ((1 : F) * rho 4347)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 95⟩], residual := [((1 : F), 4346)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1979) * (relationLc567 rho) = ((1 : F) * rho 4348)

def relationRow3956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((1 : F) * rho 4340) = ((1 : F) * rho 4349)

def relationRow3957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((1 : F) * rho 4339) = ((1 : F) * rho 4350)

def relationRow3958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4340) * ((1 : F) * rho 4340) = ((1 : F) * rho 4351)

def relationRow3959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * ((-1 : F) * rho 4350 + (1 : F) * rho 4351) = ((2 : F) * rho 4349)

def relationRow3960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4353) * ((2 : F) + (1 : F) * rho 4350 + (-1 : F) * rho 4351) = ((1 : F) * rho 4350 + (1 : F) * rho 4351)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 96⟩, ⟨(1 : F), 3113, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352 + (1 : F) * rho 4353) * (relationLc568 rho) = ((1 : F) * rho 4354)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4353) * (relationLc569 rho) = ((1 : F) * rho 4355)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * (relationLc570 rho) = ((1 : F) * rho 4356)

def relationRow3964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4355) * ((1 : F) * rho 4356) = ((1 : F) * rho 4357)

def relationRow3965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * ((1 : F) + (1 : F) * rho 4357) = ((1 : F) * rho 4355 + (1 : F) * rho 4356)

def relationRow3966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * ((1 : F) + (-1 : F) * rho 4357) = ((1 : F) * rho 4354 + (-1 : F) * rho 4355 + (-1 : F) * rho 4356)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 96⟩], residual := [((1 : F), 4358)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1980) * (relationLc571 rho) = ((1 : F) * rho 4360)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 96⟩], residual := [((1 : F), 4359)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1980) * (relationLc572 rho) = ((1 : F) * rho 4361)

def relationRow3969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * ((1 : F) * rho 4353) = ((1 : F) * rho 4362)

def relationRow3970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * ((1 : F) * rho 4352) = ((1 : F) * rho 4363)

def relationRow3971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4353) * ((1 : F) * rho 4353) = ((1 : F) * rho 4364)

def relationRow3972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((-1 : F) * rho 4363 + (1 : F) * rho 4364) = ((2 : F) * rho 4362)

def relationRow3973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * ((2 : F) + (1 : F) * rho 4363 + (-1 : F) * rho 4364) = ((1 : F) * rho 4363 + (1 : F) * rho 4364)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 97⟩, ⟨(1 : F), 3113, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365 + (1 : F) * rho 4366) * (relationLc573 rho) = ((1 : F) * rho 4367)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * (relationLc574 rho) = ((1 : F) * rho 4368)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * (relationLc575 rho) = ((1 : F) * rho 4369)

def relationRow3977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4368) * ((1 : F) * rho 4369) = ((1 : F) * rho 4370)

def relationRow3978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * ((1 : F) + (1 : F) * rho 4370) = ((1 : F) * rho 4368 + (1 : F) * rho 4369)

def relationRow3979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4372) * ((1 : F) + (-1 : F) * rho 4370) = ((1 : F) * rho 4367 + (-1 : F) * rho 4368 + (-1 : F) * rho 4369)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 97⟩], residual := [((1 : F), 4371)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1981) * (relationLc576 rho) = ((1 : F) * rho 4373)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 97⟩], residual := [((1 : F), 4372)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1981) * (relationLc577 rho) = ((1 : F) * rho 4374)

def relationRow3982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) * rho 4366) = ((1 : F) * rho 4375)

def relationRow3983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) * rho 4365) = ((1 : F) * rho 4376)

def relationRow3984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * ((1 : F) * rho 4366) = ((1 : F) * rho 4377)

def relationRow3985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4378) * ((-1 : F) * rho 4376 + (1 : F) * rho 4377) = ((2 : F) * rho 4375)

def relationRow3986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * ((2 : F) + (1 : F) * rho 4376 + (-1 : F) * rho 4377) = ((1 : F) * rho 4376 + (1 : F) * rho 4377)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 98⟩, ⟨(1 : F), 3113, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4378 + (1 : F) * rho 4379) * (relationLc578 rho) = ((1 : F) * rho 4380)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * (relationLc579 rho) = ((1 : F) * rho 4381)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4378) * (relationLc580 rho) = ((1 : F) * rho 4382)

def relationRow3990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4381) * ((1 : F) * rho 4382) = ((1 : F) * rho 4383)

def relationRow3991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4384) * ((1 : F) + (1 : F) * rho 4383) = ((1 : F) * rho 4381 + (1 : F) * rho 4382)

def relationRow3992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4385) * ((1 : F) + (-1 : F) * rho 4383) = ((1 : F) * rho 4380 + (-1 : F) * rho 4381 + (-1 : F) * rho 4382)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 98⟩], residual := [((1 : F), 4384)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * (relationLc581 rho) = ((1 : F) * rho 4386)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 98⟩], residual := [((1 : F), 4385)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * (relationLc582 rho) = ((1 : F) * rho 4387)

def relationRow3995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4378) * ((1 : F) * rho 4379) = ((1 : F) * rho 4388)

def relationRow3996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4378) * ((1 : F) * rho 4378) = ((1 : F) * rho 4389)

def relationRow3997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4379) * ((1 : F) * rho 4379) = ((1 : F) * rho 4390)

def relationRow3998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4391) * ((-1 : F) * rho 4389 + (1 : F) * rho 4390) = ((2 : F) * rho 4388)

def relationRow3999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4392) * ((2 : F) + (1 : F) * rho 4389 + (-1 : F) * rho 4390) = ((1 : F) * rho 4389 + (1 : F) * rho 4390)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 99⟩, ⟨(1 : F), 3113, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4391 + (1 : F) * rho 4392) * (relationLc583 rho) = ((1 : F) * rho 4393)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4392) * (relationLc584 rho) = ((1 : F) * rho 4394)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4391) * (relationLc585 rho) = ((1 : F) * rho 4395)

def relationRow4003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4394) * ((1 : F) * rho 4395) = ((1 : F) * rho 4396)

def relationRow4004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * ((1 : F) + (1 : F) * rho 4396) = ((1 : F) * rho 4394 + (1 : F) * rho 4395)

def relationRow4005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4398) * ((1 : F) + (-1 : F) * rho 4396) = ((1 : F) * rho 4393 + (-1 : F) * rho 4394 + (-1 : F) * rho 4395)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 99⟩], residual := [((1 : F), 4397)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * (relationLc586 rho) = ((1 : F) * rho 4399)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 99⟩], residual := [((1 : F), 4398)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * (relationLc587 rho) = ((1 : F) * rho 4400)

def relationRow4008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4391) * ((1 : F) * rho 4392) = ((1 : F) * rho 4401)

def relationRow4009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4391) * ((1 : F) * rho 4391) = ((1 : F) * rho 4402)

def relationRow4010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4392) * ((1 : F) * rho 4392) = ((1 : F) * rho 4403)

def relationRow4011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((-1 : F) * rho 4402 + (1 : F) * rho 4403) = ((2 : F) * rho 4401)

def relationRow4012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4405) * ((2 : F) + (1 : F) * rho 4402 + (-1 : F) * rho 4403) = ((1 : F) * rho 4402 + (1 : F) * rho 4403)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 100⟩, ⟨(1 : F), 3113, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404 + (1 : F) * rho 4405) * (relationLc588 rho) = ((1 : F) * rho 4406)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4405) * (relationLc589 rho) = ((1 : F) * rho 4407)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * (relationLc590 rho) = ((1 : F) * rho 4408)

def relationRow4016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4407) * ((1 : F) * rho 4408) = ((1 : F) * rho 4409)

def relationRow4017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * ((1 : F) + (1 : F) * rho 4409) = ((1 : F) * rho 4407 + (1 : F) * rho 4408)

def relationRow4018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4411) * ((1 : F) + (-1 : F) * rho 4409) = ((1 : F) * rho 4406 + (-1 : F) * rho 4407 + (-1 : F) * rho 4408)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 100⟩], residual := [((1 : F), 4410)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1984) * (relationLc591 rho) = ((1 : F) * rho 4412)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 100⟩], residual := [((1 : F), 4411)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1984) * (relationLc592 rho) = ((1 : F) * rho 4413)

def relationRow4021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((1 : F) * rho 4405) = ((1 : F) * rho 4414)

def relationRow4022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((1 : F) * rho 4404) = ((1 : F) * rho 4415)

def relationRow4023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4405) * ((1 : F) * rho 4405) = ((1 : F) * rho 4416)

def relationRow4024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * ((-1 : F) * rho 4415 + (1 : F) * rho 4416) = ((2 : F) * rho 4414)

def relationRow4025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4418) * ((2 : F) + (1 : F) * rho 4415 + (-1 : F) * rho 4416) = ((1 : F) * rho 4415 + (1 : F) * rho 4416)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 101⟩, ⟨(1 : F), 3113, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417 + (1 : F) * rho 4418) * (relationLc593 rho) = ((1 : F) * rho 4419)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4418) * (relationLc594 rho) = ((1 : F) * rho 4420)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * (relationLc595 rho) = ((1 : F) * rho 4421)

def relationRow4029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4420) * ((1 : F) * rho 4421) = ((1 : F) * rho 4422)

def relationRow4030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4423) * ((1 : F) + (1 : F) * rho 4422) = ((1 : F) * rho 4420 + (1 : F) * rho 4421)

def relationRow4031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4424) * ((1 : F) + (-1 : F) * rho 4422) = ((1 : F) * rho 4419 + (-1 : F) * rho 4420 + (-1 : F) * rho 4421)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 101⟩], residual := [((1 : F), 4423)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * (relationLc596 rho) = ((1 : F) * rho 4425)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 101⟩], residual := [((1 : F), 4424)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * (relationLc597 rho) = ((1 : F) * rho 4426)

def relationRow4034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * ((1 : F) * rho 4418) = ((1 : F) * rho 4427)

def relationRow4035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * ((1 : F) * rho 4417) = ((1 : F) * rho 4428)

def relationRow4036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4418) * ((1 : F) * rho 4418) = ((1 : F) * rho 4429)

def relationRow4037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * ((-1 : F) * rho 4428 + (1 : F) * rho 4429) = ((2 : F) * rho 4427)

def relationRow4038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * ((2 : F) + (1 : F) * rho 4428 + (-1 : F) * rho 4429) = ((1 : F) * rho 4428 + (1 : F) * rho 4429)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 102⟩, ⟨(1 : F), 3113, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430 + (1 : F) * rho 4431) * (relationLc598 rho) = ((1 : F) * rho 4432)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * (relationLc599 rho) = ((1 : F) * rho 4433)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * (relationLc600 rho) = ((1 : F) * rho 4434)

def relationRow4042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4433) * ((1 : F) * rho 4434) = ((1 : F) * rho 4435)

def relationRow4043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((1 : F) + (1 : F) * rho 4435) = ((1 : F) * rho 4433 + (1 : F) * rho 4434)

def relationRow4044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * ((1 : F) + (-1 : F) * rho 4435) = ((1 : F) * rho 4432 + (-1 : F) * rho 4433 + (-1 : F) * rho 4434)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 102⟩], residual := [((1 : F), 4436)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1986) * (relationLc601 rho) = ((1 : F) * rho 4438)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 102⟩], residual := [((1 : F), 4437)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1986) * (relationLc602 rho) = ((1 : F) * rho 4439)

def relationRow4047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * ((1 : F) * rho 4431) = ((1 : F) * rho 4440)

def relationRow4048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * ((1 : F) * rho 4430) = ((1 : F) * rho 4441)

def relationRow4049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * ((1 : F) * rho 4431) = ((1 : F) * rho 4442)

def relationRow4050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443) * ((-1 : F) * rho 4441 + (1 : F) * rho 4442) = ((2 : F) * rho 4440)

def relationRow4051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4444) * ((2 : F) + (1 : F) * rho 4441 + (-1 : F) * rho 4442) = ((1 : F) * rho 4441 + (1 : F) * rho 4442)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 103⟩, ⟨(1 : F), 3113, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443 + (1 : F) * rho 4444) * (relationLc603 rho) = ((1 : F) * rho 4445)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4444) * (relationLc604 rho) = ((1 : F) * rho 4446)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443) * (relationLc605 rho) = ((1 : F) * rho 4447)

def relationRow4055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4446) * ((1 : F) * rho 4447) = ((1 : F) * rho 4448)

def relationRow4056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4449) * ((1 : F) + (1 : F) * rho 4448) = ((1 : F) * rho 4446 + (1 : F) * rho 4447)

def relationRow4057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * ((1 : F) + (-1 : F) * rho 4448) = ((1 : F) * rho 4445 + (-1 : F) * rho 4446 + (-1 : F) * rho 4447)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 103⟩], residual := [((1 : F), 4449)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1987) * (relationLc606 rho) = ((1 : F) * rho 4451)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 103⟩], residual := [((1 : F), 4450)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1987) * (relationLc607 rho) = ((1 : F) * rho 4452)

def relationRow4060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443) * ((1 : F) * rho 4444) = ((1 : F) * rho 4453)

def relationRow4061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4443) * ((1 : F) * rho 4443) = ((1 : F) * rho 4454)

def relationRow4062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4444) * ((1 : F) * rho 4444) = ((1 : F) * rho 4455)

def relationRow4063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456) * ((-1 : F) * rho 4454 + (1 : F) * rho 4455) = ((2 : F) * rho 4453)

def relationRow4064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4457) * ((2 : F) + (1 : F) * rho 4454 + (-1 : F) * rho 4455) = ((1 : F) * rho 4454 + (1 : F) * rho 4455)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 104⟩, ⟨(1 : F), 3113, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456 + (1 : F) * rho 4457) * (relationLc608 rho) = ((1 : F) * rho 4458)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4457) * (relationLc609 rho) = ((1 : F) * rho 4459)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456) * (relationLc610 rho) = ((1 : F) * rho 4460)

def relationRow4068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4459) * ((1 : F) * rho 4460) = ((1 : F) * rho 4461)

def relationRow4069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4462) * ((1 : F) + (1 : F) * rho 4461) = ((1 : F) * rho 4459 + (1 : F) * rho 4460)

def relationRow4070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4463) * ((1 : F) + (-1 : F) * rho 4461) = ((1 : F) * rho 4458 + (-1 : F) * rho 4459 + (-1 : F) * rho 4460)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 104⟩], residual := [((1 : F), 4462)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1988) * (relationLc611 rho) = ((1 : F) * rho 4464)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 104⟩], residual := [((1 : F), 4463)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1988) * (relationLc612 rho) = ((1 : F) * rho 4465)

def relationRow4073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456) * ((1 : F) * rho 4457) = ((1 : F) * rho 4466)

def relationRow4074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4456) * ((1 : F) * rho 4456) = ((1 : F) * rho 4467)

def relationRow4075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4457) * ((1 : F) * rho 4457) = ((1 : F) * rho 4468)

def relationRow4076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4469) * ((-1 : F) * rho 4467 + (1 : F) * rho 4468) = ((2 : F) * rho 4466)

def relationRow4077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4470) * ((2 : F) + (1 : F) * rho 4467 + (-1 : F) * rho 4468) = ((1 : F) * rho 4467 + (1 : F) * rho 4468)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 105⟩, ⟨(1 : F), 3113, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4469 + (1 : F) * rho 4470) * (relationLc613 rho) = ((1 : F) * rho 4471)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4470) * (relationLc614 rho) = ((1 : F) * rho 4472)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4469) * (relationLc615 rho) = ((1 : F) * rho 4473)

def relationRow4081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4472) * ((1 : F) * rho 4473) = ((1 : F) * rho 4474)

def relationRow4082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4475) * ((1 : F) + (1 : F) * rho 4474) = ((1 : F) * rho 4472 + (1 : F) * rho 4473)

def relationRow4083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4476) * ((1 : F) + (-1 : F) * rho 4474) = ((1 : F) * rho 4471 + (-1 : F) * rho 4472 + (-1 : F) * rho 4473)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 105⟩], residual := [((1 : F), 4475)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * (relationLc616 rho) = ((1 : F) * rho 4477)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 105⟩], residual := [((1 : F), 4476)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * (relationLc617 rho) = ((1 : F) * rho 4478)

def relationRow4086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4469) * ((1 : F) * rho 4470) = ((1 : F) * rho 4479)

def relationRow4087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4469) * ((1 : F) * rho 4469) = ((1 : F) * rho 4480)

def relationRow4088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4470) * ((1 : F) * rho 4470) = ((1 : F) * rho 4481)

def relationRow4089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4482) * ((-1 : F) * rho 4480 + (1 : F) * rho 4481) = ((2 : F) * rho 4479)

def relationRow4090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4483) * ((2 : F) + (1 : F) * rho 4480 + (-1 : F) * rho 4481) = ((1 : F) * rho 4480 + (1 : F) * rho 4481)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 106⟩, ⟨(1 : F), 3113, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4482 + (1 : F) * rho 4483) * (relationLc618 rho) = ((1 : F) * rho 4484)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4483) * (relationLc619 rho) = ((1 : F) * rho 4485)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4482) * (relationLc620 rho) = ((1 : F) * rho 4486)

def relationRow4094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4485) * ((1 : F) * rho 4486) = ((1 : F) * rho 4487)

def relationRow4095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4488) * ((1 : F) + (1 : F) * rho 4487) = ((1 : F) * rho 4485 + (1 : F) * rho 4486)

def relationRow4096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4489) * ((1 : F) + (-1 : F) * rho 4487) = ((1 : F) * rho 4484 + (-1 : F) * rho 4485 + (-1 : F) * rho 4486)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 106⟩], residual := [((1 : F), 4488)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * (relationLc621 rho) = ((1 : F) * rho 4490)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 106⟩], residual := [((1 : F), 4489)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * (relationLc622 rho) = ((1 : F) * rho 4491)

def relationRow4099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4482) * ((1 : F) * rho 4483) = ((1 : F) * rho 4492)

def relationRow4100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4482) * ((1 : F) * rho 4482) = ((1 : F) * rho 4493)

def relationRow4101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4483) * ((1 : F) * rho 4483) = ((1 : F) * rho 4494)

def relationRow4102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4495) * ((-1 : F) * rho 4493 + (1 : F) * rho 4494) = ((2 : F) * rho 4492)

def relationRow4103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4496) * ((2 : F) + (1 : F) * rho 4493 + (-1 : F) * rho 4494) = ((1 : F) * rho 4493 + (1 : F) * rho 4494)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 107⟩, ⟨(1 : F), 3113, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4495 + (1 : F) * rho 4496) * (relationLc623 rho) = ((1 : F) * rho 4497)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4496) * (relationLc624 rho) = ((1 : F) * rho 4498)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4495) * (relationLc625 rho) = ((1 : F) * rho 4499)

def relationRow4107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4498) * ((1 : F) * rho 4499) = ((1 : F) * rho 4500)

def relationRow4108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4501) * ((1 : F) + (1 : F) * rho 4500) = ((1 : F) * rho 4498 + (1 : F) * rho 4499)

def relationRow4109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4502) * ((1 : F) + (-1 : F) * rho 4500) = ((1 : F) * rho 4497 + (-1 : F) * rho 4498 + (-1 : F) * rho 4499)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 107⟩], residual := [((1 : F), 4501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * (relationLc626 rho) = ((1 : F) * rho 4503)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 107⟩], residual := [((1 : F), 4502)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * (relationLc627 rho) = ((1 : F) * rho 4504)

def relationRow4112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4495) * ((1 : F) * rho 4496) = ((1 : F) * rho 4505)

def relationRow4113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4495) * ((1 : F) * rho 4495) = ((1 : F) * rho 4506)

def relationRow4114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4496) * ((1 : F) * rho 4496) = ((1 : F) * rho 4507)

def relationRow4115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4508) * ((-1 : F) * rho 4506 + (1 : F) * rho 4507) = ((2 : F) * rho 4505)

def relationRow4116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4509) * ((2 : F) + (1 : F) * rho 4506 + (-1 : F) * rho 4507) = ((1 : F) * rho 4506 + (1 : F) * rho 4507)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 108⟩, ⟨(1 : F), 3113, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4508 + (1 : F) * rho 4509) * (relationLc628 rho) = ((1 : F) * rho 4510)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4509) * (relationLc629 rho) = ((1 : F) * rho 4511)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4508) * (relationLc630 rho) = ((1 : F) * rho 4512)

def relationRow4120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4511) * ((1 : F) * rho 4512) = ((1 : F) * rho 4513)

def relationRow4121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4514) * ((1 : F) + (1 : F) * rho 4513) = ((1 : F) * rho 4511 + (1 : F) * rho 4512)

def relationRow4122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4515) * ((1 : F) + (-1 : F) * rho 4513) = ((1 : F) * rho 4510 + (-1 : F) * rho 4511 + (-1 : F) * rho 4512)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 108⟩], residual := [((1 : F), 4514)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1992) * (relationLc631 rho) = ((1 : F) * rho 4516)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 108⟩], residual := [((1 : F), 4515)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1992) * (relationLc632 rho) = ((1 : F) * rho 4517)

def relationRow4125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4508) * ((1 : F) * rho 4509) = ((1 : F) * rho 4518)

def relationRow4126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4508) * ((1 : F) * rho 4508) = ((1 : F) * rho 4519)

def relationRow4127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4509) * ((1 : F) * rho 4509) = ((1 : F) * rho 4520)

def relationRow4128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521) * ((-1 : F) * rho 4519 + (1 : F) * rho 4520) = ((2 : F) * rho 4518)

def relationRow4129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4522) * ((2 : F) + (1 : F) * rho 4519 + (-1 : F) * rho 4520) = ((1 : F) * rho 4519 + (1 : F) * rho 4520)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 109⟩, ⟨(1 : F), 3113, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521 + (1 : F) * rho 4522) * (relationLc633 rho) = ((1 : F) * rho 4523)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4522) * (relationLc634 rho) = ((1 : F) * rho 4524)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521) * (relationLc635 rho) = ((1 : F) * rho 4525)

def relationRow4133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4524) * ((1 : F) * rho 4525) = ((1 : F) * rho 4526)

def relationRow4134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4527) * ((1 : F) + (1 : F) * rho 4526) = ((1 : F) * rho 4524 + (1 : F) * rho 4525)

def relationRow4135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4528) * ((1 : F) + (-1 : F) * rho 4526) = ((1 : F) * rho 4523 + (-1 : F) * rho 4524 + (-1 : F) * rho 4525)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 109⟩], residual := [((1 : F), 4527)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1993) * (relationLc636 rho) = ((1 : F) * rho 4529)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 109⟩], residual := [((1 : F), 4528)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1993) * (relationLc637 rho) = ((1 : F) * rho 4530)

def relationRow4138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521) * ((1 : F) * rho 4522) = ((1 : F) * rho 4531)

def relationRow4139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4521) * ((1 : F) * rho 4521) = ((1 : F) * rho 4532)

def relationRow4140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4522) * ((1 : F) * rho 4522) = ((1 : F) * rho 4533)

def relationRow4141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * ((-1 : F) * rho 4532 + (1 : F) * rho 4533) = ((2 : F) * rho 4531)

def relationRow4142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4535) * ((2 : F) + (1 : F) * rho 4532 + (-1 : F) * rho 4533) = ((1 : F) * rho 4532 + (1 : F) * rho 4533)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 110⟩, ⟨(1 : F), 3113, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534 + (1 : F) * rho 4535) * (relationLc638 rho) = ((1 : F) * rho 4536)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4535) * (relationLc639 rho) = ((1 : F) * rho 4537)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * (relationLc640 rho) = ((1 : F) * rho 4538)

def relationRow4146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4537) * ((1 : F) * rho 4538) = ((1 : F) * rho 4539)

def relationRow4147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4540) * ((1 : F) + (1 : F) * rho 4539) = ((1 : F) * rho 4537 + (1 : F) * rho 4538)

def relationRow4148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4541) * ((1 : F) + (-1 : F) * rho 4539) = ((1 : F) * rho 4536 + (-1 : F) * rho 4537 + (-1 : F) * rho 4538)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 110⟩], residual := [((1 : F), 4540)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1994) * (relationLc641 rho) = ((1 : F) * rho 4542)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 110⟩], residual := [((1 : F), 4541)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1994) * (relationLc642 rho) = ((1 : F) * rho 4543)

def relationRow4151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * ((1 : F) * rho 4535) = ((1 : F) * rho 4544)

def relationRow4152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4534) * ((1 : F) * rho 4534) = ((1 : F) * rho 4545)

def relationRow4153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4535) * ((1 : F) * rho 4535) = ((1 : F) * rho 4546)

def relationRow4154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((-1 : F) * rho 4545 + (1 : F) * rho 4546) = ((2 : F) * rho 4544)

def relationRow4155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4548) * ((2 : F) + (1 : F) * rho 4545 + (-1 : F) * rho 4546) = ((1 : F) * rho 4545 + (1 : F) * rho 4546)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 111⟩, ⟨(1 : F), 3113, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547 + (1 : F) * rho 4548) * (relationLc643 rho) = ((1 : F) * rho 4549)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4548) * (relationLc644 rho) = ((1 : F) * rho 4550)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * (relationLc645 rho) = ((1 : F) * rho 4551)

def relationRow4159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4550) * ((1 : F) * rho 4551) = ((1 : F) * rho 4552)

def relationRow4160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4553) * ((1 : F) + (1 : F) * rho 4552) = ((1 : F) * rho 4550 + (1 : F) * rho 4551)

def relationRow4161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4554) * ((1 : F) + (-1 : F) * rho 4552) = ((1 : F) * rho 4549 + (-1 : F) * rho 4550 + (-1 : F) * rho 4551)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 111⟩], residual := [((1 : F), 4553)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1995) * (relationLc646 rho) = ((1 : F) * rho 4555)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 111⟩], residual := [((1 : F), 4554)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1995) * (relationLc647 rho) = ((1 : F) * rho 4556)

def relationRow4164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((1 : F) * rho 4548) = ((1 : F) * rho 4557)

def relationRow4165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4547) * ((1 : F) * rho 4547) = ((1 : F) * rho 4558)

def relationRow4166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4548) * ((1 : F) * rho 4548) = ((1 : F) * rho 4559)

def relationRow4167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560) * ((-1 : F) * rho 4558 + (1 : F) * rho 4559) = ((2 : F) * rho 4557)

def relationRow4168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * ((2 : F) + (1 : F) * rho 4558 + (-1 : F) * rho 4559) = ((1 : F) * rho 4558 + (1 : F) * rho 4559)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 112⟩, ⟨(1 : F), 3113, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560 + (1 : F) * rho 4561) * (relationLc648 rho) = ((1 : F) * rho 4562)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * (relationLc649 rho) = ((1 : F) * rho 4563)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560) * (relationLc650 rho) = ((1 : F) * rho 4564)

def relationRow4172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4563) * ((1 : F) * rho 4564) = ((1 : F) * rho 4565)

def relationRow4173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4566) * ((1 : F) + (1 : F) * rho 4565) = ((1 : F) * rho 4563 + (1 : F) * rho 4564)

def relationRow4174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4567) * ((1 : F) + (-1 : F) * rho 4565) = ((1 : F) * rho 4562 + (-1 : F) * rho 4563 + (-1 : F) * rho 4564)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 112⟩], residual := [((1 : F), 4566)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * (relationLc651 rho) = ((1 : F) * rho 4568)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 112⟩], residual := [((1 : F), 4567)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * (relationLc652 rho) = ((1 : F) * rho 4569)

def relationRow4177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560) * ((1 : F) * rho 4561) = ((1 : F) * rho 4570)

def relationRow4178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560) * ((1 : F) * rho 4560) = ((1 : F) * rho 4571)

def relationRow4179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4561) * ((1 : F) * rho 4561) = ((1 : F) * rho 4572)

def relationRow4180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4573) * ((-1 : F) * rho 4571 + (1 : F) * rho 4572) = ((2 : F) * rho 4570)

def relationRow4181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4574) * ((2 : F) + (1 : F) * rho 4571 + (-1 : F) * rho 4572) = ((1 : F) * rho 4571 + (1 : F) * rho 4572)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 113⟩, ⟨(1 : F), 3113, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4573 + (1 : F) * rho 4574) * (relationLc653 rho) = ((1 : F) * rho 4575)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4574) * (relationLc654 rho) = ((1 : F) * rho 4576)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4573) * (relationLc655 rho) = ((1 : F) * rho 4577)

def relationRow4185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4576) * ((1 : F) * rho 4577) = ((1 : F) * rho 4578)

def relationRow4186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579) * ((1 : F) + (1 : F) * rho 4578) = ((1 : F) * rho 4576 + (1 : F) * rho 4577)

def relationRow4187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4580) * ((1 : F) + (-1 : F) * rho 4578) = ((1 : F) * rho 4575 + (-1 : F) * rho 4576 + (-1 : F) * rho 4577)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 113⟩], residual := [((1 : F), 4579)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * (relationLc656 rho) = ((1 : F) * rho 4581)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 113⟩], residual := [((1 : F), 4580)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * (relationLc657 rho) = ((1 : F) * rho 4582)

def relationRow4190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4573) * ((1 : F) * rho 4574) = ((1 : F) * rho 4583)

def relationRow4191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4573) * ((1 : F) * rho 4573) = ((1 : F) * rho 4584)

def relationRow4192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4574) * ((1 : F) * rho 4574) = ((1 : F) * rho 4585)

def relationRow4193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4586) * ((-1 : F) * rho 4584 + (1 : F) * rho 4585) = ((2 : F) * rho 4583)

def relationRow4194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4587) * ((2 : F) + (1 : F) * rho 4584 + (-1 : F) * rho 4585) = ((1 : F) * rho 4584 + (1 : F) * rho 4585)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 114⟩, ⟨(1 : F), 3113, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4586 + (1 : F) * rho 4587) * (relationLc658 rho) = ((1 : F) * rho 4588)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4587) * (relationLc659 rho) = ((1 : F) * rho 4589)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4586) * (relationLc660 rho) = ((1 : F) * rho 4590)

def relationRow4198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4589) * ((1 : F) * rho 4590) = ((1 : F) * rho 4591)

def relationRow4199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4592) * ((1 : F) + (1 : F) * rho 4591) = ((1 : F) * rho 4589 + (1 : F) * rho 4590)

def relationRow4200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4593) * ((1 : F) + (-1 : F) * rho 4591) = ((1 : F) * rho 4588 + (-1 : F) * rho 4589 + (-1 : F) * rho 4590)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 114⟩], residual := [((1 : F), 4592)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1998) * (relationLc661 rho) = ((1 : F) * rho 4594)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 114⟩], residual := [((1 : F), 4593)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1998) * (relationLc662 rho) = ((1 : F) * rho 4595)

def relationRow4203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4586) * ((1 : F) * rho 4587) = ((1 : F) * rho 4596)

def relationRow4204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4586) * ((1 : F) * rho 4586) = ((1 : F) * rho 4597)

def relationRow4205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4587) * ((1 : F) * rho 4587) = ((1 : F) * rho 4598)

def relationRow4206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599) * ((-1 : F) * rho 4597 + (1 : F) * rho 4598) = ((2 : F) * rho 4596)

def relationRow4207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4600) * ((2 : F) + (1 : F) * rho 4597 + (-1 : F) * rho 4598) = ((1 : F) * rho 4597 + (1 : F) * rho 4598)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 115⟩, ⟨(1 : F), 3113, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599 + (1 : F) * rho 4600) * (relationLc663 rho) = ((1 : F) * rho 4601)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4600) * (relationLc664 rho) = ((1 : F) * rho 4602)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599) * (relationLc665 rho) = ((1 : F) * rho 4603)

def relationRow4211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4602) * ((1 : F) * rho 4603) = ((1 : F) * rho 4604)

def relationRow4212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * ((1 : F) + (1 : F) * rho 4604) = ((1 : F) * rho 4602 + (1 : F) * rho 4603)

def relationRow4213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4606) * ((1 : F) + (-1 : F) * rho 4604) = ((1 : F) * rho 4601 + (-1 : F) * rho 4602 + (-1 : F) * rho 4603)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 115⟩], residual := [((1 : F), 4605)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * (relationLc666 rho) = ((1 : F) * rho 4607)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 115⟩], residual := [((1 : F), 4606)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * (relationLc667 rho) = ((1 : F) * rho 4608)

def relationRow4216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599) * ((1 : F) * rho 4600) = ((1 : F) * rho 4609)

def relationRow4217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599) * ((1 : F) * rho 4599) = ((1 : F) * rho 4610)

def relationRow4218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4600) * ((1 : F) * rho 4600) = ((1 : F) * rho 4611)

def relationRow4219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4612) * ((-1 : F) * rho 4610 + (1 : F) * rho 4611) = ((2 : F) * rho 4609)

def relationRow4220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4613) * ((2 : F) + (1 : F) * rho 4610 + (-1 : F) * rho 4611) = ((1 : F) * rho 4610 + (1 : F) * rho 4611)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 116⟩, ⟨(1 : F), 3113, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4612 + (1 : F) * rho 4613) * (relationLc668 rho) = ((1 : F) * rho 4614)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4613) * (relationLc669 rho) = ((1 : F) * rho 4615)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4612) * (relationLc670 rho) = ((1 : F) * rho 4616)

def relationRow4224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4615) * ((1 : F) * rho 4616) = ((1 : F) * rho 4617)

def relationRow4225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * ((1 : F) + (1 : F) * rho 4617) = ((1 : F) * rho 4615 + (1 : F) * rho 4616)

def relationRow4226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4619) * ((1 : F) + (-1 : F) * rho 4617) = ((1 : F) * rho 4614 + (-1 : F) * rho 4615 + (-1 : F) * rho 4616)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 116⟩], residual := [((1 : F), 4618)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2000) * (relationLc671 rho) = ((1 : F) * rho 4620)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 116⟩], residual := [((1 : F), 4619)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2000) * (relationLc672 rho) = ((1 : F) * rho 4621)

def relationRow4229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4612) * ((1 : F) * rho 4613) = ((1 : F) * rho 4622)

def relationRow4230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4612) * ((1 : F) * rho 4612) = ((1 : F) * rho 4623)

def relationRow4231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4613) * ((1 : F) * rho 4613) = ((1 : F) * rho 4624)

def relationRow4232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * ((-1 : F) * rho 4623 + (1 : F) * rho 4624) = ((2 : F) * rho 4622)

def relationRow4233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4626) * ((2 : F) + (1 : F) * rho 4623 + (-1 : F) * rho 4624) = ((1 : F) * rho 4623 + (1 : F) * rho 4624)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 117⟩, ⟨(1 : F), 3113, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625 + (1 : F) * rho 4626) * (relationLc673 rho) = ((1 : F) * rho 4627)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4626) * (relationLc674 rho) = ((1 : F) * rho 4628)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * (relationLc675 rho) = ((1 : F) * rho 4629)

def relationRow4237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4628) * ((1 : F) * rho 4629) = ((1 : F) * rho 4630)

def relationRow4238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((1 : F) + (1 : F) * rho 4630) = ((1 : F) * rho 4628 + (1 : F) * rho 4629)

def relationRow4239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * ((1 : F) + (-1 : F) * rho 4630) = ((1 : F) * rho 4627 + (-1 : F) * rho 4628 + (-1 : F) * rho 4629)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 117⟩], residual := [((1 : F), 4631)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2001) * (relationLc676 rho) = ((1 : F) * rho 4633)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 117⟩], residual := [((1 : F), 4632)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2001) * (relationLc677 rho) = ((1 : F) * rho 4634)

def relationRow4242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * ((1 : F) * rho 4626) = ((1 : F) * rho 4635)

def relationRow4243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * ((1 : F) * rho 4625) = ((1 : F) * rho 4636)

def relationRow4244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4626) * ((1 : F) * rho 4626) = ((1 : F) * rho 4637)

def relationRow4245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638) * ((-1 : F) * rho 4636 + (1 : F) * rho 4637) = ((2 : F) * rho 4635)

def relationRow4246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4639) * ((2 : F) + (1 : F) * rho 4636 + (-1 : F) * rho 4637) = ((1 : F) * rho 4636 + (1 : F) * rho 4637)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 118⟩, ⟨(1 : F), 3113, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638 + (1 : F) * rho 4639) * (relationLc678 rho) = ((1 : F) * rho 4640)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4639) * (relationLc679 rho) = ((1 : F) * rho 4641)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638) * (relationLc680 rho) = ((1 : F) * rho 4642)

def relationRow4250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4641) * ((1 : F) * rho 4642) = ((1 : F) * rho 4643)

def relationRow4251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644) * ((1 : F) + (1 : F) * rho 4643) = ((1 : F) * rho 4641 + (1 : F) * rho 4642)

def relationRow4252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((1 : F) + (-1 : F) * rho 4643) = ((1 : F) * rho 4640 + (-1 : F) * rho 4641 + (-1 : F) * rho 4642)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 118⟩], residual := [((1 : F), 4644)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2002) * (relationLc681 rho) = ((1 : F) * rho 4646)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 118⟩], residual := [((1 : F), 4645)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2002) * (relationLc682 rho) = ((1 : F) * rho 4647)

def relationRow4255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638) * ((1 : F) * rho 4639) = ((1 : F) * rho 4648)

def relationRow4256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638) * ((1 : F) * rho 4638) = ((1 : F) * rho 4649)

def relationRow4257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4639) * ((1 : F) * rho 4639) = ((1 : F) * rho 4650)

def relationRow4258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4651) * ((-1 : F) * rho 4649 + (1 : F) * rho 4650) = ((2 : F) * rho 4648)

def relationRow4259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4652) * ((2 : F) + (1 : F) * rho 4649 + (-1 : F) * rho 4650) = ((1 : F) * rho 4649 + (1 : F) * rho 4650)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 119⟩, ⟨(1 : F), 3113, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4651 + (1 : F) * rho 4652) * (relationLc683 rho) = ((1 : F) * rho 4653)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4652) * (relationLc684 rho) = ((1 : F) * rho 4654)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4651) * (relationLc685 rho) = ((1 : F) * rho 4655)

def relationRow4263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4654) * ((1 : F) * rho 4655) = ((1 : F) * rho 4656)

def relationRow4264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4657) * ((1 : F) + (1 : F) * rho 4656) = ((1 : F) * rho 4654 + (1 : F) * rho 4655)

def relationRow4265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4658) * ((1 : F) + (-1 : F) * rho 4656) = ((1 : F) * rho 4653 + (-1 : F) * rho 4654 + (-1 : F) * rho 4655)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 119⟩], residual := [((1 : F), 4657)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2003) * (relationLc686 rho) = ((1 : F) * rho 4659)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 119⟩], residual := [((1 : F), 4658)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2003) * (relationLc687 rho) = ((1 : F) * rho 4660)

def relationRow4268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4651) * ((1 : F) * rho 4652) = ((1 : F) * rho 4661)

def relationRow4269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4651) * ((1 : F) * rho 4651) = ((1 : F) * rho 4662)

def relationRow4270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4652) * ((1 : F) * rho 4652) = ((1 : F) * rho 4663)

def relationRow4271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664) * ((-1 : F) * rho 4662 + (1 : F) * rho 4663) = ((2 : F) * rho 4661)

def relationRow4272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4665) * ((2 : F) + (1 : F) * rho 4662 + (-1 : F) * rho 4663) = ((1 : F) * rho 4662 + (1 : F) * rho 4663)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 120⟩, ⟨(1 : F), 3113, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664 + (1 : F) * rho 4665) * (relationLc688 rho) = ((1 : F) * rho 4666)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4665) * (relationLc689 rho) = ((1 : F) * rho 4667)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664) * (relationLc690 rho) = ((1 : F) * rho 4668)

def relationRow4276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4667) * ((1 : F) * rho 4668) = ((1 : F) * rho 4669)

def relationRow4277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670) * ((1 : F) + (1 : F) * rho 4669) = ((1 : F) * rho 4667 + (1 : F) * rho 4668)

def relationRow4278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4671) * ((1 : F) + (-1 : F) * rho 4669) = ((1 : F) * rho 4666 + (-1 : F) * rho 4667 + (-1 : F) * rho 4668)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 120⟩], residual := [((1 : F), 4670)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2004) * (relationLc691 rho) = ((1 : F) * rho 4672)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 120⟩], residual := [((1 : F), 4671)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2004) * (relationLc692 rho) = ((1 : F) * rho 4673)

def relationRow4281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664) * ((1 : F) * rho 4665) = ((1 : F) * rho 4674)

def relationRow4282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664) * ((1 : F) * rho 4664) = ((1 : F) * rho 4675)

def relationRow4283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4665) * ((1 : F) * rho 4665) = ((1 : F) * rho 4676)

def relationRow4284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4677) * ((-1 : F) * rho 4675 + (1 : F) * rho 4676) = ((2 : F) * rho 4674)

def relationRow4285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4678) * ((2 : F) + (1 : F) * rho 4675 + (-1 : F) * rho 4676) = ((1 : F) * rho 4675 + (1 : F) * rho 4676)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 121⟩, ⟨(1 : F), 3113, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4677 + (1 : F) * rho 4678) * (relationLc693 rho) = ((1 : F) * rho 4679)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4678) * (relationLc694 rho) = ((1 : F) * rho 4680)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4677) * (relationLc695 rho) = ((1 : F) * rho 4681)

def relationRow4289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4680) * ((1 : F) * rho 4681) = ((1 : F) * rho 4682)

def relationRow4290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4683) * ((1 : F) + (1 : F) * rho 4682) = ((1 : F) * rho 4680 + (1 : F) * rho 4681)

def relationRow4291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4684) * ((1 : F) + (-1 : F) * rho 4682) = ((1 : F) * rho 4679 + (-1 : F) * rho 4680 + (-1 : F) * rho 4681)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 121⟩], residual := [((1 : F), 4683)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * (relationLc696 rho) = ((1 : F) * rho 4685)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 121⟩], residual := [((1 : F), 4684)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * (relationLc697 rho) = ((1 : F) * rho 4686)

def relationRow4294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4677) * ((1 : F) * rho 4678) = ((1 : F) * rho 4687)

def relationRow4295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4677) * ((1 : F) * rho 4677) = ((1 : F) * rho 4688)

def relationRow4296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4678) * ((1 : F) * rho 4678) = ((1 : F) * rho 4689)

def relationRow4297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4690) * ((-1 : F) * rho 4688 + (1 : F) * rho 4689) = ((2 : F) * rho 4687)

def relationRow4298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4691) * ((2 : F) + (1 : F) * rho 4688 + (-1 : F) * rho 4689) = ((1 : F) * rho 4688 + (1 : F) * rho 4689)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 122⟩, ⟨(1 : F), 3113, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4690 + (1 : F) * rho 4691) * (relationLc698 rho) = ((1 : F) * rho 4692)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4691) * (relationLc699 rho) = ((1 : F) * rho 4693)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4690) * (relationLc700 rho) = ((1 : F) * rho 4694)

def relationRow4302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4693) * ((1 : F) * rho 4694) = ((1 : F) * rho 4695)

def relationRow4303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4696) * ((1 : F) + (1 : F) * rho 4695) = ((1 : F) * rho 4693 + (1 : F) * rho 4694)

def relationRow4304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4697) * ((1 : F) + (-1 : F) * rho 4695) = ((1 : F) * rho 4692 + (-1 : F) * rho 4693 + (-1 : F) * rho 4694)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 122⟩], residual := [((1 : F), 4696)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * (relationLc701 rho) = ((1 : F) * rho 4698)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 122⟩], residual := [((1 : F), 4697)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * (relationLc702 rho) = ((1 : F) * rho 4699)

def relationRow4307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4690) * ((1 : F) * rho 4691) = ((1 : F) * rho 4700)

def relationRow4308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4690) * ((1 : F) * rho 4690) = ((1 : F) * rho 4701)

def relationRow4309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4691) * ((1 : F) * rho 4691) = ((1 : F) * rho 4702)

def relationRow4310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703) * ((-1 : F) * rho 4701 + (1 : F) * rho 4702) = ((2 : F) * rho 4700)

def relationRow4311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4704) * ((2 : F) + (1 : F) * rho 4701 + (-1 : F) * rho 4702) = ((1 : F) * rho 4701 + (1 : F) * rho 4702)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 123⟩, ⟨(1 : F), 3113, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703 + (1 : F) * rho 4704) * (relationLc703 rho) = ((1 : F) * rho 4705)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4704) * (relationLc704 rho) = ((1 : F) * rho 4706)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703) * (relationLc705 rho) = ((1 : F) * rho 4707)

def relationRow4315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4706) * ((1 : F) * rho 4707) = ((1 : F) * rho 4708)

def relationRow4316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * ((1 : F) + (1 : F) * rho 4708) = ((1 : F) * rho 4706 + (1 : F) * rho 4707)

def relationRow4317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4710) * ((1 : F) + (-1 : F) * rho 4708) = ((1 : F) * rho 4705 + (-1 : F) * rho 4706 + (-1 : F) * rho 4707)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 123⟩], residual := [((1 : F), 4709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2007) * (relationLc706 rho) = ((1 : F) * rho 4711)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 123⟩], residual := [((1 : F), 4710)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2007) * (relationLc707 rho) = ((1 : F) * rho 4712)

def relationRow4320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703) * ((1 : F) * rho 4704) = ((1 : F) * rho 4713)

def relationRow4321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4703) * ((1 : F) * rho 4703) = ((1 : F) * rho 4714)

def relationRow4322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4704) * ((1 : F) * rho 4704) = ((1 : F) * rho 4715)

def relationRow4323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * ((-1 : F) * rho 4714 + (1 : F) * rho 4715) = ((2 : F) * rho 4713)

def relationRow4324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4717) * ((2 : F) + (1 : F) * rho 4714 + (-1 : F) * rho 4715) = ((1 : F) * rho 4714 + (1 : F) * rho 4715)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 124⟩, ⟨(1 : F), 3113, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716 + (1 : F) * rho 4717) * (relationLc708 rho) = ((1 : F) * rho 4718)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4717) * (relationLc709 rho) = ((1 : F) * rho 4719)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * (relationLc710 rho) = ((1 : F) * rho 4720)

def relationRow4328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4719) * ((1 : F) * rho 4720) = ((1 : F) * rho 4721)

def relationRow4329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4722) * ((1 : F) + (1 : F) * rho 4721) = ((1 : F) * rho 4719 + (1 : F) * rho 4720)

def relationRow4330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4723) * ((1 : F) + (-1 : F) * rho 4721) = ((1 : F) * rho 4718 + (-1 : F) * rho 4719 + (-1 : F) * rho 4720)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 124⟩], residual := [((1 : F), 4722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2008) * (relationLc711 rho) = ((1 : F) * rho 4724)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 124⟩], residual := [((1 : F), 4723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2008) * (relationLc712 rho) = ((1 : F) * rho 4725)

def relationRow4333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * ((1 : F) * rho 4717) = ((1 : F) * rho 4726)

def relationRow4334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4716) * ((1 : F) * rho 4716) = ((1 : F) * rho 4727)

def relationRow4335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4717) * ((1 : F) * rho 4717) = ((1 : F) * rho 4728)

def relationRow4336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((-1 : F) * rho 4727 + (1 : F) * rho 4728) = ((2 : F) * rho 4726)

def relationRow4337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * ((2 : F) + (1 : F) * rho 4727 + (-1 : F) * rho 4728) = ((1 : F) * rho 4727 + (1 : F) * rho 4728)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 125⟩, ⟨(1 : F), 3113, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729 + (1 : F) * rho 4730) * (relationLc713 rho) = ((1 : F) * rho 4731)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * (relationLc714 rho) = ((1 : F) * rho 4732)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * (relationLc715 rho) = ((1 : F) * rho 4733)

def relationRow4341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4732) * ((1 : F) * rho 4733) = ((1 : F) * rho 4734)

def relationRow4342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735) * ((1 : F) + (1 : F) * rho 4734) = ((1 : F) * rho 4732 + (1 : F) * rho 4733)

def relationRow4343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4736) * ((1 : F) + (-1 : F) * rho 4734) = ((1 : F) * rho 4731 + (-1 : F) * rho 4732 + (-1 : F) * rho 4733)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 125⟩], residual := [((1 : F), 4735)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2009) * (relationLc716 rho) = ((1 : F) * rho 4737)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 125⟩], residual := [((1 : F), 4736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2009) * (relationLc717 rho) = ((1 : F) * rho 4738)

def relationRow4346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((1 : F) * rho 4730) = ((1 : F) * rho 4739)

def relationRow4347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((1 : F) * rho 4729) = ((1 : F) * rho 4740)

def relationRow4348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * ((1 : F) * rho 4730) = ((1 : F) * rho 4741)

def relationRow4349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4742) * ((-1 : F) * rho 4740 + (1 : F) * rho 4741) = ((2 : F) * rho 4739)

def relationRow4350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * ((2 : F) + (1 : F) * rho 4740 + (-1 : F) * rho 4741) = ((1 : F) * rho 4740 + (1 : F) * rho 4741)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 126⟩, ⟨(1 : F), 3113, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4742 + (1 : F) * rho 4743) * (relationLc718 rho) = ((1 : F) * rho 4744)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4743) * (relationLc719 rho) = ((1 : F) * rho 4745)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4742) * (relationLc720 rho) = ((1 : F) * rho 4746)

def relationRow4354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4745) * ((1 : F) * rho 4746) = ((1 : F) * rho 4747)

def relationRow4355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4748) * ((1 : F) + (1 : F) * rho 4747) = ((1 : F) * rho 4745 + (1 : F) * rho 4746)

def relationRow4356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4749) * ((1 : F) + (-1 : F) * rho 4747) = ((1 : F) * rho 4744 + (-1 : F) * rho 4745 + (-1 : F) * rho 4746)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 126⟩], residual := [((1 : F), 4748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * (relationLc721 rho) = ((1 : F) * rho 4750)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 126⟩], residual := [((1 : F), 4749)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * (relationLc722 rho) = ((1 : F) * rho 4751)

def relationRow4359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4742) * ((1 : F) * rho 4743) = ((1 : F) * rho 4752)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
