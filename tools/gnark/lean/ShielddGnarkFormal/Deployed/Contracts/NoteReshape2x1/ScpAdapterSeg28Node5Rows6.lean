import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node5_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2413 : Seg28.relationRow2413 rho)
    (r2414 : Seg28.relationRow2414 rho)
    (r2415 : Seg28.relationRow2415 rho)
    (r2416 : Seg28.relationRow2416 rho)
    (r2417 : Seg28.relationRow2417 rho)
    (tail : next (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg60 (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) next := by
  exact ⟨rho 21787, rho 21788, rho 21789, rho 21790, rho 21791, r2413, r2414, r2415, r2416, r2417, tail⟩

theorem seg28_scp_node5_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2418 : Seg28.relationRow2418 rho)
    (r2419 : Seg28.relationRow2419 rho)
    (r2420 : Seg28.relationRow2420 rho)
    (r2421 : Seg28.relationRow2421 rho)
    (r2422 : Seg28.relationRow2422 rho)
    (tail : next (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) (rho 21796)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg61 (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) next := by
  exact ⟨rho 21792, rho 21793, rho 21794, rho 21795, rho 21796, r2418, r2419, r2420, r2421, r2422, tail⟩

theorem seg28_scp_node5_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2423 : Seg28.relationRow2423 rho)
    (r2424 : Seg28.relationRow2424 rho)
    (r2425 : Seg28.relationRow2425 rho)
    (r2426 : Seg28.relationRow2426 rho)
    (r2427 : Seg28.relationRow2427 rho)
    (tail : next (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) (rho 21796) (rho 21801)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg62 (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) (rho 21796) next := by
  exact ⟨rho 21797, rho 21798, rho 21799, rho 21800, rho 21801, r2423, r2424, r2425, r2426, r2427, tail⟩

theorem seg28_scp_node5_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2428 : Seg28.relationRow2428 rho)
    (r2429 : Seg28.relationRow2429 rho)
    (r2430 : Seg28.relationRow2430 rho)
    (r2431 : Seg28.relationRow2431 rho)
    (r2432 : Seg28.relationRow2432 rho)
    (tail : next (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) (rho 21796) (rho 21801) (rho 21806)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg63 (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) (rho 21796) (rho 21801) next := by
  exact ⟨rho 21802, rho 21803, rho 21804, rho 21805, rho 21806, r2428, r2429, r2430, r2431, r2432, tail⟩

theorem seg28_scp_node5_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2433 : Seg28.relationRow2433 rho)
    (r2434 : Seg28.relationRow2434 rho)
    (r2435 : Seg28.relationRow2435 rho)
    (r2436 : Seg28.relationRow2436 rho)
    (r2437 : Seg28.relationRow2437 rho)
    (tail : next (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg64 (rho 21766) (rho 21771) (rho 21776) (rho 21781) (rho 21786) (rho 21791) (rho 21796) (rho 21801) (rho 21806) next := by
  exact ⟨rho 21807, rho 21808, rho 21809, rho 21810, rho 21811, r2433, r2434, r2435, r2436, r2437, tail⟩

theorem seg28_scp_node5_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2438 : Seg28.relationRow2438 rho)
    (r2439 : Seg28.relationRow2439 rho)
    (r2440 : Seg28.relationRow2440 rho)
    (r2441 : Seg28.relationRow2441 rho)
    (r2442 : Seg28.relationRow2442 rho)
    (tail : next (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg65 (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) next := by
  exact ⟨rho 21812, rho 21813, rho 21814, rho 21815, rho 21816, r2438, r2439, r2440, r2441, r2442, tail⟩

theorem seg28_scp_node5_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2443 : Seg28.relationRow2443 rho)
    (r2444 : Seg28.relationRow2444 rho)
    (r2445 : Seg28.relationRow2445 rho)
    (r2446 : Seg28.relationRow2446 rho)
    (r2447 : Seg28.relationRow2447 rho)
    (tail : next (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) (rho 21821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg66 (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) next := by
  exact ⟨rho 21817, rho 21818, rho 21819, rho 21820, rho 21821, r2443, r2444, r2445, r2446, r2447, tail⟩

theorem seg28_scp_node5_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2448 : Seg28.relationRow2448 rho)
    (r2449 : Seg28.relationRow2449 rho)
    (r2450 : Seg28.relationRow2450 rho)
    (r2451 : Seg28.relationRow2451 rho)
    (r2452 : Seg28.relationRow2452 rho)
    (tail : next (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) (rho 21821) (rho 21826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg67 (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) (rho 21821) next := by
  exact ⟨rho 21822, rho 21823, rho 21824, rho 21825, rho 21826, r2448, r2449, r2450, r2451, r2452, tail⟩

theorem seg28_scp_node5_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2453 : Seg28.relationRow2453 rho)
    (r2454 : Seg28.relationRow2454 rho)
    (r2455 : Seg28.relationRow2455 rho)
    (r2456 : Seg28.relationRow2456 rho)
    (r2457 : Seg28.relationRow2457 rho)
    (tail : next (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) (rho 21821) (rho 21826) (rho 21831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg68 (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) (rho 21821) (rho 21826) next := by
  exact ⟨rho 21827, rho 21828, rho 21829, rho 21830, rho 21831, r2453, r2454, r2455, r2456, r2457, tail⟩

theorem seg28_scp_node5_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2458 : Seg28.relationRow2458 rho)
    (r2459 : Seg28.relationRow2459 rho)
    (r2460 : Seg28.relationRow2460 rho)
    (r2461 : Seg28.relationRow2461 rho)
    (r2462 : Seg28.relationRow2462 rho)
    (tail : next (rho 21816) (rho 21821) (rho 21826) (rho 21831) (rho 21836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg69 (rho 21791) (rho 21796) (rho 21801) (rho 21806) (rho 21811) (rho 21816) (rho 21821) (rho 21826) (rho 21831) next := by
  exact ⟨rho 21832, rho 21833, rho 21834, rho 21835, rho 21836, r2458, r2459, r2460, r2461, r2462, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

