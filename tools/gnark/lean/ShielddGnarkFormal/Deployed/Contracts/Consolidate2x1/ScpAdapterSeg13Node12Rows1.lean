import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node12_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4711 : Seg13.relationRow4711 rho)
    (r4712 : Seg13.relationRow4712 rho)
    (r4713 : Seg13.relationRow4713 rho)
    (r4714 : Seg13.relationRow4714 rho)
    (r4715 : Seg13.relationRow4715 rho)
    (tail : next (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) (rho 11880)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg10 (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) next := by
  exact ⟨rho 11876, rho 11877, rho 11878, rho 11879, rho 11880, r4711, r4712, r4713, r4714, r4715, tail⟩

theorem seg13_scp_node12_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4716 : Seg13.relationRow4716 rho)
    (r4717 : Seg13.relationRow4717 rho)
    (r4718 : Seg13.relationRow4718 rho)
    (r4719 : Seg13.relationRow4719 rho)
    (r4720 : Seg13.relationRow4720 rho)
    (tail : next (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) (rho 11880) (rho 11885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg11 (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) (rho 11880) next := by
  exact ⟨rho 11881, rho 11882, rho 11883, rho 11884, rho 11885, r4716, r4717, r4718, r4719, r4720, tail⟩

theorem seg13_scp_node12_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4721 : Seg13.relationRow4721 rho)
    (r4722 : Seg13.relationRow4722 rho)
    (r4723 : Seg13.relationRow4723 rho)
    (r4724 : Seg13.relationRow4724 rho)
    (r4725 : Seg13.relationRow4725 rho)
    (tail : next (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) (rho 11880) (rho 11885) (rho 11890)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg12 (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) (rho 11880) (rho 11885) next := by
  exact ⟨rho 11886, rho 11887, rho 11888, rho 11889, rho 11890, r4721, r4722, r4723, r4724, r4725, tail⟩

theorem seg13_scp_node12_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4726 : Seg13.relationRow4726 rho)
    (r4727 : Seg13.relationRow4727 rho)
    (r4728 : Seg13.relationRow4728 rho)
    (r4729 : Seg13.relationRow4729 rho)
    (r4730 : Seg13.relationRow4730 rho)
    (tail : next (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg13 (rho 11850) (rho 11855) (rho 11860) (rho 11865) (rho 11870) (rho 11875) (rho 11880) (rho 11885) (rho 11890) next := by
  exact ⟨rho 11891, rho 11892, rho 11893, rho 11894, rho 11895, r4726, r4727, r4728, r4729, r4730, tail⟩

theorem seg13_scp_node12_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4731 : Seg13.relationRow4731 rho)
    (r4732 : Seg13.relationRow4732 rho)
    (r4733 : Seg13.relationRow4733 rho)
    (r4734 : Seg13.relationRow4734 rho)
    (r4735 : Seg13.relationRow4735 rho)
    (tail : next (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg14 (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) next := by
  exact ⟨rho 11896, rho 11897, rho 11898, rho 11899, rho 11900, r4731, r4732, r4733, r4734, r4735, tail⟩

theorem seg13_scp_node12_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4736 : Seg13.relationRow4736 rho)
    (r4737 : Seg13.relationRow4737 rho)
    (r4738 : Seg13.relationRow4738 rho)
    (r4739 : Seg13.relationRow4739 rho)
    (r4740 : Seg13.relationRow4740 rho)
    (tail : next (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) (rho 11905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg15 (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) next := by
  exact ⟨rho 11901, rho 11902, rho 11903, rho 11904, rho 11905, r4736, r4737, r4738, r4739, r4740, tail⟩

theorem seg13_scp_node12_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4741 : Seg13.relationRow4741 rho)
    (r4742 : Seg13.relationRow4742 rho)
    (r4743 : Seg13.relationRow4743 rho)
    (r4744 : Seg13.relationRow4744 rho)
    (r4745 : Seg13.relationRow4745 rho)
    (tail : next (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) (rho 11905) (rho 11910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg16 (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) (rho 11905) next := by
  exact ⟨rho 11906, rho 11907, rho 11908, rho 11909, rho 11910, r4741, r4742, r4743, r4744, r4745, tail⟩

theorem seg13_scp_node12_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4746 : Seg13.relationRow4746 rho)
    (r4747 : Seg13.relationRow4747 rho)
    (r4748 : Seg13.relationRow4748 rho)
    (r4749 : Seg13.relationRow4749 rho)
    (r4750 : Seg13.relationRow4750 rho)
    (tail : next (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) (rho 11905) (rho 11910) (rho 11915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg17 (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) (rho 11905) (rho 11910) next := by
  exact ⟨rho 11911, rho 11912, rho 11913, rho 11914, rho 11915, r4746, r4747, r4748, r4749, r4750, tail⟩

theorem seg13_scp_node12_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4751 : Seg13.relationRow4751 rho)
    (r4752 : Seg13.relationRow4752 rho)
    (r4753 : Seg13.relationRow4753 rho)
    (r4754 : Seg13.relationRow4754 rho)
    (r4755 : Seg13.relationRow4755 rho)
    (tail : next (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg18 (rho 11875) (rho 11880) (rho 11885) (rho 11890) (rho 11895) (rho 11900) (rho 11905) (rho 11910) (rho 11915) next := by
  exact ⟨rho 11916, rho 11917, rho 11918, rho 11919, rho 11920, r4751, r4752, r4753, r4754, r4755, tail⟩

theorem seg13_scp_node12_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4756 : Seg13.relationRow4756 rho)
    (r4757 : Seg13.relationRow4757 rho)
    (r4758 : Seg13.relationRow4758 rho)
    (r4759 : Seg13.relationRow4759 rho)
    (r4760 : Seg13.relationRow4760 rho)
    (tail : next (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg19 (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) next := by
  exact ⟨rho 11921, rho 11922, rho 11923, rho 11924, rho 11925, r4756, r4757, r4758, r4759, r4760, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

