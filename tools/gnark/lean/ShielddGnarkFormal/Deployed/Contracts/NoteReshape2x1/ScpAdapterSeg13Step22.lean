import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node22

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step22 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode22Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (23 : Seg13.F))
        (seg13ScpNode21Out rho) (rho 28) (rho 29) (rho 30)
        (rho 7492) (rho 7493) := by
  have hnode := seg13_scp_node22_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
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
    _, _, _, p103, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart103 at p103
  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8287, r8288, r8289, r8290, _, r8292, r8293, _, r8295, r8296, _, r8298, _, r8300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (23 : Seg13.F))
      (seg13ScpNode21Out rho) (rho 28) (rho 29) (rho 30)
      (rho 7492) (rho 7493)
      (rho 15416) (rho 15417) (rho 15418) (rho 15419)
      (rho 15420) (rho 15421) (rho 15422) (rho 15423) (rho 15424) (rho 15425)
      (by unfold Seg13.relationRow8287 at r8287; linear_combination r8287)
      (by unfold Seg13.relationRow8288 at r8288; linear_combination r8288)
      (by unfold Seg13.relationRow8289 at r8289; linear_combination r8289)
      (by unfold Seg13.relationRow8290 at r8290; linear_combination r8290)
      (by unfold seg13ScpNode21Out; unfold Seg13.relationRow8292 at r8292; linear_combination r8292)
      (by unfold Seg13.relationRow8293 at r8293; linear_combination r8293)
      (by unfold seg13ScpNode21Out; unfold Seg13.relationRow8295 at r8295; linear_combination r8295)
      (by unfold Seg13.relationRow8296 at r8296; linear_combination r8296)
      (by unfold seg13ScpNode21Out; unfold Seg13.relationRow8298 at r8298; linear_combination r8298)
      (by unfold seg13ScpNode21Out; unfold Seg13.relationRow8300 at r8300; linear_combination r8300))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

