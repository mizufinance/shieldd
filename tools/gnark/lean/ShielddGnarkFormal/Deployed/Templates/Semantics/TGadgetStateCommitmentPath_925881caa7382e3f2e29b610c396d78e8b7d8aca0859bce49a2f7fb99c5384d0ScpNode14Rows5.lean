import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node14_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5639 rho)
    (r5640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5640 rho)
    (r5641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5641 rho)
    (r5642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5642 rho)
    (r5643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5643 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg50 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) next := by
  exact ⟨rho 5632, rho 5633, rho 5634, rho 5635, rho 5636, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5639 at r5639; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc134, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc134Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc134Part1] at r5639; linear_combination r5639), r5640, r5641, r5642, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5643 at r5643; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc134, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc134Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc134Part1] at r5643; linear_combination r5643), tail⟩

theorem template_scp_node14_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5644 rho)
    (r5645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5645 rho)
    (r5646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5646 rho)
    (r5647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5647 rho)
    (r5648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5648 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) (rho 5641)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg51 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) next := by
  exact ⟨rho 5637, rho 5638, rho 5639, rho 5640, rho 5641, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5644 at r5644; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc135, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc135Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc135Part1] at r5644; linear_combination r5644), r5645, r5646, r5647, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5648 at r5648; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc135, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc135Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc135Part1] at r5648; linear_combination r5648), tail⟩

theorem template_scp_node14_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5649 rho)
    (r5650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5650 rho)
    (r5651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5651 rho)
    (r5652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5652 rho)
    (r5653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5653 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) (rho 5641) (rho 5646)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg52 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) (rho 5641) next := by
  exact ⟨rho 5642, rho 5643, rho 5644, rho 5645, rho 5646, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5649 at r5649; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc136, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc136Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc136Part1] at r5649; linear_combination r5649), r5650, r5651, r5652, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5653 at r5653; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc136, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc136Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc136Part1] at r5653; linear_combination r5653), tail⟩

theorem template_scp_node14_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5654 rho)
    (r5655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5655 rho)
    (r5656 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5656 rho)
    (r5657 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5657 rho)
    (r5658 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5658 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) (rho 5641) (rho 5646) (rho 5651)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg53 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) (rho 5641) (rho 5646) next := by
  exact ⟨rho 5647, rho 5648, rho 5649, rho 5650, rho 5651, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5654 at r5654; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc137, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc137Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc137Part1] at r5654; linear_combination r5654), r5655, r5656, r5657, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5658 at r5658; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc137, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc137Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc137Part1] at r5658; linear_combination r5658), tail⟩

theorem template_scp_node14_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5659 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5659 rho)
    (r5660 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5660 rho)
    (r5661 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5661 rho)
    (r5662 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5662 rho)
    (r5663 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5663 rho)
    (tail : next (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg54 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531) (rho 5536) (rho 5541) (rho 5546) (rho 5551) (rho 5556) (rho 5561) (rho 5566) (rho 5571) (rho 5576) (rho 5581) (rho 5586) (rho 5591) (rho 5596) (rho 5601) (rho 5606) (rho 5611) (rho 5616) (rho 5621) (rho 5626) (rho 5631) (rho 5636) (rho 5641) (rho 5646) (rho 5651) next := by
  exact ⟨rho 5652, rho 5653, rho 5654, rho 5655, rho 5656, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5659 at r5659; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc138, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc138Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc138Part1] at r5659; linear_combination r5659), r5660, r5661, r5662, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5663 at r5663; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc138, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc138Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc138Part1] at r5663; linear_combination r5663), tail⟩

theorem template_scp_node14_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5664 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5664 rho)
    (r5665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5665 rho)
    (r5666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5666 rho)
    (r5667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5667 rho)
    (r5668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5668 rho)
    (tail : next (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg55 (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) next := by
  exact ⟨rho 5657, rho 5658, rho 5659, rho 5660, rho 5661, r5664, r5665, r5666, r5667, r5668, tail⟩

theorem template_scp_node14_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5669 rho)
    (r5670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5670 rho)
    (r5671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5671 rho)
    (r5672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5672 rho)
    (r5673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5673 rho)
    (tail : next (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) (rho 5666)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg56 (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) next := by
  exact ⟨rho 5662, rho 5663, rho 5664, rho 5665, rho 5666, r5669, r5670, r5671, r5672, r5673, tail⟩

theorem template_scp_node14_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5674 rho)
    (r5675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5675 rho)
    (r5676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5676 rho)
    (r5677 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5677 rho)
    (r5678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5678 rho)
    (tail : next (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) (rho 5666) (rho 5671)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg57 (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) (rho 5666) next := by
  exact ⟨rho 5667, rho 5668, rho 5669, rho 5670, rho 5671, r5674, r5675, r5676, r5677, r5678, tail⟩

theorem template_scp_node14_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5679 rho)
    (r5680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5680 rho)
    (r5681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5681 rho)
    (r5682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5682 rho)
    (r5683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5683 rho)
    (tail : next (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) (rho 5666) (rho 5671) (rho 5676)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg58 (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) (rho 5666) (rho 5671) next := by
  exact ⟨rho 5672, rho 5673, rho 5674, rho 5675, rho 5676, r5679, r5680, r5681, r5682, r5683, tail⟩

theorem template_scp_node14_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5684 rho)
    (r5685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5685 rho)
    (r5686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5686 rho)
    (r5687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5687 rho)
    (r5688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5688 rho)
    (tail : next (rho 5661) (rho 5666) (rho 5671) (rho 5676) (rho 5681)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg59 (rho 5636) (rho 5641) (rho 5646) (rho 5651) (rho 5656) (rho 5661) (rho 5666) (rho 5671) (rho 5676) next := by
  exact ⟨rho 5677, rho 5678, rho 5679, rho 5680, rho 5681, r5684, r5685, r5686, r5687, r5688, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
