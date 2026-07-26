import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs74

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 39⟩], residual := [((-1 : F), 2212), ((1 : F), 2731)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1023) * (relationLc289 rho) = ((1 : F) * rho 2733)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 40⟩], residual := [((1 : F), 2732)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1023) * (relationLc290 rho) = ((1 : F) * rho 2734)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * ((1 : F) * rho 2726) = ((1 : F) * rho 2735)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * ((1 : F) * rho 2725) = ((1 : F) * rho 2736)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2726) * ((1 : F) * rho 2726) = ((1 : F) * rho 2737)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * ((-1 : F) * rho 2736 + (1 : F) * rho 2737) = ((2 : F) * rho 2735)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2739) * ((2 : F) + (1 : F) * rho 2736 + (-1 : F) * rho 2737) = ((1 : F) * rho 2736 + (1 : F) * rho 2737)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 41⟩, ⟨(1 : F), 2226, 13, 40⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738 + (1 : F) * rho 2739) * (relationLc291 rho) = ((1 : F) * rho 2740)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 40⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2739) * (relationLc292 rho) = ((1 : F) * rho 2741)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * (relationLc293 rho) = ((1 : F) * rho 2742)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2741) * ((1 : F) * rho 2742) = ((1 : F) * rho 2743)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2744) * ((1 : F) + (1 : F) * rho 2743) = ((1 : F) * rho 2741 + (1 : F) * rho 2742)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2745) * ((1 : F) + (-1 : F) * rho 2743) = ((1 : F) * rho 2740 + (-1 : F) * rho 2741 + (-1 : F) * rho 2742)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 40⟩], residual := [((-1 : F), 2212), ((1 : F), 2744)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1024) * (relationLc294 rho) = ((1 : F) * rho 2746)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 41⟩], residual := [((1 : F), 2745)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1024) * (relationLc295 rho) = ((1 : F) * rho 2747)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * ((1 : F) * rho 2739) = ((1 : F) * rho 2748)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2738) * ((1 : F) * rho 2738) = ((1 : F) * rho 2749)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2739) * ((1 : F) * rho 2739) = ((1 : F) * rho 2750)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751) * ((-1 : F) * rho 2749 + (1 : F) * rho 2750) = ((2 : F) * rho 2748)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2752) * ((2 : F) + (1 : F) * rho 2749 + (-1 : F) * rho 2750) = ((1 : F) * rho 2749 + (1 : F) * rho 2750)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 42⟩, ⟨(1 : F), 2226, 13, 41⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751 + (1 : F) * rho 2752) * (relationLc296 rho) = ((1 : F) * rho 2753)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 41⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2752) * (relationLc297 rho) = ((1 : F) * rho 2754)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751) * (relationLc298 rho) = ((1 : F) * rho 2755)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2754) * ((1 : F) * rho 2755) = ((1 : F) * rho 2756)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2757) * ((1 : F) + (1 : F) * rho 2756) = ((1 : F) * rho 2754 + (1 : F) * rho 2755)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2758) * ((1 : F) + (-1 : F) * rho 2756) = ((1 : F) * rho 2753 + (-1 : F) * rho 2754 + (-1 : F) * rho 2755)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 41⟩], residual := [((-1 : F), 2212), ((1 : F), 2757)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1025) * (relationLc299 rho) = ((1 : F) * rho 2759)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 42⟩], residual := [((1 : F), 2758)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1025) * (relationLc300 rho) = ((1 : F) * rho 2760)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751) * ((1 : F) * rho 2752) = ((1 : F) * rho 2761)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2751) * ((1 : F) * rho 2751) = ((1 : F) * rho 2762)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2752) * ((1 : F) * rho 2752) = ((1 : F) * rho 2763)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((-1 : F) * rho 2762 + (1 : F) * rho 2763) = ((2 : F) * rho 2761)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2765) * ((2 : F) + (1 : F) * rho 2762 + (-1 : F) * rho 2763) = ((1 : F) * rho 2762 + (1 : F) * rho 2763)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 43⟩, ⟨(1 : F), 2226, 13, 42⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764 + (1 : F) * rho 2765) * (relationLc301 rho) = ((1 : F) * rho 2766)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 42⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2765) * (relationLc302 rho) = ((1 : F) * rho 2767)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * (relationLc303 rho) = ((1 : F) * rho 2768)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2767) * ((1 : F) * rho 2768) = ((1 : F) * rho 2769)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2770) * ((1 : F) + (1 : F) * rho 2769) = ((1 : F) * rho 2767 + (1 : F) * rho 2768)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2771) * ((1 : F) + (-1 : F) * rho 2769) = ((1 : F) * rho 2766 + (-1 : F) * rho 2767 + (-1 : F) * rho 2768)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 42⟩], residual := [((-1 : F), 2212), ((1 : F), 2770)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1026) * (relationLc304 rho) = ((1 : F) * rho 2772)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 43⟩], residual := [((1 : F), 2771)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1026) * (relationLc305 rho) = ((1 : F) * rho 2773)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((1 : F) * rho 2765) = ((1 : F) * rho 2774)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((1 : F) * rho 2764) = ((1 : F) * rho 2775)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2765) * ((1 : F) * rho 2765) = ((1 : F) * rho 2776)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777) * ((-1 : F) * rho 2775 + (1 : F) * rho 2776) = ((2 : F) * rho 2774)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * ((2 : F) + (1 : F) * rho 2775 + (-1 : F) * rho 2776) = ((1 : F) * rho 2775 + (1 : F) * rho 2776)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 44⟩, ⟨(1 : F), 2226, 13, 43⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777 + (1 : F) * rho 2778) * (relationLc306 rho) = ((1 : F) * rho 2779)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 43⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * (relationLc307 rho) = ((1 : F) * rho 2780)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777) * (relationLc308 rho) = ((1 : F) * rho 2781)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2780) * ((1 : F) * rho 2781) = ((1 : F) * rho 2782)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2783) * ((1 : F) + (1 : F) * rho 2782) = ((1 : F) * rho 2780 + (1 : F) * rho 2781)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((1 : F) + (-1 : F) * rho 2782) = ((1 : F) * rho 2779 + (-1 : F) * rho 2780 + (-1 : F) * rho 2781)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 43⟩], residual := [((-1 : F), 2212), ((1 : F), 2783)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1027) * (relationLc309 rho) = ((1 : F) * rho 2785)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 44⟩], residual := [((1 : F), 2784)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1027) * (relationLc310 rho) = ((1 : F) * rho 2786)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777) * ((1 : F) * rho 2778) = ((1 : F) * rho 2787)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2777) * ((1 : F) * rho 2777) = ((1 : F) * rho 2788)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * ((1 : F) * rho 2778) = ((1 : F) * rho 2789)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((-1 : F) * rho 2788 + (1 : F) * rho 2789) = ((2 : F) * rho 2787)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2791) * ((2 : F) + (1 : F) * rho 2788 + (-1 : F) * rho 2789) = ((1 : F) * rho 2788 + (1 : F) * rho 2789)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 45⟩, ⟨(1 : F), 2226, 13, 44⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790 + (1 : F) * rho 2791) * (relationLc311 rho) = ((1 : F) * rho 2792)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 44⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2791) * (relationLc312 rho) = ((1 : F) * rho 2793)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * (relationLc313 rho) = ((1 : F) * rho 2794)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2793) * ((1 : F) * rho 2794) = ((1 : F) * rho 2795)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2796) * ((1 : F) + (1 : F) * rho 2795) = ((1 : F) * rho 2793 + (1 : F) * rho 2794)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2797) * ((1 : F) + (-1 : F) * rho 2795) = ((1 : F) * rho 2792 + (-1 : F) * rho 2793 + (-1 : F) * rho 2794)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 44⟩], residual := [((-1 : F), 2212), ((1 : F), 2796)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1028) * (relationLc314 rho) = ((1 : F) * rho 2798)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 45⟩], residual := [((1 : F), 2797)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1028) * (relationLc315 rho) = ((1 : F) * rho 2799)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((1 : F) * rho 2791) = ((1 : F) * rho 2800)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((1 : F) * rho 2790) = ((1 : F) * rho 2801)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2791) * ((1 : F) * rho 2791) = ((1 : F) * rho 2802)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2803) * ((-1 : F) * rho 2801 + (1 : F) * rho 2802) = ((2 : F) * rho 2800)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2804) * ((2 : F) + (1 : F) * rho 2801 + (-1 : F) * rho 2802) = ((1 : F) * rho 2801 + (1 : F) * rho 2802)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 46⟩, ⟨(1 : F), 2226, 13, 45⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2803 + (1 : F) * rho 2804) * (relationLc316 rho) = ((1 : F) * rho 2805)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 45⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
