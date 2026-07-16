import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node19_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7459 : Seg28.relationRow7459 rho)
    (r7460 : Seg28.relationRow7460 rho)
    (r7461 : Seg28.relationRow7461 rho)
    (r7462 : Seg28.relationRow7462 rho)
    (r7463 : Seg28.relationRow7463 rho)
    (tail : next (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg50 (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) next := by
  exact ⟨rho 26777, rho 26778, rho 26779, rho 26780, rho 26781, r7459, r7460, r7461, r7462, r7463, tail⟩

theorem seg28_scp_node19_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7464 : Seg28.relationRow7464 rho)
    (r7465 : Seg28.relationRow7465 rho)
    (r7466 : Seg28.relationRow7466 rho)
    (r7467 : Seg28.relationRow7467 rho)
    (r7468 : Seg28.relationRow7468 rho)
    (tail : next (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) (rho 26786)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg51 (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) next := by
  exact ⟨rho 26782, rho 26783, rho 26784, rho 26785, rho 26786, r7464, r7465, r7466, r7467, r7468, tail⟩

theorem seg28_scp_node19_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7469 : Seg28.relationRow7469 rho)
    (r7470 : Seg28.relationRow7470 rho)
    (r7471 : Seg28.relationRow7471 rho)
    (r7472 : Seg28.relationRow7472 rho)
    (r7473 : Seg28.relationRow7473 rho)
    (tail : next (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) (rho 26786) (rho 26791)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg52 (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) (rho 26786) next := by
  exact ⟨rho 26787, rho 26788, rho 26789, rho 26790, rho 26791, r7469, r7470, r7471, r7472, r7473, tail⟩

theorem seg28_scp_node19_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7474 : Seg28.relationRow7474 rho)
    (r7475 : Seg28.relationRow7475 rho)
    (r7476 : Seg28.relationRow7476 rho)
    (r7477 : Seg28.relationRow7477 rho)
    (r7478 : Seg28.relationRow7478 rho)
    (tail : next (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) (rho 26786) (rho 26791) (rho 26796)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg53 (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) (rho 26786) (rho 26791) next := by
  exact ⟨rho 26792, rho 26793, rho 26794, rho 26795, rho 26796, r7474, r7475, r7476, r7477, r7478, tail⟩

theorem seg28_scp_node19_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7479 : Seg28.relationRow7479 rho)
    (r7480 : Seg28.relationRow7480 rho)
    (r7481 : Seg28.relationRow7481 rho)
    (r7482 : Seg28.relationRow7482 rho)
    (r7483 : Seg28.relationRow7483 rho)
    (tail : next (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg54 (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626) (rho 26631) (rho 26636) (rho 26641) (rho 26646) (rho 26651) (rho 26656) (rho 26661) (rho 26666) (rho 26671) (rho 26676) (rho 26681) (rho 26686) (rho 26691) (rho 26696) (rho 26701) (rho 26706) (rho 26711) (rho 26716) (rho 26721) (rho 26726) (rho 26731) (rho 26736) (rho 26741) (rho 26746) (rho 26751) (rho 26756) (rho 26761) (rho 26766) (rho 26771) (rho 26776) (rho 26781) (rho 26786) (rho 26791) (rho 26796) next := by
  exact ⟨rho 26797, rho 26798, rho 26799, rho 26800, rho 26801, r7479, r7480, r7481, r7482, r7483, tail⟩

theorem seg28_scp_node19_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7484 : Seg28.relationRow7484 rho)
    (r7485 : Seg28.relationRow7485 rho)
    (r7486 : Seg28.relationRow7486 rho)
    (r7487 : Seg28.relationRow7487 rho)
    (r7488 : Seg28.relationRow7488 rho)
    (tail : next (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg55 (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) next := by
  exact ⟨rho 26802, rho 26803, rho 26804, rho 26805, rho 26806, r7484, r7485, r7486, r7487, r7488, tail⟩

theorem seg28_scp_node19_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7489 : Seg28.relationRow7489 rho)
    (r7490 : Seg28.relationRow7490 rho)
    (r7491 : Seg28.relationRow7491 rho)
    (r7492 : Seg28.relationRow7492 rho)
    (r7493 : Seg28.relationRow7493 rho)
    (tail : next (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) (rho 26811)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg56 (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) next := by
  exact ⟨rho 26807, rho 26808, rho 26809, rho 26810, rho 26811, r7489, r7490, r7491, r7492, r7493, tail⟩

theorem seg28_scp_node19_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7494 : Seg28.relationRow7494 rho)
    (r7495 : Seg28.relationRow7495 rho)
    (r7496 : Seg28.relationRow7496 rho)
    (r7497 : Seg28.relationRow7497 rho)
    (r7498 : Seg28.relationRow7498 rho)
    (tail : next (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) (rho 26811) (rho 26816)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg57 (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) (rho 26811) next := by
  exact ⟨rho 26812, rho 26813, rho 26814, rho 26815, rho 26816, r7494, r7495, r7496, r7497, r7498, tail⟩

theorem seg28_scp_node19_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7499 : Seg28.relationRow7499 rho)
    (r7500 : Seg28.relationRow7500 rho)
    (r7501 : Seg28.relationRow7501 rho)
    (r7502 : Seg28.relationRow7502 rho)
    (r7503 : Seg28.relationRow7503 rho)
    (tail : next (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) (rho 26811) (rho 26816) (rho 26821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg58 (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) (rho 26811) (rho 26816) next := by
  exact ⟨rho 26817, rho 26818, rho 26819, rho 26820, rho 26821, r7499, r7500, r7501, r7502, r7503, tail⟩

theorem seg28_scp_node19_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7504 : Seg28.relationRow7504 rho)
    (r7505 : Seg28.relationRow7505 rho)
    (r7506 : Seg28.relationRow7506 rho)
    (r7507 : Seg28.relationRow7507 rho)
    (r7508 : Seg28.relationRow7508 rho)
    (tail : next (rho 26806) (rho 26811) (rho 26816) (rho 26821) (rho 26826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg59 (rho 26781) (rho 26786) (rho 26791) (rho 26796) (rho 26801) (rho 26806) (rho 26811) (rho 26816) (rho 26821) next := by
  exact ⟨rho 26822, rho 26823, rho 26824, rho 26825, rho 26826, r7504, r7505, r7506, r7507, r7508, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

