import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_step7 (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode7Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (8 : Seg13.F))
        (seg13ScpNode6Out rho) (rho 73) (rho 74) (rho 75)
        (rho 7462) (rho 7463) := by
  have hnode := seg13_scp_node7_eq rho h
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2827, r2828, r2829, r2830, _, r2832, r2833, _, r2835, r2836, _, r2838, _, r2840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (8 : Seg13.F))
      (seg13ScpNode6Out rho) (rho 73) (rho 74) (rho 75)
      (rho 7462) (rho 7463)
      (rho 10016) (rho 10017) (rho 10018) (rho 10019)
      (rho 10020) (rho 10021) (rho 10022) (rho 10023) (rho 10024) (rho 10025)
      (by unfold Seg13.relationRow2827 at r2827; linear_combination r2827)
      (by unfold Seg13.relationRow2828 at r2828; linear_combination r2828)
      (by unfold Seg13.relationRow2829 at r2829; linear_combination r2829)
      (by unfold Seg13.relationRow2830 at r2830; linear_combination r2830)
      (by unfold seg13ScpNode6Out; unfold Seg13.relationRow2832 at r2832; linear_combination r2832)
      (by unfold Seg13.relationRow2833 at r2833; linear_combination r2833)
      (by unfold seg13ScpNode6Out; unfold Seg13.relationRow2835 at r2835; linear_combination r2835)
      (by unfold Seg13.relationRow2836 at r2836; linear_combination r2836)
      (by unfold seg13ScpNode6Out; unfold Seg13.relationRow2838 at r2838; linear_combination r2838)
      (by unfold seg13ScpNode6Out; unfold Seg13.relationRow2840 at r2840; linear_combination r2840))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

