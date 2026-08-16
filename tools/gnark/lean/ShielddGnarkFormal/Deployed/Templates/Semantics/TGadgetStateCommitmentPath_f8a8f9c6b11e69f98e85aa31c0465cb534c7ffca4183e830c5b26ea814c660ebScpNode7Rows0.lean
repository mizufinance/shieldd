import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2841 rho)
    (r2842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2842 rho)
    (r2843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2843 rho)
    (r2844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2844 rho)
    (r2845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2845 rho)
    (tail : next (rho 2828) (rho 2831) (rho 2829) (rho 2830) (rho 2832) (rho 2833) (rho 2834) (rho 2839)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg0 (rho 2826) (rho 2828) (rho 2831) (rho 2827) (rho 2829) (rho 2830) (rho 2832) (rho 2833) (rho 2834) next := by
  exact ⟨rho 2835, rho 2836, rho 2837, rho 2838, rho 2839, r2841, r2842, r2843, r2844, r2845, tail⟩

theorem template_scp_node7_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2846 rho)
    (r2847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2847 rho)
    (r2848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2848 rho)
    (r2849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2849 rho)
    (r2850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2850 rho)
    (tail : next (rho 2828) (rho 2831) (rho 2832) (rho 2833) (rho 2834) (rho 2839) (rho 2844)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg1 (rho 2828) (rho 2831) (rho 2829) (rho 2830) (rho 2832) (rho 2833) (rho 2834) (rho 2839) next := by
  exact ⟨rho 2840, rho 2841, rho 2842, rho 2843, rho 2844, r2846, r2847, r2848, r2849, r2850, tail⟩

theorem template_scp_node7_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2851 rho)
    (r2852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2852 rho)
    (r2853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2853 rho)
    (r2854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2854 rho)
    (r2855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2855 rho)
    (tail : next (rho 2831) (rho 2834) (rho 2839) (rho 2844) (rho 2849)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg2 (rho 2828) (rho 2831) (rho 2832) (rho 2833) (rho 2834) (rho 2839) (rho 2844) next := by
  exact ⟨rho 2845, rho 2846, rho 2847, rho 2848, rho 2849, r2851, r2852, r2853, r2854, r2855, tail⟩

theorem template_scp_node7_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r2856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2856 rho)
    (r2857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2857 rho)
    (r2858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2858 rho)
    (r2859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2859 rho)
    (r2860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2860 rho)
    (tail : next (rho 2839) (rho 2844) (rho 2849) (rho 2854)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg3 (rho 2831) (rho 2834) (rho 2839) (rho 2844) (rho 2849) next := by
  exact ⟨rho 2850, rho 2851, rho 2852, rho 2853, rho 2854, r2856, r2857, r2858, r2859, r2860, tail⟩

theorem template_scp_node7_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2861 rho)
    (r2862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2862 rho)
    (r2863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2863 rho)
    (r2864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2864 rho)
    (r2865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2865 rho)
    (tail : next (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg4 (rho 2839) (rho 2844) (rho 2849) (rho 2854) next := by
  exact ⟨rho 2855, rho 2856, rho 2857, rho 2858, rho 2859, r2861, r2862, r2863, r2864, r2865, tail⟩

theorem template_scp_node7_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2866 rho)
    (r2867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2867 rho)
    (r2868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2868 rho)
    (r2869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2869 rho)
    (r2870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2870 rho)
    (tail : next (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) (rho 2864)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg5 (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) next := by
  exact ⟨rho 2860, rho 2861, rho 2862, rho 2863, rho 2864, r2866, r2867, r2868, r2869, r2870, tail⟩

theorem template_scp_node7_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2871 rho)
    (r2872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2872 rho)
    (r2873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2873 rho)
    (r2874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2874 rho)
    (r2875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2875 rho)
    (tail : next (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) (rho 2864) (rho 2869)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg6 (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) (rho 2864) next := by
  exact ⟨rho 2865, rho 2866, rho 2867, rho 2868, rho 2869, r2871, r2872, r2873, r2874, r2875, tail⟩

theorem template_scp_node7_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2876 rho)
    (r2877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2877 rho)
    (r2878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2878 rho)
    (r2879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2879 rho)
    (r2880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2880 rho)
    (tail : next (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) (rho 2864) (rho 2869) (rho 2874)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg7 (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) (rho 2864) (rho 2869) next := by
  exact ⟨rho 2870, rho 2871, rho 2872, rho 2873, rho 2874, r2876, r2877, r2878, r2879, r2880, tail⟩

theorem template_scp_node7_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2881 rho)
    (r2882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2882 rho)
    (r2883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2883 rho)
    (r2884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2884 rho)
    (r2885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2885 rho)
    (tail : next (rho 2859) (rho 2864) (rho 2869) (rho 2874) (rho 2879)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg8 (rho 2839) (rho 2844) (rho 2849) (rho 2854) (rho 2859) (rho 2864) (rho 2869) (rho 2874) next := by
  exact ⟨rho 2875, rho 2876, rho 2877, rho 2878, rho 2879, r2881, r2882, r2883, r2884, r2885, tail⟩

theorem template_scp_node7_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2886 rho)
    (r2887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2887 rho)
    (r2888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2888 rho)
    (r2889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2889 rho)
    (r2890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2890 rho)
    (tail : next (rho 2859) (rho 2864) (rho 2869) (rho 2874) (rho 2879) (rho 2884)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg9 (rho 2859) (rho 2864) (rho 2869) (rho 2874) (rho 2879) next := by
  exact ⟨rho 2880, rho 2881, rho 2882, rho 2883, rho 2884, r2886, r2887, r2888, r2889, r2890, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
