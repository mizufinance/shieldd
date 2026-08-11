import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node9_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3619 rho)
    (r3620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3620 rho)
    (r3621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3621 rho)
    (r3622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3622 rho)
    (r3623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3623 rho)
    (tail : next (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) (rho 3621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg10 (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) next := by
  exact ⟨rho 3617, rho 3618, rho 3619, rho 3620, rho 3621, r3619, r3620, r3621, r3622, r3623, tail⟩

theorem template_scp_node9_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3624 rho)
    (r3625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3625 rho)
    (r3626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3626 rho)
    (r3627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3627 rho)
    (r3628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3628 rho)
    (tail : next (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) (rho 3621) (rho 3626)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg11 (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) (rho 3621) next := by
  exact ⟨rho 3622, rho 3623, rho 3624, rho 3625, rho 3626, r3624, r3625, r3626, r3627, r3628, tail⟩

theorem template_scp_node9_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3629 rho)
    (r3630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3630 rho)
    (r3631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3631 rho)
    (r3632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3632 rho)
    (r3633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3633 rho)
    (tail : next (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) (rho 3621) (rho 3626) (rho 3631)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg12 (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) (rho 3621) (rho 3626) next := by
  exact ⟨rho 3627, rho 3628, rho 3629, rho 3630, rho 3631, r3629, r3630, r3631, r3632, r3633, tail⟩

theorem template_scp_node9_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3634 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3634 rho)
    (r3635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3635 rho)
    (r3636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3636 rho)
    (r3637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3637 rho)
    (r3638 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3638 rho)
    (tail : next (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg13 (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616) (rho 3621) (rho 3626) (rho 3631) next := by
  exact ⟨rho 3632, rho 3633, rho 3634, rho 3635, rho 3636, r3634, r3635, r3636, r3637, r3638, tail⟩

theorem template_scp_node9_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3639 rho)
    (r3640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3640 rho)
    (r3641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3641 rho)
    (r3642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3642 rho)
    (r3643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3643 rho)
    (tail : next (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg14 (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) next := by
  exact ⟨rho 3637, rho 3638, rho 3639, rho 3640, rho 3641, r3639, r3640, r3641, r3642, r3643, tail⟩

theorem template_scp_node9_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3644 rho)
    (r3645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3645 rho)
    (r3646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3646 rho)
    (r3647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3647 rho)
    (r3648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3648 rho)
    (tail : next (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) (rho 3646)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg15 (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) next := by
  exact ⟨rho 3642, rho 3643, rho 3644, rho 3645, rho 3646, r3644, r3645, r3646, r3647, r3648, tail⟩

theorem template_scp_node9_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3649 rho)
    (r3650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3650 rho)
    (r3651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3651 rho)
    (r3652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3652 rho)
    (r3653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3653 rho)
    (tail : next (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) (rho 3646) (rho 3651)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg16 (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) (rho 3646) next := by
  exact ⟨rho 3647, rho 3648, rho 3649, rho 3650, rho 3651, r3649, r3650, r3651, r3652, r3653, tail⟩

theorem template_scp_node9_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3654 rho)
    (r3655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3655 rho)
    (r3656 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3656 rho)
    (r3657 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3657 rho)
    (r3658 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3658 rho)
    (tail : next (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) (rho 3646) (rho 3651) (rho 3656)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg17 (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) (rho 3646) (rho 3651) next := by
  exact ⟨rho 3652, rho 3653, rho 3654, rho 3655, rho 3656, r3654, r3655, r3656, r3657, r3658, tail⟩

theorem template_scp_node9_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3659 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3659 rho)
    (r3660 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3660 rho)
    (r3661 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3661 rho)
    (r3662 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3662 rho)
    (r3663 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3663 rho)
    (tail : next (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg18 (rho 3616) (rho 3621) (rho 3626) (rho 3631) (rho 3636) (rho 3641) (rho 3646) (rho 3651) (rho 3656) next := by
  exact ⟨rho 3657, rho 3658, rho 3659, rho 3660, rho 3661, r3659, r3660, r3661, r3662, r3663, tail⟩

theorem template_scp_node9_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3664 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3664 rho)
    (r3665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3665 rho)
    (r3666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3666 rho)
    (r3667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3667 rho)
    (r3668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3668 rho)
    (tail : next (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg19 (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) next := by
  exact ⟨rho 3662, rho 3663, rho 3664, rho 3665, rho 3666, r3664, r3665, r3666, r3667, r3668, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
