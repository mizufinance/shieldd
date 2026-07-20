import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node15_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5753 : Seg13.relationRow5753 rho)
    (r5754 : Seg13.relationRow5754 rho)
    (r5755 : Seg13.relationRow5755 rho)
    (r5756 : Seg13.relationRow5756 rho)
    (r5757 : Seg13.relationRow5757 rho)
    (tail : next (rho 50) (rho 51) (rho 12895) (rho 12896) (rho 12897) (rho 12898) (rho 12899) (rho 12904)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg0 (rho 49) (rho 50) (rho 51) (rho 12894) (rho 12895) (rho 12896) (rho 12897) (rho 12898) (rho 12899) next := by
  exact ⟨rho 12900, rho 12901, rho 12902, rho 12903, rho 12904, r5753, r5754, r5755, r5756, r5757, tail⟩

theorem seg13_scp_node15_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5758 : Seg13.relationRow5758 rho)
    (r5759 : Seg13.relationRow5759 rho)
    (r5760 : Seg13.relationRow5760 rho)
    (r5761 : Seg13.relationRow5761 rho)
    (r5762 : Seg13.relationRow5762 rho)
    (tail : next (rho 50) (rho 51) (rho 12897) (rho 12898) (rho 12899) (rho 12904) (rho 12909)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg1 (rho 50) (rho 51) (rho 12895) (rho 12896) (rho 12897) (rho 12898) (rho 12899) (rho 12904) next := by
  exact ⟨rho 12905, rho 12906, rho 12907, rho 12908, rho 12909, r5758, r5759, r5760, r5761, r5762, tail⟩

theorem seg13_scp_node15_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5763 : Seg13.relationRow5763 rho)
    (r5764 : Seg13.relationRow5764 rho)
    (r5765 : Seg13.relationRow5765 rho)
    (r5766 : Seg13.relationRow5766 rho)
    (r5767 : Seg13.relationRow5767 rho)
    (tail : next (rho 51) (rho 12899) (rho 12904) (rho 12909) (rho 12914)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg2 (rho 50) (rho 51) (rho 12897) (rho 12898) (rho 12899) (rho 12904) (rho 12909) next := by
  exact ⟨rho 12910, rho 12911, rho 12912, rho 12913, rho 12914, r5763, r5764, r5765, r5766, r5767, tail⟩

theorem seg13_scp_node15_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5768 : Seg13.relationRow5768 rho)
    (r5769 : Seg13.relationRow5769 rho)
    (r5770 : Seg13.relationRow5770 rho)
    (r5771 : Seg13.relationRow5771 rho)
    (r5772 : Seg13.relationRow5772 rho)
    (tail : next (rho 12904) (rho 12909) (rho 12914) (rho 12919)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg3 (rho 51) (rho 12899) (rho 12904) (rho 12909) (rho 12914) next := by
  exact ⟨rho 12915, rho 12916, rho 12917, rho 12918, rho 12919, r5768, r5769, r5770, r5771, r5772, tail⟩

theorem seg13_scp_node15_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5773 : Seg13.relationRow5773 rho)
    (r5774 : Seg13.relationRow5774 rho)
    (r5775 : Seg13.relationRow5775 rho)
    (r5776 : Seg13.relationRow5776 rho)
    (r5777 : Seg13.relationRow5777 rho)
    (tail : next (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg4 (rho 12904) (rho 12909) (rho 12914) (rho 12919) next := by
  exact ⟨rho 12920, rho 12921, rho 12922, rho 12923, rho 12924, r5773, r5774, r5775, r5776, r5777, tail⟩

theorem seg13_scp_node15_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5778 : Seg13.relationRow5778 rho)
    (r5779 : Seg13.relationRow5779 rho)
    (r5780 : Seg13.relationRow5780 rho)
    (r5781 : Seg13.relationRow5781 rho)
    (r5782 : Seg13.relationRow5782 rho)
    (tail : next (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) (rho 12929)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg5 (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) next := by
  exact ⟨rho 12925, rho 12926, rho 12927, rho 12928, rho 12929, r5778, r5779, r5780, r5781, r5782, tail⟩

theorem seg13_scp_node15_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5783 : Seg13.relationRow5783 rho)
    (r5784 : Seg13.relationRow5784 rho)
    (r5785 : Seg13.relationRow5785 rho)
    (r5786 : Seg13.relationRow5786 rho)
    (r5787 : Seg13.relationRow5787 rho)
    (tail : next (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) (rho 12929) (rho 12934)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg6 (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) (rho 12929) next := by
  exact ⟨rho 12930, rho 12931, rho 12932, rho 12933, rho 12934, r5783, r5784, r5785, r5786, r5787, tail⟩

theorem seg13_scp_node15_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5788 : Seg13.relationRow5788 rho)
    (r5789 : Seg13.relationRow5789 rho)
    (r5790 : Seg13.relationRow5790 rho)
    (r5791 : Seg13.relationRow5791 rho)
    (r5792 : Seg13.relationRow5792 rho)
    (tail : next (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) (rho 12929) (rho 12934) (rho 12939)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg7 (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) (rho 12929) (rho 12934) next := by
  exact ⟨rho 12935, rho 12936, rho 12937, rho 12938, rho 12939, r5788, r5789, r5790, r5791, r5792, tail⟩

theorem seg13_scp_node15_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5793 : Seg13.relationRow5793 rho)
    (r5794 : Seg13.relationRow5794 rho)
    (r5795 : Seg13.relationRow5795 rho)
    (r5796 : Seg13.relationRow5796 rho)
    (r5797 : Seg13.relationRow5797 rho)
    (tail : next (rho 12924) (rho 12929) (rho 12934) (rho 12939) (rho 12944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg8 (rho 12904) (rho 12909) (rho 12914) (rho 12919) (rho 12924) (rho 12929) (rho 12934) (rho 12939) next := by
  exact ⟨rho 12940, rho 12941, rho 12942, rho 12943, rho 12944, r5793, r5794, r5795, r5796, r5797, tail⟩

theorem seg13_scp_node15_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5798 : Seg13.relationRow5798 rho)
    (r5799 : Seg13.relationRow5799 rho)
    (r5800 : Seg13.relationRow5800 rho)
    (r5801 : Seg13.relationRow5801 rho)
    (r5802 : Seg13.relationRow5802 rho)
    (tail : next (rho 12924) (rho 12929) (rho 12934) (rho 12939) (rho 12944) (rho 12949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg9 (rho 12924) (rho 12929) (rho 12934) (rho 12939) (rho 12944) next := by
  exact ⟨rho 12945, rho 12946, rho 12947, rho 12948, rho 12949, r5798, r5799, r5800, r5801, r5802, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

