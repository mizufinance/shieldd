import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs8

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * ((2 : F) + (1 : F) * rho 3550 + (-1 : F) * rho 3551) = ((1 : F) * rho 3550 + (1 : F) * rho 3551)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 34⟩, ⟨(1 : F), 3119, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552 + (1 : F) * rho 3553) * (relationLc258 rho) = ((1 : F) * rho 3554)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * (relationLc259 rho) = ((1 : F) * rho 3555)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * (relationLc260 rho) = ((1 : F) * rho 3556)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3555) * ((1 : F) * rho 3556) = ((1 : F) * rho 3557)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3558) * ((1 : F) + (1 : F) * rho 3557) = ((1 : F) * rho 3555 + (1 : F) * rho 3556)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559) * ((1 : F) + (-1 : F) * rho 3557) = ((1 : F) * rho 3554 + (-1 : F) * rho 3555 + (-1 : F) * rho 3556)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 34⟩], residual := [((1 : F), 3558)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (relationLc261 rho) = ((1 : F) * rho 3560)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 34⟩], residual := [((1 : F), 3559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (relationLc262 rho) = ((1 : F) * rho 3561)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((1 : F) * rho 3553) = ((1 : F) * rho 3562)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((1 : F) * rho 3552) = ((1 : F) * rho 3563)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * ((1 : F) * rho 3553) = ((1 : F) * rho 3564)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((-1 : F) * rho 3563 + (1 : F) * rho 3564) = ((2 : F) * rho 3562)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * ((2 : F) + (1 : F) * rho 3563 + (-1 : F) * rho 3564) = ((1 : F) * rho 3563 + (1 : F) * rho 3564)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 35⟩, ⟨(1 : F), 3119, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565 + (1 : F) * rho 3566) * (relationLc263 rho) = ((1 : F) * rho 3567)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * (relationLc264 rho) = ((1 : F) * rho 3568)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * (relationLc265 rho) = ((1 : F) * rho 3569)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3568) * ((1 : F) * rho 3569) = ((1 : F) * rho 3570)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3571) * ((1 : F) + (1 : F) * rho 3570) = ((1 : F) * rho 3568 + (1 : F) * rho 3569)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((1 : F) + (-1 : F) * rho 3570) = ((1 : F) * rho 3567 + (-1 : F) * rho 3568 + (-1 : F) * rho 3569)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 35⟩], residual := [((1 : F), 3571)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (relationLc266 rho) = ((1 : F) * rho 3573)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 35⟩], residual := [((1 : F), 3572)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (relationLc267 rho) = ((1 : F) * rho 3574)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((1 : F) * rho 3566) = ((1 : F) * rho 3575)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((1 : F) * rho 3565) = ((1 : F) * rho 3576)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * ((1 : F) * rho 3566) = ((1 : F) * rho 3577)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((-1 : F) * rho 3576 + (1 : F) * rho 3577) = ((2 : F) * rho 3575)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * ((2 : F) + (1 : F) * rho 3576 + (-1 : F) * rho 3577) = ((1 : F) * rho 3576 + (1 : F) * rho 3577)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 36⟩, ⟨(1 : F), 3119, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578 + (1 : F) * rho 3579) * (relationLc268 rho) = ((1 : F) * rho 3580)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * (relationLc269 rho) = ((1 : F) * rho 3581)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * (relationLc270 rho) = ((1 : F) * rho 3582)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3581) * ((1 : F) * rho 3582) = ((1 : F) * rho 3583)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3584) * ((1 : F) + (1 : F) * rho 3583) = ((1 : F) * rho 3581 + (1 : F) * rho 3582)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585) * ((1 : F) + (-1 : F) * rho 3583) = ((1 : F) * rho 3580 + (-1 : F) * rho 3581 + (-1 : F) * rho 3582)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 36⟩], residual := [((1 : F), 3584)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (relationLc271 rho) = ((1 : F) * rho 3586)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 36⟩], residual := [((1 : F), 3585)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (relationLc272 rho) = ((1 : F) * rho 3587)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((1 : F) * rho 3579) = ((1 : F) * rho 3588)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((1 : F) * rho 3578) = ((1 : F) * rho 3589)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * ((1 : F) * rho 3579) = ((1 : F) * rho 3590)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((-1 : F) * rho 3589 + (1 : F) * rho 3590) = ((2 : F) * rho 3588)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * ((2 : F) + (1 : F) * rho 3589 + (-1 : F) * rho 3590) = ((1 : F) * rho 3589 + (1 : F) * rho 3590)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 37⟩, ⟨(1 : F), 3119, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591 + (1 : F) * rho 3592) * (relationLc273 rho) = ((1 : F) * rho 3593)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * (relationLc274 rho) = ((1 : F) * rho 3594)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * (relationLc275 rho) = ((1 : F) * rho 3595)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3594) * ((1 : F) * rho 3595) = ((1 : F) * rho 3596)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3597) * ((1 : F) + (1 : F) * rho 3596) = ((1 : F) * rho 3594 + (1 : F) * rho 3595)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * ((1 : F) + (-1 : F) * rho 3596) = ((1 : F) * rho 3593 + (-1 : F) * rho 3594 + (-1 : F) * rho 3595)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 37⟩], residual := [((1 : F), 3597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (relationLc276 rho) = ((1 : F) * rho 3599)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 37⟩], residual := [((1 : F), 3598)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (relationLc277 rho) = ((1 : F) * rho 3600)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((1 : F) * rho 3592) = ((1 : F) * rho 3601)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((1 : F) * rho 3591) = ((1 : F) * rho 3602)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * ((1 : F) * rho 3592) = ((1 : F) * rho 3603)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((-1 : F) * rho 3602 + (1 : F) * rho 3603) = ((2 : F) * rho 3601)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * ((2 : F) + (1 : F) * rho 3602 + (-1 : F) * rho 3603) = ((1 : F) * rho 3602 + (1 : F) * rho 3603)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 38⟩, ⟨(1 : F), 3119, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604 + (1 : F) * rho 3605) * (relationLc278 rho) = ((1 : F) * rho 3606)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * (relationLc279 rho) = ((1 : F) * rho 3607)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * (relationLc280 rho) = ((1 : F) * rho 3608)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3607) * ((1 : F) * rho 3608) = ((1 : F) * rho 3609)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3610) * ((1 : F) + (1 : F) * rho 3609) = ((1 : F) * rho 3607 + (1 : F) * rho 3608)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) + (-1 : F) * rho 3609) = ((1 : F) * rho 3606 + (-1 : F) * rho 3607 + (-1 : F) * rho 3608)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 38⟩], residual := [((1 : F), 3610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (relationLc281 rho) = ((1 : F) * rho 3612)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 38⟩], residual := [((1 : F), 3611)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (relationLc282 rho) = ((1 : F) * rho 3613)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((1 : F) * rho 3605) = ((1 : F) * rho 3614)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((1 : F) * rho 3604) = ((1 : F) * rho 3615)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * ((1 : F) * rho 3605) = ((1 : F) * rho 3616)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((-1 : F) * rho 3615 + (1 : F) * rho 3616) = ((2 : F) * rho 3614)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * ((2 : F) + (1 : F) * rho 3615 + (-1 : F) * rho 3616) = ((1 : F) * rho 3615 + (1 : F) * rho 3616)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 39⟩, ⟨(1 : F), 3119, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617 + (1 : F) * rho 3618) * (relationLc283 rho) = ((1 : F) * rho 3619)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * (relationLc284 rho) = ((1 : F) * rho 3620)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * (relationLc285 rho) = ((1 : F) * rho 3621)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3620) * ((1 : F) * rho 3621) = ((1 : F) * rho 3622)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3623) * ((1 : F) + (1 : F) * rho 3622) = ((1 : F) * rho 3620 + (1 : F) * rho 3621)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624) * ((1 : F) + (-1 : F) * rho 3622) = ((1 : F) * rho 3619 + (-1 : F) * rho 3620 + (-1 : F) * rho 3621)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 39⟩], residual := [((1 : F), 3623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (relationLc286 rho) = ((1 : F) * rho 3625)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 39⟩], residual := [((1 : F), 3624)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (relationLc287 rho) = ((1 : F) * rho 3626)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) * rho 3618) = ((1 : F) * rho 3627)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) * rho 3617) = ((1 : F) * rho 3628)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * ((1 : F) * rho 3618) = ((1 : F) * rho 3629)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((-1 : F) * rho 3628 + (1 : F) * rho 3629) = ((2 : F) * rho 3627)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * ((2 : F) + (1 : F) * rho 3628 + (-1 : F) * rho 3629) = ((1 : F) * rho 3628 + (1 : F) * rho 3629)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 40⟩, ⟨(1 : F), 3119, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630 + (1 : F) * rho 3631) * (relationLc288 rho) = ((1 : F) * rho 3632)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * (relationLc289 rho) = ((1 : F) * rho 3633)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * (relationLc290 rho) = ((1 : F) * rho 3634)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3633) * ((1 : F) * rho 3634) = ((1 : F) * rho 3635)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3636) * ((1 : F) + (1 : F) * rho 3635) = ((1 : F) * rho 3633 + (1 : F) * rho 3634)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637) * ((1 : F) + (-1 : F) * rho 3635) = ((1 : F) * rho 3632 + (-1 : F) * rho 3633 + (-1 : F) * rho 3634)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 40⟩], residual := [((1 : F), 3636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (relationLc291 rho) = ((1 : F) * rho 3638)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 40⟩], residual := [((1 : F), 3637)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (relationLc292 rho) = ((1 : F) * rho 3639)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((1 : F) * rho 3631) = ((1 : F) * rho 3640)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((1 : F) * rho 3630) = ((1 : F) * rho 3641)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * ((1 : F) * rho 3631) = ((1 : F) * rho 3642)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((-1 : F) * rho 3641 + (1 : F) * rho 3642) = ((2 : F) * rho 3640)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((2 : F) + (1 : F) * rho 3641 + (-1 : F) * rho 3642) = ((1 : F) * rho 3641 + (1 : F) * rho 3642)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 41⟩, ⟨(1 : F), 3119, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643 + (1 : F) * rho 3644) * (relationLc293 rho) = ((1 : F) * rho 3645)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * (relationLc294 rho) = ((1 : F) * rho 3646)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * (relationLc295 rho) = ((1 : F) * rho 3647)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3646) * ((1 : F) * rho 3647) = ((1 : F) * rho 3648)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3649) * ((1 : F) + (1 : F) * rho 3648) = ((1 : F) * rho 3646 + (1 : F) * rho 3647)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650) * ((1 : F) + (-1 : F) * rho 3648) = ((1 : F) * rho 3645 + (-1 : F) * rho 3646 + (-1 : F) * rho 3647)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 41⟩], residual := [((1 : F), 3649)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (relationLc296 rho) = ((1 : F) * rho 3651)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 41⟩], residual := [((1 : F), 3650)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (relationLc297 rho) = ((1 : F) * rho 3652)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((1 : F) * rho 3644) = ((1 : F) * rho 3653)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((1 : F) * rho 3643) = ((1 : F) * rho 3654)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((1 : F) * rho 3644) = ((1 : F) * rho 3655)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((-1 : F) * rho 3654 + (1 : F) * rho 3655) = ((2 : F) * rho 3653)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * ((2 : F) + (1 : F) * rho 3654 + (-1 : F) * rho 3655) = ((1 : F) * rho 3654 + (1 : F) * rho 3655)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 42⟩, ⟨(1 : F), 3119, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656 + (1 : F) * rho 3657) * (relationLc298 rho) = ((1 : F) * rho 3658)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * (relationLc299 rho) = ((1 : F) * rho 3659)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * (relationLc300 rho) = ((1 : F) * rho 3660)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3659) * ((1 : F) * rho 3660) = ((1 : F) * rho 3661)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3662) * ((1 : F) + (1 : F) * rho 3661) = ((1 : F) * rho 3659 + (1 : F) * rho 3660)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663) * ((1 : F) + (-1 : F) * rho 3661) = ((1 : F) * rho 3658 + (-1 : F) * rho 3659 + (-1 : F) * rho 3660)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 42⟩], residual := [((1 : F), 3662)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (relationLc301 rho) = ((1 : F) * rho 3664)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 42⟩], residual := [((1 : F), 3663)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (relationLc302 rho) = ((1 : F) * rho 3665)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) * rho 3657) = ((1 : F) * rho 3666)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) * rho 3656) = ((1 : F) * rho 3667)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * ((1 : F) * rho 3657) = ((1 : F) * rho 3668)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((-1 : F) * rho 3667 + (1 : F) * rho 3668) = ((2 : F) * rho 3666)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * ((2 : F) + (1 : F) * rho 3667 + (-1 : F) * rho 3668) = ((1 : F) * rho 3667 + (1 : F) * rho 3668)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 43⟩, ⟨(1 : F), 3119, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669 + (1 : F) * rho 3670) * (relationLc303 rho) = ((1 : F) * rho 3671)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * (relationLc304 rho) = ((1 : F) * rho 3672)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * (relationLc305 rho) = ((1 : F) * rho 3673)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3672) * ((1 : F) * rho 3673) = ((1 : F) * rho 3674)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3675) * ((1 : F) + (1 : F) * rho 3674) = ((1 : F) * rho 3672 + (1 : F) * rho 3673)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676) * ((1 : F) + (-1 : F) * rho 3674) = ((1 : F) * rho 3671 + (-1 : F) * rho 3672 + (-1 : F) * rho 3673)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 43⟩], residual := [((1 : F), 3675)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (relationLc306 rho) = ((1 : F) * rho 3677)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 43⟩], residual := [((1 : F), 3676)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (relationLc307 rho) = ((1 : F) * rho 3678)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((1 : F) * rho 3670) = ((1 : F) * rho 3679)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((1 : F) * rho 3669) = ((1 : F) * rho 3680)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * ((1 : F) * rho 3670) = ((1 : F) * rho 3681)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((-1 : F) * rho 3680 + (1 : F) * rho 3681) = ((2 : F) * rho 3679)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * ((2 : F) + (1 : F) * rho 3680 + (-1 : F) * rho 3681) = ((1 : F) * rho 3680 + (1 : F) * rho 3681)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 44⟩, ⟨(1 : F), 3119, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682 + (1 : F) * rho 3683) * (relationLc308 rho) = ((1 : F) * rho 3684)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * (relationLc309 rho) = ((1 : F) * rho 3685)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * (relationLc310 rho) = ((1 : F) * rho 3686)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3685) * ((1 : F) * rho 3686) = ((1 : F) * rho 3687)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3688) * ((1 : F) + (1 : F) * rho 3687) = ((1 : F) * rho 3685 + (1 : F) * rho 3686)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689) * ((1 : F) + (-1 : F) * rho 3687) = ((1 : F) * rho 3684 + (-1 : F) * rho 3685 + (-1 : F) * rho 3686)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 44⟩], residual := [((1 : F), 3688)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (relationLc311 rho) = ((1 : F) * rho 3690)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 44⟩], residual := [((1 : F), 3689)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (relationLc312 rho) = ((1 : F) * rho 3691)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((1 : F) * rho 3683) = ((1 : F) * rho 3692)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((1 : F) * rho 3682) = ((1 : F) * rho 3693)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * ((1 : F) * rho 3683) = ((1 : F) * rho 3694)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((-1 : F) * rho 3693 + (1 : F) * rho 3694) = ((2 : F) * rho 3692)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * ((2 : F) + (1 : F) * rho 3693 + (-1 : F) * rho 3694) = ((1 : F) * rho 3693 + (1 : F) * rho 3694)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 45⟩, ⟨(1 : F), 3119, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695 + (1 : F) * rho 3696) * (relationLc313 rho) = ((1 : F) * rho 3697)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * (relationLc314 rho) = ((1 : F) * rho 3698)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * (relationLc315 rho) = ((1 : F) * rho 3699)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3698) * ((1 : F) * rho 3699) = ((1 : F) * rho 3700)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3701) * ((1 : F) + (1 : F) * rho 3700) = ((1 : F) * rho 3698 + (1 : F) * rho 3699)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702) * ((1 : F) + (-1 : F) * rho 3700) = ((1 : F) * rho 3697 + (-1 : F) * rho 3698 + (-1 : F) * rho 3699)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 45⟩], residual := [((1 : F), 3701)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (relationLc316 rho) = ((1 : F) * rho 3703)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 45⟩], residual := [((1 : F), 3702)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (relationLc317 rho) = ((1 : F) * rho 3704)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((1 : F) * rho 3696) = ((1 : F) * rho 3705)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((1 : F) * rho 3695) = ((1 : F) * rho 3706)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * ((1 : F) * rho 3696) = ((1 : F) * rho 3707)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((-1 : F) * rho 3706 + (1 : F) * rho 3707) = ((2 : F) * rho 3705)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * ((2 : F) + (1 : F) * rho 3706 + (-1 : F) * rho 3707) = ((1 : F) * rho 3706 + (1 : F) * rho 3707)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 46⟩, ⟨(1 : F), 3119, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708 + (1 : F) * rho 3709) * (relationLc318 rho) = ((1 : F) * rho 3710)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * (relationLc319 rho) = ((1 : F) * rho 3711)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * (relationLc320 rho) = ((1 : F) * rho 3712)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3711) * ((1 : F) * rho 3712) = ((1 : F) * rho 3713)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3714) * ((1 : F) + (1 : F) * rho 3713) = ((1 : F) * rho 3711 + (1 : F) * rho 3712)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715) * ((1 : F) + (-1 : F) * rho 3713) = ((1 : F) * rho 3710 + (-1 : F) * rho 3711 + (-1 : F) * rho 3712)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 46⟩], residual := [((1 : F), 3714)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (relationLc321 rho) = ((1 : F) * rho 3716)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 46⟩], residual := [((1 : F), 3715)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (relationLc322 rho) = ((1 : F) * rho 3717)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((1 : F) * rho 3709) = ((1 : F) * rho 3718)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((1 : F) * rho 3708) = ((1 : F) * rho 3719)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * ((1 : F) * rho 3709) = ((1 : F) * rho 3720)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((-1 : F) * rho 3719 + (1 : F) * rho 3720) = ((2 : F) * rho 3718)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * ((2 : F) + (1 : F) * rho 3719 + (-1 : F) * rho 3720) = ((1 : F) * rho 3719 + (1 : F) * rho 3720)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 47⟩, ⟨(1 : F), 3119, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721 + (1 : F) * rho 3722) * (relationLc323 rho) = ((1 : F) * rho 3723)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * (relationLc324 rho) = ((1 : F) * rho 3724)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * (relationLc325 rho) = ((1 : F) * rho 3725)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3724) * ((1 : F) * rho 3725) = ((1 : F) * rho 3726)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3727) * ((1 : F) + (1 : F) * rho 3726) = ((1 : F) * rho 3724 + (1 : F) * rho 3725)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728) * ((1 : F) + (-1 : F) * rho 3726) = ((1 : F) * rho 3723 + (-1 : F) * rho 3724 + (-1 : F) * rho 3725)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 47⟩], residual := [((1 : F), 3727)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (relationLc326 rho) = ((1 : F) * rho 3729)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 47⟩], residual := [((1 : F), 3728)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (relationLc327 rho) = ((1 : F) * rho 3730)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((1 : F) * rho 3722) = ((1 : F) * rho 3731)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((1 : F) * rho 3721) = ((1 : F) * rho 3732)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * ((1 : F) * rho 3722) = ((1 : F) * rho 3733)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((-1 : F) * rho 3732 + (1 : F) * rho 3733) = ((2 : F) * rho 3731)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * ((2 : F) + (1 : F) * rho 3732 + (-1 : F) * rho 3733) = ((1 : F) * rho 3732 + (1 : F) * rho 3733)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 48⟩, ⟨(1 : F), 3119, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734 + (1 : F) * rho 3735) * (relationLc328 rho) = ((1 : F) * rho 3736)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * (relationLc329 rho) = ((1 : F) * rho 3737)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * (relationLc330 rho) = ((1 : F) * rho 3738)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3737) * ((1 : F) * rho 3738) = ((1 : F) * rho 3739)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3740) * ((1 : F) + (1 : F) * rho 3739) = ((1 : F) * rho 3737 + (1 : F) * rho 3738)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741) * ((1 : F) + (-1 : F) * rho 3739) = ((1 : F) * rho 3736 + (-1 : F) * rho 3737 + (-1 : F) * rho 3738)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 48⟩], residual := [((1 : F), 3740)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (relationLc331 rho) = ((1 : F) * rho 3742)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 48⟩], residual := [((1 : F), 3741)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (relationLc332 rho) = ((1 : F) * rho 3743)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((1 : F) * rho 3735) = ((1 : F) * rho 3744)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((1 : F) * rho 3734) = ((1 : F) * rho 3745)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * ((1 : F) * rho 3735) = ((1 : F) * rho 3746)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((-1 : F) * rho 3745 + (1 : F) * rho 3746) = ((2 : F) * rho 3744)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * ((2 : F) + (1 : F) * rho 3745 + (-1 : F) * rho 3746) = ((1 : F) * rho 3745 + (1 : F) * rho 3746)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 49⟩, ⟨(1 : F), 3119, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747 + (1 : F) * rho 3748) * (relationLc333 rho) = ((1 : F) * rho 3749)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * (relationLc334 rho) = ((1 : F) * rho 3750)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * (relationLc335 rho) = ((1 : F) * rho 3751)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3750) * ((1 : F) * rho 3751) = ((1 : F) * rho 3752)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3753) * ((1 : F) + (1 : F) * rho 3752) = ((1 : F) * rho 3750 + (1 : F) * rho 3751)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754) * ((1 : F) + (-1 : F) * rho 3752) = ((1 : F) * rho 3749 + (-1 : F) * rho 3750 + (-1 : F) * rho 3751)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 49⟩], residual := [((1 : F), 3753)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (relationLc336 rho) = ((1 : F) * rho 3755)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 49⟩], residual := [((1 : F), 3754)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (relationLc337 rho) = ((1 : F) * rho 3756)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((1 : F) * rho 3748) = ((1 : F) * rho 3757)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((1 : F) * rho 3747) = ((1 : F) * rho 3758)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * ((1 : F) * rho 3748) = ((1 : F) * rho 3759)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((-1 : F) * rho 3758 + (1 : F) * rho 3759) = ((2 : F) * rho 3757)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * ((2 : F) + (1 : F) * rho 3758 + (-1 : F) * rho 3759) = ((1 : F) * rho 3758 + (1 : F) * rho 3759)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 50⟩, ⟨(1 : F), 3119, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760 + (1 : F) * rho 3761) * (relationLc338 rho) = ((1 : F) * rho 3762)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * (relationLc339 rho) = ((1 : F) * rho 3763)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * (relationLc340 rho) = ((1 : F) * rho 3764)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3763) * ((1 : F) * rho 3764) = ((1 : F) * rho 3765)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3766) * ((1 : F) + (1 : F) * rho 3765) = ((1 : F) * rho 3763 + (1 : F) * rho 3764)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767) * ((1 : F) + (-1 : F) * rho 3765) = ((1 : F) * rho 3762 + (-1 : F) * rho 3763 + (-1 : F) * rho 3764)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 50⟩], residual := [((1 : F), 3766)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (relationLc341 rho) = ((1 : F) * rho 3768)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 50⟩], residual := [((1 : F), 3767)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (relationLc342 rho) = ((1 : F) * rho 3769)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((1 : F) * rho 3761) = ((1 : F) * rho 3770)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((1 : F) * rho 3760) = ((1 : F) * rho 3771)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * ((1 : F) * rho 3761) = ((1 : F) * rho 3772)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((-1 : F) * rho 3771 + (1 : F) * rho 3772) = ((2 : F) * rho 3770)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * ((2 : F) + (1 : F) * rho 3771 + (-1 : F) * rho 3772) = ((1 : F) * rho 3771 + (1 : F) * rho 3772)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 51⟩, ⟨(1 : F), 3119, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773 + (1 : F) * rho 3774) * (relationLc343 rho) = ((1 : F) * rho 3775)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * (relationLc344 rho) = ((1 : F) * rho 3776)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * (relationLc345 rho) = ((1 : F) * rho 3777)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3776) * ((1 : F) * rho 3777) = ((1 : F) * rho 3778)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3779) * ((1 : F) + (1 : F) * rho 3778) = ((1 : F) * rho 3776 + (1 : F) * rho 3777)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780) * ((1 : F) + (-1 : F) * rho 3778) = ((1 : F) * rho 3775 + (-1 : F) * rho 3776 + (-1 : F) * rho 3777)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 51⟩], residual := [((1 : F), 3779)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (relationLc346 rho) = ((1 : F) * rho 3781)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 51⟩], residual := [((1 : F), 3780)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (relationLc347 rho) = ((1 : F) * rho 3782)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((1 : F) * rho 3774) = ((1 : F) * rho 3783)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((1 : F) * rho 3773) = ((1 : F) * rho 3784)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * ((1 : F) * rho 3774) = ((1 : F) * rho 3785)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((-1 : F) * rho 3784 + (1 : F) * rho 3785) = ((2 : F) * rho 3783)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * ((2 : F) + (1 : F) * rho 3784 + (-1 : F) * rho 3785) = ((1 : F) * rho 3784 + (1 : F) * rho 3785)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 52⟩, ⟨(1 : F), 3119, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786 + (1 : F) * rho 3787) * (relationLc348 rho) = ((1 : F) * rho 3788)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * (relationLc349 rho) = ((1 : F) * rho 3789)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * (relationLc350 rho) = ((1 : F) * rho 3790)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3789) * ((1 : F) * rho 3790) = ((1 : F) * rho 3791)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3792) * ((1 : F) + (1 : F) * rho 3791) = ((1 : F) * rho 3789 + (1 : F) * rho 3790)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793) * ((1 : F) + (-1 : F) * rho 3791) = ((1 : F) * rho 3788 + (-1 : F) * rho 3789 + (-1 : F) * rho 3790)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 52⟩], residual := [((1 : F), 3792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (relationLc351 rho) = ((1 : F) * rho 3794)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 52⟩], residual := [((1 : F), 3793)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (relationLc352 rho) = ((1 : F) * rho 3795)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((1 : F) * rho 3787) = ((1 : F) * rho 3796)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((1 : F) * rho 3786) = ((1 : F) * rho 3797)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * ((1 : F) * rho 3787) = ((1 : F) * rho 3798)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((-1 : F) * rho 3797 + (1 : F) * rho 3798) = ((2 : F) * rho 3796)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((2 : F) + (1 : F) * rho 3797 + (-1 : F) * rho 3798) = ((1 : F) * rho 3797 + (1 : F) * rho 3798)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 53⟩, ⟨(1 : F), 3119, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799 + (1 : F) * rho 3800) * (relationLc353 rho) = ((1 : F) * rho 3801)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * (relationLc354 rho) = ((1 : F) * rho 3802)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * (relationLc355 rho) = ((1 : F) * rho 3803)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3802) * ((1 : F) * rho 3803) = ((1 : F) * rho 3804)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3805) * ((1 : F) + (1 : F) * rho 3804) = ((1 : F) * rho 3802 + (1 : F) * rho 3803)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806) * ((1 : F) + (-1 : F) * rho 3804) = ((1 : F) * rho 3801 + (-1 : F) * rho 3802 + (-1 : F) * rho 3803)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 53⟩], residual := [((1 : F), 3805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (relationLc356 rho) = ((1 : F) * rho 3807)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 53⟩], residual := [((1 : F), 3806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (relationLc357 rho) = ((1 : F) * rho 3808)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) * rho 3800) = ((1 : F) * rho 3809)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) * rho 3799) = ((1 : F) * rho 3810)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((1 : F) * rho 3800) = ((1 : F) * rho 3811)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((-1 : F) * rho 3810 + (1 : F) * rho 3811) = ((2 : F) * rho 3809)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * ((2 : F) + (1 : F) * rho 3810 + (-1 : F) * rho 3811) = ((1 : F) * rho 3810 + (1 : F) * rho 3811)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 54⟩, ⟨(1 : F), 3119, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812 + (1 : F) * rho 3813) * (relationLc358 rho) = ((1 : F) * rho 3814)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * (relationLc359 rho) = ((1 : F) * rho 3815)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * (relationLc360 rho) = ((1 : F) * rho 3816)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3815) * ((1 : F) * rho 3816) = ((1 : F) * rho 3817)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3818) * ((1 : F) + (1 : F) * rho 3817) = ((1 : F) * rho 3815 + (1 : F) * rho 3816)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819) * ((1 : F) + (-1 : F) * rho 3817) = ((1 : F) * rho 3814 + (-1 : F) * rho 3815 + (-1 : F) * rho 3816)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 54⟩], residual := [((1 : F), 3818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (relationLc361 rho) = ((1 : F) * rho 3820)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 54⟩], residual := [((1 : F), 3819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (relationLc362 rho) = ((1 : F) * rho 3821)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((1 : F) * rho 3813) = ((1 : F) * rho 3822)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((1 : F) * rho 3812) = ((1 : F) * rho 3823)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * ((1 : F) * rho 3813) = ((1 : F) * rho 3824)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((-1 : F) * rho 3823 + (1 : F) * rho 3824) = ((2 : F) * rho 3822)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((2 : F) + (1 : F) * rho 3823 + (-1 : F) * rho 3824) = ((1 : F) * rho 3823 + (1 : F) * rho 3824)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 55⟩, ⟨(1 : F), 3119, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825 + (1 : F) * rho 3826) * (relationLc363 rho) = ((1 : F) * rho 3827)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * (relationLc364 rho) = ((1 : F) * rho 3828)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * (relationLc365 rho) = ((1 : F) * rho 3829)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3828) * ((1 : F) * rho 3829) = ((1 : F) * rho 3830)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3831) * ((1 : F) + (1 : F) * rho 3830) = ((1 : F) * rho 3828 + (1 : F) * rho 3829)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((1 : F) + (-1 : F) * rho 3830) = ((1 : F) * rho 3827 + (-1 : F) * rho 3828 + (-1 : F) * rho 3829)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 55⟩], residual := [((1 : F), 3831)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (relationLc366 rho) = ((1 : F) * rho 3833)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 55⟩], residual := [((1 : F), 3832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (relationLc367 rho) = ((1 : F) * rho 3834)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((1 : F) * rho 3826) = ((1 : F) * rho 3835)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((1 : F) * rho 3825) = ((1 : F) * rho 3836)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((1 : F) * rho 3826) = ((1 : F) * rho 3837)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((-1 : F) * rho 3836 + (1 : F) * rho 3837) = ((2 : F) * rho 3835)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * ((2 : F) + (1 : F) * rho 3836 + (-1 : F) * rho 3837) = ((1 : F) * rho 3836 + (1 : F) * rho 3837)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 56⟩, ⟨(1 : F), 3119, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838 + (1 : F) * rho 3839) * (relationLc368 rho) = ((1 : F) * rho 3840)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * (relationLc369 rho) = ((1 : F) * rho 3841)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * (relationLc370 rho) = ((1 : F) * rho 3842)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3841) * ((1 : F) * rho 3842) = ((1 : F) * rho 3843)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3844) * ((1 : F) + (1 : F) * rho 3843) = ((1 : F) * rho 3841 + (1 : F) * rho 3842)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845) * ((1 : F) + (-1 : F) * rho 3843) = ((1 : F) * rho 3840 + (-1 : F) * rho 3841 + (-1 : F) * rho 3842)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 56⟩], residual := [((1 : F), 3844)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (relationLc371 rho) = ((1 : F) * rho 3846)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 56⟩], residual := [((1 : F), 3845)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (relationLc372 rho) = ((1 : F) * rho 3847)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((1 : F) * rho 3839) = ((1 : F) * rho 3848)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((1 : F) * rho 3838) = ((1 : F) * rho 3849)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * ((1 : F) * rho 3839) = ((1 : F) * rho 3850)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((-1 : F) * rho 3849 + (1 : F) * rho 3850) = ((2 : F) * rho 3848)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * ((2 : F) + (1 : F) * rho 3849 + (-1 : F) * rho 3850) = ((1 : F) * rho 3849 + (1 : F) * rho 3850)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 57⟩, ⟨(1 : F), 3119, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851 + (1 : F) * rho 3852) * (relationLc373 rho) = ((1 : F) * rho 3853)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * (relationLc374 rho) = ((1 : F) * rho 3854)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * (relationLc375 rho) = ((1 : F) * rho 3855)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3854) * ((1 : F) * rho 3855) = ((1 : F) * rho 3856)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3857) * ((1 : F) + (1 : F) * rho 3856) = ((1 : F) * rho 3854 + (1 : F) * rho 3855)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858) * ((1 : F) + (-1 : F) * rho 3856) = ((1 : F) * rho 3853 + (-1 : F) * rho 3854 + (-1 : F) * rho 3855)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 57⟩], residual := [((1 : F), 3857)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (relationLc376 rho) = ((1 : F) * rho 3859)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 57⟩], residual := [((1 : F), 3858)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (relationLc377 rho) = ((1 : F) * rho 3860)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((1 : F) * rho 3852) = ((1 : F) * rho 3861)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((1 : F) * rho 3851) = ((1 : F) * rho 3862)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * ((1 : F) * rho 3852) = ((1 : F) * rho 3863)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((-1 : F) * rho 3862 + (1 : F) * rho 3863) = ((2 : F) * rho 3861)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((2 : F) + (1 : F) * rho 3862 + (-1 : F) * rho 3863) = ((1 : F) * rho 3862 + (1 : F) * rho 3863)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 58⟩, ⟨(1 : F), 3119, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864 + (1 : F) * rho 3865) * (relationLc378 rho) = ((1 : F) * rho 3866)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * (relationLc379 rho) = ((1 : F) * rho 3867)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * (relationLc380 rho) = ((1 : F) * rho 3868)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3867) * ((1 : F) * rho 3868) = ((1 : F) * rho 3869)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3870) * ((1 : F) + (1 : F) * rho 3869) = ((1 : F) * rho 3867 + (1 : F) * rho 3868)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((1 : F) + (-1 : F) * rho 3869) = ((1 : F) * rho 3866 + (-1 : F) * rho 3867 + (-1 : F) * rho 3868)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 58⟩], residual := [((1 : F), 3870)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (relationLc381 rho) = ((1 : F) * rho 3872)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 58⟩], residual := [((1 : F), 3871)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (relationLc382 rho) = ((1 : F) * rho 3873)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((1 : F) * rho 3865) = ((1 : F) * rho 3874)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((1 : F) * rho 3864) = ((1 : F) * rho 3875)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((1 : F) * rho 3865) = ((1 : F) * rho 3876)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((-1 : F) * rho 3875 + (1 : F) * rho 3876) = ((2 : F) * rho 3874)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * ((2 : F) + (1 : F) * rho 3875 + (-1 : F) * rho 3876) = ((1 : F) * rho 3875 + (1 : F) * rho 3876)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 59⟩, ⟨(1 : F), 3119, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877 + (1 : F) * rho 3878) * (relationLc383 rho) = ((1 : F) * rho 3879)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * (relationLc384 rho) = ((1 : F) * rho 3880)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * (relationLc385 rho) = ((1 : F) * rho 3881)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3880) * ((1 : F) * rho 3881) = ((1 : F) * rho 3882)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3883) * ((1 : F) + (1 : F) * rho 3882) = ((1 : F) * rho 3880 + (1 : F) * rho 3881)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884) * ((1 : F) + (-1 : F) * rho 3882) = ((1 : F) * rho 3879 + (-1 : F) * rho 3880 + (-1 : F) * rho 3881)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 59⟩], residual := [((1 : F), 3883)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (relationLc386 rho) = ((1 : F) * rho 3885)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 59⟩], residual := [((1 : F), 3884)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (relationLc387 rho) = ((1 : F) * rho 3886)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((1 : F) * rho 3878) = ((1 : F) * rho 3887)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((1 : F) * rho 3877) = ((1 : F) * rho 3888)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * ((1 : F) * rho 3878) = ((1 : F) * rho 3889)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((-1 : F) * rho 3888 + (1 : F) * rho 3889) = ((2 : F) * rho 3887)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * ((2 : F) + (1 : F) * rho 3888 + (-1 : F) * rho 3889) = ((1 : F) * rho 3888 + (1 : F) * rho 3889)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 60⟩, ⟨(1 : F), 3119, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890 + (1 : F) * rho 3891) * (relationLc388 rho) = ((1 : F) * rho 3892)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * (relationLc389 rho) = ((1 : F) * rho 3893)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * (relationLc390 rho) = ((1 : F) * rho 3894)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3893) * ((1 : F) * rho 3894) = ((1 : F) * rho 3895)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3896) * ((1 : F) + (1 : F) * rho 3895) = ((1 : F) * rho 3893 + (1 : F) * rho 3894)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((1 : F) + (-1 : F) * rho 3895) = ((1 : F) * rho 3892 + (-1 : F) * rho 3893 + (-1 : F) * rho 3894)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 60⟩], residual := [((1 : F), 3896)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (relationLc391 rho) = ((1 : F) * rho 3898)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 60⟩], residual := [((1 : F), 3897)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (relationLc392 rho) = ((1 : F) * rho 3899)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((1 : F) * rho 3891) = ((1 : F) * rho 3900)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((1 : F) * rho 3890) = ((1 : F) * rho 3901)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * ((1 : F) * rho 3891) = ((1 : F) * rho 3902)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((-1 : F) * rho 3901 + (1 : F) * rho 3902) = ((2 : F) * rho 3900)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * ((2 : F) + (1 : F) * rho 3901 + (-1 : F) * rho 3902) = ((1 : F) * rho 3901 + (1 : F) * rho 3902)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 61⟩, ⟨(1 : F), 3119, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903 + (1 : F) * rho 3904) * (relationLc393 rho) = ((1 : F) * rho 3905)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * (relationLc394 rho) = ((1 : F) * rho 3906)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * (relationLc395 rho) = ((1 : F) * rho 3907)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3906) * ((1 : F) * rho 3907) = ((1 : F) * rho 3908)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((1 : F) + (1 : F) * rho 3908) = ((1 : F) * rho 3906 + (1 : F) * rho 3907)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((1 : F) + (-1 : F) * rho 3908) = ((1 : F) * rho 3905 + (-1 : F) * rho 3906 + (-1 : F) * rho 3907)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 61⟩], residual := [((1 : F), 3909)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (relationLc396 rho) = ((1 : F) * rho 3911)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 61⟩], residual := [((1 : F), 3910)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (relationLc397 rho) = ((1 : F) * rho 3912)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((1 : F) * rho 3904) = ((1 : F) * rho 3913)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((1 : F) * rho 3903) = ((1 : F) * rho 3914)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * ((1 : F) * rho 3904) = ((1 : F) * rho 3915)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((-1 : F) * rho 3914 + (1 : F) * rho 3915) = ((2 : F) * rho 3913)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * ((2 : F) + (1 : F) * rho 3914 + (-1 : F) * rho 3915) = ((1 : F) * rho 3914 + (1 : F) * rho 3915)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 62⟩, ⟨(1 : F), 3119, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916 + (1 : F) * rho 3917) * (relationLc398 rho) = ((1 : F) * rho 3918)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * (relationLc399 rho) = ((1 : F) * rho 3919)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * (relationLc400 rho) = ((1 : F) * rho 3920)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3919) * ((1 : F) * rho 3920) = ((1 : F) * rho 3921)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3922) * ((1 : F) + (1 : F) * rho 3921) = ((1 : F) * rho 3919 + (1 : F) * rho 3920)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923) * ((1 : F) + (-1 : F) * rho 3921) = ((1 : F) * rho 3918 + (-1 : F) * rho 3919 + (-1 : F) * rho 3920)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 62⟩], residual := [((1 : F), 3922)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (relationLc401 rho) = ((1 : F) * rho 3924)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 62⟩], residual := [((1 : F), 3923)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (relationLc402 rho) = ((1 : F) * rho 3925)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((1 : F) * rho 3917) = ((1 : F) * rho 3926)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((1 : F) * rho 3916) = ((1 : F) * rho 3927)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * ((1 : F) * rho 3917) = ((1 : F) * rho 3928)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((-1 : F) * rho 3927 + (1 : F) * rho 3928) = ((2 : F) * rho 3926)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * ((2 : F) + (1 : F) * rho 3927 + (-1 : F) * rho 3928) = ((1 : F) * rho 3927 + (1 : F) * rho 3928)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 63⟩, ⟨(1 : F), 3119, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929 + (1 : F) * rho 3930) * (relationLc403 rho) = ((1 : F) * rho 3931)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * (relationLc404 rho) = ((1 : F) * rho 3932)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * (relationLc405 rho) = ((1 : F) * rho 3933)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3932) * ((1 : F) * rho 3933) = ((1 : F) * rho 3934)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3935) * ((1 : F) + (1 : F) * rho 3934) = ((1 : F) * rho 3932 + (1 : F) * rho 3933)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((1 : F) + (-1 : F) * rho 3934) = ((1 : F) * rho 3931 + (-1 : F) * rho 3932 + (-1 : F) * rho 3933)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 63⟩], residual := [((1 : F), 3935)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (relationLc406 rho) = ((1 : F) * rho 3937)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 63⟩], residual := [((1 : F), 3936)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (relationLc407 rho) = ((1 : F) * rho 3938)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((1 : F) * rho 3930) = ((1 : F) * rho 3939)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((1 : F) * rho 3929) = ((1 : F) * rho 3940)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * ((1 : F) * rho 3930) = ((1 : F) * rho 3941)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((-1 : F) * rho 3940 + (1 : F) * rho 3941) = ((2 : F) * rho 3939)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * ((2 : F) + (1 : F) * rho 3940 + (-1 : F) * rho 3941) = ((1 : F) * rho 3940 + (1 : F) * rho 3941)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 64⟩, ⟨(1 : F), 3119, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942 + (1 : F) * rho 3943) * (relationLc408 rho) = ((1 : F) * rho 3944)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * (relationLc409 rho) = ((1 : F) * rho 3945)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * (relationLc410 rho) = ((1 : F) * rho 3946)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3945) * ((1 : F) * rho 3946) = ((1 : F) * rho 3947)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3948) * ((1 : F) + (1 : F) * rho 3947) = ((1 : F) * rho 3945 + (1 : F) * rho 3946)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949) * ((1 : F) + (-1 : F) * rho 3947) = ((1 : F) * rho 3944 + (-1 : F) * rho 3945 + (-1 : F) * rho 3946)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 64⟩], residual := [((1 : F), 3948)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (relationLc411 rho) = ((1 : F) * rho 3950)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 64⟩], residual := [((1 : F), 3949)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (relationLc412 rho) = ((1 : F) * rho 3951)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((1 : F) * rho 3943) = ((1 : F) * rho 3952)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((1 : F) * rho 3942) = ((1 : F) * rho 3953)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * ((1 : F) * rho 3943) = ((1 : F) * rho 3954)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((-1 : F) * rho 3953 + (1 : F) * rho 3954) = ((2 : F) * rho 3952)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * ((2 : F) + (1 : F) * rho 3953 + (-1 : F) * rho 3954) = ((1 : F) * rho 3953 + (1 : F) * rho 3954)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 65⟩, ⟨(1 : F), 3119, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955 + (1 : F) * rho 3956) * (relationLc413 rho) = ((1 : F) * rho 3957)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * (relationLc414 rho) = ((1 : F) * rho 3958)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * (relationLc415 rho) = ((1 : F) * rho 3959)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3958) * ((1 : F) * rho 3959) = ((1 : F) * rho 3960)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3961) * ((1 : F) + (1 : F) * rho 3960) = ((1 : F) * rho 3958 + (1 : F) * rho 3959)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962) * ((1 : F) + (-1 : F) * rho 3960) = ((1 : F) * rho 3957 + (-1 : F) * rho 3958 + (-1 : F) * rho 3959)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 65⟩], residual := [((1 : F), 3961)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (relationLc416 rho) = ((1 : F) * rho 3963)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 65⟩], residual := [((1 : F), 3962)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (relationLc417 rho) = ((1 : F) * rho 3964)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((1 : F) * rho 3956) = ((1 : F) * rho 3965)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((1 : F) * rho 3955) = ((1 : F) * rho 3966)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * ((1 : F) * rho 3956) = ((1 : F) * rho 3967)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((-1 : F) * rho 3966 + (1 : F) * rho 3967) = ((2 : F) * rho 3965)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * ((2 : F) + (1 : F) * rho 3966 + (-1 : F) * rho 3967) = ((1 : F) * rho 3966 + (1 : F) * rho 3967)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 66⟩, ⟨(1 : F), 3119, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968 + (1 : F) * rho 3969) * (relationLc418 rho) = ((1 : F) * rho 3970)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * (relationLc419 rho) = ((1 : F) * rho 3971)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * (relationLc420 rho) = ((1 : F) * rho 3972)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3971) * ((1 : F) * rho 3972) = ((1 : F) * rho 3973)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3974) * ((1 : F) + (1 : F) * rho 3973) = ((1 : F) * rho 3971 + (1 : F) * rho 3972)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) + (-1 : F) * rho 3973) = ((1 : F) * rho 3970 + (-1 : F) * rho 3971 + (-1 : F) * rho 3972)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 66⟩], residual := [((1 : F), 3974)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (relationLc421 rho) = ((1 : F) * rho 3976)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 66⟩], residual := [((1 : F), 3975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (relationLc422 rho) = ((1 : F) * rho 3977)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((1 : F) * rho 3969) = ((1 : F) * rho 3978)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((1 : F) * rho 3968) = ((1 : F) * rho 3979)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * ((1 : F) * rho 3969) = ((1 : F) * rho 3980)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((-1 : F) * rho 3979 + (1 : F) * rho 3980) = ((2 : F) * rho 3978)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * ((2 : F) + (1 : F) * rho 3979 + (-1 : F) * rho 3980) = ((1 : F) * rho 3979 + (1 : F) * rho 3980)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 67⟩, ⟨(1 : F), 3119, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981 + (1 : F) * rho 3982) * (relationLc423 rho) = ((1 : F) * rho 3983)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * (relationLc424 rho) = ((1 : F) * rho 3984)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * (relationLc425 rho) = ((1 : F) * rho 3985)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3984) * ((1 : F) * rho 3985) = ((1 : F) * rho 3986)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3987) * ((1 : F) + (1 : F) * rho 3986) = ((1 : F) * rho 3984 + (1 : F) * rho 3985)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988) * ((1 : F) + (-1 : F) * rho 3986) = ((1 : F) * rho 3983 + (-1 : F) * rho 3984 + (-1 : F) * rho 3985)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 67⟩], residual := [((1 : F), 3987)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (relationLc426 rho) = ((1 : F) * rho 3989)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 67⟩], residual := [((1 : F), 3988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (relationLc427 rho) = ((1 : F) * rho 3990)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((1 : F) * rho 3982) = ((1 : F) * rho 3991)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((1 : F) * rho 3981) = ((1 : F) * rho 3992)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * ((1 : F) * rho 3982) = ((1 : F) * rho 3993)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((-1 : F) * rho 3992 + (1 : F) * rho 3993) = ((2 : F) * rho 3991)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * ((2 : F) + (1 : F) * rho 3992 + (-1 : F) * rho 3993) = ((1 : F) * rho 3992 + (1 : F) * rho 3993)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 68⟩, ⟨(1 : F), 3119, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994 + (1 : F) * rho 3995) * (relationLc428 rho) = ((1 : F) * rho 3996)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * (relationLc429 rho) = ((1 : F) * rho 3997)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * (relationLc430 rho) = ((1 : F) * rho 3998)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3997) * ((1 : F) * rho 3998) = ((1 : F) * rho 3999)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4000) * ((1 : F) + (1 : F) * rho 3999) = ((1 : F) * rho 3997 + (1 : F) * rho 3998)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001) * ((1 : F) + (-1 : F) * rho 3999) = ((1 : F) * rho 3996 + (-1 : F) * rho 3997 + (-1 : F) * rho 3998)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 68⟩], residual := [((1 : F), 4000)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1958) * (relationLc431 rho) = ((1 : F) * rho 4002)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 68⟩], residual := [((1 : F), 4001)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1958) * (relationLc432 rho) = ((1 : F) * rho 4003)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((1 : F) * rho 3995) = ((1 : F) * rho 4004)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((1 : F) * rho 3994) = ((1 : F) * rho 4005)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * ((1 : F) * rho 3995) = ((1 : F) * rho 4006)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((-1 : F) * rho 4005 + (1 : F) * rho 4006) = ((2 : F) * rho 4004)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((2 : F) + (1 : F) * rho 4005 + (-1 : F) * rho 4006) = ((1 : F) * rho 4005 + (1 : F) * rho 4006)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 69⟩, ⟨(1 : F), 3119, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007 + (1 : F) * rho 4008) * (relationLc433 rho) = ((1 : F) * rho 4009)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * (relationLc434 rho) = ((1 : F) * rho 4010)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * (relationLc435 rho) = ((1 : F) * rho 4011)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4010) * ((1 : F) * rho 4011) = ((1 : F) * rho 4012)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((1 : F) + (1 : F) * rho 4012) = ((1 : F) * rho 4010 + (1 : F) * rho 4011)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((1 : F) + (-1 : F) * rho 4012) = ((1 : F) * rho 4009 + (-1 : F) * rho 4010 + (-1 : F) * rho 4011)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 69⟩], residual := [((1 : F), 4013)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1959) * (relationLc436 rho) = ((1 : F) * rho 4015)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 69⟩], residual := [((1 : F), 4014)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1959) * (relationLc437 rho) = ((1 : F) * rho 4016)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((1 : F) * rho 4008) = ((1 : F) * rho 4017)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((1 : F) * rho 4007) = ((1 : F) * rho 4018)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) * rho 4008) = ((1 : F) * rho 4019)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((-1 : F) * rho 4018 + (1 : F) * rho 4019) = ((2 : F) * rho 4017)

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * ((2 : F) + (1 : F) * rho 4018 + (-1 : F) * rho 4019) = ((1 : F) * rho 4018 + (1 : F) * rho 4019)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 70⟩, ⟨(1 : F), 3119, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020 + (1 : F) * rho 4021) * (relationLc438 rho) = ((1 : F) * rho 4022)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * (relationLc439 rho) = ((1 : F) * rho 4023)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * (relationLc440 rho) = ((1 : F) * rho 4024)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4023) * ((1 : F) * rho 4024) = ((1 : F) * rho 4025)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4026) * ((1 : F) + (1 : F) * rho 4025) = ((1 : F) * rho 4023 + (1 : F) * rho 4024)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027) * ((1 : F) + (-1 : F) * rho 4025) = ((1 : F) * rho 4022 + (-1 : F) * rho 4023 + (-1 : F) * rho 4024)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 70⟩], residual := [((1 : F), 4026)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * (relationLc441 rho) = ((1 : F) * rho 4028)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 70⟩], residual := [((1 : F), 4027)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * (relationLc442 rho) = ((1 : F) * rho 4029)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) * rho 4021) = ((1 : F) * rho 4030)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) * rho 4020) = ((1 : F) * rho 4031)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * ((1 : F) * rho 4021) = ((1 : F) * rho 4032)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((-1 : F) * rho 4031 + (1 : F) * rho 4032) = ((2 : F) * rho 4030)

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * ((2 : F) + (1 : F) * rho 4031 + (-1 : F) * rho 4032) = ((1 : F) * rho 4031 + (1 : F) * rho 4032)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 71⟩, ⟨(1 : F), 3119, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033 + (1 : F) * rho 4034) * (relationLc443 rho) = ((1 : F) * rho 4035)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * (relationLc444 rho) = ((1 : F) * rho 4036)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * (relationLc445 rho) = ((1 : F) * rho 4037)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4036) * ((1 : F) * rho 4037) = ((1 : F) * rho 4038)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4039) * ((1 : F) + (1 : F) * rho 4038) = ((1 : F) * rho 4036 + (1 : F) * rho 4037)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((1 : F) + (-1 : F) * rho 4038) = ((1 : F) * rho 4035 + (-1 : F) * rho 4036 + (-1 : F) * rho 4037)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 71⟩], residual := [((1 : F), 4039)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * (relationLc446 rho) = ((1 : F) * rho 4041)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 71⟩], residual := [((1 : F), 4040)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * (relationLc447 rho) = ((1 : F) * rho 4042)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((1 : F) * rho 4034) = ((1 : F) * rho 4043)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((1 : F) * rho 4033) = ((1 : F) * rho 4044)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * ((1 : F) * rho 4034) = ((1 : F) * rho 4045)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((-1 : F) * rho 4044 + (1 : F) * rho 4045) = ((2 : F) * rho 4043)

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((2 : F) + (1 : F) * rho 4044 + (-1 : F) * rho 4045) = ((1 : F) * rho 4044 + (1 : F) * rho 4045)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 72⟩, ⟨(1 : F), 3119, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046 + (1 : F) * rho 4047) * (relationLc448 rho) = ((1 : F) * rho 4048)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * (relationLc449 rho) = ((1 : F) * rho 4049)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * (relationLc450 rho) = ((1 : F) * rho 4050)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4049) * ((1 : F) * rho 4050) = ((1 : F) * rho 4051)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) + (1 : F) * rho 4051) = ((1 : F) * rho 4049 + (1 : F) * rho 4050)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((1 : F) + (-1 : F) * rho 4051) = ((1 : F) * rho 4048 + (-1 : F) * rho 4049 + (-1 : F) * rho 4050)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 72⟩], residual := [((1 : F), 4052)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1962) * (relationLc451 rho) = ((1 : F) * rho 4054)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 72⟩], residual := [((1 : F), 4053)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1962) * (relationLc452 rho) = ((1 : F) * rho 4055)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) * rho 4047) = ((1 : F) * rho 4056)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) * rho 4046) = ((1 : F) * rho 4057)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((1 : F) * rho 4047) = ((1 : F) * rho 4058)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((-1 : F) * rho 4057 + (1 : F) * rho 4058) = ((2 : F) * rho 4056)

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * ((2 : F) + (1 : F) * rho 4057 + (-1 : F) * rho 4058) = ((1 : F) * rho 4057 + (1 : F) * rho 4058)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 73⟩, ⟨(1 : F), 3119, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059 + (1 : F) * rho 4060) * (relationLc453 rho) = ((1 : F) * rho 4061)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * (relationLc454 rho) = ((1 : F) * rho 4062)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * (relationLc455 rho) = ((1 : F) * rho 4063)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4062) * ((1 : F) * rho 4063) = ((1 : F) * rho 4064)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4065) * ((1 : F) + (1 : F) * rho 4064) = ((1 : F) * rho 4062 + (1 : F) * rho 4063)

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066) * ((1 : F) + (-1 : F) * rho 4064) = ((1 : F) * rho 4061 + (-1 : F) * rho 4062 + (-1 : F) * rho 4063)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 73⟩], residual := [((1 : F), 4065)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1963) * (relationLc456 rho) = ((1 : F) * rho 4067)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 73⟩], residual := [((1 : F), 4066)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1963) * (relationLc457 rho) = ((1 : F) * rho 4068)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((1 : F) * rho 4060) = ((1 : F) * rho 4069)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((1 : F) * rho 4059) = ((1 : F) * rho 4070)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * ((1 : F) * rho 4060) = ((1 : F) * rho 4071)

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((-1 : F) * rho 4070 + (1 : F) * rho 4071) = ((2 : F) * rho 4069)

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((2 : F) + (1 : F) * rho 4070 + (-1 : F) * rho 4071) = ((1 : F) * rho 4070 + (1 : F) * rho 4071)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 74⟩, ⟨(1 : F), 3119, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072 + (1 : F) * rho 4073) * (relationLc458 rho) = ((1 : F) * rho 4074)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * (relationLc459 rho) = ((1 : F) * rho 4075)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * (relationLc460 rho) = ((1 : F) * rho 4076)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4075) * ((1 : F) * rho 4076) = ((1 : F) * rho 4077)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4078) * ((1 : F) + (1 : F) * rho 4077) = ((1 : F) * rho 4075 + (1 : F) * rho 4076)

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((1 : F) + (-1 : F) * rho 4077) = ((1 : F) * rho 4074 + (-1 : F) * rho 4075 + (-1 : F) * rho 4076)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 74⟩], residual := [((1 : F), 4078)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1964) * (relationLc461 rho) = ((1 : F) * rho 4080)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 74⟩], residual := [((1 : F), 4079)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1964) * (relationLc462 rho) = ((1 : F) * rho 4081)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((1 : F) * rho 4073) = ((1 : F) * rho 4082)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((1 : F) * rho 4072) = ((1 : F) * rho 4083)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((1 : F) * rho 4073) = ((1 : F) * rho 4084)

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((-1 : F) * rho 4083 + (1 : F) * rho 4084) = ((2 : F) * rho 4082)

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((2 : F) + (1 : F) * rho 4083 + (-1 : F) * rho 4084) = ((1 : F) * rho 4083 + (1 : F) * rho 4084)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 75⟩, ⟨(1 : F), 3119, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085 + (1 : F) * rho 4086) * (relationLc463 rho) = ((1 : F) * rho 4087)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * (relationLc464 rho) = ((1 : F) * rho 4088)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * (relationLc465 rho) = ((1 : F) * rho 4089)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4088) * ((1 : F) * rho 4089) = ((1 : F) * rho 4090)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * ((1 : F) + (1 : F) * rho 4090) = ((1 : F) * rho 4088 + (1 : F) * rho 4089)

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092) * ((1 : F) + (-1 : F) * rho 4090) = ((1 : F) * rho 4087 + (-1 : F) * rho 4088 + (-1 : F) * rho 4089)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 75⟩], residual := [((1 : F), 4091)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * (relationLc466 rho) = ((1 : F) * rho 4093)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 75⟩], residual := [((1 : F), 4092)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * (relationLc467 rho) = ((1 : F) * rho 4094)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4086) = ((1 : F) * rho 4095)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4085) = ((1 : F) * rho 4096)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((1 : F) * rho 4086) = ((1 : F) * rho 4097)

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((-1 : F) * rho 4096 + (1 : F) * rho 4097) = ((2 : F) * rho 4095)

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * ((2 : F) + (1 : F) * rho 4096 + (-1 : F) * rho 4097) = ((1 : F) * rho 4096 + (1 : F) * rho 4097)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 76⟩, ⟨(1 : F), 3119, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098 + (1 : F) * rho 4099) * (relationLc468 rho) = ((1 : F) * rho 4100)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * (relationLc469 rho) = ((1 : F) * rho 4101)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * (relationLc470 rho) = ((1 : F) * rho 4102)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4101) * ((1 : F) * rho 4102) = ((1 : F) * rho 4103)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4104) * ((1 : F) + (1 : F) * rho 4103) = ((1 : F) * rho 4101 + (1 : F) * rho 4102)

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105) * ((1 : F) + (-1 : F) * rho 4103) = ((1 : F) * rho 4100 + (-1 : F) * rho 4101 + (-1 : F) * rho 4102)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 76⟩], residual := [((1 : F), 4104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * (relationLc471 rho) = ((1 : F) * rho 4106)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 76⟩], residual := [((1 : F), 4105)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * (relationLc472 rho) = ((1 : F) * rho 4107)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((1 : F) * rho 4099) = ((1 : F) * rho 4108)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((1 : F) * rho 4098) = ((1 : F) * rho 4109)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * ((1 : F) * rho 4099) = ((1 : F) * rho 4110)

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((-1 : F) * rho 4109 + (1 : F) * rho 4110) = ((2 : F) * rho 4108)

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((2 : F) + (1 : F) * rho 4109 + (-1 : F) * rho 4110) = ((1 : F) * rho 4109 + (1 : F) * rho 4110)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 77⟩, ⟨(1 : F), 3119, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111 + (1 : F) * rho 4112) * (relationLc473 rho) = ((1 : F) * rho 4113)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * (relationLc474 rho) = ((1 : F) * rho 4114)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * (relationLc475 rho) = ((1 : F) * rho 4115)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4114) * ((1 : F) * rho 4115) = ((1 : F) * rho 4116)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * ((1 : F) + (1 : F) * rho 4116) = ((1 : F) * rho 4114 + (1 : F) * rho 4115)

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((1 : F) + (-1 : F) * rho 4116) = ((1 : F) * rho 4113 + (-1 : F) * rho 4114 + (-1 : F) * rho 4115)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 77⟩], residual := [((1 : F), 4117)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1967) * (relationLc476 rho) = ((1 : F) * rho 4119)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 77⟩], residual := [((1 : F), 4118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1967) * (relationLc477 rho) = ((1 : F) * rho 4120)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((1 : F) * rho 4112) = ((1 : F) * rho 4121)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((1 : F) * rho 4111) = ((1 : F) * rho 4122)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((1 : F) * rho 4112) = ((1 : F) * rho 4123)

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((-1 : F) * rho 4122 + (1 : F) * rho 4123) = ((2 : F) * rho 4121)

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * ((2 : F) + (1 : F) * rho 4122 + (-1 : F) * rho 4123) = ((1 : F) * rho 4122 + (1 : F) * rho 4123)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 78⟩, ⟨(1 : F), 3119, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124 + (1 : F) * rho 4125) * (relationLc478 rho) = ((1 : F) * rho 4126)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * (relationLc479 rho) = ((1 : F) * rho 4127)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * (relationLc480 rho) = ((1 : F) * rho 4128)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4127) * ((1 : F) * rho 4128) = ((1 : F) * rho 4129)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * ((1 : F) + (1 : F) * rho 4129) = ((1 : F) * rho 4127 + (1 : F) * rho 4128)

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131) * ((1 : F) + (-1 : F) * rho 4129) = ((1 : F) * rho 4126 + (-1 : F) * rho 4127 + (-1 : F) * rho 4128)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 78⟩], residual := [((1 : F), 4130)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1968) * (relationLc481 rho) = ((1 : F) * rho 4132)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 78⟩], residual := [((1 : F), 4131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1968) * (relationLc482 rho) = ((1 : F) * rho 4133)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((1 : F) * rho 4125) = ((1 : F) * rho 4134)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((1 : F) * rho 4124) = ((1 : F) * rho 4135)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * ((1 : F) * rho 4125) = ((1 : F) * rho 4136)

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((-1 : F) * rho 4135 + (1 : F) * rho 4136) = ((2 : F) * rho 4134)

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * ((2 : F) + (1 : F) * rho 4135 + (-1 : F) * rho 4136) = ((1 : F) * rho 4135 + (1 : F) * rho 4136)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 79⟩, ⟨(1 : F), 3119, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137 + (1 : F) * rho 4138) * (relationLc483 rho) = ((1 : F) * rho 4139)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * (relationLc484 rho) = ((1 : F) * rho 4140)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * (relationLc485 rho) = ((1 : F) * rho 4141)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4140) * ((1 : F) * rho 4141) = ((1 : F) * rho 4142)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4143) * ((1 : F) + (1 : F) * rho 4142) = ((1 : F) * rho 4140 + (1 : F) * rho 4141)

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144) * ((1 : F) + (-1 : F) * rho 4142) = ((1 : F) * rho 4139 + (-1 : F) * rho 4140 + (-1 : F) * rho 4141)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3118, 13, 79⟩], residual := [((1 : F), 4143)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1969) * (relationLc486 rho) = ((1 : F) * rho 4145)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3119, 13, 79⟩], residual := [((1 : F), 4144)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1969) * (relationLc487 rho) = ((1 : F) * rho 4146)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((1 : F) * rho 4138) = ((1 : F) * rho 4147)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((1 : F) * rho 4137) = ((1 : F) * rho 4148)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * ((1 : F) * rho 4138) = ((1 : F) * rho 4149)

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * ((-1 : F) * rho 4148 + (1 : F) * rho 4149) = ((2 : F) * rho 4147)

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((2 : F) + (1 : F) * rho 4148 + (-1 : F) * rho 4149) = ((1 : F) * rho 4148 + (1 : F) * rho 4149)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3118, 13, 80⟩, ⟨(1 : F), 3119, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150 + (1 : F) * rho 4151) * (relationLc488 rho) = ((1 : F) * rho 4152)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3118, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * (relationLc489 rho) = ((1 : F) * rho 4153)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3119, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4150) * (relationLc490 rho) = ((1 : F) * rho 4154)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4153) * ((1 : F) * rho 4154) = ((1 : F) * rho 4155)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
