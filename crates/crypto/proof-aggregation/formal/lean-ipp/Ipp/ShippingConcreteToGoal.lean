import Ipp.Extracted.ShippingCallMaterialization
import Ipp.ShippingDeployedHashTraceConstruction
import Ipp.ShippingToGoal

/-!
Concrete output-derived shipping-to-goal composition.

The shipping call, statement, proof, projection, prepared VK, verifier SRS,
and refinement contracts come from one `ConcreteOutputDerivedCall`.  The
deployed challenge contract is constructed from the retained accepted run and
exact hash postconditions.  Cryptographic security, query budgets, and the
independently intended authenticated input remain explicit parameters.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingConcreteToGoal

noncomputable section

open Ipp.Bls12377
open Ipp.Extracted.ShippingCallConstruction
open Ipp.Extracted.ShippingCallMaterialization
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.ShippingDeployedHashTraceConstruction
open Ipp.ShippingRealVerifier

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

local instance fsSourceUniform
    {G1 G2 GT : Type} :
    IsUniformSpec (Ipp.FsSourceSpec Fr G1 G2 GT) :=
  IsUniformSpec.ofFintypeInhabited _

set_option maxHeartbeats 2000000 in
/-- The exact output-derived production call satisfies the existing
shipping-to-goal quantitative theorem.  The inferred result type is the full
ordered-goal refinement, real-acceptance bound, and S1 fork bound of
`shipping_call_to_goal_quantitative`; this definition only discharges its
concrete construction and deployed-hash premises. -/
noncomputable def output_derived_shipping_call_to_goal_quantitative
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    [SampleableType Ipp.ShippingHashGame.DigestBlock]
    [SampleableType Ipp.ShippingHashGame.FieldBlock]
    [DecidableEq g1PrimeSubgroup]
    [DecidableEq g2PrimeSubgroup]
    [DecidableEq ArkPairingOutput]
    [(Ipp.FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput).DecidableEq]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput]
    [IsUniformSpec (Ipp.FsWrappedSpec Fr)]
    [∀ j, SampleableType ((Ipp.FsWrappedSpec Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Fr]
    [Finite
      (Ipp.ShippingHashGame.ChallengeBase Fr g1PrimeSubgroup
        g2PrimeSubgroup ArkPairingOutput)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt g1PrimeSubgroup
          g2PrimeSubgroup ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBytes)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Fr g1PrimeSubgroup
          g2PrimeSubgroup ArkPairingOutput →
        Ipp.ShippingHashGame.DigestBlock)]
    [SampleableType
      (Ipp.ShippingHashGame.BoundedAttempt g1PrimeSubgroup
          g2PrimeSubgroup ArkPairingOutput → Fr)]
    [SampleableType
      (Ipp.ShippingHashGame.ChallengeBase Fr g1PrimeSubgroup
          g2PrimeSubgroup ArkPairingOutput →
        Ipp.ShippingHashGame.FieldBlock)]
    {D : Type} {mu arity : Nat}
    {wire : WireRowDecoder mu (Fin arity → Fr)}
    {bytes : BindingOperations mu (Fin arity → Fr) (ValidatedProof D)}
    {operations :
      SemanticOperations mu arity Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput (ValidatedProof D)}
    {runtime : ConcreteShippingRuntime}
    {boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations)}
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction)
    (challengeSerialization :
      Ipp.ShippingArkworksHash.SerializationContract
        construction.shippingData.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (randomizerSemantics :
      Ipp.ShippingArkworksHash.Blake2bRandomizerEffectPostcondition
        challengeSerialization construction.shippingData.randomizerEffects
        construction.shippingData.input.family
        construction.shippingData.input.challengeContext
        construction.shippingData.statement.rejectionFuel blake2b)
    (tippSemantics :
      Ipp.ShippingArkworksHash.Blake2bTippEffectPostcondition
        challengeSerialization construction.shippingData.input.family
        construction.shippingData.input.challengeContext
        construction.shippingData.statement.rejectionFuel blake2b)
    (intended : Ipp.ShippingV1.ShippingV1Input mu Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      (Fin arity → Fr) (ValidatedProof D))
    (hintended : construction.shippingData.contract.supported intended)
    (hstatementDigest :
      intended.statementDigest =
        construction.shippingData.input.statementDigest)
    (hfuel : construction.shippingData.statement.rejectionFuel =
      Ipp.ShippingHashGame.rejectionFuel)
    (sha :
      Sha256CollisionSecurity
        (shaBad construction.shippingData intended))
    (rom :
      Blake2bRomSecurity
        (shippingRealCallVerifier construction.shippingData
          challengeSerialization blake2b)
        (FormalAcceptedCallOutput construction.shippingData)
        (Ipp.ShippingHashGame.shippingIdealVerifier
          (callEncoder construction.shippingData challengeSerialization)
          construction.shippingData.statement
          construction.shippingData.proof)
        (AcceptedIdealCallOutput construction.shippingData)
        (shaBad construction.shippingData intended))
    (qb : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (Ipp.FsGame
        (construction.shippingData.projection.statementOf
          intended.publicClaim)
        (pure construction.shippingData.proof :
          OracleComp
            (Ipp.FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup
              ArkPairingOutput)
            (Ipp.Proof mu Fr g1PrimeSubgroup g2PrimeSubgroup
              ArkPairingOutput)))
      (Ipp.Q (qb (Sum.inr ()))))
    (security : Ipp.S1.S1ExtractionSecurity
      (construction.shippingData.projection.statementOf
        intended.publicClaim)
      (pure construction.shippingData.proof :
        OracleComp
          (Ipp.FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup
            ArkPairingOutput)
          (Ipp.Proof mu Fr g1PrimeSubgroup g2PrimeSubgroup
            ArkPairingOutput))
      qb badZ)
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRealPrefixRepresentation
        (construction.shippingData.projection.statementOf
          intended.publicClaim)
        construction.shippingData.proof intended.realCount
          (construction.shippingData.contract.validCounts
            intended hintended).2) :=
  Ipp.ShippingToGoal.shipping_call_to_goal_quantitative
    construction.shippingData challengeSerialization blake2b
    (construction.refinementContracts remainder)
    (deployed_hash_trace_construction
      construction.shippingData challengeSerialization blake2b
      randomizerSemantics tippSemantics
      (fun output _hsupport execution =>
        remainder.decoded output.transcript execution))
    intended hintended hstatementDigest hfuel sha rom qb badZ dZ
    hZcard hquery security hinvalid

#print axioms output_derived_shipping_call_to_goal_quantitative

end

end Ipp.ShippingConcreteToGoal
