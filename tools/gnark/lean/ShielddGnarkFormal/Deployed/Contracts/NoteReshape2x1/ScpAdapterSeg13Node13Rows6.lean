import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node13_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5325 : Seg13.relationRow5325 rho)
    (r5326 : Seg13.relationRow5326 rho)
    (r5327 : Seg13.relationRow5327 rho)
    (r5328 : Seg13.relationRow5328 rho)
    (r5329 : Seg13.relationRow5329 rho)
    (tail : next (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg60 (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) next := by
  exact ⟨rho 12486, rho 12487, rho 12488, rho 12489, rho 12490, r5325, r5326, r5327, r5328, r5329, tail⟩

theorem seg13_scp_node13_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5330 : Seg13.relationRow5330 rho)
    (r5331 : Seg13.relationRow5331 rho)
    (r5332 : Seg13.relationRow5332 rho)
    (r5333 : Seg13.relationRow5333 rho)
    (r5334 : Seg13.relationRow5334 rho)
    (tail : next (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) (rho 12495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg61 (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) next := by
  exact ⟨rho 12491, rho 12492, rho 12493, rho 12494, rho 12495, r5330, r5331, r5332, r5333, r5334, tail⟩

theorem seg13_scp_node13_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5335 : Seg13.relationRow5335 rho)
    (r5336 : Seg13.relationRow5336 rho)
    (r5337 : Seg13.relationRow5337 rho)
    (r5338 : Seg13.relationRow5338 rho)
    (r5339 : Seg13.relationRow5339 rho)
    (tail : next (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) (rho 12495) (rho 12500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg62 (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) (rho 12495) next := by
  exact ⟨rho 12496, rho 12497, rho 12498, rho 12499, rho 12500, r5335, r5336, r5337, r5338, r5339, tail⟩

theorem seg13_scp_node13_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5340 : Seg13.relationRow5340 rho)
    (r5341 : Seg13.relationRow5341 rho)
    (r5342 : Seg13.relationRow5342 rho)
    (r5343 : Seg13.relationRow5343 rho)
    (r5344 : Seg13.relationRow5344 rho)
    (tail : next (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) (rho 12495) (rho 12500) (rho 12505)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg63 (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) (rho 12495) (rho 12500) next := by
  exact ⟨rho 12501, rho 12502, rho 12503, rho 12504, rho 12505, r5340, r5341, r5342, r5343, r5344, tail⟩

theorem seg13_scp_node13_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5345 : Seg13.relationRow5345 rho)
    (r5346 : Seg13.relationRow5346 rho)
    (r5347 : Seg13.relationRow5347 rho)
    (r5348 : Seg13.relationRow5348 rho)
    (r5349 : Seg13.relationRow5349 rho)
    (tail : next (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg64 (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485) (rho 12490) (rho 12495) (rho 12500) (rho 12505) next := by
  exact ⟨rho 12506, rho 12507, rho 12508, rho 12509, rho 12510, r5345, r5346, r5347, r5348, r5349, tail⟩

theorem seg13_scp_node13_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5350 : Seg13.relationRow5350 rho)
    (r5351 : Seg13.relationRow5351 rho)
    (r5352 : Seg13.relationRow5352 rho)
    (r5353 : Seg13.relationRow5353 rho)
    (r5354 : Seg13.relationRow5354 rho)
    (tail : next (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg65 (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) next := by
  exact ⟨rho 12511, rho 12512, rho 12513, rho 12514, rho 12515, r5350, r5351, r5352, r5353, r5354, tail⟩

theorem seg13_scp_node13_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5355 : Seg13.relationRow5355 rho)
    (r5356 : Seg13.relationRow5356 rho)
    (r5357 : Seg13.relationRow5357 rho)
    (r5358 : Seg13.relationRow5358 rho)
    (r5359 : Seg13.relationRow5359 rho)
    (tail : next (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) (rho 12520)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg66 (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) next := by
  exact ⟨rho 12516, rho 12517, rho 12518, rho 12519, rho 12520, r5355, r5356, r5357, r5358, r5359, tail⟩

theorem seg13_scp_node13_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5360 : Seg13.relationRow5360 rho)
    (r5361 : Seg13.relationRow5361 rho)
    (r5362 : Seg13.relationRow5362 rho)
    (r5363 : Seg13.relationRow5363 rho)
    (r5364 : Seg13.relationRow5364 rho)
    (tail : next (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) (rho 12520) (rho 12525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg67 (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) (rho 12520) next := by
  exact ⟨rho 12521, rho 12522, rho 12523, rho 12524, rho 12525, r5360, r5361, r5362, r5363, r5364, tail⟩

theorem seg13_scp_node13_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5365 : Seg13.relationRow5365 rho)
    (r5366 : Seg13.relationRow5366 rho)
    (r5367 : Seg13.relationRow5367 rho)
    (r5368 : Seg13.relationRow5368 rho)
    (r5369 : Seg13.relationRow5369 rho)
    (tail : next (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) (rho 12520) (rho 12525) (rho 12530)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg68 (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) (rho 12520) (rho 12525) next := by
  exact ⟨rho 12526, rho 12527, rho 12528, rho 12529, rho 12530, r5365, r5366, r5367, r5368, r5369, tail⟩

theorem seg13_scp_node13_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5370 : Seg13.relationRow5370 rho)
    (r5371 : Seg13.relationRow5371 rho)
    (r5372 : Seg13.relationRow5372 rho)
    (r5373 : Seg13.relationRow5373 rho)
    (r5374 : Seg13.relationRow5374 rho)
    (tail : next (rho 12515) (rho 12520) (rho 12525) (rho 12530) (rho 12535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg69 (rho 12490) (rho 12495) (rho 12500) (rho 12505) (rho 12510) (rho 12515) (rho 12520) (rho 12525) (rho 12530) next := by
  exact ⟨rho 12531, rho 12532, rho 12533, rho 12534, rho 12535, r5370, r5371, r5372, r5373, r5374, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

