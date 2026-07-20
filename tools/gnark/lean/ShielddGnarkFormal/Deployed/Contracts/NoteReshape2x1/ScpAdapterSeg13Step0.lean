import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step0 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode0Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (1 : Seg13.F))
        (seg13ScpLeafOut rho) (rho 94) (rho 95) (rho 96)
        (rho 7442) (rho 7443) := by
  have hnode := seg13_scp_node0_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
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
    _, _, _
  ⟩
  unfold Seg13.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r279, r280, r281, r282, _, r284, r285, _, r287, r288, _, r290, _, r292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (1 : Seg13.F))
      (seg13ScpLeafOut rho) (rho 94) (rho 95) (rho 96)
      (rho 7442) (rho 7443)
      (rho 7490) (rho 7491) (rho 7492) (rho 7493)
      (rho 7494) (rho 7495) (rho 7496) (rho 7497) (rho 7498) (rho 7499)
      (by unfold Seg13.relationRow279 at r279; linear_combination r279)
      (by unfold Seg13.relationRow280 at r280; linear_combination r280)
      (by unfold Seg13.relationRow281 at r281; linear_combination r281)
      (by unfold Seg13.relationRow282 at r282; linear_combination r282)
      (by unfold seg13ScpLeafOut; unfold Seg13.relationRow284 at r284; linear_combination r284)
      (by unfold Seg13.relationRow285 at r285; linear_combination r285)
      (by unfold seg13ScpLeafOut; unfold Seg13.relationRow287 at r287; linear_combination r287)
      (by unfold Seg13.relationRow288 at r288; linear_combination r288)
      (by unfold seg13ScpLeafOut; unfold Seg13.relationRow290 at r290; linear_combination r290)
      (by unfold seg13ScpLeafOut; unfold Seg13.relationRow292 at r292; linear_combination r292))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

