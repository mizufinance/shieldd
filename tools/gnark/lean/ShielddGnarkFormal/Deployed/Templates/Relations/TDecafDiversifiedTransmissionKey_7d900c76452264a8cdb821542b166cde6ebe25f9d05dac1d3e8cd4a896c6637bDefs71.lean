import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs70

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2426) * ((1 : F) * rho 2427) = ((1 : F) * rho 2436)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2426) * ((1 : F) * rho 2426) = ((1 : F) * rho 2437)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2427) * ((1 : F) * rho 2427) = ((1 : F) * rho 2438)

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2439) * ((-1 : F) * rho 2437 + (1 : F) * rho 2438) = ((2 : F) * rho 2436)

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * ((2 : F) + (1 : F) * rho 2437 + (-1 : F) * rho 2438) = ((1 : F) * rho 2437 + (1 : F) * rho 2438)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 18⟩, ⟨(1 : F), 2226, 13, 17⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2439 + (1 : F) * rho 2440) * (relationLc176 rho) = ((1 : F) * rho 2441)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 17⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * (relationLc177 rho) = ((1 : F) * rho 2442)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2439) * (relationLc178 rho) = ((1 : F) * rho 2443)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2442) * ((1 : F) * rho 2443) = ((1 : F) * rho 2444)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2445) * ((1 : F) + (1 : F) * rho 2444) = ((1 : F) * rho 2442 + (1 : F) * rho 2443)

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2446) * ((1 : F) + (-1 : F) * rho 2444) = ((1 : F) * rho 2441 + (-1 : F) * rho 2442 + (-1 : F) * rho 2443)

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 17⟩], residual := [((-1 : F), 2212), ((1 : F), 2445)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1001) * (relationLc179 rho) = ((1 : F) * rho 2447)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 18⟩], residual := [((1 : F), 2446)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1001) * (relationLc180 rho) = ((1 : F) * rho 2448)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2439) * ((1 : F) * rho 2440) = ((1 : F) * rho 2449)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2439) * ((1 : F) * rho 2439) = ((1 : F) * rho 2450)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * ((1 : F) * rho 2440) = ((1 : F) * rho 2451)

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2452) * ((-1 : F) * rho 2450 + (1 : F) * rho 2451) = ((2 : F) * rho 2449)

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2453) * ((2 : F) + (1 : F) * rho 2450 + (-1 : F) * rho 2451) = ((1 : F) * rho 2450 + (1 : F) * rho 2451)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 19⟩, ⟨(1 : F), 2226, 13, 18⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2452 + (1 : F) * rho 2453) * (relationLc181 rho) = ((1 : F) * rho 2454)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 18⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2453) * (relationLc182 rho) = ((1 : F) * rho 2455)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2452) * (relationLc183 rho) = ((1 : F) * rho 2456)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2455) * ((1 : F) * rho 2456) = ((1 : F) * rho 2457)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2458) * ((1 : F) + (1 : F) * rho 2457) = ((1 : F) * rho 2455 + (1 : F) * rho 2456)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2459) * ((1 : F) + (-1 : F) * rho 2457) = ((1 : F) * rho 2454 + (-1 : F) * rho 2455 + (-1 : F) * rho 2456)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 18⟩], residual := [((-1 : F), 2212), ((1 : F), 2458)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1002) * (relationLc184 rho) = ((1 : F) * rho 2460)

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 19⟩], residual := [((1 : F), 2459)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1002) * (relationLc185 rho) = ((1 : F) * rho 2461)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2452) * ((1 : F) * rho 2453) = ((1 : F) * rho 2462)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2452) * ((1 : F) * rho 2452) = ((1 : F) * rho 2463)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2453) * ((1 : F) * rho 2453) = ((1 : F) * rho 2464)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2465) * ((-1 : F) * rho 2463 + (1 : F) * rho 2464) = ((2 : F) * rho 2462)

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2466) * ((2 : F) + (1 : F) * rho 2463 + (-1 : F) * rho 2464) = ((1 : F) * rho 2463 + (1 : F) * rho 2464)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 20⟩, ⟨(1 : F), 2226, 13, 19⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2465 + (1 : F) * rho 2466) * (relationLc186 rho) = ((1 : F) * rho 2467)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 19⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2466) * (relationLc187 rho) = ((1 : F) * rho 2468)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2465) * (relationLc188 rho) = ((1 : F) * rho 2469)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2468) * ((1 : F) * rho 2469) = ((1 : F) * rho 2470)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2471) * ((1 : F) + (1 : F) * rho 2470) = ((1 : F) * rho 2468 + (1 : F) * rho 2469)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2472) * ((1 : F) + (-1 : F) * rho 2470) = ((1 : F) * rho 2467 + (-1 : F) * rho 2468 + (-1 : F) * rho 2469)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 19⟩], residual := [((-1 : F), 2212), ((1 : F), 2471)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1003) * (relationLc189 rho) = ((1 : F) * rho 2473)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 20⟩], residual := [((1 : F), 2472)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1003) * (relationLc190 rho) = ((1 : F) * rho 2474)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2465) * ((1 : F) * rho 2466) = ((1 : F) * rho 2475)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2465) * ((1 : F) * rho 2465) = ((1 : F) * rho 2476)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2466) * ((1 : F) * rho 2466) = ((1 : F) * rho 2477)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2478) * ((-1 : F) * rho 2476 + (1 : F) * rho 2477) = ((2 : F) * rho 2475)

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2479) * ((2 : F) + (1 : F) * rho 2476 + (-1 : F) * rho 2477) = ((1 : F) * rho 2476 + (1 : F) * rho 2477)

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 21⟩, ⟨(1 : F), 2226, 13, 20⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2478 + (1 : F) * rho 2479) * (relationLc191 rho) = ((1 : F) * rho 2480)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 20⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2479) * (relationLc192 rho) = ((1 : F) * rho 2481)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2478) * (relationLc193 rho) = ((1 : F) * rho 2482)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2481) * ((1 : F) * rho 2482) = ((1 : F) * rho 2483)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2484) * ((1 : F) + (1 : F) * rho 2483) = ((1 : F) * rho 2481 + (1 : F) * rho 2482)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2485) * ((1 : F) + (-1 : F) * rho 2483) = ((1 : F) * rho 2480 + (-1 : F) * rho 2481 + (-1 : F) * rho 2482)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 20⟩], residual := [((-1 : F), 2212), ((1 : F), 2484)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1004) * (relationLc194 rho) = ((1 : F) * rho 2486)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 21⟩], residual := [((1 : F), 2485)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1004) * (relationLc195 rho) = ((1 : F) * rho 2487)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2478) * ((1 : F) * rho 2479) = ((1 : F) * rho 2488)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2478) * ((1 : F) * rho 2478) = ((1 : F) * rho 2489)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2479) * ((1 : F) * rho 2479) = ((1 : F) * rho 2490)

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2491) * ((-1 : F) * rho 2489 + (1 : F) * rho 2490) = ((2 : F) * rho 2488)

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * ((2 : F) + (1 : F) * rho 2489 + (-1 : F) * rho 2490) = ((1 : F) * rho 2489 + (1 : F) * rho 2490)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 22⟩, ⟨(1 : F), 2226, 13, 21⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2491 + (1 : F) * rho 2492) * (relationLc196 rho) = ((1 : F) * rho 2493)

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 21⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * (relationLc197 rho) = ((1 : F) * rho 2494)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2491) * (relationLc198 rho) = ((1 : F) * rho 2495)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2494) * ((1 : F) * rho 2495) = ((1 : F) * rho 2496)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2497) * ((1 : F) + (1 : F) * rho 2496) = ((1 : F) * rho 2494 + (1 : F) * rho 2495)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2498) * ((1 : F) + (-1 : F) * rho 2496) = ((1 : F) * rho 2493 + (-1 : F) * rho 2494 + (-1 : F) * rho 2495)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 21⟩], residual := [((-1 : F), 2212), ((1 : F), 2497)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1005) * (relationLc199 rho) = ((1 : F) * rho 2499)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 22⟩], residual := [((1 : F), 2498)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1005) * (relationLc200 rho) = ((1 : F) * rho 2500)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2491) * ((1 : F) * rho 2492) = ((1 : F) * rho 2501)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2491) * ((1 : F) * rho 2491) = ((1 : F) * rho 2502)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * ((1 : F) * rho 2492) = ((1 : F) * rho 2503)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2504) * ((-1 : F) * rho 2502 + (1 : F) * rho 2503) = ((2 : F) * rho 2501)

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2505) * ((2 : F) + (1 : F) * rho 2502 + (-1 : F) * rho 2503) = ((1 : F) * rho 2502 + (1 : F) * rho 2503)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 23⟩, ⟨(1 : F), 2226, 13, 22⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2504 + (1 : F) * rho 2505) * (relationLc201 rho) = ((1 : F) * rho 2506)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 22⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2505) * (relationLc202 rho) = ((1 : F) * rho 2507)

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2504) * (relationLc203 rho) = ((1 : F) * rho 2508)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2507) * ((1 : F) * rho 2508) = ((1 : F) * rho 2509)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2510) * ((1 : F) + (1 : F) * rho 2509) = ((1 : F) * rho 2507 + (1 : F) * rho 2508)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
