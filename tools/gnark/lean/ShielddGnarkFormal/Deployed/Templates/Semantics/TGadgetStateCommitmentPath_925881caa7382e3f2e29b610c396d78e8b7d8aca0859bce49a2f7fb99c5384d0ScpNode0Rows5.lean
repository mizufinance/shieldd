import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node0_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow543 rho)
    (r544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow544 rho)
    (r545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow545 rho)
    (r546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow546 rho)
    (r547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow547 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg50 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) next := by
  exact ⟨rho 550, rho 551, rho 552, rho 553, rho 554, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow543 at r543; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc8Part1] at r543; linear_combination r543), r544, r545, r546, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow547 at r547; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc8Part1] at r547; linear_combination r547), tail⟩

theorem template_scp_node0_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow548 rho)
    (r549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow549 rho)
    (r550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow550 rho)
    (r551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow551 rho)
    (r552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow552 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) (rho 559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg51 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) next := by
  exact ⟨rho 555, rho 556, rho 557, rho 558, rho 559, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow548 at r548; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc9Part1] at r548; linear_combination r548), r549, r550, r551, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow552 at r552; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc9Part1] at r552; linear_combination r552), tail⟩

theorem template_scp_node0_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow553 rho)
    (r554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow554 rho)
    (r555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow555 rho)
    (r556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow556 rho)
    (r557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow557 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) (rho 559) (rho 564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg52 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) (rho 559) next := by
  exact ⟨rho 560, rho 561, rho 562, rho 563, rho 564, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow553 at r553; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc10Part1] at r553; linear_combination r553), r554, r555, r556, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow557 at r557; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc10Part1] at r557; linear_combination r557), tail⟩

theorem template_scp_node0_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow558 rho)
    (r559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow559 rho)
    (r560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow560 rho)
    (r561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow561 rho)
    (r562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow562 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) (rho 559) (rho 564) (rho 569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg53 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) (rho 559) (rho 564) next := by
  exact ⟨rho 565, rho 566, rho 567, rho 568, rho 569, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow558 at r558; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc11, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc11Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc11Part1] at r558; linear_combination r558), r559, r560, r561, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow562 at r562; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc11, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc11Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc11Part1] at r562; linear_combination r562), tail⟩

theorem template_scp_node0_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow563 rho)
    (r564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow564 rho)
    (r565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow565 rho)
    (r566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow566 rho)
    (r567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow567 rho)
    (tail : next (rho 554) (rho 559) (rho 564) (rho 569) (rho 574)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg54 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479) (rho 484) (rho 489) (rho 494) (rho 499) (rho 504) (rho 509) (rho 514) (rho 519) (rho 524) (rho 529) (rho 534) (rho 539) (rho 544) (rho 549) (rho 554) (rho 559) (rho 564) (rho 569) next := by
  exact ⟨rho 570, rho 571, rho 572, rho 573, rho 574, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow563 at r563; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc12, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc12Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc12Part1] at r563; linear_combination r563), r564, r565, r566, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow567 at r567; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc12, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc12Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc12Part1] at r567; linear_combination r567), tail⟩

theorem template_scp_node0_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow568 rho)
    (r569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow569 rho)
    (r570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow570 rho)
    (r571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow571 rho)
    (r572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow572 rho)
    (tail : next (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg55 (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) next := by
  exact ⟨rho 575, rho 576, rho 577, rho 578, rho 579, r568, r569, r570, r571, r572, tail⟩

theorem template_scp_node0_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow573 rho)
    (r574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow574 rho)
    (r575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow575 rho)
    (r576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow576 rho)
    (r577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow577 rho)
    (tail : next (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) (rho 584)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg56 (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) next := by
  exact ⟨rho 580, rho 581, rho 582, rho 583, rho 584, r573, r574, r575, r576, r577, tail⟩

theorem template_scp_node0_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow578 rho)
    (r579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow579 rho)
    (r580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow580 rho)
    (r581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow581 rho)
    (r582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow582 rho)
    (tail : next (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) (rho 584) (rho 589)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg57 (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) (rho 584) next := by
  exact ⟨rho 585, rho 586, rho 587, rho 588, rho 589, r578, r579, r580, r581, r582, tail⟩

theorem template_scp_node0_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow583 rho)
    (r584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow584 rho)
    (r585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow585 rho)
    (r586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow586 rho)
    (r587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow587 rho)
    (tail : next (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) (rho 584) (rho 589) (rho 594)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg58 (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) (rho 584) (rho 589) next := by
  exact ⟨rho 590, rho 591, rho 592, rho 593, rho 594, r583, r584, r585, r586, r587, tail⟩

theorem template_scp_node0_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow588 rho)
    (r589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow589 rho)
    (r590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow590 rho)
    (r591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow591 rho)
    (r592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow592 rho)
    (tail : next (rho 579) (rho 584) (rho 589) (rho 594) (rho 599)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg59 (rho 554) (rho 559) (rho 564) (rho 569) (rho 574) (rho 579) (rho 584) (rho 589) (rho 594) next := by
  exact ⟨rho 595, rho 596, rho 597, rho 598, rho 599, r588, r589, r590, r591, r592, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
