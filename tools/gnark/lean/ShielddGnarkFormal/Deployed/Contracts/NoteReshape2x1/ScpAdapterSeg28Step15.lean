import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step15 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode15Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (16 : Seg28.F))
        (seg28ScpNode14Out rho) (rho 139) (rho 140) (rho 141)
        (rho 19659) (rho 19660) := by
  have hnode := seg28_scp_node15_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5739, r5740, r5741, r5742, _, r5744, r5745, _, r5747, r5748, _, r5750, _, r5752, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (16 : Seg28.F))
      (seg28ScpNode14Out rho) (rho 139) (rho 140) (rho 141)
      (rho 19659) (rho 19660)
      (rho 25077) (rho 25078) (rho 25079) (rho 25080)
      (rho 25081) (rho 25082) (rho 25083) (rho 25084) (rho 25085) (rho 25086)
      (by unfold Seg28.relationRow5739 at r5739; linear_combination r5739)
      (by unfold Seg28.relationRow5740 at r5740; linear_combination r5740)
      (by unfold Seg28.relationRow5741 at r5741; linear_combination r5741)
      (by unfold Seg28.relationRow5742 at r5742; linear_combination r5742)
      (by unfold seg28ScpNode14Out; unfold Seg28.relationRow5744 at r5744; linear_combination r5744)
      (by unfold Seg28.relationRow5745 at r5745; linear_combination r5745)
      (by unfold seg28ScpNode14Out; unfold Seg28.relationRow5747 at r5747; linear_combination r5747)
      (by unfold Seg28.relationRow5748 at r5748; linear_combination r5748)
      (by unfold seg28ScpNode14Out; unfold Seg28.relationRow5750 at r5750; linear_combination r5750)
      (by unfold seg28ScpNode14Out; unfold Seg28.relationRow5752 at r5752; linear_combination r5752))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

