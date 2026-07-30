import Ipp.Extracted.AppVerifierShipping
import Ipp.Extracted.AggregateShippingProjection
import Ipp.Extracted.AggregateVerifierPairingAdapter
import Ipp.ShippingArkworksHash

/-!
Composition of one accepted application call with the concrete aggregate
adapter.  Application planning, identity, count, padding, and result-reduction
facts enter only through `AcceptedShippingCallFacts`; they are not repeated as
premises at the shipping-to-v1 root.
-/

namespace Ipp.Extracted.ShippingVerifierComposition

open Aeneas
open ark_ip_proofs
open Ipp.Bls12377

noncomputable section

local instance : Fact scalarModulus.Prime := ⟨arithmeticFacts.scalarPrime⟩

abbrev ValidatedProof (D : Type) :=
  applications.groth16_aggregation.ValidatedAggregateProofData
    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput D

/-- The formal TIPP/MIPP input with the pre-install randomizer value used by
the production caller. The adapter overwrites this field after accepting the
Fiat--Shamir randomizer. -/
def tippInputAt
    {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (initialR : Fr) :
    applications.groth16_aggregation.TippMippCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup :=
  {
    Ipp.Extracted.VerifyTippMipp.coreInput
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
      proof transcript g gBeta h hAlpha with
    r := initialR
  }

/-- Exact external postcondition of Arkworks aggregate-proof decoding.

The extracted shipping constructor owns every subsequent clone and field
placement.  This contract only relates the successfully decoded Arkworks
object to the mathematical proof value used by `SnarkPackV1`; it assumes no
verifier result or control-flow behavior. -/
structure ArkworksDecodedProofContract
    {D : Type} {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (decoded : ValidatedProof D)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup) : Prop where
  comA : decoded.com_a = proof.ComA.1
  comB : decoded.com_b = proof.ComB
  comC : decoded.com_c = proof.ComA.2
  ipAb : decoded.ip_ab = proof.ipAb
  aggC : decoded.agg_c = proof.aggC
  tippProof :
    decoded.tipp_mipp_proof =
      (Ipp.Extracted.VerifyTippMipp.coreInput
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        proof transcript g gBeta h hAlpha).proof

/-- Exact bytes produced by the production randomizer-message serializer after
strict proof decoding.  Arkworks' component encoders remain the external
serialization boundary; commitment order is fixed here. -/
def decodedRandomizerMessage
    {D FX : Type}
    {primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (decoded : ValidatedProof D) : List UInt8 :=
  serialization.encodeGT decoded.com_a ++
    serialization.encodeGT decoded.com_b ++
    serialization.encodeGT decoded.com_c

/-- Strict decoding preserves the three commitments hashed by
`aggregate.randomizer`, so the decoded production message is exactly the
formal proof message. -/
theorem decodedRandomizerMessage_eq_formal
    {D FX : Type} {μ : Nat}
    {primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (decoded : ValidatedProof D)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (contract : ArkworksDecodedProofContract hbilinear baseStmt decoded
      proof transcript g gBeta h hAlpha) :
    decodedRandomizerMessage serialization decoded =
      Ipp.ShippingArkworksHash.randomizerMessage serialization proof := by
  rcases contract with ⟨hcomA, hcomB, hcomC, _, _, _⟩
  simp [decodedRandomizerMessage,
    Ipp.ShippingArkworksHash.randomizerMessage,
    Ipp.ShippingArkworksHash.adapterPointMessage,
    hcomA, hcomB, hcomC]

/-- Exact external prepared-VK postcondition needed by the extracted PPE
constructor.  The formula is pointwise, so it cannot conceal omitted,
reordered, or substituted public-input rows.  All folding after this boundary
is proved by `AggregateAdapterProjection`. -/
structure ArkworksPreparedVkAicContract
    {μ arity : Nat}
    (statement : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicRows : Fin (2 ^ μ) → Fin arity → Fr) : Prop where
  aic : ∀ i, statement.Aic i =
        gammaABC 0 +
          ∑ j : Fin arity,
            publicRows i j • gammaABC (Fin.succ j)

/-- Nonzero facts supplied by the successful bounded hash-sampler execution.
They are separated from the challenge primitive's answer equations so the
external primitive contract does not silently assert verifier acceptance. -/
structure ShippingTranscriptAdmissible
    {μ : Nat} (transcript : Ipp.FsTranscript μ Fr) : Prop where
  randomizer : transcript.randomizer ≠ 0
  x0 : transcript.x0 ≠ 0
  round : ∀ i, transcript.roundAnswer i ≠ 0
  bridge : transcript.bridge ≠ 0
  kzg : transcript.kzg ≠ 0

/-- Exact result/effect semantics of the deployed challenge primitive.

The structure contains no statement, proof relation, verifier result, or
nonzero premise.  Stage selection, payload serialization order, chronological
round traversal, and placement of the returned values are all consequences of
the extracted TIPP/MIPP cores when this fieldwise primitive boundary is used.
-/
structure ArkworksChallengeOracleAnswers
    {FX : Type} {μ : Nat}
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (initialEffect : FX) : Type where
  effect : Nat → FX
  bridgeEffect : FX
  kzgEffect : FX
  x0 :
    primitive.derive_challenge initialEffect
        applications.groth16_aggregation.TippMippChallengeStage.X0
        ⟨Ipp.Extracted.TippMippAdapter.x0Message serialization
          transcript.randomizer proof.ComA.1 proof.ComB proof.ComA.2
          proof.ipAb proof.aggC⟩ =
      .ok (.Ok transcript.x0, effect 0)
  round : ∀ k (hk : k < μ),
    primitive.derive_challenge (effect k)
        applications.groth16_aggregation.TippMippChallengeStage.Round
        ⟨Ipp.Extracted.TippMippAdapter.roundMessage serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 k)
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).2⟩ =
      .ok (.Ok (transcript.roundAnswer ⟨k, hk⟩), effect (k + 1))
  bridge :
    primitive.derive_challenge (effect μ)
        applications.groth16_aggregation.TippMippChallengeStage.FinalBridge
        ⟨Ipp.Extracted.TippMippAdapter.finalBridgeMessage serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 μ)
          (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal)⟩ =
      .ok (.Ok transcript.bridge, bridgeEffect)
  kzg :
    primitive.derive_challenge bridgeEffect
        applications.groth16_aggregation.TippMippChallengeStage.Kzg
        ⟨Ipp.Extracted.TippMippAdapter.kzgMessage serialization
          transcript.bridge (proof.vFinal, proof.wFinal)⟩ =
      .ok (.Ok transcript.kzg, kzgEffect)

/-- Add the sampler's nonzero facts to the challenge answers for one concrete
initial effect state. -/
def ArkworksChallengeOracleAnswers.toTrace
    {FX : Type} {μ : Nat}
    {primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    {serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive}
    {proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript μ Fr}
    {initialEffect : FX}
    (answers :
      ArkworksChallengeOracleAnswers primitive serialization proof transcript
        initialEffect)
    (hadmissible : ShippingTranscriptAdmissible transcript)
    (statement : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
      primitive serialization statement proof transcript initialEffect := {
  effect := answers.effect
  effect3 := answers.bridgeEffect
  effect4 := answers.kzgEffect
  x0 := answers.x0
  round := answers.round
  bridge := answers.bridge
  kzg := answers.kzg
  randomizer_nonzero := hadmissible.randomizer
  x0_nonzero := hadmissible.x0
  round_nonzero := hadmissible.round
  bridge_nonzero := hadmissible.bridge
  kzg_nonzero := hadmissible.kzg
}

/-- The existing leaf-refinement interface is derived from fieldwise oracle
answers and sampler admissibility.  In particular, sequencing is not a caller
premise: it is the sequence consumed by the extracted verifier proof. -/
def ArkworksChallengeOracleAnswers.contract
    {FX : Type} {μ : Nat}
    {primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    {serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive}
    {proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {transcript : Ipp.FsTranscript μ Fr}
    (answers :
      ∀ initialEffect : FX,
        ArkworksChallengeOracleAnswers primitive serialization proof transcript
          initialEffect)
    (hadmissible : ShippingTranscriptAdmissible transcript)
    (statement : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeContract
      primitive serialization statement proof transcript where
  trace effect0 :=
    (answers effect0).toTrace hadmissible statement

/-- The production pure TIPP/MIPP constructor yields exactly the formal core
input once the strict decoder postcondition is instantiated. Verifier-SRS
fields are selected directly from the extracted SRS record. -/
theorem shipping_tipp_input_exact
    {D : Type} {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (decoded : ValidatedProof D)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (srs : tipa.VerifierSRSData g1PrimeSubgroup g2PrimeSubgroup)
    (initialR : Fr)
    (serializeG1 : ark_serialize.CanonicalSerialize g1PrimeSubgroup)
    (deserializeG1 : ark_serialize.CanonicalDeserialize g1PrimeSubgroup)
    (serializeG2 : ark_serialize.CanonicalSerialize g2PrimeSubgroup)
    (deserializeG2 : ark_serialize.CanonicalDeserialize g2PrimeSubgroup)
    (hdecoded : ArkworksDecodedProofContract hbilinear baseStmt decoded
      proof transcript srs.g srs.g_beta srs.h srs.h_alpha) :
    applications.groth16_aggregation.shipping_tipp_mipp_core_input
        (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
        serializeG1 deserializeG1
        (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
        serializeG2 deserializeG2
        (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
        srs decoded initialR 1 =
      .ok (tippInputAt hbilinear baseStmt proof transcript
        srs.g srs.g_beta srs.h srs.h_alpha initialR) := by
  rw [Ipp.Extracted.AggregateShippingProjection.shipping_tipp_mipp_core_input_exact]
  rcases hdecoded with
    ⟨hcomA, hcomB, hcomC, hipAb, haggC, htippProof⟩
  simp [Ipp.Extracted.AggregateShippingProjection.projectedTippInput,
    tippInputAt, Ipp.Extracted.VerifyTippMipp.coreInput, hcomA, hcomB,
    hcomC, hipAb, haggC, htippProof]

/-- The exact adapter input constructed before randomizer sampling. Production
uses `initialR = 0`; the accepted randomizer is installed into both consumers
by the extracted adapter state machine. -/
def productionAdapterInput
    {μ arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ μ) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (initialR : Fr) :
    applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup :=
  let canonical :=
    Ipp.Extracted.AggregateAdapterProjection.formalAdapterInput
      hbilinear baseStmt proof transcript g gBeta h hAlpha gammaABC
      publicInputs randomizerMessage
  {
    canonical with
    combined := {
      canonical.combined with
      tipp_mipp := tippInputAt hbilinear baseStmt proof transcript
        g gBeta h hAlpha initialR
      r := initialR
    }
  }

/-- The generated whole-input constructor is exactly the formal production
input at its pre-randomizer state. No caller-supplied whole-input equality is
needed. -/
theorem shipping_adapter_input_exact
    {D : Type} {μ arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (decoded : ValidatedProof D)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (srs : tipa.VerifierSRSData g1PrimeSubgroup g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ μ) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (initialR : Fr)
    (serializeG1 : ark_serialize.CanonicalSerialize g1PrimeSubgroup)
    (deserializeG1 : ark_serialize.CanonicalDeserialize g1PrimeSubgroup)
    (serializeG2 : ark_serialize.CanonicalSerialize g2PrimeSubgroup)
    (deserializeG2 : ark_serialize.CanonicalDeserialize g2PrimeSubgroup)
    (hdecoded : ArkworksDecodedProofContract hbilinear baseStmt decoded
      proof transcript srs.g srs.g_beta srs.h srs.h_alpha) :
    applications.groth16_aggregation.shipping_aggregate_adapter_core_input
        (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
        serializeG1 deserializeG1
        (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
        serializeG2 deserializeG2
        (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
        ⟨randomizerMessage⟩ srs decoded
        (Ipp.Extracted.AggregateAdapterProjection.finVec gammaABC)
        (Ipp.Extracted.AggregateAdapterProjection.inputVec publicInputs)
        initialR 1
        ((Ipp.Bls12377.statementWithExecutablePairing
          hbilinear baseStmt).e
            (Ipp.Bls12377.statementWithExecutablePairing
              hbilinear baseStmt).alpha
            (Ipp.Bls12377.statementWithExecutablePairing
              hbilinear baseStmt).beta)
        (Ipp.Bls12377.prepareNegative
          (Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt).gamma)
        (Ipp.Bls12377.prepareNegative
          (Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt).delta) =
      .ok (productionAdapterInput hbilinear baseStmt proof transcript
        srs.g srs.g_beta srs.h srs.h_alpha gammaABC publicInputs
        randomizerMessage initialR) := by
  have htipp :=
    shipping_tipp_input_exact hbilinear baseStmt decoded proof transcript srs
      initialR serializeG1 deserializeG1 serializeG2 deserializeG2 hdecoded
  rcases hdecoded with
    ⟨_, _, _, hipAb, haggC, _⟩
  unfold applications.groth16_aggregation.shipping_aggregate_adapter_core_input
  rw [htipp]
  simp [Ipp.Extracted.VerifyTippMipp.modelClone,
    applications.groth16_aggregation.combined_checks_core_input_from_parts,
    applications.groth16_aggregation.aggregate_adapter_core_input_from_parts,
    productionAdapterInput,
    Ipp.Extracted.AggregateAdapterProjection.formalAdapterInput,
    Ipp.Extracted.AggregateAdapterProjection.formalCombinedInput,
    tippInputAt, hipAb, haggC]

/-- Randomizer installation erases the production placeholder and yields the
canonical formal combined input exactly. -/
theorem production_adapter_input_installed_exact
    {μ arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ μ) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (initialR : Fr) :
    Ipp.Extracted.AggregateAdapter.installRandomizer
        (productionAdapterInput hbilinear baseStmt proof transcript
          g gBeta h hAlpha gammaABC publicInputs randomizerMessage
          initialR).combined
        transcript.randomizer =
      (Ipp.Extracted.AggregateAdapterProjection.formalAdapterInput
        hbilinear baseStmt proof transcript g gBeta h hAlpha gammaABC
        publicInputs randomizerMessage).combined := by
  rfl

/-- The generated pre-randomizer input therefore satisfies every semantic
adapter projection field after the extracted installation step. -/
theorem production_adapter_input_projection
    {μ arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ μ) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (initialR : Fr)
    (haic : ∀ i,
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt).Aic i =
        gammaABC 0 +
          ∑ j : Fin arity,
            publicInputs i j • gammaABC (Fin.succ j))
    (hsize : 2 ^ μ < Aeneas.Std.MacCampaign.u64Base) :
    Ipp.Extracted.AggregateAdapterProjection.AdapterInputProjection
      hbilinear baseStmt proof transcript
      (productionAdapterInput hbilinear baseStmt proof transcript
        g gBeta h hAlpha gammaABC publicInputs randomizerMessage initialR)
      g gBeta h hAlpha gammaABC publicInputs randomizerMessage := by
  have hformal :=
    Ipp.Extracted.AggregateAdapterProjection.formalAdapterInput_projection_from_aic
      (hbilinear := hbilinear) (baseStmt := baseStmt) (proof := proof)
      (transcript := transcript) (g := g) (gBeta := gBeta) (h := h)
      (hAlpha := hAlpha) (gammaABC := gammaABC)
      (publicInputs := publicInputs) (randomizerMessage := randomizerMessage)
      haic hsize
  exact {
    randomizer_message := rfl
    tipp := rfl
    gamma_abc := rfl
    public_inputs := rfl
    randomizer := rfl
    alpha_beta := rfl
    agg_c := rfl
    gamma_negative := rfl
    delta_negative := rfl
    ip_ab := rfl
    folded_aic := hformal.folded_aic
    batch_size_fits_u64 := hformal.batch_size_fits_u64
  }

/-- One exact accepted shipping call.  The application witness retains the
unique planned full identifier, family, count, order, and repeat-final padding
facts; the remaining fields bind that call to one formal v1 statement/proof and
to the concrete TIPP/MIPP constructor used by the adapter. -/
structure AcceptedShippingV1Call
    {D : Type} {μ arity : Nat}
    (expected :
      Aeneas.Std.alloc.vec.Vec
        Ipp.Extracted.AppVerifierStateMachine.CallId)
    (results :
      Aeneas.Std.alloc.vec.Vec
        Ipp.Extracted.AppVerifierStateMachine.CallResult)
    (call : Ipp.Extracted.AppVerifierStateMachine.ConcretePlannedCall)
    (hbilinear : PublishedPairingBilinear)
    (projection : Ipp.ShippingV1.ShippingProjection μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (contract : Ipp.ShippingV1.StatementBindingContract μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (input : Ipp.ShippingV1.ShippingV1Input μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (srs : tipa.VerifierSRSData g1PrimeSubgroup g2PrimeSubgroup)
    (serializeG1 : ark_serialize.CanonicalSerialize g1PrimeSubgroup)
    (deserializeG1 : ark_serialize.CanonicalDeserialize g1PrimeSubgroup)
    (serializeG2 : ark_serialize.CanonicalSerialize g2PrimeSubgroup)
    (deserializeG2 : ark_serialize.CanonicalDeserialize g2PrimeSubgroup) :
    Prop where
  app :
    Ipp.Extracted.AppVerifierStateMachine.AcceptedShippingCallFacts
      expected results call input
  supported : contract.supported input
  familyRegistered : input.family.Registered
  represents :
    Ipp.ShippingV1.RepresentsShippingInput projection input
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt) proof
  aicExact : ∀ i,
    (Ipp.Bls12377.statementWithExecutablePairing
      hbilinear baseStmt).Aic i =
        gammaABC 0 +
          ∑ j : Fin arity,
            input.publicRows i j • gammaABC (Fin.succ j)
  tippInputExact :
    applications.groth16_aggregation.shipping_tipp_mipp_core_input
        (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
        serializeG1 deserializeG1
        (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
        serializeG2 deserializeG2
        (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
        srs input.decodedProof transcript.randomizer 1 =
      .ok (Ipp.Extracted.VerifyTippMipp.coreInput
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        proof transcript srs.g srs.g_beta srs.h srs.h_alpha)
  accepts :
    Ipp.SnarkPackV1.Accepts
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
      proof transcript

/-- Static production data for one routed verifier call. Acceptance remains a
predicate of the transcript produced by the deployed byte-hash execution. -/
structure ShippingCallData (D : Type) (μ arity : Nat) where
  /-- Concrete effect and pairing-state carriers used by the shipping
  Arkworks adapter. Keeping them in the call data prevents an acceptance
  witness from selecting an unrelated implementation after the fact. -/
  randomizerState : Type
  tippState : Type
  tippPairingState : Type
  ppePairingState : Type
  expected :
    Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId
  results :
    Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult
  call : Ipp.Extracted.AppVerifierStateMachine.ConcretePlannedCall
  hbilinear : PublishedPairingBilinear
  projection : Ipp.ShippingV1.ShippingProjection μ Fr
    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
    (Fin arity → Fr) (ValidatedProof D)
  contract : Ipp.ShippingV1.StatementBindingContract μ Fr
    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
    (Fin arity → Fr) (ValidatedProof D)
  input : Ipp.ShippingV1.ShippingV1Input μ Fr
    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
    (Fin arity → Fr) (ValidatedProof D)
  baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
    ArkPairingOutput
  proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
  gammaABC : Fin (arity + 1) → g1PrimeSubgroup
  srs : tipa.VerifierSRSData g1PrimeSubgroup g2PrimeSubgroup
  serializeG1 : ark_serialize.CanonicalSerialize g1PrimeSubgroup
  deserializeG1 : ark_serialize.CanonicalDeserialize g1PrimeSubgroup
  serializeG2 : ark_serialize.CanonicalSerialize g2PrimeSubgroup
  deserializeG2 : ark_serialize.CanonicalDeserialize g2PrimeSubgroup
  primitive : Ipp.Extracted.TippMippAdapter.Primitive
    tippState Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
  serialization :
    Ipp.Extracted.TippMippAdapter.SerializationContract primitive
  randomizerEffects :
    applications.groth16_aggregation.AggregateRandomizerEffect
      randomizerState Fr String
  tippOutcome : tippPairingState → Option Unit
  ppeOutcome : ppePairingState → Option Unit

def ShippingCallData.statement
    {D : Type} {μ arity : Nat} (data : ShippingCallData D μ arity) :
    Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput :=
  Ipp.Bls12377.statementWithExecutablePairing data.hbilinear data.baseStmt

/-- Static output of the extracted application plan constructor. The
production `app_verify_shipping_call_from_parts` root pins the per-call scalar
fields; `plan` pins this call's containing identifier vector. -/
structure ShippingApplicationConstruction
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity) where
  declared :
    Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall
  plan :
    app_verifier.app_verify_plan_ids_core declared = .ok data.expected
  realCountWire : Aeneas.Std.U32
  paddedCountWire : Aeneas.Std.U32
  realCountWireExact :
    realCountWire.val = data.input.realCount
  paddedCountWireExact :
    paddedCountWire.val = 2 ^ μ
  scalarProjection :
    app_verifier.app_verify_shipping_projection_core data.call
        (Ipp.Extracted.AppVerifierStateMachine.shippingFamilyCode
          data.input.family)
        realCountWire paddedCountWire =
      .ok (.Ok ())

/-- Exact cross-kernel projection from the production app-call record to the
formal shipping input. These premises are stated against the bundle fields
that construct the production statement; accepted identity and padding checks
derive the corresponding planned-call fields. -/
structure ShippingApplicationProjectionContract
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity) : Prop where
  family :
    Ipp.Extracted.AppVerifierStateMachine.RepresentsShippingFamily
      data.call.bundle_family data.input.family
  realCount :
    data.input.realCount = data.call.bundle_real_count.val
  paddedCount :
    2 ^ μ = data.call.bundle_padded_count.val

/-- The scalar projection facts are consequences of the production-used
projection core plus its exact wire-to-formal count construction. -/
theorem ShippingApplicationConstruction.projectionContract
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    (construction : ShippingApplicationConstruction data)
    (hidentity :
      app_verifier.app_verify_plan_identity_core data.call.id
          data.call.bundle_family data.call.expected_real_count
          data.call.bundle_real_count =
        .ok (.Ok data.call.id))
    (hpadding :
      app_verifier.app_verify_plan_padding_core data.call.id
          data.call.expected_padded_count data.call.bundle_padded_count =
        .ok (.Ok data.call.id)) :
    ShippingApplicationProjectionContract data := by
  have projected :=
    Ipp.Extracted.AppVerifierStateMachine.extracted_shipping_projection_ok
      data.call data.input.family construction.realCountWire
      construction.paddedCountWire hidentity hpadding
      construction.scalarProjection
  exact {
    family := projected.1
    realCount := by
      calc
        data.input.realCount = construction.realCountWire.val :=
          construction.realCountWireExact.symm
        _ = data.call.bundle_real_count.val :=
          congrArg Aeneas.Std.Usize.val projected.2.1
    paddedCount := by
      calc
        2 ^ μ = construction.paddedCountWire.val :=
          construction.paddedCountWireExact.symm
        _ = data.call.bundle_padded_count.val :=
          congrArg Aeneas.Std.Usize.val projected.2.2
  }

set_option maxHeartbeats 2000000 in
/-- Composed application-to-v1 root.  No plan membership, reducer, family,
count, padding, or machine-size premise is repeated here: those facts are
derived once by the extracted application witness. -/
theorem accepted_app_adapter_call_refines_shipping_v1
    {D RFX FX PE PPE : Type} {μ arity : Nat}
    (expected :
      Aeneas.Std.alloc.vec.Vec
        Ipp.Extracted.AppVerifierStateMachine.CallId)
    (results :
      Aeneas.Std.alloc.vec.Vec
        Ipp.Extracted.AppVerifierStateMachine.CallResult)
    (call : Ipp.Extracted.AppVerifierStateMachine.ConcretePlannedCall)
    (hbilinear : PublishedPairingBilinear)
    (projection : Ipp.ShippingV1.ShippingProjection μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (contract : Ipp.ShippingV1.StatementBindingContract μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (input : Ipp.ShippingV1.ShippingV1Input μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (hsupported : contract.supported input)
    (app :
      Ipp.Extracted.AppVerifierStateMachine.AcceptedShippingCallFacts
        expected results call input)
    (baseStmt : Ipp.FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Fr)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (hrep : Ipp.ShippingV1.RepresentsShippingInput projection input
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt) proof)
    (preparedVk : ArkworksPreparedVkAicContract
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
      gammaABC input.publicRows)
    (srs : tipa.VerifierSRSData g1PrimeSubgroup g2PrimeSubgroup)
    (serializeG1 : ark_serialize.CanonicalSerialize g1PrimeSubgroup)
    (deserializeG1 : ark_serialize.CanonicalDeserialize g1PrimeSubgroup)
    (serializeG2 : ark_serialize.CanonicalSerialize g2PrimeSubgroup)
    (deserializeG2 : ark_serialize.CanonicalDeserialize g2PrimeSubgroup)
    (decodedProjection : ArkworksDecodedProofContract hbilinear baseStmt
      input.decodedProof proof transcript
      srs.g srs.g_beta srs.h srs.h_alpha)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (kernel :
      Ipp.Extracted.AggregateVerifier.ArkworksTippKernelContract
        hbilinear primitive)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX)
    (tippPairing : PE) (ppePairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (challengeAnswers :
      ArkworksChallengeOracleAnswers primitive serialization proof transcript
        effect)
    (challengeAdmissible : ShippingTranscriptAdmissible transcript)
    (kzg : Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
      hbilinear baseStmt proof transcript
      srs.g srs.g_beta srs.h srs.h_alpha
      tippPairing tippOutcome)
    (hadapter :
      (do
        let adapterInput ←
          applications.groth16_aggregation.shipping_aggregate_adapter_core_input
            (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
            serializeG1 deserializeG1
            (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
            serializeG2 deserializeG2
            (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
            (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
            ⟨decodedRandomizerMessage serialization input.decodedProof⟩
            srs input.decodedProof
            (Ipp.Extracted.AggregateAdapterProjection.finVec gammaABC)
            (Ipp.Extracted.AggregateAdapterProjection.inputVec
              input.publicRows)
            0 1
            ((Ipp.Bls12377.statementWithExecutablePairing
              hbilinear baseStmt).e
                (Ipp.Bls12377.statementWithExecutablePairing
                  hbilinear baseStmt).alpha
                (Ipp.Bls12377.statementWithExecutablePairing
                  hbilinear baseStmt).beta)
            (Ipp.Bls12377.prepareNegative
              (Ipp.Bls12377.statementWithExecutablePairing
                hbilinear baseStmt).gamma)
            (Ipp.Bls12377.prepareNegative
              (Ipp.Bls12377.statementWithExecutablePairing
                hbilinear baseStmt).delta)
        Ipp.Extracted.AggregateAdapter.run randomizerEffects
            (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
              (@Ipp.Extracted.TippMippAdapter.partialEq
                ArkPairingOutput (Classical.decEq _))
              (@Ipp.Extracted.TippMippAdapter.partialEq
                g1PrimeSubgroup (Classical.decEq _)))
            (Ipp.Bls12377.tippPairingEffect hbilinear tippOutcome)
            (Ipp.Bls12377.preparedPairingEffect hbilinear ppeOutcome)
            adapterInput randomizerEffect effect tippPairing ppePairing) =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    AcceptedShippingV1Call expected results call hbilinear projection contract
      input baseStmt proof transcript gammaABC srs
      serializeG1 deserializeG1 serializeG2 deserializeG2 := by
  have hsize : 2 ^ μ < Aeneas.Std.MacCampaign.u64Base := by
    have hle : 2 ^ μ ≤ 2 ^ 32 - 1 := by
      rw [app.inputPaddedCountExact]
      exact app.paddedCountFitsWire
    exact lt_of_le_of_lt hle (by
      norm_num [Aeneas.Std.MacCampaign.u64Base])
  let randomizerMessage :=
    Ipp.ShippingArkworksHash.randomizerMessage serialization proof
  have hmessage :
      decodedRandomizerMessage serialization input.decodedProof =
        randomizerMessage := by
    simpa [randomizerMessage] using
      (decodedRandomizerMessage_eq_formal serialization hbilinear baseStmt
        input.decodedProof proof transcript
        srs.g srs.g_beta srs.h srs.h_alpha decodedProjection)
  have htipp :
      applications.groth16_aggregation.shipping_tipp_mipp_core_input
          (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
          serializeG1 deserializeG1
          (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
          serializeG2 deserializeG2
          (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
          (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
          srs input.decodedProof transcript.randomizer 1 =
        .ok (Ipp.Extracted.VerifyTippMipp.coreInput
          (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
          proof transcript srs.g srs.g_beta srs.h srs.h_alpha) := by
    simpa [tippInputAt] using
      (shipping_tipp_input_exact hbilinear baseStmt input.decodedProof proof
        transcript srs transcript.randomizer serializeG1 deserializeG1
        serializeG2 deserializeG2 decodedProjection)
  have hconstructed :=
    shipping_adapter_input_exact hbilinear baseStmt input.decodedProof proof
      transcript srs gammaABC input.publicRows randomizerMessage 0
      serializeG1 deserializeG1 serializeG2 deserializeG2 decodedProjection
  have adapterProjection :=
    production_adapter_input_projection hbilinear baseStmt proof transcript
      srs.g srs.g_beta srs.h srs.h_alpha gammaABC input.publicRows
      randomizerMessage 0 preparedVk.aic hsize
  have hadapter' :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          (Ipp.Bls12377.tippPairingEffect hbilinear tippOutcome)
          (Ipp.Bls12377.preparedPairingEffect hbilinear ppeOutcome)
          (productionAdapterInput hbilinear baseStmt proof transcript
            srs.g srs.g_beta srs.h srs.h_alpha gammaABC input.publicRows
            randomizerMessage 0)
          randomizerEffect effect tippPairing ppePairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        }) := by
    rw [hmessage] at hadapter
    simpa only [hconstructed, Result.bind_ok] using hadapter
  let challengeTrace :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeTrace
        primitive serialization
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        proof transcript effect :=
    challengeAnswers.toTrace challengeAdmissible
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
  have hv1 :=
    Ipp.Extracted.AggregateVerifier.arkworks_shipping_run_acceptance_implies_snarkPackV1
        hbilinear primitive serialization kernel baseStmt proof transcript
        randomizerEffects
        (productionAdapterInput hbilinear baseStmt proof transcript
          srs.g srs.g_beta srs.h srs.h_alpha gammaABC input.publicRows
          randomizerMessage 0)
        srs.g srs.g_beta srs.h srs.h_alpha gammaABC input.publicRows
        randomizerMessage
        randomizerEffect finalRandomizerEffect effect finalEffect
        tippPairing ppePairing tippOutcome ppeOutcome challengeTrace kzg
        adapterProjection hadapter'
  exact {
    app := app
    supported := hsupported
    familyRegistered := contract.familyRegistered input hsupported
    represents := hrep
    aicExact := preparedVk.aic
    tippInputExact := htipp
    accepts := hv1
  }

/-- The raw extracted adapter acceptance event for the concrete runtime stored
in `data`.  This is deliberately only a Rust control-flow/result equation; it
does not mention `SnarkPackV1.Accepts`, `FsAccepts`, `LeafData`, or any
equivalent formal-verifier conclusion. -/
def ShippingCallData.AdapterAcceptedAt
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity)
    (transcript : Ipp.FsTranscript μ Fr)
    (randomizerEffect finalRandomizerEffect : data.randomizerState)
    (effect finalEffect : data.tippState)
    (tippPairing : data.tippPairingState)
    (ppePairing : data.ppePairingState) : Prop :=
  (do
    let adapterInput ←
      applications.groth16_aggregation.shipping_aggregate_adapter_core_input
        (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
        data.serializeG1 data.deserializeG1
        (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
        data.serializeG2 data.deserializeG2
        (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
        ⟨decodedRandomizerMessage data.serialization data.input.decodedProof⟩
        data.srs data.input.decodedProof
        (Ipp.Extracted.AggregateAdapterProjection.finVec data.gammaABC)
        (Ipp.Extracted.AggregateAdapterProjection.inputVec
          data.input.publicRows)
        0 1
        (data.statement.e data.statement.alpha data.statement.beta)
        (Ipp.Bls12377.prepareNegative data.statement.gamma)
        (Ipp.Bls12377.prepareNegative data.statement.delta)
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
        adapterInput randomizerEffect effect tippPairing ppePairing) =
    .ok (.Ok {
      randomizer := transcript.randomizer
      checks := (true, true)
      accepted := true
      randomizer_effect := finalRandomizerEffect
      tipp_mipp_effect := finalEffect
    })

/-- Raw accepted shipping execution.  It contains only the extracted
application success, the concrete runtime states, and the exact adapter result
equation.  No statement binding, decoded-proof interpretation, prepared-VK
formula, challenge admissibility, KZG semantics, or formal acceptance fact is
part of this execution witness. -/
structure AcceptedShippingExecutionAt
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity)
    (transcript : Ipp.FsTranscript μ Fr) : Type where
  planned : data.call.id ∈ data.expected.val
  reducerAccepted :
    app_verifier.app_verify_normal_acceptance_core
        data.expected data.results =
      .ok (.Ok true)
  identityAccepted :
    app_verifier.app_verify_plan_identity_core data.call.id
        data.call.bundle_family data.call.expected_real_count
        data.call.bundle_real_count =
      .ok (.Ok data.call.id)
  paddingAccepted :
    app_verifier.app_verify_plan_padding_core data.call.id
        data.call.expected_padded_count data.call.bundle_padded_count =
      .ok (.Ok data.call.id)
  randomizerEffect : data.randomizerState
  finalRandomizerEffect : data.randomizerState
  effect : data.tippState
  finalEffect : data.tippState
  tippPairing : data.tippPairingState
  ppePairing : data.ppePairingState
  adapter :
    data.AdapterAcceptedAt transcript
      randomizerEffect finalRandomizerEffect effect finalEffect
      tippPairing ppePairing

/-- Raw application acceptance plus the static production construction
equations determines the complete application witness. In particular this is
not a caller-supplied semantic acceptance premise. -/
theorem AcceptedShippingExecutionAt.appFacts
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {transcript : Ipp.FsTranscript μ Fr}
    (execution : AcceptedShippingExecutionAt data transcript)
    (construction : ShippingApplicationConstruction data)
    (supported : data.contract.supported data.input) :
    Ipp.Extracted.AppVerifierStateMachine.AcceptedShippingCallFacts
      data.expected data.results data.call data.input :=
  let projection :=
    construction.projectionContract execution.identityAccepted
      execution.paddingAccepted
  Ipp.Extracted.AppVerifierStateMachine.app_acceptance_binds_shipping_input
      data.expected data.results data.call data.input data.contract supported
      construction.declared construction.plan execution.reducerAccepted
      execution.planned execution.identityAccepted execution.paddingAccepted
      projection.family projection.realCount projection.paddedCount

/-- Exact production acceptance event at the transcript generated by the
shipping hash execution.  `Nonempty` hides concrete effect-state witnesses
while retaining a pure proposition suitable for probability events. -/
def ShippingCallData.AcceptedAt
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity)
    (transcript : Ipp.FsTranscript μ Fr) : Prop :=
  Nonempty (AcceptedShippingExecutionAt data transcript)

/-- Irreducible cross-kernel contracts needed after extracted caller and
adapter control flow. Each field names one external serialization, curve,
sampler, or KZG boundary; none asserts application acceptance. -/
structure ShippingVerifierExternalContracts
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity) where
  kernel :
    Ipp.Extracted.AggregateVerifier.ArkworksTippKernelContract
      data.hbilinear data.primitive
  supported : data.contract.supported data.input
  statementProjection :
    Ipp.ShippingV1.StatementProjectionContract
      data.projection data.contract
  represents :
    Ipp.ShippingV1.RepresentsShippingInput data.projection data.input
      data.statement data.proof
  preparedVk :
    ArkworksPreparedVkAicContract data.statement data.gammaABC
      data.input.publicRows
  decoded :
    ∀ transcript
      (_execution : AcceptedShippingExecutionAt data transcript),
      ArkworksDecodedProofContract data.hbilinear data.baseStmt
        data.input.decodedProof data.proof transcript
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
  challengeAdmissible :
    ∀ transcript
      (_execution : AcceptedShippingExecutionAt data transcript),
      ShippingTranscriptAdmissible transcript
  kzg :
    ∀ transcript
      (execution : AcceptedShippingExecutionAt data transcript),
      Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
        data.hbilinear data.baseStmt data.proof transcript
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        execution.tippPairing data.tippOutcome

/-- A production caller construction plus only the named irreducible
cross-kernel contracts. The application witness itself is derived. -/
structure ShippingVerifierRefinementContracts
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity) where
  application : ShippingApplicationConstruction data
  external : ShippingVerifierExternalContracts data

/-- Derive the former accepted-call semantic view from one raw execution, the
separate refinement package, and the deployed primitive's exact challenge
trace. -/
theorem AcceptedShippingExecutionAt.refines
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {transcript : Ipp.FsTranscript μ Fr}
    (execution : AcceptedShippingExecutionAt data transcript)
    (refinement : ShippingVerifierRefinementContracts data)
    (challengeAnswers :
      ArkworksChallengeOracleAnswers data.primitive data.serialization
        data.proof transcript execution.effect) :
    AcceptedShippingV1Call data.expected data.results data.call data.hbilinear
      data.projection data.contract data.input data.baseStmt data.proof
      transcript data.gammaABC data.srs
      data.serializeG1 data.deserializeG1 data.serializeG2
      data.deserializeG2 := by
  let app := execution.appFacts refinement.application
    refinement.external.supported
  apply accepted_app_adapter_call_refines_shipping_v1
    data.expected data.results data.call data.hbilinear data.projection
    data.contract data.input refinement.external.supported app
    data.baseStmt data.proof transcript data.gammaABC
    refinement.external.represents
    refinement.external.preparedVk data.srs data.serializeG1 data.deserializeG1
    data.serializeG2 data.deserializeG2
    (refinement.external.decoded transcript execution) data.primitive
    data.serialization refinement.external.kernel data.randomizerEffects
    execution.randomizerEffect execution.finalRandomizerEffect
    execution.effect execution.finalEffect execution.tippPairing
    execution.ppePairing data.tippOutcome data.ppeOutcome
    challengeAnswers
    (refinement.external.challengeAdmissible transcript execution)
    (refinement.external.kzg transcript execution)
  simpa [ShippingCallData.AdapterAcceptedAt] using execution.adapter

theorem ShippingCallData.acceptedAt_view
    {D : Type} {μ arity : Nat} (data : ShippingCallData D μ arity)
    {transcript : Ipp.FsTranscript μ Fr}
    (haccepted : data.AcceptedAt transcript)
    (refinement : ShippingVerifierRefinementContracts data)
    (challengeAnswers :
      ∀ execution : AcceptedShippingExecutionAt data transcript,
        ArkworksChallengeOracleAnswers data.primitive data.serialization
          data.proof transcript execution.effect) :
    AcceptedShippingV1Call data.expected data.results data.call data.hbilinear
      data.projection data.contract data.input data.baseStmt data.proof
      transcript data.gammaABC data.srs
      data.serializeG1 data.deserializeG1 data.serializeG2
      data.deserializeG2 := by
  rcases haccepted with ⟨execution⟩
  exact execution.refines refinement (challengeAnswers execution)

theorem ShippingCallData.acceptedAt_refines_v1
    {D : Type} {μ arity : Nat} (data : ShippingCallData D μ arity)
    {transcript : Ipp.FsTranscript μ Fr}
    (haccepted : data.AcceptedAt transcript)
    (refinement : ShippingVerifierRefinementContracts data)
    (challengeAnswers :
      ∀ execution : AcceptedShippingExecutionAt data transcript,
        ArkworksChallengeOracleAnswers data.primitive data.serialization
          data.proof transcript execution.effect) :
    Ipp.SnarkPackV1.Accepts data.statement data.proof transcript :=
  (data.acceptedAt_view haccepted refinement challengeAnswers).accepts

theorem ShippingCallData.acceptedAt_binds_input
    {D : Type} {μ arity : Nat} (data : ShippingCallData D μ arity)
    {transcript : Ipp.FsTranscript μ Fr}
    (haccepted : data.AcceptedAt transcript)
    (refinement : ShippingVerifierRefinementContracts data) :
    data.contract.supported data.input ∧
      Ipp.ShippingV1.RepresentsShippingInput data.projection data.input
        data.statement data.proof ∧
      Ipp.ShippingV1.ValidCounts data.input ∧
      Ipp.ShippingV1.RealPrefixExact data.input ∧
      Ipp.ShippingV1.RepeatFinalPadding data.input := by
  rcases haccepted with ⟨execution⟩
  let app := execution.appFacts refinement.application
    refinement.external.supported
  exact ⟨refinement.external.supported, refinement.external.represents,
    app.validCounts,
    data.contract.realPrefixExact data.input refinement.external.supported,
    app.repeatFinalPadding⟩

#print axioms shipping_tipp_input_exact
#print axioms shipping_adapter_input_exact
#print axioms decodedRandomizerMessage_eq_formal
#print axioms production_adapter_input_installed_exact
#print axioms production_adapter_input_projection
#print axioms ShippingApplicationConstruction.projectionContract
#print axioms accepted_app_adapter_call_refines_shipping_v1
#print axioms AcceptedShippingExecutionAt.appFacts
#print axioms AcceptedShippingExecutionAt.refines
#print axioms ShippingCallData.acceptedAt_refines_v1

end

end Ipp.Extracted.ShippingVerifierComposition
