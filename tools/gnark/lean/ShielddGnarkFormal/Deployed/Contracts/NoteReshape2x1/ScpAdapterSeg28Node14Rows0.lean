import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node14_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5389 : Seg28.relationRow5389 rho)
    (r5390 : Seg28.relationRow5390 rho)
    (r5391 : Seg28.relationRow5391 rho)
    (r5392 : Seg28.relationRow5392 rho)
    (r5393 : Seg28.relationRow5393 rho)
    (tail : next (rho 140) (rho 141) (rho 24716) (rho 24717) (rho 24718) (rho 24719) (rho 24720) (rho 24725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg0 (rho 139) (rho 140) (rho 141) (rho 24715) (rho 24716) (rho 24717) (rho 24718) (rho 24719) (rho 24720) next := by
  exact ⟨rho 24721, rho 24722, rho 24723, rho 24724, rho 24725, r5389, r5390, r5391, r5392, r5393, tail⟩

theorem seg28_scp_node14_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5394 : Seg28.relationRow5394 rho)
    (r5395 : Seg28.relationRow5395 rho)
    (r5396 : Seg28.relationRow5396 rho)
    (r5397 : Seg28.relationRow5397 rho)
    (r5398 : Seg28.relationRow5398 rho)
    (tail : next (rho 140) (rho 141) (rho 24718) (rho 24719) (rho 24720) (rho 24725) (rho 24730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg1 (rho 140) (rho 141) (rho 24716) (rho 24717) (rho 24718) (rho 24719) (rho 24720) (rho 24725) next := by
  exact ⟨rho 24726, rho 24727, rho 24728, rho 24729, rho 24730, r5394, r5395, r5396, r5397, r5398, tail⟩

theorem seg28_scp_node14_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5399 : Seg28.relationRow5399 rho)
    (r5400 : Seg28.relationRow5400 rho)
    (r5401 : Seg28.relationRow5401 rho)
    (r5402 : Seg28.relationRow5402 rho)
    (r5403 : Seg28.relationRow5403 rho)
    (tail : next (rho 141) (rho 24720) (rho 24725) (rho 24730) (rho 24735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg2 (rho 140) (rho 141) (rho 24718) (rho 24719) (rho 24720) (rho 24725) (rho 24730) next := by
  exact ⟨rho 24731, rho 24732, rho 24733, rho 24734, rho 24735, r5399, r5400, r5401, r5402, r5403, tail⟩

theorem seg28_scp_node14_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5404 : Seg28.relationRow5404 rho)
    (r5405 : Seg28.relationRow5405 rho)
    (r5406 : Seg28.relationRow5406 rho)
    (r5407 : Seg28.relationRow5407 rho)
    (r5408 : Seg28.relationRow5408 rho)
    (tail : next (rho 24725) (rho 24730) (rho 24735) (rho 24740)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg3 (rho 141) (rho 24720) (rho 24725) (rho 24730) (rho 24735) next := by
  exact ⟨rho 24736, rho 24737, rho 24738, rho 24739, rho 24740, r5404, r5405, r5406, r5407, r5408, tail⟩

theorem seg28_scp_node14_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5409 : Seg28.relationRow5409 rho)
    (r5410 : Seg28.relationRow5410 rho)
    (r5411 : Seg28.relationRow5411 rho)
    (r5412 : Seg28.relationRow5412 rho)
    (r5413 : Seg28.relationRow5413 rho)
    (tail : next (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg4 (rho 24725) (rho 24730) (rho 24735) (rho 24740) next := by
  exact ⟨rho 24741, rho 24742, rho 24743, rho 24744, rho 24745, r5409, r5410, r5411, r5412, r5413, tail⟩

theorem seg28_scp_node14_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5414 : Seg28.relationRow5414 rho)
    (r5415 : Seg28.relationRow5415 rho)
    (r5416 : Seg28.relationRow5416 rho)
    (r5417 : Seg28.relationRow5417 rho)
    (r5418 : Seg28.relationRow5418 rho)
    (tail : next (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) (rho 24750)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg5 (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) next := by
  exact ⟨rho 24746, rho 24747, rho 24748, rho 24749, rho 24750, r5414, r5415, r5416, r5417, r5418, tail⟩

theorem seg28_scp_node14_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5419 : Seg28.relationRow5419 rho)
    (r5420 : Seg28.relationRow5420 rho)
    (r5421 : Seg28.relationRow5421 rho)
    (r5422 : Seg28.relationRow5422 rho)
    (r5423 : Seg28.relationRow5423 rho)
    (tail : next (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) (rho 24750) (rho 24755)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg6 (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) (rho 24750) next := by
  exact ⟨rho 24751, rho 24752, rho 24753, rho 24754, rho 24755, r5419, r5420, r5421, r5422, r5423, tail⟩

theorem seg28_scp_node14_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5424 : Seg28.relationRow5424 rho)
    (r5425 : Seg28.relationRow5425 rho)
    (r5426 : Seg28.relationRow5426 rho)
    (r5427 : Seg28.relationRow5427 rho)
    (r5428 : Seg28.relationRow5428 rho)
    (tail : next (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) (rho 24750) (rho 24755) (rho 24760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg7 (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) (rho 24750) (rho 24755) next := by
  exact ⟨rho 24756, rho 24757, rho 24758, rho 24759, rho 24760, r5424, r5425, r5426, r5427, r5428, tail⟩

theorem seg28_scp_node14_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5429 : Seg28.relationRow5429 rho)
    (r5430 : Seg28.relationRow5430 rho)
    (r5431 : Seg28.relationRow5431 rho)
    (r5432 : Seg28.relationRow5432 rho)
    (r5433 : Seg28.relationRow5433 rho)
    (tail : next (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg8 (rho 24725) (rho 24730) (rho 24735) (rho 24740) (rho 24745) (rho 24750) (rho 24755) (rho 24760) next := by
  exact ⟨rho 24761, rho 24762, rho 24763, rho 24764, rho 24765, r5429, r5430, r5431, r5432, r5433, tail⟩

theorem seg28_scp_node14_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5434 : Seg28.relationRow5434 rho)
    (r5435 : Seg28.relationRow5435 rho)
    (r5436 : Seg28.relationRow5436 rho)
    (r5437 : Seg28.relationRow5437 rho)
    (r5438 : Seg28.relationRow5438 rho)
    (tail : next (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg9 (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) next := by
  exact ⟨rho 24766, rho 24767, rho 24768, rho 24769, rho 24770, r5434, r5435, r5436, r5437, r5438, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

