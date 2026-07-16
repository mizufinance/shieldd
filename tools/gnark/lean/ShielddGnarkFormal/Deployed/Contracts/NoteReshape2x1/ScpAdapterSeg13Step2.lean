import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step2 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode2Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (3 : Seg13.F))
        (seg13ScpNode1Out rho) (rho 88) (rho 89) (rho 90)
        (rho 7452) (rho 7453) := by
  have hnode := seg13_scp_node2_eq rho h
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1007, r1008, r1009, r1010, _, r1012, r1013, _, r1015, r1016, _, r1018, _, r1020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (3 : Seg13.F))
      (seg13ScpNode1Out rho) (rho 88) (rho 89) (rho 90)
      (rho 7452) (rho 7453)
      (rho 8216) (rho 8217) (rho 8218) (rho 8219)
      (rho 8220) (rho 8221) (rho 8222) (rho 8223) (rho 8224) (rho 8225)
      (by unfold Seg13.relationRow1007 at r1007; linear_combination r1007)
      (by unfold Seg13.relationRow1008 at r1008; linear_combination r1008)
      (by unfold Seg13.relationRow1009 at r1009; linear_combination r1009)
      (by unfold Seg13.relationRow1010 at r1010; linear_combination r1010)
      (by unfold seg13ScpNode1Out; unfold Seg13.relationRow1012 at r1012; linear_combination r1012)
      (by unfold Seg13.relationRow1013 at r1013; linear_combination r1013)
      (by unfold seg13ScpNode1Out; unfold Seg13.relationRow1015 at r1015; linear_combination r1015)
      (by unfold Seg13.relationRow1016 at r1016; linear_combination r1016)
      (by unfold seg13ScpNode1Out; unfold Seg13.relationRow1018 at r1018; linear_combination r1018)
      (by unfold seg13ScpNode1Out; unfold Seg13.relationRow1020 at r1020; linear_combination r1020))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

