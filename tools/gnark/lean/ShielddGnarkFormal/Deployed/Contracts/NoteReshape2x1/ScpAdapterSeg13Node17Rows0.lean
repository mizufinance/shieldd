import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node17_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6481 : Seg13.relationRow6481 rho)
    (r6482 : Seg13.relationRow6482 rho)
    (r6483 : Seg13.relationRow6483 rho)
    (r6484 : Seg13.relationRow6484 rho)
    (r6485 : Seg13.relationRow6485 rho)
    (tail : next (rho 44) (rho 45) (rho 13615) (rho 13616) (rho 13617) (rho 13618) (rho 13619) (rho 13624)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg0 (rho 43) (rho 44) (rho 45) (rho 13614) (rho 13615) (rho 13616) (rho 13617) (rho 13618) (rho 13619) next := by
  exact ⟨rho 13620, rho 13621, rho 13622, rho 13623, rho 13624, r6481, r6482, r6483, r6484, r6485, tail⟩

theorem seg13_scp_node17_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6486 : Seg13.relationRow6486 rho)
    (r6487 : Seg13.relationRow6487 rho)
    (r6488 : Seg13.relationRow6488 rho)
    (r6489 : Seg13.relationRow6489 rho)
    (r6490 : Seg13.relationRow6490 rho)
    (tail : next (rho 44) (rho 45) (rho 13617) (rho 13618) (rho 13619) (rho 13624) (rho 13629)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg1 (rho 44) (rho 45) (rho 13615) (rho 13616) (rho 13617) (rho 13618) (rho 13619) (rho 13624) next := by
  exact ⟨rho 13625, rho 13626, rho 13627, rho 13628, rho 13629, r6486, r6487, r6488, r6489, r6490, tail⟩

theorem seg13_scp_node17_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6491 : Seg13.relationRow6491 rho)
    (r6492 : Seg13.relationRow6492 rho)
    (r6493 : Seg13.relationRow6493 rho)
    (r6494 : Seg13.relationRow6494 rho)
    (r6495 : Seg13.relationRow6495 rho)
    (tail : next (rho 45) (rho 13619) (rho 13624) (rho 13629) (rho 13634)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg2 (rho 44) (rho 45) (rho 13617) (rho 13618) (rho 13619) (rho 13624) (rho 13629) next := by
  exact ⟨rho 13630, rho 13631, rho 13632, rho 13633, rho 13634, r6491, r6492, r6493, r6494, r6495, tail⟩

theorem seg13_scp_node17_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6496 : Seg13.relationRow6496 rho)
    (r6497 : Seg13.relationRow6497 rho)
    (r6498 : Seg13.relationRow6498 rho)
    (r6499 : Seg13.relationRow6499 rho)
    (r6500 : Seg13.relationRow6500 rho)
    (tail : next (rho 13624) (rho 13629) (rho 13634) (rho 13639)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg3 (rho 45) (rho 13619) (rho 13624) (rho 13629) (rho 13634) next := by
  exact ⟨rho 13635, rho 13636, rho 13637, rho 13638, rho 13639, r6496, r6497, r6498, r6499, r6500, tail⟩

theorem seg13_scp_node17_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6501 : Seg13.relationRow6501 rho)
    (r6502 : Seg13.relationRow6502 rho)
    (r6503 : Seg13.relationRow6503 rho)
    (r6504 : Seg13.relationRow6504 rho)
    (r6505 : Seg13.relationRow6505 rho)
    (tail : next (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg4 (rho 13624) (rho 13629) (rho 13634) (rho 13639) next := by
  exact ⟨rho 13640, rho 13641, rho 13642, rho 13643, rho 13644, r6501, r6502, r6503, r6504, r6505, tail⟩

theorem seg13_scp_node17_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6506 : Seg13.relationRow6506 rho)
    (r6507 : Seg13.relationRow6507 rho)
    (r6508 : Seg13.relationRow6508 rho)
    (r6509 : Seg13.relationRow6509 rho)
    (r6510 : Seg13.relationRow6510 rho)
    (tail : next (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) (rho 13649)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg5 (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) next := by
  exact ⟨rho 13645, rho 13646, rho 13647, rho 13648, rho 13649, r6506, r6507, r6508, r6509, r6510, tail⟩

theorem seg13_scp_node17_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6511 : Seg13.relationRow6511 rho)
    (r6512 : Seg13.relationRow6512 rho)
    (r6513 : Seg13.relationRow6513 rho)
    (r6514 : Seg13.relationRow6514 rho)
    (r6515 : Seg13.relationRow6515 rho)
    (tail : next (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) (rho 13649) (rho 13654)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg6 (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) (rho 13649) next := by
  exact ⟨rho 13650, rho 13651, rho 13652, rho 13653, rho 13654, r6511, r6512, r6513, r6514, r6515, tail⟩

theorem seg13_scp_node17_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6516 : Seg13.relationRow6516 rho)
    (r6517 : Seg13.relationRow6517 rho)
    (r6518 : Seg13.relationRow6518 rho)
    (r6519 : Seg13.relationRow6519 rho)
    (r6520 : Seg13.relationRow6520 rho)
    (tail : next (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) (rho 13649) (rho 13654) (rho 13659)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg7 (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) (rho 13649) (rho 13654) next := by
  exact ⟨rho 13655, rho 13656, rho 13657, rho 13658, rho 13659, r6516, r6517, r6518, r6519, r6520, tail⟩

theorem seg13_scp_node17_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6521 : Seg13.relationRow6521 rho)
    (r6522 : Seg13.relationRow6522 rho)
    (r6523 : Seg13.relationRow6523 rho)
    (r6524 : Seg13.relationRow6524 rho)
    (r6525 : Seg13.relationRow6525 rho)
    (tail : next (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg8 (rho 13624) (rho 13629) (rho 13634) (rho 13639) (rho 13644) (rho 13649) (rho 13654) (rho 13659) next := by
  exact ⟨rho 13660, rho 13661, rho 13662, rho 13663, rho 13664, r6521, r6522, r6523, r6524, r6525, tail⟩

theorem seg13_scp_node17_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6526 : Seg13.relationRow6526 rho)
    (r6527 : Seg13.relationRow6527 rho)
    (r6528 : Seg13.relationRow6528 rho)
    (r6529 : Seg13.relationRow6529 rho)
    (r6530 : Seg13.relationRow6530 rho)
    (tail : next (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg9 (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) next := by
  exact ⟨rho 13665, rho 13666, rho 13667, rho 13668, rho 13669, r6526, r6527, r6528, r6529, r6530, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

