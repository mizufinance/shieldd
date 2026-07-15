import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node17_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6531 : Seg28.relationRow6531 rho)
    (r6532 : Seg28.relationRow6532 rho)
    (r6533 : Seg28.relationRow6533 rho)
    (r6534 : Seg28.relationRow6534 rho)
    (r6535 : Seg28.relationRow6535 rho)
    (tail : next (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) (rho 25861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg10 (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) next := by
  exact ⟨rho 25857, rho 25858, rho 25859, rho 25860, rho 25861, r6531, r6532, r6533, r6534, r6535, tail⟩

theorem seg28_scp_node17_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6536 : Seg28.relationRow6536 rho)
    (r6537 : Seg28.relationRow6537 rho)
    (r6538 : Seg28.relationRow6538 rho)
    (r6539 : Seg28.relationRow6539 rho)
    (r6540 : Seg28.relationRow6540 rho)
    (tail : next (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) (rho 25861) (rho 25866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg11 (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) (rho 25861) next := by
  exact ⟨rho 25862, rho 25863, rho 25864, rho 25865, rho 25866, r6536, r6537, r6538, r6539, r6540, tail⟩

theorem seg28_scp_node17_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6541 : Seg28.relationRow6541 rho)
    (r6542 : Seg28.relationRow6542 rho)
    (r6543 : Seg28.relationRow6543 rho)
    (r6544 : Seg28.relationRow6544 rho)
    (r6545 : Seg28.relationRow6545 rho)
    (tail : next (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) (rho 25861) (rho 25866) (rho 25871)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg12 (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) (rho 25861) (rho 25866) next := by
  exact ⟨rho 25867, rho 25868, rho 25869, rho 25870, rho 25871, r6541, r6542, r6543, r6544, r6545, tail⟩

theorem seg28_scp_node17_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6546 : Seg28.relationRow6546 rho)
    (r6547 : Seg28.relationRow6547 rho)
    (r6548 : Seg28.relationRow6548 rho)
    (r6549 : Seg28.relationRow6549 rho)
    (r6550 : Seg28.relationRow6550 rho)
    (tail : next (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg13 (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856) (rho 25861) (rho 25866) (rho 25871) next := by
  exact ⟨rho 25872, rho 25873, rho 25874, rho 25875, rho 25876, r6546, r6547, r6548, r6549, r6550, tail⟩

theorem seg28_scp_node17_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6551 : Seg28.relationRow6551 rho)
    (r6552 : Seg28.relationRow6552 rho)
    (r6553 : Seg28.relationRow6553 rho)
    (r6554 : Seg28.relationRow6554 rho)
    (r6555 : Seg28.relationRow6555 rho)
    (tail : next (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg14 (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) next := by
  exact ⟨rho 25877, rho 25878, rho 25879, rho 25880, rho 25881, r6551, r6552, r6553, r6554, r6555, tail⟩

theorem seg28_scp_node17_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6556 : Seg28.relationRow6556 rho)
    (r6557 : Seg28.relationRow6557 rho)
    (r6558 : Seg28.relationRow6558 rho)
    (r6559 : Seg28.relationRow6559 rho)
    (r6560 : Seg28.relationRow6560 rho)
    (tail : next (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) (rho 25886)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg15 (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) next := by
  exact ⟨rho 25882, rho 25883, rho 25884, rho 25885, rho 25886, r6556, r6557, r6558, r6559, r6560, tail⟩

theorem seg28_scp_node17_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6561 : Seg28.relationRow6561 rho)
    (r6562 : Seg28.relationRow6562 rho)
    (r6563 : Seg28.relationRow6563 rho)
    (r6564 : Seg28.relationRow6564 rho)
    (r6565 : Seg28.relationRow6565 rho)
    (tail : next (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) (rho 25886) (rho 25891)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg16 (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) (rho 25886) next := by
  exact ⟨rho 25887, rho 25888, rho 25889, rho 25890, rho 25891, r6561, r6562, r6563, r6564, r6565, tail⟩

theorem seg28_scp_node17_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6566 : Seg28.relationRow6566 rho)
    (r6567 : Seg28.relationRow6567 rho)
    (r6568 : Seg28.relationRow6568 rho)
    (r6569 : Seg28.relationRow6569 rho)
    (r6570 : Seg28.relationRow6570 rho)
    (tail : next (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) (rho 25886) (rho 25891) (rho 25896)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg17 (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) (rho 25886) (rho 25891) next := by
  exact ⟨rho 25892, rho 25893, rho 25894, rho 25895, rho 25896, r6566, r6567, r6568, r6569, r6570, tail⟩

theorem seg28_scp_node17_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6571 : Seg28.relationRow6571 rho)
    (r6572 : Seg28.relationRow6572 rho)
    (r6573 : Seg28.relationRow6573 rho)
    (r6574 : Seg28.relationRow6574 rho)
    (r6575 : Seg28.relationRow6575 rho)
    (tail : next (rho 25881) (rho 25886) (rho 25891) (rho 25896) (rho 25901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg18 (rho 25856) (rho 25861) (rho 25866) (rho 25871) (rho 25876) (rho 25881) (rho 25886) (rho 25891) (rho 25896) next := by
  exact ⟨rho 25897, rho 25898, rho 25899, rho 25900, rho 25901, r6571, r6572, r6573, r6574, r6575, tail⟩

theorem seg28_scp_node17_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6576 : Seg28.relationRow6576 rho)
    (r6577 : Seg28.relationRow6577 rho)
    (r6578 : Seg28.relationRow6578 rho)
    (r6579 : Seg28.relationRow6579 rho)
    (r6580 : Seg28.relationRow6580 rho)
    (tail : next (rho 25881) (rho 25886) (rho 25891) (rho 25896) (rho 25901) (rho 25906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg19 (rho 25881) (rho 25886) (rho 25891) (rho 25896) (rho 25901) next := by
  exact ⟨rho 25902, rho 25903, rho 25904, rho 25905, rho 25906, r6576, r6577, r6578, r6579, r6580, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

