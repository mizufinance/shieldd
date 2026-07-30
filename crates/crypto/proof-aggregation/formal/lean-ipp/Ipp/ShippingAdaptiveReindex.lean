import Ipp.ShippingAdaptiveOrigin
import Ipp.RandomOracleReindex

/-!
Adaptive byte-query reindexing for origin-retaining shipping verification.

The concrete dependent run is projected only at the probability-library
boundary.  Its low output still contains the exact selected statement key,
formal statement, proof, transcript, and verifier result.

Reindexing is performed on a subtype of the queries reached by the complete
preselection-plus-verifier program.  Injectivity is therefore required only
on that reached set and is supplied by the existing SHA-collision-free
interface.  This module does not replace deployed Blake2b by a random oracle;
the ROM hop remains a separate computational advantage.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptiveReindex

noncomputable section

open Ipp.Bls12377
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingHashGame
open Ipp.ShippingMultiStatement
open Ipp.ShippingRealVerifier

/-! ## Exact low projection of the dependent origin -/

/-- Strongest Type-0 output accepted by the current probability lemmas.  The
dependent proof size remains in the sigma package. -/
abbrev OriginFormalOutcome :=
  PackedOutcome ShippingStatementKey

/-- Project an origin-bearing run to its exact formal selection and verifier
result.  No statement, proof, transcript, or acceptance bit is recomputed. -/
noncomputable def OriginRun.formalOutcome
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) :
    OriginFormalOutcome :=
  ⟨run.selected.μ, {
    selection := run.selected.formalSelection
    verifierResult := run.output
  }⟩

@[simp] theorem OriginRun.formalOutcome_selection
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) :
    run.formalOutcome.selection =
      packedProductionSelection
        run.selected.data run.selected.refinement := by
  rfl

@[simp] theorem OriginRun.formalOutcome_accept
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) :
    run.formalOutcome.accept = run.output.accept := by
  rfl

/-- Whole origin program with only its output universe lowered.  Every oracle
query, including all preselection queries, is unchanged. -/
noncomputable def projectedOriginByteProgram
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)) :
    OracleComp GlobalByteSourceSpec OriginFormalOutcome :=
  OriginRun.formalOutcome <$>
    globalOriginByteProgram sha256 blake2b adversary

/-- Output projection does not alter the byte-side Fiat--Shamir query bound. -/
theorem projectedOriginByteProgram_fsBound
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b))
    (Q_sha Q_fs : Nat)
    (budgets :
      DistinctQueryBudgets sha256 blake2b adversary Q_sha Q_fs) :
    IsQueryBoundP
      (projectedOriginByteProgram sha256 blake2b adversary)
      IsFsQuery Q_fs := by
  exact
    (isQueryBoundP_map_iff
      (globalOriginByteProgram sha256 blake2b adversary)
      OriginRun.formalOutcome Q_fs).2 budgets.fs

/-! ## Reached-query domain and collision-free byte encoding -/

/-- Structured queries reached in one complete adaptive execution. -/
abbrev ReachedGlobalFsQuery (reached : Set GlobalFsQuery) :=
  { query : GlobalFsQuery // query ∈ reached }

/-- Exact byte encoding restricted to the reached structured domain. -/
def reachedByteEncoding
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    ReachedGlobalFsQuery reached → List UInt8 :=
  fun query => serialization.byteEncoding query.1

/-- Reached-set injectivity becomes ordinary injectivity on the subtype, which
is the form required by lazy-random-oracle cache reindexing. -/
theorem reachedByteEncoding_injective
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached) :
    Function.Injective
      (reachedByteEncoding serialization reached) := by
  intro left right heq
  apply Subtype.ext
  exact hcollisionFree left.2 right.2 heq

/-- Full annotated source before deterministic SHA resolution. -/
abbrev ReachedAdaptiveFieldSourceSpec
    (reached : Set GlobalFsQuery) :=
  unifSpec +
    (Sha256OracleSpec +
      (ReachedGlobalFsQuery reached →ₒ Fr))

/-- Exactly the field queries in the reached annotated source. -/
def IsReachedFieldQuery
    {reached : Set GlobalFsQuery} :
    (ReachedAdaptiveFieldSourceSpec reached).Domain → Prop
  | .inr (.inr _) => True
  | _ => False

instance instDecidablePredIsReachedFieldQuery
    {reached : Set GlobalFsQuery} :
    DecidablePred
      (@IsReachedFieldQuery reached) := by
  intro query
  cases query with
  | inl _ =>
      exact isFalse (by simp [IsReachedFieldQuery])
  | inr query =>
      cases query with
      | inl _ =>
          exact isFalse (by simp [IsReachedFieldQuery])
      | inr _ =>
          exact isTrue trivial

/-- Forward ambient sampling into the concrete byte source. -/
def reachedUnifToRawByteFwd
    {reached : Set GlobalFsQuery} :
    QueryImpl unifSpec
      (OracleComp GlobalByteSourceSpec) :=
  fun n =>
    (GlobalByteSourceSpec).query (.inl n)

/-- Forward SHA calls without changing their preimages. -/
def reachedShaToRawByteFwd
    {reached : Set GlobalFsQuery} :
    QueryImpl Sha256OracleSpec
      (OracleComp GlobalByteSourceSpec) :=
  fun input =>
    (GlobalByteSourceSpec).query (.inr (.inl input))

/-- Reindex one annotated field query to its exact raw Blake2b bytes and apply
the deployed Arkworks scalar reduction to the returned digest. -/
def reachedFieldToRawByteFwd
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (ReachedGlobalFsQuery reached →ₒ Fr)
      (OracleComp GlobalByteSourceSpec) :=
  fun query =>
    Ipp.ShippingScalarReduction.reduceFr <$>
      (GlobalByteSourceSpec).query
        (.inr (.inr
          (reachedByteEncoding serialization reached query)))

/-- Erase structured annotations while retaining every ambient, SHA, and
Blake2b query in one program. -/
def reachedFieldToRawByteImpl
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (ReachedAdaptiveFieldSourceSpec reached)
      (OracleComp GlobalByteSourceSpec) :=
  reachedUnifToRawByteFwd +
    (reachedShaToRawByteFwd +
      reachedFieldToRawByteFwd serialization reached)

/-! ## A left inverse and exact query-budget transport -/

theorem reduceFr_surjective :
    Function.Surjective
      Ipp.ShippingScalarReduction.reduceFr := by
  intro value
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
  obtain ⟨digest⟩ := Fintype.card_pos_iff.mp hcard
  exact ⟨digest.1, digest.2⟩

/-- Canonical choice used only to construct a left inverse for the structural
query-bound proof. -/
noncomputable def digestSection
    (value : Fr) : DigestBytes :=
  Classical.choose (reduceFr_surjective value)

@[simp] theorem reduceFr_digestSection
    (value : Fr) :
    Ipp.ShippingScalarReduction.reduceFr
        (digestSection value) =
      value :=
  Classical.choose_spec (reduceFr_surjective value)

/-- Partial inverse of the reached byte encoding.  Queries outside the
annotated image remain `none`; they never arise after the forward erasure. -/
noncomputable def decodeReachedQuery?
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (bytes : List UInt8) :
    Option (ReachedGlobalFsQuery reached) :=
  if h :
      ∃ query : ReachedGlobalFsQuery reached,
        reachedByteEncoding serialization reached query = bytes
  then some (Classical.choose h)
  else none

theorem decodeReachedQuery?_encode
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    (query : ReachedGlobalFsQuery reached) :
    decodeReachedQuery? serialization reached
        (reachedByteEncoding serialization reached query) =
      some query := by
  rw [decodeReachedQuery?, dif_pos ⟨query, rfl⟩]
  congr 1
  apply reachedByteEncoding_injective
    serialization reached hcollisionFree
  exact Classical.choose_spec
    (show
      ∃ candidate : ReachedGlobalFsQuery reached,
        reachedByteEncoding serialization reached candidate =
          reachedByteEncoding serialization reached query
      from ⟨query, rfl⟩)

/-- Invert raw queries back into the reached annotated source.  The fallback
digest is irrelevant to the left-inverse theorem because forward-erased field
queries are always in the encoding image. -/
def rawUnifToReachedFieldFwd
    (reached : Set GlobalFsQuery) :
    QueryImpl unifSpec
      (OracleComp (ReachedAdaptiveFieldSourceSpec reached)) :=
  fun n =>
    (ReachedAdaptiveFieldSourceSpec reached).query (.inl n)

def rawShaToReachedFieldFwd
    (reached : Set GlobalFsQuery) :
    QueryImpl Sha256OracleSpec
      (OracleComp (ReachedAdaptiveFieldSourceSpec reached)) :=
  fun input =>
    (ReachedAdaptiveFieldSourceSpec reached).query
      (.inr (.inl input))

noncomputable def rawBlake2bToReachedFieldFwd
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl Blake2bOracleSpec
      (OracleComp (ReachedAdaptiveFieldSourceSpec reached)) :=
  fun bytes =>
    match decodeReachedQuery? serialization reached bytes with
    | none => pure (digestSection 0)
    | some query =>
        digestSection <$>
          (ReachedAdaptiveFieldSourceSpec reached).query
            (.inr (.inr query))

noncomputable def rawByteToReachedFieldImpl
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl GlobalByteSourceSpec
      (OracleComp (ReachedAdaptiveFieldSourceSpec reached)) :=
  rawUnifToReachedFieldFwd reached +
    (rawShaToReachedFieldFwd reached +
      rawBlake2bToReachedFieldFwd serialization reached)

/-- Forward erasure followed by the reached-domain inverse is the identity
query implementation. -/
theorem rawByteToReached_comp_reachedFieldToRaw_eq_id
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached) :
    rawByteToReachedFieldImpl serialization reached ∘ₛ
        reachedFieldToRawByteImpl serialization reached =
      QueryImpl.id' (ReachedAdaptiveFieldSourceSpec reached) := by
  funext query
  cases query with
  | inl point =>
      simp [QueryImpl.compose, reachedFieldToRawByteImpl,
        reachedUnifToRawByteFwd, rawByteToReachedFieldImpl,
        rawUnifToReachedFieldFwd]
  | inr query =>
      cases query with
      | inl input =>
          simp [QueryImpl.compose, reachedFieldToRawByteImpl,
            reachedShaToRawByteFwd, rawByteToReachedFieldImpl,
            rawShaToReachedFieldFwd]
      | inr point =>
          simp [QueryImpl.compose, reachedFieldToRawByteImpl,
            reachedFieldToRawByteFwd, rawByteToReachedFieldImpl,
            rawBlake2bToReachedFieldFwd,
            decodeReachedQuery?_encode
              serialization reached hcollisionFree,
            Function.comp_def]

/-- Whole-program left inverse.  Preselection queries are retained because
the equality is proved over the complete annotated program. -/
theorem rawByteToReached_simulate_reachedFieldToRaw
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output) :
    simulateQ (rawByteToReachedFieldImpl serialization reached)
        (simulateQ
          (reachedFieldToRawByteImpl serialization reached)
          program) =
      program := by
  rw [← QueryImpl.simulateQ_compose,
    rawByteToReached_comp_reachedFieldToRaw_eq_id
      serialization reached hcollisionFree,
    simulateQ_id']

theorem rawByteToReachedField_step_charged
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (query : GlobalByteSourceSpec.Domain)
    (hquery : IsFsQuery query) :
    IsQueryBoundP
      (rawByteToReachedFieldImpl serialization reached query)
      (@IsReachedFieldQuery reached) 1 := by
  cases query with
  | inl _ =>
      simp [IsFsQuery] at hquery
  | inr query =>
      cases query with
      | inl _ =>
          simp [IsFsQuery] at hquery
      | inr bytes =>
          simp only [rawByteToReachedFieldImpl,
            QueryImpl.add_apply_inr,
            rawBlake2bToReachedFieldFwd]
          split <;> simp [IsReachedFieldQuery]

theorem rawByteToReachedField_step_uncharged
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (query : GlobalByteSourceSpec.Domain)
    (hquery : ¬ IsFsQuery query) :
    IsQueryBoundP
      (rawByteToReachedFieldImpl serialization reached query)
      (@IsReachedFieldQuery reached) 0 := by
  cases query with
  | inl _ =>
      simp [rawByteToReachedFieldImpl,
        rawUnifToReachedFieldFwd, IsReachedFieldQuery]
  | inr query =>
      cases query with
      | inl _ =>
          simp [rawByteToReachedFieldImpl,
            rawShaToReachedFieldFwd, IsReachedFieldQuery]
      | inr _ =>
          simp [IsFsQuery] at hquery

/-- Transfer the exact byte-side `Q_fs` bound back to the annotated structured
program.  The left inverse is what makes this the same budget rather than an
independently supplied field-side premise. -/
theorem reachedField_queryBound_of_rawByte_queryBound
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output)
    (Q_fs : Nat)
    (hraw :
      IsQueryBoundP
        (simulateQ
          (reachedFieldToRawByteImpl serialization reached)
          program)
        IsFsQuery Q_fs) :
    IsQueryBoundP program
      (@IsReachedFieldQuery reached) Q_fs := by
  have hinverse :=
    hraw.simulateQ_of_step
      (impl := rawByteToReachedFieldImpl serialization reached)
      (q := @IsReachedFieldQuery reached)
      (rawByteToReachedField_step_charged
        serialization reached)
      (rawByteToReachedField_step_uncharged
        serialization reached)
  rw [rawByteToReached_simulate_reachedFieldToRaw
    serialization reached hcollisionFree program] at hinverse
  exact hinverse

/-- Forward direction: an annotated field bound remains the same after exact
byte erasure. -/
theorem rawByte_queryBound_of_reachedField_queryBound
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output)
    (Q_fs : Nat)
    (hfield :
      IsQueryBoundP program
        (@IsReachedFieldQuery reached) Q_fs) :
    IsQueryBoundP
      (simulateQ
        (reachedFieldToRawByteImpl serialization reached)
        program)
      IsFsQuery Q_fs := by
  apply hfield.simulateQ_of_step
  · intro query hquery
    cases query with
    | inl _ =>
        simp [IsReachedFieldQuery] at hquery
    | inr query =>
        cases query with
        | inl _ =>
            simp [IsReachedFieldQuery] at hquery
        | inr point =>
            simp [reachedFieldToRawByteImpl,
              reachedFieldToRawByteFwd, IsFsQuery]
  · intro query hquery
    cases query with
    | inl _ =>
        simp [reachedFieldToRawByteImpl,
          reachedUnifToRawByteFwd, IsFsQuery]
    | inr query =>
        cases query with
        | inl _ =>
            simp [reachedFieldToRawByteImpl,
              reachedShaToRawByteFwd, IsFsQuery]
        | inr _ =>
            simp [IsReachedFieldQuery] at hquery

/-! ## Deterministic SHA resolution and global structured target -/

/-- Resolve SHA-256 with the retained deployed function and embed every
reached structured point into the global field source. -/
def reachedFieldToGlobalFsImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery) :
    QueryImpl (ReachedAdaptiveFieldSourceSpec reached)
      (OracleComp GlobalFsSourceSpec) :=
  globalFsUnifFwd +
    ((fun input : Ipp.ShippingV1.Bytes =>
      pure (sha256 input)) +
      (fun query : ReachedGlobalFsQuery reached =>
        (GlobalFsSourceSpec).query (.inr query.1)))

/-- The same `Q_fs` bound survives deterministic SHA resolution and subtype
erasure. -/
theorem globalFs_queryBound_of_reachedField_queryBound
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output)
    (Q_fs : Nat)
    (hfield :
      IsQueryBoundP program
        (@IsReachedFieldQuery reached) Q_fs) :
    IsQueryBoundP
      (simulateQ
        (reachedFieldToGlobalFsImpl sha256 reached)
        program)
      IsGlobalFieldQuery Q_fs := by
  apply hfield.simulateQ_of_step
  · intro query hquery
    cases query with
    | inl _ =>
        simp [IsReachedFieldQuery] at hquery
    | inr query =>
        cases query with
        | inl _ =>
            simp [IsReachedFieldQuery] at hquery
        | inr _ =>
            simp [reachedFieldToGlobalFsImpl,
              IsGlobalFieldQuery]
  · intro query hquery
    cases query with
    | inl _ =>
        simp [reachedFieldToGlobalFsImpl,
          globalFsUnifFwd, IsGlobalFieldQuery]
    | inr query =>
        cases query with
        | inl _ =>
            simp [reachedFieldToGlobalFsImpl,
              IsGlobalFieldQuery]
        | inr _ =>
            simp [IsReachedFieldQuery] at hquery

/-- Exact annotation boundary for the complete origin program.

`raw_exact` is a program equality, not a ROM or collision-resistance
assumption.  It states that the reached structured program erases to the
actual origin program after the latter's exact low projection.  Constructing
this field requires the concrete challenge serializer/execution equations.
-/
structure OriginByteReindexing
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b))
    (Q_sha Q_fs : Nat)
    (budgets :
      DistinctQueryBudgets
        sha256 blake2b adversary Q_sha Q_fs) where
  reached : Set GlobalFsQuery
  serialization : GlobalQuerySerialization
  collisionFree :
    ReachableGlobalSerializationInjective serialization reached
  fieldProgram :
    OracleComp (ReachedAdaptiveFieldSourceSpec reached)
      OriginFormalOutcome
  raw_exact :
    simulateQ
        (reachedFieldToRawByteImpl serialization reached)
        fieldProgram =
      projectedOriginByteProgram sha256 blake2b adversary

namespace OriginByteReindexing

/-- The annotated program inherits the exact byte-side `Q_fs`; no fresh field
budget is introduced. -/
theorem fieldQueryBound
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
    IsQueryBoundP boundary.fieldProgram
      (@IsReachedFieldQuery boundary.reached) Q_fs := by
  have hraw :=
    projectedOriginByteProgram_fsBound
      sha256 blake2b adversary Q_sha Q_fs budgets
  rw [← boundary.raw_exact] at hraw
  exact reachedField_queryBound_of_rawByte_queryBound
    boundary.serialization boundary.reached
    boundary.collisionFree boundary.fieldProgram Q_fs hraw

/-- Full structured program after exact SHA resolution. -/
def globalProgram
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
    OracleComp GlobalFsSourceSpec OriginFormalOutcome :=
  simulateQ
    (reachedFieldToGlobalFsImpl sha256 boundary.reached)
    boundary.fieldProgram

theorem globalProgram_queryBound
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
    IsQueryBoundP boundary.globalProgram
      IsGlobalFieldQuery Q_fs :=
  globalFs_queryBound_of_reachedField_queryBound
    sha256 boundary.reached boundary.fieldProgram Q_fs
    boundary.fieldQueryBound

/-- Construct the exact target consumed by the full-source modular-reduction
theorem. -/
def structuredFieldProgram
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
    StructuredFieldProgram OriginFormalOutcome := {
  program := boundary.globalProgram
  Q_fs := Q_fs
  queryBound := boundary.globalProgram_queryBound
}

end OriginByteReindexing

/-! ## Ideal-byte cache coupling

This section is conditional only on a uniform byte oracle.  It does not relate
that oracle to deployed Blake2b; the latter remains the separate
`ε_blake2b_rom` hop.
-/

abbrev RawBlake2bCache :=
  Blake2bOracleSpec.QueryCache

abbrev ReachedFieldCache
    (reached : Set GlobalFsQuery) :=
  (ReachedGlobalFsQuery reached →ₒ Fr).QueryCache

/-- Pull a raw digest cache back along the reached byte encoding and map every
cached digest through exact Arkworks scalar reduction. -/
def rawCacheToReachedFieldCache
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (cache : RawBlake2bCache) :
    ReachedFieldCache reached :=
  Ipp.RandomOracleMap.mapCache
    (fun _ digest =>
      Ipp.ShippingScalarReduction.reduceFr digest)
    (Ipp.RandomOracleReindex.pullbackCache
      (reachedByteEncoding serialization reached) cache)

theorem rawCacheToReachedFieldCache_cacheQuery
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    (cache : RawBlake2bCache)
    (query : ReachedGlobalFsQuery reached)
    (digest : DigestBytes) :
    rawCacheToReachedFieldCache serialization reached
        (cache.cacheQuery
          (reachedByteEncoding serialization reached query)
          digest) =
      (rawCacheToReachedFieldCache serialization reached cache)
        .cacheQuery query
          (Ipp.ShippingScalarReduction.reduceFr digest) := by
  unfold rawCacheToReachedFieldCache
  rw [Ipp.RandomOracleReindex.pullbackCache_cacheQuery
    (reachedByteEncoding_injective
      serialization reached hcollisionFree)]
  exact Ipp.RandomOracleMap.mapCache_cacheQuery
    (fun _ digest =>
      Ipp.ShippingScalarReduction.reduceFr digest)
    _ query digest

@[simp] theorem rawCacheToReachedFieldCache_empty
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    rawCacheToReachedFieldCache serialization reached ∅ = ∅ := by
  apply OracleSpec.QueryCache.ext
  intro query
  rfl

/-- Uniform ambient sampling with raw Blake2b cache state. -/
def rawIdealAmbientImpl :
    QueryImpl unifSpec
      (StateT RawBlake2bCache ProbComp) :=
  (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)).liftTarget
    (StateT RawBlake2bCache ProbComp)

/-- Deterministic SHA-256 with raw Blake2b cache state. -/
def rawIdealShaImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes) :
    QueryImpl Sha256OracleSpec
      (StateT RawBlake2bCache ProbComp) :=
  (fun input : Ipp.ShippingV1.Bytes =>
    (pure (sha256 input) : ProbComp Ipp.ShippingV1.Bytes)).liftTarget
      (StateT RawBlake2bCache ProbComp)

/-- Ideal raw-byte implementation.  Only Blake2b is replaced by a lazy random
oracle; ambient sampling and concrete SHA-256 are unchanged. -/
def rawIdealByteImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes) :
    QueryImpl GlobalByteSourceSpec
      (StateT RawBlake2bCache ProbComp) :=
  rawIdealAmbientImpl +
    (rawIdealShaImpl sha256 +
      Blake2bOracleSpec.randomOracle)

/-- Complete reached source with reduced digests cached as field values. -/
def reachedMappedAmbientImpl
    (reached : Set GlobalFsQuery) :
    QueryImpl unifSpec
      (StateT (ReachedFieldCache reached) ProbComp) :=
  (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)).liftTarget
    (StateT (ReachedFieldCache reached) ProbComp)

def reachedMappedShaImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery) :
    QueryImpl Sha256OracleSpec
      (StateT (ReachedFieldCache reached) ProbComp) :=
  (fun input : Ipp.ShippingV1.Bytes =>
    (pure (sha256 input) : ProbComp Ipp.ShippingV1.Bytes)).liftTarget
      (StateT (ReachedFieldCache reached) ProbComp)

def reachedMappedFieldImpl
    (reached : Set GlobalFsQuery)
    [SampleableType DigestBytes] :
    QueryImpl (ReachedGlobalFsQuery reached →ₒ Fr)
      (StateT (ReachedFieldCache reached) ProbComp) :=
  Ipp.RandomOracleMap.mappedRandomOracle
    (fun _ digest =>
      Ipp.ShippingScalarReduction.reduceFr digest)

def reachedMappedSourceImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery)
    [SampleableType DigestBytes] :
    QueryImpl (ReachedAdaptiveFieldSourceSpec reached)
      (StateT (ReachedFieldCache reached) ProbComp) :=
  reachedMappedAmbientImpl reached +
    (reachedMappedShaImpl sha256 reached +
      reachedMappedFieldImpl reached)

/-- Raw ideal execution of one reached annotated program. -/
def rawIdealReachedExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output) :
    ProbComp Output :=
  (simulateQ (rawIdealByteImpl sha256)
    (simulateQ
      (reachedFieldToRawByteImpl serialization reached)
      program)).run' ∅

/-- Structured reduced-digest execution of the same complete program. -/
def reachedMappedExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output) :
    ProbComp Output :=
  (simulateQ
    (reachedMappedSourceImpl sha256 reached)
    program).run' ∅

end

end Ipp.ShippingAdaptiveReindex
