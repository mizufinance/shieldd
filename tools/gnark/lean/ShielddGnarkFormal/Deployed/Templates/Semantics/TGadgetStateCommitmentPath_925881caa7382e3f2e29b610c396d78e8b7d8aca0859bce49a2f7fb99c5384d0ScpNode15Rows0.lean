import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node15_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5753 rho)
    (r5754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5754 rho)
    (r5755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5755 rho)
    (r5756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5756 rho)
    (r5757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5757 rho)
    (tail : next (rho 5738) (rho 5741) (rho 5739) (rho 5740) (rho 5742) (rho 5743) (rho 5744) (rho 5749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg0 (rho 5736) (rho 5738) (rho 5741) (rho 5737) (rho 5739) (rho 5740) (rho 5742) (rho 5743) (rho 5744) next := by
  exact ⟨rho 5745, rho 5746, rho 5747, rho 5748, rho 5749, r5753, r5754, r5755, r5756, r5757, tail⟩

theorem template_scp_node15_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5758 rho)
    (r5759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5759 rho)
    (r5760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5760 rho)
    (r5761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5761 rho)
    (r5762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5762 rho)
    (tail : next (rho 5738) (rho 5741) (rho 5742) (rho 5743) (rho 5744) (rho 5749) (rho 5754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg1 (rho 5738) (rho 5741) (rho 5739) (rho 5740) (rho 5742) (rho 5743) (rho 5744) (rho 5749) next := by
  exact ⟨rho 5750, rho 5751, rho 5752, rho 5753, rho 5754, r5758, r5759, r5760, r5761, r5762, tail⟩

theorem template_scp_node15_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5763 rho)
    (r5764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5764 rho)
    (r5765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5765 rho)
    (r5766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5766 rho)
    (r5767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5767 rho)
    (tail : next (rho 5741) (rho 5744) (rho 5749) (rho 5754) (rho 5759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg2 (rho 5738) (rho 5741) (rho 5742) (rho 5743) (rho 5744) (rho 5749) (rho 5754) next := by
  exact ⟨rho 5755, rho 5756, rho 5757, rho 5758, rho 5759, r5763, r5764, r5765, r5766, r5767, tail⟩

theorem template_scp_node15_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r5768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5768 rho)
    (r5769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5769 rho)
    (r5770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5770 rho)
    (r5771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5771 rho)
    (r5772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5772 rho)
    (tail : next (rho 5749) (rho 5754) (rho 5759) (rho 5764)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg3 (rho 5741) (rho 5744) (rho 5749) (rho 5754) (rho 5759) next := by
  exact ⟨rho 5760, rho 5761, rho 5762, rho 5763, rho 5764, r5768, r5769, r5770, r5771, r5772, tail⟩

theorem template_scp_node15_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5773 rho)
    (r5774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5774 rho)
    (r5775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5775 rho)
    (r5776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5776 rho)
    (r5777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5777 rho)
    (tail : next (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg4 (rho 5749) (rho 5754) (rho 5759) (rho 5764) next := by
  exact ⟨rho 5765, rho 5766, rho 5767, rho 5768, rho 5769, r5773, r5774, r5775, r5776, r5777, tail⟩

theorem template_scp_node15_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5778 rho)
    (r5779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5779 rho)
    (r5780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5780 rho)
    (r5781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5781 rho)
    (r5782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5782 rho)
    (tail : next (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) (rho 5774)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg5 (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) next := by
  exact ⟨rho 5770, rho 5771, rho 5772, rho 5773, rho 5774, r5778, r5779, r5780, r5781, r5782, tail⟩

theorem template_scp_node15_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5783 rho)
    (r5784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5784 rho)
    (r5785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5785 rho)
    (r5786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5786 rho)
    (r5787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5787 rho)
    (tail : next (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) (rho 5774) (rho 5779)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg6 (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) (rho 5774) next := by
  exact ⟨rho 5775, rho 5776, rho 5777, rho 5778, rho 5779, r5783, r5784, r5785, r5786, r5787, tail⟩

theorem template_scp_node15_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5788 rho)
    (r5789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5789 rho)
    (r5790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5790 rho)
    (r5791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5791 rho)
    (r5792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5792 rho)
    (tail : next (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) (rho 5774) (rho 5779) (rho 5784)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg7 (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) (rho 5774) (rho 5779) next := by
  exact ⟨rho 5780, rho 5781, rho 5782, rho 5783, rho 5784, r5788, r5789, r5790, r5791, r5792, tail⟩

theorem template_scp_node15_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5793 rho)
    (r5794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5794 rho)
    (r5795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5795 rho)
    (r5796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5796 rho)
    (r5797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5797 rho)
    (tail : next (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg8 (rho 5749) (rho 5754) (rho 5759) (rho 5764) (rho 5769) (rho 5774) (rho 5779) (rho 5784) next := by
  exact ⟨rho 5785, rho 5786, rho 5787, rho 5788, rho 5789, r5793, r5794, r5795, r5796, r5797, tail⟩

theorem template_scp_node15_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5798 rho)
    (r5799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5799 rho)
    (r5800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5800 rho)
    (r5801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5801 rho)
    (r5802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5802 rho)
    (tail : next (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg9 (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) next := by
  exact ⟨rho 5790, rho 5791, rho 5792, rho 5793, rho 5794, r5798, r5799, r5800, r5801, r5802, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
