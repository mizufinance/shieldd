import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node6_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2527 : Seg13.relationRow2527 rho)
    (r2528 : Seg13.relationRow2528 rho)
    (r2529 : Seg13.relationRow2529 rho)
    (r2530 : Seg13.relationRow2530 rho)
    (r2531 : Seg13.relationRow2531 rho)
    (tail : next (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) (rho 9714)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg10 (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) next := by
  exact ⟨rho 9710, rho 9711, rho 9712, rho 9713, rho 9714, r2527, r2528, r2529, r2530, r2531, tail⟩

theorem seg13_scp_node6_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2532 : Seg13.relationRow2532 rho)
    (r2533 : Seg13.relationRow2533 rho)
    (r2534 : Seg13.relationRow2534 rho)
    (r2535 : Seg13.relationRow2535 rho)
    (r2536 : Seg13.relationRow2536 rho)
    (tail : next (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) (rho 9714) (rho 9719)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg11 (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) (rho 9714) next := by
  exact ⟨rho 9715, rho 9716, rho 9717, rho 9718, rho 9719, r2532, r2533, r2534, r2535, r2536, tail⟩

theorem seg13_scp_node6_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2537 : Seg13.relationRow2537 rho)
    (r2538 : Seg13.relationRow2538 rho)
    (r2539 : Seg13.relationRow2539 rho)
    (r2540 : Seg13.relationRow2540 rho)
    (r2541 : Seg13.relationRow2541 rho)
    (tail : next (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) (rho 9714) (rho 9719) (rho 9724)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg12 (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) (rho 9714) (rho 9719) next := by
  exact ⟨rho 9720, rho 9721, rho 9722, rho 9723, rho 9724, r2537, r2538, r2539, r2540, r2541, tail⟩

theorem seg13_scp_node6_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2542 : Seg13.relationRow2542 rho)
    (r2543 : Seg13.relationRow2543 rho)
    (r2544 : Seg13.relationRow2544 rho)
    (r2545 : Seg13.relationRow2545 rho)
    (r2546 : Seg13.relationRow2546 rho)
    (tail : next (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg13 (rho 9684) (rho 9689) (rho 9694) (rho 9699) (rho 9704) (rho 9709) (rho 9714) (rho 9719) (rho 9724) next := by
  exact ⟨rho 9725, rho 9726, rho 9727, rho 9728, rho 9729, r2542, r2543, r2544, r2545, r2546, tail⟩

theorem seg13_scp_node6_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2547 : Seg13.relationRow2547 rho)
    (r2548 : Seg13.relationRow2548 rho)
    (r2549 : Seg13.relationRow2549 rho)
    (r2550 : Seg13.relationRow2550 rho)
    (r2551 : Seg13.relationRow2551 rho)
    (tail : next (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg14 (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) next := by
  exact ⟨rho 9730, rho 9731, rho 9732, rho 9733, rho 9734, r2547, r2548, r2549, r2550, r2551, tail⟩

theorem seg13_scp_node6_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2552 : Seg13.relationRow2552 rho)
    (r2553 : Seg13.relationRow2553 rho)
    (r2554 : Seg13.relationRow2554 rho)
    (r2555 : Seg13.relationRow2555 rho)
    (r2556 : Seg13.relationRow2556 rho)
    (tail : next (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) (rho 9739)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg15 (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) next := by
  exact ⟨rho 9735, rho 9736, rho 9737, rho 9738, rho 9739, r2552, r2553, r2554, r2555, r2556, tail⟩

theorem seg13_scp_node6_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2557 : Seg13.relationRow2557 rho)
    (r2558 : Seg13.relationRow2558 rho)
    (r2559 : Seg13.relationRow2559 rho)
    (r2560 : Seg13.relationRow2560 rho)
    (r2561 : Seg13.relationRow2561 rho)
    (tail : next (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) (rho 9739) (rho 9744)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg16 (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) (rho 9739) next := by
  exact ⟨rho 9740, rho 9741, rho 9742, rho 9743, rho 9744, r2557, r2558, r2559, r2560, r2561, tail⟩

theorem seg13_scp_node6_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2562 : Seg13.relationRow2562 rho)
    (r2563 : Seg13.relationRow2563 rho)
    (r2564 : Seg13.relationRow2564 rho)
    (r2565 : Seg13.relationRow2565 rho)
    (r2566 : Seg13.relationRow2566 rho)
    (tail : next (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) (rho 9739) (rho 9744) (rho 9749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg17 (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) (rho 9739) (rho 9744) next := by
  exact ⟨rho 9745, rho 9746, rho 9747, rho 9748, rho 9749, r2562, r2563, r2564, r2565, r2566, tail⟩

theorem seg13_scp_node6_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2567 : Seg13.relationRow2567 rho)
    (r2568 : Seg13.relationRow2568 rho)
    (r2569 : Seg13.relationRow2569 rho)
    (r2570 : Seg13.relationRow2570 rho)
    (r2571 : Seg13.relationRow2571 rho)
    (tail : next (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg18 (rho 9709) (rho 9714) (rho 9719) (rho 9724) (rho 9729) (rho 9734) (rho 9739) (rho 9744) (rho 9749) next := by
  exact ⟨rho 9750, rho 9751, rho 9752, rho 9753, rho 9754, r2567, r2568, r2569, r2570, r2571, tail⟩

theorem seg13_scp_node6_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2572 : Seg13.relationRow2572 rho)
    (r2573 : Seg13.relationRow2573 rho)
    (r2574 : Seg13.relationRow2574 rho)
    (r2575 : Seg13.relationRow2575 rho)
    (r2576 : Seg13.relationRow2576 rho)
    (tail : next (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg19 (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) next := by
  exact ⟨rho 9755, rho 9756, rho 9757, rho 9758, rho 9759, r2572, r2573, r2574, r2575, r2576, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

