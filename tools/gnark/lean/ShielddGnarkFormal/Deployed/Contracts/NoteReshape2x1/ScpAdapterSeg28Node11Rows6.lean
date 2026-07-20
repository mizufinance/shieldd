import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node11_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4597 : Seg28.relationRow4597 rho)
    (r4598 : Seg28.relationRow4598 rho)
    (r4599 : Seg28.relationRow4599 rho)
    (r4600 : Seg28.relationRow4600 rho)
    (r4601 : Seg28.relationRow4601 rho)
    (tail : next (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg60 (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) next := by
  exact ⟨rho 23941, rho 23942, rho 23943, rho 23944, rho 23945, r4597, r4598, r4599, r4600, r4601, tail⟩

theorem seg28_scp_node11_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4602 : Seg28.relationRow4602 rho)
    (r4603 : Seg28.relationRow4603 rho)
    (r4604 : Seg28.relationRow4604 rho)
    (r4605 : Seg28.relationRow4605 rho)
    (r4606 : Seg28.relationRow4606 rho)
    (tail : next (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) (rho 23950)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg61 (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) next := by
  exact ⟨rho 23946, rho 23947, rho 23948, rho 23949, rho 23950, r4602, r4603, r4604, r4605, r4606, tail⟩

theorem seg28_scp_node11_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4607 : Seg28.relationRow4607 rho)
    (r4608 : Seg28.relationRow4608 rho)
    (r4609 : Seg28.relationRow4609 rho)
    (r4610 : Seg28.relationRow4610 rho)
    (r4611 : Seg28.relationRow4611 rho)
    (tail : next (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) (rho 23950) (rho 23955)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg62 (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) (rho 23950) next := by
  exact ⟨rho 23951, rho 23952, rho 23953, rho 23954, rho 23955, r4607, r4608, r4609, r4610, r4611, tail⟩

theorem seg28_scp_node11_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4612 : Seg28.relationRow4612 rho)
    (r4613 : Seg28.relationRow4613 rho)
    (r4614 : Seg28.relationRow4614 rho)
    (r4615 : Seg28.relationRow4615 rho)
    (r4616 : Seg28.relationRow4616 rho)
    (tail : next (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) (rho 23950) (rho 23955) (rho 23960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg63 (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) (rho 23950) (rho 23955) next := by
  exact ⟨rho 23956, rho 23957, rho 23958, rho 23959, rho 23960, r4612, r4613, r4614, r4615, r4616, tail⟩

theorem seg28_scp_node11_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4617 : Seg28.relationRow4617 rho)
    (r4618 : Seg28.relationRow4618 rho)
    (r4619 : Seg28.relationRow4619 rho)
    (r4620 : Seg28.relationRow4620 rho)
    (r4621 : Seg28.relationRow4621 rho)
    (tail : next (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg64 (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940) (rho 23945) (rho 23950) (rho 23955) (rho 23960) next := by
  exact ⟨rho 23961, rho 23962, rho 23963, rho 23964, rho 23965, r4617, r4618, r4619, r4620, r4621, tail⟩

theorem seg28_scp_node11_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4622 : Seg28.relationRow4622 rho)
    (r4623 : Seg28.relationRow4623 rho)
    (r4624 : Seg28.relationRow4624 rho)
    (r4625 : Seg28.relationRow4625 rho)
    (r4626 : Seg28.relationRow4626 rho)
    (tail : next (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg65 (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) next := by
  exact ⟨rho 23966, rho 23967, rho 23968, rho 23969, rho 23970, r4622, r4623, r4624, r4625, r4626, tail⟩

theorem seg28_scp_node11_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4627 : Seg28.relationRow4627 rho)
    (r4628 : Seg28.relationRow4628 rho)
    (r4629 : Seg28.relationRow4629 rho)
    (r4630 : Seg28.relationRow4630 rho)
    (r4631 : Seg28.relationRow4631 rho)
    (tail : next (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) (rho 23975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg66 (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) next := by
  exact ⟨rho 23971, rho 23972, rho 23973, rho 23974, rho 23975, r4627, r4628, r4629, r4630, r4631, tail⟩

theorem seg28_scp_node11_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4632 : Seg28.relationRow4632 rho)
    (r4633 : Seg28.relationRow4633 rho)
    (r4634 : Seg28.relationRow4634 rho)
    (r4635 : Seg28.relationRow4635 rho)
    (r4636 : Seg28.relationRow4636 rho)
    (tail : next (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) (rho 23975) (rho 23980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg67 (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) (rho 23975) next := by
  exact ⟨rho 23976, rho 23977, rho 23978, rho 23979, rho 23980, r4632, r4633, r4634, r4635, r4636, tail⟩

theorem seg28_scp_node11_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4637 : Seg28.relationRow4637 rho)
    (r4638 : Seg28.relationRow4638 rho)
    (r4639 : Seg28.relationRow4639 rho)
    (r4640 : Seg28.relationRow4640 rho)
    (r4641 : Seg28.relationRow4641 rho)
    (tail : next (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) (rho 23975) (rho 23980) (rho 23985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg68 (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) (rho 23975) (rho 23980) next := by
  exact ⟨rho 23981, rho 23982, rho 23983, rho 23984, rho 23985, r4637, r4638, r4639, r4640, r4641, tail⟩

theorem seg28_scp_node11_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4642 : Seg28.relationRow4642 rho)
    (r4643 : Seg28.relationRow4643 rho)
    (r4644 : Seg28.relationRow4644 rho)
    (r4645 : Seg28.relationRow4645 rho)
    (r4646 : Seg28.relationRow4646 rho)
    (tail : next (rho 23970) (rho 23975) (rho 23980) (rho 23985) (rho 23990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg69 (rho 23945) (rho 23950) (rho 23955) (rho 23960) (rho 23965) (rho 23970) (rho 23975) (rho 23980) (rho 23985) next := by
  exact ⟨rho 23986, rho 23987, rho 23988, rho 23989, rho 23990, r4642, r4643, r4644, r4645, r4646, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

