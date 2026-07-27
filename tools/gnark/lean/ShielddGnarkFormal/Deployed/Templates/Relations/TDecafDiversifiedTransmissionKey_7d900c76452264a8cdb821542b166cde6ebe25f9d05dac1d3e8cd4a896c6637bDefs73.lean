import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs72

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 28⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2583) * (relationLc232 rho) = ((1 : F) * rho 2585)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2582) * (relationLc233 rho) = ((1 : F) * rho 2586)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2585) * ((1 : F) * rho 2586) = ((1 : F) * rho 2587)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2588) * ((1 : F) + (1 : F) * rho 2587) = ((1 : F) * rho 2585 + (1 : F) * rho 2586)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2589) * ((1 : F) + (-1 : F) * rho 2587) = ((1 : F) * rho 2584 + (-1 : F) * rho 2585 + (-1 : F) * rho 2586)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 28⟩], residual := [((-1 : F), 2212), ((1 : F), 2588)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1012) * (relationLc234 rho) = ((1 : F) * rho 2590)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 29⟩], residual := [((1 : F), 2589)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1012) * (relationLc235 rho) = ((1 : F) * rho 2591)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2582) * ((1 : F) * rho 2583) = ((1 : F) * rho 2592)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2582) * ((1 : F) * rho 2582) = ((1 : F) * rho 2593)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2583) * ((1 : F) * rho 2583) = ((1 : F) * rho 2594)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * ((-1 : F) * rho 2593 + (1 : F) * rho 2594) = ((2 : F) * rho 2592)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2596) * ((2 : F) + (1 : F) * rho 2593 + (-1 : F) * rho 2594) = ((1 : F) * rho 2593 + (1 : F) * rho 2594)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 30⟩, ⟨(1 : F), 2226, 13, 29⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595 + (1 : F) * rho 2596) * (relationLc236 rho) = ((1 : F) * rho 2597)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 29⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2596) * (relationLc237 rho) = ((1 : F) * rho 2598)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * (relationLc238 rho) = ((1 : F) * rho 2599)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2598) * ((1 : F) * rho 2599) = ((1 : F) * rho 2600)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2601) * ((1 : F) + (1 : F) * rho 2600) = ((1 : F) * rho 2598 + (1 : F) * rho 2599)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2602) * ((1 : F) + (-1 : F) * rho 2600) = ((1 : F) * rho 2597 + (-1 : F) * rho 2598 + (-1 : F) * rho 2599)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 29⟩], residual := [((-1 : F), 2212), ((1 : F), 2601)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1013) * (relationLc239 rho) = ((1 : F) * rho 2603)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 30⟩], residual := [((1 : F), 2602)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1013) * (relationLc240 rho) = ((1 : F) * rho 2604)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * ((1 : F) * rho 2596) = ((1 : F) * rho 2605)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * ((1 : F) * rho 2595) = ((1 : F) * rho 2606)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2596) * ((1 : F) * rho 2596) = ((1 : F) * rho 2607)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2608) * ((-1 : F) * rho 2606 + (1 : F) * rho 2607) = ((2 : F) * rho 2605)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2609) * ((2 : F) + (1 : F) * rho 2606 + (-1 : F) * rho 2607) = ((1 : F) * rho 2606 + (1 : F) * rho 2607)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 31⟩, ⟨(1 : F), 2226, 13, 30⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2608 + (1 : F) * rho 2609) * (relationLc241 rho) = ((1 : F) * rho 2610)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 30⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2609) * (relationLc242 rho) = ((1 : F) * rho 2611)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2608) * (relationLc243 rho) = ((1 : F) * rho 2612)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2611) * ((1 : F) * rho 2612) = ((1 : F) * rho 2613)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2614) * ((1 : F) + (1 : F) * rho 2613) = ((1 : F) * rho 2611 + (1 : F) * rho 2612)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2615) * ((1 : F) + (-1 : F) * rho 2613) = ((1 : F) * rho 2610 + (-1 : F) * rho 2611 + (-1 : F) * rho 2612)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 30⟩], residual := [((-1 : F), 2212), ((1 : F), 2614)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1014) * (relationLc244 rho) = ((1 : F) * rho 2616)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 31⟩], residual := [((1 : F), 2615)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1014) * (relationLc245 rho) = ((1 : F) * rho 2617)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2608) * ((1 : F) * rho 2609) = ((1 : F) * rho 2618)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2608) * ((1 : F) * rho 2608) = ((1 : F) * rho 2619)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2609) * ((1 : F) * rho 2609) = ((1 : F) * rho 2620)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2621) * ((-1 : F) * rho 2619 + (1 : F) * rho 2620) = ((2 : F) * rho 2618)

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2622) * ((2 : F) + (1 : F) * rho 2619 + (-1 : F) * rho 2620) = ((1 : F) * rho 2619 + (1 : F) * rho 2620)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 32⟩, ⟨(1 : F), 2226, 13, 31⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2621 + (1 : F) * rho 2622) * (relationLc246 rho) = ((1 : F) * rho 2623)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 31⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2622) * (relationLc247 rho) = ((1 : F) * rho 2624)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2621) * (relationLc248 rho) = ((1 : F) * rho 2625)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2624) * ((1 : F) * rho 2625) = ((1 : F) * rho 2626)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2627) * ((1 : F) + (1 : F) * rho 2626) = ((1 : F) * rho 2624 + (1 : F) * rho 2625)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2628) * ((1 : F) + (-1 : F) * rho 2626) = ((1 : F) * rho 2623 + (-1 : F) * rho 2624 + (-1 : F) * rho 2625)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 31⟩], residual := [((-1 : F), 2212), ((1 : F), 2627)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1015) * (relationLc249 rho) = ((1 : F) * rho 2629)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 32⟩], residual := [((1 : F), 2628)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1015) * (relationLc250 rho) = ((1 : F) * rho 2630)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2621) * ((1 : F) * rho 2622) = ((1 : F) * rho 2631)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2621) * ((1 : F) * rho 2621) = ((1 : F) * rho 2632)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2622) * ((1 : F) * rho 2622) = ((1 : F) * rho 2633)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * ((-1 : F) * rho 2632 + (1 : F) * rho 2633) = ((2 : F) * rho 2631)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2635) * ((2 : F) + (1 : F) * rho 2632 + (-1 : F) * rho 2633) = ((1 : F) * rho 2632 + (1 : F) * rho 2633)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 33⟩, ⟨(1 : F), 2226, 13, 32⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634 + (1 : F) * rho 2635) * (relationLc251 rho) = ((1 : F) * rho 2636)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 32⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2635) * (relationLc252 rho) = ((1 : F) * rho 2637)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * (relationLc253 rho) = ((1 : F) * rho 2638)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2637) * ((1 : F) * rho 2638) = ((1 : F) * rho 2639)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2640) * ((1 : F) + (1 : F) * rho 2639) = ((1 : F) * rho 2637 + (1 : F) * rho 2638)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2641) * ((1 : F) + (-1 : F) * rho 2639) = ((1 : F) * rho 2636 + (-1 : F) * rho 2637 + (-1 : F) * rho 2638)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 32⟩], residual := [((-1 : F), 2212), ((1 : F), 2640)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1016) * (relationLc254 rho) = ((1 : F) * rho 2642)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 33⟩], residual := [((1 : F), 2641)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1016) * (relationLc255 rho) = ((1 : F) * rho 2643)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * ((1 : F) * rho 2635) = ((1 : F) * rho 2644)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * ((1 : F) * rho 2634) = ((1 : F) * rho 2645)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2635) * ((1 : F) * rho 2635) = ((1 : F) * rho 2646)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2647) * ((-1 : F) * rho 2645 + (1 : F) * rho 2646) = ((2 : F) * rho 2644)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2648) * ((2 : F) + (1 : F) * rho 2645 + (-1 : F) * rho 2646) = ((1 : F) * rho 2645 + (1 : F) * rho 2646)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 34⟩, ⟨(1 : F), 2226, 13, 33⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2647 + (1 : F) * rho 2648) * (relationLc256 rho) = ((1 : F) * rho 2649)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 33⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2648) * (relationLc257 rho) = ((1 : F) * rho 2650)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2647) * (relationLc258 rho) = ((1 : F) * rho 2651)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2650) * ((1 : F) * rho 2651) = ((1 : F) * rho 2652)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2653) * ((1 : F) + (1 : F) * rho 2652) = ((1 : F) * rho 2650 + (1 : F) * rho 2651)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2654) * ((1 : F) + (-1 : F) * rho 2652) = ((1 : F) * rho 2649 + (-1 : F) * rho 2650 + (-1 : F) * rho 2651)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 33⟩], residual := [((-1 : F), 2212), ((1 : F), 2653)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1017) * (relationLc259 rho) = ((1 : F) * rho 2655)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 34⟩], residual := [((1 : F), 2654)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1017) * (relationLc260 rho) = ((1 : F) * rho 2656)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2647) * ((1 : F) * rho 2648) = ((1 : F) * rho 2657)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2647) * ((1 : F) * rho 2647) = ((1 : F) * rho 2658)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
