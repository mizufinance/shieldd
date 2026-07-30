import Ipp.Extracted.AggregateVerifierPairingAdapter
import Ipp.ShippingArkworksHash

/-!
Source-level coupling of an extracted TIPP/MIPP challenge-call trace to the
deployed bounded byte sampler. The extracted stage wrappers determine stages,
messages, values, and effect order. The only remaining implementation premise
is the Blake2b/`Fr::from_random_bytes` effect postcondition.
-/

namespace Ipp.Extracted.TippMippChallengeExecution

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Bls12377

noncomputable section

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

abbrev Primitive (FX : Type) :=
  Ipp.ShippingArkworksHash.Primitive FX

abbrev Serialization {FX : Type} (primitive : Primitive FX) :=
  Ipp.ShippingArkworksHash.Serialization primitive

/-- Every deployed sampler equation associated with one exact extracted
TIPP/MIPP primitive-call trace. Nonces are data, not hidden propositions, so
an event constructor must identify them with the transcript nonces it emits. -/
structure SampleEquations
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (effect0 : FX)
    (calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0) : Type where
  x0Nonce : Nat
  roundNonce : Fin n → Nat
  bridgeNonce : Nat
  kzgNonce : Nat
  x0 :
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
      some (transcript.x0, x0Nonce)
  round : ∀ i : Fin n,
    Ipp.ShippingArkworksHash.deployedPointSample
        contract family context fuel blake2b
        (fun nonce => .round
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 i.val)
          (proof.rounds i) nonce)
        Ipp.nonzeroB =
      some (transcript.roundAnswer i, roundNonce i)
  bridge :
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
      some (transcript.bridge, bridgeNonce)
  kzg :
    Ipp.ShippingArkworksHash.deployedPointSample
        contract family context fuel blake2b
        (fun nonce => .kzg {
          bridgeChallenge := transcript.bridge
          vFinal := proof.vFinal
          wFinal := proof.wFinal
        } nonce)
        Ipp.nonzeroB =
      some (transcript.kzg, kzgNonce)

/-- All four fields of the deployed TIPP hash-effect postcondition are
consumed here against the exact calls in one extracted trace. No formal
acceptance predicate occurs in the construction. -/
noncomputable def sampleEquations_of_calls
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (semantics :
      Ipp.ShippingArkworksHash.Blake2bTippEffectPostcondition
        contract family context fuel blake2b)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (effect0 : FX)
    (calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0) :
    SampleEquations contract family context fuel blake2b stmt proof
      transcript effect0 calls := by
  let hx0Exists :=
    semantics.x0
      effect0 (calls.effect 0) transcript.randomizer
      proof.ComA.1 proof.ComB proof.ComA.2 proof.ipAb proof.aggC
      transcript.x0 calls.x0
  let x0Nonce := Classical.choose hx0Exists
  have hx0 := Classical.choose_spec hx0Exists
  have hroundExists : ∀ i : Fin n, ∃ nonce,
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .round
            (Ipp.Extracted.VerifyTippMipp.priorAt
              transcript.roundAnswer transcript.x0 i.val)
            (proof.rounds i) nonce)
          Ipp.nonzeroB =
        some (transcript.roundAnswer i, nonce) := by
    intro i
    obtain ⟨nonce, hsample⟩ :=
      semantics.round
        (calls.effect i.val) (calls.effect (i.val + 1))
        (Ipp.Extracted.VerifyTippMipp.priorAt
          transcript.roundAnswer transcript.x0 i.val)
        (Ipp.Extracted.VerifyTippMipp.extractedRounds
          proof.rounds (Fin.rev i)).1
        (Ipp.Extracted.VerifyTippMipp.extractedRounds
          proof.rounds (Fin.rev i)).2
        (transcript.roundAnswer i)
        (calls.round i.val i.isLt)
    exact ⟨nonce, by
      simpa only [
        Ipp.ShippingArkworksHash.roundComsOfCommitments_extractedRounds_rev]
        using hsample⟩
  let roundNonce : Fin n → Nat :=
    fun i => Classical.choose (hroundExists i)
  have hround : ∀ i : Fin n,
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .round
            (Ipp.Extracted.VerifyTippMipp.priorAt
              transcript.roundAnswer transcript.x0 i.val)
            (proof.rounds i) nonce)
          Ipp.nonzeroB =
        some (transcript.roundAnswer i, roundNonce i) :=
    fun i => Classical.choose_spec (hroundExists i)
  let hbridgeExists :=
    semantics.bridge
      (calls.effect n) calls.effect3
      (Ipp.Extracted.VerifyTippMipp.priorAt
        transcript.roundAnswer transcript.x0 n)
      (proof.vFinal, proof.wFinal)
      (proof.aFinal, proof.bFinal, proof.cFinal)
      transcript.bridge calls.bridge
  let bridgeNonce := Classical.choose hbridgeExists
  have hbridge := Classical.choose_spec hbridgeExists
  let hkzgExists :=
    semantics.kzg calls.effect3 calls.effect4 transcript.bridge
      (proof.vFinal, proof.wFinal) transcript.kzg calls.kzg
  let kzgNonce := Classical.choose hkzgExists
  have hkzg := Classical.choose_spec hkzgExists
  exact {
    x0Nonce := x0Nonce
    roundNonce := roundNonce
    bridgeNonce := bridgeNonce
    kzgNonce := kzgNonce
    x0 := hx0
    round := hround
    bridge := hbridge
    kzg := hkzg
  }

/-- Hash evidence attached to the actual extracted randomizer and TIPP/MIPP
calls, with every successful sampler nonce bound to the transcript emitted by
the surrounding shipping experiment. The nonce equalities and round-chain
equation are operational output-construction facts; they are deliberately not
included in the Blake2b primitive postconditions. -/
structure AcceptedExecutionSamples
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
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
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
        primitive serialization stmt proof transcript effect0) : Type where
  randomizer :
    Ipp.ShippingArkworksHash.deployedPointSample
        contract family context fuel blake2b
        (fun nonce => .randomizer {
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
        } nonce)
        Ipp.randomizerAcceptedB =
      some (transcript.randomizer, randomizerCall.nonce.val)
  tipp :
    SampleEquations contract family context fuel blake2b stmt proof
      transcript effect0 calls
  randomizerNonce :
    randomizerCall.nonce.val = transcript.randomizerNonce
  x0Nonce : tipp.x0Nonce = transcript.x0Nonce
  roundNonce : ∀ i, tipp.roundNonce i = transcript.roundNonce i
  bridgeNonce : tipp.bridgeNonce = transcript.bridgeNonce
  kzgNonce : tipp.kzgNonce = transcript.kzgNonce
  roundPrev : ∀ i,
    transcript.roundPrev i =
      Ipp.Extracted.VerifyTippMipp.priorAt
        transcript.roundAnswer transcript.x0 i.val

/-- Construct the execution-bound sample evidence. This is the single
source-level constructor that consumes the randomizer sample postcondition and
all four TIPP/MIPP sample postconditions; the remaining arguments are exact
nonce/round-chain facts from the experiment's transcript constructor. -/
noncomputable def acceptedExecutionSamples_of_calls
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
        primitive serialization stmt proof transcript effect0)
    (hrandomizerNonce :
      randomizerCall.nonce.val = transcript.randomizerNonce)
    (hx0Nonce :
      (sampleEquations_of_calls contract family context fuel blake2b
        tippSemantics stmt proof transcript effect0 calls).x0Nonce =
          transcript.x0Nonce)
    (hroundNonce : ∀ i,
      (sampleEquations_of_calls contract family context fuel blake2b
        tippSemantics stmt proof transcript effect0 calls).roundNonce i =
          transcript.roundNonce i)
    (hbridgeNonce :
      (sampleEquations_of_calls contract family context fuel blake2b
        tippSemantics stmt proof transcript effect0 calls).bridgeNonce =
          transcript.bridgeNonce)
    (hkzgNonce :
      (sampleEquations_of_calls contract family context fuel blake2b
        tippSemantics stmt proof transcript effect0 calls).kzgNonce =
          transcript.kzgNonce)
    (hroundPrev : ∀ i,
      transcript.roundPrev i =
        Ipp.Extracted.VerifyTippMipp.priorAt
          transcript.roundAnswer transcript.x0 i.val) :
    AcceptedExecutionSamples contract randomizerEffects family context fuel
      blake2b stmt proof transcript finalRandomizerEffect randomizerCall
      effect0 calls := by
  let tippSamples :=
    sampleEquations_of_calls contract family context fuel blake2b
      tippSemantics stmt proof transcript effect0 calls
  exact {
    randomizer :=
      randomizerSemantics.acceptedCall
        { comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2 }
        transcript.randomizer finalRandomizerEffect randomizerCall
    tipp := tippSamples
    randomizerNonce := hrandomizerNonce
    x0Nonce := hx0Nonce
    roundNonce := hroundNonce
    bridgeNonce := hbridgeNonce
    kzgNonce := hkzgNonce
    roundPrev := hroundPrev
  }

/-- Randomizer equation in the exact transcript form required by a shipping
acceptance event. -/
theorem AcceptedExecutionSamples.randomizerAtTranscript
    {RFX FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization}
    {randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {finalRandomizerEffect : RFX}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {effect0 : FX}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0}
    (samples :
      AcceptedExecutionSamples contract randomizerEffects family context fuel
        blake2b stmt proof transcript finalRandomizerEffect randomizerCall
        effect0 calls) :
    Ipp.ShippingArkworksHash.deployedPointSample
        contract family context fuel blake2b
        (fun nonce => .randomizer {
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
        } nonce)
        Ipp.randomizerAcceptedB =
      some (transcript.randomizer, transcript.randomizerNonce) := by
  simpa only [samples.randomizerNonce] using samples.randomizer

/-- X0 equation in the exact transcript form required by a shipping
acceptance event. -/
theorem AcceptedExecutionSamples.x0AtTranscript
    {RFX FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization}
    {randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {finalRandomizerEffect : RFX}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {effect0 : FX}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0}
    (samples :
      AcceptedExecutionSamples contract randomizerEffects family context fuel
        blake2b stmt proof transcript finalRandomizerEffect randomizerCall
        effect0 calls) :
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
  simpa only [samples.x0Nonce] using samples.tipp.x0

/-- Every round equation, including its chronological predecessor, in the
exact transcript form required by a shipping acceptance event. -/
theorem AcceptedExecutionSamples.roundAtTranscript
    {RFX FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization}
    {randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {finalRandomizerEffect : RFX}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {effect0 : FX}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0}
    (samples :
      AcceptedExecutionSamples contract randomizerEffects family context fuel
        blake2b stmt proof transcript finalRandomizerEffect randomizerCall
        effect0 calls)
    (i : Fin n) :
    Ipp.ShippingArkworksHash.deployedPointSample
        contract family context fuel blake2b
        (fun nonce => .round
          (transcript.roundPrev i) (proof.rounds i) nonce)
        Ipp.nonzeroB =
      some (transcript.roundAnswer i, transcript.roundNonce i) := by
  rw [samples.roundPrev i]
  simpa only [samples.roundNonce i] using samples.tipp.round i

/-- Final-bridge equation in exact transcript form. -/
theorem AcceptedExecutionSamples.bridgeAtTranscript
    {RFX FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization}
    {randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {finalRandomizerEffect : RFX}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {effect0 : FX}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0}
    (samples :
      AcceptedExecutionSamples contract randomizerEffects family context fuel
        blake2b stmt proof transcript finalRandomizerEffect randomizerCall
        effect0 calls) :
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
  simpa only [samples.bridgeNonce] using samples.tipp.bridge

/-- KZG equation in exact transcript form. -/
theorem AcceptedExecutionSamples.kzgAtTranscript
    {RFX FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization}
    {randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {finalRandomizerEffect : RFX}
    {randomizerCall :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect}
    {effect0 : FX}
    {calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0}
    (samples :
      AcceptedExecutionSamples contract randomizerEffects family context fuel
        blake2b stmt proof transcript finalRandomizerEffect randomizerCall
        effect0 calls) :
    Ipp.ShippingArkworksHash.deployedPointSample
        contract family context fuel blake2b
        (fun nonce => .kzg {
          bridgeChallenge := transcript.bridge
          vFinal := proof.vFinal
          wFinal := proof.wFinal
        } nonce)
        Ipp.nonzeroB =
      some (transcript.kzg, transcript.kzgNonce) := by
  simpa only [samples.kzgNonce] using samples.tipp.kzg

/-- Challenge values and effect transitions actually produced by one
successful extracted TIPP/MIPP run.  Nonces, hash semantics, admissibility,
leaf relations, and verifier acceptance are intentionally absent.

This trace is existential at the accepted-run boundary.  That distinction is
load-bearing: `VerifyTippMipp.coreInput` contains the randomizer but does not
contain the remaining fields of an `FsTranscript`, so acceptance cannot imply
that the internally derived challenges equal an arbitrary caller-selected
transcript. -/
structure RunChallengeTrace
    {FX : Type} {n : Nat}
    (primitive : Primitive FX)
    (serialization : Serialization primitive)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (effect0 finalEffect : FX) : Type where
  x0Value : Fr
  roundValue : Fin n → Fr
  bridgeValue : Fr
  kzgValue : Fr
  effect : Nat → FX
  bridgeEffect : FX
  x0 :
    primitive.derive_challenge effect0
        applications.groth16_aggregation.TippMippChallengeStage.X0
        ⟨Ipp.Extracted.TippMippAdapter.x0Message serialization
          randomizer proof.ComA.1 proof.ComB proof.ComA.2
          proof.ipAb proof.aggC⟩ =
      .ok (.Ok x0Value, effect 0)
  round : ∀ k (hk : k < n),
    primitive.derive_challenge (effect k)
        applications.groth16_aggregation.TippMippChallengeStage.Round
        ⟨Ipp.Extracted.TippMippAdapter.roundMessage serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt roundValue x0Value k)
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).2⟩ =
      .ok (.Ok (roundValue ⟨k, hk⟩), effect (k + 1))
  bridge :
    primitive.derive_challenge (effect n)
        applications.groth16_aggregation.TippMippChallengeStage.FinalBridge
        ⟨Ipp.Extracted.TippMippAdapter.finalBridgeMessage serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt roundValue x0Value n)
          (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal)⟩ =
      .ok (.Ok bridgeValue, bridgeEffect)
  kzg :
    primitive.derive_challenge bridgeEffect
        applications.groth16_aggregation.TippMippChallengeStage.Kzg
        ⟨Ipp.Extracted.TippMippAdapter.kzgMessage serialization
          bridgeValue (proof.vFinal, proof.wFinal)⟩ =
      .ok (.Ok kzgValue, finalEffect)

/-- Forget sampler nonzero evidence and the caller-owned statement from an
exact extracted challenge-call record.  This is the stable hand-written
projection used by the production challenge-prefix extraction: regeneration
only has to recover the call record from the helper's successful result. -/
def RunChallengeTrace.ofArkworksTrace
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {effect0 : FX}
    (calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0) :
    RunChallengeTrace primitive serialization proof transcript.randomizer
      effect0 calls.effect4 := {
  x0Value := transcript.x0
  roundValue := transcript.roundAnswer
  bridgeValue := transcript.bridge
  kzgValue := transcript.kzg
  effect := calls.effect
  bridgeEffect := calls.effect3
  x0 := calls.x0
  round := calls.round
  bridge := calls.bridge
  kzg := calls.kzg
}

/-- Successful recovery of exact extracted calls is sufficient for the
existential accepted-run projection. -/
theorem nonempty_runChallengeTrace_of_arkworksTrace
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {effect0 : FX}
    (calls :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization stmt proof transcript effect0) :
    Nonempty
      (RunChallengeTrace primitive serialization proof transcript.randomizer
        effect0 calls.effect4) :=
  ⟨RunChallengeTrace.ofArkworksTrace calls⟩

/-- Canonical formal transcript assembled from the values of one extracted
run and the successful nonces later recovered from the byte sampler. -/
def RunChallengeTrace.toTranscript
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {randomizer : Fr}
    {effect0 finalEffect : FX}
    (trace :
      RunChallengeTrace primitive serialization proof randomizer
        effect0 finalEffect)
    (randomizerNonce x0Nonce bridgeNonce kzgNonce : Nat)
    (roundNonce : Fin n → Nat) :
    Ipp.FsTranscript n Fr := {
  randomizer := randomizer
  randomizerNonce := randomizerNonce
  x0 := trace.x0Value
  x0Nonce := x0Nonce
  roundPrev := fun i =>
    Ipp.Extracted.VerifyTippMipp.priorAt
      trace.roundValue trace.x0Value i.val
  roundAnswer := trace.roundValue
  roundNonce := roundNonce
  bridge := trace.bridgeValue
  bridgeNonce := bridgeNonce
  kzg := trace.kzgValue
  kzgNonce := kzgNonce
}

/-- Add the sampler's nonzero facts to an execution-produced raw trace. -/
def RunChallengeTrace.toArkworksTrace
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {randomizer : Fr}
    {effect0 finalEffect : FX}
    (trace :
      RunChallengeTrace primitive serialization proof randomizer
        effect0 finalEffect)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizerNonce x0Nonce bridgeNonce kzgNonce : Nat)
    (roundNonce : Fin n → Nat)
    (hrandomizer : randomizer ≠ 0)
    (hx0 : trace.x0Value ≠ 0)
    (hround : ∀ i, trace.roundValue i ≠ 0)
    (hbridge : trace.bridgeValue ≠ 0)
    (hkzg : trace.kzgValue ≠ 0) :
    Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
      primitive serialization stmt proof
        (trace.toTranscript randomizerNonce x0Nonce bridgeNonce kzgNonce
          roundNonce)
        effect0 := {
  effect := trace.effect
  effect3 := trace.bridgeEffect
  effect4 := finalEffect
  x0 := trace.x0
  round := trace.round
  bridge := trace.bridge
  kzg := trace.kzg
  randomizer_nonzero := hrandomizer
  x0_nonzero := hx0
  round_nonzero := hround
  bridge_nonzero := hbridge
  kzg_nonzero := hkzg
}

/-- Exact residual source postcondition for accepted-run call recovery.

The result is the trace actually generated by the extracted execution rather
than a trace chosen by the caller.  The remaining closure route is purely
operational: invert the production-used
`verify_tipp_mipp_challenge_prefix_core` result into an exact call record, then
apply `nonempty_runChallengeTrace_of_arkworksTrace`. -/
structure AcceptedRunCallProjection
    {FX PE : Type} {n : Nat}
    (primitive : Primitive FX)
    (serialization : Serialization primitive)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (pairing : PE)
    (effect0 finalEffect : FX) : Prop where
  callsOfAccepted :
    Ipp.Extracted.CombinedChecks.runTipp
        (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
          (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
            (Classical.decEq _))
          (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
            (Classical.decEq _)))
        pairingEffect
        (Ipp.Extracted.VerifyTippMipp.coreInput
          stmt proof {
            randomizer := randomizer
            randomizerNonce := 0
            x0 := 0
            x0Nonce := 0
            roundPrev := fun _ => 0
            roundAnswer := fun _ => 0
            roundNonce := fun _ => 0
            bridge := 0
            bridgeNonce := 0
            kzg := 0
            kzgNonce := 0
          } g gBeta h hAlpha)
        effect0 pairing =
      .ok (.Ok true, finalEffect) →
    Nonempty
      (RunChallengeTrace primitive serialization proof randomizer
        effect0 finalEffect)

#print axioms sampleEquations_of_calls
#print axioms acceptedExecutionSamples_of_calls
#print axioms AcceptedExecutionSamples.randomizerAtTranscript
#print axioms AcceptedExecutionSamples.x0AtTranscript
#print axioms AcceptedExecutionSamples.roundAtTranscript
#print axioms AcceptedExecutionSamples.bridgeAtTranscript
#print axioms AcceptedExecutionSamples.kzgAtTranscript
#print axioms nonempty_runChallengeTrace_of_arkworksTrace

end

end Ipp.Extracted.TippMippChallengeExecution
