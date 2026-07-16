import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd

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
    (tail : next (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg50 (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) next := by
  exact ⟨rho 11716, rho 11717, rho 11718, rho 11719, rho 11720, r4547, r4548, r4549, r4550, r4551, tail⟩

theorem seg13_scp_node11_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4552 : Seg13.relationRow4552 rho)
    (r4553 : Seg13.relationRow4553 rho)
    (r4554 : Seg13.relationRow4554 rho)
    (r4555 : Seg13.relationRow4555 rho)
    (r4556 : Seg13.relationRow4556 rho)
    (tail : next (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) (rho 11725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg51 (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) next := by
  exact ⟨rho 11721, rho 11722, rho 11723, rho 11724, rho 11725, r4552, r4553, r4554, r4555, r4556, tail⟩

theorem seg13_scp_node11_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4557 : Seg13.relationRow4557 rho)
    (r4558 : Seg13.relationRow4558 rho)
    (r4559 : Seg13.relationRow4559 rho)
    (r4560 : Seg13.relationRow4560 rho)
    (r4561 : Seg13.relationRow4561 rho)
    (tail : next (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) (rho 11725) (rho 11730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg52 (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) (rho 11725) next := by
  exact ⟨rho 11726, rho 11727, rho 11728, rho 11729, rho 11730, r4557, r4558, r4559, r4560, r4561, tail⟩

theorem seg13_scp_node11_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4562 : Seg13.relationRow4562 rho)
    (r4563 : Seg13.relationRow4563 rho)
    (r4564 : Seg13.relationRow4564 rho)
    (r4565 : Seg13.relationRow4565 rho)
    (r4566 : Seg13.relationRow4566 rho)
    (tail : next (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) (rho 11725) (rho 11730) (rho 11735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg53 (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) (rho 11725) (rho 11730) next := by
  exact ⟨rho 11731, rho 11732, rho 11733, rho 11734, rho 11735, r4562, r4563, r4564, r4565, r4566, tail⟩

theorem seg13_scp_node11_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4567 : Seg13.relationRow4567 rho)
    (r4568 : Seg13.relationRow4568 rho)
    (r4569 : Seg13.relationRow4569 rho)
    (r4570 : Seg13.relationRow4570 rho)
    (r4571 : Seg13.relationRow4571 rho)
    (tail : next (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg54 (rho 11540) (rho 11545) (rho 11550) (rho 11555) (rho 11560) (rho 11565) (rho 11570) (rho 11575) (rho 11580) (rho 11585) (rho 11590) (rho 11595) (rho 11600) (rho 11605) (rho 11610) (rho 11615) (rho 11620) (rho 11625) (rho 11630) (rho 11635) (rho 11640) (rho 11645) (rho 11650) (rho 11655) (rho 11660) (rho 11665) (rho 11670) (rho 11675) (rho 11680) (rho 11685) (rho 11690) (rho 11695) (rho 11700) (rho 11705) (rho 11710) (rho 11715) (rho 11720) (rho 11725) (rho 11730) (rho 11735) next := by
  exact ⟨rho 11736, rho 11737, rho 11738, rho 11739, rho 11740, r4567, r4568, r4569, r4570, r4571, tail⟩

theorem seg13_scp_node11_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4572 : Seg13.relationRow4572 rho)
    (r4573 : Seg13.relationRow4573 rho)
    (r4574 : Seg13.relationRow4574 rho)
    (r4575 : Seg13.relationRow4575 rho)
    (r4576 : Seg13.relationRow4576 rho)
    (tail : next (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg55 (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) next := by
  exact ⟨rho 11741, rho 11742, rho 11743, rho 11744, rho 11745, r4572, r4573, r4574, r4575, r4576, tail⟩

theorem seg13_scp_node11_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4577 : Seg13.relationRow4577 rho)
    (r4578 : Seg13.relationRow4578 rho)
    (r4579 : Seg13.relationRow4579 rho)
    (r4580 : Seg13.relationRow4580 rho)
    (r4581 : Seg13.relationRow4581 rho)
    (tail : next (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) (rho 11750)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg56 (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) next := by
  exact ⟨rho 11746, rho 11747, rho 11748, rho 11749, rho 11750, r4577, r4578, r4579, r4580, r4581, tail⟩

theorem seg13_scp_node11_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4582 : Seg13.relationRow4582 rho)
    (r4583 : Seg13.relationRow4583 rho)
    (r4584 : Seg13.relationRow4584 rho)
    (r4585 : Seg13.relationRow4585 rho)
    (r4586 : Seg13.relationRow4586 rho)
    (tail : next (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) (rho 11750) (rho 11755)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg57 (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) (rho 11750) next := by
  exact ⟨rho 11751, rho 11752, rho 11753, rho 11754, rho 11755, r4582, r4583, r4584, r4585, r4586, tail⟩

theorem seg13_scp_node11_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4587 : Seg13.relationRow4587 rho)
    (r4588 : Seg13.relationRow4588 rho)
    (r4589 : Seg13.relationRow4589 rho)
    (r4590 : Seg13.relationRow4590 rho)
    (r4591 : Seg13.relationRow4591 rho)
    (tail : next (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) (rho 11750) (rho 11755) (rho 11760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg58 (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) (rho 11750) (rho 11755) next := by
  exact ⟨rho 11756, rho 11757, rho 11758, rho 11759, rho 11760, r4587, r4588, r4589, r4590, r4591, tail⟩

theorem seg13_scp_node11_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4592 : Seg13.relationRow4592 rho)
    (r4593 : Seg13.relationRow4593 rho)
    (r4594 : Seg13.relationRow4594 rho)
    (r4595 : Seg13.relationRow4595 rho)
    (r4596 : Seg13.relationRow4596 rho)
    (tail : next (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg59 (rho 11720) (rho 11725) (rho 11730) (rho 11735) (rho 11740) (rho 11745) (rho 11750) (rho 11755) (rho 11760) next := by
  exact ⟨rho 11761, rho 11762, rho 11763, rho 11764, rho 11765, r4592, r4593, r4594, r4595, r4596, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

