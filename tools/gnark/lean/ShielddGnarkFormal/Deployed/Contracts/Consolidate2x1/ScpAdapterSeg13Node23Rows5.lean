import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node23_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8915 : Seg13.relationRow8915 rho)
    (r8916 : Seg13.relationRow8916 rho)
    (r8917 : Seg13.relationRow8917 rho)
    (r8918 : Seg13.relationRow8918 rho)
    (r8919 : Seg13.relationRow8919 rho)
    (tail : next (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg50 (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) next := by
  exact ⟨rho 16036, rho 16037, rho 16038, rho 16039, rho 16040, r8915, r8916, r8917, r8918, r8919, tail⟩

theorem seg13_scp_node23_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8920 : Seg13.relationRow8920 rho)
    (r8921 : Seg13.relationRow8921 rho)
    (r8922 : Seg13.relationRow8922 rho)
    (r8923 : Seg13.relationRow8923 rho)
    (r8924 : Seg13.relationRow8924 rho)
    (tail : next (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) (rho 16045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg51 (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) next := by
  exact ⟨rho 16041, rho 16042, rho 16043, rho 16044, rho 16045, r8920, r8921, r8922, r8923, r8924, tail⟩

theorem seg13_scp_node23_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8925 : Seg13.relationRow8925 rho)
    (r8926 : Seg13.relationRow8926 rho)
    (r8927 : Seg13.relationRow8927 rho)
    (r8928 : Seg13.relationRow8928 rho)
    (r8929 : Seg13.relationRow8929 rho)
    (tail : next (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) (rho 16045) (rho 16050)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg52 (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) (rho 16045) next := by
  exact ⟨rho 16046, rho 16047, rho 16048, rho 16049, rho 16050, r8925, r8926, r8927, r8928, r8929, tail⟩

theorem seg13_scp_node23_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8930 : Seg13.relationRow8930 rho)
    (r8931 : Seg13.relationRow8931 rho)
    (r8932 : Seg13.relationRow8932 rho)
    (r8933 : Seg13.relationRow8933 rho)
    (r8934 : Seg13.relationRow8934 rho)
    (tail : next (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) (rho 16045) (rho 16050) (rho 16055)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg53 (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) (rho 16045) (rho 16050) next := by
  exact ⟨rho 16051, rho 16052, rho 16053, rho 16054, rho 16055, r8930, r8931, r8932, r8933, r8934, tail⟩

theorem seg13_scp_node23_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8935 : Seg13.relationRow8935 rho)
    (r8936 : Seg13.relationRow8936 rho)
    (r8937 : Seg13.relationRow8937 rho)
    (r8938 : Seg13.relationRow8938 rho)
    (r8939 : Seg13.relationRow8939 rho)
    (tail : next (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg54 (rho 15860) (rho 15865) (rho 15870) (rho 15875) (rho 15880) (rho 15885) (rho 15890) (rho 15895) (rho 15900) (rho 15905) (rho 15910) (rho 15915) (rho 15920) (rho 15925) (rho 15930) (rho 15935) (rho 15940) (rho 15945) (rho 15950) (rho 15955) (rho 15960) (rho 15965) (rho 15970) (rho 15975) (rho 15980) (rho 15985) (rho 15990) (rho 15995) (rho 16000) (rho 16005) (rho 16010) (rho 16015) (rho 16020) (rho 16025) (rho 16030) (rho 16035) (rho 16040) (rho 16045) (rho 16050) (rho 16055) next := by
  exact ⟨rho 16056, rho 16057, rho 16058, rho 16059, rho 16060, r8935, r8936, r8937, r8938, r8939, tail⟩

theorem seg13_scp_node23_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8940 : Seg13.relationRow8940 rho)
    (r8941 : Seg13.relationRow8941 rho)
    (r8942 : Seg13.relationRow8942 rho)
    (r8943 : Seg13.relationRow8943 rho)
    (r8944 : Seg13.relationRow8944 rho)
    (tail : next (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg55 (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) next := by
  exact ⟨rho 16061, rho 16062, rho 16063, rho 16064, rho 16065, r8940, r8941, r8942, r8943, r8944, tail⟩

theorem seg13_scp_node23_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8945 : Seg13.relationRow8945 rho)
    (r8946 : Seg13.relationRow8946 rho)
    (r8947 : Seg13.relationRow8947 rho)
    (r8948 : Seg13.relationRow8948 rho)
    (r8949 : Seg13.relationRow8949 rho)
    (tail : next (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) (rho 16070)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg56 (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) next := by
  exact ⟨rho 16066, rho 16067, rho 16068, rho 16069, rho 16070, r8945, r8946, r8947, r8948, r8949, tail⟩

theorem seg13_scp_node23_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8950 : Seg13.relationRow8950 rho)
    (r8951 : Seg13.relationRow8951 rho)
    (r8952 : Seg13.relationRow8952 rho)
    (r8953 : Seg13.relationRow8953 rho)
    (r8954 : Seg13.relationRow8954 rho)
    (tail : next (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) (rho 16070) (rho 16075)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg57 (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) (rho 16070) next := by
  exact ⟨rho 16071, rho 16072, rho 16073, rho 16074, rho 16075, r8950, r8951, r8952, r8953, r8954, tail⟩

theorem seg13_scp_node23_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8955 : Seg13.relationRow8955 rho)
    (r8956 : Seg13.relationRow8956 rho)
    (r8957 : Seg13.relationRow8957 rho)
    (r8958 : Seg13.relationRow8958 rho)
    (r8959 : Seg13.relationRow8959 rho)
    (tail : next (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) (rho 16070) (rho 16075) (rho 16080)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg58 (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) (rho 16070) (rho 16075) next := by
  exact ⟨rho 16076, rho 16077, rho 16078, rho 16079, rho 16080, r8955, r8956, r8957, r8958, r8959, tail⟩

theorem seg13_scp_node23_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8960 : Seg13.relationRow8960 rho)
    (r8961 : Seg13.relationRow8961 rho)
    (r8962 : Seg13.relationRow8962 rho)
    (r8963 : Seg13.relationRow8963 rho)
    (r8964 : Seg13.relationRow8964 rho)
    (tail : next (rho 16065) (rho 16070) (rho 16075) (rho 16080) (rho 16085)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg59 (rho 16040) (rho 16045) (rho 16050) (rho 16055) (rho 16060) (rho 16065) (rho 16070) (rho 16075) (rho 16080) next := by
  exact ⟨rho 16081, rho 16082, rho 16083, rho 16084, rho 16085, r8960, r8961, r8962, r8963, r8964, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

