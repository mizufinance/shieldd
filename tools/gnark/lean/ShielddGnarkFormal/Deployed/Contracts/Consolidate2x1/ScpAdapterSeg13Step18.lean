import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_step18 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode18Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (19 : Seg13.F))
        (seg13ScpNode17Out rho) (rho 40) (rho 41) (rho 42)
        (rho 7484) (rho 7485) := by
  have hnode := seg13_scp_node18_eq rho h
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
    _, _, _, _, _, p85, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6831, r6832, r6833, r6834, _, r6836, r6837, _, r6839, r6840, _, r6842, _, r6844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (19 : Seg13.F))
      (seg13ScpNode17Out rho) (rho 40) (rho 41) (rho 42)
      (rho 7484) (rho 7485)
      (rho 13976) (rho 13977) (rho 13978) (rho 13979)
      (rho 13980) (rho 13981) (rho 13982) (rho 13983) (rho 13984) (rho 13985)
      (by unfold Seg13.relationRow6831 at r6831; linear_combination r6831)
      (by unfold Seg13.relationRow6832 at r6832; linear_combination r6832)
      (by unfold Seg13.relationRow6833 at r6833; linear_combination r6833)
      (by unfold Seg13.relationRow6834 at r6834; linear_combination r6834)
      (by unfold seg13ScpNode17Out; unfold Seg13.relationRow6836 at r6836; linear_combination r6836)
      (by unfold Seg13.relationRow6837 at r6837; linear_combination r6837)
      (by unfold seg13ScpNode17Out; unfold Seg13.relationRow6839 at r6839; linear_combination r6839)
      (by unfold Seg13.relationRow6840 at r6840; linear_combination r6840)
      (by unfold seg13ScpNode17Out; unfold Seg13.relationRow6842 at r6842; linear_combination r6842)
      (by unfold seg13ScpNode17Out; unfold Seg13.relationRow6844 at r6844; linear_combination r6844))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

