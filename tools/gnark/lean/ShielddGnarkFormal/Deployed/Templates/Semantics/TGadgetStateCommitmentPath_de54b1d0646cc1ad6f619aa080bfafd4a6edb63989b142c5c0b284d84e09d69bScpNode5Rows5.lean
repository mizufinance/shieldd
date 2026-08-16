import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node5_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2363 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2363 rho)
    (r2364 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2364 rho)
    (r2365 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2365 rho)
    (r2366 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2366 rho)
    (r2367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2367 rho)
    (tail : next (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg50 (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) next := by
  exact ⟨rho 2364, rho 2365, rho 2366, rho 2367, rho 2368, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2363 at r2363; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc53, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc53Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc53Part1] at r2363; linear_combination r2363), r2364, r2365, r2366, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2367 at r2367; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc53, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc53Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc53Part1] at r2367; linear_combination r2367), tail⟩

theorem template_scp_node5_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2368 rho)
    (r2369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2369 rho)
    (r2370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2370 rho)
    (r2371 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2371 rho)
    (r2372 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2372 rho)
    (tail : next (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) (rho 2373)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg51 (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) next := by
  exact ⟨rho 2369, rho 2370, rho 2371, rho 2372, rho 2373, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2368 at r2368; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc54, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc54Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc54Part1] at r2368; linear_combination r2368), r2369, r2370, r2371, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2372 at r2372; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc54, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc54Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc54Part1] at r2372; linear_combination r2372), tail⟩

theorem template_scp_node5_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2373 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2373 rho)
    (r2374 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2374 rho)
    (r2375 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2375 rho)
    (r2376 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2376 rho)
    (r2377 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2377 rho)
    (tail : next (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) (rho 2373) (rho 2378)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg52 (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) (rho 2373) next := by
  exact ⟨rho 2374, rho 2375, rho 2376, rho 2377, rho 2378, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2373 at r2373; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc55, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc55Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc55Part1] at r2373; linear_combination r2373), r2374, r2375, r2376, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2377 at r2377; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc55, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc55Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc55Part1] at r2377; linear_combination r2377), tail⟩

theorem template_scp_node5_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2378 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2378 rho)
    (r2379 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2379 rho)
    (r2380 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2380 rho)
    (r2381 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2381 rho)
    (r2382 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2382 rho)
    (tail : next (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) (rho 2373) (rho 2378) (rho 2383)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg53 (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) (rho 2373) (rho 2378) next := by
  exact ⟨rho 2379, rho 2380, rho 2381, rho 2382, rho 2383, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2378 at r2378; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc56, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc56Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc56Part1] at r2378; linear_combination r2378), r2379, r2380, r2381, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2382 at r2382; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc56, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc56Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc56Part1] at r2382; linear_combination r2382), tail⟩

theorem template_scp_node5_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2383 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2383 rho)
    (r2384 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2384 rho)
    (r2385 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2385 rho)
    (r2386 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2386 rho)
    (r2387 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2387 rho)
    (tail : next (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg54 (rho 2188) (rho 2193) (rho 2198) (rho 2203) (rho 2208) (rho 2213) (rho 2218) (rho 2223) (rho 2228) (rho 2233) (rho 2238) (rho 2243) (rho 2248) (rho 2253) (rho 2258) (rho 2263) (rho 2268) (rho 2273) (rho 2278) (rho 2283) (rho 2288) (rho 2293) (rho 2298) (rho 2303) (rho 2308) (rho 2313) (rho 2318) (rho 2323) (rho 2328) (rho 2333) (rho 2338) (rho 2343) (rho 2348) (rho 2353) (rho 2358) (rho 2363) (rho 2368) (rho 2373) (rho 2378) (rho 2383) next := by
  exact ⟨rho 2384, rho 2385, rho 2386, rho 2387, rho 2388, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2383 at r2383; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc57, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc57Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc57Part1] at r2383; linear_combination r2383), r2384, r2385, r2386, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2387 at r2387; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc57, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc57Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc57Part1] at r2387; linear_combination r2387), tail⟩

theorem template_scp_node5_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2388 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2388 rho)
    (r2389 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2389 rho)
    (r2390 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2390 rho)
    (r2391 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2391 rho)
    (r2392 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2392 rho)
    (tail : next (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg55 (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) next := by
  exact ⟨rho 2389, rho 2390, rho 2391, rho 2392, rho 2393, r2388, r2389, r2390, r2391, r2392, tail⟩

theorem template_scp_node5_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2393 rho)
    (r2394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2394 rho)
    (r2395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2395 rho)
    (r2396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2396 rho)
    (r2397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2397 rho)
    (tail : next (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) (rho 2398)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg56 (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) next := by
  exact ⟨rho 2394, rho 2395, rho 2396, rho 2397, rho 2398, r2393, r2394, r2395, r2396, r2397, tail⟩

theorem template_scp_node5_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2398 rho)
    (r2399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2399 rho)
    (r2400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2400 rho)
    (r2401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2401 rho)
    (r2402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2402 rho)
    (tail : next (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) (rho 2398) (rho 2403)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg57 (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) (rho 2398) next := by
  exact ⟨rho 2399, rho 2400, rho 2401, rho 2402, rho 2403, r2398, r2399, r2400, r2401, r2402, tail⟩

theorem template_scp_node5_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2403 rho)
    (r2404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2404 rho)
    (r2405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2405 rho)
    (r2406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2406 rho)
    (r2407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2407 rho)
    (tail : next (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) (rho 2398) (rho 2403) (rho 2408)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg58 (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) (rho 2398) (rho 2403) next := by
  exact ⟨rho 2404, rho 2405, rho 2406, rho 2407, rho 2408, r2403, r2404, r2405, r2406, r2407, tail⟩

theorem template_scp_node5_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2408 rho)
    (r2409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2409 rho)
    (r2410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2410 rho)
    (r2411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2411 rho)
    (r2412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2412 rho)
    (tail : next (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg59 (rho 2368) (rho 2373) (rho 2378) (rho 2383) (rho 2388) (rho 2393) (rho 2398) (rho 2403) (rho 2408) next := by
  exact ⟨rho 2409, rho 2410, rho 2411, rho 2412, rho 2413, r2408, r2409, r2410, r2411, r2412, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
