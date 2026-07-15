import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node1_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r657 : Seg13.relationRow657 rho)
    (r658 : Seg13.relationRow658 rho)
    (r659 : Seg13.relationRow659 rho)
    (r660 : Seg13.relationRow660 rho)
    (r661 : Seg13.relationRow661 rho)
    (tail : next (rho 92) (rho 93) (rho 7861) (rho 7862) (rho 7863) (rho 7864) (rho 7865) (rho 7870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg0 (rho 91) (rho 92) (rho 93) (rho 7860) (rho 7861) (rho 7862) (rho 7863) (rho 7864) (rho 7865) next := by
  exact ⟨rho 7866, rho 7867, rho 7868, rho 7869, rho 7870, r657, r658, r659, r660, r661, tail⟩

theorem seg13_scp_node1_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r662 : Seg13.relationRow662 rho)
    (r663 : Seg13.relationRow663 rho)
    (r664 : Seg13.relationRow664 rho)
    (r665 : Seg13.relationRow665 rho)
    (r666 : Seg13.relationRow666 rho)
    (tail : next (rho 92) (rho 93) (rho 7863) (rho 7864) (rho 7865) (rho 7870) (rho 7875)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg1 (rho 92) (rho 93) (rho 7861) (rho 7862) (rho 7863) (rho 7864) (rho 7865) (rho 7870) next := by
  exact ⟨rho 7871, rho 7872, rho 7873, rho 7874, rho 7875, r662, r663, r664, r665, r666, tail⟩

theorem seg13_scp_node1_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r667 : Seg13.relationRow667 rho)
    (r668 : Seg13.relationRow668 rho)
    (r669 : Seg13.relationRow669 rho)
    (r670 : Seg13.relationRow670 rho)
    (r671 : Seg13.relationRow671 rho)
    (tail : next (rho 93) (rho 7865) (rho 7870) (rho 7875) (rho 7880)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg2 (rho 92) (rho 93) (rho 7863) (rho 7864) (rho 7865) (rho 7870) (rho 7875) next := by
  exact ⟨rho 7876, rho 7877, rho 7878, rho 7879, rho 7880, r667, r668, r669, r670, r671, tail⟩

theorem seg13_scp_node1_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r672 : Seg13.relationRow672 rho)
    (r673 : Seg13.relationRow673 rho)
    (r674 : Seg13.relationRow674 rho)
    (r675 : Seg13.relationRow675 rho)
    (r676 : Seg13.relationRow676 rho)
    (tail : next (rho 7870) (rho 7875) (rho 7880) (rho 7885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg3 (rho 93) (rho 7865) (rho 7870) (rho 7875) (rho 7880) next := by
  exact ⟨rho 7881, rho 7882, rho 7883, rho 7884, rho 7885, r672, r673, r674, r675, r676, tail⟩

theorem seg13_scp_node1_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r677 : Seg13.relationRow677 rho)
    (r678 : Seg13.relationRow678 rho)
    (r679 : Seg13.relationRow679 rho)
    (r680 : Seg13.relationRow680 rho)
    (r681 : Seg13.relationRow681 rho)
    (tail : next (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg4 (rho 7870) (rho 7875) (rho 7880) (rho 7885) next := by
  exact ⟨rho 7886, rho 7887, rho 7888, rho 7889, rho 7890, r677, r678, r679, r680, r681, tail⟩

theorem seg13_scp_node1_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r682 : Seg13.relationRow682 rho)
    (r683 : Seg13.relationRow683 rho)
    (r684 : Seg13.relationRow684 rho)
    (r685 : Seg13.relationRow685 rho)
    (r686 : Seg13.relationRow686 rho)
    (tail : next (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) (rho 7895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg5 (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) next := by
  exact ⟨rho 7891, rho 7892, rho 7893, rho 7894, rho 7895, r682, r683, r684, r685, r686, tail⟩

theorem seg13_scp_node1_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r687 : Seg13.relationRow687 rho)
    (r688 : Seg13.relationRow688 rho)
    (r689 : Seg13.relationRow689 rho)
    (r690 : Seg13.relationRow690 rho)
    (r691 : Seg13.relationRow691 rho)
    (tail : next (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) (rho 7895) (rho 7900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg6 (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) (rho 7895) next := by
  exact ⟨rho 7896, rho 7897, rho 7898, rho 7899, rho 7900, r687, r688, r689, r690, r691, tail⟩

theorem seg13_scp_node1_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r692 : Seg13.relationRow692 rho)
    (r693 : Seg13.relationRow693 rho)
    (r694 : Seg13.relationRow694 rho)
    (r695 : Seg13.relationRow695 rho)
    (r696 : Seg13.relationRow696 rho)
    (tail : next (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) (rho 7895) (rho 7900) (rho 7905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg7 (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) (rho 7895) (rho 7900) next := by
  exact ⟨rho 7901, rho 7902, rho 7903, rho 7904, rho 7905, r692, r693, r694, r695, r696, tail⟩

theorem seg13_scp_node1_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r697 : Seg13.relationRow697 rho)
    (r698 : Seg13.relationRow698 rho)
    (r699 : Seg13.relationRow699 rho)
    (r700 : Seg13.relationRow700 rho)
    (r701 : Seg13.relationRow701 rho)
    (tail : next (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg8 (rho 7870) (rho 7875) (rho 7880) (rho 7885) (rho 7890) (rho 7895) (rho 7900) (rho 7905) next := by
  exact ⟨rho 7906, rho 7907, rho 7908, rho 7909, rho 7910, r697, r698, r699, r700, r701, tail⟩

theorem seg13_scp_node1_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r702 : Seg13.relationRow702 rho)
    (r703 : Seg13.relationRow703 rho)
    (r704 : Seg13.relationRow704 rho)
    (r705 : Seg13.relationRow705 rho)
    (r706 : Seg13.relationRow706 rho)
    (tail : next (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg9 (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) next := by
  exact ⟨rho 7911, rho 7912, rho 7913, rho 7914, rho 7915, r702, r703, r704, r705, r706, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

