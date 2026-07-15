import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_step17 (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode17Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (18 : Seg28.F))
        (seg28ScpNode16Out rho) (rho 133) (rho 134) (rho 135)
        (rho 19663) (rho 19664) := by
  have hnode := seg28_scp_node17_eq rho h
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
    p80, p81, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart80 at p80
  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6467, r6468, r6469, r6470, _, r6472, r6473, _, r6475, r6476, _, r6478, _⟩
  unfold Seg28.relationPart81 at p81
  rcases p81 with ⟨r6480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (18 : Seg28.F))
      (seg28ScpNode16Out rho) (rho 133) (rho 134) (rho 135)
      (rho 19663) (rho 19664)
      (rho 25797) (rho 25798) (rho 25799) (rho 25800)
      (rho 25801) (rho 25802) (rho 25803) (rho 25804) (rho 25805) (rho 25806)
      (by unfold Seg28.relationRow6467 at r6467; linear_combination r6467)
      (by unfold Seg28.relationRow6468 at r6468; linear_combination r6468)
      (by unfold Seg28.relationRow6469 at r6469; linear_combination r6469)
      (by unfold Seg28.relationRow6470 at r6470; linear_combination r6470)
      (by unfold seg28ScpNode16Out; unfold Seg28.relationRow6472 at r6472; linear_combination r6472)
      (by unfold Seg28.relationRow6473 at r6473; linear_combination r6473)
      (by unfold seg28ScpNode16Out; unfold Seg28.relationRow6475 at r6475; linear_combination r6475)
      (by unfold Seg28.relationRow6476 at r6476; linear_combination r6476)
      (by unfold seg28ScpNode16Out; unfold Seg28.relationRow6478 at r6478; linear_combination r6478)
      (by unfold seg28ScpNode16Out; unfold Seg28.relationRow6480 at r6480; linear_combination r6480))

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

