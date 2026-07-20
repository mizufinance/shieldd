import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node1_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r707 : Seg28.relationRow707 rho)
    (r708 : Seg28.relationRow708 rho)
    (r709 : Seg28.relationRow709 rho)
    (r710 : Seg28.relationRow710 rho)
    (r711 : Seg28.relationRow711 rho)
    (tail : next (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) (rho 20095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg10 (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) next := by
  exact ⟨rho 20091, rho 20092, rho 20093, rho 20094, rho 20095, r707, r708, r709, r710, r711, tail⟩

theorem seg28_scp_node1_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r712 : Seg28.relationRow712 rho)
    (r713 : Seg28.relationRow713 rho)
    (r714 : Seg28.relationRow714 rho)
    (r715 : Seg28.relationRow715 rho)
    (r716 : Seg28.relationRow716 rho)
    (tail : next (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) (rho 20095) (rho 20100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg11 (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) (rho 20095) next := by
  exact ⟨rho 20096, rho 20097, rho 20098, rho 20099, rho 20100, r712, r713, r714, r715, r716, tail⟩

theorem seg28_scp_node1_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r717 : Seg28.relationRow717 rho)
    (r718 : Seg28.relationRow718 rho)
    (r719 : Seg28.relationRow719 rho)
    (r720 : Seg28.relationRow720 rho)
    (r721 : Seg28.relationRow721 rho)
    (tail : next (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) (rho 20095) (rho 20100) (rho 20105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg12 (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) (rho 20095) (rho 20100) next := by
  exact ⟨rho 20101, rho 20102, rho 20103, rho 20104, rho 20105, r717, r718, r719, r720, r721, tail⟩

theorem seg28_scp_node1_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r722 : Seg28.relationRow722 rho)
    (r723 : Seg28.relationRow723 rho)
    (r724 : Seg28.relationRow724 rho)
    (r725 : Seg28.relationRow725 rho)
    (r726 : Seg28.relationRow726 rho)
    (tail : next (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg13 (rho 20065) (rho 20070) (rho 20075) (rho 20080) (rho 20085) (rho 20090) (rho 20095) (rho 20100) (rho 20105) next := by
  exact ⟨rho 20106, rho 20107, rho 20108, rho 20109, rho 20110, r722, r723, r724, r725, r726, tail⟩

theorem seg28_scp_node1_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r727 : Seg28.relationRow727 rho)
    (r728 : Seg28.relationRow728 rho)
    (r729 : Seg28.relationRow729 rho)
    (r730 : Seg28.relationRow730 rho)
    (r731 : Seg28.relationRow731 rho)
    (tail : next (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg14 (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) next := by
  exact ⟨rho 20111, rho 20112, rho 20113, rho 20114, rho 20115, r727, r728, r729, r730, r731, tail⟩

theorem seg28_scp_node1_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r732 : Seg28.relationRow732 rho)
    (r733 : Seg28.relationRow733 rho)
    (r734 : Seg28.relationRow734 rho)
    (r735 : Seg28.relationRow735 rho)
    (r736 : Seg28.relationRow736 rho)
    (tail : next (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) (rho 20120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg15 (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) next := by
  exact ⟨rho 20116, rho 20117, rho 20118, rho 20119, rho 20120, r732, r733, r734, r735, r736, tail⟩

theorem seg28_scp_node1_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r737 : Seg28.relationRow737 rho)
    (r738 : Seg28.relationRow738 rho)
    (r739 : Seg28.relationRow739 rho)
    (r740 : Seg28.relationRow740 rho)
    (r741 : Seg28.relationRow741 rho)
    (tail : next (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) (rho 20120) (rho 20125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg16 (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) (rho 20120) next := by
  exact ⟨rho 20121, rho 20122, rho 20123, rho 20124, rho 20125, r737, r738, r739, r740, r741, tail⟩

theorem seg28_scp_node1_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r742 : Seg28.relationRow742 rho)
    (r743 : Seg28.relationRow743 rho)
    (r744 : Seg28.relationRow744 rho)
    (r745 : Seg28.relationRow745 rho)
    (r746 : Seg28.relationRow746 rho)
    (tail : next (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) (rho 20120) (rho 20125) (rho 20130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg17 (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) (rho 20120) (rho 20125) next := by
  exact ⟨rho 20126, rho 20127, rho 20128, rho 20129, rho 20130, r742, r743, r744, r745, r746, tail⟩

theorem seg28_scp_node1_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r747 : Seg28.relationRow747 rho)
    (r748 : Seg28.relationRow748 rho)
    (r749 : Seg28.relationRow749 rho)
    (r750 : Seg28.relationRow750 rho)
    (r751 : Seg28.relationRow751 rho)
    (tail : next (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg18 (rho 20090) (rho 20095) (rho 20100) (rho 20105) (rho 20110) (rho 20115) (rho 20120) (rho 20125) (rho 20130) next := by
  exact ⟨rho 20131, rho 20132, rho 20133, rho 20134, rho 20135, r747, r748, r749, r750, r751, tail⟩

theorem seg28_scp_node1_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r752 : Seg28.relationRow752 rho)
    (r753 : Seg28.relationRow753 rho)
    (r754 : Seg28.relationRow754 rho)
    (r755 : Seg28.relationRow755 rho)
    (r756 : Seg28.relationRow756 rho)
    (tail : next (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg19 (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) next := by
  exact ⟨rho 20136, rho 20137, rho 20138, rho 20139, rho 20140, r752, r753, r754, r755, r756, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

