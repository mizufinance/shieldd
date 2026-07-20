import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step4 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode4Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (5 : Seg28.F))
        (seg28ScpNode3Out rho) (rho 169) (rho 170) (rho 171)
        (rho 19631) (rho 19632) := by
  have hnode := seg28_scp_node4_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, _, _, _, _, _, _, _, _,
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
  unfold Seg28.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1735, r1736, r1737, r1738, _, r1740, r1741, _, r1743, r1744, _, r1746, _, r1748, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (5 : Seg28.F))
      (seg28ScpNode3Out rho) (rho 169) (rho 170) (rho 171)
      (rho 19631) (rho 19632)
      (rho 21111) (rho 21112) (rho 21113) (rho 21114)
      (rho 21115) (rho 21116) (rho 21117) (rho 21118) (rho 21119) (rho 21120)
      (by unfold Seg28.relationRow1735 at r1735; linear_combination r1735)
      (by unfold Seg28.relationRow1736 at r1736; linear_combination r1736)
      (by unfold Seg28.relationRow1737 at r1737; linear_combination r1737)
      (by unfold Seg28.relationRow1738 at r1738; linear_combination r1738)
      (by unfold seg28ScpNode3Out; unfold Seg28.relationRow1740 at r1740; linear_combination r1740)
      (by unfold Seg28.relationRow1741 at r1741; linear_combination r1741)
      (by unfold seg28ScpNode3Out; unfold Seg28.relationRow1743 at r1743; linear_combination r1743)
      (by unfold Seg28.relationRow1744 at r1744; linear_combination r1744)
      (by unfold seg28ScpNode3Out; unfold Seg28.relationRow1746 at r1746; linear_combination r1746)
      (by unfold seg28ScpNode3Out; unfold Seg28.relationRow1748 at r1748; linear_combination r1748))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

