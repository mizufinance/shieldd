import Ipp.ShippingAdaptiveOriginSha
import Ipp.ShippingBundleAdaptiveSecurityComposition

/-!
Composes deployed SHA-256 and Blake2b losses with the ideal-byte adaptive
bundle theorem.

Every loss is subtracted before the nonlinear fork transform.  The theorem
does not identify an abstract experiment with production; that remaining
program equation stays an explicit construction obligation.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingBundleDeployedAdaptiveSecurityComposition

noncomputable section

open Ipp.Bls12377
open Ipp.S1
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveOriginSha
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingBundleAdaptiveSecurityComposition
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleGlobalFsComposition
open Ipp.ShippingBundleCachedComposition
open Ipp.ShippingBundleIdealComposition
open Ipp.ShippingHashGame
open Ipp.ShippingMultiStatement
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleProgramConstruction
open Ipp.Extracted.ShippingProductionKeyFunctionality

local instance bundleDeployedSecurityBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance bundleDeployedSecurityScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance bundleDeployedSecurityFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance bundleDeployedSecurityFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance bundleDeployedSecurityGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance bundleDeployedSecurityFsWrappedUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- Real acceptance outside the SHA-256 collision event for production values
that retain universe-polymorphic source data. -/
def OriginGoodReal {Real : Type 1}
    (realEvent shaBad : Real → Prop) : Real → Prop :=
  fun output => realEvent output ∧ ¬shaBad output

/-- Blake2b replacement contract for the universe-polymorphic production
experiment, interpreted through its exact `SPMF` semantics. -/
structure OriginBlake2bRomSecurity
    {Real : Type 1} {Ideal : Type}
    (realExperiment : OriginProbComp Real)
    (realEvent shaBad : Real → Prop)
    (idealExperiment : ProbComp Ideal)
    (idealEvent : Ideal → Prop) where
  epsilon : ℝ≥0∞
  good_real_le_ideal_add :
    Pr[OriginGoodReal realEvent shaBad | evalOriginSPMF realExperiment] ≤
      Pr[idealEvent | idealExperiment] + epsilon

/-- Per-size deployed adaptive security endpoint.

The SHA-256 collision advantage and Blake2b replacement advantage are charged
once, followed by modular-reduction distance and the randomizer-root error.
All four losses remain visible before the iterated fork transform. -/
theorem
    realBundleInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity
    [SampleableType DigestBytes]
    {Request : Type 1}
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary : OriginGlobalComp Request}
    {materialize :
      Request →
        OriginGlobalComp
          (MaterializedAliasCall sha256 blake2b)}
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
    (realInvalidAcceptedAt :
      MaterializedAliasRun sha256 blake2b → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (statementMaterialization : OutputDerivedStatementMaterialization)
    (μ totalQueries replayQueries : Nat)
    (shaSecurity :
      MaterializedAliasCollisionSecurity
        sha256 blake2b adversary materialize Q_sha)
    (rom :
      OriginBlake2bRomSecurity
        (deployedMaterializedAliasExperiment
          (Request := Request) sha256 blake2b adversary materialize)
        realInvalidAcceptedAt MaterializedAliasShaCollision
        (BundleByteOriginReindexing.idealByteExperiment
          sha256 rawProgram)
        (IdealByteInvalidAcceptedAt invalid μ))
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
        some fork.rawTree ∈ _root_.support
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
        (((Pr[realInvalidAcceptedAt |
              evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  (Request := Request) sha256 blake2b adversary materialize)] -
            (shaSecurity.epsilonSha256 + rom.epsilon)) -
          Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
          adaptiveRandomizerRootError totalQueries μ) ≤
      acceptedReplayAdaptiveCryptoError
        kzgSecurity gipaSecurity replayQueries := by
  have realToIdeal :
      Pr[realInvalidAcceptedAt |
          evalOriginSPMF
            (deployedMaterializedAliasExperiment
              (Request := Request) sha256 blake2b adversary materialize)] ≤
        Pr[IdealByteInvalidAcceptedAt invalid μ |
            BundleByteOriginReindexing.idealByteExperiment
              sha256 rawProgram] +
          shaSecurity.epsilonSha256 + rom.epsilon :=
    calc
      _ ≤
          Pr[OriginGoodReal realInvalidAcceptedAt MaterializedAliasShaCollision |
              evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  (Request := Request) sha256 blake2b adversary materialize)] +
            Pr[MaterializedAliasShaCollision |
              evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  (Request := Request) sha256 blake2b adversary materialize)] := by
        calc
          _ ≤ Pr[fun output =>
                OriginGoodReal realInvalidAcceptedAt
                    MaterializedAliasShaCollision output ∨
                  MaterializedAliasShaCollision output |
              evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  (Request := Request) sha256 blake2b adversary materialize)] := by
            apply probEvent_mono
            intro output _ hreal
            by_cases hbad : MaterializedAliasShaCollision output
            · exact Or.inr hbad
            · exact Or.inl ⟨hreal, hbad⟩
          _ ≤ _ :=
            probEvent_or_le
              (evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  (Request := Request) sha256 blake2b adversary materialize))
              (OriginGoodReal realInvalidAcceptedAt
                MaterializedAliasShaCollision)
              MaterializedAliasShaCollision
      _ ≤
          (Pr[IdealByteInvalidAcceptedAt invalid μ |
                BundleByteOriginReindexing.idealByteExperiment
                  sha256 rawProgram] + rom.epsilon) +
            shaSecurity.epsilonSha256 :=
        add_le_add rom.good_real_le_ideal_add shaSecurity.collision_le
      _ = _ := by ac_rfl
  have afterHashes :
      Pr[realInvalidAcceptedAt |
          evalOriginSPMF
            (deployedMaterializedAliasExperiment
              (Request := Request) sha256 blake2b adversary materialize)] -
          (shaSecurity.epsilonSha256 + rom.epsilon) ≤
        Pr[IdealByteInvalidAcceptedAt invalid μ |
            BundleByteOriginReindexing.idealByteExperiment
              sha256 rawProgram] :=
    (tsub_le_iff_right).2 (by
      simpa [add_assoc] using realToIdeal)
  have afterModReduction :
      (Pr[realInvalidAcceptedAt |
            evalOriginSPMF
              (deployedMaterializedAliasExperiment
                (Request := Request) sha256 blake2b adversary materialize)] -
          (shaSecurity.epsilonSha256 + rom.epsilon)) -
            Ipp.ShippingScalarReduction.modReductionBudget Q_fs ≤
        Pr[IdealByteInvalidAcceptedAt invalid μ |
            BundleByteOriginReindexing.idealByteExperiment
              sha256 rawProgram] -
          Ipp.ShippingScalarReduction.modReductionBudget Q_fs :=
    tsub_le_tsub_right afterHashes _
  have afterRandomizer :
      ((Pr[realInvalidAcceptedAt |
              evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  (Request := Request) sha256 blake2b adversary materialize)] -
            (shaSecurity.epsilonSha256 + rom.epsilon)) -
          Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
            adaptiveRandomizerRootError totalQueries μ ≤
        (Pr[IdealByteInvalidAcceptedAt invalid μ |
              BundleByteOriginReindexing.idealByteExperiment
                sha256 rawProgram] -
            Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
          adaptiveRandomizerRootError totalQueries μ :=
    tsub_le_tsub_right afterModReduction _
  have transformed :
      ((Ipp.forkTreeStep
          (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
          (((Pr[realInvalidAcceptedAt |
                evalOriginSPMF
                  (deployedMaterializedAliasExperiment
                    (Request := Request) sha256 blake2b adversary materialize)] -
              (shaSecurity.epsilonSha256 + rom.epsilon)) -
            Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
            adaptiveRandomizerRootError totalQueries μ) ≤
        ((Ipp.forkTreeStep
          (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
          ((Pr[IdealByteInvalidAcceptedAt invalid μ |
                BundleByteOriginReindexing.idealByteExperiment
                  sha256 rawProgram] -
              Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
            adaptiveRandomizerRootError totalQueries μ) :=
    (Ipp.forkTreeStep_monotone
      (queryBounds (Sum.inr ()) + 1) scalarModulus).iterate
        μ afterRandomizer
  exact transformed.trans
    (idealByteInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity
      equations queryBounds statementMaterialization μ totalQueries
      replayQueries queryOrigin hbound semantics invalidity parameters
      complexity classifiers kzgSecurity gipaSecurity
      kzgPolynomialTime gipaPolynomialTime acceptedReplayQueryBound
      binding schedule)

end

end Ipp.ShippingBundleDeployedAdaptiveSecurityComposition
