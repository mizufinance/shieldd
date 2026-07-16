import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step12 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode12Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (13 : Seg28.F))
        (seg28ScpNode11Out rho) (rho 148) (rho 149) (rho 150)
        (rho 19653) (rho 19654) := by
  have hnode := seg28_scp_node12_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, r4647, r4648, r4649, r4650, _, r4652, r4653, _, r4655, r4656, _, r4658, _, r4660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (13 : Seg28.F))
      (seg28ScpNode11Out rho) (rho 148) (rho 149) (rho 150)
      (rho 19653) (rho 19654)
      (rho 23997) (rho 23998) (rho 23999) (rho 24000)
      (rho 24001) (rho 24002) (rho 24003) (rho 24004) (rho 24005) (rho 24006)
      (by unfold Seg28.relationRow4647 at r4647; linear_combination r4647)
      (by unfold Seg28.relationRow4648 at r4648; linear_combination r4648)
      (by unfold Seg28.relationRow4649 at r4649; linear_combination r4649)
      (by unfold Seg28.relationRow4650 at r4650; linear_combination r4650)
      (by unfold seg28ScpNode11Out; unfold Seg28.relationRow4652 at r4652; linear_combination r4652)
      (by unfold Seg28.relationRow4653 at r4653; linear_combination r4653)
      (by unfold seg28ScpNode11Out; unfold Seg28.relationRow4655 at r4655; linear_combination r4655)
      (by unfold Seg28.relationRow4656 at r4656; linear_combination r4656)
      (by unfold seg28ScpNode11Out; unfold Seg28.relationRow4658 at r4658; linear_combination r4658)
      (by unfold seg28ScpNode11Out; unfold Seg28.relationRow4660 at r4660; linear_combination r4660))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

