import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step7 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode7Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (8 : Seg28.F))
        (seg28ScpNode6Out rho) (rho 160) (rho 161) (rho 162)
        (rho 19637) (rho 19638) := by
  have hnode := seg28_scp_node7_eq rho h
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2827, r2828, r2829, r2830, _, r2832, r2833, _, r2835, r2836, _, r2838, _, r2840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (8 : Seg28.F))
      (seg28ScpNode6Out rho) (rho 160) (rho 161) (rho 162)
      (rho 19637) (rho 19638)
      (rho 22191) (rho 22192) (rho 22193) (rho 22194)
      (rho 22195) (rho 22196) (rho 22197) (rho 22198) (rho 22199) (rho 22200)
      (by unfold Seg28.relationRow2827 at r2827; linear_combination r2827)
      (by unfold Seg28.relationRow2828 at r2828; linear_combination r2828)
      (by unfold Seg28.relationRow2829 at r2829; linear_combination r2829)
      (by unfold Seg28.relationRow2830 at r2830; linear_combination r2830)
      (by unfold seg28ScpNode6Out; unfold Seg28.relationRow2832 at r2832; linear_combination r2832)
      (by unfold Seg28.relationRow2833 at r2833; linear_combination r2833)
      (by unfold seg28ScpNode6Out; unfold Seg28.relationRow2835 at r2835; linear_combination r2835)
      (by unfold Seg28.relationRow2836 at r2836; linear_combination r2836)
      (by unfold seg28ScpNode6Out; unfold Seg28.relationRow2838 at r2838; linear_combination r2838)
      (by unfold seg28ScpNode6Out; unfold Seg28.relationRow2840 at r2840; linear_combination r2840))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

