import Ipp.Algebra
import Mathlib.Algebra.NoZeroSMulDivisors.Basic

/-!
Small formal counterexamples and exact cost bounds used to reject SnarkPack-v2
candidates. These do not claim that every protocol in the named family is
impossible; they close the concrete shortcuts evaluated in this pass.
-/

namespace Ipp.SnarkpackV2CandidateBounds

/-- Multiplying two pairing equations is not equivalent to checking each one. -/
theorem combined_equation_allows_cancellation {G : Type*} [AddCommGroup G]
    (t : G) (ht : t ≠ 0) :
    t + (-t) = 0 ∧ ¬(t = 0 ∧ -t = 0) := by
  simp [ht]

/-- A verifier whose acceptance predicate omits the selected VK cannot bind it. -/
def BindsKey {VK Proof : Type*} (accept : VK → Proof → Prop) : Prop :=
  ∀ vk₁ vk₂ proof, accept vk₁ proof → accept vk₂ proof → vk₁ = vk₂

theorem key_independent_acceptance_not_binding {VK Proof : Type*}
    (accept : VK → Proof → Prop) (vk₁ vk₂ : VK) (proof : Proof)
    (hne : vk₁ ≠ vk₂) (haccept : accept vk₁ proof)
    (hindependent : ∀ vk, accept vk proof ↔ accept vk₁ proof) :
    ¬BindsKey accept := by
  intro hbind
  apply hne
  exact hbind vk₁ vk₂ proof haccept ((hindependent vk₂).mpr haccept)

/-- Nonzero random weight cannot make a fixed nonzero Groth16 term neutral. -/
theorem zero_padding_does_not_remove_fixed_term
    {F GT : Type*} [DivisionRing F] [AddCommGroup GT] [Module F GT]
    [NoZeroSMulDivisors F GT] (r : F) (alphaBeta : GT)
    (hr : r ≠ 0) (hab : alphaBeta ≠ 0) :
    (0 : GT) ≠ r • alphaBeta := by
  intro h
  rcases eq_zero_or_eq_zero_of_smul_eq_zero h.symm with hr' | hab'
  · exact hr hr'
  · exact hab hab'

def snarkpackTorusGtBytesPerRound : Nat := 8 * 288

/-- The audited HPA proof carries 16 reduction and five cross-term GT values. -/
def hpaTorusGtBytesPerRound : Nat := 21 * 288

theorem hpa_gt_bytes_per_round_overhead :
    hpaTorusGtBytesPerRound = snarkpackTorusGtBytesPerRound + 3744 := by
  decide

theorem hpa_gt_bytes_per_round_strictly_larger :
    snarkpackTorusGtBytesPerRound < hpaTorusGtBytesPerRound := by
  decide

#print axioms combined_equation_allows_cancellation
#print axioms key_independent_acceptance_not_binding
#print axioms zero_padding_does_not_remove_fixed_term
#print axioms hpa_gt_bytes_per_round_overhead

end Ipp.SnarkpackV2CandidateBounds
