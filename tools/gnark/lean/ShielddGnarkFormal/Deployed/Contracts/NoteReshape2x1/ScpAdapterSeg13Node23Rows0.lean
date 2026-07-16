import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node23_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8665 : Seg13.relationRow8665 rho)
    (r8666 : Seg13.relationRow8666 rho)
    (r8667 : Seg13.relationRow8667 rho)
    (r8668 : Seg13.relationRow8668 rho)
    (r8669 : Seg13.relationRow8669 rho)
    (tail : next (rho 26) (rho 27) (rho 15781) (rho 15782) (rho 15783) (rho 15784) (rho 15785) (rho 15790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg0 (rho 25) (rho 26) (rho 27) (rho 15780) (rho 15781) (rho 15782) (rho 15783) (rho 15784) (rho 15785) next := by
  exact ⟨rho 15786, rho 15787, rho 15788, rho 15789, rho 15790, r8665, r8666, r8667, r8668, r8669, tail⟩

theorem seg13_scp_node23_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8670 : Seg13.relationRow8670 rho)
    (r8671 : Seg13.relationRow8671 rho)
    (r8672 : Seg13.relationRow8672 rho)
    (r8673 : Seg13.relationRow8673 rho)
    (r8674 : Seg13.relationRow8674 rho)
    (tail : next (rho 26) (rho 27) (rho 15783) (rho 15784) (rho 15785) (rho 15790) (rho 15795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg1 (rho 26) (rho 27) (rho 15781) (rho 15782) (rho 15783) (rho 15784) (rho 15785) (rho 15790) next := by
  exact ⟨rho 15791, rho 15792, rho 15793, rho 15794, rho 15795, r8670, r8671, r8672, r8673, r8674, tail⟩

theorem seg13_scp_node23_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8675 : Seg13.relationRow8675 rho)
    (r8676 : Seg13.relationRow8676 rho)
    (r8677 : Seg13.relationRow8677 rho)
    (r8678 : Seg13.relationRow8678 rho)
    (r8679 : Seg13.relationRow8679 rho)
    (tail : next (rho 27) (rho 15785) (rho 15790) (rho 15795) (rho 15800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg2 (rho 26) (rho 27) (rho 15783) (rho 15784) (rho 15785) (rho 15790) (rho 15795) next := by
  exact ⟨rho 15796, rho 15797, rho 15798, rho 15799, rho 15800, r8675, r8676, r8677, r8678, r8679, tail⟩

theorem seg13_scp_node23_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8680 : Seg13.relationRow8680 rho)
    (r8681 : Seg13.relationRow8681 rho)
    (r8682 : Seg13.relationRow8682 rho)
    (r8683 : Seg13.relationRow8683 rho)
    (r8684 : Seg13.relationRow8684 rho)
    (tail : next (rho 15790) (rho 15795) (rho 15800) (rho 15805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg3 (rho 27) (rho 15785) (rho 15790) (rho 15795) (rho 15800) next := by
  exact ⟨rho 15801, rho 15802, rho 15803, rho 15804, rho 15805, r8680, r8681, r8682, r8683, r8684, tail⟩

theorem seg13_scp_node23_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8685 : Seg13.relationRow8685 rho)
    (r8686 : Seg13.relationRow8686 rho)
    (r8687 : Seg13.relationRow8687 rho)
    (r8688 : Seg13.relationRow8688 rho)
    (r8689 : Seg13.relationRow8689 rho)
    (tail : next (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg4 (rho 15790) (rho 15795) (rho 15800) (rho 15805) next := by
  exact ⟨rho 15806, rho 15807, rho 15808, rho 15809, rho 15810, r8685, r8686, r8687, r8688, r8689, tail⟩

theorem seg13_scp_node23_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8690 : Seg13.relationRow8690 rho)
    (r8691 : Seg13.relationRow8691 rho)
    (r8692 : Seg13.relationRow8692 rho)
    (r8693 : Seg13.relationRow8693 rho)
    (r8694 : Seg13.relationRow8694 rho)
    (tail : next (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) (rho 15815)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg5 (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) next := by
  exact ⟨rho 15811, rho 15812, rho 15813, rho 15814, rho 15815, r8690, r8691, r8692, r8693, r8694, tail⟩

theorem seg13_scp_node23_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8695 : Seg13.relationRow8695 rho)
    (r8696 : Seg13.relationRow8696 rho)
    (r8697 : Seg13.relationRow8697 rho)
    (r8698 : Seg13.relationRow8698 rho)
    (r8699 : Seg13.relationRow8699 rho)
    (tail : next (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) (rho 15815) (rho 15820)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg6 (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) (rho 15815) next := by
  exact ⟨rho 15816, rho 15817, rho 15818, rho 15819, rho 15820, r8695, r8696, r8697, r8698, r8699, tail⟩

theorem seg13_scp_node23_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8700 : Seg13.relationRow8700 rho)
    (r8701 : Seg13.relationRow8701 rho)
    (r8702 : Seg13.relationRow8702 rho)
    (r8703 : Seg13.relationRow8703 rho)
    (r8704 : Seg13.relationRow8704 rho)
    (tail : next (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) (rho 15815) (rho 15820) (rho 15825)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg7 (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) (rho 15815) (rho 15820) next := by
  exact ⟨rho 15821, rho 15822, rho 15823, rho 15824, rho 15825, r8700, r8701, r8702, r8703, r8704, tail⟩

theorem seg13_scp_node23_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8705 : Seg13.relationRow8705 rho)
    (r8706 : Seg13.relationRow8706 rho)
    (r8707 : Seg13.relationRow8707 rho)
    (r8708 : Seg13.relationRow8708 rho)
    (r8709 : Seg13.relationRow8709 rho)
    (tail : next (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg8 (rho 15790) (rho 15795) (rho 15800) (rho 15805) (rho 15810) (rho 15815) (rho 15820) (rho 15825) next := by
  exact ⟨rho 15826, rho 15827, rho 15828, rho 15829, rho 15830, r8705, r8706, r8707, r8708, r8709, tail⟩

theorem seg13_scp_node23_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8710 : Seg13.relationRow8710 rho)
    (r8711 : Seg13.relationRow8711 rho)
    (r8712 : Seg13.relationRow8712 rho)
    (r8713 : Seg13.relationRow8713 rho)
    (r8714 : Seg13.relationRow8714 rho)
    (tail : next (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) (rho 15835)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg9 (rho 15810) (rho 15815) (rho 15820) (rho 15825) (rho 15830) next := by
  exact ⟨rho 15831, rho 15832, rho 15833, rho 15834, rho 15835, r8710, r8711, r8712, r8713, r8714, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

