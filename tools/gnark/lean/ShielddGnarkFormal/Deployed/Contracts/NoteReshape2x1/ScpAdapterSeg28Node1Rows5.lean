import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3

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
    (tail : next (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg50 (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) next := by
  exact ⟨rho 20297, rho 20298, rho 20299, rho 20300, rho 20301, r907, r908, r909, r910, r911, tail⟩

theorem seg28_scp_node1_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r912 : Seg28.relationRow912 rho)
    (r913 : Seg28.relationRow913 rho)
    (r914 : Seg28.relationRow914 rho)
    (r915 : Seg28.relationRow915 rho)
    (r916 : Seg28.relationRow916 rho)
    (tail : next (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) (rho 20306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg51 (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) next := by
  exact ⟨rho 20302, rho 20303, rho 20304, rho 20305, rho 20306, r912, r913, r914, r915, r916, tail⟩

theorem seg28_scp_node1_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r917 : Seg28.relationRow917 rho)
    (r918 : Seg28.relationRow918 rho)
    (r919 : Seg28.relationRow919 rho)
    (r920 : Seg28.relationRow920 rho)
    (r921 : Seg28.relationRow921 rho)
    (tail : next (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) (rho 20306) (rho 20311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg52 (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) (rho 20306) next := by
  exact ⟨rho 20307, rho 20308, rho 20309, rho 20310, rho 20311, r917, r918, r919, r920, r921, tail⟩

theorem seg28_scp_node1_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r922 : Seg28.relationRow922 rho)
    (r923 : Seg28.relationRow923 rho)
    (r924 : Seg28.relationRow924 rho)
    (r925 : Seg28.relationRow925 rho)
    (r926 : Seg28.relationRow926 rho)
    (tail : next (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) (rho 20306) (rho 20311) (rho 20316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg53 (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) (rho 20306) (rho 20311) next := by
  exact ⟨rho 20312, rho 20313, rho 20314, rho 20315, rho 20316, r922, r923, r924, r925, r926, tail⟩

theorem seg28_scp_node1_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r927 : Seg28.relationRow927 rho)
    (r928 : Seg28.relationRow928 rho)
    (r929 : Seg28.relationRow929 rho)
    (r930 : Seg28.relationRow930 rho)
    (r931 : Seg28.relationRow931 rho)
    (tail : next (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg54 (rho 20121) (rho 20126) (rho 20131) (rho 20136) (rho 20141) (rho 20146) (rho 20151) (rho 20156) (rho 20161) (rho 20166) (rho 20171) (rho 20176) (rho 20181) (rho 20186) (rho 20191) (rho 20196) (rho 20201) (rho 20206) (rho 20211) (rho 20216) (rho 20221) (rho 20226) (rho 20231) (rho 20236) (rho 20241) (rho 20246) (rho 20251) (rho 20256) (rho 20261) (rho 20266) (rho 20271) (rho 20276) (rho 20281) (rho 20286) (rho 20291) (rho 20296) (rho 20301) (rho 20306) (rho 20311) (rho 20316) next := by
  exact ⟨rho 20317, rho 20318, rho 20319, rho 20320, rho 20321, r927, r928, r929, r930, r931, tail⟩

theorem seg28_scp_node1_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r932 : Seg28.relationRow932 rho)
    (r933 : Seg28.relationRow933 rho)
    (r934 : Seg28.relationRow934 rho)
    (r935 : Seg28.relationRow935 rho)
    (r936 : Seg28.relationRow936 rho)
    (tail : next (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg55 (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) next := by
  exact ⟨rho 20322, rho 20323, rho 20324, rho 20325, rho 20326, r932, r933, r934, r935, r936, tail⟩

theorem seg28_scp_node1_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r937 : Seg28.relationRow937 rho)
    (r938 : Seg28.relationRow938 rho)
    (r939 : Seg28.relationRow939 rho)
    (r940 : Seg28.relationRow940 rho)
    (r941 : Seg28.relationRow941 rho)
    (tail : next (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) (rho 20331)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg56 (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) next := by
  exact ⟨rho 20327, rho 20328, rho 20329, rho 20330, rho 20331, r937, r938, r939, r940, r941, tail⟩

theorem seg28_scp_node1_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r942 : Seg28.relationRow942 rho)
    (r943 : Seg28.relationRow943 rho)
    (r944 : Seg28.relationRow944 rho)
    (r945 : Seg28.relationRow945 rho)
    (r946 : Seg28.relationRow946 rho)
    (tail : next (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) (rho 20331) (rho 20336)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg57 (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) (rho 20331) next := by
  exact ⟨rho 20332, rho 20333, rho 20334, rho 20335, rho 20336, r942, r943, r944, r945, r946, tail⟩

theorem seg28_scp_node1_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r947 : Seg28.relationRow947 rho)
    (r948 : Seg28.relationRow948 rho)
    (r949 : Seg28.relationRow949 rho)
    (r950 : Seg28.relationRow950 rho)
    (r951 : Seg28.relationRow951 rho)
    (tail : next (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) (rho 20331) (rho 20336) (rho 20341)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg58 (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) (rho 20331) (rho 20336) next := by
  exact ⟨rho 20337, rho 20338, rho 20339, rho 20340, rho 20341, r947, r948, r949, r950, r951, tail⟩

theorem seg28_scp_node1_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r952 : Seg28.relationRow952 rho)
    (r953 : Seg28.relationRow953 rho)
    (r954 : Seg28.relationRow954 rho)
    (r955 : Seg28.relationRow955 rho)
    (r956 : Seg28.relationRow956 rho)
    (tail : next (rho 20326) (rho 20331) (rho 20336) (rho 20341) (rho 20346)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg59 (rho 20301) (rho 20306) (rho 20311) (rho 20316) (rho 20321) (rho 20326) (rho 20331) (rho 20336) (rho 20341) next := by
  exact ⟨rho 20342, rho 20343, rho 20344, rho 20345, rho 20346, r952, r953, r954, r955, r956, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

