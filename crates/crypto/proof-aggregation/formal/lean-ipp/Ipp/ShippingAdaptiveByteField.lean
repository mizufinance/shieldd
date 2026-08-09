import Ipp.ShippingAdaptiveReindex
import VCVio.OracleComp.QueryTracking.CachingOracle

/-!
One coherent byte-keyed oracle for adaptive shipping verification.

The raw adversary observes complete Blake2b digests, while the formal
verifier consumes their BLS12-377 scalar reductions. Both views use one cache
whose entries retain the digest, scalar, and exact reduction equation.
Arbitrary byte prequeries therefore remain cache hits after statement
selection, including prequeries of future verifier messages.

This module only defines the exact program substrate. The distributional
factorization of a uniform digest through its reduction fiber, the
reduced-to-uniform scalar hop, and the shipping-game refinement are proved in
later modules.
-/

open OracleSpec OracleComp
open scoped OracleSpec.PrimitiveQuery

namespace Ipp.ShippingAdaptiveByteField

noncomputable section

open Ipp.Bls12377
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingHashGame
open Ipp.ShippingMultiStatement
open Ipp.ShippingAdaptiveReindex

/-- Canonical Fiat--Shamir key after the Blake2b ROM replacement. Raw
adversary queries and encoded verifier queries inhabit the same domain. -/
abbrev ByteFieldOracleSpec :=
  List UInt8 →ₒ Fr

/-- Ambient sampling plus the one byte-keyed scalar oracle. -/
abbrev ByteFieldSourceSpec :=
  unifSpec + ByteFieldOracleSpec

/-- Exactly the byte-keyed scalar queries in the coherent source. -/
def IsByteFieldQuery : ByteFieldSourceSpec.Domain → Prop
  | .inl _ => False
  | .inr _ => True

instance instDecidablePredIsByteFieldQuery :
    DecidablePred IsByteFieldQuery := by
  intro q
  cases q with
  | inl _ =>
      exact isFalse (by simp [IsByteFieldQuery])
  | inr _ =>
      exact isTrue trivial

/-- Every scalar has at least one 512-bit reduction preimage. -/
theorem digestFiber_nonempty (value : Fr) :
    Nonempty (Ipp.ShippingScalarReduction.DigestFiber value) := by
  have hmodulus :
      Ipp.Bls12377.scalarModulus ≤
        Ipp.ShippingScalarReduction.digestCard := by
    norm_num [Ipp.Bls12377.scalarModulus,
      Ipp.ShippingScalarReduction.digestCard]
  have hdiv :
      0 <
        Ipp.ShippingScalarReduction.digestCard /
          Ipp.Bls12377.scalarModulus :=
    Nat.div_pos hmodulus
      Ipp.ShippingScalarReduction.scalarModulus_pos
  have hcard :
      0 <
        Fintype.card
          (Ipp.ShippingScalarReduction.DigestFiber value) := by
    rw [Ipp.ShippingScalarReduction.digestFiber_card]
    omega
  exact Fintype.card_pos_iff.mp hcard

/-- Exact uniform sampling inside one nonempty reduction fiber. This is
proof-side ambient randomness, not an additional protocol oracle. -/
noncomputable def sampleDigestFiber
    (value : Fr) :
    OracleComp ByteFieldSourceSpec
      (Ipp.ShippingScalarReduction.DigestFiber value) := by
  letI :
      Nonempty (Ipp.ShippingScalarReduction.DigestFiber value) :=
    digestFiber_nonempty value
  letI :
      SampleableType
        (Ipp.ShippingScalarReduction.DigestFiber value) :=
    SampleableType.ofFintype _
  exact
    OracleComp.liftComp
      (spec := unifSpec)
      (superSpec := ByteFieldSourceSpec)
      ($ᵗ (Ipp.ShippingScalarReduction.DigestFiber value))

@[simp] theorem digestFiber_reduces_to
    (value : Fr)
    (digest : Ipp.ShippingScalarReduction.DigestFiber value) :
    Ipp.ShippingScalarReduction.reduceFr digest.1 = value :=
  digest.2

/-- One cache entry exposes both views of the same oracle answer. -/
structure CoherentByteEntry where
  scalar : Fr
  digest : DigestBytes
  reduction_exact :
    Ipp.ShippingScalarReduction.reduceFr digest = scalar

/-- Internal entry-valued interface used only to obtain the standard lazy
cache implementation. -/
abbrev CoherentEntryOracleSpec :=
  List UInt8 →ₒ CoherentByteEntry

/-- The sole logical Blake2b cache in the transformed whole program. -/
abbrev CoherentByteCache :=
  CoherentEntryOracleSpec.QueryCache

/-- Query the canonical byte-keyed scalar source. -/
def byteFieldQuery (bytes : List UInt8) :
    OracleComp ByteFieldSourceSpec Fr :=
  ByteFieldSourceSpec.query (.inr bytes)

/-- On a cache miss, obtain one scalar answer and sample a complete digest
conditioned on reducing to that answer. -/
noncomputable def coherentEntryMiss :
    QueryImpl CoherentEntryOracleSpec
      (OracleComp ByteFieldSourceSpec) :=
  fun bytes => do
    let scalar ← byteFieldQuery bytes
    let digest ← sampleDigestFiber scalar
    pure {
      scalar := scalar
      digest := digest.1
      reduction_exact := digest.2
    }

/-- Install one coherent entry per exact byte string. -/
noncomputable def coherentEntryImpl :
    QueryImpl CoherentEntryOracleSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  QueryImpl.withCaching coherentEntryMiss

/-- Raw digest view used by arbitrary preselection Blake2b queries. -/
noncomputable def coherentBlake2bImpl :
    QueryImpl Blake2bOracleSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  fun bytes =>
    CoherentByteEntry.digest <$> coherentEntryImpl bytes

/-- Scalar view used by the formal verifier at the same byte key. -/
noncomputable def coherentScalarImpl :
    QueryImpl ByteFieldOracleSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  fun bytes =>
    CoherentByteEntry.scalar <$> coherentEntryImpl bytes

/-- Reading the digest view and reducing it is exactly the scalar view of the
same cached entry.  This is a program identity, not a distributional
assumption. -/
theorem coherentBlake2b_reduce_eq_scalar
    (bytes : List UInt8) :
    Ipp.ShippingScalarReduction.reduceFr <$>
        coherentBlake2bImpl bytes =
      coherentScalarImpl bytes := by
  unfold coherentBlake2bImpl coherentScalarImpl
  rw [Functor.map_map]
  apply congrArg
    (fun f : CoherentByteEntry → Fr => f <$> coherentEntryImpl bytes)
  funext entry
  exact entry.reduction_exact

/-- A cache hit exposes the exact stored coherent entry without consulting
the source oracle again. -/
theorem coherentEntryImpl_run_some
    (cache : CoherentByteCache)
    (bytes : List UInt8)
    (entry : CoherentByteEntry)
    (hcache : cache bytes = some entry) :
    (coherentEntryImpl bytes).run cache =
      pure (entry, cache) := by
  exact
    QueryImpl.withCaching_run_some
      coherentEntryMiss hcache

/-- Ambient sampling forwarded through the coherent cache state. -/
def coherentAmbientImpl :
    QueryImpl unifSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  fun n =>
    monadLift
      (ByteFieldSourceSpec.query (.inl n) :
        OracleComp ByteFieldSourceSpec _)

/-- SHA-256 remains the exact deterministic deployed function. -/
def coherentSha256Impl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes) :
    QueryImpl Sha256OracleSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  fun input => pure (sha256 input)

/-- Interpret the complete raw byte source through the shared coherent cache.
No byte string is required to decode as a structured verifier query. -/
noncomputable def coherentGlobalByteImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes) :
    QueryImpl GlobalByteSourceSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  coherentAmbientImpl +
    (coherentSha256Impl sha256 + coherentBlake2bImpl)

@[simp] theorem coherentGlobalByteImpl_sha
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (input : Ipp.ShippingV1.Bytes) :
    coherentGlobalByteImpl sha256 (.inr (.inl input)) =
      coherentSha256Impl sha256 input := by
  rfl

@[simp] theorem coherentGlobalByteImpl_blake2b
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (bytes : List UInt8) :
    coherentGlobalByteImpl sha256 (.inr (.inr bytes)) =
      coherentBlake2bImpl bytes := by
  rfl

/-- Interpret the sound hybrid source from `ShippingAdaptiveReindex`.
Arbitrary adversarial byte queries take the identity branch, while typed
verifier queries are serialized into the same byte-keyed coherent cache. -/
noncomputable def coherentHybridImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (HybridAdaptiveSourceSpec reached)
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  coherentGlobalByteImpl sha256 ∘ₛ
    hybridToRawByteImpl serialization reached

/-- The raw hybrid branch is forwarded without changing its query or cache
key. -/
@[simp] theorem coherentHybridImpl_raw
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (q : GlobalByteSourceSpec.Domain) :
    coherentHybridImpl sha256 serialization reached (.inl q) =
      coherentGlobalByteImpl sha256 q := by
  simp [coherentHybridImpl, QueryImpl.compose,
    hybridToRawByteImpl]

/-- The typed hybrid branch reads the scalar view of the exact cache cell
addressed by its production byte serialization. -/
@[simp] theorem coherentHybridImpl_typed
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (q : ReachedGlobalFsQuery reached) :
    coherentHybridImpl sha256 serialization reached (.inr q) =
      coherentScalarImpl
        (reachedByteEncoding serialization reached q) := by
  simp only [coherentHybridImpl, QueryImpl.compose,
    hybridToRawByteImpl, QueryImpl.add_apply_inr,
    reachedFieldToRawByteFwd, simulateQ_map,
    simulateQ_spec_query, coherentGlobalByteImpl_blake2b]
  exact coherentBlake2b_reduce_eq_scalar _

/-- Ambient sampling for a structured formal verifier, retaining the same
coherent byte cache. -/
def coherentFormalAmbientImpl :
    QueryImpl unifSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  coherentAmbientImpl

/-- Map a structured formal query to its exact production byte encoding, then
read the scalar view of the same coherent cache entry. -/
noncomputable def coherentGlobalFsImpl
    (serialization : GlobalQuerySerialization) :
    QueryImpl GlobalFsSourceSpec
      (StateT CoherentByteCache
        (OracleComp ByteFieldSourceSpec)) :=
  coherentFormalAmbientImpl +
    (fun q =>
      coherentScalarImpl (serialization.byteEncoding q))

@[simp] theorem coherentGlobalFsImpl_field
    (serialization : GlobalQuerySerialization)
    (q : GlobalFsQuery) :
    coherentGlobalFsImpl serialization (.inr q) =
      coherentScalarImpl (serialization.byteEncoding q) := by
  rfl

/-- Compile any complete raw byte program into the coherent byte-field
source, retaining the final cache for later verifier or bundle calls. -/
noncomputable def coherentByteProgram
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    {Output : Type}
    (program : OracleComp GlobalByteSourceSpec Output) :
    OracleComp ByteFieldSourceSpec
      (Output × CoherentByteCache) :=
  (simulateQ (coherentGlobalByteImpl sha256) program).run ∅

/-- Run raw preselection and its selected structured continuation inside one
cache state. This is the shape required to preserve deliberate prequeries of
future verifier bytes. -/
noncomputable def coherentByteThenGlobalFsProgram
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    {Selected Output : Type}
    (preselection :
      OracleComp GlobalByteSourceSpec Selected)
    (continuation :
      Selected → OracleComp GlobalFsSourceSpec Output) :
    OracleComp ByteFieldSourceSpec
      (Output × CoherentByteCache) :=
  (do
    let selected ←
      simulateQ (coherentGlobalByteImpl sha256) preselection
    simulateQ (coherentGlobalFsImpl serialization)
      (continuation selected)).run ∅

/-- Output marginal of the same cache-preserving whole program. -/
noncomputable def coherentByteThenGlobalFsOutput
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    {Selected Output : Type}
    (preselection :
      OracleComp GlobalByteSourceSpec Selected)
    (continuation :
      Selected → OracleComp GlobalFsSourceSpec Output) :
    OracleComp ByteFieldSourceSpec Output :=
  Prod.fst <$>
    coherentByteThenGlobalFsProgram
      sha256 serialization preselection continuation

/-- Fiber-lifted execution of one sound hybrid program.  The retained cache
is the single byte-keyed table shared by opaque and typed query forms. -/
noncomputable def fiberLiftedHybridProgram
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    OracleComp ByteFieldSourceSpec
      (Output × CoherentByteCache) :=
  (simulateQ
    (coherentHybridImpl sha256 serialization reached)
    program).run ∅

/-- Output marginal of `fiberLiftedHybridProgram`. -/
noncomputable def fiberLiftedHybridOutput
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    OracleComp ByteFieldSourceSpec Output :=
  (simulateQ
    (coherentHybridImpl sha256 serialization reached)
    program).run' ∅

namespace OriginByteReindexing

/-- Exact phase-aware bridge for the retained cache state.  It uses
`raw_exact` only to replace the concrete byte program by its hybrid
annotation; no ROM or modular-reduction comparison occurs here. -/
theorem coherentProjectedOriginProgram_eq_fiberLiftedHybrid
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)}
    {Q_sha Q_fs : Nat}
    {budgets :
      DistinctQueryBudgets
        sha256 blake2b adversary Q_sha Q_fs}
    (boundary :
      OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets) :
    (simulateQ (coherentGlobalByteImpl sha256)
      (projectedOriginByteProgram
        sha256 blake2b adversary)).run ∅ =
      fiberLiftedHybridProgram
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram := by
  unfold fiberLiftedHybridProgram coherentHybridImpl
  rw [← boundary.raw_exact]
  rw [← QueryImpl.simulateQ_compose]

/-- Output-only form of the same exact bridge. -/
theorem coherentProjectedOriginOutput_eq_fiberLiftedHybrid
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)}
    {Q_sha Q_fs : Nat}
    {budgets :
      DistinctQueryBudgets
        sha256 blake2b adversary Q_sha Q_fs}
    (boundary :
      OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets) :
    (simulateQ (coherentGlobalByteImpl sha256)
      (projectedOriginByteProgram
        sha256 blake2b adversary)).run' ∅ =
      fiberLiftedHybridOutput
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram := by
  unfold fiberLiftedHybridOutput coherentHybridImpl
  rw [← boundary.raw_exact]
  rw [← QueryImpl.simulateQ_compose]

end OriginByteReindexing

/-!
Open quantitative obligation:
`hybridRawIdeal_event_le_fiberLiftedUniform_add_modReduction`.

Its left endpoint is
`ShippingAdaptiveReindex.hybridRawIdealExperiment`; its right endpoint is
`fiberLiftedHybridOutput` after interpreting `ByteFieldSourceSpec` with a
uniform byte-keyed scalar oracle.  Proving the bound requires a distribution
theorem that reconstructs a uniform digest by first sampling its reduced
scalar with the induced distribution and then sampling uniformly in that
scalar's fiber.  The same proof must transport
`OriginByteReindexing.hybridQueryBound` to the byte-field experiment so its
modular-reduction loss is charged to the complete adversary-plus-verifier
`Q_fs`.  No conditional theorem or assumption is declared here.
-/

end

end Ipp.ShippingAdaptiveByteField
