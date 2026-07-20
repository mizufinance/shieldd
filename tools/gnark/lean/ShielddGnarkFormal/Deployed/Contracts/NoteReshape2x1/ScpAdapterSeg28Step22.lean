import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node22

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step22 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode22Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (23 : Seg28.F))
        (seg28ScpNode21Out rho) (rho 115) (rho 116) (rho 117)
        (rho 19667) (rho 19668) := by
  have hnode := seg28_scp_node22_eq rho h
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart103 at p103
  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8287, r8288, r8289, r8290, _, r8292, r8293, _, r8295, r8296, _, r8298, _, r8300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (23 : Seg28.F))
      (seg28ScpNode21Out rho) (rho 115) (rho 116) (rho 117)
      (rho 19667) (rho 19668)
      (rho 27591) (rho 27592) (rho 27593) (rho 27594)
      (rho 27595) (rho 27596) (rho 27597) (rho 27598) (rho 27599) (rho 27600)
      (by unfold Seg28.relationRow8287 at r8287; linear_combination r8287)
      (by unfold Seg28.relationRow8288 at r8288; linear_combination r8288)
      (by unfold Seg28.relationRow8289 at r8289; linear_combination r8289)
      (by unfold Seg28.relationRow8290 at r8290; linear_combination r8290)
      (by unfold seg28ScpNode21Out; unfold Seg28.relationRow8292 at r8292; linear_combination r8292)
      (by unfold Seg28.relationRow8293 at r8293; linear_combination r8293)
      (by unfold seg28ScpNode21Out; unfold Seg28.relationRow8295 at r8295; linear_combination r8295)
      (by unfold Seg28.relationRow8296 at r8296; linear_combination r8296)
      (by unfold seg28ScpNode21Out; unfold Seg28.relationRow8298 at r8298; linear_combination r8298)
      (by unfold seg28ScpNode21Out; unfold Seg28.relationRow8300 at r8300; linear_combination r8300))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

