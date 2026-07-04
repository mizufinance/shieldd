import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode7.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_node7_eq (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode7Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (8 : Seg11.F))
        (rho 73 + rho 4455) (rho 74 + rho 4456 + rho 4457)
        (rho 74 + rho 4458 + rho 4459) (rho 75 + rho 4460) := by
  unfold Seg11.relation at h
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
  unfold Seg11.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Seg11.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  unfold Seg11.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Seg11.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg11.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.relation (rho 73) (rho 74) (rho 75) (rho 4455) (rho 4456) (rho 4457) (rho 4458) (rho 4459) (rho 4460)
      (fun o0 o1 o2 o3 o4 => o0 = rho 4790 ∧ o1 = rho 4795 ∧ o2 = rho 4800 ∧ o3 = rho 4805 ∧ o4 = rho 4810) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg0
    refine ⟨rho 4461, rho 4462, rho 4463, rho 4464, rho 4465,
      (by unfold Seg11.relationRow2841 at r2841; linear_combination r2841), (by unfold Seg11.relationRow2842 at r2842; linear_combination r2842), (by unfold Seg11.relationRow2843 at r2843; linear_combination r2843), (by unfold Seg11.relationRow2844 at r2844; linear_combination r2844), (by unfold Seg11.relationRow2845 at r2845; linear_combination r2845), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg1
    refine ⟨rho 4466, rho 4467, rho 4468, rho 4469, rho 4470,
      (by unfold Seg11.relationRow2846 at r2846; linear_combination r2846), (by unfold Seg11.relationRow2847 at r2847; linear_combination r2847), (by unfold Seg11.relationRow2848 at r2848; linear_combination r2848), (by unfold Seg11.relationRow2849 at r2849; linear_combination r2849), (by unfold Seg11.relationRow2850 at r2850; linear_combination r2850), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg2
    refine ⟨rho 4471, rho 4472, rho 4473, rho 4474, rho 4475,
      (by unfold Seg11.relationRow2851 at r2851; linear_combination r2851), (by unfold Seg11.relationRow2852 at r2852; linear_combination r2852), (by unfold Seg11.relationRow2853 at r2853; linear_combination r2853), (by unfold Seg11.relationRow2854 at r2854; linear_combination r2854), (by unfold Seg11.relationRow2855 at r2855; linear_combination r2855), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg3
    refine ⟨rho 4476, rho 4477, rho 4478, rho 4479, rho 4480,
      (by unfold Seg11.relationRow2856 at r2856; linear_combination r2856), (by unfold Seg11.relationRow2857 at r2857; linear_combination r2857), (by unfold Seg11.relationRow2858 at r2858; linear_combination r2858), (by unfold Seg11.relationRow2859 at r2859; linear_combination r2859), (by unfold Seg11.relationRow2860 at r2860; linear_combination r2860), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg4
    refine ⟨rho 4481, rho 4482, rho 4483, rho 4484, rho 4485,
      (by unfold Seg11.relationRow2861 at r2861; linear_combination r2861), (by unfold Seg11.relationRow2862 at r2862; linear_combination r2862), (by unfold Seg11.relationRow2863 at r2863; linear_combination r2863), (by unfold Seg11.relationRow2864 at r2864; linear_combination r2864), (by unfold Seg11.relationRow2865 at r2865; linear_combination r2865), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg5
    refine ⟨rho 4486, rho 4487, rho 4488, rho 4489, rho 4490,
      (by unfold Seg11.relationRow2866 at r2866; linear_combination r2866), (by unfold Seg11.relationRow2867 at r2867; linear_combination r2867), (by unfold Seg11.relationRow2868 at r2868; linear_combination r2868), (by unfold Seg11.relationRow2869 at r2869; linear_combination r2869), (by unfold Seg11.relationRow2870 at r2870; linear_combination r2870), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg6
    refine ⟨rho 4491, rho 4492, rho 4493, rho 4494, rho 4495,
      (by unfold Seg11.relationRow2871 at r2871; linear_combination r2871), (by unfold Seg11.relationRow2872 at r2872; linear_combination r2872), (by unfold Seg11.relationRow2873 at r2873; linear_combination r2873), (by unfold Seg11.relationRow2874 at r2874; linear_combination r2874), (by unfold Seg11.relationRow2875 at r2875; linear_combination r2875), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg7
    refine ⟨rho 4496, rho 4497, rho 4498, rho 4499, rho 4500,
      (by unfold Seg11.relationRow2876 at r2876; linear_combination r2876), (by unfold Seg11.relationRow2877 at r2877; linear_combination r2877), (by unfold Seg11.relationRow2878 at r2878; linear_combination r2878), (by unfold Seg11.relationRow2879 at r2879; linear_combination r2879), (by unfold Seg11.relationRow2880 at r2880; linear_combination r2880), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg8
    refine ⟨rho 4501, rho 4502, rho 4503, rho 4504, rho 4505,
      (by unfold Seg11.relationRow2881 at r2881; linear_combination r2881), (by unfold Seg11.relationRow2882 at r2882; linear_combination r2882), (by unfold Seg11.relationRow2883 at r2883; linear_combination r2883), (by unfold Seg11.relationRow2884 at r2884; linear_combination r2884), (by unfold Seg11.relationRow2885 at r2885; linear_combination r2885), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg9
    refine ⟨rho 4506, rho 4507, rho 4508, rho 4509, rho 4510,
      (by unfold Seg11.relationRow2886 at r2886; linear_combination r2886), (by unfold Seg11.relationRow2887 at r2887; linear_combination r2887), (by unfold Seg11.relationRow2888 at r2888; linear_combination r2888), (by unfold Seg11.relationRow2889 at r2889; linear_combination r2889), (by unfold Seg11.relationRow2890 at r2890; linear_combination r2890), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg10
    refine ⟨rho 4511, rho 4512, rho 4513, rho 4514, rho 4515,
      (by unfold Seg11.relationRow2891 at r2891; linear_combination r2891), (by unfold Seg11.relationRow2892 at r2892; linear_combination r2892), (by unfold Seg11.relationRow2893 at r2893; linear_combination r2893), (by unfold Seg11.relationRow2894 at r2894; linear_combination r2894), (by unfold Seg11.relationRow2895 at r2895; linear_combination r2895), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg11
    refine ⟨rho 4516, rho 4517, rho 4518, rho 4519, rho 4520,
      (by unfold Seg11.relationRow2896 at r2896; linear_combination r2896), (by unfold Seg11.relationRow2897 at r2897; linear_combination r2897), (by unfold Seg11.relationRow2898 at r2898; linear_combination r2898), (by unfold Seg11.relationRow2899 at r2899; linear_combination r2899), (by unfold Seg11.relationRow2900 at r2900; linear_combination r2900), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg12
    refine ⟨rho 4521, rho 4522, rho 4523, rho 4524, rho 4525,
      (by unfold Seg11.relationRow2901 at r2901; linear_combination r2901), (by unfold Seg11.relationRow2902 at r2902; linear_combination r2902), (by unfold Seg11.relationRow2903 at r2903; linear_combination r2903), (by unfold Seg11.relationRow2904 at r2904; linear_combination r2904), (by unfold Seg11.relationRow2905 at r2905; linear_combination r2905), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg13
    refine ⟨rho 4526, rho 4527, rho 4528, rho 4529, rho 4530,
      (by unfold Seg11.relationRow2906 at r2906; linear_combination r2906), (by unfold Seg11.relationRow2907 at r2907; linear_combination r2907), (by unfold Seg11.relationRow2908 at r2908; linear_combination r2908), (by unfold Seg11.relationRow2909 at r2909; linear_combination r2909), (by unfold Seg11.relationRow2910 at r2910; linear_combination r2910), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg14
    refine ⟨rho 4531, rho 4532, rho 4533, rho 4534, rho 4535,
      (by unfold Seg11.relationRow2911 at r2911; linear_combination r2911), (by unfold Seg11.relationRow2912 at r2912; linear_combination r2912), (by unfold Seg11.relationRow2913 at r2913; linear_combination r2913), (by unfold Seg11.relationRow2914 at r2914; linear_combination r2914), (by unfold Seg11.relationRow2915 at r2915; linear_combination r2915), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg15
    refine ⟨rho 4536, rho 4537, rho 4538, rho 4539, rho 4540,
      (by unfold Seg11.relationRow2916 at r2916; linear_combination r2916), (by unfold Seg11.relationRow2917 at r2917; linear_combination r2917), (by unfold Seg11.relationRow2918 at r2918; linear_combination r2918), (by unfold Seg11.relationRow2919 at r2919; linear_combination r2919), (by unfold Seg11.relationRow2920 at r2920; linear_combination r2920), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg16
    refine ⟨rho 4541, rho 4542, rho 4543, rho 4544, rho 4545,
      (by unfold Seg11.relationRow2921 at r2921; linear_combination r2921), (by unfold Seg11.relationRow2922 at r2922; linear_combination r2922), (by unfold Seg11.relationRow2923 at r2923; linear_combination r2923), (by unfold Seg11.relationRow2924 at r2924; linear_combination r2924), (by unfold Seg11.relationRow2925 at r2925; linear_combination r2925), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg17
    refine ⟨rho 4546, rho 4547, rho 4548, rho 4549, rho 4550,
      (by unfold Seg11.relationRow2926 at r2926; linear_combination r2926), (by unfold Seg11.relationRow2927 at r2927; linear_combination r2927), (by unfold Seg11.relationRow2928 at r2928; linear_combination r2928), (by unfold Seg11.relationRow2929 at r2929; linear_combination r2929), (by unfold Seg11.relationRow2930 at r2930; linear_combination r2930), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg18
    refine ⟨rho 4551, rho 4552, rho 4553, rho 4554, rho 4555,
      (by unfold Seg11.relationRow2931 at r2931; linear_combination r2931), (by unfold Seg11.relationRow2932 at r2932; linear_combination r2932), (by unfold Seg11.relationRow2933 at r2933; linear_combination r2933), (by unfold Seg11.relationRow2934 at r2934; linear_combination r2934), (by unfold Seg11.relationRow2935 at r2935; linear_combination r2935), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg19
    refine ⟨rho 4556, rho 4557, rho 4558, rho 4559, rho 4560,
      (by unfold Seg11.relationRow2936 at r2936; linear_combination r2936), (by unfold Seg11.relationRow2937 at r2937; linear_combination r2937), (by unfold Seg11.relationRow2938 at r2938; linear_combination r2938), (by unfold Seg11.relationRow2939 at r2939; linear_combination r2939), (by unfold Seg11.relationRow2940 at r2940; linear_combination r2940), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg20
    refine ⟨rho 4561, rho 4562, rho 4563, rho 4564, rho 4565,
      (by unfold Seg11.relationRow2941 at r2941; linear_combination r2941), (by unfold Seg11.relationRow2942 at r2942; linear_combination r2942), (by unfold Seg11.relationRow2943 at r2943; linear_combination r2943), (by unfold Seg11.relationRow2944 at r2944; linear_combination r2944), (by unfold Seg11.relationRow2945 at r2945; linear_combination r2945), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg21
    refine ⟨rho 4566, rho 4567, rho 4568, rho 4569, rho 4570,
      (by unfold Seg11.relationRow2946 at r2946; linear_combination r2946), (by unfold Seg11.relationRow2947 at r2947; linear_combination r2947), (by unfold Seg11.relationRow2948 at r2948; linear_combination r2948), (by unfold Seg11.relationRow2949 at r2949; linear_combination r2949), (by unfold Seg11.relationRow2950 at r2950; linear_combination r2950), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg22
    refine ⟨rho 4571, rho 4572, rho 4573, rho 4574, rho 4575,
      (by unfold Seg11.relationRow2951 at r2951; linear_combination r2951), (by unfold Seg11.relationRow2952 at r2952; linear_combination r2952), (by unfold Seg11.relationRow2953 at r2953; linear_combination r2953), (by unfold Seg11.relationRow2954 at r2954; linear_combination r2954), (by unfold Seg11.relationRow2955 at r2955; linear_combination r2955), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg23
    refine ⟨rho 4576, rho 4577, rho 4578, rho 4579, rho 4580,
      (by unfold Seg11.relationRow2956 at r2956; linear_combination r2956), (by unfold Seg11.relationRow2957 at r2957; linear_combination r2957), (by unfold Seg11.relationRow2958 at r2958; linear_combination r2958), (by unfold Seg11.relationRow2959 at r2959; linear_combination r2959), (by unfold Seg11.relationRow2960 at r2960; linear_combination r2960), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg24
    refine ⟨rho 4581, rho 4582, rho 4583, rho 4584, rho 4585,
      (by unfold Seg11.relationRow2961 at r2961; linear_combination r2961), (by unfold Seg11.relationRow2962 at r2962; linear_combination r2962), (by unfold Seg11.relationRow2963 at r2963; linear_combination r2963), (by unfold Seg11.relationRow2964 at r2964; linear_combination r2964), (by unfold Seg11.relationRow2965 at r2965; linear_combination r2965), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg25
    refine ⟨rho 4586, rho 4587, rho 4588, rho 4589, rho 4590,
      (by unfold Seg11.relationRow2966 at r2966; linear_combination r2966), (by unfold Seg11.relationRow2967 at r2967; linear_combination r2967), (by unfold Seg11.relationRow2968 at r2968; linear_combination r2968), (by unfold Seg11.relationRow2969 at r2969; linear_combination r2969), (by unfold Seg11.relationRow2970 at r2970; linear_combination r2970), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg26
    refine ⟨rho 4591, rho 4592, rho 4593, rho 4594, rho 4595,
      (by unfold Seg11.relationRow2971 at r2971; linear_combination r2971), (by unfold Seg11.relationRow2972 at r2972; linear_combination r2972), (by unfold Seg11.relationRow2973 at r2973; linear_combination r2973), (by unfold Seg11.relationRow2974 at r2974; linear_combination r2974), (by unfold Seg11.relationRow2975 at r2975; linear_combination r2975), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg27
    refine ⟨rho 4596, rho 4597, rho 4598, rho 4599, rho 4600,
      (by unfold Seg11.relationRow2976 at r2976; linear_combination r2976), (by unfold Seg11.relationRow2977 at r2977; linear_combination r2977), (by unfold Seg11.relationRow2978 at r2978; linear_combination r2978), (by unfold Seg11.relationRow2979 at r2979; linear_combination r2979), (by unfold Seg11.relationRow2980 at r2980; linear_combination r2980), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg28
    refine ⟨rho 4601, rho 4602, rho 4603, rho 4604, rho 4605,
      (by unfold Seg11.relationRow2981 at r2981; linear_combination r2981), (by unfold Seg11.relationRow2982 at r2982; linear_combination r2982), (by unfold Seg11.relationRow2983 at r2983; linear_combination r2983), (by unfold Seg11.relationRow2984 at r2984; linear_combination r2984), (by unfold Seg11.relationRow2985 at r2985; linear_combination r2985), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg29
    refine ⟨rho 4606, rho 4607, rho 4608, rho 4609, rho 4610,
      (by unfold Seg11.relationRow2986 at r2986; linear_combination r2986), (by unfold Seg11.relationRow2987 at r2987; linear_combination r2987), (by unfold Seg11.relationRow2988 at r2988; linear_combination r2988), (by unfold Seg11.relationRow2989 at r2989; linear_combination r2989), (by unfold Seg11.relationRow2990 at r2990; linear_combination r2990), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg30
    refine ⟨rho 4611, rho 4612, rho 4613, rho 4614, rho 4615,
      (by unfold Seg11.relationRow2991 at r2991; linear_combination r2991), (by unfold Seg11.relationRow2992 at r2992; linear_combination r2992), (by unfold Seg11.relationRow2993 at r2993; linear_combination r2993), (by unfold Seg11.relationRow2994 at r2994; linear_combination r2994), (by unfold Seg11.relationRow2995 at r2995; linear_combination r2995), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg31
    refine ⟨rho 4616, rho 4617, rho 4618, rho 4619, rho 4620,
      (by unfold Seg11.relationRow2996 at r2996; linear_combination r2996), (by unfold Seg11.relationRow2997 at r2997; linear_combination r2997), (by unfold Seg11.relationRow2998 at r2998; linear_combination r2998), (by unfold Seg11.relationRow2999 at r2999; linear_combination r2999), (by unfold Seg11.relationRow3000 at r3000; linear_combination r3000), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg32
    refine ⟨rho 4621, rho 4622, rho 4623, rho 4624, rho 4625,
      (by unfold Seg11.relationRow3001 at r3001; linear_combination r3001), (by unfold Seg11.relationRow3002 at r3002; linear_combination r3002), (by unfold Seg11.relationRow3003 at r3003; linear_combination r3003), (by unfold Seg11.relationRow3004 at r3004; linear_combination r3004), (by unfold Seg11.relationRow3005 at r3005; linear_combination r3005), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg33
    refine ⟨rho 4626, rho 4627, rho 4628, rho 4629, rho 4630,
      (by unfold Seg11.relationRow3006 at r3006; linear_combination r3006), (by unfold Seg11.relationRow3007 at r3007; linear_combination r3007), (by unfold Seg11.relationRow3008 at r3008; linear_combination r3008), (by unfold Seg11.relationRow3009 at r3009; linear_combination r3009), (by unfold Seg11.relationRow3010 at r3010; linear_combination r3010), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg34
    refine ⟨rho 4631, rho 4632, rho 4633, rho 4634, rho 4635,
      (by unfold Seg11.relationRow3011 at r3011; linear_combination r3011), (by unfold Seg11.relationRow3012 at r3012; linear_combination r3012), (by unfold Seg11.relationRow3013 at r3013; linear_combination r3013), (by unfold Seg11.relationRow3014 at r3014; linear_combination r3014), (by unfold Seg11.relationRow3015 at r3015; linear_combination r3015), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg35
    refine ⟨rho 4636, rho 4637, rho 4638, rho 4639, rho 4640,
      (by unfold Seg11.relationRow3016 at r3016; linear_combination r3016), (by unfold Seg11.relationRow3017 at r3017; linear_combination r3017), (by unfold Seg11.relationRow3018 at r3018; linear_combination r3018), (by unfold Seg11.relationRow3019 at r3019; linear_combination r3019), (by unfold Seg11.relationRow3020 at r3020; linear_combination r3020), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg36
    refine ⟨rho 4641, rho 4642, rho 4643, rho 4644, rho 4645,
      (by unfold Seg11.relationRow3021 at r3021; linear_combination r3021), (by unfold Seg11.relationRow3022 at r3022; linear_combination r3022), (by unfold Seg11.relationRow3023 at r3023; linear_combination r3023), (by unfold Seg11.relationRow3024 at r3024; linear_combination r3024), (by unfold Seg11.relationRow3025 at r3025; linear_combination r3025), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg37
    refine ⟨rho 4646, rho 4647, rho 4648, rho 4649, rho 4650,
      (by unfold Seg11.relationRow3026 at r3026; linear_combination r3026), (by unfold Seg11.relationRow3027 at r3027; linear_combination r3027), (by unfold Seg11.relationRow3028 at r3028; linear_combination r3028), (by unfold Seg11.relationRow3029 at r3029; linear_combination r3029), (by unfold Seg11.relationRow3030 at r3030; linear_combination r3030), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg38
    refine ⟨rho 4651, rho 4652, rho 4653, rho 4654, rho 4655,
      (by unfold Seg11.relationRow3031 at r3031; linear_combination r3031), (by unfold Seg11.relationRow3032 at r3032; linear_combination r3032), (by unfold Seg11.relationRow3033 at r3033; linear_combination r3033), (by unfold Seg11.relationRow3034 at r3034; linear_combination r3034), (by unfold Seg11.relationRow3035 at r3035; linear_combination r3035), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg39
    refine ⟨rho 4656, rho 4657, rho 4658, rho 4659, rho 4660,
      (by unfold Seg11.relationRow3036 at r3036; linear_combination r3036), (by unfold Seg11.relationRow3037 at r3037; linear_combination r3037), (by unfold Seg11.relationRow3038 at r3038; linear_combination r3038), (by unfold Seg11.relationRow3039 at r3039; linear_combination r3039), (by unfold Seg11.relationRow3040 at r3040; linear_combination r3040), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg40
    refine ⟨rho 4661, rho 4662, rho 4663, rho 4664, rho 4665,
      (by unfold Seg11.relationRow3041 at r3041; linear_combination r3041), (by unfold Seg11.relationRow3042 at r3042; linear_combination r3042), (by unfold Seg11.relationRow3043 at r3043; linear_combination r3043), (by unfold Seg11.relationRow3044 at r3044; linear_combination r3044), (by unfold Seg11.relationRow3045 at r3045; linear_combination r3045), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg41
    refine ⟨rho 4666, rho 4667, rho 4668, rho 4669, rho 4670,
      (by unfold Seg11.relationRow3046 at r3046; linear_combination r3046), (by unfold Seg11.relationRow3047 at r3047; linear_combination r3047), (by unfold Seg11.relationRow3048 at r3048; linear_combination r3048), (by unfold Seg11.relationRow3049 at r3049; linear_combination r3049), (by unfold Seg11.relationRow3050 at r3050; linear_combination r3050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg42
    refine ⟨rho 4671, rho 4672, rho 4673, rho 4674, rho 4675,
      (by unfold Seg11.relationRow3051 at r3051; linear_combination r3051), (by unfold Seg11.relationRow3052 at r3052; linear_combination r3052), (by unfold Seg11.relationRow3053 at r3053; linear_combination r3053), (by unfold Seg11.relationRow3054 at r3054; linear_combination r3054), (by unfold Seg11.relationRow3055 at r3055; linear_combination r3055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg43
    refine ⟨rho 4676, rho 4677, rho 4678, rho 4679, rho 4680,
      (by unfold Seg11.relationRow3056 at r3056; linear_combination r3056), (by unfold Seg11.relationRow3057 at r3057; linear_combination r3057), (by unfold Seg11.relationRow3058 at r3058; linear_combination r3058), (by unfold Seg11.relationRow3059 at r3059; linear_combination r3059), (by unfold Seg11.relationRow3060 at r3060; linear_combination r3060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg44
    refine ⟨rho 4681, rho 4682, rho 4683, rho 4684, rho 4685,
      (by unfold Seg11.relationRow3061 at r3061; linear_combination r3061), (by unfold Seg11.relationRow3062 at r3062; linear_combination r3062), (by unfold Seg11.relationRow3063 at r3063; linear_combination r3063), (by unfold Seg11.relationRow3064 at r3064; linear_combination r3064), (by unfold Seg11.relationRow3065 at r3065; linear_combination r3065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg45
    refine ⟨rho 4686, rho 4687, rho 4688, rho 4689, rho 4690,
      (by unfold Seg11.relationRow3066 at r3066; linear_combination r3066), (by unfold Seg11.relationRow3067 at r3067; linear_combination r3067), (by unfold Seg11.relationRow3068 at r3068; linear_combination r3068), (by unfold Seg11.relationRow3069 at r3069; linear_combination r3069), (by unfold Seg11.relationRow3070 at r3070; linear_combination r3070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg46
    refine ⟨rho 4691, rho 4692, rho 4693, rho 4694, rho 4695,
      (by unfold Seg11.relationRow3071 at r3071; linear_combination r3071), (by unfold Seg11.relationRow3072 at r3072; linear_combination r3072), (by unfold Seg11.relationRow3073 at r3073; linear_combination r3073), (by unfold Seg11.relationRow3074 at r3074; linear_combination r3074), (by unfold Seg11.relationRow3075 at r3075; linear_combination r3075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg47
    refine ⟨rho 4696, rho 4697, rho 4698, rho 4699, rho 4700,
      (by unfold Seg11.relationRow3076 at r3076; linear_combination r3076), (by unfold Seg11.relationRow3077 at r3077; linear_combination r3077), (by unfold Seg11.relationRow3078 at r3078; linear_combination r3078), (by unfold Seg11.relationRow3079 at r3079; linear_combination r3079), (by unfold Seg11.relationRow3080 at r3080; linear_combination r3080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg48
    refine ⟨rho 4701, rho 4702, rho 4703, rho 4704, rho 4705,
      (by unfold Seg11.relationRow3081 at r3081; linear_combination r3081), (by unfold Seg11.relationRow3082 at r3082; linear_combination r3082), (by unfold Seg11.relationRow3083 at r3083; linear_combination r3083), (by unfold Seg11.relationRow3084 at r3084; linear_combination r3084), (by unfold Seg11.relationRow3085 at r3085; linear_combination r3085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg49
    refine ⟨rho 4706, rho 4707, rho 4708, rho 4709, rho 4710,
      (by unfold Seg11.relationRow3086 at r3086; linear_combination r3086), (by unfold Seg11.relationRow3087 at r3087; linear_combination r3087), (by unfold Seg11.relationRow3088 at r3088; linear_combination r3088), (by unfold Seg11.relationRow3089 at r3089; linear_combination r3089), (by unfold Seg11.relationRow3090 at r3090; linear_combination r3090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg50
    refine ⟨rho 4711, rho 4712, rho 4713, rho 4714, rho 4715,
      (by unfold Seg11.relationRow3091 at r3091; linear_combination r3091), (by unfold Seg11.relationRow3092 at r3092; linear_combination r3092), (by unfold Seg11.relationRow3093 at r3093; linear_combination r3093), (by unfold Seg11.relationRow3094 at r3094; linear_combination r3094), (by unfold Seg11.relationRow3095 at r3095; linear_combination r3095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg51
    refine ⟨rho 4716, rho 4717, rho 4718, rho 4719, rho 4720,
      (by unfold Seg11.relationRow3096 at r3096; linear_combination r3096), (by unfold Seg11.relationRow3097 at r3097; linear_combination r3097), (by unfold Seg11.relationRow3098 at r3098; linear_combination r3098), (by unfold Seg11.relationRow3099 at r3099; linear_combination r3099), (by unfold Seg11.relationRow3100 at r3100; linear_combination r3100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg52
    refine ⟨rho 4721, rho 4722, rho 4723, rho 4724, rho 4725,
      (by unfold Seg11.relationRow3101 at r3101; linear_combination r3101), (by unfold Seg11.relationRow3102 at r3102; linear_combination r3102), (by unfold Seg11.relationRow3103 at r3103; linear_combination r3103), (by unfold Seg11.relationRow3104 at r3104; linear_combination r3104), (by unfold Seg11.relationRow3105 at r3105; linear_combination r3105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg53
    refine ⟨rho 4726, rho 4727, rho 4728, rho 4729, rho 4730,
      (by unfold Seg11.relationRow3106 at r3106; linear_combination r3106), (by unfold Seg11.relationRow3107 at r3107; linear_combination r3107), (by unfold Seg11.relationRow3108 at r3108; linear_combination r3108), (by unfold Seg11.relationRow3109 at r3109; linear_combination r3109), (by unfold Seg11.relationRow3110 at r3110; linear_combination r3110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg54
    refine ⟨rho 4731, rho 4732, rho 4733, rho 4734, rho 4735,
      (by unfold Seg11.relationRow3111 at r3111; linear_combination r3111), (by unfold Seg11.relationRow3112 at r3112; linear_combination r3112), (by unfold Seg11.relationRow3113 at r3113; linear_combination r3113), (by unfold Seg11.relationRow3114 at r3114; linear_combination r3114), (by unfold Seg11.relationRow3115 at r3115; linear_combination r3115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg55
    refine ⟨rho 4736, rho 4737, rho 4738, rho 4739, rho 4740,
      (by unfold Seg11.relationRow3116 at r3116; linear_combination r3116), (by unfold Seg11.relationRow3117 at r3117; linear_combination r3117), (by unfold Seg11.relationRow3118 at r3118; linear_combination r3118), (by unfold Seg11.relationRow3119 at r3119; linear_combination r3119), (by unfold Seg11.relationRow3120 at r3120; linear_combination r3120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg56
    refine ⟨rho 4741, rho 4742, rho 4743, rho 4744, rho 4745,
      (by unfold Seg11.relationRow3121 at r3121; linear_combination r3121), (by unfold Seg11.relationRow3122 at r3122; linear_combination r3122), (by unfold Seg11.relationRow3123 at r3123; linear_combination r3123), (by unfold Seg11.relationRow3124 at r3124; linear_combination r3124), (by unfold Seg11.relationRow3125 at r3125; linear_combination r3125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg57
    refine ⟨rho 4746, rho 4747, rho 4748, rho 4749, rho 4750,
      (by unfold Seg11.relationRow3126 at r3126; linear_combination r3126), (by unfold Seg11.relationRow3127 at r3127; linear_combination r3127), (by unfold Seg11.relationRow3128 at r3128; linear_combination r3128), (by unfold Seg11.relationRow3129 at r3129; linear_combination r3129), (by unfold Seg11.relationRow3130 at r3130; linear_combination r3130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg58
    refine ⟨rho 4751, rho 4752, rho 4753, rho 4754, rho 4755,
      (by unfold Seg11.relationRow3131 at r3131; linear_combination r3131), (by unfold Seg11.relationRow3132 at r3132; linear_combination r3132), (by unfold Seg11.relationRow3133 at r3133; linear_combination r3133), (by unfold Seg11.relationRow3134 at r3134; linear_combination r3134), (by unfold Seg11.relationRow3135 at r3135; linear_combination r3135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg59
    refine ⟨rho 4756, rho 4757, rho 4758, rho 4759, rho 4760,
      (by unfold Seg11.relationRow3136 at r3136; linear_combination r3136), (by unfold Seg11.relationRow3137 at r3137; linear_combination r3137), (by unfold Seg11.relationRow3138 at r3138; linear_combination r3138), (by unfold Seg11.relationRow3139 at r3139; linear_combination r3139), (by unfold Seg11.relationRow3140 at r3140; linear_combination r3140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg60
    refine ⟨rho 4761, rho 4762, rho 4763, rho 4764, rho 4765,
      (by unfold Seg11.relationRow3141 at r3141; linear_combination r3141), (by unfold Seg11.relationRow3142 at r3142; linear_combination r3142), (by unfold Seg11.relationRow3143 at r3143; linear_combination r3143), (by unfold Seg11.relationRow3144 at r3144; linear_combination r3144), (by unfold Seg11.relationRow3145 at r3145; linear_combination r3145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg61
    refine ⟨rho 4766, rho 4767, rho 4768, rho 4769, rho 4770,
      (by unfold Seg11.relationRow3146 at r3146; linear_combination r3146), (by unfold Seg11.relationRow3147 at r3147; linear_combination r3147), (by unfold Seg11.relationRow3148 at r3148; linear_combination r3148), (by unfold Seg11.relationRow3149 at r3149; linear_combination r3149), (by unfold Seg11.relationRow3150 at r3150; linear_combination r3150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg62
    refine ⟨rho 4771, rho 4772, rho 4773, rho 4774, rho 4775,
      (by unfold Seg11.relationRow3151 at r3151; linear_combination r3151), (by unfold Seg11.relationRow3152 at r3152; linear_combination r3152), (by unfold Seg11.relationRow3153 at r3153; linear_combination r3153), (by unfold Seg11.relationRow3154 at r3154; linear_combination r3154), (by unfold Seg11.relationRow3155 at r3155; linear_combination r3155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg63
    refine ⟨rho 4776, rho 4777, rho 4778, rho 4779, rho 4780,
      (by unfold Seg11.relationRow3156 at r3156; linear_combination r3156), (by unfold Seg11.relationRow3157 at r3157; linear_combination r3157), (by unfold Seg11.relationRow3158 at r3158; linear_combination r3158), (by unfold Seg11.relationRow3159 at r3159; linear_combination r3159), (by unfold Seg11.relationRow3160 at r3160; linear_combination r3160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg64
    refine ⟨rho 4781, rho 4782, rho 4783, rho 4784, rho 4785,
      (by unfold Seg11.relationRow3161 at r3161; linear_combination r3161), (by unfold Seg11.relationRow3162 at r3162; linear_combination r3162), (by unfold Seg11.relationRow3163 at r3163; linear_combination r3163), (by unfold Seg11.relationRow3164 at r3164; linear_combination r3164), (by unfold Seg11.relationRow3165 at r3165; linear_combination r3165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg65
    refine ⟨rho 4786, rho 4787, rho 4788, rho 4789, rho 4790,
      (by unfold Seg11.relationRow3166 at r3166; linear_combination r3166), (by unfold Seg11.relationRow3167 at r3167; linear_combination r3167), (by unfold Seg11.relationRow3168 at r3168; linear_combination r3168), (by unfold Seg11.relationRow3169 at r3169; linear_combination r3169), (by unfold Seg11.relationRow3170 at r3170; linear_combination r3170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg66
    refine ⟨rho 4791, rho 4792, rho 4793, rho 4794, rho 4795,
      (by unfold Seg11.relationRow3171 at r3171; linear_combination r3171), (by unfold Seg11.relationRow3172 at r3172; linear_combination r3172), (by unfold Seg11.relationRow3173 at r3173; linear_combination r3173), (by unfold Seg11.relationRow3174 at r3174; linear_combination r3174), (by unfold Seg11.relationRow3175 at r3175; linear_combination r3175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg67
    refine ⟨rho 4796, rho 4797, rho 4798, rho 4799, rho 4800,
      (by unfold Seg11.relationRow3176 at r3176; linear_combination r3176), (by unfold Seg11.relationRow3177 at r3177; linear_combination r3177), (by unfold Seg11.relationRow3178 at r3178; linear_combination r3178), (by unfold Seg11.relationRow3179 at r3179; linear_combination r3179), (by unfold Seg11.relationRow3180 at r3180; linear_combination r3180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg68
    refine ⟨rho 4801, rho 4802, rho 4803, rho 4804, rho 4805,
      (by unfold Seg11.relationRow3181 at r3181; linear_combination r3181), (by unfold Seg11.relationRow3182 at r3182; linear_combination r3182), (by unfold Seg11.relationRow3183 at r3183; linear_combination r3183), (by unfold Seg11.relationRow3184 at r3184; linear_combination r3184), (by unfold Seg11.relationRow3185 at r3185; linear_combination r3185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg69
    refine ⟨rho 4806, rho 4807, rho 4808, rho 4809, rho 4810,
      (by unfold Seg11.relationRow3186 at r3186; linear_combination r3186), (by unfold Seg11.relationRow3187 at r3187; linear_combination r3187), (by unfold Seg11.relationRow3188 at r3188; linear_combination r3188), (by unfold Seg11.relationRow3189 at r3189; linear_combination r3189), (by unfold Seg11.relationRow3190 at r3190; linear_combination r3190), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.relation_sound_permSpec (rho 73) (rho 74) (rho 75) (rho 4455) (rho 4456) (rho 4457) (rho 4458) (rho 4459) (rho 4460) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.tctNode8DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.F) + (8 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg11ScpNode7Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode7.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

