import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node13_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5075 : Seg13.relationRow5075 rho)
    (r5076 : Seg13.relationRow5076 rho)
    (r5077 : Seg13.relationRow5077 rho)
    (r5078 : Seg13.relationRow5078 rho)
    (r5079 : Seg13.relationRow5079 rho)
    (tail : next (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) (rho 12240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg10 (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) next := by
  exact ⟨rho 12236, rho 12237, rho 12238, rho 12239, rho 12240, r5075, r5076, r5077, r5078, r5079, tail⟩

theorem seg13_scp_node13_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5080 : Seg13.relationRow5080 rho)
    (r5081 : Seg13.relationRow5081 rho)
    (r5082 : Seg13.relationRow5082 rho)
    (r5083 : Seg13.relationRow5083 rho)
    (r5084 : Seg13.relationRow5084 rho)
    (tail : next (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) (rho 12240) (rho 12245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg11 (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) (rho 12240) next := by
  exact ⟨rho 12241, rho 12242, rho 12243, rho 12244, rho 12245, r5080, r5081, r5082, r5083, r5084, tail⟩

theorem seg13_scp_node13_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5085 : Seg13.relationRow5085 rho)
    (r5086 : Seg13.relationRow5086 rho)
    (r5087 : Seg13.relationRow5087 rho)
    (r5088 : Seg13.relationRow5088 rho)
    (r5089 : Seg13.relationRow5089 rho)
    (tail : next (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) (rho 12240) (rho 12245) (rho 12250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg12 (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) (rho 12240) (rho 12245) next := by
  exact ⟨rho 12246, rho 12247, rho 12248, rho 12249, rho 12250, r5085, r5086, r5087, r5088, r5089, tail⟩

theorem seg13_scp_node13_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5090 : Seg13.relationRow5090 rho)
    (r5091 : Seg13.relationRow5091 rho)
    (r5092 : Seg13.relationRow5092 rho)
    (r5093 : Seg13.relationRow5093 rho)
    (r5094 : Seg13.relationRow5094 rho)
    (tail : next (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg13 (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235) (rho 12240) (rho 12245) (rho 12250) next := by
  exact ⟨rho 12251, rho 12252, rho 12253, rho 12254, rho 12255, r5090, r5091, r5092, r5093, r5094, tail⟩

theorem seg13_scp_node13_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5095 : Seg13.relationRow5095 rho)
    (r5096 : Seg13.relationRow5096 rho)
    (r5097 : Seg13.relationRow5097 rho)
    (r5098 : Seg13.relationRow5098 rho)
    (r5099 : Seg13.relationRow5099 rho)
    (tail : next (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg14 (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) next := by
  exact ⟨rho 12256, rho 12257, rho 12258, rho 12259, rho 12260, r5095, r5096, r5097, r5098, r5099, tail⟩

theorem seg13_scp_node13_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5100 : Seg13.relationRow5100 rho)
    (r5101 : Seg13.relationRow5101 rho)
    (r5102 : Seg13.relationRow5102 rho)
    (r5103 : Seg13.relationRow5103 rho)
    (r5104 : Seg13.relationRow5104 rho)
    (tail : next (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) (rho 12265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg15 (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) next := by
  exact ⟨rho 12261, rho 12262, rho 12263, rho 12264, rho 12265, r5100, r5101, r5102, r5103, r5104, tail⟩

theorem seg13_scp_node13_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5105 : Seg13.relationRow5105 rho)
    (r5106 : Seg13.relationRow5106 rho)
    (r5107 : Seg13.relationRow5107 rho)
    (r5108 : Seg13.relationRow5108 rho)
    (r5109 : Seg13.relationRow5109 rho)
    (tail : next (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) (rho 12265) (rho 12270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg16 (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) (rho 12265) next := by
  exact ⟨rho 12266, rho 12267, rho 12268, rho 12269, rho 12270, r5105, r5106, r5107, r5108, r5109, tail⟩

theorem seg13_scp_node13_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5110 : Seg13.relationRow5110 rho)
    (r5111 : Seg13.relationRow5111 rho)
    (r5112 : Seg13.relationRow5112 rho)
    (r5113 : Seg13.relationRow5113 rho)
    (r5114 : Seg13.relationRow5114 rho)
    (tail : next (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) (rho 12265) (rho 12270) (rho 12275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg17 (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) (rho 12265) (rho 12270) next := by
  exact ⟨rho 12271, rho 12272, rho 12273, rho 12274, rho 12275, r5110, r5111, r5112, r5113, r5114, tail⟩

theorem seg13_scp_node13_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5115 : Seg13.relationRow5115 rho)
    (r5116 : Seg13.relationRow5116 rho)
    (r5117 : Seg13.relationRow5117 rho)
    (r5118 : Seg13.relationRow5118 rho)
    (r5119 : Seg13.relationRow5119 rho)
    (tail : next (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg18 (rho 12235) (rho 12240) (rho 12245) (rho 12250) (rho 12255) (rho 12260) (rho 12265) (rho 12270) (rho 12275) next := by
  exact ⟨rho 12276, rho 12277, rho 12278, rho 12279, rho 12280, r5115, r5116, r5117, r5118, r5119, tail⟩

theorem seg13_scp_node13_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5120 : Seg13.relationRow5120 rho)
    (r5121 : Seg13.relationRow5121 rho)
    (r5122 : Seg13.relationRow5122 rho)
    (r5123 : Seg13.relationRow5123 rho)
    (r5124 : Seg13.relationRow5124 rho)
    (tail : next (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg19 (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) next := by
  exact ⟨rho 12281, rho 12282, rho 12283, rho 12284, rho 12285, r5120, r5121, r5122, r5123, r5124, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

