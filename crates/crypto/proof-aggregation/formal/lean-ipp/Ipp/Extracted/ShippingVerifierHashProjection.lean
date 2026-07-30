import Ipp.Extracted.TippMippChallengeExecution
import Ipp.ShippingHashExecutionTrace

/-!
Coupling between one execution-produced shipping transcript and the exact
randomizer/TIPP calls retained by the extracted verifier.

This layer contains no acceptance premise.  The remaining boundary is to
recover `AcceptedRandomizerCall` and `ArkworksTippChallengeTrace` from the
successful generic installed-core equation plus the exact concrete Arkworks
effect-installation postcondition.
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

private theorem value_eq_of_same_sample
    {left right : Fr} {leftNonce rightNonce : Nat}
    {sample : Option (Fr × Nat)}
    (hleft : sample = some (left, leftNonce))
    (hright : sample = some (right, rightNonce)) :
    left = right := by
  have hpairs :
      (left, leftNonce) = (right, rightNonce) :=
    Option.some.inj (hleft.symm.trans hright)
  exact congrArg Prod.fst hpairs

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

/-- The challenge calls retained by one successful extracted run are the calls
for the transcript produced by the deterministic shipping byte program.

The run trace supplies the state transitions and returned field values.  The
TIPP hash-effect postcondition maps each successful primitive call to the
exact deployed sampler, while `TranscriptExecution` supplies the same sampler
equation for the transcript emitted by `shippingTranscriptOptionOracle`.
Determinism therefore identifies every returned value.  Round values are
identified chronologically because the round preimage contains the preceding
challenge.

This theorem does not assume transcript equality or verifier acceptance.
Nonzero facts are kept as separate inputs because the primitive postcondition
describes hash/decoder execution only; callers obtain them from the successful
bounded sampler or the existing shipping admissibility contract. -/
theorem arkworksTrace_of_runChallengeTrace_and_transcriptExecution
    {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract :
      Ipp.ShippingArkworksHash.SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
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
    (effect0 finalEffect : FX)
    (run :
      RunChallengeTrace primitive serialization proof transcript.randomizer
        effect0 finalEffect)
    (hrandomizer : transcript.randomizer ≠ 0)
    (hx0Nonzero : transcript.x0 ≠ 0)
    (hroundNonzero : ∀ i, transcript.roundAnswer i ≠ 0)
    (hbridgeNonzero : transcript.bridge ≠ 0)
    (hkzgNonzero : transcript.kzg ≠ 0) :
    Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
      primitive serialization stmt proof transcript effect0 := by
  obtain ⟨x0Nonce, hx0Source⟩ :=
    tippSemantics.x0 effect0 (run.effect 0) transcript.randomizer
      proof.ComA.1 proof.ComB proof.ComA.2 proof.ipAb proof.aggC
      run.x0Value run.x0
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
  have hx0Value : run.x0Value = transcript.x0 :=
    value_eq_of_same_sample hx0Source hx0Oracle
  have hroundValue : ∀ k (hk : k < n),
      run.roundValue ⟨k, hk⟩ =
        transcript.roundAnswer ⟨k, hk⟩ := by
    intro k
    induction k using Nat.strong_induction_on with
    | h k ih =>
        intro hk
        have hprior :
            Ipp.Extracted.VerifyTippMipp.priorAt
                run.roundValue run.x0Value k =
              Ipp.Extracted.VerifyTippMipp.priorAt
                transcript.roundAnswer transcript.x0 k := by
          cases k with
          | zero =>
              simpa only [Ipp.Extracted.VerifyTippMipp.priorAt] using
                hx0Value
          | succ previous =>
              have hprevious : previous < n :=
                Nat.lt_trans (Nat.lt_succ_self previous) hk
              simp only [Ipp.Extracted.VerifyTippMipp.priorAt]
              rw [dif_pos hprevious, dif_pos hprevious]
              exact
                ih previous (Nat.lt_succ_self previous) hprevious
        obtain ⟨roundNonce, hroundSourceRaw⟩ :=
          tippSemantics.round
            (run.effect k) (run.effect (k + 1))
            (Ipp.Extracted.VerifyTippMipp.priorAt
              run.roundValue run.x0Value k)
            (Ipp.Extracted.VerifyTippMipp.extractedRounds
              proof.rounds (Fin.rev ⟨k, hk⟩)).1
            (Ipp.Extracted.VerifyTippMipp.extractedRounds
              proof.rounds (Fin.rev ⟨k, hk⟩)).2
            (run.roundValue ⟨k, hk⟩)
            (run.round k hk)
        have hroundSource :
            Ipp.ShippingArkworksHash.deployedPointSample
                contract family context fuel blake2b
                (fun nonce => .round
                  (Ipp.Extracted.VerifyTippMipp.priorAt
                    transcript.roundAnswer transcript.x0 k)
                  (proof.rounds ⟨k, hk⟩) nonce)
                Ipp.nonzeroB =
              some (run.roundValue ⟨k, hk⟩, roundNonce) := by
          rw [hprior] at hroundSourceRaw
          simpa only [
            Ipp.ShippingArkworksHash.roundComsOfCommitments_extractedRounds_rev] using
            hroundSourceRaw
        have hroundPrev :
            transcript.roundPrev ⟨k, hk⟩ =
              Ipp.Extracted.VerifyTippMipp.priorAt
                transcript.roundAnswer transcript.x0 k := by
          calc
            transcript.roundPrev ⟨k, hk⟩ =
                Ipp.ShippingHashExecutionTrace.priorAt
                  transcript.roundAnswer transcript.x0 k :=
              transcriptExecution.roundPrev ⟨k, hk⟩
            _ = Ipp.Extracted.VerifyTippMipp.priorAt
                  transcript.roundAnswer transcript.x0 k :=
              executionPrior_eq_extractedPrior
                transcript.roundAnswer transcript.x0 k
        have hroundOracleRaw := transcriptExecution.round ⟨k, hk⟩
        rw [hroundPrev] at hroundOracleRaw
        have hroundOracle :
            Ipp.ShippingArkworksHash.deployedPointSample
                contract family context fuel blake2b
                (fun nonce => .round
                  (Ipp.Extracted.VerifyTippMipp.priorAt
                    transcript.roundAnswer transcript.x0 k)
                  (proof.rounds ⟨k, hk⟩) nonce)
                Ipp.nonzeroB =
              some
                (transcript.roundAnswer ⟨k, hk⟩,
                  transcript.roundNonce ⟨k, hk⟩) := by
          simpa [Ipp.ShippingArkworksHash.deployedPointSample,
            Ipp.ShippingHashExecutionTrace.pointSample] using
            hroundOracleRaw
        exact value_eq_of_same_sample hroundSource hroundOracle
  have hroundFunction :
      run.roundValue = transcript.roundAnswer := by
    funext i
    exact hroundValue i.val i.isLt
  obtain ⟨bridgeNonce, hbridgeSourceRaw⟩ :=
    tippSemantics.bridge
      (run.effect n) run.bridgeEffect
      (Ipp.Extracted.VerifyTippMipp.priorAt
        run.roundValue run.x0Value n)
      (proof.vFinal, proof.wFinal)
      (proof.aFinal, proof.bFinal, proof.cFinal)
      run.bridgeValue run.bridge
  have hbridgeSource :
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
        some (run.bridgeValue, bridgeNonce) := by
    simpa only [hroundFunction, hx0Value] using hbridgeSourceRaw
  have hbridgeOracleRaw := transcriptExecution.bridge
  rw [executionPrior_eq_extractedPrior
    transcript.roundAnswer transcript.x0 n] at hbridgeOracleRaw
  have hbridgeOracle :
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
      Ipp.ShippingHashExecutionTrace.pointSample] using
      hbridgeOracleRaw
  have hbridgeValue : run.bridgeValue = transcript.bridge :=
    value_eq_of_same_sample hbridgeSource hbridgeOracle
  obtain ⟨kzgNonce, hkzgSourceRaw⟩ :=
    tippSemantics.kzg run.bridgeEffect finalEffect
      run.bridgeValue (proof.vFinal, proof.wFinal)
      run.kzgValue run.kzg
  have hkzgSource :
      Ipp.ShippingArkworksHash.deployedPointSample
          contract family context fuel blake2b
          (fun nonce => .kzg {
            bridgeChallenge := transcript.bridge
            vFinal := proof.vFinal
            wFinal := proof.wFinal
          } nonce)
          Ipp.nonzeroB =
        some (run.kzgValue, kzgNonce) := by
    simpa only [hbridgeValue] using hkzgSourceRaw
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
  have hkzgValue : run.kzgValue = transcript.kzg :=
    value_eq_of_same_sample hkzgSource hkzgOracle
  exact {
    effect := run.effect
    effect3 := run.bridgeEffect
    effect4 := finalEffect
    x0 := by simpa only [hx0Value] using run.x0
    round := by
      intro k hk
      simpa only [hx0Value, hroundFunction] using run.round k hk
    bridge := by
      simpa only [hx0Value, hroundFunction, hbridgeValue] using run.bridge
    kzg := by simpa only [hbridgeValue, hkzgValue] using run.kzg
    randomizer_nonzero := hrandomizer
    x0_nonzero := hx0Nonzero
    round_nonzero := hroundNonzero
    bridge_nonzero := hbridgeNonzero
    kzg_nonzero := hkzgNonzero
  }

#print axioms arkworksTrace_of_runChallengeTrace_and_transcriptExecution

/-- One accepted extracted adapter execution exposes exactly the two
operational witnesses needed by the deployed hash-trace bridge.

The adapter result equation is the production control-flow fact.  Exact
message and installed-TIPP equalities are data projections, while
`AcceptedRunCallProjection` is the narrow concrete-effect postcondition that
recovers the calls made by the already successful TIPP run.  No formal
verifier acceptance, transcript equality, or hash conclusion is assumed. -/
theorem acceptedOperationalCalls_of_adapterRun
    {RFX FX PE PPE : Type} {n : Nat}
    (primitive : Primitive FX)
    (serialization : Serialization primitive)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String)
    (input :
      applications.groth16_aggregation.AggregateAdapterCoreInput
        Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
          ArkPairingOutput g1PrimeSubgroup)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (tippPairing :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (ppeEffect :
      applications.groth16_aggregation.PreparedPairingEffect
        PPE g1PrimeSubgroup PreparedG2 ArkPairingOutput)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX)
    (tippPairingState : PE)
    (ppePairingState : PPE)
    (randomizerMessageExact :
      input.randomizer_message =
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩)
    (installedTippExact :
      (Ipp.Extracted.AggregateAdapter.installRandomizer
        input.combined transcript.randomizer).tipp_mipp =
        Ipp.Extracted.VerifyTippMipp.coreInput
          stmt proof {
            randomizer := transcript.randomizer
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
    (runProjection :
      AcceptedRunCallProjection primitive serialization stmt proof
        transcript.randomizer g gBeta h hAlpha tippPairing tippPairingState)
    (adapterRun :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          tippPairing ppeEffect input randomizerEffect effect
          tippPairingState ppePairingState =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    ∃ randomizerCall :
        Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
          randomizerEffects
          ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
            (.randomizer {
              comA := proof.ComA.1
              comB := proof.ComB
              comC := proof.ComA.2
            } 0)⟩
          transcript.randomizer finalRandomizerEffect,
      Nonempty
        (RunChallengeTrace primitive serialization proof
          transcript.randomizer effect finalEffect) := by
  let tippEffects :=
    Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq
        ArkPairingOutput (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq
        g1PrimeSubgroup (Classical.decEq _))
  obtain ⟨randomizerCall, combinedRun⟩ :=
    Ipp.Extracted.AggregateAdapter.accepted_randomizer_call
      randomizerEffects tippEffects tippPairing ppeEffect input
      randomizerEffect finalRandomizerEffect effect finalEffect
      tippPairingState ppePairingState transcript.randomizer adapterRun
  obtain ⟨_expected, _nonempty, _power, _ilog, _rounds,
      tippRun, _ppeRun⟩ :=
    Ipp.Extracted.CombinedChecks.accepted_path
      tippEffects tippPairing ppeEffect
      (Ipp.Extracted.AggregateAdapter.installRandomizer
        input.combined transcript.randomizer)
      effect finalEffect tippPairingState ppePairingState combinedRun
  have tippRunExact :
      Ipp.Extracted.CombinedChecks.runTipp tippEffects tippPairing
          (Ipp.Extracted.VerifyTippMipp.coreInput
            stmt proof {
              randomizer := transcript.randomizer
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
          effect tippPairingState =
        .ok (.Ok true, finalEffect) := by
    rw [← installedTippExact]
    exact tippRun
  have randomizerCallExact :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨Ipp.ShippingArkworksHash.adapterPointMessage serialization
          (.randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } 0)⟩
        transcript.randomizer finalRandomizerEffect := by
    rw [randomizerMessageExact] at randomizerCall
    simpa [alloc.vec.Vec.deref] using randomizerCall
  exact
    ⟨randomizerCallExact,
      runProjection.callsOfAccepted effect finalEffect tippRunExact⟩

#print axioms acceptedOperationalCalls_of_adapterRun

end

end Ipp.Extracted.TippMippChallengeExecution
