import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node21

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_step21 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode21Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (22 : Seg28.F))
        (seg28ScpNode20Out rho) (rho 121) (rho 122) (rho 123)
        (rho 19671) (rho 19672) := by
  have hnode := seg28_scp_node21_eq rho h
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
    _, _, _, _, _, _, _, _, _, p99,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart99 at p99
  rcases p99 with ⟨_, _, _, r7923, r7924, r7925, r7926, _, r7928, r7929, _, r7931, r7932, _, r7934, _, r7936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (22 : Seg28.F))
      (seg28ScpNode20Out rho) (rho 121) (rho 122) (rho 123)
      (rho 19671) (rho 19672)
      (rho 27237) (rho 27238) (rho 27239) (rho 27240)
      (rho 27241) (rho 27242) (rho 27243) (rho 27244) (rho 27245) (rho 27246)
      (by unfold Seg28.relationRow7923 at r7923; linear_combination r7923)
      (by unfold Seg28.relationRow7924 at r7924; linear_combination r7924)
      (by unfold Seg28.relationRow7925 at r7925; linear_combination r7925)
      (by unfold Seg28.relationRow7926 at r7926; linear_combination r7926)
      (by unfold seg28ScpNode20Out; unfold Seg28.relationRow7928 at r7928; linear_combination r7928)
      (by unfold Seg28.relationRow7929 at r7929; linear_combination r7929)
      (by unfold seg28ScpNode20Out; unfold Seg28.relationRow7931 at r7931; linear_combination r7931)
      (by unfold Seg28.relationRow7932 at r7932; linear_combination r7932)
      (by unfold seg28ScpNode20Out; unfold Seg28.relationRow7934 at r7934; linear_combination r7934)
      (by unfold seg28ScpNode20Out; unfold Seg28.relationRow7936 at r7936; linear_combination r7936))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

