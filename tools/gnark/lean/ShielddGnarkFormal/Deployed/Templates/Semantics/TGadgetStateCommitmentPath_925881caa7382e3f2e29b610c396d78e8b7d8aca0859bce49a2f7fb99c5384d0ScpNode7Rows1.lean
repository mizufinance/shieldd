import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2891 rho)
    (r2892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2892 rho)
    (r2893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2893 rho)
    (r2894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2894 rho)
    (r2895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2895 rho)
    (tail : next (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) (rho 2895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg10 (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) next := by
  exact ⟨rho 2891, rho 2892, rho 2893, rho 2894, rho 2895, r2891, r2892, r2893, r2894, r2895, tail⟩

theorem template_scp_node7_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2896 rho)
    (r2897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2897 rho)
    (r2898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2898 rho)
    (r2899 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2899 rho)
    (r2900 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2900 rho)
    (tail : next (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) (rho 2895) (rho 2900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg11 (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) (rho 2895) next := by
  exact ⟨rho 2896, rho 2897, rho 2898, rho 2899, rho 2900, r2896, r2897, r2898, r2899, r2900, tail⟩

theorem template_scp_node7_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2901 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2901 rho)
    (r2902 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2902 rho)
    (r2903 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2903 rho)
    (r2904 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2904 rho)
    (r2905 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2905 rho)
    (tail : next (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) (rho 2895) (rho 2900) (rho 2905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg12 (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) (rho 2895) (rho 2900) next := by
  exact ⟨rho 2901, rho 2902, rho 2903, rho 2904, rho 2905, r2901, r2902, r2903, r2904, r2905, tail⟩

theorem template_scp_node7_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2906 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2906 rho)
    (r2907 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2907 rho)
    (r2908 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2908 rho)
    (r2909 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2909 rho)
    (r2910 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2910 rho)
    (tail : next (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg13 (rho 2865) (rho 2870) (rho 2875) (rho 2880) (rho 2885) (rho 2890) (rho 2895) (rho 2900) (rho 2905) next := by
  exact ⟨rho 2906, rho 2907, rho 2908, rho 2909, rho 2910, r2906, r2907, r2908, r2909, r2910, tail⟩

theorem template_scp_node7_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2911 rho)
    (r2912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2912 rho)
    (r2913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2913 rho)
    (r2914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2914 rho)
    (r2915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2915 rho)
    (tail : next (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg14 (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) next := by
  exact ⟨rho 2911, rho 2912, rho 2913, rho 2914, rho 2915, r2911, r2912, r2913, r2914, r2915, tail⟩

theorem template_scp_node7_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2916 rho)
    (r2917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2917 rho)
    (r2918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2918 rho)
    (r2919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2919 rho)
    (r2920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2920 rho)
    (tail : next (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) (rho 2920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg15 (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) next := by
  exact ⟨rho 2916, rho 2917, rho 2918, rho 2919, rho 2920, r2916, r2917, r2918, r2919, r2920, tail⟩

theorem template_scp_node7_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2921 rho)
    (r2922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2922 rho)
    (r2923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2923 rho)
    (r2924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2924 rho)
    (r2925 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2925 rho)
    (tail : next (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) (rho 2920) (rho 2925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg16 (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) (rho 2920) next := by
  exact ⟨rho 2921, rho 2922, rho 2923, rho 2924, rho 2925, r2921, r2922, r2923, r2924, r2925, tail⟩

theorem template_scp_node7_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2926 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2926 rho)
    (r2927 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2927 rho)
    (r2928 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2928 rho)
    (r2929 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2929 rho)
    (r2930 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2930 rho)
    (tail : next (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) (rho 2920) (rho 2925) (rho 2930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg17 (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) (rho 2920) (rho 2925) next := by
  exact ⟨rho 2926, rho 2927, rho 2928, rho 2929, rho 2930, r2926, r2927, r2928, r2929, r2930, tail⟩

theorem template_scp_node7_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2931 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2931 rho)
    (r2932 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2932 rho)
    (r2933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2933 rho)
    (r2934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2934 rho)
    (r2935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2935 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg18 (rho 2890) (rho 2895) (rho 2900) (rho 2905) (rho 2910) (rho 2915) (rho 2920) (rho 2925) (rho 2930) next := by
  exact ⟨rho 2931, rho 2932, rho 2933, rho 2934, rho 2935, r2931, r2932, r2933, r2934, r2935, tail⟩

theorem template_scp_node7_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2936 rho)
    (r2937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2937 rho)
    (r2938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2938 rho)
    (r2939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2939 rho)
    (r2940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2940 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg19 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) next := by
  exact ⟨rho 2936, rho 2937, rho 2938, rho 2939, rho 2940, r2936, r2937, r2938, r2939, r2940, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
