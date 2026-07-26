import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs73

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2648) * ((1 : F) * rho 2648) = ((1 : F) * rho 2659)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660) * ((-1 : F) * rho 2658 + (1 : F) * rho 2659) = ((2 : F) * rho 2657)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2661) * ((2 : F) + (1 : F) * rho 2658 + (-1 : F) * rho 2659) = ((1 : F) * rho 2658 + (1 : F) * rho 2659)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 35⟩, ⟨(1 : F), 2226, 13, 34⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660 + (1 : F) * rho 2661) * (relationLc261 rho) = ((1 : F) * rho 2662)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 34⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2661) * (relationLc262 rho) = ((1 : F) * rho 2663)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660) * (relationLc263 rho) = ((1 : F) * rho 2664)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2663) * ((1 : F) * rho 2664) = ((1 : F) * rho 2665)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2666) * ((1 : F) + (1 : F) * rho 2665) = ((1 : F) * rho 2663 + (1 : F) * rho 2664)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2667) * ((1 : F) + (-1 : F) * rho 2665) = ((1 : F) * rho 2662 + (-1 : F) * rho 2663 + (-1 : F) * rho 2664)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 34⟩], residual := [((-1 : F), 2212), ((1 : F), 2666)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1018) * (relationLc264 rho) = ((1 : F) * rho 2668)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 35⟩], residual := [((1 : F), 2667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1018) * (relationLc265 rho) = ((1 : F) * rho 2669)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660) * ((1 : F) * rho 2661) = ((1 : F) * rho 2670)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660) * ((1 : F) * rho 2660) = ((1 : F) * rho 2671)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2661) * ((1 : F) * rho 2661) = ((1 : F) * rho 2672)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * ((-1 : F) * rho 2671 + (1 : F) * rho 2672) = ((2 : F) * rho 2670)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((2 : F) + (1 : F) * rho 2671 + (-1 : F) * rho 2672) = ((1 : F) * rho 2671 + (1 : F) * rho 2672)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 36⟩, ⟨(1 : F), 2226, 13, 35⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673 + (1 : F) * rho 2674) * (relationLc266 rho) = ((1 : F) * rho 2675)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 35⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * (relationLc267 rho) = ((1 : F) * rho 2676)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * (relationLc268 rho) = ((1 : F) * rho 2677)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2676) * ((1 : F) * rho 2677) = ((1 : F) * rho 2678)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2679) * ((1 : F) + (1 : F) * rho 2678) = ((1 : F) * rho 2676 + (1 : F) * rho 2677)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2680) * ((1 : F) + (-1 : F) * rho 2678) = ((1 : F) * rho 2675 + (-1 : F) * rho 2676 + (-1 : F) * rho 2677)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 35⟩], residual := [((-1 : F), 2212), ((1 : F), 2679)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1019) * (relationLc269 rho) = ((1 : F) * rho 2681)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 36⟩], residual := [((1 : F), 2680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1019) * (relationLc270 rho) = ((1 : F) * rho 2682)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * ((1 : F) * rho 2674) = ((1 : F) * rho 2683)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * ((1 : F) * rho 2673) = ((1 : F) * rho 2684)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((1 : F) * rho 2674) = ((1 : F) * rho 2685)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * ((-1 : F) * rho 2684 + (1 : F) * rho 2685) = ((2 : F) * rho 2683)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2687) * ((2 : F) + (1 : F) * rho 2684 + (-1 : F) * rho 2685) = ((1 : F) * rho 2684 + (1 : F) * rho 2685)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 37⟩, ⟨(1 : F), 2226, 13, 36⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686 + (1 : F) * rho 2687) * (relationLc271 rho) = ((1 : F) * rho 2688)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 36⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2687) * (relationLc272 rho) = ((1 : F) * rho 2689)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * (relationLc273 rho) = ((1 : F) * rho 2690)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2689) * ((1 : F) * rho 2690) = ((1 : F) * rho 2691)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2692) * ((1 : F) + (1 : F) * rho 2691) = ((1 : F) * rho 2689 + (1 : F) * rho 2690)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2693) * ((1 : F) + (-1 : F) * rho 2691) = ((1 : F) * rho 2688 + (-1 : F) * rho 2689 + (-1 : F) * rho 2690)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 36⟩], residual := [((-1 : F), 2212), ((1 : F), 2692)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1020) * (relationLc274 rho) = ((1 : F) * rho 2694)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 37⟩], residual := [((1 : F), 2693)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1020) * (relationLc275 rho) = ((1 : F) * rho 2695)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * ((1 : F) * rho 2687) = ((1 : F) * rho 2696)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * ((1 : F) * rho 2686) = ((1 : F) * rho 2697)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2687) * ((1 : F) * rho 2687) = ((1 : F) * rho 2698)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * ((-1 : F) * rho 2697 + (1 : F) * rho 2698) = ((2 : F) * rho 2696)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * ((2 : F) + (1 : F) * rho 2697 + (-1 : F) * rho 2698) = ((1 : F) * rho 2697 + (1 : F) * rho 2698)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 38⟩, ⟨(1 : F), 2226, 13, 37⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699 + (1 : F) * rho 2700) * (relationLc276 rho) = ((1 : F) * rho 2701)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 37⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * (relationLc277 rho) = ((1 : F) * rho 2702)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * (relationLc278 rho) = ((1 : F) * rho 2703)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2702) * ((1 : F) * rho 2703) = ((1 : F) * rho 2704)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2705) * ((1 : F) + (1 : F) * rho 2704) = ((1 : F) * rho 2702 + (1 : F) * rho 2703)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2706) * ((1 : F) + (-1 : F) * rho 2704) = ((1 : F) * rho 2701 + (-1 : F) * rho 2702 + (-1 : F) * rho 2703)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 37⟩], residual := [((-1 : F), 2212), ((1 : F), 2705)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1021) * (relationLc279 rho) = ((1 : F) * rho 2707)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 38⟩], residual := [((1 : F), 2706)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1021) * (relationLc280 rho) = ((1 : F) * rho 2708)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * ((1 : F) * rho 2700) = ((1 : F) * rho 2709)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * ((1 : F) * rho 2699) = ((1 : F) * rho 2710)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * ((1 : F) * rho 2700) = ((1 : F) * rho 2711)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2712) * ((-1 : F) * rho 2710 + (1 : F) * rho 2711) = ((2 : F) * rho 2709)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2713) * ((2 : F) + (1 : F) * rho 2710 + (-1 : F) * rho 2711) = ((1 : F) * rho 2710 + (1 : F) * rho 2711)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 39⟩, ⟨(1 : F), 2226, 13, 38⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2712 + (1 : F) * rho 2713) * (relationLc281 rho) = ((1 : F) * rho 2714)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 38⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2713) * (relationLc282 rho) = ((1 : F) * rho 2715)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2712) * (relationLc283 rho) = ((1 : F) * rho 2716)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2715) * ((1 : F) * rho 2716) = ((1 : F) * rho 2717)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2718) * ((1 : F) + (1 : F) * rho 2717) = ((1 : F) * rho 2715 + (1 : F) * rho 2716)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2719) * ((1 : F) + (-1 : F) * rho 2717) = ((1 : F) * rho 2714 + (-1 : F) * rho 2715 + (-1 : F) * rho 2716)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 38⟩], residual := [((-1 : F), 2212), ((1 : F), 2718)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1022) * (relationLc284 rho) = ((1 : F) * rho 2720)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 39⟩], residual := [((1 : F), 2719)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1022) * (relationLc285 rho) = ((1 : F) * rho 2721)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2712) * ((1 : F) * rho 2713) = ((1 : F) * rho 2722)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2712) * ((1 : F) * rho 2712) = ((1 : F) * rho 2723)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2713) * ((1 : F) * rho 2713) = ((1 : F) * rho 2724)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * ((-1 : F) * rho 2723 + (1 : F) * rho 2724) = ((2 : F) * rho 2722)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2726) * ((2 : F) + (1 : F) * rho 2723 + (-1 : F) * rho 2724) = ((1 : F) * rho 2723 + (1 : F) * rho 2724)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 40⟩, ⟨(1 : F), 2226, 13, 39⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725 + (1 : F) * rho 2726) * (relationLc286 rho) = ((1 : F) * rho 2727)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 39⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2726) * (relationLc287 rho) = ((1 : F) * rho 2728)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * (relationLc288 rho) = ((1 : F) * rho 2729)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2728) * ((1 : F) * rho 2729) = ((1 : F) * rho 2730)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2731) * ((1 : F) + (1 : F) * rho 2730) = ((1 : F) * rho 2728 + (1 : F) * rho 2729)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2732) * ((1 : F) + (-1 : F) * rho 2730) = ((1 : F) * rho 2727 + (-1 : F) * rho 2728 + (-1 : F) * rho 2729)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
