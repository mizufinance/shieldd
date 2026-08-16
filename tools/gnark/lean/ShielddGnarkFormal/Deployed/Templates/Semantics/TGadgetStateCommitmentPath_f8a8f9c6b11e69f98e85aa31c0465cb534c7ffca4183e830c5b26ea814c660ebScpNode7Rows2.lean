import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2941 rho)
    (r2942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2942 rho)
    (r2943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2943 rho)
    (r2944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2944 rho)
    (r2945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2945 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg20 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) next := by
  exact ⟨rho 2935, rho 2936, rho 2937, rho 2938, rho 2939, r2941, r2942, r2943, r2944, r2945, tail⟩

theorem template_scp_node7_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2946 rho)
    (r2947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2947 rho)
    (r2948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2948 rho)
    (r2949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2949 rho)
    (r2950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2950 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg21 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) next := by
  exact ⟨rho 2940, rho 2941, rho 2942, rho 2943, rho 2944, r2946, r2947, r2948, r2949, r2950, tail⟩

theorem template_scp_node7_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2951 rho)
    (r2952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2952 rho)
    (r2953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2953 rho)
    (r2954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2954 rho)
    (r2955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2955 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg22 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) next := by
  exact ⟨rho 2945, rho 2946, rho 2947, rho 2948, rho 2949, r2951, r2952, r2953, r2954, r2955, tail⟩

theorem template_scp_node7_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r2956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2956 rho)
    (r2957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2957 rho)
    (r2958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2958 rho)
    (r2959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2959 rho)
    (r2960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2960 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg23 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) next := by
  exact ⟨rho 2950, rho 2951, rho 2952, rho 2953, rho 2954, r2956, r2957, r2958, r2959, r2960, tail⟩

theorem template_scp_node7_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2961 rho)
    (r2962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2962 rho)
    (r2963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2963 rho)
    (r2964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2964 rho)
    (r2965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2965 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg24 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) next := by
  exact ⟨rho 2955, rho 2956, rho 2957, rho 2958, rho 2959, r2961, r2962, r2963, r2964, r2965, tail⟩

theorem template_scp_node7_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2966 rho)
    (r2967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2967 rho)
    (r2968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2968 rho)
    (r2969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2969 rho)
    (r2970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2970 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg25 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) next := by
  exact ⟨rho 2960, rho 2961, rho 2962, rho 2963, rho 2964, r2966, r2967, r2968, r2969, r2970, tail⟩

theorem template_scp_node7_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2971 rho)
    (r2972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2972 rho)
    (r2973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2973 rho)
    (r2974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2974 rho)
    (r2975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2975 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg26 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) next := by
  exact ⟨rho 2965, rho 2966, rho 2967, rho 2968, rho 2969, r2971, r2972, r2973, r2974, r2975, tail⟩

theorem template_scp_node7_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2976 rho)
    (r2977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2977 rho)
    (r2978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2978 rho)
    (r2979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2979 rho)
    (r2980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2980 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969) (rho 2974)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg27 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969) next := by
  exact ⟨rho 2970, rho 2971, rho 2972, rho 2973, rho 2974, r2976, r2977, r2978, r2979, r2980, tail⟩

theorem template_scp_node7_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2981 rho)
    (r2982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2982 rho)
    (r2983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2983 rho)
    (r2984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2984 rho)
    (r2985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2985 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969) (rho 2974) (rho 2979)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg28 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969) (rho 2974) next := by
  exact ⟨rho 2975, rho 2976, rho 2977, rho 2978, rho 2979, r2981, r2982, r2983, r2984, r2985, tail⟩

theorem template_scp_node7_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2986 rho)
    (r2987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2987 rho)
    (r2988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2988 rho)
    (r2989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2989 rho)
    (r2990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2990 rho)
    (tail : next (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969) (rho 2974) (rho 2979) (rho 2984)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg29 (rho 2909) (rho 2914) (rho 2919) (rho 2924) (rho 2929) (rho 2934) (rho 2939) (rho 2944) (rho 2949) (rho 2954) (rho 2959) (rho 2964) (rho 2969) (rho 2974) (rho 2979) next := by
  exact ⟨rho 2980, rho 2981, rho 2982, rho 2983, rho 2984, r2986, r2987, r2988, r2989, r2990, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
