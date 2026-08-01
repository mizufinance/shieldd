import Ipp.ShippingBundleDeployedAdaptiveSecurityComposition

/-!
Production instantiation of the adaptive bundle security composition.

The real event is fixed here: one retained production call accepts an
independently intended invalid ordered prefix under the same authenticated
statement digest.  Outside the explicit SHA-256 collision event, that event
projects to the canonical `InvalidV1Selection` used by the bundle game.

The only program bridge is an equality between the complete materialized
production source, after its canonical output projection, and the raw bundle
program.  Blake2b replacement is stated on that source and transported along
the equality.  Its event-specific ROM inequality is the sole real-to-ideal
premise accepted by the capstone; no arbitrary event or target bound is.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingBundleProductionAdaptiveComposition

noncomputable section

open Ipp.Bls12377
open Ipp.S1
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveOriginSha
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingBundleAdaptiveSecurityComposition
open Ipp.ShippingBundleDeployedAdaptiveSecurityComposition
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleGlobalFsComposition
open Ipp.ShippingBundleCachedComposition
open Ipp.ShippingBundleIdealComposition
open Ipp.ShippingHashGame
open Ipp.ShippingMultiStatement
open Ipp.ShippingRealVerifier
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleProgramConstruction
open Ipp.Extracted.ShippingProductionKeyFunctionality

local instance productionAdaptiveBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance productionAdaptiveScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance productionAdaptiveFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance productionAdaptiveFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance productionAdaptiveGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance productionAdaptiveWrappedFsUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

namespace ProductionRunProjection

/-- Canonical bundle selection retained by one heterogeneous production run.
Only the opaque call identifier changes from the fixed-call projection; the
logical key, statement, proof, and encoding witnesses are the same values. -/
noncomputable def bundleSelection
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : MaterializedAliasRun sha256 blake2b) :
    SelectionAt CallId run.call.selected.μ :=
  { run.call.selected.formalSelection with
    call := run.call.selected.data.call.id }

/-- Canonical dependent bundle output of the retained production run. -/
noncomputable def toBundleOutcome
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
  (run : MaterializedAliasRun sha256 blake2b) :
    PackedOutcome CallId :=
  ⟨run.call.selected.μ, {
    selection := bundleSelection run
    verifierResult := run.output
  }⟩

@[simp] theorem toBundleOutcome_selection
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : MaterializedAliasRun sha256 blake2b) :
    (toBundleOutcome run).selection =
      ⟨run.call.selected.μ, bundleSelection run⟩ := by
  rfl

@[simp] theorem toBundleOutcome_accept
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : MaterializedAliasRun sha256 blake2b) :
    (toBundleOutcome run).accept = run.output.accept := by
  rfl

end ProductionRunProjection

/-- Actual production invalid-acceptance event at one selected proof size.

Invalidity is stated against the independently intended ordered real prefix,
not against a formal selection chosen after execution.  The digest equality
is the authenticated request/call join whose unequal-preimage cases are
charged to `MaterializedAliasShaCollision`. -/
def ProductionInvalidAcceptedAt
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (mu : Nat) : MaterializedAliasRun sha256 blake2b → Prop :=
  fun run =>
    run.call.selected.μ = mu ∧
      AcceptedCallOutput run.call.selected.data run.output ∧
      run.output.accept = true ∧
      run.call.intended.statementDigest =
        run.call.selected.data.input.statementDigest ∧
      ¬Ipp.SnarkPackV1.Refinement.HasValidRealPrefixRepresentation
        (run.call.selected.data.projection.statementOf
          run.call.intended.publicClaim)
        run.call.selected.data.proof
        run.call.intended.realCount
        (run.call.selected.data.contract.validCounts
          run.call.intended run.call.intendedSupported).2

/-- Outside the exact SHA bad event, a production invalid acceptance is the
canonical selected-size invalid acceptance of its bundle projection. -/
theorem good_production_invalid_projects_to_canonical
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (mu : Nat) (run : MaterializedAliasRun sha256 blake2b)
    (hgood :
      OriginGoodReal (ProductionInvalidAcceptedAt mu)
        MaterializedAliasShaCollision run) :
    IdealByteInvalidAcceptedAt
      (fun nu selection =>
        InvalidV1Selection (Call := CallId) nu selection)
      mu (ProductionRunProjection.toBundleOutcome run) := by
  rcases hgood with
    ⟨⟨hmu, haccepted, haccept, hdigest, hinvalid⟩, hnoCollision⟩
  have hbinding :=
    accepted_call_binds_intended_or_shaBad
      run.call.selected.data run.call.selected.refinement
      run.call.intended run.call.intendedSupported
      hdigest haccepted
  rcases hbinding with hsame | hcollision
  · refine ⟨?_, ?_⟩
    · simpa [ProductionRunProjection.toBundleOutcome,
        SelectedMu] using hmu
    · change
        InvalidV1Selection (Call := CallId)
            run.call.selected.μ
              (ProductionRunProjection.bundleSelection run) ∧
          run.output.accept = true
      refine ⟨?_, haccept⟩
      apply invalidV1Selection_of_invalidRealPrefix
        (ProductionRunProjection.bundleSelection run)
        run.call.intended.realCount
        (run.call.selected.data.contract.validCounts
          run.call.intended run.call.intendedSupported).2
      simpa [ProductionRunProjection.bundleSelection,
        OriginSelectedCall.formalSelection,
        Ipp.ShippingAdaptiveCall.productionSelection,
        hsame.2] using hinvalid
  · exfalso
    apply hnoCollision
    simpa [MaterializedAliasShaCollision, shaBad,
      Ipp.ShippingV1.ShippingShaCollision,
      run.call.selected.sha256_exact] using hcollision

/-- Raise an ordinary global-byte program into the universe used by retained
production packages without changing its query tree. -/
def uliftOriginGlobalComp {Alpha : Type}
    (program : OriginGlobalComp Alpha) :
    OriginGlobalComp (ULift Alpha) :=
  OracleComp.construct
    (fun value => pure (ULift.up value))
    (fun q _next continuation =>
      OracleComp.queryBind q continuation)
    program

/-- Complete production program after projecting its retained dependent call
to the canonical bundle output.  `ULift` preserves the pure projection in the
universe of the heterogeneous source and adds no oracle query. -/
def materializedAliasBundleByteProgram
    {Request : Type 1}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OriginGlobalComp Request)
    (materialize :
      Request → OriginGlobalComp
        (MaterializedAliasCall sha256 blake2b)) :
    OriginGlobalComp (ULift (PackedOutcome CallId)) :=
  (fun run =>
      ULift.up (ProductionRunProjection.toBundleOutcome run)) <$>
    materializedAliasByteProgram
      sha256 blake2b adversary materialize

/-- Narrow translator/runtime boundary for the adaptive production bundle.

The first field is the existing extracted planner, byte reindexing, cache,
and output-origin graph.  The second says that graph's raw program is exactly
the complete adversary/materializer/verifier source above after the canonical
pure output projection.  Neither field states an event or probability bound. -/
structure ProductionAdaptiveBundleBridge
    {Request : Type 1}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OriginGlobalComp Request)
    (materialize :
      Request → OriginGlobalComp
        (MaterializedAliasCall sha256 blake2b))
    (rawProgram : OriginGlobalComp (PackedOutcome CallId))
    (Q_sha Q_fs : Nat)
    (fallbackSelection : PackedSelection CallId) where
  equations :
    OutputDerivedBundleProgramEquations sha256 rawProgram Q_sha Q_fs
      (fun mu selection =>
        InvalidV1Selection (Call := CallId) mu selection)
      fallbackSelection
  source_exact :
    materializedAliasBundleByteProgram
        sha256 blake2b adversary materialize =
      uliftOriginGlobalComp rawProgram

/-- Blake2b-ROM assumption instantiated on the exact mapped production
source.  The real event is already the canonical bundle invalidity of the
retained run; the production-invalid event is related to it by the proved
pointwise SHA split above. -/
structure ProductionBlake2bRomSecurity
    [SampleableType DigestBytes]
    {Request : Type 1}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OriginGlobalComp Request)
    (materialize :
      Request → OriginGlobalComp
        (MaterializedAliasCall sha256 blake2b))
    (rawProgram : OriginGlobalComp (PackedOutcome CallId))
    (mu : Nat) where
  security :
    OriginBlake2bRomSecurity
      (deployedMaterializedAliasExperiment
        sha256 blake2b adversary materialize)
      (fun run =>
        IdealByteInvalidAcceptedAt
          (fun nu selection =>
            InvalidV1Selection (Call := CallId) nu selection)
          mu (ProductionRunProjection.toBundleOutcome run))
      MaterializedAliasShaCollision
      (BundleByteOriginReindexing.idealByteExperiment sha256
        rawProgram)
      (IdealByteInvalidAcceptedAt
        (fun nu selection =>
          InvalidV1Selection (Call := CallId) nu selection)
        mu)

/-- The production-specific ROM premise constructs the precise ROM premise
consumed by the deployed adaptive composition.  The same `rawProgram` is
fixed independently by `ProductionAdaptiveBundleBridge.source_exact`. -/
noncomputable def productionRomSecurity
    [SampleableType DigestBytes]
    {Request : Type 1}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary : OriginGlobalComp Request}
    {materialize :
      Request → OriginGlobalComp
        (MaterializedAliasCall sha256 blake2b)}
    {rawProgram : OriginGlobalComp (PackedOutcome CallId)}
    (mu : Nat)
    (rom :
      ProductionBlake2bRomSecurity
        sha256 blake2b adversary materialize rawProgram mu) :
    OriginBlake2bRomSecurity
      (deployedMaterializedAliasExperiment
        sha256 blake2b adversary materialize)
      (ProductionInvalidAcceptedAt mu)
      MaterializedAliasShaCollision
      (BundleByteOriginReindexing.idealByteExperiment
        sha256 rawProgram)
      (IdealByteInvalidAcceptedAt
        (fun nu selection =>
          InvalidV1Selection (Call := CallId) nu selection)
        mu) := by
  refine {
    epsilon := rom.security.epsilon
    good_real_le_ideal_add := ?_
  }
  calc
    Pr[OriginGoodReal (ProductionInvalidAcceptedAt mu)
          MaterializedAliasShaCollision |
        evalOriginSPMF
          (deployedMaterializedAliasExperiment
            sha256 blake2b adversary materialize)] ≤
        Pr[OriginGoodReal
            (fun run =>
              IdealByteInvalidAcceptedAt
                (fun nu selection =>
                  InvalidV1Selection (Call := CallId) nu selection)
                mu (ProductionRunProjection.toBundleOutcome run))
            MaterializedAliasShaCollision |
          evalOriginSPMF
            (deployedMaterializedAliasExperiment
              sha256 blake2b adversary materialize)] := by
      apply probEvent_mono
      intro run _ hgood
      exact ⟨good_production_invalid_projects_to_canonical mu run hgood,
        hgood.2⟩
    _ ≤
        Pr[IdealByteInvalidAcceptedAt
              (fun nu selection =>
                InvalidV1Selection (Call := CallId) nu selection)
              mu |
            BundleByteOriginReindexing.idealByteExperiment
              sha256 rawProgram] +
          rom.security.epsilon :=
      rom.security.good_real_le_ideal_add

@[simp] theorem productionRomSecurity_epsilon
    [SampleableType DigestBytes]
    {Request : Type 1}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary : OriginGlobalComp Request}
    {materialize :
      Request → OriginGlobalComp
        (MaterializedAliasCall sha256 blake2b)}
    {rawProgram : OriginGlobalComp (PackedOutcome CallId)}
    (mu : Nat)
    (rom :
      ProductionBlake2bRomSecurity
        sha256 blake2b adversary materialize rawProgram mu) :
    (productionRomSecurity mu rom).epsilon = rom.security.epsilon := by
  rfl

/-- Production adaptive soundness endpoint.

The probability on the left is the exact retained invalid-production event.
SHA-256, Blake2b-ROM, modular-reduction, randomizer-root, replay-query, KZG-V,
KZG-W, GIPA-root, GIPA-product, and iterated multi-statement fork losses remain
separate in the theorem inputs and conclusion. -/
theorem
    productionInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity
    [SampleableType DigestBytes]
    {Request : Type 1}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary : OriginGlobalComp Request}
    {materialize :
      Request → OriginGlobalComp
        (MaterializedAliasCall sha256 blake2b)}
    {rawProgram : OriginGlobalComp (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {fallbackSelection : PackedSelection CallId}
    (bridge :
      ProductionAdaptiveBundleBridge sha256 blake2b adversary
        materialize rawProgram Q_sha Q_fs fallbackSelection)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (statementMaterialization : OutputDerivedStatementMaterialization)
    (mu totalQueries replayQueries : Nat)
    (shaSecurity :
      MaterializedAliasCollisionSecurity
        sha256 blake2b adversary materialize Q_sha)
    (rom :
      ProductionBlake2bRomSecurity
        sha256 blake2b adversary materialize rawProgram mu)
    (queryOrigin :
      GlobalAcceptedRandomizerQueryOriginAt
        (projectedBundleFsGame bridge.equations) mu)
    (hbound :
      IsTotalQueryBound
        (projectedBundleFsGame bridge.equations) totalQueries)
    (semantics :
      GlobalAcceptedVerifierSemantics
        (projectedBundleFsGame bridge.equations))
    (parameters : Bls12377KzgParameters mu)
    (complexity : AcceptedReplayBls12377PolynomialTimeModel mu)
    (classifiers : AcceptedReplayKzgClassifierFamily mu)
    (kzgSecurity :
      AcceptedReplayBls12377KzgSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (gipaSecurity :
      AcceptedReplayBls12377GipaSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (kzgPolynomialTime :
      AcceptedReplayKzgConstructorPolynomialTime
        complexity (projectedBundleFsGame bridge.equations)
          queryBounds classifiers)
    (gipaPolynomialTime :
      AcceptedReplayGipaConstructorPolynomialTime
        complexity (projectedBundleFsGame bridge.equations)
          queryBounds)
    (acceptedReplayQueryBound :
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          (projectedBundleFsGame bridge.equations)
            queryBounds mu)
        replayQueries)
    (binding :
      ∀ fork : CachePreservingCommonFork CallId mu,
        some fork.rawTree ∈ _root_.support
            (acceptedMultiStatementForkExperimentAt
              (projectedBundleFsGame bridge.equations)
                queryBounds mu) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters)
    (schedule :
      RandomizerGoodForkScheduleContract
        (projectedBundleFsGame bridge.equations)
          (fun nu selection =>
            InvalidV1Selection (Call := CallId) nu selection)
          queryBounds mu
            (securitySelectedAdaptiveGipaExtractor
              gipaSecurity (projectedBundleFsGame bridge.equations)
                queryBounds parameters)) :
    ((Ipp.forkTreeStep
        (queryBounds (Sum.inr ()) + 1) scalarModulus)^[mu])
        (((Pr[ProductionInvalidAcceptedAt mu |
              evalOriginSPMF
                (deployedMaterializedAliasExperiment
                  sha256 blake2b adversary materialize)] -
            (shaSecurity.epsilonSha256 + rom.security.epsilon)) -
      Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
          adaptiveRandomizerRootError totalQueries mu) ≤
      kzgSecurity.epsilonV 0 replayQueries +
        kzgSecurity.epsilonW 0 replayQueries +
        gipaSecurity.epsilonRoot 0 replayQueries +
        gipaSecurity.epsilonProduct 0 replayQueries := by
  simpa [acceptedReplayAdaptiveCryptoError] using
    realBundleInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity
      bridge.equations (ProductionInvalidAcceptedAt mu)
      queryBounds statementMaterialization mu totalQueries replayQueries
      shaSecurity (productionRomSecurity mu rom)
      queryOrigin hbound semantics
      invalidV1Selection_excludesRepresentation
      parameters complexity classifiers kzgSecurity gipaSecurity
      kzgPolynomialTime gipaPolynomialTime acceptedReplayQueryBound
      binding schedule

#print axioms ProductionRunProjection.toBundleOutcome_selection
#print axioms good_production_invalid_projects_to_canonical
#print axioms productionRomSecurity
#print axioms productionInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity

end

end Ipp.ShippingBundleProductionAdaptiveComposition
