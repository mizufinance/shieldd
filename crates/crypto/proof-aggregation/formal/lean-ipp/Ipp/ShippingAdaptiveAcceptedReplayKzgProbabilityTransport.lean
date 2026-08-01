import Ipp.ShippingAdaptiveAcceptedReplayDominance
import Ipp.ShippingAdaptiveAcceptedReplayKzgSelectorTransport

/-!
Probability transport from the randomizer-good cache-preserving KZG events
to the setup-first accepted-replay games.

The deployed setup is sampled by the existing query-free sampler.  Its exact
statement binding is required only for supported accepted replays; this
module assumes no probability or security inequality.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.S1
open Ipp.Extracted.AppVerifierStateMachine

local instance acceptedReplayKzgProbabilityBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance acceptedReplayKzgProbabilityScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance acceptedReplayKzgProbabilityFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance acceptedReplayKzgProbabilityFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance acceptedReplayKzgProbabilityGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance acceptedReplayKzgProbabilityWrappedFsUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- A successful deterministic common-fork projection retains the exact
accepted replay, including its cache and selected statement. -/
theorem cachePreservingCommonFork?_eq_some_rawTree_of_kzg
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

/-- With the deployed query-free setup, the V game is exactly a pure map of
the accepted replay and its deterministic selector. -/
theorem fixedAcceptedReplayBls12377KzgVGame_eq_map
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) :
    acceptedReplayBls12377KzgVGame
        (fixedAcceptedReplayBls12377Setup parameters)
        (acceptedReplayKzgVAdversary
          game queryBounds μ classifiers) =
      (fun raw =>
        (parameters,
          acceptedReplayKzgVAttemptOfRaw?
            μ classifiers raw)) <$>
        acceptedMultiStatementForkExperimentAt
          game queryBounds μ := by
  simp [acceptedReplayBls12377KzgVGame,
    fixedAcceptedReplayBls12377Setup,
    acceptedReplayKzgVAdversary,
    Functor.map_map, Function.comp_def]

/-- Query-free deployed-setup normal form for the W game. -/
theorem fixedAcceptedReplayBls12377KzgWGame_eq_map
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) :
    acceptedReplayBls12377KzgWGame
        (fixedAcceptedReplayBls12377Setup parameters)
        (acceptedReplayKzgWAdversary
          game queryBounds μ classifiers) =
      (fun raw =>
        (parameters,
          acceptedReplayKzgWAttemptOfRaw?
            μ classifiers raw)) <$>
        acceptedMultiStatementForkExperimentAt
          game queryBounds μ := by
  simp [acceptedReplayBls12377KzgWGame,
    fixedAcceptedReplayBls12377Setup,
    acceptedReplayKzgWAdversary,
    Functor.map_map, Function.comp_def]

/-- Gate weakening followed by the same common-fork projection preserves
every successful source fork and its complete replay cache. -/
private theorem
    randomizerGoodCachePreservingKzg_refines_acceptedReplay
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

/-- On an accepted replay in support, exact deployed-setup binding transports
a cache-preserving V event to the selector output of the actual V game. -/
theorem
    cachePreservingKzgVWin_implies_fixedAcceptedReplayKzgVWin_of_supported
    {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters)
    (fork : CachePreservingCommonFork CallId μ)
    (hsupport :
      some fork.rawTree ∈ support
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ))
    (hwin : CachePreservingKzgVWin (some fork)) :
    AcceptedReplayKzgVWin
      (parameters,
        acceptedReplayKzgVAttemptOfRaw?
          μ classifiers (some fork.rawTree)) := by
  obtain ⟨forgery, hselect, htarget⟩ :=
    cachePreservingKzgVWin_implies_acceptedReplayKzgVWin
      parameters classifiers fork (binding fork hsupport) hwin
  simpa [hselect] using htarget

/-- Supported-event transport for the W selector and the same replay cache. -/
theorem
    cachePreservingKzgWWin_implies_fixedAcceptedReplayKzgWWin_of_supported
    {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters)
    (fork : CachePreservingCommonFork CallId μ)
    (hsupport :
      some fork.rawTree ∈ support
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ))
    (hwin : CachePreservingKzgWWin (some fork)) :
    AcceptedReplayKzgWWin
      (parameters,
        acceptedReplayKzgWAttemptOfRaw?
          μ classifiers (some fork.rawTree)) := by
  obtain ⟨forgery, hselect, htarget⟩ :=
    cachePreservingKzgWWin_implies_acceptedReplayKzgWWin
      parameters classifiers fork (binding fork hsupport) hwin
  simpa [hselect] using htarget

/-- The stronger randomizer-good V event is bounded by the actual
setup-first accepted-replay V game. -/
theorem
    randomizerGoodCachePreservingKzgVWin_le_fixedAcceptedReplayKzgVWin
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters) :
    Pr[CachePreservingKzgVWin |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor] ≤
      Pr[AcceptedReplayKzgVWin |
        acceptedReplayBls12377KzgVGame
          (fixedAcceptedReplayBls12377Setup parameters)
          (acceptedReplayKzgVAdversary
            game queryBounds μ classifiers)] := by
  let acceptedCommon :=
    cachePreservingCommonFork? <$>
      acceptedMultiStatementForkExperimentAt game queryBounds μ
  have hrefines :=
    randomizerGoodCachePreservingKzg_refines_acceptedReplay
      game invalid queryBounds μ extractor
  have hdom :
      Ipp.OracleOptionSuccessDom
        (randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor)
        acceptedCommon :=
    fun fork => hrefines.probOutput_le fork
  have hstrongToWeak :
      Pr[CachePreservingKzgVWin |
          randomizerGoodCachePreservingS1ExperimentAt
            game invalid queryBounds μ extractor] ≤
        Pr[CachePreservingKzgVWin | acceptedCommon] := by
    have hevent :
        (CachePreservingKzgVWin :
          Option (CachePreservingCommonFork CallId μ) → Prop) =
          Ipp.optionSatisfies
            (fun fork => CachePreservingKzgVWin (some fork)) := by
      funext output
      cases output <;> rfl
    rw [hevent]
    exact
      (Ipp.probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
        hdom
        (fun fork => CachePreservingKzgVWin (some fork)))
  apply hstrongToWeak.trans
  change
    Pr[CachePreservingKzgVWin |
        cachePreservingCommonFork? <$>
          acceptedMultiStatementForkExperimentAt
            game queryBounds μ] ≤ _
  rw [probEvent_map]
  rw [fixedAcceptedReplayBls12377KzgVGame_eq_map, probEvent_map]
  apply probEvent_mono
  intro rawOutput hsupport hsource
  cases rawOutput with
  | none =>
      simp [Function.comp_apply, cachePreservingCommonFork?,
        CachePreservingKzgVWin] at hsource
  | some raw =>
      cases hfork :
          cachePreservingCommonFork? (some raw) with
      | none =>
          simp [Function.comp_apply, hfork,
            CachePreservingKzgVWin] at hsource
      | some fork =>
          have hraw :
              fork.rawTree = raw :=
            cachePreservingCommonFork?_eq_some_rawTree_of_kzg
              raw fork hfork
          subst raw
          have hsource' :
              CachePreservingKzgVWin (some fork) := by
            simpa [Function.comp_apply, hfork] using hsource
          simpa [Function.comp_apply] using
            (cachePreservingKzgVWin_implies_fixedAcceptedReplayKzgVWin_of_supported
              game queryBounds parameters classifiers binding
              fork hsupport hsource')

/-- W-lane counterpart of the fixed-setup probability transport. -/
theorem
    randomizerGoodCachePreservingKzgWWin_le_fixedAcceptedReplayKzgWWin
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              game queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters) :
    Pr[CachePreservingKzgWWin |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor] ≤
      Pr[AcceptedReplayKzgWWin |
        acceptedReplayBls12377KzgWGame
          (fixedAcceptedReplayBls12377Setup parameters)
          (acceptedReplayKzgWAdversary
            game queryBounds μ classifiers)] := by
  let acceptedCommon :=
    cachePreservingCommonFork? <$>
      acceptedMultiStatementForkExperimentAt game queryBounds μ
  have hrefines :=
    randomizerGoodCachePreservingKzg_refines_acceptedReplay
      game invalid queryBounds μ extractor
  have hdom :
      Ipp.OracleOptionSuccessDom
        (randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor)
        acceptedCommon :=
    fun fork => hrefines.probOutput_le fork
  have hstrongToWeak :
      Pr[CachePreservingKzgWWin |
          randomizerGoodCachePreservingS1ExperimentAt
            game invalid queryBounds μ extractor] ≤
        Pr[CachePreservingKzgWWin | acceptedCommon] := by
    have hevent :
        (CachePreservingKzgWWin :
          Option (CachePreservingCommonFork CallId μ) → Prop) =
          Ipp.optionSatisfies
            (fun fork => CachePreservingKzgWWin (some fork)) := by
      funext output
      cases output <;> rfl
    rw [hevent]
    exact
      (Ipp.probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
        hdom
        (fun fork => CachePreservingKzgWWin (some fork)))
  apply hstrongToWeak.trans
  change
    Pr[CachePreservingKzgWWin |
        cachePreservingCommonFork? <$>
          acceptedMultiStatementForkExperimentAt
            game queryBounds μ] ≤ _
  rw [probEvent_map]
  rw [fixedAcceptedReplayBls12377KzgWGame_eq_map, probEvent_map]
  apply probEvent_mono
  intro rawOutput hsupport hsource
  cases rawOutput with
  | none =>
      simp [Function.comp_apply, cachePreservingCommonFork?,
        CachePreservingKzgWWin] at hsource
  | some raw =>
      cases hfork :
          cachePreservingCommonFork? (some raw) with
      | none =>
          simp [Function.comp_apply, hfork,
            CachePreservingKzgWWin] at hsource
      | some fork =>
          have hraw :
              fork.rawTree = raw :=
            cachePreservingCommonFork?_eq_some_rawTree_of_kzg
              raw fork hfork
          subst raw
          have hsource' :
              CachePreservingKzgWWin (some fork) := by
            simpa [Function.comp_apply, hfork] using hsource
          simpa [Function.comp_apply] using
            (cachePreservingKzgWWin_implies_fixedAcceptedReplayKzgWWin_of_supported
              game queryBounds parameters classifiers binding
              fork hsupport hsource')

end

end Ipp.ShippingMultiStatement
