import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step16 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode16Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (17 : Seg13.F))
        (seg13ScpNode15Out rho) (rho 46) (rho 47) (rho 48)
        (rho 7480) (rho 7481) := by
  have hnode := seg13_scp_node16_eq rho h
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6103, r6104, r6105, r6106, _, r6108, r6109, _, r6111, r6112, _, r6114, _, r6116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (17 : Seg13.F))
      (seg13ScpNode15Out rho) (rho 46) (rho 47) (rho 48)
      (rho 7480) (rho 7481)
      (rho 13256) (rho 13257) (rho 13258) (rho 13259)
      (rho 13260) (rho 13261) (rho 13262) (rho 13263) (rho 13264) (rho 13265)
      (by unfold Seg13.relationRow6103 at r6103; linear_combination r6103)
      (by unfold Seg13.relationRow6104 at r6104; linear_combination r6104)
      (by unfold Seg13.relationRow6105 at r6105; linear_combination r6105)
      (by unfold Seg13.relationRow6106 at r6106; linear_combination r6106)
      (by unfold seg13ScpNode15Out; unfold Seg13.relationRow6108 at r6108; linear_combination r6108)
      (by unfold Seg13.relationRow6109 at r6109; linear_combination r6109)
      (by unfold seg13ScpNode15Out; unfold Seg13.relationRow6111 at r6111; linear_combination r6111)
      (by unfold Seg13.relationRow6112 at r6112; linear_combination r6112)
      (by unfold seg13ScpNode15Out; unfold Seg13.relationRow6114 at r6114; linear_combination r6114)
      (by unfold seg13ScpNode15Out; unfold Seg13.relationRow6116 at r6116; linear_combination r6116))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

