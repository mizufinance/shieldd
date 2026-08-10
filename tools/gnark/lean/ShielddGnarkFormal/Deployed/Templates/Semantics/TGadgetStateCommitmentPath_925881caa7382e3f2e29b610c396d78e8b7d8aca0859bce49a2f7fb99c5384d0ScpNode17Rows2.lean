import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node17_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6581 rho)
    (r6582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6582 rho)
    (r6583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6583 rho)
    (r6584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6584 rho)
    (r6585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6585 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg20 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) next := by
  exact ⟨rho 6571, rho 6572, rho 6573, rho 6574, rho 6575, r6581, r6582, r6583, r6584, r6585, tail⟩

theorem template_scp_node17_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6586 rho)
    (r6587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6587 rho)
    (r6588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6588 rho)
    (r6589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6589 rho)
    (r6590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6590 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg21 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) next := by
  exact ⟨rho 6576, rho 6577, rho 6578, rho 6579, rho 6580, r6586, r6587, r6588, r6589, r6590, tail⟩

theorem template_scp_node17_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6591 rho)
    (r6592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6592 rho)
    (r6593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6593 rho)
    (r6594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6594 rho)
    (r6595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6595 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg22 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) next := by
  exact ⟨rho 6581, rho 6582, rho 6583, rho 6584, rho 6585, r6591, r6592, r6593, r6594, r6595, tail⟩

theorem template_scp_node17_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r6596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6596 rho)
    (r6597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6597 rho)
    (r6598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6598 rho)
    (r6599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6599 rho)
    (r6600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6600 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg23 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) next := by
  exact ⟨rho 6586, rho 6587, rho 6588, rho 6589, rho 6590, r6596, r6597, r6598, r6599, r6600, tail⟩

theorem template_scp_node17_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6601 rho)
    (r6602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6602 rho)
    (r6603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6603 rho)
    (r6604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6604 rho)
    (r6605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6605 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg24 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) next := by
  exact ⟨rho 6591, rho 6592, rho 6593, rho 6594, rho 6595, r6601, r6602, r6603, r6604, r6605, tail⟩

theorem template_scp_node17_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6606 rho)
    (r6607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6607 rho)
    (r6608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6608 rho)
    (r6609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6609 rho)
    (r6610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6610 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg25 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) next := by
  exact ⟨rho 6596, rho 6597, rho 6598, rho 6599, rho 6600, r6606, r6607, r6608, r6609, r6610, tail⟩

theorem template_scp_node17_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6611 rho)
    (r6612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6612 rho)
    (r6613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6613 rho)
    (r6614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6614 rho)
    (r6615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6615 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg26 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) next := by
  exact ⟨rho 6601, rho 6602, rho 6603, rho 6604, rho 6605, r6611, r6612, r6613, r6614, r6615, tail⟩

theorem template_scp_node17_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6616 rho)
    (r6617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6617 rho)
    (r6618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6618 rho)
    (r6619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6619 rho)
    (r6620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6620 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg27 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) next := by
  exact ⟨rho 6606, rho 6607, rho 6608, rho 6609, rho 6610, r6616, r6617, r6618, r6619, r6620, tail⟩

theorem template_scp_node17_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6621 rho)
    (r6622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6622 rho)
    (r6623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6623 rho)
    (r6624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6624 rho)
    (r6625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6625 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg28 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) next := by
  exact ⟨rho 6611, rho 6612, rho 6613, rho 6614, rho 6615, r6621, r6622, r6623, r6624, r6625, tail⟩

theorem template_scp_node17_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6626 rho)
    (r6627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6627 rho)
    (r6628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6628 rho)
    (r6629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6629 rho)
    (r6630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6630 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg29 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) next := by
  exact ⟨rho 6616, rho 6617, rho 6618, rho 6619, rho 6620, r6626, r6627, r6628, r6629, r6630, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
