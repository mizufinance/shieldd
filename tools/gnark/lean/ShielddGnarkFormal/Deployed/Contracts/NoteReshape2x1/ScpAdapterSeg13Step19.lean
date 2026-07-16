import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step19 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode19Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (20 : Seg13.F))
        (seg13ScpNode18Out rho) (rho 37) (rho 38) (rho 39)
        (rho 7486) (rho 7487) := by
  have hnode := seg13_scp_node19_eq rho h
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
    _, _, _, _, _, _, _, _, _, p89,
    p90, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart89 at p89
  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7195, r7196, r7197, r7198, _⟩
  unfold Seg13.relationPart90 at p90
  rcases p90 with ⟨r7200, r7201, _, r7203, r7204, _, r7206, _, r7208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (20 : Seg13.F))
      (seg13ScpNode18Out rho) (rho 37) (rho 38) (rho 39)
      (rho 7486) (rho 7487)
      (rho 14336) (rho 14337) (rho 14338) (rho 14339)
      (rho 14340) (rho 14341) (rho 14342) (rho 14343) (rho 14344) (rho 14345)
      (by unfold Seg13.relationRow7195 at r7195; linear_combination r7195)
      (by unfold Seg13.relationRow7196 at r7196; linear_combination r7196)
      (by unfold Seg13.relationRow7197 at r7197; linear_combination r7197)
      (by unfold Seg13.relationRow7198 at r7198; linear_combination r7198)
      (by unfold seg13ScpNode18Out; unfold Seg13.relationRow7200 at r7200; linear_combination r7200)
      (by unfold Seg13.relationRow7201 at r7201; linear_combination r7201)
      (by unfold seg13ScpNode18Out; unfold Seg13.relationRow7203 at r7203; linear_combination r7203)
      (by unfold Seg13.relationRow7204 at r7204; linear_combination r7204)
      (by unfold seg13ScpNode18Out; unfold Seg13.relationRow7206 at r7206; linear_combination r7206)
      (by unfold seg13ScpNode18Out; unfold Seg13.relationRow7208 at r7208; linear_combination r7208))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

