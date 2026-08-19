import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_step1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    seg37ScpNode1Out rho =
      Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (2 : F))
        (seg37ScpNode0Out rho) (rho 653) (rho 655) (rho 658)
        (rho 239) (rho 240) := by
  have hnode := template_scp_node1_eq rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart8 at p8
  rcases p8 with ⟨_, _, _, r643, r644, r645, r646, _, r648, r649, _, r651, r652, _, r654, _, r656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (2 : F))
      (seg37ScpNode0Out rho) (rho 653) (rho 655) (rho 658)
      (rho 239) (rho 240)
      (rho 649) (rho 650) (rho 651) (rho 652)
      (rho 654) (rho 656) (rho 657) (rho 659) (rho 660) (rho 661)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow643 at r643; linear_combination r643)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow644 at r644; linear_combination r644)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow645 at r645; linear_combination r645)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow646 at r646; linear_combination r646)
      (by unfold seg37ScpNode0Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow648 at r648; linear_combination r648)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow649 at r649; linear_combination r649)
      (by unfold seg37ScpNode0Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow651 at r651; linear_combination r651)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow652 at r652; linear_combination r652)
      (by unfold seg37ScpNode0Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow654 at r654; linear_combination r654)
      (by unfold seg37ScpNode0Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow656 at r656; linear_combination r656))

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
