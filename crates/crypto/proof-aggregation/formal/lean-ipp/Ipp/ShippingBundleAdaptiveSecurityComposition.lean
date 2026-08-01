import Ipp.Extracted.ShippingBundleProgramConstruction
import Ipp.ShippingAdaptiveAcceptedReplaySecurityComposition
import Ipp.ShippingBundleIdealComposition

/-!
Per-size adaptive security composition for an ideal-byte shipping bundle.

The coherent ideal-byte cache covers adversarial prequeries and every bundle
call.  Modular-reduction distance is subtracted before the nonlinear fork
transform, followed by the independently proved randomizer-root subtraction.
Deployed SHA-256 and Blake2b replacement remain separate upstream hops.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingBundleAdaptiveSecurityComposition

noncomputable section

open Ipp.Bls12377
open Ipp.S1
open Ipp.ShippingMultiStatement
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleGlobalFsComposition
open Ipp.ShippingBundleCachedComposition
open Ipp.ShippingBundleIdealComposition
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleAdaptiveComposition
open Ipp.Extracted.ShippingBundleProgramConstruction
open Ipp.Extracted.ShippingProductionKeyFunctionality

local instance bundleAdaptiveSecurityBasePrime :
    Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance bundleAdaptiveSecurityScalarPrime :
    Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance bundleAdaptiveSecurityFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance bundleAdaptiveSecurityFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance bundleAdaptiveSecurityGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance bundleAdaptiveSecurityFsWrappedUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- Output-level form of one selected-size invalid-acceptance event, before
the wrapped random-function trace is attached. -/
def IdealByteInvalidAcceptedAt
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (μ : Nat) :
    PackedOutcome Call → Prop :=
  fun output =>
    SelectedMu μ output ∧ InvalidAccepted invalid output

/-- Canonical cached field game constructed from the exact production bundle
equations. -/
noncomputable def projectedBundleFsGame
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    OracleComp GlobalFsSourceSpec (PackedOutcome CallId) :=
  projectedLeastInvalidBundleFsGame
    equations.preselection invalid
      (rejectedPackedOutcome fallbackSelection)

/-- Per-size ideal-byte adaptive security endpoint.

`Q_fs` is charged exactly once as modular-reduction distance. `totalQueries`
is the original adversary-plus-verifier field-query budget used by the
randomizer bad event, while `replayQueries` is the separate accepted-replay
security-game budget. The fork transform remains explicit.

This theorem starts after replacing deployed Blake2b by the ideal byte
oracle. It neither assumes nor suppresses the separate Blake2b-ROM and
adaptive SHA-256 advantages, and it makes no numerical security claim. -/
theorem
    idealByteInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (ν : Nat) → SelectionAt CallId ν → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries replayQueries : Nat)
    (queryOrigin :
      GlobalAcceptedRandomizerQueryOriginAt
        (projectedBundleFsGame equations) μ)
    (hbound :
      IsTotalQueryBound
        (projectedBundleFsGame equations) totalQueries)
    (semantics :
      GlobalAcceptedVerifierSemantics
        (projectedBundleFsGame equations))
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
        complexity (projectedBundleFsGame equations)
          queryBounds classifiers)
    (gipaPolynomialTime :
      AcceptedReplayGipaConstructorPolynomialTime
        complexity (projectedBundleFsGame equations)
          queryBounds)
    (acceptedReplayQueryBound :
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          (projectedBundleFsGame equations)
            queryBounds μ)
        replayQueries)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId μ,
        some fork.rawTree ∈ support
            (acceptedMultiStatementForkExperimentAt
              (projectedBundleFsGame equations)
                queryBounds μ) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters)
    (schedule :
      RandomizerGoodForkScheduleContract
        (projectedBundleFsGame equations)
          invalid queryBounds μ
            (securitySelectedAdaptiveGipaExtractor
              gipaSecurity (projectedBundleFsGame equations)
                queryBounds parameters)) :
    ((Ipp.forkTreeStep
        (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
        ((Pr[IdealByteInvalidAcceptedAt invalid μ |
              BundleByteOriginReindexing.idealByteExperiment
                sha256 rawProgram] -
            Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
          adaptiveRandomizerRootError totalQueries μ) ≤
      acceptedReplayAdaptiveCryptoError
        kzgSecurity gipaSecurity replayQueries := by
  classical
  have idealToField :
      Pr[IdealByteInvalidAcceptedAt invalid μ |
          BundleByteOriginReindexing.idealByteExperiment
            sha256 rawProgram] ≤
        Pr[InvalidAcceptedAt invalid μ |
          multiStatementFsProbComp
            (projectedBundleFsGame equations)] +
          Ipp.ShippingScalarReduction.modReductionBudget Q_fs := by
    simpa [IdealByteInvalidAcceptedAt, InvalidAcceptedAt,
      projectedBundleFsGame] using
      (Ipp.ShippingBundleIdealComposition.CachedProjectedBundleConstruction.idealByteExperiment_event_le_multiStatementFsProbComp_add_modReduction
            (equations.toCachedProjectedBundleConstruction)
              (IdealByteInvalidAcceptedAt invalid μ))
  have afterModReduction :
      Pr[IdealByteInvalidAcceptedAt invalid μ |
          BundleByteOriginReindexing.idealByteExperiment
            sha256 rawProgram] -
          Ipp.ShippingScalarReduction.modReductionBudget Q_fs ≤
        Pr[InvalidAcceptedAt invalid μ |
          multiStatementFsProbComp
            (projectedBundleFsGame equations)] :=
    (tsub_le_iff_right).2 idealToField
  have afterRandomizer :
      (Pr[IdealByteInvalidAcceptedAt invalid μ |
            BundleByteOriginReindexing.idealByteExperiment
              sha256 rawProgram] -
          Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
            adaptiveRandomizerRootError totalQueries μ ≤
        Pr[InvalidAcceptedAt invalid μ |
            multiStatementFsProbComp
              (projectedBundleFsGame equations)] -
          adaptiveRandomizerRootError totalQueries μ :=
    tsub_le_tsub_right afterModReduction _
  have transformed :
      ((Ipp.forkTreeStep
          (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
          ((Pr[IdealByteInvalidAcceptedAt invalid μ |
                BundleByteOriginReindexing.idealByteExperiment
                  sha256 rawProgram] -
              Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
            adaptiveRandomizerRootError totalQueries μ) ≤
        ((Ipp.forkTreeStep
          (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
          (Pr[InvalidAcceptedAt invalid μ |
              multiStatementFsProbComp
                (projectedBundleFsGame equations)] -
            adaptiveRandomizerRootError totalQueries μ) :=
    (Ipp.forkTreeStep_monotone
      (queryBounds (Sum.inr ()) + 1) scalarModulus).iterate
        μ afterRandomizer
  have origin :
      ProductionReplayOriginAt (projectedBundleFsGame equations) μ := by
    simpa only [projectedBundleFsGame] using
      equations.productionReplayOriginAt μ
  have determines :=
    productionKeyDeterminesStatementAt_of_outputDerived
      materialization μ origin
  exact transformed.trans
    (invalidAccepted_randomizerAdjustedForkTransform_le_acceptedReplaySecurity
      (projectedBundleFsGame equations)
      invalid queryBounds materialization μ totalQueries replayQueries
      origin queryOrigin hbound semantics invalidity parameters
      complexity classifiers kzgSecurity gipaSecurity
      kzgPolynomialTime gipaPolynomialTime
      acceptedReplayQueryBound binding schedule determines)

end

end Ipp.ShippingBundleAdaptiveSecurityComposition
