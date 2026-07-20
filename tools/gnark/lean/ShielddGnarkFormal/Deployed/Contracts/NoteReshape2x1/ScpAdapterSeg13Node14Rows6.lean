import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node14_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5689 : Seg13.relationRow5689 rho)
    (r5690 : Seg13.relationRow5690 rho)
    (r5691 : Seg13.relationRow5691 rho)
    (r5692 : Seg13.relationRow5692 rho)
    (r5693 : Seg13.relationRow5693 rho)
    (tail : next (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg60 (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) next := by
  exact ⟨rho 12840, rho 12841, rho 12842, rho 12843, rho 12844, r5689, r5690, r5691, r5692, r5693, tail⟩

theorem seg13_scp_node14_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5694 : Seg13.relationRow5694 rho)
    (r5695 : Seg13.relationRow5695 rho)
    (r5696 : Seg13.relationRow5696 rho)
    (r5697 : Seg13.relationRow5697 rho)
    (r5698 : Seg13.relationRow5698 rho)
    (tail : next (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) (rho 12849)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg61 (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) next := by
  exact ⟨rho 12845, rho 12846, rho 12847, rho 12848, rho 12849, r5694, r5695, r5696, r5697, r5698, tail⟩

theorem seg13_scp_node14_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5699 : Seg13.relationRow5699 rho)
    (r5700 : Seg13.relationRow5700 rho)
    (r5701 : Seg13.relationRow5701 rho)
    (r5702 : Seg13.relationRow5702 rho)
    (r5703 : Seg13.relationRow5703 rho)
    (tail : next (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) (rho 12849) (rho 12854)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg62 (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) (rho 12849) next := by
  exact ⟨rho 12850, rho 12851, rho 12852, rho 12853, rho 12854, r5699, r5700, r5701, r5702, r5703, tail⟩

theorem seg13_scp_node14_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5704 : Seg13.relationRow5704 rho)
    (r5705 : Seg13.relationRow5705 rho)
    (r5706 : Seg13.relationRow5706 rho)
    (r5707 : Seg13.relationRow5707 rho)
    (r5708 : Seg13.relationRow5708 rho)
    (tail : next (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) (rho 12849) (rho 12854) (rho 12859)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg63 (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) (rho 12849) (rho 12854) next := by
  exact ⟨rho 12855, rho 12856, rho 12857, rho 12858, rho 12859, r5704, r5705, r5706, r5707, r5708, tail⟩

theorem seg13_scp_node14_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5709 : Seg13.relationRow5709 rho)
    (r5710 : Seg13.relationRow5710 rho)
    (r5711 : Seg13.relationRow5711 rho)
    (r5712 : Seg13.relationRow5712 rho)
    (r5713 : Seg13.relationRow5713 rho)
    (tail : next (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg64 (rho 12819) (rho 12824) (rho 12829) (rho 12834) (rho 12839) (rho 12844) (rho 12849) (rho 12854) (rho 12859) next := by
  exact ⟨rho 12860, rho 12861, rho 12862, rho 12863, rho 12864, r5709, r5710, r5711, r5712, r5713, tail⟩

theorem seg13_scp_node14_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5714 : Seg13.relationRow5714 rho)
    (r5715 : Seg13.relationRow5715 rho)
    (r5716 : Seg13.relationRow5716 rho)
    (r5717 : Seg13.relationRow5717 rho)
    (r5718 : Seg13.relationRow5718 rho)
    (tail : next (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg65 (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) next := by
  exact ⟨rho 12865, rho 12866, rho 12867, rho 12868, rho 12869, r5714, r5715, r5716, r5717, r5718, tail⟩

theorem seg13_scp_node14_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5719 : Seg13.relationRow5719 rho)
    (r5720 : Seg13.relationRow5720 rho)
    (r5721 : Seg13.relationRow5721 rho)
    (r5722 : Seg13.relationRow5722 rho)
    (r5723 : Seg13.relationRow5723 rho)
    (tail : next (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) (rho 12874)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg66 (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) next := by
  exact ⟨rho 12870, rho 12871, rho 12872, rho 12873, rho 12874, r5719, r5720, r5721, r5722, r5723, tail⟩

theorem seg13_scp_node14_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5724 : Seg13.relationRow5724 rho)
    (r5725 : Seg13.relationRow5725 rho)
    (r5726 : Seg13.relationRow5726 rho)
    (r5727 : Seg13.relationRow5727 rho)
    (r5728 : Seg13.relationRow5728 rho)
    (tail : next (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) (rho 12874) (rho 12879)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg67 (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) (rho 12874) next := by
  exact ⟨rho 12875, rho 12876, rho 12877, rho 12878, rho 12879, r5724, r5725, r5726, r5727, r5728, tail⟩

theorem seg13_scp_node14_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5729 : Seg13.relationRow5729 rho)
    (r5730 : Seg13.relationRow5730 rho)
    (r5731 : Seg13.relationRow5731 rho)
    (r5732 : Seg13.relationRow5732 rho)
    (r5733 : Seg13.relationRow5733 rho)
    (tail : next (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) (rho 12874) (rho 12879) (rho 12884)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg68 (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) (rho 12874) (rho 12879) next := by
  exact ⟨rho 12880, rho 12881, rho 12882, rho 12883, rho 12884, r5729, r5730, r5731, r5732, r5733, tail⟩

theorem seg13_scp_node14_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5734 : Seg13.relationRow5734 rho)
    (r5735 : Seg13.relationRow5735 rho)
    (r5736 : Seg13.relationRow5736 rho)
    (r5737 : Seg13.relationRow5737 rho)
    (r5738 : Seg13.relationRow5738 rho)
    (tail : next (rho 12869) (rho 12874) (rho 12879) (rho 12884) (rho 12889)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg69 (rho 12844) (rho 12849) (rho 12854) (rho 12859) (rho 12864) (rho 12869) (rho 12874) (rho 12879) (rho 12884) next := by
  exact ⟨rho 12885, rho 12886, rho 12887, rho 12888, rho 12889, r5734, r5735, r5736, r5737, r5738, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

