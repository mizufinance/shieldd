import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step23 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode23Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (24 : Seg28.F))
        (seg28ScpNode22Out rho) (rho 115) (rho 116) (rho 117)
        (rho 19675) (rho 19676) := by
  have hnode := seg28_scp_node23_eq rho h
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p108, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart108 at p108
  rcases p108 with ⟨_, _, _, _, _, _, _, _, _, _, _, r8651, r8652, r8653, r8654, _, r8656, r8657, _, r8659, r8660, _, r8662, _, r8664, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (24 : Seg28.F))
      (seg28ScpNode22Out rho) (rho 115) (rho 116) (rho 117)
      (rho 19675) (rho 19676)
      (rho 27957) (rho 27958) (rho 27959) (rho 27960)
      (rho 27961) (rho 27962) (rho 27963) (rho 27964) (rho 27965) (rho 27966)
      (by unfold Seg28.relationRow8651 at r8651; linear_combination r8651)
      (by unfold Seg28.relationRow8652 at r8652; linear_combination r8652)
      (by unfold Seg28.relationRow8653 at r8653; linear_combination r8653)
      (by unfold Seg28.relationRow8654 at r8654; linear_combination r8654)
      (by unfold seg28ScpNode22Out; unfold Seg28.relationRow8656 at r8656; linear_combination r8656)
      (by unfold Seg28.relationRow8657 at r8657; linear_combination r8657)
      (by unfold seg28ScpNode22Out; unfold Seg28.relationRow8659 at r8659; linear_combination r8659)
      (by unfold Seg28.relationRow8660 at r8660; linear_combination r8660)
      (by unfold seg28ScpNode22Out; unfold Seg28.relationRow8662 at r8662; linear_combination r8662)
      (by unfold seg28ScpNode22Out; unfold Seg28.relationRow8664 at r8664; linear_combination r8664))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

