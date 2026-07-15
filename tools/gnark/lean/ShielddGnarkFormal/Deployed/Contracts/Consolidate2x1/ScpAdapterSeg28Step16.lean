import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_step16 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode16Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (17 : Seg28.F))
        (seg28ScpNode15Out rho) (rho 136) (rho 137) (rho 138)
        (rho 19661) (rho 19662) := by
  have hnode := seg28_scp_node16_eq rho h
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6103, r6104, r6105, r6106, _, r6108, r6109, _, r6111, r6112, _, r6114, _, r6116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (17 : Seg28.F))
      (seg28ScpNode15Out rho) (rho 136) (rho 137) (rho 138)
      (rho 19661) (rho 19662)
      (rho 25437) (rho 25438) (rho 25439) (rho 25440)
      (rho 25441) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446)
      (by unfold Seg28.relationRow6103 at r6103; linear_combination r6103)
      (by unfold Seg28.relationRow6104 at r6104; linear_combination r6104)
      (by unfold Seg28.relationRow6105 at r6105; linear_combination r6105)
      (by unfold Seg28.relationRow6106 at r6106; linear_combination r6106)
      (by unfold seg28ScpNode15Out; unfold Seg28.relationRow6108 at r6108; linear_combination r6108)
      (by unfold Seg28.relationRow6109 at r6109; linear_combination r6109)
      (by unfold seg28ScpNode15Out; unfold Seg28.relationRow6111 at r6111; linear_combination r6111)
      (by unfold Seg28.relationRow6112 at r6112; linear_combination r6112)
      (by unfold seg28ScpNode15Out; unfold Seg28.relationRow6114 at r6114; linear_combination r6114)
      (by unfold seg28ScpNode15Out; unfold Seg28.relationRow6116 at r6116; linear_combination r6116))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

