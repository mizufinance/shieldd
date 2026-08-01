import Ipp.Extracted.ShippingProductionOrigin

/-!
Production SHA-query lift for output-derived adaptive shipping calls.

Both the independently intended binding and the selected retained call issue
their VK, canonical-statement, and challenge-context SHA queries inside the
same global byte program. The computational collision bound remains explicit.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingProductionOriginSha

noncomputable section

open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveOriginSha
open Ipp.ShippingHashGame
open Ipp.ShippingRealVerifier
open Ipp.ShippingV1

/-- One explicit SHA-256 query in the joint adaptive byte domain. -/
def querySha256 (input : Bytes) :
    OracleComp GlobalByteSourceSpec Bytes :=
  liftM ((GlobalByteSourceSpec).query (Sum.inr (Sum.inl input)))

/-- The six binding hashes used by an alias comparison.

The intended and selected inputs each contribute one VK, statement, and
challenge-context query. Blake2b calls remain separately tagged. -/
def bindingShaQueries
    {sha256 : Bytes → Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (call : MaterializedAliasCall sha256 blake2b) :
    OracleComp GlobalByteSourceSpec Unit := do
  let _ ← querySha256 (vkDigestPreimage call.intended.serializedVk)
  let _ ← querySha256
    (statementDigestPreimage call.intended.canonicalStatementBytes)
  let _ ← querySha256
    (challengeContextPreimage call.intended.statementDigest)
  let _ ← querySha256
    (vkDigestPreimage call.selected.data.input.serializedVk)
  let _ ← querySha256
    (statementDigestPreimage
      call.selected.data.input.canonicalStatementBytes)
  let _ ← querySha256
    (challengeContextPreimage call.selected.data.input.statementDigest)
  pure ()

/-- Query-lift one retained production materialization result. -/
def materializeRetainedAlias
    (sha256 : Bytes → Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (call : MaterializedAliasCall sha256 blake2b) :
    OriginGlobalComp (MaterializedAliasCall sha256 blake2b) := do
  let _ ← liftGlobalProgram (bindingShaQueries call)
  pure call

/-- Exact deployed hash executions for all six queried binding preimages. -/
structure BindingExecutions
    {sha256 : Bytes → Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (call : MaterializedAliasCall sha256 blake2b) : Prop where
  intendedVk :
    call.intended.vkDigest =
      sha256 (vkDigestPreimage call.intended.serializedVk)
  intendedStatement :
    call.intended.statementDigest =
      sha256
        (statementDigestPreimage call.intended.canonicalStatementBytes)
  intendedContext :
    List.ofFn call.intended.challengeContext =
      sha256 (challengeContextPreimage call.intended.statementDigest)
  selectedVk :
    call.selected.data.input.vkDigest =
      sha256
        (vkDigestPreimage call.selected.data.input.serializedVk)
  selectedStatement :
    call.selected.data.input.statementDigest =
      sha256 (statementDigestPreimage
        call.selected.data.input.canonicalStatementBytes)
  selectedContext :
    List.ofFn call.selected.data.input.challengeContext =
      sha256
        (challengeContextPreimage call.selected.data.input.statementDigest)

/-- The output-derived refinement package proves that every query above is
the exact deployed SHA execution retained by the production call. -/
theorem bindingExecutions
    {sha256 : Bytes → Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (call : MaterializedAliasCall sha256 blake2b) :
    BindingExecutions call := by
  have hselected :
      call.selected.data.contract.supported
        call.selected.data.input :=
    call.selected.refinement.external.supported
  have hsha := call.selected.sha256_exact
  exact {
    intendedVk := by
      calc
        call.intended.vkDigest =
            call.selected.data.contract.sha256
              (vkDigestPreimage call.intended.serializedVk) :=
          call.selected.data.contract.vkDigestExact
            call.intended call.intendedSupported
        _ = sha256 (vkDigestPreimage call.intended.serializedVk) :=
          congrFun hsha _
    intendedStatement := by
      calc
        call.intended.statementDigest =
            call.selected.data.contract.sha256
              (statementDigestPreimage
                call.intended.canonicalStatementBytes) :=
          call.selected.data.contract.statementDigestExact
            call.intended call.intendedSupported
        _ = sha256
              (statementDigestPreimage
                call.intended.canonicalStatementBytes) :=
          congrFun hsha _
    intendedContext := by
      calc
        List.ofFn call.intended.challengeContext =
            call.selected.data.contract.sha256
              (challengeContextPreimage call.intended.statementDigest) :=
          call.selected.data.contract.challengeContextExact
            call.intended call.intendedSupported
        _ = sha256
              (challengeContextPreimage call.intended.statementDigest) :=
          congrFun hsha _
    selectedVk := by
      calc
        call.selected.data.input.vkDigest =
            call.selected.data.contract.sha256
              (vkDigestPreimage
                call.selected.data.input.serializedVk) :=
          call.selected.data.contract.vkDigestExact
            call.selected.data.input hselected
        _ = sha256
              (vkDigestPreimage
                call.selected.data.input.serializedVk) :=
          congrFun hsha _
    selectedStatement := by
      calc
        call.selected.data.input.statementDigest =
            call.selected.data.contract.sha256
              (statementDigestPreimage
                call.selected.data.input.canonicalStatementBytes) :=
          call.selected.data.contract.statementDigestExact
            call.selected.data.input hselected
        _ = sha256
              (statementDigestPreimage
                call.selected.data.input.canonicalStatementBytes) :=
          congrFun hsha _
    selectedContext := by
      calc
        List.ofFn call.selected.data.input.challengeContext =
            call.selected.data.contract.sha256
              (challengeContextPreimage
                call.selected.data.input.statementDigest) :=
          call.selected.data.contract.challengeContextExact
            call.selected.data.input hselected
        _ = sha256
              (challengeContextPreimage
                call.selected.data.input.statementDigest) :=
          congrFun hsha _
  }

/-- The six query lift has exactly the deterministic deployed execution. -/
theorem bindingShaQueries_matches_deployed
    (sha256 : Bytes → Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (call : MaterializedAliasCall sha256 blake2b) :
    simulateQ (deployedGlobalByteImpl sha256 blake2b)
        (bindingShaQueries call) =
      (pure () : ProbComp Unit) := by
  simp [bindingShaQueries, querySha256, deployedGlobalByteImpl]

/-- Production materialization under the deployed joint implementation
returns the same output-derived call after charging all six SHA queries. -/
theorem materializeRetainedAlias_matches_deployed
    (sha256 : Bytes → Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (call : MaterializedAliasCall sha256 blake2b) :
    evalDeployedGlobalByte sha256 blake2b
        (materializeRetainedAlias sha256 blake2b call) =
      (pure call : OriginProbComp
        (MaterializedAliasCall sha256 blake2b)) := by
  unfold materializeRetainedAlias
  rw [evalDeployedGlobalByte_bind]
  have hqueries :
      evalDeployedGlobalByte sha256 blake2b
          (liftGlobalProgram (bindingShaQueries call)) =
        (pure (ULift.up ()) : OriginProbComp (ULift Unit)) := by
    rfl
  rw [hqueries]
  rfl

/-- Adaptive production substitutions are bounded by the exact SHA-256
collision game for the single program containing preselection, all six
binding hashes, and concrete verification. -/
theorem adaptive_production_shipping_sha256_collision_reduction
    (sha256 : Bytes → Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OriginGlobalComp (MaterializedAliasCall sha256 blake2b))
    (Q_sha : Nat)
    (security : MaterializedAliasCollisionSecurity
      sha256 blake2b adversary
        (materializeRetainedAlias sha256 blake2b) Q_sha) :
    Pr[AcceptedMaterializedAlias |
        evalOriginSPMF
          (deployedMaterializedAliasExperiment sha256 blake2b adversary
            (materializeRetainedAlias sha256 blake2b))] ≤
      security.epsilonSha256 :=
  adaptive_materialized_shipping_sha256_collision_reduction
    sha256 blake2b adversary
      (materializeRetainedAlias sha256 blake2b) Q_sha security

#print axioms bindingExecutions
#print axioms bindingShaQueries_matches_deployed
#print axioms materializeRetainedAlias_matches_deployed
#print axioms adaptive_production_shipping_sha256_collision_reduction

end


end Ipp.ShippingProductionOriginSha
