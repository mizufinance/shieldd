import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node5_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2413 : Seg13.relationRow2413 rho)
    (r2414 : Seg13.relationRow2414 rho)
    (r2415 : Seg13.relationRow2415 rho)
    (r2416 : Seg13.relationRow2416 rho)
    (r2417 : Seg13.relationRow2417 rho)
    (tail : next (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg60 (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) next := by
  exact ⟨rho 9606, rho 9607, rho 9608, rho 9609, rho 9610, r2413, r2414, r2415, r2416, r2417, tail⟩

theorem seg13_scp_node5_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2418 : Seg13.relationRow2418 rho)
    (r2419 : Seg13.relationRow2419 rho)
    (r2420 : Seg13.relationRow2420 rho)
    (r2421 : Seg13.relationRow2421 rho)
    (r2422 : Seg13.relationRow2422 rho)
    (tail : next (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) (rho 9615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg61 (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) next := by
  exact ⟨rho 9611, rho 9612, rho 9613, rho 9614, rho 9615, r2418, r2419, r2420, r2421, r2422, tail⟩

theorem seg13_scp_node5_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2423 : Seg13.relationRow2423 rho)
    (r2424 : Seg13.relationRow2424 rho)
    (r2425 : Seg13.relationRow2425 rho)
    (r2426 : Seg13.relationRow2426 rho)
    (r2427 : Seg13.relationRow2427 rho)
    (tail : next (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) (rho 9615) (rho 9620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg62 (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) (rho 9615) next := by
  exact ⟨rho 9616, rho 9617, rho 9618, rho 9619, rho 9620, r2423, r2424, r2425, r2426, r2427, tail⟩

theorem seg13_scp_node5_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2428 : Seg13.relationRow2428 rho)
    (r2429 : Seg13.relationRow2429 rho)
    (r2430 : Seg13.relationRow2430 rho)
    (r2431 : Seg13.relationRow2431 rho)
    (r2432 : Seg13.relationRow2432 rho)
    (tail : next (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) (rho 9615) (rho 9620) (rho 9625)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg63 (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) (rho 9615) (rho 9620) next := by
  exact ⟨rho 9621, rho 9622, rho 9623, rho 9624, rho 9625, r2428, r2429, r2430, r2431, r2432, tail⟩

theorem seg13_scp_node5_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2433 : Seg13.relationRow2433 rho)
    (r2434 : Seg13.relationRow2434 rho)
    (r2435 : Seg13.relationRow2435 rho)
    (r2436 : Seg13.relationRow2436 rho)
    (r2437 : Seg13.relationRow2437 rho)
    (tail : next (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg64 (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605) (rho 9610) (rho 9615) (rho 9620) (rho 9625) next := by
  exact ⟨rho 9626, rho 9627, rho 9628, rho 9629, rho 9630, r2433, r2434, r2435, r2436, r2437, tail⟩

theorem seg13_scp_node5_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2438 : Seg13.relationRow2438 rho)
    (r2439 : Seg13.relationRow2439 rho)
    (r2440 : Seg13.relationRow2440 rho)
    (r2441 : Seg13.relationRow2441 rho)
    (r2442 : Seg13.relationRow2442 rho)
    (tail : next (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg65 (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) next := by
  exact ⟨rho 9631, rho 9632, rho 9633, rho 9634, rho 9635, r2438, r2439, r2440, r2441, r2442, tail⟩

theorem seg13_scp_node5_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2443 : Seg13.relationRow2443 rho)
    (r2444 : Seg13.relationRow2444 rho)
    (r2445 : Seg13.relationRow2445 rho)
    (r2446 : Seg13.relationRow2446 rho)
    (r2447 : Seg13.relationRow2447 rho)
    (tail : next (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) (rho 9640)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg66 (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) next := by
  exact ⟨rho 9636, rho 9637, rho 9638, rho 9639, rho 9640, r2443, r2444, r2445, r2446, r2447, tail⟩

theorem seg13_scp_node5_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2448 : Seg13.relationRow2448 rho)
    (r2449 : Seg13.relationRow2449 rho)
    (r2450 : Seg13.relationRow2450 rho)
    (r2451 : Seg13.relationRow2451 rho)
    (r2452 : Seg13.relationRow2452 rho)
    (tail : next (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) (rho 9640) (rho 9645)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg67 (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) (rho 9640) next := by
  exact ⟨rho 9641, rho 9642, rho 9643, rho 9644, rho 9645, r2448, r2449, r2450, r2451, r2452, tail⟩

theorem seg13_scp_node5_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2453 : Seg13.relationRow2453 rho)
    (r2454 : Seg13.relationRow2454 rho)
    (r2455 : Seg13.relationRow2455 rho)
    (r2456 : Seg13.relationRow2456 rho)
    (r2457 : Seg13.relationRow2457 rho)
    (tail : next (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) (rho 9640) (rho 9645) (rho 9650)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg68 (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) (rho 9640) (rho 9645) next := by
  exact ⟨rho 9646, rho 9647, rho 9648, rho 9649, rho 9650, r2453, r2454, r2455, r2456, r2457, tail⟩

theorem seg13_scp_node5_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2458 : Seg13.relationRow2458 rho)
    (r2459 : Seg13.relationRow2459 rho)
    (r2460 : Seg13.relationRow2460 rho)
    (r2461 : Seg13.relationRow2461 rho)
    (r2462 : Seg13.relationRow2462 rho)
    (tail : next (rho 9635) (rho 9640) (rho 9645) (rho 9650) (rho 9655)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg69 (rho 9610) (rho 9615) (rho 9620) (rho 9625) (rho 9630) (rho 9635) (rho 9640) (rho 9645) (rho 9650) next := by
  exact ⟨rho 9651, rho 9652, rho 9653, rho 9654, rho 9655, r2458, r2459, r2460, r2461, r2462, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

