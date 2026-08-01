import Ipp.ShippingAdaptiveByteField
import VCVio.OracleComp.QueryTracking.SubSpec
import VCVio.ProgramLogic.Relational.SimulateQ

/-!
Exact digest-fiber factorization and query accounting for the adaptive
shipping byte/field bridge.

A uniform 64-byte digest can be sampled in two stages: first sample the
Arkworks scalar induced by reducing a uniform digest, then sample uniformly
inside that scalar's reduction fiber.  This retains the complete digest seen
by arbitrary byte-oracle queries and the exact scalar seen by an aliased typed
query.

The second half proves that the coherent fiber-lifted interpreter charges no
more byte-field queries than the source hybrid's single global Fiat--Shamir
budget.  Thus the same `Q_fs` covers preselection Blake2b queries and typed
verifier challenges.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators
open OracleComp.ProgramLogic.Relational

namespace Ipp.ShippingAdaptiveByteFieldCoupling

noncomputable section

open Ipp.Bls12377
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveReindex
open Ipp.ShippingMultiStatement
open Ipp.ShippingScalarReduction
open Ipp.ShippingAdaptiveByteField

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

local instance : NeZero scalarModulus :=
  ⟨arithmeticFacts.scalarPrime.ne_zero⟩

/-! ## Exact finite-fiber factorization -/

/-- A fixed canonical `SampleableType` instance for each nonempty reduction
fiber.  Keeping it as explicit data avoids introducing a global orphan
instance for the dependent subtype. -/
noncomputable def digestFiberSampleable (value : Fr) :
    SampleableType (DigestFiber value) := by
  letI : Nonempty (DigestFiber value) :=
    digestFiber_nonempty value
  exact SampleableType.ofFintype _

/-- Uniform sampling in one exact reduction fiber, as a plain probability
computation. -/
noncomputable def digestFiberSample
    (value : Fr) :
    ProbComp (DigestFiber value) :=
  @uniformSample (DigestFiber value)
    (digestFiberSampleable value)

/-- Forget the reduction witness after uniform fiber sampling. -/
noncomputable def fiberDigestSample
    (value : Fr) :
    ProbComp DigestBytes :=
  (fun digest : DigestFiber value => digest.1) <$>
    digestFiberSample value

theorem digestFiberSample_point_mass
    (value : Fr)
    (digest : DigestFiber value) :
    Pr[= digest | digestFiberSample value] =
      (Fintype.card (DigestFiber value) : ℝ≥0∞)⁻¹ := by
  exact
    @probOutput_uniformSample
      (DigestFiber value)
      (digestFiberSampleable value)
      inferInstance
      digest

set_option linter.constructorNameAsVariable false in
/-- The forgotten fiber sample has one uniform-fiber point mass exactly on
digests reducing to the selected scalar. -/
theorem fiberDigestSample_point_mass
    (value : Fr)
    (digest : DigestBytes) :
    Pr[= digest | fiberDigestSample value] =
      if value = reduceFr digest
      then (Fintype.card (DigestFiber value) : ℝ≥0∞)⁻¹
      else 0 := by
  by_cases hreduction : value = reduceFr digest
  · rw [if_pos hreduction]
    let lifted : DigestFiber value := ⟨digest, hreduction.symm⟩
    change
      Pr[= lifted.1 |
        (fun candidate : DigestFiber value => candidate.1) <$>
          digestFiberSample value] =
        (Fintype.card (DigestFiber value) : ℝ≥0∞)⁻¹
    rw [probOutput_map_injective
      (digestFiberSample value)
      (fun left right equality => Subtype.ext equality)
      lifted]
    exact digestFiberSample_point_mass value lifted
  · rw [if_neg hreduction]
    apply probOutput_eq_zero_of_not_mem_support
    intro hsupport
    rw [fiberDigestSample, support_map, Set.mem_image] at hsupport
    obtain ⟨candidate, _hcandidate, hcand⟩ := hsupport
    apply hreduction
    rw [← hcand]
    exact candidate.2.symm

/-- First draw the exact scalar distribution induced by a uniform digest,
then resample a complete digest uniformly in the selected scalar's fiber. -/
noncomputable def factorUniformDigest
    [SampleableType DigestBytes] :
    ProbComp DigestBytes := do
  let value ← reduceFr <$> ($ᵗ DigestBytes)
  fiberDigestSample value

/-- Every digest has exactly the uniform 512-bit point mass after the
two-stage factorization. -/
theorem factorUniformDigest_point_mass
    [SampleableType DigestBytes]
    (digest : DigestBytes) :
    Pr[= digest | factorUniformDigest] =
      (digestCard : ℝ≥0∞)⁻¹ := by
  rw [factorUniformDigest, probOutput_bind_eq_sum_fintype]
  simp_rw [fiberDigestSample_point_mass,
    probOutput_uniform_map_eq_card_fiber,
    mul_ite, mul_zero]
  rw [Finset.sum_ite_eq' Finset.univ (reduceFr digest)]
  simp only [Finset.mem_univ, if_true]
  rw [digestBytes_card]
  have hcardPos :
      0 < Fintype.card (DigestFiber (reduceFr digest)) :=
    Fintype.card_pos_iff.mpr
      (digestFiber_nonempty (reduceFr digest))
  have hcardNeZero :
      (Fintype.card
        (DigestFiber (reduceFr digest)) : ℝ≥0∞) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt hcardPos
  have hcardNeTop :
      (Fintype.card
        (DigestFiber (reduceFr digest)) : ℝ≥0∞) ≠ ∞ :=
    ENNReal.natCast_ne_top _
  calc
    (Fintype.card
          (DigestFiber (reduceFr digest)) : ℝ≥0∞) *
        (digestCard : ℝ≥0∞)⁻¹ *
        (Fintype.card
          (DigestFiber (reduceFr digest)) : ℝ≥0∞)⁻¹ =
      ((Fintype.card
          (DigestFiber (reduceFr digest)) : ℝ≥0∞) *
        (Fintype.card
          (DigestFiber (reduceFr digest)) : ℝ≥0∞)⁻¹) *
        (digestCard : ℝ≥0∞)⁻¹ := by
          ac_rfl
    _ = (digestCard : ℝ≥0∞)⁻¹ := by
          rw [ENNReal.mul_inv_cancel hcardNeZero hcardNeTop]
          exact one_mul _

/-- Distributional form of the exact factorization.  This is equality, not a
statistical-distance or computational assumption. -/
theorem factorUniformDigest_evalDist
    [SampleableType DigestBytes] :
    𝒟[factorUniformDigest] =
      𝒟[$ᵗ DigestBytes] := by
  apply evalDist_ext
  intro digest
  rw [factorUniformDigest_point_mass,
    probOutput_uniformSample, digestBytes_card]

/-- Uniform sampling of the fixed digest type is distribution-independent of
the selected `SampleableType` implementation. -/
theorem canonicalUniformDigest_evalDist
    [SampleableType DigestBytes] :
    𝒟[@uniformSample DigestBytes instSampleableTypeFinFunc] =
      𝒟[$ᵗ DigestBytes] := by
  apply evalDist_ext
  intro digest
  rw [@probOutput_uniformSample DigestBytes
      instSampleableTypeFinFunc inferInstance digest,
    probOutput_uniformSample]

/-! The entry-valued form used by the coherent miss handler. -/

/-- The same two-stage sample as `factorUniformDigest`, retaining the induced
scalar and its exact reduction equation. -/
noncomputable def factorUniformEntry
    [SampleableType DigestBytes] :
    ProbComp CoherentByteEntry := do
  let value ← reduceFr <$> ($ᵗ DigestBytes)
  let digest ← digestFiberSample value
  pure {
    scalar := value
    digest := digest
    reduction_exact := by
      exact digest.2
  }

/-- Forgetting the entry metadata recovers the factored digest program
exactly, before taking distributions. -/
theorem factorUniformEntry_digest
    [SampleableType DigestBytes] :
    CoherentByteEntry.digest <$> factorUniformEntry =
      factorUniformDigest := by
  simp [factorUniformEntry, factorUniformDigest,
    fiberDigestSample, Functor.map_map]

/-- Any deterministic use of the retained digest has exactly the same
distribution as applying that use to a fresh uniform digest. -/
theorem factorUniformEntry_map_evalDist
    [SampleableType DigestBytes]
    {α : Type}
    (f : DigestBytes → α) :
    𝒟[(fun entry : CoherentByteEntry => f entry.digest) <$>
        factorUniformEntry] =
      𝒟[f <$> ($ᵗ DigestBytes)] := by
  calc
    𝒟[(fun entry : CoherentByteEntry => f entry.digest) <$>
        factorUniformEntry] =
        𝒟[f <$> factorUniformDigest] := by
          rw [← factorUniformEntry_digest]
          simp only [Functor.map_map, Function.comp_apply]
    _ = 𝒟[f <$> ($ᵗ DigestBytes)] := by
          simpa only [evalDist_map] using
            congrArg (Functor.map f)
              factorUniformDigest_evalDist

/-! ## Coherent-cache projection -/

/-- Forget the cached scalar and its proof, retaining exactly the raw digest
cache observed by the byte-oracle game. -/
def coherentCacheToRaw
    (cache : CoherentByteCache) :
    RawBlake2bCache :=
  Ipp.RandomOracleMap.mapCache
    (fun _ (entry : CoherentByteEntry) => entry.digest)
    cache

@[simp] theorem coherentCacheToRaw_lookup
    (cache : CoherentByteCache)
    (bytes : List UInt8) :
    coherentCacheToRaw cache bytes =
      CoherentByteEntry.digest <$> cache bytes := by
  rfl

/-- Inserting a coherent entry and then forgetting its scalar is exactly raw
digest-cache insertion. -/
theorem coherentCacheToRaw_cacheQuery
    (cache : CoherentByteCache)
    (bytes : List UInt8)
    (entry : CoherentByteEntry) :
    coherentCacheToRaw
        (cache.cacheQuery bytes entry) =
      (coherentCacheToRaw cache).cacheQuery
        bytes entry.digest := by
  exact
    Ipp.RandomOracleMap.mapCache_cacheQuery
      (fun _ (candidate : CoherentByteEntry) => candidate.digest)
      cache bytes entry

@[simp] theorem coherentCacheToRaw_empty :
    coherentCacheToRaw ∅ = ∅ := by
  apply OracleSpec.QueryCache.ext
  intro bytes
  rfl

/-- Concrete heterogeneous state relation used by the existing relational
`simulateQ` lifting theorem. -/
def RawCoherentCacheRelated
    (raw : RawBlake2bCache)
    (coherent : CoherentByteCache) :
    Prop :=
  raw = coherentCacheToRaw coherent

theorem rawCoherentCacheRelated_empty :
    RawCoherentCacheRelated
      (∅ : RawBlake2bCache)
      (∅ : CoherentByteCache) := by
  simp [RawCoherentCacheRelated]

theorem CoherentByteEntry.scalar_eq_reduceFr
    (entry : CoherentByteEntry) :
    entry.scalar = reduceFr entry.digest :=
  entry.reduction_exact.symm

/-! ## Induced-scalar interpretation -/

/-- Interpret proof-side ambient samples honestly, and draw each fresh
byte-field scalar by reducing an independent uniform digest.  The coherent
outer cache ensures this fresh source is called only on an actual byte-key
miss. -/
noncomputable def inducedByteFieldSourceImpl
    [SampleableType DigestBytes] :
    QueryImpl ByteFieldSourceSpec ProbComp :=
  (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)) +
    (fun _bytes : List UInt8 =>
      reduceFr <$> ($ᵗ DigestBytes))

/-- The byte-keyed branch is exactly reduction of one fresh uniform digest. -/
theorem simulateQ_inducedByteFieldSourceImpl_byteFieldQuery
    [SampleableType DigestBytes]
    (bytes : List UInt8) :
    simulateQ inducedByteFieldSourceImpl
        (byteFieldQuery bytes) =
      reduceFr <$> ($ᵗ DigestBytes) := by
  simp [byteFieldQuery, inducedByteFieldSourceImpl]
  rfl

/-- Proof-side fiber sampling is forwarded unchanged through the ambient
branch of the induced source. -/
theorem simulateQ_inducedByteFieldSourceImpl_sampleDigestFiber
    [SampleableType DigestBytes]
    (value : Fr) :
    simulateQ inducedByteFieldSourceImpl
        (sampleDigestFiber value) =
      digestFiberSample value := by
  change
    simulateQ
        ((HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)) +
          (fun _bytes : List UInt8 => reduceFr <$> ($ᵗ DigestBytes)))
        (liftM (digestFiberSample value) :
          OracleComp ByteFieldSourceSpec (DigestFiber value)) =
      digestFiberSample value
  calc
    _ = simulateQ
        (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp))
        (digestFiberSample value) :=
      QueryImpl.simulateQ_add_liftM_left
        (impl₁' :=
          HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp))
        (impl₂' :=
          fun _bytes : List UInt8 => reduceFr <$> ($ᵗ DigestBytes))
        (digestFiberSample value)
    _ = digestFiberSample value :=
      QueryImpl.simulateQ_toQueryImpl _

/-- Interpreting a coherent cache miss through the induced source yields the
entry-valued digest factorization above. -/
theorem simulateQ_inducedByteFieldSourceImpl_coherentEntryMiss
    [SampleableType DigestBytes]
    (bytes : List UInt8) :
    simulateQ inducedByteFieldSourceImpl
        (coherentEntryMiss bytes) =
      factorUniformEntry := by
  simp only [coherentEntryMiss, simulateQ_bind, simulateQ_pure,
    simulateQ_inducedByteFieldSourceImpl_byteFieldQuery,
    simulateQ_inducedByteFieldSourceImpl_sampleDigestFiber]
  rfl

/-! ## One-cell coupling -/

/-- Lift equality with a deterministic projection of the right output to a
relational coupling of the unprojected computations. -/
private theorem relTriple_of_evalDist_map_right
    {α β : Type}
    (project : β → α)
    (left : ProbComp α)
    (right : ProbComp β)
    (relation : α → β → Prop)
    (heval :
      𝒟[left] = 𝒟[project <$> right])
    (hproject : ∀ value, relation (project value) value) :
    RelTriple left right relation := by
  refine relTriple_of_evalDist_eq_left heval ?_
  have hbase :
      RelTriple right right
        (fun leftValue rightValue =>
          relation (project leftValue) rightValue) := by
    exact
      relTriple_of_evalDist_eq rfl
        (fun value => hproject value)
  simpa only [id_map] using
    (relTriple_map
      (f := project)
      (g := id)
      (R := relation)
      hbase)

/-- Couple a computation that leaves both caches unchanged. -/
private theorem rawCoherent_preservedState
    {α : Type}
    (sample : ProbComp α)
    (cache : CoherentByteCache) :
    RelTriple
      ((fun value => (value, coherentCacheToRaw cache)) <$> sample)
      ((fun value => (value, cache)) <$> sample)
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2) := by
  refine
    relTriple_of_evalDist_map_right
      (fun result : α × CoherentByteCache =>
        (result.1, coherentCacheToRaw result.2))
      ((fun value => (value, coherentCacheToRaw cache)) <$> sample)
      ((fun value => (value, cache)) <$> sample)
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2)
      ?_ ?_
  · simp only [Functor.map_map, Function.comp_apply]
  · intro result
    simp [RawCoherentCacheRelated]

/-- On a coherent-cache hit, the raw random oracle returns the stored digest
and neither cache changes. -/
theorem rawCoherentEntry_hit
    [SampleableType DigestBytes]
    (bytes : List UInt8)
    (cache : CoherentByteCache)
    (entry : CoherentByteEntry)
    (hcache : cache bytes = some entry) :
    RelTriple
      (((@OracleSpec.randomOracle _ _
          Ipp.ShippingHashGame.Blake2bOracleSpec
          (fun _ => instSampleableTypeFinFunc)) bytes).run
        (coherentCacheToRaw cache))
      (simulateQ inducedByteFieldSourceImpl
        ((coherentEntryImpl bytes).run cache))
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1.digest ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2) := by
  have hraw :
      coherentCacheToRaw cache bytes =
        some entry.digest := by
    simp [hcache]
  simp only [OracleSpec.randomOracle]
  rw [QueryImpl.withCaching_run_some
    (@uniformSampleImpl _
      Ipp.ShippingHashGame.Blake2bOracleSpec
      (fun _ => instSampleableTypeFinFunc)) hraw]
  rw [coherentEntryImpl_run_some cache bytes entry hcache]
  simp only [simulateQ_pure]
  exact
    relTriple_of_evalDist_map_right
      (fun result : CoherentByteEntry × CoherentByteCache =>
        (result.1.digest, coherentCacheToRaw result.2))
      (pure (entry.digest, coherentCacheToRaw cache))
      (pure (entry, cache))
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1.digest ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2)
      (by simp)
      (by
        intro result
        simp [RawCoherentCacheRelated])

set_option maxRecDepth 4096 in
/-- On a coherent-cache miss, the raw random oracle's fresh digest and cache
update have exactly the distribution obtained by the induced scalar followed
by uniform fiber sampling. -/
theorem rawCoherentEntry_miss
    [SampleableType DigestBytes]
    (bytes : List UInt8)
    (cache : CoherentByteCache)
    (hcache : cache bytes = none) :
    RelTriple
      (((@OracleSpec.randomOracle _ _
          Ipp.ShippingHashGame.Blake2bOracleSpec
          (fun _ => instSampleableTypeFinFunc)) bytes).run
        (coherentCacheToRaw cache))
      (simulateQ inducedByteFieldSourceImpl
        ((coherentEntryImpl bytes).run cache))
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1.digest ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2) := by
  have hraw :
      coherentCacheToRaw cache bytes = none := by
    simp [hcache]
  simp only [OracleSpec.randomOracle]
  rw [QueryImpl.withCaching_run_none
    (@uniformSampleImpl _
      Ipp.ShippingHashGame.Blake2bOracleSpec
      (fun _ => instSampleableTypeFinFunc)) hraw]
  rw [show coherentEntryImpl =
      QueryImpl.withCaching coherentEntryMiss from rfl]
  rw [QueryImpl.withCaching_run_none coherentEntryMiss hcache]
  simp only [simulateQ_map, Functor.map_map,
    simulateQ_inducedByteFieldSourceImpl_coherentEntryMiss]
  refine
    relTriple_of_evalDist_map_right
      (fun result : CoherentByteEntry × CoherentByteCache =>
        (result.1.digest, coherentCacheToRaw result.2))
      ((fun digest : DigestBytes =>
          (digest,
            (coherentCacheToRaw cache).cacheQuery bytes digest)) <$>
        (@uniformSample DigestBytes instSampleableTypeFinFunc))
      ((fun entry : CoherentByteEntry =>
          (entry, cache.cacheQuery bytes entry)) <$>
        factorUniformEntry)
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1.digest ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2)
      ?_ ?_
  · let projectDigest := fun digest : DigestBytes =>
      (digest,
        (coherentCacheToRaw cache).cacheQuery bytes digest)
    calc
      𝒟[projectDigest <$>
          (@uniformSample DigestBytes
            instSampleableTypeFinFunc)] =
          𝒟[projectDigest <$> ($ᵗ DigestBytes)] := by
        simpa only [evalDist_map] using
          congrArg (Functor.map projectDigest)
            canonicalUniformDigest_evalDist
      _ = 𝒟[(fun result : CoherentByteEntry × CoherentByteCache =>
          (result.1.digest,
            coherentCacheToRaw result.2)) <$>
          ((fun entry : CoherentByteEntry =>
            (entry, cache.cacheQuery bytes entry)) <$>
            factorUniformEntry)] := by
        simpa only [projectDigest, Functor.map_map,
          Function.comp_apply,
          coherentCacheToRaw_cacheQuery] using
          (factorUniformEntry_map_evalDist projectDigest).symm
  · intro result
    simp [RawCoherentCacheRelated,
      coherentCacheToRaw_cacheQuery]

/-- Complete hit/miss split for one byte-keyed random-oracle cell. -/
theorem rawCoherentEntry_step
    [SampleableType DigestBytes]
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    RelTriple
      (((@OracleSpec.randomOracle _ _
          Ipp.ShippingHashGame.Blake2bOracleSpec
          (fun _ => instSampleableTypeFinFunc)) bytes).run
        (coherentCacheToRaw cache))
      (simulateQ inducedByteFieldSourceImpl
        ((coherentEntryImpl bytes).run cache))
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1.digest ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2) := by
  cases hcache : cache bytes with
  | none =>
      exact rawCoherentEntry_miss bytes cache hcache
  | some entry =>
      exact rawCoherentEntry_hit bytes cache entry hcache

/-- Digest view of the one-cell coupling, as used by arbitrary raw Blake2b
queries. -/
theorem rawCoherentBlake2b_step
    [SampleableType DigestBytes]
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    RelTriple
      (((@OracleSpec.randomOracle _ _
          Ipp.ShippingHashGame.Blake2bOracleSpec
          (fun _ => instSampleableTypeFinFunc)) bytes).run
        (coherentCacheToRaw cache))
      (simulateQ inducedByteFieldSourceImpl
        ((coherentBlake2bImpl bytes).run cache))
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2) := by
  have hbase := rawCoherentEntry_step bytes cache
  have hmapped :=
    relTriple_map
      (f := id)
      (g :=
        Prod.map CoherentByteEntry.digest
          (id : CoherentByteCache → CoherentByteCache))
      (R := fun
          (rawResult : DigestBytes × RawBlake2bCache)
          (coherentResult : DigestBytes × CoherentByteCache) =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2)
      hbase
  simpa [coherentBlake2bImpl, StateT.run_map,
    simulateQ_map, Functor.map_map] using hmapped

/-- Scalar view of the same cell coupling, as used by typed verifier
queries. -/
theorem rawCoherentScalar_step
    [SampleableType DigestBytes]
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    RelTriple
      ((Ipp.ShippingScalarReduction.reduceFr <$>
          ((@OracleSpec.randomOracle _ _
            Ipp.ShippingHashGame.Blake2bOracleSpec
            (fun _ => instSampleableTypeFinFunc)) bytes)).run
        (coherentCacheToRaw cache))
      (simulateQ inducedByteFieldSourceImpl
        ((coherentScalarImpl bytes).run cache))
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2) := by
  have hentry := rawCoherentEntry_step bytes cache
  have hbase :
      RelTriple
        (((@OracleSpec.randomOracle _ _
            Ipp.ShippingHashGame.Blake2bOracleSpec
            (fun _ => instSampleableTypeFinFunc)) bytes).run
          (coherentCacheToRaw cache))
        (simulateQ inducedByteFieldSourceImpl
          ((coherentEntryImpl bytes).run cache))
        (fun rawResult coherentResult =>
          (Prod.map reduceFr id rawResult).1 =
              (Prod.map CoherentByteEntry.scalar id
                coherentResult).1 ∧
            RawCoherentCacheRelated
              (Prod.map reduceFr id rawResult).2
              (Prod.map CoherentByteEntry.scalar id
                coherentResult).2) := by
    refine relTriple_post_mono hentry ?_
    intro rawResult coherentResult hrelated
    constructor
    · calc
        reduceFr rawResult.1 =
            reduceFr coherentResult.1.digest := by
          exact congrArg reduceFr hrelated.1
        _ = coherentResult.1.scalar :=
          coherentResult.1.reduction_exact
    · simpa only [Prod.map_apply, id_eq] using hrelated.2
  have hmapped :=
    relTriple_map
      (f := Prod.map reduceFr
        (id : RawBlake2bCache → RawBlake2bCache))
      (g := Prod.map CoherentByteEntry.scalar
        (id : CoherentByteCache → CoherentByteCache))
      (R := fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2)
      hbase
  simpa [coherentScalarImpl, StateT.run_map,
    simulateQ_map, Functor.map_map] using hmapped

/-- Interpret each coherent hybrid step all the way to `ProbComp` through the
induced scalar source. -/
noncomputable def inducedCoherentHybridImpl
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (HybridAdaptiveSourceSpec reached)
      (StateT CoherentByteCache ProbComp) :=
  fun point cache =>
    simulateQ inducedByteFieldSourceImpl
      ((coherentHybridImpl
        sha256 serialization reached point).run cache)

/-- Output experiment obtained by interpreting the coherent fiber-lifted
handler with the exact scalar distribution induced by a uniform digest. -/
noncomputable def inducedFiberLiftedHybridOutput
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    ProbComp Output :=
  (simulateQ
    (inducedCoherentHybridImpl sha256 serialization reached)
    program).run' ∅

/-- Query-local relation between the raw uniform-digest cache and the
coherent digest/scalar cache. It is stronger and more local than equality of
final acceptance probabilities. -/
def RawCoherentStepCoupling
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    Prop :=
  ∀ point rawCache coherentCache,
    RawCoherentCacheRelated rawCache coherentCache →
    RelTriple
      ((hybridRawIdealSourceImpl
        sha256 serialization reached point).run rawCache)
      ((inducedCoherentHybridImpl
        sha256 serialization reached point).run coherentCache)
      (fun rawResult coherentResult =>
        rawResult.1 = coherentResult.1 ∧
          RawCoherentCacheRelated
            rawResult.2 coherentResult.2)

set_option maxRecDepth 2048 in
/-- The raw and coherent handlers support the exact query-local coupling.
Arbitrary raw Blake2b queries and serialized typed queries use the same
one-cell hit/miss theorem. -/
theorem rawCoherentStepCoupling
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    RawCoherentStepCoupling
      sha256 serialization reached := by
  intro point rawCache coherentCache hrelated
  subst rawCache
  cases point with
  | inl rawPoint =>
      cases rawPoint with
      | inl ambientPoint =>
          simpa [hybridRawIdealSourceImpl, QueryImpl.compose,
            hybridToRawByteImpl, rawIdealByteImpl,
            rawIdealAmbientImpl, inducedCoherentHybridImpl,
            coherentHybridImpl, coherentGlobalByteImpl,
            coherentAmbientImpl, inducedByteFieldSourceImpl,
            StateT.run_monadLift, StateT.run_lift,
            QueryImpl.simulateQ_toQueryImpl] using
            (rawCoherent_preservedState
              ($ᵗ (unifSpec.Range ambientPoint))
              coherentCache)
      | inr hashPoint =>
          cases hashPoint with
          | inl shaInput =>
              change RelTriple
                (pure
                  (sha256 shaInput,
                    coherentCacheToRaw coherentCache))
                (pure (sha256 shaInput, coherentCache))
                (fun rawResult coherentResult =>
                  rawResult.1 = coherentResult.1 ∧
                    RawCoherentCacheRelated
                      rawResult.2 coherentResult.2)
              exact relTriple_pure_pure ⟨rfl, rfl⟩
          | inr bytes =>
              have hrawHandler :
                  hybridRawIdealSourceImpl
                      sha256 serialization reached
                      (.inl (.inr (.inr bytes))) =
                    (@OracleSpec.randomOracle _ _
                      Ipp.ShippingHashGame.Blake2bOracleSpec
                      (fun _ => instSampleableTypeFinFunc)) bytes := by
                change
                  simulateQ (rawIdealByteImpl sha256)
                      (liftM
                        (GlobalByteSourceSpec.query
                          (.inr (.inr bytes))) :
                        OracleComp GlobalByteSourceSpec DigestBytes) =
                    (@OracleSpec.randomOracle _ _
                      Ipp.ShippingHashGame.Blake2bOracleSpec
                      (fun _ => instSampleableTypeFinFunc)) bytes
                calc
                  _ = rawIdealByteImpl sha256
                      (.inr (.inr bytes)) :=
                    simulateQ_spec_query
                      (rawIdealByteImpl sha256) _
                  _ = (@OracleSpec.randomOracle _ _
                        Ipp.ShippingHashGame.Blake2bOracleSpec
                        (fun _ => instSampleableTypeFinFunc)) bytes := by
                    simp only [rawIdealByteImpl,
                      QueryImpl.add_apply_inr]
              have hcoherent :
                  (inducedCoherentHybridImpl
                    sha256 serialization reached
                    (.inl (.inr (.inr bytes)))).run coherentCache =
                    simulateQ inducedByteFieldSourceImpl
                      ((coherentBlake2bImpl bytes).run
                        coherentCache) := by
                unfold inducedCoherentHybridImpl
                rw [coherentHybridImpl_raw,
                  coherentGlobalByteImpl_blake2b]
                rfl
              rw [hrawHandler, hcoherent]
              exact rawCoherentBlake2b_step bytes coherentCache
  | inr typedPoint =>
      let bytes :=
        reachedByteEncoding serialization reached typedPoint
      have hrawHandler :
          hybridRawIdealSourceImpl
              sha256 serialization reached (.inr typedPoint) =
            Ipp.ShippingScalarReduction.reduceFr <$>
              ((@OracleSpec.randomOracle _ _
                Ipp.ShippingHashGame.Blake2bOracleSpec
                (fun _ => instSampleableTypeFinFunc)) bytes) := by
        change
          simulateQ (rawIdealByteImpl sha256)
              (Ipp.ShippingScalarReduction.reduceFr <$>
                (liftM
                  (GlobalByteSourceSpec.query
                    (.inr (.inr bytes))) :
                  OracleComp GlobalByteSourceSpec DigestBytes)) =
            Ipp.ShippingScalarReduction.reduceFr <$>
              ((@OracleSpec.randomOracle _ _
                Ipp.ShippingHashGame.Blake2bOracleSpec
                (fun _ => instSampleableTypeFinFunc)) bytes)
        calc
          _ = Ipp.ShippingScalarReduction.reduceFr <$>
              simulateQ (rawIdealByteImpl sha256)
                (liftM
                  (GlobalByteSourceSpec.query
                    (.inr (.inr bytes))) :
                  OracleComp GlobalByteSourceSpec DigestBytes) :=
            simulateQ_map (rawIdealByteImpl sha256) _ _
          _ = Ipp.ShippingScalarReduction.reduceFr <$>
              rawIdealByteImpl sha256
                (.inr (.inr bytes)) :=
            congrArg
              (fun comp :
                  StateT RawBlake2bCache ProbComp DigestBytes =>
                Ipp.ShippingScalarReduction.reduceFr <$> comp)
              (simulateQ_spec_query (rawIdealByteImpl sha256) _)
          _ = Ipp.ShippingScalarReduction.reduceFr <$>
              ((@OracleSpec.randomOracle _ _
                Ipp.ShippingHashGame.Blake2bOracleSpec
                (fun _ => instSampleableTypeFinFunc)) bytes) := by
            simp only [rawIdealByteImpl,
              QueryImpl.add_apply_inr]
      have hcoherent :
          (inducedCoherentHybridImpl
            sha256 serialization reached (.inr typedPoint)).run
              coherentCache =
            simulateQ inducedByteFieldSourceImpl
              ((coherentScalarImpl
                bytes).run coherentCache) := by
        unfold inducedCoherentHybridImpl
        rw [coherentHybridImpl_typed]
        rfl
      rw [hrawHandler, hcoherent]
      exact rawCoherentScalar_step bytes coherentCache

/-- VCVio already lifts the concrete heterogeneous cache relation through an
arbitrary adaptive hybrid program.  Consequently no whole-program or
acceptance-level premise is needed after the local step coupling is closed. -/
theorem hybridRawIdeal_evalDist_eq_inducedFiberLifted
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    𝒟[hybridRawIdealExperiment
        sha256 serialization reached program] =
      𝒟[inducedFiberLiftedHybridOutput
        sha256 serialization reached program] := by
  apply evalDist_eq_of_relTriple_eqRel
  exact
    relTriple_simulateQ_run'
      (hybridRawIdealSourceImpl
        sha256 serialization reached)
      (inducedCoherentHybridImpl
        sha256 serialization reached)
      RawCoherentCacheRelated
      program
      (rawCoherentStepCoupling
        sha256 serialization reached)
      ∅ ∅
      rawCoherentCacheRelated_empty

/-! ## Complete hybrid query-budget transport -/

set_option maxRecDepth 4096 in
/-- Uniform proof-side sampling inside a digest fiber does not consume the
byte-field oracle budget. -/
theorem sampleDigestFiber_byteFieldQueryBound_zero
    (value : Fr) :
    IsQueryBoundP
      (sampleDigestFiber value)
      IsByteFieldQuery 0 := by
  unfold sampleDigestFiber
  apply OracleComp.IsQueryBoundP.liftComp_subSpec
    (p := fun _ => False)
  · intro point
    simp [IsByteFieldQuery]
  · exact OracleComp.isQueryBoundP_false _ 0

/-- One canonical scalar-source read consumes exactly one available unit of
the byte-field query budget. -/
theorem byteFieldQuery_queryBound_one
    (bytes : List UInt8) :
    IsQueryBoundP
      (byteFieldQuery bytes)
      IsByteFieldQuery 1 := by
  unfold byteFieldQuery
  change IsQueryBoundP
    (liftM (ByteFieldSourceSpec.query (.inr bytes)) :
      OracleComp ByteFieldSourceSpec Fr)
    IsByteFieldQuery 1
  exact
    (OracleComp.isQueryBoundP_query_iff
      (spec := ByteFieldSourceSpec)
      (p := IsByteFieldQuery) (.inr bytes) 1).2
      (by simp [IsByteFieldQuery])

set_option maxRecDepth 4096 in
/-- A coherent cache miss makes one scalar-source query; the subsequent
uniform fiber sampling is budget-free. -/
theorem coherentEntryMiss_queryBound_one
    (bytes : List UInt8) :
    IsQueryBoundP
      (coherentEntryMiss bytes)
      IsByteFieldQuery 1 := by
  have hfiber :
      ∀ value : Fr,
        IsQueryBoundP
          (do
            let digest ← sampleDigestFiber value
            pure ({
              scalar := value
              digest := digest.1
              reduction_exact := digest.2
            } : CoherentByteEntry))
          IsByteFieldQuery 0 := by
    intro value
    exact
      OracleComp.isQueryBoundP_bind
        (p := IsByteFieldQuery) (n := 0) (m := 0)
        (sampleDigestFiber_byteFieldQueryBound_zero value)
        (fun digest _ =>
          OracleComp.isQueryBoundP_pure
            (p := IsByteFieldQuery)
            ({
              scalar := value
              digest := digest.1
              reduction_exact := digest.2
            } : CoherentByteEntry)
            0)
  unfold coherentEntryMiss
  exact OracleComp.isQueryBoundP_bind
      (p := IsByteFieldQuery) (n := 1) (m := 0)
      (byteFieldQuery_queryBound_one bytes)
      (fun value _ => hfiber value)

/-- Hits are free and misses consume at most the one source query above. -/
theorem coherentEntryImpl_run_queryBound_one
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    IsQueryBoundP
      ((coherentEntryImpl bytes).run cache)
      IsByteFieldQuery 1 := by
  simpa [coherentEntryImpl] using
    QueryImpl.isQueryBoundP_run_withCaching
      coherentEntryMiss bytes
      (coherentEntryMiss_queryBound_one bytes)
      cache

theorem coherentBlake2bImpl_run_queryBound_one
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    IsQueryBoundP
      ((coherentBlake2bImpl bytes).run cache)
      IsByteFieldQuery 1 := by
  simp only [coherentBlake2bImpl, StateT.run_map]
  exact
    (OracleComp.isQueryBoundP_map_iff
      (p := IsByteFieldQuery) _ _ _).2
      (coherentEntryImpl_run_queryBound_one bytes cache)

theorem coherentScalarImpl_run_queryBound_one
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    IsQueryBoundP
      ((coherentScalarImpl bytes).run cache)
      IsByteFieldQuery 1 := by
  simp only [coherentScalarImpl, StateT.run_map]
  exact
    (OracleComp.isQueryBoundP_map_iff
      (p := IsByteFieldQuery) _ _ _).2
      (coherentEntryImpl_run_queryBound_one bytes cache)

/-- Each hybrid source step consumes at most one byte-field query exactly
when that source step is charged by the global Fiat--Shamir predicate. -/
theorem coherentHybridImpl_step_queryBound
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (point : (HybridAdaptiveSourceSpec reached).Domain)
    (cache : CoherentByteCache) :
    IsQueryBoundP
      ((coherentHybridImpl
        sha256 serialization reached point).run cache)
      IsByteFieldQuery
      (if IsHybridFsQuery point then 1 else 0) := by
  cases point with
  | inl rawPoint =>
      cases rawPoint with
      | inl ambientPoint =>
          have hquery :
              IsQueryBoundP
                (liftM
                  (ByteFieldSourceSpec.query (.inl ambientPoint)) :
                  OracleComp ByteFieldSourceSpec
                    (ByteFieldSourceSpec.Range (.inl ambientPoint)))
                IsByteFieldQuery 0 := by
            exact
              (OracleComp.isQueryBoundP_query_iff
                (spec := ByteFieldSourceSpec)
                (p := IsByteFieldQuery) (.inl ambientPoint) 0).2
                (by simp [IsByteFieldQuery])
          have hmapped :=
            (OracleComp.isQueryBoundP_map_iff
              (p := IsByteFieldQuery)
              (liftM
                (ByteFieldSourceSpec.query (.inl ambientPoint)) :
                OracleComp ByteFieldSourceSpec
                  (ByteFieldSourceSpec.Range (.inl ambientPoint)))
              (fun answer => (answer, cache)) 0).2 hquery
          simpa [coherentHybridImpl, QueryImpl.compose,
            hybridToRawByteImpl, coherentGlobalByteImpl,
            coherentAmbientImpl, IsHybridFsQuery, IsFsQuery,
            IsByteFieldQuery, StateT.run_monadLift] using hmapped
      | inr hashPoint =>
          cases hashPoint with
          | inl shaInput =>
              simp [coherentHybridImpl, QueryImpl.compose,
                hybridToRawByteImpl, coherentGlobalByteImpl,
                coherentSha256Impl, IsHybridFsQuery, IsFsQuery]
          | inr bytes =>
              simpa [coherentHybridImpl, QueryImpl.compose,
                hybridToRawByteImpl, coherentGlobalByteImpl,
                IsHybridFsQuery, IsFsQuery] using
                coherentBlake2bImpl_run_queryBound_one bytes cache
  | inr typedPoint =>
      rw [coherentHybridImpl_typed]
      simpa [IsHybridFsQuery] using
        coherentScalarImpl_run_queryBound_one
          (reachedByteEncoding serialization reached typedPoint)
          cache

/-- The fiber-lifted execution preserves the complete total Fiat--Shamir
query budget of its annotated hybrid source. -/
theorem fiberLiftedHybridProgram_queryBound
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP program
        (@IsHybridFsQuery reached) Q_fs) :
    IsQueryBoundP
      (fiberLiftedHybridProgram
        sha256 serialization reached program)
      IsByteFieldQuery Q_fs := by
  unfold fiberLiftedHybridProgram
  exact
    OracleComp.IsQueryBoundP.simulateQ_run_StateT_of_step
      hbound
      (coherentHybridImpl_step_queryBound
        sha256 serialization reached)
      ∅

/-- Output projection does not change the transported total budget. -/
theorem fiberLiftedHybridOutput_queryBound
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP program
        (@IsHybridFsQuery reached) Q_fs) :
    IsQueryBoundP
      (fiberLiftedHybridOutput
        sha256 serialization reached program)
      IsByteFieldQuery Q_fs := by
  unfold fiberLiftedHybridOutput StateT.run'
  exact
    (OracleComp.isQueryBoundP_map_iff
      (p := IsByteFieldQuery) _ _ _).2
      (fiberLiftedHybridProgram_queryBound
        sha256 serialization reached program Q_fs hbound)

namespace OriginByteReindexing

/-- Instantiation for the actual whole origin annotation.  The bound is the
same `Q_fs` supplied by `DistinctQueryBudgets`; no fresh-verifier or
post-selection budget is introduced. -/
theorem fiberLiftedHybridProgram_queryBound
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
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets) :
    IsQueryBoundP
      (Ipp.ShippingAdaptiveByteField.fiberLiftedHybridProgram
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram)
      IsByteFieldQuery Q_fs :=
  Ipp.ShippingAdaptiveByteFieldCoupling.fiberLiftedHybridProgram_queryBound
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram Q_fs boundary.hybridQueryBound

/-- Output-only form for the exact whole-origin annotation. -/
theorem fiberLiftedHybridOutput_queryBound
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
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets) :
    IsQueryBoundP
      (Ipp.ShippingAdaptiveByteField.fiberLiftedHybridOutput
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram)
      IsByteFieldQuery Q_fs :=
  Ipp.ShippingAdaptiveByteFieldCoupling.fiberLiftedHybridOutput_queryBound
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram Q_fs boundary.hybridQueryBound

end OriginByteReindexing

/-!
The remaining distributional transport is now narrow and explicit.  The two
endpoints use different cache states:

* `RawBlake2bCache` stores a complete digest;
* `CoherentByteCache` stores the digest, its scalar, and the reduction proof.

VCVio's
`OracleComp.ProgramLogic.Relational.relTriple_simulateQ_run'` lifts the
query-local coupling through the whole adaptive program. The miss case uses
`factorUniformDigest_evalDist`, the hit case is deterministic, and cache
insertion commutes with digest projection. The source query budget is the
theorem above. No acceptance inequality is assumed at this boundary.
-/

end

end Ipp.ShippingAdaptiveByteFieldCoupling
