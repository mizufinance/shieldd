import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node20_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7623 rho)
    (r7624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7624 rho)
    (r7625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7625 rho)
    (r7626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7626 rho)
    (r7627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7627 rho)
    (tail : next (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg10 (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) next := by
  exact ⟨rho 7610, rho 7611, rho 7612, rho 7613, rho 7614, r7623, r7624, r7625, r7626, r7627, tail⟩

theorem template_scp_node20_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7628 rho)
    (r7629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7629 rho)
    (r7630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7630 rho)
    (r7631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7631 rho)
    (r7632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7632 rho)
    (tail : next (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg11 (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) next := by
  exact ⟨rho 7615, rho 7616, rho 7617, rho 7618, rho 7619, r7628, r7629, r7630, r7631, r7632, tail⟩

theorem template_scp_node20_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7633 rho)
    (r7634 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7634 rho)
    (r7635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7635 rho)
    (r7636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7636 rho)
    (r7637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7637 rho)
    (tail : next (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg12 (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) next := by
  exact ⟨rho 7620, rho 7621, rho 7622, rho 7623, rho 7624, r7633, r7634, r7635, r7636, r7637, tail⟩

theorem template_scp_node20_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7638 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7638 rho)
    (r7639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7639 rho)
    (r7640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7640 rho)
    (r7641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7641 rho)
    (r7642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7642 rho)
    (tail : next (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg13 (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609) (rho 7614) (rho 7619) (rho 7624) next := by
  exact ⟨rho 7625, rho 7626, rho 7627, rho 7628, rho 7629, r7638, r7639, r7640, r7641, r7642, tail⟩

theorem template_scp_node20_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7643 rho)
    (r7644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7644 rho)
    (r7645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7645 rho)
    (r7646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7646 rho)
    (r7647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7647 rho)
    (tail : next (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg14 (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) next := by
  exact ⟨rho 7630, rho 7631, rho 7632, rho 7633, rho 7634, r7643, r7644, r7645, r7646, r7647, tail⟩

theorem template_scp_node20_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7648 rho)
    (r7649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7649 rho)
    (r7650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7650 rho)
    (r7651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7651 rho)
    (r7652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7652 rho)
    (tail : next (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg15 (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) next := by
  exact ⟨rho 7635, rho 7636, rho 7637, rho 7638, rho 7639, r7648, r7649, r7650, r7651, r7652, tail⟩

theorem template_scp_node20_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7653 rho)
    (r7654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7654 rho)
    (r7655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7655 rho)
    (r7656 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7656 rho)
    (r7657 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7657 rho)
    (tail : next (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg16 (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) next := by
  exact ⟨rho 7640, rho 7641, rho 7642, rho 7643, rho 7644, r7653, r7654, r7655, r7656, r7657, tail⟩

theorem template_scp_node20_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7658 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7658 rho)
    (r7659 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7659 rho)
    (r7660 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7660 rho)
    (r7661 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7661 rho)
    (r7662 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7662 rho)
    (tail : next (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg17 (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) next := by
  exact ⟨rho 7645, rho 7646, rho 7647, rho 7648, rho 7649, r7658, r7659, r7660, r7661, r7662, tail⟩

theorem template_scp_node20_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7663 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7663 rho)
    (r7664 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7664 rho)
    (r7665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7665 rho)
    (r7666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7666 rho)
    (r7667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7667 rho)
    (tail : next (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg18 (rho 7609) (rho 7614) (rho 7619) (rho 7624) (rho 7629) (rho 7634) (rho 7639) (rho 7644) (rho 7649) next := by
  exact ⟨rho 7650, rho 7651, rho 7652, rho 7653, rho 7654, r7663, r7664, r7665, r7666, r7667, tail⟩

theorem template_scp_node20_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7668 rho)
    (r7669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7669 rho)
    (r7670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7670 rho)
    (r7671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7671 rho)
    (r7672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7672 rho)
    (tail : next (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) (rho 7659)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg19 (rho 7634) (rho 7639) (rho 7644) (rho 7649) (rho 7654) next := by
  exact ⟨rho 7655, rho 7656, rho 7657, rho 7658, rho 7659, r7668, r7669, r7670, r7671, r7672, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
