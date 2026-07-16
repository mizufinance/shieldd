import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step18 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode18Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (19 : Seg28.F))
        (seg28ScpNode17Out rho) (rho 130) (rho 131) (rho 132)
        (rho 19665) (rho 19666) := by
  have hnode := seg28_scp_node18_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p85, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6831, r6832, r6833, r6834, _, r6836, r6837, _, r6839, r6840, _, r6842, _, r6844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (19 : Seg28.F))
      (seg28ScpNode17Out rho) (rho 130) (rho 131) (rho 132)
      (rho 19665) (rho 19666)
      (rho 26157) (rho 26158) (rho 26159) (rho 26160)
      (rho 26161) (rho 26162) (rho 26163) (rho 26164) (rho 26165) (rho 26166)
      (by unfold Seg28.relationRow6831 at r6831; linear_combination r6831)
      (by unfold Seg28.relationRow6832 at r6832; linear_combination r6832)
      (by unfold Seg28.relationRow6833 at r6833; linear_combination r6833)
      (by unfold Seg28.relationRow6834 at r6834; linear_combination r6834)
      (by unfold seg28ScpNode17Out; unfold Seg28.relationRow6836 at r6836; linear_combination r6836)
      (by unfold Seg28.relationRow6837 at r6837; linear_combination r6837)
      (by unfold seg28ScpNode17Out; unfold Seg28.relationRow6839 at r6839; linear_combination r6839)
      (by unfold Seg28.relationRow6840 at r6840; linear_combination r6840)
      (by unfold seg28ScpNode17Out; unfold Seg28.relationRow6842 at r6842; linear_combination r6842)
      (by unfold seg28ScpNode17Out; unfold Seg28.relationRow6844 at r6844; linear_combination r6844))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

