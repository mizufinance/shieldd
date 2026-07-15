import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node12_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4661 : Seg13.relationRow4661 rho)
    (r4662 : Seg13.relationRow4662 rho)
    (r4663 : Seg13.relationRow4663 rho)
    (r4664 : Seg13.relationRow4664 rho)
    (r4665 : Seg13.relationRow4665 rho)
    (tail : next (rho 59) (rho 60) (rho 11821) (rho 11822) (rho 11823) (rho 11824) (rho 11825) (rho 11830)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg0 (rho 58) (rho 59) (rho 60) (rho 11820) (rho 11821) (rho 11822) (rho 11823) (rho 11824) (rho 11825) next := by
  exact ⟨rho 11826, rho 11827, rho 11828, rho 11829, rho 11830, r4661, r4662, r4663, r4664, r4665, tail⟩

theorem seg13_scp_node12_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4666 : Seg13.relationRow4666 rho)
    (r4667 : Seg13.relationRow4667 rho)
    (r4668 : Seg13.relationRow4668 rho)
    (r4669 : Seg13.relationRow4669 rho)
    (r4670 : Seg13.relationRow4670 rho)
    (tail : next (rho 59) (rho 60) (rho 11823) (rho 11824) (rho 11825) (rho 11830) (rho 11835)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg1 (rho 59) (rho 60) (rho 11821) (rho 11822) (rho 11823) (rho 11824) (rho 11825) (rho 11830) next := by
  exact ⟨rho 11831, rho 11832, rho 11833, rho 11834, rho 11835, r4666, r4667, r4668, r4669, r4670, tail⟩

theorem seg13_scp_node12_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4671 : Seg13.relationRow4671 rho)
    (r4672 : Seg13.relationRow4672 rho)
    (r4673 : Seg13.relationRow4673 rho)
    (r4674 : Seg13.relationRow4674 rho)
    (r4675 : Seg13.relationRow4675 rho)
    (tail : next (rho 60) (rho 11825) (rho 11830) (rho 11835) (rho 11840)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg2 (rho 59) (rho 60) (rho 11823) (rho 11824) (rho 11825) (rho 11830) (rho 11835) next := by
  exact ⟨rho 11836, rho 11837, rho 11838, rho 11839, rho 11840, r4671, r4672, r4673, r4674, r4675, tail⟩

theorem seg13_scp_node12_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4676 : Seg13.relationRow4676 rho)
    (r4677 : Seg13.relationRow4677 rho)
    (r4678 : Seg13.relationRow4678 rho)
    (r4679 : Seg13.relationRow4679 rho)
    (r4680 : Seg13.relationRow4680 rho)
    (tail : next (rho 11830) (rho 11835) (rho 11840) (rho 11845)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg3 (rho 60) (rho 11825) (rho 11830) (rho 11835) (rho 11840) next := by
  exact ⟨rho 11841, rho 11842, rho 11843, rho 11844, rho 11845, r4676, r4677, r4678, r4679, r4680, tail⟩

theorem seg13_scp_node12_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4681 : Seg13.relationRow4681 rho)
    (r4682 : Seg13.relationRow4682 rho)
    (r4683 : Seg13.relationRow4683 rho)
    (r4684 : Seg13.relationRow4684 rho)
    (r4685 : Seg13.relationRow4685 rho)
    (tail : next (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg4 (rho 11830) (rho 11835) (rho 11840) (rho 11845) next := by
  exact ⟨rho 11846, rho 11847, rho 11848, rho 11849, rho 11850, r4681, r4682, r4683, r4684, r4685, tail⟩

theorem seg13_scp_node12_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4686 : Seg13.relationRow4686 rho)
    (r4687 : Seg13.relationRow4687 rho)
    (r4688 : Seg13.relationRow4688 rho)
    (r4689 : Seg13.relationRow4689 rho)
    (r4690 : Seg13.relationRow4690 rho)
    (tail : next (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) (rho 11855)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg5 (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) next := by
  exact ⟨rho 11851, rho 11852, rho 11853, rho 11854, rho 11855, r4686, r4687, r4688, r4689, r4690, tail⟩

theorem seg13_scp_node12_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4691 : Seg13.relationRow4691 rho)
    (r4692 : Seg13.relationRow4692 rho)
    (r4693 : Seg13.relationRow4693 rho)
    (r4694 : Seg13.relationRow4694 rho)
    (r4695 : Seg13.relationRow4695 rho)
    (tail : next (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) (rho 11855) (rho 11860)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg6 (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) (rho 11855) next := by
  exact ⟨rho 11856, rho 11857, rho 11858, rho 11859, rho 11860, r4691, r4692, r4693, r4694, r4695, tail⟩

theorem seg13_scp_node12_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4696 : Seg13.relationRow4696 rho)
    (r4697 : Seg13.relationRow4697 rho)
    (r4698 : Seg13.relationRow4698 rho)
    (r4699 : Seg13.relationRow4699 rho)
    (r4700 : Seg13.relationRow4700 rho)
    (tail : next (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) (rho 11855) (rho 11860) (rho 11865)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg7 (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) (rho 11855) (rho 11860) next := by
  exact ⟨rho 11861, rho 11862, rho 11863, rho 11864, rho 11865, r4696, r4697, r4698, r4699, r4700, tail⟩

theorem seg13_scp_node12_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4701 : Seg13.relationRow4701 rho)
    (r4702 : Seg13.relationRow4702 rho)
    (r4703 : Seg13.relationRow4703 rho)
    (r4704 : Seg13.relationRow4704 rho)
    (r4705 : Seg13.relationRow4705 rho)
    (tail : next (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg8 (rho 11830) (rho 11835) (rho 11840) (rho 11845) (rho 11850) (rho 11855) (rho 11860) (rho 11865) next := by
  exact ⟨rho 11866, rho 11867, rho 11868, rho 11869, rho 11870, r4701, r4702, r4703, r4704, r4705, tail⟩

theorem seg13_scp_node12_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4706 : Seg13.relationRow4706 rho)
    (r4707 : Seg13.relationRow4707 rho)
    (r4708 : Seg13.relationRow4708 rho)
    (r4709 : Seg13.relationRow4709 rho)
    (r4710 : Seg13.relationRow4710 rho)
    (tail : next (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg9 (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) next := by
  exact ⟨rho 11871, rho 11872, rho 11873, rho 11874, rho 11875, r4706, r4707, r4708, r4709, r4710, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

