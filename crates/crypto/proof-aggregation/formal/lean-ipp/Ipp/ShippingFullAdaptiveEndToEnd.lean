import Ipp.Extracted.ShippingBundleGoalComposition
import Ipp.ShippingBundleProductionAdaptiveComposition
import Ipp.ShippingProverProductionExecution

/-!
Publication-level conditional closure for shipping SnarkPack v1.

The capstone constructs all three conclusions from their concrete production
premises: honest Rust prover completeness, exact accepted-bundle refinement to
the independent ordered goal, and adaptive invalid-acceptance soundness.  The
deployed SRS ceremony is deliberately not asserted here; the well-formed setup
and concrete KZG/GIPA game-security interfaces remain explicit boundaries.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingFullAdaptiveEndToEnd

noncomputable section

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Bls12377
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleGoalComposition
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.Extracted.ShippingBundleProgramConstruction
open Ipp.Extracted.ShippingProductionKeyFunctionality
open Ipp.Extracted.ShippingProver
open Ipp.Extracted.ShippingProverProductionExecution
open Ipp.S1
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveOriginSha
open Ipp.ShippingBundleAdaptiveSecurityComposition
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleProductionAdaptiveComposition
open Ipp.ShippingHashGame
open Ipp.ShippingMultiStatement

local instance fullAdaptiveBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance fullAdaptiveScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance fullAdaptiveFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance fullAdaptiveFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance fullAdaptiveGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance fullAdaptiveWrappedFsUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- The three publication-level conclusions.  None is accepted as a premise
of `shipping_full_adaptive_end_to_end_fv`; each is constructed by invoking the
corresponding concrete kernel theorem. -/
structure FullAdaptiveEndToEndCertificate
    (acceptedProverRefinement bundleGoalRefinement adaptiveSoundness : Prop) : Prop where
  acceptedProverRefinement : acceptedProverRefinement
  bundleGoalRefinement : bundleGoalRefinement
  adaptiveSoundness : adaptiveSoundness

/-- Conditional full shipping closure.

The adaptive inequality keeps all quantitative losses visible.  In
particular, no numerical security level or deployed-ceremony soundness is
manufactured by this composition theorem. -/
theorem shipping_full_adaptive_end_to_end_fv
    [SampleableType DigestBytes]
    {D G1Affine G2Affine FX : Type}
    {proverInputs :
      ProductionInputs (F := Fr) (G1 := g1PrimeSubgroup)
        (G2 := g2PrimeSubgroup) (GT := ArkPairingOutput)
        D G1Affine G2Affine FX}
    {proverMu : Nat}
    {observation :
      Observation (F := Fr) (G1 := g1PrimeSubgroup)
        (G2 := g2PrimeSubgroup) (GT := ArkPairingOutput)
        D proverMu}
    (acceptedProver :
      AcceptedShippingProverExecution proverInputs observation)
    (proverStatement :
      Ipp.FsStatement proverMu Fr g1PrimeSubgroup
        g2PrimeSubgroup ArkPairingOutput)
    (proverWitness :
      Ipp.Goal.Witness (2 ^ proverMu)
        (Ipp.SnarkPackV1.Refinement.WitnessRow
          g1PrimeSubgroup g2PrimeSubgroup))
    (proverTranscript : Ipp.FsTranscript proverMu Fr)
    (proverRemainder :
      ProductionRemainder acceptedProver proverStatement
        proverWitness proverTranscript)
    (proverValid :
      Ipp.Goal.ValidWithWitness
        (Ipp.SnarkPackV1.Refinement.ppeRelation proverStatement.e)
        (Ipp.SnarkPackV1.Refinement.toGoal proverStatement)
        proverWitness)
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (plan :
      app_verifier.app_verify_plan_ids_core declared = .ok expected)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (bundleBlake2b : List UInt8 → DigestBytes)
    (bundleBridge :
      OutputDerivedBundleVerificationBridge bundle bundleBlake2b)
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
    (adaptiveBridge :
      ProductionAdaptiveBundleBridge sha256 blake2b adversary
        materialize rawProgram Q_sha Q_fs fallbackSelection)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (statementMaterialization : OutputDerivedStatementMaterialization)
    (soundMu totalQueries replayQueries : Nat)
    (shaSecurity :
      MaterializedAliasCollisionSecurity
        sha256 blake2b adversary materialize Q_sha)
    (romSecurity :
      ProductionBlake2bRomSecurity
        sha256 blake2b adversary materialize rawProgram soundMu)
    (queryOrigin :
      GlobalAcceptedRandomizerQueryOriginAt
        (projectedBundleFsGame adaptiveBridge.equations) soundMu)
    (totalQueryBound :
      IsTotalQueryBound
        (projectedBundleFsGame adaptiveBridge.equations) totalQueries)
    (verifierSemantics :
      GlobalAcceptedVerifierSemantics
        (projectedBundleFsGame adaptiveBridge.equations))
    (parameters : Bls12377KzgParameters soundMu)
    (complexity : AcceptedReplayBls12377PolynomialTimeModel soundMu)
    (classifiers : AcceptedReplayKzgClassifierFamily soundMu)
    (kzgSecurity :
      AcceptedReplayBls12377KzgSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (gipaSecurity :
      AcceptedReplayBls12377GipaSecurity
        (fixedAcceptedReplayBls12377Setup parameters) complexity)
    (kzgPolynomialTime :
      AcceptedReplayKzgConstructorPolynomialTime
        complexity (projectedBundleFsGame adaptiveBridge.equations)
          queryBounds classifiers)
    (gipaPolynomialTime :
      AcceptedReplayGipaConstructorPolynomialTime
        complexity (projectedBundleFsGame adaptiveBridge.equations)
          queryBounds)
    (acceptedReplayQueryBound :
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          (projectedBundleFsGame adaptiveBridge.equations)
            queryBounds soundMu)
        replayQueries)
    (statementBinding :
      ∀ fork : CachePreservingCommonFork CallId soundMu,
        some fork.rawTree ∈ _root_.support
            (acceptedMultiStatementForkExperimentAt
              (projectedBundleFsGame adaptiveBridge.equations)
                queryBounds soundMu) →
          AcceptedReplayBls12377StatementBinding
            fork.statement parameters)
    (schedule :
      RandomizerGoodForkScheduleContract
        (projectedBundleFsGame adaptiveBridge.equations)
          (fun nu selection =>
            InvalidV1Selection (Call := CallId) nu selection)
          queryBounds soundMu
            (securitySelectedAdaptiveGipaExtractor
              gipaSecurity
                (projectedBundleFsGame adaptiveBridge.equations)
                queryBounds parameters)) :
    FullAdaptiveEndToEndCertificate
      (acceptedProver.returnedProof =
          Ipp.Extracted.AggregateProver.wireProofOf
            D observation.toFormalProof ∧
        Ipp.Extracted.AggregateProver.assemble
            D proverInputs.serialization observation.toFormalProof =
          Result.ok acceptedProver.returnedProof ∧
        Ipp.SnarkPackV1.Refinement.RootOpens
          proverStatement observation.toFormalProof proverWitness ∧
        Ipp.SnarkPackV1.Accepts
          proverStatement observation.toFormalProof proverTranscript)
      (OutputDerivedBundleRefinesGoals
        bundle bundleBlake2b bundleBridge)
      (((Ipp.forkTreeStep
          (queryBounds (Sum.inr ()) + 1) scalarModulus)^[soundMu])
          (((Pr[ProductionInvalidAcceptedAt soundMu |
                evalOriginSPMF
                  (deployedMaterializedAliasExperiment
                    sha256 blake2b adversary materialize)] -
              (shaSecurity.epsilonSha256 +
                romSecurity.security.epsilon)) -
            Ipp.ShippingScalarReduction.modReductionBudget Q_fs) -
            adaptiveRandomizerRootError totalQueries soundMu) ≤
        kzgSecurity.epsilonV 0 replayQueries +
          kzgSecurity.epsilonW 0 replayQueries +
          gipaSecurity.epsilonRoot 0 replayQueries +
          gipaSecurity.epsilonProduct 0 replayQueries) := by
  refine {
    acceptedProverRefinement := ?_
    bundleGoalRefinement := ?_
    adaptiveSoundness := ?_
  }
  · exact
      accepted_shipping_prover_refines_honest_complete
        acceptedProver proverStatement proverWitness proverTranscript
          proverRemainder proverValid
  · exact
      accepted_output_derived_bundle_refines_all_goals
        bundle plan reducerAccepted bundleBlake2b bundleBridge
  · exact
      productionInvalidAcceptedAt_adjustedForkTransform_le_acceptedReplaySecurity
        adaptiveBridge queryBounds statementMaterialization soundMu
        totalQueries replayQueries shaSecurity romSecurity queryOrigin
        totalQueryBound verifierSemantics parameters complexity classifiers
        kzgSecurity gipaSecurity kzgPolynomialTime gipaPolynomialTime
        acceptedReplayQueryBound statementBinding schedule

#print axioms shipping_full_adaptive_end_to_end_fv

end

end Ipp.ShippingFullAdaptiveEndToEnd
