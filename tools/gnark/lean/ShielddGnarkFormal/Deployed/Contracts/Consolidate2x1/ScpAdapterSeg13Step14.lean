import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_step14 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode14Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (15 : Seg13.F))
        (seg13ScpNode13Out rho) (rho 52) (rho 53) (rho 54)
        (rho 7476) (rho 7477) := by
  have hnode := seg13_scp_node14_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5375, r5376, r5377, r5378, _, r5380, r5381, _, r5383, r5384, _, r5386, _, r5388, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (15 : Seg13.F))
      (seg13ScpNode13Out rho) (rho 52) (rho 53) (rho 54)
      (rho 7476) (rho 7477)
      (rho 12536) (rho 12537) (rho 12538) (rho 12539)
      (rho 12540) (rho 12541) (rho 12542) (rho 12543) (rho 12544) (rho 12545)
      (by unfold Seg13.relationRow5375 at r5375; linear_combination r5375)
      (by unfold Seg13.relationRow5376 at r5376; linear_combination r5376)
      (by unfold Seg13.relationRow5377 at r5377; linear_combination r5377)
      (by unfold Seg13.relationRow5378 at r5378; linear_combination r5378)
      (by unfold seg13ScpNode13Out; unfold Seg13.relationRow5380 at r5380; linear_combination r5380)
      (by unfold Seg13.relationRow5381 at r5381; linear_combination r5381)
      (by unfold seg13ScpNode13Out; unfold Seg13.relationRow5383 at r5383; linear_combination r5383)
      (by unfold Seg13.relationRow5384 at r5384; linear_combination r5384)
      (by unfold seg13ScpNode13Out; unfold Seg13.relationRow5386 at r5386; linear_combination r5386)
      (by unfold seg13ScpNode13Out; unfold Seg13.relationRow5388 at r5388; linear_combination r5388))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

