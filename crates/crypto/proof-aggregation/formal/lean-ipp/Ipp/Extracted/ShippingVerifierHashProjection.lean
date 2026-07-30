import Ipp.Extracted.TippMippChallengeExecution
import Ipp.ShippingHashExecutionTrace

/-!
Coupling between one execution-produced shipping transcript and the exact
randomizer/TIPP calls retained by the extracted verifier.

This layer contains no acceptance premise.  The remaining generated obligation
is to recover `AcceptedRandomizerCall` and `ArkworksTippChallengeTrace` from the
successful `run_shipping_verifier_semantic_core` equation.
-/

namespace Ipp.Extracted.TippMippChallengeExecution

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Bls12377

noncomputable section

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

private theorem nonce_eq_of_same_sample
    {value : Fr} {left right : Nat}
    {sample : Option (Fr × Nat)}
    (hleft : sample = some (value, left))
    (hright : sample = some (value, right)) :
    left = right := by
  have hpairs :
      (value, left) = (value, right) :=
    Option.some.inj (hleft.symm.trans hright)
  exact congrArg Prod.snd hpairs

private theorem executionPrior_eq_extractedPrior
    {n : Nat} (raw : Fin n → Fr) (initial : Fr) (k : Nat) :
    Ipp.ShippingHashExecutionTrace.priorAt raw initial k =
      Ipp.Extracted.VerifyTippMipp.priorAt raw initial k := by
  cases k <;> rfl

/-- Exact deterministic-oracle execution fixes the nonce choices made by the
deployed primitive postconditions.

The source-side inputs are only operational call equations:
`AcceptedRandomizerCall` and `ArkworksTippChallengeTrace`.  The formal
transcript is not equated to a caller-selected source transcript; it comes from
`shippingTranscriptOptionOracle`, and sampler determinism proves every nonce
identity. -/
theorem acceptedExecutionSamples_of_transcriptExecution
    {RFX FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (randomizerSemantics :
      Ipp.ShippingArkworksHash.Blake2bRandomizerEffectPostcondition
        contract randomizerEffects family context fuel blake2b)
    (tippSemantics :
      Ipp.ShippingArkworksHash.Blake2bTippEffectPostcondition
        contract family context fuel blake2b)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (transcriptExecution :
      Ipp.ShippingHashExecutionTrace.TranscriptExecution blake2b
        (Ipp.ShippingArkworksHash.preimage contract family context)
        stmt proof transcript)
    (finalRandomizerEffect : RFX)
    (randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect)
    (effect0 : FX)
    (calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0) :
    AcceptedExecutionSamples contract randomizerEffects family context fuel
      blake2b stmt proof transcript finalRandomizerEffect randomizerCall
      effect0 calls := by
  let tippSamples :=
    sampleEquations_of_calls contract family context fuel blake2b
      tippSemantics stmt proof transcript effect0 calls
  have hrandomizerSource :=
    randomizerSemantics.acceptedCall
      { comA := proof.ComA.1
        comB := proof.ComB
        comC := proof.ComA.2 }
      transcript.randomizer finalRandomizerEffect randomizerCall
  have hrandomizerOracle :
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } nonce)
          Ipp.randomizerAcceptedB =
        some (transcript.randomizer, transcript.randomizerNonce) := by
    simpa [Ipp.ShippingArkworksHash.deployedPointSample,
      Ipp.ShippingHashExecutionTrace.pointSample] using
      transcriptExecution.randomizer
  have hrandomizerNonce :
      randomizerCall.nonce.val = transcript.randomizerNonce :=
    nonce_eq_of_same_sample hrandomizerSource hrandomizerOracle
  have hroundPrev : ∀ i,
      transcript.roundPrev i =
        Ipp.Extracted.VerifyTippMipp.priorAt
          transcript.roundAnswer transcript.x0 i.val := by
    intro i
    calc
      transcript.roundPrev i =
          Ipp.ShippingHashExecutionTrace.priorAt
            transcript.roundAnswer transcript.x0 i.val :=
        transcriptExecution.roundPrev i
      _ = Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 i.val :=
        executionPrior_eq_extractedPrior
          transcript.roundAnswer transcript.x0 i.val
  have hx0Oracle :
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .x0 {
            r := transcript.randomizer
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
            ipAb := proof.ipAb
            aggC := proof.aggC
          } nonce)
          Ipp.nonzeroB =
        some (transcript.x0, transcript.x0Nonce) := by
    simpa [Ipp.ShippingArkworksHash.deployedPointSample,
      Ipp.ShippingHashExecutionTrace.pointSample] using
      transcriptExecution.x0
  have hx0Nonce : tippSamples.x0Nonce = transcript.x0Nonce :=
    nonce_eq_of_same_sample tippSamples.x0 hx0Oracle
  have hroundNonce : ∀ i,
      tippSamples.roundNonce i = transcript.roundNonce i := by
    intro i
    have hroundOracle := transcriptExecution.round i
    rw [hroundPrev i] at hroundOracle
    have hroundOracle' :
        Ipp.ShippingArkworksHash.deployedPointSample
            contract family context fuel blake2b
            (fun nonce => .round
              (Ipp.Extracted.VerifyTippMipp.priorAt
                transcript.roundAnswer transcript.x0 i.val)
              (proof.rounds i) nonce)
            Ipp.nonzeroB =
          some (transcript.roundAnswer i, transcript.roundNonce i) := by
      simpa [Ipp.ShippingArkworksHash.deployedPointSample,
        Ipp.ShippingHashExecutionTrace.pointSample] using hroundOracle
    exact nonce_eq_of_same_sample (tippSamples.round i) hroundOracle'
  have hbridgeOracle := transcriptExecution.bridge
  rw [executionPrior_eq_extractedPrior
    transcript.roundAnswer transcript.x0 n] at hbridgeOracle
  have hbridgeOracle' :
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .bridge {
            lastRawChallenge :=
              Ipp.Extracted.VerifyTippMipp.priorAt
                transcript.roundAnswer transcript.x0 n
            vFinal := proof.vFinal
            wFinal := proof.wFinal
            aFinal := proof.aFinal
            bFinal := proof.bFinal
            cFinal := proof.cFinal
          } nonce)
          Ipp.nonzeroB =
        some (transcript.bridge, transcript.bridgeNonce) := by
    simpa [Ipp.ShippingArkworksHash.deployedPointSample,
      Ipp.ShippingHashExecutionTrace.pointSample] using hbridgeOracle
  have hbridgeNonce :
      tippSamples.bridgeNonce = transcript.bridgeNonce :=
    nonce_eq_of_same_sample tippSamples.bridge hbridgeOracle'
  have hkzgOracle :
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .kzg {
            bridgeChallenge := transcript.bridge
            vFinal := proof.vFinal
            wFinal := proof.wFinal
          } nonce)
          Ipp.nonzeroB =
        some (transcript.kzg, transcript.kzgNonce) := by
    simpa [Ipp.ShippingArkworksHash.deployedPointSample,
      Ipp.ShippingHashExecutionTrace.pointSample] using
      transcriptExecution.kzg
  have hkzgNonce : tippSamples.kzgNonce = transcript.kzgNonce :=
    nonce_eq_of_same_sample tippSamples.kzg hkzgOracle
  exact acceptedExecutionSamples_of_calls
    contract randomizerEffects family context fuel blake2b
    randomizerSemantics tippSemantics stmt proof transcript
    finalRandomizerEffect randomizerCall effect0 calls
    hrandomizerNonce
    (by simpa [tippSamples] using hx0Nonce)
    (by
      intro i
      simpa [tippSamples] using hroundNonce i)
    (by simpa [tippSamples] using hbridgeNonce)
    (by simpa [tippSamples] using hkzgNonce)
    hroundPrev

#print axioms acceptedExecutionSamples_of_transcriptExecution

end

end Ipp.Extracted.TippMippChallengeExecution
