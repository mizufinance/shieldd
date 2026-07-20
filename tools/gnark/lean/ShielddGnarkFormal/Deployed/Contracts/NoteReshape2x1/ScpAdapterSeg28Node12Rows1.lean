import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node12_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4711 : Seg28.relationRow4711 rho)
    (r4712 : Seg28.relationRow4712 rho)
    (r4713 : Seg28.relationRow4713 rho)
    (r4714 : Seg28.relationRow4714 rho)
    (r4715 : Seg28.relationRow4715 rho)
    (tail : next (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) (rho 24055)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg10 (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) next := by
  exact ⟨rho 24051, rho 24052, rho 24053, rho 24054, rho 24055, r4711, r4712, r4713, r4714, r4715, tail⟩

theorem seg28_scp_node12_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4716 : Seg28.relationRow4716 rho)
    (r4717 : Seg28.relationRow4717 rho)
    (r4718 : Seg28.relationRow4718 rho)
    (r4719 : Seg28.relationRow4719 rho)
    (r4720 : Seg28.relationRow4720 rho)
    (tail : next (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) (rho 24055) (rho 24060)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg11 (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) (rho 24055) next := by
  exact ⟨rho 24056, rho 24057, rho 24058, rho 24059, rho 24060, r4716, r4717, r4718, r4719, r4720, tail⟩

theorem seg28_scp_node12_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4721 : Seg28.relationRow4721 rho)
    (r4722 : Seg28.relationRow4722 rho)
    (r4723 : Seg28.relationRow4723 rho)
    (r4724 : Seg28.relationRow4724 rho)
    (r4725 : Seg28.relationRow4725 rho)
    (tail : next (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) (rho 24055) (rho 24060) (rho 24065)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg12 (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) (rho 24055) (rho 24060) next := by
  exact ⟨rho 24061, rho 24062, rho 24063, rho 24064, rho 24065, r4721, r4722, r4723, r4724, r4725, tail⟩

theorem seg28_scp_node12_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4726 : Seg28.relationRow4726 rho)
    (r4727 : Seg28.relationRow4727 rho)
    (r4728 : Seg28.relationRow4728 rho)
    (r4729 : Seg28.relationRow4729 rho)
    (r4730 : Seg28.relationRow4730 rho)
    (tail : next (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg13 (rho 24025) (rho 24030) (rho 24035) (rho 24040) (rho 24045) (rho 24050) (rho 24055) (rho 24060) (rho 24065) next := by
  exact ⟨rho 24066, rho 24067, rho 24068, rho 24069, rho 24070, r4726, r4727, r4728, r4729, r4730, tail⟩

theorem seg28_scp_node12_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4731 : Seg28.relationRow4731 rho)
    (r4732 : Seg28.relationRow4732 rho)
    (r4733 : Seg28.relationRow4733 rho)
    (r4734 : Seg28.relationRow4734 rho)
    (r4735 : Seg28.relationRow4735 rho)
    (tail : next (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg14 (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) next := by
  exact ⟨rho 24071, rho 24072, rho 24073, rho 24074, rho 24075, r4731, r4732, r4733, r4734, r4735, tail⟩

theorem seg28_scp_node12_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4736 : Seg28.relationRow4736 rho)
    (r4737 : Seg28.relationRow4737 rho)
    (r4738 : Seg28.relationRow4738 rho)
    (r4739 : Seg28.relationRow4739 rho)
    (r4740 : Seg28.relationRow4740 rho)
    (tail : next (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) (rho 24080)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg15 (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) next := by
  exact ⟨rho 24076, rho 24077, rho 24078, rho 24079, rho 24080, r4736, r4737, r4738, r4739, r4740, tail⟩

theorem seg28_scp_node12_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4741 : Seg28.relationRow4741 rho)
    (r4742 : Seg28.relationRow4742 rho)
    (r4743 : Seg28.relationRow4743 rho)
    (r4744 : Seg28.relationRow4744 rho)
    (r4745 : Seg28.relationRow4745 rho)
    (tail : next (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) (rho 24080) (rho 24085)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg16 (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) (rho 24080) next := by
  exact ⟨rho 24081, rho 24082, rho 24083, rho 24084, rho 24085, r4741, r4742, r4743, r4744, r4745, tail⟩

theorem seg28_scp_node12_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4746 : Seg28.relationRow4746 rho)
    (r4747 : Seg28.relationRow4747 rho)
    (r4748 : Seg28.relationRow4748 rho)
    (r4749 : Seg28.relationRow4749 rho)
    (r4750 : Seg28.relationRow4750 rho)
    (tail : next (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) (rho 24080) (rho 24085) (rho 24090)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg17 (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) (rho 24080) (rho 24085) next := by
  exact ⟨rho 24086, rho 24087, rho 24088, rho 24089, rho 24090, r4746, r4747, r4748, r4749, r4750, tail⟩

theorem seg28_scp_node12_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4751 : Seg28.relationRow4751 rho)
    (r4752 : Seg28.relationRow4752 rho)
    (r4753 : Seg28.relationRow4753 rho)
    (r4754 : Seg28.relationRow4754 rho)
    (r4755 : Seg28.relationRow4755 rho)
    (tail : next (rho 24075) (rho 24080) (rho 24085) (rho 24090) (rho 24095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg18 (rho 24050) (rho 24055) (rho 24060) (rho 24065) (rho 24070) (rho 24075) (rho 24080) (rho 24085) (rho 24090) next := by
  exact ⟨rho 24091, rho 24092, rho 24093, rho 24094, rho 24095, r4751, r4752, r4753, r4754, r4755, tail⟩

theorem seg28_scp_node12_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4756 : Seg28.relationRow4756 rho)
    (r4757 : Seg28.relationRow4757 rho)
    (r4758 : Seg28.relationRow4758 rho)
    (r4759 : Seg28.relationRow4759 rho)
    (r4760 : Seg28.relationRow4760 rho)
    (tail : next (rho 24075) (rho 24080) (rho 24085) (rho 24090) (rho 24095) (rho 24100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg19 (rho 24075) (rho 24080) (rho 24085) (rho 24090) (rho 24095) next := by
  exact ⟨rho 24096, rho 24097, rho 24098, rho 24099, rho 24100, r4756, r4757, r4758, r4759, r4760, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

