import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step5 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode5Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (6 : Seg28.F))
        (seg28ScpNode4Out rho) (rho 169) (rho 170) (rho 171)
        (rho 19639) (rho 19640) := by
  have hnode := seg28_scp_node5_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
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
  unfold Seg28.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, r2102, _, r2104, r2105, _, r2107, r2108, _, r2110, _, r2112, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (6 : Seg28.F))
      (seg28ScpNode4Out rho) (rho 169) (rho 170) (rho 171)
      (rho 19639) (rho 19640)
      (rho 21477) (rho 21478) (rho 21479) (rho 21480)
      (rho 21481) (rho 21482) (rho 21483) (rho 21484) (rho 21485) (rho 21486)
      (by unfold Seg28.relationRow2099 at r2099; linear_combination r2099)
      (by unfold Seg28.relationRow2100 at r2100; linear_combination r2100)
      (by unfold Seg28.relationRow2101 at r2101; linear_combination r2101)
      (by unfold Seg28.relationRow2102 at r2102; linear_combination r2102)
      (by unfold seg28ScpNode4Out; unfold Seg28.relationRow2104 at r2104; linear_combination r2104)
      (by unfold Seg28.relationRow2105 at r2105; linear_combination r2105)
      (by unfold seg28ScpNode4Out; unfold Seg28.relationRow2107 at r2107; linear_combination r2107)
      (by unfold Seg28.relationRow2108 at r2108; linear_combination r2108)
      (by unfold seg28ScpNode4Out; unfold Seg28.relationRow2110 at r2110; linear_combination r2110)
      (by unfold seg28ScpNode4Out; unfold Seg28.relationRow2112 at r2112; linear_combination r2112))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

