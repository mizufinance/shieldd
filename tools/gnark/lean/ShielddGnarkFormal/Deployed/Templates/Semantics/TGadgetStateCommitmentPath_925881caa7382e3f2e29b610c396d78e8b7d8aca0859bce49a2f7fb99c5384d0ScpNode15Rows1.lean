import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node15_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5803 rho)
    (r5804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5804 rho)
    (r5805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5805 rho)
    (r5806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5806 rho)
    (r5807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5807 rho)
    (tail : next (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) (rho 5799)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg10 (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) next := by
  exact ⟨rho 5795, rho 5796, rho 5797, rho 5798, rho 5799, r5803, r5804, r5805, r5806, r5807, tail⟩

theorem template_scp_node15_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5808 rho)
    (r5809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5809 rho)
    (r5810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5810 rho)
    (r5811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5811 rho)
    (r5812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5812 rho)
    (tail : next (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) (rho 5799) (rho 5804)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg11 (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) (rho 5799) next := by
  exact ⟨rho 5800, rho 5801, rho 5802, rho 5803, rho 5804, r5808, r5809, r5810, r5811, r5812, tail⟩

theorem template_scp_node15_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5813 rho)
    (r5814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5814 rho)
    (r5815 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5815 rho)
    (r5816 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5816 rho)
    (r5817 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5817 rho)
    (tail : next (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) (rho 5799) (rho 5804) (rho 5809)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg12 (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) (rho 5799) (rho 5804) next := by
  exact ⟨rho 5805, rho 5806, rho 5807, rho 5808, rho 5809, r5813, r5814, r5815, r5816, r5817, tail⟩

theorem template_scp_node15_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5818 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5818 rho)
    (r5819 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5819 rho)
    (r5820 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5820 rho)
    (r5821 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5821 rho)
    (r5822 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5822 rho)
    (tail : next (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg13 (rho 5769) (rho 5774) (rho 5779) (rho 5784) (rho 5789) (rho 5794) (rho 5799) (rho 5804) (rho 5809) next := by
  exact ⟨rho 5810, rho 5811, rho 5812, rho 5813, rho 5814, r5818, r5819, r5820, r5821, r5822, tail⟩

theorem template_scp_node15_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5823 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5823 rho)
    (r5824 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5824 rho)
    (r5825 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5825 rho)
    (r5826 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5826 rho)
    (r5827 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5827 rho)
    (tail : next (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg14 (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) next := by
  exact ⟨rho 5815, rho 5816, rho 5817, rho 5818, rho 5819, r5823, r5824, r5825, r5826, r5827, tail⟩

theorem template_scp_node15_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5828 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5828 rho)
    (r5829 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5829 rho)
    (r5830 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5830 rho)
    (r5831 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5831 rho)
    (r5832 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5832 rho)
    (tail : next (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) (rho 5824)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg15 (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) next := by
  exact ⟨rho 5820, rho 5821, rho 5822, rho 5823, rho 5824, r5828, r5829, r5830, r5831, r5832, tail⟩

theorem template_scp_node15_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5833 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5833 rho)
    (r5834 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5834 rho)
    (r5835 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5835 rho)
    (r5836 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5836 rho)
    (r5837 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5837 rho)
    (tail : next (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) (rho 5824) (rho 5829)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg16 (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) (rho 5824) next := by
  exact ⟨rho 5825, rho 5826, rho 5827, rho 5828, rho 5829, r5833, r5834, r5835, r5836, r5837, tail⟩

theorem template_scp_node15_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5838 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5838 rho)
    (r5839 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5839 rho)
    (r5840 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5840 rho)
    (r5841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5841 rho)
    (r5842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5842 rho)
    (tail : next (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) (rho 5824) (rho 5829) (rho 5834)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg17 (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) (rho 5824) (rho 5829) next := by
  exact ⟨rho 5830, rho 5831, rho 5832, rho 5833, rho 5834, r5838, r5839, r5840, r5841, r5842, tail⟩

theorem template_scp_node15_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5843 rho)
    (r5844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5844 rho)
    (r5845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5845 rho)
    (r5846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5846 rho)
    (r5847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5847 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg18 (rho 5794) (rho 5799) (rho 5804) (rho 5809) (rho 5814) (rho 5819) (rho 5824) (rho 5829) (rho 5834) next := by
  exact ⟨rho 5835, rho 5836, rho 5837, rho 5838, rho 5839, r5843, r5844, r5845, r5846, r5847, tail⟩

theorem template_scp_node15_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5848 rho)
    (r5849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5849 rho)
    (r5850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5850 rho)
    (r5851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5851 rho)
    (r5852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5852 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg19 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) next := by
  exact ⟨rho 5840, rho 5841, rho 5842, rho 5843, rho 5844, r5848, r5849, r5850, r5851, r5852, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
