import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node22_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8601 : Seg13.relationRow8601 rho)
    (r8602 : Seg13.relationRow8602 rho)
    (r8603 : Seg13.relationRow8603 rho)
    (r8604 : Seg13.relationRow8604 rho)
    (r8605 : Seg13.relationRow8605 rho)
    (tail : next (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg60 (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) next := by
  exact ⟨rho 15726, rho 15727, rho 15728, rho 15729, rho 15730, r8601, r8602, r8603, r8604, r8605, tail⟩

theorem seg13_scp_node22_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8606 : Seg13.relationRow8606 rho)
    (r8607 : Seg13.relationRow8607 rho)
    (r8608 : Seg13.relationRow8608 rho)
    (r8609 : Seg13.relationRow8609 rho)
    (r8610 : Seg13.relationRow8610 rho)
    (tail : next (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) (rho 15735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg61 (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) next := by
  exact ⟨rho 15731, rho 15732, rho 15733, rho 15734, rho 15735, r8606, r8607, r8608, r8609, r8610, tail⟩

theorem seg13_scp_node22_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8611 : Seg13.relationRow8611 rho)
    (r8612 : Seg13.relationRow8612 rho)
    (r8613 : Seg13.relationRow8613 rho)
    (r8614 : Seg13.relationRow8614 rho)
    (r8615 : Seg13.relationRow8615 rho)
    (tail : next (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) (rho 15735) (rho 15740)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg62 (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) (rho 15735) next := by
  exact ⟨rho 15736, rho 15737, rho 15738, rho 15739, rho 15740, r8611, r8612, r8613, r8614, r8615, tail⟩

theorem seg13_scp_node22_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8616 : Seg13.relationRow8616 rho)
    (r8617 : Seg13.relationRow8617 rho)
    (r8618 : Seg13.relationRow8618 rho)
    (r8619 : Seg13.relationRow8619 rho)
    (r8620 : Seg13.relationRow8620 rho)
    (tail : next (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) (rho 15735) (rho 15740) (rho 15745)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg63 (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) (rho 15735) (rho 15740) next := by
  exact ⟨rho 15741, rho 15742, rho 15743, rho 15744, rho 15745, r8616, r8617, r8618, r8619, r8620, tail⟩

theorem seg13_scp_node22_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8621 : Seg13.relationRow8621 rho)
    (r8622 : Seg13.relationRow8622 rho)
    (r8623 : Seg13.relationRow8623 rho)
    (r8624 : Seg13.relationRow8624 rho)
    (r8625 : Seg13.relationRow8625 rho)
    (tail : next (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg64 (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725) (rho 15730) (rho 15735) (rho 15740) (rho 15745) next := by
  exact ⟨rho 15746, rho 15747, rho 15748, rho 15749, rho 15750, r8621, r8622, r8623, r8624, r8625, tail⟩

theorem seg13_scp_node22_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8626 : Seg13.relationRow8626 rho)
    (r8627 : Seg13.relationRow8627 rho)
    (r8628 : Seg13.relationRow8628 rho)
    (r8629 : Seg13.relationRow8629 rho)
    (r8630 : Seg13.relationRow8630 rho)
    (tail : next (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg65 (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) next := by
  exact ⟨rho 15751, rho 15752, rho 15753, rho 15754, rho 15755, r8626, r8627, r8628, r8629, r8630, tail⟩

theorem seg13_scp_node22_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8631 : Seg13.relationRow8631 rho)
    (r8632 : Seg13.relationRow8632 rho)
    (r8633 : Seg13.relationRow8633 rho)
    (r8634 : Seg13.relationRow8634 rho)
    (r8635 : Seg13.relationRow8635 rho)
    (tail : next (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) (rho 15760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg66 (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) next := by
  exact ⟨rho 15756, rho 15757, rho 15758, rho 15759, rho 15760, r8631, r8632, r8633, r8634, r8635, tail⟩

theorem seg13_scp_node22_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8636 : Seg13.relationRow8636 rho)
    (r8637 : Seg13.relationRow8637 rho)
    (r8638 : Seg13.relationRow8638 rho)
    (r8639 : Seg13.relationRow8639 rho)
    (r8640 : Seg13.relationRow8640 rho)
    (tail : next (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) (rho 15760) (rho 15765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg67 (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) (rho 15760) next := by
  exact ⟨rho 15761, rho 15762, rho 15763, rho 15764, rho 15765, r8636, r8637, r8638, r8639, r8640, tail⟩

theorem seg13_scp_node22_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8641 : Seg13.relationRow8641 rho)
    (r8642 : Seg13.relationRow8642 rho)
    (r8643 : Seg13.relationRow8643 rho)
    (r8644 : Seg13.relationRow8644 rho)
    (r8645 : Seg13.relationRow8645 rho)
    (tail : next (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) (rho 15760) (rho 15765) (rho 15770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg68 (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) (rho 15760) (rho 15765) next := by
  exact ⟨rho 15766, rho 15767, rho 15768, rho 15769, rho 15770, r8641, r8642, r8643, r8644, r8645, tail⟩

theorem seg13_scp_node22_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8646 : Seg13.relationRow8646 rho)
    (r8647 : Seg13.relationRow8647 rho)
    (r8648 : Seg13.relationRow8648 rho)
    (r8649 : Seg13.relationRow8649 rho)
    (r8650 : Seg13.relationRow8650 rho)
    (tail : next (rho 15755) (rho 15760) (rho 15765) (rho 15770) (rho 15775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg69 (rho 15730) (rho 15735) (rho 15740) (rho 15745) (rho 15750) (rho 15755) (rho 15760) (rho 15765) (rho 15770) next := by
  exact ⟨rho 15771, rho 15772, rho 15773, rho 15774, rho 15775, r8646, r8647, r8648, r8649, r8650, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

