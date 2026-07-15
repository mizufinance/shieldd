import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node23_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8915 : Seg28.relationRow8915 rho)
    (r8916 : Seg28.relationRow8916 rho)
    (r8917 : Seg28.relationRow8917 rho)
    (r8918 : Seg28.relationRow8918 rho)
    (r8919 : Seg28.relationRow8919 rho)
    (tail : next (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg50 (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) next := by
  exact ⟨rho 28217, rho 28218, rho 28219, rho 28220, rho 28221, r8915, r8916, r8917, r8918, r8919, tail⟩

theorem seg28_scp_node23_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8920 : Seg28.relationRow8920 rho)
    (r8921 : Seg28.relationRow8921 rho)
    (r8922 : Seg28.relationRow8922 rho)
    (r8923 : Seg28.relationRow8923 rho)
    (r8924 : Seg28.relationRow8924 rho)
    (tail : next (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) (rho 28226)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg51 (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) next := by
  exact ⟨rho 28222, rho 28223, rho 28224, rho 28225, rho 28226, r8920, r8921, r8922, r8923, r8924, tail⟩

theorem seg28_scp_node23_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8925 : Seg28.relationRow8925 rho)
    (r8926 : Seg28.relationRow8926 rho)
    (r8927 : Seg28.relationRow8927 rho)
    (r8928 : Seg28.relationRow8928 rho)
    (r8929 : Seg28.relationRow8929 rho)
    (tail : next (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) (rho 28226) (rho 28231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg52 (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) (rho 28226) next := by
  exact ⟨rho 28227, rho 28228, rho 28229, rho 28230, rho 28231, r8925, r8926, r8927, r8928, r8929, tail⟩

theorem seg28_scp_node23_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8930 : Seg28.relationRow8930 rho)
    (r8931 : Seg28.relationRow8931 rho)
    (r8932 : Seg28.relationRow8932 rho)
    (r8933 : Seg28.relationRow8933 rho)
    (r8934 : Seg28.relationRow8934 rho)
    (tail : next (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) (rho 28226) (rho 28231) (rho 28236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg53 (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) (rho 28226) (rho 28231) next := by
  exact ⟨rho 28232, rho 28233, rho 28234, rho 28235, rho 28236, r8930, r8931, r8932, r8933, r8934, tail⟩

theorem seg28_scp_node23_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8935 : Seg28.relationRow8935 rho)
    (r8936 : Seg28.relationRow8936 rho)
    (r8937 : Seg28.relationRow8937 rho)
    (r8938 : Seg28.relationRow8938 rho)
    (r8939 : Seg28.relationRow8939 rho)
    (tail : next (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg54 (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066) (rho 28071) (rho 28076) (rho 28081) (rho 28086) (rho 28091) (rho 28096) (rho 28101) (rho 28106) (rho 28111) (rho 28116) (rho 28121) (rho 28126) (rho 28131) (rho 28136) (rho 28141) (rho 28146) (rho 28151) (rho 28156) (rho 28161) (rho 28166) (rho 28171) (rho 28176) (rho 28181) (rho 28186) (rho 28191) (rho 28196) (rho 28201) (rho 28206) (rho 28211) (rho 28216) (rho 28221) (rho 28226) (rho 28231) (rho 28236) next := by
  exact ⟨rho 28237, rho 28238, rho 28239, rho 28240, rho 28241, r8935, r8936, r8937, r8938, r8939, tail⟩

theorem seg28_scp_node23_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8940 : Seg28.relationRow8940 rho)
    (r8941 : Seg28.relationRow8941 rho)
    (r8942 : Seg28.relationRow8942 rho)
    (r8943 : Seg28.relationRow8943 rho)
    (r8944 : Seg28.relationRow8944 rho)
    (tail : next (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg55 (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) next := by
  exact ⟨rho 28242, rho 28243, rho 28244, rho 28245, rho 28246, r8940, r8941, r8942, r8943, r8944, tail⟩

theorem seg28_scp_node23_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8945 : Seg28.relationRow8945 rho)
    (r8946 : Seg28.relationRow8946 rho)
    (r8947 : Seg28.relationRow8947 rho)
    (r8948 : Seg28.relationRow8948 rho)
    (r8949 : Seg28.relationRow8949 rho)
    (tail : next (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) (rho 28251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg56 (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) next := by
  exact ⟨rho 28247, rho 28248, rho 28249, rho 28250, rho 28251, r8945, r8946, r8947, r8948, r8949, tail⟩

theorem seg28_scp_node23_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8950 : Seg28.relationRow8950 rho)
    (r8951 : Seg28.relationRow8951 rho)
    (r8952 : Seg28.relationRow8952 rho)
    (r8953 : Seg28.relationRow8953 rho)
    (r8954 : Seg28.relationRow8954 rho)
    (tail : next (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) (rho 28251) (rho 28256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg57 (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) (rho 28251) next := by
  exact ⟨rho 28252, rho 28253, rho 28254, rho 28255, rho 28256, r8950, r8951, r8952, r8953, r8954, tail⟩

theorem seg28_scp_node23_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8955 : Seg28.relationRow8955 rho)
    (r8956 : Seg28.relationRow8956 rho)
    (r8957 : Seg28.relationRow8957 rho)
    (r8958 : Seg28.relationRow8958 rho)
    (r8959 : Seg28.relationRow8959 rho)
    (tail : next (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) (rho 28251) (rho 28256) (rho 28261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg58 (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) (rho 28251) (rho 28256) next := by
  exact ⟨rho 28257, rho 28258, rho 28259, rho 28260, rho 28261, r8955, r8956, r8957, r8958, r8959, tail⟩

theorem seg28_scp_node23_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8960 : Seg28.relationRow8960 rho)
    (r8961 : Seg28.relationRow8961 rho)
    (r8962 : Seg28.relationRow8962 rho)
    (r8963 : Seg28.relationRow8963 rho)
    (r8964 : Seg28.relationRow8964 rho)
    (tail : next (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg59 (rho 28221) (rho 28226) (rho 28231) (rho 28236) (rho 28241) (rho 28246) (rho 28251) (rho 28256) (rho 28261) next := by
  exact ⟨rho 28262, rho 28263, rho 28264, rho 28265, rho 28266, r8960, r8961, r8962, r8963, r8964, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

