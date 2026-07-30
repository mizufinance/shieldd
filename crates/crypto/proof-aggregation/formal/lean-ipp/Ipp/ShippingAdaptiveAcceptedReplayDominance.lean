import Ipp.ForkTreeGateDominance
import Ipp.ShippingAdaptiveAcceptedReplay
import Ipp.ShippingAdaptiveRandomizerBound

/-!
Probability-mass transport from the randomizer-good shipping fork to the
accepted-only replay.

The right-hand event remains qualified by the original strong predicate.
Thus this module moves no weak-only accepted tree into a cryptographic win.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.Extracted.AppVerifierStateMachine

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance : IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance : IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- The concrete randomizer-good gate implies the accepted-only gate.

This implication uses only the definitions: the strong gate already contains
invalid acceptance at the selected proof size. -/
theorem invalidAcceptedRandomizerGoodAt_implies_selectedAcceptedAt
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (run : MultiStatementRunLog CallId)
    (hgood : InvalidAcceptedRandomizerGoodAt invalid μ extractor run) :
    SelectedAcceptedAt μ run :=
  invalidAcceptedAt_implies_selectedAcceptedAt
    invalid μ run hgood.1

/-- Every successful strong-gate fork contributes to the accepted-only replay
mass qualified by the same strong predicate on every leaf.

The only operational premise is reachability of each selected replay slot in
the complete adversary-plus-verifier program.  The comparison is not an
unqualified bound by accepted-only success. -/
theorem
    randomizerGoodFork_success_le_acceptedReplay_all_randomizerGood
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)) :
    Pr[fun tree : Option (RawMultiStatementForkTree CallId μ) =>
          tree.isSome |
        randomizerGoodMultiStatementForkExperimentAt
          game invalid queryBounds μ extractor] ≤
      Pr[Ipp.optionSatisfies
            (Ipp.RunTree.All
              (InvalidAcceptedRandomizerGoodAt invalid μ extractor)) |
        acceptedMultiStatementForkExperimentAt game queryBounds μ] := by
  classical
  simpa [randomizerGoodMultiStatementForkExperimentAt,
    acceptedMultiStatementForkExperimentAt] using
    (Ipp.forkTreeCombined_isSome_le_qualified_weaker_of_gate
      μ (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
      (SelectedAcceptedAt μ)
      (fun run hgood =>
        invalidAcceptedRandomizerGoodAt_implies_selectedAcceptedAt
          invalid μ extractor run hgood)
      hbaseReach)

end

end Ipp.ShippingMultiStatement
