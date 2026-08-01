import Ipp.ShippingAdaptiveAcceptedReplayKzgProbabilityTransport
import Ipp.ShippingAdaptiveAcceptedReplayGipaProbabilityTransport

/-!
Quantitative composition of the four accepted-replay KZG/GIPA targets.

The setup is the explicit query-free deployed parameter sampler.  The theorem
requires statement/setup binding on every supported selected replay, exact
query bounds, and explicit polynomial-time certificates before applying the
standalone security interfaces.

The final endpoint retains the complete multi-statement fork transform and
the one-time pre-fork randomizer-root subtraction.  No cache is reset and no
fork or adaptive statement-selection loss is hidden in a security premise.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.S1
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingProductionKeyFunctionality

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

/-- Sum of the four standalone accepted-replay advantages at the explicit
query-free deployed setup and one shared replay-query budget. -/
def acceptedReplayAdaptiveCryptoError
    {μ : Nat}
    {setup : AcceptedReplayBls12377SetupSampler μ}
    {complexity : AcceptedReplayBls12377PolynomialTimeModel μ}
    (kzgSecurity :
      AcceptedReplayBls12377KzgSecurity setup complexity)
    (gipaSecurity :
      AcceptedReplayBls12377GipaSecurity setup complexity)
    (replayQueries : Nat) : ℝ≥0∞ :=
  kzgSecurity.epsilonV 0 replayQueries +
    kzgSecurity.epsilonW 0 replayQueries +
    gipaSecurity.epsilonRoot 0 replayQueries +
    gipaSecurity.epsilonProduct 0 replayQueries

/-- The randomizer-good extraction target is bounded by the sum of its four
exact KZG/GIPA component events in the same cache-preserving experiment. -/
theorem
    cachePreservingCryptoExtraction_probability_le_component_sum
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    Pr[CachePreservingCryptoExtractionWin extractor |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor] ≤
      Pr[CachePreservingKzgVWin |
          randomizerGoodCachePreservingS1ExperimentAt
            game invalid queryBounds μ extractor] +
        Pr[CachePreservingKzgWWin |
            randomizerGoodCachePreservingS1ExperimentAt
              game invalid queryBounds μ extractor] +
        Pr[CachePreservingGipaRootWin extractor |
            randomizerGoodCachePreservingS1ExperimentAt
              game invalid queryBounds μ extractor] +
        Pr[CachePreservingGipaProductWin extractor |
            randomizerGoodCachePreservingS1ExperimentAt
              game invalid queryBounds μ extractor] := by
  let experiment :=
    randomizerGoodCachePreservingS1ExperimentAt
      game invalid queryBounds μ extractor
  calc
    Pr[CachePreservingCryptoExtractionWin extractor | experiment] ≤
        Pr[fun output =>
          CachePreservingKzgVWin output ∨
            (CachePreservingKzgWWin output ∨
              (CachePreservingGipaRootWin extractor output ∨
                CachePreservingGipaProductWin extractor output)) |
          experiment] := by
      apply probEvent_mono
      intro output _ hwin
      cases output <;>
        simpa [CachePreservingCryptoExtractionWin,
          CachePreservingKzgVWin, CachePreservingKzgWWin,
          CachePreservingGipaRootWin,
          CachePreservingGipaProductWin] using hwin
    _ ≤
        Pr[CachePreservingKzgVWin | experiment] +
          Pr[CachePreservingKzgWWin | experiment] +
          Pr[CachePreservingGipaRootWin extractor | experiment] +
          Pr[CachePreservingGipaProductWin extractor | experiment] := by
      have hv :=
        probEvent_or_le experiment
          CachePreservingKzgVWin
          (fun output =>
            CachePreservingKzgWWin output ∨
              (CachePreservingGipaRootWin extractor output ∨
                CachePreservingGipaProductWin extractor output))
      have hw :=
        probEvent_or_le experiment
          CachePreservingKzgWWin
          (fun output =>
            CachePreservingGipaRootWin extractor output ∨
              CachePreservingGipaProductWin extractor output)
      have hgipa :=
        probEvent_or_le experiment
          (CachePreservingGipaRootWin extractor)
          (CachePreservingGipaProductWin extractor)
      calc
        _ ≤ Pr[CachePreservingKzgVWin | experiment] +
              Pr[fun output =>
                CachePreservingKzgWWin output ∨
                  (CachePreservingGipaRootWin extractor output ∨
                    CachePreservingGipaProductWin extractor output) |
                experiment] := hv
        _ ≤ Pr[CachePreservingKzgVWin | experiment] +
              (Pr[CachePreservingKzgWWin | experiment] +
                Pr[fun output =>
                  CachePreservingGipaRootWin extractor output ∨
                    CachePreservingGipaProductWin extractor output |
                  experiment]) :=
          add_le_add le_rfl hw
        _ ≤ Pr[CachePreservingKzgVWin | experiment] +
              (Pr[CachePreservingKzgWWin | experiment] +
                (Pr[CachePreservingGipaRootWin extractor | experiment] +
                  Pr[CachePreservingGipaProductWin extractor |
                    experiment])) :=
          add_le_add le_rfl (add_le_add le_rfl hgipa)
        _ = _ := by
          ac_rfl

/-- Standalone KZG and GIPA security bounds all four cache-preserving
randomizer-good extraction events.

`binding` is the deployed-setup invariant for every supported adaptive
selection. `acceptedReplayQueryBound` covers the complete accepted replay,
including all queries made before statement selection. -/
theorem
    randomizerGoodCachePreservingCryptoExtractionWin_le_security
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ replayQueries : Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (parameters : Bls12377KzgParameters μ)
    (complexity : AcceptedReplayBls12377PolynomialTimeModel μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (kzgSecurity :
      AcceptedReplayBls12377KzgSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (gipaSecurity :
      AcceptedReplayBls12377GipaSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (kzgPolynomialTime :
      AcceptedReplayKzgConstructorPolynomialTime
        complexity game queryBounds classifiers)
    (gipaPolynomialTime :
      AcceptedReplayGipaConstructorPolynomialTime
        complexity game queryBounds)
    (acceptedReplayQueryBound :
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ) replayQueries)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters) :
    let extractor :=
      securitySelectedAdaptiveGipaExtractor
        gipaSecurity game queryBounds parameters
    Pr[CachePreservingCryptoExtractionWin extractor |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor] ≤
      acceptedReplayAdaptiveCryptoError
        kzgSecurity gipaSecurity replayQueries := by
  dsimp only
  let standaloneExtractor :=
    gipaSecurity.extractorForAcceptedReplay game queryBounds
  let extractor :=
    securitySelectedAdaptiveGipaExtractor
      gipaSecurity game queryBounds parameters
  let experiment :=
    randomizerGoodCachePreservingS1ExperimentAt
      game invalid queryBounds μ extractor
  have hkzgV :
      Pr[CachePreservingKzgVWin | experiment] ≤
        kzgSecurity.epsilonV 0 replayQueries := by
    apply
      (randomizerGoodCachePreservingKzgVWin_le_fixedAcceptedReplayKzgVWin
        game invalid queryBounds μ extractor parameters classifiers
        binding).trans
    exact kzgSecurity.v_gameWin_le
      (acceptedReplayKzgVAdversary
        game queryBounds μ classifiers)
      0 replayQueries
      kzgPolynomialTime.v_adversary_polyTime
      (fixedAcceptedReplayBls12377Setup_isTotalQueryBound parameters)
      (fun sampled =>
        (acceptedReplayKzgVAdversary_isTotalQueryBound_iff
          game queryBounds μ replayQueries classifiers sampled).2
            acceptedReplayQueryBound)
  have hkzgW :
      Pr[CachePreservingKzgWWin | experiment] ≤
        kzgSecurity.epsilonW 0 replayQueries := by
    apply
      (randomizerGoodCachePreservingKzgWWin_le_fixedAcceptedReplayKzgWWin
        game invalid queryBounds μ extractor parameters classifiers
        binding).trans
    exact kzgSecurity.w_gameWin_le
      (acceptedReplayKzgWAdversary
        game queryBounds μ classifiers)
      0 replayQueries
      kzgPolynomialTime.w_adversary_polyTime
      (fixedAcceptedReplayBls12377Setup_isTotalQueryBound parameters)
      (fun sampled =>
        (acceptedReplayKzgWAdversary_isTotalQueryBound_iff
          game queryBounds μ replayQueries classifiers sampled).2
            acceptedReplayQueryBound)
  have hgipaRoot :
      Pr[CachePreservingGipaRootWin extractor | experiment] ≤
        gipaSecurity.epsilonRoot 0 replayQueries := by
    have htransport :=
      randomizerGoodCachePreservingGipaRootWin_le_fixedAcceptedReplayGipaRootWin
        game invalid queryBounds μ semantics parameters
        standaloneExtractor binding
    have htransport' :
        Pr[CachePreservingGipaRootWin extractor | experiment] ≤
          Pr[AcceptedReplayGipaRootWin |
            acceptedReplayBls12377GipaGame
              (fixedAcceptedReplayBls12377Setup parameters)
              (acceptedReplayGipaAdversary game queryBounds μ)
              standaloneExtractor] := by
      simpa [extractor, standaloneExtractor] using htransport
    have hsecurity :=
      gipaSecurity.root_gameWin_le
        (acceptedReplayGipaAdversary game queryBounds μ)
        0 replayQueries
        gipaPolynomialTime.adversary_polyTime
        (fixedAcceptedReplayBls12377Setup_isTotalQueryBound parameters)
        (fun sampled =>
          (acceptedReplayGipaAdversary_isTotalQueryBound_iff
            game queryBounds μ replayQueries sampled).2
              acceptedReplayQueryBound)
    exact htransport'.trans (by
      simpa [standaloneExtractor,
        AcceptedReplayBls12377GipaSecurity.extractorForAcceptedReplay] using
        hsecurity)
  have hgipaProduct :
      Pr[CachePreservingGipaProductWin extractor | experiment] ≤
        gipaSecurity.epsilonProduct 0 replayQueries := by
    have htransport :=
      randomizerGoodCachePreservingGipaProductWin_le_fixedAcceptedReplayGipaProductWin
        game invalid queryBounds μ semantics parameters
        standaloneExtractor binding
    have htransport' :
        Pr[CachePreservingGipaProductWin extractor | experiment] ≤
          Pr[AcceptedReplayGipaProductWin |
            acceptedReplayBls12377GipaGame
              (fixedAcceptedReplayBls12377Setup parameters)
              (acceptedReplayGipaAdversary game queryBounds μ)
              standaloneExtractor] := by
      simpa [extractor, standaloneExtractor] using htransport
    have hsecurity :=
      gipaSecurity.product_gameWin_le
        (acceptedReplayGipaAdversary game queryBounds μ)
        0 replayQueries
        gipaPolynomialTime.adversary_polyTime
        (fixedAcceptedReplayBls12377Setup_isTotalQueryBound parameters)
        (fun sampled =>
          (acceptedReplayGipaAdversary_isTotalQueryBound_iff
            game queryBounds μ replayQueries sampled).2
              acceptedReplayQueryBound)
    exact htransport'.trans (by
      simpa [standaloneExtractor,
        AcceptedReplayBls12377GipaSecurity.extractorForAcceptedReplay] using
        hsecurity)
  apply
    (cachePreservingCryptoExtraction_probability_le_component_sum
      game invalid queryBounds μ extractor).trans
  exact
    add_le_add
      (add_le_add
        (add_le_add hkzgV hkzgW)
        hgipaRoot)
      hgipaProduct

/-- Quantitative adaptive crypto endpoint for one selected proof size.

The fork transform is left explicit, so its query/fork loss can be composed
later without being reclassified as a KZG or GIPA advantage.  The
randomizer-root error is subtracted exactly once from the complete
adversary-plus-verifier probability before forking. -/
theorem
    invalidAccepted_randomizerAdjustedForkTransform_le_acceptedReplaySecurity
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries replayQueries : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (hbound : IsTotalQueryBound game totalQueries)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    (parameters : Bls12377KzgParameters μ)
    (complexity : AcceptedReplayBls12377PolynomialTimeModel μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (kzgSecurity :
      AcceptedReplayBls12377KzgSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (gipaSecurity :
      AcceptedReplayBls12377GipaSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (kzgPolynomialTime :
      AcceptedReplayKzgConstructorPolynomialTime
        complexity game queryBounds classifiers)
    (gipaPolynomialTime :
      AcceptedReplayGipaConstructorPolynomialTime
        complexity game queryBounds)
    (acceptedReplayQueryBound :
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ) replayQueries)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters)
    (schedule :
      RandomizerGoodForkScheduleContract
        game invalid queryBounds μ
          (securitySelectedAdaptiveGipaExtractor
            gipaSecurity game queryBounds parameters))
    (hdetermines : ProductionKeyDeterminesStatementAt game μ) :
    ((Ipp.forkTreeStep
        (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
        (Pr[InvalidAcceptedAt invalid μ |
            multiStatementFsProbComp game] -
          adaptiveRandomizerRootError totalQueries μ) ≤
      acceptedReplayAdaptiveCryptoError
        kzgSecurity gipaSecurity replayQueries := by
  let extractor :=
    securitySelectedAdaptiveGipaExtractor
      gipaSecurity game queryBounds parameters
  exact
    (invalidAccepted_randomizerAdjustedForkTransform_le_cryptoExtraction
      game invalid queryBounds materialization μ totalQueries
      origin queryOrigin extractor hbound schedule hdetermines
      semantics invalidity).trans
      (randomizerGoodCachePreservingCryptoExtractionWin_le_security
        game invalid queryBounds μ replayQueries semantics parameters
        complexity classifiers kzgSecurity gipaSecurity
        kzgPolynomialTime gipaPolynomialTime
        acceptedReplayQueryBound binding)

end

end Ipp.ShippingMultiStatement
