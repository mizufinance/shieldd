import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node5_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2413 rho)
    (r2414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2414 rho)
    (r2415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2415 rho)
    (r2416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2416 rho)
    (r2417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2417 rho)
    (tail : next (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg60 (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) next := by
  exact ⟨rho 2414, rho 2415, rho 2416, rho 2417, rho 2418, r2413, r2414, r2415, r2416, r2417, tail⟩

theorem template_scp_node5_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2418 rho)
    (r2419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2419 rho)
    (r2420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2420 rho)
    (r2421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2421 rho)
    (r2422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2422 rho)
    (tail : next (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) (rho 2423)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg61 (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) next := by
  exact ⟨rho 2419, rho 2420, rho 2421, rho 2422, rho 2423, r2418, r2419, r2420, r2421, r2422, tail⟩

theorem template_scp_node5_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2423 rho)
    (r2424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2424 rho)
    (r2425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2425 rho)
    (r2426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2426 rho)
    (r2427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2427 rho)
    (tail : next (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) (rho 2423) (rho 2428)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg62 (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) (rho 2423) next := by
  exact ⟨rho 2424, rho 2425, rho 2426, rho 2427, rho 2428, r2423, r2424, r2425, r2426, r2427, tail⟩

theorem template_scp_node5_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2428 rho)
    (r2429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2429 rho)
    (r2430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2430 rho)
    (r2431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2431 rho)
    (r2432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2432 rho)
    (tail : next (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) (rho 2423) (rho 2428) (rho 2433)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg63 (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) (rho 2423) (rho 2428) next := by
  exact ⟨rho 2429, rho 2430, rho 2431, rho 2432, rho 2433, r2428, r2429, r2430, r2431, r2432, tail⟩

theorem template_scp_node5_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2433 rho)
    (r2434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2434 rho)
    (r2435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2435 rho)
    (r2436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2436 rho)
    (r2437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2437 rho)
    (tail : next (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg64 (rho 2393) (rho 2398) (rho 2403) (rho 2408) (rho 2413) (rho 2418) (rho 2423) (rho 2428) (rho 2433) next := by
  exact ⟨rho 2434, rho 2435, rho 2436, rho 2437, rho 2438, r2433, r2434, r2435, r2436, r2437, tail⟩

theorem template_scp_node5_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2438 rho)
    (r2439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2439 rho)
    (r2440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2440 rho)
    (r2441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2441 rho)
    (r2442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2442 rho)
    (tail : next (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg65 (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) next := by
  exact ⟨rho 2439, rho 2440, rho 2441, rho 2442, rho 2443, r2438, r2439, r2440, r2441, r2442, tail⟩

theorem template_scp_node5_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2443 rho)
    (r2444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2444 rho)
    (r2445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2445 rho)
    (r2446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2446 rho)
    (r2447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2447 rho)
    (tail : next (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) (rho 2448)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg66 (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) next := by
  exact ⟨rho 2444, rho 2445, rho 2446, rho 2447, rho 2448, r2443, r2444, r2445, r2446, r2447, tail⟩

theorem template_scp_node5_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2448 rho)
    (r2449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2449 rho)
    (r2450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2450 rho)
    (r2451 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2451 rho)
    (r2452 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2452 rho)
    (tail : next (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) (rho 2448) (rho 2453)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg67 (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) (rho 2448) next := by
  exact ⟨rho 2449, rho 2450, rho 2451, rho 2452, rho 2453, r2448, r2449, r2450, r2451, r2452, tail⟩

theorem template_scp_node5_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2453 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2453 rho)
    (r2454 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2454 rho)
    (r2455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2455 rho)
    (r2456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2456 rho)
    (r2457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2457 rho)
    (tail : next (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) (rho 2448) (rho 2453) (rho 2458)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg68 (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) (rho 2448) (rho 2453) next := by
  exact ⟨rho 2454, rho 2455, rho 2456, rho 2457, rho 2458, r2453, r2454, r2455, r2456, r2457, tail⟩

theorem template_scp_node5_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2458 rho)
    (r2459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2459 rho)
    (r2460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2460 rho)
    (r2461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2461 rho)
    (r2462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow2462 rho)
    (tail : next (rho 2443) (rho 2448) (rho 2453) (rho 2458) (rho 2463)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg69 (rho 2418) (rho 2423) (rho 2428) (rho 2433) (rho 2438) (rho 2443) (rho 2448) (rho 2453) (rho 2458) next := by
  exact ⟨rho 2459, rho 2460, rho 2461, rho 2462, rho 2463, r2458, r2459, r2460, r2461, r2462, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
