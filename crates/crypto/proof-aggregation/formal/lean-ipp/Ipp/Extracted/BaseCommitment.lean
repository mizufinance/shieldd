import Ipp.Extracted.VerifyTippMippGenerated

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

noncomputable section

private def interpretedResult {E : Type} (failure : Option E) (accepted : Bool) :
    ark_ip_proofs.gipa.BaseCommitmentResult Bool E :=
  match failure with
  | none => .Ok accepted
  | some error => .Err error

/-- The extracted terminal core accepts exactly the three singleton commitment
    equations and the singleton inner-product equation. Every effect error is
    retained as the corresponding non-successful core result. -/
theorem verify_base_commitment_refinement
    {KA KB KT MA MB MT OA OB OT E FX : Type}
    (ip : MA → MB → MT)
    (cmA : KA → MA → OA) (cmB : KB → MB → OB) (cmT : KT → MT → OT)
    (effect : ark_ip_proofs.gipa.BaseCommitmentEffect
      FX KA KB KT MA MB MT OA OB OT E)
    (state : FX) (ckA : KA) (ckB : KB) (ckT : KT) (a : MA) (b : MB)
    (comA : OA) (comB : OB) (comT : OT)
    (innerError leftError rightError targetError : Option E)
    (leftAccepted rightAccepted targetAccepted : Bool)
    (inner_product_law :
      effect.inner_product state ⟨[a]⟩ ⟨[b]⟩ =
        .ok (match innerError with
          | none => .Ok (ip a b)
          | some error => .Err error))
    (left_commitment_law :
      effect.verify_left state ⟨[ckA]⟩ ⟨[a]⟩ comA =
        .ok (interpretedResult leftError leftAccepted))
    (right_commitment_law :
      effect.verify_right state ⟨[ckB]⟩ ⟨[b]⟩ comB =
        .ok (interpretedResult rightError rightAccepted))
    (target_commitment_law :
      effect.verify_target state ⟨[ckT]⟩ ⟨[ip a b]⟩ comT =
        .ok (interpretedResult targetError targetAccepted))
    (left_acceptance_law : leftAccepted = true ↔ comA = cmA ckA a)
    (right_acceptance_law : rightAccepted = true ↔ comB = cmB ckB b)
    (target_acceptance_law : targetAccepted = true ↔ comT = cmT ckT (ip a b)) :
    ark_ip_proofs.gipa.verify_base_commitment_core
        effect
        { ck_a := ckA, ck_b := ckB, ck_t := ⟨[ckT]⟩,
          a := a, b := b, com_a := comA, com_b := comB, com_t := comT }
        state = .ok (.Ok true) ↔
      innerError = none ∧ leftError = none ∧ rightError = none ∧
      targetError = none ∧
      ∃ t, t = ip a b ∧
        comA = cmA ckA a ∧ comB = cmB ckB b ∧ comT = cmT ckT t := by
  simp only [exists_eq_left]
  rw [← left_acceptance_law, ← right_acceptance_law, ← target_acceptance_law]
  unfold ark_ip_proofs.gipa.verify_base_commitment_core
  cases innerError <;> cases leftError <;> cases rightError <;> cases targetError <;>
  cases leftAccepted <;> cases rightAccepted <;> cases targetAccepted <;>
  simp [lift, ark_ip_proofs.Std.Array.to_slice,
    ark_ip_proofs.alloc.slice.Slice.into_vec, ark_ip_proofs.alloc.vec.Vec.deref,
    alloc.vec.Vec.with_capacity, alloc.vec.Vec.push,
    ark_ip_proofs.Array.make, ark_ip_proofs.Array.to_slice,
    inner_product_law, left_commitment_law, right_commitment_law,
    target_commitment_law, interpretedResult]

#print axioms verify_base_commitment_refinement

end
end Ipp.Extracted
