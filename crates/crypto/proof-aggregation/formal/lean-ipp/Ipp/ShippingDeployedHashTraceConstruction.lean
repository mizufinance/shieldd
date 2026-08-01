import Ipp.Extracted.TippMippAcceptedRunProjection
import Ipp.ShippingRealVerifier

/-!
Construction of the deployed challenge trace from an accepted shipping call.

Only the strict aggregate-proof decoder postcondition remains external here;
accepted TIPP/MIPP challenge calls are recovered from extracted control flow.
-/

open OracleSpec

namespace Ipp.ShippingDeployedHashTraceConstruction

noncomputable section

open Ipp.Bls12377
open ark_ip_proofs
open Ipp.ShippingRealVerifier

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

/-- One accepted execution needs only its exact decoder postcondition once
the extracted TIPP/MIPP control flow supplies the accepted-call projection. -/
theorem acceptedExecution_challengePrimitiveContract_of_decoded
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
    (output :
      Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (hsupport :
      output ∈ support
        (shippingRealCallVerifier data contract blake2b))
    (execution : RawAcceptedExecution data output.transcript)
    (decoded :
      Ipp.Extracted.ShippingVerifierComposition.ArkworksDecodedProofContract
        data.hbilinear data.baseStmt data.input.decodedProof data.proof
        output.transcript data.srs.g data.srs.g_beta data.srs.h
        data.srs.h_alpha)
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
    execution.operationalCalls decoded runProjection
  let calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        data.primitive data.serialization data.statement data.proof
        output.transcript execution.effect :=
    Ipp.Extracted.TippMippChallengeExecution.arkworksTrace_of_runChallengeTrace_and_transcriptExecution
      contract data.input.family data.input.challengeContext
      blake2b data.statement tippSemantics data.proof
      output.transcript transcriptExecution
      execution.effect execution.finalEffect run
  let samples :=
    Ipp.Extracted.TippMippChallengeExecution.acceptedExecutionSamples_of_transcriptExecution
      contract data.randomizerEffects data.input.family
      data.input.challengeContext blake2b data.statement
      randomizerSemantics tippSemantics data.proof
      output.transcript transcriptExecution
      execution.finalRandomizerEffect randomizerCall execution.effect calls
  constructor
  · simpa [deployedPointSample, callEncoder,
      Ipp.ShippingArkworksHash.deployedPointSample] using
      samples.randomizerAtTranscript
  · exact
      DeployedChallengeTrace.nonempty_ofAcceptedExecutionSamples
        contract blake2b samples

/-- Exact deployed-hash trace construction for every supported accepted
shipping execution. No trace or transcript equation is supplied by callers. -/
def deployed_hash_trace_construction
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
    (decoded :
      ∀ (output :
          Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup
            ArkPairingOutput)
        (_hsupport :
          output ∈ support
            (shippingRealCallVerifier data contract blake2b))
        (execution : RawAcceptedExecution data output.transcript),
        Ipp.Extracted.ShippingVerifierComposition.ArkworksDecodedProofContract
          data.hbilinear data.baseStmt data.input.decodedProof data.proof
          output.transcript data.srs.g data.srs.g_beta data.srs.h
          data.srs.h_alpha) :
    DeployedChallengePrimitiveContract data contract blake2b := by
  refine {
    randomizerSample := ?_
    trace := ?_
  }
  · intro output hsupport execution
    let runProjection :=
      Ipp.Extracted.TippMippAcceptedRunProjection.acceptedRunCallProjection
        data.primitive data.serialization data.statement data.proof
        output.transcript.randomizer
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        (Ipp.Bls12377.tippPairingEffect
          data.hbilinear data.tippOutcome)
        execution.tippPairing execution.effect execution.finalEffect
    exact
      (acceptedExecution_challengePrimitiveContract_of_decoded
        data contract blake2b randomizerSemantics tippSemantics
        output hsupport execution (decoded output hsupport execution)
        runProjection).1
  · intro output hsupport execution
    let runProjection :=
      Ipp.Extracted.TippMippAcceptedRunProjection.acceptedRunCallProjection
        data.primitive data.serialization data.statement data.proof
        output.transcript.randomizer
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        (Ipp.Bls12377.tippPairingEffect
          data.hbilinear data.tippOutcome)
        execution.tippPairing execution.effect execution.finalEffect
    exact Classical.choice
      (acceptedExecution_challengePrimitiveContract_of_decoded
        data contract blake2b randomizerSemantics tippSemantics
        output hsupport execution (decoded output hsupport execution)
        runProjection).2

#print axioms acceptedExecution_challengePrimitiveContract_of_decoded
#print axioms deployed_hash_trace_construction

end

end Ipp.ShippingDeployedHashTraceConstruction
