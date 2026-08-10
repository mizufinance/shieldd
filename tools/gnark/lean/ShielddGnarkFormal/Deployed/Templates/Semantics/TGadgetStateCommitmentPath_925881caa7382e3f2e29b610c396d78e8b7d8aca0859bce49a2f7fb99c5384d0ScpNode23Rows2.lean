import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node23_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8765 rho)
    (r8766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8766 rho)
    (r8767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8767 rho)
    (r8768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8768 rho)
    (r8769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8769 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg20 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) next := by
  exact ⟨rho 8749, rho 8750, rho 8751, rho 8752, rho 8753, r8765, r8766, r8767, r8768, r8769, tail⟩

theorem template_scp_node23_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8770 rho)
    (r8771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8771 rho)
    (r8772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8772 rho)
    (r8773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8773 rho)
    (r8774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8774 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg21 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) next := by
  exact ⟨rho 8754, rho 8755, rho 8756, rho 8757, rho 8758, r8770, r8771, r8772, r8773, r8774, tail⟩

theorem template_scp_node23_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8775 rho)
    (r8776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8776 rho)
    (r8777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8777 rho)
    (r8778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8778 rho)
    (r8779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8779 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg22 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) next := by
  exact ⟨rho 8759, rho 8760, rho 8761, rho 8762, rho 8763, r8775, r8776, r8777, r8778, r8779, tail⟩

theorem template_scp_node23_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r8780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8780 rho)
    (r8781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8781 rho)
    (r8782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8782 rho)
    (r8783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8783 rho)
    (r8784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8784 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg23 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) next := by
  exact ⟨rho 8764, rho 8765, rho 8766, rho 8767, rho 8768, r8780, r8781, r8782, r8783, r8784, tail⟩

theorem template_scp_node23_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8785 rho)
    (r8786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8786 rho)
    (r8787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8787 rho)
    (r8788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8788 rho)
    (r8789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8789 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg24 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) next := by
  exact ⟨rho 8769, rho 8770, rho 8771, rho 8772, rho 8773, r8785, r8786, r8787, r8788, r8789, tail⟩

theorem template_scp_node23_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8790 rho)
    (r8791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8791 rho)
    (r8792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8792 rho)
    (r8793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8793 rho)
    (r8794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8794 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg25 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) next := by
  exact ⟨rho 8774, rho 8775, rho 8776, rho 8777, rho 8778, r8790, r8791, r8792, r8793, r8794, tail⟩

theorem template_scp_node23_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8795 rho)
    (r8796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8796 rho)
    (r8797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8797 rho)
    (r8798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8798 rho)
    (r8799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8799 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg26 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) next := by
  exact ⟨rho 8779, rho 8780, rho 8781, rho 8782, rho 8783, r8795, r8796, r8797, r8798, r8799, tail⟩

theorem template_scp_node23_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8800 rho)
    (r8801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8801 rho)
    (r8802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8802 rho)
    (r8803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8803 rho)
    (r8804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8804 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783) (rho 8788)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg27 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783) next := by
  exact ⟨rho 8784, rho 8785, rho 8786, rho 8787, rho 8788, r8800, r8801, r8802, r8803, r8804, tail⟩

theorem template_scp_node23_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8805 rho)
    (r8806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8806 rho)
    (r8807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8807 rho)
    (r8808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8808 rho)
    (r8809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8809 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783) (rho 8788) (rho 8793)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg28 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783) (rho 8788) next := by
  exact ⟨rho 8789, rho 8790, rho 8791, rho 8792, rho 8793, r8805, r8806, r8807, r8808, r8809, tail⟩

theorem template_scp_node23_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8810 rho)
    (r8811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8811 rho)
    (r8812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8812 rho)
    (r8813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8813 rho)
    (r8814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8814 rho)
    (tail : next (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783) (rho 8788) (rho 8793) (rho 8798)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg29 (rho 8723) (rho 8728) (rho 8733) (rho 8738) (rho 8743) (rho 8748) (rho 8753) (rho 8758) (rho 8763) (rho 8768) (rho 8773) (rho 8778) (rho 8783) (rho 8788) (rho 8793) next := by
  exact ⟨rho 8794, rho 8795, rho 8796, rho 8797, rho 8798, r8810, r8811, r8812, r8813, r8814, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
