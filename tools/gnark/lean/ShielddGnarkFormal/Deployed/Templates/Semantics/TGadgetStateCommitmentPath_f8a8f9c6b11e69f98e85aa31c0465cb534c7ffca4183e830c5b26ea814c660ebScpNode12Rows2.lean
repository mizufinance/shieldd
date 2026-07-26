import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node12_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4761 rho)
    (r4762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4762 rho)
    (r4763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4763 rho)
    (r4764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4764 rho)
    (r4765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4765 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg20 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) next := by
  exact ⟨rho 4750, rho 4751, rho 4752, rho 4753, rho 4754, r4761, r4762, r4763, r4764, r4765, tail⟩

theorem template_scp_node12_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4766 rho)
    (r4767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4767 rho)
    (r4768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4768 rho)
    (r4769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4769 rho)
    (r4770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4770 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg21 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) next := by
  exact ⟨rho 4755, rho 4756, rho 4757, rho 4758, rho 4759, r4766, r4767, r4768, r4769, r4770, tail⟩

theorem template_scp_node12_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4771 rho)
    (r4772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4772 rho)
    (r4773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4773 rho)
    (r4774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4774 rho)
    (r4775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4775 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg22 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) next := by
  exact ⟨rho 4760, rho 4761, rho 4762, rho 4763, rho 4764, r4771, r4772, r4773, r4774, r4775, tail⟩

theorem template_scp_node12_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r4776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4776 rho)
    (r4777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4777 rho)
    (r4778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4778 rho)
    (r4779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4779 rho)
    (r4780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4780 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg23 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) next := by
  exact ⟨rho 4765, rho 4766, rho 4767, rho 4768, rho 4769, r4776, r4777, r4778, r4779, r4780, tail⟩

theorem template_scp_node12_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4781 rho)
    (r4782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4782 rho)
    (r4783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4783 rho)
    (r4784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4784 rho)
    (r4785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4785 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg24 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) next := by
  exact ⟨rho 4770, rho 4771, rho 4772, rho 4773, rho 4774, r4781, r4782, r4783, r4784, r4785, tail⟩

theorem template_scp_node12_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4786 rho)
    (r4787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4787 rho)
    (r4788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4788 rho)
    (r4789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4789 rho)
    (r4790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4790 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg25 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) next := by
  exact ⟨rho 4775, rho 4776, rho 4777, rho 4778, rho 4779, r4786, r4787, r4788, r4789, r4790, tail⟩

theorem template_scp_node12_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4791 rho)
    (r4792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4792 rho)
    (r4793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4793 rho)
    (r4794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4794 rho)
    (r4795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4795 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg26 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) next := by
  exact ⟨rho 4780, rho 4781, rho 4782, rho 4783, rho 4784, r4791, r4792, r4793, r4794, r4795, tail⟩

theorem template_scp_node12_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4796 rho)
    (r4797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4797 rho)
    (r4798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4798 rho)
    (r4799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4799 rho)
    (r4800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4800 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784) (rho 4789)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg27 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784) next := by
  exact ⟨rho 4785, rho 4786, rho 4787, rho 4788, rho 4789, r4796, r4797, r4798, r4799, r4800, tail⟩

theorem template_scp_node12_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4801 rho)
    (r4802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4802 rho)
    (r4803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4803 rho)
    (r4804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4804 rho)
    (r4805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4805 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784) (rho 4789) (rho 4794)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg28 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784) (rho 4789) next := by
  exact ⟨rho 4790, rho 4791, rho 4792, rho 4793, rho 4794, r4801, r4802, r4803, r4804, r4805, tail⟩

theorem template_scp_node12_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4806 rho)
    (r4807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4807 rho)
    (r4808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4808 rho)
    (r4809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4809 rho)
    (r4810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4810 rho)
    (tail : next (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784) (rho 4789) (rho 4794) (rho 4799)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg29 (rho 4724) (rho 4729) (rho 4734) (rho 4739) (rho 4744) (rho 4749) (rho 4754) (rho 4759) (rho 4764) (rho 4769) (rho 4774) (rho 4779) (rho 4784) (rho 4789) (rho 4794) next := by
  exact ⟨rho 4795, rho 4796, rho 4797, rho 4798, rho 4799, r4806, r4807, r4808, r4809, r4810, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

