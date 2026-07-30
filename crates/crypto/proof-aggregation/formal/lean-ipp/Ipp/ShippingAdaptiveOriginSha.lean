import Ipp.ShippingAdaptiveOrigin

/-!
Whole-program adaptive SHA-256 reduction for origin-retaining shipping calls.

The adversary returns an unmaterialized request.  A separate oracle program
then constructs the heterogeneous production call and its independently
intended input before the concrete verifier runs.  Consequently one
`IsQueryBoundP` witness covers preselection, production materialization, and
verification without resetting the SHA budget at call selection.

The remaining production obligation is narrow: instantiate `materialize`
with the extracted shipping constructor and prove that its three binding
hashes are the actual SHA queries in this program.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptiveOriginSha

noncomputable section

open Ipp.Bls12377
open Ipp.ShippingAdaptiveCall
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingHashGame
open Ipp.ShippingRealVerifier

/-- One heterogeneous production call produced after preselection, together
with the supported input that the surrounding application intended to bind.
The intended input has exactly the dependent family carried by the selected
production call. -/
structure MaterializedAliasCall
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes) where
  selected : OriginSelectedCall sha256 blake2b
  intended :
    ConcreteShippingInput selected.D selected.μ selected.arity
  intendedSupported :
    selected.data.contract.supported intended

/-- Output of the one shared preselection/materialization/verifier program.
The acceptance decision remains the concrete shipping verifier result. -/
structure MaterializedAliasRun
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes) where
  call : MaterializedAliasCall sha256 blake2b
  output :
    Ipp.FsResult call.selected.μ Fr
      g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

/-- Complete query-transparent adaptive program.

`materialize` is deliberately inside the source program.  Any SHA-256 work
performed while routing the family, hashing the VK or canonical statement,
and deriving the challenge context is therefore charged to the same
whole-program budget as preselection queries. -/
def materializedAliasByteProgram
    {Request : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OracleComp GlobalByteSourceSpec Request)
    (materialize :
      Request →
        OracleComp GlobalByteSourceSpec
          (MaterializedAliasCall sha256 blake2b)) :
    OracleComp GlobalByteSourceSpec
      (MaterializedAliasRun sha256 blake2b) := do
  let request ← adversary
  let call ← materialize request
  let output ←
    simulateQ globalBlake2bFwd
      (shippingVerifierOracle
        (callEncoder call.selected.data call.selected.serialization)
        call.selected.data.statement call.selected.data.proof)
  pure { call := call, output := output }

/-- Concrete deployed execution of the same program.  Production
materialization is evaluated against the deployed joint byte implementation
before the retained shipping verifier is called. -/
def deployedMaterializedAliasExperiment
    {Request : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OracleComp GlobalByteSourceSpec Request)
    (materialize :
      Request →
        OracleComp GlobalByteSourceSpec
          (MaterializedAliasCall sha256 blake2b)) :
    ProbComp (MaterializedAliasRun sha256 blake2b) := do
  let request ←
    simulateQ (deployedGlobalByteImpl sha256 blake2b) adversary
  let call ←
    simulateQ (deployedGlobalByteImpl sha256 blake2b)
      (materialize request)
  let output ←
    shippingRealCallVerifier
      call.selected.data call.selected.serialization blake2b
  pure { call := call, output := output }

/-- The query-transparent program is definitionally the concrete deployed
execution after the existing exact Blake2b-forwarding theorem. -/
theorem materializedAliasByteProgram_matches_deployed
    {Request : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OracleComp GlobalByteSourceSpec Request)
    (materialize :
      Request →
        OracleComp GlobalByteSourceSpec
          (MaterializedAliasCall sha256 blake2b)) :
    simulateQ (deployedGlobalByteImpl sha256 blake2b)
        (materializedAliasByteProgram
          sha256 blake2b adversary materialize) =
      deployedMaterializedAliasExperiment
        sha256 blake2b adversary materialize := by
  unfold materializedAliasByteProgram
  unfold deployedMaterializedAliasExperiment
  rw [simulateQ_bind]
  apply bind_congr
  intro request
  rw [simulateQ_bind]
  apply bind_congr
  intro call
  rw [simulateQ_bind,
    simulate_globalBlake2bFwd_eq_real]
  rfl

/-- The concrete verifier accepted and the retained production input aliases
the independently intended authenticated binding.  No acceptance label is
supplied by either the adversary or the materializer. -/
def AcceptedMaterializedAlias
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes} :
    MaterializedAliasRun sha256 blake2b → Prop :=
  fun run =>
    run.output ∈ support
        (shippingRealCallVerifier
          run.call.selected.data
          run.call.selected.serialization blake2b) ∧
      AcceptedCallOutput run.call.selected.data run.output ∧
      Ipp.ShippingV1.ShippingBindingAlias
        run.call.intended run.call.selected.data.input

/-- Exact VK, canonical-statement, or challenge-context collision produced by
one accepted heterogeneous materialized call. -/
def MaterializedAliasShaCollision
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes} :
    MaterializedAliasRun sha256 blake2b → Prop :=
  fun run =>
    Ipp.ShippingV1.Sha256Collision sha256
        (Ipp.ShippingV1.vkDigestPreimage
          run.call.intended.serializedVk)
        (Ipp.ShippingV1.vkDigestPreimage
          run.call.selected.data.input.serializedVk) ∨
      Ipp.ShippingV1.Sha256Collision sha256
        (Ipp.ShippingV1.statementDigestPreimage
          run.call.intended.canonicalStatementBytes)
        (Ipp.ShippingV1.statementDigestPreimage
          run.call.selected.data.input.canonicalStatementBytes) ∨
      Ipp.ShippingV1.Sha256Collision sha256
        (Ipp.ShippingV1.challengeContextPreimage
          run.call.intended.statementDigest)
        (Ipp.ShippingV1.challengeContextPreimage
          run.call.selected.data.input.statementDigest)

/-- Pointwise reduction from a concrete accepted substitution to the named
three-lane SHA collision event. -/
theorem acceptedMaterializedAlias_implies_shaCollision
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : MaterializedAliasRun sha256 blake2b)
    (haccepted : AcceptedMaterializedAlias run) :
    MaterializedAliasShaCollision run := by
  have hcollision :=
    accepted_call_binding_alias_implies_shaBad
      run.call.selected.data run.call.selected.refinement
      run.call.intended run.call.intendedSupported
      haccepted.2.1 haccepted.2.2
  simpa [MaterializedAliasShaCollision, shaBad,
    Ipp.ShippingV1.ShippingShaCollision,
    run.call.selected.sha256_exact] using hcollision

/-- Computational SHA-256 postcondition for this exact heterogeneous source
program.  `Q_sha` bounds SHA queries across the adversary, the production
materializer, and the verifier in one program; Blake2b queries are excluded by
`IsShaQuery` and retain their separate budget. -/
structure MaterializedAliasCollisionSecurity
    {Request : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OracleComp GlobalByteSourceSpec Request)
    (materialize :
      Request →
        OracleComp GlobalByteSourceSpec
          (MaterializedAliasCall sha256 blake2b))
    (Q_sha : Nat) where
  queryBound :
    IsQueryBoundP
      (materializedAliasByteProgram
        sha256 blake2b adversary materialize)
      IsShaQuery Q_sha
  epsilonSha256 : ℝ≥0∞
  collision_le :
    Pr[MaterializedAliasShaCollision |
        deployedMaterializedAliasExperiment
          sha256 blake2b adversary materialize] ≤
      epsilonSha256

/-- Whole-program adaptive accepted substitutions are bounded by the exact
SHA-256 collision advantage.  The premise bounds only the collision game; it
does not assume a shipping acceptance bound. -/
theorem adaptive_materialized_shipping_sha256_collision_reduction
    {Request : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary : OracleComp GlobalByteSourceSpec Request)
    (materialize :
      Request →
        OracleComp GlobalByteSourceSpec
          (MaterializedAliasCall sha256 blake2b))
    (Q_sha : Nat)
    (security :
      MaterializedAliasCollisionSecurity
        sha256 blake2b adversary materialize Q_sha) :
    Pr[AcceptedMaterializedAlias |
        deployedMaterializedAliasExperiment
          sha256 blake2b adversary materialize] ≤
      security.epsilonSha256 := by
  calc
    _ ≤ Pr[MaterializedAliasShaCollision |
        deployedMaterializedAliasExperiment
          sha256 blake2b adversary materialize] := by
      apply probEvent_mono
      intro run _ haccepted
      exact
        acceptedMaterializedAlias_implies_shaCollision
          run haccepted
    _ ≤ security.epsilonSha256 := security.collision_le

#print axioms materializedAliasByteProgram_matches_deployed
#print axioms acceptedMaterializedAlias_implies_shaCollision
#print axioms adaptive_materialized_shipping_sha256_collision_reduction

end

end Ipp.ShippingAdaptiveOriginSha
