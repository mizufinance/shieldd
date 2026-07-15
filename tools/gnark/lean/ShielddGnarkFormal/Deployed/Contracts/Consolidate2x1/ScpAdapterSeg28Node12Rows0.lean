import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node12_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4661 : Seg28.relationRow4661 rho)
    (r4662 : Seg28.relationRow4662 rho)
    (r4663 : Seg28.relationRow4663 rho)
    (r4664 : Seg28.relationRow4664 rho)
    (r4665 : Seg28.relationRow4665 rho)
    (tail : next (rho 149) (rho 150) (rho 24002) (rho 24003) (rho 24004) (rho 24005) (rho 24006) (rho 24011)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg0 (rho 148) (rho 149) (rho 150) (rho 24001) (rho 24002) (rho 24003) (rho 24004) (rho 24005) (rho 24006) next := by
  exact ⟨rho 24007, rho 24008, rho 24009, rho 24010, rho 24011, r4661, r4662, r4663, r4664, r4665, tail⟩

theorem seg28_scp_node12_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4666 : Seg28.relationRow4666 rho)
    (r4667 : Seg28.relationRow4667 rho)
    (r4668 : Seg28.relationRow4668 rho)
    (r4669 : Seg28.relationRow4669 rho)
    (r4670 : Seg28.relationRow4670 rho)
    (tail : next (rho 149) (rho 150) (rho 24004) (rho 24005) (rho 24006) (rho 24011) (rho 24016)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg1 (rho 149) (rho 150) (rho 24002) (rho 24003) (rho 24004) (rho 24005) (rho 24006) (rho 24011) next := by
  exact ⟨rho 24012, rho 24013, rho 24014, rho 24015, rho 24016, r4666, r4667, r4668, r4669, r4670, tail⟩

theorem seg28_scp_node12_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4671 : Seg28.relationRow4671 rho)
    (r4672 : Seg28.relationRow4672 rho)
    (r4673 : Seg28.relationRow4673 rho)
    (r4674 : Seg28.relationRow4674 rho)
    (r4675 : Seg28.relationRow4675 rho)
    (tail : next (rho 150) (rho 24006) (rho 24011) (rho 24016) (rho 24021)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg2 (rho 149) (rho 150) (rho 24004) (rho 24005) (rho 24006) (rho 24011) (rho 24016) next := by
  exact ⟨rho 24017, rho 24018, rho 24019, rho 24020, rho 24021, r4671, r4672, r4673, r4674, r4675, tail⟩

theorem seg28_scp_node12_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4676 : Seg28.relationRow4676 rho)
    (r4677 : Seg28.relationRow4677 rho)
    (r4678 : Seg28.relationRow4678 rho)
    (r4679 : Seg28.relationRow4679 rho)
    (r4680 : Seg28.relationRow4680 rho)
    (tail : next (rho 24011) (rho 24016) (rho 24021) (rho 24026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg3 (rho 150) (rho 24006) (rho 24011) (rho 24016) (rho 24021) next := by
  exact ⟨rho 24022, rho 24023, rho 24024, rho 24025, rho 24026, r4676, r4677, r4678, r4679, r4680, tail⟩

theorem seg28_scp_node12_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4681 : Seg28.relationRow4681 rho)
    (r4682 : Seg28.relationRow4682 rho)
    (r4683 : Seg28.relationRow4683 rho)
    (r4684 : Seg28.relationRow4684 rho)
    (r4685 : Seg28.relationRow4685 rho)
    (tail : next (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg4 (rho 24011) (rho 24016) (rho 24021) (rho 24026) next := by
  exact ⟨rho 24027, rho 24028, rho 24029, rho 24030, rho 24031, r4681, r4682, r4683, r4684, r4685, tail⟩

theorem seg28_scp_node12_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4686 : Seg28.relationRow4686 rho)
    (r4687 : Seg28.relationRow4687 rho)
    (r4688 : Seg28.relationRow4688 rho)
    (r4689 : Seg28.relationRow4689 rho)
    (r4690 : Seg28.relationRow4690 rho)
    (tail : next (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) (rho 24036)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg5 (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) next := by
  exact ⟨rho 24032, rho 24033, rho 24034, rho 24035, rho 24036, r4686, r4687, r4688, r4689, r4690, tail⟩

theorem seg28_scp_node12_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4691 : Seg28.relationRow4691 rho)
    (r4692 : Seg28.relationRow4692 rho)
    (r4693 : Seg28.relationRow4693 rho)
    (r4694 : Seg28.relationRow4694 rho)
    (r4695 : Seg28.relationRow4695 rho)
    (tail : next (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) (rho 24036) (rho 24041)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg6 (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) (rho 24036) next := by
  exact ⟨rho 24037, rho 24038, rho 24039, rho 24040, rho 24041, r4691, r4692, r4693, r4694, r4695, tail⟩

theorem seg28_scp_node12_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4696 : Seg28.relationRow4696 rho)
    (r4697 : Seg28.relationRow4697 rho)
    (r4698 : Seg28.relationRow4698 rho)
    (r4699 : Seg28.relationRow4699 rho)
    (r4700 : Seg28.relationRow4700 rho)
    (tail : next (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) (rho 24036) (rho 24041) (rho 24046)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg7 (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) (rho 24036) (rho 24041) next := by
  exact ⟨rho 24042, rho 24043, rho 24044, rho 24045, rho 24046, r4696, r4697, r4698, r4699, r4700, tail⟩

theorem seg28_scp_node12_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4701 : Seg28.relationRow4701 rho)
    (r4702 : Seg28.relationRow4702 rho)
    (r4703 : Seg28.relationRow4703 rho)
    (r4704 : Seg28.relationRow4704 rho)
    (r4705 : Seg28.relationRow4705 rho)
    (tail : next (rho 24031) (rho 24036) (rho 24041) (rho 24046) (rho 24051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg8 (rho 24011) (rho 24016) (rho 24021) (rho 24026) (rho 24031) (rho 24036) (rho 24041) (rho 24046) next := by
  exact ⟨rho 24047, rho 24048, rho 24049, rho 24050, rho 24051, r4701, r4702, r4703, r4704, r4705, tail⟩

theorem seg28_scp_node12_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4706 : Seg28.relationRow4706 rho)
    (r4707 : Seg28.relationRow4707 rho)
    (r4708 : Seg28.relationRow4708 rho)
    (r4709 : Seg28.relationRow4709 rho)
    (r4710 : Seg28.relationRow4710 rho)
    (tail : next (rho 24031) (rho 24036) (rho 24041) (rho 24046) (rho 24051) (rho 24056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg9 (rho 24031) (rho 24036) (rho 24041) (rho 24046) (rho 24051) next := by
  exact ⟨rho 24052, rho 24053, rho 24054, rho 24055, rho 24056, r4706, r4707, r4708, r4709, r4710, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

