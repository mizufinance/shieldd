import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node9_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3569 : Seg28.relationRow3569 rho)
    (r3570 : Seg28.relationRow3570 rho)
    (r3571 : Seg28.relationRow3571 rho)
    (r3572 : Seg28.relationRow3572 rho)
    (r3573 : Seg28.relationRow3573 rho)
    (tail : next (rho 155) (rho 156) (rho 22916) (rho 22917) (rho 22918) (rho 22919) (rho 22920) (rho 22925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg0 (rho 154) (rho 155) (rho 156) (rho 22915) (rho 22916) (rho 22917) (rho 22918) (rho 22919) (rho 22920) next := by
  exact ⟨rho 22921, rho 22922, rho 22923, rho 22924, rho 22925, r3569, r3570, r3571, r3572, r3573, tail⟩

theorem seg28_scp_node9_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3574 : Seg28.relationRow3574 rho)
    (r3575 : Seg28.relationRow3575 rho)
    (r3576 : Seg28.relationRow3576 rho)
    (r3577 : Seg28.relationRow3577 rho)
    (r3578 : Seg28.relationRow3578 rho)
    (tail : next (rho 155) (rho 156) (rho 22918) (rho 22919) (rho 22920) (rho 22925) (rho 22930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg1 (rho 155) (rho 156) (rho 22916) (rho 22917) (rho 22918) (rho 22919) (rho 22920) (rho 22925) next := by
  exact ⟨rho 22926, rho 22927, rho 22928, rho 22929, rho 22930, r3574, r3575, r3576, r3577, r3578, tail⟩

theorem seg28_scp_node9_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3579 : Seg28.relationRow3579 rho)
    (r3580 : Seg28.relationRow3580 rho)
    (r3581 : Seg28.relationRow3581 rho)
    (r3582 : Seg28.relationRow3582 rho)
    (r3583 : Seg28.relationRow3583 rho)
    (tail : next (rho 156) (rho 22920) (rho 22925) (rho 22930) (rho 22935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg2 (rho 155) (rho 156) (rho 22918) (rho 22919) (rho 22920) (rho 22925) (rho 22930) next := by
  exact ⟨rho 22931, rho 22932, rho 22933, rho 22934, rho 22935, r3579, r3580, r3581, r3582, r3583, tail⟩

theorem seg28_scp_node9_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3584 : Seg28.relationRow3584 rho)
    (r3585 : Seg28.relationRow3585 rho)
    (r3586 : Seg28.relationRow3586 rho)
    (r3587 : Seg28.relationRow3587 rho)
    (r3588 : Seg28.relationRow3588 rho)
    (tail : next (rho 22925) (rho 22930) (rho 22935) (rho 22940)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg3 (rho 156) (rho 22920) (rho 22925) (rho 22930) (rho 22935) next := by
  exact ⟨rho 22936, rho 22937, rho 22938, rho 22939, rho 22940, r3584, r3585, r3586, r3587, r3588, tail⟩

theorem seg28_scp_node9_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3589 : Seg28.relationRow3589 rho)
    (r3590 : Seg28.relationRow3590 rho)
    (r3591 : Seg28.relationRow3591 rho)
    (r3592 : Seg28.relationRow3592 rho)
    (r3593 : Seg28.relationRow3593 rho)
    (tail : next (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg4 (rho 22925) (rho 22930) (rho 22935) (rho 22940) next := by
  exact ⟨rho 22941, rho 22942, rho 22943, rho 22944, rho 22945, r3589, r3590, r3591, r3592, r3593, tail⟩

theorem seg28_scp_node9_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3594 : Seg28.relationRow3594 rho)
    (r3595 : Seg28.relationRow3595 rho)
    (r3596 : Seg28.relationRow3596 rho)
    (r3597 : Seg28.relationRow3597 rho)
    (r3598 : Seg28.relationRow3598 rho)
    (tail : next (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) (rho 22950)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg5 (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) next := by
  exact ⟨rho 22946, rho 22947, rho 22948, rho 22949, rho 22950, r3594, r3595, r3596, r3597, r3598, tail⟩

theorem seg28_scp_node9_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3599 : Seg28.relationRow3599 rho)
    (r3600 : Seg28.relationRow3600 rho)
    (r3601 : Seg28.relationRow3601 rho)
    (r3602 : Seg28.relationRow3602 rho)
    (r3603 : Seg28.relationRow3603 rho)
    (tail : next (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) (rho 22950) (rho 22955)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg6 (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) (rho 22950) next := by
  exact ⟨rho 22951, rho 22952, rho 22953, rho 22954, rho 22955, r3599, r3600, r3601, r3602, r3603, tail⟩

theorem seg28_scp_node9_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3604 : Seg28.relationRow3604 rho)
    (r3605 : Seg28.relationRow3605 rho)
    (r3606 : Seg28.relationRow3606 rho)
    (r3607 : Seg28.relationRow3607 rho)
    (r3608 : Seg28.relationRow3608 rho)
    (tail : next (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) (rho 22950) (rho 22955) (rho 22960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg7 (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) (rho 22950) (rho 22955) next := by
  exact ⟨rho 22956, rho 22957, rho 22958, rho 22959, rho 22960, r3604, r3605, r3606, r3607, r3608, tail⟩

theorem seg28_scp_node9_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3609 : Seg28.relationRow3609 rho)
    (r3610 : Seg28.relationRow3610 rho)
    (r3611 : Seg28.relationRow3611 rho)
    (r3612 : Seg28.relationRow3612 rho)
    (r3613 : Seg28.relationRow3613 rho)
    (tail : next (rho 22945) (rho 22950) (rho 22955) (rho 22960) (rho 22965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg8 (rho 22925) (rho 22930) (rho 22935) (rho 22940) (rho 22945) (rho 22950) (rho 22955) (rho 22960) next := by
  exact ⟨rho 22961, rho 22962, rho 22963, rho 22964, rho 22965, r3609, r3610, r3611, r3612, r3613, tail⟩

theorem seg28_scp_node9_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3614 : Seg28.relationRow3614 rho)
    (r3615 : Seg28.relationRow3615 rho)
    (r3616 : Seg28.relationRow3616 rho)
    (r3617 : Seg28.relationRow3617 rho)
    (r3618 : Seg28.relationRow3618 rho)
    (tail : next (rho 22945) (rho 22950) (rho 22955) (rho 22960) (rho 22965) (rho 22970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg9 (rho 22945) (rho 22950) (rho 22955) (rho 22960) (rho 22965) next := by
  exact ⟨rho 22966, rho 22967, rho 22968, rho 22969, rho 22970, r3614, r3615, r3616, r3617, r3618, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

