import Ipp.Extracted.ShippingCallMaterialization
import Ipp.ShippingAdaptiveOriginSha

/-!
Output-derived construction of the adaptive shipping call.

This module prevents the adaptive origin experiment from receiving an
independently assembled `OriginSelectedCall`. The call data and refinement
contract come from one `ConcreteOutputDerivedCall`; only the exact deployed
serialization/hash postconditions remain explicit boundaries.
-/

namespace Ipp.Extracted.ShippingProductionOrigin

open Ipp.Bls12377
open Ipp.Extracted.ShippingCallMaterialization
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.ShippingAdaptiveCall
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveOriginSha
open Ipp.ShippingHashGame
open Ipp.ShippingRealVerifier

noncomputable section

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

/-- Construct the adaptive selected call from one concrete output-derived
shipping call. No call, statement, proof, or refinement field is supplied
independently. -/
noncomputable def originSelectedCallOfConcreteOutput
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    {runtime : ConcreteShippingRuntime}
    {boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations)}
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract
        construction.shippingData.serialization)
    (blake2b : List UInt8 → DigestBytes)
    (deployed :
      DeployedChallengePrimitiveContract
        construction.shippingData serialization blake2b)
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (sha256Exact :
      construction.shippingData.contract.sha256 = sha256) :
    OriginSelectedCall sha256 blake2b where
  D := D
  μ := μ
  arity := arity
  data := construction.shippingData
  serialization := serialization
  refinement := construction.refinementContracts remainder
  deployed := deployed
  sha256_exact := sha256Exact

/-- The formal adaptive selection is exactly the statement, proof, and
logical key of the retained output-derived shipping input. -/
theorem originSelectionOfConcreteOutput_exact
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    {runtime : ConcreteShippingRuntime}
    {boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations)}
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract
        construction.shippingData.serialization)
    (blake2b : List UInt8 → DigestBytes)
    (deployed :
      DeployedChallengePrimitiveContract
        construction.shippingData serialization blake2b)
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (sha256Exact :
      construction.shippingData.contract.sha256 = sha256) :
    let selected :=
      originSelectedCallOfConcreteOutput construction remainder
        serialization blake2b deployed sha256 sha256Exact
    selected.formalSelection.call =
        productionStatementKey construction.shippingData.input ∧
      selected.formalSelection.logicalKey =
        productionStatementKey construction.shippingData.input ∧
      selected.formalSelection.statement =
        construction.shippingData.projection.statementOf
          construction.shippingData.input.publicClaim ∧
      selected.formalSelection.proof =
        construction.shippingData.projection.proofOf
          construction.shippingData.input.decodedProof := by
  exact OriginSelectedCall.formalSelection_exact
    (originSelectedCallOfConcreteOutput construction remainder
      serialization blake2b deployed sha256 sha256Exact)

/-- Pair the same output-derived call with the independently intended input
used by the adaptive SHA-alias experiment. -/
noncomputable def materializedAliasCallOfConcreteOutput
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    {runtime : ConcreteShippingRuntime}
    {boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations)}
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract
        construction.shippingData.serialization)
    (blake2b : List UInt8 → DigestBytes)
    (deployed :
      DeployedChallengePrimitiveContract
        construction.shippingData serialization blake2b)
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (sha256Exact :
      construction.shippingData.contract.sha256 = sha256)
    (intended : ConcreteShippingInput D μ arity)
    (intendedSupported :
      construction.shippingData.contract.supported intended) :
    MaterializedAliasCall sha256 blake2b where
  selected :=
    originSelectedCallOfConcreteOutput construction remainder
      serialization blake2b deployed sha256 sha256Exact
  intended := intended
  intendedSupported := intendedSupported

/-- The alias experiment's selected production call is definitionally the
one constructed from the retained Rust output. -/
@[simp] theorem materializedAliasCallOfConcreteOutput_selected
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    {runtime : ConcreteShippingRuntime}
    {boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations)}
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract
        construction.shippingData.serialization)
    (blake2b : List UInt8 → DigestBytes)
    (deployed :
      DeployedChallengePrimitiveContract
        construction.shippingData serialization blake2b)
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (sha256Exact :
      construction.shippingData.contract.sha256 = sha256)
    (intended : ConcreteShippingInput D μ arity)
    (intendedSupported :
      construction.shippingData.contract.supported intended) :
    (materializedAliasCallOfConcreteOutput construction remainder
        serialization blake2b deployed sha256 sha256Exact
        intended intendedSupported).selected =
      originSelectedCallOfConcreteOutput construction remainder
        serialization blake2b deployed sha256 sha256Exact := by
  rfl

#print axioms originSelectionOfConcreteOutput_exact
#print axioms materializedAliasCallOfConcreteOutput_selected

end

end Ipp.Extracted.ShippingProductionOrigin
