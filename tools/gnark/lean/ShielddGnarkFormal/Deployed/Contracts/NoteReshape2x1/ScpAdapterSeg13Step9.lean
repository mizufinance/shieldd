import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step9 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode9Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (10 : Seg13.F))
        (seg13ScpNode8Out rho) (rho 67) (rho 68) (rho 69)
        (rho 7466) (rho 7467) := by
  have hnode := seg13_scp_node9_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3555, r3556, r3557, r3558, _, r3560, r3561, _, r3563, r3564, _, r3566, _, r3568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (10 : Seg13.F))
      (seg13ScpNode8Out rho) (rho 67) (rho 68) (rho 69)
      (rho 7466) (rho 7467)
      (rho 10736) (rho 10737) (rho 10738) (rho 10739)
      (rho 10740) (rho 10741) (rho 10742) (rho 10743) (rho 10744) (rho 10745)
      (by unfold Seg13.relationRow3555 at r3555; linear_combination r3555)
      (by unfold Seg13.relationRow3556 at r3556; linear_combination r3556)
      (by unfold Seg13.relationRow3557 at r3557; linear_combination r3557)
      (by unfold Seg13.relationRow3558 at r3558; linear_combination r3558)
      (by unfold seg13ScpNode8Out; unfold Seg13.relationRow3560 at r3560; linear_combination r3560)
      (by unfold Seg13.relationRow3561 at r3561; linear_combination r3561)
      (by unfold seg13ScpNode8Out; unfold Seg13.relationRow3563 at r3563; linear_combination r3563)
      (by unfold Seg13.relationRow3564 at r3564; linear_combination r3564)
      (by unfold seg13ScpNode8Out; unfold Seg13.relationRow3566 at r3566; linear_combination r3566)
      (by unfold seg13ScpNode8Out; unfold Seg13.relationRow3568 at r3568; linear_combination r3568))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

