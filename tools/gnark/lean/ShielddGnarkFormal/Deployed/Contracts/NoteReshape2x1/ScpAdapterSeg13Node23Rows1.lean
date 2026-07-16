import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node23_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8715 : Seg13.relationRow8715 rho)
    (r8716 : Seg13.relationRow8716 rho)
    (r8717 : Seg13.relationRow8717 rho)
    (r8718 : Seg13.relationRow8718 rho)
    (r8719 : Seg13.relationRow8719 rho)
    (tail : next (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) (rho 15840)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg10 (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) next := by
  exact ⟨rho 15836, rho 15837, rho 15838, rho 15839, rho 15840, r8715, r8716, r8717, r8718, r8719, tail⟩

theorem seg13_scp_node23_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8720 : Seg13.relationRow8720 rho)
    (r8721 : Seg13.relationRow8721 rho)
    (r8722 : Seg13.relationRow8722 rho)
    (r8723 : Seg13.relationRow8723 rho)
    (r8724 : Seg13.relationRow8724 rho)
    (tail : next (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) (rho 15840) (rho 15845)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg11 (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) (rho 15840) next := by
  exact ⟨rho 15841, rho 15842, rho 15843, rho 15844, rho 15845, r8720, r8721, r8722, r8723, r8724, tail⟩

theorem seg13_scp_node23_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8725 : Seg13.relationRow8725 rho)
    (r8726 : Seg13.relationRow8726 rho)
    (r8727 : Seg13.relationRow8727 rho)
    (r8728 : Seg13.relationRow8728 rho)
    (r8729 : Seg13.relationRow8729 rho)
    (tail : next (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) (rho 15840) (rho 15845) (rho 15850)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg12 (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) (rho 15840) (rho 15845) next := by
  exact ⟨rho 15846, rho 15847, rho 15848, rho 15849, rho 15850, r8725, r8726, r8727, r8728, r8729, tail⟩

theorem seg13_scp_node23_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8730 : Seg13.relationRow8730 rho)
    (r8731 : Seg13.relationRow8731 rho)
    (r8732 : Seg13.relationRow8732 rho)
    (r8733 : Seg13.relationRow8733 rho)
    (r8734 : Seg13.relationRow8734 rho)
    (tail : next (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg13 (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835) (rho 15840) (rho 15845) (rho 15850) next := by
  exact ⟨rho 15851, rho 15852, rho 15853, rho 15854, rho 15855, r8730, r8731, r8732, r8733, r8734, tail⟩

theorem seg13_scp_node23_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8735 : Seg13.relationRow8735 rho)
    (r8736 : Seg13.relationRow8736 rho)
    (r8737 : Seg13.relationRow8737 rho)
    (r8738 : Seg13.relationRow8738 rho)
    (r8739 : Seg13.relationRow8739 rho)
    (tail : next (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg14 (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) next := by
  exact ⟨rho 15856, rho 15857, rho 15858, rho 15859, rho 15860, r8735, r8736, r8737, r8738, r8739, tail⟩

theorem seg13_scp_node23_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8740 : Seg13.relationRow8740 rho)
    (r8741 : Seg13.relationRow8741 rho)
    (r8742 : Seg13.relationRow8742 rho)
    (r8743 : Seg13.relationRow8743 rho)
    (r8744 : Seg13.relationRow8744 rho)
    (tail : next (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) (rho 15865)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg15 (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) next := by
  exact ⟨rho 15861, rho 15862, rho 15863, rho 15864, rho 15865, r8740, r8741, r8742, r8743, r8744, tail⟩

theorem seg13_scp_node23_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8745 : Seg13.relationRow8745 rho)
    (r8746 : Seg13.relationRow8746 rho)
    (r8747 : Seg13.relationRow8747 rho)
    (r8748 : Seg13.relationRow8748 rho)
    (r8749 : Seg13.relationRow8749 rho)
    (tail : next (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) (rho 15865) (rho 15870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg16 (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) (rho 15865) next := by
  exact ⟨rho 15866, rho 15867, rho 15868, rho 15869, rho 15870, r8745, r8746, r8747, r8748, r8749, tail⟩

theorem seg13_scp_node23_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8750 : Seg13.relationRow8750 rho)
    (r8751 : Seg13.relationRow8751 rho)
    (r8752 : Seg13.relationRow8752 rho)
    (r8753 : Seg13.relationRow8753 rho)
    (r8754 : Seg13.relationRow8754 rho)
    (tail : next (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) (rho 15865) (rho 15870) (rho 15875)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg17 (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) (rho 15865) (rho 15870) next := by
  exact ⟨rho 15871, rho 15872, rho 15873, rho 15874, rho 15875, r8750, r8751, r8752, r8753, r8754, tail⟩

theorem seg13_scp_node23_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8755 : Seg13.relationRow8755 rho)
    (r8756 : Seg13.relationRow8756 rho)
    (r8757 : Seg13.relationRow8757 rho)
    (r8758 : Seg13.relationRow8758 rho)
    (r8759 : Seg13.relationRow8759 rho)
    (tail : next (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg18 (rho 15835) (rho 15840) (rho 15845) (rho 15850) (rho 15855) (rho 15860) (rho 15865) (rho 15870) (rho 15875) next := by
  exact ⟨rho 15876, rho 15877, rho 15878, rho 15879, rho 15880, r8755, r8756, r8757, r8758, r8759, tail⟩

theorem seg13_scp_node23_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8760 : Seg13.relationRow8760 rho)
    (r8761 : Seg13.relationRow8761 rho)
    (r8762 : Seg13.relationRow8762 rho)
    (r8763 : Seg13.relationRow8763 rho)
    (r8764 : Seg13.relationRow8764 rho)
    (tail : next (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg19 (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) next := by
  exact ⟨rho 15881, rho 15882, rho 15883, rho 15884, rho 15885, r8760, r8761, r8762, r8763, r8764, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

