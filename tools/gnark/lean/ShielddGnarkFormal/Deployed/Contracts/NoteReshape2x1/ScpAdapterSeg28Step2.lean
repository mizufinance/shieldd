import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step2 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode2Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (3 : Seg28.F))
        (seg28ScpNode1Out rho) (rho 178) (rho 179) (rho 180)
        (rho 19633) (rho 19634) := by
  have hnode := seg28_scp_node2_eq rho h
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1007, r1008, r1009, r1010, _, r1012, r1013, _, r1015, r1016, _, r1018, _, r1020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (3 : Seg28.F))
      (seg28ScpNode1Out rho) (rho 178) (rho 179) (rho 180)
      (rho 19633) (rho 19634)
      (rho 20397) (rho 20398) (rho 20399) (rho 20400)
      (rho 20401) (rho 20402) (rho 20403) (rho 20404) (rho 20405) (rho 20406)
      (by unfold Seg28.relationRow1007 at r1007; linear_combination r1007)
      (by unfold Seg28.relationRow1008 at r1008; linear_combination r1008)
      (by unfold Seg28.relationRow1009 at r1009; linear_combination r1009)
      (by unfold Seg28.relationRow1010 at r1010; linear_combination r1010)
      (by unfold seg28ScpNode1Out; unfold Seg28.relationRow1012 at r1012; linear_combination r1012)
      (by unfold Seg28.relationRow1013 at r1013; linear_combination r1013)
      (by unfold seg28ScpNode1Out; unfold Seg28.relationRow1015 at r1015; linear_combination r1015)
      (by unfold Seg28.relationRow1016 at r1016; linear_combination r1016)
      (by unfold seg28ScpNode1Out; unfold Seg28.relationRow1018 at r1018; linear_combination r1018)
      (by unfold seg28ScpNode1Out; unfold Seg28.relationRow1020 at r1020; linear_combination r1020))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

