import Ipp.ShippingBundleCachedComposition

/-!
Production bundle construction at the byte-to-global-FS boundary.

The extraction boundary represents the async planner and concurrent verifier
bundle by exact output-distribution equations rather than one raw byte-oracle
program. This module isolates those equations and then
constructs the generic byte reindexing and the raw canonical projected
global-FS shape without assuming an acceptance probability or a soundness
inequality.  The concurrency boundary is an output-distribution equation
against the cached canonical program, never a raw trace equality. The manifest
records the corresponding Tokio and immutable-result transport assumptions.
-/

namespace Ipp.Extracted.ShippingBundleProgramConstruction

open OracleSpec OracleComp
open Ipp.ShippingMultiStatement
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.Extracted.ShippingBundleAdaptiveComposition
open Ipp.Extracted.ShippingProductionKeyFunctionality
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleGlobalFsComposition
open Ipp.ShippingBundleCachedComposition
open Ipp.ShippingAdaptiveReindex
open Ipp.Bls12377

noncomputable section

local instance bundleProgramBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance bundleProgramScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance bundleProgramFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance bundleProgramFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance bundleProgramGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance bundleProgramFsWrappedUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- Output origin required by the adaptive proof.

Rejected values, including the fail-closed fallback, need no production
origin.  An accepting value must retain a selection from some complete
output-derived production bundle. -/
def AcceptedOutputDerivedOrigin
    {ι : Type}
    {spec : OracleSpec ι}
    (program :
      OracleComp spec
        (PackedOutcome CallId)) : Prop :=
  ∀ output,
    output ∈ support program →
      output.accept = true →
        OutputDerivedSelectionAt
          output.1 output.2.selection

/-- Interpreting an oracle program can only select outputs which were
reachable in the uninterpreted source program. -/
private theorem support_simulateQ_subset
    {ι κ α : Type}
    {source : OracleSpec ι}
    {target : OracleSpec κ}
    (impl : QueryImpl source (OracleComp target))
    (program : OracleComp source α) :
    support (simulateQ impl program) ⊆
      support program := by
  induction program using OracleComp.inductionOn with
  | pure output =>
      simp
  | query_bind query continuation ih =>
      intro output emitted
      rw [simulateQ_query_bind, support_bind] at emitted
      simp only [Set.mem_iUnion] at emitted
      obtain
        ⟨answer, _answerEmitted, continuationEmitted⟩ :=
          emitted
      rw [support_bind]
      simp only [Set.mem_iUnion]
      exact
        ⟨answer, mem_support_query query answer,
          ih answer continuationEmitted⟩

/-- A right-side member of a `Forall₂` relation has one exact related
left-side member. -/
private theorem forall₂_exists_related_left
    {α β : Type}
    {relation : α → β → Prop}
    {left : List α}
    {right : List β}
    (related : List.Forall₂ relation left right)
    {value : β}
    (member : value ∈ right) :
    ∃ input ∈ left, relation input value := by
  induction related with
  | nil =>
      simp at member
  | @cons leftHead rightHead leftTail rightTail headRelated tailRelated ih =>
      rcases List.mem_cons.1 member with headExact | tailMember
      · subst value
        exact
          ⟨leftHead, List.mem_cons_self, headRelated⟩
      · rcases ih tailMember with
          ⟨input, inputMember, inputRelated⟩
        exact
          ⟨input, List.mem_cons_of_mem leftHead inputMember,
            inputRelated⟩

/-- The existing exact shared-cache run equation supplies production origin
for an accepting formal output.  The accepted hypothesis is intentionally
the only branch exposed to later adaptive reasoning. -/
theorem SharedCacheBundleExecutionEquation.acceptedOutputDerived
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    (equation :
      SharedCacheBundleExecutionEquation bundle adversary)
    {output : PackedOutcome CallId}
    (member : output ∈ equation.outputs)
    (_accepted : output.accept = true) :
    OutputDerivedSelectionAt
      output.1 output.2.selection := by
  have relatedOutputs :
      List.Forall₂ RecordedPackedCall.Matches
        bundle.recordedCalls equation.outputs :=
    equation.orderedExact
  rcases
      forall₂_exists_related_left relatedOutputs member with
    ⟨recorded, recordedMember, outputExact⟩
  have recordedSelectionMember :
      recorded.selection ∈ bundle.selections := by
    rw [← bundle.recordedCalls_selections]
    exact
      List.mem_map.2
        ⟨recorded, recordedMember, rfl⟩
  refine
    ⟨declared, expected, results, bundle, ?_⟩
  unfold BundleOutputDerivedSelectionAt
  change output.selection ∈ bundle.selections
  rw [outputExact.1]
  exact recordedSelectionMember

/-- One exact shared-cache run also places its selected least-invalid output
inside the canonical fail-closed projected program.  This is a support
identity, not a probability comparison. -/
theorem SharedCacheBundleExecutionEquation.leastInvalidOutput_mem_projected
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    (equation :
      SharedCacheBundleExecutionEquation bundle adversary)
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    (fallbackSelection : PackedSelection CallId)
    {output : PackedOutcome CallId}
    (least :
      leastInvalidOutcome? invalid equation.outputs =
        some output) :
    output ∈
      support
        (projectedLeastInvalidBundleFsGame
          adversary invalid
            (rejectedPackedOutcome fallbackSelection)) := by
  rw [projectedLeastInvalidBundleFsGame,
    mem_support_bind_iff]
  refine
    ⟨equation.outputs, equation.toContract.globalFsRun, ?_⟩
  simp [least]

/-- Support membership and accepted-only production origin for the same
least-invalid output of an exact shared-cache run. -/
theorem SharedCacheBundleExecutionEquation.acceptedLeastInvalidOutput
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    (equation :
      SharedCacheBundleExecutionEquation bundle adversary)
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    (fallbackSelection : PackedSelection CallId)
    {output : PackedOutcome CallId}
    (least :
      leastInvalidOutcome? invalid equation.outputs =
        some output)
    (accepted : output.accept = true) :
    output ∈
        support
          (projectedLeastInvalidBundleFsGame
            adversary invalid
              (rejectedPackedOutcome fallbackSelection)) ∧
      OutputDerivedSelectionAt
        output.1 output.2.selection :=
  ⟨SharedCacheBundleExecutionEquation.leastInvalidOutput_mem_projected
      equation invalid fallbackSelection least,
    SharedCacheBundleExecutionEquation.acceptedOutputDerived
      equation (leastInvalidOutcome?_mem invalid least) accepted⟩

/-- Two verifier logs are cache-equivalent under one fixed answer function
when they contain the same query/answer entries up to permutation and every
entry carries that function's answer.

The permutation may change cross-call order.  Per-call order is retained
separately by the exact local traces in
`AcceptedConcurrentBundleSerialization`. -/
def SharedAnswerCacheEquivalent
    (answer : QueryImpl GlobalFsSourceSpec Id)
    (left right : QueryLog GlobalFsSourceSpec) : Prop :=
  List.Perm left right ∧
    (∀ entry ∈ left,
      entry.2 = answer entry.1) ∧
    (∀ entry ∈ right,
      entry.2 = answer entry.1)

/-- Accepted-run serialization boundary for the current `spawn_blocking`
outer caller.

The planner completes first.  Every local verifier run retains its exact
chronological trace and output under one shared answer function.  The
scheduler log is cache-equivalent to the planner trace followed by a
permutation of the local traces.  Outcomes remain in planner order because
the caller consumes the join handles in that order.

This record is required only for an accepted output.  Error, rejection, and
panic branches use the separate fail-closed outer equation and need no
complete scheduler trace.

This is complementary to
`ShippingBundleCachedComposition.AcceptedConcurrentSemanticProjection`.
That record erases Tokio profiles, timings, debug data, and completion order
to planner-ordered production observations.  This record starts at the next
boundary: it identifies those retained observations with exact formal oracle
executions under one answer function.  Keeping the two records separate
prevents Tokio postconditions from being mistaken for cryptographic cache
semantics. -/
structure AcceptedConcurrentBundleSerialization
    (preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId)))
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    (answer : QueryImpl GlobalFsSourceSpec Id)
    (runtimeOutput : PackedOutcome CallId) : Type where
  selections : List (PackedSelection CallId)
  plannerLog : QueryLog GlobalFsSourceSpec
  plannerOutputExact :
    evalWithAnswerFn answer preselection =
      selections
  plannerTraceExact :
    evalWithAnswerFn answer preselection.withQueryLog =
      (selections, plannerLog)
  perCallRuns :
    List
      (PackedOutcome CallId ×
        QueryLog GlobalFsSourceSpec)
  perCallExact :
    List.Forall₂
      (fun selection run =>
        evalWithAnswerFn answer
            (verifyPackedSelection selection) =
          run.1 ∧
        evalWithAnswerFn answer
            (verifyPackedSelection selection).withQueryLog =
          run)
      selections perCallRuns
  schedulerLog : QueryLog GlobalFsSourceSpec
  schedulerCacheEquivalent :
    SharedAnswerCacheEquivalent answer schedulerLog
      (plannerLog ++
        (perCallRuns.map Prod.snd).flatten)
  leastExact :
    leastInvalidOutcome? invalid
        (perCallRuns.map Prod.fst) =
      some runtimeOutput
  accepted : runtimeOutput.accept = true
  outputOrigin :
    OutputDerivedSelectionAt
      runtimeOutput.1 runtimeOutput.2.selection

/-- Evaluating the canonical sequential verifier list under one answer
function returns the plan-ordered outputs retained by an accepted concurrent
run. -/
private theorem evalWithAnswerFn_verifyPackedBundle_of_forall₂
    (answer : QueryImpl GlobalFsSourceSpec Id)
    {selections : List (PackedSelection CallId)}
    {runs :
      List
        (PackedOutcome CallId ×
          QueryLog GlobalFsSourceSpec)}
    (exactRuns :
      List.Forall₂
        (fun selection run =>
          evalWithAnswerFn answer
              (verifyPackedSelection selection) =
            run.1 ∧
          evalWithAnswerFn answer
              (verifyPackedSelection selection).withQueryLog =
            run)
        selections runs) :
    evalWithAnswerFn answer
        (verifyPackedBundle selections) =
      runs.map Prod.fst := by
  induction exactRuns with
  | nil =>
      rfl
  | cons headExact _tailExact ih =>
      unfold verifyPackedBundle
      rw [evalWithAnswerFn_bind, headExact.1,
        evalWithAnswerFn_bind, ih]
      rfl

/-- Accepted concurrent execution has exactly the canonical sequential,
least-invalid, fail-closed output under the same shared answer function.

The proof uses only planner order and per-call output equations.  The
permutation/cache field is retained for the separate query-budget and
random-function coupling; no scheduling fact is smuggled into this output
identity. -/
theorem AcceptedConcurrentBundleSerialization.canonicalOutputExact
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    (serialization :
      AcceptedConcurrentBundleSerialization
        preselection invalid answer runtimeOutput)
    (fallbackSelection : PackedSelection CallId) :
    evalWithAnswerFn answer
        (projectedLeastInvalidBundleFsGame
          preselection invalid
            (rejectedPackedOutcome fallbackSelection)) =
      runtimeOutput := by
  rw [projectedLeastInvalidBundleFsGame_programShape,
    evalWithAnswerFn_bind,
    serialization.plannerOutputExact,
    evalWithAnswerFn_bind,
    evalWithAnswerFn_verifyPackedBundle_of_forall₂
      answer serialization.perCallExact,
    evalWithAnswerFn_pure]
  simp [serialization.leastExact]

/-- Exact production obligations still absent from the extracted async bundle
graph.

`raw_exact` identifies the canonical annotated byte program.  The cached
global program has the same output distribution as the random-function
interpretation of the planner followed by sequential `verifyPackedBundle` and
the pure least-invalid fail-closed projection.  Query budgets stay separate.
Production origin is required only for accepting outputs.

The current outer Rust caller uses `spawn_blocking`; it is linked to this
canonical program only through
`AcceptedConcurrentBundleSerialization.canonicalOutputExact` on an accepted
branch and a separate fail-closed equation otherwise.  The extracted pure
reducer does not establish the scheduler witness.  Scheduler order is
projected away by `cachedCanonical_evalDist_exact`; it is not equated with the
sequential raw query trace.  `CallId` must not be added to query identity:
exact repeated queries are intentionally shared. -/
structure OutputDerivedBundleProgramEquations
    (sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId))
    (Q_sha Q_fs : Nat)
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    (fallbackSelection : PackedSelection CallId) where
  reached : Set GlobalFsQuery
  serialization : GlobalQuerySerialization
  hybridProgram :
    OracleComp (HybridAdaptiveSourceSpec reached)
      (PackedOutcome CallId)
  preselection :
    OracleComp GlobalFsSourceSpec
      (List (PackedSelection CallId))
  raw_exact :
    simulateQ
        (hybridToRawByteImpl serialization reached)
        hybridProgram =
      rawProgram
  cachedCanonical_evalDist_exact :
    𝒟[Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedGlobalFsProgram
          sha256 serialization reached hybridProgram] =
      𝒟[Ipp.fsRandomFunction
        (projectedLeastInvalidBundleFsGame
          preselection invalid
            (rejectedPackedOutcome fallbackSelection))]
  totalFsQueryBound :
    IsQueryBoundP hybridProgram
      (@IsHybridFsQuery reached) Q_fs
  totalShaQueryBound :
    IsQueryBoundP rawProgram
      Ipp.ShippingAdaptiveOrigin.IsShaQuery Q_sha
  acceptedOutputOrigin :
    AcceptedOutputDerivedOrigin
      hybridProgram

namespace OutputDerivedBundleProgramEquations

/-- The exact erasure equation carries accepted-only origin to the deployed
raw byte program. -/
theorem rawAcceptedOutputDerivedOrigin
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    AcceptedOutputDerivedOrigin rawProgram := by
  rw [← equations.raw_exact]
  intro output emitted accepted
  apply equations.acceptedOutputOrigin output
  · apply
      support_simulateQ_subset
        (hybridToRawByteImpl
          equations.serialization equations.reached)
    exact emitted
  · exact accepted

/-- Output-derived origin is invariant under the cache-preserving fiber lift
and structured-field interpretation. -/
theorem fiberLiftedAcceptedOutputDerivedOrigin
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    AcceptedOutputDerivedOrigin
      (Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedGlobalFsProgram
          sha256 equations.serialization equations.reached
            equations.hybridProgram) := by
  intro output emitted accepted
  have fiberEmitted :
      output ∈
        support
          (Ipp.ShippingAdaptiveByteField.fiberLiftedHybridOutput
            sha256 equations.serialization equations.reached
              equations.hybridProgram) := by
    apply
      support_simulateQ_subset
        (Ipp.ShippingAdaptiveGlobalFsCoupling.uniformScalarToGlobalFsImpl
            equations.serialization equations.reached)
    exact emitted
  have hybridEmitted :
      output ∈ support equations.hybridProgram := by
    unfold
      Ipp.ShippingAdaptiveByteField.fiberLiftedHybridOutput
        at fiberEmitted
    exact
      support_simulateQ_run'_subset
        (Ipp.ShippingAdaptiveByteField.coherentHybridImpl
          sha256 equations.serialization equations.reached)
        equations.hybridProgram ∅ fiberEmitted
  exact
    equations.acceptedOutputOrigin
      output hybridEmitted accepted

/-- Construct the output-generic byte annotation from the exact production
phase equation and the two distinct operational budgets. -/
noncomputable def toBundleByteOriginReindexing
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    BundleByteOriginReindexing
      rawProgram Q_sha Q_fs where
  reached := equations.reached
  serialization := equations.serialization
  hybridProgram := equations.hybridProgram
  raw_exact := equations.raw_exact
  totalFsQueryBound := equations.totalFsQueryBound
  totalShaQueryBound := equations.totalShaQueryBound

/-- Construct the raw canonical planner, sequential verifier, and pure
fail-closed projection shape.

This shape is intentionally about the raw projected program itself.  It does
not equate that repeated-query program with the cache-deduplicated production
lift.  Their output distributions are related separately by
`cachedCanonical_evalDist_exact`. -/
noncomputable def toProjectedBundleProgramConstruction
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    ProjectedBundleProgramConstruction
      (projectedLeastInvalidBundleFsGame
        equations.preselection invalid
          (rejectedPackedOutcome fallbackSelection))
      invalid fallbackSelection where
  preselection := equations.preselection
  selectedContinuation := verifyPackedBundle
  phase_exact :=
    projectedLeastInvalidBundleFsGame_programShape
      equations.preselection invalid
        (rejectedPackedOutcome fallbackSelection)
  selected_exact := by
    intro selected
    rfl

/-- Install the production byte annotation and corrected cached canonical
endpoint in the shared generic carrier.

The raw projected shape remains available separately through
`toProjectedBundleProgramConstruction`; the generic cached carrier never
equates that raw program with the coherent production lift. -/
noncomputable def toCachedProjectedBundleConstruction
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    CachedProjectedBundleConstruction
      sha256 rawProgram Q_sha Q_fs invalid
        fallbackSelection where
  reindex := equations.toBundleByteOriginReindexing
  preselection := equations.preselection
  cachedCanonical_evalDist_exact :=
    equations.cachedCanonical_evalDist_exact

/-- The production cache-deduplicated lift and the canonical cached bundle
program have exactly the same output distribution.

This theorem deliberately exposes no equality of raw `OracleComp` syntax or
query order.  Duplicate statement/query keys remain shared by
`fsRandomFunction`, while scheduler timing and profiling are projected away. -/
theorem cachedCanonical_evalDist_exact_of_equations
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    𝒟[Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedGlobalFsProgram
          sha256 equations.serialization equations.reached
            equations.hybridProgram] =
      𝒟[Ipp.fsRandomFunction
        (projectedLeastInvalidBundleFsGame
          equations.preselection invalid
            (rejectedPackedOutcome fallbackSelection))] :=
  Ipp.ShippingBundleCachedComposition.CachedProjectedBundleConstruction.cachedCanonical_evalDist_exact
    equations.toCachedProjectedBundleConstruction

/-- The constructed raw byte program exposes distinct SHA and Fiat--Shamir
budgets. -/
theorem rawProgram_distinctQueryBounds
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    IsQueryBoundP rawProgram
        Ipp.ShippingAdaptiveOrigin.IsShaQuery Q_sha ∧
      IsQueryBoundP rawProgram
        Ipp.ShippingAdaptiveOrigin.IsFsQuery Q_fs :=
  ⟨equations.totalShaQueryBound,
    equations.toBundleByteOriginReindexing.rawProgram_fsQueryBound⟩

/-- Accepted-only production origin transports across output-distribution
equality to the cached canonical bundle program.

This is not a raw-program origin theorem: repeated structured queries are
interpreted by the same lazy random-function cache used by the fork layer. -/
theorem cachedProjectedAcceptedOutputDerivedOrigin
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection) :
    AcceptedOutputDerivedOrigin
      (Ipp.fsRandomFunction
        (projectedLeastInvalidBundleFsGame
          equations.preselection invalid
            (rejectedPackedOutcome fallbackSelection))) := by
  intro output emitted accepted
  exact
    equations.fiberLiftedAcceptedOutputDerivedOrigin output
      ((Ipp.ShippingBundleCachedComposition.CachedProjectedBundleConstruction.fiberLifted_support_iff_cachedCanonical
          equations.toCachedProjectedBundleConstruction output).2 emitted)
      accepted

/-- Every accepted selection exposed by the logged canonical bundle replay
comes from one complete output-derived production bundle.

This is a support projection only.  It introduces no acceptance,
measure-preservation, or soundness premise beyond the exact bundle program
equations above. -/
theorem productionReplayOriginAt
    {sha256 :
      Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp
        Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome CallId)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {fallbackSelection : PackedSelection CallId}
    (equations :
      OutputDerivedBundleProgramEquations
        sha256 rawProgram Q_sha Q_fs invalid
          fallbackSelection)
    (μ : Nat) :
    ProductionReplayOriginAt
      (projectedLeastInvalidBundleFsGame
        equations.preselection invalid
          (rejectedPackedOutcome fallbackSelection))
      μ := by
  intro selection reachable
  rcases reachable with
    ⟨run, runSupported, selectionExact, accepted⟩
  rcases
      Ipp.wrapFs_support_exists_source
        (oa :=
          projectedLeastInvalidBundleFsGame
            equations.preselection invalid
              (rejectedPackedOutcome fallbackSelection))
        runSupported with
    ⟨sourceLog, _traceExact, _logExact, sourceSupported⟩
  have outputSupported :
      run.1.out ∈
        support
          (Ipp.fsRandomFunction
            (projectedLeastInvalidBundleFsGame
              equations.preselection invalid
                (rejectedPackedOutcome fallbackSelection))) := by
    have mapped :
        run.1.out ∈
          support
            (Prod.fst <$>
              replayFirstRun
                (Ipp.fsRandomFunction
                  (projectedLeastInvalidBundleFsGame
                    equations.preselection invalid
                      (rejectedPackedOutcome
                        fallbackSelection)))) := by
      rw [support_map, Set.mem_image]
      exact
        ⟨(run.1.out, sourceLog), sourceSupported, rfl⟩
    simpa only [fst_map_replayFirstRun] using mapped
  have origin :=
    equations.cachedProjectedAcceptedOutputDerivedOrigin
      run.1.out outputSupported accepted
  rcases
      Ipp.ShippingMultiStatement.selectionAt?_eq_some_exposes_outcome
        selectionExact with
    ⟨outcome, outputExact, selectedExact⟩
  rw [outputExact] at origin
  change OutputDerivedSelectionAt μ outcome.selection at origin
  simpa only [selectedExact] using origin

end OutputDerivedBundleProgramEquations

end

end Ipp.Extracted.ShippingBundleProgramConstruction
