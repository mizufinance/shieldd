import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node13_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5325 : Seg28.relationRow5325 rho)
    (r5326 : Seg28.relationRow5326 rho)
    (r5327 : Seg28.relationRow5327 rho)
    (r5328 : Seg28.relationRow5328 rho)
    (r5329 : Seg28.relationRow5329 rho)
    (tail : next (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg60 (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) next := by
  exact ⟨rho 24667, rho 24668, rho 24669, rho 24670, rho 24671, r5325, r5326, r5327, r5328, r5329, tail⟩

theorem seg28_scp_node13_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5330 : Seg28.relationRow5330 rho)
    (r5331 : Seg28.relationRow5331 rho)
    (r5332 : Seg28.relationRow5332 rho)
    (r5333 : Seg28.relationRow5333 rho)
    (r5334 : Seg28.relationRow5334 rho)
    (tail : next (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) (rho 24676)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg61 (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) next := by
  exact ⟨rho 24672, rho 24673, rho 24674, rho 24675, rho 24676, r5330, r5331, r5332, r5333, r5334, tail⟩

theorem seg28_scp_node13_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5335 : Seg28.relationRow5335 rho)
    (r5336 : Seg28.relationRow5336 rho)
    (r5337 : Seg28.relationRow5337 rho)
    (r5338 : Seg28.relationRow5338 rho)
    (r5339 : Seg28.relationRow5339 rho)
    (tail : next (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) (rho 24676) (rho 24681)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg62 (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) (rho 24676) next := by
  exact ⟨rho 24677, rho 24678, rho 24679, rho 24680, rho 24681, r5335, r5336, r5337, r5338, r5339, tail⟩

theorem seg28_scp_node13_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5340 : Seg28.relationRow5340 rho)
    (r5341 : Seg28.relationRow5341 rho)
    (r5342 : Seg28.relationRow5342 rho)
    (r5343 : Seg28.relationRow5343 rho)
    (r5344 : Seg28.relationRow5344 rho)
    (tail : next (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) (rho 24676) (rho 24681) (rho 24686)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg63 (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) (rho 24676) (rho 24681) next := by
  exact ⟨rho 24682, rho 24683, rho 24684, rho 24685, rho 24686, r5340, r5341, r5342, r5343, r5344, tail⟩

theorem seg28_scp_node13_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5345 : Seg28.relationRow5345 rho)
    (r5346 : Seg28.relationRow5346 rho)
    (r5347 : Seg28.relationRow5347 rho)
    (r5348 : Seg28.relationRow5348 rho)
    (r5349 : Seg28.relationRow5349 rho)
    (tail : next (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg64 (rho 24646) (rho 24651) (rho 24656) (rho 24661) (rho 24666) (rho 24671) (rho 24676) (rho 24681) (rho 24686) next := by
  exact ⟨rho 24687, rho 24688, rho 24689, rho 24690, rho 24691, r5345, r5346, r5347, r5348, r5349, tail⟩

theorem seg28_scp_node13_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5350 : Seg28.relationRow5350 rho)
    (r5351 : Seg28.relationRow5351 rho)
    (r5352 : Seg28.relationRow5352 rho)
    (r5353 : Seg28.relationRow5353 rho)
    (r5354 : Seg28.relationRow5354 rho)
    (tail : next (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg65 (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) next := by
  exact ⟨rho 24692, rho 24693, rho 24694, rho 24695, rho 24696, r5350, r5351, r5352, r5353, r5354, tail⟩

theorem seg28_scp_node13_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5355 : Seg28.relationRow5355 rho)
    (r5356 : Seg28.relationRow5356 rho)
    (r5357 : Seg28.relationRow5357 rho)
    (r5358 : Seg28.relationRow5358 rho)
    (r5359 : Seg28.relationRow5359 rho)
    (tail : next (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) (rho 24701)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg66 (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) next := by
  exact ⟨rho 24697, rho 24698, rho 24699, rho 24700, rho 24701, r5355, r5356, r5357, r5358, r5359, tail⟩

theorem seg28_scp_node13_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5360 : Seg28.relationRow5360 rho)
    (r5361 : Seg28.relationRow5361 rho)
    (r5362 : Seg28.relationRow5362 rho)
    (r5363 : Seg28.relationRow5363 rho)
    (r5364 : Seg28.relationRow5364 rho)
    (tail : next (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) (rho 24701) (rho 24706)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg67 (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) (rho 24701) next := by
  exact ⟨rho 24702, rho 24703, rho 24704, rho 24705, rho 24706, r5360, r5361, r5362, r5363, r5364, tail⟩

theorem seg28_scp_node13_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5365 : Seg28.relationRow5365 rho)
    (r5366 : Seg28.relationRow5366 rho)
    (r5367 : Seg28.relationRow5367 rho)
    (r5368 : Seg28.relationRow5368 rho)
    (r5369 : Seg28.relationRow5369 rho)
    (tail : next (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) (rho 24701) (rho 24706) (rho 24711)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg68 (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) (rho 24701) (rho 24706) next := by
  exact ⟨rho 24707, rho 24708, rho 24709, rho 24710, rho 24711, r5365, r5366, r5367, r5368, r5369, tail⟩

theorem seg28_scp_node13_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5370 : Seg28.relationRow5370 rho)
    (r5371 : Seg28.relationRow5371 rho)
    (r5372 : Seg28.relationRow5372 rho)
    (r5373 : Seg28.relationRow5373 rho)
    (r5374 : Seg28.relationRow5374 rho)
    (tail : next (rho 24696) (rho 24701) (rho 24706) (rho 24711) (rho 24716)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg69 (rho 24671) (rho 24676) (rho 24681) (rho 24686) (rho 24691) (rho 24696) (rho 24701) (rho 24706) (rho 24711) next := by
  exact ⟨rho 24712, rho 24713, rho 24714, rho 24715, rho 24716, r5370, r5371, r5372, r5373, r5374, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

