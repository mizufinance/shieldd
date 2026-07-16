import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node12_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4911 : Seg13.relationRow4911 rho)
    (r4912 : Seg13.relationRow4912 rho)
    (r4913 : Seg13.relationRow4913 rho)
    (r4914 : Seg13.relationRow4914 rho)
    (r4915 : Seg13.relationRow4915 rho)
    (tail : next (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg50 (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) next := by
  exact ⟨rho 12076, rho 12077, rho 12078, rho 12079, rho 12080, r4911, r4912, r4913, r4914, r4915, tail⟩

theorem seg13_scp_node12_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4916 : Seg13.relationRow4916 rho)
    (r4917 : Seg13.relationRow4917 rho)
    (r4918 : Seg13.relationRow4918 rho)
    (r4919 : Seg13.relationRow4919 rho)
    (r4920 : Seg13.relationRow4920 rho)
    (tail : next (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) (rho 12085)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg51 (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) next := by
  exact ⟨rho 12081, rho 12082, rho 12083, rho 12084, rho 12085, r4916, r4917, r4918, r4919, r4920, tail⟩

theorem seg13_scp_node12_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4921 : Seg13.relationRow4921 rho)
    (r4922 : Seg13.relationRow4922 rho)
    (r4923 : Seg13.relationRow4923 rho)
    (r4924 : Seg13.relationRow4924 rho)
    (r4925 : Seg13.relationRow4925 rho)
    (tail : next (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) (rho 12085) (rho 12090)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg52 (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) (rho 12085) next := by
  exact ⟨rho 12086, rho 12087, rho 12088, rho 12089, rho 12090, r4921, r4922, r4923, r4924, r4925, tail⟩

theorem seg13_scp_node12_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4926 : Seg13.relationRow4926 rho)
    (r4927 : Seg13.relationRow4927 rho)
    (r4928 : Seg13.relationRow4928 rho)
    (r4929 : Seg13.relationRow4929 rho)
    (r4930 : Seg13.relationRow4930 rho)
    (tail : next (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) (rho 12085) (rho 12090) (rho 12095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg53 (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) (rho 12085) (rho 12090) next := by
  exact ⟨rho 12091, rho 12092, rho 12093, rho 12094, rho 12095, r4926, r4927, r4928, r4929, r4930, tail⟩

theorem seg13_scp_node12_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4931 : Seg13.relationRow4931 rho)
    (r4932 : Seg13.relationRow4932 rho)
    (r4933 : Seg13.relationRow4933 rho)
    (r4934 : Seg13.relationRow4934 rho)
    (r4935 : Seg13.relationRow4935 rho)
    (tail : next (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg54 (rho 11900) (rho 11905) (rho 11910) (rho 11915) (rho 11920) (rho 11925) (rho 11930) (rho 11935) (rho 11940) (rho 11945) (rho 11950) (rho 11955) (rho 11960) (rho 11965) (rho 11970) (rho 11975) (rho 11980) (rho 11985) (rho 11990) (rho 11995) (rho 12000) (rho 12005) (rho 12010) (rho 12015) (rho 12020) (rho 12025) (rho 12030) (rho 12035) (rho 12040) (rho 12045) (rho 12050) (rho 12055) (rho 12060) (rho 12065) (rho 12070) (rho 12075) (rho 12080) (rho 12085) (rho 12090) (rho 12095) next := by
  exact ⟨rho 12096, rho 12097, rho 12098, rho 12099, rho 12100, r4931, r4932, r4933, r4934, r4935, tail⟩

theorem seg13_scp_node12_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4936 : Seg13.relationRow4936 rho)
    (r4937 : Seg13.relationRow4937 rho)
    (r4938 : Seg13.relationRow4938 rho)
    (r4939 : Seg13.relationRow4939 rho)
    (r4940 : Seg13.relationRow4940 rho)
    (tail : next (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg55 (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) next := by
  exact ⟨rho 12101, rho 12102, rho 12103, rho 12104, rho 12105, r4936, r4937, r4938, r4939, r4940, tail⟩

theorem seg13_scp_node12_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4941 : Seg13.relationRow4941 rho)
    (r4942 : Seg13.relationRow4942 rho)
    (r4943 : Seg13.relationRow4943 rho)
    (r4944 : Seg13.relationRow4944 rho)
    (r4945 : Seg13.relationRow4945 rho)
    (tail : next (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) (rho 12110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg56 (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) next := by
  exact ⟨rho 12106, rho 12107, rho 12108, rho 12109, rho 12110, r4941, r4942, r4943, r4944, r4945, tail⟩

theorem seg13_scp_node12_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4946 : Seg13.relationRow4946 rho)
    (r4947 : Seg13.relationRow4947 rho)
    (r4948 : Seg13.relationRow4948 rho)
    (r4949 : Seg13.relationRow4949 rho)
    (r4950 : Seg13.relationRow4950 rho)
    (tail : next (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) (rho 12110) (rho 12115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg57 (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) (rho 12110) next := by
  exact ⟨rho 12111, rho 12112, rho 12113, rho 12114, rho 12115, r4946, r4947, r4948, r4949, r4950, tail⟩

theorem seg13_scp_node12_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4951 : Seg13.relationRow4951 rho)
    (r4952 : Seg13.relationRow4952 rho)
    (r4953 : Seg13.relationRow4953 rho)
    (r4954 : Seg13.relationRow4954 rho)
    (r4955 : Seg13.relationRow4955 rho)
    (tail : next (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) (rho 12110) (rho 12115) (rho 12120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg58 (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) (rho 12110) (rho 12115) next := by
  exact ⟨rho 12116, rho 12117, rho 12118, rho 12119, rho 12120, r4951, r4952, r4953, r4954, r4955, tail⟩

theorem seg13_scp_node12_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4956 : Seg13.relationRow4956 rho)
    (r4957 : Seg13.relationRow4957 rho)
    (r4958 : Seg13.relationRow4958 rho)
    (r4959 : Seg13.relationRow4959 rho)
    (r4960 : Seg13.relationRow4960 rho)
    (tail : next (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg59 (rho 12080) (rho 12085) (rho 12090) (rho 12095) (rho 12100) (rho 12105) (rho 12110) (rho 12115) (rho 12120) next := by
  exact ⟨rho 12121, rho 12122, rho 12123, rho 12124, rho 12125, r4956, r4957, r4958, r4959, r4960, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

