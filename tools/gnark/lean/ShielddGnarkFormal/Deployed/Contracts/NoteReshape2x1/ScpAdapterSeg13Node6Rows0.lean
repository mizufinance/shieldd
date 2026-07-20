import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node6_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2477 : Seg13.relationRow2477 rho)
    (r2478 : Seg13.relationRow2478 rho)
    (r2479 : Seg13.relationRow2479 rho)
    (r2480 : Seg13.relationRow2480 rho)
    (r2481 : Seg13.relationRow2481 rho)
    (tail : next (rho 77) (rho 78) (rho 9655) (rho 9656) (rho 9657) (rho 9658) (rho 9659) (rho 9664)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg0 (rho 76) (rho 77) (rho 78) (rho 9654) (rho 9655) (rho 9656) (rho 9657) (rho 9658) (rho 9659) next := by
  exact ⟨rho 9660, rho 9661, rho 9662, rho 9663, rho 9664, r2477, r2478, r2479, r2480, r2481, tail⟩

theorem seg13_scp_node6_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2482 : Seg13.relationRow2482 rho)
    (r2483 : Seg13.relationRow2483 rho)
    (r2484 : Seg13.relationRow2484 rho)
    (r2485 : Seg13.relationRow2485 rho)
    (r2486 : Seg13.relationRow2486 rho)
    (tail : next (rho 77) (rho 78) (rho 9657) (rho 9658) (rho 9659) (rho 9664) (rho 9669)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg1 (rho 77) (rho 78) (rho 9655) (rho 9656) (rho 9657) (rho 9658) (rho 9659) (rho 9664) next := by
  exact ⟨rho 9665, rho 9666, rho 9667, rho 9668, rho 9669, r2482, r2483, r2484, r2485, r2486, tail⟩

theorem seg13_scp_node6_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2487 : Seg13.relationRow2487 rho)
    (r2488 : Seg13.relationRow2488 rho)
    (r2489 : Seg13.relationRow2489 rho)
    (r2490 : Seg13.relationRow2490 rho)
    (r2491 : Seg13.relationRow2491 rho)
    (tail : next (rho 78) (rho 9659) (rho 9664) (rho 9669) (rho 9674)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg2 (rho 77) (rho 78) (rho 9657) (rho 9658) (rho 9659) (rho 9664) (rho 9669) next := by
  exact ⟨rho 9670, rho 9671, rho 9672, rho 9673, rho 9674, r2487, r2488, r2489, r2490, r2491, tail⟩

theorem seg13_scp_node6_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2492 : Seg13.relationRow2492 rho)
    (r2493 : Seg13.relationRow2493 rho)
    (r2494 : Seg13.relationRow2494 rho)
    (r2495 : Seg13.relationRow2495 rho)
    (r2496 : Seg13.relationRow2496 rho)
    (tail : next (rho 9664) (rho 9669) (rho 9674) (rho 9679)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg3 (rho 78) (rho 9659) (rho 9664) (rho 9669) (rho 9674) next := by
  exact ⟨rho 9675, rho 9676, rho 9677, rho 9678, rho 9679, r2492, r2493, r2494, r2495, r2496, tail⟩

theorem seg13_scp_node6_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2497 : Seg13.relationRow2497 rho)
    (r2498 : Seg13.relationRow2498 rho)
    (r2499 : Seg13.relationRow2499 rho)
    (r2500 : Seg13.relationRow2500 rho)
    (r2501 : Seg13.relationRow2501 rho)
    (tail : next (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg4 (rho 9664) (rho 9669) (rho 9674) (rho 9679) next := by
  exact ⟨rho 9680, rho 9681, rho 9682, rho 9683, rho 9684, r2497, r2498, r2499, r2500, r2501, tail⟩

theorem seg13_scp_node6_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2502 : Seg13.relationRow2502 rho)
    (r2503 : Seg13.relationRow2503 rho)
    (r2504 : Seg13.relationRow2504 rho)
    (r2505 : Seg13.relationRow2505 rho)
    (r2506 : Seg13.relationRow2506 rho)
    (tail : next (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) (rho 9689)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg5 (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) next := by
  exact ⟨rho 9685, rho 9686, rho 9687, rho 9688, rho 9689, r2502, r2503, r2504, r2505, r2506, tail⟩

theorem seg13_scp_node6_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2507 : Seg13.relationRow2507 rho)
    (r2508 : Seg13.relationRow2508 rho)
    (r2509 : Seg13.relationRow2509 rho)
    (r2510 : Seg13.relationRow2510 rho)
    (r2511 : Seg13.relationRow2511 rho)
    (tail : next (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) (rho 9689) (rho 9694)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg6 (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) (rho 9689) next := by
  exact ⟨rho 9690, rho 9691, rho 9692, rho 9693, rho 9694, r2507, r2508, r2509, r2510, r2511, tail⟩

theorem seg13_scp_node6_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2512 : Seg13.relationRow2512 rho)
    (r2513 : Seg13.relationRow2513 rho)
    (r2514 : Seg13.relationRow2514 rho)
    (r2515 : Seg13.relationRow2515 rho)
    (r2516 : Seg13.relationRow2516 rho)
    (tail : next (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) (rho 9689) (rho 9694) (rho 9699)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg7 (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) (rho 9689) (rho 9694) next := by
  exact ⟨rho 9695, rho 9696, rho 9697, rho 9698, rho 9699, r2512, r2513, r2514, r2515, r2516, tail⟩

theorem seg13_scp_node6_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2517 : Seg13.relationRow2517 rho)
    (r2518 : Seg13.relationRow2518 rho)
    (r2519 : Seg13.relationRow2519 rho)
    (r2520 : Seg13.relationRow2520 rho)
    (r2521 : Seg13.relationRow2521 rho)
    (tail : next (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg8 (rho 9664) (rho 9669) (rho 9674) (rho 9679) (rho 9684) (rho 9689) (rho 9694) (rho 9699) next := by
  exact ⟨rho 9700, rho 9701, rho 9702, rho 9703, rho 9704, r2517, r2518, r2519, r2520, r2521, tail⟩

theorem seg13_scp_node6_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2522 : Seg13.relationRow2522 rho)
    (r2523 : Seg13.relationRow2523 rho)
    (r2524 : Seg13.relationRow2524 rho)
    (r2525 : Seg13.relationRow2525 rho)
    (r2526 : Seg13.relationRow2526 rho)
    (tail : next (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg9 (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) next := by
  exact ⟨rho 9705, rho 9706, rho 9707, rho 9708, rho 9709, r2522, r2523, r2524, r2525, r2526, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

