import Ipp.ShippingProverContractConstruction

/-!
Concrete composition of the four production prover semantic roots.

The returned wire proof is constructed canonically from the retained formal
observation. Deployment identity and SRS provenance remain separate trust
boundaries; no proof-acceptance premise or second whole-loop equation appears.
-/

namespace Ipp.Extracted.ShippingProverProductionExecution

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.ShippingProver
open Ipp.Extracted.ShippingProverContractConstruction
open Ipp.Extracted.ShippingProverExecutionTrace
open Ipp.Extracted.ShippingProverRefinement

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

abbrev ProverRetainedEffect (FX F : Type) :=
  applications.groth16_aggregation.RetainedProverGipaEffect FX F

abbrev proverRetainedEffects
    {FX : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) String) :
    applications.groth16_aggregation.ProverGipaEffect
      (ProverRetainedEffect FX F) F G1 G2 GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) String :=
  applications.groth16_aggregation.RetainedProverGipaEffect.Insts.Ark_ip_proofsApplicationsGroth16_aggregationProverGipaEffect
    algebra.cloneF effects

def initialRetainedEffect {FX : Type} (effect : FX) :
    ProverRetainedEffect FX F :=
  { inner := effect, x0 := none }

/-- Typed inputs retained across the four generated production roots. -/
structure ProductionInputs
    (D G1Affine G2Affine FX : Type) where
  algebra : GipaAlgebra F G1 G2 GT
  effects :
    applications.groth16_aggregation.ProverGipaEffect
      FX F G1 G2 GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) String
  serialization : AggregateProver.Serialization G1 G2 GT
  gipaInput :
    applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT
  initialEffect : FX
  randomizerInverse : F
  finalBridge : F
  kzgChallenge : F
  ckVOpening : G2
  ckWOpening : G1
  sourceProofs :
    applications.groth16_aggregation.OrderedSourceProofs G1 G2
  fullGAlphaPowers : Slice G1
  fullHBetaPowers : Slice G2
  gAlphaPowersAffine : Slice G1Affine
  hBetaPowersAffine : Slice G2Affine
  ck1 : Slice G2
  ck2 : Slice G1
  initialCommitments : GT × GT × GT
  randomizer :
    applications.groth16_aggregation.ProverRandomizerCoreOutput F

/-- Canonicalize only the wire field; the formal proof projection is
unchanged. -/
def canonicalObservation
    (D : Type) {μ : Nat}
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) :
    Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT) D μ :=
  { observation with
    wireProof := AggregateProver.wireProofOf D observation.toFormalProof }

@[simp] theorem canonicalObservation_toFormalProof
    (D : Type) {μ : Nat}
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) :
    (canonicalObservation D observation).toFormalProof =
      observation.toFormalProof := by
  rfl

/-- Expected data result of the generated shipping constructor. -/
def expectedShippingExecution
    {D G1Affine G2Affine FX : Type}
    (inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX)
    {μ : Nat}
    (semantic :
      applications.groth16_aggregation.ProverGipaSemanticExecution
        F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1))
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) :
    applications.groth16_aggregation.ShippingProverExecution
      F G1 G2 GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) D :=
  {
    gipa_input := semantic.input
    gipa_output := semantic.output
    gipa_round_effects_chrono := semantic.rounds_chrono
    x0 := semantic.x0
    randomizer_inverse := inputs.randomizerInverse
    final_bridge := inputs.finalBridge
    kzg_challenge := inputs.kzgChallenge
    ck_v_kzg_opening := inputs.ckVOpening
    ck_w_kzg_opening := inputs.ckWOpening
    proof := AggregateProver.wireProofOf D observation.toFormalProof
  }

/-- Expected data result of the generated aggregate semantic constructor. -/
def expectedAggregateExecution
    {D G1Affine G2Affine FX : Type}
    (inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX)
    (shipping :
      applications.groth16_aggregation.ShippingProverExecution
        F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) D) :
    applications.groth16_aggregation.ShippingAggregateProverSemanticExecution
      F G1 G2 G1Affine G2Affine GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) D :=
  {
    source_proofs := inputs.sourceProofs
    proving_srs := {
      full_g_alpha_powers := inputs.fullGAlphaPowers
      full_h_beta_powers := inputs.fullHBetaPowers
      g_alpha_powers_affine := inputs.gAlphaPowersAffine
      h_beta_powers_affine := inputs.hBetaPowersAffine
      ck_1 := inputs.ck1
      ck_2 := inputs.ck2
    }
    initial_commitments := inputs.initialCommitments
    randomizer := inputs.randomizer
    challenges := {
      randomizer := inputs.randomizer.randomizer
      randomizer_nonce := inputs.randomizer.nonce
      x0 := shipping.x0
      rounds_chrono := shipping.gipa_output.raw_transcript_chrono
      final_bridge := shipping.final_bridge
      kzg := shipping.kzg_challenge
    }
    tipp_mipp := shipping
  }

/-- Exact successful execution of all four generated production roots. -/
structure AcceptedShippingProverExecution
    {D G1Affine G2Affine FX : Type}
    (inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX)
    {μ : Nat}
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) where
  algebraExact : inputs.algebra.RefinesModels
  semantic :
    applications.groth16_aggregation.ProverGipaSemanticExecution
      F G1 G2 GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1)
  finalEffect : FX
  semanticRoot :
    applications.groth16_aggregation.prover_gipa_semantic_execution_core
        inputs.algebra.cloneF inputs.algebra.mulF inputs.algebra.addF
        inputs.algebra.cloneG1 inputs.algebra.mulG1 inputs.algebra.addG1
        inputs.algebra.cloneG2 inputs.algebra.mulG2 inputs.algebra.addG2
        inputs.algebra.cloneGT inputs.algebra.cloneAB inputs.algebra.cloneC
        inputs.effects inputs.gipaInput inputs.initialEffect =
      .ok (.Ok (semantic, finalEffect))
  shippingRoot :
    applications.groth16_aggregation.shipping_prover_execution_from_parts
        D
        inputs.algebra.cloneG1
        inputs.serialization.g1Serialize inputs.serialization.g1Deserialize
        inputs.algebra.cloneG2
        inputs.serialization.g2Serialize inputs.serialization.g2Deserialize
        inputs.algebra.cloneGT
        inputs.serialization.gtSerialize inputs.serialization.gtDeserialize
        inputs.algebra.cloneAB
        inputs.serialization.abSerialize inputs.serialization.abDeserialize
        inputs.algebra.cloneC
        inputs.serialization.cSerialize inputs.serialization.cDeserialize
        semantic inputs.randomizerInverse inputs.finalBridge
        inputs.kzgChallenge inputs.ckVOpening inputs.ckWOpening =
      .ok (expectedShippingExecution inputs semantic observation)
  aggregateRoot :
    applications.groth16_aggregation.shipping_aggregate_prover_semantic_execution_from_parts
        inputs.algebra.cloneF
        inputs.serialization.g1Serialize inputs.serialization.g1Deserialize
        inputs.serialization.g2Serialize inputs.serialization.g2Deserialize
        inputs.serialization.gtSerialize inputs.serialization.gtDeserialize
        inputs.serialization.abSerialize inputs.serialization.abDeserialize
        inputs.serialization.cSerialize inputs.serialization.cDeserialize
        inputs.sourceProofs inputs.fullGAlphaPowers inputs.fullHBetaPowers
        inputs.gAlphaPowersAffine inputs.hBetaPowersAffine
        inputs.ck1 inputs.ck2 inputs.initialCommitments inputs.randomizer
        (expectedShippingExecution inputs semantic observation) =
      .ok (expectedAggregateExecution inputs
        (expectedShippingExecution inputs semantic observation))
  returnedProof : AggregateProver.WireProof G1 G2 GT D
  returnedProofRoot :
    applications.groth16_aggregation.shipping_aggregate_prover_semantic_returned_proof
        inputs.serialization.g1Serialize inputs.serialization.g1Deserialize
        inputs.serialization.g2Serialize inputs.serialization.g2Deserialize
        inputs.serialization.gtSerialize inputs.serialization.gtDeserialize
        inputs.serialization.abSerialize inputs.serialization.abDeserialize
        inputs.serialization.cSerialize inputs.serialization.cDeserialize
        (expectedAggregateExecution inputs
          (expectedShippingExecution inputs semantic observation)) =
      .ok returnedProof

private theorem retainedCore_exists
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation) :
    ∃ execution : Ipp.Extracted.ProverGipaExecution.SuccessfulExecution
        inputs.algebra.cloneF inputs.algebra.mulF inputs.algebra.addF
        inputs.algebra.cloneG1 inputs.algebra.mulG1 inputs.algebra.addG1
        inputs.algebra.cloneG2 inputs.algebra.mulG2 inputs.algebra.addG2
        inputs.algebra.cloneGT inputs.algebra.cloneAB inputs.algebra.cloneC
        (proverRetainedEffects inputs.algebra inputs.effects)
        inputs.gipaInput (initialRetainedEffect inputs.initialEffect),
      execution.output = accepted.semantic.output ∧
      execution.finalEffect.inner = accepted.finalEffect ∧
      accepted.semantic.input = inputs.gipaInput :=
  successfulExecution_of_prover_gipa_semantic_execution_core
    inputs.algebra accepted.algebraExact inputs.effects inputs.gipaInput
    inputs.initialEffect accepted.finalEffect accepted.semantic
    accepted.semanticRoot

noncomputable def AcceptedShippingProverExecution.execution
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation) :=
  Classical.choose (retainedCore_exists accepted)

theorem AcceptedShippingProverExecution.executionOutputExact
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation) :
    accepted.execution.output = accepted.semantic.output :=
  (Classical.choose_spec (retainedCore_exists accepted)).1

theorem AcceptedShippingProverExecution.executionFinalInnerExact
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation) :
    accepted.execution.finalEffect.inner = accepted.finalEffect :=
  (Classical.choose_spec (retainedCore_exists accepted)).2.1

theorem AcceptedShippingProverExecution.semanticInputExact
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation) :
    accepted.semantic.input = inputs.gipaInput :=
  (Classical.choose_spec (retainedCore_exists accepted)).2.2

/-- Exact observation projection without a caller-supplied wire-emission
equation. -/
structure RetainedObservationProjectionCore
    (D : Type) {μ : Nat}
    (concreteInput :
      applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ)
    (v : ExecutedKzgOpeningAlgorithm (F := F) statement.srsV)
    (w : ExecutedKzgOpeningAlgorithm (F := F) statement.srsW) where
  randomizerPowersInput :
    concreteInput.public_values =
      ⟨List.ofFn observation.randomizerPowers⟩
  randomizerInverse :
    observation.randomizerInverse = transcript.randomizer⁻¹
  comA : observation.comA = (concreteInput.com_a, concreteInput.com_c)
  comB : observation.comB = concreteInput.com_b
  vOpening :
    observation.vOpening =
      v.opening transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.vCoeffs transcript)
  wOpening :
    observation.wOpening =
      w.opening transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.wCoeffs transcript)
  ipAb : observation.ipAb = concreteInput.ip_ab
  aggC : observation.aggC = concreteInput.agg_c

/-- Honest residuals not computed by the four data-constructor roots. -/
structure ProductionRemainder
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F) where
  inputExact :
    inputs.gipaInput = honestGipaInput statement witness transcript
  afterX0 : ProverRetainedEffect FX F
  x0Exact :
    (proverRetainedEffects inputs.algebra inputs.effects).derive_x0
        (initialRetainedEffect inputs.initialEffect)
        inputs.gipaInput.randomizer inputs.gipaInput.com_a
        inputs.gipaInput.com_b inputs.gipaInput.com_c
        inputs.gipaInput.ip_ab inputs.gipaInput.agg_c =
      .ok (.Ok transcript.x0, afterX0)
  schedule :
    ExternalRoundSchedule inputs.algebra
        (proverRetainedEffects inputs.algebra inputs.effects)
      (honestLoopInitial (E := String)
        statement witness transcript afterX0)
      (honestLoopTerminal (E := String)
        statement witness transcript accepted.execution.finalEffect)
  retainedRoundsExact :
    ExternalRoundSchedule.MatchesRetainedRounds
      schedule accepted.semantic.rounds_chrono.val
  semanticOutputExact :
    accepted.semantic.output = observedGipaOutput transcript
      (canonicalObservation D observation)
  productionRandomizer :
    inputs.randomizer.randomizer = transcript.randomizer
  productionRandomizerInverse :
    inputs.randomizerInverse = transcript.randomizer⁻¹
  productionFinalBridge : inputs.finalBridge = transcript.bridge
  productionKzgChallenge : inputs.kzgChallenge = transcript.kzg
  v : ExecutedKzgOpeningAlgorithm (F := F) statement.srsV
  w : ExecutedKzgOpeningAlgorithm (F := F) statement.srsW
  productionVOpening :
    inputs.ckVOpening = v.opening transcript.kzg
      (Ipp.SnarkPackV1.HonestProver.vCoeffs transcript)
  productionWOpening :
    inputs.ckWOpening = w.opening transcript.kzg
      (Ipp.SnarkPackV1.HonestProver.wCoeffs transcript)
  g : G1
  gBeta : G1
  h : G2
  hAlpha : G2
  setup : WellFormedProvingSrs statement v w g gBeta h hAlpha
  vVerifier : VEquationAccepts statement.e g gBeta h statement.acceptV
  wVerifier : WEquationAccepts statement.e g h hAlpha statement.acceptW
  challenges : ChallengeAdmissibilityBoundary transcript
  projection : RetainedObservationProjectionCore D inputs.gipaInput
    statement transcript (canonicalObservation D observation) v w

def RetainedObservationProjectionCore.withCanonicalWire
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {transcript : Ipp.FsTranscript μ F}
    {v : ExecutedKzgOpeningAlgorithm (F := F) statement.srsV}
    {w : ExecutedKzgOpeningAlgorithm (F := F) statement.srsW}
    (projection : RetainedObservationProjectionCore D inputs.gipaInput
      statement transcript (canonicalObservation D observation) v w) :
    RetainedObservationProjection D inputs.gipaInput statement transcript
      (canonicalObservation D observation) v w inputs.serialization :=
  {
    randomizerPowersInput := projection.randomizerPowersInput
    randomizerInverse := projection.randomizerInverse
    comA := projection.comA
    comB := projection.comB
    vOpening := projection.vOpening
    wOpening := projection.wOpening
    ipAb := projection.ipAb
    aggC := projection.aggC
    emitted := by
      simpa [canonicalObservation] using
        AggregateProver.assemble_exact D inputs.serialization
          (canonicalObservation D observation).toFormalProof
  }

noncomputable def AcceptedShippingProverExecution.contract
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (remainder : ProductionRemainder accepted statement witness transcript) :
    ShippingProverContract D inputs.serialization statement witness transcript
      (canonicalObservation D observation) :=
  shippingProverContract_of_retainedExecution
    D inputs.serialization statement witness transcript
    (canonicalObservation D observation)
    inputs.algebra (ProverRetainedEffect FX F)
    (proverRetainedEffects inputs.algebra inputs.effects)
    inputs.gipaInput remainder.inputExact
    (initialRetainedEffect inputs.initialEffect) accepted.execution
    accepted.algebraExact remainder.afterX0 remainder.x0Exact
    remainder.schedule
    (accepted.executionOutputExact.trans remainder.semanticOutputExact)
    remainder.v remainder.w
    remainder.g remainder.gBeta remainder.h remainder.hAlpha
    remainder.setup remainder.vVerifier remainder.wVerifier
    remainder.challenges remainder.projection.withCanonicalWire

theorem AcceptedShippingProverExecution.returnedProof_eq_wireProof
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation) :
    accepted.returnedProof =
      AggregateProver.wireProofOf D observation.toFormalProof := by
  have hroot := accepted.returnedProofRoot
  unfold applications.groth16_aggregation.shipping_aggregate_prover_semantic_returned_proof at hroot
  simp only [expectedAggregateExecution, expectedShippingExecution,
    Result.bind_ok] at hroot
  exact (Result.ok.inj hroot).symm

/-- Production prover completeness for the exact returned Rust wire proof. -/
theorem accepted_shipping_prover_refines_honest_complete
    {D G1Affine G2Affine FX : Type}
    {inputs : ProductionInputs (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D G1Affine G2Affine FX}
    {μ : Nat}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (accepted : AcceptedShippingProverExecution inputs observation)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (remainder : ProductionRemainder accepted statement witness transcript)
    (hvalid : Ipp.Goal.ValidWithWitness
      (Ipp.SnarkPackV1.Refinement.ppeRelation statement.e)
      (Ipp.SnarkPackV1.Refinement.toGoal statement) witness) :
    accepted.returnedProof =
        AggregateProver.wireProofOf D observation.toFormalProof ∧
      AggregateProver.assemble D inputs.serialization
          observation.toFormalProof = .ok accepted.returnedProof ∧
      Ipp.SnarkPackV1.Refinement.RootOpens
        statement observation.toFormalProof witness ∧
      Ipp.SnarkPackV1.Accepts
        statement observation.toFormalProof transcript := by
  let contract := accepted.contract statement witness transcript remainder
  have complete := shipping_prover_refines_honest_complete
    D inputs.serialization statement witness transcript
    (canonicalObservation D observation) contract hvalid
  have hreturned := accepted.returnedProof_eq_wireProof
  refine ⟨hreturned, ?_, ?_, ?_⟩
  · simpa [canonicalObservation, hreturned] using complete.1
  · simpa [canonicalObservation] using complete.2.2.1
  · simpa [canonicalObservation] using complete.2.2.2

#print axioms accepted_shipping_prover_refines_honest_complete

end

end Ipp.Extracted.ShippingProverProductionExecution
