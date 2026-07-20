import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node1_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r907 : Seg28.relationRow907 rho)
    (r908 : Seg28.relationRow908 rho)
    (r909 : Seg28.relationRow909 rho)
    (r910 : Seg28.relationRow910 rho)
    (r911 : Seg28.relationRow911 rho)
    (tail : next (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg50 (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) next := by
  exact ⟨rho 20291, rho 20292, rho 20293, rho 20294, rho 20295, r907, r908, r909, r910, r911, tail⟩

theorem seg28_scp_node1_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r912 : Seg28.relationRow912 rho)
    (r913 : Seg28.relationRow913 rho)
    (r914 : Seg28.relationRow914 rho)
    (r915 : Seg28.relationRow915 rho)
    (r916 : Seg28.relationRow916 rho)
    (tail : next (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) (rho 20300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg51 (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) next := by
  exact ⟨rho 20296, rho 20297, rho 20298, rho 20299, rho 20300, r912, r913, r914, r915, r916, tail⟩

theorem seg28_scp_node1_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r917 : Seg28.relationRow917 rho)
    (r918 : Seg28.relationRow918 rho)
    (r919 : Seg28.relationRow919 rho)
    (r920 : Seg28.relationRow920 rho)
    (r921 : Seg28.relationRow921 rho)
    (tail : next (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) (rho 20300) (rho 20305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg52 (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) (rho 20300) next := by
  exact ⟨rho 20301, rho 20302, rho 20303, rho 20304, rho 20305, r917, r918, r919, r920, r921, tail⟩

theorem seg28_scp_node1_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r922 : Seg28.relationRow922 rho)
    (r923 : Seg28.relationRow923 rho)
    (r924 : Seg28.relationRow924 rho)
    (r925 : Seg28.relationRow925 rho)
    (r926 : Seg28.relationRow926 rho)
    (tail : next (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) (rho 20300) (rho 20305) (rho 20310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg53 (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) (rho 20300) (rho 20305) next := by
  exact ⟨rho 20306, rho 20307, rho 20308, rho 20309, rho 20310, r922, r923, r924, r925, r926, tail⟩

theorem seg28_scp_node1_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r927 : Seg28.relationRow927 rho)
    (r928 : Seg28.relationRow928 rho)
    (r929 : Seg28.relationRow929 rho)
    (r930 : Seg28.relationRow930 rho)
    (r931 : Seg28.relationRow931 rho)
    (tail : next (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg54 (rho 20115) (rho 20120) (rho 20125) (rho 20130) (rho 20135) (rho 20140) (rho 20145) (rho 20150) (rho 20155) (rho 20160) (rho 20165) (rho 20170) (rho 20175) (rho 20180) (rho 20185) (rho 20190) (rho 20195) (rho 20200) (rho 20205) (rho 20210) (rho 20215) (rho 20220) (rho 20225) (rho 20230) (rho 20235) (rho 20240) (rho 20245) (rho 20250) (rho 20255) (rho 20260) (rho 20265) (rho 20270) (rho 20275) (rho 20280) (rho 20285) (rho 20290) (rho 20295) (rho 20300) (rho 20305) (rho 20310) next := by
  exact ⟨rho 20311, rho 20312, rho 20313, rho 20314, rho 20315, r927, r928, r929, r930, r931, tail⟩

theorem seg28_scp_node1_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r932 : Seg28.relationRow932 rho)
    (r933 : Seg28.relationRow933 rho)
    (r934 : Seg28.relationRow934 rho)
    (r935 : Seg28.relationRow935 rho)
    (r936 : Seg28.relationRow936 rho)
    (tail : next (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg55 (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) next := by
  exact ⟨rho 20316, rho 20317, rho 20318, rho 20319, rho 20320, r932, r933, r934, r935, r936, tail⟩

theorem seg28_scp_node1_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r937 : Seg28.relationRow937 rho)
    (r938 : Seg28.relationRow938 rho)
    (r939 : Seg28.relationRow939 rho)
    (r940 : Seg28.relationRow940 rho)
    (r941 : Seg28.relationRow941 rho)
    (tail : next (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) (rho 20325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg56 (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) next := by
  exact ⟨rho 20321, rho 20322, rho 20323, rho 20324, rho 20325, r937, r938, r939, r940, r941, tail⟩

theorem seg28_scp_node1_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r942 : Seg28.relationRow942 rho)
    (r943 : Seg28.relationRow943 rho)
    (r944 : Seg28.relationRow944 rho)
    (r945 : Seg28.relationRow945 rho)
    (r946 : Seg28.relationRow946 rho)
    (tail : next (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) (rho 20325) (rho 20330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg57 (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) (rho 20325) next := by
  exact ⟨rho 20326, rho 20327, rho 20328, rho 20329, rho 20330, r942, r943, r944, r945, r946, tail⟩

theorem seg28_scp_node1_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r947 : Seg28.relationRow947 rho)
    (r948 : Seg28.relationRow948 rho)
    (r949 : Seg28.relationRow949 rho)
    (r950 : Seg28.relationRow950 rho)
    (r951 : Seg28.relationRow951 rho)
    (tail : next (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) (rho 20325) (rho 20330) (rho 20335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg58 (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) (rho 20325) (rho 20330) next := by
  exact ⟨rho 20331, rho 20332, rho 20333, rho 20334, rho 20335, r947, r948, r949, r950, r951, tail⟩

theorem seg28_scp_node1_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r952 : Seg28.relationRow952 rho)
    (r953 : Seg28.relationRow953 rho)
    (r954 : Seg28.relationRow954 rho)
    (r955 : Seg28.relationRow955 rho)
    (r956 : Seg28.relationRow956 rho)
    (tail : next (rho 20320) (rho 20325) (rho 20330) (rho 20335) (rho 20340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg59 (rho 20295) (rho 20300) (rho 20305) (rho 20310) (rho 20315) (rho 20320) (rho 20325) (rho 20330) (rho 20335) next := by
  exact ⟨rho 20336, rho 20337, rho 20338, rho 20339, rho 20340, r952, r953, r954, r955, r956, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

