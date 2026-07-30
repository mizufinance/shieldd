import Ipp.ShippingBundleGlobalFsComposition

/-!
Cache-aware composition for a concurrently executed shipping bundle.

The production caller may execute verifier calls concurrently, but deployed
SHA-256 and Blake2b are deterministic read-only functions.  Only semantic
call outputs and call-local chronological traces cross this boundary;
profiles, timings, debug records, and scheduler completion order are erased.

The ideal endpoint is deliberately the random-function interpretation of the
canonical planner-order bundle program.  It is never equated with the raw
sequential program: adversarial prequeries and repeated calls may query an
already-populated key.
-/

namespace Ipp.ShippingBundleCachedComposition

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal
open Ipp.Bls12377
open Ipp.ShippingMultiStatement
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleGlobalFsComposition
open Ipp.ShippingAdaptiveReindex
open Ipp.Extracted.ShippingBundleAdaptiveComposition
open Ipp.Extracted.ShippingBundleMaterialization

noncomputable section

local instance globalFsSourceUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _

local instance fsWrappedUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-! ## Accepted concurrent semantic projection -/

/-- One runtime call observation.

Only `semantic` and `localTrace` are retained by formal verification.
Profile, timing, and debug carriers are explicit so equality of the
verification observation cannot accidentally require equality of
schedule-dependent instrumentation. -/
structure ConcurrentCallObservation
    (Semantic Trace Profile Timing Debug : Type) where
  semantic : Semantic
  localTrace : Trace
  profile : Profile
  timing : Timing
  debug : Debug

namespace ConcurrentCallObservation

/-- Erase every non-semantic runtime observation. -/
def eraseSemantic
    {Semantic Trace Profile Timing Debug : Type} :
    ConcurrentCallObservation Semantic Trace Profile Timing Debug →
      Semantic :=
  ConcurrentCallObservation.semantic

/-- Retain the call-local chronological trace without exposing profiles,
timings, debug records, or scheduler order. -/
def eraseLocalTrace
    {Semantic Trace Profile Timing Debug : Type} :
    ConcurrentCallObservation Semantic Trace Profile Timing Debug →
      Trace :=
  ConcurrentCallObservation.localTrace

@[simp] theorem eraseSemantic_mk
    {Semantic Trace Profile Timing Debug : Type}
    (semantic : Semantic) (trace : Trace)
    (profile : Profile) (timing : Timing) (debug : Debug) :
    eraseSemantic
        ({ semantic := semantic
           localTrace := trace
           profile := profile
           timing := timing
           debug := debug } :
          ConcurrentCallObservation
            Semantic Trace Profile Timing Debug) =
      semantic :=
  rfl

@[simp] theorem eraseLocalTrace_mk
    {Semantic Trace Profile Timing Debug : Type}
    (semantic : Semantic) (trace : Trace)
    (profile : Profile) (timing : Timing) (debug : Debug) :
    eraseLocalTrace
        ({ semantic := semantic
           localTrace := trace
           profile := profile
           timing := timing
           debug := debug } :
          ConcurrentCallObservation
            Semantic Trace Profile Timing Debug) =
      trace :=
  rfl

end ConcurrentCallObservation

/-- Accepted-only scheduler boundary for the current `spawn_blocking`
execution.

`closuresExecutedExactlyOnce` and `joinsSucceeded` are the two exact
Tokio/Rust runtime postconditions.  They are parameters rather than
uninterpreted axioms, so the production evidence layer must name and supply
them.  `plannerOrderExact` states that awaiting the stored handles and erasing
instrumentation yields exactly the planner-ordered semantic records.

The trace predicate is call-local.  No physical cross-thread interleaving is
claimed to be a protocol trace; the ideal game later chooses the canonical
planner-order linearization under one shared random function. -/
structure AcceptedConcurrentSemanticProjection
    {declared : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (Trace Profile Timing Debug : Type)
    (traceChronological :
      RecordedPackedCall → Trace → Prop)
    (closuresExecutedExactlyOnce :
      List
        (ConcurrentCallObservation
          RecordedPackedCall Trace Profile Timing Debug) → Prop)
    (joinsSucceeded :
      List
        (ConcurrentCallObservation
          RecordedPackedCall Trace Profile Timing Debug) → Prop) : Prop where
  observations :
    List
      (ConcurrentCallObservation
        RecordedPackedCall Trace Profile Timing Debug)
  executedExactlyOnce :
    closuresExecutedExactlyOnce observations
  allJoinsSucceeded :
    joinsSucceeded observations
  plannerOrderExact :
    observations.map ConcurrentCallObservation.eraseSemantic =
      bundle.recordedCalls
  localTracesExact :
    ∀ observation ∈ observations,
      traceChronological observation.semantic observation.localTrace
  allAccepted :
    ∀ observation ∈ observations,
      observation.semantic.accepted = true

namespace AcceptedConcurrentSemanticProjection

/-- The formal semantic projection is independent of profile, timing, debug,
and scheduler-completion data by construction. -/
theorem semanticProjection_exact
    {declared : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {Trace Profile Timing Debug : Type}
    {traceChronological :
      RecordedPackedCall → Trace → Prop}
    {closuresExecutedExactlyOnce :
      List
        (ConcurrentCallObservation
          RecordedPackedCall Trace Profile Timing Debug) → Prop}
    {joinsSucceeded :
      List
        (ConcurrentCallObservation
          RecordedPackedCall Trace Profile Timing Debug) → Prop}
    (projection :
      AcceptedConcurrentSemanticProjection bundle
        Trace Profile Timing Debug traceChronological
        closuresExecutedExactlyOnce joinsSucceeded) :
    projection.observations.map
        ConcurrentCallObservation.eraseSemantic =
      bundle.recordedCalls :=
  projection.plannerOrderExact

/-- Every semantic result retained by an accepted concurrent execution is
accepted. -/
theorem semanticResult_accepted
    {declared : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {Trace Profile Timing Debug : Type}
    {traceChronological :
      RecordedPackedCall → Trace → Prop}
    {closuresExecutedExactlyOnce :
      List
        (ConcurrentCallObservation
          RecordedPackedCall Trace Profile Timing Debug) → Prop}
    {joinsSucceeded :
      List
        (ConcurrentCallObservation
          RecordedPackedCall Trace Profile Timing Debug) → Prop}
    (projection :
      AcceptedConcurrentSemanticProjection bundle
        Trace Profile Timing Debug traceChronological
        closuresExecutedExactlyOnce joinsSucceeded)
    {observation :
      ConcurrentCallObservation
        RecordedPackedCall Trace Profile Timing Debug}
    (member : observation ∈ projection.observations) :
    observation.semantic.accepted = true :=
  projection.allAccepted observation member

end AcceptedConcurrentSemanticProjection

/-! ## Separate raw-attempt accounting -/

/-- Separate SHA-256 and Fiat--Shamir attempt bounds over the same complete
raw byte program.  These count raw attempts, not distinct cache misses. -/
structure RawBundleAttemptBounds
    {Call : Type}
    (rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call))
    (Q_sha Q_fs : Nat) : Prop where
  sha :
    IsQueryBoundP rawProgram
      Ipp.ShippingAdaptiveOrigin.IsShaQuery Q_sha
  fs :
    IsQueryBoundP rawProgram
      Ipp.ShippingAdaptiveOrigin.IsFsQuery Q_fs

/-- The existing byte-origin reindexing already proves both raw-attempt
bounds without merging their budgets. -/
noncomputable def RawBundleAttemptBounds.ofByteOriginReindexing
    {Call : Type}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    (boundary :
      BundleByteOriginReindexing rawProgram Q_sha Q_fs) :
    RawBundleAttemptBounds rawProgram Q_sha Q_fs where
  sha := boundary.totalShaQueryBound
  fs := boundary.rawProgram_fsQueryBound

/-! ## Correct cached canonical endpoint -/

/-- Correct production-to-global-FS boundary for a projected bundle.

The fiber-lifted program has already interpreted one coherent byte cache.
Consequently its canonical endpoint is the lazy random-function
interpretation of the raw planner-order game, not the raw game itself.
Repeated verifier queries and adversarial prequeries remain legal. -/
structure CachedProjectedBundleConstruction
    {Call : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call))
    (Q_sha Q_fs : Nat)
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (fallbackSelection : PackedSelection Call) where
  reindex :
    BundleByteOriginReindexing rawProgram Q_sha Q_fs
  preselection :
    OracleComp GlobalFsSourceSpec
      (List (PackedSelection Call))
  cachedCanonical_evalDist_exact :
    𝒟[Ipp.ShippingAdaptiveGlobalFsCoupling
        .fiberLiftedGlobalFsProgram
          sha256 reindex.serialization reindex.reached
            reindex.hybridProgram] =
      𝒟[Ipp.fsRandomFunction
        (projectedLeastInvalidBundleFsGame
          preselection invalid
            (rejectedPackedOutcome fallbackSelection))]

namespace CachedProjectedBundleConstruction

/-- The corrected boundary exposes separate raw SHA and Fiat--Shamir attempt
budgets. -/
noncomputable def rawAttemptBounds
    {Call : Type}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      CachedProjectedBundleConstruction
        sha256 rawProgram Q_sha Q_fs invalid fallbackSelection) :
    RawBundleAttemptBounds rawProgram Q_sha Q_fs :=
  RawBundleAttemptBounds.ofByteOriginReindexing
    construction.reindex

/-- Support transport reaches only the cached canonical program. -/
theorem fiberLifted_support_iff_cachedCanonical
    {Call : Type}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      CachedProjectedBundleConstruction
        sha256 rawProgram Q_sha Q_fs invalid fallbackSelection)
    (output : PackedOutcome Call) :
    output ∈ support
        (Ipp.ShippingAdaptiveGlobalFsCoupling
          .fiberLiftedGlobalFsProgram
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram) ↔
      output ∈ support
        (Ipp.fsRandomFunction
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))) :=
  mem_support_iff_of_evalDist_eq
    construction.cachedCanonical_evalDist_exact output

/-- The cached canonical equality transports every output event without a
no-repeat premise. -/
theorem fiberLifted_event_eq_cachedCanonical
    {Call : Type}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      CachedProjectedBundleConstruction
        sha256 rawProgram Q_sha Q_fs invalid fallbackSelection)
    (predicate : PackedOutcome Call → Prop)
    [DecidablePred predicate] :
    Pr[predicate |
        Ipp.ShippingAdaptiveGlobalFsCoupling
          .fiberLiftedGlobalFsProgram
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] =
      Pr[predicate |
        Ipp.fsRandomFunction
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] :=
  probEvent_congr' (fun _ _ => Iff.rfl)
    construction.cachedCanonical_evalDist_exact

end CachedProjectedBundleConstruction

/-- The cached program and the wrapped/logged fork experiment have the same
output-event probability for every game, without assuming that queries never
repeat. -/
theorem fsRandomFunction_event_eq_multiStatementFsProbComp
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (predicate : PackedOutcome Call → Prop)
    [DecidablePred predicate] :
    Pr[predicate | Ipp.fsRandomFunction game] =
      Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp game] := by
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
    Pr[predicate | Ipp.fsRandomFunction game] =
        Pr[fun sourceRun => predicate sourceRun.1 |
          replayFirstRun (Ipp.fsRandomFunction game)] :=
      (probEvent_fst_replayFirstRun
        (Ipp.fsRandomFunction game) predicate).symm
    _ =
        Pr[fun run => predicate run.1.out |
          multiStatementFsProbComp game] :=
      hwrap

namespace CachedProjectedBundleConstruction

/-- Final cache-aware event transport to the exact logged experiment consumed
by the multi-statement fork construction.  There is no intermediate equality
or probability comparison with the raw sequential game. -/
theorem fiberLifted_event_eq_multiStatementFsProbComp
    {Call : Type}
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      CachedProjectedBundleConstruction
        sha256 rawProgram Q_sha Q_fs invalid fallbackSelection)
    (predicate : PackedOutcome Call → Prop)
    [DecidablePred predicate] :
    Pr[predicate |
        Ipp.ShippingAdaptiveGlobalFsCoupling
          .fiberLiftedGlobalFsProgram
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] =
      Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] := by
  calc
    Pr[predicate |
        Ipp.ShippingAdaptiveGlobalFsCoupling
          .fiberLiftedGlobalFsProgram
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] =
      Pr[predicate |
        Ipp.fsRandomFunction
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] :=
      construction.fiberLifted_event_eq_cachedCanonical predicate
    _ =
      Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] :=
      fsRandomFunction_event_eq_multiStatementFsProbComp
        (projectedLeastInvalidBundleFsGame
          construction.preselection invalid
            (rejectedPackedOutcome fallbackSelection))
        predicate

end CachedProjectedBundleConstruction

/-! ## Finite repeated-query counterexample -/

namespace RepeatedQueryCounterexample

/-- The single query used twice by the finite counterexample. -/
inductive Query where
  | point
deriving DecidableEq

/-- Observable answers and source-level query log for two calls to one key. -/
structure Observation where
  answers : Bool × Bool
  sourceLog : List Query
deriving DecidableEq

/-- Raw sequential source behavior permits two independent answers and logs
both source queries. -/
def rawSequential (first second : Bool) : Observation := {
  answers := (first, second)
  sourceLog := [.point, .point]
}

/-- A coherent cache samples the key once, returns that answer twice, and
emits one source miss. -/
def coherentCached (answer : Bool) : Observation := {
  answers := (answer, answer)
  sourceLog := [.point]
}

/-- Raw sequential execution has an observation which no coherent
single-cache execution can produce.  This is the finite obstruction to
equating a cache-deduplicated program with its raw repeated-query syntax. -/
theorem rawSequential_distinctAnswers_not_coherent :
    ¬ ∃ answer, coherentCached answer =
      rawSequential false true := by
  rintro ⟨answer, heq⟩
  cases answer <;>
    simp [coherentCached, rawSequential] at heq

/-- Even when both raw answers happen to agree, the source log still has two
entries while the coherent-cache miss log has one. -/
theorem rawSequential_and_coherentCached_log_lengths
    (first second answer : Bool) :
    (rawSequential first second).sourceLog.length = 2 ∧
      (coherentCached answer).sourceLog.length = 1 := by
  simp [rawSequential, coherentCached]

end RepeatedQueryCounterexample

#print axioms ConcurrentCallObservation.eraseSemantic_mk
#print axioms AcceptedConcurrentSemanticProjection.semanticProjection_exact
#print axioms RawBundleAttemptBounds.ofByteOriginReindexing
#print axioms CachedProjectedBundleConstruction.fiberLifted_support_iff_cachedCanonical
#print axioms CachedProjectedBundleConstruction.fiberLifted_event_eq_cachedCanonical
#print axioms fsRandomFunction_event_eq_multiStatementFsProbComp
#print axioms CachedProjectedBundleConstruction.fiberLifted_event_eq_multiStatementFsProbComp
#print axioms RepeatedQueryCounterexample.rawSequential_distinctAnswers_not_coherent

end

end Ipp.ShippingBundleCachedComposition
