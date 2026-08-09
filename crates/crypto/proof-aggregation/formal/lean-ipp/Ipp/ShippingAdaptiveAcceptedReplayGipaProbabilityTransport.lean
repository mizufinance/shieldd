import Ipp.ShippingAdaptiveAcceptedReplayDominance
import Ipp.ShippingAdaptiveAcceptedReplayExtractorTransport

/-!
Probability transport from the randomizer-good cache-preserving GIPA events
to the setup-first accepted-replay games.

The deployed setup remains an explicit query-free sampler.  Statement/setup
binding is required pointwise on supported accepted replays; no desired
security inequality is assumed by the transport.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.S1
open Ipp.Extracted.AppVerifierStateMachine

local instance acceptedReplayGipaProbabilityBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance acceptedReplayGipaProbabilityScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance acceptedReplayGipaProbabilityFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance acceptedReplayGipaProbabilityFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance acceptedReplayGipaProbabilityGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance acceptedReplayGipaProbabilityWrappedFsUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- A successful deterministic common-fork projection retains the exact raw
tree from which it was constructed. -/
theorem cachePreservingCommonFork?_eq_some_rawTree
    {Call : Type} {μ : Nat}
    (raw : RawMultiStatementForkTree Call μ)
    (fork : CachePreservingCommonFork Call μ)
    (hproject :
      cachePreservingCommonFork? (some raw) = some fork) :
    fork.rawTree = raw := by
  classical
  simp only [cachePreservingCommonFork?] at hproject
  by_cases hexists :
      ∃ statement : Ipp.S1.Bls12377ReductionStatement μ,
        ForkCarriesFormalStatement statement raw
  · rw [dif_pos hexists] at hproject
    have hfork := Option.some.inj hproject
    simpa using
      (congrArg CachePreservingCommonFork.rawTree hfork).symm
  · rw [dif_neg hexists] at hproject
    cases hproject

/-- With the deployed query-free setup, the setup-first accepted-replay GIPA
game is exactly a pure post-processing map of the accepted raw replay. -/
theorem fixedAcceptedReplayBls12377GipaGame_eq_map
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ) :
    acceptedReplayBls12377GipaGame
        (fixedAcceptedReplayBls12377Setup parameters)
        (acceptedReplayGipaAdversary game queryBounds μ)
        extractor =
      (fun raw =>
        (parameters,
          acceptedReplayGipaChallengeOfAttempt parameters extractor
            (acceptedReplayGipaAttemptOfRaw? μ raw))) <$>
        acceptedMultiStatementForkExperimentAt
          game queryBounds μ := by
  simp [acceptedReplayBls12377GipaGame,
    fixedAcceptedReplayBls12377Setup,
    acceptedReplayGipaAdversary,
    Functor.map_map, Function.comp_def]

/-- Gate weakening followed by the same deterministic common-fork projection
preserves every successful source fork with its complete replay cache. -/
private theorem
    randomizerGoodCachePreserving_refines_acceptedReplay
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    Ipp.OracleOptionSuccessRefines
      (randomizerGoodCachePreservingS1ExperimentAt
        game invalid queryBounds μ extractor)
      (cachePreservingCommonFork? <$>
        acceptedMultiStatementForkExperimentAt
          game queryBounds μ) := by
  letI : DecidablePred
      (InvalidAcceptedRandomizerGoodAt invalid μ extractor) :=
    Classical.decPred _
  letI : DecidablePred (SelectedAcceptedAt (Call := CallId) μ) :=
    Classical.decPred _
  have hraw :=
    Ipp.forkTreeCombined_gateReplayRefines
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
      μ (Nat.le_refl μ)
  have hmapped :=
    hraw.mapOptionGate cachePreservingCommonFork? (by rfl)
  simpa [randomizerGoodMultiStatementForkExperimentAt,
    randomizerGoodCachePreservingS1ExperimentAt,
    acceptedMultiStatementForkExperimentAt] using hmapped

/-- The cache-preserving root-opening event from the stronger randomizer-good
fork is bounded by the actual setup-first accepted-replay root game.

`binding` is the exact deployed-setup invariant checked by the challenger for
every supported selected statement. -/
theorem
    randomizerGoodCachePreservingGipaRootWin_le_fixedAcceptedReplayGipaRootWin
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters) :
    Pr[CachePreservingGipaRootWin
          (acceptedReplayGipaExtractorAtParameters
            parameters extractor) |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ
          (acceptedReplayGipaExtractorAtParameters
            parameters extractor)] ≤
      Pr[AcceptedReplayGipaRootWin |
        acceptedReplayBls12377GipaGame
          (fixedAcceptedReplayBls12377Setup parameters)
          (acceptedReplayGipaAdversary game queryBounds μ)
          extractor] := by
  let adaptive :=
    acceptedReplayGipaExtractorAtParameters parameters extractor
  let acceptedCommon :=
    cachePreservingCommonFork? <$>
      acceptedMultiStatementForkExperimentAt game queryBounds μ
  have hrefines :=
    randomizerGoodCachePreserving_refines_acceptedReplay
      game invalid queryBounds μ adaptive
  have hdom :
      Ipp.OracleOptionSuccessDom
        (randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ adaptive)
        acceptedCommon :=
    fun fork => hrefines.probOutput_le fork
  have hstrongToWeak :
      Pr[CachePreservingGipaRootWin adaptive |
          randomizerGoodCachePreservingS1ExperimentAt
            game invalid queryBounds μ adaptive] ≤
        Pr[CachePreservingGipaRootWin adaptive |
          acceptedCommon] := by
    have hevent :
        (CachePreservingGipaRootWin adaptive :
          Option (CachePreservingCommonFork CallId μ) → Prop) =
          Ipp.optionSatisfies
            (fun fork => CachePreservingGipaRootWin adaptive (some fork)) := by
      funext output
      cases output <;> rfl
    rw [hevent]
    exact
      (Ipp.probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
        hdom
        (fun fork =>
          CachePreservingGipaRootWin adaptive (some fork)))
  change
    Pr[CachePreservingGipaRootWin adaptive |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ adaptive] ≤ _
  apply hstrongToWeak.trans
  change
    Pr[CachePreservingGipaRootWin adaptive |
        cachePreservingCommonFork? <$>
          acceptedMultiStatementForkExperimentAt
            game queryBounds μ] ≤ _
  rw [probEvent_map]
  rw [fixedAcceptedReplayBls12377GipaGame_eq_map, probEvent_map]
  apply probEvent_mono
  intro rawOutput hsupport hsource
  cases rawOutput with
  | none =>
      simp [Function.comp_apply, cachePreservingCommonFork?,
        CachePreservingGipaRootWin] at hsource
  | some raw =>
      cases hfork :
          cachePreservingCommonFork? (some raw) with
      | none =>
          simp [Function.comp_apply, hfork,
            CachePreservingGipaRootWin] at hsource
      | some fork =>
          have hraw :
              fork.rawTree = raw :=
            cachePreservingCommonFork?_eq_some_rawTree
              raw fork hfork
          subst raw
          have hsource' :
              CachePreservingGipaRootWin adaptive (some fork) := by
            simpa [Function.comp_apply, hfork] using hsource
          have hwin :=
            cachePreservingGipaRootWin_implies_acceptedReplayGipaRootWin_of_supported
              game queryBounds semantics parameters extractor fork
              hsupport (binding fork hsupport) hsource'
          have hchallenge :=
            acceptedReplayGipaChallengeOfRaw_eq_commonFork
              parameters extractor fork.statement fork.rawTree
              fork.carries
          simpa [Function.comp_apply, hchallenge] using hwin

/-- Product-lane counterpart of the fixed-setup probability transport. -/
theorem
    randomizerGoodCachePreservingGipaProductWin_le_fixedAcceptedReplayGipaProductWin
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters) :
    Pr[CachePreservingGipaProductWin
          (acceptedReplayGipaExtractorAtParameters
            parameters extractor) |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ
          (acceptedReplayGipaExtractorAtParameters
            parameters extractor)] ≤
      Pr[AcceptedReplayGipaProductWin |
        acceptedReplayBls12377GipaGame
          (fixedAcceptedReplayBls12377Setup parameters)
          (acceptedReplayGipaAdversary game queryBounds μ)
          extractor] := by
  let adaptive :=
    acceptedReplayGipaExtractorAtParameters parameters extractor
  let acceptedCommon :=
    cachePreservingCommonFork? <$>
      acceptedMultiStatementForkExperimentAt game queryBounds μ
  have hrefines :=
    randomizerGoodCachePreserving_refines_acceptedReplay
      game invalid queryBounds μ adaptive
  have hdom :
      Ipp.OracleOptionSuccessDom
        (randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ adaptive)
        acceptedCommon :=
    fun fork => hrefines.probOutput_le fork
  have hstrongToWeak :
      Pr[CachePreservingGipaProductWin adaptive |
          randomizerGoodCachePreservingS1ExperimentAt
            game invalid queryBounds μ adaptive] ≤
        Pr[CachePreservingGipaProductWin adaptive |
          acceptedCommon] := by
    have hevent :
        (CachePreservingGipaProductWin adaptive :
          Option (CachePreservingCommonFork CallId μ) → Prop) =
          Ipp.optionSatisfies
            (fun fork => CachePreservingGipaProductWin adaptive (some fork)) := by
      funext output
      cases output <;> rfl
    rw [hevent]
    exact
      (Ipp.probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
        hdom
        (fun fork =>
          CachePreservingGipaProductWin adaptive (some fork)))
  change
    Pr[CachePreservingGipaProductWin adaptive |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ adaptive] ≤ _
  apply hstrongToWeak.trans
  change
    Pr[CachePreservingGipaProductWin adaptive |
        cachePreservingCommonFork? <$>
          acceptedMultiStatementForkExperimentAt
            game queryBounds μ] ≤ _
  rw [probEvent_map]
  rw [fixedAcceptedReplayBls12377GipaGame_eq_map, probEvent_map]
  apply probEvent_mono
  intro rawOutput hsupport hsource
  cases rawOutput with
  | none =>
      simp [Function.comp_apply, cachePreservingCommonFork?,
        CachePreservingGipaProductWin] at hsource
  | some raw =>
      cases hfork :
          cachePreservingCommonFork? (some raw) with
      | none =>
          simp [Function.comp_apply, hfork,
            CachePreservingGipaProductWin] at hsource
      | some fork =>
          have hraw :
              fork.rawTree = raw :=
            cachePreservingCommonFork?_eq_some_rawTree
              raw fork hfork
          subst raw
          have hsource' :
              CachePreservingGipaProductWin adaptive (some fork) := by
            simpa [Function.comp_apply, hfork] using hsource
          have hwin :=
            cachePreservingGipaProductWin_implies_acceptedReplayGipaProductWin_of_supported
              game queryBounds semantics parameters extractor fork
              hsupport (binding fork hsupport) hsource'
          have hchallenge :=
            acceptedReplayGipaChallengeOfRaw_eq_commonFork
              parameters extractor fork.statement fork.rawTree
              fork.carries
          simpa [Function.comp_apply, hchallenge] using hwin

end

end Ipp.ShippingMultiStatement
