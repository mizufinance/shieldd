import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_step20 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode20Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (21 : Seg28.F))
        (seg28ScpNode19Out rho) (rho 124) (rho 125) (rho 126)
        (rho 19669) (rho 19670) := by
  have hnode := seg28_scp_node20_eq rho h
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
    _, _, _, _, p94, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart94 at p94
  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7559, r7560, r7561, r7562, _, r7564, r7565, _, r7567, r7568, _, r7570, _, r7572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (21 : Seg28.F))
      (seg28ScpNode19Out rho) (rho 124) (rho 125) (rho 126)
      (rho 19669) (rho 19670)
      (rho 26877) (rho 26878) (rho 26879) (rho 26880)
      (rho 26881) (rho 26882) (rho 26883) (rho 26884) (rho 26885) (rho 26886)
      (by unfold Seg28.relationRow7559 at r7559; linear_combination r7559)
      (by unfold Seg28.relationRow7560 at r7560; linear_combination r7560)
      (by unfold Seg28.relationRow7561 at r7561; linear_combination r7561)
      (by unfold Seg28.relationRow7562 at r7562; linear_combination r7562)
      (by unfold seg28ScpNode19Out; unfold Seg28.relationRow7564 at r7564; linear_combination r7564)
      (by unfold Seg28.relationRow7565 at r7565; linear_combination r7565)
      (by unfold seg28ScpNode19Out; unfold Seg28.relationRow7567 at r7567; linear_combination r7567)
      (by unfold Seg28.relationRow7568 at r7568; linear_combination r7568)
      (by unfold seg28ScpNode19Out; unfold Seg28.relationRow7570 at r7570; linear_combination r7570)
      (by unfold seg28ScpNode19Out; unfold Seg28.relationRow7572 at r7572; linear_combination r7572))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

