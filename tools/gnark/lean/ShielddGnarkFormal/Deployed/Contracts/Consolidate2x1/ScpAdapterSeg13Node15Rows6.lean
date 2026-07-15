import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node15_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6053 : Seg13.relationRow6053 rho)
    (r6054 : Seg13.relationRow6054 rho)
    (r6055 : Seg13.relationRow6055 rho)
    (r6056 : Seg13.relationRow6056 rho)
    (r6057 : Seg13.relationRow6057 rho)
    (tail : next (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg60 (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) next := by
  exact ⟨rho 13206, rho 13207, rho 13208, rho 13209, rho 13210, r6053, r6054, r6055, r6056, r6057, tail⟩

theorem seg13_scp_node15_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6058 : Seg13.relationRow6058 rho)
    (r6059 : Seg13.relationRow6059 rho)
    (r6060 : Seg13.relationRow6060 rho)
    (r6061 : Seg13.relationRow6061 rho)
    (r6062 : Seg13.relationRow6062 rho)
    (tail : next (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) (rho 13215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg61 (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) next := by
  exact ⟨rho 13211, rho 13212, rho 13213, rho 13214, rho 13215, r6058, r6059, r6060, r6061, r6062, tail⟩

theorem seg13_scp_node15_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6063 : Seg13.relationRow6063 rho)
    (r6064 : Seg13.relationRow6064 rho)
    (r6065 : Seg13.relationRow6065 rho)
    (r6066 : Seg13.relationRow6066 rho)
    (r6067 : Seg13.relationRow6067 rho)
    (tail : next (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) (rho 13215) (rho 13220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg62 (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) (rho 13215) next := by
  exact ⟨rho 13216, rho 13217, rho 13218, rho 13219, rho 13220, r6063, r6064, r6065, r6066, r6067, tail⟩

theorem seg13_scp_node15_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6068 : Seg13.relationRow6068 rho)
    (r6069 : Seg13.relationRow6069 rho)
    (r6070 : Seg13.relationRow6070 rho)
    (r6071 : Seg13.relationRow6071 rho)
    (r6072 : Seg13.relationRow6072 rho)
    (tail : next (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) (rho 13215) (rho 13220) (rho 13225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg63 (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) (rho 13215) (rho 13220) next := by
  exact ⟨rho 13221, rho 13222, rho 13223, rho 13224, rho 13225, r6068, r6069, r6070, r6071, r6072, tail⟩

theorem seg13_scp_node15_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6073 : Seg13.relationRow6073 rho)
    (r6074 : Seg13.relationRow6074 rho)
    (r6075 : Seg13.relationRow6075 rho)
    (r6076 : Seg13.relationRow6076 rho)
    (r6077 : Seg13.relationRow6077 rho)
    (tail : next (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg64 (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205) (rho 13210) (rho 13215) (rho 13220) (rho 13225) next := by
  exact ⟨rho 13226, rho 13227, rho 13228, rho 13229, rho 13230, r6073, r6074, r6075, r6076, r6077, tail⟩

theorem seg13_scp_node15_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6078 : Seg13.relationRow6078 rho)
    (r6079 : Seg13.relationRow6079 rho)
    (r6080 : Seg13.relationRow6080 rho)
    (r6081 : Seg13.relationRow6081 rho)
    (r6082 : Seg13.relationRow6082 rho)
    (tail : next (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg65 (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) next := by
  exact ⟨rho 13231, rho 13232, rho 13233, rho 13234, rho 13235, r6078, r6079, r6080, r6081, r6082, tail⟩

theorem seg13_scp_node15_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6083 : Seg13.relationRow6083 rho)
    (r6084 : Seg13.relationRow6084 rho)
    (r6085 : Seg13.relationRow6085 rho)
    (r6086 : Seg13.relationRow6086 rho)
    (r6087 : Seg13.relationRow6087 rho)
    (tail : next (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) (rho 13240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg66 (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) next := by
  exact ⟨rho 13236, rho 13237, rho 13238, rho 13239, rho 13240, r6083, r6084, r6085, r6086, r6087, tail⟩

theorem seg13_scp_node15_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6088 : Seg13.relationRow6088 rho)
    (r6089 : Seg13.relationRow6089 rho)
    (r6090 : Seg13.relationRow6090 rho)
    (r6091 : Seg13.relationRow6091 rho)
    (r6092 : Seg13.relationRow6092 rho)
    (tail : next (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) (rho 13240) (rho 13245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg67 (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) (rho 13240) next := by
  exact ⟨rho 13241, rho 13242, rho 13243, rho 13244, rho 13245, r6088, r6089, r6090, r6091, r6092, tail⟩

theorem seg13_scp_node15_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6093 : Seg13.relationRow6093 rho)
    (r6094 : Seg13.relationRow6094 rho)
    (r6095 : Seg13.relationRow6095 rho)
    (r6096 : Seg13.relationRow6096 rho)
    (r6097 : Seg13.relationRow6097 rho)
    (tail : next (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) (rho 13240) (rho 13245) (rho 13250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg68 (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) (rho 13240) (rho 13245) next := by
  exact ⟨rho 13246, rho 13247, rho 13248, rho 13249, rho 13250, r6093, r6094, r6095, r6096, r6097, tail⟩

theorem seg13_scp_node15_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6098 : Seg13.relationRow6098 rho)
    (r6099 : Seg13.relationRow6099 rho)
    (r6100 : Seg13.relationRow6100 rho)
    (r6101 : Seg13.relationRow6101 rho)
    (r6102 : Seg13.relationRow6102 rho)
    (tail : next (rho 13235) (rho 13240) (rho 13245) (rho 13250) (rho 13255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg69 (rho 13210) (rho 13215) (rho 13220) (rho 13225) (rho 13230) (rho 13235) (rho 13240) (rho 13245) (rho 13250) next := by
  exact ⟨rho 13251, rho 13252, rho 13253, rho 13254, rho 13255, r6098, r6099, r6100, r6101, r6102, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

