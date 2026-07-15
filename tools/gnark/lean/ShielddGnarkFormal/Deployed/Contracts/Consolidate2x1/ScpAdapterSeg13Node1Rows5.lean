import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node1_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r907 : Seg13.relationRow907 rho)
    (r908 : Seg13.relationRow908 rho)
    (r909 : Seg13.relationRow909 rho)
    (r910 : Seg13.relationRow910 rho)
    (r911 : Seg13.relationRow911 rho)
    (tail : next (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg50 (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) next := by
  exact ⟨rho 8116, rho 8117, rho 8118, rho 8119, rho 8120, r907, r908, r909, r910, r911, tail⟩

theorem seg13_scp_node1_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r912 : Seg13.relationRow912 rho)
    (r913 : Seg13.relationRow913 rho)
    (r914 : Seg13.relationRow914 rho)
    (r915 : Seg13.relationRow915 rho)
    (r916 : Seg13.relationRow916 rho)
    (tail : next (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) (rho 8125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg51 (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) next := by
  exact ⟨rho 8121, rho 8122, rho 8123, rho 8124, rho 8125, r912, r913, r914, r915, r916, tail⟩

theorem seg13_scp_node1_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r917 : Seg13.relationRow917 rho)
    (r918 : Seg13.relationRow918 rho)
    (r919 : Seg13.relationRow919 rho)
    (r920 : Seg13.relationRow920 rho)
    (r921 : Seg13.relationRow921 rho)
    (tail : next (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) (rho 8125) (rho 8130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg52 (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) (rho 8125) next := by
  exact ⟨rho 8126, rho 8127, rho 8128, rho 8129, rho 8130, r917, r918, r919, r920, r921, tail⟩

theorem seg13_scp_node1_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r922 : Seg13.relationRow922 rho)
    (r923 : Seg13.relationRow923 rho)
    (r924 : Seg13.relationRow924 rho)
    (r925 : Seg13.relationRow925 rho)
    (r926 : Seg13.relationRow926 rho)
    (tail : next (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) (rho 8125) (rho 8130) (rho 8135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg53 (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) (rho 8125) (rho 8130) next := by
  exact ⟨rho 8131, rho 8132, rho 8133, rho 8134, rho 8135, r922, r923, r924, r925, r926, tail⟩

theorem seg13_scp_node1_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r927 : Seg13.relationRow927 rho)
    (r928 : Seg13.relationRow928 rho)
    (r929 : Seg13.relationRow929 rho)
    (r930 : Seg13.relationRow930 rho)
    (r931 : Seg13.relationRow931 rho)
    (tail : next (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg54 (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965) (rho 7970) (rho 7975) (rho 7980) (rho 7985) (rho 7990) (rho 7995) (rho 8000) (rho 8005) (rho 8010) (rho 8015) (rho 8020) (rho 8025) (rho 8030) (rho 8035) (rho 8040) (rho 8045) (rho 8050) (rho 8055) (rho 8060) (rho 8065) (rho 8070) (rho 8075) (rho 8080) (rho 8085) (rho 8090) (rho 8095) (rho 8100) (rho 8105) (rho 8110) (rho 8115) (rho 8120) (rho 8125) (rho 8130) (rho 8135) next := by
  exact ⟨rho 8136, rho 8137, rho 8138, rho 8139, rho 8140, r927, r928, r929, r930, r931, tail⟩

theorem seg13_scp_node1_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r932 : Seg13.relationRow932 rho)
    (r933 : Seg13.relationRow933 rho)
    (r934 : Seg13.relationRow934 rho)
    (r935 : Seg13.relationRow935 rho)
    (r936 : Seg13.relationRow936 rho)
    (tail : next (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg55 (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) next := by
  exact ⟨rho 8141, rho 8142, rho 8143, rho 8144, rho 8145, r932, r933, r934, r935, r936, tail⟩

theorem seg13_scp_node1_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r937 : Seg13.relationRow937 rho)
    (r938 : Seg13.relationRow938 rho)
    (r939 : Seg13.relationRow939 rho)
    (r940 : Seg13.relationRow940 rho)
    (r941 : Seg13.relationRow941 rho)
    (tail : next (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) (rho 8150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg56 (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) next := by
  exact ⟨rho 8146, rho 8147, rho 8148, rho 8149, rho 8150, r937, r938, r939, r940, r941, tail⟩

theorem seg13_scp_node1_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r942 : Seg13.relationRow942 rho)
    (r943 : Seg13.relationRow943 rho)
    (r944 : Seg13.relationRow944 rho)
    (r945 : Seg13.relationRow945 rho)
    (r946 : Seg13.relationRow946 rho)
    (tail : next (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) (rho 8150) (rho 8155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg57 (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) (rho 8150) next := by
  exact ⟨rho 8151, rho 8152, rho 8153, rho 8154, rho 8155, r942, r943, r944, r945, r946, tail⟩

theorem seg13_scp_node1_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r947 : Seg13.relationRow947 rho)
    (r948 : Seg13.relationRow948 rho)
    (r949 : Seg13.relationRow949 rho)
    (r950 : Seg13.relationRow950 rho)
    (r951 : Seg13.relationRow951 rho)
    (tail : next (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) (rho 8150) (rho 8155) (rho 8160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg58 (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) (rho 8150) (rho 8155) next := by
  exact ⟨rho 8156, rho 8157, rho 8158, rho 8159, rho 8160, r947, r948, r949, r950, r951, tail⟩

theorem seg13_scp_node1_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r952 : Seg13.relationRow952 rho)
    (r953 : Seg13.relationRow953 rho)
    (r954 : Seg13.relationRow954 rho)
    (r955 : Seg13.relationRow955 rho)
    (r956 : Seg13.relationRow956 rho)
    (tail : next (rho 8145) (rho 8150) (rho 8155) (rho 8160) (rho 8165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg59 (rho 8120) (rho 8125) (rho 8130) (rho 8135) (rho 8140) (rho 8145) (rho 8150) (rho 8155) (rho 8160) next := by
  exact ⟨rho 8161, rho 8162, rho 8163, rho 8164, rho 8165, r952, r953, r954, r955, r956, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

