import Ipp.Extracted.ArkworksScalarMulGlvReduceCoreStep

/-! Curve-free loop refinement for fixed-width Fr reduction. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvReduceCore

open Aeneas Aeneas.Std Result ControlFlow

def reduce (input : ScalarArray) : Result ScalarArray :=
  loop body input

structure ReducedSpec (input output : ScalarArray) : Prop where
  lt : scalarToNat output < r
  congruent : Nat.ModEq r (scalarToNat output) (scalarToNat input)

private theorem loopResult_spec (input : ScalarArray)
    {state : ScalarArray} {result : Result ScalarArray}
    (hrun : LoopResult body state result)
    (hinvariant : Nat.ModEq r (scalarToNat state) (scalarToNat input)) :
    ∀ output, result = .ok output → ReducedSpec input output := by
  induction hrun with
  | done hbody =>
      rename_i current final
      intro output hresult
      rcases body_spec current (.done final) hbody with
        ⟨hfinal, hlt⟩ | ⟨next, hcontra, hge, hvalue⟩
      · cases hfinal
        cases hresult
        exact ⟨hlt, hinvariant⟩
      · cases hcontra
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      intro output hresult
      rcases body_spec current (.cont nextState) hbody with
        ⟨hcontra, hlt⟩ | ⟨next, hnextState, hge, hvalue⟩
      · cases hcontra
      · have hnextEq : nextState = next := ControlFlow.cont.inj hnextState
        subst next
        have hstep : Nat.ModEq r (scalarToNat nextState)
            (scalarToNat input) := by
          rw [hvalue]
          exact (Nat.sub_modulus_modEq_iff hge).2 hinvariant
        exact ih hstep output hresult
  | fail hbody => intro output hresult; simp at hresult
  | div hbody => intro output hresult; simp at hresult

theorem reduce_spec (input output : ScalarArray)
    (hexec : reduce input = .ok output) : ReducedSpec input output := by
  unfold reduce at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  exact loopResult_spec input hrun (Nat.ModEq.refl _) output rfl

#print axioms ReducedSpec
#print axioms reduce_spec

end Ipp.Extracted.ArkworksScalarMul.GlvReduceCore
