import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node0_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r543 : Seg13.relationRow543 rho)
    (r544 : Seg13.relationRow544 rho)
    (r545 : Seg13.relationRow545 rho)
    (r546 : Seg13.relationRow546 rho)
    (r547 : Seg13.relationRow547 rho)
    (tail : next (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg50 (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) next := by
  exact ⟨rho 7756, rho 7757, rho 7758, rho 7759, rho 7760, r543, r544, r545, r546, r547, tail⟩

theorem seg13_scp_node0_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r548 : Seg13.relationRow548 rho)
    (r549 : Seg13.relationRow549 rho)
    (r550 : Seg13.relationRow550 rho)
    (r551 : Seg13.relationRow551 rho)
    (r552 : Seg13.relationRow552 rho)
    (tail : next (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) (rho 7765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg51 (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) next := by
  exact ⟨rho 7761, rho 7762, rho 7763, rho 7764, rho 7765, r548, r549, r550, r551, r552, tail⟩

theorem seg13_scp_node0_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r553 : Seg13.relationRow553 rho)
    (r554 : Seg13.relationRow554 rho)
    (r555 : Seg13.relationRow555 rho)
    (r556 : Seg13.relationRow556 rho)
    (r557 : Seg13.relationRow557 rho)
    (tail : next (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) (rho 7765) (rho 7770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg52 (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) (rho 7765) next := by
  exact ⟨rho 7766, rho 7767, rho 7768, rho 7769, rho 7770, r553, r554, r555, r556, r557, tail⟩

theorem seg13_scp_node0_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r558 : Seg13.relationRow558 rho)
    (r559 : Seg13.relationRow559 rho)
    (r560 : Seg13.relationRow560 rho)
    (r561 : Seg13.relationRow561 rho)
    (r562 : Seg13.relationRow562 rho)
    (tail : next (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) (rho 7765) (rho 7770) (rho 7775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg53 (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) (rho 7765) (rho 7770) next := by
  exact ⟨rho 7771, rho 7772, rho 7773, rho 7774, rho 7775, r558, r559, r560, r561, r562, tail⟩

theorem seg13_scp_node0_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r563 : Seg13.relationRow563 rho)
    (r564 : Seg13.relationRow564 rho)
    (r565 : Seg13.relationRow565 rho)
    (r566 : Seg13.relationRow566 rho)
    (r567 : Seg13.relationRow567 rho)
    (tail : next (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg54 (rho 7580) (rho 7585) (rho 7590) (rho 7595) (rho 7600) (rho 7605) (rho 7610) (rho 7615) (rho 7620) (rho 7625) (rho 7630) (rho 7635) (rho 7640) (rho 7645) (rho 7650) (rho 7655) (rho 7660) (rho 7665) (rho 7670) (rho 7675) (rho 7680) (rho 7685) (rho 7690) (rho 7695) (rho 7700) (rho 7705) (rho 7710) (rho 7715) (rho 7720) (rho 7725) (rho 7730) (rho 7735) (rho 7740) (rho 7745) (rho 7750) (rho 7755) (rho 7760) (rho 7765) (rho 7770) (rho 7775) next := by
  exact ⟨rho 7776, rho 7777, rho 7778, rho 7779, rho 7780, r563, r564, r565, r566, r567, tail⟩

theorem seg13_scp_node0_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r568 : Seg13.relationRow568 rho)
    (r569 : Seg13.relationRow569 rho)
    (r570 : Seg13.relationRow570 rho)
    (r571 : Seg13.relationRow571 rho)
    (r572 : Seg13.relationRow572 rho)
    (tail : next (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg55 (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) next := by
  exact ⟨rho 7781, rho 7782, rho 7783, rho 7784, rho 7785, r568, r569, r570, r571, r572, tail⟩

theorem seg13_scp_node0_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r573 : Seg13.relationRow573 rho)
    (r574 : Seg13.relationRow574 rho)
    (r575 : Seg13.relationRow575 rho)
    (r576 : Seg13.relationRow576 rho)
    (r577 : Seg13.relationRow577 rho)
    (tail : next (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) (rho 7790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg56 (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) next := by
  exact ⟨rho 7786, rho 7787, rho 7788, rho 7789, rho 7790, r573, r574, r575, r576, r577, tail⟩

theorem seg13_scp_node0_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r578 : Seg13.relationRow578 rho)
    (r579 : Seg13.relationRow579 rho)
    (r580 : Seg13.relationRow580 rho)
    (r581 : Seg13.relationRow581 rho)
    (r582 : Seg13.relationRow582 rho)
    (tail : next (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) (rho 7790) (rho 7795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg57 (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) (rho 7790) next := by
  exact ⟨rho 7791, rho 7792, rho 7793, rho 7794, rho 7795, r578, r579, r580, r581, r582, tail⟩

theorem seg13_scp_node0_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r583 : Seg13.relationRow583 rho)
    (r584 : Seg13.relationRow584 rho)
    (r585 : Seg13.relationRow585 rho)
    (r586 : Seg13.relationRow586 rho)
    (r587 : Seg13.relationRow587 rho)
    (tail : next (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) (rho 7790) (rho 7795) (rho 7800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg58 (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) (rho 7790) (rho 7795) next := by
  exact ⟨rho 7796, rho 7797, rho 7798, rho 7799, rho 7800, r583, r584, r585, r586, r587, tail⟩

theorem seg13_scp_node0_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r588 : Seg13.relationRow588 rho)
    (r589 : Seg13.relationRow589 rho)
    (r590 : Seg13.relationRow590 rho)
    (r591 : Seg13.relationRow591 rho)
    (r592 : Seg13.relationRow592 rho)
    (tail : next (rho 7785) (rho 7790) (rho 7795) (rho 7800) (rho 7805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg59 (rho 7760) (rho 7765) (rho 7770) (rho 7775) (rho 7780) (rho 7785) (rho 7790) (rho 7795) (rho 7800) next := by
  exact ⟨rho 7801, rho 7802, rho 7803, rho 7804, rho 7805, r588, r589, r590, r591, r592, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

