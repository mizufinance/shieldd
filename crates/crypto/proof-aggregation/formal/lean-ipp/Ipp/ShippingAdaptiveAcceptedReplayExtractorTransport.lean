import Ipp.ShippingAdaptiveAcceptedReplayGames
import Ipp.ShippingAdaptiveRoundReachability

/-!
Transport between the source cache-preserving extraction relation and the
setup-first accepted-replay GIPA extractor.

The accepted-replay extractor receives the sampled setup explicitly, while
the source relation expects one statement-indexed extractor.  This module
partially applies one explicit setup value.  Setup binding and accepted-fork
coverage remain premises of the target transport; neither is hidden in the
adapter.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.S1

local instance extractorTransportBasePrimeFact :
    Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance extractorTransportScalarPrimeFact :
    Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance extractorTransportFq2NonresidueFact :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance extractorTransportFq2Fintype : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance extractorTransportGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance extractorTransportWrappedFsUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- Partially apply an accepted-replay extractor to one explicit setup.

The resulting family is exactly the statement-indexed extractor expected by
the source cache-preserving relation.  It is not uniform over a setup sampler:
the setup value remains an explicit argument. -/
def acceptedReplayGipaExtractorAtParameters {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ) :
    AdaptiveGipaExtractor μ :=
  fun statement =>
    { extract := extractor.extract parameters statement }

@[simp] theorem acceptedReplayGipaExtractorAtParameters_extract
    {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (statement : Bls12377ReductionStatement μ)
    (payload : RandomizerPayload ArkPairingOutput) :
    ((acceptedReplayGipaExtractorAtParameters
        parameters extractor) statement).extract payload =
      extractor.extract parameters statement payload := by
  rfl

/-- The accepted-replay attempt represented by one source common fork. -/
def acceptedReplayGipaAttemptOfCommonFork
    {Call : Type} {μ : Nat}
    (fork : CachePreservingCommonFork Call μ) :
    AcceptedReplayGipaAttempt μ where
  statement := fork.statement
  tree := fork.projected

/-- The accepted-only raw projection and the source common-statement
projection produce the same proof-free attempt. -/
theorem acceptedReplayGipaAttemptOfRaw?_eq_commonFork
    {Call : Type} {μ : Nat}
    (statement : Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call μ)
    (hcarries : ForkCarriesFormalStatement statement tree) :
    acceptedReplayGipaAttemptOfRaw? μ (some tree) =
      some
        (acceptedReplayGipaAttemptOfCommonFork
          ({
            rawTree := tree
            statement := statement
            carries := hcarries
          } : CachePreservingCommonFork Call μ)) := by
  rw [acceptedReplayGipaAttemptOfRaw?]
  rw [projectAcceptedRawForkAt?_eq_projectCommonStatementTree
    statement tree hcarries]
  rfl

/-- Materialize the accepted-replay witness on the exact source projection. -/
def acceptedReplayGipaChallengeOfCommonFork
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ) :
    AcceptedReplayGipaChallenge μ where
  statement := fork.statement
  tree := fork.projected
  witness :=
    extractor.extract parameters fork.statement
      (proofRandomizerPayload fork.projected.root.1.proof)

/-- The generic accepted-replay post-processor materializes exactly the
challenge defined on the source common fork. -/
@[simp] theorem acceptedReplayGipaChallengeOfAttempt_commonFork
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ) :
    acceptedReplayGipaChallengeOfAttempt parameters extractor
        (some (acceptedReplayGipaAttemptOfCommonFork fork)) =
      some
        (acceptedReplayGipaChallengeOfCommonFork
          parameters extractor fork) := by
  rfl

/-- Consequently the accepted-replay post-processor applied to a carried raw
tree produces the exact source common-fork challenge. -/
theorem acceptedReplayGipaChallengeOfRaw_eq_commonFork
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (statement : Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call μ)
    (hcarries : ForkCarriesFormalStatement statement tree) :
    acceptedReplayGipaChallengeOfAttempt parameters extractor
        (acceptedReplayGipaAttemptOfRaw? μ (some tree)) =
      some
        (acceptedReplayGipaChallengeOfCommonFork
          parameters extractor
          ({
            rawTree := tree
            statement := statement
            carries := hcarries
          } : CachePreservingCommonFork Call μ)) := by
  rw [acceptedReplayGipaAttemptOfRaw?_eq_commonFork
    statement tree hcarries]
  exact
    acceptedReplayGipaChallengeOfAttempt_commonFork
      parameters extractor _

/-- Exact root-opening predicate transport before setup binding and
accepted-fork coverage are added. -/
theorem cachePreservingGipaRootWin_iff_acceptedReplayChallenge
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ) :
    CachePreservingGipaRootWin
        (acceptedReplayGipaExtractorAtParameters
          parameters extractor)
        (some fork) ↔
      Bls12377GipaRootOpeningGameWin fork.statement
        (some
          (acceptedReplayGipaChallengeOfCommonFork
            parameters extractor fork).toExisting) := by
  simpa [CachePreservingGipaRootWin,
      acceptedReplayGipaExtractorAtParameters,
      acceptedReplayGipaChallengeOfCommonFork,
      Ipp.S1.bls12377GipaChallengeOfOutput] using
    (Ipp.S1.gipaRootOpeningGameWin_iff_explicitChallenge
      fork.statement
      ((acceptedReplayGipaExtractorAtParameters
        parameters extractor) fork.statement)
      (some fork.projected))

/-- Exact product-lane predicate transport on the same source projection. -/
theorem cachePreservingGipaProductWin_iff_acceptedReplayChallenge
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ) :
    CachePreservingGipaProductWin
        (acceptedReplayGipaExtractorAtParameters
          parameters extractor)
        (some fork) ↔
      Bls12377GipaProductLaneGameWin fork.statement
        (some
          (acceptedReplayGipaChallengeOfCommonFork
            parameters extractor fork).toExisting) := by
  simpa [CachePreservingGipaProductWin,
      acceptedReplayGipaExtractorAtParameters,
      acceptedReplayGipaChallengeOfCommonFork,
      Ipp.S1.bls12377GipaChallengeOfOutput] using
    (Ipp.S1.gipaProductLaneGameWin_iff_explicitChallenge
      fork.statement
      ((acceptedReplayGipaExtractorAtParameters
        parameters extractor) fork.statement)
      (some fork.projected))

/-- A source root-opening win becomes the setup-first accepted-replay target
once the separately proved setup binding and accepted-fork facts are supplied. -/
theorem cachePreservingGipaRootWin_implies_acceptedReplayGipaRootWin
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ)
    (hbinding :
      AcceptedReplayBls12377StatementBinding
        fork.statement parameters)
    (haccepts :
      Bls12377GipaForkAccepts
        fork.statement fork.projected)
    (hsource :
      CachePreservingGipaRootWin
        (acceptedReplayGipaExtractorAtParameters
          parameters extractor)
        (some fork)) :
    AcceptedReplayGipaRootWin
      (parameters,
        some
          (acceptedReplayGipaChallengeOfCommonFork
            parameters extractor fork)) := by
  apply
    (acceptedReplayGipaRootWin_iff
      parameters
      (acceptedReplayGipaChallengeOfCommonFork
        parameters extractor fork)).2
  exact
    ⟨hbinding, haccepts,
      (cachePreservingGipaRootWin_iff_acceptedReplayChallenge
        parameters extractor fork).1 hsource⟩

/-- Product-lane counterpart of the source-to-accepted-replay transport. -/
theorem cachePreservingGipaProductWin_implies_acceptedReplayGipaProductWin
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ)
    (hbinding :
      AcceptedReplayBls12377StatementBinding
        fork.statement parameters)
    (haccepts :
      Bls12377GipaForkAccepts
        fork.statement fork.projected)
    (hsource :
      CachePreservingGipaProductWin
        (acceptedReplayGipaExtractorAtParameters
          parameters extractor)
        (some fork)) :
    AcceptedReplayGipaProductWin
      (parameters,
        some
          (acceptedReplayGipaChallengeOfCommonFork
            parameters extractor fork)) := by
  apply
    (acceptedReplayGipaProductWin_iff
      parameters
      (acceptedReplayGipaChallengeOfCommonFork
        parameters extractor fork)).2
  exact
    ⟨hbinding, haccepts,
      (cachePreservingGipaProductWin_iff_acceptedReplayChallenge
        parameters extractor fork).1 hsource⟩

/-- A common fork retained by the accepted-only replay satisfies the complete
GIPA accepted-fork predicate.  Round reachability and preservation of the
original shared-oracle support are derived internally. -/
theorem cachePreservingCommonFork_gipaForkAccepts_of_acceptedReplay_support
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (fork : CachePreservingCommonFork Call μ)
    (htree : some fork.rawTree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ)) :
    Bls12377GipaForkAccepts fork.statement fork.projected := by
  simpa [CachePreservingCommonFork.projected] using
    (projectCommonStatementTree_gipaForkAccepts_of_selectedAccepted
      game semantics fork.statement fork.rawTree fork.carries
      (acceptedMultiStatementForkExperimentAt_support_all_source
        game queryBounds μ
        (multiStatementRoundSlots_reachable game queryBounds μ)
        htree)
      (acceptedMultiStatementForkExperimentAt_support_all_selectedAccepted
        game queryBounds μ
        (multiStatementRoundSlots_reachable game queryBounds μ)
        htree))

/-- A root-opening source win on a supported accepted-only replay supplies
its full accepted-fork premise internally.  Beyond the exact accepted-verifier
semantics contract, the only remaining environmental premise is the
challenger-side binding to the sampled setup. -/
theorem
    cachePreservingGipaRootWin_implies_acceptedReplayGipaRootWin_of_supported
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ)
    (htree : some fork.rawTree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ))
    (hbinding :
      AcceptedReplayBls12377StatementBinding
        fork.statement parameters)
    (hsource :
      CachePreservingGipaRootWin
        (acceptedReplayGipaExtractorAtParameters
          parameters extractor)
        (some fork)) :
    AcceptedReplayGipaRootWin
      (parameters,
        some
          (acceptedReplayGipaChallengeOfCommonFork
            parameters extractor fork)) := by
  apply
    cachePreservingGipaRootWin_implies_acceptedReplayGipaRootWin
      parameters extractor fork hbinding
  · exact
      cachePreservingCommonFork_gipaForkAccepts_of_acceptedReplay_support
        game queryBounds semantics fork htree
  · exact hsource

/-- Product-lane counterpart: supported accepted replay supplies full
`FsAccepts` coverage at every fork leaf without any caller-provided
operational premise. -/
theorem
    cachePreservingGipaProductWin_implies_acceptedReplayGipaProductWin_of_supported
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (fork : CachePreservingCommonFork Call μ)
    (htree : some fork.rawTree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ))
    (hbinding :
      AcceptedReplayBls12377StatementBinding
        fork.statement parameters)
    (hsource :
      CachePreservingGipaProductWin
        (acceptedReplayGipaExtractorAtParameters
          parameters extractor)
        (some fork)) :
    AcceptedReplayGipaProductWin
      (parameters,
        some
          (acceptedReplayGipaChallengeOfCommonFork
            parameters extractor fork)) := by
  apply
    cachePreservingGipaProductWin_implies_acceptedReplayGipaProductWin
      parameters extractor fork hbinding
  · exact
      cachePreservingCommonFork_gipaForkAccepts_of_acceptedReplay_support
        game queryBounds semantics fork htree
  · exact hsource

/-- Adapt the extractor selected by standalone GIPA security for the concrete
accepted-replay adversary to the source relation at one explicit setup. -/
def securitySelectedAdaptiveGipaExtractor
    {Call : Type} {μ : Nat}
    {setup : AcceptedReplayBls12377SetupSampler μ}
    {complexity : AcceptedReplayBls12377PolynomialTimeModel μ}
    (security :
      AcceptedReplayBls12377GipaSecurity setup complexity)
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ) :
    AdaptiveGipaExtractor μ :=
  acceptedReplayGipaExtractorAtParameters parameters
    (security.extractorForAcceptedReplay game queryBounds)

@[simp] theorem securitySelectedAdaptiveGipaExtractor_extract
    {Call : Type} {μ : Nat}
    {setup : AcceptedReplayBls12377SetupSampler μ}
    {complexity : AcceptedReplayBls12377PolynomialTimeModel μ}
    (security :
      AcceptedReplayBls12377GipaSecurity setup complexity)
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (parameters : Bls12377KzgParameters μ)
    (statement : Bls12377ReductionStatement μ)
    (payload : RandomizerPayload ArkPairingOutput) :
    ((securitySelectedAdaptiveGipaExtractor
        security game queryBounds parameters) statement).extract payload =
      (security.extractorForAcceptedReplay
        game queryBounds).extract parameters statement payload := by
  rfl

end

end Ipp.ShippingMultiStatement
