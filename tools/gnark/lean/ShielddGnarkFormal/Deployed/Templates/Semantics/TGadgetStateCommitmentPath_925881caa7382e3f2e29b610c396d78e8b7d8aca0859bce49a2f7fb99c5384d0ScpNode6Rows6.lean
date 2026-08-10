import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node6_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2777 rho)
    (r2778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2778 rho)
    (r2779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2779 rho)
    (r2780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2780 rho)
    (r2781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2781 rho)
    (tail : next (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg60 (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) next := by
  exact ⟨rho 2778, rho 2779, rho 2780, rho 2781, rho 2782, r2777, r2778, r2779, r2780, r2781, tail⟩

theorem template_scp_node6_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2782 rho)
    (r2783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2783 rho)
    (r2784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2784 rho)
    (r2785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2785 rho)
    (r2786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2786 rho)
    (tail : next (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) (rho 2787)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg61 (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) next := by
  exact ⟨rho 2783, rho 2784, rho 2785, rho 2786, rho 2787, r2782, r2783, r2784, r2785, r2786, tail⟩

theorem template_scp_node6_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2787 rho)
    (r2788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2788 rho)
    (r2789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2789 rho)
    (r2790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2790 rho)
    (r2791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2791 rho)
    (tail : next (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) (rho 2787) (rho 2792)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg62 (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) (rho 2787) next := by
  exact ⟨rho 2788, rho 2789, rho 2790, rho 2791, rho 2792, r2787, r2788, r2789, r2790, r2791, tail⟩

theorem template_scp_node6_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2792 rho)
    (r2793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2793 rho)
    (r2794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2794 rho)
    (r2795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2795 rho)
    (r2796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2796 rho)
    (tail : next (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) (rho 2787) (rho 2792) (rho 2797)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg63 (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) (rho 2787) (rho 2792) next := by
  exact ⟨rho 2793, rho 2794, rho 2795, rho 2796, rho 2797, r2792, r2793, r2794, r2795, r2796, tail⟩

theorem template_scp_node6_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2797 rho)
    (r2798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2798 rho)
    (r2799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2799 rho)
    (r2800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2800 rho)
    (r2801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2801 rho)
    (tail : next (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg64 (rho 2757) (rho 2762) (rho 2767) (rho 2772) (rho 2777) (rho 2782) (rho 2787) (rho 2792) (rho 2797) next := by
  exact ⟨rho 2798, rho 2799, rho 2800, rho 2801, rho 2802, r2797, r2798, r2799, r2800, r2801, tail⟩

theorem template_scp_node6_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2802 rho)
    (r2803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2803 rho)
    (r2804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2804 rho)
    (r2805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2805 rho)
    (r2806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2806 rho)
    (tail : next (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg65 (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) next := by
  exact ⟨rho 2803, rho 2804, rho 2805, rho 2806, rho 2807, r2802, r2803, r2804, r2805, r2806, tail⟩

theorem template_scp_node6_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2807 rho)
    (r2808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2808 rho)
    (r2809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2809 rho)
    (r2810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2810 rho)
    (r2811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2811 rho)
    (tail : next (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) (rho 2812)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg66 (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) next := by
  exact ⟨rho 2808, rho 2809, rho 2810, rho 2811, rho 2812, r2807, r2808, r2809, r2810, r2811, tail⟩

theorem template_scp_node6_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2812 rho)
    (r2813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2813 rho)
    (r2814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2814 rho)
    (r2815 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2815 rho)
    (r2816 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2816 rho)
    (tail : next (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) (rho 2812) (rho 2817)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg67 (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) (rho 2812) next := by
  exact ⟨rho 2813, rho 2814, rho 2815, rho 2816, rho 2817, r2812, r2813, r2814, r2815, r2816, tail⟩

theorem template_scp_node6_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2817 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2817 rho)
    (r2818 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2818 rho)
    (r2819 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2819 rho)
    (r2820 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2820 rho)
    (r2821 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2821 rho)
    (tail : next (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) (rho 2812) (rho 2817) (rho 2822)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg68 (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) (rho 2812) (rho 2817) next := by
  exact ⟨rho 2818, rho 2819, rho 2820, rho 2821, rho 2822, r2817, r2818, r2819, r2820, r2821, tail⟩

theorem template_scp_node6_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2822 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2822 rho)
    (r2823 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2823 rho)
    (r2824 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2824 rho)
    (r2825 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2825 rho)
    (r2826 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2826 rho)
    (tail : next (rho 2807) (rho 2812) (rho 2817) (rho 2822) (rho 2827)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg69 (rho 2782) (rho 2787) (rho 2792) (rho 2797) (rho 2802) (rho 2807) (rho 2812) (rho 2817) (rho 2822) next := by
  exact ⟨rho 2823, rho 2824, rho 2825, rho 2826, rho 2827, r2822, r2823, r2824, r2825, r2826, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
