import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node20_seg40 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7773 rho)
    (r7774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7774 rho)
    (r7775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7775 rho)
    (r7776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7776 rho)
    (r7777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7777 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg40 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) next := by
  exact ⟨rho 7754, rho 7755, rho 7756, rho 7757, rho 7758, r7773, r7774, r7775, r7776, r7777, tail⟩

theorem template_scp_node20_seg41 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7778 rho)
    (r7779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7779 rho)
    (r7780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7780 rho)
    (r7781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7781 rho)
    (r7782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7782 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg41 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) next := by
  exact ⟨rho 7759, rho 7760, rho 7761, rho 7762, rho 7763, r7778, r7779, r7780, r7781, r7782, tail⟩

theorem template_scp_node20_seg42 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7783 rho)
    (r7784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7784 rho)
    (r7785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7785 rho)
    (r7786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7786 rho)
    (r7787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7787 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg42 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) next := by
  exact ⟨rho 7764, rho 7765, rho 7766, rho 7767, rho 7768, r7783, r7784, r7785, r7786, r7787, tail⟩

theorem template_scp_node20_seg43 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7788 rho)
    (r7789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7789 rho)
    (r7790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7790 rho)
    (r7791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7791 rho)
    (r7792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7792 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg43 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) next := by
  exact ⟨rho 7769, rho 7770, rho 7771, rho 7772, rho 7773, r7788, r7789, r7790, r7791, r7792, tail⟩

theorem template_scp_node20_seg44 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7793 rho)
    (r7794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7794 rho)
    (r7795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7795 rho)
    (r7796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7796 rho)
    (r7797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7797 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg44 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) next := by
  exact ⟨rho 7774, rho 7775, rho 7776, rho 7777, rho 7778, r7793, r7794, r7795, r7796, r7797, tail⟩

theorem template_scp_node20_seg45 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7798 rho)
    (r7799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7799 rho)
    (r7800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7800 rho)
    (r7801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7801 rho)
    (r7802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7802 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg45 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) next := by
  exact ⟨rho 7779, rho 7780, rho 7781, rho 7782, rho 7783, r7798, r7799, r7800, r7801, r7802, tail⟩

theorem template_scp_node20_seg46 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7803 rho)
    (r7804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7804 rho)
    (r7805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7805 rho)
    (r7806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7806 rho)
    (r7807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7807 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg46 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) next := by
  exact ⟨rho 7784, rho 7785, rho 7786, rho 7787, rho 7788, r7803, r7804, r7805, r7806, r7807, tail⟩

theorem template_scp_node20_seg47 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7808 rho)
    (r7809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7809 rho)
    (r7810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7810 rho)
    (r7811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7811 rho)
    (r7812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7812 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg47 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) next := by
  exact ⟨rho 7789, rho 7790, rho 7791, rho 7792, rho 7793, r7808, r7809, r7810, r7811, r7812, tail⟩

theorem template_scp_node20_seg48 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7813 rho)
    (r7814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7814 rho)
    (r7815 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7815 rho)
    (r7816 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7816 rho)
    (r7817 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7817 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg48 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) next := by
  exact ⟨rho 7794, rho 7795, rho 7796, rho 7797, rho 7798, r7813, r7814, r7815, r7816, r7817, tail⟩

theorem template_scp_node20_seg49 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7818 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7818 rho)
    (r7819 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7819 rho)
    (r7820 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7820 rho)
    (r7821 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7821 rho)
    (r7822 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7822 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg49 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) next := by
  exact ⟨rho 7799, rho 7800, rho 7801, rho 7802, rho 7803, r7818, r7819, r7820, r7821, r7822, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

