import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs75

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2804) * (relationLc317 rho) = ((1 : F) * rho 2806)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2803) * (relationLc318 rho) = ((1 : F) * rho 2807)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2806) * ((1 : F) * rho 2807) = ((1 : F) * rho 2808)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2809) * ((1 : F) + (1 : F) * rho 2808) = ((1 : F) * rho 2806 + (1 : F) * rho 2807)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2810) * ((1 : F) + (-1 : F) * rho 2808) = ((1 : F) * rho 2805 + (-1 : F) * rho 2806 + (-1 : F) * rho 2807)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 45⟩], residual := [((-1 : F), 2212), ((1 : F), 2809)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1029) * (relationLc319 rho) = ((1 : F) * rho 2811)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 46⟩], residual := [((1 : F), 2810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1029) * (relationLc320 rho) = ((1 : F) * rho 2812)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2803) * ((1 : F) * rho 2804) = ((1 : F) * rho 2813)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2803) * ((1 : F) * rho 2803) = ((1 : F) * rho 2814)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2804) * ((1 : F) * rho 2804) = ((1 : F) * rho 2815)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2816) * ((-1 : F) * rho 2814 + (1 : F) * rho 2815) = ((2 : F) * rho 2813)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2817) * ((2 : F) + (1 : F) * rho 2814 + (-1 : F) * rho 2815) = ((1 : F) * rho 2814 + (1 : F) * rho 2815)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 47⟩, ⟨(1 : F), 2226, 13, 46⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2816 + (1 : F) * rho 2817) * (relationLc321 rho) = ((1 : F) * rho 2818)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 46⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2817) * (relationLc322 rho) = ((1 : F) * rho 2819)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2816) * (relationLc323 rho) = ((1 : F) * rho 2820)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2819) * ((1 : F) * rho 2820) = ((1 : F) * rho 2821)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2822) * ((1 : F) + (1 : F) * rho 2821) = ((1 : F) * rho 2819 + (1 : F) * rho 2820)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2823) * ((1 : F) + (-1 : F) * rho 2821) = ((1 : F) * rho 2818 + (-1 : F) * rho 2819 + (-1 : F) * rho 2820)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 46⟩], residual := [((-1 : F), 2212), ((1 : F), 2822)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1030) * (relationLc324 rho) = ((1 : F) * rho 2824)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 47⟩], residual := [((1 : F), 2823)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1030) * (relationLc325 rho) = ((1 : F) * rho 2825)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2816) * ((1 : F) * rho 2817) = ((1 : F) * rho 2826)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2816) * ((1 : F) * rho 2816) = ((1 : F) * rho 2827)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2817) * ((1 : F) * rho 2817) = ((1 : F) * rho 2828)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2829) * ((-1 : F) * rho 2827 + (1 : F) * rho 2828) = ((2 : F) * rho 2826)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2830) * ((2 : F) + (1 : F) * rho 2827 + (-1 : F) * rho 2828) = ((1 : F) * rho 2827 + (1 : F) * rho 2828)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 48⟩, ⟨(1 : F), 2226, 13, 47⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2829 + (1 : F) * rho 2830) * (relationLc326 rho) = ((1 : F) * rho 2831)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 47⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2830) * (relationLc327 rho) = ((1 : F) * rho 2832)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2829) * (relationLc328 rho) = ((1 : F) * rho 2833)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2832) * ((1 : F) * rho 2833) = ((1 : F) * rho 2834)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2835) * ((1 : F) + (1 : F) * rho 2834) = ((1 : F) * rho 2832 + (1 : F) * rho 2833)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2836) * ((1 : F) + (-1 : F) * rho 2834) = ((1 : F) * rho 2831 + (-1 : F) * rho 2832 + (-1 : F) * rho 2833)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 47⟩], residual := [((-1 : F), 2212), ((1 : F), 2835)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1031) * (relationLc329 rho) = ((1 : F) * rho 2837)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 48⟩], residual := [((1 : F), 2836)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1031) * (relationLc330 rho) = ((1 : F) * rho 2838)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2829) * ((1 : F) * rho 2830) = ((1 : F) * rho 2839)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2829) * ((1 : F) * rho 2829) = ((1 : F) * rho 2840)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2830) * ((1 : F) * rho 2830) = ((1 : F) * rho 2841)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * ((-1 : F) * rho 2840 + (1 : F) * rho 2841) = ((2 : F) * rho 2839)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2843) * ((2 : F) + (1 : F) * rho 2840 + (-1 : F) * rho 2841) = ((1 : F) * rho 2840 + (1 : F) * rho 2841)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 49⟩, ⟨(1 : F), 2226, 13, 48⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842 + (1 : F) * rho 2843) * (relationLc331 rho) = ((1 : F) * rho 2844)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 48⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2843) * (relationLc332 rho) = ((1 : F) * rho 2845)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * (relationLc333 rho) = ((1 : F) * rho 2846)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2845) * ((1 : F) * rho 2846) = ((1 : F) * rho 2847)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2848) * ((1 : F) + (1 : F) * rho 2847) = ((1 : F) * rho 2845 + (1 : F) * rho 2846)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2849) * ((1 : F) + (-1 : F) * rho 2847) = ((1 : F) * rho 2844 + (-1 : F) * rho 2845 + (-1 : F) * rho 2846)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 48⟩], residual := [((-1 : F), 2212), ((1 : F), 2848)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1032) * (relationLc334 rho) = ((1 : F) * rho 2850)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 49⟩], residual := [((1 : F), 2849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1032) * (relationLc335 rho) = ((1 : F) * rho 2851)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * ((1 : F) * rho 2843) = ((1 : F) * rho 2852)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * ((1 : F) * rho 2842) = ((1 : F) * rho 2853)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2843) * ((1 : F) * rho 2843) = ((1 : F) * rho 2854)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855) * ((-1 : F) * rho 2853 + (1 : F) * rho 2854) = ((2 : F) * rho 2852)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2856) * ((2 : F) + (1 : F) * rho 2853 + (-1 : F) * rho 2854) = ((1 : F) * rho 2853 + (1 : F) * rho 2854)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 50⟩, ⟨(1 : F), 2226, 13, 49⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855 + (1 : F) * rho 2856) * (relationLc336 rho) = ((1 : F) * rho 2857)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 49⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2856) * (relationLc337 rho) = ((1 : F) * rho 2858)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855) * (relationLc338 rho) = ((1 : F) * rho 2859)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2858) * ((1 : F) * rho 2859) = ((1 : F) * rho 2860)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2861) * ((1 : F) + (1 : F) * rho 2860) = ((1 : F) * rho 2858 + (1 : F) * rho 2859)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2862) * ((1 : F) + (-1 : F) * rho 2860) = ((1 : F) * rho 2857 + (-1 : F) * rho 2858 + (-1 : F) * rho 2859)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 49⟩], residual := [((-1 : F), 2212), ((1 : F), 2861)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1033) * (relationLc339 rho) = ((1 : F) * rho 2863)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 50⟩], residual := [((1 : F), 2862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1033) * (relationLc340 rho) = ((1 : F) * rho 2864)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855) * ((1 : F) * rho 2856) = ((1 : F) * rho 2865)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855) * ((1 : F) * rho 2855) = ((1 : F) * rho 2866)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2856) * ((1 : F) * rho 2856) = ((1 : F) * rho 2867)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2868) * ((-1 : F) * rho 2866 + (1 : F) * rho 2867) = ((2 : F) * rho 2865)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2869) * ((2 : F) + (1 : F) * rho 2866 + (-1 : F) * rho 2867) = ((1 : F) * rho 2866 + (1 : F) * rho 2867)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 51⟩, ⟨(1 : F), 2226, 13, 50⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2868 + (1 : F) * rho 2869) * (relationLc341 rho) = ((1 : F) * rho 2870)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 50⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2869) * (relationLc342 rho) = ((1 : F) * rho 2871)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2868) * (relationLc343 rho) = ((1 : F) * rho 2872)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2871) * ((1 : F) * rho 2872) = ((1 : F) * rho 2873)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2874) * ((1 : F) + (1 : F) * rho 2873) = ((1 : F) * rho 2871 + (1 : F) * rho 2872)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2875) * ((1 : F) + (-1 : F) * rho 2873) = ((1 : F) * rho 2870 + (-1 : F) * rho 2871 + (-1 : F) * rho 2872)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 50⟩], residual := [((-1 : F), 2212), ((1 : F), 2874)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1034) * (relationLc344 rho) = ((1 : F) * rho 2876)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 51⟩], residual := [((1 : F), 2875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1034) * (relationLc345 rho) = ((1 : F) * rho 2877)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2868) * ((1 : F) * rho 2869) = ((1 : F) * rho 2878)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2868) * ((1 : F) * rho 2868) = ((1 : F) * rho 2879)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2869) * ((1 : F) * rho 2869) = ((1 : F) * rho 2880)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
