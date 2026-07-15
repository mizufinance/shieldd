import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_step8 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode8Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (9 : Seg28.F))
        (seg28ScpNode7Out rho) (rho 160) (rho 161) (rho 162)
        (rho 19645) (rho 19646) := by
  have hnode := seg28_scp_node8_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3191, r3192, r3193, r3194, _, r3196, r3197, _, r3199⟩
  unfold Seg28.relationPart40 at p40
  rcases p40 with ⟨r3200, _, r3202, _, r3204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (9 : Seg28.F))
      (seg28ScpNode7Out rho) (rho 160) (rho 161) (rho 162)
      (rho 19645) (rho 19646)
      (rho 22557) (rho 22558) (rho 22559) (rho 22560)
      (rho 22561) (rho 22562) (rho 22563) (rho 22564) (rho 22565) (rho 22566)
      (by unfold Seg28.relationRow3191 at r3191; linear_combination r3191)
      (by unfold Seg28.relationRow3192 at r3192; linear_combination r3192)
      (by unfold Seg28.relationRow3193 at r3193; linear_combination r3193)
      (by unfold Seg28.relationRow3194 at r3194; linear_combination r3194)
      (by unfold seg28ScpNode7Out; unfold Seg28.relationRow3196 at r3196; linear_combination r3196)
      (by unfold Seg28.relationRow3197 at r3197; linear_combination r3197)
      (by unfold seg28ScpNode7Out; unfold Seg28.relationRow3199 at r3199; linear_combination r3199)
      (by unfold Seg28.relationRow3200 at r3200; linear_combination r3200)
      (by unfold seg28ScpNode7Out; unfold Seg28.relationRow3202 at r3202; linear_combination r3202)
      (by unfold seg28ScpNode7Out; unfold Seg28.relationRow3204 at r3204; linear_combination r3204))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

