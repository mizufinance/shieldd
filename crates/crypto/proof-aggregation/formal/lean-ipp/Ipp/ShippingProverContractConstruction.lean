import Ipp.ShippingProverExecutionTrace
import Ipp.ShippingProverRefinement

/-!
Construction of the shipping-prover contract from granular execution evidence.

The GIPA trace is derived from an `ExternalRoundSchedule`, and both KZG
acceptance facts are derived from the full-power proving SRS.  The residual
boundaries contain only challenge results and exact projections of values
retained by the production prover.
-/

namespace Ipp.Extracted.ShippingProverContractConstruction

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.ShippingProver
open Ipp.Extracted.ShippingProverExecutionTrace
open Ipp.Extracted.ShippingProverRefinement

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

/-! ## Residual production postconditions -/

/-- Exact successful challenge results retained by one prover execution.

This boundary does not assert proof acceptance or completeness.  Its fields
are the postconditions of the deployed bounded challenge sampler and inverse
operations. -/
structure ChallengeBoundary
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F) where
  chaining :
    Ipp.TranscriptChaining transcript.x0
      transcript.roundPrev transcript.roundAnswer
  randomizerNonceBound :
    transcript.randomizerNonce < statement.rejectionFuel
  x0NonceBound :
    transcript.x0Nonce < statement.rejectionFuel
  roundNonceBound : ∀ i,
    transcript.roundNonce i < statement.rejectionFuel
  bridgeNonceBound :
    transcript.bridgeNonce < statement.rejectionFuel
  kzgNonceBound :
    transcript.kzgNonce < statement.rejectionFuel
  randomizerAdmissible :
    transcript.randomizer ≠ 0 ∧ transcript.randomizer ≠ 1
  x0Nonzero :
    transcript.x0 ≠ 0
  roundNonzero : ∀ i,
    transcript.roundAnswer i ≠ 0
  bridgeNonzero :
    transcript.bridge ≠ 0
  kzgNonzero :
    transcript.kzg ≠ 0

/-- Exact projection of the retained production values to the formal
observation.

The initial commitment and public-value fields point to the concrete GIPA
input.  Their semantic values are derived later from `inputExact`; callers do
not state those semantic conclusions directly. -/
structure RetainedObservationProjection
    (D : Type) {μ : Nat}
    (concreteInput :
      applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ)
    (v :
      ExecutedKzgOpeningAlgorithm (F := F) statement.srsV)
    (w :
      ExecutedKzgOpeningAlgorithm (F := F) statement.srsW)
    (serialization : AggregateProver.Serialization G1 G2 GT) where
  randomizerPowersInput :
    concreteInput.public_values =
      ⟨List.ofFn observation.randomizerPowers⟩
  randomizerInverse :
    observation.randomizerInverse = transcript.randomizer⁻¹
  comA :
    observation.comA =
      (concreteInput.com_a, concreteInput.com_c)
  comB :
    observation.comB = concreteInput.com_b
  vOpening :
    observation.vOpening =
      v.opening transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.vCoeffs transcript)
  wOpening :
    observation.wOpening =
      w.opening transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.wCoeffs transcript)
  ipAb :
    observation.ipAb = concreteInput.ip_ab
  aggC :
    observation.aggC = concreteInput.agg_c
  emitted :
    AggregateProver.assemble D serialization observation.toFormalProof =
      .ok observation.wireProof

/-! ## Derived semantic fields -/

/-- The public-value vector retained in the concrete GIPA input determines
the observation's randomizer powers once that input is projected to the
honest GIPA input. -/
theorem randomizerPowers_of_inputProjection
    (D : Type) {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ)
    (concreteInput :
      applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT)
    (inputExact :
      concreteInput = honestGipaInput statement witness transcript)
    (powerInput :
      concreteInput.public_values =
        ⟨List.ofFn observation.randomizerPowers⟩) :
    ∀ i, observation.randomizerPowers i =
      transcript.randomizer ^ (i : Nat) := by
  have hpublic := congrArg
    (fun input => input.public_values) inputExact
  have hvectors :
      (⟨List.ofFn observation.randomizerPowers⟩ :
          alloc.vec.Vec F) =
        (honestGipaInput statement witness transcript).public_values :=
    powerInput.symm.trans hpublic
  change
    (⟨List.ofFn observation.randomizerPowers⟩ : alloc.vec.Vec F) =
      ⟨List.ofFn
        (Ipp.SnarkPackV1.HonestProver.rPowers
          (n := 2 ^ μ) transcript.randomizer)⟩ at hvectors
  have hlists := congrArg alloc.vec.Vec.val hvectors
  intro i
  have hi := congrArg
    (fun values => values[(i : Nat)]?) hlists
  simpa [Ipp.SnarkPackV1.HonestProver.rPowers] using hi

/-- Granular GIPA evidence and full-SRS KZG evidence construct the complete
shipping-prover contract.

No `SuccessfulLoopTrace`, KZG acceptance proposition, protocol acceptance,
or completeness conclusion is supplied by the caller. -/
def shippingProverContract_of_retainedExecution
    (D : Type) {μ : Nat}
    (serialization : AggregateProver.Serialization G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ)
    (algebra : GipaAlgebra F G1 G2 GT)
    (Effect : Type)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        Effect F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) String)
    (concreteInput :
      applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT)
    (inputExact :
      concreteInput = honestGipaInput statement witness transcript)
    (initialEffect : Effect)
    (execution :
      Ipp.Extracted.ProverGipaExecution.SuccessfulExecution
        algebra.cloneF algebra.mulF algebra.addF
        algebra.cloneG1 algebra.mulG1 algebra.addG1
        algebra.cloneG2 algebra.mulG2 algebra.addG2
        algebra.cloneGT algebra.cloneAB algebra.cloneC
        effects concreteInput initialEffect)
    (algebraExact : algebra.RefinesModels)
    (afterX0 : Effect)
    (x0Exact :
      effects.derive_x0 initialEffect
          concreteInput.randomizer concreteInput.com_a concreteInput.com_b
          concreteInput.com_c concreteInput.ip_ab concreteInput.agg_c =
        .ok (.Ok transcript.x0, afterX0))
    (schedule :
      ExternalRoundSchedule algebra effects
        (honestLoopInitial (E := String)
          statement witness transcript afterX0)
        (honestLoopTerminal (E := String)
          statement witness transcript execution.finalEffect))
    (observedOutput :
      execution.output = observedGipaOutput transcript observation)
    (v :
      ExecutedKzgOpeningAlgorithm (F := F) statement.srsV)
    (w :
      ExecutedKzgOpeningAlgorithm (F := F) statement.srsW)
    (g gBeta : G1) (h hAlpha : G2)
    (setup : WellFormedProvingSrs
      statement v w g gBeta h hAlpha)
    (vVerifier :
      VEquationAccepts statement.e g gBeta h statement.acceptV)
    (wVerifier :
      WEquationAccepts statement.e g h hAlpha statement.acceptW)
    (challenges : ChallengeBoundary statement transcript)
    (projection : RetainedObservationProjection D concreteInput
      statement transcript observation v w serialization) :
    ShippingProverContract D serialization statement witness
      transcript observation := by
  let gipa : GipaExecutionBoundary
      statement witness transcript observation :=
    gipaExecutionBoundary_of_externalRoundSchedule
      statement witness transcript observation algebra Effect effects
      concreteInput inputExact initialEffect execution algebraExact
      afterX0 x0Exact schedule observedOutput
  let kzg : KzgBoundary statement :=
    kzgBoundary_of_wellFormedSrs_and_verifierEquations
      statement v w g gBeta h hAlpha setup vVerifier wVerifier
  have hcomA :
      (concreteInput.com_a, concreteInput.com_c) =
        (Ipp.SnarkPackV1.HonestProver.initialState
          statement witness transcript.randomizer).comA := by
    have h := congrArg
      (fun input => (input.com_a, input.com_c)) inputExact
    simpa [honestGipaInput] using h
  have hcomB :
      concreteInput.com_b =
        (Ipp.SnarkPackV1.HonestProver.initialState
          statement witness transcript.randomizer).comB := by
    have h := congrArg (fun input => input.com_b) inputExact
    simpa [honestGipaInput] using h
  have hipAb :
      concreteInput.ip_ab =
        (Ipp.SnarkPackV1.HonestProver.initialState
          statement witness transcript.randomizer).comT.1 := by
    have h := congrArg (fun input => input.ip_ab) inputExact
    simpa [honestGipaInput] using h
  have haggC :
      concreteInput.agg_c =
        (Ipp.SnarkPackV1.HonestProver.initialState
          statement witness transcript.randomizer).comT.2 := by
    have h := congrArg (fun input => input.agg_c) inputExact
    simpa [honestGipaInput] using h
  exact {
    kzg := kzg
    gipa := gipa
    chaining := challenges.chaining
    randomizerNonceBound := challenges.randomizerNonceBound
    x0NonceBound := challenges.x0NonceBound
    roundNonceBound := challenges.roundNonceBound
    bridgeNonceBound := challenges.bridgeNonceBound
    kzgNonceBound := challenges.kzgNonceBound
    randomizerAdmissible := challenges.randomizerAdmissible
    x0Nonzero := challenges.x0Nonzero
    roundNonzero := challenges.roundNonzero
    bridgeNonzero := challenges.bridgeNonzero
    kzgNonzero := challenges.kzgNonzero
    randomizerPower :=
      randomizerPowers_of_inputProjection D statement witness transcript
        observation concreteInput inputExact projection.randomizerPowersInput
    randomizerInverse := projection.randomizerInverse
    comA := projection.comA.trans hcomA
    comB := projection.comB.trans hcomB
    vOpening := projection.vOpening
    wOpening := projection.wOpening
    ipAb := projection.ipAb.trans hipAb
    aggC := projection.aggC.trans haggC
    emitted := projection.emitted
  }

end

end Ipp.Extracted.ShippingProverContractConstruction
