import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node6_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2777 : Seg28.relationRow2777 rho)
    (r2778 : Seg28.relationRow2778 rho)
    (r2779 : Seg28.relationRow2779 rho)
    (r2780 : Seg28.relationRow2780 rho)
    (r2781 : Seg28.relationRow2781 rho)
    (tail : next (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg60 (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) next := by
  exact ⟨rho 22141, rho 22142, rho 22143, rho 22144, rho 22145, r2777, r2778, r2779, r2780, r2781, tail⟩

theorem seg28_scp_node6_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2782 : Seg28.relationRow2782 rho)
    (r2783 : Seg28.relationRow2783 rho)
    (r2784 : Seg28.relationRow2784 rho)
    (r2785 : Seg28.relationRow2785 rho)
    (r2786 : Seg28.relationRow2786 rho)
    (tail : next (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) (rho 22150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg61 (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) next := by
  exact ⟨rho 22146, rho 22147, rho 22148, rho 22149, rho 22150, r2782, r2783, r2784, r2785, r2786, tail⟩

theorem seg28_scp_node6_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2787 : Seg28.relationRow2787 rho)
    (r2788 : Seg28.relationRow2788 rho)
    (r2789 : Seg28.relationRow2789 rho)
    (r2790 : Seg28.relationRow2790 rho)
    (r2791 : Seg28.relationRow2791 rho)
    (tail : next (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) (rho 22150) (rho 22155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg62 (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) (rho 22150) next := by
  exact ⟨rho 22151, rho 22152, rho 22153, rho 22154, rho 22155, r2787, r2788, r2789, r2790, r2791, tail⟩

theorem seg28_scp_node6_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2792 : Seg28.relationRow2792 rho)
    (r2793 : Seg28.relationRow2793 rho)
    (r2794 : Seg28.relationRow2794 rho)
    (r2795 : Seg28.relationRow2795 rho)
    (r2796 : Seg28.relationRow2796 rho)
    (tail : next (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) (rho 22150) (rho 22155) (rho 22160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg63 (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) (rho 22150) (rho 22155) next := by
  exact ⟨rho 22156, rho 22157, rho 22158, rho 22159, rho 22160, r2792, r2793, r2794, r2795, r2796, tail⟩

theorem seg28_scp_node6_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2797 : Seg28.relationRow2797 rho)
    (r2798 : Seg28.relationRow2798 rho)
    (r2799 : Seg28.relationRow2799 rho)
    (r2800 : Seg28.relationRow2800 rho)
    (r2801 : Seg28.relationRow2801 rho)
    (tail : next (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg64 (rho 22120) (rho 22125) (rho 22130) (rho 22135) (rho 22140) (rho 22145) (rho 22150) (rho 22155) (rho 22160) next := by
  exact ⟨rho 22161, rho 22162, rho 22163, rho 22164, rho 22165, r2797, r2798, r2799, r2800, r2801, tail⟩

theorem seg28_scp_node6_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2802 : Seg28.relationRow2802 rho)
    (r2803 : Seg28.relationRow2803 rho)
    (r2804 : Seg28.relationRow2804 rho)
    (r2805 : Seg28.relationRow2805 rho)
    (r2806 : Seg28.relationRow2806 rho)
    (tail : next (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg65 (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) next := by
  exact ⟨rho 22166, rho 22167, rho 22168, rho 22169, rho 22170, r2802, r2803, r2804, r2805, r2806, tail⟩

theorem seg28_scp_node6_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2807 : Seg28.relationRow2807 rho)
    (r2808 : Seg28.relationRow2808 rho)
    (r2809 : Seg28.relationRow2809 rho)
    (r2810 : Seg28.relationRow2810 rho)
    (r2811 : Seg28.relationRow2811 rho)
    (tail : next (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) (rho 22175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg66 (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) next := by
  exact ⟨rho 22171, rho 22172, rho 22173, rho 22174, rho 22175, r2807, r2808, r2809, r2810, r2811, tail⟩

theorem seg28_scp_node6_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2812 : Seg28.relationRow2812 rho)
    (r2813 : Seg28.relationRow2813 rho)
    (r2814 : Seg28.relationRow2814 rho)
    (r2815 : Seg28.relationRow2815 rho)
    (r2816 : Seg28.relationRow2816 rho)
    (tail : next (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) (rho 22175) (rho 22180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg67 (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) (rho 22175) next := by
  exact ⟨rho 22176, rho 22177, rho 22178, rho 22179, rho 22180, r2812, r2813, r2814, r2815, r2816, tail⟩

theorem seg28_scp_node6_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2817 : Seg28.relationRow2817 rho)
    (r2818 : Seg28.relationRow2818 rho)
    (r2819 : Seg28.relationRow2819 rho)
    (r2820 : Seg28.relationRow2820 rho)
    (r2821 : Seg28.relationRow2821 rho)
    (tail : next (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) (rho 22175) (rho 22180) (rho 22185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg68 (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) (rho 22175) (rho 22180) next := by
  exact ⟨rho 22181, rho 22182, rho 22183, rho 22184, rho 22185, r2817, r2818, r2819, r2820, r2821, tail⟩

theorem seg28_scp_node6_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2822 : Seg28.relationRow2822 rho)
    (r2823 : Seg28.relationRow2823 rho)
    (r2824 : Seg28.relationRow2824 rho)
    (r2825 : Seg28.relationRow2825 rho)
    (r2826 : Seg28.relationRow2826 rho)
    (tail : next (rho 22170) (rho 22175) (rho 22180) (rho 22185) (rho 22190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg69 (rho 22145) (rho 22150) (rho 22155) (rho 22160) (rho 22165) (rho 22170) (rho 22175) (rho 22180) (rho 22185) next := by
  exact ⟨rho 22186, rho 22187, rho 22188, rho 22189, rho 22190, r2822, r2823, r2824, r2825, r2826, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

