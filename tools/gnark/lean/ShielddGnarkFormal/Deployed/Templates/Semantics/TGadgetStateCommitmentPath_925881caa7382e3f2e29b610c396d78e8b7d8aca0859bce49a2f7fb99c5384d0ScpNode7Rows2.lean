import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2941 rho)
    (r2942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2942 rho)
    (r2943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2943 rho)
    (r2944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2944 rho)
    (r2945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2945 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg20 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) next := by
  exact ⟨rho 2941, rho 2942, rho 2943, rho 2944, rho 2945, r2941, r2942, r2943, r2944, r2945, tail⟩

theorem template_scp_node7_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2946 rho)
    (r2947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2947 rho)
    (r2948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2948 rho)
    (r2949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2949 rho)
    (r2950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2950 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg21 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) next := by
  exact ⟨rho 2946, rho 2947, rho 2948, rho 2949, rho 2950, r2946, r2947, r2948, r2949, r2950, tail⟩

theorem template_scp_node7_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2951 rho)
    (r2952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2952 rho)
    (r2953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2953 rho)
    (r2954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2954 rho)
    (r2955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2955 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg22 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) next := by
  exact ⟨rho 2951, rho 2952, rho 2953, rho 2954, rho 2955, r2951, r2952, r2953, r2954, r2955, tail⟩

theorem template_scp_node7_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r2956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2956 rho)
    (r2957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2957 rho)
    (r2958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2958 rho)
    (r2959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2959 rho)
    (r2960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2960 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg23 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) next := by
  exact ⟨rho 2956, rho 2957, rho 2958, rho 2959, rho 2960, r2956, r2957, r2958, r2959, r2960, tail⟩

theorem template_scp_node7_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2961 rho)
    (r2962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2962 rho)
    (r2963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2963 rho)
    (r2964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2964 rho)
    (r2965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2965 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg24 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) next := by
  exact ⟨rho 2961, rho 2962, rho 2963, rho 2964, rho 2965, r2961, r2962, r2963, r2964, r2965, tail⟩

theorem template_scp_node7_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2966 rho)
    (r2967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2967 rho)
    (r2968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2968 rho)
    (r2969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2969 rho)
    (r2970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2970 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg25 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) next := by
  exact ⟨rho 2966, rho 2967, rho 2968, rho 2969, rho 2970, r2966, r2967, r2968, r2969, r2970, tail⟩

theorem template_scp_node7_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2971 rho)
    (r2972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2972 rho)
    (r2973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2973 rho)
    (r2974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2974 rho)
    (r2975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2975 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg26 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) next := by
  exact ⟨rho 2971, rho 2972, rho 2973, rho 2974, rho 2975, r2971, r2972, r2973, r2974, r2975, tail⟩

theorem template_scp_node7_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2976 rho)
    (r2977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2977 rho)
    (r2978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2978 rho)
    (r2979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2979 rho)
    (r2980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2980 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg27 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) next := by
  exact ⟨rho 2976, rho 2977, rho 2978, rho 2979, rho 2980, r2976, r2977, r2978, r2979, r2980, tail⟩

theorem template_scp_node7_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2981 rho)
    (r2982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2982 rho)
    (r2983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2983 rho)
    (r2984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2984 rho)
    (r2985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2985 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg28 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) next := by
  exact ⟨rho 2981, rho 2982, rho 2983, rho 2984, rho 2985, r2981, r2982, r2983, r2984, r2985, tail⟩

theorem template_scp_node7_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2986 rho)
    (r2987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2987 rho)
    (r2988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2988 rho)
    (r2989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2989 rho)
    (r2990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2990 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg29 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) next := by
  exact ⟨rho 2986, rho 2987, rho 2988, rho 2989, rho 2990, r2986, r2987, r2988, r2989, r2990, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
