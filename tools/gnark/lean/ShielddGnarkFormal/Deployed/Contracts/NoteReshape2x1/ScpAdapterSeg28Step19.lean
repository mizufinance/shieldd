import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step19 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode19Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (20 : Seg28.F))
        (seg28ScpNode18Out rho) (rho 127) (rho 128) (rho 129)
        (rho 19667) (rho 19668) := by
  have hnode := seg28_scp_node19_eq rho h
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
    _, _, _, _, _, _, _, _, _, p89,
    p90, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart89 at p89
  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7195, r7196, r7197, r7198, _⟩
  unfold Seg28.relationPart90 at p90
  rcases p90 with ⟨r7200, r7201, _, r7203, r7204, _, r7206, _, r7208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (20 : Seg28.F))
      (seg28ScpNode18Out rho) (rho 127) (rho 128) (rho 129)
      (rho 19667) (rho 19668)
      (rho 26517) (rho 26518) (rho 26519) (rho 26520)
      (rho 26521) (rho 26522) (rho 26523) (rho 26524) (rho 26525) (rho 26526)
      (by unfold Seg28.relationRow7195 at r7195; linear_combination r7195)
      (by unfold Seg28.relationRow7196 at r7196; linear_combination r7196)
      (by unfold Seg28.relationRow7197 at r7197; linear_combination r7197)
      (by unfold Seg28.relationRow7198 at r7198; linear_combination r7198)
      (by unfold seg28ScpNode18Out; unfold Seg28.relationRow7200 at r7200; linear_combination r7200)
      (by unfold Seg28.relationRow7201 at r7201; linear_combination r7201)
      (by unfold seg28ScpNode18Out; unfold Seg28.relationRow7203 at r7203; linear_combination r7203)
      (by unfold Seg28.relationRow7204 at r7204; linear_combination r7204)
      (by unfold seg28ScpNode18Out; unfold Seg28.relationRow7206 at r7206; linear_combination r7206)
      (by unfold seg28ScpNode18Out; unfold Seg28.relationRow7208 at r7208; linear_combination r7208))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

