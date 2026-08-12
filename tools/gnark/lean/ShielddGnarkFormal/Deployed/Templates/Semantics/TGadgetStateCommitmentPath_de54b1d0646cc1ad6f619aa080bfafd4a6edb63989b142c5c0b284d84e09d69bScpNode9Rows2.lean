import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node9_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3669 rho)
    (r3670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3670 rho)
    (r3671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3671 rho)
    (r3672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3672 rho)
    (r3673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3673 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg20 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) next := by
  exact ⟨rho 3666, rho 3667, rho 3668, rho 3669, rho 3670, r3669, r3670, r3671, r3672, r3673, tail⟩

theorem template_scp_node9_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3674 rho)
    (r3675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3675 rho)
    (r3676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3676 rho)
    (r3677 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3677 rho)
    (r3678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3678 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg21 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) next := by
  exact ⟨rho 3671, rho 3672, rho 3673, rho 3674, rho 3675, r3674, r3675, r3676, r3677, r3678, tail⟩

theorem template_scp_node9_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3679 rho)
    (r3680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3680 rho)
    (r3681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3681 rho)
    (r3682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3682 rho)
    (r3683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3683 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg22 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) next := by
  exact ⟨rho 3676, rho 3677, rho 3678, rho 3679, rho 3680, r3679, r3680, r3681, r3682, r3683, tail⟩

theorem template_scp_node9_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r3684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3684 rho)
    (r3685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3685 rho)
    (r3686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3686 rho)
    (r3687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3687 rho)
    (r3688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3688 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg23 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) next := by
  exact ⟨rho 3681, rho 3682, rho 3683, rho 3684, rho 3685, r3684, r3685, r3686, r3687, r3688, tail⟩

theorem template_scp_node9_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3689 rho)
    (r3690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3690 rho)
    (r3691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3691 rho)
    (r3692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3692 rho)
    (r3693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3693 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg24 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) next := by
  exact ⟨rho 3686, rho 3687, rho 3688, rho 3689, rho 3690, r3689, r3690, r3691, r3692, r3693, tail⟩

theorem template_scp_node9_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3694 rho)
    (r3695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3695 rho)
    (r3696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3696 rho)
    (r3697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3697 rho)
    (r3698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3698 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg25 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) next := by
  exact ⟨rho 3691, rho 3692, rho 3693, rho 3694, rho 3695, r3694, r3695, r3696, r3697, r3698, tail⟩

theorem template_scp_node9_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3699 rho)
    (r3700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3700 rho)
    (r3701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3701 rho)
    (r3702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3702 rho)
    (r3703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3703 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg26 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) next := by
  exact ⟨rho 3696, rho 3697, rho 3698, rho 3699, rho 3700, r3699, r3700, r3701, r3702, r3703, tail⟩

theorem template_scp_node9_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3704 rho)
    (r3705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3705 rho)
    (r3706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3706 rho)
    (r3707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3707 rho)
    (r3708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3708 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700) (rho 3705)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg27 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700) next := by
  exact ⟨rho 3701, rho 3702, rho 3703, rho 3704, rho 3705, r3704, r3705, r3706, r3707, r3708, tail⟩

theorem template_scp_node9_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3709 rho)
    (r3710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3710 rho)
    (r3711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3711 rho)
    (r3712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3712 rho)
    (r3713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3713 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700) (rho 3705) (rho 3710)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg28 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700) (rho 3705) next := by
  exact ⟨rho 3706, rho 3707, rho 3708, rho 3709, rho 3710, r3709, r3710, r3711, r3712, r3713, tail⟩

theorem template_scp_node9_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3714 rho)
    (r3715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3715 rho)
    (r3716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3716 rho)
    (r3717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3717 rho)
    (r3718 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3718 rho)
    (tail : next (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700) (rho 3705) (rho 3710) (rho 3715)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg29 (rho 3640) (rho 3645) (rho 3650) (rho 3655) (rho 3660) (rho 3665) (rho 3670) (rho 3675) (rho 3680) (rho 3685) (rho 3690) (rho 3695) (rho 3700) (rho 3705) (rho 3710) next := by
  exact ⟨rho 3711, rho 3712, rho 3713, rho 3714, rho 3715, r3714, r3715, r3716, r3717, r3718, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
