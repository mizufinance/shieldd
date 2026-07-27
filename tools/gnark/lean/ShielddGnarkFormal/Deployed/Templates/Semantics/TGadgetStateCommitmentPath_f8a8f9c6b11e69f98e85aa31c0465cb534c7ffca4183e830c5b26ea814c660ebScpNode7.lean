import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode7Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode7.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg13ScpNode7Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (8 : F))
        (rho 2826 + rho 2827) (rho 2828 + rho 2829 + rho 2830)
        (rho 2828 + rho 2832 + rho 2833) (rho 2831 + rho 2834) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, p36, p37, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.relation (rho 2826) (rho 2828) (rho 2831) (rho 2827) (rho 2829) (rho 2830) (rho 2832) (rho 2833) (rho 2834)
      (fun o0 o1 o2 o3 o4 => o0 = rho 3164 ∧ o1 = rho 3169 ∧ o2 = rho 3174 ∧ o3 = rho 3179 ∧ o4 = rho 3184) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.relation
    exact template_scp_node7_seg0 rho _ r2841 r2842 r2843 r2844 r2845 (template_scp_node7_seg1 rho _ r2846 r2847 r2848 r2849 r2850 (template_scp_node7_seg2 rho _ r2851 r2852 r2853 r2854 r2855 (template_scp_node7_seg3 rho _ r2856 r2857 r2858 r2859 r2860 (template_scp_node7_seg4 rho _ r2861 r2862 r2863 r2864 r2865 (template_scp_node7_seg5 rho _ r2866 r2867 r2868 r2869 r2870 (template_scp_node7_seg6 rho _ r2871 r2872 r2873 r2874 r2875 (template_scp_node7_seg7 rho _ r2876 r2877 r2878 r2879 r2880 (template_scp_node7_seg8 rho _ r2881 r2882 r2883 r2884 r2885 (template_scp_node7_seg9 rho _ r2886 r2887 r2888 r2889 r2890 (template_scp_node7_seg10 rho _ r2891 r2892 r2893 r2894 r2895 (template_scp_node7_seg11 rho _ r2896 r2897 r2898 r2899 r2900 (template_scp_node7_seg12 rho _ r2901 r2902 r2903 r2904 r2905 (template_scp_node7_template rho _ r2906 r2907 r2908 r2909 r2910 (template_scp_node7_seg14 rho _ r2911 r2912 r2913 r2914 r2915 (template_scp_node7_seg15 rho _ r2916 r2917 r2918 r2919 r2920 (template_scp_node7_seg16 rho _ r2921 r2922 r2923 r2924 r2925 (template_scp_node7_seg17 rho _ r2926 r2927 r2928 r2929 r2930 (template_scp_node7_seg18 rho _ r2931 r2932 r2933 r2934 r2935 (template_scp_node7_seg19 rho _ r2936 r2937 r2938 r2939 r2940 (template_scp_node7_seg20 rho _ r2941 r2942 r2943 r2944 r2945 (template_scp_node7_seg21 rho _ r2946 r2947 r2948 r2949 r2950 (template_scp_node7_seg22 rho _ r2951 r2952 r2953 r2954 r2955 (template_scp_node7_seg23 rho _ r2956 r2957 r2958 r2959 r2960 (template_scp_node7_seg24 rho _ r2961 r2962 r2963 r2964 r2965 (template_scp_node7_seg25 rho _ r2966 r2967 r2968 r2969 r2970 (template_scp_node7_seg26 rho _ r2971 r2972 r2973 r2974 r2975 (template_scp_node7_seg27 rho _ r2976 r2977 r2978 r2979 r2980 (template_scp_node7_seg28 rho _ r2981 r2982 r2983 r2984 r2985 (template_scp_node7_seg29 rho _ r2986 r2987 r2988 r2989 r2990 (template_scp_node7_seg30 rho _ r2991 r2992 r2993 r2994 r2995 (template_scp_node7_seg31 rho _ r2996 r2997 r2998 r2999 r3000 (template_scp_node7_seg32 rho _ r3001 r3002 r3003 r3004 r3005 (template_scp_node7_seg33 rho _ r3006 r3007 r3008 r3009 r3010 (template_scp_node7_seg34 rho _ r3011 r3012 r3013 r3014 r3015 (template_scp_node7_seg35 rho _ r3016 r3017 r3018 r3019 r3020 (template_scp_node7_seg36 rho _ r3021 r3022 r3023 r3024 r3025 (template_scp_node7_seg37 rho _ r3026 r3027 r3028 r3029 r3030 (template_scp_node7_seg38 rho _ r3031 r3032 r3033 r3034 r3035 (template_scp_node7_seg39 rho _ r3036 r3037 r3038 r3039 r3040 (template_scp_node7_seg40 rho _ r3041 r3042 r3043 r3044 r3045 (template_scp_node7_seg41 rho _ r3046 r3047 r3048 r3049 r3050 (template_scp_node7_seg42 rho _ r3051 r3052 r3053 r3054 r3055 (template_scp_node7_seg43 rho _ r3056 r3057 r3058 r3059 r3060 (template_scp_node7_seg44 rho _ r3061 r3062 r3063 r3064 r3065 (template_scp_node7_seg45 rho _ r3066 r3067 r3068 r3069 r3070 (template_scp_node7_seg46 rho _ r3071 r3072 r3073 r3074 r3075 (template_scp_node7_seg47 rho _ r3076 r3077 r3078 r3079 r3080 (template_scp_node7_seg48 rho _ r3081 r3082 r3083 r3084 r3085 (template_scp_node7_seg49 rho _ r3086 r3087 r3088 r3089 r3090 (template_scp_node7_seg50 rho _ r3091 r3092 r3093 r3094 r3095 (template_scp_node7_seg51 rho _ r3096 r3097 r3098 r3099 r3100 (template_scp_node7_seg52 rho _ r3101 r3102 r3103 r3104 r3105 (template_scp_node7_seg53 rho _ r3106 r3107 r3108 r3109 r3110 (template_scp_node7_seg54 rho _ r3111 r3112 r3113 r3114 r3115 (template_scp_node7_seg55 rho _ r3116 r3117 r3118 r3119 r3120 (template_scp_node7_seg56 rho _ r3121 r3122 r3123 r3124 r3125 (template_scp_node7_seg57 rho _ r3126 r3127 r3128 r3129 r3130 (template_scp_node7_seg58 rho _ r3131 r3132 r3133 r3134 r3135 (template_scp_node7_seg59 rho _ r3136 r3137 r3138 r3139 r3140 (template_scp_node7_seg60 rho _ r3141 r3142 r3143 r3144 r3145 (template_scp_node7_seg61 rho _ r3146 r3147 r3148 r3149 r3150 (template_scp_node7_seg62 rho _ r3151 r3152 r3153 r3154 r3155 (template_scp_node7_seg63 rho _ r3156 r3157 r3158 r3159 r3160 (template_scp_node7_seg64 rho _ r3161 r3162 r3163 r3164 r3165 (template_scp_node7_seg65 rho _ r3166 r3167 r3168 r3169 r3170 (template_scp_node7_seg66 rho _ r3171 r3172 r3173 r3174 r3175 (template_scp_node7_seg67 rho _ r3176 r3177 r3178 r3179 r3180 (template_scp_node7_seg68 rho _ r3181 r3182 r3183 r3184 r3185 (template_scp_node7_seg69 rho _ r3186 r3187 r3188 r3189 r3190 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.relation_sound_permSpec (rho 2826) (rho 2828) (rho 2831) (rho 2827) (rho 2829) (rho 2830) (rho 2832) (rho 2833) (rho 2834) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.tctNode8DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.F) + (8 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode7Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

