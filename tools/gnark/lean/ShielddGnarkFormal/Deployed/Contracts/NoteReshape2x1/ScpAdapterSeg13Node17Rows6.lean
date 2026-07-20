import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node17_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6781 : Seg13.relationRow6781 rho)
    (r6782 : Seg13.relationRow6782 rho)
    (r6783 : Seg13.relationRow6783 rho)
    (r6784 : Seg13.relationRow6784 rho)
    (r6785 : Seg13.relationRow6785 rho)
    (tail : next (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg60 (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) next := by
  exact ⟨rho 13920, rho 13921, rho 13922, rho 13923, rho 13924, r6781, r6782, r6783, r6784, r6785, tail⟩

theorem seg13_scp_node17_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6786 : Seg13.relationRow6786 rho)
    (r6787 : Seg13.relationRow6787 rho)
    (r6788 : Seg13.relationRow6788 rho)
    (r6789 : Seg13.relationRow6789 rho)
    (r6790 : Seg13.relationRow6790 rho)
    (tail : next (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) (rho 13929)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg61 (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) next := by
  exact ⟨rho 13925, rho 13926, rho 13927, rho 13928, rho 13929, r6786, r6787, r6788, r6789, r6790, tail⟩

theorem seg13_scp_node17_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6791 : Seg13.relationRow6791 rho)
    (r6792 : Seg13.relationRow6792 rho)
    (r6793 : Seg13.relationRow6793 rho)
    (r6794 : Seg13.relationRow6794 rho)
    (r6795 : Seg13.relationRow6795 rho)
    (tail : next (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) (rho 13929) (rho 13934)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg62 (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) (rho 13929) next := by
  exact ⟨rho 13930, rho 13931, rho 13932, rho 13933, rho 13934, r6791, r6792, r6793, r6794, r6795, tail⟩

theorem seg13_scp_node17_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6796 : Seg13.relationRow6796 rho)
    (r6797 : Seg13.relationRow6797 rho)
    (r6798 : Seg13.relationRow6798 rho)
    (r6799 : Seg13.relationRow6799 rho)
    (r6800 : Seg13.relationRow6800 rho)
    (tail : next (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) (rho 13929) (rho 13934) (rho 13939)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg63 (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) (rho 13929) (rho 13934) next := by
  exact ⟨rho 13935, rho 13936, rho 13937, rho 13938, rho 13939, r6796, r6797, r6798, r6799, r6800, tail⟩

theorem seg13_scp_node17_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6801 : Seg13.relationRow6801 rho)
    (r6802 : Seg13.relationRow6802 rho)
    (r6803 : Seg13.relationRow6803 rho)
    (r6804 : Seg13.relationRow6804 rho)
    (r6805 : Seg13.relationRow6805 rho)
    (tail : next (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg64 (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919) (rho 13924) (rho 13929) (rho 13934) (rho 13939) next := by
  exact ⟨rho 13940, rho 13941, rho 13942, rho 13943, rho 13944, r6801, r6802, r6803, r6804, r6805, tail⟩

theorem seg13_scp_node17_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6806 : Seg13.relationRow6806 rho)
    (r6807 : Seg13.relationRow6807 rho)
    (r6808 : Seg13.relationRow6808 rho)
    (r6809 : Seg13.relationRow6809 rho)
    (r6810 : Seg13.relationRow6810 rho)
    (tail : next (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg65 (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) next := by
  exact ⟨rho 13945, rho 13946, rho 13947, rho 13948, rho 13949, r6806, r6807, r6808, r6809, r6810, tail⟩

theorem seg13_scp_node17_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6811 : Seg13.relationRow6811 rho)
    (r6812 : Seg13.relationRow6812 rho)
    (r6813 : Seg13.relationRow6813 rho)
    (r6814 : Seg13.relationRow6814 rho)
    (r6815 : Seg13.relationRow6815 rho)
    (tail : next (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) (rho 13954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg66 (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) next := by
  exact ⟨rho 13950, rho 13951, rho 13952, rho 13953, rho 13954, r6811, r6812, r6813, r6814, r6815, tail⟩

theorem seg13_scp_node17_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6816 : Seg13.relationRow6816 rho)
    (r6817 : Seg13.relationRow6817 rho)
    (r6818 : Seg13.relationRow6818 rho)
    (r6819 : Seg13.relationRow6819 rho)
    (r6820 : Seg13.relationRow6820 rho)
    (tail : next (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) (rho 13954) (rho 13959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg67 (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) (rho 13954) next := by
  exact ⟨rho 13955, rho 13956, rho 13957, rho 13958, rho 13959, r6816, r6817, r6818, r6819, r6820, tail⟩

theorem seg13_scp_node17_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6821 : Seg13.relationRow6821 rho)
    (r6822 : Seg13.relationRow6822 rho)
    (r6823 : Seg13.relationRow6823 rho)
    (r6824 : Seg13.relationRow6824 rho)
    (r6825 : Seg13.relationRow6825 rho)
    (tail : next (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) (rho 13954) (rho 13959) (rho 13964)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg68 (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) (rho 13954) (rho 13959) next := by
  exact ⟨rho 13960, rho 13961, rho 13962, rho 13963, rho 13964, r6821, r6822, r6823, r6824, r6825, tail⟩

theorem seg13_scp_node17_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6826 : Seg13.relationRow6826 rho)
    (r6827 : Seg13.relationRow6827 rho)
    (r6828 : Seg13.relationRow6828 rho)
    (r6829 : Seg13.relationRow6829 rho)
    (r6830 : Seg13.relationRow6830 rho)
    (tail : next (rho 13949) (rho 13954) (rho 13959) (rho 13964) (rho 13969)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg69 (rho 13924) (rho 13929) (rho 13934) (rho 13939) (rho 13944) (rho 13949) (rho 13954) (rho 13959) (rho 13964) next := by
  exact ⟨rho 13965, rho 13966, rho 13967, rho 13968, rho 13969, r6826, r6827, r6828, r6829, r6830, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

