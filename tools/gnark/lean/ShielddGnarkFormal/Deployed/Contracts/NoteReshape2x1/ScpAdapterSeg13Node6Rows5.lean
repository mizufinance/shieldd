import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node6_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2727 : Seg13.relationRow2727 rho)
    (r2728 : Seg13.relationRow2728 rho)
    (r2729 : Seg13.relationRow2729 rho)
    (r2730 : Seg13.relationRow2730 rho)
    (r2731 : Seg13.relationRow2731 rho)
    (tail : next (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg50 (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) next := by
  exact ⟨rho 9910, rho 9911, rho 9912, rho 9913, rho 9914, r2727, r2728, r2729, r2730, r2731, tail⟩

theorem seg13_scp_node6_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2732 : Seg13.relationRow2732 rho)
    (r2733 : Seg13.relationRow2733 rho)
    (r2734 : Seg13.relationRow2734 rho)
    (r2735 : Seg13.relationRow2735 rho)
    (r2736 : Seg13.relationRow2736 rho)
    (tail : next (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) (rho 9919)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg51 (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) next := by
  exact ⟨rho 9915, rho 9916, rho 9917, rho 9918, rho 9919, r2732, r2733, r2734, r2735, r2736, tail⟩

theorem seg13_scp_node6_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2737 : Seg13.relationRow2737 rho)
    (r2738 : Seg13.relationRow2738 rho)
    (r2739 : Seg13.relationRow2739 rho)
    (r2740 : Seg13.relationRow2740 rho)
    (r2741 : Seg13.relationRow2741 rho)
    (tail : next (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) (rho 9919) (rho 9924)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg52 (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) (rho 9919) next := by
  exact ⟨rho 9920, rho 9921, rho 9922, rho 9923, rho 9924, r2737, r2738, r2739, r2740, r2741, tail⟩

theorem seg13_scp_node6_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2742 : Seg13.relationRow2742 rho)
    (r2743 : Seg13.relationRow2743 rho)
    (r2744 : Seg13.relationRow2744 rho)
    (r2745 : Seg13.relationRow2745 rho)
    (r2746 : Seg13.relationRow2746 rho)
    (tail : next (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) (rho 9919) (rho 9924) (rho 9929)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg53 (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) (rho 9919) (rho 9924) next := by
  exact ⟨rho 9925, rho 9926, rho 9927, rho 9928, rho 9929, r2742, r2743, r2744, r2745, r2746, tail⟩

theorem seg13_scp_node6_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2747 : Seg13.relationRow2747 rho)
    (r2748 : Seg13.relationRow2748 rho)
    (r2749 : Seg13.relationRow2749 rho)
    (r2750 : Seg13.relationRow2750 rho)
    (r2751 : Seg13.relationRow2751 rho)
    (tail : next (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg54 (rho 9734) (rho 9739) (rho 9744) (rho 9749) (rho 9754) (rho 9759) (rho 9764) (rho 9769) (rho 9774) (rho 9779) (rho 9784) (rho 9789) (rho 9794) (rho 9799) (rho 9804) (rho 9809) (rho 9814) (rho 9819) (rho 9824) (rho 9829) (rho 9834) (rho 9839) (rho 9844) (rho 9849) (rho 9854) (rho 9859) (rho 9864) (rho 9869) (rho 9874) (rho 9879) (rho 9884) (rho 9889) (rho 9894) (rho 9899) (rho 9904) (rho 9909) (rho 9914) (rho 9919) (rho 9924) (rho 9929) next := by
  exact ⟨rho 9930, rho 9931, rho 9932, rho 9933, rho 9934, r2747, r2748, r2749, r2750, r2751, tail⟩

theorem seg13_scp_node6_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2752 : Seg13.relationRow2752 rho)
    (r2753 : Seg13.relationRow2753 rho)
    (r2754 : Seg13.relationRow2754 rho)
    (r2755 : Seg13.relationRow2755 rho)
    (r2756 : Seg13.relationRow2756 rho)
    (tail : next (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg55 (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) next := by
  exact ⟨rho 9935, rho 9936, rho 9937, rho 9938, rho 9939, r2752, r2753, r2754, r2755, r2756, tail⟩

theorem seg13_scp_node6_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2757 : Seg13.relationRow2757 rho)
    (r2758 : Seg13.relationRow2758 rho)
    (r2759 : Seg13.relationRow2759 rho)
    (r2760 : Seg13.relationRow2760 rho)
    (r2761 : Seg13.relationRow2761 rho)
    (tail : next (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) (rho 9944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg56 (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) next := by
  exact ⟨rho 9940, rho 9941, rho 9942, rho 9943, rho 9944, r2757, r2758, r2759, r2760, r2761, tail⟩

theorem seg13_scp_node6_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2762 : Seg13.relationRow2762 rho)
    (r2763 : Seg13.relationRow2763 rho)
    (r2764 : Seg13.relationRow2764 rho)
    (r2765 : Seg13.relationRow2765 rho)
    (r2766 : Seg13.relationRow2766 rho)
    (tail : next (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) (rho 9944) (rho 9949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg57 (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) (rho 9944) next := by
  exact ⟨rho 9945, rho 9946, rho 9947, rho 9948, rho 9949, r2762, r2763, r2764, r2765, r2766, tail⟩

theorem seg13_scp_node6_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2767 : Seg13.relationRow2767 rho)
    (r2768 : Seg13.relationRow2768 rho)
    (r2769 : Seg13.relationRow2769 rho)
    (r2770 : Seg13.relationRow2770 rho)
    (r2771 : Seg13.relationRow2771 rho)
    (tail : next (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) (rho 9944) (rho 9949) (rho 9954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg58 (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) (rho 9944) (rho 9949) next := by
  exact ⟨rho 9950, rho 9951, rho 9952, rho 9953, rho 9954, r2767, r2768, r2769, r2770, r2771, tail⟩

theorem seg13_scp_node6_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2772 : Seg13.relationRow2772 rho)
    (r2773 : Seg13.relationRow2773 rho)
    (r2774 : Seg13.relationRow2774 rho)
    (r2775 : Seg13.relationRow2775 rho)
    (r2776 : Seg13.relationRow2776 rho)
    (tail : next (rho 9939) (rho 9944) (rho 9949) (rho 9954) (rho 9959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg59 (rho 9914) (rho 9919) (rho 9924) (rho 9929) (rho 9934) (rho 9939) (rho 9944) (rho 9949) (rho 9954) next := by
  exact ⟨rho 9955, rho 9956, rho 9957, rho 9958, rho 9959, r2772, r2773, r2774, r2775, r2776, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

