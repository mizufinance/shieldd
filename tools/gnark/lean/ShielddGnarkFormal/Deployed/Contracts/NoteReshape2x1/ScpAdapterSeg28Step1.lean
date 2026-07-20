import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step1 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode1Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (2 : Seg28.F))
        (seg28ScpNode0Out rho) (rho 178) (rho 179) (rho 180)
        (rho 19625) (rho 19626) := by
  have hnode := seg28_scp_node1_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
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
  unfold Seg28.relationPart8 at p8
  rcases p8 with ⟨_, _, _, r643, r644, r645, r646, _, r648, r649, _, r651, r652, _, r654, _, r656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (2 : Seg28.F))
      (seg28ScpNode0Out rho) (rho 178) (rho 179) (rho 180)
      (rho 19625) (rho 19626)
      (rho 20031) (rho 20032) (rho 20033) (rho 20034)
      (rho 20035) (rho 20036) (rho 20037) (rho 20038) (rho 20039) (rho 20040)
      (by unfold Seg28.relationRow643 at r643; linear_combination r643)
      (by unfold Seg28.relationRow644 at r644; linear_combination r644)
      (by unfold Seg28.relationRow645 at r645; linear_combination r645)
      (by unfold Seg28.relationRow646 at r646; linear_combination r646)
      (by unfold seg28ScpNode0Out; unfold Seg28.relationRow648 at r648; linear_combination r648)
      (by unfold Seg28.relationRow649 at r649; linear_combination r649)
      (by unfold seg28ScpNode0Out; unfold Seg28.relationRow651 at r651; linear_combination r651)
      (by unfold Seg28.relationRow652 at r652; linear_combination r652)
      (by unfold seg28ScpNode0Out; unfold Seg28.relationRow654 at r654; linear_combination r654)
      (by unfold seg28ScpNode0Out; unfold Seg28.relationRow656 at r656; linear_combination r656))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

