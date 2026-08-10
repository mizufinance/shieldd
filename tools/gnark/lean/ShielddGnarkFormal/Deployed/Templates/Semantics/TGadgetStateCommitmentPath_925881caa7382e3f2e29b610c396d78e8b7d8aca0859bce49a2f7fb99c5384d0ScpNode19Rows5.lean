import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node19_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7459 rho)
    (r7460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7460 rho)
    (r7461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7461 rho)
    (r7462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7462 rho)
    (r7463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7463 rho)
    (tail : next (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg50 (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) next := by
  exact ⟨rho 7447, rho 7448, rho 7449, rho 7450, rho 7451, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7459 at r7459; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc179, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc179Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc179Part1] at r7459; linear_combination r7459), r7460, r7461, r7462, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7463 at r7463; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc179, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc179Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc179Part1] at r7463; linear_combination r7463), tail⟩

theorem template_scp_node19_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7464 rho)
    (r7465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7465 rho)
    (r7466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7466 rho)
    (r7467 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7467 rho)
    (r7468 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7468 rho)
    (tail : next (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) (rho 7456)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg51 (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) next := by
  exact ⟨rho 7452, rho 7453, rho 7454, rho 7455, rho 7456, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7464 at r7464; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc180, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc180Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc180Part1] at r7464; linear_combination r7464), r7465, r7466, r7467, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7468 at r7468; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc180, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc180Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc180Part1] at r7468; linear_combination r7468), tail⟩

theorem template_scp_node19_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7469 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7469 rho)
    (r7470 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7470 rho)
    (r7471 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7471 rho)
    (r7472 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7472 rho)
    (r7473 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7473 rho)
    (tail : next (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) (rho 7456) (rho 7461)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg52 (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) (rho 7456) next := by
  exact ⟨rho 7457, rho 7458, rho 7459, rho 7460, rho 7461, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7469 at r7469; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc181, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc181Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc181Part1] at r7469; linear_combination r7469), r7470, r7471, r7472, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7473 at r7473; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc181, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc181Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc181Part1] at r7473; linear_combination r7473), tail⟩

theorem template_scp_node19_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7474 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7474 rho)
    (r7475 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7475 rho)
    (r7476 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7476 rho)
    (r7477 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7477 rho)
    (r7478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7478 rho)
    (tail : next (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) (rho 7456) (rho 7461) (rho 7466)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg53 (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) (rho 7456) (rho 7461) next := by
  exact ⟨rho 7462, rho 7463, rho 7464, rho 7465, rho 7466, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7474 at r7474; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc182, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc182Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc182Part1] at r7474; linear_combination r7474), r7475, r7476, r7477, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7478 at r7478; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc182, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc182Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc182Part1] at r7478; linear_combination r7478), tail⟩

theorem template_scp_node19_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7479 rho)
    (r7480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7480 rho)
    (r7481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7481 rho)
    (r7482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7482 rho)
    (r7483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7483 rho)
    (tail : next (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg54 (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296) (rho 7301) (rho 7306) (rho 7311) (rho 7316) (rho 7321) (rho 7326) (rho 7331) (rho 7336) (rho 7341) (rho 7346) (rho 7351) (rho 7356) (rho 7361) (rho 7366) (rho 7371) (rho 7376) (rho 7381) (rho 7386) (rho 7391) (rho 7396) (rho 7401) (rho 7406) (rho 7411) (rho 7416) (rho 7421) (rho 7426) (rho 7431) (rho 7436) (rho 7441) (rho 7446) (rho 7451) (rho 7456) (rho 7461) (rho 7466) next := by
  exact ⟨rho 7467, rho 7468, rho 7469, rho 7470, rho 7471, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7479 at r7479; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc183, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc183Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc183Part1] at r7479; linear_combination r7479), r7480, r7481, r7482, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7483 at r7483; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc183, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc183Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc183Part1] at r7483; linear_combination r7483), tail⟩

theorem template_scp_node19_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7484 rho)
    (r7485 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7485 rho)
    (r7486 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7486 rho)
    (r7487 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7487 rho)
    (r7488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7488 rho)
    (tail : next (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg55 (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) next := by
  exact ⟨rho 7472, rho 7473, rho 7474, rho 7475, rho 7476, r7484, r7485, r7486, r7487, r7488, tail⟩

theorem template_scp_node19_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7489 rho)
    (r7490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7490 rho)
    (r7491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7491 rho)
    (r7492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7492 rho)
    (r7493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7493 rho)
    (tail : next (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) (rho 7481)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg56 (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) next := by
  exact ⟨rho 7477, rho 7478, rho 7479, rho 7480, rho 7481, r7489, r7490, r7491, r7492, r7493, tail⟩

theorem template_scp_node19_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7494 rho)
    (r7495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7495 rho)
    (r7496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7496 rho)
    (r7497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7497 rho)
    (r7498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7498 rho)
    (tail : next (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) (rho 7481) (rho 7486)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg57 (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) (rho 7481) next := by
  exact ⟨rho 7482, rho 7483, rho 7484, rho 7485, rho 7486, r7494, r7495, r7496, r7497, r7498, tail⟩

theorem template_scp_node19_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7499 rho)
    (r7500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7500 rho)
    (r7501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7501 rho)
    (r7502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7502 rho)
    (r7503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7503 rho)
    (tail : next (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) (rho 7481) (rho 7486) (rho 7491)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg58 (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) (rho 7481) (rho 7486) next := by
  exact ⟨rho 7487, rho 7488, rho 7489, rho 7490, rho 7491, r7499, r7500, r7501, r7502, r7503, tail⟩

theorem template_scp_node19_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7504 rho)
    (r7505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7505 rho)
    (r7506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7506 rho)
    (r7507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7507 rho)
    (r7508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7508 rho)
    (tail : next (rho 7476) (rho 7481) (rho 7486) (rho 7491) (rho 7496)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg59 (rho 7451) (rho 7456) (rho 7461) (rho 7466) (rho 7471) (rho 7476) (rho 7481) (rho 7486) (rho 7491) next := by
  exact ⟨rho 7492, rho 7493, rho 7494, rho 7495, rho 7496, r7504, r7505, r7506, r7507, r7508, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
