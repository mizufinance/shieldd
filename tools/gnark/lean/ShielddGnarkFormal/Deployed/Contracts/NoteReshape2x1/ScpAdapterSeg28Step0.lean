import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step0 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode0Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (1 : Seg28.F))
        (seg28ScpLeafOut rho) (rho 184) (rho 185) (rho 186)
        (rho 19629) (rho 19630) := by
  have hnode := seg28_scp_node0_eq rho h
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r279, r280, r281, r282, _, r284, r285, _, r287, r288, _, r290, _, r292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (1 : Seg28.F))
      (seg28ScpLeafOut rho) (rho 184) (rho 185) (rho 186)
      (rho 19629) (rho 19630)
      (rho 19677) (rho 19678) (rho 19679) (rho 19680)
      (rho 19681) (rho 19682) (rho 19683) (rho 19684) (rho 19685) (rho 19686)
      (by unfold Seg28.relationRow279 at r279; linear_combination r279)
      (by unfold Seg28.relationRow280 at r280; linear_combination r280)
      (by unfold Seg28.relationRow281 at r281; linear_combination r281)
      (by unfold Seg28.relationRow282 at r282; linear_combination r282)
      (by unfold seg28ScpLeafOut; unfold Seg28.relationRow284 at r284; linear_combination r284)
      (by unfold Seg28.relationRow285 at r285; linear_combination r285)
      (by unfold seg28ScpLeafOut; unfold Seg28.relationRow287 at r287; linear_combination r287)
      (by unfold Seg28.relationRow288 at r288; linear_combination r288)
      (by unfold seg28ScpLeafOut; unfold Seg28.relationRow290 at r290; linear_combination r290)
      (by unfold seg28ScpLeafOut; unfold Seg28.relationRow292 at r292; linear_combination r292))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

