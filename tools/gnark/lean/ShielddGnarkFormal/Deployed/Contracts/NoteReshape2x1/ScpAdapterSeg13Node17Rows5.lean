import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node17_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6731 : Seg13.relationRow6731 rho)
    (r6732 : Seg13.relationRow6732 rho)
    (r6733 : Seg13.relationRow6733 rho)
    (r6734 : Seg13.relationRow6734 rho)
    (r6735 : Seg13.relationRow6735 rho)
    (tail : next (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg50 (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) next := by
  exact ⟨rho 13870, rho 13871, rho 13872, rho 13873, rho 13874, r6731, r6732, r6733, r6734, r6735, tail⟩

theorem seg13_scp_node17_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6736 : Seg13.relationRow6736 rho)
    (r6737 : Seg13.relationRow6737 rho)
    (r6738 : Seg13.relationRow6738 rho)
    (r6739 : Seg13.relationRow6739 rho)
    (r6740 : Seg13.relationRow6740 rho)
    (tail : next (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) (rho 13879)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg51 (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) next := by
  exact ⟨rho 13875, rho 13876, rho 13877, rho 13878, rho 13879, r6736, r6737, r6738, r6739, r6740, tail⟩

theorem seg13_scp_node17_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6741 : Seg13.relationRow6741 rho)
    (r6742 : Seg13.relationRow6742 rho)
    (r6743 : Seg13.relationRow6743 rho)
    (r6744 : Seg13.relationRow6744 rho)
    (r6745 : Seg13.relationRow6745 rho)
    (tail : next (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) (rho 13879) (rho 13884)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg52 (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) (rho 13879) next := by
  exact ⟨rho 13880, rho 13881, rho 13882, rho 13883, rho 13884, r6741, r6742, r6743, r6744, r6745, tail⟩

theorem seg13_scp_node17_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6746 : Seg13.relationRow6746 rho)
    (r6747 : Seg13.relationRow6747 rho)
    (r6748 : Seg13.relationRow6748 rho)
    (r6749 : Seg13.relationRow6749 rho)
    (r6750 : Seg13.relationRow6750 rho)
    (tail : next (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) (rho 13879) (rho 13884) (rho 13889)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg53 (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) (rho 13879) (rho 13884) next := by
  exact ⟨rho 13885, rho 13886, rho 13887, rho 13888, rho 13889, r6746, r6747, r6748, r6749, r6750, tail⟩

theorem seg13_scp_node17_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6751 : Seg13.relationRow6751 rho)
    (r6752 : Seg13.relationRow6752 rho)
    (r6753 : Seg13.relationRow6753 rho)
    (r6754 : Seg13.relationRow6754 rho)
    (r6755 : Seg13.relationRow6755 rho)
    (tail : next (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg54 (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719) (rho 13724) (rho 13729) (rho 13734) (rho 13739) (rho 13744) (rho 13749) (rho 13754) (rho 13759) (rho 13764) (rho 13769) (rho 13774) (rho 13779) (rho 13784) (rho 13789) (rho 13794) (rho 13799) (rho 13804) (rho 13809) (rho 13814) (rho 13819) (rho 13824) (rho 13829) (rho 13834) (rho 13839) (rho 13844) (rho 13849) (rho 13854) (rho 13859) (rho 13864) (rho 13869) (rho 13874) (rho 13879) (rho 13884) (rho 13889) next := by
  exact ⟨rho 13890, rho 13891, rho 13892, rho 13893, rho 13894, r6751, r6752, r6753, r6754, r6755, tail⟩

theorem seg13_scp_node17_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6756 : Seg13.relationRow6756 rho)
    (r6757 : Seg13.relationRow6757 rho)
    (r6758 : Seg13.relationRow6758 rho)
    (r6759 : Seg13.relationRow6759 rho)
    (r6760 : Seg13.relationRow6760 rho)
    (tail : next (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg55 (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) next := by
  exact ⟨rho 13895, rho 13896, rho 13897, rho 13898, rho 13899, r6756, r6757, r6758, r6759, r6760, tail⟩

theorem seg13_scp_node17_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6761 : Seg13.relationRow6761 rho)
    (r6762 : Seg13.relationRow6762 rho)
    (r6763 : Seg13.relationRow6763 rho)
    (r6764 : Seg13.relationRow6764 rho)
    (r6765 : Seg13.relationRow6765 rho)
    (tail : next (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) (rho 13904)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg56 (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) next := by
  exact ⟨rho 13900, rho 13901, rho 13902, rho 13903, rho 13904, r6761, r6762, r6763, r6764, r6765, tail⟩

theorem seg13_scp_node17_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6766 : Seg13.relationRow6766 rho)
    (r6767 : Seg13.relationRow6767 rho)
    (r6768 : Seg13.relationRow6768 rho)
    (r6769 : Seg13.relationRow6769 rho)
    (r6770 : Seg13.relationRow6770 rho)
    (tail : next (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) (rho 13904) (rho 13909)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg57 (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) (rho 13904) next := by
  exact ⟨rho 13905, rho 13906, rho 13907, rho 13908, rho 13909, r6766, r6767, r6768, r6769, r6770, tail⟩

theorem seg13_scp_node17_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6771 : Seg13.relationRow6771 rho)
    (r6772 : Seg13.relationRow6772 rho)
    (r6773 : Seg13.relationRow6773 rho)
    (r6774 : Seg13.relationRow6774 rho)
    (r6775 : Seg13.relationRow6775 rho)
    (tail : next (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) (rho 13904) (rho 13909) (rho 13914)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg58 (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) (rho 13904) (rho 13909) next := by
  exact ⟨rho 13910, rho 13911, rho 13912, rho 13913, rho 13914, r6771, r6772, r6773, r6774, r6775, tail⟩

theorem seg13_scp_node17_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6776 : Seg13.relationRow6776 rho)
    (r6777 : Seg13.relationRow6777 rho)
    (r6778 : Seg13.relationRow6778 rho)
    (r6779 : Seg13.relationRow6779 rho)
    (r6780 : Seg13.relationRow6780 rho)
    (tail : next (rho 13899) (rho 13904) (rho 13909) (rho 13914) (rho 13919)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg59 (rho 13874) (rho 13879) (rho 13884) (rho 13889) (rho 13894) (rho 13899) (rho 13904) (rho 13909) (rho 13914) next := by
  exact ⟨rho 13915, rho 13916, rho 13917, rho 13918, rho 13919, r6776, r6777, r6778, r6779, r6780, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

