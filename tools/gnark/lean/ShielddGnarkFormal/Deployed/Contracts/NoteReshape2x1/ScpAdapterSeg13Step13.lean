import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step13 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode13Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (14 : Seg13.F))
        (seg13ScpNode12Out rho) (rho 55) (rho 56) (rho 57)
        (rho 7468) (rho 7469) := by
  have hnode := seg13_scp_node13_eq rho h
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5011, r5012, r5013, r5014, _, r5016, r5017, _, r5019, r5020, _, r5022, _, r5024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (14 : Seg13.F))
      (seg13ScpNode12Out rho) (rho 55) (rho 56) (rho 57)
      (rho 7468) (rho 7469)
      (rho 12170) (rho 12171) (rho 12172) (rho 12173)
      (rho 12174) (rho 12175) (rho 12176) (rho 12177) (rho 12178) (rho 12179)
      (by unfold Seg13.relationRow5011 at r5011; linear_combination r5011)
      (by unfold Seg13.relationRow5012 at r5012; linear_combination r5012)
      (by unfold Seg13.relationRow5013 at r5013; linear_combination r5013)
      (by unfold Seg13.relationRow5014 at r5014; linear_combination r5014)
      (by unfold seg13ScpNode12Out; unfold Seg13.relationRow5016 at r5016; linear_combination r5016)
      (by unfold Seg13.relationRow5017 at r5017; linear_combination r5017)
      (by unfold seg13ScpNode12Out; unfold Seg13.relationRow5019 at r5019; linear_combination r5019)
      (by unfold Seg13.relationRow5020 at r5020; linear_combination r5020)
      (by unfold seg13ScpNode12Out; unfold Seg13.relationRow5022 at r5022; linear_combination r5022)
      (by unfold seg13ScpNode12Out; unfold Seg13.relationRow5024 at r5024; linear_combination r5024))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

