import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step10 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode10Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (11 : Seg28.F))
        (seg28ScpNode9Out rho) (rho 151) (rho 152) (rho 153)
        (rho 19643) (rho 19644) := by
  have hnode := seg28_scp_node10_eq rho h
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3919⟩
  unfold Seg28.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, _, r3924, r3925, _, r3927, r3928, _, r3930, _, r3932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (11 : Seg28.F))
      (seg28ScpNode9Out rho) (rho 151) (rho 152) (rho 153)
      (rho 19643) (rho 19644)
      (rho 23271) (rho 23272) (rho 23273) (rho 23274)
      (rho 23275) (rho 23276) (rho 23277) (rho 23278) (rho 23279) (rho 23280)
      (by unfold Seg28.relationRow3919 at r3919; linear_combination r3919)
      (by unfold Seg28.relationRow3920 at r3920; linear_combination r3920)
      (by unfold Seg28.relationRow3921 at r3921; linear_combination r3921)
      (by unfold Seg28.relationRow3922 at r3922; linear_combination r3922)
      (by unfold seg28ScpNode9Out; unfold Seg28.relationRow3924 at r3924; linear_combination r3924)
      (by unfold Seg28.relationRow3925 at r3925; linear_combination r3925)
      (by unfold seg28ScpNode9Out; unfold Seg28.relationRow3927 at r3927; linear_combination r3927)
      (by unfold Seg28.relationRow3928 at r3928; linear_combination r3928)
      (by unfold seg28ScpNode9Out; unfold Seg28.relationRow3930 at r3930; linear_combination r3930)
      (by unfold seg28ScpNode9Out; unfold Seg28.relationRow3932 at r3932; linear_combination r3932))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

