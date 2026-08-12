import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode0
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem step0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation rho) :
    nodeOut0 rho =
      Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (leaf rho) (rho 38) (rho 47) (rho 50)
        (rho 1) (rho 2) := by
  have hnode := node0_eq rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart0 at p0
  rcases p0 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r33, r34, r35, r36, _, r38, r39, _, r41, r42, _, r44, _, r46, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
      (leaf rho) (rho 38) (rho 47) (rho 50)
      (rho 1) (rho 2)
      (rho 34) (rho 35) (rho 36) (rho 37)
      (rho 46) (rho 48) (rho 49) (rho 51) (rho 52) (rho 53)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow33 at r33; linear_combination r33)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow34 at r34; linear_combination r34)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow35 at r35; linear_combination r35)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow36 at r36; linear_combination r36)
      (by unfold leaf; rw [← leafCoeff0, ← leafCoeff1, ← leafCoeff2, ← leafCoeff3, ← leafCoeff4, ← leafCoeff5]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow38 at r38; linear_combination r38)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow39 at r39; linear_combination r39)
      (by unfold leaf; rw [← leafCoeff0, ← leafCoeff1, ← leafCoeff2, ← leafCoeff3, ← leafCoeff4, ← leafCoeff5]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow41 at r41; linear_combination r41)
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow42 at r42; linear_combination r42)
      (by unfold leaf; rw [← leafCoeff0, ← leafCoeff1, ← leafCoeff2, ← leafCoeff3, ← leafCoeff4, ← leafCoeff5]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow44 at r44; linear_combination r44)
      (by unfold leaf; rw [← leafCoeff0, ← leafCoeff1, ← leafCoeff2, ← leafCoeff3, ← leafCoeff4, ← leafCoeff5]; unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow46 at r46; linear_combination r46))

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
