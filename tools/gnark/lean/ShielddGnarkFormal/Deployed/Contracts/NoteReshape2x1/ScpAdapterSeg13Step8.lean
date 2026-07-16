import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step8 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode8Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (9 : Seg13.F))
        (seg13ScpNode7Out rho) (rho 70) (rho 71) (rho 72)
        (rho 7464) (rho 7465) := by
  have hnode := seg13_scp_node8_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3191, r3192, r3193, r3194, _, r3196, r3197, _, r3199⟩
  unfold Seg13.relationPart40 at p40
  rcases p40 with ⟨r3200, _, r3202, _, r3204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (9 : Seg13.F))
      (seg13ScpNode7Out rho) (rho 70) (rho 71) (rho 72)
      (rho 7464) (rho 7465)
      (rho 10376) (rho 10377) (rho 10378) (rho 10379)
      (rho 10380) (rho 10381) (rho 10382) (rho 10383) (rho 10384) (rho 10385)
      (by unfold Seg13.relationRow3191 at r3191; linear_combination r3191)
      (by unfold Seg13.relationRow3192 at r3192; linear_combination r3192)
      (by unfold Seg13.relationRow3193 at r3193; linear_combination r3193)
      (by unfold Seg13.relationRow3194 at r3194; linear_combination r3194)
      (by unfold seg13ScpNode7Out; unfold Seg13.relationRow3196 at r3196; linear_combination r3196)
      (by unfold Seg13.relationRow3197 at r3197; linear_combination r3197)
      (by unfold seg13ScpNode7Out; unfold Seg13.relationRow3199 at r3199; linear_combination r3199)
      (by unfold Seg13.relationRow3200 at r3200; linear_combination r3200)
      (by unfold seg13ScpNode7Out; unfold Seg13.relationRow3202 at r3202; linear_combination r3202)
      (by unfold seg13ScpNode7Out; unfold Seg13.relationRow3204 at r3204; linear_combination r3204))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

