import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node5_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2363 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2363 rho)
    (r2364 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2364 rho)
    (r2365 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2365 rho)
    (r2366 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2366 rho)
    (r2367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2367 rho)
    (tail : next (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg50 (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) next := by
  exact ⟨rho 2365, rho 2366, rho 2367, rho 2368, rho 2369, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2363 at r2363; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc53, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc53Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc53Part1] at r2363; linear_combination r2363), r2364, r2365, r2366, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2367 at r2367; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc53, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc53Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc53Part1] at r2367; linear_combination r2367), tail⟩

theorem template_scp_node5_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2368 rho)
    (r2369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2369 rho)
    (r2370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2370 rho)
    (r2371 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2371 rho)
    (r2372 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2372 rho)
    (tail : next (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) (rho 2374)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg51 (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) next := by
  exact ⟨rho 2370, rho 2371, rho 2372, rho 2373, rho 2374, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2368 at r2368; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc54, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc54Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc54Part1] at r2368; linear_combination r2368), r2369, r2370, r2371, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2372 at r2372; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc54, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc54Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc54Part1] at r2372; linear_combination r2372), tail⟩

theorem template_scp_node5_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2373 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2373 rho)
    (r2374 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2374 rho)
    (r2375 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2375 rho)
    (r2376 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2376 rho)
    (r2377 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2377 rho)
    (tail : next (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) (rho 2374) (rho 2379)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg52 (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) (rho 2374) next := by
  exact ⟨rho 2375, rho 2376, rho 2377, rho 2378, rho 2379, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2373 at r2373; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc55, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc55Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc55Part1] at r2373; linear_combination r2373), r2374, r2375, r2376, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2377 at r2377; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc55, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc55Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc55Part1] at r2377; linear_combination r2377), tail⟩

theorem template_scp_node5_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2378 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2378 rho)
    (r2379 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2379 rho)
    (r2380 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2380 rho)
    (r2381 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2381 rho)
    (r2382 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2382 rho)
    (tail : next (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) (rho 2374) (rho 2379) (rho 2384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg53 (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) (rho 2374) (rho 2379) next := by
  exact ⟨rho 2380, rho 2381, rho 2382, rho 2383, rho 2384, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2378 at r2378; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc56, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc56Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc56Part1] at r2378; linear_combination r2378), r2379, r2380, r2381, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2382 at r2382; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc56, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc56Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc56Part1] at r2382; linear_combination r2382), tail⟩

theorem template_scp_node5_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2383 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2383 rho)
    (r2384 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2384 rho)
    (r2385 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2385 rho)
    (r2386 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2386 rho)
    (r2387 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2387 rho)
    (tail : next (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg54 (rho 2189) (rho 2194) (rho 2199) (rho 2204) (rho 2209) (rho 2214) (rho 2219) (rho 2224) (rho 2229) (rho 2234) (rho 2239) (rho 2244) (rho 2249) (rho 2254) (rho 2259) (rho 2264) (rho 2269) (rho 2274) (rho 2279) (rho 2284) (rho 2289) (rho 2294) (rho 2299) (rho 2304) (rho 2309) (rho 2314) (rho 2319) (rho 2324) (rho 2329) (rho 2334) (rho 2339) (rho 2344) (rho 2349) (rho 2354) (rho 2359) (rho 2364) (rho 2369) (rho 2374) (rho 2379) (rho 2384) next := by
  exact ⟨rho 2385, rho 2386, rho 2387, rho 2388, rho 2389, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2383 at r2383; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc57, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc57Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc57Part1] at r2383; linear_combination r2383), r2384, r2385, r2386, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2387 at r2387; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc57, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc57Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc57Part1] at r2387; linear_combination r2387), tail⟩

theorem template_scp_node5_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2388 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2388 rho)
    (r2389 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2389 rho)
    (r2390 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2390 rho)
    (r2391 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2391 rho)
    (r2392 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2392 rho)
    (tail : next (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg55 (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) next := by
  exact ⟨rho 2390, rho 2391, rho 2392, rho 2393, rho 2394, r2388, r2389, r2390, r2391, r2392, tail⟩

theorem template_scp_node5_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2393 rho)
    (r2394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2394 rho)
    (r2395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2395 rho)
    (r2396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2396 rho)
    (r2397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2397 rho)
    (tail : next (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) (rho 2399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg56 (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) next := by
  exact ⟨rho 2395, rho 2396, rho 2397, rho 2398, rho 2399, r2393, r2394, r2395, r2396, r2397, tail⟩

theorem template_scp_node5_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2398 rho)
    (r2399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2399 rho)
    (r2400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2400 rho)
    (r2401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2401 rho)
    (r2402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2402 rho)
    (tail : next (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) (rho 2399) (rho 2404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg57 (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) (rho 2399) next := by
  exact ⟨rho 2400, rho 2401, rho 2402, rho 2403, rho 2404, r2398, r2399, r2400, r2401, r2402, tail⟩

theorem template_scp_node5_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2403 rho)
    (r2404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2404 rho)
    (r2405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2405 rho)
    (r2406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2406 rho)
    (r2407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2407 rho)
    (tail : next (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) (rho 2399) (rho 2404) (rho 2409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg58 (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) (rho 2399) (rho 2404) next := by
  exact ⟨rho 2405, rho 2406, rho 2407, rho 2408, rho 2409, r2403, r2404, r2405, r2406, r2407, tail⟩

theorem template_scp_node5_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2408 rho)
    (r2409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2409 rho)
    (r2410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2410 rho)
    (r2411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2411 rho)
    (r2412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2412 rho)
    (tail : next (rho 2394) (rho 2399) (rho 2404) (rho 2409) (rho 2414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg59 (rho 2369) (rho 2374) (rho 2379) (rho 2384) (rho 2389) (rho 2394) (rho 2399) (rho 2404) (rho 2409) next := by
  exact ⟨rho 2410, rho 2411, rho 2412, rho 2413, rho 2414, r2408, r2409, r2410, r2411, r2412, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
