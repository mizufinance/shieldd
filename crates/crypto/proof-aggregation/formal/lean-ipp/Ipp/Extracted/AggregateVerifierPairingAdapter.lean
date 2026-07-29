import Ipp.Extracted.AggregateAdapterProjection
import Ipp.Extracted.AggregateVerifier
import Ipp.Extracted.TippMippAdapter

/-!
S3-41 specialization of S2's aggregate capstone to the concrete BLS12-377
pairing effects. The only pairing-mathematics premise is subgroup bilinearity.
-/

namespace Ipp.Extracted.AggregateVerifier

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Bls12377
open Ipp.Extracted.AggregateAdapterProjection

noncomputable section

local instance : Fact scalarModulus.Prime := ⟨arithmeticFacts.scalarPrime⟩

/-- External primitive semantics at the exact boundary called by the extracted
    production adapter. No verifier orchestration behavior is summarized here. -/
structure ArkworksTippKernelContract
    {FX : Type}
    (hbilinear : PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput) where
  inverse_nonzero : ∀ effect value, value ≠ 0 →
    primitive.inverse effect value = .ok (some value⁻¹)
  pairing_singleton : ∀ effect left right,
    primitive.pairing_inner_product effect ⟨[left]⟩ ⟨[right]⟩ =
      .ok (.Ok ((executablePairingLinear hbilinear) left right))
  msm_singleton : ∀ effect message scalar,
    primitive.msm_inner_product effect ⟨[message]⟩ ⟨[scalar]⟩ =
      .ok (.Ok (scalar • message))

/-- Exact challenge calls made during one concrete accepted-path transcript.
    Message bytes are the serializer contract's canonical concatenations; the
    extracted adapter proves that these are precisely the production inputs. -/
structure ArkworksTippChallengeTrace
    {FX : Type} {n : Nat}
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (effect0 : FX) where
  effect : Nat → FX
  effect3 : FX
  effect4 : FX
  x0 :
    primitive.derive_challenge effect0
        applications.groth16_aggregation.TippMippChallengeStage.X0
        ⟨Ipp.Extracted.TippMippAdapter.x0Message serialization
          transcript.randomizer proof.ComA.1 proof.ComB proof.ComA.2
          proof.ipAb proof.aggC⟩ =
      .ok (.Ok transcript.x0, effect 0)
  round : ∀ k (hk : k < n),
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
    primitive.derive_challenge (effect n)
        applications.groth16_aggregation.TippMippChallengeStage.FinalBridge
        ⟨Ipp.Extracted.TippMippAdapter.finalBridgeMessage serialization
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 n)
          (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal)⟩ =
      .ok (.Ok transcript.bridge, effect3)
  kzg :
    primitive.derive_challenge effect3
        applications.groth16_aggregation.TippMippChallengeStage.Kzg
        ⟨Ipp.Extracted.TippMippAdapter.kzgMessage serialization
          transcript.bridge (proof.vFinal, proof.wFinal)⟩ =
      .ok (.Ok transcript.kzg, effect4)
  randomizer_nonzero : transcript.randomizer ≠ 0
  x0_nonzero : transcript.x0 ≠ 0
  round_nonzero : ∀ i, transcript.roundAnswer i ≠ 0
  bridge_nonzero : transcript.bridge ≠ 0
  kzg_nonzero : transcript.kzg ≠ 0

/-- A shipping challenge implementation supplies the exact accepted-path trace
    for every initial effect state. This is the stateful contract later
    discharged by the extracted byte-oracle sampler. -/
structure ArkworksTippChallengeContract
    {FX : Type} {n : Nat}
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr) where
  trace : ∀ effect0,
    ArkworksTippChallengeTrace primitive serialization stmt proof transcript
      effect0

/-- Exact KZG verification semantics at the two structured-key calls. No
    verifier sequencing or Rust control-flow behavior is included. -/
structure ArkworksTippKzgContract
    {PE : Type} {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (pairing : PE) (outcome : PE → Option Unit) where
  acceptV :
    (statementWithExecutablePairing hbilinear baseStmt).acceptV
        transcript.kzg
        (Ipp.transcriptCoeffs
          (Ipp.reversedView transcript.roundAnswer) 1)
        proof.vFinal proof.vOpening ↔
      outcome pairing = some () ∧
        (statementWithExecutablePairing hbilinear baseStmt).e g
            (proof.vFinal -
              (∑ i : Fin (2 ^ n),
                Ipp.transcriptCoeffs
                    (Ipp.reversedView transcript.roundAnswer) 1 i *
                  (transcript.kzg ^ 2) ^ (i : Nat)) • h) -
          (statementWithExecutablePairing hbilinear baseStmt).e
            (gBeta - transcript.kzg • g) proof.vOpening = 0
  acceptW :
    (statementWithExecutablePairing hbilinear baseStmt).acceptW
        transcript.kzg
        (Ipp.transcriptCoeffs
          (fun i => Ipp.gipaChallenge
            (Ipp.reversedView transcript.roundAnswer i))
          transcript.randomizer⁻¹)
        proof.wFinal proof.wOpening ↔
      outcome pairing = some () ∧
        (statementWithExecutablePairing hbilinear baseStmt).e
            (proof.wFinal -
              (∑ i : Fin (2 ^ n),
                Ipp.transcriptCoeffs
                    (fun j => Ipp.gipaChallenge
                      (Ipp.reversedView transcript.roundAnswer j))
                    transcript.randomizer⁻¹ i *
                  (transcript.kzg ^ 2) ^ (i : Nat)) • g) h -
          (statementWithExecutablePairing hbilinear baseStmt).e
            proof.wOpening (hAlpha - transcript.kzg • h) = 0

set_option maxHeartbeats 2000000 in
/-- The extracted production TIPP/MIPP adapter, instantiated with the exact
    Arkworks primitive boundary, accepts exactly the formal leaf relation.
    All verifier sequencing, serialization order, comparisons, and error
    propagation are consequences of extracted cores. The two KZG hypotheses
    expose only the external structured-key semantics. -/
theorem arkworks_tipp_primitive_refinement_statement
    {FX PE : Type}
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (kernel : ArkworksTippKernelContract hbilinear primitive)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (pairing : PE) (outcome : PE → Option Unit)
    (effect0 : FX)
    (trace : ArkworksTippChallengeTrace primitive serialization
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript
      effect0)
    (hacceptV :
      (statementWithExecutablePairing hbilinear baseStmt).acceptV
          transcript.kzg
          (Ipp.transcriptCoeffs
            (Ipp.reversedView transcript.roundAnswer) 1)
          proof.vFinal proof.vOpening ↔
        outcome pairing = some () ∧
          (statementWithExecutablePairing hbilinear baseStmt).e g
              (proof.vFinal -
                (∑ i : Fin (2 ^ n),
                  Ipp.transcriptCoeffs
                      (Ipp.reversedView transcript.roundAnswer) 1 i *
                    (transcript.kzg ^ 2) ^ (i : Nat)) • h) -
            (statementWithExecutablePairing hbilinear baseStmt).e
              (gBeta - transcript.kzg • g) proof.vOpening = 0)
    (hacceptW :
      (statementWithExecutablePairing hbilinear baseStmt).acceptW
          transcript.kzg
          (Ipp.transcriptCoeffs
            (fun i => Ipp.gipaChallenge
              (Ipp.reversedView transcript.roundAnswer i))
            transcript.randomizer⁻¹)
          proof.wFinal proof.wOpening ↔
        outcome pairing = some () ∧
          (statementWithExecutablePairing hbilinear baseStmt).e
              (proof.wFinal -
                (∑ i : Fin (2 ^ n),
                  Ipp.transcriptCoeffs
                      (fun j => Ipp.gipaChallenge
                        (Ipp.reversedView transcript.roundAnswer j))
                      transcript.randomizer⁻¹ i *
                    (transcript.kzg ^ 2) ^ (i : Nat)) • g) h -
            (statementWithExecutablePairing hbilinear baseStmt).e
              proof.wOpening (hAlpha - transcript.kzg • h) = 0) :
    (∃ finalEffect,
      Ipp.Extracted.CombinedChecks.runTipp
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
              (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
              (Classical.decEq _)))
          (tippPairingEffect hbilinear outcome)
          (Ipp.Extracted.VerifyTippMipp.coreInput
            (statementWithExecutablePairing hbilinear baseStmt)
            proof transcript g gBeta h hAlpha)
          effect0 pairing =
        .ok (.Ok true, finalEffect)) ↔
    Ipp.LeafData (statementWithExecutablePairing hbilinear baseStmt)
      proof transcript := by
  letI : DecidableEq g1PrimeSubgroup := Classical.decEq _
  letI : DecidableEq ArkPairingOutput := Classical.decEq _
  let stmt := statementWithExecutablePairing hbilinear baseStmt
  let effects :=
    Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
        (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
        (Classical.decEq _))
  let inverse : Fin n → Fr := fun i => (transcript.roundAnswer i)⁻¹
  let folded := Ipp.terminalFold proof.ComA proof.ComB proof
    transcript.roundAnswer
  let leftAccepted : Bool :=
    decide (stmt.e proof.aFinal proof.vFinal = folded.comA.1)
  let rightAccepted : Bool :=
    decide (stmt.e proof.wFinal proof.bFinal = folded.comB)
  let targetAccepted : Bool :=
    decide (stmt.e proof.aFinal proof.bFinal = folded.comT.1)
  let cAccepted : Bool :=
    decide (stmt.e proof.cFinal proof.vFinal = folded.comA.2)
  let zAccepted : Bool :=
    decide
      (Ipp.terminalR transcript.randomizer
          (Ipp.reversedView transcript.roundAnswer) • proof.cFinal =
        folded.comT.2)
  have hx0 :
      effects.derive_x0 effect0 transcript.randomizer proof.ComA.1 proof.ComB
          proof.ComA.2 proof.ipAb proof.aggC =
        .ok (.Ok transcript.x0, trace.effect 0) := by
    calc
      _ = applications.groth16_aggregation.arkworks_tipp_x0_adapter_core
          primitive effect0 transcript.randomizer proof.ComA.1 proof.ComB
            proof.ComA.2 proof.ipAb proof.aggC :=
        Ipp.Extracted.TippMippAdapter.effect_derive_x0_exact primitive
          (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
            (Classical.decEq _))
          (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
            (Classical.decEq _))
          effect0 transcript.randomizer proof.ComA.1 proof.ComB proof.ComA.2
          proof.ipAb proof.aggC
      _ = primitive.derive_challenge effect0 .X0
          ⟨Ipp.Extracted.TippMippAdapter.x0Message serialization
            transcript.randomizer proof.ComA.1 proof.ComB proof.ComA.2
            proof.ipAb proof.aggC⟩ :=
        Ipp.Extracted.TippMippAdapter.x0_core_exact primitive serialization
          effect0 transcript.randomizer proof.ComA.1 proof.ComB proof.ComA.2
          proof.ipAb proof.aggC
      _ = _ := trace.x0
  have hderive : ∀ k (hk : k < n),
      effects.derive_round (trace.effect k)
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 k)
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).2 =
        .ok (.Ok (transcript.roundAnswer ⟨k, hk⟩),
          trace.effect (k + 1)) := by
    intro k hk
    calc
      _ = applications.groth16_aggregation.arkworks_tipp_round_adapter_core
          primitive (trace.effect k)
            (Ipp.Extracted.VerifyTippMipp.priorAt
              transcript.roundAnswer transcript.x0 k)
            (Ipp.Extracted.VerifyTippMipp.extractedRounds
              proof.rounds (Fin.rev ⟨k, hk⟩)).1
            (Ipp.Extracted.VerifyTippMipp.extractedRounds
              proof.rounds (Fin.rev ⟨k, hk⟩)).2 :=
        Ipp.Extracted.TippMippAdapter.effect_derive_round_exact primitive
          (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
            (Classical.decEq _))
          (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
            (Classical.decEq _))
          (trace.effect k)
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 k)
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).2
      _ = primitive.derive_challenge (trace.effect k) .Round
          ⟨Ipp.Extracted.TippMippAdapter.roundMessage serialization
            (Ipp.Extracted.VerifyTippMipp.priorAt
              transcript.roundAnswer transcript.x0 k)
            (Ipp.Extracted.VerifyTippMipp.extractedRounds
              proof.rounds (Fin.rev ⟨k, hk⟩)).1
            (Ipp.Extracted.VerifyTippMipp.extractedRounds
              proof.rounds (Fin.rev ⟨k, hk⟩)).2⟩ :=
        Ipp.Extracted.TippMippAdapter.round_core_exact primitive serialization
          (trace.effect k)
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 k)
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (Ipp.Extracted.VerifyTippMipp.extractedRounds
            proof.rounds (Fin.rev ⟨k, hk⟩)).2
      _ = _ := trace.round k hk
  have hinvert : ∀ k (hk : k < n),
      effects.invert_round (trace.effect (k + 1))
          (transcript.roundAnswer ⟨k, hk⟩) =
        .ok (.Ok (inverse ⟨k, hk⟩)) := by
    intro k hk
    exact Ipp.Extracted.TippMippAdapter.effect_invert_round_some
      primitive
      (Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput)
      (Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup)
      (trace.effect (k + 1)) (transcript.roundAnswer ⟨k, hk⟩)
      (transcript.roundAnswer ⟨k, hk⟩)⁻¹
      (kernel.inverse_nonzero _ _ (trace.round_nonzero ⟨k, hk⟩))
  have hbridge :
      effects.derive_final_bridge (trace.effect n)
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 n)
          (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal) =
        .ok (.Ok transcript.bridge, trace.effect3) := by
    calc
      _ = applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core
          primitive (trace.effect n)
            (Ipp.Extracted.VerifyTippMipp.priorAt
              transcript.roundAnswer transcript.x0 n)
            (proof.vFinal, proof.wFinal)
            (proof.aFinal, proof.bFinal, proof.cFinal) :=
        Ipp.Extracted.TippMippAdapter.effect_final_bridge_exact primitive
          (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
            (Classical.decEq _))
          (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
            (Classical.decEq _))
          (trace.effect n)
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 n)
          (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal)
      _ = primitive.derive_challenge (trace.effect n) .FinalBridge
          ⟨Ipp.Extracted.TippMippAdapter.finalBridgeMessage serialization
            (Ipp.Extracted.VerifyTippMipp.priorAt
              transcript.roundAnswer transcript.x0 n)
            (proof.vFinal, proof.wFinal)
            (proof.aFinal, proof.bFinal, proof.cFinal)⟩ :=
        Ipp.Extracted.TippMippAdapter.final_bridge_core_exact
          primitive serialization (trace.effect n)
          (Ipp.Extracted.VerifyTippMipp.priorAt
            transcript.roundAnswer transcript.x0 n)
          (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal)
      _ = _ := trace.bridge
  have hkzg :
      effects.derive_kzg trace.effect3 transcript.bridge
          (proof.vFinal, proof.wFinal) =
        .ok (.Ok transcript.kzg, trace.effect4) := by
    calc
      _ = applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core
          primitive trace.effect3 transcript.bridge
            (proof.vFinal, proof.wFinal) :=
        Ipp.Extracted.TippMippAdapter.effect_kzg_exact primitive
          (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
            (Classical.decEq _))
          (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
            (Classical.decEq _))
          trace.effect3 transcript.bridge (proof.vFinal, proof.wFinal)
      _ = primitive.derive_challenge trace.effect3 .Kzg
          ⟨Ipp.Extracted.TippMippAdapter.kzgMessage serialization
            transcript.bridge (proof.vFinal, proof.wFinal)⟩ :=
        Ipp.Extracted.TippMippAdapter.kzg_core_exact primitive serialization
          trace.effect3 transcript.bridge (proof.vFinal, proof.wFinal)
      _ = _ := trace.kzg
  have hrandomizer :
      effects.invert_randomizer trace.effect4 transcript.randomizer =
        .ok (.Ok transcript.randomizer⁻¹) :=
    Ipp.Extracted.TippMippAdapter.effect_invert_randomizer_some
      primitive
      (Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput)
      (Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup)
      trace.effect4 transcript.randomizer transcript.randomizer⁻¹
      (kernel.inverse_nonzero _ _ trace.randomizer_nonzero)
  have hbaseInner :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.inner_product
          trace.effect4 ⟨[proof.aFinal]⟩ ⟨[proof.bFinal]⟩ =
        .ok (.Ok (stmt.e proof.aFinal proof.bFinal)) := by
    exact Ipp.Extracted.TippMippAdapter.effect_inner_product_singleton
      primitive
      (Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput)
      (Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup)
      trace.effect4 proof.aFinal proof.bFinal
      ((executablePairingLinear hbilinear) proof.aFinal proof.bFinal)
      (kernel.pairing_singleton _ _ _)
  have hbaseLeft :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.verify_left
          trace.effect4 ⟨[proof.vFinal]⟩ ⟨[proof.aFinal]⟩ folded.comA.1 =
        .ok (.Ok leftAccepted) := by
    exact Ipp.Extracted.TippMippAdapter.effect_verify_left_exact
      primitive trace.effect4 proof.aFinal proof.vFinal
      ((executablePairingLinear hbilinear) proof.aFinal proof.vFinal)
      folded.comA.1 (kernel.pairing_singleton _ _ _)
  have hbaseRight :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.verify_right
          trace.effect4 ⟨[proof.wFinal]⟩ ⟨[proof.bFinal]⟩ folded.comB =
        .ok (.Ok rightAccepted) := by
    exact Ipp.Extracted.TippMippAdapter.effect_verify_right_exact
      primitive trace.effect4 proof.wFinal proof.bFinal
      ((executablePairingLinear hbilinear) proof.wFinal proof.bFinal)
      folded.comB (kernel.pairing_singleton _ _ _)
  have hbaseTarget :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.verify_target
          trace.effect4 ⟨[()]⟩ ⟨[stmt.e proof.aFinal proof.bFinal]⟩
            folded.comT.1 =
        .ok (.Ok targetAccepted) := by
    exact Ipp.Extracted.TippMippAdapter.effect_verify_target_exact
      primitive trace.effect4 (stmt.e proof.aFinal proof.bFinal)
      folded.comT.1
  have hc :
      effects.verify_c trace.effect4 ⟨[proof.cFinal]⟩ ⟨[proof.vFinal]⟩
          folded.comA.2 =
        .ok (.Ok cAccepted) := by
    exact Ipp.Extracted.TippMippAdapter.effect_verify_c_exact
      primitive trace.effect4 proof.cFinal proof.vFinal
      ((executablePairingLinear hbilinear) proof.cFinal proof.vFinal)
      folded.comA.2 (kernel.pairing_singleton _ _ _)
  have hz :
      effects.verify_z trace.effect4 ⟨[proof.cFinal]⟩
          ⟨[Ipp.terminalR transcript.randomizer
            (Ipp.reversedView transcript.roundAnswer)]⟩ folded.comT.2 =
        .ok (.Ok zAccepted) := by
    exact Ipp.Extracted.TippMippAdapter.effect_verify_z_exact
      primitive
      (Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput)
      trace.effect4 proof.cFinal
      (Ipp.terminalR transcript.randomizer
        (Ipp.reversedView transcript.roundAnswer))
      (Ipp.terminalR transcript.randomizer
        (Ipp.reversedView transcript.roundAnswer) • proof.cFinal)
      folded.comT.2 (kernel.msm_singleton _ _ _)
  have hrefine :=
    Ipp.Extracted.VerifyTippMipp.verify_tipp_mipp_refinement_statement
      effects outcome stmt proof transcript g gBeta h hAlpha pairing
      effect0 trace.effect trace.effect3 trace.effect4 inverse
      leftAccepted rightAccepted targetAccepted cAccepted zAccepted
      hx0 hderive hinvert (fun _ => rfl) trace.round_nonzero hbridge hkzg
      hrandomizer hbaseInner hbaseLeft hbaseRight hbaseTarget
      (by simp [leftAccepted, folded])
      (by simp [rightAccepted, folded])
      (by simp [targetAccepted, folded])
      hc (by simp [cAccepted, folded]) hz (by simp [zAccepted, folded])
      hacceptV hacceptW
  change
    (∃ finalEffect,
      Ipp.Extracted.CombinedChecks.runTipp effects
          (Ipp.Extracted.VerifyTippMipp.modelPairing stmt.e outcome)
          (Ipp.Extracted.VerifyTippMipp.coreInput
            stmt proof transcript g gBeta h hAlpha)
          effect0 pairing =
        .ok (.Ok true, finalEffect)) ↔
    Ipp.LeafData stmt proof transcript
  have hrun :=
    Ipp.Extracted.CombinedChecks.runTipp_eq_model effects
      (Ipp.Extracted.VerifyTippMipp.modelPairing stmt.e outcome)
      (Ipp.Extracted.VerifyTippMipp.coreInput
        stmt proof transcript g gBeta h hAlpha)
      effect0 pairing
  constructor
  · intro haccepted
    apply hrefine.mp
    exact Eq.mp
      (congrArg (fun result =>
        ∃ finalEffect, result = .ok (.Ok true, finalEffect)) hrun)
      haccepted
  · intro hleaf
    exact Eq.mpr
      (congrArg (fun result =>
        ∃ finalEffect, result = .ok (.Ok true, finalEffect)) hrun)
      (hrefine.mpr hleaf)

/-- Exact semantic result of the concrete TIPP/MIPP adapter after its
    extracted verifier core returns true. -/
structure ArkworksTippRefinement
    {E FX PE : Type}
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup E)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (tipp_pairing : PE) (tippOutcome : PE → Option Unit) where
  accepted : ∀ effect finalEffect,
    Ipp.Extracted.CombinedChecks.runTipp effects
        (tippPairingEffect hbilinear tippOutcome)
        (Ipp.Extracted.AggregateAdapter.installRandomizer
          input.combined transcript.randomizer).tipp_mipp
        effect tipp_pairing =
      .ok (.Ok true, finalEffect) →
    transcript.x0 ≠ 0 ∧
      (∀ i, transcript.roundAnswer i ≠ 0) ∧
      transcript.bridge ≠ 0 ∧ transcript.kzg ≠ 0 ∧
      Ipp.LeafData (statementWithExecutablePairing hbilinear baseStmt)
        proof transcript

/-- The concrete refinement is derived from extracted adapter cores, the
    shipping challenge trace, and exact external primitive postconditions.
    Acceptance may return any effect state; the existential verifier theorem
    proves that the state cannot hide a failed leaf relation. -/
theorem arkworks_tipp_refinement_from_primitives
    {FX PE : Type}
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (kernel : ArkworksTippKernelContract hbilinear primitive)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (pairing : PE) (outcome : PE → Option Unit)
    (challenges : ArkworksTippChallengeContract primitive serialization
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript)
    (input_tipp :
      (Ipp.Extracted.AggregateAdapter.installRandomizer
        input.combined transcript.randomizer).tipp_mipp =
        Ipp.Extracted.VerifyTippMipp.coreInput
          (statementWithExecutablePairing hbilinear baseStmt)
          proof transcript g gBeta h hAlpha)
    (kzg : ArkworksTippKzgContract hbilinear baseStmt proof transcript
      g gBeta h hAlpha pairing outcome) :
    ArkworksTippRefinement hbilinear baseStmt proof transcript
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
          (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
          (Classical.decEq _)))
      input pairing outcome := by
  refine { accepted := ?_ }
  intro effect finalEffect haccept
  let trace := challenges.trace effect
  have hcore := haccept
  rw [input_tipp] at hcore
  have hexists :
      ∃ nextEffect,
        Ipp.Extracted.CombinedChecks.runTipp
            (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
              (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
                (Classical.decEq _))
              (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
                (Classical.decEq _)))
            (tippPairingEffect hbilinear outcome)
            (Ipp.Extracted.VerifyTippMipp.coreInput
              (statementWithExecutablePairing hbilinear baseStmt)
              proof transcript g gBeta h hAlpha)
            effect pairing =
          .ok (.Ok true, nextEffect) :=
    ⟨finalEffect, hcore⟩
  have hleaf :=
    (arkworks_tipp_primitive_refinement_statement hbilinear primitive
      serialization kernel baseStmt proof transcript g gBeta h hAlpha
      pairing outcome effect trace kzg.acceptV kzg.acceptW).mp hexists
  exact ⟨trace.x0_nonzero, trace.round_nonzero, trace.bridge_nonzero,
    trace.kzg_nonzero, hleaf⟩

/-- The concrete adapter contract is assembled from the two semantic
sub-verifier refinements. Delegation and randomizer installation are no longer
premises: they are consequences of `AggregateAdapter.accepted_path`. -/
def arkworksAcceptedAdapterContract
    {E FX PE PPE : Type}
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup E)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (tipp_pairing : PE) (ppe_pairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (tipp : ArkworksTippRefinement hbilinear baseStmt proof transcript effects
      input tipp_pairing tippOutcome)
    (projection : AdapterInputProjection hbilinear baseStmt proof transcript
      input g gBeta h hAlpha gammaABC publicInputs randomizerMessage) :
    AcceptedAdapterContract
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript
      effects (tippPairingEffect hbilinear tippOutcome)
      (preparedPairingEffect hbilinear ppeOutcome)
      input tipp_pairing ppe_pairing where
  tipp := tipp.accepted
  ppe := fun accepted =>
    ((installed_ppe_true_iff ppeOutcome ppe_pairing projection).mp accepted).2

/-- Kernel-audited capstone: the production-used TIPP/MIPP adapter cores and
their exact primitive postconditions satisfy the accepted-path contract.
There is no caller-supplied TIPP refinement premise. -/
theorem arkworks_acceptedAdapterContract
    {FX PE PPE : Type}
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (kernel : ArkworksTippKernelContract hbilinear primitive)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (tipp_pairing : PE) (ppe_pairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (challenges : ArkworksTippChallengeContract primitive serialization
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript)
    (kzg : ArkworksTippKzgContract hbilinear baseStmt proof transcript
      g gBeta h hAlpha tipp_pairing tippOutcome)
    (projection : AdapterInputProjection hbilinear baseStmt proof transcript
      input g gBeta h hAlpha gammaABC publicInputs randomizerMessage) :
    Nonempty (AcceptedAdapterContract
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
          (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
          (Classical.decEq _)))
      (tippPairingEffect hbilinear tippOutcome)
      (preparedPairingEffect hbilinear ppeOutcome)
      input tipp_pairing ppe_pairing) :=
  ⟨arkworksAcceptedAdapterContract hbilinear baseStmt proof transcript
    (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
        (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
        (Classical.decEq _)))
    input g gBeta h hAlpha gammaABC publicInputs randomizerMessage
    tipp_pairing ppe_pairing tippOutcome ppeOutcome
    (arkworks_tipp_refinement_from_primitives hbilinear primitive
      serialization kernel baseStmt proof transcript input
      g gBeta h hAlpha tipp_pairing tippOutcome challenges projection.tipp kzg)
    projection⟩

/-- Concrete BLS12-377 specialization of the extracted production adapter
accepted path. -/
theorem pairing_adapter_acceptance_implies_snarkPackV1
    {E RFX FX PE PPE : Type}
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX Fr E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup E)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (contract : AcceptedAdapterContract
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript
      effects (tippPairingEffect hbilinear tippOutcome)
      (preparedPairingEffect hbilinear ppeOutcome)
      input tipp_pairing ppe_pairing)
    (haccept :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects effects
          (tippPairingEffect hbilinear tippOutcome)
          (preparedPairingEffect hbilinear ppeOutcome)
          input randomizerEffect effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    Ipp.SnarkPackV1.Accepts
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript := by
  exact adapter_core_acceptance_implies_snarkPackV1
    (statementWithExecutablePairing hbilinear baseStmt) proof transcript
    randomizerEffects effects (tippPairingEffect hbilinear tippOutcome)
    (preparedPairingEffect hbilinear ppeOutcome)
    input randomizerEffect finalRandomizerEffect effect finalEffect
    tipp_pairing ppe_pairing contract haccept

/-- Shipping acceptance through the production-used concrete TIPP/MIPP effect
implies v1 acceptance. The adapter refinement is derived here rather than
accepted from the caller. -/
theorem arkworks_shipping_acceptance_implies_snarkPackV1
    {RFX FX PE PPE : Type}
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (kernel : ArkworksTippKernelContract hbilinear primitive)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX Fr String)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (challenges : ArkworksTippChallengeContract primitive serialization
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript)
    (kzg : ArkworksTippKzgContract hbilinear baseStmt proof transcript
      g gBeta h hAlpha tipp_pairing tippOutcome)
    (projection : AdapterInputProjection hbilinear baseStmt proof transcript
      input g gBeta h hAlpha gammaABC publicInputs randomizerMessage)
    (haccept :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
              (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
              (Classical.decEq _)))
          (tippPairingEffect hbilinear tippOutcome)
          (preparedPairingEffect hbilinear ppeOutcome)
          input randomizerEffect effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    Ipp.SnarkPackV1.Accepts
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript := by
  exact pairing_adapter_acceptance_implies_snarkPackV1
    hbilinear baseStmt proof transcript randomizerEffects
    (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
        (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
        (Classical.decEq _)))
    input
    randomizerEffect finalRandomizerEffect effect finalEffect
    tipp_pairing ppe_pairing tippOutcome ppeOutcome
    (arkworksAcceptedAdapterContract hbilinear baseStmt proof transcript
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
          (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
          (Classical.decEq _)))
      input g gBeta h hAlpha gammaABC publicInputs randomizerMessage
      tipp_pairing ppe_pairing tippOutcome ppeOutcome
      (arkworks_tipp_refinement_from_primitives hbilinear primitive
        serialization kernel baseStmt proof transcript input
        g gBeta h hAlpha tipp_pairing tippOutcome challenges projection.tipp
        kzg)
      projection)
    haccept

/-- The shipping capstone specialized to the canonical concrete adapter input.
All input-field equalities are discharged by construction. The IC fold is
derived from the pointwise Groth16 statement projection. -/
theorem arkworks_canonical_input_acceptance_implies_snarkPackV1
    {RFX FX PE PPE : Type}
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (kernel : ArkworksTippKernelContract hbilinear primitive)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX Fr String)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr)
    (randomizerMessage : List UInt8)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (challenges : ArkworksTippChallengeContract primitive serialization
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript)
    (kzg : ArkworksTippKzgContract hbilinear baseStmt proof transcript
      g gBeta h hAlpha tipp_pairing tippOutcome)
    (haic : ∀ i,
      (statementWithExecutablePairing hbilinear baseStmt).Aic i =
        gammaABC 0 +
          ∑ j : Fin arity,
            publicInputs i j • gammaABC (Fin.succ j))
    (hsize : 2 ^ n < Aeneas.Std.MacCampaign.u64Base)
    (haccept :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq ArkPairingOutput
              (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq g1PrimeSubgroup
              (Classical.decEq _)))
          (tippPairingEffect hbilinear tippOutcome)
          (preparedPairingEffect hbilinear ppeOutcome)
          (formalAdapterInput hbilinear baseStmt proof transcript
            g gBeta h hAlpha gammaABC publicInputs randomizerMessage)
          randomizerEffect effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    Ipp.SnarkPackV1.Accepts
      (statementWithExecutablePairing hbilinear baseStmt) proof transcript := by
  exact arkworks_shipping_acceptance_implies_snarkPackV1
    hbilinear primitive serialization kernel baseStmt proof transcript
    randomizerEffects
    (formalAdapterInput hbilinear baseStmt proof transcript
      g gBeta h hAlpha gammaABC publicInputs randomizerMessage)
    g gBeta h hAlpha gammaABC publicInputs randomizerMessage
    randomizerEffect finalRandomizerEffect effect finalEffect
    tipp_pairing ppe_pairing tippOutcome ppeOutcome challenges kzg
    (formalAdapterInput_projection_from_aic haic hsize) haccept

#print axioms arkworks_tipp_primitive_refinement_statement
#print axioms arkworks_tipp_refinement_from_primitives
#print axioms arkworks_acceptedAdapterContract
#print axioms arkworks_shipping_acceptance_implies_snarkPackV1
#print axioms arkworks_canonical_input_acceptance_implies_snarkPackV1
#print axioms pairing_adapter_acceptance_implies_snarkPackV1

end

end Ipp.Extracted.AggregateVerifier
