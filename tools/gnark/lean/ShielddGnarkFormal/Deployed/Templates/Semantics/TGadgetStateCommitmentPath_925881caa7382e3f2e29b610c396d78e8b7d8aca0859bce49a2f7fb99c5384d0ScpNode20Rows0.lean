import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node20_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7573 rho)
    (r7574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7574 rho)
    (r7575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7575 rho)
    (r7576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7576 rho)
    (r7577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7577 rho)
    (tail : next (rho 7553) (rho 7556) (rho 7554) (rho 7555) (rho 7557) (rho 7558) (rho 7559) (rho 7564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg0 (rho 7551) (rho 7553) (rho 7556) (rho 7552) (rho 7554) (rho 7555) (rho 7557) (rho 7558) (rho 7559) next := by
  exact ⟨rho 7560, rho 7561, rho 7562, rho 7563, rho 7564, r7573, r7574, r7575, r7576, r7577, tail⟩

theorem template_scp_node20_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7578 rho)
    (r7579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7579 rho)
    (r7580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7580 rho)
    (r7581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7581 rho)
    (r7582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7582 rho)
    (tail : next (rho 7553) (rho 7556) (rho 7557) (rho 7558) (rho 7559) (rho 7564) (rho 7569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg1 (rho 7553) (rho 7556) (rho 7554) (rho 7555) (rho 7557) (rho 7558) (rho 7559) (rho 7564) next := by
  exact ⟨rho 7565, rho 7566, rho 7567, rho 7568, rho 7569, r7578, r7579, r7580, r7581, r7582, tail⟩

theorem template_scp_node20_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7583 rho)
    (r7584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7584 rho)
    (r7585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7585 rho)
    (r7586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7586 rho)
    (r7587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7587 rho)
    (tail : next (rho 7556) (rho 7559) (rho 7564) (rho 7569) (rho 7574)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg2 (rho 7553) (rho 7556) (rho 7557) (rho 7558) (rho 7559) (rho 7564) (rho 7569) next := by
  exact ⟨rho 7570, rho 7571, rho 7572, rho 7573, rho 7574, r7583, r7584, r7585, r7586, r7587, tail⟩

theorem template_scp_node20_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r7588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7588 rho)
    (r7589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7589 rho)
    (r7590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7590 rho)
    (r7591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7591 rho)
    (r7592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7592 rho)
    (tail : next (rho 7564) (rho 7569) (rho 7574) (rho 7579)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg3 (rho 7556) (rho 7559) (rho 7564) (rho 7569) (rho 7574) next := by
  exact ⟨rho 7575, rho 7576, rho 7577, rho 7578, rho 7579, r7588, r7589, r7590, r7591, r7592, tail⟩

theorem template_scp_node20_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7593 rho)
    (r7594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7594 rho)
    (r7595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7595 rho)
    (r7596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7596 rho)
    (r7597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7597 rho)
    (tail : next (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg4 (rho 7564) (rho 7569) (rho 7574) (rho 7579) next := by
  exact ⟨rho 7580, rho 7581, rho 7582, rho 7583, rho 7584, r7593, r7594, r7595, r7596, r7597, tail⟩

theorem template_scp_node20_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7598 rho)
    (r7599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7599 rho)
    (r7600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7600 rho)
    (r7601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7601 rho)
    (r7602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7602 rho)
    (tail : next (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg5 (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) next := by
  exact ⟨rho 7585, rho 7586, rho 7587, rho 7588, rho 7589, r7598, r7599, r7600, r7601, r7602, tail⟩

theorem template_scp_node20_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7603 rho)
    (r7604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7604 rho)
    (r7605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7605 rho)
    (r7606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7606 rho)
    (r7607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7607 rho)
    (tail : next (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg6 (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589) next := by
  exact ⟨rho 7590, rho 7591, rho 7592, rho 7593, rho 7594, r7603, r7604, r7605, r7606, r7607, tail⟩

theorem template_scp_node20_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7608 rho)
    (r7609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7609 rho)
    (r7610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7610 rho)
    (r7611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7611 rho)
    (r7612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7612 rho)
    (tail : next (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg7 (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) next := by
  exact ⟨rho 7595, rho 7596, rho 7597, rho 7598, rho 7599, r7608, r7609, r7610, r7611, r7612, tail⟩

theorem template_scp_node20_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7613 rho)
    (r7614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7614 rho)
    (r7615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7615 rho)
    (r7616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7616 rho)
    (r7617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7617 rho)
    (tail : next (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg8 (rho 7564) (rho 7569) (rho 7574) (rho 7579) (rho 7584) (rho 7589) (rho 7594) (rho 7599) next := by
  exact ⟨rho 7600, rho 7601, rho 7602, rho 7603, rho 7604, r7613, r7614, r7615, r7616, r7617, tail⟩

theorem template_scp_node20_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7618 rho)
    (r7619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7619 rho)
    (r7620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7620 rho)
    (r7621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7621 rho)
    (r7622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7622 rho)
    (tail : next (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) (rho 7609)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg9 (rho 7584) (rho 7589) (rho 7594) (rho 7599) (rho 7604) next := by
  exact ⟨rho 7605, rho 7606, rho 7607, rho 7608, rho 7609, r7618, r7619, r7620, r7621, r7622, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
