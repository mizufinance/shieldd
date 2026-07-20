import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step11 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode11Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (12 : Seg13.F))
        (seg13ScpNode10Out rho) (rho 61) (rho 62) (rho 63)
        (rho 7464) (rho 7465) := by
  have hnode := seg13_scp_node11_eq rho h
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4283, r4284, r4285, r4286, _, r4288, r4289, _, r4291, r4292, _, r4294, _, r4296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (12 : Seg13.F))
      (seg13ScpNode10Out rho) (rho 61) (rho 62) (rho 63)
      (rho 7464) (rho 7465)
      (rho 11450) (rho 11451) (rho 11452) (rho 11453)
      (rho 11454) (rho 11455) (rho 11456) (rho 11457) (rho 11458) (rho 11459)
      (by unfold Seg13.relationRow4283 at r4283; linear_combination r4283)
      (by unfold Seg13.relationRow4284 at r4284; linear_combination r4284)
      (by unfold Seg13.relationRow4285 at r4285; linear_combination r4285)
      (by unfold Seg13.relationRow4286 at r4286; linear_combination r4286)
      (by unfold seg13ScpNode10Out; unfold Seg13.relationRow4288 at r4288; linear_combination r4288)
      (by unfold Seg13.relationRow4289 at r4289; linear_combination r4289)
      (by unfold seg13ScpNode10Out; unfold Seg13.relationRow4291 at r4291; linear_combination r4291)
      (by unfold Seg13.relationRow4292 at r4292; linear_combination r4292)
      (by unfold seg13ScpNode10Out; unfold Seg13.relationRow4294 at r4294; linear_combination r4294)
      (by unfold seg13ScpNode10Out; unfold Seg13.relationRow4296 at r4296; linear_combination r4296))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

