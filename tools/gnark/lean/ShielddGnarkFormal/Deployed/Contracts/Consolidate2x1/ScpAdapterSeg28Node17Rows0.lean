import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node17_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6481 : Seg28.relationRow6481 rho)
    (r6482 : Seg28.relationRow6482 rho)
    (r6483 : Seg28.relationRow6483 rho)
    (r6484 : Seg28.relationRow6484 rho)
    (r6485 : Seg28.relationRow6485 rho)
    (tail : next (rho 134) (rho 135) (rho 25802) (rho 25803) (rho 25804) (rho 25805) (rho 25806) (rho 25811)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg0 (rho 133) (rho 134) (rho 135) (rho 25801) (rho 25802) (rho 25803) (rho 25804) (rho 25805) (rho 25806) next := by
  exact ⟨rho 25807, rho 25808, rho 25809, rho 25810, rho 25811, r6481, r6482, r6483, r6484, r6485, tail⟩

theorem seg28_scp_node17_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6486 : Seg28.relationRow6486 rho)
    (r6487 : Seg28.relationRow6487 rho)
    (r6488 : Seg28.relationRow6488 rho)
    (r6489 : Seg28.relationRow6489 rho)
    (r6490 : Seg28.relationRow6490 rho)
    (tail : next (rho 134) (rho 135) (rho 25804) (rho 25805) (rho 25806) (rho 25811) (rho 25816)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg1 (rho 134) (rho 135) (rho 25802) (rho 25803) (rho 25804) (rho 25805) (rho 25806) (rho 25811) next := by
  exact ⟨rho 25812, rho 25813, rho 25814, rho 25815, rho 25816, r6486, r6487, r6488, r6489, r6490, tail⟩

theorem seg28_scp_node17_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6491 : Seg28.relationRow6491 rho)
    (r6492 : Seg28.relationRow6492 rho)
    (r6493 : Seg28.relationRow6493 rho)
    (r6494 : Seg28.relationRow6494 rho)
    (r6495 : Seg28.relationRow6495 rho)
    (tail : next (rho 135) (rho 25806) (rho 25811) (rho 25816) (rho 25821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg2 (rho 134) (rho 135) (rho 25804) (rho 25805) (rho 25806) (rho 25811) (rho 25816) next := by
  exact ⟨rho 25817, rho 25818, rho 25819, rho 25820, rho 25821, r6491, r6492, r6493, r6494, r6495, tail⟩

theorem seg28_scp_node17_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6496 : Seg28.relationRow6496 rho)
    (r6497 : Seg28.relationRow6497 rho)
    (r6498 : Seg28.relationRow6498 rho)
    (r6499 : Seg28.relationRow6499 rho)
    (r6500 : Seg28.relationRow6500 rho)
    (tail : next (rho 25811) (rho 25816) (rho 25821) (rho 25826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg3 (rho 135) (rho 25806) (rho 25811) (rho 25816) (rho 25821) next := by
  exact ⟨rho 25822, rho 25823, rho 25824, rho 25825, rho 25826, r6496, r6497, r6498, r6499, r6500, tail⟩

theorem seg28_scp_node17_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6501 : Seg28.relationRow6501 rho)
    (r6502 : Seg28.relationRow6502 rho)
    (r6503 : Seg28.relationRow6503 rho)
    (r6504 : Seg28.relationRow6504 rho)
    (r6505 : Seg28.relationRow6505 rho)
    (tail : next (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg4 (rho 25811) (rho 25816) (rho 25821) (rho 25826) next := by
  exact ⟨rho 25827, rho 25828, rho 25829, rho 25830, rho 25831, r6501, r6502, r6503, r6504, r6505, tail⟩

theorem seg28_scp_node17_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6506 : Seg28.relationRow6506 rho)
    (r6507 : Seg28.relationRow6507 rho)
    (r6508 : Seg28.relationRow6508 rho)
    (r6509 : Seg28.relationRow6509 rho)
    (r6510 : Seg28.relationRow6510 rho)
    (tail : next (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) (rho 25836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg5 (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) next := by
  exact ⟨rho 25832, rho 25833, rho 25834, rho 25835, rho 25836, r6506, r6507, r6508, r6509, r6510, tail⟩

theorem seg28_scp_node17_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6511 : Seg28.relationRow6511 rho)
    (r6512 : Seg28.relationRow6512 rho)
    (r6513 : Seg28.relationRow6513 rho)
    (r6514 : Seg28.relationRow6514 rho)
    (r6515 : Seg28.relationRow6515 rho)
    (tail : next (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) (rho 25836) (rho 25841)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg6 (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) (rho 25836) next := by
  exact ⟨rho 25837, rho 25838, rho 25839, rho 25840, rho 25841, r6511, r6512, r6513, r6514, r6515, tail⟩

theorem seg28_scp_node17_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6516 : Seg28.relationRow6516 rho)
    (r6517 : Seg28.relationRow6517 rho)
    (r6518 : Seg28.relationRow6518 rho)
    (r6519 : Seg28.relationRow6519 rho)
    (r6520 : Seg28.relationRow6520 rho)
    (tail : next (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) (rho 25836) (rho 25841) (rho 25846)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg7 (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) (rho 25836) (rho 25841) next := by
  exact ⟨rho 25842, rho 25843, rho 25844, rho 25845, rho 25846, r6516, r6517, r6518, r6519, r6520, tail⟩

theorem seg28_scp_node17_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6521 : Seg28.relationRow6521 rho)
    (r6522 : Seg28.relationRow6522 rho)
    (r6523 : Seg28.relationRow6523 rho)
    (r6524 : Seg28.relationRow6524 rho)
    (r6525 : Seg28.relationRow6525 rho)
    (tail : next (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg8 (rho 25811) (rho 25816) (rho 25821) (rho 25826) (rho 25831) (rho 25836) (rho 25841) (rho 25846) next := by
  exact ⟨rho 25847, rho 25848, rho 25849, rho 25850, rho 25851, r6521, r6522, r6523, r6524, r6525, tail⟩

theorem seg28_scp_node17_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6526 : Seg28.relationRow6526 rho)
    (r6527 : Seg28.relationRow6527 rho)
    (r6528 : Seg28.relationRow6528 rho)
    (r6529 : Seg28.relationRow6529 rho)
    (r6530 : Seg28.relationRow6530 rho)
    (tail : next (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) (rho 25856)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg9 (rho 25831) (rho 25836) (rho 25841) (rho 25846) (rho 25851) next := by
  exact ⟨rho 25852, rho 25853, rho 25854, rho 25855, rho 25856, r6526, r6527, r6528, r6529, r6530, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

