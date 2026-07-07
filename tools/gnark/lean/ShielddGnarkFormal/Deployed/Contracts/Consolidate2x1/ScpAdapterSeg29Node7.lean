import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode7.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node7_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode7Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (8 : Seg29.F))
        (rho 163 + rho 23155) (rho 164 + rho 23156 + rho 23157)
        (rho 164 + rho 23158 + rho 23159) (rho 165 + rho 23160) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Seg29.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  unfold Seg29.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Seg29.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg29.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.relation (rho 163) (rho 164) (rho 165) (rho 23155) (rho 23156) (rho 23157) (rho 23158) (rho 23159) (rho 23160)
      (fun o0 o1 o2 o3 o4 => o0 = rho 23490 ∧ o1 = rho 23495 ∧ o2 = rho 23500 ∧ o3 = rho 23505 ∧ o4 = rho 23510) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg0
    refine ⟨rho 23161, rho 23162, rho 23163, rho 23164, rho 23165,
      (by unfold Seg29.relationRow2841 at r2841; linear_combination r2841), (by unfold Seg29.relationRow2842 at r2842; linear_combination r2842), (by unfold Seg29.relationRow2843 at r2843; linear_combination r2843), (by unfold Seg29.relationRow2844 at r2844; linear_combination r2844), (by unfold Seg29.relationRow2845 at r2845; linear_combination r2845), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg1
    refine ⟨rho 23166, rho 23167, rho 23168, rho 23169, rho 23170,
      (by unfold Seg29.relationRow2846 at r2846; linear_combination r2846), (by unfold Seg29.relationRow2847 at r2847; linear_combination r2847), (by unfold Seg29.relationRow2848 at r2848; linear_combination r2848), (by unfold Seg29.relationRow2849 at r2849; linear_combination r2849), (by unfold Seg29.relationRow2850 at r2850; linear_combination r2850), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg2
    refine ⟨rho 23171, rho 23172, rho 23173, rho 23174, rho 23175,
      (by unfold Seg29.relationRow2851 at r2851; linear_combination r2851), (by unfold Seg29.relationRow2852 at r2852; linear_combination r2852), (by unfold Seg29.relationRow2853 at r2853; linear_combination r2853), (by unfold Seg29.relationRow2854 at r2854; linear_combination r2854), (by unfold Seg29.relationRow2855 at r2855; linear_combination r2855), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg3
    refine ⟨rho 23176, rho 23177, rho 23178, rho 23179, rho 23180,
      (by unfold Seg29.relationRow2856 at r2856; linear_combination r2856), (by unfold Seg29.relationRow2857 at r2857; linear_combination r2857), (by unfold Seg29.relationRow2858 at r2858; linear_combination r2858), (by unfold Seg29.relationRow2859 at r2859; linear_combination r2859), (by unfold Seg29.relationRow2860 at r2860; linear_combination r2860), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg4
    refine ⟨rho 23181, rho 23182, rho 23183, rho 23184, rho 23185,
      (by unfold Seg29.relationRow2861 at r2861; linear_combination r2861), (by unfold Seg29.relationRow2862 at r2862; linear_combination r2862), (by unfold Seg29.relationRow2863 at r2863; linear_combination r2863), (by unfold Seg29.relationRow2864 at r2864; linear_combination r2864), (by unfold Seg29.relationRow2865 at r2865; linear_combination r2865), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg5
    refine ⟨rho 23186, rho 23187, rho 23188, rho 23189, rho 23190,
      (by unfold Seg29.relationRow2866 at r2866; linear_combination r2866), (by unfold Seg29.relationRow2867 at r2867; linear_combination r2867), (by unfold Seg29.relationRow2868 at r2868; linear_combination r2868), (by unfold Seg29.relationRow2869 at r2869; linear_combination r2869), (by unfold Seg29.relationRow2870 at r2870; linear_combination r2870), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg6
    refine ⟨rho 23191, rho 23192, rho 23193, rho 23194, rho 23195,
      (by unfold Seg29.relationRow2871 at r2871; linear_combination r2871), (by unfold Seg29.relationRow2872 at r2872; linear_combination r2872), (by unfold Seg29.relationRow2873 at r2873; linear_combination r2873), (by unfold Seg29.relationRow2874 at r2874; linear_combination r2874), (by unfold Seg29.relationRow2875 at r2875; linear_combination r2875), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg7
    refine ⟨rho 23196, rho 23197, rho 23198, rho 23199, rho 23200,
      (by unfold Seg29.relationRow2876 at r2876; linear_combination r2876), (by unfold Seg29.relationRow2877 at r2877; linear_combination r2877), (by unfold Seg29.relationRow2878 at r2878; linear_combination r2878), (by unfold Seg29.relationRow2879 at r2879; linear_combination r2879), (by unfold Seg29.relationRow2880 at r2880; linear_combination r2880), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg8
    refine ⟨rho 23201, rho 23202, rho 23203, rho 23204, rho 23205,
      (by unfold Seg29.relationRow2881 at r2881; linear_combination r2881), (by unfold Seg29.relationRow2882 at r2882; linear_combination r2882), (by unfold Seg29.relationRow2883 at r2883; linear_combination r2883), (by unfold Seg29.relationRow2884 at r2884; linear_combination r2884), (by unfold Seg29.relationRow2885 at r2885; linear_combination r2885), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg9
    refine ⟨rho 23206, rho 23207, rho 23208, rho 23209, rho 23210,
      (by unfold Seg29.relationRow2886 at r2886; linear_combination r2886), (by unfold Seg29.relationRow2887 at r2887; linear_combination r2887), (by unfold Seg29.relationRow2888 at r2888; linear_combination r2888), (by unfold Seg29.relationRow2889 at r2889; linear_combination r2889), (by unfold Seg29.relationRow2890 at r2890; linear_combination r2890), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg10
    refine ⟨rho 23211, rho 23212, rho 23213, rho 23214, rho 23215,
      (by unfold Seg29.relationRow2891 at r2891; linear_combination r2891), (by unfold Seg29.relationRow2892 at r2892; linear_combination r2892), (by unfold Seg29.relationRow2893 at r2893; linear_combination r2893), (by unfold Seg29.relationRow2894 at r2894; linear_combination r2894), (by unfold Seg29.relationRow2895 at r2895; linear_combination r2895), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg11
    refine ⟨rho 23216, rho 23217, rho 23218, rho 23219, rho 23220,
      (by unfold Seg29.relationRow2896 at r2896; linear_combination r2896), (by unfold Seg29.relationRow2897 at r2897; linear_combination r2897), (by unfold Seg29.relationRow2898 at r2898; linear_combination r2898), (by unfold Seg29.relationRow2899 at r2899; linear_combination r2899), (by unfold Seg29.relationRow2900 at r2900; linear_combination r2900), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg12
    refine ⟨rho 23221, rho 23222, rho 23223, rho 23224, rho 23225,
      (by unfold Seg29.relationRow2901 at r2901; linear_combination r2901), (by unfold Seg29.relationRow2902 at r2902; linear_combination r2902), (by unfold Seg29.relationRow2903 at r2903; linear_combination r2903), (by unfold Seg29.relationRow2904 at r2904; linear_combination r2904), (by unfold Seg29.relationRow2905 at r2905; linear_combination r2905), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg13
    refine ⟨rho 23226, rho 23227, rho 23228, rho 23229, rho 23230,
      (by unfold Seg29.relationRow2906 at r2906; linear_combination r2906), (by unfold Seg29.relationRow2907 at r2907; linear_combination r2907), (by unfold Seg29.relationRow2908 at r2908; linear_combination r2908), (by unfold Seg29.relationRow2909 at r2909; linear_combination r2909), (by unfold Seg29.relationRow2910 at r2910; linear_combination r2910), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg14
    refine ⟨rho 23231, rho 23232, rho 23233, rho 23234, rho 23235,
      (by unfold Seg29.relationRow2911 at r2911; linear_combination r2911), (by unfold Seg29.relationRow2912 at r2912; linear_combination r2912), (by unfold Seg29.relationRow2913 at r2913; linear_combination r2913), (by unfold Seg29.relationRow2914 at r2914; linear_combination r2914), (by unfold Seg29.relationRow2915 at r2915; linear_combination r2915), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg15
    refine ⟨rho 23236, rho 23237, rho 23238, rho 23239, rho 23240,
      (by unfold Seg29.relationRow2916 at r2916; linear_combination r2916), (by unfold Seg29.relationRow2917 at r2917; linear_combination r2917), (by unfold Seg29.relationRow2918 at r2918; linear_combination r2918), (by unfold Seg29.relationRow2919 at r2919; linear_combination r2919), (by unfold Seg29.relationRow2920 at r2920; linear_combination r2920), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg16
    refine ⟨rho 23241, rho 23242, rho 23243, rho 23244, rho 23245,
      (by unfold Seg29.relationRow2921 at r2921; linear_combination r2921), (by unfold Seg29.relationRow2922 at r2922; linear_combination r2922), (by unfold Seg29.relationRow2923 at r2923; linear_combination r2923), (by unfold Seg29.relationRow2924 at r2924; linear_combination r2924), (by unfold Seg29.relationRow2925 at r2925; linear_combination r2925), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg17
    refine ⟨rho 23246, rho 23247, rho 23248, rho 23249, rho 23250,
      (by unfold Seg29.relationRow2926 at r2926; linear_combination r2926), (by unfold Seg29.relationRow2927 at r2927; linear_combination r2927), (by unfold Seg29.relationRow2928 at r2928; linear_combination r2928), (by unfold Seg29.relationRow2929 at r2929; linear_combination r2929), (by unfold Seg29.relationRow2930 at r2930; linear_combination r2930), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg18
    refine ⟨rho 23251, rho 23252, rho 23253, rho 23254, rho 23255,
      (by unfold Seg29.relationRow2931 at r2931; linear_combination r2931), (by unfold Seg29.relationRow2932 at r2932; linear_combination r2932), (by unfold Seg29.relationRow2933 at r2933; linear_combination r2933), (by unfold Seg29.relationRow2934 at r2934; linear_combination r2934), (by unfold Seg29.relationRow2935 at r2935; linear_combination r2935), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg19
    refine ⟨rho 23256, rho 23257, rho 23258, rho 23259, rho 23260,
      (by unfold Seg29.relationRow2936 at r2936; linear_combination r2936), (by unfold Seg29.relationRow2937 at r2937; linear_combination r2937), (by unfold Seg29.relationRow2938 at r2938; linear_combination r2938), (by unfold Seg29.relationRow2939 at r2939; linear_combination r2939), (by unfold Seg29.relationRow2940 at r2940; linear_combination r2940), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg20
    refine ⟨rho 23261, rho 23262, rho 23263, rho 23264, rho 23265,
      (by unfold Seg29.relationRow2941 at r2941; linear_combination r2941), (by unfold Seg29.relationRow2942 at r2942; linear_combination r2942), (by unfold Seg29.relationRow2943 at r2943; linear_combination r2943), (by unfold Seg29.relationRow2944 at r2944; linear_combination r2944), (by unfold Seg29.relationRow2945 at r2945; linear_combination r2945), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg21
    refine ⟨rho 23266, rho 23267, rho 23268, rho 23269, rho 23270,
      (by unfold Seg29.relationRow2946 at r2946; linear_combination r2946), (by unfold Seg29.relationRow2947 at r2947; linear_combination r2947), (by unfold Seg29.relationRow2948 at r2948; linear_combination r2948), (by unfold Seg29.relationRow2949 at r2949; linear_combination r2949), (by unfold Seg29.relationRow2950 at r2950; linear_combination r2950), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg22
    refine ⟨rho 23271, rho 23272, rho 23273, rho 23274, rho 23275,
      (by unfold Seg29.relationRow2951 at r2951; linear_combination r2951), (by unfold Seg29.relationRow2952 at r2952; linear_combination r2952), (by unfold Seg29.relationRow2953 at r2953; linear_combination r2953), (by unfold Seg29.relationRow2954 at r2954; linear_combination r2954), (by unfold Seg29.relationRow2955 at r2955; linear_combination r2955), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg23
    refine ⟨rho 23276, rho 23277, rho 23278, rho 23279, rho 23280,
      (by unfold Seg29.relationRow2956 at r2956; linear_combination r2956), (by unfold Seg29.relationRow2957 at r2957; linear_combination r2957), (by unfold Seg29.relationRow2958 at r2958; linear_combination r2958), (by unfold Seg29.relationRow2959 at r2959; linear_combination r2959), (by unfold Seg29.relationRow2960 at r2960; linear_combination r2960), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg24
    refine ⟨rho 23281, rho 23282, rho 23283, rho 23284, rho 23285,
      (by unfold Seg29.relationRow2961 at r2961; linear_combination r2961), (by unfold Seg29.relationRow2962 at r2962; linear_combination r2962), (by unfold Seg29.relationRow2963 at r2963; linear_combination r2963), (by unfold Seg29.relationRow2964 at r2964; linear_combination r2964), (by unfold Seg29.relationRow2965 at r2965; linear_combination r2965), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg25
    refine ⟨rho 23286, rho 23287, rho 23288, rho 23289, rho 23290,
      (by unfold Seg29.relationRow2966 at r2966; linear_combination r2966), (by unfold Seg29.relationRow2967 at r2967; linear_combination r2967), (by unfold Seg29.relationRow2968 at r2968; linear_combination r2968), (by unfold Seg29.relationRow2969 at r2969; linear_combination r2969), (by unfold Seg29.relationRow2970 at r2970; linear_combination r2970), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg26
    refine ⟨rho 23291, rho 23292, rho 23293, rho 23294, rho 23295,
      (by unfold Seg29.relationRow2971 at r2971; linear_combination r2971), (by unfold Seg29.relationRow2972 at r2972; linear_combination r2972), (by unfold Seg29.relationRow2973 at r2973; linear_combination r2973), (by unfold Seg29.relationRow2974 at r2974; linear_combination r2974), (by unfold Seg29.relationRow2975 at r2975; linear_combination r2975), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg27
    refine ⟨rho 23296, rho 23297, rho 23298, rho 23299, rho 23300,
      (by unfold Seg29.relationRow2976 at r2976; linear_combination r2976), (by unfold Seg29.relationRow2977 at r2977; linear_combination r2977), (by unfold Seg29.relationRow2978 at r2978; linear_combination r2978), (by unfold Seg29.relationRow2979 at r2979; linear_combination r2979), (by unfold Seg29.relationRow2980 at r2980; linear_combination r2980), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg28
    refine ⟨rho 23301, rho 23302, rho 23303, rho 23304, rho 23305,
      (by unfold Seg29.relationRow2981 at r2981; linear_combination r2981), (by unfold Seg29.relationRow2982 at r2982; linear_combination r2982), (by unfold Seg29.relationRow2983 at r2983; linear_combination r2983), (by unfold Seg29.relationRow2984 at r2984; linear_combination r2984), (by unfold Seg29.relationRow2985 at r2985; linear_combination r2985), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg29
    refine ⟨rho 23306, rho 23307, rho 23308, rho 23309, rho 23310,
      (by unfold Seg29.relationRow2986 at r2986; linear_combination r2986), (by unfold Seg29.relationRow2987 at r2987; linear_combination r2987), (by unfold Seg29.relationRow2988 at r2988; linear_combination r2988), (by unfold Seg29.relationRow2989 at r2989; linear_combination r2989), (by unfold Seg29.relationRow2990 at r2990; linear_combination r2990), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg30
    refine ⟨rho 23311, rho 23312, rho 23313, rho 23314, rho 23315,
      (by unfold Seg29.relationRow2991 at r2991; linear_combination r2991), (by unfold Seg29.relationRow2992 at r2992; linear_combination r2992), (by unfold Seg29.relationRow2993 at r2993; linear_combination r2993), (by unfold Seg29.relationRow2994 at r2994; linear_combination r2994), (by unfold Seg29.relationRow2995 at r2995; linear_combination r2995), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg31
    refine ⟨rho 23316, rho 23317, rho 23318, rho 23319, rho 23320,
      (by unfold Seg29.relationRow2996 at r2996; linear_combination r2996), (by unfold Seg29.relationRow2997 at r2997; linear_combination r2997), (by unfold Seg29.relationRow2998 at r2998; linear_combination r2998), (by unfold Seg29.relationRow2999 at r2999; linear_combination r2999), (by unfold Seg29.relationRow3000 at r3000; linear_combination r3000), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg32
    refine ⟨rho 23321, rho 23322, rho 23323, rho 23324, rho 23325,
      (by unfold Seg29.relationRow3001 at r3001; linear_combination r3001), (by unfold Seg29.relationRow3002 at r3002; linear_combination r3002), (by unfold Seg29.relationRow3003 at r3003; linear_combination r3003), (by unfold Seg29.relationRow3004 at r3004; linear_combination r3004), (by unfold Seg29.relationRow3005 at r3005; linear_combination r3005), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg33
    refine ⟨rho 23326, rho 23327, rho 23328, rho 23329, rho 23330,
      (by unfold Seg29.relationRow3006 at r3006; linear_combination r3006), (by unfold Seg29.relationRow3007 at r3007; linear_combination r3007), (by unfold Seg29.relationRow3008 at r3008; linear_combination r3008), (by unfold Seg29.relationRow3009 at r3009; linear_combination r3009), (by unfold Seg29.relationRow3010 at r3010; linear_combination r3010), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg34
    refine ⟨rho 23331, rho 23332, rho 23333, rho 23334, rho 23335,
      (by unfold Seg29.relationRow3011 at r3011; linear_combination r3011), (by unfold Seg29.relationRow3012 at r3012; linear_combination r3012), (by unfold Seg29.relationRow3013 at r3013; linear_combination r3013), (by unfold Seg29.relationRow3014 at r3014; linear_combination r3014), (by unfold Seg29.relationRow3015 at r3015; linear_combination r3015), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg35
    refine ⟨rho 23336, rho 23337, rho 23338, rho 23339, rho 23340,
      (by unfold Seg29.relationRow3016 at r3016; linear_combination r3016), (by unfold Seg29.relationRow3017 at r3017; linear_combination r3017), (by unfold Seg29.relationRow3018 at r3018; linear_combination r3018), (by unfold Seg29.relationRow3019 at r3019; linear_combination r3019), (by unfold Seg29.relationRow3020 at r3020; linear_combination r3020), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg36
    refine ⟨rho 23341, rho 23342, rho 23343, rho 23344, rho 23345,
      (by unfold Seg29.relationRow3021 at r3021; linear_combination r3021), (by unfold Seg29.relationRow3022 at r3022; linear_combination r3022), (by unfold Seg29.relationRow3023 at r3023; linear_combination r3023), (by unfold Seg29.relationRow3024 at r3024; linear_combination r3024), (by unfold Seg29.relationRow3025 at r3025; linear_combination r3025), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg37
    refine ⟨rho 23346, rho 23347, rho 23348, rho 23349, rho 23350,
      (by unfold Seg29.relationRow3026 at r3026; linear_combination r3026), (by unfold Seg29.relationRow3027 at r3027; linear_combination r3027), (by unfold Seg29.relationRow3028 at r3028; linear_combination r3028), (by unfold Seg29.relationRow3029 at r3029; linear_combination r3029), (by unfold Seg29.relationRow3030 at r3030; linear_combination r3030), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg38
    refine ⟨rho 23351, rho 23352, rho 23353, rho 23354, rho 23355,
      (by unfold Seg29.relationRow3031 at r3031; linear_combination r3031), (by unfold Seg29.relationRow3032 at r3032; linear_combination r3032), (by unfold Seg29.relationRow3033 at r3033; linear_combination r3033), (by unfold Seg29.relationRow3034 at r3034; linear_combination r3034), (by unfold Seg29.relationRow3035 at r3035; linear_combination r3035), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg39
    refine ⟨rho 23356, rho 23357, rho 23358, rho 23359, rho 23360,
      (by unfold Seg29.relationRow3036 at r3036; linear_combination r3036), (by unfold Seg29.relationRow3037 at r3037; linear_combination r3037), (by unfold Seg29.relationRow3038 at r3038; linear_combination r3038), (by unfold Seg29.relationRow3039 at r3039; linear_combination r3039), (by unfold Seg29.relationRow3040 at r3040; linear_combination r3040), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg40
    refine ⟨rho 23361, rho 23362, rho 23363, rho 23364, rho 23365,
      (by unfold Seg29.relationRow3041 at r3041; linear_combination r3041), (by unfold Seg29.relationRow3042 at r3042; linear_combination r3042), (by unfold Seg29.relationRow3043 at r3043; linear_combination r3043), (by unfold Seg29.relationRow3044 at r3044; linear_combination r3044), (by unfold Seg29.relationRow3045 at r3045; linear_combination r3045), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg41
    refine ⟨rho 23366, rho 23367, rho 23368, rho 23369, rho 23370,
      (by unfold Seg29.relationRow3046 at r3046; linear_combination r3046), (by unfold Seg29.relationRow3047 at r3047; linear_combination r3047), (by unfold Seg29.relationRow3048 at r3048; linear_combination r3048), (by unfold Seg29.relationRow3049 at r3049; linear_combination r3049), (by unfold Seg29.relationRow3050 at r3050; linear_combination r3050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg42
    refine ⟨rho 23371, rho 23372, rho 23373, rho 23374, rho 23375,
      (by unfold Seg29.relationRow3051 at r3051; linear_combination r3051), (by unfold Seg29.relationRow3052 at r3052; linear_combination r3052), (by unfold Seg29.relationRow3053 at r3053; linear_combination r3053), (by unfold Seg29.relationRow3054 at r3054; linear_combination r3054), (by unfold Seg29.relationRow3055 at r3055; linear_combination r3055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg43
    refine ⟨rho 23376, rho 23377, rho 23378, rho 23379, rho 23380,
      (by unfold Seg29.relationRow3056 at r3056; linear_combination r3056), (by unfold Seg29.relationRow3057 at r3057; linear_combination r3057), (by unfold Seg29.relationRow3058 at r3058; linear_combination r3058), (by unfold Seg29.relationRow3059 at r3059; linear_combination r3059), (by unfold Seg29.relationRow3060 at r3060; linear_combination r3060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg44
    refine ⟨rho 23381, rho 23382, rho 23383, rho 23384, rho 23385,
      (by unfold Seg29.relationRow3061 at r3061; linear_combination r3061), (by unfold Seg29.relationRow3062 at r3062; linear_combination r3062), (by unfold Seg29.relationRow3063 at r3063; linear_combination r3063), (by unfold Seg29.relationRow3064 at r3064; linear_combination r3064), (by unfold Seg29.relationRow3065 at r3065; linear_combination r3065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg45
    refine ⟨rho 23386, rho 23387, rho 23388, rho 23389, rho 23390,
      (by unfold Seg29.relationRow3066 at r3066; linear_combination r3066), (by unfold Seg29.relationRow3067 at r3067; linear_combination r3067), (by unfold Seg29.relationRow3068 at r3068; linear_combination r3068), (by unfold Seg29.relationRow3069 at r3069; linear_combination r3069), (by unfold Seg29.relationRow3070 at r3070; linear_combination r3070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg46
    refine ⟨rho 23391, rho 23392, rho 23393, rho 23394, rho 23395,
      (by unfold Seg29.relationRow3071 at r3071; linear_combination r3071), (by unfold Seg29.relationRow3072 at r3072; linear_combination r3072), (by unfold Seg29.relationRow3073 at r3073; linear_combination r3073), (by unfold Seg29.relationRow3074 at r3074; linear_combination r3074), (by unfold Seg29.relationRow3075 at r3075; linear_combination r3075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg47
    refine ⟨rho 23396, rho 23397, rho 23398, rho 23399, rho 23400,
      (by unfold Seg29.relationRow3076 at r3076; linear_combination r3076), (by unfold Seg29.relationRow3077 at r3077; linear_combination r3077), (by unfold Seg29.relationRow3078 at r3078; linear_combination r3078), (by unfold Seg29.relationRow3079 at r3079; linear_combination r3079), (by unfold Seg29.relationRow3080 at r3080; linear_combination r3080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg48
    refine ⟨rho 23401, rho 23402, rho 23403, rho 23404, rho 23405,
      (by unfold Seg29.relationRow3081 at r3081; linear_combination r3081), (by unfold Seg29.relationRow3082 at r3082; linear_combination r3082), (by unfold Seg29.relationRow3083 at r3083; linear_combination r3083), (by unfold Seg29.relationRow3084 at r3084; linear_combination r3084), (by unfold Seg29.relationRow3085 at r3085; linear_combination r3085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg49
    refine ⟨rho 23406, rho 23407, rho 23408, rho 23409, rho 23410,
      (by unfold Seg29.relationRow3086 at r3086; linear_combination r3086), (by unfold Seg29.relationRow3087 at r3087; linear_combination r3087), (by unfold Seg29.relationRow3088 at r3088; linear_combination r3088), (by unfold Seg29.relationRow3089 at r3089; linear_combination r3089), (by unfold Seg29.relationRow3090 at r3090; linear_combination r3090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg50
    refine ⟨rho 23411, rho 23412, rho 23413, rho 23414, rho 23415,
      (by unfold Seg29.relationRow3091 at r3091; linear_combination r3091), (by unfold Seg29.relationRow3092 at r3092; linear_combination r3092), (by unfold Seg29.relationRow3093 at r3093; linear_combination r3093), (by unfold Seg29.relationRow3094 at r3094; linear_combination r3094), (by unfold Seg29.relationRow3095 at r3095; linear_combination r3095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg51
    refine ⟨rho 23416, rho 23417, rho 23418, rho 23419, rho 23420,
      (by unfold Seg29.relationRow3096 at r3096; linear_combination r3096), (by unfold Seg29.relationRow3097 at r3097; linear_combination r3097), (by unfold Seg29.relationRow3098 at r3098; linear_combination r3098), (by unfold Seg29.relationRow3099 at r3099; linear_combination r3099), (by unfold Seg29.relationRow3100 at r3100; linear_combination r3100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg52
    refine ⟨rho 23421, rho 23422, rho 23423, rho 23424, rho 23425,
      (by unfold Seg29.relationRow3101 at r3101; linear_combination r3101), (by unfold Seg29.relationRow3102 at r3102; linear_combination r3102), (by unfold Seg29.relationRow3103 at r3103; linear_combination r3103), (by unfold Seg29.relationRow3104 at r3104; linear_combination r3104), (by unfold Seg29.relationRow3105 at r3105; linear_combination r3105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg53
    refine ⟨rho 23426, rho 23427, rho 23428, rho 23429, rho 23430,
      (by unfold Seg29.relationRow3106 at r3106; linear_combination r3106), (by unfold Seg29.relationRow3107 at r3107; linear_combination r3107), (by unfold Seg29.relationRow3108 at r3108; linear_combination r3108), (by unfold Seg29.relationRow3109 at r3109; linear_combination r3109), (by unfold Seg29.relationRow3110 at r3110; linear_combination r3110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg54
    refine ⟨rho 23431, rho 23432, rho 23433, rho 23434, rho 23435,
      (by unfold Seg29.relationRow3111 at r3111; linear_combination r3111), (by unfold Seg29.relationRow3112 at r3112; linear_combination r3112), (by unfold Seg29.relationRow3113 at r3113; linear_combination r3113), (by unfold Seg29.relationRow3114 at r3114; linear_combination r3114), (by unfold Seg29.relationRow3115 at r3115; linear_combination r3115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg55
    refine ⟨rho 23436, rho 23437, rho 23438, rho 23439, rho 23440,
      (by unfold Seg29.relationRow3116 at r3116; linear_combination r3116), (by unfold Seg29.relationRow3117 at r3117; linear_combination r3117), (by unfold Seg29.relationRow3118 at r3118; linear_combination r3118), (by unfold Seg29.relationRow3119 at r3119; linear_combination r3119), (by unfold Seg29.relationRow3120 at r3120; linear_combination r3120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg56
    refine ⟨rho 23441, rho 23442, rho 23443, rho 23444, rho 23445,
      (by unfold Seg29.relationRow3121 at r3121; linear_combination r3121), (by unfold Seg29.relationRow3122 at r3122; linear_combination r3122), (by unfold Seg29.relationRow3123 at r3123; linear_combination r3123), (by unfold Seg29.relationRow3124 at r3124; linear_combination r3124), (by unfold Seg29.relationRow3125 at r3125; linear_combination r3125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg57
    refine ⟨rho 23446, rho 23447, rho 23448, rho 23449, rho 23450,
      (by unfold Seg29.relationRow3126 at r3126; linear_combination r3126), (by unfold Seg29.relationRow3127 at r3127; linear_combination r3127), (by unfold Seg29.relationRow3128 at r3128; linear_combination r3128), (by unfold Seg29.relationRow3129 at r3129; linear_combination r3129), (by unfold Seg29.relationRow3130 at r3130; linear_combination r3130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg58
    refine ⟨rho 23451, rho 23452, rho 23453, rho 23454, rho 23455,
      (by unfold Seg29.relationRow3131 at r3131; linear_combination r3131), (by unfold Seg29.relationRow3132 at r3132; linear_combination r3132), (by unfold Seg29.relationRow3133 at r3133; linear_combination r3133), (by unfold Seg29.relationRow3134 at r3134; linear_combination r3134), (by unfold Seg29.relationRow3135 at r3135; linear_combination r3135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg59
    refine ⟨rho 23456, rho 23457, rho 23458, rho 23459, rho 23460,
      (by unfold Seg29.relationRow3136 at r3136; linear_combination r3136), (by unfold Seg29.relationRow3137 at r3137; linear_combination r3137), (by unfold Seg29.relationRow3138 at r3138; linear_combination r3138), (by unfold Seg29.relationRow3139 at r3139; linear_combination r3139), (by unfold Seg29.relationRow3140 at r3140; linear_combination r3140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg60
    refine ⟨rho 23461, rho 23462, rho 23463, rho 23464, rho 23465,
      (by unfold Seg29.relationRow3141 at r3141; linear_combination r3141), (by unfold Seg29.relationRow3142 at r3142; linear_combination r3142), (by unfold Seg29.relationRow3143 at r3143; linear_combination r3143), (by unfold Seg29.relationRow3144 at r3144; linear_combination r3144), (by unfold Seg29.relationRow3145 at r3145; linear_combination r3145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg61
    refine ⟨rho 23466, rho 23467, rho 23468, rho 23469, rho 23470,
      (by unfold Seg29.relationRow3146 at r3146; linear_combination r3146), (by unfold Seg29.relationRow3147 at r3147; linear_combination r3147), (by unfold Seg29.relationRow3148 at r3148; linear_combination r3148), (by unfold Seg29.relationRow3149 at r3149; linear_combination r3149), (by unfold Seg29.relationRow3150 at r3150; linear_combination r3150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg62
    refine ⟨rho 23471, rho 23472, rho 23473, rho 23474, rho 23475,
      (by unfold Seg29.relationRow3151 at r3151; linear_combination r3151), (by unfold Seg29.relationRow3152 at r3152; linear_combination r3152), (by unfold Seg29.relationRow3153 at r3153; linear_combination r3153), (by unfold Seg29.relationRow3154 at r3154; linear_combination r3154), (by unfold Seg29.relationRow3155 at r3155; linear_combination r3155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg63
    refine ⟨rho 23476, rho 23477, rho 23478, rho 23479, rho 23480,
      (by unfold Seg29.relationRow3156 at r3156; linear_combination r3156), (by unfold Seg29.relationRow3157 at r3157; linear_combination r3157), (by unfold Seg29.relationRow3158 at r3158; linear_combination r3158), (by unfold Seg29.relationRow3159 at r3159; linear_combination r3159), (by unfold Seg29.relationRow3160 at r3160; linear_combination r3160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg64
    refine ⟨rho 23481, rho 23482, rho 23483, rho 23484, rho 23485,
      (by unfold Seg29.relationRow3161 at r3161; linear_combination r3161), (by unfold Seg29.relationRow3162 at r3162; linear_combination r3162), (by unfold Seg29.relationRow3163 at r3163; linear_combination r3163), (by unfold Seg29.relationRow3164 at r3164; linear_combination r3164), (by unfold Seg29.relationRow3165 at r3165; linear_combination r3165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg65
    refine ⟨rho 23486, rho 23487, rho 23488, rho 23489, rho 23490,
      (by unfold Seg29.relationRow3166 at r3166; linear_combination r3166), (by unfold Seg29.relationRow3167 at r3167; linear_combination r3167), (by unfold Seg29.relationRow3168 at r3168; linear_combination r3168), (by unfold Seg29.relationRow3169 at r3169; linear_combination r3169), (by unfold Seg29.relationRow3170 at r3170; linear_combination r3170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg66
    refine ⟨rho 23491, rho 23492, rho 23493, rho 23494, rho 23495,
      (by unfold Seg29.relationRow3171 at r3171; linear_combination r3171), (by unfold Seg29.relationRow3172 at r3172; linear_combination r3172), (by unfold Seg29.relationRow3173 at r3173; linear_combination r3173), (by unfold Seg29.relationRow3174 at r3174; linear_combination r3174), (by unfold Seg29.relationRow3175 at r3175; linear_combination r3175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg67
    refine ⟨rho 23496, rho 23497, rho 23498, rho 23499, rho 23500,
      (by unfold Seg29.relationRow3176 at r3176; linear_combination r3176), (by unfold Seg29.relationRow3177 at r3177; linear_combination r3177), (by unfold Seg29.relationRow3178 at r3178; linear_combination r3178), (by unfold Seg29.relationRow3179 at r3179; linear_combination r3179), (by unfold Seg29.relationRow3180 at r3180; linear_combination r3180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg68
    refine ⟨rho 23501, rho 23502, rho 23503, rho 23504, rho 23505,
      (by unfold Seg29.relationRow3181 at r3181; linear_combination r3181), (by unfold Seg29.relationRow3182 at r3182; linear_combination r3182), (by unfold Seg29.relationRow3183 at r3183; linear_combination r3183), (by unfold Seg29.relationRow3184 at r3184; linear_combination r3184), (by unfold Seg29.relationRow3185 at r3185; linear_combination r3185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg69
    refine ⟨rho 23506, rho 23507, rho 23508, rho 23509, rho 23510,
      (by unfold Seg29.relationRow3186 at r3186; linear_combination r3186), (by unfold Seg29.relationRow3187 at r3187; linear_combination r3187), (by unfold Seg29.relationRow3188 at r3188; linear_combination r3188), (by unfold Seg29.relationRow3189 at r3189; linear_combination r3189), (by unfold Seg29.relationRow3190 at r3190; linear_combination r3190), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.relation_sound_permSpec (rho 163) (rho 164) (rho 165) (rho 23155) (rho 23156) (rho 23157) (rho 23158) (rho 23159) (rho 23160) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.tctNode8DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.F) + (8 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode7Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

