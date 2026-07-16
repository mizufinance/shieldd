import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node14_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5439 : Seg13.relationRow5439 rho)
    (r5440 : Seg13.relationRow5440 rho)
    (r5441 : Seg13.relationRow5441 rho)
    (r5442 : Seg13.relationRow5442 rho)
    (r5443 : Seg13.relationRow5443 rho)
    (tail : next (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) (rho 12600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg10 (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) next := by
  exact ⟨rho 12596, rho 12597, rho 12598, rho 12599, rho 12600, r5439, r5440, r5441, r5442, r5443, tail⟩

theorem seg13_scp_node14_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5444 : Seg13.relationRow5444 rho)
    (r5445 : Seg13.relationRow5445 rho)
    (r5446 : Seg13.relationRow5446 rho)
    (r5447 : Seg13.relationRow5447 rho)
    (r5448 : Seg13.relationRow5448 rho)
    (tail : next (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) (rho 12600) (rho 12605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg11 (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) (rho 12600) next := by
  exact ⟨rho 12601, rho 12602, rho 12603, rho 12604, rho 12605, r5444, r5445, r5446, r5447, r5448, tail⟩

theorem seg13_scp_node14_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5449 : Seg13.relationRow5449 rho)
    (r5450 : Seg13.relationRow5450 rho)
    (r5451 : Seg13.relationRow5451 rho)
    (r5452 : Seg13.relationRow5452 rho)
    (r5453 : Seg13.relationRow5453 rho)
    (tail : next (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) (rho 12600) (rho 12605) (rho 12610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg12 (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) (rho 12600) (rho 12605) next := by
  exact ⟨rho 12606, rho 12607, rho 12608, rho 12609, rho 12610, r5449, r5450, r5451, r5452, r5453, tail⟩

theorem seg13_scp_node14_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5454 : Seg13.relationRow5454 rho)
    (r5455 : Seg13.relationRow5455 rho)
    (r5456 : Seg13.relationRow5456 rho)
    (r5457 : Seg13.relationRow5457 rho)
    (r5458 : Seg13.relationRow5458 rho)
    (tail : next (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg13 (rho 12570) (rho 12575) (rho 12580) (rho 12585) (rho 12590) (rho 12595) (rho 12600) (rho 12605) (rho 12610) next := by
  exact ⟨rho 12611, rho 12612, rho 12613, rho 12614, rho 12615, r5454, r5455, r5456, r5457, r5458, tail⟩

theorem seg13_scp_node14_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5459 : Seg13.relationRow5459 rho)
    (r5460 : Seg13.relationRow5460 rho)
    (r5461 : Seg13.relationRow5461 rho)
    (r5462 : Seg13.relationRow5462 rho)
    (r5463 : Seg13.relationRow5463 rho)
    (tail : next (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg14 (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) next := by
  exact ⟨rho 12616, rho 12617, rho 12618, rho 12619, rho 12620, r5459, r5460, r5461, r5462, r5463, tail⟩

theorem seg13_scp_node14_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5464 : Seg13.relationRow5464 rho)
    (r5465 : Seg13.relationRow5465 rho)
    (r5466 : Seg13.relationRow5466 rho)
    (r5467 : Seg13.relationRow5467 rho)
    (r5468 : Seg13.relationRow5468 rho)
    (tail : next (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) (rho 12625)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg15 (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) next := by
  exact ⟨rho 12621, rho 12622, rho 12623, rho 12624, rho 12625, r5464, r5465, r5466, r5467, r5468, tail⟩

theorem seg13_scp_node14_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5469 : Seg13.relationRow5469 rho)
    (r5470 : Seg13.relationRow5470 rho)
    (r5471 : Seg13.relationRow5471 rho)
    (r5472 : Seg13.relationRow5472 rho)
    (r5473 : Seg13.relationRow5473 rho)
    (tail : next (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) (rho 12625) (rho 12630)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg16 (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) (rho 12625) next := by
  exact ⟨rho 12626, rho 12627, rho 12628, rho 12629, rho 12630, r5469, r5470, r5471, r5472, r5473, tail⟩

theorem seg13_scp_node14_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5474 : Seg13.relationRow5474 rho)
    (r5475 : Seg13.relationRow5475 rho)
    (r5476 : Seg13.relationRow5476 rho)
    (r5477 : Seg13.relationRow5477 rho)
    (r5478 : Seg13.relationRow5478 rho)
    (tail : next (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) (rho 12625) (rho 12630) (rho 12635)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg17 (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) (rho 12625) (rho 12630) next := by
  exact ⟨rho 12631, rho 12632, rho 12633, rho 12634, rho 12635, r5474, r5475, r5476, r5477, r5478, tail⟩

theorem seg13_scp_node14_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5479 : Seg13.relationRow5479 rho)
    (r5480 : Seg13.relationRow5480 rho)
    (r5481 : Seg13.relationRow5481 rho)
    (r5482 : Seg13.relationRow5482 rho)
    (r5483 : Seg13.relationRow5483 rho)
    (tail : next (rho 12620) (rho 12625) (rho 12630) (rho 12635) (rho 12640)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg18 (rho 12595) (rho 12600) (rho 12605) (rho 12610) (rho 12615) (rho 12620) (rho 12625) (rho 12630) (rho 12635) next := by
  exact ⟨rho 12636, rho 12637, rho 12638, rho 12639, rho 12640, r5479, r5480, r5481, r5482, r5483, tail⟩

theorem seg13_scp_node14_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5484 : Seg13.relationRow5484 rho)
    (r5485 : Seg13.relationRow5485 rho)
    (r5486 : Seg13.relationRow5486 rho)
    (r5487 : Seg13.relationRow5487 rho)
    (r5488 : Seg13.relationRow5488 rho)
    (tail : next (rho 12620) (rho 12625) (rho 12630) (rho 12635) (rho 12640) (rho 12645)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg19 (rho 12620) (rho 12625) (rho 12630) (rho 12635) (rho 12640) next := by
  exact ⟨rho 12641, rho 12642, rho 12643, rho 12644, rho 12645, r5484, r5485, r5486, r5487, r5488, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

