import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node17_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6781 : Seg28.relationRow6781 rho)
    (r6782 : Seg28.relationRow6782 rho)
    (r6783 : Seg28.relationRow6783 rho)
    (r6784 : Seg28.relationRow6784 rho)
    (r6785 : Seg28.relationRow6785 rho)
    (tail : next (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg60 (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) next := by
  exact ⟨rho 26107, rho 26108, rho 26109, rho 26110, rho 26111, r6781, r6782, r6783, r6784, r6785, tail⟩

theorem seg28_scp_node17_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6786 : Seg28.relationRow6786 rho)
    (r6787 : Seg28.relationRow6787 rho)
    (r6788 : Seg28.relationRow6788 rho)
    (r6789 : Seg28.relationRow6789 rho)
    (r6790 : Seg28.relationRow6790 rho)
    (tail : next (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) (rho 26116)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg61 (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) next := by
  exact ⟨rho 26112, rho 26113, rho 26114, rho 26115, rho 26116, r6786, r6787, r6788, r6789, r6790, tail⟩

theorem seg28_scp_node17_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6791 : Seg28.relationRow6791 rho)
    (r6792 : Seg28.relationRow6792 rho)
    (r6793 : Seg28.relationRow6793 rho)
    (r6794 : Seg28.relationRow6794 rho)
    (r6795 : Seg28.relationRow6795 rho)
    (tail : next (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) (rho 26116) (rho 26121)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg62 (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) (rho 26116) next := by
  exact ⟨rho 26117, rho 26118, rho 26119, rho 26120, rho 26121, r6791, r6792, r6793, r6794, r6795, tail⟩

theorem seg28_scp_node17_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6796 : Seg28.relationRow6796 rho)
    (r6797 : Seg28.relationRow6797 rho)
    (r6798 : Seg28.relationRow6798 rho)
    (r6799 : Seg28.relationRow6799 rho)
    (r6800 : Seg28.relationRow6800 rho)
    (tail : next (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) (rho 26116) (rho 26121) (rho 26126)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg63 (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) (rho 26116) (rho 26121) next := by
  exact ⟨rho 26122, rho 26123, rho 26124, rho 26125, rho 26126, r6796, r6797, r6798, r6799, r6800, tail⟩

theorem seg28_scp_node17_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6801 : Seg28.relationRow6801 rho)
    (r6802 : Seg28.relationRow6802 rho)
    (r6803 : Seg28.relationRow6803 rho)
    (r6804 : Seg28.relationRow6804 rho)
    (r6805 : Seg28.relationRow6805 rho)
    (tail : next (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg64 (rho 26086) (rho 26091) (rho 26096) (rho 26101) (rho 26106) (rho 26111) (rho 26116) (rho 26121) (rho 26126) next := by
  exact ⟨rho 26127, rho 26128, rho 26129, rho 26130, rho 26131, r6801, r6802, r6803, r6804, r6805, tail⟩

theorem seg28_scp_node17_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6806 : Seg28.relationRow6806 rho)
    (r6807 : Seg28.relationRow6807 rho)
    (r6808 : Seg28.relationRow6808 rho)
    (r6809 : Seg28.relationRow6809 rho)
    (r6810 : Seg28.relationRow6810 rho)
    (tail : next (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg65 (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) next := by
  exact ⟨rho 26132, rho 26133, rho 26134, rho 26135, rho 26136, r6806, r6807, r6808, r6809, r6810, tail⟩

theorem seg28_scp_node17_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6811 : Seg28.relationRow6811 rho)
    (r6812 : Seg28.relationRow6812 rho)
    (r6813 : Seg28.relationRow6813 rho)
    (r6814 : Seg28.relationRow6814 rho)
    (r6815 : Seg28.relationRow6815 rho)
    (tail : next (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) (rho 26141)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg66 (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) next := by
  exact ⟨rho 26137, rho 26138, rho 26139, rho 26140, rho 26141, r6811, r6812, r6813, r6814, r6815, tail⟩

theorem seg28_scp_node17_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6816 : Seg28.relationRow6816 rho)
    (r6817 : Seg28.relationRow6817 rho)
    (r6818 : Seg28.relationRow6818 rho)
    (r6819 : Seg28.relationRow6819 rho)
    (r6820 : Seg28.relationRow6820 rho)
    (tail : next (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) (rho 26141) (rho 26146)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg67 (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) (rho 26141) next := by
  exact ⟨rho 26142, rho 26143, rho 26144, rho 26145, rho 26146, r6816, r6817, r6818, r6819, r6820, tail⟩

theorem seg28_scp_node17_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6821 : Seg28.relationRow6821 rho)
    (r6822 : Seg28.relationRow6822 rho)
    (r6823 : Seg28.relationRow6823 rho)
    (r6824 : Seg28.relationRow6824 rho)
    (r6825 : Seg28.relationRow6825 rho)
    (tail : next (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) (rho 26141) (rho 26146) (rho 26151)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg68 (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) (rho 26141) (rho 26146) next := by
  exact ⟨rho 26147, rho 26148, rho 26149, rho 26150, rho 26151, r6821, r6822, r6823, r6824, r6825, tail⟩

theorem seg28_scp_node17_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6826 : Seg28.relationRow6826 rho)
    (r6827 : Seg28.relationRow6827 rho)
    (r6828 : Seg28.relationRow6828 rho)
    (r6829 : Seg28.relationRow6829 rho)
    (r6830 : Seg28.relationRow6830 rho)
    (tail : next (rho 26136) (rho 26141) (rho 26146) (rho 26151) (rho 26156)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg69 (rho 26111) (rho 26116) (rho 26121) (rho 26126) (rho 26131) (rho 26136) (rho 26141) (rho 26146) (rho 26151) next := by
  exact ⟨rho 26152, rho 26153, rho 26154, rho 26155, rho 26156, r6826, r6827, r6828, r6829, r6830, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

