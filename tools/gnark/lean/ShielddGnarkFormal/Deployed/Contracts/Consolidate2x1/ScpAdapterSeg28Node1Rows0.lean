import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node1_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r657 : Seg28.relationRow657 rho)
    (r658 : Seg28.relationRow658 rho)
    (r659 : Seg28.relationRow659 rho)
    (r660 : Seg28.relationRow660 rho)
    (r661 : Seg28.relationRow661 rho)
    (tail : next (rho 182) (rho 183) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046) (rho 20051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg0 (rho 181) (rho 182) (rho 183) (rho 20041) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046) next := by
  exact ⟨rho 20047, rho 20048, rho 20049, rho 20050, rho 20051, r657, r658, r659, r660, r661, tail⟩

theorem seg28_scp_node1_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r662 : Seg28.relationRow662 rho)
    (r663 : Seg28.relationRow663 rho)
    (r664 : Seg28.relationRow664 rho)
    (r665 : Seg28.relationRow665 rho)
    (r666 : Seg28.relationRow666 rho)
    (tail : next (rho 182) (rho 183) (rho 20044) (rho 20045) (rho 20046) (rho 20051) (rho 20056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg1 (rho 182) (rho 183) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046) (rho 20051) next := by
  exact ⟨rho 20052, rho 20053, rho 20054, rho 20055, rho 20056, r662, r663, r664, r665, r666, tail⟩

theorem seg28_scp_node1_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r667 : Seg28.relationRow667 rho)
    (r668 : Seg28.relationRow668 rho)
    (r669 : Seg28.relationRow669 rho)
    (r670 : Seg28.relationRow670 rho)
    (r671 : Seg28.relationRow671 rho)
    (tail : next (rho 183) (rho 20046) (rho 20051) (rho 20056) (rho 20061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg2 (rho 182) (rho 183) (rho 20044) (rho 20045) (rho 20046) (rho 20051) (rho 20056) next := by
  exact ⟨rho 20057, rho 20058, rho 20059, rho 20060, rho 20061, r667, r668, r669, r670, r671, tail⟩

theorem seg28_scp_node1_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r672 : Seg28.relationRow672 rho)
    (r673 : Seg28.relationRow673 rho)
    (r674 : Seg28.relationRow674 rho)
    (r675 : Seg28.relationRow675 rho)
    (r676 : Seg28.relationRow676 rho)
    (tail : next (rho 20051) (rho 20056) (rho 20061) (rho 20066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg3 (rho 183) (rho 20046) (rho 20051) (rho 20056) (rho 20061) next := by
  exact ⟨rho 20062, rho 20063, rho 20064, rho 20065, rho 20066, r672, r673, r674, r675, r676, tail⟩

theorem seg28_scp_node1_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r677 : Seg28.relationRow677 rho)
    (r678 : Seg28.relationRow678 rho)
    (r679 : Seg28.relationRow679 rho)
    (r680 : Seg28.relationRow680 rho)
    (r681 : Seg28.relationRow681 rho)
    (tail : next (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg4 (rho 20051) (rho 20056) (rho 20061) (rho 20066) next := by
  exact ⟨rho 20067, rho 20068, rho 20069, rho 20070, rho 20071, r677, r678, r679, r680, r681, tail⟩

theorem seg28_scp_node1_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r682 : Seg28.relationRow682 rho)
    (r683 : Seg28.relationRow683 rho)
    (r684 : Seg28.relationRow684 rho)
    (r685 : Seg28.relationRow685 rho)
    (r686 : Seg28.relationRow686 rho)
    (tail : next (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) (rho 20076)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg5 (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) next := by
  exact ⟨rho 20072, rho 20073, rho 20074, rho 20075, rho 20076, r682, r683, r684, r685, r686, tail⟩

theorem seg28_scp_node1_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r687 : Seg28.relationRow687 rho)
    (r688 : Seg28.relationRow688 rho)
    (r689 : Seg28.relationRow689 rho)
    (r690 : Seg28.relationRow690 rho)
    (r691 : Seg28.relationRow691 rho)
    (tail : next (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) (rho 20076) (rho 20081)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg6 (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) (rho 20076) next := by
  exact ⟨rho 20077, rho 20078, rho 20079, rho 20080, rho 20081, r687, r688, r689, r690, r691, tail⟩

theorem seg28_scp_node1_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r692 : Seg28.relationRow692 rho)
    (r693 : Seg28.relationRow693 rho)
    (r694 : Seg28.relationRow694 rho)
    (r695 : Seg28.relationRow695 rho)
    (r696 : Seg28.relationRow696 rho)
    (tail : next (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) (rho 20076) (rho 20081) (rho 20086)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg7 (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) (rho 20076) (rho 20081) next := by
  exact ⟨rho 20082, rho 20083, rho 20084, rho 20085, rho 20086, r692, r693, r694, r695, r696, tail⟩

theorem seg28_scp_node1_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r697 : Seg28.relationRow697 rho)
    (r698 : Seg28.relationRow698 rho)
    (r699 : Seg28.relationRow699 rho)
    (r700 : Seg28.relationRow700 rho)
    (r701 : Seg28.relationRow701 rho)
    (tail : next (rho 20071) (rho 20076) (rho 20081) (rho 20086) (rho 20091)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg8 (rho 20051) (rho 20056) (rho 20061) (rho 20066) (rho 20071) (rho 20076) (rho 20081) (rho 20086) next := by
  exact ⟨rho 20087, rho 20088, rho 20089, rho 20090, rho 20091, r697, r698, r699, r700, r701, tail⟩

theorem seg28_scp_node1_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r702 : Seg28.relationRow702 rho)
    (r703 : Seg28.relationRow703 rho)
    (r704 : Seg28.relationRow704 rho)
    (r705 : Seg28.relationRow705 rho)
    (r706 : Seg28.relationRow706 rho)
    (tail : next (rho 20071) (rho 20076) (rho 20081) (rho 20086) (rho 20091) (rho 20096)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg9 (rho 20071) (rho 20076) (rho 20081) (rho 20086) (rho 20091) next := by
  exact ⟨rho 20092, rho 20093, rho 20094, rho 20095, rho 20096, r702, r703, r704, r705, r706, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

