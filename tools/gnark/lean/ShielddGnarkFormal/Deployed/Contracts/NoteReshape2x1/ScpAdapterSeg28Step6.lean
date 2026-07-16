import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step6 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode6Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (7 : Seg28.F))
        (seg28ScpNode5Out rho) (rho 166) (rho 167) (rho 168)
        (rho 19641) (rho 19642) := by
  have hnode := seg28_scp_node6_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2463, r2464, r2465, r2466, _, r2468, r2469, _, r2471, r2472, _, r2474, _, r2476, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (7 : Seg28.F))
      (seg28ScpNode5Out rho) (rho 166) (rho 167) (rho 168)
      (rho 19641) (rho 19642)
      (rho 21837) (rho 21838) (rho 21839) (rho 21840)
      (rho 21841) (rho 21842) (rho 21843) (rho 21844) (rho 21845) (rho 21846)
      (by unfold Seg28.relationRow2463 at r2463; linear_combination r2463)
      (by unfold Seg28.relationRow2464 at r2464; linear_combination r2464)
      (by unfold Seg28.relationRow2465 at r2465; linear_combination r2465)
      (by unfold Seg28.relationRow2466 at r2466; linear_combination r2466)
      (by unfold seg28ScpNode5Out; unfold Seg28.relationRow2468 at r2468; linear_combination r2468)
      (by unfold Seg28.relationRow2469 at r2469; linear_combination r2469)
      (by unfold seg28ScpNode5Out; unfold Seg28.relationRow2471 at r2471; linear_combination r2471)
      (by unfold Seg28.relationRow2472 at r2472; linear_combination r2472)
      (by unfold seg28ScpNode5Out; unfold Seg28.relationRow2474 at r2474; linear_combination r2474)
      (by unfold seg28ScpNode5Out; unfold Seg28.relationRow2476 at r2476; linear_combination r2476))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

