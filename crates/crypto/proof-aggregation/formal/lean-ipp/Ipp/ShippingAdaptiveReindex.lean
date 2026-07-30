import Ipp.ShippingAdaptiveOrigin
import Ipp.RandomOracleReindex
import VCVio.OracleComp.SimSemantics.StateT.StateProjection

/-!
Adaptive byte-query reindexing for origin-retaining shipping verification.

The concrete dependent run is projected only at the probability-library
boundary.  Its low output still contains the exact selected statement key,
formal statement, proof, transcript, and verifier result.

Verifier reindexing is performed on a subtype of reached structured queries.
The unrestricted adversary remains in a separate raw-byte branch; it is never
assumed to query only serialized protocol points.  Both branches share one
byte-keyed cache.  This module does not replace deployed Blake2b by a random
oracle; the ROM hop remains a separate computational advantage.
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

@[simp] theorem OriginRun.formalOutcome_mu
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) :
    run.formalOutcome.1 = run.selected.μ := by
  rfl

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

/-- The low projection retains the complete formal verifier result, including
the exact proof, transcript, error ordering result, and acceptance bit. -/
@[simp] theorem OriginRun.formalOutcome_verifierResult
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) :
    run.formalOutcome.2.verifierResult = run.output := by
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

/-- Structured verifier queries reached in one complete adaptive execution. -/
abbrev ReachedGlobalFsQuery (reached : Set GlobalFsQuery) :=
  { q : GlobalFsQuery // q ∈ reached }

/-- Exact byte encoding restricted to the reached structured domain. -/
def reachedByteEncoding
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    ReachedGlobalFsQuery reached → List UInt8 :=
  fun q => serialization.byteEncoding q.1

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

/-- Sound source for the complete adaptive program.

The left branch retains every adversarial byte query verbatim.  Only verifier
challenge queries use the annotated right branch.  Interpreters below route
both raw Blake2b queries and annotated challenge queries through one byte-keyed
cache, so an adversarial prequery of a later challenge preimage is a genuine
cache hit rather than an independent oracle call. -/
abbrev HybridAdaptiveSourceSpec
    (reached : Set GlobalFsQuery) :=
  GlobalByteSourceSpec +
    (ReachedGlobalFsQuery reached →ₒ Fr)

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
  intro q
  cases q with
  | inl _ =>
      exact isFalse (by simp [IsReachedFieldQuery])
  | inr q =>
      cases q with
      | inl _ =>
          exact isFalse (by simp [IsReachedFieldQuery])
      | inr _ =>
          exact isTrue trivial

/-- Every Blake2b byte query and every annotated verifier query consumes the
same global Fiat--Shamir budget.  Ambient and SHA-256 queries consume neither
part of that budget. -/
def IsHybridFsQuery
    {reached : Set GlobalFsQuery} :
    (HybridAdaptiveSourceSpec reached).Domain → Prop
  | .inl q => IsFsQuery q
  | .inr _ => True

instance instDecidablePredIsHybridFsQuery
    {reached : Set GlobalFsQuery} :
    DecidablePred (@IsHybridFsQuery reached) := by
  intro q
  cases q with
  | inl q =>
      exact instDecidablePredIsFsQuery q
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
  fun q =>
    Ipp.ShippingScalarReduction.reduceFr <$>
      (GlobalByteSourceSpec).query
        (.inr (.inr
          (reachedByteEncoding serialization reached q)))

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

/-- Erase the sound hybrid annotation.  The complete adversary byte program is
forwarded through the identity branch; only typed verifier challenges are
serialized and reduced. -/
def hybridToRawByteImpl
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (HybridAdaptiveSourceSpec reached)
      (OracleComp GlobalByteSourceSpec) :=
  QueryImpl.id' GlobalByteSourceSpec +
    reachedFieldToRawByteFwd serialization reached

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
      ∃ q : ReachedGlobalFsQuery reached,
        reachedByteEncoding serialization reached q = bytes
  then some (Classical.choose h)
  else none

theorem decodeReachedQuery?_encode
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    (q : ReachedGlobalFsQuery reached) :
    decodeReachedQuery? serialization reached
        (reachedByteEncoding serialization reached q) =
      some q := by
  rw [decodeReachedQuery?, dif_pos ⟨q, rfl⟩]
  congr 1
  apply reachedByteEncoding_injective
    serialization reached hcollisionFree
  exact Classical.choose_spec
    (show
      ∃ candidate : ReachedGlobalFsQuery reached,
        reachedByteEncoding serialization reached candidate =
          reachedByteEncoding serialization reached q
      from ⟨q, rfl⟩)

/-- Any successful partial decode identifies bytes as the exact encoding of
the returned reached query. This reverse direction needs no injectivity
assumption: it follows from the witness chosen by `decodeReachedQuery?`. -/
theorem decodeReachedQuery?_eq_some_byteEncoding
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {bytes : List UInt8}
    {q : ReachedGlobalFsQuery reached}
    (hdecode :
      decodeReachedQuery? serialization reached bytes = some q) :
    reachedByteEncoding serialization reached q = bytes := by
  by_cases hexists :
      ∃ candidate : ReachedGlobalFsQuery reached,
        reachedByteEncoding serialization reached candidate = bytes
  · rw [decodeReachedQuery?, dif_pos hexists] at hdecode
    have hchosen : Classical.choose hexists = q :=
      Option.some.inj hdecode
    rw [← hchosen]
    exact Classical.choose_spec hexists
  · rw [decodeReachedQuery?, dif_neg hexists] at hdecode
    cases hdecode

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
    | some q =>
        digestSection <$>
          (ReachedAdaptiveFieldSourceSpec reached).query
            (.inr (.inr q))

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
  funext q
  cases q with
  | inl point =>
      simp [QueryImpl.compose, reachedFieldToRawByteImpl,
        reachedUnifToRawByteFwd, rawByteToReachedFieldImpl,
        rawUnifToReachedFieldFwd]
  | inr q =>
      cases q with
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
    (q : GlobalByteSourceSpec.Domain)
    (hquery : IsFsQuery q) :
    IsQueryBoundP
      (rawByteToReachedFieldImpl serialization reached q)
      (@IsReachedFieldQuery reached) 1 := by
  cases q with
  | inl _ =>
      simp [IsFsQuery] at hquery
  | inr q =>
      cases q with
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
    (q : GlobalByteSourceSpec.Domain)
    (hquery : ¬ IsFsQuery q) :
    IsQueryBoundP
      (rawByteToReachedFieldImpl serialization reached q)
      (@IsReachedFieldQuery reached) 0 := by
  cases q with
  | inl _ =>
      simp [rawByteToReachedFieldImpl,
        rawUnifToReachedFieldFwd, IsReachedFieldQuery]
  | inr q =>
      cases q with
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
  · intro q hquery
    cases q with
    | inl _ =>
        simp [IsReachedFieldQuery] at hquery
    | inr q =>
        cases q with
        | inl _ =>
            simp [IsReachedFieldQuery] at hquery
        | inr point =>
            simp [reachedFieldToRawByteImpl,
              reachedFieldToRawByteFwd, IsFsQuery]
  · intro q hquery
    cases q with
    | inl _ =>
        simp [reachedFieldToRawByteImpl,
          reachedUnifToRawByteFwd, IsFsQuery]
    | inr q =>
        cases q with
        | inl _ =>
            simp [reachedFieldToRawByteImpl,
              reachedShaToRawByteFwd, IsFsQuery]
        | inr _ =>
            simp [IsReachedFieldQuery] at hquery

/-- Erasing the hybrid annotation preserves the one total Fiat--Shamir
budget.  Raw adversary Blake2b queries and typed verifier queries each become
exactly one raw Blake2b query; ambient and SHA queries remain uncharged. -/
theorem rawByte_queryBound_of_hybrid_queryBound
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hhybrid :
      IsQueryBoundP program
        (@IsHybridFsQuery reached) Q_fs) :
    IsQueryBoundP
      (simulateQ
        (hybridToRawByteImpl serialization reached)
        program)
      IsFsQuery Q_fs := by
  apply hhybrid.simulateQ_of_step
  · intro q hquery
    cases q with
    | inl rawQuery =>
        simp [IsHybridFsQuery] at hquery
        simpa [hybridToRawByteImpl, hquery]
    | inr point =>
        simp [hybridToRawByteImpl,
          reachedFieldToRawByteFwd, IsFsQuery]
  · intro q hquery
    cases q with
    | inl rawQuery =>
        simp [IsHybridFsQuery] at hquery
        simpa [hybridToRawByteImpl, hquery]
    | inr _ =>
        simp [IsHybridFsQuery] at hquery

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
      (fun q : ReachedGlobalFsQuery reached =>
        (GlobalFsSourceSpec).query (.inr q.1)))

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
  · intro q hquery
    cases q with
    | inl _ =>
        simp [IsReachedFieldQuery] at hquery
    | inr q =>
        cases q with
        | inl _ =>
            simp [IsReachedFieldQuery] at hquery
        | inr _ =>
            simp [reachedFieldToGlobalFsImpl,
              IsGlobalFieldQuery]
  · intro q hquery
    cases q with
    | inl _ =>
        simp [reachedFieldToGlobalFsImpl,
          globalFsUnifFwd, IsGlobalFieldQuery]
    | inr q =>
        cases q with
        | inl _ =>
            simp [reachedFieldToGlobalFsImpl,
              IsGlobalFieldQuery]
        | inr _ =>
            simp [IsReachedFieldQuery] at hquery

/-- Exact sound annotation boundary for the complete origin program.

`raw_exact` leaves the adversary's arbitrary byte queries in the hybrid
program and annotates only verifier challenges.  This avoids an impossible
surjectivity requirement on `globalQueryEncoding`.  `totalFsQueryBound` is an
operational proof obligation of the concrete annotation construction: it must
be derived from that construction and uses the same whole-program `Q_fs` as
the raw execution, counting both opaque Blake2b and typed verifier queries. -/
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
  hybridProgram :
    OracleComp (HybridAdaptiveSourceSpec reached)
      OriginFormalOutcome
  raw_exact :
    simulateQ
        (hybridToRawByteImpl serialization reached)
        hybridProgram =
      projectedOriginByteProgram sha256 blake2b adversary
  totalFsQueryBound :
    IsQueryBoundP hybridProgram
      (@IsHybridFsQuery reached) Q_fs

namespace OriginByteReindexing

/-- The sound hybrid annotation carries the same total `Q_fs`; in particular,
opaque adversarial prequeries are never omitted from modular-reduction or ROM
accounting. -/
theorem hybridQueryBound
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
    IsQueryBoundP boundary.hybridProgram
      (@IsHybridFsQuery boundary.reached) Q_fs :=
  boundary.totalFsQueryBound

/-- Erasure exposes the same total bound in the raw byte domain. -/
theorem erasedQueryBound
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
    IsQueryBoundP
      (simulateQ
        (hybridToRawByteImpl
          boundary.serialization boundary.reached)
        boundary.hybridProgram)
      IsFsQuery Q_fs :=
  rawByte_queryBound_of_hybrid_queryBound
    boundary.serialization boundary.reached
    boundary.hybridProgram Q_fs boundary.hybridQueryBound

/-- After exact erasure, the hybrid accounting is the accounting of the
actual whole origin program. -/
theorem projectedOriginQueryBound
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
    IsQueryBoundP
      (projectedOriginByteProgram sha256 blake2b adversary)
      IsFsQuery Q_fs := by
  rw [← boundary.raw_exact]
  exact boundary.erasedQueryBound

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
    (q : ReachedGlobalFsQuery reached)
    (digest : DigestBytes) :
    rawCacheToReachedFieldCache serialization reached
        (cache.cacheQuery
          (reachedByteEncoding serialization reached q)
          digest) =
      (rawCacheToReachedFieldCache serialization reached cache)
        .cacheQuery q
          (Ipp.ShippingScalarReduction.reduceFr digest) := by
  unfold rawCacheToReachedFieldCache
  rw [Ipp.RandomOracleReindex.pullbackCache_cacheQuery
    (reachedByteEncoding_injective
      serialization reached hcollisionFree)]
  exact Ipp.RandomOracleMap.mapCache_cacheQuery
    (fun _ digest =>
      Ipp.ShippingScalarReduction.reduceFr digest)
    _ q digest

@[simp] theorem rawCacheToReachedFieldCache_empty
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    rawCacheToReachedFieldCache serialization reached ∅ = ∅ := by
  apply OracleSpec.QueryCache.ext
  intro q
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

/-- Structured reduced-digest execution of an all-typed subprogram. -/
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

/-- The raw ideal interpreter composed with exact structured-query erasure.
Naming this handler exposes the state projection used for the whole adaptive
program, including queries issued before statement selection. -/
def rawIdealReachedSourceImpl
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (ReachedAdaptiveFieldSourceSpec reached)
      (StateT RawBlake2bCache ProbComp) :=
  rawIdealByteImpl sha256 ∘ₛ
    reachedFieldToRawByteImpl serialization reached

/-- Each raw ideal-oracle step projects exactly to the reached structured
step.  Fresh raw digests are reduced before insertion into the projected
cache; cache hits and updates commute by collision-free query encoding. -/
theorem rawIdealReachedSourceImpl_step_project
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    (q : (ReachedAdaptiveFieldSourceSpec reached).Domain)
    (cache : RawBlake2bCache) :
    Prod.map id
        (rawCacheToReachedFieldCache serialization reached) <$>
      ((rawIdealReachedSourceImpl
        sha256 serialization reached q).run cache) =
    ((reachedMappedSourceImpl sha256 reached q).run
      (rawCacheToReachedFieldCache serialization reached cache)) := by
  cases q with
  | inl point =>
      simp [rawIdealReachedSourceImpl, QueryImpl.compose,
        reachedFieldToRawByteImpl, reachedUnifToRawByteFwd,
        rawIdealByteImpl, rawIdealAmbientImpl,
        reachedMappedSourceImpl, reachedMappedAmbientImpl,
        StateT.run_map, StateT.run_lift, Functor.map_map, Prod.map]
  | inr q =>
      cases q with
      | inl input =>
          simp [rawIdealReachedSourceImpl, QueryImpl.compose,
            reachedFieldToRawByteImpl, reachedShaToRawByteFwd,
            rawIdealByteImpl, rawIdealShaImpl,
            reachedMappedSourceImpl, reachedMappedShaImpl,
            StateT.run_map, StateT.run_lift, Functor.map_map, Prod.map]
      | inr point =>
          have hprojected :
              rawCacheToReachedFieldCache serialization reached cache
                  point =
                Ipp.ShippingScalarReduction.reduceFr <$>
                  cache
                    (reachedByteEncoding
                      serialization reached point) := by
            rfl
          cases hcached :
              cache
                (reachedByteEncoding serialization reached point) with
          | none =>
              have hmapped :
                  rawCacheToReachedFieldCache serialization reached cache
                      point =
                    none := by
                rw [hprojected, hcached]
                rfl
              simp only [rawIdealReachedSourceImpl,
                QueryImpl.compose, reachedFieldToRawByteImpl,
                QueryImpl.add_apply_inr,
                reachedFieldToRawByteFwd, rawIdealByteImpl,
                reachedMappedSourceImpl, reachedMappedFieldImpl,
                simulateQ_map,
                simulateQ_spec_query]
              rw [QueryImpl.withCaching_run_none _ hcached,
                QueryImpl.withCaching_run_none _ hmapped]
              simp only [StateT.run_map, Functor.map_map,
                Prod.map, id_eq, Function.comp_apply]
              apply congrArg
              funext digest
              rw [rawCacheToReachedFieldCache_cacheQuery
                serialization reached hcollisionFree]
          | some digest =>
              have hmapped :
                  rawCacheToReachedFieldCache serialization reached cache
                      point =
                    some
                      (Ipp.ShippingScalarReduction.reduceFr digest) := by
                rw [hprojected, hcached]
                rfl
              simp only [rawIdealReachedSourceImpl,
                QueryImpl.compose, reachedFieldToRawByteImpl,
                QueryImpl.add_apply_inr,
                reachedFieldToRawByteFwd, rawIdealByteImpl,
                reachedMappedSourceImpl, reachedMappedFieldImpl,
                simulateQ_map,
                simulateQ_spec_query]
              rw [QueryImpl.withCaching_run_some _ hcached,
                QueryImpl.withCaching_run_some _ hmapped]
              simp

/-- Program-level form of `rawIdealReachedSourceImpl_step_project` for an
all-typed source.  It is exact equality of probability computations, but it is
not the unrestricted shipping-origin theorem: arbitrary adversarial byte
queries require the sound hybrid source below. -/
theorem rawIdealReachedExperiment_eq_reachedMappedExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output) :
    rawIdealReachedExperiment
        sha256 serialization reached program =
      reachedMappedExperiment sha256 reached program := by
  unfold rawIdealReachedExperiment reachedMappedExperiment
  rw [← QueryImpl.simulateQ_compose]
  change
    (simulateQ
      (rawIdealReachedSourceImpl sha256 serialization reached)
      program).run' ∅ =
    (simulateQ
      (reachedMappedSourceImpl sha256 reached)
      program).run' ∅
  simpa only [rawCacheToReachedFieldCache_empty] using
    OracleComp.run'_simulateQ_eq_of_query_map_eq
      (rawIdealReachedSourceImpl sha256 serialization reached)
      (reachedMappedSourceImpl sha256 reached)
      (rawCacheToReachedFieldCache serialization reached)
      (rawIdealReachedSourceImpl_step_project
        sha256 serialization reached hcollisionFree)
      program ∅

/-! ## Sound whole-origin hybrid -/

/-- The complete origin program with concrete SHA-256 and a uniform lazy
byte oracle in place of deployed Blake2b.  This is the ideal endpoint of the
separate deployed-hash ROM replacement; it does not assert that replacement. -/
def projectedOriginIdealByteExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)) :
    ProbComp OriginFormalOutcome :=
  (simulateQ (rawIdealByteImpl sha256)
    (projectedOriginByteProgram sha256 blake2b adversary)).run' ∅

/-- Interpret the hybrid source through one raw Blake2b cache.  Both the
opaque adversary branch and the annotated verifier branch reach
`rawIdealByteImpl`; consequently equal byte preimages share one cache cell. -/
def hybridRawIdealSourceImpl
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl (HybridAdaptiveSourceSpec reached)
      (StateT RawBlake2bCache ProbComp) :=
  rawIdealByteImpl sha256 ∘ₛ
    hybridToRawByteImpl serialization reached

/-- Both hybrid query forms use the same lazy Blake2b implementation and the
same byte key.  The typed form differs only by postprocessing the cached digest
with `reduceFr`. -/
theorem hybridRawIdealSourceImpl_shared_blake2b
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (bytes : List UInt8)
    (q : ReachedGlobalFsQuery reached) :
    hybridRawIdealSourceImpl
          sha256 serialization reached
          (.inl (.inr (.inr bytes))) =
        Blake2bOracleSpec.randomOracle bytes ∧
      hybridRawIdealSourceImpl
          sha256 serialization reached (.inr q) =
        Ipp.ShippingScalarReduction.reduceFr <$>
          Blake2bOracleSpec.randomOracle
            (reachedByteEncoding serialization reached q) := by
  constructor
  · simp [hybridRawIdealSourceImpl, QueryImpl.compose,
      hybridToRawByteImpl, rawIdealByteImpl]
  · simp [hybridRawIdealSourceImpl, QueryImpl.compose,
      hybridToRawByteImpl, reachedFieldToRawByteFwd,
      rawIdealByteImpl, simulateQ_map, simulateQ_spec_query]

/-- Output experiment for the sound hybrid annotation. -/
def hybridRawIdealExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    ProbComp Output :=
  (simulateQ
    (hybridRawIdealSourceImpl sha256 serialization reached)
    program).run' ∅

/-- A raw prequery at a typed verifier preimage populates the exact cache cell
later consulted by that typed query.  This is an intended alias, not a
serialization collision. -/
theorem rawCache_prequery_hits_typed
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (cache : RawBlake2bCache)
    (q : ReachedGlobalFsQuery reached)
    (digest : DigestBytes) :
    (cache.cacheQuery
      (reachedByteEncoding serialization reached q)
      digest)
        (reachedByteEncoding serialization reached q) =
      some digest :=
  QueryCache.cacheQuery_self _ _ _

namespace OriginByteReindexing

/-- Exact whole-program annotation: arbitrary adversarial bytes are retained,
typed verifier challenges are serialized, and both are then interpreted by
the same raw ideal cache. -/
theorem projectedOriginIdealByteExperiment_eq_hybridRawIdeal
    [SampleableType DigestBytes]
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
    projectedOriginIdealByteExperiment sha256 blake2b adversary =
      hybridRawIdealExperiment
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram := by
  unfold projectedOriginIdealByteExperiment hybridRawIdealExperiment
  rw [← boundary.raw_exact]
  rw [← QueryImpl.simulateQ_compose]

end OriginByteReindexing

/-- Project the global reduced-field cache to the reached query subtype and
drop the quantitative comparison flag. -/
def globalReducedCacheToReachedFieldCache
    (reached : Set GlobalFsQuery)
    (state :
      Ipp.ShippingMultiStatement.GlobalScalarCacheState) :
    ReachedFieldCache reached :=
  Ipp.RandomOracleReindex.pullbackCache
    (fun q : ReachedGlobalFsQuery reached => q.1)
    state.1

theorem globalReducedCacheToReachedFieldCache_cacheQuery
    (reached : Set GlobalFsQuery)
    (state :
      Ipp.ShippingMultiStatement.GlobalScalarCacheState)
    (q : ReachedGlobalFsQuery reached)
    (value : Fr) :
    globalReducedCacheToReachedFieldCache reached
        (state.1.cacheQuery q.1 value, state.2) =
      (globalReducedCacheToReachedFieldCache reached state)
        .cacheQuery q value := by
  unfold globalReducedCacheToReachedFieldCache
  apply Ipp.RandomOracleReindex.pullbackCache_cacheQuery
  intro left right heq
  exact Subtype.ext heq

@[simp] theorem globalReducedCacheToReachedFieldCache_empty
    (reached : Set GlobalFsQuery) :
    globalReducedCacheToReachedFieldCache reached (∅, false) = ∅ := by
  apply OracleSpec.QueryCache.ext
  intro q
  rfl

/-- Interpret an all-typed reached source through the global reduced field
source.  This helper does not erase unrestricted adversarial byte queries. -/
def globalReducedReachedSourceImpl
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery) :
    QueryImpl (ReachedAdaptiveFieldSourceSpec reached)
      (StateT
        Ipp.ShippingMultiStatement.GlobalScalarCacheState
        ProbComp) :=
  globalReducedFsSourceImpl ∘ₛ
    reachedFieldToGlobalFsImpl sha256 reached

/-- Dropping the global comparison flag and restricting its cache to the
reached subtype gives exactly the mapped reached interpreter, query by
query. -/
theorem globalReducedReachedSourceImpl_step_project
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery)
    (q : (ReachedAdaptiveFieldSourceSpec reached).Domain)
    (state :
      Ipp.ShippingMultiStatement.GlobalScalarCacheState) :
    Prod.map id
        (globalReducedCacheToReachedFieldCache reached) <$>
      ((globalReducedReachedSourceImpl
        sha256 reached q).run state) =
    ((reachedMappedSourceImpl sha256 reached q).run
      (globalReducedCacheToReachedFieldCache reached state)) := by
  cases q with
  | inl point =>
      simp [globalReducedReachedSourceImpl, QueryImpl.compose,
        reachedFieldToGlobalFsImpl, globalFsUnifFwd,
        globalReducedFsSourceImpl,
        ambientSamplingWithGlobalScalarCache,
        reachedMappedSourceImpl, reachedMappedAmbientImpl,
        StateT.run_map, StateT.run_lift, Functor.map_map,
        Prod.map, globalReducedCacheToReachedFieldCache]
  | inr q =>
      cases q with
      | inl input =>
          simp [globalReducedReachedSourceImpl, QueryImpl.compose,
            reachedFieldToGlobalFsImpl,
            reachedMappedSourceImpl, reachedMappedShaImpl,
            StateT.run_map, StateT.run_lift, Functor.map_map,
            Prod.map, globalReducedCacheToReachedFieldCache]
      | inr point =>
          rcases state with ⟨cache, bad⟩
          have hprojected :
              globalReducedCacheToReachedFieldCache
                  reached (cache, bad) point =
                cache point.1 := by
            rfl
          cases hcached : cache point.1 with
          | none =>
              have hmapped :
                  globalReducedCacheToReachedFieldCache
                      reached (cache, bad) point =
                    none := by
                rw [hprojected, hcached]
              simp only [globalReducedReachedSourceImpl,
                QueryImpl.compose, reachedFieldToGlobalFsImpl,
                QueryImpl.add_apply_inr,
                globalReducedFsSourceImpl,
                Ipp.ShippingScalarReduction.reducedCachingOracleImpl,
                reachedMappedSourceImpl, reachedMappedFieldImpl,
                Ipp.RandomOracleMap.mappedRandomOracle,
                simulateQ_spec_query]
              rw [QueryImpl.withCachingAux_apply, hcached,
                QueryImpl.withCaching_run_none _ hmapped]
              simp only [StateT.run_map, Functor.map_map,
                Prod.map, id_eq, Function.comp_apply]
              apply congrArg
              funext digest
              rw [globalReducedCacheToReachedFieldCache_cacheQuery]
          | some value =>
              have hmapped :
                  globalReducedCacheToReachedFieldCache
                      reached (cache, bad) point =
                    some value := by
                rw [hprojected, hcached]
              simp only [globalReducedReachedSourceImpl,
                QueryImpl.compose, reachedFieldToGlobalFsImpl,
                QueryImpl.add_apply_inr,
                globalReducedFsSourceImpl,
                Ipp.ShippingScalarReduction.reducedCachingOracleImpl,
                reachedMappedSourceImpl, reachedMappedFieldImpl,
                Ipp.RandomOracleMap.mappedRandomOracle,
                simulateQ_spec_query]
              rw [QueryImpl.withCachingAux_apply, hcached,
                QueryImpl.withCaching_run_some _ hmapped]
              simp

/-- Output equality for an all-typed program between the global reduced
interpreter and reached mapped interpreter. -/
theorem globalReducedReached_run'_eq_reachedMappedExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program :
      OracleComp (ReachedAdaptiveFieldSourceSpec reached) Output) :
    (simulateQ globalReducedFsSourceImpl
      (simulateQ
        (reachedFieldToGlobalFsImpl sha256 reached)
        program)).run' (∅, false) =
      reachedMappedExperiment sha256 reached program := by
  unfold reachedMappedExperiment
  rw [← QueryImpl.simulateQ_compose]
  change
    (simulateQ
      (globalReducedReachedSourceImpl sha256 reached)
      program).run' (∅, false) =
    (simulateQ
      (reachedMappedSourceImpl sha256 reached)
      program).run' ∅
  simpa only [globalReducedCacheToReachedFieldCache_empty] using
    OracleComp.run'_simulateQ_eq_of_query_map_eq
      (globalReducedReachedSourceImpl sha256 reached)
      (reachedMappedSourceImpl sha256 reached)
      (globalReducedCacheToReachedFieldCache reached)
      (globalReducedReachedSourceImpl_step_project
        sha256 reached)
      program (∅, false)

/-!
## Deliberate boundary

There is intentionally no theorem from the unrestricted hybrid origin to
`globalReducedFsSourceExperiment`.  Such a theorem would have to preserve the
full digest returned to an arbitrary raw prequery while making the reduced
value used by an aliased typed query uniform.  The next sound hop therefore
needs a byte-keyed, fiber-lifted uniform-digest oracle (shared by both query
forms) and a global fork game that retains those raw keys.  The structured-only
helpers above remain valid for programs whose entire query source is already
typed; they must not be applied to `OriginByteReindexing.hybridProgram`.
-/

end

end Ipp.ShippingAdaptiveReindex
