import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node17_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6781 rho)
    (r6782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6782 rho)
    (r6783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6783 rho)
    (r6784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6784 rho)
    (r6785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6785 rho)
    (tail : next (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg60 (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) next := by
  exact ⟨rho 6771, rho 6772, rho 6773, rho 6774, rho 6775, r6781, r6782, r6783, r6784, r6785, tail⟩

theorem template_scp_node17_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6786 rho)
    (r6787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6787 rho)
    (r6788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6788 rho)
    (r6789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6789 rho)
    (r6790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6790 rho)
    (tail : next (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) (rho 6780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg61 (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) next := by
  exact ⟨rho 6776, rho 6777, rho 6778, rho 6779, rho 6780, r6786, r6787, r6788, r6789, r6790, tail⟩

theorem template_scp_node17_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6791 rho)
    (r6792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6792 rho)
    (r6793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6793 rho)
    (r6794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6794 rho)
    (r6795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6795 rho)
    (tail : next (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) (rho 6780) (rho 6785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg62 (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) (rho 6780) next := by
  exact ⟨rho 6781, rho 6782, rho 6783, rho 6784, rho 6785, r6791, r6792, r6793, r6794, r6795, tail⟩

theorem template_scp_node17_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6796 rho)
    (r6797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6797 rho)
    (r6798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6798 rho)
    (r6799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6799 rho)
    (r6800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6800 rho)
    (tail : next (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) (rho 6780) (rho 6785) (rho 6790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg63 (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) (rho 6780) (rho 6785) next := by
  exact ⟨rho 6786, rho 6787, rho 6788, rho 6789, rho 6790, r6796, r6797, r6798, r6799, r6800, tail⟩

theorem template_scp_node17_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6801 rho)
    (r6802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6802 rho)
    (r6803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6803 rho)
    (r6804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6804 rho)
    (r6805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6805 rho)
    (tail : next (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg64 (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770) (rho 6775) (rho 6780) (rho 6785) (rho 6790) next := by
  exact ⟨rho 6791, rho 6792, rho 6793, rho 6794, rho 6795, r6801, r6802, r6803, r6804, r6805, tail⟩

theorem template_scp_node17_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6806 rho)
    (r6807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6807 rho)
    (r6808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6808 rho)
    (r6809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6809 rho)
    (r6810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6810 rho)
    (tail : next (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg65 (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) next := by
  exact ⟨rho 6796, rho 6797, rho 6798, rho 6799, rho 6800, r6806, r6807, r6808, r6809, r6810, tail⟩

theorem template_scp_node17_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6811 rho)
    (r6812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6812 rho)
    (r6813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6813 rho)
    (r6814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6814 rho)
    (r6815 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6815 rho)
    (tail : next (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) (rho 6805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg66 (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) next := by
  exact ⟨rho 6801, rho 6802, rho 6803, rho 6804, rho 6805, r6811, r6812, r6813, r6814, r6815, tail⟩

theorem template_scp_node17_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6816 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6816 rho)
    (r6817 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6817 rho)
    (r6818 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6818 rho)
    (r6819 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6819 rho)
    (r6820 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6820 rho)
    (tail : next (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) (rho 6805) (rho 6810)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg67 (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) (rho 6805) next := by
  exact ⟨rho 6806, rho 6807, rho 6808, rho 6809, rho 6810, r6816, r6817, r6818, r6819, r6820, tail⟩

theorem template_scp_node17_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6821 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6821 rho)
    (r6822 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6822 rho)
    (r6823 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6823 rho)
    (r6824 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6824 rho)
    (r6825 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6825 rho)
    (tail : next (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) (rho 6805) (rho 6810) (rho 6815)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg68 (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) (rho 6805) (rho 6810) next := by
  exact ⟨rho 6811, rho 6812, rho 6813, rho 6814, rho 6815, r6821, r6822, r6823, r6824, r6825, tail⟩

theorem template_scp_node17_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6826 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6826 rho)
    (r6827 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6827 rho)
    (r6828 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6828 rho)
    (r6829 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6829 rho)
    (r6830 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6830 rho)
    (tail : next (rho 6800) (rho 6805) (rho 6810) (rho 6815) (rho 6820)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg69 (rho 6775) (rho 6780) (rho 6785) (rho 6790) (rho 6795) (rho 6800) (rho 6805) (rho 6810) (rho 6815) next := by
  exact ⟨rho 6816, rho 6817, rho 6818, rho 6819, rho 6820, r6826, r6827, r6828, r6829, r6830, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
