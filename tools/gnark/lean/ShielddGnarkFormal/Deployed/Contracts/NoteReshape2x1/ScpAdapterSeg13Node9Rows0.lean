import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node9_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3569 : Seg13.relationRow3569 rho)
    (r3570 : Seg13.relationRow3570 rho)
    (r3571 : Seg13.relationRow3571 rho)
    (r3572 : Seg13.relationRow3572 rho)
    (r3573 : Seg13.relationRow3573 rho)
    (tail : next (rho 68) (rho 69) (rho 10735) (rho 10736) (rho 10737) (rho 10738) (rho 10739) (rho 10744)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg0 (rho 67) (rho 68) (rho 69) (rho 10734) (rho 10735) (rho 10736) (rho 10737) (rho 10738) (rho 10739) next := by
  exact ⟨rho 10740, rho 10741, rho 10742, rho 10743, rho 10744, r3569, r3570, r3571, r3572, r3573, tail⟩

theorem seg13_scp_node9_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3574 : Seg13.relationRow3574 rho)
    (r3575 : Seg13.relationRow3575 rho)
    (r3576 : Seg13.relationRow3576 rho)
    (r3577 : Seg13.relationRow3577 rho)
    (r3578 : Seg13.relationRow3578 rho)
    (tail : next (rho 68) (rho 69) (rho 10737) (rho 10738) (rho 10739) (rho 10744) (rho 10749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg1 (rho 68) (rho 69) (rho 10735) (rho 10736) (rho 10737) (rho 10738) (rho 10739) (rho 10744) next := by
  exact ⟨rho 10745, rho 10746, rho 10747, rho 10748, rho 10749, r3574, r3575, r3576, r3577, r3578, tail⟩

theorem seg13_scp_node9_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3579 : Seg13.relationRow3579 rho)
    (r3580 : Seg13.relationRow3580 rho)
    (r3581 : Seg13.relationRow3581 rho)
    (r3582 : Seg13.relationRow3582 rho)
    (r3583 : Seg13.relationRow3583 rho)
    (tail : next (rho 69) (rho 10739) (rho 10744) (rho 10749) (rho 10754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg2 (rho 68) (rho 69) (rho 10737) (rho 10738) (rho 10739) (rho 10744) (rho 10749) next := by
  exact ⟨rho 10750, rho 10751, rho 10752, rho 10753, rho 10754, r3579, r3580, r3581, r3582, r3583, tail⟩

theorem seg13_scp_node9_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3584 : Seg13.relationRow3584 rho)
    (r3585 : Seg13.relationRow3585 rho)
    (r3586 : Seg13.relationRow3586 rho)
    (r3587 : Seg13.relationRow3587 rho)
    (r3588 : Seg13.relationRow3588 rho)
    (tail : next (rho 10744) (rho 10749) (rho 10754) (rho 10759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg3 (rho 69) (rho 10739) (rho 10744) (rho 10749) (rho 10754) next := by
  exact ⟨rho 10755, rho 10756, rho 10757, rho 10758, rho 10759, r3584, r3585, r3586, r3587, r3588, tail⟩

theorem seg13_scp_node9_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3589 : Seg13.relationRow3589 rho)
    (r3590 : Seg13.relationRow3590 rho)
    (r3591 : Seg13.relationRow3591 rho)
    (r3592 : Seg13.relationRow3592 rho)
    (r3593 : Seg13.relationRow3593 rho)
    (tail : next (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg4 (rho 10744) (rho 10749) (rho 10754) (rho 10759) next := by
  exact ⟨rho 10760, rho 10761, rho 10762, rho 10763, rho 10764, r3589, r3590, r3591, r3592, r3593, tail⟩

theorem seg13_scp_node9_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3594 : Seg13.relationRow3594 rho)
    (r3595 : Seg13.relationRow3595 rho)
    (r3596 : Seg13.relationRow3596 rho)
    (r3597 : Seg13.relationRow3597 rho)
    (r3598 : Seg13.relationRow3598 rho)
    (tail : next (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) (rho 10769)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg5 (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) next := by
  exact ⟨rho 10765, rho 10766, rho 10767, rho 10768, rho 10769, r3594, r3595, r3596, r3597, r3598, tail⟩

theorem seg13_scp_node9_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3599 : Seg13.relationRow3599 rho)
    (r3600 : Seg13.relationRow3600 rho)
    (r3601 : Seg13.relationRow3601 rho)
    (r3602 : Seg13.relationRow3602 rho)
    (r3603 : Seg13.relationRow3603 rho)
    (tail : next (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) (rho 10769) (rho 10774)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg6 (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) (rho 10769) next := by
  exact ⟨rho 10770, rho 10771, rho 10772, rho 10773, rho 10774, r3599, r3600, r3601, r3602, r3603, tail⟩

theorem seg13_scp_node9_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3604 : Seg13.relationRow3604 rho)
    (r3605 : Seg13.relationRow3605 rho)
    (r3606 : Seg13.relationRow3606 rho)
    (r3607 : Seg13.relationRow3607 rho)
    (r3608 : Seg13.relationRow3608 rho)
    (tail : next (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) (rho 10769) (rho 10774) (rho 10779)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg7 (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) (rho 10769) (rho 10774) next := by
  exact ⟨rho 10775, rho 10776, rho 10777, rho 10778, rho 10779, r3604, r3605, r3606, r3607, r3608, tail⟩

theorem seg13_scp_node9_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3609 : Seg13.relationRow3609 rho)
    (r3610 : Seg13.relationRow3610 rho)
    (r3611 : Seg13.relationRow3611 rho)
    (r3612 : Seg13.relationRow3612 rho)
    (r3613 : Seg13.relationRow3613 rho)
    (tail : next (rho 10764) (rho 10769) (rho 10774) (rho 10779) (rho 10784)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg8 (rho 10744) (rho 10749) (rho 10754) (rho 10759) (rho 10764) (rho 10769) (rho 10774) (rho 10779) next := by
  exact ⟨rho 10780, rho 10781, rho 10782, rho 10783, rho 10784, r3609, r3610, r3611, r3612, r3613, tail⟩

theorem seg13_scp_node9_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3614 : Seg13.relationRow3614 rho)
    (r3615 : Seg13.relationRow3615 rho)
    (r3616 : Seg13.relationRow3616 rho)
    (r3617 : Seg13.relationRow3617 rho)
    (r3618 : Seg13.relationRow3618 rho)
    (tail : next (rho 10764) (rho 10769) (rho 10774) (rho 10779) (rho 10784) (rho 10789)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg9 (rho 10764) (rho 10769) (rho 10774) (rho 10779) (rho 10784) next := by
  exact ⟨rho 10785, rho 10786, rho 10787, rho 10788, rho 10789, r3614, r3615, r3616, r3617, r3618, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

