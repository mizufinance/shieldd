import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs71

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2511) * ((1 : F) + (-1 : F) * rho 2509) = ((1 : F) * rho 2506 + (-1 : F) * rho 2507 + (-1 : F) * rho 2508)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 22⟩], residual := [((-1 : F), 2212), ((1 : F), 2510)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1006) * (relationLc204 rho) = ((1 : F) * rho 2512)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 23⟩], residual := [((1 : F), 2511)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1006) * (relationLc205 rho) = ((1 : F) * rho 2513)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2504) * ((1 : F) * rho 2505) = ((1 : F) * rho 2514)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2504) * ((1 : F) * rho 2504) = ((1 : F) * rho 2515)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2505) * ((1 : F) * rho 2505) = ((1 : F) * rho 2516)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2517) * ((-1 : F) * rho 2515 + (1 : F) * rho 2516) = ((2 : F) * rho 2514)

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2518) * ((2 : F) + (1 : F) * rho 2515 + (-1 : F) * rho 2516) = ((1 : F) * rho 2515 + (1 : F) * rho 2516)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 24⟩, ⟨(1 : F), 2226, 13, 23⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2517 + (1 : F) * rho 2518) * (relationLc206 rho) = ((1 : F) * rho 2519)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 23⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2518) * (relationLc207 rho) = ((1 : F) * rho 2520)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2517) * (relationLc208 rho) = ((1 : F) * rho 2521)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2520) * ((1 : F) * rho 2521) = ((1 : F) * rho 2522)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2523) * ((1 : F) + (1 : F) * rho 2522) = ((1 : F) * rho 2520 + (1 : F) * rho 2521)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2524) * ((1 : F) + (-1 : F) * rho 2522) = ((1 : F) * rho 2519 + (-1 : F) * rho 2520 + (-1 : F) * rho 2521)

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 23⟩], residual := [((-1 : F), 2212), ((1 : F), 2523)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1007) * (relationLc209 rho) = ((1 : F) * rho 2525)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 24⟩], residual := [((1 : F), 2524)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1007) * (relationLc210 rho) = ((1 : F) * rho 2526)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2517) * ((1 : F) * rho 2518) = ((1 : F) * rho 2527)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2517) * ((1 : F) * rho 2517) = ((1 : F) * rho 2528)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2518) * ((1 : F) * rho 2518) = ((1 : F) * rho 2529)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2530) * ((-1 : F) * rho 2528 + (1 : F) * rho 2529) = ((2 : F) * rho 2527)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2531) * ((2 : F) + (1 : F) * rho 2528 + (-1 : F) * rho 2529) = ((1 : F) * rho 2528 + (1 : F) * rho 2529)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 25⟩, ⟨(1 : F), 2226, 13, 24⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2530 + (1 : F) * rho 2531) * (relationLc211 rho) = ((1 : F) * rho 2532)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 24⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2531) * (relationLc212 rho) = ((1 : F) * rho 2533)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2530) * (relationLc213 rho) = ((1 : F) * rho 2534)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2533) * ((1 : F) * rho 2534) = ((1 : F) * rho 2535)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2536) * ((1 : F) + (1 : F) * rho 2535) = ((1 : F) * rho 2533 + (1 : F) * rho 2534)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2537) * ((1 : F) + (-1 : F) * rho 2535) = ((1 : F) * rho 2532 + (-1 : F) * rho 2533 + (-1 : F) * rho 2534)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 24⟩], residual := [((-1 : F), 2212), ((1 : F), 2536)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1008) * (relationLc214 rho) = ((1 : F) * rho 2538)

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 25⟩], residual := [((1 : F), 2537)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1008) * (relationLc215 rho) = ((1 : F) * rho 2539)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2530) * ((1 : F) * rho 2531) = ((1 : F) * rho 2540)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2530) * ((1 : F) * rho 2530) = ((1 : F) * rho 2541)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2531) * ((1 : F) * rho 2531) = ((1 : F) * rho 2542)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2543) * ((-1 : F) * rho 2541 + (1 : F) * rho 2542) = ((2 : F) * rho 2540)

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2544) * ((2 : F) + (1 : F) * rho 2541 + (-1 : F) * rho 2542) = ((1 : F) * rho 2541 + (1 : F) * rho 2542)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 26⟩, ⟨(1 : F), 2226, 13, 25⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2543 + (1 : F) * rho 2544) * (relationLc216 rho) = ((1 : F) * rho 2545)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 25⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2544) * (relationLc217 rho) = ((1 : F) * rho 2546)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2543) * (relationLc218 rho) = ((1 : F) * rho 2547)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2546) * ((1 : F) * rho 2547) = ((1 : F) * rho 2548)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2549) * ((1 : F) + (1 : F) * rho 2548) = ((1 : F) * rho 2546 + (1 : F) * rho 2547)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2550) * ((1 : F) + (-1 : F) * rho 2548) = ((1 : F) * rho 2545 + (-1 : F) * rho 2546 + (-1 : F) * rho 2547)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 25⟩], residual := [((-1 : F), 2212), ((1 : F), 2549)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1009) * (relationLc219 rho) = ((1 : F) * rho 2551)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 26⟩], residual := [((1 : F), 2550)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1009) * (relationLc220 rho) = ((1 : F) * rho 2552)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2543) * ((1 : F) * rho 2544) = ((1 : F) * rho 2553)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2543) * ((1 : F) * rho 2543) = ((1 : F) * rho 2554)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2544) * ((1 : F) * rho 2544) = ((1 : F) * rho 2555)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2556) * ((-1 : F) * rho 2554 + (1 : F) * rho 2555) = ((2 : F) * rho 2553)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2557) * ((2 : F) + (1 : F) * rho 2554 + (-1 : F) * rho 2555) = ((1 : F) * rho 2554 + (1 : F) * rho 2555)

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 27⟩, ⟨(1 : F), 2226, 13, 26⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2556 + (1 : F) * rho 2557) * (relationLc221 rho) = ((1 : F) * rho 2558)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 26⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2557) * (relationLc222 rho) = ((1 : F) * rho 2559)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2556) * (relationLc223 rho) = ((1 : F) * rho 2560)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2559) * ((1 : F) * rho 2560) = ((1 : F) * rho 2561)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2562) * ((1 : F) + (1 : F) * rho 2561) = ((1 : F) * rho 2559 + (1 : F) * rho 2560)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2563) * ((1 : F) + (-1 : F) * rho 2561) = ((1 : F) * rho 2558 + (-1 : F) * rho 2559 + (-1 : F) * rho 2560)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 26⟩], residual := [((-1 : F), 2212), ((1 : F), 2562)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1010) * (relationLc224 rho) = ((1 : F) * rho 2564)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 27⟩], residual := [((1 : F), 2563)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1010) * (relationLc225 rho) = ((1 : F) * rho 2565)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2556) * ((1 : F) * rho 2557) = ((1 : F) * rho 2566)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2556) * ((1 : F) * rho 2556) = ((1 : F) * rho 2567)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2557) * ((1 : F) * rho 2557) = ((1 : F) * rho 2568)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569) * ((-1 : F) * rho 2567 + (1 : F) * rho 2568) = ((2 : F) * rho 2566)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2570) * ((2 : F) + (1 : F) * rho 2567 + (-1 : F) * rho 2568) = ((1 : F) * rho 2567 + (1 : F) * rho 2568)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 28⟩, ⟨(1 : F), 2226, 13, 27⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569 + (1 : F) * rho 2570) * (relationLc226 rho) = ((1 : F) * rho 2571)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 27⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2570) * (relationLc227 rho) = ((1 : F) * rho 2572)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569) * (relationLc228 rho) = ((1 : F) * rho 2573)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2572) * ((1 : F) * rho 2573) = ((1 : F) * rho 2574)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2575) * ((1 : F) + (1 : F) * rho 2574) = ((1 : F) * rho 2572 + (1 : F) * rho 2573)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2576) * ((1 : F) + (-1 : F) * rho 2574) = ((1 : F) * rho 2571 + (-1 : F) * rho 2572 + (-1 : F) * rho 2573)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 27⟩], residual := [((-1 : F), 2212), ((1 : F), 2575)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1011) * (relationLc229 rho) = ((1 : F) * rho 2577)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 28⟩], residual := [((1 : F), 2576)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1011) * (relationLc230 rho) = ((1 : F) * rho 2578)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569) * ((1 : F) * rho 2570) = ((1 : F) * rho 2579)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569) * ((1 : F) * rho 2569) = ((1 : F) * rho 2580)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2570) * ((1 : F) * rho 2570) = ((1 : F) * rho 2581)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2582) * ((-1 : F) * rho 2580 + (1 : F) * rho 2581) = ((2 : F) * rho 2579)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2583) * ((2 : F) + (1 : F) * rho 2580 + (-1 : F) * rho 2581) = ((1 : F) * rho 2580 + (1 : F) * rho 2581)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 29⟩, ⟨(1 : F), 2226, 13, 28⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2582 + (1 : F) * rho 2583) * (relationLc231 rho) = ((1 : F) * rho 2584)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
