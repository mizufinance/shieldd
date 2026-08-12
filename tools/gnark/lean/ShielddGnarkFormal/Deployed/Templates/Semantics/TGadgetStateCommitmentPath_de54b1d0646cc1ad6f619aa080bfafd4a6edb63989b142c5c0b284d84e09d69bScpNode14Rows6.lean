import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node14_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5689 rho)
    (r5690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5690 rho)
    (r5691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5691 rho)
    (r5692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5692 rho)
    (r5693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5693 rho)
    (tail : next (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg60 (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) next := by
  exact ⟨rho 5681, rho 5682, rho 5683, rho 5684, rho 5685, r5689, r5690, r5691, r5692, r5693, tail⟩

theorem template_scp_node14_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5694 rho)
    (r5695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5695 rho)
    (r5696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5696 rho)
    (r5697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5697 rho)
    (r5698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5698 rho)
    (tail : next (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) (rho 5690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg61 (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) next := by
  exact ⟨rho 5686, rho 5687, rho 5688, rho 5689, rho 5690, r5694, r5695, r5696, r5697, r5698, tail⟩

theorem template_scp_node14_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5699 rho)
    (r5700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5700 rho)
    (r5701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5701 rho)
    (r5702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5702 rho)
    (r5703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5703 rho)
    (tail : next (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) (rho 5690) (rho 5695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg62 (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) (rho 5690) next := by
  exact ⟨rho 5691, rho 5692, rho 5693, rho 5694, rho 5695, r5699, r5700, r5701, r5702, r5703, tail⟩

theorem template_scp_node14_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5704 rho)
    (r5705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5705 rho)
    (r5706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5706 rho)
    (r5707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5707 rho)
    (r5708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5708 rho)
    (tail : next (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) (rho 5690) (rho 5695) (rho 5700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg63 (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) (rho 5690) (rho 5695) next := by
  exact ⟨rho 5696, rho 5697, rho 5698, rho 5699, rho 5700, r5704, r5705, r5706, r5707, r5708, tail⟩

theorem template_scp_node14_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5709 rho)
    (r5710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5710 rho)
    (r5711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5711 rho)
    (r5712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5712 rho)
    (r5713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5713 rho)
    (tail : next (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg64 (rho 5660) (rho 5665) (rho 5670) (rho 5675) (rho 5680) (rho 5685) (rho 5690) (rho 5695) (rho 5700) next := by
  exact ⟨rho 5701, rho 5702, rho 5703, rho 5704, rho 5705, r5709, r5710, r5711, r5712, r5713, tail⟩

theorem template_scp_node14_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5714 rho)
    (r5715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5715 rho)
    (r5716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5716 rho)
    (r5717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5717 rho)
    (r5718 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5718 rho)
    (tail : next (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg65 (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) next := by
  exact ⟨rho 5706, rho 5707, rho 5708, rho 5709, rho 5710, r5714, r5715, r5716, r5717, r5718, tail⟩

theorem template_scp_node14_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5719 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5719 rho)
    (r5720 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5720 rho)
    (r5721 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5721 rho)
    (r5722 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5722 rho)
    (r5723 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5723 rho)
    (tail : next (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) (rho 5715)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg66 (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) next := by
  exact ⟨rho 5711, rho 5712, rho 5713, rho 5714, rho 5715, r5719, r5720, r5721, r5722, r5723, tail⟩

theorem template_scp_node14_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5724 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5724 rho)
    (r5725 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5725 rho)
    (r5726 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5726 rho)
    (r5727 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5727 rho)
    (r5728 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5728 rho)
    (tail : next (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) (rho 5715) (rho 5720)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg67 (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) (rho 5715) next := by
  exact ⟨rho 5716, rho 5717, rho 5718, rho 5719, rho 5720, r5724, r5725, r5726, r5727, r5728, tail⟩

theorem template_scp_node14_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5729 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5729 rho)
    (r5730 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5730 rho)
    (r5731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5731 rho)
    (r5732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5732 rho)
    (r5733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5733 rho)
    (tail : next (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) (rho 5715) (rho 5720) (rho 5725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg68 (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) (rho 5715) (rho 5720) next := by
  exact ⟨rho 5721, rho 5722, rho 5723, rho 5724, rho 5725, r5729, r5730, r5731, r5732, r5733, tail⟩

theorem template_scp_node14_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5734 rho)
    (r5735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5735 rho)
    (r5736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5736 rho)
    (r5737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5737 rho)
    (r5738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5738 rho)
    (tail : next (rho 5710) (rho 5715) (rho 5720) (rho 5725) (rho 5730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg69 (rho 5685) (rho 5690) (rho 5695) (rho 5700) (rho 5705) (rho 5710) (rho 5715) (rho 5720) (rho 5725) next := by
  exact ⟨rho 5726, rho 5727, rho 5728, rho 5729, rho 5730, r5734, r5735, r5736, r5737, r5738, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
