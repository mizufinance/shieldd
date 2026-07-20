import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node11_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4547 : Seg13.relationRow4547 rho)
    (r4548 : Seg13.relationRow4548 rho)
    (r4549 : Seg13.relationRow4549 rho)
    (r4550 : Seg13.relationRow4550 rho)
    (r4551 : Seg13.relationRow4551 rho)
    (tail : next (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg50 (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) next := by
  exact ⟨rho 11710, rho 11711, rho 11712, rho 11713, rho 11714, r4547, r4548, r4549, r4550, r4551, tail⟩

theorem seg13_scp_node11_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4552 : Seg13.relationRow4552 rho)
    (r4553 : Seg13.relationRow4553 rho)
    (r4554 : Seg13.relationRow4554 rho)
    (r4555 : Seg13.relationRow4555 rho)
    (r4556 : Seg13.relationRow4556 rho)
    (tail : next (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) (rho 11719)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg51 (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) next := by
  exact ⟨rho 11715, rho 11716, rho 11717, rho 11718, rho 11719, r4552, r4553, r4554, r4555, r4556, tail⟩

theorem seg13_scp_node11_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4557 : Seg13.relationRow4557 rho)
    (r4558 : Seg13.relationRow4558 rho)
    (r4559 : Seg13.relationRow4559 rho)
    (r4560 : Seg13.relationRow4560 rho)
    (r4561 : Seg13.relationRow4561 rho)
    (tail : next (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) (rho 11719) (rho 11724)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg52 (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) (rho 11719) next := by
  exact ⟨rho 11720, rho 11721, rho 11722, rho 11723, rho 11724, r4557, r4558, r4559, r4560, r4561, tail⟩

theorem seg13_scp_node11_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4562 : Seg13.relationRow4562 rho)
    (r4563 : Seg13.relationRow4563 rho)
    (r4564 : Seg13.relationRow4564 rho)
    (r4565 : Seg13.relationRow4565 rho)
    (r4566 : Seg13.relationRow4566 rho)
    (tail : next (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) (rho 11719) (rho 11724) (rho 11729)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg53 (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) (rho 11719) (rho 11724) next := by
  exact ⟨rho 11725, rho 11726, rho 11727, rho 11728, rho 11729, r4562, r4563, r4564, r4565, r4566, tail⟩

theorem seg13_scp_node11_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4567 : Seg13.relationRow4567 rho)
    (r4568 : Seg13.relationRow4568 rho)
    (r4569 : Seg13.relationRow4569 rho)
    (r4570 : Seg13.relationRow4570 rho)
    (r4571 : Seg13.relationRow4571 rho)
    (tail : next (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg54 (rho 11534) (rho 11539) (rho 11544) (rho 11549) (rho 11554) (rho 11559) (rho 11564) (rho 11569) (rho 11574) (rho 11579) (rho 11584) (rho 11589) (rho 11594) (rho 11599) (rho 11604) (rho 11609) (rho 11614) (rho 11619) (rho 11624) (rho 11629) (rho 11634) (rho 11639) (rho 11644) (rho 11649) (rho 11654) (rho 11659) (rho 11664) (rho 11669) (rho 11674) (rho 11679) (rho 11684) (rho 11689) (rho 11694) (rho 11699) (rho 11704) (rho 11709) (rho 11714) (rho 11719) (rho 11724) (rho 11729) next := by
  exact ⟨rho 11730, rho 11731, rho 11732, rho 11733, rho 11734, r4567, r4568, r4569, r4570, r4571, tail⟩

theorem seg13_scp_node11_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4572 : Seg13.relationRow4572 rho)
    (r4573 : Seg13.relationRow4573 rho)
    (r4574 : Seg13.relationRow4574 rho)
    (r4575 : Seg13.relationRow4575 rho)
    (r4576 : Seg13.relationRow4576 rho)
    (tail : next (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg55 (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) next := by
  exact ⟨rho 11735, rho 11736, rho 11737, rho 11738, rho 11739, r4572, r4573, r4574, r4575, r4576, tail⟩

theorem seg13_scp_node11_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4577 : Seg13.relationRow4577 rho)
    (r4578 : Seg13.relationRow4578 rho)
    (r4579 : Seg13.relationRow4579 rho)
    (r4580 : Seg13.relationRow4580 rho)
    (r4581 : Seg13.relationRow4581 rho)
    (tail : next (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) (rho 11744)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg56 (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) next := by
  exact ⟨rho 11740, rho 11741, rho 11742, rho 11743, rho 11744, r4577, r4578, r4579, r4580, r4581, tail⟩

theorem seg13_scp_node11_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4582 : Seg13.relationRow4582 rho)
    (r4583 : Seg13.relationRow4583 rho)
    (r4584 : Seg13.relationRow4584 rho)
    (r4585 : Seg13.relationRow4585 rho)
    (r4586 : Seg13.relationRow4586 rho)
    (tail : next (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) (rho 11744) (rho 11749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg57 (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) (rho 11744) next := by
  exact ⟨rho 11745, rho 11746, rho 11747, rho 11748, rho 11749, r4582, r4583, r4584, r4585, r4586, tail⟩

theorem seg13_scp_node11_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4587 : Seg13.relationRow4587 rho)
    (r4588 : Seg13.relationRow4588 rho)
    (r4589 : Seg13.relationRow4589 rho)
    (r4590 : Seg13.relationRow4590 rho)
    (r4591 : Seg13.relationRow4591 rho)
    (tail : next (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) (rho 11744) (rho 11749) (rho 11754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg58 (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) (rho 11744) (rho 11749) next := by
  exact ⟨rho 11750, rho 11751, rho 11752, rho 11753, rho 11754, r4587, r4588, r4589, r4590, r4591, tail⟩

theorem seg13_scp_node11_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4592 : Seg13.relationRow4592 rho)
    (r4593 : Seg13.relationRow4593 rho)
    (r4594 : Seg13.relationRow4594 rho)
    (r4595 : Seg13.relationRow4595 rho)
    (r4596 : Seg13.relationRow4596 rho)
    (tail : next (rho 11739) (rho 11744) (rho 11749) (rho 11754) (rho 11759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg59 (rho 11714) (rho 11719) (rho 11724) (rho 11729) (rho 11734) (rho 11739) (rho 11744) (rho 11749) (rho 11754) next := by
  exact ⟨rho 11755, rho 11756, rho 11757, rho 11758, rho 11759, r4592, r4593, r4594, r4595, r4596, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

