import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node15_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5753 : Seg28.relationRow5753 rho)
    (r5754 : Seg28.relationRow5754 rho)
    (r5755 : Seg28.relationRow5755 rho)
    (r5756 : Seg28.relationRow5756 rho)
    (r5757 : Seg28.relationRow5757 rho)
    (tail : next (rho 137) (rho 138) (rho 25076) (rho 25077) (rho 25078) (rho 25079) (rho 25080) (rho 25085)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg0 (rho 136) (rho 137) (rho 138) (rho 25075) (rho 25076) (rho 25077) (rho 25078) (rho 25079) (rho 25080) next := by
  exact ⟨rho 25081, rho 25082, rho 25083, rho 25084, rho 25085, r5753, r5754, r5755, r5756, r5757, tail⟩

theorem seg28_scp_node15_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5758 : Seg28.relationRow5758 rho)
    (r5759 : Seg28.relationRow5759 rho)
    (r5760 : Seg28.relationRow5760 rho)
    (r5761 : Seg28.relationRow5761 rho)
    (r5762 : Seg28.relationRow5762 rho)
    (tail : next (rho 137) (rho 138) (rho 25078) (rho 25079) (rho 25080) (rho 25085) (rho 25090)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg1 (rho 137) (rho 138) (rho 25076) (rho 25077) (rho 25078) (rho 25079) (rho 25080) (rho 25085) next := by
  exact ⟨rho 25086, rho 25087, rho 25088, rho 25089, rho 25090, r5758, r5759, r5760, r5761, r5762, tail⟩

theorem seg28_scp_node15_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5763 : Seg28.relationRow5763 rho)
    (r5764 : Seg28.relationRow5764 rho)
    (r5765 : Seg28.relationRow5765 rho)
    (r5766 : Seg28.relationRow5766 rho)
    (r5767 : Seg28.relationRow5767 rho)
    (tail : next (rho 138) (rho 25080) (rho 25085) (rho 25090) (rho 25095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg2 (rho 137) (rho 138) (rho 25078) (rho 25079) (rho 25080) (rho 25085) (rho 25090) next := by
  exact ⟨rho 25091, rho 25092, rho 25093, rho 25094, rho 25095, r5763, r5764, r5765, r5766, r5767, tail⟩

theorem seg28_scp_node15_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5768 : Seg28.relationRow5768 rho)
    (r5769 : Seg28.relationRow5769 rho)
    (r5770 : Seg28.relationRow5770 rho)
    (r5771 : Seg28.relationRow5771 rho)
    (r5772 : Seg28.relationRow5772 rho)
    (tail : next (rho 25085) (rho 25090) (rho 25095) (rho 25100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg3 (rho 138) (rho 25080) (rho 25085) (rho 25090) (rho 25095) next := by
  exact ⟨rho 25096, rho 25097, rho 25098, rho 25099, rho 25100, r5768, r5769, r5770, r5771, r5772, tail⟩

theorem seg28_scp_node15_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5773 : Seg28.relationRow5773 rho)
    (r5774 : Seg28.relationRow5774 rho)
    (r5775 : Seg28.relationRow5775 rho)
    (r5776 : Seg28.relationRow5776 rho)
    (r5777 : Seg28.relationRow5777 rho)
    (tail : next (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg4 (rho 25085) (rho 25090) (rho 25095) (rho 25100) next := by
  exact ⟨rho 25101, rho 25102, rho 25103, rho 25104, rho 25105, r5773, r5774, r5775, r5776, r5777, tail⟩

theorem seg28_scp_node15_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5778 : Seg28.relationRow5778 rho)
    (r5779 : Seg28.relationRow5779 rho)
    (r5780 : Seg28.relationRow5780 rho)
    (r5781 : Seg28.relationRow5781 rho)
    (r5782 : Seg28.relationRow5782 rho)
    (tail : next (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) (rho 25110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg5 (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) next := by
  exact ⟨rho 25106, rho 25107, rho 25108, rho 25109, rho 25110, r5778, r5779, r5780, r5781, r5782, tail⟩

theorem seg28_scp_node15_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5783 : Seg28.relationRow5783 rho)
    (r5784 : Seg28.relationRow5784 rho)
    (r5785 : Seg28.relationRow5785 rho)
    (r5786 : Seg28.relationRow5786 rho)
    (r5787 : Seg28.relationRow5787 rho)
    (tail : next (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) (rho 25110) (rho 25115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg6 (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) (rho 25110) next := by
  exact ⟨rho 25111, rho 25112, rho 25113, rho 25114, rho 25115, r5783, r5784, r5785, r5786, r5787, tail⟩

theorem seg28_scp_node15_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5788 : Seg28.relationRow5788 rho)
    (r5789 : Seg28.relationRow5789 rho)
    (r5790 : Seg28.relationRow5790 rho)
    (r5791 : Seg28.relationRow5791 rho)
    (r5792 : Seg28.relationRow5792 rho)
    (tail : next (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) (rho 25110) (rho 25115) (rho 25120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg7 (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) (rho 25110) (rho 25115) next := by
  exact ⟨rho 25116, rho 25117, rho 25118, rho 25119, rho 25120, r5788, r5789, r5790, r5791, r5792, tail⟩

theorem seg28_scp_node15_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5793 : Seg28.relationRow5793 rho)
    (r5794 : Seg28.relationRow5794 rho)
    (r5795 : Seg28.relationRow5795 rho)
    (r5796 : Seg28.relationRow5796 rho)
    (r5797 : Seg28.relationRow5797 rho)
    (tail : next (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg8 (rho 25085) (rho 25090) (rho 25095) (rho 25100) (rho 25105) (rho 25110) (rho 25115) (rho 25120) next := by
  exact ⟨rho 25121, rho 25122, rho 25123, rho 25124, rho 25125, r5793, r5794, r5795, r5796, r5797, tail⟩

theorem seg28_scp_node15_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5798 : Seg28.relationRow5798 rho)
    (r5799 : Seg28.relationRow5799 rho)
    (r5800 : Seg28.relationRow5800 rho)
    (r5801 : Seg28.relationRow5801 rho)
    (r5802 : Seg28.relationRow5802 rho)
    (tail : next (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) (rho 25130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg9 (rho 25105) (rho 25110) (rho 25115) (rho 25120) (rho 25125) next := by
  exact ⟨rho 25126, rho 25127, rho 25128, rho 25129, rho 25130, r5798, r5799, r5800, r5801, r5802, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

