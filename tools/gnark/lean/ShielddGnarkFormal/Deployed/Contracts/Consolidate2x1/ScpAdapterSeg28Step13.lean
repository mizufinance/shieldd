import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_step13 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode13Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (14 : Seg28.F))
        (seg28ScpNode12Out rho) (rho 145) (rho 146) (rho 147)
        (rho 19655) (rho 19656) := by
  have hnode := seg28_scp_node13_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5011, r5012, r5013, r5014, _, r5016, r5017, _, r5019, r5020, _, r5022, _, r5024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (14 : Seg28.F))
      (seg28ScpNode12Out rho) (rho 145) (rho 146) (rho 147)
      (rho 19655) (rho 19656)
      (rho 24357) (rho 24358) (rho 24359) (rho 24360)
      (rho 24361) (rho 24362) (rho 24363) (rho 24364) (rho 24365) (rho 24366)
      (by unfold Seg28.relationRow5011 at r5011; linear_combination r5011)
      (by unfold Seg28.relationRow5012 at r5012; linear_combination r5012)
      (by unfold Seg28.relationRow5013 at r5013; linear_combination r5013)
      (by unfold Seg28.relationRow5014 at r5014; linear_combination r5014)
      (by unfold seg28ScpNode12Out; unfold Seg28.relationRow5016 at r5016; linear_combination r5016)
      (by unfold Seg28.relationRow5017 at r5017; linear_combination r5017)
      (by unfold seg28ScpNode12Out; unfold Seg28.relationRow5019 at r5019; linear_combination r5019)
      (by unfold Seg28.relationRow5020 at r5020; linear_combination r5020)
      (by unfold seg28ScpNode12Out; unfold Seg28.relationRow5022 at r5022; linear_combination r5022)
      (by unfold seg28ScpNode12Out; unfold Seg28.relationRow5024 at r5024; linear_combination r5024))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

