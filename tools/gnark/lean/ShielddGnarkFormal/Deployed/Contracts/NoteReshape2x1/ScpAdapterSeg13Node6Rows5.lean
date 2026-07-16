import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894

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
    (tail : next (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg50 (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) next := by
  exact ⟨rho 9916, rho 9917, rho 9918, rho 9919, rho 9920, r2727, r2728, r2729, r2730, r2731, tail⟩

theorem seg13_scp_node6_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2732 : Seg13.relationRow2732 rho)
    (r2733 : Seg13.relationRow2733 rho)
    (r2734 : Seg13.relationRow2734 rho)
    (r2735 : Seg13.relationRow2735 rho)
    (r2736 : Seg13.relationRow2736 rho)
    (tail : next (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) (rho 9925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg51 (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) next := by
  exact ⟨rho 9921, rho 9922, rho 9923, rho 9924, rho 9925, r2732, r2733, r2734, r2735, r2736, tail⟩

theorem seg13_scp_node6_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2737 : Seg13.relationRow2737 rho)
    (r2738 : Seg13.relationRow2738 rho)
    (r2739 : Seg13.relationRow2739 rho)
    (r2740 : Seg13.relationRow2740 rho)
    (r2741 : Seg13.relationRow2741 rho)
    (tail : next (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) (rho 9925) (rho 9930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg52 (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) (rho 9925) next := by
  exact ⟨rho 9926, rho 9927, rho 9928, rho 9929, rho 9930, r2737, r2738, r2739, r2740, r2741, tail⟩

theorem seg13_scp_node6_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2742 : Seg13.relationRow2742 rho)
    (r2743 : Seg13.relationRow2743 rho)
    (r2744 : Seg13.relationRow2744 rho)
    (r2745 : Seg13.relationRow2745 rho)
    (r2746 : Seg13.relationRow2746 rho)
    (tail : next (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) (rho 9925) (rho 9930) (rho 9935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg53 (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) (rho 9925) (rho 9930) next := by
  exact ⟨rho 9931, rho 9932, rho 9933, rho 9934, rho 9935, r2742, r2743, r2744, r2745, r2746, tail⟩

theorem seg13_scp_node6_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2747 : Seg13.relationRow2747 rho)
    (r2748 : Seg13.relationRow2748 rho)
    (r2749 : Seg13.relationRow2749 rho)
    (r2750 : Seg13.relationRow2750 rho)
    (r2751 : Seg13.relationRow2751 rho)
    (tail : next (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg54 (rho 9740) (rho 9745) (rho 9750) (rho 9755) (rho 9760) (rho 9765) (rho 9770) (rho 9775) (rho 9780) (rho 9785) (rho 9790) (rho 9795) (rho 9800) (rho 9805) (rho 9810) (rho 9815) (rho 9820) (rho 9825) (rho 9830) (rho 9835) (rho 9840) (rho 9845) (rho 9850) (rho 9855) (rho 9860) (rho 9865) (rho 9870) (rho 9875) (rho 9880) (rho 9885) (rho 9890) (rho 9895) (rho 9900) (rho 9905) (rho 9910) (rho 9915) (rho 9920) (rho 9925) (rho 9930) (rho 9935) next := by
  exact ⟨rho 9936, rho 9937, rho 9938, rho 9939, rho 9940, r2747, r2748, r2749, r2750, r2751, tail⟩

theorem seg13_scp_node6_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2752 : Seg13.relationRow2752 rho)
    (r2753 : Seg13.relationRow2753 rho)
    (r2754 : Seg13.relationRow2754 rho)
    (r2755 : Seg13.relationRow2755 rho)
    (r2756 : Seg13.relationRow2756 rho)
    (tail : next (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg55 (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) next := by
  exact ⟨rho 9941, rho 9942, rho 9943, rho 9944, rho 9945, r2752, r2753, r2754, r2755, r2756, tail⟩

theorem seg13_scp_node6_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2757 : Seg13.relationRow2757 rho)
    (r2758 : Seg13.relationRow2758 rho)
    (r2759 : Seg13.relationRow2759 rho)
    (r2760 : Seg13.relationRow2760 rho)
    (r2761 : Seg13.relationRow2761 rho)
    (tail : next (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) (rho 9950)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg56 (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) next := by
  exact ⟨rho 9946, rho 9947, rho 9948, rho 9949, rho 9950, r2757, r2758, r2759, r2760, r2761, tail⟩

theorem seg13_scp_node6_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2762 : Seg13.relationRow2762 rho)
    (r2763 : Seg13.relationRow2763 rho)
    (r2764 : Seg13.relationRow2764 rho)
    (r2765 : Seg13.relationRow2765 rho)
    (r2766 : Seg13.relationRow2766 rho)
    (tail : next (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) (rho 9950) (rho 9955)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg57 (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) (rho 9950) next := by
  exact ⟨rho 9951, rho 9952, rho 9953, rho 9954, rho 9955, r2762, r2763, r2764, r2765, r2766, tail⟩

theorem seg13_scp_node6_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2767 : Seg13.relationRow2767 rho)
    (r2768 : Seg13.relationRow2768 rho)
    (r2769 : Seg13.relationRow2769 rho)
    (r2770 : Seg13.relationRow2770 rho)
    (r2771 : Seg13.relationRow2771 rho)
    (tail : next (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) (rho 9950) (rho 9955) (rho 9960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg58 (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) (rho 9950) (rho 9955) next := by
  exact ⟨rho 9956, rho 9957, rho 9958, rho 9959, rho 9960, r2767, r2768, r2769, r2770, r2771, tail⟩

theorem seg13_scp_node6_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2772 : Seg13.relationRow2772 rho)
    (r2773 : Seg13.relationRow2773 rho)
    (r2774 : Seg13.relationRow2774 rho)
    (r2775 : Seg13.relationRow2775 rho)
    (r2776 : Seg13.relationRow2776 rho)
    (tail : next (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg59 (rho 9920) (rho 9925) (rho 9930) (rho 9935) (rho 9940) (rho 9945) (rho 9950) (rho 9955) (rho 9960) next := by
  exact ⟨rho 9961, rho 9962, rho 9963, rho 9964, rho 9965, r2772, r2773, r2774, r2775, r2776, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

