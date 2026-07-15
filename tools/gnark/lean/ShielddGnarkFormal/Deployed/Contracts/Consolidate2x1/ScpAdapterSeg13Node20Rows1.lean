import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node20_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7623 : Seg13.relationRow7623 rho)
    (r7624 : Seg13.relationRow7624 rho)
    (r7625 : Seg13.relationRow7625 rho)
    (r7626 : Seg13.relationRow7626 rho)
    (r7627 : Seg13.relationRow7627 rho)
    (tail : next (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) (rho 14760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg10 (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) next := by
  exact ⟨rho 14756, rho 14757, rho 14758, rho 14759, rho 14760, r7623, r7624, r7625, r7626, r7627, tail⟩

theorem seg13_scp_node20_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7628 : Seg13.relationRow7628 rho)
    (r7629 : Seg13.relationRow7629 rho)
    (r7630 : Seg13.relationRow7630 rho)
    (r7631 : Seg13.relationRow7631 rho)
    (r7632 : Seg13.relationRow7632 rho)
    (tail : next (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) (rho 14760) (rho 14765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg11 (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) (rho 14760) next := by
  exact ⟨rho 14761, rho 14762, rho 14763, rho 14764, rho 14765, r7628, r7629, r7630, r7631, r7632, tail⟩

theorem seg13_scp_node20_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7633 : Seg13.relationRow7633 rho)
    (r7634 : Seg13.relationRow7634 rho)
    (r7635 : Seg13.relationRow7635 rho)
    (r7636 : Seg13.relationRow7636 rho)
    (r7637 : Seg13.relationRow7637 rho)
    (tail : next (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) (rho 14760) (rho 14765) (rho 14770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg12 (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) (rho 14760) (rho 14765) next := by
  exact ⟨rho 14766, rho 14767, rho 14768, rho 14769, rho 14770, r7633, r7634, r7635, r7636, r7637, tail⟩

theorem seg13_scp_node20_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7638 : Seg13.relationRow7638 rho)
    (r7639 : Seg13.relationRow7639 rho)
    (r7640 : Seg13.relationRow7640 rho)
    (r7641 : Seg13.relationRow7641 rho)
    (r7642 : Seg13.relationRow7642 rho)
    (tail : next (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg13 (rho 14730) (rho 14735) (rho 14740) (rho 14745) (rho 14750) (rho 14755) (rho 14760) (rho 14765) (rho 14770) next := by
  exact ⟨rho 14771, rho 14772, rho 14773, rho 14774, rho 14775, r7638, r7639, r7640, r7641, r7642, tail⟩

theorem seg13_scp_node20_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7643 : Seg13.relationRow7643 rho)
    (r7644 : Seg13.relationRow7644 rho)
    (r7645 : Seg13.relationRow7645 rho)
    (r7646 : Seg13.relationRow7646 rho)
    (r7647 : Seg13.relationRow7647 rho)
    (tail : next (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg14 (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) next := by
  exact ⟨rho 14776, rho 14777, rho 14778, rho 14779, rho 14780, r7643, r7644, r7645, r7646, r7647, tail⟩

theorem seg13_scp_node20_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7648 : Seg13.relationRow7648 rho)
    (r7649 : Seg13.relationRow7649 rho)
    (r7650 : Seg13.relationRow7650 rho)
    (r7651 : Seg13.relationRow7651 rho)
    (r7652 : Seg13.relationRow7652 rho)
    (tail : next (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) (rho 14785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg15 (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) next := by
  exact ⟨rho 14781, rho 14782, rho 14783, rho 14784, rho 14785, r7648, r7649, r7650, r7651, r7652, tail⟩

theorem seg13_scp_node20_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7653 : Seg13.relationRow7653 rho)
    (r7654 : Seg13.relationRow7654 rho)
    (r7655 : Seg13.relationRow7655 rho)
    (r7656 : Seg13.relationRow7656 rho)
    (r7657 : Seg13.relationRow7657 rho)
    (tail : next (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) (rho 14785) (rho 14790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg16 (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) (rho 14785) next := by
  exact ⟨rho 14786, rho 14787, rho 14788, rho 14789, rho 14790, r7653, r7654, r7655, r7656, r7657, tail⟩

theorem seg13_scp_node20_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7658 : Seg13.relationRow7658 rho)
    (r7659 : Seg13.relationRow7659 rho)
    (r7660 : Seg13.relationRow7660 rho)
    (r7661 : Seg13.relationRow7661 rho)
    (r7662 : Seg13.relationRow7662 rho)
    (tail : next (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) (rho 14785) (rho 14790) (rho 14795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg17 (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) (rho 14785) (rho 14790) next := by
  exact ⟨rho 14791, rho 14792, rho 14793, rho 14794, rho 14795, r7658, r7659, r7660, r7661, r7662, tail⟩

theorem seg13_scp_node20_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7663 : Seg13.relationRow7663 rho)
    (r7664 : Seg13.relationRow7664 rho)
    (r7665 : Seg13.relationRow7665 rho)
    (r7666 : Seg13.relationRow7666 rho)
    (r7667 : Seg13.relationRow7667 rho)
    (tail : next (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg18 (rho 14755) (rho 14760) (rho 14765) (rho 14770) (rho 14775) (rho 14780) (rho 14785) (rho 14790) (rho 14795) next := by
  exact ⟨rho 14796, rho 14797, rho 14798, rho 14799, rho 14800, r7663, r7664, r7665, r7666, r7667, tail⟩

theorem seg13_scp_node20_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7668 : Seg13.relationRow7668 rho)
    (r7669 : Seg13.relationRow7669 rho)
    (r7670 : Seg13.relationRow7670 rho)
    (r7671 : Seg13.relationRow7671 rho)
    (r7672 : Seg13.relationRow7672 rho)
    (tail : next (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg19 (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) next := by
  exact ⟨rho 14801, rho 14802, rho 14803, rho 14804, rho 14805, r7668, r7669, r7670, r7671, r7672, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

