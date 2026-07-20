import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step10 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode10Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (11 : Seg13.F))
        (seg13ScpNode9Out rho) (rho 64) (rho 65) (rho 66)
        (rho 7462) (rho 7463) := by
  have hnode := seg13_scp_node10_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3919⟩
  unfold Seg13.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, _, r3924, r3925, _, r3927, r3928, _, r3930, _, r3932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (11 : Seg13.F))
      (seg13ScpNode9Out rho) (rho 64) (rho 65) (rho 66)
      (rho 7462) (rho 7463)
      (rho 11090) (rho 11091) (rho 11092) (rho 11093)
      (rho 11094) (rho 11095) (rho 11096) (rho 11097) (rho 11098) (rho 11099)
      (by unfold Seg13.relationRow3919 at r3919; linear_combination r3919)
      (by unfold Seg13.relationRow3920 at r3920; linear_combination r3920)
      (by unfold Seg13.relationRow3921 at r3921; linear_combination r3921)
      (by unfold Seg13.relationRow3922 at r3922; linear_combination r3922)
      (by unfold seg13ScpNode9Out; unfold Seg13.relationRow3924 at r3924; linear_combination r3924)
      (by unfold Seg13.relationRow3925 at r3925; linear_combination r3925)
      (by unfold seg13ScpNode9Out; unfold Seg13.relationRow3927 at r3927; linear_combination r3927)
      (by unfold Seg13.relationRow3928 at r3928; linear_combination r3928)
      (by unfold seg13ScpNode9Out; unfold Seg13.relationRow3930 at r3930; linear_combination r3930)
      (by unfold seg13ScpNode9Out; unfold Seg13.relationRow3932 at r3932; linear_combination r3932))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

