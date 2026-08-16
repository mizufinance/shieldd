import Ipp.Bls12377G1Endomorphism
import Ipp.Bls12377G2SubgroupSoundness
import Mathlib.Tactic

/-!
Verified BLS12-377 G1/G2 subgroup validation. The endomorphism relations are
proved sound filters; the scalar predicates are exact fallbacks for completeness.
-/

namespace Ipp.FastSubgroupValidation

open Ipp.Bls12377
open Ipp.Bls12377G1Endomorphism
open Ipp.Bls12377G2SubgroupSoundness

local instance fastBasePrimeFact : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance fastFq2NonresidueFact :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g1Curve.IsElliptic := g1_isElliptic
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- The positive BLS12-377 seed pinned by Arkworks and the Rust validator. -/
def blsSeed : Nat := 0x8508c00000000001

/-- The scalar used by the concrete G1 fast membership relation. -/
def blsSeedSquared : Nat :=
  91893752504881257701523279626832445441

theorem blsSeed_exact : blsSeed = ateLoopParameter := by
  norm_num [blsSeed, ateLoopParameter]

theorem blsSeed_squared_exact : blsSeed ^ 2 = blsSeedSquared := by
  norm_num [blsSeed, blsSeedSquared]

/-- The concrete G1 endomorphism relation used before the scalar fallback. -/
def g1FastMembership (p : G1) : Prop :=
  g1Phi p = -(ateLoopParameter ^ 2 • p)

/-- The concrete G2 Frobenius relation used before the scalar fallback. -/
def g2FastMembership (p : G2) : Prop :=
  g2Psi p = ateLoopParameter • p

/-- G1 validation: accept the proved-fast relation or run the exact scalar check. -/
def g1VerifiedMembership (p : G1) : Prop :=
  g1FastMembership p ∨ arkworksG1CheckedMembership p

/-- G2 validation: accept the proved-fast relation or run the exact scalar check. -/
def g2VerifiedMembership (p : G2) : Prop :=
  g2FastMembership p ∨ arkworksG2CheckedMembership p

theorem g1VerifiedMembership_iff_arkworks
    (facts : PublishedCurveOrderFacts) (p : G1) :
    g1VerifiedMembership p ↔ arkworksG1CheckedMembership p := by
  constructor
  · rintro (hfast | hscalar)
    · exact g1_fast_sound facts p hfast
    · exact hscalar
  · exact Or.inr

theorem g2VerifiedMembership_iff_arkworks
    (facts : PublishedCurveOrderFacts) (p : G2) :
    g2VerifiedMembership p ↔ arkworksG2CheckedMembership p := by
  constructor
  · rintro (hfast | hscalar)
    · exact g2_fast_sound facts p hfast
    · exact hscalar
  · exact Or.inr

/-- The validation-relevant decoded element classes. Unchanged elements cover
GT and canonical-shape predicates whose implementation is not replaced here. -/
inductive DecodedElement where
  | g1 (point : G1)
  | g2 (point : G2)
  | unchanged (accepted : Prop)

def arkworksCheck : DecodedElement → Prop
  | .g1 p => arkworksG1CheckedMembership p
  | .g2 p => arkworksG2CheckedMembership p
  | .unchanged accepted => accepted

def fastCheck : DecodedElement → Prop
  | .g1 p => g1VerifiedMembership p
  | .g2 p => g2VerifiedMembership p
  | .unchanged accepted => accepted

theorem fastCheck_eq_arkworksCheck (facts : PublishedCurveOrderFacts) :
    fastCheck = arkworksCheck := by
  funext element
  apply propext
  cases element with
  | g1 p => exact g1VerifiedMembership_iff_arkworks facts p
  | g2 p => exact g2VerifiedMembership_iff_arkworks facts p
  | unchanged accepted => rfl

/-- Relational characterization of the first rejected element, matching the
decoder's short-circuit validation order. -/
def FirstFailureAt {alpha : Type} (check : alpha → Prop) (elements : List alpha)
    (index : Nat) : Prop :=
  (∃ element, elements[index]? = some element ∧ ¬ check element) ∧
    ∀ prior, prior < index →
      ∀ element, elements[prior]? = some element → check element

theorem strictDecoder_failure_order_preserved
    (facts : PublishedCurveOrderFacts)
    (elements : List DecodedElement) (index : Nat) :
    FirstFailureAt fastCheck elements index ↔
      FirstFailureAt arkworksCheck elements index := by
  rw [fastCheck_eq_arkworksCheck facts]

theorem strictDecoder_acceptance_preserved
    (facts : PublishedCurveOrderFacts) (elements : List DecodedElement) :
    (∀ element ∈ elements, fastCheck element) ↔
      ∀ element ∈ elements, arkworksCheck element := by
  rw [fastCheck_eq_arkworksCheck facts]

#print axioms blsSeed_squared_exact
#print axioms g1VerifiedMembership_iff_arkworks
#print axioms g2VerifiedMembership_iff_arkworks
#print axioms fastCheck_eq_arkworksCheck
#print axioms strictDecoder_failure_order_preserved
#print axioms strictDecoder_acceptance_preserved

end Ipp.FastSubgroupValidation
