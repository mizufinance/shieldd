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

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

local instance : NeZero scalarModulus :=
  ⟨arithmeticFacts.scalarPrime.ne_zero⟩

local instance : IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _

local instance : IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

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
    Ipp.ShippingAdaptiveReindex.OriginByteReindexing.projectedOriginIdealByteExperiment_eq_hybridRawIdeal
      boundary]
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

private theorem liftUnifGlobal_queryBound_zero
    {Output : Type}
    (program : ProbComp Output) :
    IsQueryBoundP
      (OracleComp.liftComp
        (spec := unifSpec)
        (superSpec := GlobalFsSourceSpec)
        program)
      IsGlobalFieldQuery 0 := by
  apply OracleComp.IsQueryBoundP.liftComp_subSpec
    (spec := unifSpec)
    (superSpec := GlobalFsSourceSpec)
    (h := OracleQuery.subSpec_add_left)
    (p := fun _ => False)
    (q := IsGlobalFieldQuery)
  · intro point
    simp [IsGlobalFieldQuery]
  · exact OracleComp.isQueryBoundP_false _ 0

/-- Ambient sampling does not consume the structured field-query budget. -/
theorem sampleOpaqueGlobalFr_queryBound_zero :
    IsQueryBoundP
      sampleOpaqueGlobalFr IsGlobalFieldQuery 0 := by
  exact liftUnifGlobal_queryBound_zero (($ᵗ Fr) : ProbComp Fr)

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
  change
    (match decodeReachedQuery? serialization reached
        (reachedByteEncoding serialization reached q) with
      | none => sampleOpaqueGlobalFr
      | some reachedPoint =>
          (liftM
            (GlobalFsSourceSpec.query (.inr reachedPoint.1)) :
            OracleComp GlobalFsSourceSpec Fr)) =
      (liftM (GlobalFsSourceSpec.query (.inr q.1)) :
        OracleComp GlobalFsSourceSpec Fr)
  rw [decodeReachedQuery?_encode
    serialization reached hcollisionFree q]

set_option maxRecDepth 100000 in
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
      cases hdecode :
          decodeReachedQuery? serialization reached bytes with
      | none =>
          rw [show
            uniformScalarToGlobalFsImpl serialization reached
                (.inr bytes) =
              (match decodeReachedQuery?
                  serialization reached bytes with
                | none => sampleOpaqueGlobalFr
                | some reachedPoint =>
                    (GlobalFsSourceSpec).query
                      (.inr reachedPoint.1)) from rfl,
            hdecode]
          exact
            sampleOpaqueGlobalFr_queryBound_zero.mono
              (Nat.zero_le 1)
      | some reachedPoint =>
          rw [show
            uniformScalarToGlobalFsImpl serialization reached
                (.inr bytes) =
              (match decodeReachedQuery?
                  serialization reached bytes with
                | none => sampleOpaqueGlobalFr
                | some reachedPoint =>
                    (GlobalFsSourceSpec).query
                      (.inr reachedPoint.1)) from rfl,
            hdecode]
          exact
            (OracleComp.isQueryBoundP_query_iff
              (spec := GlobalFsSourceSpec)
              (p := IsGlobalFieldQuery)
              (.inr reachedPoint.1) 1).2
              (by simp [IsGlobalFieldQuery])

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
      simp only [uniformScalarToGlobalFsImpl,
        QueryImpl.add_apply_inl, globalFsUnifFwd]
      change IsQueryBoundP
        (liftM (GlobalFsSourceSpec.query (.inl ambientPoint)) :
          OracleComp GlobalFsSourceSpec _)
        IsGlobalFieldQuery 0
      exact
        (OracleComp.isQueryBoundP_query_iff
          (spec := GlobalFsSourceSpec)
          (p := IsGlobalFieldQuery)
          (.inl ambientPoint) 0).2
          (by simp [IsGlobalFieldQuery])
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
    (hstep : ∀ point state,
      (stateful point).run state =
        (fun value => (value, state)) <$> stateless point)
    (program : OracleComp spec Output)
    (state : State) :
    (simulateQ stateful program).run state =
      (fun output => (output, state)) <$>
        simulateQ stateless program := by
  induction program using OracleComp.inductionOn
      generalizing state with
  | pure output =>
      simp [StateT.run_pure]
  | query_bind point continuation ih =>
      simp only [simulateQ_bind, simulateQ_spec_query,
        StateT.run_bind]
      rw [hstep point state, bind_map_left, map_bind]
      exact bind_congr fun value => ih value state

/-- Output-only form of `simulateQ_statePreserving_run_eq`. -/
private theorem simulateQ_statePreserving_run'_eq
    {ι : Type}
    {spec : OracleSpec ι}
    {State Output : Type}
    (stateful :
      QueryImpl spec (StateT State ProbComp))
    (stateless : QueryImpl spec ProbComp)
    (hstep : ∀ point state,
      (stateful point).run state =
        (fun value => (value, state)) <$> stateless point)
    (program : OracleComp spec Output)
    (state : State) :
    (simulateQ stateful program).run' state =
      simulateQ stateless program := by
  rw [StateT.run'_eq,
    simulateQ_statePreserving_run_eq
      stateful stateless hstep program state]
  simp [Functor.map_map]

set_option maxRecDepth 100000 in
/-- The quantitative reduced handler is exactly the ordinary induced scalar
handler after forgetting its proof-only state. -/
private theorem inducedReducedByteFieldSourceImpl_run_eq
    [SampleableType DigestBytes]
    (point : ByteFieldSourceSpec.Domain)
    (state : ScalarReplacementState) :
    (inducedReducedByteFieldSourceImpl point).run state =
      (fun value => (value, state)) <$>
        inducedByteFieldSourceImpl point := by
  cases point with
  | inl ambientPoint =>
      change
        (StateT.lift
          (HasQuery.query
            (spec := unifSpec) (m := ProbComp)
            ambientPoint)).run state =
          (fun value => (value, state)) <$>
            HasQuery.query
              (spec := unifSpec) (m := ProbComp)
              ambientPoint
      simp only [StateT.run_lift, map_eq_bind_pure_comp,
        Function.comp_apply]
      rfl
  | inr bytes =>
      change
        (fun digest => (reduceFr digest, state)) <$>
            (($ᵗ DigestBytes) : ProbComp DigestBytes) =
          (fun value => (value, state)) <$>
            (reduceFr <$>
              (($ᵗ DigestBytes) : ProbComp DigestBytes))
      simp only [Functor.map_map, Function.comp_apply]

set_option maxRecDepth 100000 in
/-- The quantitative uniform handler is exactly the stateless uniform
byte-field handler after forgetting its proof-only state. -/
private theorem uniformByteFieldSourceImpl_run_eq
    (point : ByteFieldSourceSpec.Domain)
    (state : ScalarReplacementState) :
    (uniformByteFieldSourceImpl point).run state =
      (fun value => (value, state)) <$>
        uniformByteFieldProbCompImpl point := by
  cases point with
  | inl ambientPoint =>
      change
        (StateT.lift
          (HasQuery.query
            (spec := unifSpec) (m := ProbComp)
            ambientPoint)).run state =
          (fun value => (value, state)) <$>
            HasQuery.query
              (spec := unifSpec) (m := ProbComp)
              ambientPoint
      simp only [StateT.run_lift, map_eq_bind_pure_comp,
        Function.comp_apply]
      rfl
  | inr bytes =>
      rfl

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
    simulateQ_StateT_compose
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
    (hquery : ∀ point, 𝒟[left point] = 𝒟[right point])
    (program : OracleComp inner Output) :
    𝒟[simulateQ left program] =
      𝒟[simulateQ right program] := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      rfl
  | query_bind point continuation ih =>
      simp only [simulateQ_query_bind]
      rw [evalDist_bind, evalDist_bind]
      congr 1
      · exact hquery point
      · funext value
        exact ih value

/-- A fresh uniform scalar has the same query-local distribution whether it
is sampled directly, attached to an opaque byte key, or obtained from the
corresponding structured global-source query. -/
private theorem uniformByteFieldProbCompImpl_evalDist_eq_global
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (point : ByteFieldSourceSpec.Domain) :
    𝒟[uniformByteFieldProbCompImpl point] =
      𝒟[uniformScalarToGlobalFsImpl
        serialization reached point] := by
  cases point with
  | inl ambientPoint =>
      change
        𝒟[(unifSpec.query ambientPoint :
            OracleComp unifSpec (unifSpec.Range ambientPoint))] =
          𝒟[(GlobalFsSourceSpec.query (.inl ambientPoint) :
            OracleComp GlobalFsSourceSpec (unifSpec.Range ambientPoint))]
      rw [evalDist_query, evalDist_query]
      rfl
  | inr bytes =>
      cases hdecode :
          decodeReachedQuery?
            serialization reached bytes with
      | none =>
          rw [show
            uniformScalarToGlobalFsImpl serialization reached (.inr bytes) =
              (match decodeReachedQuery? serialization reached bytes with
                | none => sampleOpaqueGlobalFr
                | some reachedPoint =>
                    (GlobalFsSourceSpec).query (.inr reachedPoint.1)) from rfl,
            hdecode]
          change
            𝒟[(($ᵗ Fr) : ProbComp Fr)] =
              𝒟[sampleOpaqueGlobalFr]
          symm
          exact
            OracleComp.evalDist_liftComp
              (($ᵗ Fr) : ProbComp Fr)
      | some decoded =>
          rw [show
            uniformScalarToGlobalFsImpl serialization reached (.inr bytes) =
              (match decodeReachedQuery? serialization reached bytes with
                | none => sampleOpaqueGlobalFr
                | some reachedPoint =>
                    (GlobalFsSourceSpec).query (.inr reachedPoint.1)) from rfl,
            hdecode]
          change
            𝒟[(($ᵗ Fr) : ProbComp Fr)] =
              𝒟[(GlobalFsSourceSpec.query (.inr decoded.1) :
                OracleComp GlobalFsSourceSpec Fr)]
          rw [evalDist_uniformSample, evalDist_query]
          rfl

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
    (point : ByteFieldSourceSpec.Domain)
    (state : ScalarReplacementState)
    (output :
      ByteFieldSourceSpec.Range point × ScalarReplacementState)
    (houtput :
      output ∈ support
        ((inducedReducedByteFieldSourceImpl point).run state)) :
    output.2.2 = state.2 := by
  cases point with
  | inl ambientPoint =>
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
    (point : ByteFieldSourceSpec.Domain)
    (hpoint : IsByteFieldQuery point)
    (state : PUnit) :
    ENNReal.ofReal
        (tvDist
          ((inducedReducedByteFieldSourceImpl point).run
            (state, false))
          ((uniformByteFieldSourceImpl point).run
            (state, false))) ≤
      modReductionBias := by
  cases point with
  | inl _ =>
      simp [IsByteFieldQuery] at hpoint
  | inr bytes =>
      simpa [inducedReducedByteFieldSourceImpl,
        uniformByteFieldSourceImpl] using
        (reducedFreshOracleImpl_step_tvDist_le
          bytes state)

/-- An uncharged ambient step is identical in both scalar worlds. -/
theorem inducedReducedByteFieldSourceImpl_step_uncharged
    [SampleableType DigestBytes]
    (point : ByteFieldSourceSpec.Domain)
    (hpoint : ¬ IsByteFieldQuery point)
    (state : ScalarReplacementState) :
    (inducedReducedByteFieldSourceImpl point).run state =
      (uniformByteFieldSourceImpl point).run state := by
  cases point with
  | inl _ =>
      rfl
  | inr _ =>
      simp [IsByteFieldQuery] at hpoint

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
          (fun point state hstate result hresult => by
            change result.2.2 = false
            rw [inducedReducedByteFieldSourceImpl_preserves_bad
              point state result hresult]
            exact hstate)
          (fiberLiftedHybridOutput
            sha256 serialization reached program)
          (PUnit.unit, false) rfl
      exact hinv output houtput
    simp_all
  have hquantitative :=
    OracleComp.ProgramLogic.Relational.ofReal_tvDist_simulateQ_run_le_queryBound_mul_slack_plus_probEvent_bad
        (spec' := unifSpec)
        inducedReducedByteFieldSourceImpl
        uniformByteFieldSourceImpl
        modReductionBias
        IsByteFieldQuery
        (fun point hpoint state =>
          inducedReducedByteFieldSourceImpl_step_tvDist_le
            point hpoint state)
        (fun point hpoint state =>
          inducedReducedByteFieldSourceImpl_step_uncharged
            point hpoint state)
        (fun point state hbad output houtput => by
          rw [inducedReducedByteFieldSourceImpl_preserves_bad
            point state output houtput]
          exact hbad)
        (fiberLiftedHybridOutput
          sha256 serialization reached program)
        hbound (PUnit.unit, false)
  have hbadZero' :
      Pr[fun output : Output × ScalarReplacementState =>
          output.2.2 = true |
        (simulateQ inducedReducedByteFieldSourceImpl
          (fiberLiftedHybridOutput
            sha256 serialization reached program)).run
              (PUnit.unit, false)] = 0 := by
    simpa [fiberLiftedInducedReducedExperiment] using hbadZero
  rw [hbadZero', add_zero] at hquantitative
  simpa [fiberLiftedInducedReducedExperiment,
    fiberLiftedUniformScalarExperiment,
    modReductionBudget] using hquantitative

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
            rfl
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

/-! ## Coherent-cache miss shape -/

/-- Scalar projection of the internal coherent byte cache.  This is proof
state only: the production execution retains the complete coherent entries. -/
def coherentCacheToScalar
    (cache : CoherentByteCache) :
    ByteFieldOracleSpec.QueryCache :=
  Ipp.RandomOracleMap.mapCache
    (fun _ (entry : CoherentByteEntry) => entry.scalar)
    cache

@[simp] theorem coherentCacheToScalar_lookup
    (cache : CoherentByteCache)
    (bytes : List UInt8) :
    coherentCacheToScalar cache bytes =
      CoherentByteEntry.scalar <$> cache bytes := by
  rfl

theorem coherentCacheToScalar_cacheQuery
    (cache : CoherentByteCache)
    (bytes : List UInt8)
    (entry : CoherentByteEntry) :
    coherentCacheToScalar
        (cache.cacheQuery bytes entry) =
      (coherentCacheToScalar cache).cacheQuery
        bytes entry.scalar := by
  exact
    Ipp.RandomOracleMap.mapCache_cacheQuery
      (fun _ (candidate : CoherentByteEntry) => candidate.scalar)
      cache bytes entry

@[simp] theorem coherentCacheToScalar_empty :
    coherentCacheToScalar ∅ = ∅ := by
  apply OracleSpec.QueryCache.ext
  intro bytes
  rfl

/-- Cache update induced by one byte-field source query.  Ambient proof-side
sampling is deliberately not cached. -/
def nextByteFieldCache
    (cache : ByteFieldOracleSpec.QueryCache) :
    (point : ByteFieldSourceSpec.Domain) →
      ByteFieldSourceSpec.Range point →
        ByteFieldOracleSpec.QueryCache
  | .inl _, _ => cache
  | .inr bytes, answer => cache.cacheQuery bytes answer

/-- A byte-field source step is fresh exactly when its byte-keyed branch is
absent from the accumulated scalar projection of the coherent cache. -/
def ByteFieldQueryFresh
    (cache : ByteFieldOracleSpec.QueryCache) :
    ByteFieldSourceSpec.Domain → Prop
  | .inl _ => True
  | .inr bytes => cache bytes = none

/-- Structural trace of the source program emitted by the coherent cache.

The terminal equality is what permits sequential composition: every emitted
byte-field miss is accumulated in the scalar projection of the concrete
coherent cache returned by the stateful interpreter. -/
inductive CoherentByteMissTraceFrom {Output : Type} :
    ByteFieldOracleSpec.QueryCache →
      OracleComp ByteFieldSourceSpec
        (Output × CoherentByteCache) → Prop
  | pure
      (cache : ByteFieldOracleSpec.QueryCache)
      (output : Output)
      (coherentCache : CoherentByteCache)
      (cache_exact :
        cache = coherentCacheToScalar coherentCache) :
      CoherentByteMissTraceFrom cache
        (pure (output, coherentCache))
  | queryBind
      (cache : ByteFieldOracleSpec.QueryCache)
      (point : ByteFieldSourceSpec.Domain)
      (continuation :
        ByteFieldSourceSpec.Range point →
          OracleComp ByteFieldSourceSpec
            (Output × CoherentByteCache))
      (fresh : ByteFieldQueryFresh cache point)
      (continuation_fresh :
        ∀ answer,
          CoherentByteMissTraceFrom
            (nextByteFieldCache cache point answer)
            (continuation answer)) :
      CoherentByteMissTraceFrom cache
        ((ByteFieldSourceSpec).query point >>= continuation)

/-- Sequentially compose a coherent miss trace with a continuation that
starts from the scalar projection of the returned coherent cache. -/
private theorem CoherentByteMissTraceFrom.bind
    {First Output : Type}
    {cache : ByteFieldOracleSpec.QueryCache}
    {program :
      OracleComp ByteFieldSourceSpec
        (First × CoherentByteCache)}
    (hprogram : CoherentByteMissTraceFrom cache program)
    (continuation :
      First → CoherentByteCache →
        OracleComp ByteFieldSourceSpec
          (Output × CoherentByteCache))
    (hcontinuation :
      ∀ output coherentCache,
        CoherentByteMissTraceFrom
          (coherentCacheToScalar coherentCache)
          (continuation output coherentCache)) :
    CoherentByteMissTraceFrom cache
      (program >>= fun result =>
        continuation result.1 result.2) := by
  induction hprogram with
  | pure cache output coherentCache cache_exact =>
      rw [pure_bind, cache_exact]
      exact hcontinuation output coherentCache
  | queryBind cache point next fresh next_fresh ih =>
      rw [bind_assoc]
      exact
        CoherentByteMissTraceFrom.queryBind
          cache point _ fresh
          (fun answer => ih answer)

/-- Deterministic postprocessing of the output leaves the coherent miss trace
unchanged. -/
private theorem CoherentByteMissTraceFrom.mapOutput
    {First Output : Type}
    {cache : ByteFieldOracleSpec.QueryCache}
    {program :
      OracleComp ByteFieldSourceSpec
        (First × CoherentByteCache)}
    (hprogram : CoherentByteMissTraceFrom cache program)
    (process : First → Output) :
    CoherentByteMissTraceFrom cache
      ((fun result => (process result.1, result.2)) <$> program) := by
  induction hprogram with
  | pure cache output coherentCache cache_exact =>
      simpa only [map_pure] using
        CoherentByteMissTraceFrom.pure
          cache (process output) coherentCache cache_exact
  | queryBind cache point continuation fresh
      continuation_fresh ih =>
      rw [map_bind]
      exact
        CoherentByteMissTraceFrom.queryBind
          cache point _ fresh
          (fun answer => ih answer)

/-- A source computation with zero byte-field budget can be prepended to a
coherent miss trace without changing its accumulated byte cache. -/
private theorem coherentByteMissTrace_bind_of_queryBound_zero
    {First Output : Type}
    (cache : ByteFieldOracleSpec.QueryCache)
    (program : OracleComp ByteFieldSourceSpec First)
    (hzero :
      IsQueryBoundP program IsByteFieldQuery 0)
    (continuation :
      First → OracleComp ByteFieldSourceSpec
        (Output × CoherentByteCache))
    (hcontinuation :
      ∀ output,
        CoherentByteMissTraceFrom cache
          (continuation output)) :
    CoherentByteMissTraceFrom cache
      (program >>= continuation) := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      simpa only [pure_bind] using hcontinuation output
  | query_bind point next ih =>
      rw [OracleComp.isQueryBoundP_query_bind_iff] at hzero
      cases point with
      | inl ambient =>
          rw [bind_assoc]
          exact
            CoherentByteMissTraceFrom.queryBind
              cache (.inl ambient) _ trivial
              (fun answer =>
                ih answer
                  (by
                    simpa [IsByteFieldQuery] using
                      hzero.2 answer))
      | inr bytes =>
          have himpossible : False := by
            simpa [IsByteFieldQuery] using hzero.1
          exact himpossible.elim

set_option maxRecDepth 10000 in
/-- One coherent entry lookup emits no byte-field query on a hit and exactly
one fresh byte-field query on a miss.  Fiber sampling is ambient and the
terminal scalar cache is the projection of the updated coherent cache. -/
private theorem coherentEntryImpl_run_missTrace
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((coherentEntryImpl bytes).run cache) := by
  cases hcache : cache bytes with
  | some entry =>
      rw [coherentEntryImpl_run_some
        cache bytes entry hcache]
      exact
        CoherentByteMissTraceFrom.pure
          (coherentCacheToScalar cache)
          entry cache rfl
  | none =>
      rw [show coherentEntryImpl =
          QueryImpl.withCaching coherentEntryMiss from rfl]
      rw [QueryImpl.withCaching_run_none
        coherentEntryMiss hcache]
      simp only [coherentEntryMiss, byteFieldQuery,
        map_eq_bind_pure_comp, bind_assoc,
        Function.comp_apply, pure_bind]
      apply CoherentByteMissTraceFrom.queryBind
      · change coherentCacheToScalar cache bytes = none
        simp [hcache]
      · intro scalar
        apply coherentByteMissTrace_bind_of_queryBound_zero
          ((coherentCacheToScalar cache).cacheQuery
            bytes scalar)
          (sampleDigestFiber scalar)
          (sampleDigestFiber_byteFieldQueryBound_zero scalar)
        · intro digest
          apply CoherentByteMissTraceFrom.pure
          rw [coherentCacheToScalar_cacheQuery]

/-- Ambient sampling preserves the coherent cache and emits only an ambient
source query. -/
private theorem coherentAmbientImpl_run_missTrace
    (point : unifSpec.Domain)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((coherentAmbientImpl point).run cache) := by
  simp only [coherentAmbientImpl, StateT.run_monadLift,
    map_eq_bind_pure_comp, Function.comp_apply]
  exact
    CoherentByteMissTraceFrom.queryBind
      (coherentCacheToScalar cache)
      (.inl point) _ trivial
      (fun answer =>
        CoherentByteMissTraceFrom.pure
          (coherentCacheToScalar cache)
          answer cache rfl)

/-- Deterministic SHA execution preserves the coherent cache and emits no
byte-field source query. -/
private theorem coherentSha256Impl_run_missTrace
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (input : Ipp.ShippingV1.Bytes)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((coherentSha256Impl sha256 input).run cache) := by
  simp only [coherentSha256Impl, StateT.run_pure]
  exact
    CoherentByteMissTraceFrom.pure
      (coherentCacheToScalar cache)
      (sha256 input) cache rfl

private theorem coherentBlake2bImpl_run_missTrace
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((coherentBlake2bImpl bytes).run cache) := by
  simp only [coherentBlake2bImpl, StateT.run_map]
  exact
    (coherentEntryImpl_run_missTrace bytes cache).mapOutput
      CoherentByteEntry.digest

private theorem coherentScalarImpl_run_missTrace
    (bytes : List UInt8)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((coherentScalarImpl bytes).run cache) := by
  simp only [coherentScalarImpl, StateT.run_map]
  exact
    (coherentEntryImpl_run_missTrace bytes cache).mapOutput
      CoherentByteEntry.scalar

/-- Every hybrid source step preserves the miss trace, including arbitrary
raw prequeries.  A prequery that aliases a later typed query populates the
coherent cache here, so the later lookup is proved to be a hit. -/
private theorem coherentHybridImpl_run_missTrace
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (point : (HybridAdaptiveSourceSpec reached).Domain)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((coherentHybridImpl
        sha256 serialization reached point).run cache) := by
  cases point with
  | inl rawPoint =>
      rw [coherentHybridImpl_raw]
      cases rawPoint with
      | inl ambient =>
          exact coherentAmbientImpl_run_missTrace ambient cache
      | inr hashPoint =>
          cases hashPoint with
          | inl shaInput =>
              exact
                coherentSha256Impl_run_missTrace
                  sha256 shaInput cache
          | inr bytes =>
              exact coherentBlake2bImpl_run_missTrace bytes cache
  | inr typedPoint =>
      rw [coherentHybridImpl_typed]
      exact
        coherentScalarImpl_run_missTrace
          (reachedByteEncoding
            serialization reached typedPoint)
          cache

/-- Arbitrary adaptive hybrid programs inherit the coherent miss trace from
the production-used cache interpreter. -/
private theorem simulateQ_coherentHybridImpl_run_missTrace
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    (program :
      OracleComp (HybridAdaptiveSourceSpec reached) Output)
    (cache : CoherentByteCache) :
    CoherentByteMissTraceFrom
      (coherentCacheToScalar cache)
      ((simulateQ
        (coherentHybridImpl sha256 serialization reached)
        program).run cache) := by
  induction program using OracleComp.inductionOn
      generalizing cache with
  | pure output =>
      simp only [simulateQ_pure, StateT.run_pure]
      exact
        CoherentByteMissTraceFrom.pure
          (coherentCacheToScalar cache)
          output cache rfl
  | query_bind point continuation ih =>
      simp only [simulateQ_query_bind, StateT.run_bind]
      exact
        (coherentHybridImpl_run_missTrace
          sha256 serialization reached point cache).bind
            (fun answer nextCache =>
              (simulateQ
                (coherentHybridImpl
                  sha256 serialization reached)
                (continuation answer)).run nextCache)
            (fun answer nextCache => ih answer nextCache)

/-! ## Raw-to-cached global-source endpoint -/

/-- Cache after one source query. Ambient uniform queries are deliberately not
recorded; only the structured Fiat--Shamir component is cached by
`fsRandomFunction`. -/
def nextGlobalFsCache
    (cache : GlobalFieldOracleSpec.QueryCache) :
    (point : GlobalFsSourceSpec.Domain) →
      GlobalFsSourceSpec.Range point →
        GlobalFieldOracleSpec.QueryCache
  | .inl _, _ => cache
  | .inr structuredPoint, answer =>
      cache.cacheQuery structuredPoint answer

/-- The next source query is fresh for the structured cache. Ambient uniform
queries are forwarded independently and therefore impose no cache condition. -/
def GlobalFsQueryFresh
    (cache : GlobalFieldOracleSpec.QueryCache) :
    GlobalFsSourceSpec.Domain → Prop
  | .inl _ => True
  | .inr structuredPoint => cache structuredPoint = none

/-- Structural no-repeat contract for the global Fiat--Shamir source.

Every structured query must be absent from the cache accumulated along every
possible prior-answer path. This is strictly a query-shape invariant: it does
not mention distributions, acceptance, or equality with the cached game. -/
inductive NoRepeatedGlobalFsQueriesFrom {Output : Type} :
    GlobalFieldOracleSpec.QueryCache →
      OracleComp GlobalFsSourceSpec Output → Prop
  | pure (cache : GlobalFieldOracleSpec.QueryCache) (output : Output) :
      NoRepeatedGlobalFsQueriesFrom cache (pure output)
  | queryBind
      (cache : GlobalFieldOracleSpec.QueryCache)
      (point : GlobalFsSourceSpec.Domain)
      (continuation :
        GlobalFsSourceSpec.Range point →
          OracleComp GlobalFsSourceSpec Output)
      (fresh : GlobalFsQueryFresh cache point)
      (continuation_fresh :
        ∀ answer,
          NoRepeatedGlobalFsQueriesFrom
            (nextGlobalFsCache cache point answer)
            (continuation answer)) :
      NoRepeatedGlobalFsQueriesFrom cache
        ((GlobalFsSourceSpec).query point >>= continuation)

/-- Empty-cache specialization used by a complete multi-statement game. -/
def NoRepeatedGlobalFsQueries {Output : Type}
    (program : OracleComp GlobalFsSourceSpec Output) : Prop :=
  NoRepeatedGlobalFsQueriesFrom ∅ program

/-- Deterministic output projection preserves the global no-repeat trace. -/
private theorem NoRepeatedGlobalFsQueriesFrom.map
    {First Output : Type}
    {cache : GlobalFieldOracleSpec.QueryCache}
    {program : OracleComp GlobalFsSourceSpec First}
    (hprogram :
      NoRepeatedGlobalFsQueriesFrom cache program)
    (process : First → Output) :
    NoRepeatedGlobalFsQueriesFrom cache
      (process <$> program) := by
  induction hprogram with
  | pure cache output =>
      simpa only [map_pure] using
        NoRepeatedGlobalFsQueriesFrom.pure
          cache (process output)
  | queryBind cache point continuation fresh
      continuation_fresh ih =>
      rw [map_bind]
      exact
        NoRepeatedGlobalFsQueriesFrom.queryBind
          cache point _ fresh
          (fun answer => ih answer)

/-- A computation with zero structured-query budget can be prepended without
changing the accumulated global Fiat--Shamir cache. -/
private theorem noRepeatedGlobalFs_bind_of_queryBound_zero
    {First Output : Type}
    (cache : GlobalFieldOracleSpec.QueryCache)
    (program : OracleComp GlobalFsSourceSpec First)
    (hzero :
      IsQueryBoundP program IsGlobalFieldQuery 0)
    (continuation :
      First → OracleComp GlobalFsSourceSpec Output)
    (hcontinuation :
      ∀ output,
        NoRepeatedGlobalFsQueriesFrom cache
          (continuation output)) :
    NoRepeatedGlobalFsQueriesFrom cache
      (program >>= continuation) := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      simpa only [pure_bind] using hcontinuation output
  | query_bind point next ih =>
      rw [OracleComp.isQueryBoundP_query_bind_iff] at hzero
      cases point with
      | inl ambient =>
          rw [bind_assoc]
          exact
            NoRepeatedGlobalFsQueriesFrom.queryBind
              cache (.inl ambient) _ trivial
              (fun answer =>
                ih answer
                  (by
                    simpa [IsGlobalFieldQuery] using
                      hzero.2 answer))
      | inr structuredPoint =>
          have himpossible : False := by
            simpa [IsGlobalFieldQuery] using hzero.1
          exact himpossible.elim

/-- On a fresh structured query, the shared-cache handler takes its miss branch
and forwards exactly the same source query while extending the cache. -/
private theorem fsSourceOracle_run_eq_of_globalFresh
    (cache : GlobalFieldOracleSpec.QueryCache)
    (point : GlobalFsSourceSpec.Domain)
    (fresh : GlobalFsQueryFresh cache point) :
    (((Ipp.fsSourceOracle GlobalFsQuery Fr) point).run cache) =
      (fun answer =>
        (answer, nextGlobalFsCache cache point answer)) <$>
        ((GlobalFsSourceSpec).query point) := by
  cases point with
  | inl ambient =>
      simp [Ipp.fsSourceOracle, Ipp.fsSourceUnifFwd,
        QueryImpl.add_apply_inl, nextGlobalFsCache,
        StateT.run_monadLift]
  | inr structuredPoint =>
      change cache structuredPoint = none at fresh
      change
        (QueryImpl.withCaching
          (Ipp.fsSourceImpl GlobalFsQuery Fr)
            structuredPoint).run cache =
        _
      rw [QueryImpl.withCaching_run_none _ fresh]
      simp [Ipp.fsSourceImpl, nextGlobalFsCache]

/-- Structural decomposition of the cached source interpreter at one query. -/
private theorem fsSourceOracle_run'_query_bind
    {Output : Type}
    (cache : GlobalFieldOracleSpec.QueryCache)
    (point : GlobalFsSourceSpec.Domain)
    (continuation :
      GlobalFsSourceSpec.Range point →
        OracleComp GlobalFsSourceSpec Output) :
    (simulateQ (Ipp.fsSourceOracle GlobalFsQuery Fr)
        ((GlobalFsSourceSpec).query point >>= continuation)).run' cache =
      (((Ipp.fsSourceOracle GlobalFsQuery Fr) point).run cache) >>= fun result =>
        (simulateQ (Ipp.fsSourceOracle GlobalFsQuery Fr)
          (continuation result.1)).run' result.2 := by
  rw [simulateQ_query_bind, StateT.run'_eq, StateT.run_bind, map_bind]
  rfl

/-- If every structured query is fresh along every answer path, installing the
lazy structured cache preserves the exact output computation. -/
private theorem fsSourceOracle_run'_eq_self_of_noRepeated
    {Output : Type}
    {cache : GlobalFieldOracleSpec.QueryCache}
    {program : OracleComp GlobalFsSourceSpec Output}
    (h : NoRepeatedGlobalFsQueriesFrom cache program) :
    (simulateQ (Ipp.fsSourceOracle GlobalFsQuery Fr) program).run' cache =
      program := by
  induction h with
  | pure cache output =>
      simp [StateT.run'_eq]
  | queryBind cache point continuation fresh continuation_fresh ih =>
      rw [fsSourceOracle_run'_query_bind]
      rw [fsSourceOracle_run_eq_of_globalFresh cache point fresh]
      change
        (((fun answer =>
            (answer, nextGlobalFsCache cache point answer)) <$>
          (liftM (GlobalFsSourceSpec.query point) :
            OracleComp GlobalFsSourceSpec _)) >>= _) =
          ((liftM (GlobalFsSourceSpec.query point) :
            OracleComp GlobalFsSourceSpec _) >>= continuation)
      rw [bind_map_left]
      simp only [Function.comp_apply]
      apply bind_congr
      intro answer
      exact ih answer

/-- A structurally no-repeat global program is unchanged by the lazy
random-function wrapper. This theorem is not available for arbitrary programs:
on a repeated structured query the raw and cached semantics differ. -/
theorem fsRandomFunction_eq_self_of_noRepeatedGlobalFsQueries
    {Output : Type}
    (program : OracleComp GlobalFsSourceSpec Output)
    (h : NoRepeatedGlobalFsQueries program) :
    Ipp.fsRandomFunction program = program := by
  simpa [Ipp.fsRandomFunction, StateT.run'_eq] using
    (fsSourceOracle_run'_eq_self_of_noRepeated h)

/-- Output-marginal equality between a structurally no-repeat raw global game
and the cached, wrapped, logged experiment consumed by the fork proof. Trace
and log fields are projected away; no raw-equals-cached premise is assumed. -/
theorem multiStatementFsProbComp_output_event_eq_of_noRepeatedGlobalFsQueries
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (predicate : PackedOutcome Call → Prop)
    [DecidablePred predicate]
    (h : NoRepeatedGlobalFsQueries game) :
    Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp game] =
      Pr[predicate | game] := by
  have hwrap :
      Pr[fun sourceRun => predicate sourceRun.1 |
          replayFirstRun (Ipp.fsRandomFunction game)] =
        Pr[fun run => predicate run.1.out |
          multiStatementFsProbComp game] := by
    simpa [multiStatementFsProbComp, multiStatementForkMain] using
      (Ipp.probEvent_wrapFs_eq
        (F := Fr) game
        (fun run => predicate run.1.out))
  calc
    Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp game] =
      Pr[fun sourceRun => predicate sourceRun.1 |
        replayFirstRun (Ipp.fsRandomFunction game)] :=
          hwrap.symm
    _ = Pr[predicate | Ipp.fsRandomFunction game] :=
      probEvent_fst_replayFirstRun
        (Ipp.fsRandomFunction game) predicate
    _ = Pr[predicate | game] := by
      rw [fsRandomFunction_eq_self_of_noRepeatedGlobalFsQueries
        game h]

/-! ## Reindexing coherent byte misses to fresh structured queries -/

/-- Every cached structured answer is backed by the exact coherent byte cell
whose canonical partial decode returns that structured query.  The decode
fixed-point conjunct is essential when the unrestricted serialization has
aliases: only the deterministic representative selected by the decoder may
enter the structured cache. -/
def GlobalCacheBackedByByteCache
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    (globalCache : GlobalFieldOracleSpec.QueryCache)
    (byteCache : ByteFieldOracleSpec.QueryCache) :
    Prop :=
  ∀ point value,
    globalCache point = some value →
      ∃ membership : point ∈ reached,
        decodeReachedQuery? serialization reached
            (serialization.byteEncoding point) =
          some
            (⟨point, membership⟩ :
              ReachedGlobalFsQuery reached) ∧
        byteCache
            (serialization.byteEncoding point) =
          some value

theorem globalCacheBackedByByteCache_empty
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) :
    GlobalCacheBackedByByteCache
      serialization reached ∅ ∅ := by
  intro point value hcache
  simp at hcache

/-- Extending the byte cache at a fresh key preserves every existing
structured-cache backing entry. -/
private theorem GlobalCacheBackedByByteCache.cacheByte
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {globalCache : GlobalFieldOracleSpec.QueryCache}
    {byteCache : ByteFieldOracleSpec.QueryCache}
    (hbacked :
      GlobalCacheBackedByByteCache
        serialization reached globalCache byteCache)
    (bytes : List UInt8)
    (answer : Fr)
    (hfresh : byteCache bytes = none) :
    GlobalCacheBackedByByteCache
      serialization reached globalCache
      (byteCache.cacheQuery bytes answer) := by
  intro point value hglobal
  obtain ⟨membership, hdecode, hbyte⟩ :=
    hbacked point value hglobal
  refine ⟨membership, hdecode, ?_⟩
  have hne :
      serialization.byteEncoding point ≠ bytes := by
    intro heq
    have hcached : byteCache bytes = some value := by
      rw [heq] at hbyte
      exact hbyte
    rw [hfresh] at hcached
    cases hcached
  simpa [QueryCache.cacheQuery_of_ne, hne] using hbyte

/-- A decoded byte miss identifies a structured query absent from the global
cache backed by prior coherent misses. -/
private theorem globalFsQueryFresh_of_byteFresh
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {globalCache : GlobalFieldOracleSpec.QueryCache}
    {byteCache : ByteFieldOracleSpec.QueryCache}
    (hbacked :
      GlobalCacheBackedByByteCache
        serialization reached globalCache byteCache)
    (bytes : List UInt8)
    (reachedPoint : ReachedGlobalFsQuery reached)
    (hdecode :
      decodeReachedQuery? serialization reached bytes =
        some reachedPoint)
    (hfresh : byteCache bytes = none) :
    GlobalFsQueryFresh globalCache (.inr reachedPoint.1) := by
  change globalCache reachedPoint.1 = none
  cases hcached : globalCache reachedPoint.1 with
  | none =>
      rfl
  | some value =>
      obtain ⟨membership, _hcanonical, hbyte⟩ :=
        hbacked reachedPoint.1 value hcached
      have hencoding :
          serialization.byteEncoding reachedPoint.1 = bytes := by
        simpa [reachedByteEncoding] using
          (decodeReachedQuery?_eq_some_byteEncoding
            serialization reached hdecode)
      have himpossible :
          byteCache bytes = some value := by
        rw [hencoding] at hbyte
        exact hbyte
      rw [hfresh] at himpossible
      cases himpossible

/-- Updating both caches after a decoded byte miss preserves exact backing,
including the decoder fixed point for the newly inserted structured query. -/
private theorem GlobalCacheBackedByByteCache.cacheDecoded
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {globalCache : GlobalFieldOracleSpec.QueryCache}
    {byteCache : ByteFieldOracleSpec.QueryCache}
    (hbacked :
      GlobalCacheBackedByByteCache
        serialization reached globalCache byteCache)
    (bytes : List UInt8)
    (reachedPoint : ReachedGlobalFsQuery reached)
    (answer : Fr)
    (hdecode :
      decodeReachedQuery? serialization reached bytes =
        some reachedPoint)
    (hfresh : byteCache bytes = none) :
    GlobalCacheBackedByByteCache
      serialization reached
      (globalCache.cacheQuery reachedPoint.1 answer)
      (byteCache.cacheQuery bytes answer) := by
  intro other value hglobal
  have hqueryEncoding :
      serialization.byteEncoding reachedPoint.1 = bytes := by
    simpa [reachedByteEncoding] using
      (decodeReachedQuery?_eq_some_byteEncoding
        serialization reached hdecode)
  by_cases hsame : other = reachedPoint.1
  · subst other
    have hvalue : answer = value := by
      have hsome : some answer = some value := by
        simpa using hglobal
      exact Option.some.inj hsome
    subst value
    refine ⟨reachedPoint.2, ?_, ?_⟩
    · simpa [hqueryEncoding] using hdecode
    · rw [hqueryEncoding]
      exact QueryCache.cacheQuery_self
        byteCache bytes answer
  · have holdGlobal :
        globalCache other = some value := by
      simpa [QueryCache.cacheQuery_of_ne, hsame] using hglobal
    obtain ⟨membership, hcanonical, hbyte⟩ :=
      hbacked other value holdGlobal
    refine ⟨membership, hcanonical, ?_⟩
    have hencodingNe :
        serialization.byteEncoding other ≠ bytes := by
      intro hencoding
      have hsome :
          some
              (⟨other, membership⟩ :
                ReachedGlobalFsQuery reached) =
            some reachedPoint := by
        calc
          some
              (⟨other, membership⟩ :
                ReachedGlobalFsQuery reached) =
              decodeReachedQuery? serialization reached
                (serialization.byteEncoding other) :=
            hcanonical.symm
          _ =
              decodeReachedQuery? serialization reached bytes := by
            rw [hencoding]
          _ = some reachedPoint := hdecode
      have hsubtype :
          (⟨other, membership⟩ :
              ReachedGlobalFsQuery reached) =
            reachedPoint :=
        Option.some.inj hsome
      exact hsame (congrArg Subtype.val hsubtype)
    simpa [QueryCache.cacheQuery_of_ne, hencodingNe] using
      hbyte

set_option maxRecDepth 100000 in
/-- Reindexing the source emitted by the coherent cache preserves structural
freshness of every global Fiat--Shamir query.  Opaque byte misses become
ambient samples; decoded misses update the byte and global caches together. -/
private theorem
    noRepeatedGlobalFsQueriesFrom_of_coherentByteMissTrace
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery)
    {Output : Type}
    {byteCache : ByteFieldOracleSpec.QueryCache}
    {globalCache : GlobalFieldOracleSpec.QueryCache}
    {program :
      OracleComp ByteFieldSourceSpec
        (Output × CoherentByteCache)}
    (hbacked :
      GlobalCacheBackedByByteCache
        serialization reached globalCache byteCache)
    (htrace :
      CoherentByteMissTraceFrom byteCache program) :
    NoRepeatedGlobalFsQueriesFrom globalCache
      (simulateQ
        (uniformScalarToGlobalFsImpl serialization reached)
        program) := by
  induction htrace generalizing globalCache with
  | pure byteCache output coherentCache cache_exact =>
      simp only [simulateQ_pure]
      exact
        NoRepeatedGlobalFsQueriesFrom.pure
          globalCache (output, coherentCache)
  | queryBind byteCache point continuation fresh
      continuation_fresh ih =>
      simp only [simulateQ_bind, simulateQ_spec_query]
      cases point with
      | inl ambient =>
          simp only [uniformScalarToGlobalFsImpl,
            QueryImpl.add_apply_inl, globalFsUnifFwd]
          exact
            NoRepeatedGlobalFsQueriesFrom.queryBind
              globalCache (.inl ambient) _ trivial
              (fun answer =>
                ih answer hbacked)
      | inr bytes =>
          cases hdecode :
              decodeReachedQuery?
                serialization reached bytes with
          | none =>
              rw [show
                uniformScalarToGlobalFsImpl serialization reached
                    (.inr bytes) =
                  (match decodeReachedQuery?
                      serialization reached bytes with
                    | none => sampleOpaqueGlobalFr
                    | some reachedPoint =>
                        (GlobalFsSourceSpec).query
                          (.inr reachedPoint.1)) from rfl,
                hdecode]
              apply noRepeatedGlobalFs_bind_of_queryBound_zero
                globalCache sampleOpaqueGlobalFr
                sampleOpaqueGlobalFr_queryBound_zero
              intro answer
              exact
                ih answer
                  (GlobalCacheBackedByByteCache.cacheByte
                    serialization reached hbacked
                    bytes answer fresh)
          | some reachedPoint =>
              rw [show
                uniformScalarToGlobalFsImpl serialization reached
                    (.inr bytes) =
                  (match decodeReachedQuery?
                      serialization reached bytes with
                    | none => sampleOpaqueGlobalFr
                    | some reachedPoint =>
                        (GlobalFsSourceSpec).query
                          (.inr reachedPoint.1)) from rfl,
                hdecode]
              apply NoRepeatedGlobalFsQueriesFrom.queryBind
              · exact
                  globalFsQueryFresh_of_byteFresh
                    serialization reached hbacked
                    bytes reachedPoint hdecode fresh
              · intro answer
                exact
                  ih answer
                    (GlobalCacheBackedByByteCache.cacheDecoded
                      serialization reached hbacked
                      bytes reachedPoint answer hdecode fresh)

namespace OriginByteReindexing

/-- Exact cache-shape property at the internal source boundary.

This predicate is imposed only after `coherentEntryImpl` has interpreted the
whole hybrid program from one empty byte cache. It does not restrict the
external adversary: an adversarial prequery of a future verifier point is
allowed, and must make the verifier's later byte lookup a cache hit. The
obligation says only that such a hit does not emit a second structured query
when the already-cached byte-miss program is reindexed. -/
def CoherentByteMissesEmitNoRepeatedGlobalFsQueries
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
        sha256 blake2b adversary Q_sha Q_fs budgets) : Prop :=
  NoRepeatedGlobalFsQueries
    (fiberLiftedGlobalFsProgram
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram)

/-- The coherent byte cache discharges its own internal miss-shape property.

The proof covers the complete adaptive hybrid program.  In particular, an
arbitrary adversarial prequery is executed before selection, populates the
shared byte cache, and makes an aliased verifier lookup a hit rather than a
second global Fiat--Shamir query. -/
theorem coherentByteMissesEmitNoRepeatedGlobalFsQueries
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
    CoherentByteMissesEmitNoRepeatedGlobalFsQueries
      boundary := by
  unfold CoherentByteMissesEmitNoRepeatedGlobalFsQueries
    NoRepeatedGlobalFsQueries
    fiberLiftedGlobalFsProgram fiberLiftedHybridOutput
  rw [StateT.run'_eq, simulateQ_map]
  apply NoRepeatedGlobalFsQueriesFrom.map
  have htrace :=
    simulateQ_coherentHybridImpl_run_missTrace
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram (∅ : CoherentByteCache)
  have hbacked :
      GlobalCacheBackedByByteCache
        boundary.serialization boundary.reached
        (∅ : GlobalFieldOracleSpec.QueryCache)
        (coherentCacheToScalar (∅ : CoherentByteCache)) := by
    simpa using
      globalCacheBackedByByteCache_empty
        boundary.serialization boundary.reached
  exact
    noRepeatedGlobalFsQueriesFrom_of_coherentByteMissTrace
      boundary.serialization boundary.reached
      hbacked htrace

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
      (Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedGlobalFsProgram
          sha256 boundary.serialization boundary.reached
          boundary.hybridProgram)
      IsGlobalFieldQuery Q_fs :=
  Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedGlobalFsProgram_queryBound
      sha256 boundary.serialization boundary.reached
      boundary.hybridProgram Q_fs
      (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing.fiberLiftedHybridOutput_queryBound
        boundary)

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
        Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedInducedReducedExperiment
            sha256 boundary.serialization boundary.reached
            boundary.hybridProgram] ≤
      Pr[fun output => predicate output.1 |
          Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedUniformScalarExperiment
              sha256 boundary.serialization boundary.reached
              boundary.hybridProgram] +
        modReductionBudget Q_fs := by
  exact
    Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedInducedReduced_event_le_uniformScalar_add_modReduction
        predicate sha256 boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
        (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing.fiberLiftedHybridOutput_queryBound
          boundary)

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
    Ipp.ShippingAdaptiveGlobalFsCoupling.inducedFiberLifted_event_le_globalFs_add_modReduction
        predicate sha256 boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
        (Ipp.ShippingAdaptiveByteFieldCoupling.OriginByteReindexing.fiberLiftedHybridOutput_queryBound
          boundary)

end OriginByteReindexing

#print axioms OriginByteReindexing.projectedOriginIdealByte_evalDist_eq_inducedFiberLifted
#print axioms uniformScalarToGlobalFsImpl_reached
#print axioms fiberLiftedGlobalFsProgram_queryBound
#print axioms fiberLiftedInducedReduced_uniformScalar_tvDist_le
#print axioms fiberLiftedInducedReduced_event_le_uniformScalar_add_modReduction
#print axioms sharedGlobalFsProgram_eq_multiStatementFsGame
#print axioms fsRandomFunction_eq_self_of_noRepeatedGlobalFsQueries
#print axioms multiStatementFsProbComp_output_event_eq_of_noRepeatedGlobalFsQueries
#print axioms OriginByteReindexing.coherentByteMissesEmitNoRepeatedGlobalFsQueries
#print axioms OriginByteReindexing.fiberLiftedGlobalFsProgram_queryBound
#print axioms OriginByteReindexing.inducedReduced_event_le_uniformScalar_add_modReduction

end

end Ipp.ShippingAdaptiveGlobalFsCoupling
