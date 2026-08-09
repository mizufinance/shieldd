import Ipp.ShippingV1
import Ipp.ShippingHashFsCoupling
import Ipp.ShippingArkworksHash
import Ipp.ShippingRealVerifier
import Ipp.SnarkPackV1Refinement
import Ipp.Extracted.AggregateVerifierPairingAdapter

/-!
Composition boundary from one successfully constructed shipping input through
the deterministic v1 refinement and the quantitative independent goal.

The byte-processing and concrete-adapter facts are theorem parameters supplied
by the F*/Aeneas evidence manifest.  They are not Lean axioms.  The conclusion
keeps both the explicit hash-advantage vector and the statistical loss from
the deployed 512-bit modular scalar reduction.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingToGoal

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

local instance fsSourceUniform
    {G1 G2 GT : Type} :
    IsUniformSpec
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT) :=
  IsUniformSpec.ofFintypeInhabited _

/-- Deterministic accepted executions use exactly the bound shipping
    statement/proof, preserve counts and repeat-final padding, and reach the
    import-isolated v1 acceptance relation. -/
theorem shipping_execution_refines_ordered_goal
    {F G1 G2 GT Row DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (projection :
      Ipp.ShippingV1.ShippingProjection μ F G1 G2 GT Row DecodedProof)
    (contract :
      Ipp.ShippingV1.StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT)
    (shippingAccepts : Ipp.FsTranscript μ F → Prop)
    (hsupported : contract.supported input)
    (hrep :
      Ipp.ShippingV1.RepresentsShippingInput projection input statement proof)
    (hrefines : ∀ transcript, shippingAccepts transcript →
      Ipp.SnarkPackV1.Accepts statement proof transcript)
    (transcript : Ipp.FsTranscript μ F)
    (haccept : shippingAccepts transcript) :
    statement = projection.statementOf input.publicClaim ∧
      proof = projection.proofOf input.decodedProof ∧
      Ipp.SnarkPackV1.Accepts statement proof transcript ∧
      Ipp.ShippingV1.ValidCounts input ∧
      Ipp.ShippingV1.RealPrefixExact input ∧
      Ipp.ShippingV1.RepeatFinalPadding input ∧
      ∀ i : Fin input.realCount,
        (Ipp.SnarkPackV1.Refinement.toRealGoal statement input.realCount
          (contract.validCounts input hsupported).2).rows i =
            Ipp.SnarkPackV1.Refinement.publicRowAt statement
              (Ipp.Goal.embedFin
                (contract.validCounts input hsupported).2 i) := by
  rcases hrep with ⟨hstatement, hproof⟩
  rcases Ipp.ShippingV1.shipping_input_preserves_order_and_padding
      contract input hsupported with ⟨hcounts, hprefix, hpadding⟩
  exact ⟨hstatement, hproof, hrefines transcript haccept, hcounts, hprefix,
    hpadding,
    Ipp.SnarkPackV1.Refinement.realGoal_rows statement input.realCount
      (contract.validCounts input hsupported).2⟩

/-- End-to-end shipping-to-goal capstone.  Its first conjunct is the
    deterministic implementation refinement.  Its second and third conjuncts
    retain the deployed-hash losses and exact S1 fork expression. -/
theorem shipping_to_goal_quantitative_from_refinement
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    [SampleableType Ipp.ShippingHashGame.DigestBlock]
    [SampleableType Ipp.ShippingHashGame.FieldBlock]
    {G1 G2 GT Row DecodedProof : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [(Ipp.FsSourceSpec
      Ipp.Bls12377.Fr G1 G2 GT).DecidableEq]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec
        Ipp.Bls12377.Fr G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT]
    [IsUniformSpec
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ
      Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [Finite
      (Ipp.ShippingHashGame.ChallengeBase
        Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt G1 G2 GT →
        Ipp.ShippingHashGame.DigestBytes)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase
          Ipp.Bls12377.Fr G1 G2 GT →
        Ipp.ShippingHashGame.DigestBlock)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt G1 G2 GT →
        Ipp.Bls12377.Fr)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase
          Ipp.Bls12377.Fr G1 G2 GT →
        Ipp.ShippingHashGame.FieldBlock)]
    {μ : Nat}
    (projection :
      Ipp.ShippingV1.ShippingProjection μ Ipp.Bls12377.Fr
        G1 G2 GT Row DecodedProof)
    (contract :
      Ipp.ShippingV1.StatementBindingContract μ Ipp.Bls12377.Fr
        G1 G2 GT Row DecodedProof)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ Ipp.Bls12377.Fr G1 G2 GT Row DecodedProof)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (shippingAccepts :
      Ipp.FsTranscript μ Ipp.Bls12377.Fr → Prop)
    (hsupported : contract.supported input)
    (hrep : Ipp.ShippingV1.RepresentsShippingInput projection input stmt proof)
    (hrefines : ∀ transcript, shippingAccepts transcript →
      Ipp.SnarkPackV1.Accepts stmt proof transcript)
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (hinjective : Function.Injective
      (Ipp.ShippingHashGame.pointAttemptEncode encode))
    (hfuel : stmt.rejectionFuel =
      Ipp.ShippingHashGame.rejectionFuel)
    (qb :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (badZ : Finset Ipp.Bls12377.Fr) (dZ : Nat)
    (hbindV : Ipp.KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : Ipp.KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : Ipp.PairingCommitmentBinding (Ipp.u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : Ipp.Bls12377.Fr,
      Ipp.PairingCommitmentBinding (Ipp.u4BCommitAtom stmt.e)
        (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (Ipp.FsGame stmt
        (pure proof :
          OracleComp
            (Ipp.FsSourceSpec
              Ipp.Bls12377.Fr G1 G2 GT)
            (Ipp.Proof μ
              Ipp.Bls12377.Fr G1 G2 GT)))
      (Ipp.Q (qb (Sum.inr ()))))
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRealPrefixRepresentation
        stmt proof input.realCount
          (contract.validCounts input hsupported).2)
    (realAccept : ℝ≥0∞)
    (coupling : Ipp.ShippingHashGame.Coupling realAccept
      Pr[fun output => output.1.accept = true |
        Ipp.ShippingHashGame.shippingIdealVerifier
          encode stmt proof]) :
    (∀ transcript, shippingAccepts transcript →
      Ipp.SnarkPackV1.Accepts stmt proof transcript ∧
        ∀ i : Fin input.realCount,
          (Ipp.SnarkPackV1.Refinement.toRealGoal stmt input.realCount
            (contract.validCounts input hsupported).2).rows i =
              Ipp.SnarkPackV1.Refinement.publicRowAt stmt
                (Ipp.Goal.embedFin
                  (contract.validCounts input hsupported).2 i)) ∧
      realAccept ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp stmt
            (pure proof :
              OracleComp
                (Ipp.FsSourceSpec
                  Ipp.Bls12377.Fr G1 G2 GT)
                (Ipp.Proof μ
                  Ipp.Bls12377.Fr G1 G2 GT))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel) +
          coupling.advantages.total ∧
      ¬ 0 <
        ((Ipp.forkTreeStep (qb (Sum.inr ()) + 1)
          (Fintype.card Ipp.Bls12377.Fr))^[μ])
          (Pr[Ipp.Accepted |
              Ipp.fsProbComp stmt
                (pure proof :
                  OracleComp
                    (Ipp.FsSourceSpec
                      Ipp.Bls12377.Fr G1 G2 GT)
                    (Ipp.Proof μ
                      Ipp.Bls12377.Fr G1 G2 GT))] -
            Ipp.S1.badEventError
              (F := Ipp.Bls12377.Fr) (qb (Sum.inr ()))
              (2 ^ μ - 1) dZ) := by
  have hinvalidPadded :=
    Ipp.SnarkPackV1.Refinement.invalid_realPrefix_implies_invalid_padded
      stmt proof input.realCount
        (contract.validCounts input hsupported).2 hinvalid
  have hbound :=
    Ipp.ShippingHashGame.shipping_invalid_goal_quantitative_bound
      encode hinjective stmt proof hfuel qb badZ dZ
      hbindV hbindW hbindA hbindB hZcard
      hquery hinvalidPadded realAccept coupling
  refine ⟨?_, hbound.1, hbound.2⟩
  intro transcript haccept
  have hexec := shipping_execution_refines_ordered_goal
    projection contract input stmt proof shippingAccepts hsupported hrep hrefines
    transcript haccept
  exact ⟨hexec.2.2.1, hexec.2.2.2.2.2.2⟩

set_option maxHeartbeats 2000000 in
/-- Audited shipping-to-goal root for the concrete BLS12-377 Arkworks
adapter. Unlike the generic composition helper, this theorem consumes the
production adapter execution and its extracted primitive contracts directly;
v1 acceptance is derived by
`arkworks_canonical_input_acceptance_implies_snarkPackV1`. -/
theorem shipping_to_goal_quantitative
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    [SampleableType Ipp.ShippingHashGame.DigestBlock]
    [SampleableType Ipp.ShippingHashGame.FieldBlock]
    {RFX FX PE PPE Row DecodedProof : Type}
    [DecidableEq Ipp.Bls12377.g1PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.g2PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.ArkPairingOutput]
    [(Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput).DecidableEq]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput).Range j)]
    [unifSpec ⊂ₒ Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [Finite
      (Ipp.ShippingHashGame.ChallengeBase Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBytes)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Ipp.Bls12377.Fr
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBlock)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.Bls12377.Fr)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Ipp.Bls12377.Fr
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.ShippingHashGame.FieldBlock)]
    {μ arity : Nat}
    (hbilinear : Ipp.Bls12377.PublishedPairingBilinear)
    (primitive : Ipp.Extracted.TippMippAdapter.Primitive
      FX Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput)
    (serialization :
      Ipp.Extracted.TippMippAdapter.SerializationContract primitive)
    (challengeSerialization :
      Ipp.ShippingArkworksHash.SerializationContract serialization)
    (kernel :
      Ipp.Extracted.AggregateVerifier.ArkworksTippKernelContract
        hbilinear primitive)
    (baseStmt : Ipp.FsStatement μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput)
    (transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr)
    (randomizerEffects :
      ark_ip_proofs.applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Ipp.Bls12377.Fr String)
    (g gBeta : Ipp.Bls12377.g1PrimeSubgroup)
    (h hAlpha : Ipp.Bls12377.g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → Ipp.Bls12377.g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ μ) → Fin arity → Ipp.Bls12377.Fr)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX)
    (tippPairing : PE) (ppePairing : PPE)
    (tippOutcome : PE → Option Unit)
    (ppeOutcome : PPE → Option Unit)
    (challenges :
      Ipp.Extracted.AggregateVerifier.ArkworksTippChallengeContract
        primitive serialization
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        proof transcript)
    (kzg : Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
      hbilinear baseStmt proof transcript g gBeta h hAlpha
      tippPairing tippOutcome)
    (haic : ∀ i,
      (Ipp.Bls12377.statementWithExecutablePairing
          hbilinear baseStmt).Aic i =
        gammaABC 0 +
          ∑ j : Fin arity,
            publicInputs i j • gammaABC (Fin.succ j))
    (hsize : 2 ^ μ < Aeneas.Std.MacCampaign.u64Base)
    (hadapter :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              Ipp.Bls12377.ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              Ipp.Bls12377.g1PrimeSubgroup (Classical.decEq _)))
          (Ipp.Bls12377.tippPairingEffect
            hbilinear tippOutcome)
          (Ipp.Bls12377.preparedPairingEffect
            hbilinear ppeOutcome)
          (Ipp.Extracted.AggregateAdapterProjection.formalAdapterInput
            hbilinear baseStmt proof transcript
            g gBeta h hAlpha gammaABC publicInputs
            (Ipp.ShippingArkworksHash.randomizerMessage
              serialization proof))
          randomizerEffect effect tippPairing ppePairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        }))
    (projection :
      Ipp.ShippingV1.ShippingProjection μ Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput Row DecodedProof)
    (contract :
      Ipp.ShippingV1.StatementBindingContract μ Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput Row DecodedProof)
    (input : Ipp.ShippingV1.ShippingV1Input μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput Row DecodedProof)
    (hsupported : contract.supported input)
    (hrep : Ipp.ShippingV1.RepresentsShippingInput projection input
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
      proof)
    (hfuel :
      (Ipp.Bls12377.statementWithExecutablePairing
        hbilinear baseStmt).rejectionFuel =
          Ipp.ShippingHashGame.rejectionFuel)
    (qb : (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (badZ : Finset Ipp.Bls12377.Fr)
    (dZ : Nat)
    (hbindV : Ipp.KzgStructuredKeyBinding
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt).srsV
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt).acceptV)
    (hbindW : Ipp.KzgStructuredKeyBinding
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt).srsW
      (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt).acceptW)
    (hbindA : Ipp.PairingCommitmentBinding
      (Ipp.u4ACommitAtom
        (Ipp.Bls12377.statementWithExecutablePairing
          hbilinear baseStmt).e)
      (fun i =>
        ((Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt).srsV i,
          (Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt).srsV i)))
    (hbindB : ∀ r : Ipp.Bls12377.Fr,
      Ipp.PairingCommitmentBinding
        (Ipp.u4BCommitAtom
          (Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt).e)
        (fun i => (r ^ (i : Nat))⁻¹ •
          (Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt).srsW i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (Ipp.FsGame
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        (pure proof :
          OracleComp
            (Ipp.FsSourceSpec Ipp.Bls12377.Fr
              Ipp.Bls12377.g1PrimeSubgroup
              Ipp.Bls12377.g2PrimeSubgroup
              Ipp.Bls12377.ArkPairingOutput)
            (Ipp.Proof μ Ipp.Bls12377.Fr
              Ipp.Bls12377.g1PrimeSubgroup
              Ipp.Bls12377.g2PrimeSubgroup
              Ipp.Bls12377.ArkPairingOutput)))
      (Ipp.Q (qb (Sum.inr ()))))
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRealPrefixRepresentation
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        proof input.realCount
          (contract.validCounts input hsupported).2)
    (realAccept : ℝ≥0∞)
    (coupling : Ipp.ShippingHashGame.Coupling realAccept
      Pr[fun output => output.1.accept = true |
        Ipp.ShippingHashGame.shippingIdealVerifier
          (Ipp.ShippingArkworksHash.preimage
            challengeSerialization input.family input.challengeContext)
          (Ipp.Bls12377.statementWithExecutablePairing
            hbilinear baseStmt)
          proof]) :
    (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt) =
        projection.statementOf input.publicClaim ∧
      proof = projection.proofOf input.decodedProof ∧
      Ipp.SnarkPackV1.Accepts
        (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
        proof transcript ∧
      Ipp.ShippingV1.ValidCounts input ∧
      Ipp.ShippingV1.RealPrefixExact input ∧
      Ipp.ShippingV1.RepeatFinalPadding input ∧
      (∀ i : Fin input.realCount,
        (Ipp.SnarkPackV1.Refinement.toRealGoal
          (Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt)
          input.realCount
          (contract.validCounts input hsupported).2).rows i =
            Ipp.SnarkPackV1.Refinement.publicRowAt
              (Ipp.Bls12377.statementWithExecutablePairing
                hbilinear baseStmt)
              (Ipp.Goal.embedFin
                (contract.validCounts input hsupported).2 i)) ∧
      realAccept ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp
            (Ipp.Bls12377.statementWithExecutablePairing
              hbilinear baseStmt)
            (pure proof :
              OracleComp
                    (Ipp.FsSourceSpec Ipp.Bls12377.Fr
                      Ipp.Bls12377.g1PrimeSubgroup
                      Ipp.Bls12377.g2PrimeSubgroup
                      Ipp.Bls12377.ArkPairingOutput)
                    (Ipp.Proof μ Ipp.Bls12377.Fr
                      Ipp.Bls12377.g1PrimeSubgroup
                      Ipp.Bls12377.g2PrimeSubgroup
                      Ipp.Bls12377.ArkPairingOutput))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel) +
          coupling.advantages.total ∧
      ¬ 0 <
        ((Ipp.forkTreeStep (qb (Sum.inr ()) + 1)
          (Fintype.card Ipp.Bls12377.Fr))^[μ])
          (Pr[Ipp.Accepted |
              Ipp.fsProbComp
                (Ipp.Bls12377.statementWithExecutablePairing
                  hbilinear baseStmt)
                (pure proof :
                  OracleComp
                    (Ipp.FsSourceSpec Ipp.Bls12377.Fr
                      Ipp.Bls12377.g1PrimeSubgroup
                      Ipp.Bls12377.g2PrimeSubgroup
                      Ipp.Bls12377.ArkPairingOutput)
                    (Ipp.Proof μ Ipp.Bls12377.Fr
                      Ipp.Bls12377.g1PrimeSubgroup
                      Ipp.Bls12377.g2PrimeSubgroup
                      Ipp.Bls12377.ArkPairingOutput))] -
            Ipp.S1.badEventError
              (F := Ipp.Bls12377.Fr)
              (qb (Sum.inr ())) (2 ^ μ - 1) dZ) := by
  let stmt :=
    Ipp.Bls12377.statementWithExecutablePairing hbilinear baseStmt
  have hv1 :
      Ipp.SnarkPackV1.Accepts stmt proof transcript :=
    Ipp.Extracted.AggregateVerifier.arkworks_canonical_input_acceptance_implies_snarkPackV1
        hbilinear primitive serialization kernel baseStmt proof transcript
        randomizerEffects g gBeta h hAlpha gammaABC publicInputs
        (Ipp.ShippingArkworksHash.randomizerMessage
          serialization proof)
        randomizerEffect finalRandomizerEffect
        effect finalEffect tippPairing ppePairing tippOutcome ppeOutcome
        challenges kzg haic hsize hadapter
  have hcounts :=
    Ipp.ShippingV1.shipping_input_preserves_order_and_padding
      contract input hsupported
  have hinvalidPadded :=
    Ipp.SnarkPackV1.Refinement.invalid_realPrefix_implies_invalid_padded
      stmt proof input.realCount
        (contract.validCounts input hsupported).2 hinvalid
  have hbound :=
    Ipp.ShippingHashGame.shipping_invalid_goal_quantitative_bound
      (Ipp.ShippingArkworksHash.preimage
        challengeSerialization input.family input.challengeContext)
      (Ipp.ShippingArkworksHash.pointAttemptEncode_preimage_injective
        challengeSerialization input.family input.challengeContext)
      stmt proof hfuel qb badZ dZ
      hbindV hbindW hbindA hbindB hZcard hquery hinvalidPadded
      realAccept coupling
  exact ⟨hrep.1, hrep.2, hv1, hcounts.1, hcounts.2.1, hcounts.2.2,
    Ipp.SnarkPackV1.Refinement.realGoal_rows stmt input.realCount
      (contract.validCounts input hsupported).2,
    hbound.1, hbound.2⟩

set_option maxHeartbeats 2000000 in
/-- End-to-end shipping root over the concrete deployed-byte experiment.
Acceptance is the raw extracted application/adapter execution event; v1
acceptance is derived from it through the separately supplied verifier-
refinement and deployed-primitive contracts. The application-authenticated
statement digest binds the accepted input to the independently intended
ordered claim or yields the explicit SHA collision event. Both the real
acceptance bound and the S1 invalidity conclusion are stated for that intended
claim; Blake2b replacement remains between the named real and ideal verifier
experiments. -/
theorem shipping_call_to_goal_quantitative
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    [SampleableType Ipp.ShippingHashGame.DigestBlock]
    [SampleableType Ipp.ShippingHashGame.FieldBlock]
    [DecidableEq Ipp.Bls12377.g1PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.g2PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.ArkPairingOutput]
    [(Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput).DecidableEq]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput).Range j)]
    [unifSpec ⊂ₒ Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [Finite
      (Ipp.ShippingHashGame.ChallengeBase Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBytes)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Ipp.Bls12377.Fr
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBlock)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.Bls12377.Fr)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Ipp.Bls12377.Fr
          Ipp.Bls12377.g1PrimeSubgroup
          Ipp.Bls12377.g2PrimeSubgroup
          Ipp.Bls12377.ArkPairingOutput →
        Ipp.ShippingHashGame.FieldBlock)]
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (challengeSerialization :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b :
      List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (refinement :
      Ipp.Extracted.ShippingVerifierComposition.ShippingVerifierRefinementContracts
        data)
    (deployed :
      Ipp.ShippingRealVerifier.DeployedChallengePrimitiveContract
        data challengeSerialization blake2b)
    (intended : Ipp.ShippingV1.ShippingV1Input μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
      (Fin arity → Ipp.Bls12377.Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D))
    (hintended : data.contract.supported intended)
    (hstatementDigest :
      intended.statementDigest = data.input.statementDigest)
    (hfuel : data.statement.rejectionFuel =
      Ipp.ShippingHashGame.rejectionFuel)
    (sha :
      Ipp.ShippingRealVerifier.Sha256CollisionSecurity
        (Ipp.ShippingRealVerifier.shaBad data intended))
    (rom :
      Ipp.ShippingRealVerifier.Blake2bRomSecurity
        (Ipp.ShippingRealVerifier.shippingRealCallVerifier
          data challengeSerialization blake2b)
        (Ipp.ShippingRealVerifier.FormalAcceptedCallOutput data)
        (Ipp.ShippingHashGame.shippingIdealVerifier
          (Ipp.ShippingRealVerifier.callEncoder
            data challengeSerialization)
          data.statement data.proof)
        (Ipp.ShippingRealVerifier.AcceptedIdealCallOutput data)
        (Ipp.ShippingRealVerifier.shaBad data intended))
    (qb : (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (badZ : Finset Ipp.Bls12377.Fr)
    (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (Ipp.FsGame
        (data.projection.statementOf intended.publicClaim)
        (pure data.proof :
          OracleComp
            (Ipp.FsSourceSpec Ipp.Bls12377.Fr
              Ipp.Bls12377.g1PrimeSubgroup
              Ipp.Bls12377.g2PrimeSubgroup
              Ipp.Bls12377.ArkPairingOutput)
            (Ipp.Proof μ Ipp.Bls12377.Fr
              Ipp.Bls12377.g1PrimeSubgroup
              Ipp.Bls12377.g2PrimeSubgroup
              Ipp.Bls12377.ArkPairingOutput)))
      (Ipp.Q (qb (Sum.inr ()))))
    (security : Ipp.S1.S1ExtractionSecurity
      (data.projection.statementOf intended.publicClaim)
      (pure data.proof :
        OracleComp
          (Ipp.FsSourceSpec Ipp.Bls12377.Fr
            Ipp.Bls12377.g1PrimeSubgroup
            Ipp.Bls12377.g2PrimeSubgroup
            Ipp.Bls12377.ArkPairingOutput)
          (Ipp.Proof μ Ipp.Bls12377.Fr
            Ipp.Bls12377.g1PrimeSubgroup
            Ipp.Bls12377.g2PrimeSubgroup
            Ipp.Bls12377.ArkPairingOutput))
      qb badZ)
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRealPrefixRepresentation
        (data.projection.statementOf intended.publicClaim)
        data.proof intended.realCount
          (data.contract.validCounts intended hintended).2) :
    (∀ output,
      output ∈ support
          (Ipp.ShippingRealVerifier.shippingRealCallVerifier
            data challengeSerialization blake2b) →
      Ipp.ShippingRealVerifier.AcceptedCallOutput data output →
        data.statement =
            data.projection.statementOf data.input.publicClaim ∧
          data.proof =
            data.projection.proofOf data.input.decodedProof ∧
          Ipp.SnarkPackV1.Accepts data.statement data.proof
            output.transcript ∧
          Ipp.ShippingV1.ValidCounts data.input ∧
          Ipp.ShippingV1.RealPrefixExact data.input ∧
          Ipp.ShippingV1.RepeatFinalPadding data.input ∧
          ((Ipp.ShippingRealVerifier.SameBoundStatementInput
              intended data.input ∧
            data.statement =
              data.projection.statementOf intended.publicClaim) ∨
            Ipp.ShippingRealVerifier.shaBad data intended) ∧
          Ipp.ShippingV1.ValidCounts intended ∧
          Ipp.ShippingV1.RealPrefixExact intended ∧
          Ipp.ShippingV1.RepeatFinalPadding intended ∧
          refinement.external.statementProjection.Projects intended ∧
          ∀ i : Fin intended.realCount,
            (Ipp.SnarkPackV1.Refinement.toRealGoal
              (data.projection.statementOf intended.publicClaim)
              intended.realCount
              (data.contract.validCounts intended hintended).2).rows i =
                Ipp.SnarkPackV1.Refinement.publicRowAt
                  (data.projection.statementOf intended.publicClaim)
                  (Ipp.Goal.embedFin
                    (data.contract.validCounts intended hintended).2 i)) ∧
      Ipp.ShippingRealVerifier.realCallAcceptance
          data challengeSerialization blake2b ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp
            (data.projection.statementOf intended.publicClaim)
            (pure data.proof :
              OracleComp
                (Ipp.FsSourceSpec Ipp.Bls12377.Fr
                  Ipp.Bls12377.g1PrimeSubgroup
                  Ipp.Bls12377.g2PrimeSubgroup
                  Ipp.Bls12377.ArkPairingOutput)
                (Ipp.Proof μ Ipp.Bls12377.Fr
                  Ipp.Bls12377.g1PrimeSubgroup
                  Ipp.Bls12377.g2PrimeSubgroup
                  Ipp.Bls12377.ArkPairingOutput))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * Ipp.ShippingHashGame.rejectionFuel) +
          sha.epsilonSha256 + rom.epsilonBlake2bRom ∧
      ((Ipp.forkTreeStep (qb (Sum.inr ()) + 1)
          (Fintype.card Ipp.Bls12377.Fr))^[μ])
          (Pr[Ipp.Accepted |
              Ipp.fsProbComp
                (data.projection.statementOf intended.publicClaim)
                (pure data.proof :
                  OracleComp
                    (Ipp.FsSourceSpec Ipp.Bls12377.Fr
                      Ipp.Bls12377.g1PrimeSubgroup
                      Ipp.Bls12377.g2PrimeSubgroup
                      Ipp.Bls12377.ArkPairingOutput)
                    (Ipp.Proof μ Ipp.Bls12377.Fr
                      Ipp.Bls12377.g1PrimeSubgroup
                      Ipp.Bls12377.g2PrimeSubgroup
                      Ipp.Bls12377.ArkPairingOutput))] -
            Ipp.S1.badEventError
              (F := Ipp.Bls12377.Fr)
              (qb (Sum.inr ())) (2 ^ μ - 1) dZ) ≤
        security.total := by
  refine ⟨?_, ?_, ?_⟩
  · intro output hsupport haccepted
    have hrefines :=
      Ipp.ShippingRealVerifier.acceptedCallOutput_refines_shipping_v1
        data challengeSerialization blake2b refinement deployed
        hsupport haccepted
    have hbinding :=
      Ipp.ShippingRealVerifier.accepted_call_binds_intended_or_shaBad
        data refinement intended hintended hstatementDigest haccepted
    have hintendedCounts :=
      Ipp.ShippingV1.shipping_input_preserves_order_and_padding
        data.contract intended hintended
    exact ⟨hrefines.1, hrefines.2.1, hrefines.2.2.1,
      hrefines.2.2.2.1,
      hrefines.2.2.2.2.1, hrefines.2.2.2.2.2, hbinding,
      hintendedCounts.1, hintendedCounts.2.1, hintendedCounts.2.2,
      Ipp.ShippingV1.shipping_input_projects_exact_statement
        data.projection data.contract
        refinement.external.statementProjection intended hintended,
      Ipp.SnarkPackV1.Refinement.realGoal_rows
        (data.projection.statementOf intended.publicClaim)
        intended.realCount
        (data.contract.validCounts intended hintended).2⟩
  · exact
      Ipp.ShippingRealVerifier.shippingRealCall_acceptance_le_fsProbComp
        data challengeSerialization blake2b refinement deployed intended
        hintended hstatementDigest hfuel sha rom
  · have hinvalidPadded :=
      Ipp.SnarkPackV1.Refinement.invalid_realPrefix_implies_invalid_padded
        (data.projection.statementOf intended.publicClaim)
        data.proof intended.realCount
          (data.contract.validCounts intended hintended).2 hinvalid
    exact Ipp.S1.invalid_proof_fork_bound_le_extraction_advantage
      (data.projection.statementOf intended.publicClaim)
      data.proof qb badZ dZ
      hZcard hquery security hinvalidPadded

#print axioms shipping_execution_refines_ordered_goal
#print axioms shipping_to_goal_quantitative_from_refinement
#print axioms shipping_to_goal_quantitative
#print axioms shipping_call_to_goal_quantitative

end

end Ipp.ShippingToGoal
