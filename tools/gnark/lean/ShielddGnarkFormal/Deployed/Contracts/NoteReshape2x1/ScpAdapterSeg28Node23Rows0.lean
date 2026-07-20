import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node23_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8665 : Seg28.relationRow8665 rho)
    (r8666 : Seg28.relationRow8666 rho)
    (r8667 : Seg28.relationRow8667 rho)
    (r8668 : Seg28.relationRow8668 rho)
    (r8669 : Seg28.relationRow8669 rho)
    (tail : next (rho 113) (rho 114) (rho 27956) (rho 27957) (rho 27958) (rho 27959) (rho 27960) (rho 27965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg0 (rho 112) (rho 113) (rho 114) (rho 27955) (rho 27956) (rho 27957) (rho 27958) (rho 27959) (rho 27960) next := by
  exact ⟨rho 27961, rho 27962, rho 27963, rho 27964, rho 27965, r8665, r8666, r8667, r8668, r8669, tail⟩

theorem seg28_scp_node23_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8670 : Seg28.relationRow8670 rho)
    (r8671 : Seg28.relationRow8671 rho)
    (r8672 : Seg28.relationRow8672 rho)
    (r8673 : Seg28.relationRow8673 rho)
    (r8674 : Seg28.relationRow8674 rho)
    (tail : next (rho 113) (rho 114) (rho 27958) (rho 27959) (rho 27960) (rho 27965) (rho 27970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg1 (rho 113) (rho 114) (rho 27956) (rho 27957) (rho 27958) (rho 27959) (rho 27960) (rho 27965) next := by
  exact ⟨rho 27966, rho 27967, rho 27968, rho 27969, rho 27970, r8670, r8671, r8672, r8673, r8674, tail⟩

theorem seg28_scp_node23_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8675 : Seg28.relationRow8675 rho)
    (r8676 : Seg28.relationRow8676 rho)
    (r8677 : Seg28.relationRow8677 rho)
    (r8678 : Seg28.relationRow8678 rho)
    (r8679 : Seg28.relationRow8679 rho)
    (tail : next (rho 114) (rho 27960) (rho 27965) (rho 27970) (rho 27975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg2 (rho 113) (rho 114) (rho 27958) (rho 27959) (rho 27960) (rho 27965) (rho 27970) next := by
  exact ⟨rho 27971, rho 27972, rho 27973, rho 27974, rho 27975, r8675, r8676, r8677, r8678, r8679, tail⟩

theorem seg28_scp_node23_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8680 : Seg28.relationRow8680 rho)
    (r8681 : Seg28.relationRow8681 rho)
    (r8682 : Seg28.relationRow8682 rho)
    (r8683 : Seg28.relationRow8683 rho)
    (r8684 : Seg28.relationRow8684 rho)
    (tail : next (rho 27965) (rho 27970) (rho 27975) (rho 27980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg3 (rho 114) (rho 27960) (rho 27965) (rho 27970) (rho 27975) next := by
  exact ⟨rho 27976, rho 27977, rho 27978, rho 27979, rho 27980, r8680, r8681, r8682, r8683, r8684, tail⟩

theorem seg28_scp_node23_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8685 : Seg28.relationRow8685 rho)
    (r8686 : Seg28.relationRow8686 rho)
    (r8687 : Seg28.relationRow8687 rho)
    (r8688 : Seg28.relationRow8688 rho)
    (r8689 : Seg28.relationRow8689 rho)
    (tail : next (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg4 (rho 27965) (rho 27970) (rho 27975) (rho 27980) next := by
  exact ⟨rho 27981, rho 27982, rho 27983, rho 27984, rho 27985, r8685, r8686, r8687, r8688, r8689, tail⟩

theorem seg28_scp_node23_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8690 : Seg28.relationRow8690 rho)
    (r8691 : Seg28.relationRow8691 rho)
    (r8692 : Seg28.relationRow8692 rho)
    (r8693 : Seg28.relationRow8693 rho)
    (r8694 : Seg28.relationRow8694 rho)
    (tail : next (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) (rho 27990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg5 (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) next := by
  exact ⟨rho 27986, rho 27987, rho 27988, rho 27989, rho 27990, r8690, r8691, r8692, r8693, r8694, tail⟩

theorem seg28_scp_node23_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8695 : Seg28.relationRow8695 rho)
    (r8696 : Seg28.relationRow8696 rho)
    (r8697 : Seg28.relationRow8697 rho)
    (r8698 : Seg28.relationRow8698 rho)
    (r8699 : Seg28.relationRow8699 rho)
    (tail : next (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) (rho 27990) (rho 27995)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg6 (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) (rho 27990) next := by
  exact ⟨rho 27991, rho 27992, rho 27993, rho 27994, rho 27995, r8695, r8696, r8697, r8698, r8699, tail⟩

theorem seg28_scp_node23_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8700 : Seg28.relationRow8700 rho)
    (r8701 : Seg28.relationRow8701 rho)
    (r8702 : Seg28.relationRow8702 rho)
    (r8703 : Seg28.relationRow8703 rho)
    (r8704 : Seg28.relationRow8704 rho)
    (tail : next (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) (rho 27990) (rho 27995) (rho 28000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg7 (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) (rho 27990) (rho 27995) next := by
  exact ⟨rho 27996, rho 27997, rho 27998, rho 27999, rho 28000, r8700, r8701, r8702, r8703, r8704, tail⟩

theorem seg28_scp_node23_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8705 : Seg28.relationRow8705 rho)
    (r8706 : Seg28.relationRow8706 rho)
    (r8707 : Seg28.relationRow8707 rho)
    (r8708 : Seg28.relationRow8708 rho)
    (r8709 : Seg28.relationRow8709 rho)
    (tail : next (rho 27985) (rho 27990) (rho 27995) (rho 28000) (rho 28005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg8 (rho 27965) (rho 27970) (rho 27975) (rho 27980) (rho 27985) (rho 27990) (rho 27995) (rho 28000) next := by
  exact ⟨rho 28001, rho 28002, rho 28003, rho 28004, rho 28005, r8705, r8706, r8707, r8708, r8709, tail⟩

theorem seg28_scp_node23_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8710 : Seg28.relationRow8710 rho)
    (r8711 : Seg28.relationRow8711 rho)
    (r8712 : Seg28.relationRow8712 rho)
    (r8713 : Seg28.relationRow8713 rho)
    (r8714 : Seg28.relationRow8714 rho)
    (tail : next (rho 27985) (rho 27990) (rho 27995) (rho 28000) (rho 28005) (rho 28010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg9 (rho 27985) (rho 27990) (rho 27995) (rho 28000) (rho 28005) next := by
  exact ⟨rho 28006, rho 28007, rho 28008, rho 28009, rho 28010, r8710, r8711, r8712, r8713, r8714, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

