import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node17_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6731 rho)
    (r6732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6732 rho)
    (r6733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6733 rho)
    (r6734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6734 rho)
    (r6735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6735 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg50 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) next := by
  exact ⟨rho 6721, rho 6722, rho 6723, rho 6724, rho 6725, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6731 at r6731; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc161, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc161Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc161Part1] at r6731; linear_combination r6731), r6732, r6733, r6734, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6735 at r6735; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc161, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc161Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc161Part1] at r6735; linear_combination r6735), tail⟩

theorem template_scp_node17_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6736 rho)
    (r6737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6737 rho)
    (r6738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6738 rho)
    (r6739 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6739 rho)
    (r6740 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6740 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) (rho 6730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg51 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) next := by
  exact ⟨rho 6726, rho 6727, rho 6728, rho 6729, rho 6730, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6736 at r6736; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc162, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc162Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc162Part1] at r6736; linear_combination r6736), r6737, r6738, r6739, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6740 at r6740; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc162, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc162Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc162Part1] at r6740; linear_combination r6740), tail⟩

theorem template_scp_node17_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6741 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6741 rho)
    (r6742 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6742 rho)
    (r6743 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6743 rho)
    (r6744 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6744 rho)
    (r6745 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6745 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) (rho 6730) (rho 6735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg52 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) (rho 6730) next := by
  exact ⟨rho 6731, rho 6732, rho 6733, rho 6734, rho 6735, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6741 at r6741; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc163, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc163Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc163Part1] at r6741; linear_combination r6741), r6742, r6743, r6744, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6745 at r6745; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc163, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc163Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc163Part1] at r6745; linear_combination r6745), tail⟩

theorem template_scp_node17_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6746 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6746 rho)
    (r6747 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6747 rho)
    (r6748 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6748 rho)
    (r6749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6749 rho)
    (r6750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6750 rho)
    (tail : next (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) (rho 6730) (rho 6735) (rho 6740)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg53 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) (rho 6730) (rho 6735) next := by
  exact ⟨rho 6736, rho 6737, rho 6738, rho 6739, rho 6740, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6746 at r6746; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc164, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc164Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc164Part1] at r6746; linear_combination r6746), r6747, r6748, r6749, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6750 at r6750; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc164, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc164Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc164Part1] at r6750; linear_combination r6750), tail⟩

theorem template_scp_node17_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6751 rho)
    (r6752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6752 rho)
    (r6753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6753 rho)
    (r6754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6754 rho)
    (r6755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6755 rho)
    (tail : next (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg54 (rho 6545) (rho 6550) (rho 6555) (rho 6560) (rho 6565) (rho 6570) (rho 6575) (rho 6580) (rho 6585) (rho 6590) (rho 6595) (rho 6600) (rho 6605) (rho 6610) (rho 6615) (rho 6620) (rho 6625) (rho 6630) (rho 6635) (rho 6640) (rho 6645) (rho 6650) (rho 6655) (rho 6660) (rho 6665) (rho 6670) (rho 6675) (rho 6680) (rho 6685) (rho 6690) (rho 6695) (rho 6700) (rho 6705) (rho 6710) (rho 6715) (rho 6720) (rho 6725) (rho 6730) (rho 6735) (rho 6740) next := by
  exact ⟨rho 6741, rho 6742, rho 6743, rho 6744, rho 6745, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6751 at r6751; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc165, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc165Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc165Part1] at r6751; linear_combination r6751), r6752, r6753, r6754, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6755 at r6755; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc165, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc165Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc165Part1] at r6755; linear_combination r6755), tail⟩

theorem template_scp_node17_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6756 rho)
    (r6757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6757 rho)
    (r6758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6758 rho)
    (r6759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6759 rho)
    (r6760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6760 rho)
    (tail : next (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg55 (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) next := by
  exact ⟨rho 6746, rho 6747, rho 6748, rho 6749, rho 6750, r6756, r6757, r6758, r6759, r6760, tail⟩

theorem template_scp_node17_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6761 rho)
    (r6762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6762 rho)
    (r6763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6763 rho)
    (r6764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6764 rho)
    (r6765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6765 rho)
    (tail : next (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) (rho 6755)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg56 (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) next := by
  exact ⟨rho 6751, rho 6752, rho 6753, rho 6754, rho 6755, r6761, r6762, r6763, r6764, r6765, tail⟩

theorem template_scp_node17_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6766 rho)
    (r6767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6767 rho)
    (r6768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6768 rho)
    (r6769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6769 rho)
    (r6770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6770 rho)
    (tail : next (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) (rho 6755) (rho 6760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg57 (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) (rho 6755) next := by
  exact ⟨rho 6756, rho 6757, rho 6758, rho 6759, rho 6760, r6766, r6767, r6768, r6769, r6770, tail⟩

theorem template_scp_node17_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6771 rho)
    (r6772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6772 rho)
    (r6773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6773 rho)
    (r6774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6774 rho)
    (r6775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6775 rho)
    (tail : next (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) (rho 6755) (rho 6760) (rho 6765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg58 (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) (rho 6755) (rho 6760) next := by
  exact ⟨rho 6761, rho 6762, rho 6763, rho 6764, rho 6765, r6771, r6772, r6773, r6774, r6775, tail⟩

theorem template_scp_node17_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6776 rho)
    (r6777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6777 rho)
    (r6778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6778 rho)
    (r6779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6779 rho)
    (r6780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6780 rho)
    (tail : next (rho 6750) (rho 6755) (rho 6760) (rho 6765) (rho 6770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg59 (rho 6725) (rho 6730) (rho 6735) (rho 6740) (rho 6745) (rho 6750) (rho 6755) (rho 6760) (rho 6765) next := by
  exact ⟨rho 6766, rho 6767, rho 6768, rho 6769, rho 6770, r6776, r6777, r6778, r6779, r6780, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
