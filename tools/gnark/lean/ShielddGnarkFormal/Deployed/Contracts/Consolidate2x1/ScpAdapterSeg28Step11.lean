import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_step11 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode11Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (12 : Seg28.F))
        (seg28ScpNode10Out rho) (rho 151) (rho 152) (rho 153)
        (rho 19651) (rho 19652) := by
  have hnode := seg28_scp_node11_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4283, r4284, r4285, r4286, _, r4288, r4289, _, r4291, r4292, _, r4294, _, r4296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (12 : Seg28.F))
      (seg28ScpNode10Out rho) (rho 151) (rho 152) (rho 153)
      (rho 19651) (rho 19652)
      (rho 23637) (rho 23638) (rho 23639) (rho 23640)
      (rho 23641) (rho 23642) (rho 23643) (rho 23644) (rho 23645) (rho 23646)
      (by unfold Seg28.relationRow4283 at r4283; linear_combination r4283)
      (by unfold Seg28.relationRow4284 at r4284; linear_combination r4284)
      (by unfold Seg28.relationRow4285 at r4285; linear_combination r4285)
      (by unfold Seg28.relationRow4286 at r4286; linear_combination r4286)
      (by unfold seg28ScpNode10Out; unfold Seg28.relationRow4288 at r4288; linear_combination r4288)
      (by unfold Seg28.relationRow4289 at r4289; linear_combination r4289)
      (by unfold seg28ScpNode10Out; unfold Seg28.relationRow4291 at r4291; linear_combination r4291)
      (by unfold Seg28.relationRow4292 at r4292; linear_combination r4292)
      (by unfold seg28ScpNode10Out; unfold Seg28.relationRow4294 at r4294; linear_combination r4294)
      (by unfold seg28ScpNode10Out; unfold Seg28.relationRow4296 at r4296; linear_combination r4296))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

