import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node9_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3569 rho)
    (r3570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3570 rho)
    (r3571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3571 rho)
    (r3572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3572 rho)
    (r3573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3573 rho)
    (tail : next (rho 3560) (rho 3563) (rho 3561) (rho 3562) (rho 3564) (rho 3565) (rho 3566) (rho 3571)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg0 (rho 3558) (rho 3560) (rho 3563) (rho 3559) (rho 3561) (rho 3562) (rho 3564) (rho 3565) (rho 3566) next := by
  exact ⟨rho 3567, rho 3568, rho 3569, rho 3570, rho 3571, r3569, r3570, r3571, r3572, r3573, tail⟩

theorem template_scp_node9_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3574 rho)
    (r3575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3575 rho)
    (r3576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3576 rho)
    (r3577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3577 rho)
    (r3578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3578 rho)
    (tail : next (rho 3560) (rho 3563) (rho 3564) (rho 3565) (rho 3566) (rho 3571) (rho 3576)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg1 (rho 3560) (rho 3563) (rho 3561) (rho 3562) (rho 3564) (rho 3565) (rho 3566) (rho 3571) next := by
  exact ⟨rho 3572, rho 3573, rho 3574, rho 3575, rho 3576, r3574, r3575, r3576, r3577, r3578, tail⟩

theorem template_scp_node9_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3579 rho)
    (r3580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3580 rho)
    (r3581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3581 rho)
    (r3582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3582 rho)
    (r3583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3583 rho)
    (tail : next (rho 3563) (rho 3566) (rho 3571) (rho 3576) (rho 3581)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg2 (rho 3560) (rho 3563) (rho 3564) (rho 3565) (rho 3566) (rho 3571) (rho 3576) next := by
  exact ⟨rho 3577, rho 3578, rho 3579, rho 3580, rho 3581, r3579, r3580, r3581, r3582, r3583, tail⟩

theorem template_scp_node9_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r3584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3584 rho)
    (r3585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3585 rho)
    (r3586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3586 rho)
    (r3587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3587 rho)
    (r3588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3588 rho)
    (tail : next (rho 3571) (rho 3576) (rho 3581) (rho 3586)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg3 (rho 3563) (rho 3566) (rho 3571) (rho 3576) (rho 3581) next := by
  exact ⟨rho 3582, rho 3583, rho 3584, rho 3585, rho 3586, r3584, r3585, r3586, r3587, r3588, tail⟩

theorem template_scp_node9_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3589 rho)
    (r3590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3590 rho)
    (r3591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3591 rho)
    (r3592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3592 rho)
    (r3593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3593 rho)
    (tail : next (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg4 (rho 3571) (rho 3576) (rho 3581) (rho 3586) next := by
  exact ⟨rho 3587, rho 3588, rho 3589, rho 3590, rho 3591, r3589, r3590, r3591, r3592, r3593, tail⟩

theorem template_scp_node9_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3594 rho)
    (r3595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3595 rho)
    (r3596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3596 rho)
    (r3597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3597 rho)
    (r3598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3598 rho)
    (tail : next (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) (rho 3596)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg5 (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) next := by
  exact ⟨rho 3592, rho 3593, rho 3594, rho 3595, rho 3596, r3594, r3595, r3596, r3597, r3598, tail⟩

theorem template_scp_node9_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3599 rho)
    (r3600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3600 rho)
    (r3601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3601 rho)
    (r3602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3602 rho)
    (r3603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3603 rho)
    (tail : next (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) (rho 3596) (rho 3601)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg6 (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) (rho 3596) next := by
  exact ⟨rho 3597, rho 3598, rho 3599, rho 3600, rho 3601, r3599, r3600, r3601, r3602, r3603, tail⟩

theorem template_scp_node9_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3604 rho)
    (r3605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3605 rho)
    (r3606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3606 rho)
    (r3607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3607 rho)
    (r3608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3608 rho)
    (tail : next (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) (rho 3596) (rho 3601) (rho 3606)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg7 (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) (rho 3596) (rho 3601) next := by
  exact ⟨rho 3602, rho 3603, rho 3604, rho 3605, rho 3606, r3604, r3605, r3606, r3607, r3608, tail⟩

theorem template_scp_node9_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3609 rho)
    (r3610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3610 rho)
    (r3611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3611 rho)
    (r3612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3612 rho)
    (r3613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3613 rho)
    (tail : next (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg8 (rho 3571) (rho 3576) (rho 3581) (rho 3586) (rho 3591) (rho 3596) (rho 3601) (rho 3606) next := by
  exact ⟨rho 3607, rho 3608, rho 3609, rho 3610, rho 3611, r3609, r3610, r3611, r3612, r3613, tail⟩

theorem template_scp_node9_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3614 rho)
    (r3615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3615 rho)
    (r3616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3616 rho)
    (r3617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3617 rho)
    (r3618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3618 rho)
    (tail : next (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) (rho 3616)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg9 (rho 3591) (rho 3596) (rho 3601) (rho 3606) (rho 3611) next := by
  exact ⟨rho 3612, rho 3613, rho 3614, rho 3615, rho 3616, r3614, r3615, r3616, r3617, r3618, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
