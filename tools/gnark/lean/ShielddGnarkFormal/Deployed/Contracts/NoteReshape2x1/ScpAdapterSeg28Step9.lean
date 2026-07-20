import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step9 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode9Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (10 : Seg28.F))
        (seg28ScpNode8Out rho) (rho 154) (rho 155) (rho 156)
        (rho 19641) (rho 19642) := by
  have hnode := seg28_scp_node9_eq rho h
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3555, r3556, r3557, r3558, _, r3560, r3561, _, r3563, r3564, _, r3566, _, r3568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (10 : Seg28.F))
      (seg28ScpNode8Out rho) (rho 154) (rho 155) (rho 156)
      (rho 19641) (rho 19642)
      (rho 22911) (rho 22912) (rho 22913) (rho 22914)
      (rho 22915) (rho 22916) (rho 22917) (rho 22918) (rho 22919) (rho 22920)
      (by unfold Seg28.relationRow3555 at r3555; linear_combination r3555)
      (by unfold Seg28.relationRow3556 at r3556; linear_combination r3556)
      (by unfold Seg28.relationRow3557 at r3557; linear_combination r3557)
      (by unfold Seg28.relationRow3558 at r3558; linear_combination r3558)
      (by unfold seg28ScpNode8Out; unfold Seg28.relationRow3560 at r3560; linear_combination r3560)
      (by unfold Seg28.relationRow3561 at r3561; linear_combination r3561)
      (by unfold seg28ScpNode8Out; unfold Seg28.relationRow3563 at r3563; linear_combination r3563)
      (by unfold Seg28.relationRow3564 at r3564; linear_combination r3564)
      (by unfold seg28ScpNode8Out; unfold Seg28.relationRow3566 at r3566; linear_combination r3566)
      (by unfold seg28ScpNode8Out; unfold Seg28.relationRow3568 at r3568; linear_combination r3568))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

