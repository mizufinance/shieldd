import Ipp.ShippingAdaptiveByteFieldCoupling

/-!
Whole-origin handoff from the coherent byte/field game to the structured
global Fiat--Shamir source.

The first theorem composes the exact ideal-byte annotation with the
digest-fiber coupling.  The second part reindexes the uniform scalar endpoint:
bytes that encode a reached verifier query become that exact `GlobalFsQuery`,
while opaque adversarial bytes obtain a scalar from ambient proof-side
randomness.  The coherent outer cache still owns repetition, so a raw prequery
and a later typed verifier query consult one byte-keyed cell.

This module proves exact program identities, structural query bounds, and the
whole-program modular-reduction hop over the retained coherent cache. It does
not replace deployed Blake2b or claim that a production call executes this
formal program.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptiveGlobalFsCoupling

noncomputable section

open Ipp.Bls12377
open Ipp.ShippingAdaptiveOrigin
open Ipp.ShippingAdaptiveReindex
open Ipp.ShippingAdaptiveByteField
open Ipp.ShippingAdaptiveByteFieldCoupling
open Ipp.ShippingMultiStatement
open Ipp.ShippingScalarReduction

namespace OriginByteReindexing

/-- The complete ideal-byte origin experiment is exactly the coherent
fiber-lifted experiment with the induced Arkworks scalar distribution.
Preselection queries and selected-verifier queries remain in one program and
one cache throughout both existing equalities. -/
theorem projectedOriginIdealByte_evalDist_eq_inducedFiberLifted
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
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets) :
    𝒟[projectedOriginIdealByteExperiment
        sha256 blake2b adversary] =
      𝒟[inducedFiberLiftedHybridOutput
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram] := by
  rw [
    Ipp.ShippingAdaptiveReindex.OriginByteReindexing
      .projectedOriginIdealByteExperiment_eq_hybridRawIdeal boundary]
  exact
    hybridRawIdeal_evalDist_eq_inducedFiberLifted
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram

end OriginByteReindexing

/-! ## Uniform-scalar reindexing into the global structured source -/

/-- Draw an opaque byte key's ideal scalar from ambient proof-side
randomness.  Such a key is outside the reached structured-query image and
therefore must not manufacture a `GlobalFsQuery`. -/
noncomputable def sampleOpaqueGlobalFr :
    OracleComp GlobalFsSourceSpec Fr :=
  OracleComp.liftComp
    (spec := unifSpec)
    (superSpec := GlobalFsSourceSpec)
    ($ᵗ Fr)

/-- Ambient sampling does not consume the structured field-query budget. -/
theorem sampleOpaqueGlobalFr_queryBound_zero :
    IsQueryBoundP
      sampleOpaqueGlobalFr IsGlobalFieldQuery 0 := by
  unfold sampleOpaqueGlobalFr
  apply OracleComp.IsQueryBoundP.liftComp_subSpec
    (p := fun _ => False)
  · intro point
    simp [IsGlobalFieldQuery]
  · exact OracleComp.isQueryBoundP_false _ 0

/-- Interpret the coherent byte-keyed scalar source in the global structured
Fiat--Shamir source.

Reached byte encodings query the corresponding global structured point.
All other byte strings receive an ambient scalar.  The surrounding coherent
cache, not this handler, guarantees repeat consistency and raw/typed aliasing.
-/
noncomputable def uniformScalarToGlobalFsImpl
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    QueryImpl ByteFieldSourceSpec
      (OracleComp GlobalFsSourceSpec) :=
  globalFsUnifFwd +
    (fun bytes =>
      match decodeReachedQuery? serialization reached bytes with
      | none => sampleOpaqueGlobalFr
      | some q =>
          (GlobalFsSourceSpec).query (.inr q.1))

/-- On the collision-free reached branch, the exact production byte encoding
of a structured verifier query is reindexed to that same logical query. -/
@[simp] theorem uniformScalarToGlobalFsImpl_reached
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (hcollisionFree :
      ReachableGlobalSerializationInjective serialization reached)
    (q : ReachedGlobalFsQuery reached) :
    uniformScalarToGlobalFsImpl serialization reached
        (.inr (reachedByteEncoding serialization reached q)) =
      (GlobalFsSourceSpec).query (.inr q.1) := by
  simp [uniformScalarToGlobalFsImpl,
    decodeReachedQuery?_encode
      serialization reached hcollisionFree q]

/-- One charged byte-scalar query becomes at most one structured field query.
Opaque byte keys move to ambient sampling and therefore consume zero of that
budget. -/
theorem uniformScalarToGlobalFsImpl_step_charged
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (point : ByteFieldSourceSpec.Domain)
    (hpoint : IsByteFieldQuery point) :
    IsQueryBoundP
      (uniformScalarToGlobalFsImpl
        serialization reached point)
      IsGlobalFieldQuery 1 := by
  cases point with
  | inl _ =>
      simp [IsByteFieldQuery] at hpoint
  | inr bytes =>
      simp only [uniformScalarToGlobalFsImpl,
        QueryImpl.add_apply_inr]
      split
      · exact
          sampleOpaqueGlobalFr_queryBound_zero.mono
            (Nat.zero_le 1)
      · simp [IsGlobalFieldQuery]

/-- Ambient source queries remain ambient and consume no structured
field-query budget. -/
theorem uniformScalarToGlobalFsImpl_step_uncharged
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (point : ByteFieldSourceSpec.Domain)
    (hpoint : ¬ IsByteFieldQuery point) :
    IsQueryBoundP
      (uniformScalarToGlobalFsImpl
        serialization reached point)
      IsGlobalFieldQuery 0 := by
  cases point with
  | inl ambientPoint =>
      simp [uniformScalarToGlobalFsImpl, globalFsUnifFwd,
        IsGlobalFieldQuery]
  | inr _ =>
      simp [IsByteFieldQuery] at hpoint

/-- The uniform-scalar global game obtained from one complete fiber-lifted
hybrid program.  Its output still contains the selected heterogeneous
statement, proof, transcript, and verifier result. -/
noncomputable def fiberLiftedGlobalFsProgram
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    OracleComp GlobalFsSourceSpec Output :=
  simulateQ
    (uniformScalarToGlobalFsImpl serialization reached)
    (fiberLiftedHybridOutput
      sha256 serialization reached program)

/-- Reindexing the fiber-lifted program never resets or enlarges its total
shared-cache query budget. -/
theorem fiberLiftedGlobalFsProgram_queryBound
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP
        (fiberLiftedHybridOutput
          sha256 serialization reached program)
        IsByteFieldQuery Q_fs) :
    IsQueryBoundP
      (fiberLiftedGlobalFsProgram
        sha256 serialization reached program)
      IsGlobalFieldQuery Q_fs := by
  unfold fiberLiftedGlobalFsProgram
  exact
    hbound.simulateQ_of_step
      (uniformScalarToGlobalFsImpl_step_charged
        serialization reached)
      (uniformScalarToGlobalFsImpl_step_uncharged
        serialization reached)

/-! ## Quantitative induced-reduction to uniform-scalar hop

The coherent byte cache is already retained inside
`fiberLiftedHybridOutput`. The two source handlers below therefore do not
install another cache: each is consulted only when that one shared cache
misses. Every fresh opaque prequery and every fresh reached verifier query is
one charged `IsByteFieldQuery`; repetitions remain common cache hits.
-/

/-- Proof-only state for scalar replacement. `PUnit` records that this layer
owns no operational state; the Boolean is VCVio's monotone bad flag. -/
abbrev ScalarReplacementState := PUnit × Bool

/-- Preserve ambient proof-side sampling while carrying only the proof-side
scalar-replacement state. -/
def ambientSamplingWithScalarReplacementState :
    QueryImpl unifSpec
      (StateT ScalarReplacementState ProbComp) :=
  (HasQuery.toQueryImpl
    (spec := unifSpec) (m := ProbComp)).liftTarget
      (StateT ScalarReplacementState ProbComp)

/-- Interpret each shared-cache miss by reducing one uniform 64-byte digest. -/
def inducedReducedByteFieldSourceImpl
    [SampleableType DigestBytes] :
    QueryImpl ByteFieldSourceSpec
      (StateT ScalarReplacementState ProbComp) :=
  ambientSamplingWithScalarReplacementState +
    reducedFreshOracleImpl (Domain := List UInt8)

/-- Interpret the same shared-cache miss as an exactly uniform scalar. -/
def uniformByteFieldSourceImpl :
    QueryImpl ByteFieldSourceSpec
      (StateT ScalarReplacementState ProbComp) :=
  ambientSamplingWithScalarReplacementState +
    uniformFreshOracleImpl (Domain := List UInt8)

/-- Complete fiber-lifted execution with the exact scalar distribution
induced by deployed 64-byte modular reduction. -/
noncomputable def fiberLiftedInducedReducedExperiment
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    ProbComp (Output × ScalarReplacementState) :=
  (simulateQ inducedReducedByteFieldSourceImpl
    (fiberLiftedHybridOutput
      sha256 serialization reached program)).run
        (PUnit.unit, false)

/-- The identical cache-preserving program with exactly uniform fresh scalar
responses. -/
noncomputable def fiberLiftedUniformScalarExperiment
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    ProbComp (Output × ScalarReplacementState) :=
  (simulateQ uniformByteFieldSourceImpl
    (fiberLiftedHybridOutput
      sha256 serialization reached program)).run
        (PUnit.unit, false)

/-! ## Exact output marginals of the stateful scalar interpreters -/

/-- Stateless uniform interpretation of the byte-field source.  This is used
only to expose the output marginal of `uniformByteFieldSourceImpl`; it installs
no cache and makes no structured-query identification. -/
private noncomputable def uniformByteFieldProbCompImpl :
    QueryImpl ByteFieldSourceSpec ProbComp :=
  (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)) +
    (fun _bytes : List UInt8 => ($ᵗ Fr))

/-- A state-preserving query implementation remains state-preserving through
an arbitrary adaptive oracle program. -/
private theorem simulateQ_statePreserving_run_eq
    {ι : Type}
    {spec : OracleSpec ι}
    {State Output : Type}
    (stateful :
      QueryImpl spec (StateT State ProbComp))
    (stateless : QueryImpl spec ProbComp)
    (hstep : ∀ query state,
      (stateful query).run state =
        (fun value => (value, state)) <$> stateless query)
    (program : OracleComp spec Output)
    (state : State) :
    (simulateQ stateful program).run state =
      (fun output => (output, state)) <$>
        simulateQ stateless program := by
  induction program using OracleComp.inductionOn
      generalizing state with
  | pure output =>
      simp [StateT.run_pure]
  | query_bind query continuation ih =>
      simp only [simulateQ_query_bind, StateT.run_bind]
      rw [hstep query state, bind_map_left, map_bind]
      exact bind_congr fun value => ih value state

/-- Output-only form of `simulateQ_statePreserving_run_eq`. -/
private theorem simulateQ_statePreserving_run'_eq
    {ι : Type}
    {spec : OracleSpec ι}
    {State Output : Type}
    (stateful :
      QueryImpl spec (StateT State ProbComp))
    (stateless : QueryImpl spec ProbComp)
    (hstep : ∀ query state,
      (stateful query).run state =
        (fun value => (value, state)) <$> stateless query)
    (program : OracleComp spec Output)
    (state : State) :
    (simulateQ stateful program).run' state =
      simulateQ stateless program := by
  rw [StateT.run'_eq,
    simulateQ_statePreserving_run_eq
      stateful stateless hstep program state]
  simp [Functor.map_map]

/-- The quantitative reduced handler is exactly the ordinary induced scalar
handler after forgetting its proof-only state. -/
private theorem inducedReducedByteFieldSourceImpl_run_eq
    [SampleableType DigestBytes]
    (query : ByteFieldSourceSpec.Domain)
    (state : ScalarReplacementState) :
    (inducedReducedByteFieldSourceImpl query).run state =
      (fun value => (value, state)) <$>
        inducedByteFieldSourceImpl query := by
  cases query with
  | inl point =>
      simp [inducedReducedByteFieldSourceImpl,
        inducedByteFieldSourceImpl,
        ambientSamplingWithScalarReplacementState,
        QueryImpl.liftTarget_apply,
        HasQuery.toQueryImpl_apply,
        StateT.run_lift, map_eq_bind_pure_comp]
  | inr bytes =>
      simp [inducedReducedByteFieldSourceImpl,
        inducedByteFieldSourceImpl,
        reducedFreshOracleImpl, Functor.map_map]

/-- The quantitative uniform handler is exactly the stateless uniform
byte-field handler after forgetting its proof-only state. -/
private theorem uniformByteFieldSourceImpl_run_eq
    (query : ByteFieldSourceSpec.Domain)
    (state : ScalarReplacementState) :
    (uniformByteFieldSourceImpl query).run state =
      (fun value => (value, state)) <$>
        uniformByteFieldProbCompImpl query := by
  cases query with
  | inl point =>
      simp [uniformByteFieldSourceImpl,
        uniformByteFieldProbCompImpl,
        ambientSamplingWithScalarReplacementState,
        QueryImpl.liftTarget_apply,
        HasQuery.toQueryImpl_apply,
        StateT.run_lift, map_eq_bind_pure_comp]
  | inr bytes =>
      simp [uniformByteFieldSourceImpl,
        uniformByteFieldProbCompImpl,
        uniformFreshOracleImpl, Functor.map_map]

/-- Interpreting the coherent fiber-lifted program with the induced scalar
source is exactly the already-defined induced coherent experiment. -/
private theorem simulateQ_inducedByteFieldSourceImpl_fiberLiftedHybridOutput
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    simulateQ inducedByteFieldSourceImpl
        (fiberLiftedHybridOutput
          sha256 serialization reached program) =
      inducedFiberLiftedHybridOutput
        sha256 serialization reached program := by
  unfold fiberLiftedHybridOutput
    inducedFiberLiftedHybridOutput
  rw [StateT.run'_eq, StateT.run'_eq, simulateQ_map]
  have hcompose :=
    OracleComp.simulateQ_StateT_compose
      (coherentHybridImpl sha256 serialization reached)
      inducedByteFieldSourceImpl
      (inducedCoherentHybridImpl
        sha256 serialization reached)
      (fun _point _cache => rfl)
      program ∅
  exact congrArg (fun computation => Prod.fst <$> computation)
    hcompose

/-- Distributional simulation congruence for stateless handlers with
different outer source specifications. -/
private theorem evalDist_simulateQ_cross
    {ι₁ ι₂ κ : Type}
    {outer₁ : OracleSpec ι₁}
    {outer₂ : OracleSpec ι₂}
    {inner : OracleSpec κ}
    [IsUniformSpec outer₁]
    [IsUniformSpec outer₂]
    {Output : Type}
    (left : QueryImpl inner (OracleComp outer₁))
    (right : QueryImpl inner (OracleComp outer₂))
    (hquery : ∀ query, 𝒟[left query] = 𝒟[right query])
    (program : OracleComp inner Output) :
    𝒟[simulateQ left program] =
      𝒟[simulateQ right program] := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      rfl
  | query_bind query continuation ih =>
      simp only [simulateQ_query_bind]
      rw [evalDist_bind, evalDist_bind]
      congr 1
      · exact hquery query
      · funext value
        exact ih value

/-- A fresh uniform scalar has the same query-local distribution whether it
is sampled directly, attached to an opaque byte key, or obtained from the
corresponding structured global-source query. -/
private theorem uniformByteFieldProbCompImpl_evalDist_eq_global
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (query : ByteFieldSourceSpec.Domain) :
    𝒟[uniformByteFieldProbCompImpl query] =
      𝒟[uniformScalarToGlobalFsImpl
        serialization reached query] := by
  cases query with
  | inl point =>
      simp [uniformByteFieldProbCompImpl,
        uniformScalarToGlobalFsImpl, globalFsUnifFwd,
        HasQuery.toQueryImpl_apply]
  | inr bytes =>
      cases hdecode :
          decodeReachedQuery?
            serialization reached bytes with
      | none =>
          simp [uniformByteFieldProbCompImpl,
            uniformScalarToGlobalFsImpl, hdecode,
            sampleOpaqueGlobalFr]
      | some query =>
          simp [uniformByteFieldProbCompImpl,
            uniformScalarToGlobalFsImpl, hdecode,
            evalDist_uniformSample, evalDist_query]

/-- Forgetting the proof-only quantitative state recovers exactly the
induced-scalar coherent experiment. -/
theorem fiberLiftedInducedReduced_output_evalDist_eq_inducedFiberLifted
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    𝒟[Prod.fst <$>
        fiberLiftedInducedReducedExperiment
          sha256 serialization reached program] =
      𝒟[inducedFiberLiftedHybridOutput
        sha256 serialization reached program] := by
  change
    𝒟[(simulateQ inducedReducedByteFieldSourceImpl
        (fiberLiftedHybridOutput
          sha256 serialization reached program)).run'
        (PUnit.unit, false)] =
      𝒟[inducedFiberLiftedHybridOutput
        sha256 serialization reached program]
  rw [simulateQ_statePreserving_run'_eq
    inducedReducedByteFieldSourceImpl
    inducedByteFieldSourceImpl
    inducedReducedByteFieldSourceImpl_run_eq]
  rw [simulateQ_inducedByteFieldSourceImpl_fiberLiftedHybridOutput]

/-- Forgetting the proof-only quantitative state in the uniform endpoint
gives exactly the output distribution of the global structured FS program. -/
theorem fiberLiftedUniformScalar_output_evalDist_eq_globalFs
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output) :
    𝒟[Prod.fst <$>
        fiberLiftedUniformScalarExperiment
          sha256 serialization reached program] =
      𝒟[fiberLiftedGlobalFsProgram
        sha256 serialization reached program] := by
  change
    𝒟[(simulateQ uniformByteFieldSourceImpl
        (fiberLiftedHybridOutput
          sha256 serialization reached program)).run'
        (PUnit.unit, false)] =
      𝒟[simulateQ
        (uniformScalarToGlobalFsImpl serialization reached)
        (fiberLiftedHybridOutput
          sha256 serialization reached program)]
  rw [simulateQ_statePreserving_run'_eq
    uniformByteFieldSourceImpl
    uniformByteFieldProbCompImpl
    uniformByteFieldSourceImpl_run_eq]
  exact
    evalDist_simulateQ_cross
      uniformByteFieldProbCompImpl
      (uniformScalarToGlobalFsImpl serialization reached)
      (uniformByteFieldProbCompImpl_evalDist_eq_global
        serialization reached)
      (fiberLiftedHybridOutput
        sha256 serialization reached program)

/-- Neither ambient sampling nor an induced-reduced scalar response changes
the quantitative simulation's bad flag. -/
theorem inducedReducedByteFieldSourceImpl_preserves_bad
    [SampleableType DigestBytes]
    (query : ByteFieldSourceSpec.Domain)
    (state : ScalarReplacementState)
    (output :
      ByteFieldSourceSpec.Range query × ScalarReplacementState)
    (houtput :
      output ∈ support
        ((inducedReducedByteFieldSourceImpl query).run state)) :
    output.2.2 = state.2 := by
  cases query with
  | inl point =>
      simp only [inducedReducedByteFieldSourceImpl,
        QueryImpl.add_apply_inl,
        ambientSamplingWithScalarReplacementState,
        QueryImpl.liftTarget_apply, liftM, monadLift] at houtput
      change output ∈ support ((StateT.lift _).run state) at houtput
      rw [StateT.run_lift, mem_support_bind_iff] at houtput
      obtain ⟨value, _hvalue, hpure⟩ := houtput
      rw [mem_support_pure_iff] at hpure
      have hstate : output.2 = state :=
        congrArg Prod.snd hpure
      simp [hstate]
  | inr bytes =>
      rw [reducedFreshOracleImpl_preserves_state
        bytes state output
        (by
          simpa [inducedReducedByteFieldSourceImpl] using houtput)]

/-- One charged byte-field step has the proved one-response reduction bias. -/
theorem inducedReducedByteFieldSourceImpl_step_tvDist_le
    [SampleableType DigestBytes]
    (query : ByteFieldSourceSpec.Domain)
    (hquery : IsByteFieldQuery query)
    (state : PUnit) :
    ENNReal.ofReal
        (tvDist
          ((inducedReducedByteFieldSourceImpl query).run
            (state, false))
          ((uniformByteFieldSourceImpl query).run
            (state, false))) ≤
      modReductionBias := by
  cases query with
  | inl _ =>
      simp [IsByteFieldQuery] at hquery
  | inr bytes =>
      simpa [inducedReducedByteFieldSourceImpl,
        uniformByteFieldSourceImpl] using
        (reducedFreshOracleImpl_step_tvDist_le
          bytes state)

/-- An uncharged ambient step is identical in both scalar worlds. -/
theorem inducedReducedByteFieldSourceImpl_step_uncharged
    [SampleableType DigestBytes]
    (query : ByteFieldSourceSpec.Domain)
    (hquery : ¬ IsByteFieldQuery query)
    (state : ScalarReplacementState) :
    (inducedReducedByteFieldSourceImpl query).run state =
      (uniformByteFieldSourceImpl query).run state := by
  cases query with
  | inl _ =>
      rfl
  | inr _ =>
      simp [IsByteFieldQuery] at hquery

/-- Whole-program modular-reduction hop over the exact same fiber-lifted
program and retained coherent byte cache on both sides. The loss is exactly
`modReductionBudget Q_fs`; there is no post-selection or fresh-verifier
budget. -/
theorem fiberLiftedInducedReduced_uniformScalar_tvDist_le
    [SampleableType DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP
        (fiberLiftedHybridOutput
          sha256 serialization reached program)
        IsByteFieldQuery Q_fs) :
    ENNReal.ofReal
        (tvDist
          (fiberLiftedInducedReducedExperiment
            sha256 serialization reached program)
          (fiberLiftedUniformScalarExperiment
            sha256 serialization reached program)) ≤
      modReductionBudget Q_fs := by
  have hbadZero :
      Pr[fun output : Output × ScalarReplacementState =>
          output.2.2 = true |
        fiberLiftedInducedReducedExperiment
          sha256 serialization reached program] = 0 := by
    apply probEvent_eq_zero
    intro output houtput hbad
    have hpreserved : output.2.2 = false := by
      have hinv :=
        OracleComp.simulateQ_run_preserves_inv_of_query
          inducedReducedByteFieldSourceImpl
          (fun state : ScalarReplacementState =>
            state.2 = false)
          (fun query state hstate result hresult => by
            rw [inducedReducedByteFieldSourceImpl_preserves_bad
              query state result hresult]
            exact hstate)
          (fiberLiftedHybridOutput
            sha256 serialization reached program)
          (PUnit.unit, false) rfl
      exact hinv output houtput
    simp_all
  have hquantitative :=
    OracleComp.ProgramLogic.Relational
      .ofReal_tvDist_simulateQ_run_le_queryBound_mul_slack_plus_probEvent_bad
        (spec' := unifSpec)
        inducedReducedByteFieldSourceImpl
        uniformByteFieldSourceImpl
        modReductionBias
        IsByteFieldQuery
        (fun query hquery state =>
          inducedReducedByteFieldSourceImpl_step_tvDist_le
            query hquery state)
        (fun query hquery state =>
          inducedReducedByteFieldSourceImpl_step_uncharged
            query hquery state)
        (fun query state hbad output houtput => by
          rw [inducedReducedByteFieldSourceImpl_preserves_bad
            query state output houtput]
          exact hbad)
        (fiberLiftedHybridOutput
          sha256 serialization reached program)
        hbound (PUnit.unit, false)
  simpa [fiberLiftedInducedReducedExperiment,
    fiberLiftedUniformScalarExperiment,
    modReductionBudget, hbadZero] using hquantitative

/-- Event form of the cache-preserving whole-program hop. -/
theorem fiberLiftedInducedReduced_event_le_uniformScalar_add_modReduction
    {Output : Type}
    [SampleableType DigestBytes]
    (predicate : Output → Prop)
    [DecidablePred predicate]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP
        (fiberLiftedHybridOutput
          sha256 serialization reached program)
        IsByteFieldQuery Q_fs) :
    Pr[fun output => predicate output.1 |
        fiberLiftedInducedReducedExperiment
          sha256 serialization reached program] ≤
      Pr[fun output => predicate output.1 |
          fiberLiftedUniformScalarExperiment
            sha256 serialization reached program] +
        modReductionBudget Q_fs := by
  apply Ipp.ShippingHashGame.probEvent_le_add_of_ofReal_tvDist_le
  exact
    fiberLiftedInducedReduced_uniformScalar_tvDist_le
      sha256 serialization reached program Q_fs hbound

/-- The cache-preserving modular-reduction hop with both proof-only state
marginals eliminated.  Its left endpoint is the existing induced coherent
experiment and its right endpoint is the global structured Fiat--Shamir
program, with the same complete `Q_fs` budget. -/
theorem inducedFiberLifted_event_le_globalFs_add_modReduction
    {Output : Type}
    [SampleableType DigestBytes]
    (predicate : Output → Prop)
    [DecidablePred predicate]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (program : OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP
        (fiberLiftedHybridOutput
          sha256 serialization reached program)
        IsByteFieldQuery Q_fs) :
    Pr[predicate |
        inducedFiberLiftedHybridOutput
          sha256 serialization reached program] ≤
      Pr[predicate |
          fiberLiftedGlobalFsProgram
            sha256 serialization reached program] +
        modReductionBudget Q_fs := by
  calc
    Pr[predicate |
        inducedFiberLiftedHybridOutput
          sha256 serialization reached program] =
      Pr[predicate | Prod.fst <$>
        fiberLiftedInducedReducedExperiment
          sha256 serialization reached program] := by
            exact
              probEvent_congr' (fun _ _ => Iff.rfl)
                (fiberLiftedInducedReduced_output_evalDist_eq_inducedFiberLifted
                  sha256 serialization reached program).symm
    _ =
      Pr[fun output => predicate output.1 |
        fiberLiftedInducedReducedExperiment
          sha256 serialization reached program] := by
            rw [probEvent_map]
            rfl
    _ ≤
      Pr[fun output => predicate output.1 |
        fiberLiftedUniformScalarExperiment
          sha256 serialization reached program] +
        modReductionBudget Q_fs :=
          fiberLiftedInducedReduced_event_le_uniformScalar_add_modReduction
            predicate sha256 serialization reached program Q_fs hbound
    _ =
      Pr[predicate | Prod.fst <$>
        fiberLiftedUniformScalarExperiment
          sha256 serialization reached program] +
        modReductionBudget Q_fs := by
            congr 1
            rw [probEvent_map]
    _ =
      Pr[predicate |
        fiberLiftedGlobalFsProgram
          sha256 serialization reached program] +
        modReductionBudget Q_fs := by
            congr 1
            exact
              probEvent_congr' (fun _ _ => Iff.rfl)
                (fiberLiftedUniformScalar_output_evalDist_eq_globalFs
                  sha256 serialization reached program)

/-! ## Exact global-game program shape -/

/-- Canonical two-phase global Fiat--Shamir program.

The bind is inside one `OracleComp GlobalFsSourceSpec`, so structured queries
made before heterogeneous selection and queries made by the selected verifier
are interpreted by the same surrounding random-function cache. -/
def sharedGlobalFsProgram {Call : Type}
    (preselection :
      OracleComp GlobalFsSourceSpec (PackedSelection Call)) :
    OracleComp GlobalFsSourceSpec (PackedOutcome Call) := do
  let selected ← preselection
  verifyPackedSelection selected

/-- The canonical two-phase program is exactly `MultiStatementFsGame`.
This is a program identity: it neither restarts the selected verifier nor
assumes anything about acceptance. -/
theorem sharedGlobalFsProgram_eq_multiStatementFsGame
    {Call : Type}
    (preselection :
      OracleComp GlobalFsSourceSpec (PackedSelection Call)) :
    sharedGlobalFsProgram preselection =
      MultiStatementFsGame preselection := by
  unfold sharedGlobalFsProgram MultiStatementFsGame
  apply bind_congr
  rintro ⟨μ, selection⟩
  rfl

namespace OriginByteReindexing

/-- Non-circular construction boundary for identifying the structured
fiber-lifted origin with the canonical multi-statement game.

The production proof supplies a preselection program, an explicitly separated
selected-call continuation, and two exact execution equations:

* `phase_exact` says the already-constructed fiber-lifted program is one bind
  of those two phases;
* `selected_exact` says each continuation is the existing formal verifier for
  that exact dependent selection.

Neither field mentions acceptance, invalidity, a probability bound, a fresh
oracle, or the desired soundness conclusion. -/
structure GlobalFsProgramConstruction
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
        sha256 blake2b adversary Q_sha Q_fs budgets) where
  preselection :
    OracleComp GlobalFsSourceSpec
      (PackedSelection ShippingStatementKey)
  selectedContinuation :
    PackedSelection ShippingStatementKey →
      OracleComp GlobalFsSourceSpec OriginFormalOutcome
  phase_exact :
    Ipp.ShippingAdaptiveGlobalFsCoupling
        .fiberLiftedGlobalFsProgram
          sha256 boundary.serialization boundary.reached
          boundary.hybridProgram =
      (do
        let selected ← preselection
        selectedContinuation selected)
  selected_exact :
    ∀ selected,
      selectedContinuation selected =
        verifyPackedSelection selected

namespace GlobalFsProgramConstruction

/-- All deterministic composition after the production phase equations:
the structured fiber-lifted origin is the canonical single-program,
multi-statement Fiat--Shamir game. -/
theorem fiberLiftedGlobalFsProgram_eq_multiStatementFsGame
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)}
    {Q_sha Q_fs : Nat}
    {budgets :
      DistinctQueryBudgets
        sha256 blake2b adversary Q_sha Q_fs}
    {boundary :
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets}
    (construction : GlobalFsProgramConstruction boundary) :
    Ipp.ShippingAdaptiveGlobalFsCoupling
        .fiberLiftedGlobalFsProgram
          sha256 boundary.serialization boundary.reached
          boundary.hybridProgram =
      MultiStatementFsGame construction.preselection := by
  rw [construction.phase_exact]
  calc
    (do
        let selected ← construction.preselection
        construction.selectedContinuation selected) =
        sharedGlobalFsProgram construction.preselection := by
          unfold sharedGlobalFsProgram
          apply bind_congr
          intro selected
          exact construction.selected_exact selected
    _ = MultiStatementFsGame construction.preselection :=
      sharedGlobalFsProgram_eq_multiStatementFsGame
        construction.preselection

/-- The exact whole-origin `Q_fs` bound therefore applies to the intended
multi-statement game without resetting the cache at selection. -/
theorem multiStatementFsGame_queryBound
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)}
    {Q_sha Q_fs : Nat}
    {budgets :
      DistinctQueryBudgets
        sha256 blake2b adversary Q_sha Q_fs}
    {boundary :
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets}
    (construction : GlobalFsProgramConstruction boundary) :
    IsQueryBoundP
      (MultiStatementFsGame construction.preselection)
      IsGlobalFieldQuery Q_fs := by
  rw [← fiberLiftedGlobalFsProgram_eq_multiStatementFsGame
    construction]
  exact
    Ipp.ShippingAdaptiveGlobalFsCoupling
      .fiberLiftedGlobalFsProgram_queryBound
        sha256 boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
        (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing
          .fiberLiftedHybridOutput_queryBound boundary)

end GlobalFsProgramConstruction

/-- Whole-origin instantiation: the same `Q_fs` bounds all adversarial
preselection Blake2b keys and all selected-verifier challenges before and
after the handoff to the global structured source. -/
theorem fiberLiftedGlobalFsProgram_queryBound
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
      (Ipp.ShippingAdaptiveGlobalFsCoupling
        .fiberLiftedGlobalFsProgram
          sha256 boundary.serialization boundary.reached
          boundary.hybridProgram)
      IsGlobalFieldQuery Q_fs :=
  Ipp.ShippingAdaptiveGlobalFsCoupling
    .fiberLiftedGlobalFsProgram_queryBound
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram Q_fs
      (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing
        .fiberLiftedHybridOutput_queryBound boundary)

/-- Whole-origin specialization of the quantitative scalar hop. The exact
`Q_fs` from `DistinctQueryBudgets` covers all preselection and selected-call
Blake2b keys in the one retained coherent cache. -/
theorem inducedReduced_event_le_uniformScalar_add_modReduction
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
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets)
    (predicate : OriginFormalOutcome → Prop)
    [DecidablePred predicate] :
    Pr[fun output => predicate output.1 |
        Ipp.ShippingAdaptiveGlobalFsCoupling
          .fiberLiftedInducedReducedExperiment
            sha256 boundary.serialization boundary.reached
            boundary.hybridProgram] ≤
      Pr[fun output => predicate output.1 |
          Ipp.ShippingAdaptiveGlobalFsCoupling
            .fiberLiftedUniformScalarExperiment
              sha256 boundary.serialization boundary.reached
              boundary.hybridProgram] +
        modReductionBudget Q_fs := by
  exact
    Ipp.ShippingAdaptiveGlobalFsCoupling
      .fiberLiftedInducedReduced_event_le_uniformScalar_add_modReduction
        predicate sha256 boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
        (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing
          .fiberLiftedHybridOutput_queryBound boundary)

/-- Whole-origin scalar hop after eliminating the proof-only quantitative
state on both sides.  The one `Q_fs` from `DistinctQueryBudgets` covers every
preselection and selected-verifier Blake2b cache miss. -/
theorem inducedFiberLifted_event_le_globalFs_add_modReduction
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
      Ipp.ShippingAdaptiveReindex.OriginByteReindexing
        sha256 blake2b adversary Q_sha Q_fs budgets)
    (predicate : OriginFormalOutcome → Prop)
    [DecidablePred predicate] :
    Pr[predicate |
        inducedFiberLiftedHybridOutput
          sha256 boundary.serialization boundary.reached
          boundary.hybridProgram] ≤
      Pr[predicate |
          fiberLiftedGlobalFsProgram
            sha256 boundary.serialization boundary.reached
            boundary.hybridProgram] +
        modReductionBudget Q_fs := by
  exact
    Ipp.ShippingAdaptiveGlobalFsCoupling
      .inducedFiberLifted_event_le_globalFs_add_modReduction
        predicate sha256 boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
        (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing
          .fiberLiftedHybridOutput_queryBound boundary)

end OriginByteReindexing

#print axioms OriginByteReindexing.projectedOriginIdealByte_evalDist_eq_inducedFiberLifted
#print axioms uniformScalarToGlobalFsImpl_reached
#print axioms fiberLiftedGlobalFsProgram_queryBound
#print axioms fiberLiftedInducedReduced_uniformScalar_tvDist_le
#print axioms fiberLiftedInducedReduced_event_le_uniformScalar_add_modReduction
#print axioms sharedGlobalFsProgram_eq_multiStatementFsGame
#print axioms OriginByteReindexing.GlobalFsProgramConstruction.fiberLiftedGlobalFsProgram_eq_multiStatementFsGame
#print axioms OriginByteReindexing.GlobalFsProgramConstruction.multiStatementFsGame_queryBound
#print axioms OriginByteReindexing.fiberLiftedGlobalFsProgram_queryBound
#print axioms OriginByteReindexing.inducedReduced_event_le_uniformScalar_add_modReduction

end

end Ipp.ShippingAdaptiveGlobalFsCoupling
