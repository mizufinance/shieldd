import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node9_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3619 : Seg28.relationRow3619 rho)
    (r3620 : Seg28.relationRow3620 rho)
    (r3621 : Seg28.relationRow3621 rho)
    (r3622 : Seg28.relationRow3622 rho)
    (r3623 : Seg28.relationRow3623 rho)
    (tail : next (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) (rho 22981)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg10 (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) next := by
  exact ⟨rho 22977, rho 22978, rho 22979, rho 22980, rho 22981, r3619, r3620, r3621, r3622, r3623, tail⟩

theorem seg28_scp_node9_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3624 : Seg28.relationRow3624 rho)
    (r3625 : Seg28.relationRow3625 rho)
    (r3626 : Seg28.relationRow3626 rho)
    (r3627 : Seg28.relationRow3627 rho)
    (r3628 : Seg28.relationRow3628 rho)
    (tail : next (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) (rho 22981) (rho 22986)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg11 (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) (rho 22981) next := by
  exact ⟨rho 22982, rho 22983, rho 22984, rho 22985, rho 22986, r3624, r3625, r3626, r3627, r3628, tail⟩

theorem seg28_scp_node9_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3629 : Seg28.relationRow3629 rho)
    (r3630 : Seg28.relationRow3630 rho)
    (r3631 : Seg28.relationRow3631 rho)
    (r3632 : Seg28.relationRow3632 rho)
    (r3633 : Seg28.relationRow3633 rho)
    (tail : next (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) (rho 22981) (rho 22986) (rho 22991)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg12 (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) (rho 22981) (rho 22986) next := by
  exact ⟨rho 22987, rho 22988, rho 22989, rho 22990, rho 22991, r3629, r3630, r3631, r3632, r3633, tail⟩

theorem seg28_scp_node9_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3634 : Seg28.relationRow3634 rho)
    (r3635 : Seg28.relationRow3635 rho)
    (r3636 : Seg28.relationRow3636 rho)
    (r3637 : Seg28.relationRow3637 rho)
    (r3638 : Seg28.relationRow3638 rho)
    (tail : next (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg13 (rho 22951) (rho 22956) (rho 22961) (rho 22966) (rho 22971) (rho 22976) (rho 22981) (rho 22986) (rho 22991) next := by
  exact ⟨rho 22992, rho 22993, rho 22994, rho 22995, rho 22996, r3634, r3635, r3636, r3637, r3638, tail⟩

theorem seg28_scp_node9_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3639 : Seg28.relationRow3639 rho)
    (r3640 : Seg28.relationRow3640 rho)
    (r3641 : Seg28.relationRow3641 rho)
    (r3642 : Seg28.relationRow3642 rho)
    (r3643 : Seg28.relationRow3643 rho)
    (tail : next (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg14 (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) next := by
  exact ⟨rho 22997, rho 22998, rho 22999, rho 23000, rho 23001, r3639, r3640, r3641, r3642, r3643, tail⟩

theorem seg28_scp_node9_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3644 : Seg28.relationRow3644 rho)
    (r3645 : Seg28.relationRow3645 rho)
    (r3646 : Seg28.relationRow3646 rho)
    (r3647 : Seg28.relationRow3647 rho)
    (r3648 : Seg28.relationRow3648 rho)
    (tail : next (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) (rho 23006)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg15 (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) next := by
  exact ⟨rho 23002, rho 23003, rho 23004, rho 23005, rho 23006, r3644, r3645, r3646, r3647, r3648, tail⟩

theorem seg28_scp_node9_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3649 : Seg28.relationRow3649 rho)
    (r3650 : Seg28.relationRow3650 rho)
    (r3651 : Seg28.relationRow3651 rho)
    (r3652 : Seg28.relationRow3652 rho)
    (r3653 : Seg28.relationRow3653 rho)
    (tail : next (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) (rho 23006) (rho 23011)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg16 (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) (rho 23006) next := by
  exact ⟨rho 23007, rho 23008, rho 23009, rho 23010, rho 23011, r3649, r3650, r3651, r3652, r3653, tail⟩

theorem seg28_scp_node9_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3654 : Seg28.relationRow3654 rho)
    (r3655 : Seg28.relationRow3655 rho)
    (r3656 : Seg28.relationRow3656 rho)
    (r3657 : Seg28.relationRow3657 rho)
    (r3658 : Seg28.relationRow3658 rho)
    (tail : next (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) (rho 23006) (rho 23011) (rho 23016)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg17 (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) (rho 23006) (rho 23011) next := by
  exact ⟨rho 23012, rho 23013, rho 23014, rho 23015, rho 23016, r3654, r3655, r3656, r3657, r3658, tail⟩

theorem seg28_scp_node9_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3659 : Seg28.relationRow3659 rho)
    (r3660 : Seg28.relationRow3660 rho)
    (r3661 : Seg28.relationRow3661 rho)
    (r3662 : Seg28.relationRow3662 rho)
    (r3663 : Seg28.relationRow3663 rho)
    (tail : next (rho 23001) (rho 23006) (rho 23011) (rho 23016) (rho 23021)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg18 (rho 22976) (rho 22981) (rho 22986) (rho 22991) (rho 22996) (rho 23001) (rho 23006) (rho 23011) (rho 23016) next := by
  exact ⟨rho 23017, rho 23018, rho 23019, rho 23020, rho 23021, r3659, r3660, r3661, r3662, r3663, tail⟩

theorem seg28_scp_node9_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3664 : Seg28.relationRow3664 rho)
    (r3665 : Seg28.relationRow3665 rho)
    (r3666 : Seg28.relationRow3666 rho)
    (r3667 : Seg28.relationRow3667 rho)
    (r3668 : Seg28.relationRow3668 rho)
    (tail : next (rho 23001) (rho 23006) (rho 23011) (rho 23016) (rho 23021) (rho 23026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg19 (rho 23001) (rho 23006) (rho 23011) (rho 23016) (rho 23021) next := by
  exact ⟨rho 23022, rho 23023, rho 23024, rho 23025, rho 23026, r3664, r3665, r3666, r3667, r3668, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

