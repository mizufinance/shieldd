import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node6_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2777 : Seg13.relationRow2777 rho)
    (r2778 : Seg13.relationRow2778 rho)
    (r2779 : Seg13.relationRow2779 rho)
    (r2780 : Seg13.relationRow2780 rho)
    (r2781 : Seg13.relationRow2781 rho)
    (tail : next (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg60 (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) next := by
  exact ⟨rho 9966, rho 9967, rho 9968, rho 9969, rho 9970, r2777, r2778, r2779, r2780, r2781, tail⟩

theorem seg13_scp_node6_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2782 : Seg13.relationRow2782 rho)
    (r2783 : Seg13.relationRow2783 rho)
    (r2784 : Seg13.relationRow2784 rho)
    (r2785 : Seg13.relationRow2785 rho)
    (r2786 : Seg13.relationRow2786 rho)
    (tail : next (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) (rho 9975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg61 (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) next := by
  exact ⟨rho 9971, rho 9972, rho 9973, rho 9974, rho 9975, r2782, r2783, r2784, r2785, r2786, tail⟩

theorem seg13_scp_node6_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2787 : Seg13.relationRow2787 rho)
    (r2788 : Seg13.relationRow2788 rho)
    (r2789 : Seg13.relationRow2789 rho)
    (r2790 : Seg13.relationRow2790 rho)
    (r2791 : Seg13.relationRow2791 rho)
    (tail : next (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) (rho 9975) (rho 9980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg62 (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) (rho 9975) next := by
  exact ⟨rho 9976, rho 9977, rho 9978, rho 9979, rho 9980, r2787, r2788, r2789, r2790, r2791, tail⟩

theorem seg13_scp_node6_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2792 : Seg13.relationRow2792 rho)
    (r2793 : Seg13.relationRow2793 rho)
    (r2794 : Seg13.relationRow2794 rho)
    (r2795 : Seg13.relationRow2795 rho)
    (r2796 : Seg13.relationRow2796 rho)
    (tail : next (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) (rho 9975) (rho 9980) (rho 9985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg63 (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) (rho 9975) (rho 9980) next := by
  exact ⟨rho 9981, rho 9982, rho 9983, rho 9984, rho 9985, r2792, r2793, r2794, r2795, r2796, tail⟩

theorem seg13_scp_node6_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2797 : Seg13.relationRow2797 rho)
    (r2798 : Seg13.relationRow2798 rho)
    (r2799 : Seg13.relationRow2799 rho)
    (r2800 : Seg13.relationRow2800 rho)
    (r2801 : Seg13.relationRow2801 rho)
    (tail : next (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg64 (rho 9945) (rho 9950) (rho 9955) (rho 9960) (rho 9965) (rho 9970) (rho 9975) (rho 9980) (rho 9985) next := by
  exact ⟨rho 9986, rho 9987, rho 9988, rho 9989, rho 9990, r2797, r2798, r2799, r2800, r2801, tail⟩

theorem seg13_scp_node6_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2802 : Seg13.relationRow2802 rho)
    (r2803 : Seg13.relationRow2803 rho)
    (r2804 : Seg13.relationRow2804 rho)
    (r2805 : Seg13.relationRow2805 rho)
    (r2806 : Seg13.relationRow2806 rho)
    (tail : next (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg65 (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) next := by
  exact ⟨rho 9991, rho 9992, rho 9993, rho 9994, rho 9995, r2802, r2803, r2804, r2805, r2806, tail⟩

theorem seg13_scp_node6_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2807 : Seg13.relationRow2807 rho)
    (r2808 : Seg13.relationRow2808 rho)
    (r2809 : Seg13.relationRow2809 rho)
    (r2810 : Seg13.relationRow2810 rho)
    (r2811 : Seg13.relationRow2811 rho)
    (tail : next (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) (rho 10000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg66 (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) next := by
  exact ⟨rho 9996, rho 9997, rho 9998, rho 9999, rho 10000, r2807, r2808, r2809, r2810, r2811, tail⟩

theorem seg13_scp_node6_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2812 : Seg13.relationRow2812 rho)
    (r2813 : Seg13.relationRow2813 rho)
    (r2814 : Seg13.relationRow2814 rho)
    (r2815 : Seg13.relationRow2815 rho)
    (r2816 : Seg13.relationRow2816 rho)
    (tail : next (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) (rho 10000) (rho 10005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg67 (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) (rho 10000) next := by
  exact ⟨rho 10001, rho 10002, rho 10003, rho 10004, rho 10005, r2812, r2813, r2814, r2815, r2816, tail⟩

theorem seg13_scp_node6_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2817 : Seg13.relationRow2817 rho)
    (r2818 : Seg13.relationRow2818 rho)
    (r2819 : Seg13.relationRow2819 rho)
    (r2820 : Seg13.relationRow2820 rho)
    (r2821 : Seg13.relationRow2821 rho)
    (tail : next (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) (rho 10000) (rho 10005) (rho 10010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg68 (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) (rho 10000) (rho 10005) next := by
  exact ⟨rho 10006, rho 10007, rho 10008, rho 10009, rho 10010, r2817, r2818, r2819, r2820, r2821, tail⟩

theorem seg13_scp_node6_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2822 : Seg13.relationRow2822 rho)
    (r2823 : Seg13.relationRow2823 rho)
    (r2824 : Seg13.relationRow2824 rho)
    (r2825 : Seg13.relationRow2825 rho)
    (r2826 : Seg13.relationRow2826 rho)
    (tail : next (rho 9995) (rho 10000) (rho 10005) (rho 10010) (rho 10015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg69 (rho 9970) (rho 9975) (rho 9980) (rho 9985) (rho 9990) (rho 9995) (rho 10000) (rho 10005) (rho 10010) next := by
  exact ⟨rho 10011, rho 10012, rho 10013, rho 10014, rho 10015, r2822, r2823, r2824, r2825, r2826, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

