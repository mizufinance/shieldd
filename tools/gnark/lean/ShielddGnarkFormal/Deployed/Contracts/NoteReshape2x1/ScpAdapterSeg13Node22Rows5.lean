import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node22_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8551 : Seg13.relationRow8551 rho)
    (r8552 : Seg13.relationRow8552 rho)
    (r8553 : Seg13.relationRow8553 rho)
    (r8554 : Seg13.relationRow8554 rho)
    (r8555 : Seg13.relationRow8555 rho)
    (tail : next (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg50 (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) next := by
  exact ⟨rho 15676, rho 15677, rho 15678, rho 15679, rho 15680, r8551, r8552, r8553, r8554, r8555, tail⟩

theorem seg13_scp_node22_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8556 : Seg13.relationRow8556 rho)
    (r8557 : Seg13.relationRow8557 rho)
    (r8558 : Seg13.relationRow8558 rho)
    (r8559 : Seg13.relationRow8559 rho)
    (r8560 : Seg13.relationRow8560 rho)
    (tail : next (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) (rho 15685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg51 (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) next := by
  exact ⟨rho 15681, rho 15682, rho 15683, rho 15684, rho 15685, r8556, r8557, r8558, r8559, r8560, tail⟩

theorem seg13_scp_node22_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8561 : Seg13.relationRow8561 rho)
    (r8562 : Seg13.relationRow8562 rho)
    (r8563 : Seg13.relationRow8563 rho)
    (r8564 : Seg13.relationRow8564 rho)
    (r8565 : Seg13.relationRow8565 rho)
    (tail : next (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) (rho 15685) (rho 15690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg52 (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) (rho 15685) next := by
  exact ⟨rho 15686, rho 15687, rho 15688, rho 15689, rho 15690, r8561, r8562, r8563, r8564, r8565, tail⟩

theorem seg13_scp_node22_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8566 : Seg13.relationRow8566 rho)
    (r8567 : Seg13.relationRow8567 rho)
    (r8568 : Seg13.relationRow8568 rho)
    (r8569 : Seg13.relationRow8569 rho)
    (r8570 : Seg13.relationRow8570 rho)
    (tail : next (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) (rho 15685) (rho 15690) (rho 15695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg53 (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) (rho 15685) (rho 15690) next := by
  exact ⟨rho 15691, rho 15692, rho 15693, rho 15694, rho 15695, r8566, r8567, r8568, r8569, r8570, tail⟩

theorem seg13_scp_node22_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8571 : Seg13.relationRow8571 rho)
    (r8572 : Seg13.relationRow8572 rho)
    (r8573 : Seg13.relationRow8573 rho)
    (r8574 : Seg13.relationRow8574 rho)
    (r8575 : Seg13.relationRow8575 rho)
    (tail : next (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg54 (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525) (rho 15530) (rho 15535) (rho 15540) (rho 15545) (rho 15550) (rho 15555) (rho 15560) (rho 15565) (rho 15570) (rho 15575) (rho 15580) (rho 15585) (rho 15590) (rho 15595) (rho 15600) (rho 15605) (rho 15610) (rho 15615) (rho 15620) (rho 15625) (rho 15630) (rho 15635) (rho 15640) (rho 15645) (rho 15650) (rho 15655) (rho 15660) (rho 15665) (rho 15670) (rho 15675) (rho 15680) (rho 15685) (rho 15690) (rho 15695) next := by
  exact ⟨rho 15696, rho 15697, rho 15698, rho 15699, rho 15700, r8571, r8572, r8573, r8574, r8575, tail⟩

theorem seg13_scp_node22_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8576 : Seg13.relationRow8576 rho)
    (r8577 : Seg13.relationRow8577 rho)
    (r8578 : Seg13.relationRow8578 rho)
    (r8579 : Seg13.relationRow8579 rho)
    (r8580 : Seg13.relationRow8580 rho)
    (tail : next (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg55 (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) next := by
  exact ⟨rho 15701, rho 15702, rho 15703, rho 15704, rho 15705, r8576, r8577, r8578, r8579, r8580, tail⟩

theorem seg13_scp_node22_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8581 : Seg13.relationRow8581 rho)
    (r8582 : Seg13.relationRow8582 rho)
    (r8583 : Seg13.relationRow8583 rho)
    (r8584 : Seg13.relationRow8584 rho)
    (r8585 : Seg13.relationRow8585 rho)
    (tail : next (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) (rho 15710)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg56 (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) next := by
  exact ⟨rho 15706, rho 15707, rho 15708, rho 15709, rho 15710, r8581, r8582, r8583, r8584, r8585, tail⟩

theorem seg13_scp_node22_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8586 : Seg13.relationRow8586 rho)
    (r8587 : Seg13.relationRow8587 rho)
    (r8588 : Seg13.relationRow8588 rho)
    (r8589 : Seg13.relationRow8589 rho)
    (r8590 : Seg13.relationRow8590 rho)
    (tail : next (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) (rho 15710) (rho 15715)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg57 (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) (rho 15710) next := by
  exact ⟨rho 15711, rho 15712, rho 15713, rho 15714, rho 15715, r8586, r8587, r8588, r8589, r8590, tail⟩

theorem seg13_scp_node22_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8591 : Seg13.relationRow8591 rho)
    (r8592 : Seg13.relationRow8592 rho)
    (r8593 : Seg13.relationRow8593 rho)
    (r8594 : Seg13.relationRow8594 rho)
    (r8595 : Seg13.relationRow8595 rho)
    (tail : next (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) (rho 15710) (rho 15715) (rho 15720)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg58 (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) (rho 15710) (rho 15715) next := by
  exact ⟨rho 15716, rho 15717, rho 15718, rho 15719, rho 15720, r8591, r8592, r8593, r8594, r8595, tail⟩

theorem seg13_scp_node22_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8596 : Seg13.relationRow8596 rho)
    (r8597 : Seg13.relationRow8597 rho)
    (r8598 : Seg13.relationRow8598 rho)
    (r8599 : Seg13.relationRow8599 rho)
    (r8600 : Seg13.relationRow8600 rho)
    (tail : next (rho 15705) (rho 15710) (rho 15715) (rho 15720) (rho 15725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg59 (rho 15680) (rho 15685) (rho 15690) (rho 15695) (rho 15700) (rho 15705) (rho 15710) (rho 15715) (rho 15720) next := by
  exact ⟨rho 15721, rho 15722, rho 15723, rho 15724, rho 15725, r8596, r8597, r8598, r8599, r8600, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

