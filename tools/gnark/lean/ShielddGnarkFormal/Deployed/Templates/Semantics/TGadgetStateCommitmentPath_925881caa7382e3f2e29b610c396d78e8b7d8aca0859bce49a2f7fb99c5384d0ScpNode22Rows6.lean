import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node22_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8601 rho)
    (r8602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8602 rho)
    (r8603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8603 rho)
    (r8604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8604 rho)
    (r8605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8605 rho)
    (tail : next (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg60 (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) next := by
  exact ⟨rho 8586, rho 8587, rho 8588, rho 8589, rho 8590, r8601, r8602, r8603, r8604, r8605, tail⟩

theorem template_scp_node22_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8606 rho)
    (r8607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8607 rho)
    (r8608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8608 rho)
    (r8609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8609 rho)
    (r8610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8610 rho)
    (tail : next (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) (rho 8595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg61 (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) next := by
  exact ⟨rho 8591, rho 8592, rho 8593, rho 8594, rho 8595, r8606, r8607, r8608, r8609, r8610, tail⟩

theorem template_scp_node22_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8611 rho)
    (r8612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8612 rho)
    (r8613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8613 rho)
    (r8614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8614 rho)
    (r8615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8615 rho)
    (tail : next (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) (rho 8595) (rho 8600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg62 (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) (rho 8595) next := by
  exact ⟨rho 8596, rho 8597, rho 8598, rho 8599, rho 8600, r8611, r8612, r8613, r8614, r8615, tail⟩

theorem template_scp_node22_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8616 rho)
    (r8617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8617 rho)
    (r8618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8618 rho)
    (r8619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8619 rho)
    (r8620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8620 rho)
    (tail : next (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) (rho 8595) (rho 8600) (rho 8605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg63 (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) (rho 8595) (rho 8600) next := by
  exact ⟨rho 8601, rho 8602, rho 8603, rho 8604, rho 8605, r8616, r8617, r8618, r8619, r8620, tail⟩

theorem template_scp_node22_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8621 rho)
    (r8622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8622 rho)
    (r8623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8623 rho)
    (r8624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8624 rho)
    (r8625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8625 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg64 (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585) (rho 8590) (rho 8595) (rho 8600) (rho 8605) next := by
  exact ⟨rho 8606, rho 8607, rho 8608, rho 8609, rho 8610, r8621, r8622, r8623, r8624, r8625, tail⟩

theorem template_scp_node22_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8626 rho)
    (r8627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8627 rho)
    (r8628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8628 rho)
    (r8629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8629 rho)
    (r8630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8630 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg65 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) next := by
  exact ⟨rho 8611, rho 8612, rho 8613, rho 8614, rho 8615, r8626, r8627, r8628, r8629, r8630, tail⟩

theorem template_scp_node22_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8631 rho)
    (r8632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8632 rho)
    (r8633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8633 rho)
    (r8634 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8634 rho)
    (r8635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8635 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg66 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) next := by
  exact ⟨rho 8616, rho 8617, rho 8618, rho 8619, rho 8620, r8631, r8632, r8633, r8634, r8635, tail⟩

theorem template_scp_node22_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8636 rho)
    (r8637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8637 rho)
    (r8638 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8638 rho)
    (r8639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8639 rho)
    (r8640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8640 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) (rho 8625)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg67 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) next := by
  exact ⟨rho 8621, rho 8622, rho 8623, rho 8624, rho 8625, r8636, r8637, r8638, r8639, r8640, tail⟩

theorem template_scp_node22_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8641 rho)
    (r8642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8642 rho)
    (r8643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8643 rho)
    (r8644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8644 rho)
    (r8645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8645 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) (rho 8625) (rho 8630)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg68 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) (rho 8625) next := by
  exact ⟨rho 8626, rho 8627, rho 8628, rho 8629, rho 8630, r8641, r8642, r8643, r8644, r8645, tail⟩

theorem template_scp_node22_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8646 rho)
    (r8647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8647 rho)
    (r8648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8648 rho)
    (r8649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8649 rho)
    (r8650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8650 rho)
    (tail : next (rho 8615) (rho 8620) (rho 8625) (rho 8630) (rho 8635)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg69 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) (rho 8625) (rho 8630) next := by
  exact ⟨rho 8631, rho 8632, rho 8633, rho 8634, rho 8635, r8646, r8647, r8648, r8649, r8650, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
