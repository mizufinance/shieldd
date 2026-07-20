import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step23 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode23Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (24 : Seg13.F))
        (seg13ScpNode22Out rho) (rho 25) (rho 26) (rho 27)
        (rho 7488) (rho 7489) := by
  have hnode := seg13_scp_node23_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
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
    _, _, _, _, _, _, _, _, p108, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart108 at p108
  rcases p108 with ⟨_, _, _, _, _, _, _, _, _, _, _, r8651, r8652, r8653, r8654, _, r8656, r8657, _, r8659, r8660, _, r8662, _, r8664, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (24 : Seg13.F))
      (seg13ScpNode22Out rho) (rho 25) (rho 26) (rho 27)
      (rho 7488) (rho 7489)
      (rho 15770) (rho 15771) (rho 15772) (rho 15773)
      (rho 15774) (rho 15775) (rho 15776) (rho 15777) (rho 15778) (rho 15779)
      (by unfold Seg13.relationRow8651 at r8651; linear_combination r8651)
      (by unfold Seg13.relationRow8652 at r8652; linear_combination r8652)
      (by unfold Seg13.relationRow8653 at r8653; linear_combination r8653)
      (by unfold Seg13.relationRow8654 at r8654; linear_combination r8654)
      (by unfold seg13ScpNode22Out; unfold Seg13.relationRow8656 at r8656; linear_combination r8656)
      (by unfold Seg13.relationRow8657 at r8657; linear_combination r8657)
      (by unfold seg13ScpNode22Out; unfold Seg13.relationRow8659 at r8659; linear_combination r8659)
      (by unfold Seg13.relationRow8660 at r8660; linear_combination r8660)
      (by unfold seg13ScpNode22Out; unfold Seg13.relationRow8662 at r8662; linear_combination r8662)
      (by unfold seg13ScpNode22Out; unfold Seg13.relationRow8664 at r8664; linear_combination r8664))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

