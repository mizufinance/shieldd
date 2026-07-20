import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node14_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5439 : Seg28.relationRow5439 rho)
    (r5440 : Seg28.relationRow5440 rho)
    (r5441 : Seg28.relationRow5441 rho)
    (r5442 : Seg28.relationRow5442 rho)
    (r5443 : Seg28.relationRow5443 rho)
    (tail : next (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) (rho 24775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg10 (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) next := by
  exact ⟨rho 24771, rho 24772, rho 24773, rho 24774, rho 24775, r5439, r5440, r5441, r5442, r5443, tail⟩

theorem seg28_scp_node14_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5444 : Seg28.relationRow5444 rho)
    (r5445 : Seg28.relationRow5445 rho)
    (r5446 : Seg28.relationRow5446 rho)
    (r5447 : Seg28.relationRow5447 rho)
    (r5448 : Seg28.relationRow5448 rho)
    (tail : next (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) (rho 24775) (rho 24780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg11 (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) (rho 24775) next := by
  exact ⟨rho 24776, rho 24777, rho 24778, rho 24779, rho 24780, r5444, r5445, r5446, r5447, r5448, tail⟩

theorem seg28_scp_node14_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5449 : Seg28.relationRow5449 rho)
    (r5450 : Seg28.relationRow5450 rho)
    (r5451 : Seg28.relationRow5451 rho)
    (r5452 : Seg28.relationRow5452 rho)
    (r5453 : Seg28.relationRow5453 rho)
    (tail : next (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) (rho 24775) (rho 24780) (rho 24785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg12 (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) (rho 24775) (rho 24780) next := by
  exact ⟨rho 24781, rho 24782, rho 24783, rho 24784, rho 24785, r5449, r5450, r5451, r5452, r5453, tail⟩

theorem seg28_scp_node14_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5454 : Seg28.relationRow5454 rho)
    (r5455 : Seg28.relationRow5455 rho)
    (r5456 : Seg28.relationRow5456 rho)
    (r5457 : Seg28.relationRow5457 rho)
    (r5458 : Seg28.relationRow5458 rho)
    (tail : next (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg13 (rho 24745) (rho 24750) (rho 24755) (rho 24760) (rho 24765) (rho 24770) (rho 24775) (rho 24780) (rho 24785) next := by
  exact ⟨rho 24786, rho 24787, rho 24788, rho 24789, rho 24790, r5454, r5455, r5456, r5457, r5458, tail⟩

theorem seg28_scp_node14_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5459 : Seg28.relationRow5459 rho)
    (r5460 : Seg28.relationRow5460 rho)
    (r5461 : Seg28.relationRow5461 rho)
    (r5462 : Seg28.relationRow5462 rho)
    (r5463 : Seg28.relationRow5463 rho)
    (tail : next (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg14 (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) next := by
  exact ⟨rho 24791, rho 24792, rho 24793, rho 24794, rho 24795, r5459, r5460, r5461, r5462, r5463, tail⟩

theorem seg28_scp_node14_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5464 : Seg28.relationRow5464 rho)
    (r5465 : Seg28.relationRow5465 rho)
    (r5466 : Seg28.relationRow5466 rho)
    (r5467 : Seg28.relationRow5467 rho)
    (r5468 : Seg28.relationRow5468 rho)
    (tail : next (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) (rho 24800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg15 (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) next := by
  exact ⟨rho 24796, rho 24797, rho 24798, rho 24799, rho 24800, r5464, r5465, r5466, r5467, r5468, tail⟩

theorem seg28_scp_node14_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5469 : Seg28.relationRow5469 rho)
    (r5470 : Seg28.relationRow5470 rho)
    (r5471 : Seg28.relationRow5471 rho)
    (r5472 : Seg28.relationRow5472 rho)
    (r5473 : Seg28.relationRow5473 rho)
    (tail : next (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) (rho 24800) (rho 24805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg16 (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) (rho 24800) next := by
  exact ⟨rho 24801, rho 24802, rho 24803, rho 24804, rho 24805, r5469, r5470, r5471, r5472, r5473, tail⟩

theorem seg28_scp_node14_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5474 : Seg28.relationRow5474 rho)
    (r5475 : Seg28.relationRow5475 rho)
    (r5476 : Seg28.relationRow5476 rho)
    (r5477 : Seg28.relationRow5477 rho)
    (r5478 : Seg28.relationRow5478 rho)
    (tail : next (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) (rho 24800) (rho 24805) (rho 24810)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg17 (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) (rho 24800) (rho 24805) next := by
  exact ⟨rho 24806, rho 24807, rho 24808, rho 24809, rho 24810, r5474, r5475, r5476, r5477, r5478, tail⟩

theorem seg28_scp_node14_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5479 : Seg28.relationRow5479 rho)
    (r5480 : Seg28.relationRow5480 rho)
    (r5481 : Seg28.relationRow5481 rho)
    (r5482 : Seg28.relationRow5482 rho)
    (r5483 : Seg28.relationRow5483 rho)
    (tail : next (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg18 (rho 24770) (rho 24775) (rho 24780) (rho 24785) (rho 24790) (rho 24795) (rho 24800) (rho 24805) (rho 24810) next := by
  exact ⟨rho 24811, rho 24812, rho 24813, rho 24814, rho 24815, r5479, r5480, r5481, r5482, r5483, tail⟩

theorem seg28_scp_node14_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5484 : Seg28.relationRow5484 rho)
    (r5485 : Seg28.relationRow5485 rho)
    (r5486 : Seg28.relationRow5486 rho)
    (r5487 : Seg28.relationRow5487 rho)
    (r5488 : Seg28.relationRow5488 rho)
    (tail : next (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg19 (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) next := by
  exact ⟨rho 24816, rho 24817, rho 24818, rho 24819, rho 24820, r5484, r5485, r5486, r5487, r5488, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

