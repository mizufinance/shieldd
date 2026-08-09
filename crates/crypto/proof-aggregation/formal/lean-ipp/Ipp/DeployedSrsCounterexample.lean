import Ipp.S1Bls12377StandaloneGames

/-!
Deterministic false openings when the verifier's KZG trapdoor scalars are
public.

These lemmas are independent of the production SRS constructor. They expose
the exact mathematical consequence of publishing scalars `beta` and `alpha`
such that `gBeta = beta • g` and `hAlpha = alpha • h`. No nonzero assumption
on either scalar or power-sequence assumption is needed.
-/

namespace Ipp.S1

noncomputable section

open Ipp.Bls12377

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

/-- With a public V-lane scalar, challenge `beta - 1` makes the shifted G1
base equal `g`. The public G2 base itself is then a false commitment to the
zero coefficient vector. -/
def publicBetaVForgery {μ : Nat}
    (parameters : Bls12377KzgParameters μ) (beta : Fr) :
    Bls12377KzgVForgery μ where
  z := beta - 1
  coeffs := fun _ => 0
  claimedKey := parameters.h
  opening := parameters.h

/-- W-lane analogue of `publicBetaVForgery`. -/
def publicAlphaWForgery {μ : Nat}
    (parameters : Bls12377KzgParameters μ) (alpha : Fr) :
    Bls12377KzgWForgery μ where
  z := alpha - 1
  coeffs := fun _ => 0
  claimedKey := parameters.g
  opening := parameters.g

private theorem shiftedG1_at_sub_one
    {μ : Nat} (parameters : Bls12377KzgParameters μ) (beta : Fr)
    (hbeta : parameters.gBeta = beta • parameters.g) :
    parameters.gBeta - (beta - 1) • parameters.g = parameters.g := by
  rw [hbeta, ← sub_smul]
  simp

private theorem shiftedG2_at_sub_one
    {μ : Nat} (parameters : Bls12377KzgParameters μ) (alpha : Fr)
    (halpha : parameters.hAlpha = alpha • parameters.h) :
    parameters.hAlpha - (alpha - 1) • parameters.h = parameters.h := by
  rw [halpha, ← sub_smul]
  simp

/-- The public-beta forgery satisfies the concrete V verifier equation. -/
theorem publicBetaVForgery_concreteAccept
    {μ : Nat} (parameters : Bls12377KzgParameters μ) (beta : Fr)
    (hbeta : parameters.gBeta = beta • parameters.g) :
    Bls12377KzgVConcreteAccept parameters
      (publicBetaVForgery parameters beta) := by
  have hshift := shiftedG1_at_sub_one parameters beta hbeta
  simp [Bls12377KzgVConcreteAccept, publicBetaVForgery,
    bls12377KzgEvaluation, hshift]

/-- The public-alpha forgery satisfies the concrete W verifier equation. -/
theorem publicAlphaWForgery_concreteAccept
    {μ : Nat} (parameters : Bls12377KzgParameters μ) (alpha : Fr)
    (halpha : parameters.hAlpha = alpha • parameters.h) :
    Bls12377KzgWConcreteAccept parameters
      (publicAlphaWForgery parameters alpha) := by
  have hshift := shiftedG2_at_sub_one parameters alpha halpha
  simp [Bls12377KzgWConcreteAccept, publicAlphaWForgery,
    bls12377KzgEvaluation, hshift]

/-- If `h` is nonzero, public knowledge of `beta` gives a deterministic
winning V-lane false opening. -/
theorem publicBetaVForgery_wins
    {μ : Nat} (parameters : Bls12377KzgParameters μ) (beta : Fr)
    (hbeta : parameters.gBeta = beta • parameters.g)
    (hNonzero : parameters.h ≠ 0) :
    Bls12377KzgVTargetWin parameters
      (some (publicBetaVForgery parameters beta)) := by
  refine ⟨publicBetaVForgery_concreteAccept parameters beta hbeta, ?_⟩
  simpa [publicBetaVForgery, Ipp.msm] using hNonzero

/-- If `g` is nonzero, public knowledge of `alpha` gives a deterministic
winning W-lane false opening. -/
theorem publicAlphaWForgery_wins
    {μ : Nat} (parameters : Bls12377KzgParameters μ) (alpha : Fr)
    (halpha : parameters.hAlpha = alpha • parameters.h)
    (gNonzero : parameters.g ≠ 0) :
    Bls12377KzgWTargetWin parameters
      (some (publicAlphaWForgery parameters alpha)) := by
  refine ⟨publicAlphaWForgery_concreteAccept parameters alpha halpha, ?_⟩
  simpa [publicAlphaWForgery, Ipp.msm] using gNonzero

/-- Public knowledge of both shifted-base scalars breaks both concrete KZG
lanes deterministically. -/
theorem publicTrapdoors_forge_both_lanes
    {μ : Nat} (parameters : Bls12377KzgParameters μ)
    (beta alpha : Fr)
    (hbeta : parameters.gBeta = beta • parameters.g)
    (halpha : parameters.hAlpha = alpha • parameters.h)
    (gNonzero : parameters.g ≠ 0)
    (hNonzero : parameters.h ≠ 0) :
    Bls12377KzgVTargetWin parameters
        (some (publicBetaVForgery parameters beta)) ∧
      Bls12377KzgWTargetWin parameters
        (some (publicAlphaWForgery parameters alpha)) :=
  ⟨publicBetaVForgery_wins parameters beta hbeta hNonzero,
    publicAlphaWForgery_wins parameters alpha halpha gNonzero⟩

end

end Ipp.S1
