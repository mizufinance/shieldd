import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6Defs8

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3547) * ((2 : F) + (1 : F) * rho 3544 + (-1 : F) * rho 3545) = ((1 : F) * rho 3544 + (1 : F) * rho 3545)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 34⟩, ⟨(1 : F), 3113, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546 + (1 : F) * rho 3547) * (relationLc258 rho) = ((1 : F) * rho 3548)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3547) * (relationLc259 rho) = ((1 : F) * rho 3549)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * (relationLc260 rho) = ((1 : F) * rho 3550)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3549) * ((1 : F) * rho 3550) = ((1 : F) * rho 3551)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((1 : F) + (1 : F) * rho 3551) = ((1 : F) * rho 3549 + (1 : F) * rho 3550)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3553) * ((1 : F) + (-1 : F) * rho 3551) = ((1 : F) * rho 3548 + (-1 : F) * rho 3549 + (-1 : F) * rho 3550)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 34⟩], residual := [((1 : F), 3552)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * (relationLc261 rho) = ((1 : F) * rho 3554)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 34⟩], residual := [((1 : F), 3553)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * (relationLc262 rho) = ((1 : F) * rho 3555)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) * rho 3547) = ((1 : F) * rho 3556)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) * rho 3546) = ((1 : F) * rho 3557)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3547) * ((1 : F) * rho 3547) = ((1 : F) * rho 3558)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559) * ((-1 : F) * rho 3557 + (1 : F) * rho 3558) = ((2 : F) * rho 3556)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3560) * ((2 : F) + (1 : F) * rho 3557 + (-1 : F) * rho 3558) = ((1 : F) * rho 3557 + (1 : F) * rho 3558)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 35⟩, ⟨(1 : F), 3113, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559 + (1 : F) * rho 3560) * (relationLc263 rho) = ((1 : F) * rho 3561)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3560) * (relationLc264 rho) = ((1 : F) * rho 3562)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559) * (relationLc265 rho) = ((1 : F) * rho 3563)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3562) * ((1 : F) * rho 3563) = ((1 : F) * rho 3564)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3565) * ((1 : F) + (1 : F) * rho 3564) = ((1 : F) * rho 3562 + (1 : F) * rho 3563)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3566) * ((1 : F) + (-1 : F) * rho 3564) = ((1 : F) * rho 3561 + (-1 : F) * rho 3562 + (-1 : F) * rho 3563)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 35⟩], residual := [((1 : F), 3565)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * (relationLc266 rho) = ((1 : F) * rho 3567)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 35⟩], residual := [((1 : F), 3566)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * (relationLc267 rho) = ((1 : F) * rho 3568)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559) * ((1 : F) * rho 3560) = ((1 : F) * rho 3569)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3559) * ((1 : F) * rho 3559) = ((1 : F) * rho 3570)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3560) * ((1 : F) * rho 3560) = ((1 : F) * rho 3571)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((-1 : F) * rho 3570 + (1 : F) * rho 3571) = ((2 : F) * rho 3569)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3573) * ((2 : F) + (1 : F) * rho 3570 + (-1 : F) * rho 3571) = ((1 : F) * rho 3570 + (1 : F) * rho 3571)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 36⟩, ⟨(1 : F), 3113, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572 + (1 : F) * rho 3573) * (relationLc268 rho) = ((1 : F) * rho 3574)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3573) * (relationLc269 rho) = ((1 : F) * rho 3575)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * (relationLc270 rho) = ((1 : F) * rho 3576)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3575) * ((1 : F) * rho 3576) = ((1 : F) * rho 3577)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3578) * ((1 : F) + (1 : F) * rho 3577) = ((1 : F) * rho 3575 + (1 : F) * rho 3576)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3579) * ((1 : F) + (-1 : F) * rho 3577) = ((1 : F) * rho 3574 + (-1 : F) * rho 3575 + (-1 : F) * rho 3576)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 36⟩], residual := [((1 : F), 3578)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * (relationLc271 rho) = ((1 : F) * rho 3580)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 36⟩], residual := [((1 : F), 3579)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * (relationLc272 rho) = ((1 : F) * rho 3581)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((1 : F) * rho 3573) = ((1 : F) * rho 3582)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3572) * ((1 : F) * rho 3572) = ((1 : F) * rho 3583)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3573) * ((1 : F) * rho 3573) = ((1 : F) * rho 3584)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585) * ((-1 : F) * rho 3583 + (1 : F) * rho 3584) = ((2 : F) * rho 3582)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3586) * ((2 : F) + (1 : F) * rho 3583 + (-1 : F) * rho 3584) = ((1 : F) * rho 3583 + (1 : F) * rho 3584)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 37⟩, ⟨(1 : F), 3113, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585 + (1 : F) * rho 3586) * (relationLc273 rho) = ((1 : F) * rho 3587)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3586) * (relationLc274 rho) = ((1 : F) * rho 3588)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585) * (relationLc275 rho) = ((1 : F) * rho 3589)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3588) * ((1 : F) * rho 3589) = ((1 : F) * rho 3590)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3591) * ((1 : F) + (1 : F) * rho 3590) = ((1 : F) * rho 3588 + (1 : F) * rho 3589)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * ((1 : F) + (-1 : F) * rho 3590) = ((1 : F) * rho 3587 + (-1 : F) * rho 3588 + (-1 : F) * rho 3589)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 37⟩], residual := [((1 : F), 3591)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * (relationLc276 rho) = ((1 : F) * rho 3593)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 37⟩], residual := [((1 : F), 3592)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * (relationLc277 rho) = ((1 : F) * rho 3594)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585) * ((1 : F) * rho 3586) = ((1 : F) * rho 3595)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3585) * ((1 : F) * rho 3585) = ((1 : F) * rho 3596)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3586) * ((1 : F) * rho 3586) = ((1 : F) * rho 3597)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * ((-1 : F) * rho 3596 + (1 : F) * rho 3597) = ((2 : F) * rho 3595)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3599) * ((2 : F) + (1 : F) * rho 3596 + (-1 : F) * rho 3597) = ((1 : F) * rho 3596 + (1 : F) * rho 3597)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 38⟩, ⟨(1 : F), 3113, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598 + (1 : F) * rho 3599) * (relationLc278 rho) = ((1 : F) * rho 3600)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3599) * (relationLc279 rho) = ((1 : F) * rho 3601)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * (relationLc280 rho) = ((1 : F) * rho 3602)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3601) * ((1 : F) * rho 3602) = ((1 : F) * rho 3603)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3604) * ((1 : F) + (1 : F) * rho 3603) = ((1 : F) * rho 3601 + (1 : F) * rho 3602)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3605) * ((1 : F) + (-1 : F) * rho 3603) = ((1 : F) * rho 3600 + (-1 : F) * rho 3601 + (-1 : F) * rho 3602)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 38⟩], residual := [((1 : F), 3604)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * (relationLc281 rho) = ((1 : F) * rho 3606)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 38⟩], residual := [((1 : F), 3605)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * (relationLc282 rho) = ((1 : F) * rho 3607)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * ((1 : F) * rho 3599) = ((1 : F) * rho 3608)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * ((1 : F) * rho 3598) = ((1 : F) * rho 3609)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3599) * ((1 : F) * rho 3599) = ((1 : F) * rho 3610)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((-1 : F) * rho 3609 + (1 : F) * rho 3610) = ((2 : F) * rho 3608)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3612) * ((2 : F) + (1 : F) * rho 3609 + (-1 : F) * rho 3610) = ((1 : F) * rho 3609 + (1 : F) * rho 3610)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 39⟩, ⟨(1 : F), 3113, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611 + (1 : F) * rho 3612) * (relationLc283 rho) = ((1 : F) * rho 3613)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3612) * (relationLc284 rho) = ((1 : F) * rho 3614)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * (relationLc285 rho) = ((1 : F) * rho 3615)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3614) * ((1 : F) * rho 3615) = ((1 : F) * rho 3616)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) + (1 : F) * rho 3616) = ((1 : F) * rho 3614 + (1 : F) * rho 3615)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * ((1 : F) + (-1 : F) * rho 3616) = ((1 : F) * rho 3613 + (-1 : F) * rho 3614 + (-1 : F) * rho 3615)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 39⟩], residual := [((1 : F), 3617)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * (relationLc286 rho) = ((1 : F) * rho 3619)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 39⟩], residual := [((1 : F), 3618)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * (relationLc287 rho) = ((1 : F) * rho 3620)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) * rho 3612) = ((1 : F) * rho 3621)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) * rho 3611) = ((1 : F) * rho 3622)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3612) * ((1 : F) * rho 3612) = ((1 : F) * rho 3623)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624) * ((-1 : F) * rho 3622 + (1 : F) * rho 3623) = ((2 : F) * rho 3621)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3625) * ((2 : F) + (1 : F) * rho 3622 + (-1 : F) * rho 3623) = ((1 : F) * rho 3622 + (1 : F) * rho 3623)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 40⟩, ⟨(1 : F), 3113, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624 + (1 : F) * rho 3625) * (relationLc288 rho) = ((1 : F) * rho 3626)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3625) * (relationLc289 rho) = ((1 : F) * rho 3627)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624) * (relationLc290 rho) = ((1 : F) * rho 3628)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3627) * ((1 : F) * rho 3628) = ((1 : F) * rho 3629)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3630) * ((1 : F) + (1 : F) * rho 3629) = ((1 : F) * rho 3627 + (1 : F) * rho 3628)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3631) * ((1 : F) + (-1 : F) * rho 3629) = ((1 : F) * rho 3626 + (-1 : F) * rho 3627 + (-1 : F) * rho 3628)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 40⟩], residual := [((1 : F), 3630)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (relationLc291 rho) = ((1 : F) * rho 3632)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 40⟩], residual := [((1 : F), 3631)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (relationLc292 rho) = ((1 : F) * rho 3633)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624) * ((1 : F) * rho 3625) = ((1 : F) * rho 3634)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3624) * ((1 : F) * rho 3624) = ((1 : F) * rho 3635)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3625) * ((1 : F) * rho 3625) = ((1 : F) * rho 3636)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637) * ((-1 : F) * rho 3635 + (1 : F) * rho 3636) = ((2 : F) * rho 3634)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3638) * ((2 : F) + (1 : F) * rho 3635 + (-1 : F) * rho 3636) = ((1 : F) * rho 3635 + (1 : F) * rho 3636)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 41⟩, ⟨(1 : F), 3113, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637 + (1 : F) * rho 3638) * (relationLc293 rho) = ((1 : F) * rho 3639)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3638) * (relationLc294 rho) = ((1 : F) * rho 3640)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637) * (relationLc295 rho) = ((1 : F) * rho 3641)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3640) * ((1 : F) * rho 3641) = ((1 : F) * rho 3642)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3643) * ((1 : F) + (1 : F) * rho 3642) = ((1 : F) * rho 3640 + (1 : F) * rho 3641)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3644) * ((1 : F) + (-1 : F) * rho 3642) = ((1 : F) * rho 3639 + (-1 : F) * rho 3640 + (-1 : F) * rho 3641)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 41⟩], residual := [((1 : F), 3643)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (relationLc296 rho) = ((1 : F) * rho 3645)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 41⟩], residual := [((1 : F), 3644)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (relationLc297 rho) = ((1 : F) * rho 3646)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637) * ((1 : F) * rho 3638) = ((1 : F) * rho 3647)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3637) * ((1 : F) * rho 3637) = ((1 : F) * rho 3648)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3638) * ((1 : F) * rho 3638) = ((1 : F) * rho 3649)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650) * ((-1 : F) * rho 3648 + (1 : F) * rho 3649) = ((2 : F) * rho 3647)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3651) * ((2 : F) + (1 : F) * rho 3648 + (-1 : F) * rho 3649) = ((1 : F) * rho 3648 + (1 : F) * rho 3649)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 42⟩, ⟨(1 : F), 3113, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650 + (1 : F) * rho 3651) * (relationLc298 rho) = ((1 : F) * rho 3652)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3651) * (relationLc299 rho) = ((1 : F) * rho 3653)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650) * (relationLc300 rho) = ((1 : F) * rho 3654)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3653) * ((1 : F) * rho 3654) = ((1 : F) * rho 3655)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3656) * ((1 : F) + (1 : F) * rho 3655) = ((1 : F) * rho 3653 + (1 : F) * rho 3654)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3657) * ((1 : F) + (-1 : F) * rho 3655) = ((1 : F) * rho 3652 + (-1 : F) * rho 3653 + (-1 : F) * rho 3654)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 42⟩], residual := [((1 : F), 3656)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (relationLc301 rho) = ((1 : F) * rho 3658)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 42⟩], residual := [((1 : F), 3657)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (relationLc302 rho) = ((1 : F) * rho 3659)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650) * ((1 : F) * rho 3651) = ((1 : F) * rho 3660)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3650) * ((1 : F) * rho 3650) = ((1 : F) * rho 3661)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3651) * ((1 : F) * rho 3651) = ((1 : F) * rho 3662)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663) * ((-1 : F) * rho 3661 + (1 : F) * rho 3662) = ((2 : F) * rho 3660)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3664) * ((2 : F) + (1 : F) * rho 3661 + (-1 : F) * rho 3662) = ((1 : F) * rho 3661 + (1 : F) * rho 3662)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 43⟩, ⟨(1 : F), 3113, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663 + (1 : F) * rho 3664) * (relationLc303 rho) = ((1 : F) * rho 3665)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3664) * (relationLc304 rho) = ((1 : F) * rho 3666)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663) * (relationLc305 rho) = ((1 : F) * rho 3667)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3666) * ((1 : F) * rho 3667) = ((1 : F) * rho 3668)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3669) * ((1 : F) + (1 : F) * rho 3668) = ((1 : F) * rho 3666 + (1 : F) * rho 3667)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3670) * ((1 : F) + (-1 : F) * rho 3668) = ((1 : F) * rho 3665 + (-1 : F) * rho 3666 + (-1 : F) * rho 3667)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 43⟩], residual := [((1 : F), 3669)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (relationLc306 rho) = ((1 : F) * rho 3671)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 43⟩], residual := [((1 : F), 3670)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (relationLc307 rho) = ((1 : F) * rho 3672)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663) * ((1 : F) * rho 3664) = ((1 : F) * rho 3673)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3663) * ((1 : F) * rho 3663) = ((1 : F) * rho 3674)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3664) * ((1 : F) * rho 3664) = ((1 : F) * rho 3675)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676) * ((-1 : F) * rho 3674 + (1 : F) * rho 3675) = ((2 : F) * rho 3673)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3677) * ((2 : F) + (1 : F) * rho 3674 + (-1 : F) * rho 3675) = ((1 : F) * rho 3674 + (1 : F) * rho 3675)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 44⟩, ⟨(1 : F), 3113, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676 + (1 : F) * rho 3677) * (relationLc308 rho) = ((1 : F) * rho 3678)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3677) * (relationLc309 rho) = ((1 : F) * rho 3679)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676) * (relationLc310 rho) = ((1 : F) * rho 3680)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3679) * ((1 : F) * rho 3680) = ((1 : F) * rho 3681)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3682) * ((1 : F) + (1 : F) * rho 3681) = ((1 : F) * rho 3679 + (1 : F) * rho 3680)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3683) * ((1 : F) + (-1 : F) * rho 3681) = ((1 : F) * rho 3678 + (-1 : F) * rho 3679 + (-1 : F) * rho 3680)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 44⟩], residual := [((1 : F), 3682)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (relationLc311 rho) = ((1 : F) * rho 3684)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 44⟩], residual := [((1 : F), 3683)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (relationLc312 rho) = ((1 : F) * rho 3685)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676) * ((1 : F) * rho 3677) = ((1 : F) * rho 3686)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3676) * ((1 : F) * rho 3676) = ((1 : F) * rho 3687)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3677) * ((1 : F) * rho 3677) = ((1 : F) * rho 3688)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689) * ((-1 : F) * rho 3687 + (1 : F) * rho 3688) = ((2 : F) * rho 3686)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3690) * ((2 : F) + (1 : F) * rho 3687 + (-1 : F) * rho 3688) = ((1 : F) * rho 3687 + (1 : F) * rho 3688)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 45⟩, ⟨(1 : F), 3113, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689 + (1 : F) * rho 3690) * (relationLc313 rho) = ((1 : F) * rho 3691)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3690) * (relationLc314 rho) = ((1 : F) * rho 3692)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689) * (relationLc315 rho) = ((1 : F) * rho 3693)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3692) * ((1 : F) * rho 3693) = ((1 : F) * rho 3694)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3695) * ((1 : F) + (1 : F) * rho 3694) = ((1 : F) * rho 3692 + (1 : F) * rho 3693)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3696) * ((1 : F) + (-1 : F) * rho 3694) = ((1 : F) * rho 3691 + (-1 : F) * rho 3692 + (-1 : F) * rho 3693)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 45⟩], residual := [((1 : F), 3695)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (relationLc316 rho) = ((1 : F) * rho 3697)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 45⟩], residual := [((1 : F), 3696)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (relationLc317 rho) = ((1 : F) * rho 3698)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689) * ((1 : F) * rho 3690) = ((1 : F) * rho 3699)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3689) * ((1 : F) * rho 3689) = ((1 : F) * rho 3700)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3690) * ((1 : F) * rho 3690) = ((1 : F) * rho 3701)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702) * ((-1 : F) * rho 3700 + (1 : F) * rho 3701) = ((2 : F) * rho 3699)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3703) * ((2 : F) + (1 : F) * rho 3700 + (-1 : F) * rho 3701) = ((1 : F) * rho 3700 + (1 : F) * rho 3701)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 46⟩, ⟨(1 : F), 3113, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702 + (1 : F) * rho 3703) * (relationLc318 rho) = ((1 : F) * rho 3704)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3703) * (relationLc319 rho) = ((1 : F) * rho 3705)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702) * (relationLc320 rho) = ((1 : F) * rho 3706)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3705) * ((1 : F) * rho 3706) = ((1 : F) * rho 3707)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3708) * ((1 : F) + (1 : F) * rho 3707) = ((1 : F) * rho 3705 + (1 : F) * rho 3706)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3709) * ((1 : F) + (-1 : F) * rho 3707) = ((1 : F) * rho 3704 + (-1 : F) * rho 3705 + (-1 : F) * rho 3706)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 46⟩], residual := [((1 : F), 3708)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (relationLc321 rho) = ((1 : F) * rho 3710)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 46⟩], residual := [((1 : F), 3709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (relationLc322 rho) = ((1 : F) * rho 3711)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702) * ((1 : F) * rho 3703) = ((1 : F) * rho 3712)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3702) * ((1 : F) * rho 3702) = ((1 : F) * rho 3713)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3703) * ((1 : F) * rho 3703) = ((1 : F) * rho 3714)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715) * ((-1 : F) * rho 3713 + (1 : F) * rho 3714) = ((2 : F) * rho 3712)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3716) * ((2 : F) + (1 : F) * rho 3713 + (-1 : F) * rho 3714) = ((1 : F) * rho 3713 + (1 : F) * rho 3714)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 47⟩, ⟨(1 : F), 3113, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715 + (1 : F) * rho 3716) * (relationLc323 rho) = ((1 : F) * rho 3717)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3716) * (relationLc324 rho) = ((1 : F) * rho 3718)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715) * (relationLc325 rho) = ((1 : F) * rho 3719)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3718) * ((1 : F) * rho 3719) = ((1 : F) * rho 3720)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3721) * ((1 : F) + (1 : F) * rho 3720) = ((1 : F) * rho 3718 + (1 : F) * rho 3719)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3722) * ((1 : F) + (-1 : F) * rho 3720) = ((1 : F) * rho 3717 + (-1 : F) * rho 3718 + (-1 : F) * rho 3719)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 47⟩], residual := [((1 : F), 3721)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (relationLc326 rho) = ((1 : F) * rho 3723)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 47⟩], residual := [((1 : F), 3722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (relationLc327 rho) = ((1 : F) * rho 3724)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715) * ((1 : F) * rho 3716) = ((1 : F) * rho 3725)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3715) * ((1 : F) * rho 3715) = ((1 : F) * rho 3726)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3716) * ((1 : F) * rho 3716) = ((1 : F) * rho 3727)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728) * ((-1 : F) * rho 3726 + (1 : F) * rho 3727) = ((2 : F) * rho 3725)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3729) * ((2 : F) + (1 : F) * rho 3726 + (-1 : F) * rho 3727) = ((1 : F) * rho 3726 + (1 : F) * rho 3727)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 48⟩, ⟨(1 : F), 3113, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728 + (1 : F) * rho 3729) * (relationLc328 rho) = ((1 : F) * rho 3730)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3729) * (relationLc329 rho) = ((1 : F) * rho 3731)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728) * (relationLc330 rho) = ((1 : F) * rho 3732)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3731) * ((1 : F) * rho 3732) = ((1 : F) * rho 3733)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3734) * ((1 : F) + (1 : F) * rho 3733) = ((1 : F) * rho 3731 + (1 : F) * rho 3732)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3735) * ((1 : F) + (-1 : F) * rho 3733) = ((1 : F) * rho 3730 + (-1 : F) * rho 3731 + (-1 : F) * rho 3732)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 48⟩], residual := [((1 : F), 3734)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (relationLc331 rho) = ((1 : F) * rho 3736)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 48⟩], residual := [((1 : F), 3735)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (relationLc332 rho) = ((1 : F) * rho 3737)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728) * ((1 : F) * rho 3729) = ((1 : F) * rho 3738)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3728) * ((1 : F) * rho 3728) = ((1 : F) * rho 3739)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3729) * ((1 : F) * rho 3729) = ((1 : F) * rho 3740)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741) * ((-1 : F) * rho 3739 + (1 : F) * rho 3740) = ((2 : F) * rho 3738)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3742) * ((2 : F) + (1 : F) * rho 3739 + (-1 : F) * rho 3740) = ((1 : F) * rho 3739 + (1 : F) * rho 3740)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 49⟩, ⟨(1 : F), 3113, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741 + (1 : F) * rho 3742) * (relationLc333 rho) = ((1 : F) * rho 3743)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3742) * (relationLc334 rho) = ((1 : F) * rho 3744)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741) * (relationLc335 rho) = ((1 : F) * rho 3745)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3744) * ((1 : F) * rho 3745) = ((1 : F) * rho 3746)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3747) * ((1 : F) + (1 : F) * rho 3746) = ((1 : F) * rho 3744 + (1 : F) * rho 3745)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3748) * ((1 : F) + (-1 : F) * rho 3746) = ((1 : F) * rho 3743 + (-1 : F) * rho 3744 + (-1 : F) * rho 3745)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 49⟩], residual := [((1 : F), 3747)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (relationLc336 rho) = ((1 : F) * rho 3749)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 49⟩], residual := [((1 : F), 3748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (relationLc337 rho) = ((1 : F) * rho 3750)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741) * ((1 : F) * rho 3742) = ((1 : F) * rho 3751)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3741) * ((1 : F) * rho 3741) = ((1 : F) * rho 3752)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3742) * ((1 : F) * rho 3742) = ((1 : F) * rho 3753)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754) * ((-1 : F) * rho 3752 + (1 : F) * rho 3753) = ((2 : F) * rho 3751)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3755) * ((2 : F) + (1 : F) * rho 3752 + (-1 : F) * rho 3753) = ((1 : F) * rho 3752 + (1 : F) * rho 3753)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 50⟩, ⟨(1 : F), 3113, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754 + (1 : F) * rho 3755) * (relationLc338 rho) = ((1 : F) * rho 3756)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3755) * (relationLc339 rho) = ((1 : F) * rho 3757)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754) * (relationLc340 rho) = ((1 : F) * rho 3758)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3757) * ((1 : F) * rho 3758) = ((1 : F) * rho 3759)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3760) * ((1 : F) + (1 : F) * rho 3759) = ((1 : F) * rho 3757 + (1 : F) * rho 3758)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3761) * ((1 : F) + (-1 : F) * rho 3759) = ((1 : F) * rho 3756 + (-1 : F) * rho 3757 + (-1 : F) * rho 3758)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 50⟩], residual := [((1 : F), 3760)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (relationLc341 rho) = ((1 : F) * rho 3762)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 50⟩], residual := [((1 : F), 3761)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (relationLc342 rho) = ((1 : F) * rho 3763)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754) * ((1 : F) * rho 3755) = ((1 : F) * rho 3764)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3754) * ((1 : F) * rho 3754) = ((1 : F) * rho 3765)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3755) * ((1 : F) * rho 3755) = ((1 : F) * rho 3766)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767) * ((-1 : F) * rho 3765 + (1 : F) * rho 3766) = ((2 : F) * rho 3764)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3768) * ((2 : F) + (1 : F) * rho 3765 + (-1 : F) * rho 3766) = ((1 : F) * rho 3765 + (1 : F) * rho 3766)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 51⟩, ⟨(1 : F), 3113, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767 + (1 : F) * rho 3768) * (relationLc343 rho) = ((1 : F) * rho 3769)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3768) * (relationLc344 rho) = ((1 : F) * rho 3770)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767) * (relationLc345 rho) = ((1 : F) * rho 3771)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3770) * ((1 : F) * rho 3771) = ((1 : F) * rho 3772)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3773) * ((1 : F) + (1 : F) * rho 3772) = ((1 : F) * rho 3770 + (1 : F) * rho 3771)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3774) * ((1 : F) + (-1 : F) * rho 3772) = ((1 : F) * rho 3769 + (-1 : F) * rho 3770 + (-1 : F) * rho 3771)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 51⟩], residual := [((1 : F), 3773)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (relationLc346 rho) = ((1 : F) * rho 3775)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 51⟩], residual := [((1 : F), 3774)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (relationLc347 rho) = ((1 : F) * rho 3776)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767) * ((1 : F) * rho 3768) = ((1 : F) * rho 3777)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3767) * ((1 : F) * rho 3767) = ((1 : F) * rho 3778)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3768) * ((1 : F) * rho 3768) = ((1 : F) * rho 3779)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780) * ((-1 : F) * rho 3778 + (1 : F) * rho 3779) = ((2 : F) * rho 3777)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3781) * ((2 : F) + (1 : F) * rho 3778 + (-1 : F) * rho 3779) = ((1 : F) * rho 3778 + (1 : F) * rho 3779)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 52⟩, ⟨(1 : F), 3113, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780 + (1 : F) * rho 3781) * (relationLc348 rho) = ((1 : F) * rho 3782)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3781) * (relationLc349 rho) = ((1 : F) * rho 3783)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780) * (relationLc350 rho) = ((1 : F) * rho 3784)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3783) * ((1 : F) * rho 3784) = ((1 : F) * rho 3785)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3786) * ((1 : F) + (1 : F) * rho 3785) = ((1 : F) * rho 3783 + (1 : F) * rho 3784)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3787) * ((1 : F) + (-1 : F) * rho 3785) = ((1 : F) * rho 3782 + (-1 : F) * rho 3783 + (-1 : F) * rho 3784)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 52⟩], residual := [((1 : F), 3786)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (relationLc351 rho) = ((1 : F) * rho 3788)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 52⟩], residual := [((1 : F), 3787)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (relationLc352 rho) = ((1 : F) * rho 3789)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780) * ((1 : F) * rho 3781) = ((1 : F) * rho 3790)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3780) * ((1 : F) * rho 3780) = ((1 : F) * rho 3791)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3781) * ((1 : F) * rho 3781) = ((1 : F) * rho 3792)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793) * ((-1 : F) * rho 3791 + (1 : F) * rho 3792) = ((2 : F) * rho 3790)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3794) * ((2 : F) + (1 : F) * rho 3791 + (-1 : F) * rho 3792) = ((1 : F) * rho 3791 + (1 : F) * rho 3792)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 53⟩, ⟨(1 : F), 3113, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793 + (1 : F) * rho 3794) * (relationLc353 rho) = ((1 : F) * rho 3795)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3794) * (relationLc354 rho) = ((1 : F) * rho 3796)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793) * (relationLc355 rho) = ((1 : F) * rho 3797)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3796) * ((1 : F) * rho 3797) = ((1 : F) * rho 3798)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3799) * ((1 : F) + (1 : F) * rho 3798) = ((1 : F) * rho 3796 + (1 : F) * rho 3797)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3800) * ((1 : F) + (-1 : F) * rho 3798) = ((1 : F) * rho 3795 + (-1 : F) * rho 3796 + (-1 : F) * rho 3797)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 53⟩], residual := [((1 : F), 3799)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (relationLc356 rho) = ((1 : F) * rho 3801)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 53⟩], residual := [((1 : F), 3800)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (relationLc357 rho) = ((1 : F) * rho 3802)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793) * ((1 : F) * rho 3794) = ((1 : F) * rho 3803)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3793) * ((1 : F) * rho 3793) = ((1 : F) * rho 3804)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3794) * ((1 : F) * rho 3794) = ((1 : F) * rho 3805)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806) * ((-1 : F) * rho 3804 + (1 : F) * rho 3805) = ((2 : F) * rho 3803)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3807) * ((2 : F) + (1 : F) * rho 3804 + (-1 : F) * rho 3805) = ((1 : F) * rho 3804 + (1 : F) * rho 3805)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 54⟩, ⟨(1 : F), 3113, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806 + (1 : F) * rho 3807) * (relationLc358 rho) = ((1 : F) * rho 3808)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3807) * (relationLc359 rho) = ((1 : F) * rho 3809)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806) * (relationLc360 rho) = ((1 : F) * rho 3810)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3809) * ((1 : F) * rho 3810) = ((1 : F) * rho 3811)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3812) * ((1 : F) + (1 : F) * rho 3811) = ((1 : F) * rho 3809 + (1 : F) * rho 3810)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3813) * ((1 : F) + (-1 : F) * rho 3811) = ((1 : F) * rho 3808 + (-1 : F) * rho 3809 + (-1 : F) * rho 3810)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 54⟩], residual := [((1 : F), 3812)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (relationLc361 rho) = ((1 : F) * rho 3814)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 54⟩], residual := [((1 : F), 3813)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (relationLc362 rho) = ((1 : F) * rho 3815)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806) * ((1 : F) * rho 3807) = ((1 : F) * rho 3816)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3806) * ((1 : F) * rho 3806) = ((1 : F) * rho 3817)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3807) * ((1 : F) * rho 3807) = ((1 : F) * rho 3818)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819) * ((-1 : F) * rho 3817 + (1 : F) * rho 3818) = ((2 : F) * rho 3816)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3820) * ((2 : F) + (1 : F) * rho 3817 + (-1 : F) * rho 3818) = ((1 : F) * rho 3817 + (1 : F) * rho 3818)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 55⟩, ⟨(1 : F), 3113, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819 + (1 : F) * rho 3820) * (relationLc363 rho) = ((1 : F) * rho 3821)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3820) * (relationLc364 rho) = ((1 : F) * rho 3822)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819) * (relationLc365 rho) = ((1 : F) * rho 3823)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3822) * ((1 : F) * rho 3823) = ((1 : F) * rho 3824)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3825) * ((1 : F) + (1 : F) * rho 3824) = ((1 : F) * rho 3822 + (1 : F) * rho 3823)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3826) * ((1 : F) + (-1 : F) * rho 3824) = ((1 : F) * rho 3821 + (-1 : F) * rho 3822 + (-1 : F) * rho 3823)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 55⟩], residual := [((1 : F), 3825)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (relationLc366 rho) = ((1 : F) * rho 3827)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 55⟩], residual := [((1 : F), 3826)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (relationLc367 rho) = ((1 : F) * rho 3828)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819) * ((1 : F) * rho 3820) = ((1 : F) * rho 3829)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3819) * ((1 : F) * rho 3819) = ((1 : F) * rho 3830)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3820) * ((1 : F) * rho 3820) = ((1 : F) * rho 3831)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((-1 : F) * rho 3830 + (1 : F) * rho 3831) = ((2 : F) * rho 3829)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3833) * ((2 : F) + (1 : F) * rho 3830 + (-1 : F) * rho 3831) = ((1 : F) * rho 3830 + (1 : F) * rho 3831)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 56⟩, ⟨(1 : F), 3113, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832 + (1 : F) * rho 3833) * (relationLc368 rho) = ((1 : F) * rho 3834)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3833) * (relationLc369 rho) = ((1 : F) * rho 3835)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * (relationLc370 rho) = ((1 : F) * rho 3836)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3835) * ((1 : F) * rho 3836) = ((1 : F) * rho 3837)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3838) * ((1 : F) + (1 : F) * rho 3837) = ((1 : F) * rho 3835 + (1 : F) * rho 3836)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3839) * ((1 : F) + (-1 : F) * rho 3837) = ((1 : F) * rho 3834 + (-1 : F) * rho 3835 + (-1 : F) * rho 3836)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 56⟩], residual := [((1 : F), 3838)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (relationLc371 rho) = ((1 : F) * rho 3840)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 56⟩], residual := [((1 : F), 3839)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (relationLc372 rho) = ((1 : F) * rho 3841)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((1 : F) * rho 3833) = ((1 : F) * rho 3842)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3832) * ((1 : F) * rho 3832) = ((1 : F) * rho 3843)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3833) * ((1 : F) * rho 3833) = ((1 : F) * rho 3844)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845) * ((-1 : F) * rho 3843 + (1 : F) * rho 3844) = ((2 : F) * rho 3842)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3846) * ((2 : F) + (1 : F) * rho 3843 + (-1 : F) * rho 3844) = ((1 : F) * rho 3843 + (1 : F) * rho 3844)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 57⟩, ⟨(1 : F), 3113, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845 + (1 : F) * rho 3846) * (relationLc373 rho) = ((1 : F) * rho 3847)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3846) * (relationLc374 rho) = ((1 : F) * rho 3848)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845) * (relationLc375 rho) = ((1 : F) * rho 3849)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3848) * ((1 : F) * rho 3849) = ((1 : F) * rho 3850)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3851) * ((1 : F) + (1 : F) * rho 3850) = ((1 : F) * rho 3848 + (1 : F) * rho 3849)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3852) * ((1 : F) + (-1 : F) * rho 3850) = ((1 : F) * rho 3847 + (-1 : F) * rho 3848 + (-1 : F) * rho 3849)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 57⟩], residual := [((1 : F), 3851)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (relationLc376 rho) = ((1 : F) * rho 3853)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 57⟩], residual := [((1 : F), 3852)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (relationLc377 rho) = ((1 : F) * rho 3854)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845) * ((1 : F) * rho 3846) = ((1 : F) * rho 3855)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3845) * ((1 : F) * rho 3845) = ((1 : F) * rho 3856)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3846) * ((1 : F) * rho 3846) = ((1 : F) * rho 3857)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858) * ((-1 : F) * rho 3856 + (1 : F) * rho 3857) = ((2 : F) * rho 3855)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3859) * ((2 : F) + (1 : F) * rho 3856 + (-1 : F) * rho 3857) = ((1 : F) * rho 3856 + (1 : F) * rho 3857)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 58⟩, ⟨(1 : F), 3113, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858 + (1 : F) * rho 3859) * (relationLc378 rho) = ((1 : F) * rho 3860)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3859) * (relationLc379 rho) = ((1 : F) * rho 3861)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858) * (relationLc380 rho) = ((1 : F) * rho 3862)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3861) * ((1 : F) * rho 3862) = ((1 : F) * rho 3863)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3864) * ((1 : F) + (1 : F) * rho 3863) = ((1 : F) * rho 3861 + (1 : F) * rho 3862)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3865) * ((1 : F) + (-1 : F) * rho 3863) = ((1 : F) * rho 3860 + (-1 : F) * rho 3861 + (-1 : F) * rho 3862)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 58⟩], residual := [((1 : F), 3864)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (relationLc381 rho) = ((1 : F) * rho 3866)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 58⟩], residual := [((1 : F), 3865)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (relationLc382 rho) = ((1 : F) * rho 3867)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858) * ((1 : F) * rho 3859) = ((1 : F) * rho 3868)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3858) * ((1 : F) * rho 3858) = ((1 : F) * rho 3869)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3859) * ((1 : F) * rho 3859) = ((1 : F) * rho 3870)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((-1 : F) * rho 3869 + (1 : F) * rho 3870) = ((2 : F) * rho 3868)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3872) * ((2 : F) + (1 : F) * rho 3869 + (-1 : F) * rho 3870) = ((1 : F) * rho 3869 + (1 : F) * rho 3870)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 59⟩, ⟨(1 : F), 3113, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871 + (1 : F) * rho 3872) * (relationLc383 rho) = ((1 : F) * rho 3873)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3872) * (relationLc384 rho) = ((1 : F) * rho 3874)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * (relationLc385 rho) = ((1 : F) * rho 3875)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3874) * ((1 : F) * rho 3875) = ((1 : F) * rho 3876)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3877) * ((1 : F) + (1 : F) * rho 3876) = ((1 : F) * rho 3874 + (1 : F) * rho 3875)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3878) * ((1 : F) + (-1 : F) * rho 3876) = ((1 : F) * rho 3873 + (-1 : F) * rho 3874 + (-1 : F) * rho 3875)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 59⟩], residual := [((1 : F), 3877)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (relationLc386 rho) = ((1 : F) * rho 3879)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 59⟩], residual := [((1 : F), 3878)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (relationLc387 rho) = ((1 : F) * rho 3880)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((1 : F) * rho 3872) = ((1 : F) * rho 3881)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3871) * ((1 : F) * rho 3871) = ((1 : F) * rho 3882)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3872) * ((1 : F) * rho 3872) = ((1 : F) * rho 3883)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884) * ((-1 : F) * rho 3882 + (1 : F) * rho 3883) = ((2 : F) * rho 3881)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3885) * ((2 : F) + (1 : F) * rho 3882 + (-1 : F) * rho 3883) = ((1 : F) * rho 3882 + (1 : F) * rho 3883)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 60⟩, ⟨(1 : F), 3113, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884 + (1 : F) * rho 3885) * (relationLc388 rho) = ((1 : F) * rho 3886)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3885) * (relationLc389 rho) = ((1 : F) * rho 3887)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884) * (relationLc390 rho) = ((1 : F) * rho 3888)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3887) * ((1 : F) * rho 3888) = ((1 : F) * rho 3889)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3890) * ((1 : F) + (1 : F) * rho 3889) = ((1 : F) * rho 3887 + (1 : F) * rho 3888)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3891) * ((1 : F) + (-1 : F) * rho 3889) = ((1 : F) * rho 3886 + (-1 : F) * rho 3887 + (-1 : F) * rho 3888)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 60⟩], residual := [((1 : F), 3890)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (relationLc391 rho) = ((1 : F) * rho 3892)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 60⟩], residual := [((1 : F), 3891)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (relationLc392 rho) = ((1 : F) * rho 3893)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884) * ((1 : F) * rho 3885) = ((1 : F) * rho 3894)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3884) * ((1 : F) * rho 3884) = ((1 : F) * rho 3895)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3885) * ((1 : F) * rho 3885) = ((1 : F) * rho 3896)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((-1 : F) * rho 3895 + (1 : F) * rho 3896) = ((2 : F) * rho 3894)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3898) * ((2 : F) + (1 : F) * rho 3895 + (-1 : F) * rho 3896) = ((1 : F) * rho 3895 + (1 : F) * rho 3896)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 61⟩, ⟨(1 : F), 3113, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897 + (1 : F) * rho 3898) * (relationLc393 rho) = ((1 : F) * rho 3899)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3898) * (relationLc394 rho) = ((1 : F) * rho 3900)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * (relationLc395 rho) = ((1 : F) * rho 3901)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3900) * ((1 : F) * rho 3901) = ((1 : F) * rho 3902)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3903) * ((1 : F) + (1 : F) * rho 3902) = ((1 : F) * rho 3900 + (1 : F) * rho 3901)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3904) * ((1 : F) + (-1 : F) * rho 3902) = ((1 : F) * rho 3899 + (-1 : F) * rho 3900 + (-1 : F) * rho 3901)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 61⟩], residual := [((1 : F), 3903)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (relationLc396 rho) = ((1 : F) * rho 3905)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 61⟩], residual := [((1 : F), 3904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (relationLc397 rho) = ((1 : F) * rho 3906)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((1 : F) * rho 3898) = ((1 : F) * rho 3907)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((1 : F) * rho 3897) = ((1 : F) * rho 3908)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3898) * ((1 : F) * rho 3898) = ((1 : F) * rho 3909)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((-1 : F) * rho 3908 + (1 : F) * rho 3909) = ((2 : F) * rho 3907)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3911) * ((2 : F) + (1 : F) * rho 3908 + (-1 : F) * rho 3909) = ((1 : F) * rho 3908 + (1 : F) * rho 3909)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 62⟩, ⟨(1 : F), 3113, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910 + (1 : F) * rho 3911) * (relationLc398 rho) = ((1 : F) * rho 3912)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3911) * (relationLc399 rho) = ((1 : F) * rho 3913)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * (relationLc400 rho) = ((1 : F) * rho 3914)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3913) * ((1 : F) * rho 3914) = ((1 : F) * rho 3915)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3916) * ((1 : F) + (1 : F) * rho 3915) = ((1 : F) * rho 3913 + (1 : F) * rho 3914)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3917) * ((1 : F) + (-1 : F) * rho 3915) = ((1 : F) * rho 3912 + (-1 : F) * rho 3913 + (-1 : F) * rho 3914)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 62⟩], residual := [((1 : F), 3916)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (relationLc401 rho) = ((1 : F) * rho 3918)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 62⟩], residual := [((1 : F), 3917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (relationLc402 rho) = ((1 : F) * rho 3919)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((1 : F) * rho 3911) = ((1 : F) * rho 3920)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((1 : F) * rho 3910) = ((1 : F) * rho 3921)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3911) * ((1 : F) * rho 3911) = ((1 : F) * rho 3922)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923) * ((-1 : F) * rho 3921 + (1 : F) * rho 3922) = ((2 : F) * rho 3920)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3924) * ((2 : F) + (1 : F) * rho 3921 + (-1 : F) * rho 3922) = ((1 : F) * rho 3921 + (1 : F) * rho 3922)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 63⟩, ⟨(1 : F), 3113, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923 + (1 : F) * rho 3924) * (relationLc403 rho) = ((1 : F) * rho 3925)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3924) * (relationLc404 rho) = ((1 : F) * rho 3926)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923) * (relationLc405 rho) = ((1 : F) * rho 3927)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3926) * ((1 : F) * rho 3927) = ((1 : F) * rho 3928)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3929) * ((1 : F) + (1 : F) * rho 3928) = ((1 : F) * rho 3926 + (1 : F) * rho 3927)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3930) * ((1 : F) + (-1 : F) * rho 3928) = ((1 : F) * rho 3925 + (-1 : F) * rho 3926 + (-1 : F) * rho 3927)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 63⟩], residual := [((1 : F), 3929)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (relationLc406 rho) = ((1 : F) * rho 3931)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 63⟩], residual := [((1 : F), 3930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (relationLc407 rho) = ((1 : F) * rho 3932)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923) * ((1 : F) * rho 3924) = ((1 : F) * rho 3933)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3923) * ((1 : F) * rho 3923) = ((1 : F) * rho 3934)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3924) * ((1 : F) * rho 3924) = ((1 : F) * rho 3935)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((-1 : F) * rho 3934 + (1 : F) * rho 3935) = ((2 : F) * rho 3933)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3937) * ((2 : F) + (1 : F) * rho 3934 + (-1 : F) * rho 3935) = ((1 : F) * rho 3934 + (1 : F) * rho 3935)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 64⟩, ⟨(1 : F), 3113, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936 + (1 : F) * rho 3937) * (relationLc408 rho) = ((1 : F) * rho 3938)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3937) * (relationLc409 rho) = ((1 : F) * rho 3939)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * (relationLc410 rho) = ((1 : F) * rho 3940)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3939) * ((1 : F) * rho 3940) = ((1 : F) * rho 3941)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((1 : F) + (1 : F) * rho 3941) = ((1 : F) * rho 3939 + (1 : F) * rho 3940)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3943) * ((1 : F) + (-1 : F) * rho 3941) = ((1 : F) * rho 3938 + (-1 : F) * rho 3939 + (-1 : F) * rho 3940)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 64⟩], residual := [((1 : F), 3942)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (relationLc411 rho) = ((1 : F) * rho 3944)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 64⟩], residual := [((1 : F), 3943)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (relationLc412 rho) = ((1 : F) * rho 3945)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((1 : F) * rho 3937) = ((1 : F) * rho 3946)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((1 : F) * rho 3936) = ((1 : F) * rho 3947)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3937) * ((1 : F) * rho 3937) = ((1 : F) * rho 3948)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949) * ((-1 : F) * rho 3947 + (1 : F) * rho 3948) = ((2 : F) * rho 3946)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3950) * ((2 : F) + (1 : F) * rho 3947 + (-1 : F) * rho 3948) = ((1 : F) * rho 3947 + (1 : F) * rho 3948)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 65⟩, ⟨(1 : F), 3113, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949 + (1 : F) * rho 3950) * (relationLc413 rho) = ((1 : F) * rho 3951)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3950) * (relationLc414 rho) = ((1 : F) * rho 3952)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949) * (relationLc415 rho) = ((1 : F) * rho 3953)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3952) * ((1 : F) * rho 3953) = ((1 : F) * rho 3954)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3955) * ((1 : F) + (1 : F) * rho 3954) = ((1 : F) * rho 3952 + (1 : F) * rho 3953)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3956) * ((1 : F) + (-1 : F) * rho 3954) = ((1 : F) * rho 3951 + (-1 : F) * rho 3952 + (-1 : F) * rho 3953)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 65⟩], residual := [((1 : F), 3955)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (relationLc416 rho) = ((1 : F) * rho 3957)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 65⟩], residual := [((1 : F), 3956)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (relationLc417 rho) = ((1 : F) * rho 3958)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949) * ((1 : F) * rho 3950) = ((1 : F) * rho 3959)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3949) * ((1 : F) * rho 3949) = ((1 : F) * rho 3960)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3950) * ((1 : F) * rho 3950) = ((1 : F) * rho 3961)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962) * ((-1 : F) * rho 3960 + (1 : F) * rho 3961) = ((2 : F) * rho 3959)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3963) * ((2 : F) + (1 : F) * rho 3960 + (-1 : F) * rho 3961) = ((1 : F) * rho 3960 + (1 : F) * rho 3961)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 66⟩, ⟨(1 : F), 3113, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962 + (1 : F) * rho 3963) * (relationLc418 rho) = ((1 : F) * rho 3964)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3963) * (relationLc419 rho) = ((1 : F) * rho 3965)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962) * (relationLc420 rho) = ((1 : F) * rho 3966)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3965) * ((1 : F) * rho 3966) = ((1 : F) * rho 3967)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3968) * ((1 : F) + (1 : F) * rho 3967) = ((1 : F) * rho 3965 + (1 : F) * rho 3966)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3969) * ((1 : F) + (-1 : F) * rho 3967) = ((1 : F) * rho 3964 + (-1 : F) * rho 3965 + (-1 : F) * rho 3966)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 66⟩], residual := [((1 : F), 3968)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (relationLc421 rho) = ((1 : F) * rho 3970)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 66⟩], residual := [((1 : F), 3969)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (relationLc422 rho) = ((1 : F) * rho 3971)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962) * ((1 : F) * rho 3963) = ((1 : F) * rho 3972)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3962) * ((1 : F) * rho 3962) = ((1 : F) * rho 3973)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3963) * ((1 : F) * rho 3963) = ((1 : F) * rho 3974)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((-1 : F) * rho 3973 + (1 : F) * rho 3974) = ((2 : F) * rho 3972)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3976) * ((2 : F) + (1 : F) * rho 3973 + (-1 : F) * rho 3974) = ((1 : F) * rho 3973 + (1 : F) * rho 3974)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 67⟩, ⟨(1 : F), 3113, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975 + (1 : F) * rho 3976) * (relationLc423 rho) = ((1 : F) * rho 3977)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3976) * (relationLc424 rho) = ((1 : F) * rho 3978)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * (relationLc425 rho) = ((1 : F) * rho 3979)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3978) * ((1 : F) * rho 3979) = ((1 : F) * rho 3980)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((1 : F) + (1 : F) * rho 3980) = ((1 : F) * rho 3978 + (1 : F) * rho 3979)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3982) * ((1 : F) + (-1 : F) * rho 3980) = ((1 : F) * rho 3977 + (-1 : F) * rho 3978 + (-1 : F) * rho 3979)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 67⟩], residual := [((1 : F), 3981)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (relationLc426 rho) = ((1 : F) * rho 3983)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 67⟩], residual := [((1 : F), 3982)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (relationLc427 rho) = ((1 : F) * rho 3984)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) * rho 3976) = ((1 : F) * rho 3985)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) * rho 3975) = ((1 : F) * rho 3986)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3976) * ((1 : F) * rho 3976) = ((1 : F) * rho 3987)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988) * ((-1 : F) * rho 3986 + (1 : F) * rho 3987) = ((2 : F) * rho 3985)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3989) * ((2 : F) + (1 : F) * rho 3986 + (-1 : F) * rho 3987) = ((1 : F) * rho 3986 + (1 : F) * rho 3987)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 68⟩, ⟨(1 : F), 3113, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988 + (1 : F) * rho 3989) * (relationLc428 rho) = ((1 : F) * rho 3990)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3989) * (relationLc429 rho) = ((1 : F) * rho 3991)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988) * (relationLc430 rho) = ((1 : F) * rho 3992)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3991) * ((1 : F) * rho 3992) = ((1 : F) * rho 3993)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3994) * ((1 : F) + (1 : F) * rho 3993) = ((1 : F) * rho 3991 + (1 : F) * rho 3992)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3995) * ((1 : F) + (-1 : F) * rho 3993) = ((1 : F) * rho 3990 + (-1 : F) * rho 3991 + (-1 : F) * rho 3992)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 68⟩], residual := [((1 : F), 3994)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (relationLc431 rho) = ((1 : F) * rho 3996)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 68⟩], residual := [((1 : F), 3995)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (relationLc432 rho) = ((1 : F) * rho 3997)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988) * ((1 : F) * rho 3989) = ((1 : F) * rho 3998)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3988) * ((1 : F) * rho 3988) = ((1 : F) * rho 3999)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3989) * ((1 : F) * rho 3989) = ((1 : F) * rho 4000)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001) * ((-1 : F) * rho 3999 + (1 : F) * rho 4000) = ((2 : F) * rho 3998)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4002) * ((2 : F) + (1 : F) * rho 3999 + (-1 : F) * rho 4000) = ((1 : F) * rho 3999 + (1 : F) * rho 4000)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 69⟩, ⟨(1 : F), 3113, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001 + (1 : F) * rho 4002) * (relationLc433 rho) = ((1 : F) * rho 4003)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4002) * (relationLc434 rho) = ((1 : F) * rho 4004)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001) * (relationLc435 rho) = ((1 : F) * rho 4005)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4004) * ((1 : F) * rho 4005) = ((1 : F) * rho 4006)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((1 : F) + (1 : F) * rho 4006) = ((1 : F) * rho 4004 + (1 : F) * rho 4005)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) + (-1 : F) * rho 4006) = ((1 : F) * rho 4003 + (-1 : F) * rho 4004 + (-1 : F) * rho 4005)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 69⟩], residual := [((1 : F), 4007)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (relationLc436 rho) = ((1 : F) * rho 4009)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 69⟩], residual := [((1 : F), 4008)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (relationLc437 rho) = ((1 : F) * rho 4010)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001) * ((1 : F) * rho 4002) = ((1 : F) * rho 4011)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4001) * ((1 : F) * rho 4001) = ((1 : F) * rho 4012)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4002) * ((1 : F) * rho 4002) = ((1 : F) * rho 4013)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((-1 : F) * rho 4012 + (1 : F) * rho 4013) = ((2 : F) * rho 4011)

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4015) * ((2 : F) + (1 : F) * rho 4012 + (-1 : F) * rho 4013) = ((1 : F) * rho 4012 + (1 : F) * rho 4013)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 70⟩, ⟨(1 : F), 3113, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014 + (1 : F) * rho 4015) * (relationLc438 rho) = ((1 : F) * rho 4016)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4015) * (relationLc439 rho) = ((1 : F) * rho 4017)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * (relationLc440 rho) = ((1 : F) * rho 4018)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4017) * ((1 : F) * rho 4018) = ((1 : F) * rho 4019)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) + (1 : F) * rho 4019) = ((1 : F) * rho 4017 + (1 : F) * rho 4018)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4021) * ((1 : F) + (-1 : F) * rho 4019) = ((1 : F) * rho 4016 + (-1 : F) * rho 4017 + (-1 : F) * rho 4018)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 70⟩], residual := [((1 : F), 4020)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (relationLc441 rho) = ((1 : F) * rho 4022)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 70⟩], residual := [((1 : F), 4021)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (relationLc442 rho) = ((1 : F) * rho 4023)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((1 : F) * rho 4015) = ((1 : F) * rho 4024)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((1 : F) * rho 4014) = ((1 : F) * rho 4025)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4015) * ((1 : F) * rho 4015) = ((1 : F) * rho 4026)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027) * ((-1 : F) * rho 4025 + (1 : F) * rho 4026) = ((2 : F) * rho 4024)

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4028) * ((2 : F) + (1 : F) * rho 4025 + (-1 : F) * rho 4026) = ((1 : F) * rho 4025 + (1 : F) * rho 4026)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 71⟩, ⟨(1 : F), 3113, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027 + (1 : F) * rho 4028) * (relationLc443 rho) = ((1 : F) * rho 4029)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4028) * (relationLc444 rho) = ((1 : F) * rho 4030)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027) * (relationLc445 rho) = ((1 : F) * rho 4031)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4030) * ((1 : F) * rho 4031) = ((1 : F) * rho 4032)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4033) * ((1 : F) + (1 : F) * rho 4032) = ((1 : F) * rho 4030 + (1 : F) * rho 4031)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4034) * ((1 : F) + (-1 : F) * rho 4032) = ((1 : F) * rho 4029 + (-1 : F) * rho 4030 + (-1 : F) * rho 4031)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 71⟩], residual := [((1 : F), 4033)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (relationLc446 rho) = ((1 : F) * rho 4035)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 71⟩], residual := [((1 : F), 4034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (relationLc447 rho) = ((1 : F) * rho 4036)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027) * ((1 : F) * rho 4028) = ((1 : F) * rho 4037)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4027) * ((1 : F) * rho 4027) = ((1 : F) * rho 4038)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4028) * ((1 : F) * rho 4028) = ((1 : F) * rho 4039)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((-1 : F) * rho 4038 + (1 : F) * rho 4039) = ((2 : F) * rho 4037)

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((2 : F) + (1 : F) * rho 4038 + (-1 : F) * rho 4039) = ((1 : F) * rho 4038 + (1 : F) * rho 4039)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 72⟩, ⟨(1 : F), 3113, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040 + (1 : F) * rho 4041) * (relationLc448 rho) = ((1 : F) * rho 4042)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * (relationLc449 rho) = ((1 : F) * rho 4043)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * (relationLc450 rho) = ((1 : F) * rho 4044)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4043) * ((1 : F) * rho 4044) = ((1 : F) * rho 4045)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) + (1 : F) * rho 4045) = ((1 : F) * rho 4043 + (1 : F) * rho 4044)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((1 : F) + (-1 : F) * rho 4045) = ((1 : F) * rho 4042 + (-1 : F) * rho 4043 + (-1 : F) * rho 4044)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 72⟩], residual := [((1 : F), 4046)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (relationLc451 rho) = ((1 : F) * rho 4048)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 72⟩], residual := [((1 : F), 4047)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (relationLc452 rho) = ((1 : F) * rho 4049)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((1 : F) * rho 4041) = ((1 : F) * rho 4050)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((1 : F) * rho 4040) = ((1 : F) * rho 4051)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((1 : F) * rho 4041) = ((1 : F) * rho 4052)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((-1 : F) * rho 4051 + (1 : F) * rho 4052) = ((2 : F) * rho 4050)

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4054) * ((2 : F) + (1 : F) * rho 4051 + (-1 : F) * rho 4052) = ((1 : F) * rho 4051 + (1 : F) * rho 4052)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 73⟩, ⟨(1 : F), 3113, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053 + (1 : F) * rho 4054) * (relationLc453 rho) = ((1 : F) * rho 4055)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4054) * (relationLc454 rho) = ((1 : F) * rho 4056)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * (relationLc455 rho) = ((1 : F) * rho 4057)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4056) * ((1 : F) * rho 4057) = ((1 : F) * rho 4058)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4059) * ((1 : F) + (1 : F) * rho 4058) = ((1 : F) * rho 4056 + (1 : F) * rho 4057)

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4060) * ((1 : F) + (-1 : F) * rho 4058) = ((1 : F) * rho 4055 + (-1 : F) * rho 4056 + (-1 : F) * rho 4057)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 73⟩], residual := [((1 : F), 4059)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (relationLc456 rho) = ((1 : F) * rho 4061)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 73⟩], residual := [((1 : F), 4060)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (relationLc457 rho) = ((1 : F) * rho 4062)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((1 : F) * rho 4054) = ((1 : F) * rho 4063)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((1 : F) * rho 4053) = ((1 : F) * rho 4064)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4054) * ((1 : F) * rho 4054) = ((1 : F) * rho 4065)

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066) * ((-1 : F) * rho 4064 + (1 : F) * rho 4065) = ((2 : F) * rho 4063)

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4067) * ((2 : F) + (1 : F) * rho 4064 + (-1 : F) * rho 4065) = ((1 : F) * rho 4064 + (1 : F) * rho 4065)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 74⟩, ⟨(1 : F), 3113, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066 + (1 : F) * rho 4067) * (relationLc458 rho) = ((1 : F) * rho 4068)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4067) * (relationLc459 rho) = ((1 : F) * rho 4069)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066) * (relationLc460 rho) = ((1 : F) * rho 4070)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4069) * ((1 : F) * rho 4070) = ((1 : F) * rho 4071)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4072) * ((1 : F) + (1 : F) * rho 4071) = ((1 : F) * rho 4069 + (1 : F) * rho 4070)

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((1 : F) + (-1 : F) * rho 4071) = ((1 : F) * rho 4068 + (-1 : F) * rho 4069 + (-1 : F) * rho 4070)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 74⟩], residual := [((1 : F), 4072)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1958) * (relationLc461 rho) = ((1 : F) * rho 4074)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 74⟩], residual := [((1 : F), 4073)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1958) * (relationLc462 rho) = ((1 : F) * rho 4075)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066) * ((1 : F) * rho 4067) = ((1 : F) * rho 4076)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4066) * ((1 : F) * rho 4066) = ((1 : F) * rho 4077)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4067) * ((1 : F) * rho 4067) = ((1 : F) * rho 4078)

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((-1 : F) * rho 4077 + (1 : F) * rho 4078) = ((2 : F) * rho 4076)

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4080) * ((2 : F) + (1 : F) * rho 4077 + (-1 : F) * rho 4078) = ((1 : F) * rho 4077 + (1 : F) * rho 4078)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 75⟩, ⟨(1 : F), 3113, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079 + (1 : F) * rho 4080) * (relationLc463 rho) = ((1 : F) * rho 4081)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4080) * (relationLc464 rho) = ((1 : F) * rho 4082)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * (relationLc465 rho) = ((1 : F) * rho 4083)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4082) * ((1 : F) * rho 4083) = ((1 : F) * rho 4084)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) + (1 : F) * rho 4084) = ((1 : F) * rho 4082 + (1 : F) * rho 4083)

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((1 : F) + (-1 : F) * rho 4084) = ((1 : F) * rho 4081 + (-1 : F) * rho 4082 + (-1 : F) * rho 4083)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 75⟩], residual := [((1 : F), 4085)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1959) * (relationLc466 rho) = ((1 : F) * rho 4087)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 75⟩], residual := [((1 : F), 4086)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1959) * (relationLc467 rho) = ((1 : F) * rho 4088)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((1 : F) * rho 4080) = ((1 : F) * rho 4089)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((1 : F) * rho 4079) = ((1 : F) * rho 4090)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4080) * ((1 : F) * rho 4080) = ((1 : F) * rho 4091)

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092) * ((-1 : F) * rho 4090 + (1 : F) * rho 4091) = ((2 : F) * rho 4089)

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4093) * ((2 : F) + (1 : F) * rho 4090 + (-1 : F) * rho 4091) = ((1 : F) * rho 4090 + (1 : F) * rho 4091)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 76⟩, ⟨(1 : F), 3113, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092 + (1 : F) * rho 4093) * (relationLc468 rho) = ((1 : F) * rho 4094)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4093) * (relationLc469 rho) = ((1 : F) * rho 4095)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092) * (relationLc470 rho) = ((1 : F) * rho 4096)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4095) * ((1 : F) * rho 4096) = ((1 : F) * rho 4097)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4098) * ((1 : F) + (1 : F) * rho 4097) = ((1 : F) * rho 4095 + (1 : F) * rho 4096)

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4099) * ((1 : F) + (-1 : F) * rho 4097) = ((1 : F) * rho 4094 + (-1 : F) * rho 4095 + (-1 : F) * rho 4096)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 76⟩], residual := [((1 : F), 4098)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * (relationLc471 rho) = ((1 : F) * rho 4100)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 76⟩], residual := [((1 : F), 4099)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * (relationLc472 rho) = ((1 : F) * rho 4101)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092) * ((1 : F) * rho 4093) = ((1 : F) * rho 4102)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4092) * ((1 : F) * rho 4092) = ((1 : F) * rho 4103)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4093) * ((1 : F) * rho 4093) = ((1 : F) * rho 4104)

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105) * ((-1 : F) * rho 4103 + (1 : F) * rho 4104) = ((2 : F) * rho 4102)

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4106) * ((2 : F) + (1 : F) * rho 4103 + (-1 : F) * rho 4104) = ((1 : F) * rho 4103 + (1 : F) * rho 4104)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 77⟩, ⟨(1 : F), 3113, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105 + (1 : F) * rho 4106) * (relationLc473 rho) = ((1 : F) * rho 4107)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4106) * (relationLc474 rho) = ((1 : F) * rho 4108)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105) * (relationLc475 rho) = ((1 : F) * rho 4109)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4108) * ((1 : F) * rho 4109) = ((1 : F) * rho 4110)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4111) * ((1 : F) + (1 : F) * rho 4110) = ((1 : F) * rho 4108 + (1 : F) * rho 4109)

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((1 : F) + (-1 : F) * rho 4110) = ((1 : F) * rho 4107 + (-1 : F) * rho 4108 + (-1 : F) * rho 4109)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 77⟩], residual := [((1 : F), 4111)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * (relationLc476 rho) = ((1 : F) * rho 4113)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 77⟩], residual := [((1 : F), 4112)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * (relationLc477 rho) = ((1 : F) * rho 4114)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105) * ((1 : F) * rho 4106) = ((1 : F) * rho 4115)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4105) * ((1 : F) * rho 4105) = ((1 : F) * rho 4116)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4106) * ((1 : F) * rho 4106) = ((1 : F) * rho 4117)

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((-1 : F) * rho 4116 + (1 : F) * rho 4117) = ((2 : F) * rho 4115)

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4119) * ((2 : F) + (1 : F) * rho 4116 + (-1 : F) * rho 4117) = ((1 : F) * rho 4116 + (1 : F) * rho 4117)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 78⟩, ⟨(1 : F), 3113, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118 + (1 : F) * rho 4119) * (relationLc478 rho) = ((1 : F) * rho 4120)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4119) * (relationLc479 rho) = ((1 : F) * rho 4121)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * (relationLc480 rho) = ((1 : F) * rho 4122)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4121) * ((1 : F) * rho 4122) = ((1 : F) * rho 4123)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4124) * ((1 : F) + (1 : F) * rho 4123) = ((1 : F) * rho 4121 + (1 : F) * rho 4122)

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4125) * ((1 : F) + (-1 : F) * rho 4123) = ((1 : F) * rho 4120 + (-1 : F) * rho 4121 + (-1 : F) * rho 4122)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 78⟩], residual := [((1 : F), 4124)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1962) * (relationLc481 rho) = ((1 : F) * rho 4126)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 78⟩], residual := [((1 : F), 4125)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1962) * (relationLc482 rho) = ((1 : F) * rho 4127)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((1 : F) * rho 4119) = ((1 : F) * rho 4128)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((1 : F) * rho 4118) = ((1 : F) * rho 4129)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4119) * ((1 : F) * rho 4119) = ((1 : F) * rho 4130)

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131) * ((-1 : F) * rho 4129 + (1 : F) * rho 4130) = ((2 : F) * rho 4128)

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4132) * ((2 : F) + (1 : F) * rho 4129 + (-1 : F) * rho 4130) = ((1 : F) * rho 4129 + (1 : F) * rho 4130)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 79⟩, ⟨(1 : F), 3113, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131 + (1 : F) * rho 4132) * (relationLc483 rho) = ((1 : F) * rho 4133)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4132) * (relationLc484 rho) = ((1 : F) * rho 4134)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131) * (relationLc485 rho) = ((1 : F) * rho 4135)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4134) * ((1 : F) * rho 4135) = ((1 : F) * rho 4136)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4137) * ((1 : F) + (1 : F) * rho 4136) = ((1 : F) * rho 4134 + (1 : F) * rho 4135)

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4138) * ((1 : F) + (-1 : F) * rho 4136) = ((1 : F) * rho 4133 + (-1 : F) * rho 4134 + (-1 : F) * rho 4135)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 3112, 13, 79⟩], residual := [((1 : F), 4137)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1963) * (relationLc486 rho) = ((1 : F) * rho 4139)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 3113, 13, 79⟩], residual := [((1 : F), 4138)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1963) * (relationLc487 rho) = ((1 : F) * rho 4140)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131) * ((1 : F) * rho 4132) = ((1 : F) * rho 4141)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4131) * ((1 : F) * rho 4131) = ((1 : F) * rho 4142)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4132) * ((1 : F) * rho 4132) = ((1 : F) * rho 4143)

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144) * ((-1 : F) * rho 4142 + (1 : F) * rho 4143) = ((2 : F) * rho 4141)

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4145) * ((2 : F) + (1 : F) * rho 4142 + (-1 : F) * rho 4143) = ((1 : F) * rho 4142 + (1 : F) * rho 4143)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3112, 13, 80⟩, ⟨(1 : F), 3113, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144 + (1 : F) * rho 4145) * (relationLc488 rho) = ((1 : F) * rho 4146)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3112, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4145) * (relationLc489 rho) = ((1 : F) * rho 4147)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 3113, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4144) * (relationLc490 rho) = ((1 : F) * rho 4148)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4147) * ((1 : F) * rho 4148) = ((1 : F) * rho 4149)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
