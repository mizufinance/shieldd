import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step1 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode1Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (2 : Seg13.F))
        (seg13ScpNode0Out rho) (rho 91) (rho 92) (rho 93)
        (rho 7444) (rho 7445) := by
  have hnode := seg13_scp_node1_eq rho h
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart8 at p8
  rcases p8 with ⟨_, _, _, r643, r644, r645, r646, _, r648, r649, _, r651, r652, _, r654, _, r656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (2 : Seg13.F))
      (seg13ScpNode0Out rho) (rho 91) (rho 92) (rho 93)
      (rho 7444) (rho 7445)
      (rho 7850) (rho 7851) (rho 7852) (rho 7853)
      (rho 7854) (rho 7855) (rho 7856) (rho 7857) (rho 7858) (rho 7859)
      (by unfold Seg13.relationRow643 at r643; linear_combination r643)
      (by unfold Seg13.relationRow644 at r644; linear_combination r644)
      (by unfold Seg13.relationRow645 at r645; linear_combination r645)
      (by unfold Seg13.relationRow646 at r646; linear_combination r646)
      (by unfold seg13ScpNode0Out; unfold Seg13.relationRow648 at r648; linear_combination r648)
      (by unfold Seg13.relationRow649 at r649; linear_combination r649)
      (by unfold seg13ScpNode0Out; unfold Seg13.relationRow651 at r651; linear_combination r651)
      (by unfold Seg13.relationRow652 at r652; linear_combination r652)
      (by unfold seg13ScpNode0Out; unfold Seg13.relationRow654 at r654; linear_combination r654)
      (by unfold seg13ScpNode0Out; unfold Seg13.relationRow656 at r656; linear_combination r656))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

