import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node20_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7573 : Seg13.relationRow7573 rho)
    (r7574 : Seg13.relationRow7574 rho)
    (r7575 : Seg13.relationRow7575 rho)
    (r7576 : Seg13.relationRow7576 rho)
    (r7577 : Seg13.relationRow7577 rho)
    (tail : next (rho 35) (rho 36) (rho 14695) (rho 14696) (rho 14697) (rho 14698) (rho 14699) (rho 14704)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg0 (rho 34) (rho 35) (rho 36) (rho 14694) (rho 14695) (rho 14696) (rho 14697) (rho 14698) (rho 14699) next := by
  exact ⟨rho 14700, rho 14701, rho 14702, rho 14703, rho 14704, r7573, r7574, r7575, r7576, r7577, tail⟩

theorem seg13_scp_node20_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7578 : Seg13.relationRow7578 rho)
    (r7579 : Seg13.relationRow7579 rho)
    (r7580 : Seg13.relationRow7580 rho)
    (r7581 : Seg13.relationRow7581 rho)
    (r7582 : Seg13.relationRow7582 rho)
    (tail : next (rho 35) (rho 36) (rho 14697) (rho 14698) (rho 14699) (rho 14704) (rho 14709)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg1 (rho 35) (rho 36) (rho 14695) (rho 14696) (rho 14697) (rho 14698) (rho 14699) (rho 14704) next := by
  exact ⟨rho 14705, rho 14706, rho 14707, rho 14708, rho 14709, r7578, r7579, r7580, r7581, r7582, tail⟩

theorem seg13_scp_node20_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7583 : Seg13.relationRow7583 rho)
    (r7584 : Seg13.relationRow7584 rho)
    (r7585 : Seg13.relationRow7585 rho)
    (r7586 : Seg13.relationRow7586 rho)
    (r7587 : Seg13.relationRow7587 rho)
    (tail : next (rho 36) (rho 14699) (rho 14704) (rho 14709) (rho 14714)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg2 (rho 35) (rho 36) (rho 14697) (rho 14698) (rho 14699) (rho 14704) (rho 14709) next := by
  exact ⟨rho 14710, rho 14711, rho 14712, rho 14713, rho 14714, r7583, r7584, r7585, r7586, r7587, tail⟩

theorem seg13_scp_node20_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7588 : Seg13.relationRow7588 rho)
    (r7589 : Seg13.relationRow7589 rho)
    (r7590 : Seg13.relationRow7590 rho)
    (r7591 : Seg13.relationRow7591 rho)
    (r7592 : Seg13.relationRow7592 rho)
    (tail : next (rho 14704) (rho 14709) (rho 14714) (rho 14719)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg3 (rho 36) (rho 14699) (rho 14704) (rho 14709) (rho 14714) next := by
  exact ⟨rho 14715, rho 14716, rho 14717, rho 14718, rho 14719, r7588, r7589, r7590, r7591, r7592, tail⟩

theorem seg13_scp_node20_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7593 : Seg13.relationRow7593 rho)
    (r7594 : Seg13.relationRow7594 rho)
    (r7595 : Seg13.relationRow7595 rho)
    (r7596 : Seg13.relationRow7596 rho)
    (r7597 : Seg13.relationRow7597 rho)
    (tail : next (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg4 (rho 14704) (rho 14709) (rho 14714) (rho 14719) next := by
  exact ⟨rho 14720, rho 14721, rho 14722, rho 14723, rho 14724, r7593, r7594, r7595, r7596, r7597, tail⟩

theorem seg13_scp_node20_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7598 : Seg13.relationRow7598 rho)
    (r7599 : Seg13.relationRow7599 rho)
    (r7600 : Seg13.relationRow7600 rho)
    (r7601 : Seg13.relationRow7601 rho)
    (r7602 : Seg13.relationRow7602 rho)
    (tail : next (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) (rho 14729)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg5 (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) next := by
  exact ⟨rho 14725, rho 14726, rho 14727, rho 14728, rho 14729, r7598, r7599, r7600, r7601, r7602, tail⟩

theorem seg13_scp_node20_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7603 : Seg13.relationRow7603 rho)
    (r7604 : Seg13.relationRow7604 rho)
    (r7605 : Seg13.relationRow7605 rho)
    (r7606 : Seg13.relationRow7606 rho)
    (r7607 : Seg13.relationRow7607 rho)
    (tail : next (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) (rho 14729) (rho 14734)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg6 (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) (rho 14729) next := by
  exact ⟨rho 14730, rho 14731, rho 14732, rho 14733, rho 14734, r7603, r7604, r7605, r7606, r7607, tail⟩

theorem seg13_scp_node20_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7608 : Seg13.relationRow7608 rho)
    (r7609 : Seg13.relationRow7609 rho)
    (r7610 : Seg13.relationRow7610 rho)
    (r7611 : Seg13.relationRow7611 rho)
    (r7612 : Seg13.relationRow7612 rho)
    (tail : next (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) (rho 14729) (rho 14734) (rho 14739)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg7 (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) (rho 14729) (rho 14734) next := by
  exact ⟨rho 14735, rho 14736, rho 14737, rho 14738, rho 14739, r7608, r7609, r7610, r7611, r7612, tail⟩

theorem seg13_scp_node20_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7613 : Seg13.relationRow7613 rho)
    (r7614 : Seg13.relationRow7614 rho)
    (r7615 : Seg13.relationRow7615 rho)
    (r7616 : Seg13.relationRow7616 rho)
    (r7617 : Seg13.relationRow7617 rho)
    (tail : next (rho 14724) (rho 14729) (rho 14734) (rho 14739) (rho 14744)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg8 (rho 14704) (rho 14709) (rho 14714) (rho 14719) (rho 14724) (rho 14729) (rho 14734) (rho 14739) next := by
  exact ⟨rho 14740, rho 14741, rho 14742, rho 14743, rho 14744, r7613, r7614, r7615, r7616, r7617, tail⟩

theorem seg13_scp_node20_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7618 : Seg13.relationRow7618 rho)
    (r7619 : Seg13.relationRow7619 rho)
    (r7620 : Seg13.relationRow7620 rho)
    (r7621 : Seg13.relationRow7621 rho)
    (r7622 : Seg13.relationRow7622 rho)
    (tail : next (rho 14724) (rho 14729) (rho 14734) (rho 14739) (rho 14744) (rho 14749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg9 (rho 14724) (rho 14729) (rho 14734) (rho 14739) (rho 14744) next := by
  exact ⟨rho 14745, rho 14746, rho 14747, rho 14748, rho 14749, r7618, r7619, r7620, r7621, r7622, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

