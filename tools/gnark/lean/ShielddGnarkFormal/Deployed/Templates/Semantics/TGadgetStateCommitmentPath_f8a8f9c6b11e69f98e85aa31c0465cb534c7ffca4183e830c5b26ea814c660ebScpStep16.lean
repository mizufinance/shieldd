import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_step16 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg37ScpNode16Out rho =
      Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (17 : F))
        (seg37ScpNode15Out rho) (rho 6093) (rho 6095) (rho 6098)
        (rho 264) (rho 265) := by
  have hnode := template_scp_node16_eq rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6103, r6104, r6105, r6106, _, r6108, r6109, _, r6111, r6112, _, r6114, _, r6116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (17 : F))
      (seg37ScpNode15Out rho) (rho 6093) (rho 6095) (rho 6098)
      (rho 264) (rho 265)
      (rho 6089) (rho 6090) (rho 6091) (rho 6092)
      (rho 6094) (rho 6096) (rho 6097) (rho 6099) (rho 6100) (rho 6101)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6103 at r6103; linear_combination r6103)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6104 at r6104; linear_combination r6104)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6105 at r6105; linear_combination r6105)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6106 at r6106; linear_combination r6106)
      (by unfold seg37ScpNode15Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6108 at r6108; linear_combination r6108)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6109 at r6109; linear_combination r6109)
      (by unfold seg37ScpNode15Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6111 at r6111; linear_combination r6111)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6112 at r6112; linear_combination r6112)
      (by unfold seg37ScpNode15Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6114 at r6114; linear_combination r6114)
      (by unfold seg37ScpNode15Out; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6116 at r6116; linear_combination r6116))

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
