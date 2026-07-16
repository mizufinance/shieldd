import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step3 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode3Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (4 : Seg13.F))
        (seg13ScpNode2Out rho) (rho 85) (rho 86) (rho 87)
        (rho 7454) (rho 7455) := by
  have hnode := seg13_scp_node3_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
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
  unfold Seg13.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, r1371, r1372, r1373, r1374, _, r1376, r1377, _, r1379, r1380, _, r1382, _, r1384, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (4 : Seg13.F))
      (seg13ScpNode2Out rho) (rho 85) (rho 86) (rho 87)
      (rho 7454) (rho 7455)
      (rho 8576) (rho 8577) (rho 8578) (rho 8579)
      (rho 8580) (rho 8581) (rho 8582) (rho 8583) (rho 8584) (rho 8585)
      (by unfold Seg13.relationRow1371 at r1371; linear_combination r1371)
      (by unfold Seg13.relationRow1372 at r1372; linear_combination r1372)
      (by unfold Seg13.relationRow1373 at r1373; linear_combination r1373)
      (by unfold Seg13.relationRow1374 at r1374; linear_combination r1374)
      (by unfold seg13ScpNode2Out; unfold Seg13.relationRow1376 at r1376; linear_combination r1376)
      (by unfold Seg13.relationRow1377 at r1377; linear_combination r1377)
      (by unfold seg13ScpNode2Out; unfold Seg13.relationRow1379 at r1379; linear_combination r1379)
      (by unfold Seg13.relationRow1380 at r1380; linear_combination r1380)
      (by unfold seg13ScpNode2Out; unfold Seg13.relationRow1382 at r1382; linear_combination r1382)
      (by unfold seg13ScpNode2Out; unfold Seg13.relationRow1384 at r1384; linear_combination r1384))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

