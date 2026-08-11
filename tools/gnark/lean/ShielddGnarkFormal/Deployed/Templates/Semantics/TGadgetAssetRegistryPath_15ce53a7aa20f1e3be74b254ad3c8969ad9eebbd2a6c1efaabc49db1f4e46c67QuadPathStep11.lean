import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem step11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut11 rho =
      Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (nodeOut10 rho) (rho 4037) (rho 4039) (rho 4042)
        (rho 23) (rho 24) := by
  have hnode := node11_eq rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, p50, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4037, r4038, r4039, r4040, _, r4042, r4043, _, r4045, r4046, _, r4048, _, r4050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
      (nodeOut10 rho) (rho 4037) (rho 4039) (rho 4042)
      (rho 23) (rho 24)
      (rho 4033) (rho 4034) (rho 4035) (rho 4036)
      (rho 4038) (rho 4040) (rho 4041) (rho 4043) (rho 4044) (rho 4045)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4037 at r4037; linear_combination r4037)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4038 at r4038; linear_combination r4038)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4039 at r4039; linear_combination r4039)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4040 at r4040; linear_combination r4040)
      (by unfold nodeOut10; rw [← nodeCoeff0, ← nodeCoeff1, ← nodeCoeff2, ← nodeCoeff3, ← nodeCoeff4]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4042 at r4042; linear_combination r4042)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4043 at r4043; linear_combination r4043)
      (by unfold nodeOut10; rw [← nodeCoeff0, ← nodeCoeff1, ← nodeCoeff2, ← nodeCoeff3, ← nodeCoeff4]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4045 at r4045; linear_combination r4045)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4046 at r4046; linear_combination r4046)
      (by unfold nodeOut10; rw [← nodeCoeff0, ← nodeCoeff1, ← nodeCoeff2, ← nodeCoeff3, ← nodeCoeff4]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4048 at r4048; linear_combination r4048)
      (by unfold nodeOut10; rw [← nodeCoeff0, ← nodeCoeff1, ← nodeCoeff2, ← nodeCoeff3, ← nodeCoeff4]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow4050 at r4050; linear_combination r4050))

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
