import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node9_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3619 : Seg13.relationRow3619 rho)
    (r3620 : Seg13.relationRow3620 rho)
    (r3621 : Seg13.relationRow3621 rho)
    (r3622 : Seg13.relationRow3622 rho)
    (r3623 : Seg13.relationRow3623 rho)
    (tail : next (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) (rho 10800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg10 (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) next := by
  exact ⟨rho 10796, rho 10797, rho 10798, rho 10799, rho 10800, r3619, r3620, r3621, r3622, r3623, tail⟩

theorem seg13_scp_node9_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3624 : Seg13.relationRow3624 rho)
    (r3625 : Seg13.relationRow3625 rho)
    (r3626 : Seg13.relationRow3626 rho)
    (r3627 : Seg13.relationRow3627 rho)
    (r3628 : Seg13.relationRow3628 rho)
    (tail : next (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) (rho 10800) (rho 10805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg11 (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) (rho 10800) next := by
  exact ⟨rho 10801, rho 10802, rho 10803, rho 10804, rho 10805, r3624, r3625, r3626, r3627, r3628, tail⟩

theorem seg13_scp_node9_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3629 : Seg13.relationRow3629 rho)
    (r3630 : Seg13.relationRow3630 rho)
    (r3631 : Seg13.relationRow3631 rho)
    (r3632 : Seg13.relationRow3632 rho)
    (r3633 : Seg13.relationRow3633 rho)
    (tail : next (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) (rho 10800) (rho 10805) (rho 10810)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg12 (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) (rho 10800) (rho 10805) next := by
  exact ⟨rho 10806, rho 10807, rho 10808, rho 10809, rho 10810, r3629, r3630, r3631, r3632, r3633, tail⟩

theorem seg13_scp_node9_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3634 : Seg13.relationRow3634 rho)
    (r3635 : Seg13.relationRow3635 rho)
    (r3636 : Seg13.relationRow3636 rho)
    (r3637 : Seg13.relationRow3637 rho)
    (r3638 : Seg13.relationRow3638 rho)
    (tail : next (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg13 (rho 10770) (rho 10775) (rho 10780) (rho 10785) (rho 10790) (rho 10795) (rho 10800) (rho 10805) (rho 10810) next := by
  exact ⟨rho 10811, rho 10812, rho 10813, rho 10814, rho 10815, r3634, r3635, r3636, r3637, r3638, tail⟩

theorem seg13_scp_node9_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3639 : Seg13.relationRow3639 rho)
    (r3640 : Seg13.relationRow3640 rho)
    (r3641 : Seg13.relationRow3641 rho)
    (r3642 : Seg13.relationRow3642 rho)
    (r3643 : Seg13.relationRow3643 rho)
    (tail : next (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg14 (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) next := by
  exact ⟨rho 10816, rho 10817, rho 10818, rho 10819, rho 10820, r3639, r3640, r3641, r3642, r3643, tail⟩

theorem seg13_scp_node9_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3644 : Seg13.relationRow3644 rho)
    (r3645 : Seg13.relationRow3645 rho)
    (r3646 : Seg13.relationRow3646 rho)
    (r3647 : Seg13.relationRow3647 rho)
    (r3648 : Seg13.relationRow3648 rho)
    (tail : next (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) (rho 10825)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg15 (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) next := by
  exact ⟨rho 10821, rho 10822, rho 10823, rho 10824, rho 10825, r3644, r3645, r3646, r3647, r3648, tail⟩

theorem seg13_scp_node9_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3649 : Seg13.relationRow3649 rho)
    (r3650 : Seg13.relationRow3650 rho)
    (r3651 : Seg13.relationRow3651 rho)
    (r3652 : Seg13.relationRow3652 rho)
    (r3653 : Seg13.relationRow3653 rho)
    (tail : next (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) (rho 10825) (rho 10830)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg16 (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) (rho 10825) next := by
  exact ⟨rho 10826, rho 10827, rho 10828, rho 10829, rho 10830, r3649, r3650, r3651, r3652, r3653, tail⟩

theorem seg13_scp_node9_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3654 : Seg13.relationRow3654 rho)
    (r3655 : Seg13.relationRow3655 rho)
    (r3656 : Seg13.relationRow3656 rho)
    (r3657 : Seg13.relationRow3657 rho)
    (r3658 : Seg13.relationRow3658 rho)
    (tail : next (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) (rho 10825) (rho 10830) (rho 10835)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg17 (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) (rho 10825) (rho 10830) next := by
  exact ⟨rho 10831, rho 10832, rho 10833, rho 10834, rho 10835, r3654, r3655, r3656, r3657, r3658, tail⟩

theorem seg13_scp_node9_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3659 : Seg13.relationRow3659 rho)
    (r3660 : Seg13.relationRow3660 rho)
    (r3661 : Seg13.relationRow3661 rho)
    (r3662 : Seg13.relationRow3662 rho)
    (r3663 : Seg13.relationRow3663 rho)
    (tail : next (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg18 (rho 10795) (rho 10800) (rho 10805) (rho 10810) (rho 10815) (rho 10820) (rho 10825) (rho 10830) (rho 10835) next := by
  exact ⟨rho 10836, rho 10837, rho 10838, rho 10839, rho 10840, r3659, r3660, r3661, r3662, r3663, tail⟩

theorem seg13_scp_node9_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3664 : Seg13.relationRow3664 rho)
    (r3665 : Seg13.relationRow3665 rho)
    (r3666 : Seg13.relationRow3666 rho)
    (r3667 : Seg13.relationRow3667 rho)
    (r3668 : Seg13.relationRow3668 rho)
    (tail : next (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg19 (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) next := by
  exact ⟨rho 10841, rho 10842, rho 10843, rho 10844, rho 10845, r3664, r3665, r3666, r3667, r3668, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

