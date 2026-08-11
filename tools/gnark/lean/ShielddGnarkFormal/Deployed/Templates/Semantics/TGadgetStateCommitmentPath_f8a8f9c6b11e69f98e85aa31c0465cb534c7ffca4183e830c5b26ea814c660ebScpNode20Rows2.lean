import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node20_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7673 rho)
    (r7674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7674 rho)
    (r7675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7675 rho)
    (r7676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7676 rho)
    (r7677 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7677 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg20 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) next := by
  exact ⟨rho 7654, rho 7655, rho 7656, rho 7657, rho 7658, r7673, r7674, r7675, r7676, r7677, tail⟩

theorem template_scp_node20_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7678 rho)
    (r7679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7679 rho)
    (r7680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7680 rho)
    (r7681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7681 rho)
    (r7682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7682 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg21 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) next := by
  exact ⟨rho 7659, rho 7660, rho 7661, rho 7662, rho 7663, r7678, r7679, r7680, r7681, r7682, tail⟩

theorem template_scp_node20_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7683 rho)
    (r7684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7684 rho)
    (r7685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7685 rho)
    (r7686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7686 rho)
    (r7687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7687 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg22 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) next := by
  exact ⟨rho 7664, rho 7665, rho 7666, rho 7667, rho 7668, r7683, r7684, r7685, r7686, r7687, tail⟩

theorem template_scp_node20_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r7688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7688 rho)
    (r7689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7689 rho)
    (r7690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7690 rho)
    (r7691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7691 rho)
    (r7692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7692 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg23 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) next := by
  exact ⟨rho 7669, rho 7670, rho 7671, rho 7672, rho 7673, r7688, r7689, r7690, r7691, r7692, tail⟩

theorem template_scp_node20_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7693 rho)
    (r7694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7694 rho)
    (r7695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7695 rho)
    (r7696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7696 rho)
    (r7697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7697 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg24 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) next := by
  exact ⟨rho 7674, rho 7675, rho 7676, rho 7677, rho 7678, r7693, r7694, r7695, r7696, r7697, tail⟩

theorem template_scp_node20_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7698 rho)
    (r7699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7699 rho)
    (r7700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7700 rho)
    (r7701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7701 rho)
    (r7702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7702 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg25 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) next := by
  exact ⟨rho 7679, rho 7680, rho 7681, rho 7682, rho 7683, r7698, r7699, r7700, r7701, r7702, tail⟩

theorem template_scp_node20_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7703 rho)
    (r7704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7704 rho)
    (r7705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7705 rho)
    (r7706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7706 rho)
    (r7707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7707 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg26 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) next := by
  exact ⟨rho 7684, rho 7685, rho 7686, rho 7687, rho 7688, r7703, r7704, r7705, r7706, r7707, tail⟩

theorem template_scp_node20_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7708 rho)
    (r7709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7709 rho)
    (r7710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7710 rho)
    (r7711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7711 rho)
    (r7712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7712 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg27 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) next := by
  exact ⟨rho 7689, rho 7690, rho 7691, rho 7692, rho 7693, r7708, r7709, r7710, r7711, r7712, tail⟩

theorem template_scp_node20_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7713 rho)
    (r7714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7714 rho)
    (r7715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7715 rho)
    (r7716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7716 rho)
    (r7717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7717 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg28 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) next := by
  exact ⟨rho 7694, rho 7695, rho 7696, rho 7697, rho 7698, r7713, r7714, r7715, r7716, r7717, tail⟩

theorem template_scp_node20_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7718 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7718 rho)
    (r7719 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7719 rho)
    (r7720 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7720 rho)
    (r7721 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7721 rho)
    (r7722 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7722 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg29 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) next := by
  exact ⟨rho 7699, rho 7700, rho 7701, rho 7702, rho 7703, r7718, r7719, r7720, r7721, r7722, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
