import Ipp.Extracted.ShippingVerifierComposition
import Ipp.Extracted.ShippingVerifierHashProjection
import Ipp.ShippingHashExecutionTrace
import Ipp.ShippingHashFsCoupling

/-!
The concrete deployed-hash verifier experiment.

The real side executes the shipping verifier against one total Blake2b answer
function. Its acceptance event also requires the raw extracted
application/constructor/adapter execution witness. Formal v1 acceptance is
derived from that witness using separately named refinement and deployed
primitive contracts rather than included in the event. SHA-256 aliases are
explicit bad events; only their probability, and the real-to-ROM Blake2b
replacement, remain computational security premises.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingRealVerifier

noncomputable section

open Ipp.Bls12377
open ark_ip_proofs

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

local instance fsSourceUniform
    {G1 G2 GT : Type} :
    IsUniformSpec (Ipp.FsSourceSpec Fr G1 G2 GT) :=
  IsUniformSpec.ofFintypeInhabited _

abbrev CallData (D : Type) (μ arity : Nat) :=
  Ipp.Extracted.ShippingVerifierComposition.ShippingCallData D μ arity

abbrev RawAcceptedExecution
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (transcript : Ipp.FsTranscript μ Fr) :=
  Ipp.Extracted.ShippingVerifierComposition.AcceptedShippingExecutionAt
    data transcript

abbrev RefinementContracts
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity) :=
  Ipp.Extracted.ShippingVerifierComposition.ShippingVerifierRefinementContracts
    data

/-- The randomizer returned by a raw accepted production adapter execution is
nonzero.  This is recovered directly from the extracted nonce loop; no hash,
decoder, or formal-verifier contract is used. -/
theorem RawAcceptedExecution.randomizer_nonzero
    {D : Type} {μ arity : Nat}
    {data : CallData D μ arity}
    {transcript : Ipp.FsTranscript μ Fr}
    (execution : RawAcceptedExecution data transcript) :
    transcript.randomizer ≠ 0 := by
  have adapterAccepted := execution.adapter
  unfold
    Ipp.Extracted.ShippingVerifierComposition.ShippingCallData.AdapterAcceptedAt
      at adapterAccepted
  let constructor :=
    applications.groth16_aggregation.shipping_aggregate_adapter_core_input
      (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
      data.serializeG1 data.deserializeG1
      (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
      data.serializeG2 data.deserializeG2
      (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
      ⟨Ipp.Extracted.ShippingVerifierComposition.decodedRandomizerMessage
        data.serialization data.input.decodedProof⟩
      data.srs data.input.decodedProof
      (Ipp.Extracted.AggregateAdapterProjection.finVec data.gammaABC)
      (Ipp.Extracted.AggregateAdapterProjection.inputVec
        data.input.publicRows)
      0 1
      (data.statement.e data.statement.alpha data.statement.beta)
      (Ipp.Bls12377.prepareNegative data.statement.gamma)
      (Ipp.Bls12377.prepareNegative data.statement.delta)
  cases hconstructor : constructor with
  | fail error =>
      simp [constructor, hconstructor] at adapterAccepted
  | div =>
      simp [constructor, hconstructor] at adapterAccepted
  | ok adapterInput =>
      have hadapter :
          Ipp.Extracted.AggregateAdapter.run data.randomizerEffects
              (Ipp.Extracted.TippMippAdapter.effectOfPrimitive data.primitive
                (@Ipp.Extracted.TippMippAdapter.partialEq
                  ArkPairingOutput (Classical.decEq _))
                (@Ipp.Extracted.TippMippAdapter.partialEq
                  g1PrimeSubgroup (Classical.decEq _)))
              (Ipp.Bls12377.tippPairingEffect
                data.hbilinear data.tippOutcome)
              (Ipp.Bls12377.preparedPairingEffect
                data.hbilinear data.ppeOutcome)
              adapterInput execution.randomizerEffect execution.effect
              execution.tippPairing execution.ppePairing =
            .ok (.Ok {
              randomizer := transcript.randomizer
              checks := (true, true)
              accepted := true
              randomizer_effect := execution.finalRandomizerEffect
              tipp_mipp_effect := execution.finalEffect
            }) := by
        simpa [constructor, hconstructor] using adapterAccepted
      exact
        (Ipp.Extracted.AggregateAdapter.accepted_path
          data.randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive data.primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          (Ipp.Bls12377.tippPairingEffect
            data.hbilinear data.tippOutcome)
          (Ipp.Bls12377.preparedPairingEffect
            data.hbilinear data.ppeOutcome)
          adapterInput execution.randomizerEffect
          execution.finalRandomizerEffect execution.effect
          execution.finalEffect execution.tippPairing execution.ppePairing
          transcript.randomizer hadapter).1

/-- The raw production adapter equation, together with exact construction
projections, exposes its accepted randomizer call and the TIPP/MIPP challenge
trace generated by that same run.

`runProjection` is deliberately the only concrete-effect input: it interprets
an already successful `runTipp` call and does not assert adapter or formal
verifier acceptance. -/
theorem RawAcceptedExecution.operationalCalls
    {D : Type} {μ arity : Nat}
    {data : CallData D μ arity}
    {transcript : Ipp.FsTranscript μ Fr}
    (execution : RawAcceptedExecution data transcript)
    (decoded :
      Ipp.Extracted.ShippingVerifierComposition.ArkworksDecodedProofContract
        data.hbilinear data.baseStmt data.input.decodedProof data.proof
        transcript data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha)
    (runProjection :
      Ipp.Extracted.TippMippChallengeExecution.AcceptedRunCallProjection
        data.primitive data.serialization data.statement data.proof
        transcript.randomizer
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        (Ipp.Bls12377.tippPairingEffect
          data.hbilinear data.tippOutcome)
        execution.tippPairing execution.effect execution.finalEffect) :
    ∃ randomizerCall :
        Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
          data.randomizerEffects
          ⟨Ipp.ShippingArkworksHash.adapterPointMessage data.serialization
            (.randomizer {
              comA := data.proof.ComA.1
              comB := data.proof.ComB
              comC := data.proof.ComA.2
            } 0)⟩
          transcript.randomizer execution.finalRandomizerEffect,
      Nonempty
        (Ipp.Extracted.TippMippChallengeExecution.RunChallengeTrace
          data.primitive data.serialization data.proof transcript.randomizer
          execution.effect execution.finalEffect) := by
  let randomizerMessage :=
    Ipp.ShippingArkworksHash.randomizerMessage
      data.serialization data.proof
  have hmessage :
      Ipp.Extracted.ShippingVerifierComposition.decodedRandomizerMessage
          data.serialization data.input.decodedProof =
        randomizerMessage := by
    simpa [randomizerMessage] using
      (Ipp.Extracted.ShippingVerifierComposition.decodedRandomizerMessage_eq_formal
          data.serialization data.hbilinear data.baseStmt
          data.input.decodedProof data.proof transcript
          data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
          decoded)
  have hconstructed :=
    Ipp.Extracted.ShippingVerifierComposition.shipping_adapter_input_exact
      data.hbilinear data.baseStmt data.input.decodedProof data.proof
      transcript data.srs data.gammaABC data.input.publicRows
      randomizerMessage 0 data.serializeG1 data.deserializeG1
      data.serializeG2 data.deserializeG2
      decoded
  have installedTippExact :
      (Ipp.Extracted.AggregateAdapter.installRandomizer
        (Ipp.Extracted.ShippingVerifierComposition.productionAdapterInput
          data.hbilinear data.baseStmt data.proof transcript
          data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
          data.gammaABC data.input.publicRows randomizerMessage 0).combined
        transcript.randomizer).tipp_mipp =
        Ipp.Extracted.VerifyTippMipp.coreInput data.statement data.proof
          transcript data.srs.g data.srs.g_beta data.srs.h
          data.srs.h_alpha := by
    rfl
  have adapterRun :
      Ipp.Extracted.AggregateAdapter.run data.randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive data.primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          (Ipp.Bls12377.tippPairingEffect
            data.hbilinear data.tippOutcome)
          (Ipp.Bls12377.preparedPairingEffect
            data.hbilinear data.ppeOutcome)
          (Ipp.Extracted.ShippingVerifierComposition.productionAdapterInput
            data.hbilinear data.baseStmt data.proof transcript
            data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
            data.gammaABC data.input.publicRows randomizerMessage 0)
          execution.randomizerEffect execution.effect execution.tippPairing
          execution.ppePairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := execution.finalRandomizerEffect
          tipp_mipp_effect := execution.finalEffect
        }) := by
    have rawAdapter := execution.adapter
    unfold
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData.AdapterAcceptedAt
        at rawAdapter
    rw [hmessage] at rawAdapter
    simpa only [hconstructed, Result.bind_ok] using rawAdapter
  exact
    Ipp.Extracted.TippMippChallengeExecution.acceptedOperationalCalls_of_adapterRun
        data.primitive data.serialization data.statement data.proof transcript
        data.randomizerEffects
        (Ipp.Extracted.ShippingVerifierComposition.productionAdapterInput
          data.hbilinear data.baseStmt data.proof transcript
          data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
          data.gammaABC data.input.publicRows randomizerMessage 0)
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        (Ipp.Bls12377.tippPairingEffect
          data.hbilinear data.tippOutcome)
        (Ipp.Bls12377.preparedPairingEffect
          data.hbilinear data.ppeOutcome)
        execution.randomizerEffect execution.finalRandomizerEffect
        execution.effect execution.finalEffect execution.tippPairing
        execution.ppePairing
        (by rfl) installedTippExact runProjection adapterRun

/-- Exact family/context encoder selected by one production call. -/
def callEncoder
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization) :
    Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput →
      List UInt8 :=
  Ipp.ShippingArkworksHash.preimage contract data.input.family
    data.input.challengeContext

/-- One deterministic bounded challenge stage evaluated with the deployed
Blake2b function and the exact encoder selected by this production call. -/
def deployedPointSample
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (mkPoint :
      Nat →
        Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
          ArkPairingOutput)
    (acceptable : Fr → Bool) :
    Option (Fr × Nat) :=
  evalWithAnswerFn blake2b
    (Ipp.ShippingHashGame.queryDecodedPointOracle
      (callEncoder data contract) mkPoint acceptable
      data.statement.rejectionFuel 0)

/-- One stateful deployed primitive trace paired stage-by-stage with the exact
Blake2b sampler results that supply its values and retry nonces. -/
structure DeployedChallengeTrace
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (transcript : Ipp.FsTranscript μ Fr)
    (initialEffect : data.tippState) where
  effect : Nat → data.tippState
  bridgeEffect : data.tippState
  kzgEffect : data.tippState
  x0Primitive :
    data.primitive.derive_challenge initialEffect
        applications.groth16_aggregation.TippMippChallengeStage.X0
        ⟨Ipp.Extracted.TippMippAdapter.x0Message data.serialization
          transcript.randomizer data.proof.ComA.1 data.proof.ComB
          data.proof.ComA.2 data.proof.ipAb data.proof.aggC⟩ =
      .ok (.Ok transcript.x0, effect 0)
  x0Sample :
    deployedPointSample data contract blake2b
        (fun nonce => .x0
          { r := transcript.randomizer
            comA := data.proof.ComA.1
            comB := data.proof.ComB
            comC := data.proof.ComA.2
            ipAb := data.proof.ipAb
            aggC := data.proof.aggC }
          nonce)
        Ipp.nonzeroB =
      some (transcript.x0, transcript.x0Nonce)
  roundPrimitive : ∀ k (hk : k < μ),
    data.primitive.derive_challenge (effect k)
        applications.groth16_aggregation.TippMippChallengeStage.Round
        ⟨Ipp.Extracted.TippMippAdapter.roundMessage data.serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 k)
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            data.proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            data.proof.rounds (Fin.rev ⟨k, hk⟩)).2⟩ =
      .ok (.Ok (transcript.roundAnswer ⟨k, hk⟩), effect (k + 1))
  roundSample : ∀ i : Fin μ,
      deployedPointSample data contract blake2b
          (fun nonce => .round
            (transcript.roundPrev i) (data.proof.rounds i) nonce)
          Ipp.nonzeroB =
        some (transcript.roundAnswer i, transcript.roundNonce i)
  roundPrevExact : ∀ i : Fin μ,
    transcript.roundPrev i =
      Ipp.Extracted.VerifyTippMipp.priorAt
        transcript.roundAnswer transcript.x0 (i : Nat)
  bridgePrimitive :
    data.primitive.derive_challenge (effect μ)
        applications.groth16_aggregation.TippMippChallengeStage.FinalBridge
        ⟨Ipp.Extracted.TippMippAdapter.finalBridgeMessage data.serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 μ)
          (data.proof.vFinal, data.proof.wFinal)
          (data.proof.aFinal, data.proof.bFinal, data.proof.cFinal)⟩ =
      .ok (.Ok transcript.bridge, bridgeEffect)
  bridgeSample :
    deployedPointSample data contract blake2b
        (fun nonce => .bridge
          { lastRawChallenge :=
              Ipp.Extracted.VerifyTippMipp.priorAt
                transcript.roundAnswer transcript.x0 μ
            vFinal := data.proof.vFinal
            wFinal := data.proof.wFinal
            aFinal := data.proof.aFinal
            bFinal := data.proof.bFinal
            cFinal := data.proof.cFinal }
          nonce)
        Ipp.nonzeroB =
      some (transcript.bridge, transcript.bridgeNonce)
  kzgPrimitive :
    data.primitive.derive_challenge bridgeEffect
        applications.groth16_aggregation.TippMippChallengeStage.Kzg
        ⟨Ipp.Extracted.TippMippAdapter.kzgMessage data.serialization
          transcript.bridge (data.proof.vFinal, data.proof.wFinal)⟩ =
      .ok (.Ok transcript.kzg, kzgEffect)
  kzgSample :
    deployedPointSample data contract blake2b
        (fun nonce => .kzg
          { bridgeChallenge := transcript.bridge
            vFinal := data.proof.vFinal
            wFinal := data.proof.wFinal }
          nonce)
        Ipp.nonzeroB =
      some (transcript.kzg, transcript.kzgNonce)

/-- The exact extracted primitive-call trace and its execution-bound sampler
equations construct the deployed trace consumed by the shipping refinement.
This theorem adds no hash or execution premise: the Blake2b/field-decoder
postconditions and nonce identities are precisely those already recorded by
`AcceptedExecutionSamples`. -/
def DeployedChallengeTrace.ofAcceptedExecutionSamples
    {D : Type} {μ arity : Nat}
    {data : CallData D μ arity}
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    {transcript : Ipp.FsTranscript μ Fr}
    {finalRandomizerEffect : data.randomizerState}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        data.randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage data.serialization
          (.randomizer {
            comA := data.proof.ComA.1
            comB := data.proof.ComB
            comC := data.proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {initialEffect : data.tippState}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        data.primitive data.serialization data.statement data.proof
        transcript initialEffect}
    (samples :
      Ipp.Extracted.TippMippChallengeExecution.AcceptedExecutionSamples
        contract data.randomizerEffects data.input.family
        data.input.challengeContext data.statement.rejectionFuel blake2b
        data.statement data.proof transcript finalRandomizerEffect
        randomizerCall initialEffect calls) :
    DeployedChallengeTrace data contract blake2b transcript initialEffect := by
  refine {
    effect := calls.effect
    bridgeEffect := calls.effect3
    kzgEffect := calls.effect4
    x0Primitive := calls.x0
    x0Sample := ?_
    roundPrimitive := calls.round
    roundSample := ?_
    roundPrevExact := samples.roundPrev
    bridgePrimitive := calls.bridge
    bridgeSample := ?_
    kzgPrimitive := calls.kzg
    kzgSample := ?_
  }
  · simpa [deployedPointSample, callEncoder,
      Ipp.ShippingArkworksHash.deployedPointSample] using
      samples.x0AtTranscript
  · intro i
    simpa [deployedPointSample, callEncoder,
      Ipp.ShippingArkworksHash.deployedPointSample] using
      samples.roundAtTranscript i
  · simpa [deployedPointSample, callEncoder,
      Ipp.ShippingArkworksHash.deployedPointSample] using
      samples.bridgeAtTranscript
  · simpa [deployedPointSample, callEncoder,
      Ipp.ShippingArkworksHash.deployedPointSample] using
      samples.kzgAtTranscript

/-- Proposition-valued audit root for the concrete trace constructor. -/
theorem DeployedChallengeTrace.nonempty_ofAcceptedExecutionSamples
    {D : Type} {μ arity : Nat}
    {data : CallData D μ arity}
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    {transcript : Ipp.FsTranscript μ Fr}
    {finalRandomizerEffect : data.randomizerState}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        data.randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage data.serialization
          (.randomizer {
            comA := data.proof.ComA.1
            comB := data.proof.ComB
            comC := data.proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {initialEffect : data.tippState}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        data.primitive data.serialization data.statement data.proof
        transcript initialEffect}
    (samples :
      Ipp.Extracted.TippMippChallengeExecution.AcceptedExecutionSamples
        contract data.randomizerEffects data.input.family
        data.input.challengeContext data.statement.rejectionFuel blake2b
        data.statement data.proof transcript finalRandomizerEffect
        randomizerCall initialEffect calls) :
    Nonempty
      (DeployedChallengeTrace data contract blake2b transcript
        initialEffect) :=
  ⟨DeployedChallengeTrace.ofAcceptedExecutionSamples
    contract blake2b samples⟩

/-- Forgetting the paired hash equations yields exactly the primitive trace
interface consumed by the extracted adapter proof. -/
def DeployedChallengeTrace.answers
    {D : Type} {μ arity : Nat}
    {data : CallData D μ arity}
    {contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {transcript : Ipp.FsTranscript μ Fr}
    {initialEffect : data.tippState}
    (trace :
      DeployedChallengeTrace data contract blake2b transcript initialEffect) :
    Ipp.Extracted.ShippingVerifierComposition.ArkworksChallengeOracleAnswers
      data.primitive data.serialization data.proof transcript initialEffect where
  effect := trace.effect
  bridgeEffect := trace.bridgeEffect
  kzgEffect := trace.kzgEffect
  x0 := trace.x0Primitive
  round := trace.roundPrimitive
  bridge := trace.bridgePrimitive
  kzg := trace.kzgPrimitive

/-- Deterministic execution of the complete shipping challenge program against
the deployed Blake2b function. -/
def shippingRealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Fr G1]
    [AddCommGroup G2] [Module Fr G2]
    [AddCommGroup GT] [Module Fr GT]
    {μ : Nat}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (stmt : Ipp.FsStatement μ Fr G1 G2 GT)
    (proof : Ipp.Proof μ Fr G1 G2 GT) :
    ProbComp (Ipp.FsResult μ Fr G1 G2 GT) :=
  pure (evalWithAnswerFn blake2b
    (Ipp.ShippingHashGame.shippingVerifierOracle encode stmt proof))

/-- Real deployed-byte execution specialized to one routed production call. -/
def shippingRealCallVerifier
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) :
    ProbComp
      (Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput) :=
  shippingRealVerifier blake2b (callEncoder data contract)
    data.statement data.proof

/-- Exact deployed challenge boundary for one production call.  Only results
emitted by the deployed Blake2b experiment are eligible: the support witness
binds the transcript values and retry nonces to that execution before the raw
adapter result is refined.  The randomizer effect's internal retry states
remain encapsulated by the extracted adapter-run equation. -/
structure DeployedChallengePrimitiveContract
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) where
  randomizerSample :
    ∀ (output :
        Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
      (_hsupport :
        output ∈ support
          (shippingRealCallVerifier data contract blake2b))
      (_execution : RawAcceptedExecution data output.transcript),
      deployedPointSample data contract blake2b
          (fun nonce => .randomizer
            { comA := data.proof.ComA.1
              comB := data.proof.ComB
              comC := data.proof.ComA.2 }
            nonce)
          Ipp.randomizerAcceptedB =
        some
          (output.transcript.randomizer, output.transcript.randomizerNonce)
  trace :
    ∀ (output :
        Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
      (_hsupport :
        output ∈ support
          (shippingRealCallVerifier data contract blake2b))
      (execution : RawAcceptedExecution data output.transcript),
      DeployedChallengeTrace data contract blake2b output.transcript
        execution.effect

/-- Exact deployed-hash evidence recoverable from one accepted production
execution.

This is the per-execution proposition used to construct
`DeployedChallengePrimitiveContract`, whose fields quantify over supported
accepted executions but no longer quantify over unexecuted effect states.
-/
def AcceptedExecutionChallengePrimitiveContract
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (execution : RawAcceptedExecution data output.transcript) : Prop :=
  deployedPointSample data contract blake2b
      (fun nonce => .randomizer
        { comA := data.proof.ComA.1
          comB := data.proof.ComB
          comC := data.proof.ComA.2 }
        nonce)
      Ipp.randomizerAcceptedB =
      some
        (output.transcript.randomizer,
          output.transcript.randomizerNonce) ∧
    Nonempty
      (DeployedChallengeTrace data contract blake2b output.transcript
        execution.effect)

/-- Acceptance is not merely a formal verifier bit. It additionally carries
the raw routed application and concrete adapter execution for that transcript;
the event contains no formal acceptance conclusion. -/
def AcceptedCallOutput
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput) : Prop :=
  data.AcceptedAt output.transcript

/-- Formal acceptance event shared by the deterministic deployed-hash and
ideal lazy-oracle executions. -/
def FormalAcceptedCallOutput
    {D : Type} {μ arity : Nat}
    (_data : CallData D μ arity)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput) : Prop :=
  output.accept = true

/-- The ideal byte-oracle experiment counts formal verifier acceptance.

The raw production predicate is intentionally absent here: it contains the
single deterministic deployed-hash adapter execution and therefore cannot be
reused after replacing Blake2b with an independently sampled lazy oracle. -/
def AcceptedIdealCallOutput
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
          ArkPairingOutput ×
        Ipp.ShippingHashGame.Blake2bOracleSpec.QueryCache) : Prop :=
  FormalAcceptedCallOutput data output.1

def realCallAcceptance
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) : ℝ≥0∞ :=
  Pr[AcceptedCallOutput data |
    shippingRealCallVerifier data contract blake2b]

def realFormalCallAcceptance
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) : ℝ≥0∞ :=
  Pr[FormalAcceptedCallOutput data |
    shippingRealCallVerifier data contract blake2b]

def idealCallAcceptance
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization) :
    ℝ≥0∞ :=
  Pr[AcceptedIdealCallOutput data |
    Ipp.ShippingHashGame.shippingIdealVerifier
      (callEncoder data contract) data.statement data.proof]

/-- Exact operational origin of every result emitted by the ideal shipping
hash execution.  This contract does not assert acceptance: it exposes only
that the result was produced by the shipping program's fail-closed
`finalizeFsResult` constructor from an optional sampled transcript.

The closure route is a support-level corollary of
`shippingVerifierOracle_eq_finalizeFsResult_map`. -/
structure ShippingIdealResultOriginContract
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization) :
    Prop where
  resultOrigin :
    ∀ output ∈ support
        (Ipp.ShippingHashGame.shippingIdealVerifier
          (callEncoder data contract) data.statement data.proof),
      ∃ sample : Option (Ipp.FsTranscript μ Fr),
        output.1 =
          Ipp.ShippingHashGame.finalizeFsResult
            data.statement data.proof sample

/-- The ideal shipping program satisfies its exact result-origin contract.
This is a support-level consequence of the already proved program
factorization; it is not an additional execution premise. -/
theorem shippingIdeal_resultOrigin
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization) :
    ShippingIdealResultOriginContract data contract := by
  refine ⟨?_⟩
  intro output houtput
  unfold Ipp.ShippingHashGame.shippingIdealVerifier at houtput
  rw [Ipp.ShippingHashGame.shippingVerifierOracle_eq_finalizeFsResult_map
    (callEncoder data contract) data.statement data.proof] at houtput
  rw [simulateQ_map, StateT.run_map] at houtput
  rw [support_map, Set.mem_image] at houtput
  obtain ⟨source, _hsource, rfl⟩ := houtput
  exact ⟨source.1, rfl⟩

/-- Deterministic deployed-hash outputs use the same fail-closed finalizer as
the ideal program. -/
theorem shippingReal_resultOrigin
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (houtput : output ∈ support
      (shippingRealCallVerifier data contract blake2b)) :
    ∃ sample : Option (Ipp.FsTranscript μ Fr),
      output =
        Ipp.ShippingHashGame.finalizeFsResult
          data.statement data.proof sample := by
  have hresult :
      output =
        evalWithAnswerFn blake2b
          (Ipp.ShippingHashGame.shippingVerifierOracle
            (callEncoder data contract) data.statement data.proof) := by
    simpa [shippingRealCallVerifier, shippingRealVerifier] using houtput
  refine
    ⟨evalWithAnswerFn blake2b
      (Ipp.ShippingHashGame.shippingTranscriptOptionOracle
        (callEncoder data contract) data.statement data.proof), ?_⟩
  rw [hresult,
    Ipp.ShippingHashGame.shippingVerifierOracle_eq_finalizeFsResult_map,
    evalWithAnswerFn_map]

/-- A raw accepted production execution rules out every fail-closed `none`
branch of the deterministic byte program and identifies the sampled
transcript with the transcript returned by the call. -/
theorem shippingReal_transcriptOption_eq_some
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (houtput : output ∈ support
      (shippingRealCallVerifier data contract blake2b))
    (execution : RawAcceptedExecution data output.transcript) :
    evalWithAnswerFn blake2b
        (Ipp.ShippingHashGame.shippingTranscriptOptionOracle
          (callEncoder data contract) data.statement data.proof) =
      some output.transcript := by
  have hresult :
      output =
        evalWithAnswerFn blake2b
          (Ipp.ShippingHashGame.shippingVerifierOracle
            (callEncoder data contract) data.statement data.proof) := by
    simpa [shippingRealCallVerifier, shippingRealVerifier] using houtput
  rw [Ipp.ShippingHashGame.shippingVerifierOracle_eq_finalizeFsResult_map,
    evalWithAnswerFn_map] at hresult
  generalize hsample :
      evalWithAnswerFn blake2b
        (Ipp.ShippingHashGame.shippingTranscriptOptionOracle
          (callEncoder data contract) data.statement data.proof) =
        sample at hresult ⊢
  cases sample with
  | none =>
      have hzero : output.transcript.randomizer = 0 := by
        simpa [Ipp.ShippingHashGame.finalizeFsResult,
          Ipp.rejectedResult] using
            congrArg
              (fun result => result.transcript.randomizer)
              hresult
      exact False.elim (execution.randomizer_nonzero hzero)
  | some transcript =>
      have htranscript : output.transcript = transcript := by
        simpa [Ipp.ShippingHashGame.finalizeFsResult] using
          congrArg (fun result => result.transcript) hresult
      simpa [htranscript]

/-- Every raw accepted production call carries the complete deterministic
randomizer/X0/round/bridge/KZG byte-sampler execution that generated its
transcript. -/
theorem shippingReal_transcriptExecution
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (houtput : output ∈ support
      (shippingRealCallVerifier data contract blake2b))
    (execution : RawAcceptedExecution data output.transcript) :
    Ipp.ShippingHashExecutionTrace.TranscriptExecution
      blake2b (callEncoder data contract) data.statement data.proof
        output.transcript :=
  Ipp.ShippingHashExecutionTrace.transcriptExecution_of_eval_eq_some
    blake2b (callEncoder data contract) data.statement data.proof
      output.transcript
      (shippingReal_transcriptOption_eq_some data contract blake2b output
        houtput execution)

/-- One raw accepted adapter run, the deterministic
`shippingTranscriptOptionOracle` execution that emitted its transcript, and
the exact deployed Blake2b/Arkworks field-decoder postconditions construct all
deployed challenge evidence at the run's real effect state.

No transcript equality or formal acceptance predicate is a premise.  The
transcript execution is derived from support of the deterministic shipping
program; the randomizer and TIPP call records are recovered from the accepted
adapter equation. -/
theorem acceptedExecution_challengePrimitiveContract
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (randomizerSemantics :
      Ipp.ShippingArkworksHash.Blake2bRandomizerEffectPostcondition
        contract data.randomizerEffects data.input.family
        data.input.challengeContext data.statement.rejectionFuel blake2b)
    (tippSemantics :
      Ipp.ShippingArkworksHash.Blake2bTippEffectPostcondition
        contract data.input.family data.input.challengeContext
        data.statement.rejectionFuel blake2b)
    (refinement : RefinementContracts data)
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (hsupport :
      output ∈ support
        (shippingRealCallVerifier data contract blake2b))
    (execution : RawAcceptedExecution data output.transcript)
    (runProjection :
      Ipp.Extracted.TippMippChallengeExecution.AcceptedRunCallProjection
        data.primitive data.serialization data.statement data.proof
        output.transcript.randomizer
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        (Ipp.Bls12377.tippPairingEffect
          data.hbilinear data.tippOutcome)
        execution.tippPairing execution.effect execution.finalEffect) :
    AcceptedExecutionChallengePrimitiveContract
      data contract blake2b output execution := by
  have transcriptExecution :=
    shippingReal_transcriptExecution
      data contract blake2b output hsupport execution
  obtain ⟨randomizerCall, ⟨run⟩⟩ :=
    execution.operationalCalls
      (refinement.external.decoded output.transcript execution)
      runProjection
  have admissible :=
    refinement.external.challengeAdmissible output.transcript execution
  let calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        data.primitive data.serialization data.statement data.proof
        output.transcript execution.effect :=
    Ipp.Extracted.TippMippChallengeExecution.arkworksTrace_of_runChallengeTrace_and_transcriptExecution
        contract data.input.family data.input.challengeContext
        data.statement.rejectionFuel blake2b tippSemantics
        data.statement data.proof output.transcript transcriptExecution
        execution.effect execution.finalEffect run
        admissible.randomizer admissible.x0 admissible.round
        admissible.bridge admissible.kzg
  let samples :=
    Ipp.Extracted.TippMippChallengeExecution.acceptedExecutionSamples_of_transcriptExecution
        contract data.randomizerEffects data.input.family
        data.input.challengeContext data.statement.rejectionFuel blake2b
        randomizerSemantics tippSemantics data.statement data.proof
        output.transcript transcriptExecution
        execution.finalRandomizerEffect randomizerCall execution.effect calls
  constructor
  · simpa [deployedPointSample, callEncoder,
      Ipp.ShippingArkworksHash.deployedPointSample] using
      samples.randomizerAtTranscript
  · exact
      DeployedChallengeTrace.nonempty_ofAcceptedExecutionSamples
        contract blake2b samples

/-- The deployed challenge contract follows uniformly for every supported raw
accepted execution once the two exact hash/decoder postconditions and the
accepted-run call projection are supplied.

The only choice below forgets concrete effect-state witnesses behind
`Nonempty`; it does not choose a transcript or acceptance result. -/
theorem deployedChallengePrimitiveContract_of_postconditions
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (randomizerSemantics :
      Ipp.ShippingArkworksHash.Blake2bRandomizerEffectPostcondition
        contract data.randomizerEffects data.input.family
        data.input.challengeContext data.statement.rejectionFuel blake2b)
    (tippSemantics :
      Ipp.ShippingArkworksHash.Blake2bTippEffectPostcondition
        contract data.input.family data.input.challengeContext
        data.statement.rejectionFuel blake2b)
    (refinement : RefinementContracts data)
    (runProjection :
      ∀ (output :
          Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
            ArkPairingOutput)
        (_hsupport :
          output ∈ support
            (shippingRealCallVerifier data contract blake2b))
        (execution : RawAcceptedExecution data output.transcript),
        Ipp.Extracted.TippMippChallengeExecution.AcceptedRunCallProjection
          data.primitive data.serialization data.statement data.proof
          output.transcript.randomizer
          data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
          (Ipp.Bls12377.tippPairingEffect
            data.hbilinear data.tippOutcome)
          execution.tippPairing execution.effect execution.finalEffect) :
    DeployedChallengePrimitiveContract data contract blake2b := by
  refine {
    randomizerSample := ?_
    trace := ?_
  }
  · intro output hsupport execution
    exact
      (acceptedExecution_challengePrimitiveContract
        data contract blake2b randomizerSemantics tippSemantics refinement
        output hsupport execution
        (runProjection output hsupport execution)).1
  · intro output hsupport execution
    exact Classical.choice
      (acceptedExecution_challengePrimitiveContract
        data contract blake2b randomizerSemantics tippSemantics refinement
        output hsupport execution
        (runProjection output hsupport execution)).2

/-- Three concrete SHA-256 collision sites: VK digest, statement digest, and
challenge-context derivation. -/
def shaBad
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (intended : Ipp.ShippingV1.ShippingV1Input μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)) : Prop :=
  Ipp.ShippingV1.ShippingShaCollision data.contract intended data.input

/-- The security-relevant portion of two shipping inputs is identical.
Proof bytes are deliberately excluded: soundness quantifies over the
attacker-supplied proof while binding its verification to this statement. -/
def SameBoundStatementInput
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (left right :
      Ipp.ShippingV1.ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  left.serializedVk = right.serializedVk ∧
    left.publicClaim = right.publicClaim ∧
    left.canonicalStatementBytes = right.canonicalStatementBytes ∧
    left.statementDigest = right.statementDigest ∧
    left.challengeContext = right.challengeContext

attribute [local instance] Classical.propDecidable

/-- Probability mass of a fixed bad event in the fixed-input experiment. An
outer adversary experiment can instantiate the same interface with its bad
event probability instead. -/
def badMass (bad : Prop) : ℝ≥0∞ :=
  if bad then 1 else 0

/-- Computational SHA-256 premise for the explicit collision event. -/
structure Sha256CollisionSecurity (bad : Prop) where
  epsilonSha256 : ℝ≥0∞
  bad_le : badMass bad ≤ epsilonSha256

/-- Computational Blake2b-to-ROM premise over exact named experiments and
events. The SHA-bad branch is excluded here and charged separately. -/
structure Blake2bRomSecurity
    {Real Ideal : Type}
    (realExperiment : ProbComp Real)
    (realEvent : Real → Prop)
    (idealExperiment : ProbComp Ideal)
    (idealEvent : Ideal → Prop)
    (shaCollision : Prop) where
  epsilonBlake2bRom : ℝ≥0∞
  good_real_le_ideal_add :
    (if shaCollision then 0 else Pr[realEvent | realExperiment]) ≤
      Pr[idealEvent | idealExperiment] + epsilonBlake2bRom

/-- Explicit bad-event accounting. This lemma contains no arbitrary
`realAccept` scalar and no untyped coupling to an unrelated experiment. -/
theorem real_acceptance_le_ideal_add_explicit_hash_losses
    {Real Ideal : Type}
    (realExperiment : ProbComp Real)
    (realEvent : Real → Prop)
    (idealExperiment : ProbComp Ideal)
    (idealEvent : Ideal → Prop)
    (bad : Prop)
    (sha : Sha256CollisionSecurity bad)
    (rom : Blake2bRomSecurity realExperiment realEvent
      idealExperiment idealEvent bad) :
    Pr[realEvent | realExperiment] ≤
      Pr[idealEvent | idealExperiment] +
        sha.epsilonSha256 + rom.epsilonBlake2bRom := by
  classical
  by_cases hbad : bad
  · have hone : (1 : ℝ≥0∞) ≤ sha.epsilonSha256 := by
      simpa [badMass, hbad] using sha.bad_le
    calc
      Pr[realEvent | realExperiment] ≤ 1 := probEvent_le_one
      _ ≤ sha.epsilonSha256 := hone
      _ ≤ Pr[idealEvent | idealExperiment] +
          sha.epsilonSha256 + rom.epsilonBlake2bRom := by
            simpa using
              (add_le_add
                (add_le_add
                  (bot_le :
                    (0 : ℝ≥0∞) ≤
                      Pr[idealEvent | idealExperiment])
                  (le_refl sha.epsilonSha256))
                (bot_le :
                  (0 : ℝ≥0∞) ≤ rom.epsilonBlake2bRom))
  · have hrom :
        Pr[realEvent | realExperiment] ≤
          Pr[idealEvent | idealExperiment] +
            rom.epsilonBlake2bRom := by
      simpa [hbad] using rom.good_real_le_ideal_add
    calc
      Pr[realEvent | realExperiment] ≤
          Pr[idealEvent | idealExperiment] +
            rom.epsilonBlake2bRom := hrom
      _ ≤ Pr[idealEvent | idealExperiment] +
          sha.epsilonSha256 + rom.epsilonBlake2bRom := by
            simpa using
              (add_le_add
                (add_le_add
                  (le_refl
                    (Pr[idealEvent | idealExperiment]))
                  (bot_le :
                    (0 : ℝ≥0∞) ≤ sha.epsilonSha256))
                (le_refl rom.epsilonBlake2bRom))

/-- The ideal call event is exactly the formal ideal-verifier accept bit. -/
theorem idealCallAcceptance_le_shippingIdeal
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization) :
    idealCallAcceptance data contract ≤
      Pr[fun output => output.1.accept = true |
        Ipp.ShippingHashGame.shippingIdealVerifier
          (callEncoder data contract) data.statement data.proof] := by
  exact le_rfl

/-- Every event counted by the real experiment is one exact application call,
one exact formal statement/proof, and one v1-accepted transcript. -/
theorem acceptedCallOutput_refines_shipping_v1
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (refinement : RefinementContracts data)
    (deployed :
      DeployedChallengePrimitiveContract data contract blake2b)
    {output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput}
    (hsupport :
      output ∈ support
        (shippingRealCallVerifier data contract blake2b))
    (haccepted : AcceptedCallOutput data output) :
    data.statement = data.projection.statementOf data.input.publicClaim ∧
    data.proof = data.projection.proofOf data.input.decodedProof ∧
      Ipp.SnarkPackV1.Accepts data.statement data.proof output.transcript ∧
      Ipp.ShippingV1.ValidCounts data.input ∧
      Ipp.ShippingV1.RealPrefixExact data.input ∧
      Ipp.ShippingV1.RepeatFinalPadding data.input := by
  rcases haccepted with ⟨rawExecution⟩
  have view :=
    rawExecution.refines refinement
      (deployed.trace output hsupport rawExecution).answers
  exact ⟨view.represents.1, view.represents.2,
    view.accepts, view.app.validCounts,
    data.contract.realPrefixExact data.input refinement.external.supported,
    view.app.repeatFinalPadding⟩

/-- Deterministic adapter refinement is discharged before the Blake2b ROM
replacement: every raw accepted production execution counted by the real
experiment sets the formal verifier's accept bit. -/
theorem realCallAcceptance_le_realFormalCallAcceptance
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (refinement : RefinementContracts data)
    (deployed :
      DeployedChallengePrimitiveContract data contract blake2b) :
    realCallAcceptance data contract blake2b ≤
      realFormalCallAcceptance data contract blake2b := by
  classical
  apply probEvent_mono
  intro output hsupport haccepted
  obtain ⟨sample, hresult⟩ :=
    shippingReal_resultOrigin data contract blake2b output hsupport
  have hv1 :=
    (acceptedCallOutput_refines_shipping_v1
      data contract blake2b refinement deployed hsupport haccepted).2.2.1
  cases sample with
  | none =>
      have hzero : output.transcript.randomizer = 0 := by
        simpa [Ipp.ShippingHashGame.finalizeFsResult,
          Ipp.rejectedResult] using
            congrArg
              (fun result => result.transcript.randomizer)
              hresult
      rcases haccepted with ⟨rawExecution⟩
      exact False.elim
        ((refinement.external.challengeAdmissible
          output.transcript rawExecution).randomizer hzero)
  | some transcript =>
      have hfs :
          Ipp.FsAccepts data.statement data.proof transcript := by
        simpa [Ipp.SnarkPackV1.Accepts, hresult,
          Ipp.ShippingHashGame.finalizeFsResult] using hv1
      rw [hresult]
      simp [FormalAcceptedCallOutput,
        Ipp.ShippingHashGame.finalizeFsResult, hfs]

/-- VK substitution, canonical-statement substitution, or challenge-context
aliasing on an accepted call is exactly the SHA bad event charged below. -/
theorem accepted_call_binding_alias_implies_shaBad
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data)
    (intended : Ipp.ShippingV1.ShippingV1Input μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D))
    (hintended : data.contract.supported intended)
    {output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput}
    (haccepted : AcceptedCallOutput data output)
    (halias : Ipp.ShippingV1.ShippingBindingAlias intended data.input) :
    shaBad data intended :=
  Ipp.ShippingV1.shipping_binding_alias_implies_sha_collision
    data.contract intended data.input hintended
      refinement.external.supported halias

/-- An accepted call whose authenticated statement digest matches the
intended request either verifies that exact statement input or exposes one of
the SHA-256 collisions charged by the real experiment. This does not assume
away substitution: every unequal VK or ordered public claim is converted to
the explicit bad event. -/
theorem accepted_call_binds_intended_or_shaBad
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data)
    (intended : Ipp.ShippingV1.ShippingV1Input μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D))
    (hintended : data.contract.supported intended)
    (hstatementDigest :
      intended.statementDigest = data.input.statementDigest)
    {output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput}
    (haccepted : AcceptedCallOutput data output) :
    (SameBoundStatementInput intended data.input ∧
      data.statement =
        data.projection.statementOf intended.publicClaim) ∨
      shaBad data intended := by
  by_cases hclaim : intended.publicClaim = data.input.publicClaim
  · by_cases hvk : intended.serializedVk = data.input.serializedVk
    · have hcanonical :
          intended.canonicalStatementBytes =
            data.input.canonicalStatementBytes := by
        calc
          intended.canonicalStatementBytes =
              data.contract.encodePublicClaim intended.publicClaim :=
            data.contract.canonicalStatementExact intended hintended
          _ = data.contract.encodePublicClaim data.input.publicClaim :=
            congrArg data.contract.encodePublicClaim hclaim
          _ = data.input.canonicalStatementBytes :=
            (data.contract.canonicalStatementExact
              data.input refinement.external.supported).symm
      have hcontextBytes :
          List.ofFn intended.challengeContext =
            List.ofFn data.input.challengeContext := by
        rw [data.contract.challengeContextExact intended hintended,
          data.contract.challengeContextExact
            data.input refinement.external.supported,
          hstatementDigest]
      have hcontext :
          intended.challengeContext = data.input.challengeContext :=
        List.ofFn_injective hcontextBytes
      left
      refine
        ⟨⟨hvk, hclaim, hcanonical, hstatementDigest, hcontext⟩, ?_⟩
      calc
        data.statement =
            data.projection.statementOf data.input.publicClaim :=
          refinement.external.represents.1
        _ = data.projection.statementOf intended.publicClaim :=
          congrArg data.projection.statementOf hclaim.symm
    · right
      apply accepted_call_binding_alias_implies_shaBad
        data refinement intended hintended haccepted
      left
      refine ⟨hvk, ?_⟩
      exact congrArg (fun claim => claim.vkDigest) hclaim
  · right
    apply accepted_call_binding_alias_implies_shaBad
      data refinement intended hintended haccepted
    exact Or.inr (Or.inl ⟨hclaim, hstatementDigest⟩)

/-- The concrete production-call acceptance probability is bounded by the
Fiat--Shamir game for the independently intended statement, the exact
512-bit modular-reduction loss, and the two separate computational hash
advantages. On the SHA-bad branch the explicit SHA advantage pays for the
whole real acceptance event; otherwise canonical binding rewrites the actual
statement to the intended one. -/
theorem shippingRealCall_acceptance_le_fsProbComp
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    [SampleableType Ipp.ShippingHashGame.DigestBlock]
    [SampleableType Ipp.ShippingHashGame.FieldBlock]
    [DecidableEq g1PrimeSubgroup]
    [DecidableEq g2PrimeSubgroup]
    [DecidableEq ArkPairingOutput]
    [Finite
      (Ipp.ShippingHashGame.ChallengeBase Fr
        g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt
          g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBytes)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Fr
          g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBlock)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt
          g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput → Fr)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Fr
          g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput →
        Ipp.ShippingHashGame.FieldBlock)]
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (refinement : RefinementContracts data)
    (deployed :
      DeployedChallengePrimitiveContract data contract blake2b)
    (intended : Ipp.ShippingV1.ShippingV1Input μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D))
    (hintended : data.contract.supported intended)
    (hstatementDigest :
      intended.statementDigest = data.input.statementDigest)
    (hfuel : data.statement.rejectionFuel =
      Ipp.ShippingHashGame.rejectionFuel)
    (sha : Sha256CollisionSecurity (shaBad data intended))
    (rom : Blake2bRomSecurity
      (shippingRealCallVerifier data contract blake2b)
      (FormalAcceptedCallOutput data)
      (Ipp.ShippingHashGame.shippingIdealVerifier
        (callEncoder data contract) data.statement data.proof)
      (AcceptedIdealCallOutput data)
      (shaBad data intended)) :
    realCallAcceptance data contract blake2b ≤
      Pr[Ipp.Accepted |
        Ipp.fsProbComp
          (data.projection.statementOf intended.publicClaim)
          (pure data.proof :
            OracleComp
              (Ipp.FsSourceSpec Fr
                g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
              (Ipp.Proof μ Fr
                g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput))] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel) +
        sha.epsilonSha256 + rom.epsilonBlake2bRom := by
  have hformal :=
    real_acceptance_le_ideal_add_explicit_hash_losses
      (shippingRealCallVerifier data contract blake2b)
      (FormalAcceptedCallOutput data)
      (Ipp.ShippingHashGame.shippingIdealVerifier
        (callEncoder data contract) data.statement data.proof)
      (AcceptedIdealCallOutput data)
      (shaBad data intended) sha rom
  have hraw :=
    realCallAcceptance_le_realFormalCallAcceptance
      data contract blake2b refinement deployed
  have hreal :
      realCallAcceptance data contract blake2b ≤
        idealCallAcceptance data contract +
          sha.epsilonSha256 + rom.epsilonBlake2bRom :=
    le_trans hraw hformal
  have hideal :=
    idealCallAcceptance_le_shippingIdeal
      data contract
  have hfs :=
    Ipp.ShippingHashGame.shippingIdeal_acceptance_le_fsProbComp_add_modReduction
      (callEncoder data contract)
      (Ipp.ShippingArkworksHash.pointAttemptEncode_preimage_injective
        contract data.input.family data.input.challengeContext)
      data.statement data.proof hfuel
  have hactual :
      realCallAcceptance data contract blake2b ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp data.statement
            (pure data.proof :
              OracleComp
                (Ipp.FsSourceSpec Fr
                  g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
                (Ipp.Proof μ Fr
                  g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel) +
          sha.epsilonSha256 + rom.epsilonBlake2bRom := by
    calc
      realCallAcceptance data contract blake2b ≤
        idealCallAcceptance data contract +
          sha.epsilonSha256 + rom.epsilonBlake2bRom := hreal
      _ ≤
        Pr[fun output => output.1.accept = true |
          Ipp.ShippingHashGame.shippingIdealVerifier
            (callEncoder data contract) data.statement data.proof] +
          sha.epsilonSha256 + rom.epsilonBlake2bRom := by
            gcongr
      _ ≤
        (Pr[Ipp.Accepted |
          Ipp.fsProbComp data.statement
            (pure data.proof :
              OracleComp
                (Ipp.FsSourceSpec Fr
                  g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
                (Ipp.Proof μ Fr
                  g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel)) +
          sha.epsilonSha256 + rom.epsilonBlake2bRom := by
            gcongr
  by_cases hbad : shaBad data intended
  · have hone : (1 : ℝ≥0∞) ≤ sha.epsilonSha256 := by
      simpa [badMass, hbad] using sha.bad_le
    calc
      realCallAcceptance data contract blake2b ≤ 1 := probEvent_le_one
      _ ≤ sha.epsilonSha256 := hone
      _ ≤
          Pr[Ipp.Accepted |
            Ipp.fsProbComp
              (data.projection.statementOf intended.publicClaim)
              (pure data.proof :
                OracleComp
                  (Ipp.FsSourceSpec Fr
                    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
                  (Ipp.Proof μ Fr
                    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput))] +
            Ipp.ShippingScalarReduction.modReductionBudget
              ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel) +
            sha.epsilonSha256 + rom.epsilonBlake2bRom := by
              simpa using
                (add_le_add
                  (add_le_add
                    (add_le_add
                      (bot_le :
                        (0 : ℝ≥0∞) ≤
                          Pr[Ipp.Accepted |
                            Ipp.fsProbComp
                              (data.projection.statementOf
                                intended.publicClaim)
                              (pure data.proof :
                                OracleComp
                                  (Ipp.FsSourceSpec Fr
                                    g1PrimeSubgroup g2PrimeSubgroup
                                    ArkPairingOutput)
                                  (Ipp.Proof μ Fr
                                    g1PrimeSubgroup g2PrimeSubgroup
                                    ArkPairingOutput))])
                      (bot_le :
                        (0 : ℝ≥0∞) ≤
                          Ipp.ShippingScalarReduction.modReductionBudget
                            ((μ + 4) *
                              Ipp.ShippingHashGame.rejectionFuel)))
                    (le_refl sha.epsilonSha256))
                  (bot_le :
                    (0 : ℝ≥0∞) ≤ rom.epsilonBlake2bRom))
  · have hstatementCollisionFree :
        ¬Ipp.ShippingV1.Sha256Collision data.contract.sha256
          (Ipp.ShippingV1.statementDigestPreimage
            intended.canonicalStatementBytes)
          (Ipp.ShippingV1.statementDigestPreimage
            data.input.canonicalStatementBytes) := by
      intro hcollision
      exact hbad (Or.inr (Or.inl hcollision))
    have hclaim :
        intended.publicClaim = data.input.publicClaim :=
      Ipp.ShippingV1.shipping_statement_binds_public_claim
        data.contract intended data.input hintended
          refinement.external.supported
        hstatementDigest hstatementCollisionFree
    have hstatement :
        data.statement =
          data.projection.statementOf intended.publicClaim := by
      calc
        data.statement =
            data.projection.statementOf data.input.publicClaim :=
          refinement.external.represents.1
        _ = data.projection.statementOf intended.publicClaim :=
          congrArg data.projection.statementOf hclaim.symm
    simpa only [hstatement] using hactual

#print axioms real_acceptance_le_ideal_add_explicit_hash_losses
#print axioms RawAcceptedExecution.randomizer_nonzero
#print axioms RawAcceptedExecution.operationalCalls
#print axioms shippingReal_transcriptOption_eq_some
#print axioms shippingReal_transcriptExecution
#print axioms DeployedChallengeTrace.nonempty_ofAcceptedExecutionSamples
#print axioms DeployedChallengeTrace.answers
#print axioms acceptedExecution_challengePrimitiveContract
#print axioms deployedChallengePrimitiveContract_of_postconditions
#print axioms shippingIdeal_resultOrigin
#print axioms idealCallAcceptance_le_shippingIdeal
#print axioms acceptedCallOutput_refines_shipping_v1
#print axioms accepted_call_binding_alias_implies_shaBad
#print axioms accepted_call_binds_intended_or_shaBad
#print axioms shippingRealCall_acceptance_le_fsProbComp

end

end Ipp.ShippingRealVerifier
