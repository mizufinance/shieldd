import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node15_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5803 : Seg28.relationRow5803 rho)
    (r5804 : Seg28.relationRow5804 rho)
    (r5805 : Seg28.relationRow5805 rho)
    (r5806 : Seg28.relationRow5806 rho)
    (r5807 : Seg28.relationRow5807 rho)
    (tail : next (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) (rho 25135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg10 (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) next := by
  exact ⟨rho 25131, rho 25132, rho 25133, rho 25134, rho 25135, r5803, r5804, r5805, r5806, r5807, tail⟩

theorem seg28_scp_node15_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5808 : Seg28.relationRow5808 rho)
    (r5809 : Seg28.relationRow5809 rho)
    (r5810 : Seg28.relationRow5810 rho)
    (r5811 : Seg28.relationRow5811 rho)
    (r5812 : Seg28.relationRow5812 rho)
    (tail : next (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) (rho 25135) (rho 25140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg11 (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) (rho 25135) next := by
  exact ⟨rho 25136, rho 25137, rho 25138, rho 25139, rho 25140, r5808, r5809, r5810, r5811, r5812, tail⟩

theorem seg28_scp_node15_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5813 : Seg28.relationRow5813 rho)
    (r5814 : Seg28.relationRow5814 rho)
    (r5815 : Seg28.relationRow5815 rho)
    (r5816 : Seg28.relationRow5816 rho)
    (r5817 : Seg28.relationRow5817 rho)
    (tail : next (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) (rho 25135) (rho 25140) (rho 25145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg12 (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) (rho 25135) (rho 25140) next := by
  exact ⟨rho 25141, rho 25142, rho 25143, rho 25144, rho 25145, r5813, r5814, r5815, r5816, r5817, tail⟩

theorem seg28_scp_node15_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5818 : Seg28.relationRow5818 rho)
    (r5819 : Seg28.relationRow5819 rho)
    (r5820 : Seg28.relationRow5820 rho)
    (r5821 : Seg28.relationRow5821 rho)
    (r5822 : Seg28.relationRow5822 rho)
    (tail : next (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg13 (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130) (rho 25135) (rho 25140) (rho 25145) next := by
  exact ⟨rho 25146, rho 25147, rho 25148, rho 25149, rho 25150, r5818, r5819, r5820, r5821, r5822, tail⟩

theorem seg28_scp_node15_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5823 : Seg28.relationRow5823 rho)
    (r5824 : Seg28.relationRow5824 rho)
    (r5825 : Seg28.relationRow5825 rho)
    (r5826 : Seg28.relationRow5826 rho)
    (r5827 : Seg28.relationRow5827 rho)
    (tail : next (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg14 (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) next := by
  exact ⟨rho 25151, rho 25152, rho 25153, rho 25154, rho 25155, r5823, r5824, r5825, r5826, r5827, tail⟩

theorem seg28_scp_node15_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5828 : Seg28.relationRow5828 rho)
    (r5829 : Seg28.relationRow5829 rho)
    (r5830 : Seg28.relationRow5830 rho)
    (r5831 : Seg28.relationRow5831 rho)
    (r5832 : Seg28.relationRow5832 rho)
    (tail : next (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) (rho 25160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg15 (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) next := by
  exact ⟨rho 25156, rho 25157, rho 25158, rho 25159, rho 25160, r5828, r5829, r5830, r5831, r5832, tail⟩

theorem seg28_scp_node15_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5833 : Seg28.relationRow5833 rho)
    (r5834 : Seg28.relationRow5834 rho)
    (r5835 : Seg28.relationRow5835 rho)
    (r5836 : Seg28.relationRow5836 rho)
    (r5837 : Seg28.relationRow5837 rho)
    (tail : next (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) (rho 25160) (rho 25165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg16 (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) (rho 25160) next := by
  exact ⟨rho 25161, rho 25162, rho 25163, rho 25164, rho 25165, r5833, r5834, r5835, r5836, r5837, tail⟩

theorem seg28_scp_node15_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5838 : Seg28.relationRow5838 rho)
    (r5839 : Seg28.relationRow5839 rho)
    (r5840 : Seg28.relationRow5840 rho)
    (r5841 : Seg28.relationRow5841 rho)
    (r5842 : Seg28.relationRow5842 rho)
    (tail : next (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) (rho 25160) (rho 25165) (rho 25170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg17 (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) (rho 25160) (rho 25165) next := by
  exact ⟨rho 25166, rho 25167, rho 25168, rho 25169, rho 25170, r5838, r5839, r5840, r5841, r5842, tail⟩

theorem seg28_scp_node15_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5843 : Seg28.relationRow5843 rho)
    (r5844 : Seg28.relationRow5844 rho)
    (r5845 : Seg28.relationRow5845 rho)
    (r5846 : Seg28.relationRow5846 rho)
    (r5847 : Seg28.relationRow5847 rho)
    (tail : next (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg18 (rho 25130) (rho 25135) (rho 25140) (rho 25145) (rho 25150) (rho 25155) (rho 25160) (rho 25165) (rho 25170) next := by
  exact ⟨rho 25171, rho 25172, rho 25173, rho 25174, rho 25175, r5843, r5844, r5845, r5846, r5847, tail⟩

theorem seg28_scp_node15_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5848 : Seg28.relationRow5848 rho)
    (r5849 : Seg28.relationRow5849 rho)
    (r5850 : Seg28.relationRow5850 rho)
    (r5851 : Seg28.relationRow5851 rho)
    (r5852 : Seg28.relationRow5852 rho)
    (tail : next (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) (rho 25180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg19 (rho 25155) (rho 25160) (rho 25165) (rho 25170) (rho 25175) next := by
  exact ⟨rho 25176, rho 25177, rho 25178, rho 25179, rho 25180, r5848, r5849, r5850, r5851, r5852, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

